WTF::StringImpl *WebKit::NetworkCache::Storage::versionPath(WebKit::NetworkCache::Storage *this)
{
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::makeVersionedDirectoryPath(&v3);
  result = v3;
  v3 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v1);
    }
  }

  return result;
}

unint64_t WebKit::NetworkCache::Storage::estimateRecordsSize(uint64_t this, const WTF::String *a2, unsigned int a3)
{
  v4 = a2;
  v5 = this;
  if (*(this + 60) == 1)
  {
    v6 = *(this + 56);
  }

  else
  {
    this = WTF::FileSystemImpl::volumeFileBlockSize((this + 8), a2);
    if ((this & 0x100000000) != 0)
    {
      v6 = this;
    }

    else
    {
      v6 = 4096;
    }

    *(v5 + 56) = v6;
    *(v5 + 60) = 1;
  }

  if (v4 >= a3)
  {
    v7 = v4 - a3;
  }

  else
  {
    v7 = 0;
  }

  return v6 * v4 + (WTF::pageSize(this) >> 1) * v7;
}

__n128 WebKit::NetworkCache::Storage::addToRecordFilter(WebKit::NetworkCache::Storage *this, __n128 *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3 = a2[2].n128_u64[0];
    *(v2 + 4 * ((v3 >> 5) & 0x1FFF)) |= 1 << v3;
    *(v2 + 4 * ((v3 >> 37) & 0x1FFF)) |= 1 << SBYTE4(v3);
  }

  if (*(this + 80) == 1)
  {
    v4 = *(this + 27);
    if (v4 == *(this + 26))
    {
      WTF::Vector<std::array<unsigned char,20ul>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::array<unsigned char,20ul> const&>(this + 96, a2[2].n128_u64);
    }

    else
    {
      v6 = (*(this + 12) + 20 * v4);
      result = a2[2];
      v6[1].n128_u32[0] = a2[3].n128_u32[0];
      *v6 = result;
      ++*(this + 27);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::mayContain(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a2 + 32);
  if ((*(v2 + 4 * ((v3 >> 5) & 0x1FFF)) >> v3))
  {
    return (*(v2 + 4 * ((v3 >> 37) & 0x1FFF)) >> SBYTE4(v3)) & 1;
  }

  else
  {
    return 0;
  }
}

WTF::StringImpl *WebKit::NetworkCache::Storage::recordDirectoryPathForKey(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2, uint64_t a3)
{
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::Key::hashAsString(a3 + 52, &v8);
  v4 = v8;
  WTF::FileSystemImpl::pathByAppendingComponent();
  WTF::FileSystemImpl::pathByAppendingComponent();
  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, v5);
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

WTF::StringImpl *WebKit::NetworkCache::Storage::recordPathForKey(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2, uint64_t a3)
{
  WebKit::NetworkCache::Storage::recordDirectoryPathForKey(&v8, a2, a3);
  WebKit::NetworkCache::Key::hashAsString(a3 + 32, &v7);
  v4 = v7;
  if (v7)
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    WTF::FileSystemImpl::pathByAppendingComponent();
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::blobPathForKey(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2, uint64_t a3)
{
  WebKit::NetworkCache::Storage::recordPathForKey(&v6, a2, a3);
  WebKit::NetworkCache::blobPathForRecordPath(this, v6);
  result = v6;
  v6 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::blobPathForRecordPath(WebKit::NetworkCache *this, atomic_uint *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(a2, 2u, memory_order_relaxed);
  }

  v5 = a2;
  v6[0] = "-blob";
  v6[1] = 6;
  result = WTF::tryMakeString<WTF::String,WTF::ASCIILiteral>(&v5, v6, this);
  if (*this)
  {
    result = v5;
    v5 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v4);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

BOOL WebKit::NetworkCache::decodeRecordHeader(dispatch_data_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v8 = WTF::fastMalloc(v18, 0x18);
  *v8 = &unk_1F1108E70;
  v8[1] = a2;
  v8[2] = &v14;
  object = v8;
  WebKit::NetworkCache::Data::apply(a1, &object);
  if (object)
  {
    (*(*object + 8))(object);
  }

  if (v14 != 1 || *a2 != 17)
  {
    return 0;
  }

  subrange = dispatch_data_create_subrange(*a1, *(a2 + 160), *(a2 + 112));
  v16 = 0uLL;
  object = subrange;
  v17 = 0;
  WTF::OSObjectPtr<dispatch_data_s *>::operator=(a3, &object);
  *(a3 + 8) = v16;
  *(a3 + 24) = v17;
  if (object)
  {
    os_release(object);
  }

  WebKit::NetworkCache::computeSHA1(a3, a4);
  return *(a2 + 88) == object && *(a2 + 96) == v16 && *(a2 + 104) == DWORD2(v16);
}

WTF::StringImpl *WebKit::NetworkCache::Storage::storeBodyAsBlob(uint64_t a1, atomic_ullong *a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Storage::blobPathForKey(&v19, a2, a4);
  WebKit::NetworkCache::BlobStorage::add(a2 + 43, &v19, (a4 + 112), &object);
  if (object)
  {
    v9 = WebKit::NetworkCache::Storage::addWriteOperationActivity(a2, a3);
    WTF::RunLoop::mainSingleton(v9);
    while (1)
    {
      v10 = *a2;
      if ((*a2 & 1) == 0)
      {
        break;
      }

      v16 = *a2;
      atomic_compare_exchange_strong_explicit(a2, &v16, v10 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v10)
      {
        goto LABEL_5;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_5:
    v11 = object;
    if (object)
    {
      os_retain(object);
    }

    v17 = v23;
    v18 = v24;
    v20 = v25;
    v21 = v26;
    v12 = WTF::fastMalloc(v26, 0x58);
    *v12 = &unk_1F1109208;
    v12[1] = a2;
    v12[2] = a2;
    v12[3] = v11;
    if (v11)
    {
      os_retain(v11);
    }

    *(v12 + 2) = v17;
    *(v12 + 48) = v18;
    *(v12 + 7) = v20;
    *(v12 + 18) = v21;
    v12[10] = a3;
    WTF::RunLoop::dispatch();
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    if (v11)
    {
      os_release(v11);
    }

    v13 = object;
    *a1 = object;
    if (v13)
    {
      os_retain(v13);
      v14 = object;
      *(a1 + 8) = v23;
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
      *(a1 + 48) = v26;
      *(a1 + 56) = 1;
      if (v14)
      {
        os_release(v14);
      }
    }

    else
    {
      *(a1 + 8) = v23;
      *(a1 + 24) = v24;
      *(a1 + 32) = v25;
      *(a1 + 48) = v26;
      *(a1 + 56) = 1;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 56) = 0;
  }

  result = v19;
  v19 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

_OWORD *WebKit::NetworkCache::Storage::addWriteOperationActivity(_OWORD *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (result + 13);
  atomic_compare_exchange_strong_explicit(result + 208, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](result + 13);
  }

  if (a2 == -1 || !a2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9DF70);
  }

  v6 = *(v3 + 27);
  if (!v6)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v3 + 27, 0);
    v6 = *(v3 + 27);
  }

  v7 = *(v6 - 8);
  v8 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = v6 + 16 * v11;
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    while (v13 != a2)
    {
      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = v6 + 16 * v11;
      v13 = *v12;
      ++v15;
      if (!*v12)
      {
        if (v14)
        {
          *v14 = 0;
          v14[1] = 0;
          --*(*(v3 + 27) - 16);
          v12 = v14;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *v12 = a2;
    *(v12 + 8) = 0;
    v16 = *(v3 + 27);
    if (v16)
    {
      v17 = *(v16 - 12) + 1;
    }

    else
    {
      v17 = 1;
    }

    *(v16 - 12) = v17;
    v18 = (*(v16 - 16) + v17);
    v19 = *(v16 - 4);
    if (v19 > 0x400)
    {
      if (v19 > 2 * v18)
      {
        goto LABEL_19;
      }
    }

    else if (3 * v19 > 4 * v18)
    {
      goto LABEL_19;
    }

    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v3 + 27, v12);
    v12 = result;
  }

LABEL_19:
  ++*(v12 + 8);
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::encodeRecord(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v41 = *MEMORY[0x1E69E9840];
  v25 = 17;
  WebKit::NetworkCache::Key::Key(&v26, v6);
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v11 = *(v7 + 9);
  v33 = 0;
  v30 = v11;
  WebKit::NetworkCache::computeSHA1(v7 + 80, v9 + 28);
  v31 = *buffer;
  v32 = *&buffer[16];
  if (*(v7 + 11) || (v12 = *(v7 + 10)) == 0)
  {
    size = *(v7 + 12);
  }

  else
  {
    size = dispatch_data_get_size(v12);
  }

  v33 = size;
  if (*(v5 + 56) == 1)
  {
    *buffer = *(v5 + 32);
    *&buffer[16] = *(v5 + 48);
  }

  else
  {
    WebKit::NetworkCache::computeSHA1(v7 + 112, v9 + 28);
  }

  v34 = *buffer;
  v35 = *&buffer[16];
  if (*(v7 + 15) || (v14 = *(v7 + 14)) == 0)
  {
    v15 = *(v7 + 16);
  }

  else
  {
    v15 = dispatch_data_get_size(v14);
  }

  v36 = v15;
  v37 = *(v5 + 56) ^ 1;
  WTF::Persistence::Encoder::Encoder(buffer);
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Coder<WebKit::NetworkCache::Key>::encodeForPersistence(buffer, &v26);
  WTF::Persistence::Coder<WTF::WallTime>::encodeForPersistence();
  WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Coder<std::array<unsigned char,20ul>>::encodeForPersistence();
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Encoder::operator<<();
  WTF::Persistence::Encoder::encodeChecksum(buffer);
  v16 = dispatch_data_create(*buffer, *&buffer[12], 0, 0);
  v23[1] = 0;
  v23[2] = 0;
  v23[0] = v16;
  v24 = 0;
  WTF::Persistence::Encoder::~Encoder(buffer);
  WebKit::NetworkCache::concatenate(v23, (v7 + 80), buffer);
  if (v37 == 1)
  {
    WebKit::NetworkCache::concatenate(buffer, (v7 + 112), v10);
    v18 = *buffer;
  }

  else
  {
    v18 = *buffer;
    *v10 = *buffer;
    if (v18)
    {
      os_retain(v18);
    }

    *(v10 + 8) = *&buffer[8];
    *(v10 + 24) = v40;
  }

  if (v18)
  {
    os_release(v18);
  }

  if (v16)
  {
    os_release(v16);
  }

  v19 = v29;
  v29 = 0;
  if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v17);
  }

  v20 = v28;
  v28 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v17);
  }

  v21 = v27;
  v27 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v17);
  }

  result = v26;
  v26 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v17);
    }
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::removeFromPendingWriteOperations(uint64_t this, const WebKit::NetworkCache::Key *a2, const WTF::StringImpl *a3)
{
  v4 = *(this + 224);
  v3 = *(this + 232);
  if (v4 != v3)
  {
    v6 = this;
    v7 = *(this + 248);
    while (1)
    {
      while (1)
      {
        if (v4 >= v7)
        {
LABEL_25:
          __break(1u);
          return this;
        }

        this = WebKit::NetworkCache::Key::operator==(*(*(v6 + 240) + 8 * v4) + 8, a2, a3);
        if ((this & 1) == 0)
        {
          break;
        }

LABEL_10:
        if (v4 == *(v6 + 232))
        {
          return this;
        }

        v8 = *(v6 + 248);
        if (v4 >= v8)
        {
          goto LABEL_25;
        }

        v9 = *(v6 + 240);
        this = std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100]((v9 + 8 * v4), 0);
        v10 = *(v6 + 224);
        v11 = v4 - v10;
        if (v4 >= v10)
        {
          if (v11 == -1)
          {
            v11 = v8 - v10;
          }

          else if (v8 - v10 < v11)
          {
            goto LABEL_25;
          }

          if (v8 <= v10)
          {
            goto LABEL_25;
          }

          this = memmove((v9 + 8 * v10 + 8), (v9 + 8 * v10), 8 * v11);
          v3 = *(v6 + 232);
          v7 = *(v6 + 248);
          v4 = (*(v6 + 224) + 1) % v7;
          *(v6 + 224) = v4;
        }

        else
        {
          if (v4 >= v8)
          {
            goto LABEL_25;
          }

          v12 = *(v6 + 232) - (v4 + 1);
          if (*(v6 + 232) == v4)
          {
            v12 = v8 - (v4 + 1);
          }

          else if (v8 - (v4 + 1) < v12)
          {
            goto LABEL_25;
          }

          this = memmove((v9 + 8 * v4), (v9 + 8 * (v4 + 1)), 8 * v12);
          v7 = *(v6 + 248);
          v4 = *(v6 + 224);
          v3 = (*(v6 + 232) + v7 - 1) % v7;
          *(v6 + 232) = v3;
        }

        if (v4 == v3)
        {
          return this;
        }
      }

      v7 = *(v6 + 248);
      v4 += v7 + 1;
      do
      {
        v4 -= v7;
      }

      while (v4 >= v7);
      if (v3 == v4)
      {
        v4 = v3;
        goto LABEL_10;
      }
    }
  }

  return this;
}

atomic_ullong *WebKit::NetworkCache::Storage::remove(atomic_ullong *this, const WebKit::NetworkCache::Key *a2)
{
  v17[9] = *MEMORY[0x1E69E9840];
  result = WebKit::NetworkCache::Storage::mayContain(this, a2);
  if (result)
  {
    while (1)
    {
      v6 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v13 = *this;
      atomic_compare_exchange_strong_explicit(this, &v13, v6 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v6)
      {
        goto LABEL_4;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_4:
    WebKit::NetworkCache::Storage::removeFromPendingWriteOperations(this, a2, v5);
    v7 = this[42];
    v16[0] = this;
    while (1)
    {
      v8 = *this;
      if ((*this & 1) == 0)
      {
        break;
      }

      v14 = *this;
      atomic_compare_exchange_strong_explicit(this, &v14, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_7:
    v16[1] = this;
    WebKit::NetworkCache::Key::Key(v17, a2);
    WTF::Function<void ()(void)>::Function<WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0,void>(&v15, v16, v9);
    (*(*v7 + 48))(v7, &v15);
    v11 = v15;
    v15 = 0;
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0::~$_0(v16, v10);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(this, v12);
  }

  return result;
}

uint64_t **WTF::Function<void ()(void)>::Function<WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0,void>@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x60);
  v6 = *a2;
  *v5 = &unk_1F1109230;
  v5[1] = v6;
  v7 = a2[1];
  a2[1] = 0;
  v5[2] = v7;
  WebKit::NetworkCache::Key::Key((v5 + 3), (a2 + 2));
  *a1 = v5;
  return a1;
}

void *WebKit::NetworkCache::Storage::remove(WebKit::NetworkCache::Key const&)::$_0::~$_0(void *a1, WTF::StringImpl *a2)
{
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v7, a2);
  }

  return a1;
}

uint64_t WebKit::NetworkCache::Storage::remove(WTF::StringImpl *a1, WTF::StringImpl *a2, uint64_t *a3, __n128 a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v54[0] = 0;
  v54[1] = 0;
  v6 = *(a2 + 3);
  if (!v6)
  {
    goto LABEL_36;
  }

  if (v6 >= 0x38E38E4)
  {
    __break(0xC471u);
    goto LABEL_60;
  }

  v8 = (9 * v6);
  v9 = 8 * v8;
  v10 = WTF::fastMalloc(v8, (8 * v8));
  LODWORD(v6) = v9 / 0x48;
  LODWORD(v54[1]) = v9 / 0x48;
  v54[0] = v10;
  v11 = *(a2 + 3);
  if (v11)
  {
    v12 = *a2;
    v13 = 72 * v11;
    do
    {
      if (WebKit::NetworkCache::Storage::mayContain(a1, v12))
      {
        WebKit::NetworkCache::Storage::removeFromPendingWriteOperations(a1, v12, v14);
        WebKit::NetworkCache::Key::Key(v60, v12);
        v65 = 1;
        v15 = *v60;
        v16 = *v61;
        *v60 = 0u;
        *v61 = 0u;
        *v55 = v15;
        *v56 = v16;
        v57 = v62;
        v58 = v63;
        v59 = v64;
        v17 = HIDWORD(v54[1]);
        if (HIDWORD(v54[1]) == LODWORD(v54[1]))
        {
          v18 = WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v54, HIDWORD(v54[1]) + 1, v55);
          v17 = HIDWORD(v54[1]);
          v19 = (v54[0] + 72 * HIDWORD(v54[1]));
          v20 = *v18;
          *v18 = 0;
          v19->n128_u64[0] = v20;
          v21 = *(v18 + 8);
          *(v18 + 8) = 0;
          v19->n128_u64[1] = v21;
          v22 = *(v18 + 16);
          *(v18 + 16) = 0;
          v19[1].n128_u64[0] = v22;
          v23 = *(v18 + 24);
          *(v18 + 24) = 0;
          v19[1].n128_u64[1] = v23;
          a4 = *(v18 + 32);
          v24 = *(v18 + 48);
          v19[4].n128_u64[0] = *(v18 + 64);
        }

        else
        {
          v19 = (v54[0] + 72 * HIDWORD(v54[1]));
          v55[0] = 0;
          v19->n128_u64[0] = v15;
          v25 = v55[1];
          v55[1] = 0;
          v19->n128_u64[1] = v25;
          v26 = v56[0];
          v56[0] = 0;
          v19[1].n128_u64[0] = v26;
          v27 = v56[1];
          v56[1] = 0;
          v19[1].n128_u64[1] = v27;
          a4 = v57;
          v24 = v58;
          v19[4].n128_u64[0] = v59;
        }

        v19[2] = a4;
        v19[3] = v24;
        HIDWORD(v54[1]) = v17 + 1;
        v28 = v56[1];
        v56[1] = 0;
        if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v28, a2);
        }

        v29 = v56[0];
        v56[0] = 0;
        if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v29, a2);
        }

        v30 = v55[1];
        v55[1] = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, a2);
        }

        v31 = v55[0];
        v55[0] = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, a2);
        }

        if (v65)
        {
          v32 = v61[1];
          v61[1] = 0;
          if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v32, a2);
          }

          v33 = v61[0];
          v61[0] = 0;
          if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v33, a2);
          }

          v34 = v60[1];
          v60[1] = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, a2);
          }

          v35 = v60[0];
          v60[0] = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, a2);
          }
        }
      }

      v12 = (v12 + 72);
      v13 -= 72;
    }

    while (v13);
    LODWORD(v6) = v54[1];
    v36 = HIDWORD(v54[1]);
    v37 = HIDWORD(v54[1]);
  }

  else
  {
LABEL_36:
    v36 = 0;
    v37 = 0;
  }

  if (v37 < v6)
  {
    v38 = v54[0];
    if (v37 < v36)
    {
      WTF::VectorTypeOperations<WebKit::NetworkCache::Key>::destruct((v54[0] + 72 * v37), (v54[0] + 72 * v36));
      HIDWORD(v54[1]) = v37;
      v38 = v54[0];
      v36 = v37;
    }

    if (!v37)
    {
      goto LABEL_44;
    }

    if (v37 < 0x38E38E4)
    {
      v39 = (9 * v37);
      v40 = (72 * v37);
      v41 = WTF::fastMalloc(v39, v40);
      LODWORD(v54[1]) = v40 / 0x48;
      v54[0] = v41;
      if (v41 != v38)
      {
        WTF::VectorMover<false,WebKit::NetworkCache::Key>::move(v38, (v38 + 72 * v36), v41);
      }

LABEL_44:
      if (v38)
      {
        if (v54[0] == v38)
        {
          v54[0] = 0;
          LODWORD(v54[1]) = 0;
        }

        WTF::fastFree(v38, a2);
      }

      goto LABEL_48;
    }

    __break(0xC471u);
LABEL_60:
    JUMPOUT(0x19DD9EB70);
  }

LABEL_48:
  v42 = *(a1 + 42);
  v60[0] = a1;
  while (1)
  {
    v43 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v44 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v44, v43 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v44 == v43)
    {
      goto LABEL_53;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_53:
  a4.n128_u64[0] = 0;
  v45 = v54[0];
  v46 = v54[1];
  *v54 = a4;
  v47 = *a3;
  *a3 = 0;
  v48 = WTF::fastMalloc(v43, 0x30);
  *v48 = &unk_1F1109258;
  v48[1] = a1;
  v48[2] = a1;
  v48[3] = v45;
  v60[1] = 0;
  v61[0] = 0;
  v61[1] = 0;
  v48[4] = v46;
  v48[5] = v47;
  v55[0] = v48;
  (*(*v42 + 48))(v42, v55);
  v50 = v55[0];
  v55[0] = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v62.n128_u64[0] = 0;
  WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v61, v49);
  v52 = v60[1];
  v60[1] = 0;
  if (v52)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v52, v51);
  }

  return WTF::Vector<WebKit::NetworkCache::Key,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v54, v51);
}

WTF::StringImpl *WebKit::NetworkCache::Storage::deleteFiles(WebKit::NetworkCache::Storage *this, const WebKit::NetworkCache::Key *a2)
{
  WebKit::NetworkCache::Storage::recordPathForKey(&v10, this, a2);
  WTF::FileSystemImpl::deleteFile(&v10, v4);
  v6 = v10;
  v10 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  WebKit::NetworkCache::Storage::blobPathForKey(&v10, this, a2);
  WTF::FileSystemImpl::deleteFile(&v10, v7);
  result = v10;
  v10 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v8);
    }
  }

  return result;
}

WTF::StringImpl **WebKit::NetworkCache::Storage::finishReadOperation(uint64_t *a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v3 = a1 + 18;
  v2 = a1[18];
  if (!v2)
  {
    goto LABEL_50;
  }

  if (a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DD9F088);
  }

  if (!a2)
  {
    goto LABEL_50;
  }

  v5 = *(v2 - 8);
  v6 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = v5 & ((v8 >> 31) ^ v8);
  v10 = *(v2 + 16 * v9);
  if (v10 != a2)
  {
    v35 = 1;
    while (v10)
    {
      v9 = (v9 + v35) & v5;
      v10 = *(v2 + 16 * v9);
      ++v35;
      if (v10 == a2)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v2 - 4);
  }

LABEL_5:
  if (v9 == *(v2 - 4))
  {
    goto LABEL_50;
  }

  v11 = (v2 + 16 * v9);
  v13 = v11[1];
  ++v11;
  v12 = v13;
  *v11 = 0;
  v39 = v13;
  *(v2 + 16 * v9) = -1;
  v14 = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](v11, 0);
  v15 = *v3;
  v16 = vadd_s32(*(*v3 - 16), 0xFFFFFFFF00000001);
  *(v15 - 16) = v16;
  v17 = *(v15 - 4);
  if (6 * v16.i32[1] < v17 && v17 >= 9)
  {
    v14 = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v3, v17 >> 1);
  }

  if (!v12)
  {
LABEL_50:
    __break(0xC471u);
    JUMPOUT(0x19DD9F068);
  }

  if (!*(v12 + 11))
  {
    goto LABEL_45;
  }

  WTF::MonotonicTime::now(v14);
  *(v12 + 19) = v19;
  if ((WebKit::NetworkCache::Key::operator==(v12 + 184, v12 + 8, v20) & 1) == 0)
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    WebKit::NetworkCache::Storage::Record::operator=(v12 + 184, &v41);
    WebKit::NetworkCache::Storage::Record::~Record(&v41, v36);
  }

  if (*(v12 + 372) == 1)
  {
    if (*(v12 + 348) != 1 || (*(v12 + 44) == *(v12 + 41) ? (v32 = *(v12 + 45) == *(v12 + 42)) : (v32 = 0), v32 ? (v33 = *(v12 + 92) == *(v12 + 86)) : (v33 = 0), !v33))
    {
      v51 = 0;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v41 = 0u;
      WebKit::NetworkCache::Storage::Record::operator=(v12 + 184, &v41);
      WebKit::NetworkCache::Storage::Record::~Record(&v41, v34);
    }
  }

  if (!*(v12 + 37))
  {
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v41 = 0u;
    WebKit::NetworkCache::Storage::Record::operator=(v12 + 184, &v41);
    WebKit::NetworkCache::Storage::Record::~Record(&v41, v37);
  }

  v21 = *(v12 + 11);
  *(v12 + 11) = 0;
  v22 = (*(*v21 + 16))(v21, v12 + 184, v12 + 104);
  (*(*v21 + 8))(v21);
  if (v22)
  {
    WebKit::NetworkCache::Storage::recordPathForKey(&v38, a1, v12 + 8);
    v23 = a1[42];
    WTF::String::isolatedCopy();
    v25 = WTF::fastMalloc(v24, 0x10);
    *v25 = &unk_1F1109280;
    v26 = v40;
    v40 = 0;
    *&v41 = v25;
    v25[1] = v26;
    (*(*v23 + 48))(v23, &v41);
    v28 = v41;
    *&v41 = 0;
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = v40;
    v40 = 0;
    if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v29, v27);
    }

    v30 = v38;
    v38 = 0;
    if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v30, v27);
    }
  }

  else
  {
LABEL_45:
    if ((*(v12 + 98) & 1) == 0)
    {
      WebKit::NetworkCache::Storage::remove(a1, (v12 + 8));
    }
  }

  if ((!*v3 || !*(*v3 - 12)) && (a1[23] & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((a1 + 19));
  }

  WebKit::NetworkCache::Storage::dispatchPendingReadOperations(a1);
  return std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v39, 0);
}

WTF::StringImpl **WebKit::NetworkCache::Storage::dispatchPendingReadOperations(WTF::StringImpl **this)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(this + 35))
  {
    v1 = this;
    do
    {
      v2 = *(v1 + 144);
      if (v2 && *(v2 - 12) > 5u)
      {
        return this;
      }

      WTF::PriorityQueue<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,&WebKit::NetworkCache::Storage::isHigherPriority,0ul>::dequeue(&v41, (v1 + 128));
      v3 = v41;
      v4 = *v41;
      if (*v41 == -1 || !v4)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD9F58CLL);
      }

      v5 = *(v1 + 144);
      if (!v5)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v1 + 144), 0);
        v5 = *(v1 + 144);
      }

      v6 = *(v5 - 8);
      v7 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
      v8 = 9 * ((v7 + ~(v7 << 13)) ^ ((v7 + ~(v7 << 13)) >> 8));
      v9 = (v8 ^ (v8 >> 15)) + ~((v8 ^ (v8 >> 15)) << 27);
      v10 = v6 & ((v9 >> 31) ^ v9);
      v11 = v5 + 16 * v10;
      v12 = *v11;
      if (*v11)
      {
        v13 = 0;
        v14 = 1;
        while (v12 != v4)
        {
          if (v12 == -1)
          {
            v13 = v11;
          }

          v10 = (v10 + v14) & v6;
          v11 = v5 + 16 * v10;
          v12 = *v11;
          ++v14;
          if (!*v11)
          {
            if (v13)
            {
              *v13 = 0;
              v13[1] = 0;
              --*(*(v1 + 144) - 16);
              v11 = v13;
            }

            goto LABEL_17;
          }
        }

        goto LABEL_21;
      }

LABEL_17:
      *v11 = v4;
      v41 = 0;
      v50 = 0;
      std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100]((v11 + 8), v3);
      std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v50, 0);
      v15 = *(v1 + 144);
      if (v15)
      {
        v16 = *(v15 - 12) + 1;
      }

      else
      {
        v16 = 1;
      }

      *(v15 - 12) = v16;
      v17 = (*(v15 - 16) + v16);
      v18 = *(v15 - 4);
      if (v18 > 0x400)
      {
        if (v18 <= 2 * v17)
        {
LABEL_65:
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::ReadOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v1 + 144), v11);
        }
      }

      else if (3 * v18 <= 4 * v17)
      {
        goto LABEL_65;
      }

LABEL_21:
      WebKit::NetworkCache::Key::Key(&v50, (v3 + 8));
      v19 = WebKit::NetworkCache::Storage::recordPathForKey(&v49, v1, &v50);
      v20 = *(v1 + 72);
      if (!v20 || ((*(v20 + 4 * ((v54 >> 5) & 0x1FFF)) >> v54) & 1) != 0 && ((*(v20 + 4 * ((v54 >> 37) & 0x1FFF)) >> SBYTE4(v54)) & 1) != 0)
      {
        v19 = WebKit::NetworkCache::Storage::blobPathForKey(&v48, v1, &v50);
      }

      else
      {
        v48 = 0;
      }

      v21 = *(v1 + 80);
      v22 = *(v1 + 88);
      WTF::MonotonicTime::now(v19);
      *(v3 + 14) = v23;
      *(v3 + 88) = v21;
      *(v3 + 21) = v22;
      if (v48 && *(v48 + 1))
      {
        *(v3 + 97) = 1;
      }

      ++*(v1 + 88);
      if (*(v1 + 24) != 1)
      {
        WebCore::TimerBase::start();
      }

      v24 = *(v1 + 320);
      v42 = v1;
      while (1)
      {
        v25 = *v1;
        if ((*v1 & 1) == 0)
        {
          break;
        }

        v40 = *v1;
        atomic_compare_exchange_strong_explicit(v1, &v40, v25 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v40 == v25)
        {
          goto LABEL_33;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v1);
LABEL_33:
      v43 = v1;
      v44 = v4;
      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      v27 = WTF::fastMalloc(v26, 0x30);
      *v27 = &unk_1F11092A8;
      v27[1] = v42;
      v27[2] = v43;
      v27[3] = v44;
      v27[4] = v45;
      v28 = v46;
      v43 = 0;
      v45 = 0;
      v46 = 0;
      v27[5] = v28;
      v47 = v27;
      MEMORY[0x19EB01930](v24, &v47);
      v30 = v47;
      v47 = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

      v31 = v46;
      v46 = 0;
      if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v31, v29);
      }

      v32 = v45;
      v45 = 0;
      if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v32, v29);
      }

      v33 = v43;
      v43 = 0;
      if (v33)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v33, v29);
      }

      v34 = v48;
      v48 = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v34, v29);
      }

      v35 = v49;
      v49 = 0;
      if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v35, v29);
      }

      v36 = v53;
      v53 = 0;
      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v36, v29);
      }

      v37 = v52;
      v52 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v29);
      }

      v38 = v51;
      v51 = 0;
      if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v38, v29);
      }

      v39 = v50;
      v50 = 0;
      if (v39)
      {
        if (atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v29);
        }
      }

      this = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v41, 0);
    }

    while (*(v1 + 140));
  }

  return this;
}

WTF::StringImpl **WTF::PriorityQueue<std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>,&WebKit::NetworkCache::Storage::isHigherPriority,0ul>::dequeue(void *a1, uint64_t **a2)
{
  v2 = *(a2 + 3);
  if (!v2)
  {
LABEL_22:
    __break(0xC471u);
    JUMPOUT(0x19DD9F6ECLL);
  }

  v4 = &(*a2)[v2];
  v5 = **a2;
  **a2 = *(v4 - 1);
  *(v4 - 1) = v5;
  v6 = *a2;
  v7 = &(*a2)[v2];
  v8 = *(v7 - 1);
  *(v7 - 1) = 0;
  *a1 = v8;
  v9 = v2 - 1;
  result = std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](&v6[v2 - 1], 0);
  *(a2 + 3) = v9;
  if (v9 >= 2)
  {
    v11 = 0;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = v11 + 2;
      if (v14 >= v9)
      {
        v20 = v13;
      }

      else
      {
        v15 = (*a2)[v13];
        v16 = *(v15 + 80);
        v17 = (*a2)[v14];
        v18 = *(v17 + 80);
        if (v16 == v18)
        {
          v19 = *v15;
          v20 = v13;
          if (v19 < *v17)
          {
            goto LABEL_9;
          }

LABEL_8:
          v20 = v14;
          goto LABEL_9;
        }

        v20 = v13;
        if (v16 <= v18)
        {
          goto LABEL_8;
        }
      }

LABEL_9:
      if (v12 >= v9)
      {
        __break(0xC471u);
        JUMPOUT(0x19DD9F6F4);
      }

      if (v20 >= v9)
      {
        goto LABEL_22;
      }

      v21 = *a2;
      v22 = (*a2)[v12];
      v23 = *(v22 + 80);
      v24 = (*a2)[v20];
      v25 = *(v24 + 80);
      if (v23 == v25)
      {
        if (*v22 < *v24)
        {
          return result;
        }
      }

      else if (v23 > v25)
      {
        return result;
      }

      v21[v12] = v24;
      v21[v20] = v22;
      v11 = 2 * v20;
      v13 = (2 * (v20 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
      v12 = v20;
    }

    while (v13 < v9);
  }

  return result;
}

uint64_t *WebKit::NetworkCache::Storage::finishWriteOperationActivity(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a1 + 208);
  atomic_compare_exchange_strong_explicit((a1 + 208), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](a1 + 208);
  }

  result = (a1 + 216);
  v7 = *(a1 + 216);
  if (v7)
  {
    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD9FA24);
    }

    if (!a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD9FA44);
    }

    v8 = *(v7 - 8);
    v9 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v7 + 16 * v12);
    if (v13 != a2)
    {
      v17 = 1;
      while (v13)
      {
        v12 = (v12 + v17) & v8;
        v13 = *(v7 + 16 * v12);
        ++v17;
        if (v13 == a2)
        {
          goto LABEL_7;
        }
      }

      v12 = *(v7 - 4);
    }

LABEL_7:
    v14 = *(v7 - 4);
    if (v12 == v14)
    {
      LODWORD(v7) = 0;
    }

    else
    {
      v15 = v7 + 16 * v12;
      if (*(v15 + 8) == 1)
      {
        *v15 = -1;
        v16 = vadd_s32(*(v7 - 16), 0xFFFFFFFF00000001);
        *(v7 - 16) = v16;
        LODWORD(v7) = 1;
        if (v14 >= 9 && 6 * v16.i32[1] < v14)
        {
          result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,unsigned int,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v14 >> 1, 0);
          LODWORD(v7) = 1;
        }
      }

      else
      {
        LODWORD(v7) = 0;
        --*(v15 + 8);
      }
    }
  }

  v18 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {
    v39 = v5;
    v40 = v7;
    result = WTF::Lock::unlockSlow(v39);
    LODWORD(v7) = v40;
  }

  if (v7)
  {
    v19 = *(a1 + 256);
    if (!v19)
    {
      goto LABEL_49;
    }

    if (a2 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DD9FA6CLL);
    }

    if (!a2)
    {
      goto LABEL_49;
    }

    v20 = *(v19 - 8);
    v21 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v22 = 9 * ((v21 + ~(v21 << 13)) ^ ((v21 + ~(v21 << 13)) >> 8));
    v23 = (v22 ^ (v22 >> 15)) + ~((v22 ^ (v22 >> 15)) << 27);
    v24 = v20 & ((v23 >> 31) ^ v23);
    v25 = *(v19 + 16 * v24);
    if (v25 != a2)
    {
      v38 = 1;
      while (v25)
      {
        v24 = (v24 + v38) & v20;
        v25 = *(v19 + 16 * v24);
        ++v38;
        if (v25 == a2)
        {
          goto LABEL_24;
        }
      }

      v24 = *(v19 - 4);
    }

LABEL_24:
    if (v24 == *(v19 - 4))
    {
      goto LABEL_49;
    }

    v26 = (v19 + 16 * v24);
    v28 = v26[1];
    ++v26;
    v27 = v28;
    *v26 = 0;
    *(v19 + 16 * v24) = -1;
    std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](v26, 0);
    v29 = *(a1 + 256);
    v30 = vadd_s32(*(v29 - 16), 0xFFFFFFFF00000001);
    *(v29 - 16) = v30;
    v31 = *(v29 - 4);
    if (6 * v30.i32[1] < v31 && v31 >= 9)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::NetworkCache::Storage::WriteOperationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash((a1 + 256), v31 >> 1);
    }

    if (!v27)
    {
LABEL_49:
      __break(0xC471u);
      JUMPOUT(0x19DD9FA04);
    }

    WebKit::NetworkCache::Storage::dispatchPendingWriteOperations(a1);
    if (*(a1 + 24) != 1)
    {
      v34 = *(a1 + 48);
      v35 = atomic_load((a1 + 360));
      if (v35 + v34 > *(a1 + 40))
      {
        WebKit::NetworkCache::Storage::shrink(a1, v33);
      }
    }

    WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(v27, v33);

    return bmalloc::api::tzoneFree(v36, v37);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::shrinkIfNeeded(uint64_t this, unint64_t a2)
{
  if (*(this + 24) != 1)
  {
    v2 = *(this + 48);
    v3 = atomic_load((this + 360));
    if (v3 + v2 > *(this + 40))
    {
      return WebKit::NetworkCache::Storage::shrink(this, a2);
    }
  }

  return this;
}

void WebKit::NetworkCache::Storage::store(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  if (!*(a1 + 40))
  {
    return;
  }

  v6 = WebKit::NetworkCache::Storage::WriteOperation::operator new(0xB8, a2);
  WebKit::NetworkCache::Storage::WriteOperation::WriteOperation(v6, a2, a3);
  v8 = *(a1 + 224);
  v9 = *(a1 + 232);
  v10 = (a1 + 224);
  if (v8)
  {
    if (v9 + 1 != v8)
    {
LABEL_4:
      v11 = *(a1 + 248);
      goto LABEL_5;
    }
  }

  else
  {
    v8 = *(a1 + 248);
    if (v9)
    {
      if (v9 != v8 - 1)
      {
        goto LABEL_16;
      }
    }

    else if (v8)
    {
      goto LABEL_16;
    }
  }

  WTF::Deque<std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>,0ul>::expandCapacity((a1 + 224), v7);
  v8 = *v10;
  if (*v10)
  {
    goto LABEL_4;
  }

  LODWORD(v8) = *(a1 + 248);
LABEL_16:
  v11 = v8;
  v8 = v8;
LABEL_5:
  v12 = v8 - 1;
  *v10 = v12;
  if (v12 >= v11)
  {
    __break(1u);
    goto LABEL_21;
  }

  *(*(a1 + 240) + 8 * v12) = v6;
  WebKit::NetworkCache::Storage::addToRecordFilter(a1, a2);
  v13 = *(a1 + 224);
  v14 = *(a1 + 232);
  if (v13 > v14)
  {
    v14 += *(a1 + 248);
  }

  if (v14 - v13 == 1)
  {
    if (*(a1 + 80) != 1)
    {
LABEL_11:

      WebCore::TimerBase::start();
      return;
    }

LABEL_21:
    if (*(a1 + 24) == 1)
    {
      return;
    }

    goto LABEL_11;
  }
}

uint64_t WebKit::NetworkCache::Storage::traverseWithinRootPath@<X0>(atomic_ullong *a1@<X0>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = WTF::fastMalloc(a6, 0x18);
  *v9 = 1;
  v10 = *a5;
  *a5 = 0;
  v9[1] = v10;
  *(v9 + 8) = 0;
  *(v9 + 5) = 0;
  v11 = a1[40];
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
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_6:
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  v15 = WTF::fastMalloc(v14, 0x38);
  *v15 = &unk_1F11093C0;
  v15[1] = a1;
  v15[2] = a1;
  v15[3] = v9;
  *(v15 + 32) = a4;
  v15[5] = v18;
  v15[6] = v19;
  v20 = v15;
  MEMORY[0x19EB01930](v11, &v20);
  v16 = v20;
  v20 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return 0;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::traverse(atomic_ullong *a1, uint64_t a2, char a3, uint64_t *a4)
{
  WTF::String::isolatedCopy();
  WebKit::NetworkCache::Storage::traverseWithinRootPath(a1, a3, a4, v7);
  result = v10;
  if (v10)
  {
    if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(v10, v8);
    }
  }

  return result;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::traverse(atomic_ullong *a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v15[3] = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::partitionToPartitionHash(a3, a1 + 28);
  WebKit::NetworkCache::Key::hashAsString(v15, &v14);
  WTF::String::isolatedCopy();
  v8 = v14;
  WTF::FileSystemImpl::pathByAppendingComponent();
  if (v13)
  {
    add_explicit = atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed);
    if (add_explicit == 2)
    {
      WTF::StringImpl::destroy(v13, v9);
    }
  }

  WebKit::NetworkCache::Storage::traverseWithinRootPath(a1, a4, a5, add_explicit);
  result = v15[0];
  v15[0] = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v11);
    if (!v8)
    {
      return result;
    }
  }

  else if (!v8)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    return WTF::StringImpl::destroy(v8, v11);
  }

  return result;
}

uint64_t WebKit::NetworkCache::Storage::clear(atomic_ullong *a1, uint64_t a2, uint64_t *a3, double a4)
{
  v7 = a1[8];
  if (v7)
  {
    bzero(v7, 0x8000uLL);
  }

  v8 = a1[9];
  if (v8)
  {
    bzero(v8, 0x8000uLL);
  }

  a1[6] = 0;
  v9 = a1[40];
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
      goto LABEL_10;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
  v12 = *a3;
  *a3 = 0;
  v17 = v12;
  WTF::String::isolatedCopy();
  v14 = WTF::fastMalloc(v13, 0x30);
  *v14 = &unk_1F1109460;
  v14[1] = a1;
  v14[2] = a1;
  *(v14 + 3) = a4;
  v14[4] = v17;
  v14[5] = v18;
  v19 = v14;
  MEMORY[0x19EB01930](v9, &v19);
  v15 = v19;
  v19 = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  return 0;
}

uint64_t WebKit::NetworkCache::Storage::shrink(uint64_t this, unint64_t a2)
{
  if ((*(this + 81) & 1) == 0)
  {
    v2 = this;
    if ((*(this + 80) & 1) == 0)
    {
      *(this + 81) = 1;
      v3 = *(this + 328);
      while (1)
      {
        v4 = *this;
        if ((*this & 1) == 0)
        {
          break;
        }

        v5 = *this;
        atomic_compare_exchange_strong_explicit(this, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v5 == v4)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_8:
      v6 = WTF::fastMalloc(v4, 0x18);
      *v6 = &unk_1F11094B0;
      v6[1] = v2;
      v6[2] = v2;
      v7 = v6;
      MEMORY[0x19EB01930](v3, &v7);
      this = v7;
      v7 = 0;
      if (this)
      {
        return (*(*this + 8))(this);
      }
    }
  }

  return this;
}

void WebKit::NetworkCache::SubresourcesEntry::encodeAsStorageRecord(WebKit::NetworkCache::SubresourcesEntry *this, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2, a3);
  v5 = v4;
  v6 = v3;
  v18 = *MEMORY[0x1E69E9840];
  WTF::Persistence::Encoder::Encoder(&buffer);
  WTF::Persistence::Encoder::operator<<();
  if (*(v5 + 92))
  {
    v7 = 0;
    v8 = 0;
    do
    {
      WTF::Persistence::Coder<WebKit::NetworkCache::SubresourceInfo>::encodeForPersistence(&buffer, *(v5 + 80) + v7);
      ++v8;
      v7 += 176;
    }

    while (v8 < *(v5 + 92));
  }

  WTF::Persistence::Encoder::encodeChecksum(&buffer);
  v9 = *(v5 + 72);
  v12[1] = 0;
  v12[2] = 0;
  v12[0] = dispatch_data_create(buffer, size, 0, 0);
  v13 = 0;
  memset(object, 0, sizeof(object));
  v11 = 0;
  LOBYTE(v16) = 0;
  v17 = 0;
  WebKit::NetworkCache::Storage::Record::Record(v6, v5, v12, object, &v16, v9);
  if (object[0])
  {
    os_release(object[0]);
  }

  if (v12[0])
  {
    os_release(v12[0]);
  }

  WTF::Persistence::Encoder::~Encoder(&buffer);
}

uint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 12);
  if (v4)
  {
    WTF::VectorTypeOperations<WebKit::NetworkCache::SubresourceInfo>::destruct(*a1, (*a1 + 176 * v4));
  }

  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1, a2);
  return a1;
}

WebKit::NetworkCache::SubresourceInfo *WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(WebKit::NetworkCache::SubresourceInfo *this, const WebKit::NetworkCache::Key *a2, const WebCore::ResourceRequest *a3, const WebKit::NetworkCache::SubresourceInfo *a4)
{
  v7 = WebKit::NetworkCache::Key::Key(this, a2);
  WTF::WallTime::now(v7);
  *(this + 9) = v8;
  if (a4)
  {
    v8 = *(a4 + 10);
  }

  *(this + 10) = v8;
  *(this + 88) = a4 == 0;
  *(this + 89) = WebCore::ResourceRequestBase::isSameSite(a3);
  *(this + 90) = (*(a3 + 148) & 4) != 0;
  PartyForCookies = WebCore::ResourceRequestBase::firstPartyForCookies(a3);
  v10 = *PartyForCookies;
  if (*PartyForCookies)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(this + 12) = v10;
  v11 = *(PartyForCookies + 8);
  *(this + 120) = *(PartyForCookies + 24);
  *(this + 104) = v11;
  v12 = WebCore::ResourceRequestBase::httpHeaderFields(a3);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::Vector(this + 136, v12);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::Vector(this + 152, v12 + 16);
  *(this + 168) = WebCore::ResourceRequestBase::priority(a3);
  return this;
}

uint64_t WebKit::NetworkCache::makeSubresourceInfoVector(uint64_t a1, unsigned int *a2, const WTF::StringImpl *a3)
{
  v3 = a3;
  v98 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  v6 = a2[3];
  if (v6)
  {
    if (v6 >= 0x1745D18)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA0C24);
    }

    v7 = 176 * v6;
    v8 = WTF::fastMalloc(v6, (176 * v6));
    *(a1 + 8) = v7 / 0xB0;
    *a1 = v8;
  }

  v81 = 0;
  v79 = v3;
  if (v3 && *(v3 + 3))
  {
    for (i = 0; v79[3] > i; ++i)
    {
      v64 = *v3 + 176 * i;
      v65 = *(v64 + 16);
      if (v65 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDA0C44);
      }

      if (!v65)
      {
        __break(0xC471u);
LABEL_124:
        JUMPOUT(0x19DDA0BECLL);
      }

      v66 = v81;
      if (v81 || (WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v81), (v66 = v81) != 0))
      {
        v67 = *(v66 - 8);
      }

      else
      {
        v67 = 0;
      }

      v68 = 0;
      v69 = *(v64 + 32);
      for (j = 1; ; ++j)
      {
        v71 = v69 & v67;
        v72 = v66 + 80 * (v69 & v67);
        v73 = *(v72 + 16);
        if (!v73)
        {
          break;
        }

        if (v73 == -1)
        {
          v68 = v66 + 80 * v71;
        }

        else if (WebKit::NetworkCache::Key::operator==(v66 + 80 * v71, v64, a3))
        {
          goto LABEL_107;
        }

        v69 = j + v71;
      }

      if (v68)
      {
        *v68 = 0u;
        *(v68 + 16) = 0u;
        *(v68 + 72) = 0;
        --*(v66 - 16);
        v72 = v68;
      }

      WebKit::NetworkCache::Key::operator=(v72, v64);
      *(v72 + 72) = i;
      v74 = *(v66 - 16);
      v75 = *(v66 - 12) + 1;
      *(v66 - 12) = v75;
      v76 = (v74 + v75);
      v77 = *(v66 - 4);
      if (v77 > 0x400)
      {
        if (v77 <= 2 * v76)
        {
LABEL_112:
          WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v81);
        }
      }

      else if (3 * v77 <= 4 * v76)
      {
        goto LABEL_112;
      }

LABEL_107:
      v3 = v79;
    }
  }

  v80 = 0;
  v9 = a2[3];
  if (!v9)
  {
    goto LABEL_81;
  }

  v10 = *a2;
  v78 = *a2 + 8 * v9;
  do
  {
    v11 = *v10;
    v12 = *(*v10 + 27);
    if (v12 == -1)
    {
      __break(0xC471u);
      goto LABEL_124;
    }

    if (!v12)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA0C0CLL);
    }

    v13 = v80;
    if (v80 || (WTF::HashTable<WebKit::NetworkCache::Key,WebKit::NetworkCache::Key,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v80, 0), (v13 = v80) != 0))
    {
      v14 = *(v13 - 8);
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
    v16 = *(v11 + 58);
    for (k = 1; ; ++k)
    {
      v18 = v16 & v14;
      v19 = v13 + 72 * (v16 & v14);
      v20 = *(v19 + 16);
      if (!v20)
      {
        break;
      }

      if (v20 == -1)
      {
        v15 = (v13 + 72 * v18);
      }

      else if (WebKit::NetworkCache::Key::operator==(v13 + 72 * v18, v11 + 200, a3))
      {
        goto LABEL_36;
      }

      v16 = k + v18;
    }

    if (v15)
    {
      *v15 = 0u;
      v15[1] = 0u;
      --*(v13 - 16);
      v19 = v15;
    }

    WebKit::NetworkCache::Key::Key(&v82, (v11 + 200));
    WebKit::NetworkCache::Key::operator=(v19, &v82);
    v22 = v85;
    v85 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v84;
    v84 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v21);
    }

    v24 = v83;
    v83 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v21);
    }

    v25 = v82;
    v82 = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v21);
    }

    v26 = v80;
    if (v80)
    {
      v27 = *(v80 - 12) + 1;
    }

    else
    {
      v27 = 1;
    }

    *(v80 - 12) = v27;
    v28 = (*(v26 - 16) + v27);
    v29 = *(v26 - 4);
    if (v29 > 0x400)
    {
      if (v29 > 2 * v28)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v29 > 4 * v28)
    {
      goto LABEL_26;
    }

    WTF::HashTable<WebKit::NetworkCache::Key,WebKit::NetworkCache::Key,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(&v80, v19);
LABEL_26:
    if (v79)
    {
      v57 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(&v81, *v10 + 200);
      v58 = v81;
      if (v81)
      {
        v58 = v81 + 80 * *(v81 - 4);
      }

      if (v58 == v57)
      {
        v60 = 0;
      }

      else
      {
        v59 = *(v57 + 72);
        if (v79[3] <= v59)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDA0C1CLL);
        }

        v60 = (*v79 + 176 * v59);
      }

      WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(&v82, (*v10 + 200), *v10, v60);
      v61 = *(a1 + 12);
      if (v61 == *(a1 + 8))
      {
        WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::SubresourceInfo>(a1, &v82);
      }

      else
      {
        WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(*a1 + 176 * v61, &v82);
        *(a1 + 12) = v61 + 1;
      }

      WebKit::NetworkCache::SubresourceInfo::~SubresourceInfo(&v82, v62);
    }

    else
    {
      WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(&v82, (*v10 + 200), *v10, 0);
      v30 = *(a1 + 12);
      if (v30 == *(a1 + 8))
      {
        WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::SubresourceInfo>(a1, &v82);
      }

      else
      {
        v31 = *a1 + 176 * v30;
        v32 = v82;
        v82 = 0;
        *v31 = v32;
        v33 = v83;
        v83 = 0;
        *(v31 + 8) = v33;
        v34 = v84;
        v84 = 0;
        *(v31 + 16) = v34;
        v35 = v85;
        v85 = 0;
        *(v31 + 24) = v35;
        v37 = v86;
        v36 = v87;
        *(v31 + 64) = v88;
        *(v31 + 32) = v37;
        *(v31 + 48) = v36;
        v38 = *v89;
        *(v31 + 87) = *&v89[15];
        *(v31 + 72) = v38;
        WTF::URL::URL(v31 + 96, &v90);
        *(v31 + 136) = 0;
        *(v31 + 144) = 0;
        v40 = v91;
        v91 = 0;
        *(v31 + 136) = v40;
        LODWORD(v40) = v92;
        v92 = 0;
        *(v31 + 144) = v40;
        LODWORD(v40) = v93;
        v93 = 0;
        *(v31 + 148) = v40;
        *(v31 + 152) = 0;
        *(v31 + 160) = 0;
        v41 = v94;
        v94 = 0;
        *(v31 + 152) = v41;
        LODWORD(v41) = v95;
        v95 = 0;
        *(v31 + 160) = v41;
        LODWORD(v41) = v96;
        v96 = 0;
        *(v31 + 164) = v41;
        *(v31 + 168) = v97;
        *(a1 + 12) = v30 + 1;
      }

      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(&v94, v39);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v91, v42);
      v43 = v90;
      v90 = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, a2);
      }

      v44 = v85;
      v85 = 0;
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, a2);
      }

      v45 = v84;
      v84 = 0;
      if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v45, a2);
      }

      v46 = v83;
      v83 = 0;
      if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v46, a2);
      }

      v47 = v82;
      v82 = 0;
      if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v47, a2);
      }

      v48 = *(a1 + 12);
      if (!v48)
      {
        __break(0xC471u);
        JUMPOUT(0x19DDA0C14);
      }

      *(*a1 + 176 * v48 - 88) = 0;
    }

LABEL_36:
    ++v10;
  }

  while (v10 != v78);
  v49 = v80;
  if (v80)
  {
    v50 = *(v80 - 4);
    if (v50)
    {
      v51 = (v80 + 16);
      do
      {
        if (*v51 != -1)
        {
          v52 = v51[1];
          v51[1] = 0;
          if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v52, a2);
          }

          v53 = *v51;
          *v51 = 0;
          if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v53, a2);
          }

          v54 = *(v51 - 1);
          *(v51 - 1) = 0;
          if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v54, a2);
          }

          v55 = *(v51 - 2);
          *(v51 - 2) = 0;
          if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v55, a2);
          }
        }

        v51 += 9;
        --v50;
      }

      while (v50);
    }

    WTF::fastFree((v49 - 16), a2);
  }

LABEL_81:
  result = v81;
  if (v81)
  {
    return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(v81, a2);
  }

  return result;
}

uint64_t WebKit::NetworkCache::SubresourcesEntry::updateSubresourceLoads(uint64_t a1, unsigned int *a2)
{
  WebKit::NetworkCache::makeSubresourceInfoVector(v5, a2, (a1 + 80));
  WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1 + 80, v5);
  return WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v5, v3);
}

uint64_t WebKit::PrefetchCache::clearExpiredEntries(WebKit::PrefetchCache *this)
{
  result = WTF::WallTime::now(this);
  v4 = *(this + 2);
  if (v4 == *(this + 3))
  {
    return result;
  }

  v5 = v3;
  v6 = *(this + 10);
  while (1)
  {
    if (v4 >= v6)
    {
LABEL_22:
      __break(1u);
LABEL_23:
      result = 513;
      __break(0xC471u);
      return result;
    }

    v7 = *(this + 4) + 48 * v4;
    if (v5 - *(v7 + 40) <= 5.0)
    {
      break;
    }

    v8 = *(this + 1);
    v9 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>,(WTF::ShouldValidateKey)1,WTF::URL>(v8, v7);
    if (*v8)
    {
      v10 = *v8 + 48 * *(*v8 - 4);
      if (v10 == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_12;
      }

      v10 = 0;
    }

    if (v10 != v9)
    {
      WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::remove(v8, v9);
    }

LABEL_12:
    v11 = *(this + 2);
    if (v11 == *(this + 3))
    {
      goto LABEL_23;
    }

    if (v11 >= *(this + 10))
    {
      goto LABEL_22;
    }

    result = WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct((*(this + 4) + 48 * v11), (*(this + 4) + 48 * v11 + 48));
    v6 = *(this + 10);
    v12 = *(this + 2);
    v13 = *(this + 3);
    if (v12 == v6 - 1)
    {
      v4 = 0;
    }

    else
    {
      v4 = v12 + 1;
    }

    *(this + 2) = v4;
    if (v4 == v13)
    {
      return result;
    }
  }

  return WebCore::TimerBase::start();
}

WebKit::PrefetchCache *WebKit::PrefetchCache::PrefetchCache(WebKit::PrefetchCache *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  WebCore::Timer::Timer<WebKit::PrefetchCache,WebKit::PrefetchCache>((this + 48), this);
  return this;
}

void WebKit::PrefetchCache::~PrefetchCache(WTF **this)
{
  WebCore::Timer::~Timer((this + 6));
  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::~Deque((this + 2));
  std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](this + 1, v2);
}

WTF **std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](WTF **a1, WTF::StringImpl *a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*v3)
    {
      WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(*v3, a2);
    }

    WTF::fastFree(v3, a2);
  }

  return a1;
}

WTF *WebKit::PrefetchCache::clear(WebKit::PrefetchCache *this)
{
  if ((*(this + 10) & 0xFFFFFFFFFFFFLL) != 0)
  {
    WebCore::TimerBase::stopSlowCase((this + 48));
  }

  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::destroyAll((this + 16));
  *(this + 2) = 0;
  *(this + 3) = 0;
  result = *(this + 4);
  if (result)
  {
    *(this + 4) = 0;
    *(this + 10) = 0;
    result = WTF::fastFree(result, v2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    result = *v4;
    if (*v4)
    {
      *v4 = 0;

      return WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(result, v2);
    }
  }

  return result;
}

WebKit::PrefetchCache::Entry *WebKit::PrefetchCache::take@<X0>(WebKit::PrefetchCache::Entry *__return_ptr a1@<X8>, WebKit::PrefetchCache::Entry *this@<X0>, const WTF::StringImpl **a3@<X1>)
{
  v4 = *(this + 1);
  if (v4)
  {
    v7 = a3;
    WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::removeAllMatching<WebKit::PrefetchCache::take(WTF::URL const&)::$_0>(this + 16, &v7);
    v6 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>,(WTF::ShouldValidateKey)1,WTF::URL>(v4, a3);

    return WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(a1, v4, v6);
  }

  else
  {
    *a1 = 0;
  }

  return this;
}

uint64_t WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::removeAllMatching<WebKit::PrefetchCache::take(WTF::URL const&)::$_0>(uint64_t result, const WTF::StringImpl ***a2)
{
  v3 = result;
  v4 = *result;
  v5 = *(result + 8);
  if (*result > v5)
  {
    v5 += *(result + 24);
  }

  v6 = v5 - v4;
  if (v5 != v4)
  {
    while (*v3 < *(v3 + 24))
    {
      v7 = *(v3 + 16) + 48 * *v3;
      WTF::URL::URL(v12, v7);
      v12[5] = *(v7 + 40);
      v8 = *v3;
      if (*v3 == *(v3 + 8))
      {
        goto LABEL_18;
      }

      if (v8 >= *(v3 + 24))
      {
        break;
      }

      WTF::VectorDestructor<true,std::tuple<WTF::URL,WTF::WallTime>>::destruct((*(v3 + 16) + 48 * v8), (*(v3 + 16) + 48 * v8 + 48));
      if (*v3 == *(v3 + 24) - 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *v3 + 1;
      }

      *v3 = v10;
      if ((WTF::equal(v12[0], **a2, v9) & 1) == 0)
      {
        WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(v3, v12);
      }

      result = v12[0];
      v12[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v11);
        }
      }

      if (!--v6)
      {
        return result;
      }
    }

    __break(1u);
LABEL_18:
    result = 513;
    __break(0xC471u);
  }

  return result;
}

double WebKit::PrefetchCache::store@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v10 = a1;
  v11 = (a1 + 8);
  v12 = *(a1 + 8);
  if (!v12)
  {
    v13 = WTF::fastMalloc(a6, 8);
    *v13 = 0;
    v70 = v13;
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator=[abi:sn200100](v11, &v70);
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](&v70, v14);
    v12 = *v11;
  }

  v15 = WTF::fastMalloc(a6, 0x1E0);
  WTF::URL::URL(v15, a3);
  v16 = *(a3 + 40);
  *(a3 + 40) = 0;
  v17[5] = v16;
  v17[6] = *(a3 + 48);
  v18 = *(a3 + 56);
  *(a3 + 56) = 0;
  v17[7] = v18;
  v19 = *(a3 + 64);
  *(a3 + 64) = 0;
  v17[8] = v19;
  v20 = *(a3 + 72);
  *(a3 + 72) = 0;
  v17[9] = v20;
  v17[11] = 0;
  v17[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v17 + 10), (a3 + 80));
  v15[13] = 0;
  v15[12] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v15 + 12), (a3 + 96));
  v21 = *(a3 + 112);
  *(a3 + 112) = 0;
  v15[14] = v21;
  *(v15 + 120) = 0;
  *(v15 + 128) = 0;
  if (*(a3 + 128) == 1)
  {
    v67 = *(a3 + 120);
    *(a3 + 120) = 0;
    v15[15] = v67;
    *(v15 + 128) = 1;
  }

  v22 = *(a3 + 136);
  *(v15 + 138) = *(a3 + 138);
  *(v15 + 68) = v22;
  v23 = *(a3 + 144);
  *(a3 + 144) = 0;
  v15[18] = v23;
  v24 = *(a3 + 152);
  *(v15 + 21) = *(a3 + 168);
  *(v15 + 19) = v24;
  v25 = *(a3 + 184);
  v26 = *(a3 + 200);
  v27 = *(a3 + 216);
  *(v15 + 227) = *(a3 + 227);
  *(v15 + 27) = v27;
  *(v15 + 25) = v26;
  *(v15 + 23) = v25;
  v28 = *(a3 + 248);
  *(a3 + 248) = 0;
  v15[31] = v28;
  *(v15 + 256) = *(a3 + 256);
  *(v15 + 264) = a4;
  v29 = *a5;
  *a5 = 0;
  v15[34] = v29;
  WebCore::ResourceRequest::ResourceRequest((v15 + 35));
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(a2) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA162CLL);
  }

  v30 = *v12;
  if (*v12 || (WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v12, 0), (v30 = *v12) != 0))
  {
    v31 = *(v30 - 8);
  }

  else
  {
    v31 = 0;
  }

  v32 = *(*a2 + 16);
  v69 = v12;
  if (v32 < 0x100)
  {
    v33 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v33 = v32 >> 8;
  }

  v34 = v33 & v31;
  v35 = (v30 + 48 * (v33 & v31));
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v35))
  {
    v37 = v12;
LABEL_20:
    WTF::String::operator=(v35, a2);
    v42 = *(a2 + 24);
    *(v35 + 8) = *(a2 + 8);
    *(v35 + 24) = v42;
    v43 = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v35 + 5, v15);
    v44 = *v37;
    if (*v37)
    {
      v45 = *(v44 - 12) + 1;
    }

    else
    {
      v45 = 1;
    }

    *(v44 - 12) = v45;
    v46 = (*(v44 - 16) + v45);
    v47 = *(v44 - 4);
    if (v47 > 0x400)
    {
      if (v47 > 2 * v46)
      {
        goto LABEL_26;
      }
    }

    else if (3 * v47 > 4 * v46)
    {
LABEL_26:
      WTF::WallTime::now(v43);
      v49 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v49, 2u, memory_order_relaxed);
      }

      v70 = v49;
      v71 = *(a2 + 8);
      v72 = *(a2 + 24);
      v73 = v48;
      WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(v10 + 16, &v70);
      v51 = v70;
      v70 = 0;
      if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v51, v50);
      }

      if ((*(v10 + 80) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(v10 + 80) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
      {
        WebCore::TimerBase::start();
      }

      return result;
    }

    v43 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v37, v35);
    goto LABEL_26;
  }

  v68 = v10;
  v38 = 0;
  v39 = 1;
  while (1)
  {
    v40 = v35;
    if (*v35 != -1)
    {
      v40 = v38;
      if (WTF::equal(*v35, *a2, v36))
      {
        break;
      }
    }

    v34 = (v34 + v39) & v31;
    v35 = (v30 + 48 * v34);
    ++v39;
    v38 = v40;
    if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v35))
    {
      v10 = v68;
      v37 = v69;
      if (v40)
      {
        v40[1] = 0u;
        v40[2] = 0u;
        *v40 = 0u;
        --*(*v69 - 16);
        v35 = v40;
      }

      goto LABEL_20;
    }
  }

  v53 = v15[59];
  v15[59] = 0;
  if (v53)
  {
    CFRelease(v53);
  }

  v54 = v15[56];
  v15[56] = 0;
  if (v54)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v54);
  }

  v55 = v15[55];
  v15[55] = 0;
  if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v55, v41);
  }

  v56 = v15[54];
  v15[54] = 0;
  if (v56 && atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v56, v41);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v15 + 51), v41);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v15 + 98, v57);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector((v15 + 47), v58);
  v60 = v15[46];
  v15[46] = 0;
  if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v60, v59);
  }

  v61 = v15[40];
  v15[40] = 0;
  if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v61, v59);
  }

  v62 = v15[35];
  v15[35] = 0;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v59);
  }

  v63 = v15[34];
  v15[34] = 0;
  if (v63 && atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v63 + 2);
    (*(*v63 + 8))(v63);
  }

  v64 = v15[31];
  v15[31] = 0;
  if (v64)
  {
    CFRelease(v64);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(v15, v59);
  WTF::fastFree(v65, v66);
  return result;
}

WTF **std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator=[abi:sn200100](WTF **a1, WTF **a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    if (*v4)
    {
      WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(*v4, a2);
    }

    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  if (*a1)
  {
    if (v4 + 1 != *a1)
    {
      goto LABEL_27;
    }

    LODWORD(v5) = *(a1 + 24);
    goto LABEL_9;
  }

  v5 = *(a1 + 24);
  if (!v4)
  {
    if (v5)
    {
      v4 = 0;
      goto LABEL_27;
    }

LABEL_9:
    v6 = v5;
    v7 = (v5 >> 2) + v5;
    if (v7 >= 0x5555555)
    {
LABEL_34:
      __break(0xC471u);
      return;
    }

    v8 = *(a1 + 16);
    if (v7 <= 0xF)
    {
      v7 = 15;
    }

    v9 = 48 * v7 + 48;
    v10 = WTF::fastMalloc(v7, (48 * v7 + 48));
    *(a1 + 24) = v9 / 0x30;
    *(a1 + 16) = v10;
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = v12 - *a1;
    if (v12 < *a1)
    {
      if (v12 > v6)
      {
        goto LABEL_33;
      }

      WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move(v8, v8 + 6 * v12, v10);
      if (v6 < *a1)
      {
        goto LABEL_33;
      }

      v14 = *(a1 + 24);
      if (v14 < v6 - *a1)
      {
        goto LABEL_33;
      }

      v15 = v14 - (v6 - *a1);
      WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move((v8 + 48 * *a1), v8 + 6 * v6, *(a1 + 16) + 48 * v15);
      *a1 = v15;
      if (!v8)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    if (v6 >= v11)
    {
      if (v13 == -1)
      {
        v13 = v6 - v11;
      }

      else if (v6 - v11 < v13)
      {
        goto LABEL_33;
      }

      if (v11 <= v9 / 0x30)
      {
        WTF::VectorMover<false,std::tuple<WTF::URL,WTF::WallTime>>::move((v8 + 48 * v11), v8 + 6 * v11 + 6 * v13, &v10[6 * v11]);
        if (!v8)
        {
LABEL_26:
          v4 = *(a1 + 8);
          goto LABEL_27;
        }

LABEL_23:
        if (*(a1 + 16) == v8)
        {
          *(a1 + 16) = 0;
          *(a1 + 24) = 0;
        }

        WTF::fastFree(v8, v16);
        goto LABEL_26;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v4 == v5 - 1)
  {
    goto LABEL_9;
  }

LABEL_27:
  if (v4 >= *(a1 + 24))
  {
    goto LABEL_33;
  }

  WTF::URL::URL(*(a1 + 16) + 48 * v4, a2);
  *(v17 + 40) = a2[5];
  v18 = *(a1 + 8);
  if (v18 == *(a1 + 24) - 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18 + 1;
  }

  *(a1 + 8) = v19;
}

double WebKit::PrefetchCache::storeRedirect(uint64_t a1, unint64_t a2, uint64_t a3, WebCore::ResourceRequestBase *this)
{
  v7 = a1;
  v8 = (a1 + 8);
  if (!*(a1 + 8))
  {
    v9 = WTF::fastMalloc(0, 8);
    *v9 = 0;
    v57 = v9;
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::operator=[abi:sn200100](v8, &v57);
    std::unique_ptr<WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>::~unique_ptr[abi:sn200100](&v57, v10);
  }

  WebCore::ResourceRequestBase::clearPurpose(this);
  v11 = *v8;
  v13 = WTF::fastMalloc(v12, 0x1E0);
  WTF::URL::URL(v13, a3);
  v14 = *(a3 + 40);
  *(a3 + 40) = 0;
  v15[5] = v14;
  v15[6] = *(a3 + 48);
  v16 = *(a3 + 56);
  *(a3 + 56) = 0;
  v15[7] = v16;
  v17 = *(a3 + 64);
  *(a3 + 64) = 0;
  v15[8] = v17;
  v18 = *(a3 + 72);
  *(a3 + 72) = 0;
  v15[9] = v18;
  v15[11] = 0;
  v15[10] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v15 + 10), (a3 + 80));
  v13[13] = 0;
  v13[12] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v13 + 12), (a3 + 96));
  v19 = *(a3 + 112);
  *(a3 + 112) = 0;
  v13[14] = v19;
  *(v13 + 120) = 0;
  *(v13 + 128) = 0;
  if (*(a3 + 128) == 1)
  {
    v55 = *(a3 + 120);
    *(a3 + 120) = 0;
    v13[15] = v55;
    *(v13 + 128) = 1;
  }

  v20 = *(a3 + 136);
  *(v13 + 138) = *(a3 + 138);
  *(v13 + 68) = v20;
  v21 = *(a3 + 144);
  *(a3 + 144) = 0;
  v13[18] = v21;
  v22 = *(a3 + 152);
  *(v13 + 21) = *(a3 + 168);
  *(v13 + 19) = v22;
  v23 = *(a3 + 184);
  v24 = *(a3 + 200);
  v25 = *(a3 + 216);
  *(v13 + 227) = *(a3 + 227);
  *(v13 + 27) = v25;
  *(v13 + 25) = v24;
  *(v13 + 23) = v23;
  v26 = *(a3 + 248);
  *(a3 + 248) = 0;
  v13[31] = v26;
  *(v13 + 256) = *(a3 + 256);
  *(v13 + 264) = 0;
  v13[34] = 0;
  WTF::URL::URL((v13 + 35), this);
  WTF::URL::URL((v13 + 40), this + 5);
  v13[45] = *(this + 10);
  v27 = *(this + 11);
  *(this + 11) = 0;
  v13[47] = 0;
  v13[48] = 0;
  v13[46] = v27;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v13 + 47), this + 12);
  v13[49] = 0;
  v13[50] = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt((v13 + 49), this + 14);
  v13[51] = 0;
  v13[52] = 0;
  WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt((v13 + 51), this + 32);
  v28 = *(this + 36);
  *(v13 + 428) = *(this + 148);
  *(v13 + 106) = v28;
  v29 = *(this + 19);
  *(this + 19) = 0;
  v13[54] = v29;
  v30 = *(this + 20);
  *(this + 20) = 0;
  v13[55] = v30;
  v31 = *(this + 21);
  *(this + 21) = 0;
  v13[56] = v31;
  v32 = *(this + 22);
  *(v13 + 464) = *(this + 184);
  v13[57] = v32;
  v33 = *(this + 24);
  *(this + 24) = 0;
  v13[59] = v33;
  if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(a2) || *a2 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA1CF4);
  }

  v34 = *v11;
  if (*v11 || (WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v11, 0), (v34 = *v11) != 0))
  {
    v35 = *(v34 - 8);
  }

  else
  {
    v35 = 0;
  }

  v36 = *(*a2 + 16);
  if (v36 < 0x100)
  {
    v37 = WTF::StringImpl::hashSlowCase(*a2);
  }

  else
  {
    v37 = v36 >> 8;
  }

  v38 = v37 & v35;
  v39 = (v34 + 48 * (v37 & v35));
  if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v39) & 1) == 0)
  {
    v56 = v11;
    v41 = v7;
    v42 = 0;
    v43 = 1;
    do
    {
      if (*v39 == -1)
      {
        v42 = v39;
      }

      else if (WTF::equal(*v39, *a2, v40))
      {
        v49 = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v39 + 5, v13);
        v7 = v41;
        goto LABEL_27;
      }

      v38 = (v38 + v43) & v35;
      v39 = (v34 + 48 * v38);
      ++v43;
    }

    while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v39));
    v7 = v41;
    v11 = v56;
    if (v42)
    {
      v42[1] = 0u;
      v42[2] = 0u;
      *v42 = 0u;
      --*(*v56 - 16);
      v39 = v42;
    }
  }

  WTF::String::operator=(v39, a2);
  v44 = *(a2 + 24);
  *(v39 + 8) = *(a2 + 8);
  *(v39 + 24) = v44;
  v49 = std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v39 + 5, v13);
  v45 = *v11;
  if (*v11)
  {
    v46 = *(v45 - 12) + 1;
  }

  else
  {
    v46 = 1;
  }

  *(v45 - 12) = v46;
  v47 = (*(v45 - 16) + v46);
  v48 = *(v45 - 4);
  if (v48 <= 0x400)
  {
    if (3 * v48 > 4 * v47)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v48 <= 2 * v47)
  {
LABEL_26:
    v49 = WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::expand(v11, v39);
  }

LABEL_27:
  WTF::WallTime::now(v49);
  v51 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v51, 2u, memory_order_relaxed);
  }

  v57 = v51;
  v58 = *(a2 + 8);
  v59 = *(a2 + 24);
  v60 = v50;
  WTF::Deque<std::tuple<WTF::URL,WTF::WallTime>,0ul>::append(v7 + 16, &v57);
  v53 = v57;
  v57 = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v52);
  }

  if ((*(v7 + 80) & 0xFFFFFFFFFFFFLL) == 0 || (result = *((*(v7 + 80) & 0xFFFFFFFFFFFFLL) + 8), result == 0.0))
  {
    WebCore::TimerBase::start();
  }

  return result;
}

uint64_t WebKit::initializeSecItemShim(WebKit *this, WebKit::NetworkProcess *a2)
{
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v4 = *(this + 1);
  atomic_fetch_add(v4, 1u);
  if (byte_1ED642709)
  {
    v5 = qword_1ED642720;
    qword_1ED642720 = v4;
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v5);
      WTF::fastFree(v5, v3);
    }
  }

  else
  {
    byte_1ED642709 = 1;
    qword_1ED642720 = v4;
  }

  return _CFURLConnectionSetFrameworkStubs();
}

uint64_t WebKit::webSecItemCopyMatching(WebKit *this, const __CFDictionary *a2, const void **a3)
{
  WebKit::sendSecItemRequest(&v13, 1, this, 0);
  if (v17 != 1)
  {
    return 4294941988;
  }

  if (capacity_4 == 255)
  {
    v5 = -1;
  }

  else
  {
    v5 = capacity_4;
  }

  if (v5 == 2)
  {
    if (capacity_4 != 2)
    {
      goto LABEL_28;
    }

    *a2 = cf;
    return v13;
  }

  if (v5 != 1)
  {
    if (capacity_4)
    {
      goto LABEL_28;
    }

    *a2 = 0;
    return v13;
  }

  if (capacity_4 != 1)
  {
    goto LABEL_28;
  }

  Mutable = CFArrayCreateMutable(0, capacity, MEMORY[0x1E695E9C0]);
  v7 = Mutable;
  if (capacity)
  {
    v8 = cf;
    v9 = 8 * capacity;
    do
    {
      v6 = *v8;
      if (*v8)
      {
        CFArrayAppendValue(v7, v6);
      }

      ++v8;
      v9 -= 8;
    }

    while (v9);
  }

  *a2 = v7;
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_28:
    mpark::throw_bad_variant_access(Mutable);
  }

  v10 = v13;
  if (capacity_4 > 1u)
  {
    if (capacity_4 == 2)
    {
      v12 = cf;
      cf = 0;
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  else if (capacity_4)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&cf, v6);
  }

  return v10;
}

uint64_t WebKit::webSecItemAdd(WebKit *this, const __CFDictionary *a2, const void **a3)
{
  if (a2)
  {
    return 4294967246;
  }

  WebKit::sendSecItemRequest(&v7, 2, this, 0);
  if (v10 != 1)
  {
    return 4294941988;
  }

  v3 = v7;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      v6 = cf[0];
      cf[0] = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  else if (v9)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v4);
  }

  return v3;
}

uint64_t WebKit::webSecItemUpdate(WebKit *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  WebKit::sendSecItemRequest(&v7, 3, this, a2);
  if (v10 != 1)
  {
    return 4294941988;
  }

  v4 = v7;
  if (v9 > 1u)
  {
    if (v9 == 2)
    {
      v6 = cf[0];
      cf[0] = 0;
      if (v6)
      {
        CFRelease(v6);
      }
    }
  }

  else if (v9)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v3);
  }

  return v4;
}

uint64_t WebKit::webSecItemDelete(WebKit *this, const __CFDictionary *a2)
{
  WebKit::sendSecItemRequest(&v6, 4, this, 0);
  if (v9 != 1)
  {
    return 4294941988;
  }

  v3 = v6;
  if (v8 > 1u)
  {
    if (v8 == 2)
    {
      v5 = cf[0];
      cf[0] = 0;
      if (v5)
      {
        CFRelease(v5);
      }
    }
  }

  else if (v8)
  {
    WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(cf, v2);
  }

  return v3;
}

void WebKit::BackgroundFetchStoreImpl::~BackgroundFetchStoreImpl(WebKit::BackgroundFetchStoreImpl *this, void *a2)
{
  *this = &unk_1F1108D30;
  v3 = *(this + 7);
  *(this + 7) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 6);
  if (v4)
  {
    v5 = *(v4 - 4);
    if (v5)
    {
      v6 = (v4 + 8);
      do
      {
        if (*(v6 - 1) != -1)
        {
          WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(v6, a2);
          v7 = *(v6 - 1);
          *(v6 - 1) = 0;
          if (v7)
          {
            if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v7, a2);
            }
          }
        }

        v6 = (v6 + 88);
        --v5;
      }

      while (v5);
    }

    WTF::fastFree((v4 - 16), a2);
  }

  v8 = *(this + 5);
  if (v8)
  {
    v9 = *(v8 - 4);
    if (v9)
    {
      v10 = *(this + 5);
      while (!*(v10 + 24))
      {
        if (*v10 != -1)
        {
          goto LABEL_18;
        }

LABEL_19:
        v10 = (v10 + 88);
        if (!--v9)
        {
          goto LABEL_23;
        }
      }

      if (*(v10 + 24) != 1)
      {
        mpark::throw_bad_variant_access(v10);
      }

LABEL_18:
      v10 = WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>::~KeyValuePair(v10, a2);
      goto LABEL_19;
    }

LABEL_23:
    WTF::fastFree((v8 - 16), a2);
  }

  v11 = *(this + 4);
  *(this + 4) = 0;
  if (v11)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, a2);
  }

  if (*(this + 4) == 1)
  {
    v12 = *(this + 1);
    if (v12)
    {
      *(v12 + 8) = 0;
      v13 = *(this + 1);
      *(this + 1) = 0;
      if (v13)
      {
        if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v13);
          WTF::fastFree(v13, a2);
        }
      }
    }
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::BackgroundFetchStoreImpl::~BackgroundFetchStoreImpl(this, a2);

  WTF::fastFree(v2, v3);
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::registerFetch(uint64_t a1, __int128 *a2, const WTF::StringImpl *a3, atomic_uint **a4, WTF::StringImpl **a5)
{
  v76[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v62) = 0;
  v64 = -1;
  LODWORD(v10) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v11 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    }

    *&v62 = v11;
    v10 = *(a2 + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
    }

    *(&v62 + 1) = v10;
    v63 = *(a2 + 4);
    LOBYTE(v10) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v10 != 255)
  {
    v62 = *a2;
LABEL_7:
    v64 = v10;
  }

  LOBYTE(v65) = 0;
  v67 = -1;
  LODWORD(v12) = *(a2 + 56);
  if (!*(a2 + 56))
  {
    v13 = *(a2 + 4);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    *&v65 = v13;
    v12 = *(a2 + 5);
    if (v12)
    {
      atomic_fetch_add_explicit(v12, 2u, memory_order_relaxed);
    }

    *(&v65 + 1) = v12;
    v66 = *(a2 + 12);
    LOBYTE(v12) = *(a2 + 56);
    goto LABEL_14;
  }

  if (v12 != 255)
  {
    v65 = a2[2];
LABEL_14:
    v67 = v12;
  }

  v14 = *(a3 + 4);
  if (v14)
  {
    atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
  }

  v68 = v14;
  v15 = *a4;
  if (*a4)
  {
    atomic_fetch_add_explicit(v15, 2u, memory_order_relaxed);
  }

  v69 = v15;
  if (*a5 == -1)
  {
    __break(0xC471u);
    goto LABEL_104;
  }

  if (!*a5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA281CLL);
  }

  v16 = *(a1 + 48);
  if (v16 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 48)), (v16 = *(a1 + 48)) != 0))
  {
    v17 = *(v16 - 8);
  }

  else
  {
    v17 = 0;
  }

  v18 = *(*a5 + 4);
  v60 = a4;
  v61 = a3;
  v59 = v15;
  if (v18 < 0x100)
  {
    v19 = WTF::StringImpl::hashSlowCase(*a5);
  }

  else
  {
    v19 = v18 >> 8;
  }

  v20 = 0;
  for (i = 1; ; ++i)
  {
    v22 = v19 & v17;
    v23 = (v16 + 88 * (v19 & v17));
    v24 = *v23;
    if (*v23 == -1)
    {
      v20 = v16 + 88 * v22;
      goto LABEL_32;
    }

    if (!v24)
    {
      break;
    }

    if (WTF::equal(v24, *a5, a3))
    {
      goto LABEL_47;
    }

LABEL_32:
    v19 = i + v22;
  }

  if (v20)
  {
    *(v20 + 80) = 0;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 0u;
    *v20 = 0u;
    --*(*(a1 + 48) - 16);
    v23 = v20;
  }

  WTF::String::operator=(v23, a5);
  LOBYTE(v70[0]) = 0;
  v72 = -1;
  if (!v64)
  {
    v26 = v62;
    v62 = 0uLL;
    *v70 = v26;
    v71 = v63;
    v27 = v59;
    goto LABEL_37;
  }

  v27 = v59;
  if (v64 != 255)
  {
    *v70 = v62;
LABEL_37:
    v72 = v64;
  }

  LOBYTE(v73) = 0;
  v75 = -1;
  if (!v67)
  {
    v28 = v65;
    v65 = 0uLL;
    v73 = v28;
    v74 = v66;
    goto LABEL_40;
  }

  if (v67 != 255)
  {
    v73 = v65;
LABEL_40:
    v75 = v67;
  }

  v29 = v68;
  v68 = 0;
  v69 = 0;
  v76[0] = v29;
  v76[1] = v27;
  WebCore::SecurityOriginData::operator=((v23 + 1), v70);
  WebCore::SecurityOriginData::operator=((v23 + 5), &v73);
  WebKit::GPUProcess::GPUSession::operator=(v23 + 9, v76);
  WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(v70, v30);
  v31 = *(a1 + 48);
  if (v31)
  {
    v32 = *(v31 - 12) + 1;
  }

  else
  {
    v32 = 1;
  }

  *(v31 - 12) = v32;
  v33 = (*(v31 - 16) + v32);
  v34 = *(v31 - 4);
  if (v34 > 0x400)
  {
    if (v34 <= 2 * v33)
    {
LABEL_46:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand((a1 + 48));
    }
  }

  else if (3 * v34 <= 4 * v33)
  {
    goto LABEL_46;
  }

LABEL_47:
  WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(&v62, v25);
  result = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), a2);
  v37 = result;
  v38 = *(a1 + 40);
  if (v38)
  {
    v38 = (v38 + 88 * *(v38 - 1));
  }

  if (v38 == result)
  {
    return result;
  }

  v39 = *(v61 + 4);
  if (v39)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  v70[0] = v39;
  v40 = *a4;
  if (*v60)
  {
    atomic_fetch_add_explicit(v40, 2u, memory_order_relaxed);
  }

  v70[1] = v40;
  if (WTF::equal(v39, 0, v36) && WTF::equal(v40, 0, v41))
  {
    __break(0xC471u);
LABEL_104:
    JUMPOUT(0x19DDA27FCLL);
  }

  if (v39 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA283CLL);
  }

  v42 = *(v37 + 8);
  if (v42 || (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(v37 + 8, 0), (v42 = *(v37 + 8)) != 0))
  {
    v43 = *(v42 - 8);
  }

  else
  {
    v43 = 0;
  }

  v44 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(v70) & v43;
  v45 = v42 + 24 * v44;
  if ((WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v45, v46, v47) & 1) == 0)
  {
    v50 = 0;
    v51 = 1;
    do
    {
      if (*v45 == -1)
      {
        v50 = v45;
      }

      else if (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v45, v70, v49))
      {
        goto LABEL_78;
      }

      v44 = (v44 + v51) & v43;
      v45 = v42 + 24 * v44;
      ++v51;
    }

    while (!WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v45, v48, v49));
    if (v50)
    {
      *v50 = 0;
      v50[1] = 0;
      v50[2] = 0;
      --*(*(v37 + 8) - 16);
      v45 = v50;
    }
  }

  WebKit::GPUProcess::GPUSession::operator=(v45, v70);
  v52 = *a5;
  *a5 = 0;
  v53 = *(v45 + 16);
  *(v45 + 16) = v52;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v48);
  }

  v54 = *(v37 + 8);
  if (v54)
  {
    v55 = *(v54 - 12) + 1;
  }

  else
  {
    v55 = 1;
  }

  *(v54 - 12) = v55;
  v56 = (*(v54 - 16) + v55);
  v57 = *(v54 - 4);
  if (v57 > 0x400)
  {
    if (v57 <= 2 * v56)
    {
LABEL_77:
      WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::expand(v37 + 8, v45);
    }
  }

  else if (3 * v57 <= 4 * v56)
  {
    goto LABEL_77;
  }

LABEL_78:
  v58 = v70[1];
  v70[1] = 0;
  if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v58, v48);
  }

  result = v70[0];
  v70[0] = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v48);
    }
  }

  return result;
}

void WebKit::BackgroundFetchStoreImpl::FetchInformation::~FetchInformation(WebKit::BackgroundFetchStoreImpl::FetchInformation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 8);
  *(this + 8) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  if (!*(this + 56))
  {
    v5 = *(this + 5);
    *(this + 5) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(this + 4);
    *(this + 4) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }
  }

  *(this + 56) = -1;
  if (!*(this + 24))
  {
    v7 = *(this + 1);
    *(this + 1) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *this;
    *this = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  *(this + 24) = -1;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::initializeFetches(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  LOBYTE(v11[0]) = 0;
  v13 = -1;
  LODWORD(v5) = *(a2 + 24);
  if (!*(a2 + 24))
  {
    v6 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
    }

    v11[0] = v6;
    v5 = *(a2 + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    }

    v11[1] = v5;
    v12 = *(a2 + 16);
    LOBYTE(v5) = *(a2 + 24);
    goto LABEL_7;
  }

  if (v5 != 255)
  {
    *v11 = *a2;
LABEL_7:
    v13 = v5;
  }

  WebCore::SecurityOriginData::fromURL(&v14, (a2 + 32), a2);
  result = WebKit::BackgroundFetchStoreImpl::initializeFetches(a1, v11, a3);
  if (!v16)
  {
    v9 = v15;
    v15 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    result = v14;
    v14 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }
  }

  v16 = -1;
  if (!v13)
  {
    v10 = v11[1];
    v11[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    result = v11[0];
    v11[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

atomic_ullong *WebKit::BackgroundFetchStoreImpl::initializeFetches(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  v71 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (!v5)
  {
    v61 = 0;
LABEL_3:
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, a2);
    result = (*(*v6 + 8))(v6);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(a1 + 24), &v61);
  if (!v61)
  {
    goto LABEL_3;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v11 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(a2);
  if (v11)
  {
    goto LABEL_97;
  }

  if (a2[1].n128_u8[8])
  {
    if (a2[1].n128_u8[8] != 1)
    {
LABEL_25:
      mpark::throw_bad_variant_access(v11);
    }

    goto LABEL_11;
  }

  if (a2->n128_u64[0] == -1)
  {
LABEL_97:
    __break(0xC471u);
    JUMPOUT(0x19DDA3188);
  }

LABEL_11:
  v12 = *(a1 + 40);
  if (v12 || (WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand((a1 + 40), 0), (v12 = *(a1 + 40)) != 0))
  {
    v13 = *(v12 - 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = WTF::computeHash<WebCore::ClientOrigin>(a2) & v13;
  v15 = (v12 + 88 * v14);
  v11 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v15);
  if (v11)
  {
    goto LABEL_28;
  }

  v16 = 0;
  v17 = 1;
  do
  {
    if (*(v15 + 24))
    {
      if (*(v15 + 24) != 1)
      {
        goto LABEL_25;
      }
    }

    else if (*v15 == -1)
    {
      v16 = v15;
      goto LABEL_22;
    }

    if (WebCore::operator==() && (WebCore::operator==() & 1) != 0)
    {
      v53 = 0;
      goto LABEL_47;
    }

LABEL_22:
    v14 = (v14 + v17) & v13;
    v15 = (v12 + 88 * v14);
    v11 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WebCore::ClientOrigin>,false>::isEmptyValue<WebCore::ClientOrigin>(v15);
    ++v17;
  }

  while (!v11);
  if (v16)
  {
    v16[10] = 0;
    *(v16 + 3) = 0u;
    *(v16 + 4) = 0u;
    *(v16 + 1) = 0u;
    *(v16 + 2) = 0u;
    *v16 = 0u;
    --*(*(a1 + 40) - 16);
    v15 = v16;
  }

LABEL_28:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v15, a2);
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v15 + 32, a2 + 2);
  v21 = v58;
  v22 = v59;
  v58 = 0;
  v59 = 0;
  v23 = v60;
  v60 = 0;
  *v63 = 0;
  v24 = v15[8];
  v15[8] = v21;
  if (v24)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(v24, v19);
  }

  v25 = *(v15 + 21);
  v26 = v15[9];
  if (v25)
  {
    v27 = 8 * v25;
    do
    {
      v28 = *v26;
      *v26 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }

      v26 = (v26 + 8);
      v27 -= 8;
    }

    while (v27);
    v26 = v15[9];
  }

  if (v26)
  {
    v15[9] = 0;
    *(v15 + 20) = 0;
    WTF::fastFree(v26, v19);
  }

  *&v20 = 0;
  *&v63[8] = v20;
  v15[9] = v22;
  v15[10] = v23;
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63[8], v19);
  if (*v63)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(*v63, v18);
  }

  v29 = *(a1 + 40);
  if (v29)
  {
    v30 = *(v29 - 12) + 1;
  }

  else
  {
    v30 = 1;
  }

  *(v29 - 12) = v30;
  v31 = (*(v29 - 16) + v30);
  v32 = *(v29 - 4);
  if (v32 > 0x400)
  {
    if (v32 <= 2 * v31)
    {
LABEL_45:
      v15 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::expand((a1 + 40), v15);
    }
  }

  else if (3 * v32 <= 4 * v31)
  {
    goto LABEL_45;
  }

  v53 = 1;
LABEL_47:
  WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v18);
  if (v58)
  {
    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::deallocateTable(v58, a2);
  }

  v33 = *(v15 + 21);
  if (v33)
  {
    v34 = 1;
  }

  else
  {
    v34 = v53;
  }

  if ((v34 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v33 == *(v15 + 20))
  {
    a3 = WTF::Vector<WTF::CompletionHandler<void ()(void)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v15 + 9, v33 + 1, a3);
    v33 = *(v15 + 21);
  }

  v35 = (v15[9] + 8 * v33);
  v36 = *a3;
  *a3 = 0;
  *v35 = v36;
  *(v15 + 21) = v33 + 1;
  v63[0] = 0;
  v64 = -1;
  LODWORD(v33) = a2[1].n128_u8[8];
  if (a2[1].n128_u8[8])
  {
    if (v33 != 255)
    {
      *v63 = *a2;
      goto LABEL_61;
    }
  }

  else
  {
    v37 = a2->n128_u64[0];
    if (a2->n128_u64[0])
    {
      atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
    }

    *v63 = v37;
    v33 = a2->n128_u64[1];
    if (v33)
    {
      atomic_fetch_add_explicit(v33, 2u, memory_order_relaxed);
    }

    *&v63[8] = v33;
    *&v63[16] = a2[1].n128_u32[0];
    LOBYTE(v33) = a2[1].n128_u8[8];
LABEL_61:
    v64 = v33;
  }

  v65.n128_u8[0] = 0;
  v67 = -1;
  LODWORD(v38) = a2[3].n128_u8[8];
  if (a2[3].n128_u8[8])
  {
    if (v38 != 255)
    {
      v65 = a2[2];
      goto LABEL_68;
    }
  }

  else
  {
    v39 = a2[2].n128_u64[0];
    if (v39)
    {
      atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
    }

    v65.n128_u64[0] = v39;
    v38 = a2[2].n128_u64[1];
    if (v38)
    {
      atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
    }

    v65.n128_u64[1] = v38;
    v66 = a2[3].n128_u32[0];
    LOBYTE(v38) = a2[3].n128_u8[8];
LABEL_68:
    v67 = v38;
  }

  v40 = *(a1 + 56);
  if (v40)
  {
    v41 = *(v40 + 8);
    if (v41)
    {
      ++*(v41 + 2);
    }
  }

  else
  {
    v41 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v41);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v43 = *Engine;
  atomic_fetch_add(*Engine, 1u);
  ++*(a1 + 16);
  v68 = v43;
  v69 = a1;
  v44 = v61;
  if (v61)
  {
    while (1)
    {
      v43 = *(v44 + 8);
      if ((v43 & 1) == 0)
      {
        break;
      }

      v45 = *(v44 + 8);
      atomic_compare_exchange_strong_explicit((v44 + 8), &v45, v43 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v45 == v43)
      {
        goto LABEL_77;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v44 + 8));
  }

LABEL_77:
  v70 = v44;
  v46 = WTF::fastMalloc(v43, 0x60);
  *v46 = &unk_1F11095A0;
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v46 + 8, v63);
  mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v46 + 40, &v65);
  v46[9] = v68;
  v47 = v69;
  v68 = 0;
  v69 = 0;
  v46[10] = v47;
  v48 = v70;
  v70 = 0;
  v46[11] = v48;
  v49 = *(a1 + 32);
  if (!v49)
  {
    v62 = 0;
    goto LABEL_79;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v49, *(a1 + 24), &v62);
  v55 = v62;
  if (v62)
  {
    v56 = WTF::fastMalloc(v54, 0x10);
    *v56 = &unk_1F1109640;
    v56[1] = v46;
    v58 = v56;
    WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v55, a2, &v58);
    v57 = v58;
    v58 = 0;
    if (v57)
    {
      (*(*v57 + 1))(v57);
    }
  }

  else
  {
LABEL_79:
    v58 = 0;
    v59 = 0;
    (*(*v46 + 16))(v46, &v58);
    (*(*v46 + 8))(v46);
    WTF::Vector<std::pair<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v50);
  }

  v52 = v62;
  v62 = 0;
  if (v52)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v52 + 8), v51);
  }

  result = WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(v63, v51);
  if (v41)
  {
    result = WTF::RefCounted<WebCore::SWServer>::deref(v41 + 2);
  }

LABEL_4:
  v9 = v61;
  v61 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v9 + 8), v8);
  }

  return result;
}

uint64_t WebKit::BackgroundFetchStoreImpl::initializeFetches(WebCore::ClientOrigin const&,WTF::CompletionHandler<void ()(void)> &&)::$_0::~$_0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v3 + 8), a2);
  }

  v4 = *(a1 + 72);
  *(a1 + 72) = 0;
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

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  if (!*(a1 + 56))
  {
    v6 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    v7 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }

  *(a1 + 56) = -1;
  if (!*(a1 + 24))
  {
    v8 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }

    v9 = *a1;
    *a1 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }
  }

  *(a1 + 24) = -1;
  return a1;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::clearFetch(uint64_t a1, atomic_uint **a2, atomic_uint **a3, uint64_t *a4)
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (!v6)
  {
    v57 = 0;
LABEL_3:
    v7 = *a4;
    *a4 = 0;
    (*(*v7 + 16))(v7, a2, a3);
    result = (*(*v7 + 8))(v7);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v6, *(a1 + 24), &v57);
  if (!v57)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v61, a2);
  v13 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v61);
  v16 = v13;
  v17 = *(a1 + 40);
  if (v17)
  {
    v17 += 88 * *(v17 - 4);
  }

  if (v17 != v13)
  {
    v18 = a2[4];
    if (v18)
    {
      atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
    }

    v58[0] = v18;
    v19 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    v58[1] = v19;
    if (!*(v13 + 64))
    {
      goto LABEL_38;
    }

    if (WTF::equal(v58[0], 0, v15) && WTF::equal(v58[1], 0, v15) || v58[0] == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA3988);
    }

    v20 = *(v16 + 64);
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = *(v20 - 8);
    v22 = WTF::TupleHash<WTF::String,WTF::String>::hash<0ul>(v58) & v21;
    v23 = (v20 + 24 * v22);
    if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v23, v24, v25))
    {
LABEL_25:
      v27 = *(v16 + 64);
      if (!v27)
      {
        goto LABEL_38;
      }

      v23 = &v27[3 * *(v27 - 1)];
    }

    else
    {
      v26 = 1;
      while (*v23 == -1 || (WTF::TupleHash<WTF::String,WTF::String>::equal<0ul>(v23, v58, v15) & 1) == 0)
      {
        v22 = (v22 + v26) & v21;
        v23 = (v20 + 24 * v22);
        ++v26;
        if (WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v23, v14, v15))
        {
          goto LABEL_25;
        }
      }

      v27 = *(v16 + 64);
      if (!v27)
      {
LABEL_28:
        if (v27 != v23)
        {
          v28 = v23[2];
          v23[2] = 0;
          v56 = v28;
          v29 = *(v16 + 64);
          if (!v29 || (v29 += 3 * *(v29 - 1), v29 != v23))
          {
            if (v29 != v23)
            {
              WTF::KeyValuePairHashTraits<WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>>::customDeleteBucket(v23, v14);
              v30 = *(v16 + 64);
              v31 = vadd_s32(*(v30 - 16), 0xFFFFFFFF00000001);
              *(v30 - 16) = v31;
              v32 = *(v30 - 4);
              if (6 * v31.i32[1] < v32 && v32 >= 9)
              {
                WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash((v16 + 64), v32 >> 1);
              }
            }
          }

LABEL_39:
          v34 = v58[1];
          v58[1] = 0;
          if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v34, v14);
          }

          v35 = v58[0];
          v58[0] = 0;
          if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v35, v14);
          }

          if (!v56 || !*(v56 + 1))
          {
            v40 = *a4;
            *a4 = 0;
            (*(*v40 + 16))(v40);
            (*(*v40 + 8))(v40);
LABEL_63:
            result = v56;
            v56 = 0;
            if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              result = WTF::StringImpl::destroy(result, v9);
            }

            goto LABEL_66;
          }

          v36 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 48), &v56, v15);
          v37 = *(a1 + 48);
          if (v37)
          {
            v38 = (v37 + 88 * *(v37 - 4));
            if (v38 == v36)
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (!v36)
            {
              goto LABEL_56;
            }

            v38 = 0;
          }

          if (v38 != v36)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((a1 + 48), v36);
          }

LABEL_56:
          add_explicit = (*(a1 + 16) + 1);
          *(a1 + 16) = add_explicit;
          v42 = v56;
          if (v56)
          {
            add_explicit = atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
          }

          v43 = *a4;
          *a4 = 0;
          v44 = WTF::fastMalloc(add_explicit, 0x20);
          v45 = &unk_1F11096E0;
          *v44 = &unk_1F11096E0;
          v44[1] = a1;
          v44[2] = v42;
          v44[3] = v43;
          v46 = *(a1 + 32);
          if (v46)
          {
            WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v46, *(a1 + 24), &v60);
            v50 = v60;
            if (v60)
            {
              WTF::String::isolatedCopy();
              v58[1] = v44;
              v52 = WTF::fastMalloc(v51, 0x18);
              *v52 = &unk_1F1109708;
              *(v52 + 1) = *v58;
              v58[0] = 0;
              v58[1] = 0;
              v59 = v52;
              WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v50, &v61, &v59);
              v53 = v59;
              v59 = 0;
              if (v53)
              {
                (*(*v53 + 8))(v53);
              }

              v54 = v58[1];
              v58[1] = 0;
              if (v54)
              {
                (*(*v54 + 8))(v54);
              }

              v55 = v58[0];
              v58[0] = 0;
              if (v55 && atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v55, v9);
              }

              goto LABEL_61;
            }

            v45 = *v44;
          }

          else
          {
            v60 = 0;
          }

          v45[2](v44);
          (*(*v44 + 8))(v44);
LABEL_61:
          v47 = v60;
          v60 = 0;
          if (v47)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v47 + 8), v9);
          }

          goto LABEL_63;
        }

LABEL_38:
        v56 = 0;
        goto LABEL_39;
      }
    }

    v27 += 3 * *(v27 - 1);
    goto LABEL_28;
  }

  v39 = *a4;
  *a4 = 0;
  (*(*v39 + 16))(v39);
  result = (*(*v39 + 8))(v39);
LABEL_66:
  if (!v66)
  {
    v48 = v65;
    v65 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v9);
    }

    result = v64;
    v64 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

  v66 = -1;
  if (!v63)
  {
    v49 = v62;
    v62 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v9);
    }

    result = v61;
    v61 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

LABEL_4:
  v10 = v57;
  v57 = 0;
  if (v10)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v10 + 8), v9);
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::clearAllFetches(uint64_t a1, const WTF::StringImpl **a2, uint64_t **a3)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  if (!v5)
  {
    v63 = 0;
LABEL_3:
    v6 = *a3;
    *a3 = 0;
    (*(*v6 + 16))(v6, a2);
    result = (*(*v6 + 8))(v6);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(a1 + 24), &v63);
  if (!v63)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v69, a2);
  v11 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v69);
  v14 = *(a1 + 40);
  if (v14)
  {
    v14 += 88 * *(v14 - 4);
  }

  if (v14 == v11)
  {
    v30 = *a3;
    *a3 = 0;
    (*(*v30 + 16))(v30);
    result = (*(*v30 + 8))(v30);
    goto LABEL_63;
  }

  v61 = 0;
  v62 = 0;
  v16 = (v11 + 64);
  v15 = *(v11 + 64);
  if (!v15)
  {
    goto LABEL_55;
  }

  v17 = *(v15 - 4);
  if (!v17)
  {
    goto LABEL_35;
  }

  v18 = 0;
  v19 = (v15 + 24 * v17 - 8);
  do
  {
    if ((WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::isEmptyBucket(v19 - 2, v12, v13) & 1) == 0)
    {
      v20 = *(v19 - 2);
      if (v20 != -1)
      {
        if (WTF::equal(v20, a2[4], v13))
        {
          v21 = HIDWORD(v62);
          if (HIDWORD(v62) == v62)
          {
            WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String&>(&v61, v19);
          }

          else
          {
            v22 = v61;
            v23 = *v19;
            if (*v19)
            {
              atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
            }

            v24 = HIDWORD(v62);
            *(v22 + 8 * v21) = v23;
            HIDWORD(v62) = v24 + 1;
          }

          v25 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::String>>,(WTF::ShouldValidateKey)1,WTF::String>((a1 + 48), v19, v13);
          v26 = v25;
          v27 = *(a1 + 48);
          if (v27)
          {
            v28 = (v27 + 88 * *(v27 - 4));
            if (v28 == v25)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (!v25)
            {
LABEL_29:
              WTF::KeyValuePairHashTraits<WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>>::customDeleteBucket(v19 - 2, v26);
              ++v18;
              goto LABEL_30;
            }

            v28 = 0;
          }

          if (v28 != v25)
          {
            WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WebKit::BackgroundFetchStoreImpl::FetchInformation,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::FetchInformation>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::remove((a1 + 48), v25);
          }

          goto LABEL_29;
        }
      }
    }

LABEL_30:
    v19 -= 3;
    --v17;
  }

  while (v17);
  v15 = *v16;
  if (v18)
  {
    v29 = *(v15 - 12) - v18;
    *(v15 - 16) += v18;
    *(v15 - 12) = v29;
    goto LABEL_35;
  }

  if (v15)
  {
LABEL_35:
    v31 = *(v15 - 12);
    v32 = *(v15 - 4);
    if (6 * v31 >= v32 || v32 < 9)
    {
      goto LABEL_55;
    }

    if (v31 <= 1)
    {
      v34 = 1;
      goto LABEL_44;
    }

    v35 = __clz(v31 - 1);
    if (!v35)
    {
      __break(1u);
    }

    v34 = (1 << -v35);
    if (v31 > 0x400)
    {
      if (v34 <= 2 * v31)
      {
LABEL_45:
        LODWORD(v34) = 2 * v34;
      }
    }

    else
    {
LABEL_44:
      if (3 * v34 <= 4 * v31)
      {
        goto LABEL_45;
      }
    }

    if (v34 > 0x400)
    {
      v36 = 0.416666667;
    }

    else
    {
      v36 = 0.604166667;
    }

    if (v34 * v36 <= v31)
    {
      LODWORD(v34) = 2 * v34;
    }

    if (v34 <= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v34;
    }

    WTF::HashTable<std::pair<WTF::String,WTF::String>,WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<std::pair<WTF::String,WTF::String>,WTF::String>>,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::FastMalloc>::rehash(v16, v37);
  }

LABEL_55:
  ++*(a1 + 16);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v58, &v61);
  v38 = *a3;
  *a3 = 0;
  v60 = v38;
  v39 = WTF::fastMalloc(v38, 0x28);
  v40 = &unk_1F1109758;
  *v39 = &unk_1F1109758;
  v39[1] = a1;
  v41 = v58;
  v58 = 0;
  v39[2] = v41;
  v39[3] = v59;
  v42 = v60;
  v59 = 0;
  v60 = 0;
  v39[4] = v42;
  v43 = *(a1 + 32);
  if (!v43)
  {
    v68 = 0;
    goto LABEL_57;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v43, *(a1 + 24), &v68);
  v50 = v68;
  if (v68)
  {
    v64 = 0;
    v65 = 0;
    _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorINS_6StringELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS6_EUlRT_E_S6_S9_vE3mapERS6_S9_RKSC_(&v64, &v61);
    v66 = v39;
    v52 = WTF::fastMalloc(v51, 0x20);
    *v52 = &unk_1F1109780;
    v52[1] = v64;
    v53 = v65;
    v64 = 0;
    v65 = 0;
    v52[2] = v53;
    v54 = v66;
    v66 = 0;
    v67 = v52;
    v52[3] = v54;
    WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v50, &v69, &v67);
    v56 = v67;
    v67 = 0;
    if (v56)
    {
      (*(*v56 + 8))(v56);
    }

    v57 = v66;
    v66 = 0;
    if (v57)
    {
      (*(*v57 + 8))(v57);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v64, v55);
  }

  else
  {
    v40 = *v39;
LABEL_57:
    v40[2](v39);
    (*(*v39 + 8))(v39);
  }

  v45 = v68;
  v68 = 0;
  if (v45)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v45 + 8), v44);
  }

  v46 = v60;
  v60 = 0;
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v44);
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v47);
LABEL_63:
  if (!v74)
  {
    v48 = v73;
    v73 = 0;
    if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v48, v8);
    }

    result = v72;
    v72 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }
  }

  v74 = -1;
  if (!v71)
  {
    v49 = v70;
    v70 = 0;
    if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v49, v8);
    }

    result = v69;
    v69 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v8);
    }
  }

LABEL_4:
  v9 = v63;
  v63 = 0;
  if (v9)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v9 + 8), v8);
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::storeFetch(uint64_t a1, __int128 *a2, atomic_uint **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t **a9)
{
  v106 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 32);
  if (!v10)
  {
    v76 = 0;
LABEL_3:
    v11 = *a9;
    *a9 = 0;
    (*(*v11 + 16))(v11, 2, a3, a4, a5, a6, a7, a8);
    result = (*(*v11 + 8))(v11);
    goto LABEL_4;
  }

  v16 = a7;
  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v10, *(a1 + 24), &v76);
  if (!v76)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v100, a2);
  v22 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v100);
  v23 = *(a1 + 40);
  if (v23)
  {
    v23 += 88 * *(v23 - 4);
  }

  if (v23 != v22)
  {
    v24 = *(a2 + 4);
    if (v24)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v83 = v24;
    v25 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v25, 2u, memory_order_relaxed);
    }

    *&v84 = v25;
    WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(&v75, (v22 + 64), &v83);
    v27 = v84;
    *&v84 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v26);
    }

    v28 = v83;
    v83 = 0;
    if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v28 = WTF::StringImpl::destroy(v28, v26);
    }

    if (v75 && *(v75 + 1))
    {
      v29 = 0;
    }

    else
    {
      WebKit::BackgroundFetchStoreManager::createNewStorageIdentifier(&v83, v28);
      v32 = v83;
      v83 = 0;
      v33 = v75;
      v75 = v32;
      if (v33)
      {
        if (atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v33, v31);
        }

        v34 = v83;
        v83 = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v31);
        }
      }

      v29 = 1;
    }

    ++*(a1 + 16);
    v83 = a1;
    LOBYTE(v84) = 0;
    v86 = -1;
    v35 = v102;
    if (v102)
    {
      if (v102 == 255)
      {
LABEL_39:
        LOBYTE(v87) = 0;
        v89 = -1;
        v38 = v105;
        if (v105)
        {
          if (v105 == 255)
          {
LABEL_46:
            LOBYTE(v90) = 0;
            v92 = -1;
            LODWORD(v41) = *(a2 + 24);
            if (*(a2 + 24))
            {
              if (v41 == 255)
              {
LABEL_53:
                v43 = *(a2 + 4);
                if (v43)
                {
                  atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
                }

                v93 = v43;
                v44 = *(a2 + 56);
                v94 = *(a2 + 40);
                v95 = v44;
                v45 = *a3;
                if (*a3)
                {
                  atomic_fetch_add_explicit(v45, 2u, memory_order_relaxed);
                }

                v46 = v35;
                v96 = v45;
                v47 = v75;
                if (v75)
                {
                  atomic_fetch_add_explicit(v75, 2u, memory_order_relaxed);
                }

                v97 = v47;
                v98 = v29;
                v48 = *a9;
                *a9 = 0;
                v99 = v48;
                v49 = WTF::fastMalloc(v48, 0xB8);
                v50 = v49;
                *v49 = &unk_1F11097D0;
                v49[1] = a1;
                v83 = 0;
                *(v49 + 16) = 0;
                *(v49 + 40) = -1;
                if (v46)
                {
                  if (v46 == 255)
                  {
LABEL_62:
                    *(v49 + 48) = 0;
                    *(v49 + 72) = -1;
                    if (v38)
                    {
                      if (v38 == 255)
                      {
LABEL_65:
                        mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment(v49 + 80, &v90);
                        v53 = v93;
                        if (v93)
                        {
                          atomic_fetch_add_explicit(v93, 2u, memory_order_relaxed);
                        }

                        v50[14] = v53;
                        v54 = v94;
                        *(v50 + 17) = v95;
                        *(v50 + 15) = v54;
                        v55 = v96;
                        if (v96)
                        {
                          atomic_fetch_add_explicit(v96, 2u, memory_order_relaxed);
                        }

                        v50[19] = v55;
                        v50[20] = v97;
                        *(v50 + 168) = v98;
                        v56 = v99;
                        v97 = 0;
                        v99 = 0;
                        v50[22] = v56;
                        v57 = *(a1 + 32);
                        if (v57)
                        {
                          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v57, *(a1 + 24), &v82);
                          v62 = v82;
                          if (v82)
                          {
                            WTF::String::isolatedCopy();
                            *v78 = a4;
                            *&v78[8] = a5;
                            *&v78[16] = a6;
                            v78[24] = v16;
                            v63 = *a8;
                            v64 = *(a8 + 8);
                            *a8 = 0u;
                            v79 = v63;
                            *&v80 = v64;
                            *(&v80 + 1) = v50;
                            v65 = WTF::fastMalloc(v63, 0x48);
                            *v65 = &unk_1F11097F8;
                            v65[1] = v77;
                            v66 = *v78;
                            *(v65 + 25) = *&v78[9];
                            *(v65 + 1) = v66;
                            v67 = v79;
                            v77 = 0;
                            v79 = 0;
                            v65[6] = v67;
                            v68 = v80;
                            v80 = 0uLL;
                            *(v65 + 7) = v68;
                            v81 = v65;
                            WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v62, &v100, &v81);
                            v69 = v81;
                            v81 = 0;
                            if (v69)
                            {
                              (*(*v69 + 8))(v69);
                            }

                            v70 = *(&v80 + 1);
                            *(&v80 + 1) = 0;
                            if (v70)
                            {
                              (*(*v70 + 8))(v70);
                            }

                            v71 = v79;
                            if (v79)
                            {
                              v79 = 0;
                              LODWORD(v80) = 0;
                              WTF::fastFree(v71, v58);
                            }

                            v72 = v77;
                            v77 = 0;
                            if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
                            {
                              WTF::StringImpl::destroy(v72, v58);
                            }

                            goto LABEL_72;
                          }
                        }

                        else
                        {
                          v82 = 0;
                        }

                        (*(*v50 + 16))(v50, 2);
                        (*(*v50 + 8))(v50);
LABEL_72:
                        v59 = v82;
                        v82 = 0;
                        if (v59)
                        {
                          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v59 + 8), v58);
                        }

                        WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::~$_0(&v83, v58);
                        result = v75;
                        v75 = 0;
                        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          result = WTF::StringImpl::destroy(result, v13);
                        }

                        goto LABEL_77;
                      }

                      *(v49 + 3) = v87;
                    }

                    else
                    {
                      v49[6] = v87;
                      v52 = *(&v87 + 1);
                      v87 = 0uLL;
                      v49[7] = v52;
                      *(v49 + 16) = v73;
                    }

                    *(v49 + 72) = v38;
                    goto LABEL_65;
                  }

                  *(v49 + 1) = v84;
                }

                else
                {
                  v49[2] = v84;
                  v51 = *(&v84 + 1);
                  v84 = 0uLL;
                  v49[3] = v51;
                  *(v49 + 8) = v74;
                }

                *(v49 + 40) = v46;
                goto LABEL_62;
              }

              v90 = *a2;
            }

            else
            {
              v42 = *a2;
              if (*a2)
              {
                atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
              }

              *&v90 = v42;
              v41 = *(a2 + 1);
              if (v41)
              {
                atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
              }

              *(&v90 + 1) = v41;
              v91 = *(a2 + 4);
              LOBYTE(v41) = *(a2 + 24);
            }

            v92 = v41;
            goto LABEL_53;
          }

          v87 = v103;
        }

        else
        {
          v39 = v103;
          if (v103)
          {
            atomic_fetch_add_explicit(v103, 2u, memory_order_relaxed);
          }

          *&v87 = v39;
          v40 = *(&v103 + 1);
          if (*(&v103 + 1))
          {
            atomic_fetch_add_explicit(*(&v103 + 1), 2u, memory_order_relaxed);
          }

          *(&v87 + 1) = v40;
          v73 = v104;
          v88 = v104;
          v38 = v105;
        }

        v89 = v38;
        goto LABEL_46;
      }

      v84 = v100;
    }

    else
    {
      v36 = v100;
      if (v100)
      {
        atomic_fetch_add_explicit(v100, 2u, memory_order_relaxed);
      }

      *&v84 = v36;
      v37 = *(&v100 + 1);
      if (*(&v100 + 1))
      {
        atomic_fetch_add_explicit(*(&v100 + 1), 2u, memory_order_relaxed);
      }

      *(&v84 + 1) = v37;
      v74 = v101;
      v85 = v101;
      v35 = v102;
    }

    v86 = v35;
    goto LABEL_39;
  }

  v30 = *a9;
  *a9 = 0;
  (*(*v30 + 16))(v30, 2);
  result = (*(*v30 + 8))(v30);
LABEL_77:
  if (!v105)
  {
    v60 = *(&v103 + 1);
    *(&v103 + 1) = 0;
    if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v60, v13);
    }

    result = v103;
    *&v103 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v13);
    }
  }

  v105 = -1;
  if (!v102)
  {
    v61 = *(&v100 + 1);
    *(&v100 + 1) = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v13);
    }

    result = v100;
    *&v100 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v13);
    }
  }

LABEL_4:
  v14 = v76;
  v76 = 0;
  if (v14)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v14 + 8), v13);
  }

  return result;
}

uint64_t WebKit::BackgroundFetchStoreImpl::storeFetch(WebCore::ServiceWorkerRegistrationKey const&,WTF::String const&,unsigned long long,unsigned long long,std::optional<unsigned long>,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebCore::BackgroundFetchStore::StoreResult)> &&)::$_0::~$_0(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 152);
  *(a1 + 152) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  if (!*(a1 + 96))
  {
    v7 = *(a1 + 80);
    *(a1 + 80) = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }

    v8 = *(a1 + 72);
    *(a1 + 72) = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, a2);
    }
  }

  *(a1 + 96) = -1;
  if (!*(a1 + 64))
  {
    v9 = *(a1 + 48);
    *(a1 + 48) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, a2);
    }

    v10 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, a2);
    }
  }

  *(a1 + 64) = -1;
  if (!*(a1 + 32))
  {
    v11 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, a2);
    }

    v12 = *(a1 + 8);
    *(a1 + 8) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, a2);
    }
  }

  *(a1 + 32) = -1;
  v13 = *a1;
  *a1 = 0;
  if (v13)
  {
    if (v13[4] == 1)
    {
      (*(*v13 + 8))(v13, a2);
    }

    else
    {
      --v13[4];
    }
  }

  return a1;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::storeFetchResponseBodyChunk(uint64_t a1, atomic_uint **a2, atomic_uint **a3, WTF::StringImpl *a4, uint64_t a5, uint64_t *a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  if (!v8)
  {
    v43 = 0;
LABEL_3:
    v9 = *a6;
    *a6 = 0;
    (*(*v9 + 16))(v9, 2, a3, a4, a5);
    result = (*(*v9 + 8))(v9);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v8, *(a1 + 24), &v43);
  if (!v43)
  {
    goto LABEL_3;
  }

  WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v49, a2);
  v17 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>((a1 + 40), &v49);
  v18 = *(a1 + 40);
  if (v18)
  {
    v18 += 88 * *(v18 - 4);
  }

  if (v18 != v17)
  {
    v19 = a2[4];
    if (v19)
    {
      atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
    }

    v44 = v19;
    v20 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
    }

    v45 = v20;
    WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(&v42, (v17 + 64), &v44);
    v22 = v45;
    v45 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v21);
    }

    v23 = v44;
    v44 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v21);
    }

    v24 = v42;
    if (!v42 || !*(v42 + 1))
    {
      v32 = *a6;
      *a6 = 0;
      (*(*v32 + 16))(v32, 2);
      (*(*v32 + 8))(v32);
LABEL_30:
      result = v42;
      v42 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v11);
      }

      goto LABEL_33;
    }

    ++*(a1 + 16);
    add_explicit = atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    v26 = *a6;
    *a6 = 0;
    v27 = WTF::fastMalloc(add_explicit, 0x20);
    v28 = &unk_1F1109898;
    *v27 = &unk_1F1109898;
    v27[1] = a1;
    v27[2] = v24;
    v27[3] = v26;
    v29 = *(a1 + 32);
    if (v29)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v29, *(a1 + 24), &v48);
      v35 = v48;
      if (v48)
      {
        WTF::String::isolatedCopy();
        v45 = a4;
        *&v46 = a5;
        add = atomic_fetch_add((a5 + 8), 1u);
        *(&v46 + 1) = v27;
        v37 = WTF::fastMalloc(add, 0x28);
        *v37 = &unk_1F11098C0;
        v37[1] = v44;
        v37[2] = v45;
        *(v37 + 3) = v46;
        v44 = 0;
        v46 = 0uLL;
        v47 = v37;
        WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v35, &v49, &v47);
        v38 = v47;
        v47 = 0;
        if (v38)
        {
          (*(*v38 + 8))(v38);
        }

        v39 = *(&v46 + 1);
        *(&v46 + 1) = 0;
        if (v39)
        {
          (*(*v39 + 8))(v39);
        }

        v40 = v46;
        *&v46 = 0;
        if (v40 && atomic_fetch_add(v40 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v40 + 2);
          (*(*v40 + 8))(v40);
        }

        v41 = v44;
        v44 = 0;
        if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v41, v11);
        }

        goto LABEL_26;
      }

      v28 = *v27;
    }

    else
    {
      v48 = 0;
    }

    v28[2](v27, 2);
    (*(*v27 + 8))(v27);
LABEL_26:
    v30 = v48;
    v48 = 0;
    if (v30)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v30 + 8), v11);
    }

    goto LABEL_30;
  }

  v31 = *a6;
  *a6 = 0;
  (*(*v31 + 16))(v31, 2);
  result = (*(*v31 + 8))(v31);
LABEL_33:
  if (!v54)
  {
    v33 = v53;
    v53 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v11);
    }

    result = v52;
    v52 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }
  }

  v54 = -1;
  if (!v51)
  {
    v34 = v50;
    v50 = 0;
    if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v34, v11);
    }

    result = v49;
    v49 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v11);
    }
  }

LABEL_4:
  v12 = v43;
  v43 = 0;
  if (v12)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v12 + 8), v11);
  }

  return result;
}

WTF::StringImpl *WebKit::BackgroundFetchStoreImpl::retrieveResponseBody(uint64_t *a1, atomic_uint **a2, atomic_uint **a3, WTF::StringImpl *a4, uint64_t **a5)
{
  v71 = *MEMORY[0x1E69E9840];
  v7 = a1[4];
  if (v7)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v7, a1[3], &v56);
    if (!v56)
    {
      goto LABEL_3;
    }

    WebCore::ServiceWorkerRegistrationKey::clientOrigin(&v57, a2);
    v21 = WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ClientOrigin,WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WebKit::BackgroundFetchStoreImpl::PerClientOriginFetches>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ClientOrigin>>,(WTF::ShouldValidateKey)1,WebCore::ClientOrigin>(a1 + 5, &v57);
    v22 = a1[5];
    if (v22)
    {
      v22 += 88 * *(v22 - 4);
    }

    if (v22 == v21)
    {
      v35 = *(MEMORY[0x1E69E26C8] + 8);
      if (v35)
      {
        if (v35 == 1)
        {
          v36 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v36 = v62[0];
        }
      }

      else
      {
        v36 = 0;
      }

      v53 = 0;
      WTF::URL::invalidate(&v53);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v37 = v62[0];
      if (v36)
      {
        atomic_fetch_add_explicit(v36, 2u, memory_order_relaxed);
      }

      v38 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v39 = v54;
      v40 = v55;
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v62[0] = v36;
      v62[1] = v38;
      v63 = v39;
      v64 = v40;
      v65 = v37;
      v66 = 0;
      v67 = 1;
      v68 = 0;
      v69 = 1;
      v70 = 1;
      (*(**a5 + 16))(*a5, v62);
      std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v62, v41);
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v15);
      }

      result = v53;
      v53 = 0;
      if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v15);
      }

      if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = v36;
LABEL_87:
        result = WTF::StringImpl::destroy(result, v15);
      }

LABEL_88:
      if (!v61)
      {
        v50 = v60;
        v60 = 0;
        if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v50, v15);
        }

        result = v59[1];
        v59[1] = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v15);
        }
      }

      v61 = -1;
      if (!LOBYTE(v59[0]))
      {
        v51 = v58[0];
        v58[0] = 0;
        if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v51, v15);
        }

        result = v57;
        v57 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
LABEL_20:
            result = WTF::StringImpl::destroy(result, v15);
            goto LABEL_22;
          }
        }
      }

      goto LABEL_22;
    }

    v23 = a2[4];
    if (v23)
    {
      atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
    }

    v62[0] = v23;
    v24 = *a3;
    if (*a3)
    {
      atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
    }

    v62[1] = v24;
    WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<std::pair<WTF::String,WTF::String>,WTF::String,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<std::pair<WTF::String,WTF::String>>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<std::pair<WTF::String,WTF::String>>>,std::pair<WTF::String,WTF::String>>(&v52, (v21 + 64), v62);
    v26 = v62[1];
    v62[1] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    v27 = v62[0];
    v62[0] = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    if (v52 && *(v52 + 1))
    {
      v28 = v56;
      WTF::String::isolatedCopy();
      v29 = *a5;
      *a5 = 0;
      v62[1] = a4;
      *&v63 = v29;
      v30 = WTF::fastMalloc(v29, 0x20);
      *v30 = &unk_1F1109960;
      *(v30 + 1) = *v62;
      v31 = v63;
      v62[0] = 0;
      *&v63 = 0;
      v30[3] = v31;
      v53 = v30;
      WebKit::NetworkStorageManager::dispatchTaskToBackgroundFetchManager(v28, &v57, &v53);
      v32 = v53;
      v53 = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v33 = v63;
      *&v63 = 0;
      if (v33)
      {
        (*(*v33 + 8))(v33);
      }

      v34 = v62[0];
      v62[0] = 0;
      if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v42 = *(MEMORY[0x1E69E26C8] + 8);
      if (v42)
      {
        if (v42 == 1)
        {
          v43 = MEMORY[0x1E696EB88];
          atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v43 = v62[0];
        }
      }

      else
      {
        v43 = 0;
      }

      v53 = 0;
      WTF::URL::invalidate(&v53);
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v44 = v62[0];
      if (v43)
      {
        atomic_fetch_add_explicit(v43, 2u, memory_order_relaxed);
      }

      v45 = v53;
      if (v53)
      {
        atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
      }

      v46 = v54;
      v47 = v55;
      if (v44)
      {
        atomic_fetch_add_explicit(v44, 2u, memory_order_relaxed);
      }

      v62[0] = v43;
      v62[1] = v45;
      v63 = v46;
      v64 = v47;
      v65 = v44;
      v66 = 0;
      v67 = 1;
      v68 = 0;
      v69 = 1;
      v70 = 1;
      (*(**a5 + 16))(*a5, v62);
      std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v62, v48);
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v15);
      }

      v49 = v53;
      v53 = 0;
      if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v49, v15);
      }

      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        v34 = v43;
LABEL_84:
        WTF::StringImpl::destroy(v34, v15);
      }
    }

    result = v52;
    v52 = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      goto LABEL_87;
    }

    goto LABEL_88;
  }

  v56 = 0;
LABEL_3:
  v8 = *(MEMORY[0x1E69E26C8] + 8);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = MEMORY[0x1E696EB88];
      atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    }

    else
    {
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      v9 = v62[0];
    }
  }

  else
  {
    v9 = 0;
  }

  v57 = 0;
  WTF::URL::invalidate(&v57);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v10 = v62[0];
  if (v9)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v11 = v57;
  if (v57)
  {
    atomic_fetch_add_explicit(v57, 2u, memory_order_relaxed);
  }

  v12 = *v58;
  v13 = *v59;
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v62[0] = v9;
  v62[1] = v11;
  v63 = v12;
  v64 = v13;
  v65 = v10;
  v66 = 0;
  v67 = 1;
  v68 = 0;
  v69 = 1;
  v70 = 1;
  (*(**a5 + 16))(*a5, v62);
  std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(v62, v14);
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v15);
  }

  result = v57;
  v57 = 0;
  if (!result || atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) != 2)
  {
    if (!v9)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  result = WTF::StringImpl::destroy(result, v15);
  if (v9)
  {
LABEL_18:
    if (atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_22;
    }

    result = v9;
    goto LABEL_20;
  }

LABEL_22:
  v17 = v56;
  v56 = 0;
  if (v17)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::WorkQueueMessageReceiver<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref((v17 + 8), v15);
  }

  return result;
}

uint64_t std::experimental::fundamentals_v3::expected<WTF::RefPtr<WebCore::SharedBuffer,WTF::RawPtrTraits<WebCore::SharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::SharedBuffer>>,WebCore::ResourceError>::~expected(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 80) != 255)
  {
    if (*(a1 + 80))
    {
      v4 = *(a1 + 64);
      *(a1 + 64) = 0;
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(a1 + 8);
      *(a1 + 8) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      v7 = *a1;
      *a1 = 0;
      if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v7, a2);
      }
    }

    else
    {
      v3 = *a1;
      *a1 = 0;
      if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3, a2);
      }
    }
  }

  *(a1 + 80) = -1;
  return a1;
}

uint64_t *WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  add_explicit = (*(a1 + 16) + 1);
  *(a1 + 16) = add_explicit;
  v5 = *a2;
  if (*a2)
  {
    add_explicit = atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v6 = *a3;
  *a3 = 0;
  v7 = WTF::fastMalloc(add_explicit, 0x20);
  *v7 = &unk_1F1109A00;
  v7[1] = a1;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
  }

  v7[2] = v5;
  v7[3] = v6;
  v10 = v7;
  WebKit::BackgroundFetchStoreImpl::loadAllFetches(a1, &v10);
  result = v10;
  if (v10)
  {
    result = (*(*v10 + 8))(v10);
    if (!v5)
    {
      return result;
    }
  }

  else if (!v5)
  {
    return result;
  }

  if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {

    return WTF::StringImpl::destroy(v5, v8);
  }

  return result;
}

_DWORD *WebKit::BackgroundFetchStoreImpl::loadAllFetches(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 56);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    ++*(v3 + 8);
    v5 = (*(a1 + 16) + 1);
    *(a1 + 16) = v5;
    v6 = *a2;
    *a2 = 0;
    v7 = WTF::fastMalloc(v5, 0x18);
    *v7 = &unk_1F1109A28;
    v7[1] = a1;
    v7[2] = v6;
    v11 = v7;
    WebCore::SWServer::getAllOrigins();
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    return WTF::RefCounted<WebCore::SWServer>::deref((v3 + 8));
  }

  else
  {
    v9 = *a2;
    *a2 = 0;
    (*(*v9 + 16))(v9);
    v10 = *(*v9 + 8);

    return v10(v9);
  }
}

uint64_t *WebKit::BackgroundFetchStoreImpl::getAllBackgroundFetchIdentifiers(uint64_t a1, uint64_t *a2)
{
  v3 = (*(a1 + 16) + 1);
  *(a1 + 16) = v3;
  v4 = *a2;
  *a2 = 0;
  v5 = WTF::fastMalloc(v3, 0x18);
  *v5 = &unk_1F1109A78;
  v5[1] = a1;
  v5[2] = v4;
  v8 = v5;
  WebKit::BackgroundFetchStoreImpl::loadAllFetches(a1, &v8);
  result = v8;
  if (v8)
  {
    v7 = *(*v8 + 8);

    return v7();
  }

  return result;
}

uint64_t *WebKit::BackgroundFetchStoreImpl::getBackgroundFetchState(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  add = atomic_fetch_add(v9, 1u);
  v11 = *a3;
  *a3 = 0;
  v12 = WTF::fastMalloc(add, 0x18);
  *v12 = &unk_1F1109AA0;
  v12[1] = v9;
  v12[2] = v11;
  v14 = v12;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

uint64_t *WebKit::BackgroundFetchStoreImpl::abortBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  add = atomic_fetch_add(v9, 1u);
  v11 = *a3;
  *a3 = 0;
  v12 = WTF::fastMalloc(add, 0x18);
  *v12 = &unk_1F1109AC8;
  v12[1] = v9;
  v12[2] = v11;
  v14 = v12;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

uint64_t *WebKit::BackgroundFetchStoreImpl::pauseBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  add = atomic_fetch_add(v9, 1u);
  v11 = *a3;
  *a3 = 0;
  v12 = WTF::fastMalloc(add, 0x18);
  *v12 = &unk_1F1109AF0;
  v12[1] = v9;
  v12[2] = v11;
  v14 = v12;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

uint64_t *WebKit::BackgroundFetchStoreImpl::resumeBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  add = atomic_fetch_add(v9, 1u);
  v11 = *a3;
  *a3 = 0;
  v12 = WTF::fastMalloc(add, 0x18);
  *v12 = &unk_1F1109B18;
  v12[1] = v9;
  v12[2] = v11;
  v14 = v12;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

uint64_t *WebKit::BackgroundFetchStoreImpl::clickBackgroundFetch(uint64_t a1, atomic_uint **a2, uint64_t *a3)
{
  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      ++*(v7 + 2);
    }
  }

  else
  {
    v7 = 0;
  }

  Engine = WebCore::SWServer::backgroundFetchEngine(v7);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(Engine, Engine);
  v9 = *Engine;
  add = atomic_fetch_add(v9, 1u);
  v11 = *a3;
  *a3 = 0;
  v12 = WTF::fastMalloc(add, 0x18);
  *v12 = &unk_1F1109B40;
  v12[1] = v9;
  v12[2] = v11;
  v14 = v12;
  WebKit::BackgroundFetchStoreImpl::fetchInformationFromFilename(a1, a2, &v14);
  result = v14;
  if (v14)
  {
    result = (*(*v14 + 8))(v14);
  }

  if (v7)
  {

    return WTF::RefCounted<WebCore::SWServer>::deref(v7 + 2);
  }

  return result;
}

_DWORD *WebKit::NetworkCache::SpeculativeLoad::deref(_DWORD *this)
{
  if (this[5] == 1)
  {
    return (*(*this + 24))();
  }

  --this[5];
  return this;
}

uint64_t std::optional<WebCore::ResourceRequest>::~optional(uint64_t a1, WTF::StringImpl *a2)
{
  if (*(a1 + 200) == 1)
  {
    v3 = *(a1 + 192);
    *(a1 + 192) = 0;
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 168);
    *(a1 + 168) = 0;
    if (v4)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v4);
    }

    v5 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }

    v6 = *(a1 + 152);
    *(a1 + 152) = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, a2);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 128, a2);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((a1 + 112), v7);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(a1 + 96, v8);
    v10 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = *(a1 + 40);
    *(a1 + 40) = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *a1;
    *a1 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
    }
  }

  return a1;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      if (*(v4 - 7) != -1)
      {
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 6);
        *(v4 - 6) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 7);
        *(v4 - 7) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 9);
        *(v4 - 9) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      if (*(v4 - 7) != -1)
      {
        std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 6);
        *(v4 - 6) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 7);
        *(v4 - 7) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 9);
        *(v4 - 9) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 72);
    do
    {
      if (*(v4 - 7) != -1)
      {
        std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 6);
        *(v4 - 6) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 - 7);
        *(v4 - 7) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 8);
        *(v4 - 8) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 9);
        *(v4 - 9) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*(v4 + 16) != -1)
      {
        v5 = *(v4 + 72);
        *(v4 + 72) = 0;
        if (v5)
        {
          if (v5[5] == 1)
          {
            (*(*v5 + 24))(v5, a2);
          }

          else
          {
            --v5[5];
          }
        }

        v6 = *(v4 + 24);
        *(v4 + 24) = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }

        v9 = *v4;
        *v4 = 0;
        if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v9, a2);
        }
      }

      v4 += 80;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WebKit::NetworkCache::GlobalFrameID,WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashMap<WebKit::NetworkCache::GlobalFrameID,WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>,WTF::DefaultHash<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::HashTraits<WTF::RefPtr<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad,WTF::RawPtrTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>,WTF::DefaultRefDerefTraits<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::GlobalFrameID>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 24);
    do
    {
      if (*(v4 - 2) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          WTF::RefCounted<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad>::deref(v5, a2);
        }
      }

      v4 += 4;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WTF::StringImpl **std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 264) == 1)
    {
      v3 = *(v2 + 256);
      *(v2 + 256) = 0;
      if (v3)
      {
        CFRelease(v3);
      }

      v4 = *(v2 + 232);
      *(v2 + 232) = 0;
      if (v4)
      {
        WTF::RefCounted<WebCore::FormData>::deref(v4);
      }

      v5 = *(v2 + 224);
      *(v2 + 224) = 0;
      if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, a2);
      }

      v6 = *(v2 + 216);
      *(v2 + 216) = 0;
      if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v6, a2);
      }

      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 192, a2);
      WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector((v2 + 176), v7);
      WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(v2 + 160, v8);
      v10 = *(v2 + 152);
      *(v2 + 152) = 0;
      if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }

      v11 = *(v2 + 104);
      *(v2 + 104) = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = *(v2 + 64);
      *(v2 + 64) = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }
    }

    std::unique_ptr<WebKit::NetworkCache::Entry>::reset[abi:sn200100]((v2 + 56), 0);
    *v2 = &unk_1F10EB388;
    v13 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    WebCore::TimerBase::~TimerBase(v2);

    return bmalloc::api::tzoneFree(v14, v15);
  }

  return result;
}

void WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::saveToDiskIfReady(WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad *this)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(this + 216) == 1 && *(this + 217) == 1 && *(this + 27))
  {
    v2 = *(this + 2);
    if (v2)
    {
      WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::NetworkCache::Storage>(&v34, v2, *(this + 1));
    }

    else
    {
      v34 = 0;
    }

    v3 = *(this + 24);
    if (v3)
    {
      WebKit::NetworkCache::SubresourcesEntry::updateSubresourceLoads(v3, this + 24);
      v4 = v34;
      WebKit::NetworkCache::SubresourcesEntry::encodeAsStorageRecord(v42, *(this + 24), v28);
      v30 = WTF::fastMalloc(v29, 0x10);
      *v30 = &unk_1F1108D80;
      v35[0] = v30;
      WebKit::NetworkCache::Storage::store(v4, v42, v35);
      v32 = v35[0];
      v35[0] = 0;
      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      WebKit::NetworkCache::Storage::Record::~Record(v42, v31);
    }

    else
    {
      v4 = v34;
      if ((_MergedGlobals_80 & 1) == 0)
      {
        WTF::AtomStringImpl::add();
        qword_1ED642718 = v42[0];
        _MergedGlobals_80 = 1;
      }

      v5 = WebKit::NetworkCache::Key::Key(v42, this + 3, &qword_1ED642718, this + 6, this + 5, v4 + 28);
      v6 = *v42;
      v7 = *v43;
      *v42 = 0u;
      *v43 = 0u;
      *v35 = v6;
      *v36 = v7;
      v37 = v44;
      v38 = v45;
      v39 = v46;
      WTF::WallTime::now(v5);
      v40 = v8;
      WebKit::NetworkCache::makeSubresourceInfoVector(v41, this + 24, 0);
      v11 = v43[1];
      v43[1] = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = v43[0];
      v43[0] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      v13 = v42[1];
      v42[1] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }

      v14 = v42[0];
      v42[0] = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v9);
      }

      WebKit::NetworkCache::SubresourcesEntry::encodeAsStorageRecord(v42, v35, v10);
      v16 = WTF::fastMalloc(v15, 0x10);
      *v16 = &unk_1F1108DA8;
      v33 = v16;
      WebKit::NetworkCache::Storage::store(v4, v42, &v33);
      v18 = v33;
      v33 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      if (object)
      {
        os_release(object);
      }

      if (v47)
      {
        os_release(v47);
      }

      v19 = v43[1];
      v43[1] = 0;
      if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v17);
      }

      v20 = v43[0];
      v43[0] = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v17);
      }

      v21 = v42[1];
      v42[1] = 0;
      if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v17);
      }

      v22 = v42[0];
      v42[0] = 0;
      if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, v17);
      }

      WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v41, v17);
      v24 = v36[1];
      v36[1] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v23);
      }

      v25 = v36[0];
      v36[0] = 0;
      if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v25, v23);
      }

      v26 = v35[1];
      v35[1] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v23);
      }

      v27 = v35[0];
      v35[0] = 0;
      if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, v23);
      }
    }

    if (v4)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkCache::Storage,(WTF::DestructionThread)2>::deref(v4, v23);
    }
  }
}

_BYTE *PAL::HysteresisActivity::impulse(_BYTE *this)
{
  if ((this[64] & 1) == 0)
  {
    v1 = this;
    if ((WTF::RunLoop::TimerBase::isActive((this + 16)) & 1) == 0)
    {
      v1[64] = 1;
      (*(**v1 + 16))(*v1, 0);
      v1[64] = 0;
    }

    return WTF::RunLoop::TimerBase::start();
  }

  return this;
}

WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad **WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::PendingFrameLoad(WebKit::NetworkCache::Storage &,WebKit::NetworkCache::Key const&,WTF::Function<void ()(void)> &&)::{lambda(PAL::HysteresisState)#1},void,PAL>::call(WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad **result, int a2)
{
  if (a2)
  {
    return WebKit::NetworkCache::SpeculativeLoadManager::PendingFrameLoad::markLoadAsCompleted(result[1]);
  }

  return result;
}

void WebKit::NetworkCache::SubresourceLoad::~SubresourceLoad(WebKit::NetworkCache::SubresourceLoad *this, WTF::StringImpl *a2)
{
  v3 = *(this + 28);
  *(this + 28) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 27);
  *(this + 27) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 26);
  *(this + 26) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 25);
  *(this + 25) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *(this + 24);
  *(this + 24) = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 21);
  *(this + 21) = 0;
  if (v8)
  {
    WTF::RefCounted<WebCore::FormData>::deref(v8);
  }

  v9 = *(this + 20);
  *(this + 20) = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, a2);
  }

  v10 = *(this + 19);
  *(this + 19) = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 128, a2);
  WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(this + 28, v11);
  WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(this + 96, v12);
  v14 = *(this + 11);
  *(this + 11) = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v13);
  }

  v15 = *(this + 5);
  *(this + 5) = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v13);
  }

  v16 = *this;
  *this = 0;
  if (v16)
  {
    if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v13);
    }
  }
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108E20;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

WTF::StringImpl **WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::addPreloadedEntry(std::unique_ptr<WebKit::NetworkCache::Entry>,WebKit::NetworkCache::GlobalFrameID const&,std::optional<WebCore::ResourceRequest> &&)::$_0,void>::call(WTF::StringImpl **result, uint64_t a2, const WTF::StringImpl *a3)
{
  v3 = result[1];
  if (v3)
  {
    v4 = *(v3 + 1);
    if (v4)
    {
      v5 = result;
      ++*(v4 + 8);
      v6 = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>((v4 + 64), (result + 2), a3);
      v7 = WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(&v17, (v4 + 64), v6);
      v8 = *(*(v4 + 16) + 8);
      if (*(v17 + 264) == 1)
      {
        if (!v8)
        {
          __break(0xC471u);
          JUMPOUT(0x19DDA71D4);
        }

        v10 = *(v8 + 8);
        v9 = v8 + 8;
        *v9 = v10 + 1;
        v11 = *(v9 + 16);
        WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithRevalidationKey(&v16, v7);
      }

      else
      {
        if (!v8)
        {
          __break(0xC471u);
          goto LABEL_17;
        }

        v15 = *(v8 + 8);
        v9 = v8 + 8;
        *v9 = v15 + 1;
        v11 = *(v9 + 16);
        WebCore::DiagnosticLoggingKeys::wastedSpeculativeWarmupWithoutRevalidationKey(&v16, v7);
      }

      WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v11, v5[11], &v16);
      v13 = v16;
      v16 = 0;
      if (v13)
      {
        if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v12);
        }
      }

      WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v9, v12);
      result = std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::PreloadedEntry>::reset[abi:sn200100](&v17, 0);
      v14 = *(v4 + 8);
      if (v14)
      {
        *(v4 + 8) = v14 - 1;
        return result;
      }

      __break(0xC471u);
LABEL_17:
      JUMPOUT(0x19DDA71B4);
    }
  }

  return result;
}

WebCore::TimerBase *WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::ExpiringEntry(WebCore::TimerBase *a1, uint64_t *a2)
{
  v4 = WebCore::TimerBase::TimerBase(a1);
  *v4 = &unk_1F10EB388;
  v5 = *a2;
  *a2 = 0;
  v4[6] = v5;
  WebCore::TimerBase::start();
  return a1;
}

uint64_t std::unique_ptr<WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::reset[abi:sn200100](uint64_t *a1, void *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    v5 = WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(result, a2);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

uint64_t WTF::Vector<WTF::Function<void ()(std::unique_ptr<WebKit::NetworkCache::Entry>)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
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

uint64_t *std::make_unique[abi:sn200100]<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry,WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,0>(WebCore::TimerBase **a1, void *a2)
{
  if (WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::s_heapRef, a2);
  }

  else
  {
    NonCompact = WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::operatorNewSlow(0);
  }

  v6 = NonCompact;
  v7 = WTF::fastMalloc(v5, 0x70);
  v8 = *a2;
  *a2 = 0;
  *v7 = &unk_1F1108E48;
  v7[1] = v8;
  WebKit::NetworkCache::Key::Key((v7 + 2), (a2 + 1));
  v9 = *(a2 + 5);
  v7[13] = a2[12];
  *(v7 + 11) = v9;
  v12 = v7;
  WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry::ExpiringEntry(v6, &v12);
  *a1 = v6;
  result = v12;
  if (v12)
  {
    v11 = *(*v12 + 8);

    return v11();
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1108E48;
  v3 = a1[5];
  a1[5] = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = a1[1];
  a1[1] = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  v2 = WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::~CallableWrapper(a1, a2);

  return WTF::fastFree(v2, v3);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::SpeculativeLoadManager::startSpeculativeRevalidation(WebKit::NetworkCache::GlobalFrameID const&,WebKit::NetworkCache::SubresourcesEntry &,BOOL,std::optional<WebKit::NavigatingToAppBoundDomain>,BOOL,WTF::OptionSet<WebCore::AdvancedPrivacyProtections>)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (!v1)
  {
    return result;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return result;
  }

  ++*(v2 + 8);
  v3 = *(*(v2 + 16) + 8);
  if (!v3)
  {
    __break(0xC471u);
    goto LABEL_33;
  }

  v4 = result;
  v6 = *(v3 + 8);
  v5 = v3 + 8;
  *v5 = v6 + 1;
  v7 = *(v5 + 16);
  WebCore::DiagnosticLoggingKeys::entryRightlyNotWarmedUpKey(&v27, result);
  WebKit::NetworkCache::logSpeculativeLoadingDiagnosticMessage(v7, *(v4 + 88), &v27);
  v9 = v27;
  v27 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = WTF::RefCounted<WebKit::NetworkCache::Cache>::deref(v5, v8);
  v12 = (v2 + 72);
  v13 = *(v2 + 72);
  if (v13)
  {
    v14 = *(v4 + 32);
    if (v14 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA774CLL);
    }

    if (v14)
    {
      v15 = 0;
      v16 = *(v13 - 8);
      for (i = *(v4 + 48); ; i = v15 + v18)
      {
        v18 = i & v16;
        v19 = v13 + 80 * (i & v16);
        v20 = *(v19 + 16);
        if (v20 != -1)
        {
          if (!v20)
          {
            v21 = *v12;
            if (!*v12)
            {
              goto LABEL_26;
            }

            v19 = v21 + 80 * *(v21 - 4);
            goto LABEL_18;
          }

          result = WebKit::NetworkCache::Key::operator==(v13 + 80 * v18, v4 + 16, v11);
          if (result)
          {
            break;
          }
        }

        ++v15;
      }

      v21 = *v12;
      if (!*v12)
      {
        goto LABEL_19;
      }

LABEL_18:
      v21 += 80 * *(v21 - 4);
      if (v21 == v19)
      {
        goto LABEL_26;
      }

LABEL_19:
      if (v21 != v19)
      {
        WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(v19, v10);
        result = std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v19 + 72), 0);
        v22 = *v12;
        v23 = vadd_s32(*(*v12 - 16), 0xFFFFFFFF00000001);
        *(v22 - 16) = v23;
        v24 = *(v22 - 4);
        if (6 * v23.i32[1] < v24 && v24 >= 9)
        {
          result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash((v2 + 72), v24 >> 1, 0);
        }
      }

      goto LABEL_26;
    }

    __break(0xC471u);
LABEL_33:
    JUMPOUT(0x19DDA770CLL);
  }

LABEL_26:
  v26 = *(v2 + 8);
  if (!v26)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA772CLL);
  }

  *(v2 + 8) = v26 - 1;
  return result;
}

WTF::StringImpl *WTF::hashTraitsDeleteBucket<WTF::HashTraits<WebKit::NetworkCache::Key>,WebKit::NetworkCache::Key>(WTF::StringImpl **a1, WTF::StringImpl *a2)
{
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
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  result = *a1;
  *a1 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, a2);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = -1;
  a1[3] = 0;
  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
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

  v8 = WTF::fastMalloc((80 * a2), (80 * a2 + 16));
  if (v3)
  {
    v10 = v3;
    v11 = v8 + 11;
    do
    {
      *(v11 - 7) = 0uLL;
      *(v11 - 9) = 0uLL;
      *v11 = 0;
      v11 += 10;
      --v10;
    }

    while (v10);
  }

  *a1 = (v8 + 2);
  *(v8 + 2) = v3 - 1;
  *(v8 + 3) = v3;
  *v8 = 0;
  *(v8 + 1) = v7;
  if (v6)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = v5 + 80 * v12;
      v15 = *(v14 + 16);
      if (v15 != -1)
      {
        if (v15)
        {
          v20 = *a1;
          if (*a1)
          {
            v21 = *(v20 - 8);
          }

          else
          {
            v21 = 0;
          }

          v22 = 0;
          v23 = *(v14 + 32);
          do
          {
            v24 = v23 & v21;
            v25 = v20 + 80 * v24;
            v23 = ++v22 + v24;
          }

          while (*(v25 + 16));
          std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v25 + 72), 0);
          v27 = *(v25 + 24);
          *(v25 + 24) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v26);
          }

          v28 = *(v25 + 16);
          *(v25 + 16) = 0;
          if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v28, v26);
          }

          v29 = *(v25 + 8);
          *(v25 + 8) = 0;
          if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v29, v26);
          }

          v30 = *v25;
          *v25 = 0;
          if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v30, v26);
          }

          v31 = *v14;
          *v14 = 0;
          *v25 = v31;
          v32 = *(v14 + 8);
          *(v14 + 8) = 0;
          *(v25 + 8) = v32;
          v33 = *(v14 + 16);
          *(v14 + 16) = 0;
          *(v25 + 16) = v33;
          v34 = *(v14 + 24);
          *(v14 + 24) = 0;
          *(v25 + 24) = v34;
          v35 = *(v14 + 32);
          v36 = *(v14 + 48);
          *(v25 + 64) = *(v14 + 64);
          *(v25 + 32) = v35;
          *(v25 + 48) = v36;
          v37 = *(v14 + 72);
          *(v14 + 72) = 0;
          *(v25 + 72) = v37;
          std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v14 + 72), 0);
          v38 = *(v14 + 24);
          *(v14 + 24) = 0;
          if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v38, v9);
          }

          v39 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v39, v9);
          }

          v40 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v40, v9);
          }

          v41 = *v14;
          *v14 = 0;
          if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v41, v9);
          }

          if (v14 == a3)
          {
            v13 = v25;
          }
        }

        else
        {
          std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100]((v14 + 72), 0);
          v16 = *(v14 + 24);
          *(v14 + 24) = 0;
          if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v16, v9);
          }

          v17 = *(v14 + 16);
          *(v14 + 16) = 0;
          if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v17, v9);
          }

          v18 = *(v14 + 8);
          *(v14 + 8) = 0;
          if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v9);
          }

          v19 = *v14;
          *v14 = 0;
          if (v19)
          {
            if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v19, v9);
            }
          }
        }
      }

      ++v12;
    }

    while (v12 != v6);
  }

  else
  {
    v13 = 0;
    result = 0;
    if (!v5)
    {
      return result;
    }
  }

  WTF::fastFree((v5 - 16), v9);
  return v13;
}

WebCore::TimerBase **std::unique_ptr<WebKit::NetworkCache::SpeculativeLoadManager::ExpiringEntry>::reset[abi:sn200100](WebCore::TimerBase **result, WebCore::TimerBase *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    *v2 = &unk_1F10EB388;
    v3 = *(v2 + 6);
    *(v2 + 6) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    WebCore::TimerBase::~TimerBase(v2);

    return bmalloc::api::tzoneFree(v4, v5);
  }

  return result;
}

uint64_t WTF::makeString<WTF::ASCIILiteral,unsigned int>@<X0>(int8x16_t *a1@<X0>, int8x16_t *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v7[0] = a1;
  v7[1] = a2;
  v6 = a3;
  result = WTF::tryMakeString<WTF::ASCIILiteral,unsigned int>(v7, &v6, a4);
  if (!*a4)
  {
    __break(0xC471u);
  }

  return result;
}

uint64_t WTF::tryMakeString<WTF::ASCIILiteral,unsigned int>@<X0>(int8x16_t **a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = v3 != 0;
  v5 = (v3 - 1);
  if (!v4)
  {
    v5 = 0;
  }

  v8[0] = *a1;
  v8[1] = v5;
  if (v5 >> 31)
  {
    result = 161;
    __break(0xC471u);
  }

  else
  {
    v7 = *a2;
    return WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v8, &v7, a3);
  }

  return result;
}

int8x16_t **WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>@<X0>(int8x16_t **result@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v3 = 0;
  v4 = result[1];
  v5 = *a2;
  do
  {
    ++v3;
    v6 = v5 > 9;
    v5 /= 0xAu;
  }

  while (v6);
  if (((v3 | v4) & 0x80000000) == 0)
  {
    v7 = __OFADD__(v4, v3);
    v8 = (v4 + v3);
    if (!v7)
    {
      return WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v8, 1uLL, *result, v4, *a2, a3);
    }
  }

  *a3 = 0;
  return result;
}

unint64_t WTF::tryMakeStringImplFromAdaptersInternal<WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, int8x16_t *a3@<X2>, size_t a4@<X3>, unsigned int a5@<W4>, void *a6@<X8>)
{
  v9 = result;
  v11 = result;
  if (a2)
  {
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        result = WTF::tryFastCompactMalloc(&v15, (result + 20));
        v12 = v15;
        if (v15)
        {
          v13 = v15 + 5;
          *v15 = 2;
          v12[1] = v9;
          *(v12 + 1) = v12 + 5;
          v12[4] = 4;
          result = WTF::stringTypeAdapterAccumulator<unsigned char,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v13, v11, a3, a4, a5);
        }

        goto LABEL_6;
      }

LABEL_9:
      v12 = 0;
      goto LABEL_6;
    }

LABEL_10:
    v12 = MEMORY[0x1E696EB88];
    atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
    goto LABEL_6;
  }

  if (!result)
  {
    goto LABEL_10;
  }

  if (result > 0x7FFFFFEF)
  {
    goto LABEL_9;
  }

  result = WTF::tryFastCompactMalloc(&v15, (2 * result + 20));
  v12 = v15;
  if (v15)
  {
    v14 = v15 + 5;
    *v15 = 2;
    v12[1] = v9;
    *(v12 + 1) = v12 + 5;
    v12[4] = 0;
    result = WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(v14, v11, a3, a4, a5);
  }

LABEL_6:
  *a6 = v12;
  return result;
}

unsigned int *WTF::stringTypeAdapterAccumulator<char16_t,WTF::StringTypeAdapter<WTF::ASCIILiteral,void>,WTF::StringTypeAdapter<unsigned int,void>>(unsigned int *result, unint64_t a2, int8x16_t *a3, unint64_t a4, unsigned int a5)
{
  if (a4 < 0x40)
  {
    v5 = result;
  }

  else
  {
    v5 = (result + 2 * (a4 & 0x7FFFFFFFFFFFFFC0));
    v6 = 0uLL;
    v7 = result;
    do
    {
      v16.val[0] = *a3;
      v8 = a3[1];
      v17.val[0] = a3[2];
      v9 = a3[3];
      a3 += 4;
      v10 = v9;
      v17.val[1] = 0uLL;
      v18.val[0] = v8;
      v16.val[1] = 0uLL;
      v11 = v7;
      vst2q_s8(v11, v16);
      v11 += 32;
      v18.val[1] = 0uLL;
      vst2q_s8(v11, v18);
      v12 = (v7 + 16);
      vst2q_s8(v12, v17);
      v13 = (v7 + 24);
      vst2q_s8(v13, *(&v6 - 1));
      v7 += 32;
    }

    while (v7 != v5);
  }

  while (v5 != (result + 2 * a4))
  {
    v14 = a3->u8[0];
    a3 = (a3 + 1);
    *v5 = v14;
    v5 = (v5 + 2);
  }

  if (a2 < a4)
  {
    __break(1u);
  }

  else
  {
    v15 = a5;
    return WTF::StringTypeAdapter<unsigned int,void>::writeTo<char16_t>(&v15, result + a4, a2 - a4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::NetworkCache::decodeRecordMetaData(WebKit::NetworkCache::RecordMetaData &,WebKit::NetworkCache::Data const&)::$_0,BOOL,std::span<unsigned char const,18446744073709551615ul>>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = *MEMORY[0x1E69E9840];
  WTF::Persistence::Decoder::Decoder();
  WTF::Persistence::Decoder::operator>>();
  WTF::Persistence::Decoder::~Decoder(v4);
  return 0;
}

WTF::StringImpl *WebKit::NetworkCache::Storage::Record::isolatedCopy(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WebKit::NetworkCache::Key::isolatedCopy(a2, &v11);
  v4 = *(a2 + 72);
  v10[0] = *(a2 + 144);
  *(v10 + 13) = *(a2 + 157);
  WebKit::NetworkCache::Storage::Record::Record(a1, &v11, a2 + 80, a2 + 112, v10, v4);
  v6 = v14;
  v14 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v5);
  }

  v7 = v13;
  v13 = 0;
  if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v7, v5);
  }

  v8 = v12;
  v12 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v5);
  }

  result = v11;
  v11 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v5);
    }
  }

  return result;
}

__n128 WebKit::NetworkCache::Key::isolatedCopy@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  WTF::String::isolatedCopy();
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  result = *(a1 + 52);
  *(a2 + 52) = result;
  *(a2 + 68) = *(a1 + 68);
  *a2 = v7;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

WTF::StringImpl **std::unique_ptr<WebKit::NetworkCache::Storage::ReadOperation>::reset[abi:sn200100](WTF::StringImpl **result, WTF::StringImpl *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WebKit::NetworkCache::Storage::Record::~Record((v2 + 23), a2);
    v4 = v2[11];
    v2[11] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[4];
    v2[4] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v2[3];
    v2[3] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    v7 = v2[2];
    v2[2] = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v8 = v2[1];
    v2[1] = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

WebKit::NetworkCache::Storage::WriteOperation *std::unique_ptr<WebKit::NetworkCache::Storage::WriteOperation>::reset[abi:sn200100](WebKit::NetworkCache::Storage::WriteOperation **a1, WebKit::NetworkCache::Storage::WriteOperation *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

void WebKit::NetworkCache::Storage::WriteOperation::~WriteOperation(WebKit::NetworkCache::Storage::WriteOperation *this, WTF::StringImpl *a2)
{
  v3 = *(this + 22);
  *(this + 22) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  WebKit::NetworkCache::Storage::Record::~Record((this + 8), a2);
}

WebKit::NetworkCache::Storage::Record *WebKit::NetworkCache::Storage::Record::Record(WebKit::NetworkCache::Storage::Record *this, const WebKit::NetworkCache::Storage::Record *a2)
{
  *(WebKit::NetworkCache::Key::Key(this, a2) + 9) = *(a2 + 9);
  v4 = *(a2 + 10);
  *(this + 10) = v4;
  if (v4)
  {
    os_retain(v4);
  }

  v5 = *(a2 + 88);
  *(this + 104) = *(a2 + 104);
  *(this + 88) = v5;
  v6 = *(a2 + 14);
  *(this + 14) = v6;
  if (v6)
  {
    os_retain(v6);
  }

  v7 = *(a2 + 120);
  *(this + 136) = *(a2 + 136);
  *(this + 120) = v7;
  v8 = *(a2 + 9);
  *(this + 157) = *(a2 + 157);
  *(this + 9) = v8;
  return this;
}

uint64_t WebKit::NetworkCache::Storage::WriteOperation::operator new(WebKit::NetworkCache::Storage::WriteOperation *this, void *a2)
{
  if (this == 184 && WebKit::NetworkCache::Storage::WriteOperation::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkCache::Storage::WriteOperation::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkCache::Storage::WriteOperation::operatorNewSlow(this);
  }
}

uint64_t WebKit::NetworkCache::Storage::WriteOperation::WriteOperation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  WebKit::NetworkCache::Key::Key((a1 + 8), a2);
  *(a1 + 80) = *(a2 + 72);
  v6 = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    os_retain(v6);
  }

  v7 = *(a2 + 88);
  *(a1 + 112) = *(a2 + 104);
  *(a1 + 96) = v7;
  v8 = *(a2 + 112);
  *(a1 + 120) = v8;
  if (v8)
  {
    os_retain(v8);
  }

  v9 = *(a2 + 120);
  *(a1 + 144) = *(a2 + 136);
  *(a1 + 128) = v9;
  v10 = *(a2 + 144);
  *(a1 + 165) = *(a2 + 157);
  *(a1 + 152) = v10;
  v11 = *a3;
  *a3 = 0;
  *(a1 + 176) = v11;
  return a1;
}

WTF::StringImpl ***std::unique_ptr<WebKit::NetworkCache::SubresourcesEntry>::reset[abi:sn200100](WTF::StringImpl ***result, WTF::StringImpl **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((v2 + 10), a2);
    v4 = v2[3];
    v2[3] = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v3);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v2[1];
    v2[1] = 0;
    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v6, v3);
    }

    v7 = *v2;
    *v2 = 0;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    return bmalloc::api::tzoneFree(v2, v3);
  }

  return result;
}

uint64_t *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1)
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

  return WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(a1, v3);
}

uint64_t *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
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

  result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::allocateTable(a2, a2);
  *a1 = result;
  *(result - 2) = v2 - 1;
  *(result - 1) = v2;
  *(result - 4) = 0;
  *(result - 3) = v6;
  if (v5)
  {
    v9 = v5;
    v10 = v4;
    do
    {
      v11 = v10[1].n128_u64[0];
      if (v11)
      {
        if (v11 != -1)
        {
          WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::reinsert(*a1, v10);
          WebKit::NetworkCache::Key::~Key(v10, v12);
        }
      }

      else
      {
        WebKit::NetworkCache::Key::~Key(v10, v8);
      }

      v10 += 5;
      --v9;
    }

    while (v9);
  }

  else if (!v4)
  {
    return result;
  }

  return WTF::fastFree((v4 - 16), v8);
}

uint64_t *WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::allocateTable(unsigned int a1, unint64_t a2)
{
  v3 = WTF::fastMalloc((80 * a1), (80 * a1 + 16));
  if (a1)
  {
    v4 = a1;
    v5 = v3 + 11;
    do
    {
      *(v5 - 14) = 0uLL;
      *(v5 - 18) = 0uLL;
      *v5 = 0;
      v5 += 20;
      --v4;
    }

    while (v4);
  }

  return v3 + 2;
}

__n128 WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::reinsert(uint64_t a1, __n128 *a2)
{
  if (a1)
  {
    v4 = *(a1 - 8);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v7 = a2 + 2;
  v6 = a2[2].n128_u32[0];
  do
  {
    v8 = v6 & v4;
    v9 = (a1 + 80 * v8);
    v6 = ++v5 + v8;
  }

  while (*(v9 + 2));
  WebKit::NetworkCache::Key::~Key(v9, a2);
  v10 = a2->n128_u64[0];
  a2->n128_u64[0] = 0;
  v11->n128_u64[0] = v10;
  v12 = a2->n128_u64[1];
  a2->n128_u64[1] = 0;
  v11->n128_u64[1] = v12;
  v13 = a2[1].n128_u64[0];
  a2[1].n128_u64[0] = 0;
  v11[1].n128_u64[0] = v13;
  v14 = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = 0;
  v11[1].n128_u64[1] = v14;
  result = *v7;
  v16 = a2[3];
  v11[4].n128_u64[0] = a2[4].n128_u64[0];
  v11[2] = result;
  v11[3] = v16;
  v11[4].n128_u32[2] = a2[4].n128_u32[2];
  return result;
}

uint64_t *WTF::HashTable<WebKit::NetworkCache::Key,WebKit::NetworkCache::Key,WTF::IdentityExtractor,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (!*a1)
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_3;
  }

  v4 = *(v3 - 4);
  v5 = *(v3 - 12);
  if (!v4)
  {
LABEL_3:
    v6 = 8;
    goto LABEL_4;
  }

  v6 = v4 << (6 * v5 >= (2 * v4));
LABEL_4:
  result = WTF::fastMalloc((72 * v6), (72 * v6 + 16));
  if (v6)
  {
    v9 = v6;
    v10 = result + 2;
    do
    {
      *v10 = 0uLL;
      *(v10 + 1) = 0uLL;
      v10 += 9;
      --v9;
    }

    while (v9);
  }

  *a1 = (result + 2);
  *(result + 2) = v6 - 1;
  *(result + 3) = v6;
  *result = 0;
  *(result + 1) = v5;
  if (v4)
  {
    v11 = 0;
    while (1)
    {
      v12 = v3 + 72 * v11;
      v13 = *(v12 + 16);
      if (v13)
      {
        if (v13 == -1)
        {
          goto LABEL_23;
        }

        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = 0;
        v17 = *(v12 + 32);
        do
        {
          v18 = v17 & v15;
          v19 = v14 + 72 * v18;
          v17 = ++v16 + v18;
        }

        while (*(v19 + 16));
        v20 = *(v19 + 24);
        *(v19 + 24) = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v8);
        }

        v21 = *(v19 + 16);
        *(v19 + 16) = 0;
        if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v21, v8);
        }

        v22 = *(v19 + 8);
        *(v19 + 8) = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v8);
        }

        v23 = *v19;
        *v19 = 0;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v8);
        }

        v24 = *v12;
        *v12 = 0;
        *v19 = v24;
        v25 = *(v12 + 8);
        *(v12 + 8) = 0;
        *(v19 + 8) = v25;
        v26 = *(v12 + 16);
        *(v12 + 16) = 0;
        *(v19 + 16) = v26;
        v27 = *(v12 + 24);
        *(v12 + 24) = 0;
        *(v19 + 24) = v27;
        v28 = *(v12 + 32);
        v29 = *(v12 + 48);
        *(v19 + 64) = *(v12 + 64);
        *(v19 + 32) = v28;
        *(v19 + 48) = v29;
        v30 = *(v12 + 24);
        *(v12 + 24) = 0;
        if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v30, v8);
        }

        v31 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v8);
        }

        v32 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v32 && atomic_fetch_add_explicit(v32, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v32, v8);
        }

        v33 = *v12;
        *v12 = 0;
        if (!v33 || atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = *(v12 + 24);
        *(v12 + 24) = 0;
        if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v34, v8);
        }

        v35 = *(v12 + 16);
        *(v12 + 16) = 0;
        if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v35, v8);
        }

        v36 = *(v12 + 8);
        *(v12 + 8) = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v8);
        }

        v33 = *v12;
        *v12 = 0;
        if (!v33 || atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) != 2)
        {
          goto LABEL_23;
        }
      }

      WTF::StringImpl::destroy(v33, v8);
LABEL_23:
      if (++v11 == v4)
      {
        goto LABEL_56;
      }
    }
  }

  if (v3)
  {
LABEL_56:

    return WTF::fastFree((v3 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  result = WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(a1, a2);
  if (!result)
  {
    if (*a1)
    {
      return *a1 + 80 * *(*a1 - 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::lookup<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t *a1, uint64_t a2)
{
  WTF::checkHashTableKey<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(*(a2 + 16));
  v5 = *a1;
  if (*a1)
  {
    v6 = 0;
    v7 = *(v5 - 8);
    for (i = *(a2 + 32); ; i = v6 + v9)
    {
      v9 = i & v7;
      v10 = v5 + 80 * (i & v7);
      v11 = *(v10 + 16);
      if (!v11)
      {
        break;
      }

      if (v11 != -1 && (WebKit::NetworkCache::Key::operator==(v5 + 80 * v9, a2, v4) & 1) != 0)
      {
        return v10;
      }

      ++v6;
    }
  }

  return 0;
}

uint64_t WTF::checkHashTableKey<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::IdentityHashTranslator<WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebKit::NetworkCache::Key>>,(WTF::ShouldValidateKey)1,WebKit::NetworkCache::Key>(uint64_t result)
{
  if (result == -1 || !result)
  {
    __break(0xC471u);
    JUMPOUT(0x19DDA8D98);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::NetworkCache::SubresourceInfo>(uint64_t a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  v4 = *a1 + 176 * *(a1 + 12);
  v5 = *v3;
  *v3 = 0;
  *v4 = v5;
  v6 = *(v3 + 8);
  *(v3 + 8) = 0;
  *(v4 + 8) = v6;
  v7 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v4 + 16) = v7;
  v8 = *(v3 + 24);
  *(v3 + 24) = 0;
  *(v4 + 24) = v8;
  v9 = *(v3 + 64);
  v10 = *(v3 + 48);
  *(v4 + 32) = *(v3 + 32);
  *(v4 + 48) = v10;
  *(v4 + 64) = v9;
  v11 = *(v3 + 72);
  *(v4 + 87) = *(v3 + 87);
  *(v4 + 72) = v11;
  WTF::URL::URL(v4 + 96, (v3 + 96));
  *(v4 + 144) = 0;
  *(v4 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4 + 136, (v3 + 136));
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  v4 += 152;
  result = WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v4, (v3 + 152));
  *(v4 + 16) = *(v3 + 168);
  ++*(a1 + 12);
  return result;
}

uint64_t WebKit::NetworkCache::SubresourceInfo::SubresourceInfo(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  *a1 = v4;
  v5 = a2[1];
  a2[1] = 0;
  *(a1 + 8) = v5;
  v6 = a2[2];
  a2[2] = 0;
  *(a1 + 16) = v6;
  v7 = a2[3];
  a2[3] = 0;
  *(a1 + 24) = v7;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  *(a1 + 64) = a2[8];
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  v10 = *(a2 + 9);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 72) = v10;
  WTF::URL::URL(a1 + 96, a2 + 12);
  *(a1 + 144) = 0;
  *(a1 + 136) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 136, a2 + 17);
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 152, a2 + 19);
  *(a1 + 168) = *(a2 + 168);
  return a1;
}

unint64_t WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 <= a3 && v5 + 176 * *(a1 + 3) > a3)
  {
    v10 = a3 - v5;
    v11 = *(a1 + 2);
    if (v11 + (v11 >> 1) <= v11 + 1)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = v11 + (v11 >> 1);
    }

    if (v12 <= a2)
    {
      v12 = a2;
    }

    if (v12 <= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v13);
    return *a1 + v10;
  }

  else
  {
    v6 = *(a1 + 2);
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= a2)
    {
      v7 = a2;
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  }

  return v3;
}

void WTF::Vector<WebKit::NetworkCache::SubresourceInfo,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) < a2)
  {
    if (a2 >= 0x1745D18)
    {
      __break(0xC471u);
      JUMPOUT(0x19DDA90D4);
    }

    v3 = *result;
    v4 = *(result + 12);
    v5 = (*result + 176 * v4);
    v6 = 176 * a2;
    v7 = WTF::fastMalloc(v4, (176 * a2));
    *(result + 8) = v6 / 0xB0;
    *result = v7;
    WTF::VectorMover<false,WebKit::NetworkCache::SubresourceInfo>::move(v3, v5, v7);
    if (v3)
    {
      if (*result == v3)
      {
        *result = 0;
        *(result + 8) = 0;
      }

      WTF::fastFree(v3, v8);
    }
  }
}

void WTF::VectorMover<false,WebKit::NetworkCache::SubresourceInfo>::move(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a3 + 96);
    do
    {
      v6 = *v4;
      *v4 = 0;
      *(v5 - 12) = v6;
      v7 = v4[1];
      v4[1] = 0;
      *(v5 - 11) = v7;
      v8 = v4[2];
      v4[2] = 0;
      *(v5 - 10) = v8;
      v9 = v4[3];
      v4[3] = 0;
      *(v5 - 9) = v9;
      v10 = *(v4 + 2);
      v11 = *(v4 + 3);
      *(v5 - 4) = v4[8];
      *(v5 - 4) = v10;
      *(v5 - 3) = v11;
      v12 = *(v4 + 9);
      *(v5 - 9) = *(v4 + 87);
      *(v5 - 3) = v12;
      WTF::URL::URL(v5, v4 + 12);
      v5[6] = 0;
      *(v13 + 40) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v13 + 40, v4 + 17);
      v5[7] = 0;
      v5[8] = 0;
      v14 = (v5 + 7);
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(v14, v4 + 19);
      *(v14 + 16) = *(v4 + 168);
      WebKit::NetworkCache::SubresourceInfo::~SubresourceInfo(v4, v15);
      v5 = (v14 + 120);
      v4 += 22;
    }

    while (v4 != a2);
  }
}

uint64_t WTF::HashTable<WebKit::NetworkCache::Key,WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::NetworkCache::Key,unsigned int>>,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashMap<WebKit::NetworkCache::Key,unsigned int,WTF::DefaultHash<WebKit::NetworkCache::Key>,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebKit::NetworkCache::Key>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 16);
    do
    {
      if (*v4 != -1)
      {
        v5 = v4[1];
        v4[1] = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *v4;
        *v4 = 0;
        if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v6, a2);
        }

        v7 = *(v4 - 1);
        *(v4 - 1) = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }

        v8 = *(v4 - 2);
        *(v4 - 2) = 0;
        if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v8, a2);
        }
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,std::unique_ptr<WebKit::PrefetchCache::Entry>,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<std::unique_ptr<WebKit::PrefetchCache::Entry>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 40);
    do
    {
      if (*(v4 - 5) != -1)
      {
        std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](v4, 0);
        v5 = *(v4 - 5);
        *(v4 - 5) = 0;
        if (v5)
        {
          if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v5, a2);
          }
        }
      }

      v4 += 6;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

WebKit::PrefetchCache::Entry *std::unique_ptr<WebKit::PrefetchCache::Entry>::reset[abi:sn200100](WebKit::PrefetchCache::Entry **a1, WebKit::PrefetchCache::Entry *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    WebKit::PrefetchCache::Entry::~Entry(result);

    return WTF::fastFree(v5, v6);
  }

  return result;
}

void WebKit::PrefetchCache::Entry::~Entry(WebKit::PrefetchCache::Entry *this)
{
  WebCore::ResourceRequest::~ResourceRequest((this + 280));
  v3 = *(this + 34);
  *(this + 34) = 0;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3 + 2);
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 31);
  *(this + 31) = 0;
  if (v4)
  {
    CFRelease(v4);
  }

  WebCore::ResourceResponseBase::~ResourceResponseBase(this, v2);
}

void WebKit::sendSecItemRequest(uint64_t a1, char a2, void *a3, const void *a4)
{
  v68 = a2;
  v8 = WTF::RunLoop::mainSingleton(a1);
  isCurrent = WTF::RunLoop::isCurrent(v8);
  if (isCurrent)
  {
    if (byte_1ED642709)
    {
      if (qword_1ED642720)
      {
        v10 = *(qword_1ED642720 + 8);
        if (v10)
        {
          WebKit::AuxiliaryProcess::protectedParentProcessConnection(&v60, v10);
          v11 = v60;
          LOBYTE(v56) = a2;
          v58 = a3;
          if (a3)
          {
            CFRetain(a3);
          }

          v59 = a4;
          if (a4)
          {
            CFRetain(a4);
          }

          IPC::Connection::createSyncMessageEncoder(0x1021, 0, v76);
          IPC::ArgumentCoder<WebKit::SecItemRequestData,void>::encode(v76[0], &v56);
          v12 = IPC::Connection::sendSyncMessage(&v74, v11, v76[1], v76, 0, INFINITY);
          if (v75)
          {
            if (v75 != 1)
            {
              mpark::throw_bad_variant_access(v12);
            }

            LOBYTE(v61) = v74;
            v67 = 1;
            goto LABEL_69;
          }

          v19 = v74;
          v74 = 0;
          if (*(v19 + 25) == 3194)
          {
            v20 = 11;
LABEL_65:
            LOBYTE(v61) = v20;
            v67 = 1;
            IPC::Decoder::~Decoder(v19);
            bmalloc::api::tzoneFree(v24, v25);
LABEL_66:
            if (!v75)
            {
              v26 = v74;
              v74 = 0;
              if (v26)
              {
                IPC::Decoder::~Decoder(v26);
                bmalloc::api::tzoneFree(v36, v37);
              }
            }

LABEL_69:
            v27 = v76[0];
            v76[0] = 0;
            if (v27)
            {
              IPC::Encoder::~Encoder(v27, v13);
              bmalloc::api::tzoneFree(v31, v32);
              if (!a4)
              {
LABEL_71:
                if (!a3)
                {
                  goto LABEL_72;
                }

LABEL_89:
                CFRelease(a3);
LABEL_72:
                v28 = v60;
                v60 = 0;
                if (v28)
                {
                  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v28, v13);
                }

                if (v67)
                {
                  LOBYTE(v77) = 0;
LABEL_81:
                  *a1 = 0;
                  *(a1 + 32) = 0;
                  goto LABEL_82;
                }

                LOBYTE(v77) = 0;
                v81 = 0;
                if ((v66 & 1) == 0)
                {
                  goto LABEL_81;
                }

                std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v77, &v62);
                v29 = v81;
                *a1 = 0;
                *(a1 + 32) = 0;
                if ((v29 & 1) == 0)
                {
                  goto LABEL_82;
                }

                *a1 = v77;
                *(a1 + 8) = 0;
                v30 = (a1 + 8);
                *(a1 + 24) = -1;
                if (v80 > 1u)
                {
                  if (v80 != 2)
                  {
                    *(a1 + 32) = 1;
                    goto LABEL_119;
                  }

                  v38 = v78;
                  *v30 = v78;
                  if (v38)
                  {
                    CFRetain(v38);
                  }
                }

                else
                {
                  if (!v80)
                  {
                    *v30 = 0;
                    goto LABEL_116;
                  }

                  v41 = HIDWORD(v79);
                  *v30 = 0;
                  *(a1 + 16) = 0;
                  *(a1 + 20) = v41;
                  if (v41)
                  {
                    v42 = (v41 >> 29);
                    if (!v42)
                    {
                      v43 = WTF::fastMalloc(v42, (8 * v41));
                      *(a1 + 16) = v41;
                      *(a1 + 8) = v43;
                      if (HIDWORD(v79))
                      {
                        v44 = v43;
                        v45 = v78;
                        v46 = 8 * HIDWORD(v79);
                        do
                        {
                          v47 = *v45;
                          *v44 = *v45;
                          if (v47)
                          {
                            CFRetain(v47);
                          }

                          ++v44;
                          ++v45;
                          v46 -= 8;
                        }

                        while (v46);
                      }

                      goto LABEL_116;
                    }

                    __break(0xC471u);
LABEL_148:
                    JUMPOUT(0x19DDA9B98);
                  }
                }

LABEL_116:
                *(a1 + 24) = v80;
                v48 = v81;
                *(a1 + 32) = 1;
                if ((v48 & 1) == 0)
                {
LABEL_82:
                  if (!v67)
                  {
                    if (v66 == 1)
                    {
                      if (v65 > 1u)
                      {
                        if (v65 == 2)
                        {
                          v33 = v63;
                          v63 = 0;
                          if (v33)
                          {
                            CFRelease(v33);
                          }
                        }
                      }

                      else if (v65)
                      {
                        WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v13);
                      }

                      v65 = -1;
                    }

                    v34 = v61;
                    v61 = 0;
                    if (v34)
                    {
                      IPC::Decoder::~Decoder(v34);
                      bmalloc::api::tzoneFree(v39, v40);
                    }
                  }

                  return;
                }

LABEL_119:
                if (v80 > 1u)
                {
                  if (v80 == 2)
                  {
                    v49 = v78;
                    v78 = 0;
                    if (v49)
                    {
                      CFRelease(v49);
                    }
                  }
                }

                else if (v80)
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v78, v13);
                }

                goto LABEL_82;
              }
            }

            else if (!a4)
            {
              goto LABEL_71;
            }

            CFRelease(a4);
            if (!a3)
            {
              goto LABEL_72;
            }

            goto LABEL_89;
          }

          LOBYTE(cf) = 0;
          v73 = 0;
          IPC::Decoder::decode<std::tuple<std::optional<WebKit::SecItemResponseData>>>(&v61, v19);
          if (v73 == v66)
          {
            if (v73)
            {
              if (v72 == v65)
              {
                if (v72)
                {
                  LODWORD(cf) = v61;
                  if (v71 != 255 || v64 != 255)
                  {
                    if (v64 == 255)
                    {
                      if (v71 > 1u)
                      {
                        if (v71 == 2)
                        {
                          v55 = v70[0];
                          v70[0] = 0;
                          if (v55)
                          {
                            CFRelease(v55);
                          }
                        }
                      }

                      else if (v71)
                      {
                        WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70, v13);
                      }

                      v71 = -1;
                    }

                    else
                    {
                      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJDnN3WTF6VectorINS6_9RetainPtrIP16__SecCertificateEELm0ENS6_15CrashOnOverflowELm16ENS6_10FastMallocEEENS8_IPKvEEEEEE14generic_assignINS0_15move_assignmentISI_LNS0_5TraitE1EEEEEvOT_EUlRSO_OT0_E_JRSJ_SN_EEEDcmSP_DpOT0_(v64, v70, v70, &v62);
                    }
                  }
                }
              }

              else if (v72)
              {
                if (v71 > 1u)
                {
                  if (v71 == 2)
                  {
                    v53 = v70[0];
                    v70[0] = 0;
                    if (v53)
                    {
                      CFRelease(v53);
                    }
                  }
                }

                else if (v71)
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70, v13);
                }

                v71 = -1;
                v72 = 0;
              }

              else
              {
                std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&cf, &v61);
              }
            }
          }

          else if (v73)
          {
            if (v72 == 1)
            {
              if (v71 > 1u)
              {
                if (v71 == 2)
                {
                  v21 = v70[0];
                  v70[0] = 0;
                  if (v21)
                  {
                    CFRelease(v21);
                  }
                }
              }

              else if (v71)
              {
                WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70, v13);
              }

              v71 = -1;
            }

            v73 = 0;
          }

          else
          {
            LOBYTE(cf) = 0;
            v72 = 0;
            if (v65 == 1)
            {
              std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&cf, &v61);
            }

            v73 = 1;
          }

          if (v66 == 1 && v65 == 1)
          {
            if (v64 > 1u)
            {
              if (v64 == 2)
              {
                v22 = v62;
                v62 = 0;
                if (v22)
                {
                  CFRelease(v22);
                }
              }
            }

            else if (v64)
            {
              WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v13);
            }
          }

          if (v73 != 1)
          {
            v20 = 14;
            goto LABEL_65;
          }

          v77 = v19;
          LOBYTE(v78) = 0;
          v82 = 0;
          if (v72)
          {
            std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v78, &cf);
            v23 = v77;
            v77 = 0;
            v61 = v23;
            LOBYTE(v62) = 0;
            v66 = 0;
            if (v82)
            {
              std::__optional_storage_base<WebKit::SecItemResponseData,false>::__construct[abi:sn200100]<WebKit::SecItemResponseData>(&v62, &v78);
              v67 = 0;
              if (v82)
              {
                if (v81 > 1u)
                {
                  if (v81 == 2)
                  {
                    v54 = v79;
                    v79 = 0;
                    if (v54)
                    {
                      CFRelease(v54);
                    }
                  }
                }

                else if (v81)
                {
                  WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v79, v13);
                }

                v81 = -1;
              }

              goto LABEL_99;
            }
          }

          else
          {
            v77 = 0;
            v61 = v19;
            LOBYTE(v62) = 0;
            v66 = 0;
          }

          v67 = 0;
LABEL_99:
          v35 = v77;
          v77 = 0;
          if (v35)
          {
            IPC::Decoder::~Decoder(v35);
            bmalloc::api::tzoneFree(v51, v52);
          }

          if ((v73 & 1) != 0 && v72 == 1)
          {
            if (v71 > 1u)
            {
              if (v71 == 2)
              {
                v50 = v70[0];
                v70[0] = 0;
                if (v50)
                {
                  CFRelease(v50);
                }
              }
            }

            else if (v71)
            {
              WTF::Vector<WTF::RetainPtr<__SecCertificate *>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v70, v13);
            }
          }

          goto LABEL_66;
        }
      }
    }

    else
    {
      qword_1ED642720 = 0;
      byte_1ED642709 = 1;
    }

    __break(0xC471u);
    goto LABEL_148;
  }

  v77 = a3;
  if (a3)
  {
    isCurrent = CFRetain(a3);
  }

  cf = a4;
  if (a4)
  {
    isCurrent = CFRetain(a4);
  }

  *a1 = 0;
  *(a1 + 32) = 0;
  v56 = 0;
  v57 = 0;
  WTF::RunLoop::mainSingleton(isCurrent);
  v15 = WTF::fastMalloc(v14, 0x30);
  *v15 = &unk_1F1108E98;
  v15[1] = &v56;
  v15[2] = &v68;
  v15[3] = &v77;
  v15[4] = &cf;
  v15[5] = a1;
  v61 = v15;
  WTF::RunLoop::dispatch();
  v16 = v61;
  v61 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v61 = 0x7FF0000000000000;
  LODWORD(v62) = 0;
  WTF::BinarySemaphore::waitUntil();
  v17 = cf;
  cf = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = v77;
  v77 = 0;
  if (v18)
  {
    CFRelease(v18);
  }
}