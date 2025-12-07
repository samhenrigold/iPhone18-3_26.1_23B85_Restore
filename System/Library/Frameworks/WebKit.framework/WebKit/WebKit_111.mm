WTF::StringImpl *WTF::Function<void ()(std::optional<WebCore::CDMKeySystemConfiguration>)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  std::optional<WebCore::CDMKeySystemConfiguration>::optional[abi:sn200100](&v9, a2);
  result = (*(*v2 + 16))(v2, &v9);
  if (v15 == 1)
  {
    v5 = v13;
    if (v13)
    {
      v13 = 0;
      v14 = 0;
      WTF::fastFree(v5, v4);
    }

    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v4);
    WTF::Vector<WebCore::CDMMediaCapability,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v11, v6);
    WTF::Vector<WTF::AtomString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v10, v7);
    result = v9;
    v9 = 0;
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

_DWORD *WTF::RefCounted<WebCore::LegacyCDM>::deref(_DWORD *result)
{
  if (*result == 1)
  {
    v2 = MEMORY[0x19EB10240](result - 2);

    return bmalloc::api::tzoneFree(v2, v3);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBB4538);
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

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBB4614);
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

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    if (v4)
    {
      v6 = v4 << (6 * v5 >= (2 * v4));
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = 8;
LABEL_6:
  result = WTF::fastZeroedMalloc((16 * v6 + 16));
  *a1 = (result + 4);
  result[2] = v6 - 1;
  result[3] = v6;
  *result = 0;
  result[1] = v5;
  if (v4)
  {
    v9 = 0;
    while (1)
    {
      v10 = (v3 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            if (v23[7] == 1)
            {
              (*(*v23 + 24))(v23);
            }

            else
            {
              --v23[7];
            }
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_24;
          }

          if (v12[7] == 1)
          {
LABEL_26:
            (*(*v12 + 24))(v12);
            goto LABEL_24;
          }

          --v12[7];
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {
            if (v12[7] == 1)
            {
              goto LABEL_26;
            }

            --v12[7];
          }
        }
      }

LABEL_24:
      if (++v9 == v4)
      {
        goto LABEL_30;
      }
    }
  }

  if (v3)
  {
LABEL_30:

    return WTF::fastFree((v3 - 16), v8);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 && (v3 = *(v2 - 4)) != 0)
  {
    v4 = (v3 << (6 * *(v2 - 12) >= (2 * v3)));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
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
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            if (v23[8] == 1)
            {
              (*(*v23 + 24))(v23);
            }

            else
            {
              --v23[8];
            }
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_22;
          }

          if (v12[8] == 1)
          {
LABEL_24:
            (*(*v12 + 24))(v12);
            goto LABEL_22;
          }

          --v12[8];
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {
            if (v12[8] == 1)
            {
              goto LABEL_24;
            }

            --v12[8];
          }
        }
      }

LABEL_22:
      if (++v9 == v5)
      {
        goto LABEL_28;
      }
    }
  }

  if (v4)
  {
LABEL_28:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteLegacyCDMSessionProxy,WTF::RawPtrTraits<WebKit::RemoteLegacyCDMSessionProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteLegacyCDMSessionProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteLegacyCDMSessionIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 == -1 || !a2)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBB4BD0);
    }

    v2 = *(result - 8);
    v3 = (~(a2 << 32) + a2) ^ ((~(a2 << 32) + a2) >> 22);
    v4 = 9 * ((v3 + ~(v3 << 13)) ^ ((v3 + ~(v3 << 13)) >> 8));
    v5 = (v4 ^ (v4 >> 15)) + ~((v4 ^ (v4 >> 15)) << 27);
    v6 = v2 & ((v5 >> 31) ^ v5);
    v7 = *(result + 16 * v6);
    if (v7 == a2)
    {
LABEL_8:
      result += 16 * v6;
    }

    else
    {
      v8 = 1;
      while (v7)
      {
        v6 = (v6 + v8) & v2;
        v7 = *(result + 16 * v6);
        ++v8;
        if (v7 == a2)
        {
          goto LABEL_8;
        }
      }

      result += 16 * *(result - 4);
    }
  }

  return result;
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,char [30]>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, const char *a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696EBD0];
  do
  {
    v10 = *v9;
    if (v10)
    {
      return 0;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v11 != v10);
  v12 = WTF::Logger::messageHandlerObservers(a1);
  v13 = *(v12 + 12);
  if (v13)
  {
    v14 = *v12;
    v15 = *v12 + 8 * v13;
    do
    {
      v16 = *v14;
      v26[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v27, a4);
      v28 = 0;
      WTF::String::String(v29, a5);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, v26, 2uLL);
      (*(*v16 + 16))(v16, a2, a3, v25);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v17);
      for (i = 6; i != -2; i -= 4)
      {
        v20 = *&v26[i];
        *&v26[i] = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [30]>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this, const char *a4)
{
  v34[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v30, this);
  WTF::String::String(&v29, a4);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v30;
    v30 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v28[0];
      v28[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v33 = 0;
              WTF::String::String(v34, a4);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v23 + 16))(v23, a1, a2, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v24);
              for (i = 24; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          if (v27 != 1)
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
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactoryProxy::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::CompletionHandler<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0,void,WebCore::MediaCapabilitiesDecodingInfo>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FCC50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactoryProxy::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::CompletionHandler<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0,void,WebCore::MediaCapabilitiesDecodingInfo>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCC50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactoryProxy::createDecodingConfiguration(WebCore::MediaDecodingConfiguration &&,WTF::CompletionHandler<void ()(WebCore::MediaCapabilitiesDecodingInfo &&)> &&)::$_0,void,WebCore::MediaCapabilitiesDecodingInfo>::call(uint64_t a1, __int16 *a2)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  LOBYTE(v13) = 0;
  v16 = 0;
  if (*(a2 + 48) == 1)
  {
    v2 = *(a2 + 1);
    *(a2 + 1) = 0;
    v13 = v2;
    v3 = *(a2 + 2);
    v14 = *(a2 + 1);
    v15 = v3;
    v16 = 1;
  }

  LOBYTE(v17[0]) = 0;
  v19 = 0;
  if (*(a2 + 104) == 1)
  {
    v4 = *(a2 + 28);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *v17 = v4;
    v18[0] = *(a2 + 36);
    *(v18 + 10) = *(a2 + 41);
    v19 = 1;
  }

  LOBYTE(v20[0]) = 0;
  v21 = 0;
  if (*(a2 + 128) == 1)
  {
    v20[0] = *(a2 + 14);
    v5 = *(a2 + 15);
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    v20[1] = v5;
    v21 = 1;
  }

  LOBYTE(v22[0]) = 0;
  v23 = 0;
  if (*(a2 + 152) == 1)
  {
    v22[0] = *(a2 + 17);
    v6 = *(a2 + 18);
    *(a2 + 17) = 0;
    *(a2 + 18) = 0;
    v22[1] = v6;
    v23 = 1;
  }

  v24 = a2[80];
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v7 + 16))(v7, &v11);
  result = (*(*v7 + 8))(v7);
  if (v23 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v9);
  }

  if (v21 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v9);
  }

  if (v19 == 1)
  {
    v10 = v17[1];
    v17[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    result = v17[0];
    v17[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

  if (v16 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactoryProxy::createEncodingConfiguration(WebCore::MediaEncodingConfiguration &&,WTF::CompletionHandler<void ()(WebCore::MediaCapabilitiesEncodingInfo &&)> &&)::$_0,void,WebCore::MediaCapabilitiesEncodingInfo>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FCC78;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactoryProxy::createEncodingConfiguration(WebCore::MediaEncodingConfiguration &&,WTF::CompletionHandler<void ()(WebCore::MediaCapabilitiesEncodingInfo &&)> &&)::$_0,void,WebCore::MediaCapabilitiesEncodingInfo>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCC78;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::StringImpl *WTF::Detail::CallableWrapper<WebKit::RemoteMediaEngineConfigurationFactoryProxy::createEncodingConfiguration(WebCore::MediaEncodingConfiguration &&,WTF::CompletionHandler<void ()(WebCore::MediaCapabilitiesEncodingInfo &&)> &&)::$_0,void,WebCore::MediaCapabilitiesEncodingInfo>::call(uint64_t a1, __int16 *a2)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  LOBYTE(v13) = 0;
  v16 = 0;
  if (*(a2 + 48) == 1)
  {
    v2 = *(a2 + 1);
    *(a2 + 1) = 0;
    v13 = v2;
    v3 = *(a2 + 2);
    v14 = *(a2 + 1);
    v15 = v3;
    v16 = 1;
  }

  LOBYTE(v17[0]) = 0;
  v19 = 0;
  if (*(a2 + 104) == 1)
  {
    v4 = *(a2 + 28);
    *(a2 + 7) = 0;
    *(a2 + 8) = 0;
    *v17 = v4;
    v18[0] = *(a2 + 36);
    *(v18 + 10) = *(a2 + 41);
    v19 = 1;
  }

  LOBYTE(v20[0]) = 0;
  v21 = 0;
  if (*(a2 + 128) == 1)
  {
    v20[0] = *(a2 + 14);
    v5 = *(a2 + 15);
    *(a2 + 14) = 0;
    *(a2 + 15) = 0;
    v20[1] = v5;
    v21 = 1;
  }

  LOBYTE(v22[0]) = 0;
  v23 = 0;
  if (*(a2 + 152) == 1)
  {
    v22[0] = *(a2 + 17);
    v6 = *(a2 + 18);
    *(a2 + 17) = 0;
    *(a2 + 18) = 0;
    v22[1] = v6;
    v23 = 1;
  }

  v24 = *(a2 + 160);
  v7 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v7 + 16))(v7, &v11);
  result = (*(*v7 + 8))(v7);
  if (v23 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v9);
  }

  if (v21 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v20, v9);
  }

  if (v19 == 1)
  {
    v10 = v17[1];
    v17[1] = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    result = v17[0];
    v17[0] = 0;
    if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(result, v9);
    }
  }

  if (v16 == 1)
  {
    result = v13;
    v13 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v9);
      }
    }
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 && (v3 = *(v2 - 4)) != 0)
  {
    v4 = (v3 << (6 * *(v2 - 12) >= (2 * v3)));
  }

  else
  {
    v4 = 8;
  }

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
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
    v9 = 0;
    while (1)
    {
      v10 = (v4 + 16 * v9);
      v11 = *v10;
      if (*v10 != -1)
      {
        if (v11)
        {
          v13 = *a1;
          if (*a1)
          {
            v14 = *(v13 - 8);
          }

          else
          {
            v14 = 0;
          }

          v15 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
          v16 = 9 * ((v15 + ~(v15 << 13)) ^ ((v15 + ~(v15 << 13)) >> 8));
          v17 = (v16 ^ (v16 >> 15)) + ~((v16 ^ (v16 >> 15)) << 27);
          v18 = v14 & ((v17 >> 31) ^ v17);
          v19 = 1;
          do
          {
            v20 = v18;
            v21 = *(v13 + 16 * v18);
            v18 = (v18 + v19++) & v14;
          }

          while (v21);
          v22 = (v13 + 16 * v20);
          v23 = v22[1];
          v22[1] = 0;
          if (v23)
          {
            WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v23 + 16));
          }

          *v22 = *v10;
          v24 = v10[1];
          v10[1] = 0;
          v22[1] = v24;
          v12 = v10[1];
          v10[1] = 0;
          if (!v12)
          {
            goto LABEL_19;
          }

LABEL_18:
          WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v12 + 16));
          goto LABEL_19;
        }

        v12 = v10[1];
        v10[1] = 0;
        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_19:
      if (++v9 == v5)
      {
        goto LABEL_22;
      }
    }
  }

  if (v4)
  {
LABEL_22:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBB5910);
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

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::Ref<WebKit::RemoteMediaPlayerProxy,WTF::RawPtrTraits<WebKit::RemoteMediaPlayerProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaPlayerProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebCore::MediaPlayerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBB5A04);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t *a3)
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
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v26 + 8), v10);
          }

          *v25 = *v13;
          v27 = v13[1];
          v13[1] = 0;
          v25[1] = v27;
          v28 = v13[1];
          v13[1] = 0;
          if (v28)
          {
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v28 + 8), v10);
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
            WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v15 + 8), v10);
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

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *a2 = -1;
  a2[1] = 0;
  if (v3)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivateClient,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  v4 = *v2;
  v5 = vadd_s32(*(*v2 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v2, v6 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v3 = *a2;
  if (*a2 == -1 || !v3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBB5D64);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 16 * v8);
  if (v9 == v3)
  {
    return v2 + 16 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 16 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 16 * v8;
    }
  }

  return v2 + 16 * *(v2 - 4);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::RemoteAudioTrackProxy,(WTF::DestructionThread)1>::deref(atomic_uint *result, unint64_t a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v3 = result;
    atomic_store(add, result);
    v4 = WTF::fastMalloc(add, 0x10);
    *v4 = &unk_1F10FCCA0;
    v4[1] = v3;
    v5 = v4;
    WTF::ensureOnMainThread();
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::RemoteAudioTrackProxy,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WebKit::RemoteAudioTrackProxy::~RemoteAudioTrackProxy((*(a1 + 8) - 16));

  return bmalloc::api::tzoneFree(v1, v2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::RemoteTextTrackProxy,(WTF::DestructionThread)1>::deref(atomic_uint *result, unint64_t a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v3 = result;
    atomic_store(add, result);
    v4 = WTF::fastMalloc(add, 0x10);
    *v4 = &unk_1F10FCCC8;
    v4[1] = v3;
    v5 = v4;
    WTF::ensureOnMainThread();
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::RemoteTextTrackProxy,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WebKit::RemoteTextTrackProxy::~RemoteTextTrackProxy((*(a1 + 8) - 16));

  return bmalloc::api::tzoneFree(v1, v2);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::RemoteVideoTrackProxy,(WTF::DestructionThread)1>::deref(atomic_uint *result, unint64_t a2)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v3 = result;
    atomic_store(add, result);
    v4 = WTF::fastMalloc(add, 0x10);
    *v4 = &unk_1F10FCCF0;
    v4[1] = v3;
    v5 = v4;
    WTF::ensureOnMainThread();
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WTF::ThreadSafeRefCounted<WebKit::RemoteVideoTrackProxy,(WTF::DestructionThread)1>::deref(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  WebKit::RemoteAudioTrackProxy::~RemoteAudioTrackProxy((*(a1 + 8) - 16));

  return bmalloc::api::tzoneFree(v1, v2);
}

_DWORD *WTF::Detail::CallableWrapper<WTF::RunLoop::Timer::Timer<WebKit::RemoteMediaPlayerProxy>(WTF::Ref<WTF::RunLoop,WTF::RawPtrTraits<WTF::RunLoop>,WTF::DefaultRefDerefTraits<WTF::RunLoop>> &&,WTF::ASCIILiteral,WebKit::RemoteMediaPlayerProxy *,void (WTF::ASCIILiteral::*)(void))::{lambda(void)#1},void>::call(void *a1)
{
  v1 = a1[1];
  if (v1)
  {
    ++*(v1 + 16);
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = (v1 + (v3 >> 1));
  if (v3)
  {
    (*(*v4 + v2))();
  }

  else
  {
    result = v2(v4);
    if (!v1)
    {
      return result;
    }
  }

  return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v1 + 16));
}

WTF::Lock *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::reject<WebCore::PlatformMediaError,std::enable_if<true,void>>(uint64_t a1, char *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v13 = v7;
  v14 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " rejecting ", a1);
  }

  v12 = *a2;
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::emplace<std::experimental::fundamentals_v3::unexpected<WebCore::PlatformMediaError>>((a1 + 56), &v12);
  result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v13);
  v11 = v14;
  if (v14 == 1)
  {
    result = v13;
    atomic_compare_exchange_strong_explicit(v13, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::NativePromise(uint64_t a1, _OWORD *a2)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F10FCF10;
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
  v4 = WTF::NativePromiseBase::logChannel(a1);
  if (*v4 && v4[16] >= 4u)
  {
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v4, 4, "creating ", a1);
  }

  return a1;
}

atomic_uint **WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::assertIsDead(atomic_uint **result)
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
      result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::assertIsDead(v5);
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

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::~NativePromise(uint64_t a1)
{
  v1 = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::~NativePromise(a1);

  return WTF::fastFree(v1, v2);
}

{
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
    WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v2, 4, "destroying ", a1);
  }

  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::assertIsDead(a1);
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 96, v4);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(a1 + 72, v5);
  v6 = *(a1 + 64);
  if (v6 >= 2 && v6 != 255)
  {
    v7 = *(a1 + 56);
    *(a1 + 56) = 0;
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }
  }

  *(a1 + 64) = -1;
  return a1;
}

WTF::StringImpl *WTF::Logger::log<char [10],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v34[2] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v30, a3);
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, &v29);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v30;
    v30 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v28[0];
      v28[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::String::String(&buf[8], a3);
              v33 = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, v34);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v23 + 16))(v23, a1, a2, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v24);
              for (i = 24; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          if (v27 != 1)
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
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

WTF::StringImpl *WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  WTF::LogArgument<void const*>::toString();
  WTF::Logger::LogSiteIdentifier::toString(&v7, (a1 + 16));
  WTF::makeString<WTF::ASCIILiteral,WTF::String,char,WTF::String,char>("NativePromise", 14, &v8, 60, &v7, 62, a2);
  v5 = v7;
  v7 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  result = v8;
  v8 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v4);
    }
  }

  return result;
}

atomic_uint **WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::assertIsDead(atomic_uint **result)
{
  v1 = *result;
  if (*result)
  {
    atomic_fetch_add(v1 + 2, 1u);
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::assertIsDead(v1);
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v1 + 2);
      v2 = *(*v1 + 16);

      return v2(v1);
    }
  }

  return result;
}

uint64_t WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      v4 = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v4) + 5;
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

atomic_uint **WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(atomic_uint **a1)
{
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::assertIsDead(a1);
  v2 = *a1;
  *a1 = 0;
  if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v2 + 2);
    (*(*v2 + 16))(v2);
  }

  return a1;
}

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, const char *a4, uint64_t a5)
{
  v40[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v34, this);
  WTF::String::String(&v33, a4);
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a5, &v32);
  WTF::makeString<WTF::String,WTF::String,WTF::String>(&v34, &v33, &v32, &v35);
  v10 = v32;
  v32 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  v11 = v33;
  v33 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v9);
  }

  v12 = v34;
  v34 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v9);
  }

  v13 = *(a1 + 32);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v14)
  {
    WTF::String::utf8();
    v16 = v31[0] ? v31[0] + 16 : 0;
    *buf = 136446210;
    v37 = v16;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    v14 = v31[0];
    v31[0] = 0;
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

  if (*a1 && *(a1 + 16) >= a2)
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
            WTF::Logger::LogSiteIdentifier::toString((&v37 + 4), this);
            v38 = 0;
            WTF::String::String(v39, a4);
            v39[2] = 0;
            WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a5, v40);
            WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 3uLL);
            (*(*v24 + 16))(v24, a1, a2, v31);
            WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v25);
            for (i = 40; i != -8; i -= 16)
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

  result = v35;
  v35 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v15);
    }
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::emplace<std::experimental::fundamentals_v3::unexpected<WebCore::PlatformMediaError>>(unsigned __int8 *result, unsigned __int8 *a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 >= 2 && v4 != 255)
  {
    result = *result;
    *v3 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *v3 = *a2;
  v3[1] = 1;
  v3[8] = 1;
  return result;
}

uint64_t WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::dispatchAll(uint64_t a1, atomic_uchar *volatile *a2)
{
  v18 = &v20;
  v19 = 1;
  __dst = &v23;
  v22 = 1;
  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt(&__dst, (a1 + 72));
  v4 = *(a1 + 84);
  if (v4)
  {
    WTF::VectorDestructor<true,WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>>::destruct(*(a1 + 72), (*(a1 + 72) + 8 * v4));
  }

  WTF::VectorBuffer<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::FastMalloc>::adopt((a1 + 72), &v18);
  WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v5);
  *&v6 = 0;
  v7 = *(a1 + 96);
  v18 = v7;
  v8 = *(a1 + 108);
  LODWORD(v19) = *(a1 + 104);
  HIDWORD(v19) = v8;
  v17 = v6;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v17, v9);
  if (HIDWORD(v22))
  {
    v11 = __dst;
    v12 = 8 * HIDWORD(v22);
    do
    {
      v13 = *v11++;
      WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(v13, a1, a2);
      v12 -= 8;
    }

    while (v12);
  }

  if (v8)
  {
    v14 = 40 * v8;
    do
    {
      WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleChainedPromise(a1, v7);
      v7 += 40;
      v14 -= 40;
    }

    while (v14);
  }

  WTF::Vector<WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v10);
  return WTF::Vector<WTF::Ref<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WTF::String,void,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&__dst, v15);
}

atomic_uchar *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromiseBase *a1, uint64_t a2, atomic_uchar *volatile *a3)
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
        return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", a2, " aborting [callback:", &v16, " callSite:", (v5 + 24), "]");
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
        WTF::NativePromise<void,void,0u>::takeResultRunnable(a2, &v16);
        (*(*v16 + 16))(v15);
        (*(*v5 + 24))(v5, a2, v15);
        v13 = v16;
        v16 = 0;
        if (v13)
        {
          (*(*v13 + 8))(v13);
        }
      }

      else
      {
        WTF::NativePromise<void,void,0u>::takeResult(a2, &v16);
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
    *v8 = &unk_1F10FCF38;
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

atomic_uint **WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleChainedPromise(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  *a2 = 0;
  v9 = v2;
  v3 = *(a2 + 24);
  v10 = *(a2 + 8);
  v11 = v3;
  if (v2)
  {
    atomic_fetch_add(v2 + 2, 1u);
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage>(v2, (a1 + 56), &v5);
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v2 + 2);
      (*(*v2 + 16))(v2);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = "<chained promise>";
    v8 = 0;
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage>(0, (a1 + 56), &v5);
  }

  return WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v9);
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, unsigned int a2, char *a3, uint64_t a4, const char *a5, int a6, char *a7, WTF::Logger::LogSiteIdentifier *a8, const char *a9)
{
  v65[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v50, a3);
  WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, &v49);
  WTF::String::String(&v48, a5);
  WTF::LogArgument<void const*>::toString();
  v40 = a7;
  WTF::String::String(&v46, a7);
  v41 = a8;
  WTF::Logger::LogSiteIdentifier::toString(&v45, a8);
  WTF::String::String(&v44, a9);
  v43[0] = v49;
  v56 = v48;
  *buf = v50;
  v54 = v46;
  v55 = v47;
  v52 = v44;
  v53 = v45;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v43, &v56, &v55, &v54, &v53, &v52, &v51);
  if (v51)
  {
    v17 = v44;
    v44 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v45;
    v45 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v16);
    }

    v19 = v46;
    v46 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v16);
    }

    v20 = v47;
    v47 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v16);
    }

    v21 = v48;
    v48 = 0;
    if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, v16);
    }

    v22 = v49;
    v49 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v16);
    }

    v23 = v50;
    v50 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v16);
    }

    v24 = *(a1 + 32);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      WTF::String::utf8();
      v27 = v43[0] ? v43[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v27;
      _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v25 = v43[0];
      v43[0] = 0;
      if (v25)
      {
        if (*v25 == 1)
        {
          v25 = WTF::fastFree(v25, v26);
        }

        else
        {
          --*v25;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v28 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v29 = *v28;
        if (v29)
        {
          break;
        }

        v30 = *v28;
        atomic_compare_exchange_strong_explicit(v28, &v30, v29 | 1, memory_order_acquire, memory_order_acquire);
        if (v30 == v29)
        {
          v31 = WTF::Logger::observers(v25);
          v32 = *(v31 + 12);
          if (v32)
          {
            v33 = *v31;
            v34 = *v31 + 8 * v32;
            do
            {
              v35 = *v33;
              *buf = 0;
              WTF::String::String(&buf[8], a3);
              v58 = 0;
              WTF::LogArgument<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>::toString(a4, &v59);
              v60 = 0;
              WTF::String::String(v61, a5);
              v61[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v61[6] = 0;
              WTF::String::String(v62, v40);
              v62[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v63, v41);
              v64 = 0;
              WTF::String::String(v65, a9);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v43, buf, 7uLL);
              (*(*v35 + 16))(v35, a1, a2, v43);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43, v36);
              for (i = 104; i != -8; i -= 16)
              {
                v38 = *&buf[i];
                *&buf[i] = 0;
                if (v38 && atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v38, v26);
                }
              }

              ++v33;
            }

            while (v33 != v34);
          }

          v39 = 1;
          atomic_compare_exchange_strong_explicit(v28, &v39, 0, memory_order_release, memory_order_relaxed);
          if (v39 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v51;
    v51 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v26);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FCF38;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FCF38;
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

WTF::StringImpl *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1}::operator()(WTF::NativePromiseBase *a1)
{
  v2 = *a1;
  v1 = *(a1 + 1);
  if (*(*a1 + 56) == 1)
  {
    v10 = *a1;
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
      return WTF::Logger::log<char [32],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(result, 4u, "ThenCallback disconnected from ", v1, " aborting [callback:", &v10, " callSite:", (v2 + 24), "]");
    }
  }

  else
  {
    hasRunnable = WTF::NativePromise<void,void,0u>::hasRunnable(*(a1 + 1));
    v7 = *a1;
    v8 = *(a1 + 1);
    if (hasRunnable)
    {
      WTF::NativePromise<void,void,0u>::takeResultRunnable(v8, &v10);
      (*(*v10 + 16))(v9);
      (*(*v7 + 24))(v7, v8, v9);
      result = v10;
      v10 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      WTF::NativePromise<void,void,0u>::takeResult(v8, &v10);
      return (*(*v7 + 24))(v7, v8, &v10);
    }
  }

  return result;
}

WTF::Lock *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleAsChainedPromise<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage>(_BYTE *a1, unsigned __int16 *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v20 = v7;
  v21 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling chained promise ", a1);
  }

  v10 = a1[64];
  v11 = *(a2 + 8);
  if (v10 != 255 || v11 != 255)
  {
    v12 = (a1 + 56);
    switch(v11)
    {
      case 255:
        if (v10 >= 2 && v10 != 255)
        {
          v13 = *v12;
          *v12 = 0;
          if (v13)
          {
            (*(*v13 + 8))(v13);
          }
        }

        a1[64] = -1;
        break;
      case 2:
        if (v10 == 2)
        {
          v17 = *a2;
          *a2 = 0;
          v18 = *v12;
          *v12 = v17;
          if (v18)
          {
            (*(*v18 + 8))(v18);
          }
        }

        else
        {
          v22 = a1 + 56;
          v23 = a2;
          mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>(mpark::detail::alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>> &,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)> &&)::{unnamed type#1}::operator()(&v22);
        }

        break;
      case 1:
        if (v10 == 1)
        {
          v16 = *a2;
          if (a1[57] == v16 >> 8)
          {
            if ((v16 & 0x100) != 0)
            {
              *v12 = v16;
            }
          }

          else if ((v16 & 0x100) != 0)
          {
            a1[56] = v16;
            a1[57] = 1;
          }

          else if (a1[57])
          {
            a1[57] = 0;
          }
        }

        else
        {
          v22 = a1 + 56;
          v23 = a2;
          mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<1ul,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>(mpark::detail::alt<1ul,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>> &,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> &&)::{unnamed type#1}::operator()(&v22);
        }

        break;
      default:
        if (a1[64])
        {
          if (v10 != 1 && v10 != 255)
          {
            v19 = *v12;
            *v12 = 0;
            if (v19)
            {
              (*(*v19 + 8))(v19);
            }
          }

          a1[64] = 0;
        }

        break;
    }
  }

  result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v20);
  v15 = v21;
  if (v21 == 1)
  {
    result = v20;
    atomic_compare_exchange_strong_explicit(v20, &v15, 0, memory_order_release, memory_order_relaxed);
    if (v15 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<1ul,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>(mpark::detail::alt<1ul,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>> &,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 8);
  if (v3 >= 2 && v3 != 255)
  {
    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(v1 + 8) = -1;
  *v1 = *v2;
  *(v1 + 8) = 1;
  return result;
}

void *mpark::detail::assignment<mpark::detail::traits<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::NoResult,std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>>::assign_alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>(mpark::detail::alt<2ul,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>> &,WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)> &&)::{unnamed type#1}::operator()(void *result)
{
  v1 = *result;
  v2 = result[1];
  v3 = *(*result + 8);
  if (v3 >= 2 && v3 != 255)
  {
    result = *v1;
    *v1 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v4 = *v2;
  *v2 = 0;
  *v1 = v4;
  *(v1 + 8) = 2;
  return result;
}

atomic_uint **IPC::Connection::sendWithPromisedReply<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>@<X0>(os_unfair_lock *a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, atomic_uint **a4@<X8>)
{
  v18[0] = 0;
  v18[1] = 0;
  v18[2] = "sendWithPromisedReply";
  v18[3] = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(v19, 0, v18, "sendWithPromisedReply");
  v8 = v19[0];
  if (v19[0])
  {
    atomic_fetch_add(v19[0] + 2, 1u);
  }

  *a4 = v8;
  IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v19, v18);
  v10 = IPC::Encoder::operator new(0x238, v9);
  *v10 = 335;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a2;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(a1, &v17, v18, a3, 0);
  v12 = v17;
  v17 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v11);
    bmalloc::api::tzoneFree(v15, v16);
  }

  v13 = v18[0];
  v18[0] = 0;
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  return WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(v19);
}

uint64_t IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *(a1 + 24);
  v10 = *(a1 + 8);
  v11 = v5;
  v6 = WTF::fastMalloc(a3, 0x30);
  v9 = 0;
  *v6 = &unk_1F10FCD40;
  v6[1] = v4;
  v7 = v11;
  *(v6 + 1) = v10;
  *(v6 + 2) = v7;
  *a3 = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    a3[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    return WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v9);
  }

  return result;
}

uint64_t WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, WTF::Logger::LogSiteIdentifier *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = a2;
  v7 = WTF::fastMalloc(a4, 0x78);
  v8 = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::NativePromise(v7, a3);
  *a1 = v8;
  v9 = *a3;
  *(a1 + 24) = *(a3 + 1);
  *(a1 + 8) = v9;
  v10 = (v8 + 8);
  atomic_fetch_add((v8 + 8), 1u);
  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::setDispatchMode(v8, v5, a3);
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    (*(*v7 + 16))(v7);
  }

  return a1;
}

WTF::StringImpl *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::setDispatchMode(atomic_uchar *a1, unsigned __int8 a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v5 = a1;
  v6 = 0;
  v7 = (a1 + 48);
  atomic_compare_exchange_strong_explicit(a1 + 48, &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    a1 = MEMORY[0x19EB01E30](a1 + 48);
  }

  result = WTF::NativePromiseBase::logChannel(a1);
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
    result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(result, 4u, a3, " runSynchronouslyOnTarget ", v5);
  }

  atomic_store(a2, v5 + 113);
  v10 = 1;
  atomic_compare_exchange_strong_explicit(v5 + 48, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FCD40;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer((a1 + 8));
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::~CallableWrapper(atomic_uint **a1)
{
  *a1 = &unk_1F10FCD40;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(a1 + 1);

  return WTF::fastFree(a1, v2);
}

uint64_t *WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1},void,IPC::Connection*,std::unique_ptr<IPC::Decoder> &>::call@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a3;
  *a3 = 0;
  v6 = WTF::fastMalloc(a4, 0x10);
  *v6 = &unk_1F10FCD68;
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

WTF::StringImpl *WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::settleWithFunction<std::enable_if<true,void>>(atomic_uint **a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  isNothing = WTF::NativePromiseProducer<void,void,0u>::isNothing(a1);
  v7 = *a1;
  if (isNothing)
  {
    if (v7)
    {
      atomic_fetch_add(v7 + 2, 1u);
      result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleWithFunction(v7, a2, a3);
      if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) != 1)
      {
        return result;
      }

      goto LABEL_16;
    }

    return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleWithFunction(0, a2, a3);
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
      result = WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(result, 4u, a3, " ignored already resolved or rejected ", v7);
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

WTF::Lock *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::settleWithFunction(uint64_t a1, uint64_t *a2, WTF::Logger::LogSiteIdentifier *a3)
{
  v6 = 0;
  v7 = (a1 + 48);
  v12 = v7;
  v13 = 1;
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
    WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v8, 4u, a3, " settling ", a1);
  }

  WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::emplace<WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>((a1 + 56), a2);
  result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::dispatchAll(a1, &v12);
  v11 = v13;
  if (v13 == 1)
  {
    result = v12;
    atomic_compare_exchange_strong_explicit(v12, &v11, 0, memory_order_release, memory_order_relaxed);
    if (v11 != 1)
    {
      return WTF::Lock::unlockSlow(result);
    }
  }

  return result;
}

unsigned __int8 *WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Storage::emplace<WTF::Function<std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError> ()(void)>>(unsigned __int8 *result, uint64_t *a2)
{
  v3 = result;
  v4 = result[8];
  if (v4 >= 2 && v4 != 255)
  {
    result = *result;
    *v3 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  v5 = *a2;
  *a2 = 0;
  *v3 = v5;
  v3[8] = 2;
  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(uint64_t a1)
{
  *a1 = &unk_1F10FCD68;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100]((a1 + 8), 0);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::~CallableWrapper(IPC::Decoder **a1)
{
  *a1 = &unk_1F10FCD68;
  std::unique_ptr<IPC::Decoder>::reset[abi:sn200100](a1 + 1, 0);

  return WTF::fastFree(a1, v2);
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::AsyncReplyHandlerWithDispatcher IPC::Connection::makeAsyncReplyHandlerWithDispatcher<WebCore::MediaPromiseConverter,Messages::MediaPlayerPrivateRemote::CommitAllTransactions,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::Producer &&)::{lambda(IPC::Connection*,std::unique_ptr<IPC::Decoder> &&)#1}::operator()(IPC::Connection*,std::unique_ptr<IPC::Decoder> &)::{lambda(void)#1},std::experimental::fundamentals_v3::expected<void,WebCore::PlatformMediaError>>::call@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
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

void *std::__function::__func<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0,std::allocator<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0>,void ()(WTF::MediaTime const&)>::~__func(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FCD90;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

void std::__function::__func<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0,std::allocator<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0>,void ()(WTF::MediaTime const&)>::~__func(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FCD90;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  JUMPOUT(0x19EB14CF0);
}

uint64_t std::__function::__func<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0,std::allocator<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0>,void ()(WTF::MediaTime const&)>::__clone(uint64_t result, void *a2)
{
  *a2 = &unk_1F10FCD90;
  v2 = *(result + 8);
  if (v2)
  {
    atomic_fetch_add(v2, 1u);
  }

  a2[1] = v2;
  return result;
}

unsigned int *std::__function::__func<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0,std::allocator<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0>,void ()(WTF::MediaTime const&)>::destroy(uint64_t a1, void *a2)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
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

void std::__function::__func<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0,std::allocator<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0>,void ()(WTF::MediaTime const&)>::destroy_deallocate(void *__p, void *a2)
{
  v3 = __p[1];
  __p[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  operator delete(__p);
}

_DWORD *std::__function::__func<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0,std::allocator<WebKit::RemoteMediaPlayerProxy::getConfiguration(WebKit::RemoteMediaPlayerConfiguration &)::$_0>,void ()(WTF::MediaTime const&)>::operator()(_DWORD *result, __int128 *a2)
{
  v4 = *a2;
  v2 = *(result + 1);
  if (v2)
  {
    result = *(v2 + 8);
    if (result)
    {
      v3 = result + 4;
      ++result[4];
      WebKit::RemoteMediaPlayerProxy::currentTimeChanged(result, &v4);

      return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v3);
    }
  }

  return result;
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::SeekTarget>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, WebCore::SeekTarget *a5)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696EBD0];
  do
  {
    v10 = *v9;
    if (v10)
    {
      return 0;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v11 != v10);
  v12 = WTF::Logger::messageHandlerObservers(a1);
  v13 = *(v12 + 12);
  if (v13)
  {
    v14 = *v12;
    v15 = *v12 + 8 * v13;
    do
    {
      v16 = *v14;
      v26[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v27, a4);
      v28 = 0;
      WebCore::SeekTarget::toString(v29, a5);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v25, v26, 2uLL);
      (*(*v16 + 16))(v16, a2, a3, v25);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v25, v17);
      for (i = 6; i != -2; i -= 4)
      {
        v20 = *&v26[i];
        *&v26[i] = 0;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v20, v18);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v21 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v21, 0, memory_order_release, memory_order_relaxed);
  if (v21 != 1)
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::SeekTarget>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this, WebCore::SeekTarget *a4)
{
  v34[2] = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v30, this);
  WebCore::SeekTarget::toString(&v29, a4);
  *buf = v30;
  v28[0] = v29;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v28, &v31);
  if (v31)
  {
    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v9);
    }

    v11 = v30;
    v30 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v9);
    }

    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      WTF::String::utf8();
      v15 = v28[0] ? v28[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v15;
      _os_log_impl(&dword_19D52D000, v12, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v13 = v28[0];
      v28[0] = 0;
      if (v13)
      {
        if (*v13 == 1)
        {
          v13 = WTF::fastFree(v13, v14);
        }

        else
        {
          --*v13;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v16 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v17 = *v16;
        if (v17)
        {
          break;
        }

        v18 = *v16;
        atomic_compare_exchange_strong_explicit(v16, &v18, v17 | 1, memory_order_acquire, memory_order_acquire);
        if (v18 == v17)
        {
          v19 = WTF::Logger::observers(v13);
          v20 = *(v19 + 12);
          if (v20)
          {
            v21 = *v19;
            v22 = *v19 + 8 * v20;
            do
            {
              v23 = *v21;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v33 = 0;
              WebCore::SeekTarget::toString(v34, a4);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v28, buf, 2uLL);
              (*(*v23 + 16))(v23, a1, a2, v28);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v28, v24);
              for (i = 24; i != -8; i -= 16)
              {
                v26 = *&buf[i];
                *&buf[i] = 0;
                if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v26, v14);
                }
              }

              ++v21;
            }

            while (v21 != v22);
          }

          v27 = 1;
          atomic_compare_exchange_strong_explicit(v16, &v27, 0, memory_order_release, memory_order_relaxed);
          if (v27 != 1)
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
        return WTF::StringImpl::destroy(result, v14);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,BOOL>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, unsigned __int8 *a5)
{
  v28 = *MEMORY[0x1E69E9840];
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
    v14 = *v11 + 8 * v12;
    do
    {
      v15 = *v13;
      v25[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v26, a4);
      v27 = 0;
      WTF::StringImpl::createWithoutCopyingNonEmpty();
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v24, v25, 2uLL);
      (*(*v15 + 16))(v15, a2, a3, v24);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v16);
      for (i = 6; i != -2; i -= 4)
      {
        v19 = *&v25[i];
        *&v25[i] = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v17);
        }
      }

      ++v13;
    }

    while (v13 != v14);
  }

  v20 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,BOOL>(uint64_t a1, unsigned int a2, WTF::Logger::LogSiteIdentifier *this, _BYTE *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v29, this);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  *buf = v29;
  v27[0] = v28;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v27, &v30);
  if (v30)
  {
    v8 = v28;
    v28 = 0;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v7);
    }

    v9 = v29;
    v29 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v7);
    }

    v10 = *(a1 + 32);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      WTF::String::utf8();
      v13 = v27[0] ? v27[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v13;
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

    if (*a1 && *(a1 + 16) >= a2)
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
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v32 = 0;
              WTF::StringImpl::createWithoutCopyingNonEmpty();
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, buf, 2uLL);
              (*(*v21 + 16))(v21, a1, a2, v27);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v22);
              for (i = 24; i != -8; i -= 16)
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

    result = v30;
    v30 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v12);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 16))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
{
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](this, a2);
  }

  v4 = *(this + 1) - 1;
  *(this + 1) = v4;
  if (v4)
  {
    result = 0;
  }

  else
  {
    result = *(this + 3);
    ++*(this + 2);
    *(this + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(this, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 == 1)
  {
    if (v4)
    {
      return result;
    }
  }

  else
  {
    v10 = v4;
    v11 = result;
    WTF::Lock::unlockSlow(this);
    result = v11;
    if (v10)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 16))(result);
  }

  v7 = 0;
  v8 = 1;
  atomic_compare_exchange_strong_explicit(this, &v7, 1u, memory_order_acquire, memory_order_acquire);
  if (v7)
  {
    result = MEMORY[0x19EB01E30](this);
    v8 = 1;
  }

  v9 = *(this + 2) - 1;
  *(this + 2) = v9;
  atomic_compare_exchange_strong_explicit(this, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 == 1)
  {
    if (v9)
    {
      return result;
    }
  }

  else
  {
    v12 = v9;
    result = WTF::Lock::unlockSlow(this);
    if (v12)
    {
      return result;
    }
  }

  return WTF::fastFree(this, a2);
}

uint64_t IPC::Connection::sendWithAsyncReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>@<X0>(os_unfair_lock_s *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v10 = *a3;
  *a3 = 0;
  v11 = WTF::fastMalloc(a6, 0x10);
  *v11 = &unk_1F10FCDD8;
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
    *v15 = 368;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = a4;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v24 = v15;
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v15, *a2);
    v23[0] = v12;
    v23[1] = IdentifierInternal;
    v17 = IPC::Connection::sendMessageWithAsyncReply(a1, &v24, v23, a5, 0);
    v18 = v23[0];
    v23[0] = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = v24;
    v24 = 0;
    if (v19)
    {
      IPC::Encoder::~Encoder(v19, v16);
      bmalloc::api::tzoneFree(v21, v22);
    }

    if (v17)
    {
      return 0;
    }

    else
    {
      return IdentifierInternal;
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FCDD8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCDD8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>,IPC::Decoder>::call(uint64_t a1, uint64_t a2, IPC::Decoder *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>,void>::decode<IPC::Decoder>(a3, v12);
    if (v13 & 1) != 0 || (v9 = *a3, v10 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v11 = *(a3 + 3)) != 0) && v10 && ((*(*v11 + 16))(v11, v9), (v13))
    {
      v5 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v5 + 16))(v5, v12);
      result = (*(*v5 + 8))(v5);
      if (v13)
      {
        return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v12, v7);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>((a1 + 8));
    }
  }

  else
  {
    v8 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(v8);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::SendH2Ping,WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError> &&)>>(uint64_t *a1)
{
  v7[11] = *MEMORY[0x1E69E9840];
  IPC::AsyncReplyError<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>::create(v7);
  std::tuple<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,0>(v6, v7);
  std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v7, v2);
  v3 = *a1;
  *a1 = 0;
  (*(*v3 + 16))(v3, v6);
  (*(*v3 + 8))(v3);
  return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v6, v4);
}

uint64_t IPC::ArgumentCoder<std::tuple<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::decode<IPC::Decoder>(a1, v10);
  if (v11 & 1) != 0 || ((v7 = *a1, v8 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v9 = v8 == 0) : (v9 = 1), !v9 && (result = (*(*result + 16))(result, v7), (v11)))
  {
    result = std::tuple<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,0>(a2, v10);
    v6 = v11;
    a2[88] = 1;
    if (v6)
    {
      return std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>::~expected(v10, v5);
    }
  }

  else
  {
    *a2 = 0;
    a2[88] = 0;
  }

  return result;
}

void IPC::ArgumentCoder<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,void>::decode<IPC::Decoder>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = *a1;
  if (v3 <= &v4[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v21 = a1;
    v18 = *(a1 + 3);
    if (v18)
    {
      if (v3)
      {
        (*(*v18 + 16))(v18);
        v5 = *v21;
        v3 = *(v21 + 1);
        goto LABEL_26;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_26:
    *v21 = 0;
    *(v21 + 1) = 0;
    v19 = *(v21 + 3);
    if (v19)
    {
      if (v3)
      {
        (*(*v19 + 16))(v19, v5);
        v5 = *v21;
        v3 = *(v21 + 1);
        goto LABEL_30;
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = 0;
LABEL_30:
    *v21 = 0;
    *(v21 + 1) = 0;
    v20 = *(v21 + 3);
    if (v20 && v3)
    {
      (*(*v20 + 16))(v20, v5);
    }

    goto LABEL_31;
  }

  *(a1 + 2) = v4 + 1;
  if (!v4)
  {
    v21 = a1;
    goto LABEL_26;
  }

  v6 = *v4;
  if (v6 >= 2)
  {
    v21 = a1;
    goto LABEL_30;
  }

  if (v6)
  {
    v7 = IPC::Decoder::decode<WTF::Seconds>(a1);
    if (v8)
    {
      *a2 = v7;
      *(a2 + 80) = 0;
      *(a2 + 88) = 1;
      return;
    }

    goto LABEL_31;
  }

  IPC::Decoder::decode<WebCore::ResourceError>(a1, &v30);
  if (v39 != 1)
  {
LABEL_31:
    *a2 = 0;
    *(a2 + 88) = 0;
    return;
  }

  v9 = v32;
  LODWORD(v32) = v32 & 0xFFFFFFFE;
  v25 = v34;
  v26 = v35;
  v27 = v36;
  v28 = cf;
  v29 = v38;
  v10 = v30;
  v11 = v31;
  v30 = 0;
  v31 = 0;
  v23 = v9;
  v24 = v33;
  v34 = 0;
  cf = 0;
  v22 = v11;
  *a2 = v10;
  WTF::URL::URL(a2 + 8, &v22);
  v13 = v22;
  *(a2 + 48) = v25;
  *(a2 + 56) = v26;
  *(a2 + 60) = v27;
  *(a2 + 64) = v28;
  *(a2 + 72) = v29;
  *(a2 + 80) = 1;
  *(a2 + 88) = 1;
  v28 = 0;
  v25 = 0;
  v22 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  if (v39)
  {
    v14 = cf;
    cf = 0;
    if (v14)
    {
      CFRelease(v14);
    }

    v15 = v34;
    v34 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v12);
    }

    v16 = v31;
    v31 = 0;
    if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v30;
    v30 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v12);
      }
    }
  }
}

uint64_t std::tuple<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>::tuple[abi:sn200100]<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>,0>(uint64_t a1, uint64_t *a2)
{
  *a1 = 0;
  *(a1 + 80) = -1;
  LODWORD(v3) = *(a2 + 80);
  if (v3 != 255)
  {
    if (*(a2 + 80))
    {
      v5 = *a2;
      *a2 = 0;
      *a1 = v5;
      WTF::URL::URL(a1 + 8, a2 + 1);
      v6 = a2[6];
      a2[6] = 0;
      *(a1 + 48) = v6;
      LODWORD(v6) = *(a2 + 14);
      *(a1 + 60) = *(a2 + 30);
      *(a1 + 56) = v6;
      v3 = a2[8];
      a2[8] = 0;
      *(a1 + 64) = v3;
      *(a1 + 72) = *(a2 + 72);
      LOBYTE(v3) = *(a2 + 80);
    }

    else
    {
      *a1 = *a2;
    }

    *(a1 + 80) = v3;
  }

  return a1;
}

uint64_t IPC::AsyncReplyError<std::experimental::fundamentals_v3::expected<WTF::Seconds,WebCore::ResourceError>>::create@<X0>(uint64_t a1@<X8>)
{
  v11 = 0;
  WTF::URL::invalidate(&v11);
  v16 = 0;
  v15 = 0;
  v18 = 1;
  v2 = v12;
  LODWORD(v12) = v12 & 0xFFFFFFFE;
  v3 = v11;
  v11 = 0;
  v21 = v2;
  v22 = v13;
  v14 = 0;
  memset(v23, 0, 14);
  cf = 0;
  v24 = 0;
  v25 = 1;
  v19 = 0;
  v20 = v3;
  *a1 = 0;
  WTF::URL::URL(a1 + 8, &v20);
  v5 = v20;
  *(a1 + 48) = v23[0];
  *(a1 + 56) = v23[1];
  *(a1 + 60) = WORD2(v23[1]);
  *(a1 + 64) = v24;
  *(a1 + 72) = v25;
  *(a1 + 80) = 1;
  v24 = 0;
  v23[0] = 0;
  v20 = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, v4);
  }

  v6 = v19;
  v19 = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, v4);
  }

  v7 = cf;
  cf = 0;
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = v14;
  v14 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v4);
  }

  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v4);
  }

  return 0;
}

WTF::StringImpl *WTF::Function<void ()(WTF::String)>::operator()(uint64_t *a1, WTF::StringImpl **a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 16))(v2, &v6);
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

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, unsigned __int8 *a5)
{
  v28 = *MEMORY[0x1E69E9840];
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
    v14 = *v11 + 8 * v12;
    do
    {
      v15 = *v13;
      v25[0] = 0;
      WTF::Logger::LogSiteIdentifier::toString(&v26, a4);
      v27 = 0;
      WebCore::convertEnumerationToString();
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v24, v25, 2uLL);
      (*(*v15 + 16))(v15, a2, a3, v24);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v24, v16);
      for (i = 6; i != -2; i -= 4)
      {
        v19 = *&v25[i];
        *&v25[i] = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, v17);
        }
      }

      ++v13;
    }

    while (v13 != v14);
  }

  v20 = 1;
  atomic_compare_exchange_strong_explicit(v8, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,WebCore::MediaPlayerReadyState>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this, unsigned __int8 *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  WTF::Logger::LogSiteIdentifier::toString(&v29, this);
  WebCore::convertEnumerationToString();
  *buf = v29;
  v27[0] = v28;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v27, &v30);
  if (v30)
  {
    v9 = v28;
    v28 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v29;
    v29 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = *(a1 + 32);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v12)
    {
      WTF::String::utf8();
      v14 = v27[0] ? v27[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v14;
      _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v12 = v27[0];
      v27[0] = 0;
      if (v12)
      {
        if (*v12 == 1)
        {
          v12 = WTF::fastFree(v12, v13);
        }

        else
        {
          --*v12;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= a2)
    {
      v15 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v16 = *v15;
        if (v16)
        {
          break;
        }

        v17 = *v15;
        atomic_compare_exchange_strong_explicit(v15, &v17, v16 | 1, memory_order_acquire, memory_order_acquire);
        if (v17 == v16)
        {
          v18 = WTF::Logger::observers(v12);
          v19 = *(v18 + 12);
          if (v19)
          {
            v20 = *v18;
            v21 = *v18 + 8 * v19;
            do
            {
              v22 = *v20;
              *buf = 0;
              WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v32 = 0;
              WebCore::convertEnumerationToString();
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, buf, 2uLL);
              (*(*v22 + 16))(v22, a1, a2, v27);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v23);
              for (i = 24; i != -8; i -= 16)
              {
                v25 = *&buf[i];
                *&buf[i] = 0;
                if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v25, v13);
                }
              }

              ++v20;
            }

            while (v20 != v21);
          }

          v26 = 1;
          atomic_compare_exchange_strong_explicit(v15, &v26, 0, memory_order_release, memory_order_relaxed);
          if (v26 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v30;
    v30 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v13);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::MediaPlayerPrivateRemote::GetRawCookies,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F10FCE00;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::MediaPlayerPrivateRemote::GetRawCookies,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCE00;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::MediaPlayerPrivateRemote::GetRawCookies,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&,WTF::ThreadLikeAssertion)::{lambda(WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder)#1},void,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>,IPC::Decoder>::call(uint64_t a1, void *a2, IPC::Decoder *a3, __n128 a4, __n128 a5)
{
  if (a3 && *a3)
  {
    IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v15, a5, a4);
    if (v16 & 1) != 0 || (v12 = *a3, v13 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v14 = *(a3 + 3)) != 0) && v13 && ((*(*v14 + 16))(v14, v12), (v16))
    {
      v8 = *(a1 + 8);
      *(a1 + 8) = 0;
      (*(*v8 + 16))(v8, v15);
      result = (*(*v8 + 8))(v8);
      if (v16)
      {
        return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15, v10);
      }
    }

    else
    {
      return IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::GetRawCookies,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>((a1 + 8), v12, v7);
    }
  }

  else
  {
    v11 = (a1 + 8);

    return IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::GetRawCookies,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(v11, a2, a4);
  }

  return result;
}

uint64_t IPC::Connection::cancelReply<Messages::MediaPlayerPrivateRemote::GetRawCookies,WTF::CompletionHandler<void ()(WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>>(uint64_t *a1, void *a2, __n128 a3)
{
  a3.n128_u64[0] = 0;
  v7 = a3;
  v8 = a3;
  WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v8, a2);
  v4 = *a1;
  *a1 = 0;
  (*(*v4 + 16))(v4, &v7);
  (*(*v4 + 8))(v4);
  return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v7, v5);
}

uint64_t IPC::ArgumentCoder<std::tuple<WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,void>::decode<IPC::Decoder>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q1>, __n128 a4@<Q0>)
{
  IPC::VectorArgumentCoder<false,WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v12, a3, a4);
  if (v14 & 1) != 0 || ((v9 = *a1, v10 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v11 = v10 == 0) : (v11 = 1), !v11 && (result = (*(*result + 16))(result, v9), (v14)))
  {
    *a2 = v12;
    v7 = v13;
    v12 = 0;
    v13 = 0;
    *(a2 + 8) = v7;
    *(a2 + 16) = 1;
    return WTF::Vector<WebCore::Cookie,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v6);
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t IPC::Connection::send<Messages::MediaPlayerPrivateRemote::ActiveSourceBuffersChanged>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v9 = IPC::Encoder::operator new(0x238, a2);
  *v9 = 327;
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = a3;
  *(v9 + 68) = 0;
  *(v9 + 70) = 0;
  *(v9 + 69) = 0;
  IPC::Encoder::encodeHeader(v9);
  v16 = v9;
  v11 = IPC::Connection::sendMessageImpl(a1, &v16, a4, a5);
  v12 = v16;
  v16 = 0;
  if (v12)
  {
    IPC::Encoder::~Encoder(v12, v10);
    bmalloc::api::tzoneFree(v14, v15);
  }

  return v11;
}

void WebCore::PlatformTextTrack::~PlatformTextTrack(WebCore::PlatformTextTrack *this, WTF::StringImpl *a2)
{
  WebCore::PlatformTextTrack::~PlatformTextTrack(this, a2);

  WTF::fastFree(v2, v3);
}

{
  *this = &unk_1F10FCE28;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 3);
  *(this + 3) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

uint64_t IPC::Connection::send<Messages::MediaPlayerPrivateRemote::UpdateCachedState>(uint64_t *a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = IPC::Encoder::operator new(0x238, a2);
  *v10 = 372;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 1) = a3;
  *(v10 + 68) = 0;
  *(v10 + 70) = 0;
  *(v10 + 69) = 0;
  IPC::Encoder::encodeHeader(v10);
  v17 = v10;
  IPC::ArgumentCoder<WebKit::RemoteMediaPlayerState,void>::encode(v10, *a2);
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaPlayerProxy::performTaskAtTime(WTF::MediaTime const&,WTF::CompletionHandler<void ()(std::optional<WTF::MediaTime>)> &&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FCE48;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaPlayerProxy::performTaskAtTime(WTF::MediaTime const&,WTF::CompletionHandler<void ()(std::optional<WTF::MediaTime>)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCE48;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_DWORD *WTF::Detail::CallableWrapper<WebKit::RemoteMediaPlayerProxy::performTaskAtTime(WTF::MediaTime const&,WTF::CompletionHandler<void ()(std::optional<WTF::MediaTime>)> &&)::$_0,void>::call(_DWORD *result)
{
  v1 = *(result + 1);
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      v2 = result + 4;
      ++result[4];
      v3 = *(result + 97);
      if (v3)
      {
        *(result + 97) = 0;
        WebKit::RemoteMediaPlayerProxy::protectedPlayer(&v8, result);
        v9 = WebCore::MediaPlayer::currentTime(v8);
        v10 = v4;
        v11 = v5;
        v12 = 1;
        (*(*v3 + 16))(v3, &v9);
        (*(*v3 + 8))(v3);
        v7 = v8;
        v8 = 0;
        if (v7)
        {
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaPlayer,(WTF::DestructionThread)1>::deref(v7, v6);
        }
      }

      return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v2);
    }
  }

  return result;
}

BOOL WTF::Logger::willLog<WTF::Logger::LogSiteIdentifier,double>(WTF::Logger *a1, _BYTE *a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4, double *a5)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E696EBD0];
  do
  {
    v10 = *v9;
    if (v10)
    {
      return 0;
    }

    v11 = *v9;
    atomic_compare_exchange_strong_explicit(v9, &v11, v10 | 1, memory_order_acquire, memory_order_acquire);
  }

  while (v11 != v10);
  v12 = WTF::Logger::messageHandlerObservers(a1);
  v13 = *(v12 + 12);
  if (v13)
  {
    v14 = *v12;
    v15 = *v12 + 8 * v13;
    do
    {
      v16 = *v14;
      v28[0] = 0;
      v17 = WTF::Logger::LogSiteIdentifier::toString(&v29, a4);
      v18 = *a5;
      v30 = 0;
      WTF::String::number(v31, v17, v18);
      WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v27, v28, 2uLL);
      (*(*v16 + 16))(v16, a2, a3, v27);
      WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v27, v19);
      for (i = 6; i != -2; i -= 4)
      {
        v22 = *&v28[i];
        *&v28[i] = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v20);
        }
      }

      ++v14;
    }

    while (v14 != v15);
  }

  v23 = 1;
  atomic_compare_exchange_strong_explicit(v9, &v23, 0, memory_order_release, memory_order_relaxed);
  if (v23 != 1)
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

WTF::StringImpl *WTF::Logger::log<WTF::Logger::LogSiteIdentifier,double>(uint64_t a1, uint64_t a2, WTF::Logger::LogSiteIdentifier *this, double *a4)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v8 = WTF::Logger::LogSiteIdentifier::toString(&v33, this);
  WTF::String::number(&v32, v8, *a4);
  *buf = v33;
  v31[0] = v32;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v31, &v34);
  if (v34)
  {
    v11 = v32;
    v32 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v10);
    }

    v12 = v33;
    v33 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v10);
    }

    v13 = *(a1 + 32);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      WTF::String::utf8();
      v16 = v31[0] ? v31[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v16;
      _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v14 = v31[0];
      v31[0] = 0;
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

    if (*a1 && *(a1 + 16) >= a2)
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
              v25 = WTF::Logger::LogSiteIdentifier::toString(&buf[8], this);
              v26 = *a4;
              v36 = 0;
              WTF::String::number(v37, v25, v26);
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v31, buf, 2uLL);
              (*(*v24 + 16))(v24, a1, a2, v31);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v31, v27);
              for (i = 24; i != -8; i -= 16)
              {
                v29 = *&buf[i];
                *&buf[i] = 0;
                if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v29, v15);
                }
              }

              ++v22;
            }

            while (v22 != v23);
          }

          v30 = 1;
          atomic_compare_exchange_strong_explicit(v17, &v30, 0, memory_order_release, memory_order_relaxed);
          if (v30 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v34;
    v34 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v15);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

BOOL WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::hasRunnable(uint64_t a1)
{
  v2 = 0;
  v3 = (a1 + 48);
  v4 = 1;
  atomic_compare_exchange_strong_explicit((a1 + 48), &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 48);
  }

  v5 = *(a1 + 96);
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return v5 == 2;
}

mpark *WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::takeResultRunnable(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 96) != 2)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 56);
  *(a2 + 56) = 0;
  *v3 = v6;
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

mpark *WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::takeResult(mpark *result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = (a2 + 48);
  atomic_compare_exchange_strong_explicit((a2 + 48), &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    result = MEMORY[0x19EB01E30](a2 + 48);
  }

  if (*(a2 + 96) != 1)
  {
    mpark::throw_bad_variant_access(result);
  }

  v6 = *(a2 + 72);
  *v3 = *(a2 + 56);
  *(v3 + 1) = v6;
  *(v3 + 4) = *(a2 + 88);
  v7 = 1;
  atomic_compare_exchange_strong_explicit((a2 + 48), &v7, 0, memory_order_release, memory_order_relaxed);
  if (v7 != 1)
  {

    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

WTF::StringImpl *WTF::Logger::log<char [32],WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>,char [21],void const*,char [11],WTF::Logger::LogSiteIdentifier,char [2]>(uint64_t a1, uint64_t a2, uint64_t a3, WTF::Logger::LogSiteIdentifier *a4)
{
  v55[1] = *MEMORY[0x1E69E9840];
  WTF::String::String(&v40, "ThenCallback disconnected from ");
  WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v39, a2);
  WTF::String::String(&v38, " aborting [callback:");
  WTF::LogArgument<void const*>::toString();
  WTF::String::String(&v36, " callSite:");
  v32 = a4;
  WTF::Logger::LogSiteIdentifier::toString(&v35, a4);
  WTF::String::String(&v34, "]");
  v33[0] = v39;
  v46 = v38;
  *buf = v40;
  v44 = v36;
  v45 = v37;
  v42 = v34;
  v43 = v35;
  result = WTF::tryMakeStringFromAdapters<WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>,WTF::StringTypeAdapter<WTF::String,void>>(buf, v33, &v46, &v45, &v44, &v43, &v42, &v41);
  if (v41)
  {
    v9 = v34;
    v34 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }

    v10 = v35;
    v35 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }

    v11 = v36;
    v36 = 0;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v8);
    }

    v12 = v37;
    v37 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v8);
    }

    v13 = v38;
    v38 = 0;
    if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, v8);
    }

    v14 = v39;
    v39 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v8);
    }

    v15 = v40;
    v40 = 0;
    if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v15, v8);
    }

    v16 = *(a1 + 32);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      WTF::String::utf8();
      v19 = v33[0] ? v33[0] + 16 : 0;
      *buf = 136446210;
      *&buf[4] = v19;
      _os_log_impl(&dword_19D52D000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
      v17 = v33[0];
      v33[0] = 0;
      if (v17)
      {
        if (*v17 == 1)
        {
          v17 = WTF::fastFree(v17, v18);
        }

        else
        {
          --*v17;
        }
      }
    }

    if (*a1 && *(a1 + 16) >= 4u)
    {
      v20 = MEMORY[0x1E696EBC0];
      while (1)
      {
        v21 = *v20;
        if (v21)
        {
          break;
        }

        v22 = *v20;
        atomic_compare_exchange_strong_explicit(v20, &v22, v21 | 1, memory_order_acquire, memory_order_acquire);
        if (v22 == v21)
        {
          v23 = WTF::Logger::observers(v17);
          v24 = *(v23 + 12);
          if (v24)
          {
            v25 = *v23;
            v26 = *v23 + 8 * v24;
            do
            {
              v27 = *v25;
              *buf = 0;
              WTF::String::String(&buf[8], "ThenCallback disconnected from ");
              v48 = 0;
              WTF::LogArgument<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>>::toString(&v49, a2);
              v50 = 0;
              WTF::String::String(v51, " aborting [callback:");
              v51[2] = 0;
              WTF::LogArgument<void const*>::toString();
              v51[6] = 0;
              WTF::String::String(v52, " callSite:");
              v52[2] = 0;
              WTF::Logger::LogSiteIdentifier::toString(&v53, v32);
              v54 = 0;
              WTF::String::String(v55, "]");
              WTF::Vector<WTF::JSONLogValue,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v33, buf, 7uLL);
              (*(*v27 + 16))(v27, a1, 4, v33);
              WTF::Vector<std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v33, v28);
              for (i = 104; i != -8; i -= 16)
              {
                v30 = *&buf[i];
                *&buf[i] = 0;
                if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v30, v18);
                }
              }

              ++v25;
            }

            while (v25 != v26);
          }

          v31 = 1;
          atomic_compare_exchange_strong_explicit(v20, &v31, 0, memory_order_release, memory_order_relaxed);
          if (v31 != 1)
          {
            WTF::Lock::unlockSlow(MEMORY[0x1E696EBC0]);
          }

          break;
        }
      }
    }

    result = v41;
    v41 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v18);
      }
    }
  }

  else
  {
    __break(0xC471u);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F10FCE70;
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

uint64_t WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FCE70;
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

WTF::StringImpl *WTF::Detail::CallableWrapper<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase::dispatch(WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>&,WTF::Locker<WTF::Lock,void> &)::{lambda(void)#1},void>::call(WTF::NativePromiseBase *a1)
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
    hasRunnable = WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::hasRunnable(*(a1 + 2));
    v7 = *(a1 + 1);
    v8 = *(a1 + 2);
    if (hasRunnable)
    {
      WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::takeResultRunnable(&v10, v8);
      v9 = v10;
      (*(*v10 + 16))(v11, v10);
      (*(*v7 + 24))(v7, v8, v11);
      return (*(*v9 + 8))(v9);
    }

    else
    {
      WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::takeResult(v11, v8);
      return (*(*v7 + 24))(v7, v8, v11);
    }
  }

  return result;
}

unint64_t WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(void **a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void **WTF::Vector<WTF::Ref<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase,WTF::RawPtrTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>,WTF::DefaultRefDerefTraits<WTF::NativePromise<WebCore::VideoPlaybackQualityMetrics,WebCore::PlatformMediaError,0u>::ThenCallbackBase>>,1ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(void **result, unint64_t a2)
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
      if (v3 + 2 != v4 && v4 != 0)
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

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaResource::shutdown(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FCE98;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaResource::shutdown(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCE98;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

atomic_ullong *WTF::Detail::CallableWrapper<WebKit::RemoteMediaResource::shutdown(void)::$_0,void>::call(atomic_ullong *result, void *a2)
{
  v2 = result[1];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = result[2];
      v5 = *(v3 + 128);
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
      v8 = *(v3 + 104);
      v9 = IPC::Encoder::operator new(0x238, a2);
      *v9 = 362;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v8;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v14 = v9;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v9, v4);
      IPC::Connection::sendMessageImpl(v5, &v14, 0, 0);
      v11 = v14;
      v14 = 0;
      if (v11)
      {
        IPC::Encoder::~Encoder(v11, v10);
        bmalloc::api::tzoneFree(v12, v13);
      }

      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v5, v10);
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteMediaResource::responseReceived(WebCore::ResourceResponse const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,void,WebCore::ShouldContinuePolicyCheck>::~CallableWrapper(void *a1, void *a2)
{
  *a1 = &unk_1F10FCEC0;
  v3 = a1[2];
  a1[2] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[1];
  a1[1] = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaResource::responseReceived(WebCore::ResourceResponse const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,void,WebCore::ShouldContinuePolicyCheck>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F10FCEC0;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteMediaResource::responseReceived(WebCore::ResourceResponse const&,BOOL,WTF::CompletionHandler<void ()(WebCore::ShouldContinuePolicyCheck)> &&)::$_0,void,WebCore::ShouldContinuePolicyCheck>::call(uint64_t a1, unint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 8);
    while (1)
    {
      v5 = *(v4 + 8);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v6 = *(v4 + 8);
      atomic_compare_exchange_strong_explicit((v4 + 8), &v6, v5 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v6 == v5)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 8));
LABEL_7:
    v7 = WTF::fastMalloc(v5, 0x10);
    *v7 = &unk_1F10FCEE8;
    v7[1] = v4;
    v10 = v7;
    WTF::ensureOnMainThread();
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  (*(*v8 + 16))(v8, a2);
  return (*(*v8 + 8))(v8);
}

void *_ZN3WTF6Detail15CallableWrapperIZZN6WebKit19RemoteMediaResource16responseReceivedERKN7WebCore16ResourceResponseEbONS_17CompletionHandlerIFvNS4_25ShouldContinuePolicyCheckEEEEEN3__0clIS9_EEDaT_EUlvE_vJEED1Ev(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F10FCEE8;
  a1[1] = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return a1;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit19RemoteMediaResource16responseReceivedERKN7WebCore16ResourceResponseEbONS_17CompletionHandlerIFvNS4_25ShouldContinuePolicyCheckEEEEEN3__0clIS9_EEDaT_EUlvE_vJEED0Ev(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F10FCEE8;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

void sub_19DBBBCEC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10, int a11, int a12, char a13)
{
  if (a13 == 1)
  {
    if (a10)
    {
      WTF::fastFree(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBBDCC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
{
  v11 = *(v9 - 24);
  *(v9 - 24) = 0;
  if (v11)
  {
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

void sub_19DBBBEC4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBC0BC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11)
{
  v13 = *(v11 - 24);
  *(v11 - 24) = 0;
  if (v13)
  {
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBC1D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBC2C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBC3AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    CFRelease(*(a10 + 8));
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBCB64(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF *a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16)
{
  if (a12)
  {
    if (*a12 == 1)
    {
      WTF::fastFree(a12, a2);
    }

    else
    {
      --*a12;
    }
  }

  if (a16)
  {
    if (atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a16, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBCCEC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12)
{
  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBCDB4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBCFA4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD194(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD384(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD574(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD79C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD89C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBD964(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBDB6C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBDD5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBDF4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBE1C0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBE290(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBE3E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBE5CC(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBE77C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBE96C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBEB5C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBED4C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBEF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBF148(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBF4E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBF770(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBF8E4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBFA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBFAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBFB54(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBFC34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBFD80(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBBFF64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBC2328(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBC2458(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, a2);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBC32D8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t changeContentOffsetBoundedInValidRange(UIScrollView *a1, float s0_0, float a3)
{
  WebCore::FloatPoint::operator CGPoint();
  contentOffsetBoundedInValidRange(a1, v5);
  return [(UIScrollView *)a1 setContentOffset:?];
}

void sub_19DBC4C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, WebCore::IOSurface *a14, uint64_t a15, WebCore::IOSurface *a16)
{
  if (a13)
  {
    (*(*a13 + 8))(a13, a2, a3, a4, a5, a6, a7, a8);
  }

  WTF::RefCounted<WebKit::ViewSnapshot>::deref(v16);
  if (a16)
  {
    WebCore::IOSurface::~IOSurface(a16);
    bmalloc::api::tzoneFree(v18, v19);
  }

  _Unwind_Resume(a1);
}

void sub_19DBC65AC(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if ((a10 & 0x8000000000000) != 0)
  {
    v13 = (a10 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a10 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v13);
      WTF::fastFree(v13, a2);
    }
  }

  if (a12 == 1 && (a11 & 0x8000000000000) != 0)
  {
    v14 = (a11 & 0xFFFFFFFFFFFFLL);
    if (atomic_fetch_add((a11 & 0xFFFFFFFFFFFFLL), 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v14);
      WTF::fastFree(v14, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<WebCore::Color>::operator=[abi:sn200100]<WebCore::Color,void>(uint64_t result, void *a2)
{
  if (*(result + 8) == 1)
  {
    if (result != a2)
    {
      if ((*result & 0x8000000000000) != 0)
      {
        v4 = (*result & 0xFFFFFFFFFFFFLL);
        add = atomic_fetch_add(v4, 0xFFFFFFFF);
        if (add == 1)
        {
          atomic_store(1u, v4);
          v6 = a2;
          v7 = result;
          WTF::fastFree(v4, a2);
          a2 = v6;
          result = v7;
        }
      }

      v2 = *a2;
      *a2 = 0;
      *result = v2;
    }
  }

  else
  {
    *result = 0;
    if (result != a2)
    {
      v3 = *a2;
      *a2 = 0;
      *result = v3;
    }

    *(result + 8) = 1;
  }

  return result;
}

uint64_t WTF::dynamic_objc_cast<WKBaseScrollView>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL WebCore::FloatSize::isZero(WebCore::FloatSize *this)
{
  v1 = *this;
  if (*this != 0.0)
  {
    if (v1 < 0.0)
    {
      v1 = -v1;
    }

    if (v1 >= 0.00000011921)
    {
      return 0;
    }
  }

  v2 = *(this + 1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    if (v2 < 0.0)
    {
      v3 = -v2;
    }

    else
    {
      v3 = *(this + 1);
    }
  }

  return v3 < 0.00000011921;
}

void sub_19DBC74A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (v16)
  {
  }

  _Unwind_Resume(a1);
}

void sub_19DBC8544(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, WTF *a12, id location, WTF *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  v16 = a14;
  a14 = 0;
  if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v16);
    WTF::fastFree(v16, a2);
  }

  objc_destroyWeak(&location);
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v14);
    WTF::fastFree(v14, v17);
  }

  _Unwind_Resume(a1);
}

void sub_19DBC8674()
{
  if (v0)
  {
  }

  JUMPOUT(0x19DBC8644);
}

void *__copy_helper_block_e8_32c90_ZTSKZ76__WKWebView_WKViewInternalIOS___addUpdateVisibleContentRectPreCommitHandler_E4__18(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c90_ZTSKZ76__WKWebView_WKViewInternalIOS___addUpdateVisibleContentRectPreCommitHandler_E4__18(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void sub_19DBC8BD0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBC9E1C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9)
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

void sub_19DBCA5F0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c111_ZTSKZ97__WKWebView_WKViewInternalIOS___firePresentationUpdateForPendingStableStatePresentationCallbacks_E4__22(void *result, uint64_t a2)
{
  v2 = *(a2 + 32);
  result[4] = v2;
  if (v2)
  {
    return v2;
  }

  return result;
}

void __destroy_helper_block_e8_32c111_ZTSKZ97__WKWebView_WKViewInternalIOS___firePresentationUpdateForPendingStableStatePresentationCallbacks_E4__22(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void sub_19DBCACFC(_Unwind_Exception *exception_object)
{
  if (v4)
  {

    if (!v3)
    {
LABEL_3:
      if (!v2)
      {
LABEL_8:
        if (v1)
        {
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:

      goto LABEL_8;
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  if (!v2)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_19DBCAF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_e8_32c74_ZTSKZ60__WKWebView_WKViewInternalIOS___updatePageLoadObserverState_E4__27(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = v4;
  }

  result = *(a2 + 40);
  v7 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v7;
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c74_ZTSKZ60__WKWebView_WKViewInternalIOS___updatePageLoadObserverState_E4__27(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v1)
  {
  }
}

void sub_19DBCC1F8(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, ...)
{
  va_start(va, a23);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(va, a2);
  _Unwind_Resume(a1);
}

void sub_19DBCC5B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF::StringImpl *a20, WTF::StringImpl *a21)
{
  if (a12)
  {
  }

  v24 = *(v22 - 80);
  *(v22 - 80) = 0;
  if (v24)
  {
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a21 && atomic_fetch_add_explicit(a21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a21, a2);
  }

  if (a20 && atomic_fetch_add_explicit(a20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a20, a2);
  }

  if (v21)
  {
    if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v21, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBCC9AC(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, WTF::StringImpl *a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, WTF::StringImpl *a17, WTF::StringImpl *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, WTF::StringImpl *a23, ...)
{
  va_start(va, a23);
  if (a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a10)
  {
    if (atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a10, a2);
    }
  }

  WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(va, a2);
  _Unwind_Resume(a1);
}

void sub_19DBCD4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock)
{
  _Block_release(aBlock);
  _Block_release(v13);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c92_ZTSKZ78__WKWebView_WKPrivateIOS___requestActivatedElementAtPosition_completionBlock__E4__31(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void sub_19DBCE9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFTypeRef a11, WebCore::IOSurface *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
    CFRelease(a11);
  }

  if (a12)
  {
    WebCore::IOSurface::~IOSurface(a12);
    bmalloc::api::tzoneFree(v31, v32);
  }

  v33 = *(v29 - 184);
  *(v29 - 184) = 0;
  if (v33)
  {
    WebCore::IOSurface::~IOSurface(v33);
    bmalloc::api::tzoneFree(v34, v35);
  }

  kdebug_trace();
  _Unwind_Resume(a1);
}

void sub_19DBCF29C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  _Block_release(aBlock);
  _Block_release(v14);
  _Unwind_Resume(a1);
}

void sub_19DBCF38C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c113_ZTSKZ99__WKWebView_WKPrivateIOS___accessibilityRetrieveRectsAtSelectionOffset_withText_completionHandler__E4__38(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 32));
  *(a1 + 32) = result;
  return result;
}

void sub_19DBCF8D0(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  WTF::fastFree(v10, a2);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19DBCF9E8(_Unwind_Exception *a1, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  WTF::fastFree(v10, a2);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_19DBCFD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock)
{
  _Block_release(aBlock);
  objc_destroyWeak((v16 + 32));
  _Block_release(a10);
  objc_destroyWeak(&a9);
  _Unwind_Resume(a1);
}

void sub_19DBCFFCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_32c91_ZTSKZ77__WKWebView_WKTestingIOS___requestTextInputContextsInRect_completionHandler__E4__46(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  objc_copyWeak((a1 + 32), (a2 + 32));
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c91_ZTSKZ77__WKWebView_WKTestingIOS___requestTextInputContextsInRect_completionHandler__E4__46(uint64_t a1)
{
  _Block_release(*(a1 + 40));

  objc_destroyWeak((a1 + 32));
}

void sub_19DBD041C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t dumpUIView(WTF::TextStream *a1, UIView *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  WTF::TextStream::operator<<();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  MEMORY[0x19EB02040](&v50, v5);
  if (v50)
  {
    v6 = *(v50 + 1);
    v7 = *(v50 + 1) | (((*(v50 + 4) >> 2) & 1) << 32);
  }

  else
  {
    v6 = 0;
    v7 = 0x100000000;
  }

  v8 = &unk_1E7631E78;
  v9 = 224;
  do
  {
    if (WTF::operator==(v6, v7, *(v8 - 1), *v8))
    {
      v49 = v50;
      goto LABEL_11;
    }

    v8 += 2;
    v9 -= 16;
  }

  while (v9);
  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v11 = v50;
  v49 = v51;
  v50 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

LABEL_11:
  WTF::TextStream::operator<<();
  WTF::TextStream::operator<<();
  v13 = v49;
  v49 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  [(CALayer *)[(UIView *)a2 layer] bounds];
  LOBYTE(v44) = 93;
  WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>("[x: ", 5, " y: ", 5, " width: ", 9, " height: ", 0xA, &v51, v44);
  WTF::TextStream::dumpProperty<WTF::String>(a1, "layer bounds", 13, &v51);
  v15 = v51;
  v51 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  [(CALayer *)[(UIView *)a2 layer] position];
  if (v16 != 0.0 || ([(CALayer *)[(UIView *)a2 layer] position], v17 != 0.0))
  {
    [(CALayer *)[(UIView *)a2 layer] position];
    WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>("[x: ", 5, " y: ", 5, 93, &v51, v18, v18);
    WTF::TextStream::dumpProperty<WTF::String>(a1, "layer position", 15, &v51);
    v20 = v51;
    v51 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v19);
      }
    }
  }

  [(CALayer *)[(UIView *)a2 layer] zPosition];
  if (v21 != 0.0)
  {
    [(CALayer *)[(UIView *)a2 layer] zPosition];
    v51 = v22;
    WTF::tryMakeString<double>(&v50);
    if (!v50)
    {
      goto LABEL_55;
    }

    WTF::TextStream::dumpProperty<WTF::String>(a1, "layer zPosition", 16, &v50);
    v24 = v50;
    v50 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }
  }

  [(CALayer *)[(UIView *)a2 layer] anchorPoint];
  if (v25 != 0.5 || ([(CALayer *)[(UIView *)a2 layer] anchorPoint], v26 != 0.5))
  {
    [(CALayer *)[(UIView *)a2 layer] anchorPoint];
    WTF::makeString<WTF::ASCIILiteral,double,WTF::ASCIILiteral,double,char>("[x: ", 5, " y: ", 5, 93, &v51, v27, v27);
    WTF::TextStream::dumpProperty<WTF::String>(a1, "layer anchorPoint", 18, &v51);
    v29 = v51;
    v51 = 0;
    if (v29)
    {
      if (atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v29, v28);
      }
    }
  }

  [(CALayer *)[(UIView *)a2 layer] anchorPointZ];
  if (v30 != 0.0)
  {
    [(CALayer *)[(UIView *)a2 layer] anchorPointZ];
    v51 = v31;
    WTF::tryMakeString<double>(&v50);
    if (!v50)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBD0A30);
    }

    WTF::TextStream::dumpProperty<WTF::String>(a1, "layer anchorPointZ", 19, &v50);
    v33 = v50;
    v50 = 0;
    if (v33 && atomic_fetch_add_explicit(v33, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v33, v32);
    }
  }

  [(CALayer *)[(UIView *)a2 layer] cornerRadius];
  if (v34 != 0.0)
  {
    [(CALayer *)[(UIView *)a2 layer] cornerRadius];
    v51 = v35;
    WTF::tryMakeString<double>(&v50);
    if (v50)
    {
      WTF::TextStream::dumpProperty<WTF::String>(a1, "layer cornerRadius", 19, &v50);
      v37 = v50;
      v50 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v36);
      }

      goto LABEL_42;
    }

LABEL_55:
    __break(0xC471u);
    JUMPOUT(0x19DBD0A28);
  }

LABEL_42:
  result = [(NSArray *)[(UIView *)a2 subviews] count];
  if (result)
  {
    WTF::TextStream::startGroup(a1);
    WTF::TextStream::operator<<();
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v39 = [(UIView *)a2 subviews];
    v40 = [(NSArray *)v39 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v40)
    {
      v41 = *v46;
      do
      {
        for (i = 0; i != v40; ++i)
        {
          if (*v46 != v41)
          {
            objc_enumerationMutation(v39);
          }

          v43 = *(*(&v45 + 1) + 8 * i);
          WTF::TextStream::startGroup(a1);
          dumpUIView(a1, v43);
          WTF::TextStream::endGroup(a1);
        }

        v40 = [(NSArray *)v39 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v40);
    }

    return WTF::TextStream::endGroup(a1);
  }

  return result;
}

void sub_19DBD0D34(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, WTF::StringImpl *a12, WTF::StringImpl *a13)
{
  if (a10 && atomic_fetch_add_explicit(a10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a10, a2);
  }

  if (a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBD11E8(_Unwind_Exception *a1)
{
  v2 = v1;
  _Block_release(v2);
  _Block_release(0);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_e8_32c84_ZTSKZL25scrollViewBackgroundColorP9WKWebView32AllowPageBackgroundColorOverrideE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[3].n128_u64[0] = a2[3].n128_u64[0];
  a1[2] = result;
  return result;
}

void sub_19DBD12CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBD15FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBD1790(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBD1A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  if (a11)
  {
  }

  _Unwind_Resume(exception_object);
}

dispatch_queue_t ___ZL21pageLoadObserverQueuev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  global_queue = dispatch_get_global_queue(9, 0);
  result = dispatch_queue_create_with_target_V2("com.apple.WebKit.pageLoadObserver", v0, global_queue);
  qword_1ED6424E0 = result;
  return result;
}

const void *WTF::dynamic_cf_cast<__CFArray const*>(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CFArrayGetTypeID())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t WTF::RefCounted<anonymous namespace::WebKitClientAppInfo>::deref(uint64_t this, void *a2)
{
  v2 = this;
  if (*this == 1)
  {
    v3 = *(this + 56);
    *(this + 56) = 0;
    if (v3)
    {
    }

    v4 = *(v2 + 5);
    *(v2 + 5) = 0;
    if (v4)
    {
    }

    if (*v2 == 1)
    {

      return WTF::fastFree(v2, a2);
    }

    else
    {
      this = 191;
      __break(0xC471u);
    }
  }

  else
  {
    --*this;
  }

  return this;
}

WTF::StringImpl *WTF::BlockPtr<void ()(NSString *,NSString *,BOOL *)>::fromCallable<viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0>(viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0)::{lambda(void *,NSString *,NSString *,BOOL *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"-[WKWebView _overrideViewportWithArguments:]: Keys and values must all be NSStrings."];
  }

  MEMORY[0x19EB02040](&v12, a2);
  MEMORY[0x19EB02040](&v11, a3);
  v5 = v11;
  if (v11)
  {
    v5 = ((*(v11 + 4) >> 2) & 1);
  }

  v6 = WTF::fastMalloc(v5, 0x10);
  *v6 = &unk_1F10FD380;
  v10 = v6;
  WebCore::setViewportFeature();
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v8 = v11;
  v11 = 0;
  if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v8, v7);
  }

  result = v12;
  v12 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v7);
    }
  }

  return result;
}

void sub_19DBD1D7C(_Unwind_Exception *exception_object, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a12)
  {
    if (atomic_fetch_add_explicit(a12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(a12, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

WTF *WTF::Detail::CallableWrapper<viewportArgumentsFromDictionary(NSDictionary<NSString *,NSString *> *)::$_0::operator() const(NSString *,NSString *,BOOL *)::{lambda(WebCore::ViewportErrorCode,WTF::String const&)#1},void,WebCore::ViewportErrorCode,WTF::String const&>::call(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WTF::String::utf8();
  if (v6)
  {
    v3 = v6 + 16;
  }

  else
  {
    v3 = 0;
  }

  NSLog(&cfstr_WkwebviewOverr_0.isa, v3);
  result = v6;
  if (v6)
  {
    if (*v6 == 1)
    {
      return WTF::fastFree(v6, v4);
    }

    else
    {
      --*v6;
    }
  }

  return result;
}

void sub_19DBD1E84(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF *a10)
{
  if (a10)
  {
    if (*a10 == 1)
    {
      WTF::fastFree(a10, a2);
    }

    else
    {
      --*a10;
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19DBD21B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WebCore::IOSurface *a10)
{
  if (a10)
  {
    WebCore::IOSurface::~IOSurface(a10);
    bmalloc::api::tzoneFree(v11, v12);
  }

  _Unwind_Resume(exception_object);
}

void WebKit::RemoteMediaResourceLoader::~RemoteMediaResourceLoader(WebKit::RemoteMediaResourceLoader *this, void *a2)
{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    if (atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v3);
      WTF::fastFree(v3, a2);
    }
  }
}

{
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  bmalloc::api::tzoneFree(this, a2);
}

_DWORD *WebKit::RemoteMediaResourceLoader::requestResource@<X0>(_DWORD *result@<X0>, WebCore::ResourceRequest *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = *(result + 2);
  if (v4 && (result = *(v4 + 8)) != 0)
  {
    v5 = result + 4;
    ++result[4];
    WebKit::RemoteMediaPlayerProxy::requestResource(result, a2, a3, a4);

    return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v5);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

WTF::StringImpl *WebKit::RemoteMediaResourceLoader::sendH2Ping(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  if (v4 && (v5 = *(v4 + 8)) != 0)
  {
    v6 = (v5 + 16);
    ++*(v5 + 16);
    WebKit::RemoteMediaPlayerProxy::sendH2Ping(v5, a2, a3);

    return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v6);
  }

  else
  {
    WebCore::internalError();
    v27 = v19;
    v26 = v18;
    *v22 = *v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v28 = cf;
    v29 = v21;
    v30 = 1;
    v8 = *a3;
    *a3 = 0;
    (*(*v8 + 16))(v8, v22);
    (*(*v8 + 8))(v8);
    if (v30 && v30 != 255)
    {
      v10 = v28;
      v28 = 0;
      if (v10)
      {
        CFRelease(v10);
      }

      v11 = v25;
      v25 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v9);
      }

      v12 = v22[1];
      v22[1] = 0;
      if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v9);
      }

      v13 = v22[0];
      v22[0] = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }
    }

    return 0;
  }
}

void WebKit::RemoteMediaResourceManager::~RemoteMediaResourceManager(atomic_uchar *this, unint64_t a2)
{
  v4 = 0;
  *this = &unk_1F10FD6A8;
  v3 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](this + 16, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  v6 = WTF::fastMalloc(v4, 0x10);
  *v6 = &unk_1F10FDD00;
  v6[1] = v5;
  v11 = v6;
  WTF::callOnMainRunLoop();
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v8 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  v9 = *(this + 4);
  *(this + 4) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v9, v7);
  }

  v10 = *(this + 3);
  if (v10)
  {
    WTF::HashTable<unsigned long long,WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>>,WTF::DefaultHash<unsigned long long>,WTF::HashMap<unsigned long long,WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>,WTF::DefaultHash<unsigned long long>,WTF::HashTraits<unsigned long long>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::NetworkDataTaskCocoa,WTF::NoTaggingTraits<WebKit::NetworkDataTaskCocoa>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<unsigned long long>,WTF::FastMalloc>::deallocateTable(v10, v7);
  }
}

{
  WebKit::RemoteMediaResourceManager::~RemoteMediaResourceManager(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_ullong *WebKit::RemoteMediaResourceManager::initializeConnection(atomic_ullong *this, atomic_ullong *a2)
{
  v2 = a2;
  v3 = this;
  v4 = this[4];
  if (v4)
  {
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
    if (v4 == v2)
    {
      v2 = v4;
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2, a2);
    }

    IPC::Connection::removeWorkQueueMessageReceiver(v4, 0x63u, 0);
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!a2)
    {
      return this;
    }

LABEL_8:
    while (1)
    {
      v7 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v8 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v8, v7 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v8 == v7)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_12:
  this = v3[4];
  v3[4] = v2;
  if (this)
  {
    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this, a2);
    v2 = v3[4];
  }

  if (v2)
  {
    while (1)
    {
      v9 = *v2;
      if ((*v2 & 1) == 0)
      {
        break;
      }

      v10 = *v2;
      atomic_compare_exchange_strong_explicit(v2, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v10 == v9)
      {
        goto LABEL_19;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
  }

LABEL_19:
  if (v4)
  {
    this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v4, a2);
  }

  if (v2)
  {
    WebKit::RemoteMediaResourceLoader::defaultQueue(&v12);
    IPC::Connection::addWorkQueueMessageReceiver(v2, 0x63, v12, v3, 0);
    v11 = v12;
    v12 = 0;
    if (v11)
    {
      (*(*v11 + 40))(v11);
    }

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2, a2);
  }

  return this;
}

atomic_uchar *WebKit::RemoteMediaResourceManager::addMediaResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v14 = a2;
  v5 = (a1 + 16);
  atomic_compare_exchange_strong_explicit((a1 + 16), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  v12 = a3;
  v7 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock((a3 + 8), v6);
  v13 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v7);
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>((a1 + 24), &v14, &v12, v11);
  result = v13;
  v13 = 0;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, v8);
  }

  v10 = 1;
  atomic_compare_exchange_strong_explicit(v5, &v10, 0, memory_order_release, memory_order_relaxed);
  if (v10 != 1)
  {
    return WTF::Lock::unlockSlow(v5);
  }

  return result;
}

atomic_uchar *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>@<X0>(atomic_uchar *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBD3854);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 2);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = &v9[3 * v14];
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
        v24 = &v9[3 * *(v9 - 1)];
        goto LABEL_25;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = &v9[3 * v14];
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      v17[2] = 0;
      --*(*v8 - 4);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v20 = *a3;
  v19 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  result = v15[2];
  v15[2] = v19;
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(result, a2);
  }

  v15[1] = v20;
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
LABEL_21:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v21 = *v8;
      if (*v8)
      {
        LODWORD(v26) = *(v21 - 1);
      }

      else
      {
        LODWORD(v26) = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_21;
  }

  v24 = &v21[3 * v26];
  v23 = 1;
LABEL_25:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

void *WebKit::RemoteMediaResourceManager::removeMediaResource(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v9 = a2;
  v4 = (a1 + 16);
  atomic_compare_exchange_strong_explicit((a1 + 16), &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>((a1 + 24), &v9);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = (v6 + 24 * *(v6 - 4));
    if (v7 == result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!result)
    {
      goto LABEL_10;
    }

    v7 = 0;
  }

  if (v7 != result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ThreadSafeWeakPtr<WebKit::RemoteMediaResource,WTF::NoTaggingTraits<WebKit::RemoteMediaResource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaResourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove((a1 + 24), result);
  }

LABEL_10:
  v8 = 1;
  atomic_compare_exchange_strong_explicit(v4, &v8, 0, memory_order_release, memory_order_relaxed);
  if (v8 != 1)
  {
    return WTF::Lock::unlockSlow(v4);
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaResourceManager::resourceForId(atomic_uchar *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = (a2 + 16);
  atomic_compare_exchange_strong_explicit((a2 + 16), &v6, 1u, memory_order_acquire, memory_order_acquire);
  if (v6)
  {
    result = MEMORY[0x19EB01E30](a2 + 16);
  }

  if (a3 == -1 || !a3)
  {
    __break(0xC471u);
    JUMPOUT(0x19DBD3A98);
  }

  v8 = *(a2 + 24);
  if (v8)
  {
    v9 = *(v8 - 8);
    v10 = (~(a3 << 32) + a3) ^ ((~(a3 << 32) + a3) >> 22);
    v11 = 9 * ((v10 + ~(v10 << 13)) ^ ((v10 + ~(v10 << 13)) >> 8));
    v12 = (v11 ^ (v11 >> 15)) + ~((v11 ^ (v11 >> 15)) << 27);
    v13 = v9 & ((v12 >> 31) ^ v12);
    v14 = *(v8 + 24 * v13);
    if (v14 == a3)
    {
LABEL_10:
      v16 = v8 + 24 * v13;
      result = *(v16 + 16);
      if (result)
      {
        v17 = *(v16 + 8);
        result = WTF::ThreadSafeWeakPtrControlBlock::weakRef(result);
        if (result)
        {
          v18 = result;
          WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::LibWebRTCCodecsProxy>(v5, result, v17);
          result = WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v18, v19);
          goto LABEL_14;
        }
      }
    }

    else
    {
      v15 = 1;
      while (v14)
      {
        v13 = (v13 + v15) & v9;
        v14 = *(v8 + 24 * v13);
        ++v15;
        if (v14 == a3)
        {
          goto LABEL_10;
        }
      }
    }
  }

  *v5 = 0;
LABEL_14:
  v20 = 1;
  atomic_compare_exchange_strong_explicit(v7, &v20, 0, memory_order_release, memory_order_relaxed);
  if (v20 != 1)
  {

    return WTF::Lock::unlockSlow(v7);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaResourceManager::responseReceived(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t *a5)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v15);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  WebKit::RemoteMediaResourceManager::resourceForId(&v15, a1, a2);
  v11 = v15;
  if (v15)
  {
    WebKit::RemoteMediaResource::responseReceived(v15, a3, a4, a5);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v11 + 8), v12);
  }

  else
  {
    v14 = *a5;
    *a5 = 0;
    (*(*v14 + 16))(v14, 0);
    return (*(*v14 + 8))(v14);
  }
}

WTF::StringImpl *WebKit::RemoteMediaResourceManager::redirectReceived(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(v25);
  v10 = v25[0];
  v25[0] = 0;
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  WebKit::RemoteMediaResourceManager::resourceForId(&v35, a1, a2);
  v11 = v35;
  if (v35)
  {
    WebKit::RemoteMediaResource::redirectReceived(v35, a3, a4, a5);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v11 + 1, v12);
  }

  else
  {
    WebCore::ResourceRequest::ResourceRequest(v25);
    v14 = *a5;
    *a5 = 0;
    (*(*v14 + 16))(v14, v25);
    (*(*v14 + 8))(v14);
    v16 = cf;
    cf = 0;
    if (v16)
    {
      CFRelease(v16);
    }

    v17 = v33;
    v33 = 0;
    if (v17)
    {
      WTF::RefCounted<WebCore::FormData>::deref(v17);
    }

    v18 = v32;
    v32 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v15);
    }

    v19 = v31;
    v31 = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v15);
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v15);
    WTF::Vector<WebCore::HTTPHeaderMap::UncommonHeader,0ul,WTF::CrashOnOverflow,0ul,WTF::FastMalloc>::~Vector(v29, v20);
    WTF::Vector<WebCore::HTTPHeaderMap::CommonHeader,0ul,WTF::CrashOnOverflow,6ul,WTF::FastMalloc>::~Vector(&v28, v21);
    v23 = v27;
    v27 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v22);
    }

    v24 = v26;
    v26 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v22);
    }

    result = v25[0];
    v25[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v22);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaResourceManager::dataSent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  result = WebKit::RemoteMediaResourceManager::resourceForId(&v12, a1, a2);
  v10 = v12;
  if (v12)
  {
    WebKit::RemoteMediaResource::dataSent(v12, a3, a4);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v10 + 1, v11);
  }

  return result;
}

void WebKit::RemoteMediaResourceManager::dataReceived(uint64_t a1, uint64_t a2, IPC::SharedBufferReference *a3, uint64_t *a4)
{
  WebKit::RemoteMediaResourceManager::resourceForId(&v18, a1, a2);
  v6 = v18;
  if (v18)
  {
    IPC::SharedBufferReference::sharedCopy(&v15, a3);
    if (v15)
    {
      WebCore::SharedMemory::createHandle();
      if ((v17 & 1) == 0)
      {
        LOBYTE(v13[0]) = 0;
        v14 = 0;
        v11 = *a4;
        *a4 = 0;
        (*(*v11 + 16))(v11, v13);
        (*(*v11 + 8))(v11);
        if (v14 == 1)
        {
          WTF::MachSendRight::~MachSendRight(v13);
        }

        goto LABEL_13;
      }

      WebCore::SharedMemory::createSharedBuffer(v13, v15);
      WebKit::RemoteMediaResource::dataReceived(v6, v13[0]);
      v7 = v13[0];
      v13[0] = 0;
      if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v7 + 2);
        (*(*v7 + 8))(v7);
      }
    }

    else
    {
      v16[0] = 0;
      v17 = 0;
    }

    v9 = *a4;
    *a4 = 0;
    (*(*v9 + 16))(v9, v16);
    (*(*v9 + 8))(v9);
LABEL_13:
    if (v17 == 1)
    {
      WTF::MachSendRight::~MachSendRight(v16);
    }

    v12 = v15;
    v15 = 0;
    if (v12)
    {
      WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v12);
    }

    if (v18)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref((v18 + 8), v10);
    }

    return;
  }

  v16[0] = 0;
  v17 = 0;
  v8 = *a4;
  *a4 = 0;
  (*(*v8 + 16))(v8, v16);
  (*(*v8 + 8))(v8);
  if (v17 == 1)
  {
    WTF::MachSendRight::~MachSendRight(v16);
  }
}

atomic_uchar *WebKit::RemoteMediaResourceManager::accessControlCheckFailed(uint64_t a1, uint64_t a2, const WebCore::ResourceError *a3)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v10);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  result = WebKit::RemoteMediaResourceManager::resourceForId(&v10, a1, a2);
  v8 = v10;
  if (v10)
  {
    WebKit::RemoteMediaResource::accessControlCheckFailed(v10, a3);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v8 + 1, v9);
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaResourceManager::loadFailed(uint64_t a1, uint64_t a2, const WebCore::ResourceError *a3)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v10);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  result = WebKit::RemoteMediaResourceManager::resourceForId(&v10, a1, a2);
  v8 = v10;
  if (v10)
  {
    WebKit::RemoteMediaResource::loadFailed(v10, a3);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v8 + 1, v9);
  }

  return result;
}

atomic_uchar *WebKit::RemoteMediaResourceManager::loadFinished(uint64_t a1, uint64_t a2, const WebCore::NetworkLoadMetrics *a3)
{
  WebKit::RemoteMediaResourceLoader::defaultQueue(&v10);
  v6 = v10;
  v10 = 0;
  if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  result = WebKit::RemoteMediaResourceManager::resourceForId(&v10, a1, a2);
  v8 = v10;
  if (v10)
  {
    WebKit::RemoteMediaResource::loadFinished(v10, a3);
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::PlatformMediaResource,(WTF::DestructionThread)0>::deref(v8 + 1, v9);
  }

  return result;
}

WebKit::RemoteMediaSourceProxy *WebKit::RemoteMediaSourceProxy::RemoteMediaSourceProxy(WebKit::RemoteMediaSourceProxy *a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1 + 16;
  *a1 = &unk_1F10FD6F0;
  *(a1 + 1) = 3;
  *(a1 + 2) = &unk_1F10FD770;
  *(a1 + 3) = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a2 + 8), a2);
  v9 = *(a2 + 8);
  atomic_fetch_add(v9, 1u);
  *(a1 + 4) = v9;
  *(a1 + 5) = a3;
  *(a1 + 6) = 0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a4 + 8), a4);
  v10 = *(a4 + 8);
  atomic_fetch_add(v10, 1u);
  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
  *(a1 + 7) = v10;
  WebKit::RemoteMediaSourceProxy::connectionToWebProcess(&v17, a1);
  v11 = *(a1 + 5);
  v15[0] = 104;
  v15[1] = v11;
  WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>(v17 + 9, v15, v8, v16);
  v13 = v17;
  v17 = 0;
  if (v13)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v13 + 2, v12);
  }

  v15[0] = *(a1 + 5);
  v17 = a1;
  WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::RemoteMediaSourceIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::RemoteMediaSourceProxy,WTF::RawPtrTraits<WebKit::RemoteMediaSourceProxy>,WTF::DefaultRefDerefTraits<WebKit::RemoteMediaSourceProxy>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::RemoteMediaSourceProxy*>((a2 + 48), v15, &v17, v16);
  return a1;
}

atomic_uchar *WebKit::RemoteMediaSourceProxy::connectionToWebProcess@<X0>(uint64_t *__return_ptr a1@<X8>, atomic_uchar *this@<X0>)
{
  v2 = *(this + 4);
  if (v2 && (v3 = *(v2 + 8)) != 0)
  {
    v4 = *(v3 + 16);
    *(v3 + 16) = v4 + 1;
    this = *(v3 + 40);
    if (this)
    {
      this = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(this, *(v3 + 32), a1);
      v5 = *(v3 + 16);
      v4 = v5 - 1;
      if (v5 != 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      *a1 = 0;
      if (v4)
      {
LABEL_5:
        *(v3 + 16) = v4;
        return this;
      }
    }

    v6 = *(*v3 + 24);

    return v6(v3);
  }

  else
  {
    *a1 = 0;
  }

  return this;
}

void WebKit::RemoteMediaSourceProxy::~RemoteMediaSourceProxy(unsigned int **this)
{
  WebKit::RemoteMediaSourceProxy::disconnect(this);
  v3 = *(this + 19);
  if (v3)
  {
    v4 = this[8];
    v5 = 8 * v3;
    do
    {
      v6 = *v4;
      *v4 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivateClient,(WTF::DestructionThread)0>::deref((v6 + 8), v2);
      }

      v4 += 2;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = this[8];
  if (v7)
  {
    this[8] = 0;
    *(this + 18) = 0;
    WTF::fastFree(v7, v2);
  }

  v8 = this[7];
  this[7] = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v2);
  }

  v9 = this[6];
  this[6] = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v9 + 1, v2);
  }

  v10 = this[4];
  this[4] = 0;
  if (v10 && atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v10);
    WTF::fastFree(v10, v2);
  }

  this[2] = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v2);
}

{
  WebKit::RemoteMediaSourceProxy::~RemoteMediaSourceProxy(this);

  bmalloc::api::tzoneFree(v1, v2);
}

unsigned int *WebKit::RemoteMediaSourceProxy::disconnect(WebKit::RemoteMediaSourceProxy *this)
{
  result = WebKit::RemoteMediaSourceProxy::connectionToWebProcess(&v5, this);
  if (v5)
  {
    IPC::MessageReceiverMap::removeMessageReceiver(v5 + 64, 0x68u, *(this + 5));
    result = *(this + 4);
    *(this + 4) = 0;
    if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result);
      result = WTF::fastFree(result, v3);
    }

    v4 = v5;
    v5 = 0;
    if (v4)
    {
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v4 + 16), v3);
    }
  }

  return result;
}

void non-virtual thunk toWebKit::RemoteMediaSourceProxy::~RemoteMediaSourceProxy(unsigned int **this)
{
  WebKit::RemoteMediaSourceProxy::~RemoteMediaSourceProxy(this - 2);
}

{
  WebKit::RemoteMediaSourceProxy::~RemoteMediaSourceProxy(this - 2);

  bmalloc::api::tzoneFree(v1, v2);
}

unsigned int *WebKit::RemoteMediaSourceProxy::setMediaPlayers(WebKit::RemoteMediaSourceProxy *this, WebKit::RemoteMediaPlayerProxy *a2, WebCore::MediaPlayerPrivateInterface *a3)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v7 = *(a2 + 1);
  atomic_fetch_add(v7, 1u);
  result = *(this + 7);
  *(this + 7) = v7;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v6);
  }

  v9 = *(this + 19);
  if (v9)
  {
    v10 = *(this + 8);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      result = WebKit::RemoteSourceBufferProxy::setMediaPlayer(v12, a2);
      v11 -= 8;
    }

    while (v11);
  }

  v13 = *(this + 6);
  if (v13)
  {
    v14 = v13 + 1;
    while (1)
    {
      v15 = *v14;
      if ((*v14 & 1) == 0)
      {
        break;
      }

      v16 = *v14;
      atomic_compare_exchange_strong_explicit(v14, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v14);
LABEL_13:
    (*(*v13 + 24))(v13, a3);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v13 + 1, v17);
  }

  return result;
}

unsigned int *WebKit::RemoteSourceBufferProxy::setMediaPlayer(WebKit::RemoteSourceBufferProxy *this, WebKit::RemoteMediaPlayerProxy *a2)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v5 = *(a2 + 1);
  atomic_fetch_add(v5, 1u);
  result = *(this + 8);
  *(this + 8) = v5;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, v4);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::setPrivateAndOpen(atomic_ullong *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = result[6];
  result[6] = v2;
  if (v3)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref((v3 + 8), a2);
  }

  return result;
}

uint64_t WebKit::RemoteMediaSourceProxy::waitForTarget@<X0>(atomic_uchar *this@<X0>, const WebCore::SeekTarget *a2@<X1>, uint64_t **a3@<X8>)
{
  WebKit::RemoteMediaSourceProxy::connectionToWebProcess(&v22, this);
  if (v22)
  {
    v6 = *(v22 + 56);
    v7 = *(this + 5);
    v27 = 0;
    *&v28 = 0;
    *(&v28 + 1) = "sendWithPromisedReply";
    *&v29 = 0;
    WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v24, 0, &v27, "sendWithPromisedReply");
    v8 = v24;
    if (v24)
    {
      atomic_fetch_add(v24 + 2, 1u);
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v8;
    v24 = 0;
    v28 = v25;
    v29 = v26;
    v10 = WTF::fastMalloc(v8, 0x30);
    *v10 = &unk_1F10FDD28;
    v10[1] = v9;
    v27 = 0;
    v11 = v29;
    *(v10 + 1) = v28;
    *(v10 + 2) = v11;
    v23[0] = v10;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v23[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v27);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 379;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v7;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v27 = v13;
      IPC::ArgumentCoder<WebCore::SeekTarget,void>::encode(v13, a2);
      IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v6, &v27, v23, 0, 0);
      v15 = v27;
      v27 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v14);
        bmalloc::api::tzoneFree(v20, v21);
      }

      v16 = v23[0];
      v23[0] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      result = WTF::NativePromiseProducer<WTF::MediaTime,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v24);
      v19 = v22;
      v22 = 0;
      if (v19)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16), v18);
      }
    }
  }

  else
  {
    LOBYTE(v24) = 4;
    v27 = 0;
    *&v28 = 0;
    *(&v28 + 1) = "waitForTarget";
    *&v29 = 0;
    return WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v27, a3, &v24);
  }

  return result;
}

WTF::Lock *WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>@<X0>(WTF::Logger::LogSiteIdentifier *a1@<X1>, uint64_t *a2@<X8>, char *a3@<X0>)
{
  v6 = WTF::fastMalloc(a2, 0x88);
  v7 = WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::NativePromise(v6, a1);
  *a2 = v7;

  return WTF::NativePromise<WTF::MediaTime,WebCore::PlatformMediaError,0u>::reject<WebCore::PlatformMediaError,std::enable_if<true,void>>(v7, a3, a1);
}

uint64_t WebKit::RemoteMediaSourceProxy::seekToTime@<X0>(atomic_uchar *this@<X0>, const WTF::MediaTime *a2@<X1>, uint64_t *a3@<X8>)
{
  WebKit::RemoteMediaSourceProxy::connectionToWebProcess(&v22, this);
  if (v22)
  {
    v6 = *(v22 + 56);
    v7 = *(this + 5);
    v27 = 0;
    *&v28 = 0;
    *(&v28 + 1) = "sendWithPromisedReply";
    *&v29 = 0;
    WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v24, 0, &v27, "sendWithPromisedReply");
    v8 = v24;
    if (v24)
    {
      atomic_fetch_add(v24 + 2, 1u);
      v9 = v24;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v8;
    v24 = 0;
    v28 = v25;
    v29 = v26;
    v10 = WTF::fastMalloc(v8, 0x30);
    *v10 = &unk_1F10FDD78;
    v10[1] = v9;
    v27 = 0;
    v11 = v29;
    *(v10 + 1) = v28;
    *(v10 + 2) = v11;
    v23[0] = v10;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      result = 141;
      __break(0xC471u);
    }

    else
    {
      v23[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v27);
      v13 = IPC::Encoder::operator new(0x238, v12);
      *v13 = 378;
      *(v13 + 2) = 0;
      *(v13 + 3) = 0;
      *(v13 + 1) = v7;
      *(v13 + 68) = 0;
      *(v13 + 70) = 0;
      *(v13 + 69) = 0;
      IPC::Encoder::encodeHeader(v13);
      v27 = v13;
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v13, a2);
      IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v6, &v27, v23, 0, 0);
      v15 = v27;
      v27 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v14);
        bmalloc::api::tzoneFree(v20, v21);
      }

      v16 = v23[0];
      v23[0] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v24);
      v19 = v22;
      v22 = 0;
      if (v19)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v19 + 16), v18);
      }
    }
  }

  else
  {
    LOBYTE(v24) = 4;
    v27 = 0;
    *&v28 = 0;
    *(&v28 + 1) = "seekToTime";
    *&v29 = 0;
    return WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v27, a3, &v24);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::addSourceBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  WebKit::RemoteMediaSourceProxy::connectionToWebProcess(&v46, a1);
  WebKit::RemoteMediaSourceProxy::mediaSourcePrivate(&v45, a1);
  v8 = *(a1 + 56);
  if (!v8 || (*(v8 + 8) ? (v9 = v46 == 0) : (v9 = 1), v9 || !v45))
  {
    v30 = *a4;
    *a4 = 0;
    (*(*v30 + 16))(v30, 1, 0, 0);
    result = (*(*v30 + 8))(v30);
    goto LABEL_17;
  }

  v44 = 0;
  v10 = (*(*v45 + 48))(v45, a2, a3, &v44);
  v11 = 0;
  v12 = 0;
  if (!v10)
  {
    IdentifierInternal = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = *(v15 + 8);
      if (v16)
      {
        v12 = IdentifierInternal;
        v17 = (v16 + 16);
        ++*(v16 + 16);
        v18 = v46;
        v19 = v44;
        v44 = 0;
        if (WebKit::RemoteSourceBufferProxy::s_heapRef)
        {
          NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::RemoteSourceBufferProxy::s_heapRef, v14);
        }

        else
        {
          NonCompact = WebKit::RemoteSourceBufferProxy::operatorNewSlow(0);
        }

        v21 = NonCompact;
        v22 = (NonCompact + 2);
        *NonCompact = &unk_1F10FD800;
        NonCompact[1] = 3;
        NonCompact[2] = &unk_1F10FD880;
        NonCompact[3] = 0;
        NonCompact[4] = v18;
        v23 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((v18 + 16), 3);
        v21[5] = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v23);
        v21[6] = v12;
        v21[7] = v19;
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v16 + 8), v16);
        v24 = *(v16 + 8);
        atomic_fetch_add(v24, 1u);
        v21[8] = v24;
        *(v21 + 9) = 0u;
        *(v21 + 11) = 0u;
        *(v21 + 26) = 1065353216;
        v25 = v21[6];
        v48[0] = 124;
        v48[1] = v25;
        WTF::HashMap<std::pair<IPC::ReceiverName,unsigned long long>,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::DefaultHash<std::pair<IPC::ReceiverName,unsigned long long>>,WTF::PairHashTraits<WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<unsigned long long>>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<std::pair<IPC::ReceiverName,unsigned long long>,IPC::MessageReceiver&>((v18 + 72), v48, v22, v47);
        v26 = v21[7];
        v27 = (v26 + 8);
        while (1)
        {
          v28 = *v27;
          if ((*v27 & 1) == 0)
          {
            break;
          }

          v29 = *v27;
          atomic_compare_exchange_strong_explicit(v27, &v29, v28 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v29 == v28)
          {
            goto LABEL_23;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v27);
LABEL_23:
        WebCore::SourceBufferPrivate::setClient();
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v26 + 8), v34);
        v35 = *(a1 + 76);
        if (v35 != *(a1 + 72))
        {
          v41 = (*(a1 + 64) + 8 * v35);
LABEL_36:
          *v41 = v21;
          *(a1 + 76) = v35 + 1;
          WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v17);
          v11 = 1;
          goto LABEL_37;
        }

        v36 = v35 + (v35 >> 1);
        if (v36 <= v35 + 1)
        {
          v36 = v35 + 1;
        }

        if (!(v36 >> 29))
        {
          v37 = *(a1 + 64);
          if (v36 <= 0x10)
          {
            v38 = 16;
          }

          else
          {
            v38 = v36;
          }

          v39 = WTF::fastMalloc(v36, (8 * v38));
          *(a1 + 72) = v38;
          *(a1 + 64) = v39;
          memcpy(v39, v37, 8 * v35);
          if (v37)
          {
            if (*(a1 + 64) == v37)
            {
              *(a1 + 64) = 0;
              *(a1 + 72) = 0;
            }

            WTF::fastFree(v37, v40);
          }

          v35 = *(a1 + 76);
          v41 = (*(a1 + 64) + 8 * v35);
          goto LABEL_36;
        }
      }
    }

    __break(0xC471u);
    JUMPOUT(0x19DBD5060);
  }

LABEL_37:
  v42 = *a4;
  *a4 = 0;
  (*(*v42 + 16))(v42, v10, v12, v11);
  result = (*(*v42 + 8))(v42);
  v43 = v44;
  v44 = 0;
  if (v43)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v43 + 8), v32);
  }

LABEL_17:
  if (v45)
  {
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v45 + 1, v32);
  }

  v33 = v46;
  v46 = 0;
  if (v33)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v33 + 16), v32);
  }

  return result;
}

uint64_t *WebKit::RemoteMediaSourceProxy::mediaSourcePrivate@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = this[6];
  if (v3)
  {
    while (1)
    {
      v4 = *(v3 + 8);
      if ((v4 & 1) == 0)
      {
        break;
      }

      v5 = *(v3 + 8);
      atomic_compare_exchange_strong_explicit((v3 + 8), &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v5 == v4)
      {
        goto LABEL_6;
      }
    }

    this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v3 + 8));
  }

LABEL_6:
  *a1 = v3;
  return this;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::durationChanged(atomic_ullong *this, const WTF::MediaTime *a2)
{
  v2 = this[6];
  if (v2)
  {
    v4 = v2 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    (*(*v2 + 72))(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v2 + 1, v7);
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::bufferedChanged(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v4 = v2 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    (*(*v2 + 80))(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v2 + 1, v7);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::markEndOfStream(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v4 = v2 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    (*(*v2 + 112))(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v2 + 1, v7);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::unmarkEndOfStream(atomic_ullong *this)
{
  v1 = this[6];
  if (v1)
  {
    v2 = v1 + 1;
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
    (*(*v1 + 120))(v1);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v1 + 1, v5);
  }

  return this;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::setMediaPlayerReadyState(atomic_ullong *result, uint64_t a2)
{
  v2 = result[6];
  if (v2)
  {
    v4 = v2 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    (*(*v2 + 104))(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v2 + 1, v7);
  }

  return result;
}

atomic_ullong *WebKit::RemoteMediaSourceProxy::setTimeFudgeFactor(atomic_ullong *this, const WTF::MediaTime *a2)
{
  v2 = this[6];
  if (v2)
  {
    v4 = v2 + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_7:
    (*(*v2 + 144))(v2, a2);

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::MediaSourcePrivate,(WTF::DestructionThread)0>::deref(v2 + 1, v7);
  }

  return this;
}

void *WebKit::RemoteMediaSourceProxy::shutdown(WebKit::RemoteMediaSourceProxy *this)
{
  result = WebKit::RemoteMediaSourceProxy::disconnect(this);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++v4[4];
      result = WebKit::RemoteMediaPlayerManagerProxy::invalidateMediaSource(v4, *(this + 5));
      if (v4[4] == 1)
      {
        v5 = *(*v4 + 24);

        return v5(v4);
      }

      else
      {
        --v4[4];
      }
    }
  }

  return result;
}

uint64_t *WebKit::RemoteMediaSourceProxy::sharedPreferencesForWebProcess@<X0>(uint64_t *__return_ptr a1@<X8>, atomic_uchar *this@<X0>)
{
  result = WebKit::RemoteMediaSourceProxy::connectionToWebProcess(&v6, this);
  v5 = v6;
  if (v6)
  {
    *a1 = *(v6 + 336);
    a1[2] = *(v5 + 352);
    v6 = 0;
    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v5 + 16), v4);
    LOBYTE(v5) = 1;
  }

  else
  {
    *a1 = 0;
  }

  *(a1 + 24) = v5;
  return result;
}

uint64_t WebKit::RemoteRemoteCommandListenerProxy::RemoteRemoteCommandListenerProxy(uint64_t a1, unint64_t a2, void *a3)
{
  *(a1 + 16) = 1;
  *a1 = &unk_1F10FD7B8;
  *(a1 + 8) = 0;
  *(a1 + 24) = a2;
  v5 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::controlBlock((a2 + 16), 1);
  *(a1 + 32) = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v5);
  *(a1 + 40) = *a3;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return a1;
}

void WebKit::RemoteRemoteCommandListenerProxy::~RemoteRemoteCommandListenerProxy(WebKit::RemoteRemoteCommandListenerProxy *this, void *a2)
{
  *this = &unk_1F10FD7B8;
  v3 = *(this + 6);
  if (v3)
  {
    WTF::fastFree((v3 - 16), a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v4, a2);
  }

  *this = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, a2);
  if (*(this + 4) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::RemoteRemoteCommandListenerProxy::~RemoteRemoteCommandListenerProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

atomic_uchar *WebKit::RemoteRemoteCommandListenerProxy::updateSupportedCommands(uint64_t a1, unsigned int *a2, char a3)
{
  v7 = (a1 + 48);
  v6 = *(a1 + 48);
  if (v6)
  {
    *v7 = 0;
    WTF::fastFree((v6 - 16), a2);
  }

  v8 = a2[3];
  if (v8)
  {
    v9 = *a2;
    v10 = &v9[v8];
    while (1)
    {
      v11 = *v9;
      if (v11 == 254 || v11 == 255)
      {
        __break(0xC471u);
        JUMPOUT(0x19DBD58ECLL);
      }

      v12 = *v7;
      if (!*v7)
      {
        WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(v7, 0);
        v12 = *v7;
        v11 = *v9;
      }

      v13 = *(v12 - 8);
      v14 = 9 * ((~(v11 << 15) + v11) ^ ((~(v11 << 15) + v11) >> 10));
      v15 = (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) ^ (((v14 ^ (v14 >> 6)) + ~((v14 ^ (v14 >> 6)) << 11)) >> 16)) & v13;
      v16 = (v12 + v15);
      v17 = *(v12 + v15);
      if (v17 != 255)
      {
        v19 = 0;
        v20 = 1;
        while (v17 != v11)
        {
          if (v17 == 254)
          {
            v19 = v16;
          }

          v15 = (v15 + v20) & v13;
          v16 = (v12 + v15);
          v17 = *(v12 + v15);
          ++v20;
          if (v17 == 255)
          {
            if (!v19)
            {
              goto LABEL_10;
            }

            *v19 = -1;
            v18 = *(v12 - 16) - 1;
            *(v12 - 16) = v18;
            LOBYTE(v11) = *v9;
            goto LABEL_18;
          }
        }

        goto LABEL_21;
      }

LABEL_10:
      v18 = *(v12 - 16);
      v19 = v16;
LABEL_18:
      *v19 = v11;
      v21 = *(v12 - 12) + 1;
      *(v12 - 12) = v21;
      v22 = (v21 + v18);
      v23 = *(v12 - 4);
      if (v23 > 0x400)
      {
        break;
      }

      v23 *= 3;
      if (v23 <= 4 * v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (++v9 == v10)
      {
        goto LABEL_25;
      }
    }

    if (v23 > 2 * v22)
    {
      goto LABEL_21;
    }

LABEL_20:
    WTF::HashTable<WebCore::GamepadHapticEffectType,WebCore::GamepadHapticEffectType,WTF::IdentityExtractor,WTF::IntHash<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::StrongEnumHashTraits<WebCore::GamepadHapticEffectType>,WTF::FastMalloc>::expand(v7, v23);
    goto LABEL_21;
  }

LABEL_25:
  *(a1 + 56) = a3;
  result = *(a1 + 32);
  if (result)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(a1 + 24), &v28);
    result = v28;
    if (v28)
    {
      result = WebKit::GPUConnectionToWebProcess::updateSupportedRemoteCommands(v28, v25);
      v27 = v28;
      v28 = 0;
      if (v27)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref(v27 + 2, v26);
      }
    }
  }

  return result;
}

void WebKit::RemoteSourceBufferProxy::~RemoteSourceBufferProxy(WebKit::RemoteSourceBufferProxy *this, void *a2)
{
  v3 = *(this + 5);
  if (v3)
  {
    WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v3, *(this + 4), &v13);
    if (v13)
    {
      IPC::MessageReceiverMap::removeMessageReceiver(v13 + 64, 0x7Cu, *(this + 6));
      v11 = *(this + 5);
      *(this + 5) = 0;
      if (v11)
      {
        WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, a2);
      }

      *(this + 4) = 0;
      v12 = v13;
      v13 = 0;
      if (v12)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v12 + 16), a2);
      }
    }
  }

  v4 = *(this + 11);
  while (v4)
  {
    v5 = v4;
    v4 = *v4;
    v6 = *(v5 + 3);
    *(v5 + 3) = 0;
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v6 + 2);
      (*(*v6 + 8))(v6, a2);
    }

    WTF::fastFree(v5, a2);
  }

  v7 = *(this + 9);
  *(this + 9) = 0;
  if (v7)
  {
    WTF::fastFree(v7, a2);
  }

  v8 = *(this + 8);
  *(this + 8) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, a2);
  }

  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::SourceBufferPrivate,(WTF::DestructionThread)1>::deref((v9 + 8), a2);
  }

  v10 = *(this + 5);
  *(this + 5) = 0;
  if (v10)
  {
    WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v10, a2);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, a2);
}

{
  WebKit::RemoteSourceBufferProxy::~RemoteSourceBufferProxy(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void non-virtual thunk toWebKit::RemoteSourceBufferProxy::~RemoteSourceBufferProxy(WebKit::RemoteSourceBufferProxy *this, void *a2)
{
  WebKit::RemoteSourceBufferProxy::~RemoteSourceBufferProxy((this - 16), a2);
}

{
  WebKit::RemoteSourceBufferProxy::~RemoteSourceBufferProxy((this - 16), a2);

  bmalloc::api::tzoneFree(v2, v3);
}

unsigned int *WebKit::RemoteSourceBufferProxy::sourceBufferPrivateDidReceiveInitializationSegment@<X0>(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, atomic_uint **a3@<X8>)
{
  v5 = a1[8];
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      v7 = 0;
      ++*(v6 + 4);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
LABEL_6:
  WebKit::RemoteSourceBufferProxy::createInitializationSegmentInfo(&v58, a1, a2);
  if (v65 == 1)
  {
    v45 = a3;
    v46 = v7;
    v8 = WebKit::RemoteMediaPlayerProxy::commitAllTransactions(v6, &v53);
    v44 = v53;
    v9 = WTF::RunLoop::currentSingleton(v8);
    v11 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(a1 + 1, v10);
    v12 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v11);
    v49 = v58;
    v13 = v59;
    v59 = 0;
    v14 = v60;
    v15 = HIDWORD(v60);
    v60 = 0;
    v16 = v61;
    v61 = 0;
    v17 = v62;
    v18 = HIDWORD(v62);
    v62 = 0;
    v19 = v63;
    v63 = 0;
    v20 = v64;
    v21 = HIDWORD(v64);
    v64 = 0;
    v66 = a1;
    v67 = v12;
    v40 = v12;
    v47 = 0;
    v48 = 0;
    v68 = v58;
    v50[0] = 0;
    v43 = v13;
    *&v69 = v13;
    v50[1] = 0;
    v41 = v15;
    v42 = v14;
    *(&v69 + 1) = __PAIR64__(v15, v14);
    v51[0] = 0;
    *&v70 = v16;
    v51[1] = 0;
    *(&v70 + 1) = __PAIR64__(v18, v17);
    v52[0] = 0;
    *&v71 = v19;
    v52[1] = 0;
    *(&v71 + 1) = __PAIR64__(v21, v20);
    v22 = WTF::fastMalloc(v13, 0x50);
    while (1)
    {
      v23 = *(v9 + 8);
      if ((v23 & 1) == 0)
      {
        break;
      }

      v24 = *(v9 + 8);
      atomic_compare_exchange_strong_explicit((v9 + 8), &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_13;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v9 + 8));
LABEL_13:
    v26 = WTF::fastMalloc(v23, 0x58);
    *&v27 = 0;
    *v26 = &unk_1F10FDA00;
    v26[1] = a1;
    v26[2] = v40;
    *(v26 + 3) = v68;
    v66 = 0;
    v67 = 0;
    v69 = v27;
    v26[5] = v43;
    *(v26 + 12) = v42;
    *(v26 + 13) = v41;
    v70 = v27;
    v26[7] = v16;
    *(v26 + 16) = v17;
    *(v26 + 17) = v18;
    v71 = v27;
    v26[9] = v19;
    *(v26 + 20) = v20;
    *(v26 + 21) = v21;
    *(v22 + 2) = 1;
    v22[2] = v9;
    *(v22 + 3) = 0uLL;
    v22[5] = "sourceBufferPrivateDidReceiveInitializationSegment";
    v22[6] = 0;
    *(v22 + 28) = 0;
    *v22 = &unk_1F10FDA78;
    v22[8] = 0;
    v22[9] = v26;
    atomic_fetch_add(v44 + 2, 1u);
    v54[0] = v44;
    v54[1] = v22;
    v55 = 0uLL;
    v56 = "sourceBufferPrivateDidReceiveInitializationSegment";
    v57 = 0;
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v28);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v29);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v69, v30);
    v32 = v67;
    v67 = 0;
    if (v32)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v32, v31);
    }

    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::completionPromise(v45, v54);
    WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCommand<WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::ThenCallback<true,WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>>::~ThenCommand(v54);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v52, v33);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v51, v34);
    WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v50, v35);
    v37 = v48;
    v48 = 0;
    v7 = v46;
    if (v37)
    {
      WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v37, v36);
    }

    result = v53;
    v53 = 0;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, result + 2);
      result = (*(*result + 16))(result);
    }

    if (v65)
    {
      WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v63, v36);
      WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v38);
      result = WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v59, v39);
    }
  }

  else
  {
    LOBYTE(v47) = 1;
    v66 = 0;
    v67 = 0;
    *&v68 = "sourceBufferPrivateDidReceiveInitializationSegment";
    *(&v68 + 1) = 0;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v66, a3, &v47);
  }

  if ((v7 & 1) == 0)
  {
    return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref(v6 + 4);
  }

  return result;
}

WTF **WebKit::RemoteSourceBufferProxy::createInitializationSegmentInfo(WTF **result, WTF::StringImpl *a2, uint64_t a3)
{
  v3 = *(a2 + 8);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    *result = 0;
    *(result + 64) = 0;
    return result;
  }

  v70 = result;
  ++*(v4 + 16);
  memset(v74, 0, sizeof(v74));
  *v73 = 0u;
  *&v72 = *a3;
  *(&v72 + 5) = *(a3 + 5);
  v71 = 0uLL;
  v7 = *(a3 + 28);
  if (v7)
  {
    if (v7 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      goto LABEL_78;
    }

    v8 = (3 * v7);
    DWORD2(v71) = 8 * v8 / 0x18u;
    *&v71 = WTF::fastMalloc(v8, (8 * v8));
    if (*(a3 + 28))
    {
      v9 = 0;
      do
      {
        v10 = *(a3 + 16) + 16 * v9;
        v11 = *(v10 + 8);
        if (v11)
        {
          while (1)
          {
            v12 = v11[1];
            if ((v12 & 1) == 0)
            {
              break;
            }

            v13 = v11[1];
            atomic_compare_exchange_strong_explicit(v11 + 1, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v13 == v12)
            {
              goto LABEL_12;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(v11[1]);
        }

LABEL_12:
        v79 = (*(*v11 + 48))(v11);
        WebKit::RemoteMediaPlayerProxy::addRemoteAudioTrackProxy(v4, v11);
        v14 = *v10;
        if (*v10)
        {
          atomic_fetch_add(v14 + 2, 1u);
          v80 = v14;
          v81[0] = &v79;
          std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>((a2 + 72), v79, v81, &v80, &v79);
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v14 + 2);
            (*(*v14 + 8))(v14);
          }
        }

        else
        {
          v80 = 0;
          v81[0] = &v79;
          std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>((a2 + 72), v79, v81, &v80, &v79);
        }

        WebKit::MediaDescriptionInfo::MediaDescriptionInfo(&v75, *v10);
        v78 = v79;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref(v11 + 1, v15);
        v16 = HIDWORD(v71);
        v17 = v71 + 24 * HIDWORD(v71);
        v18 = v75;
        v75 = 0;
        *v17 = v18;
        LOWORD(v18) = v76;
        *(v17 + 10) = v77;
        *(v17 + 8) = v18;
        *(v17 + 16) = v78;
        HIDWORD(v71) = v16 + 1;
        v19 = v75;
        v75 = 0;
        if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v19, a2);
        }

        ++v9;
      }

      while (v9 < *(a3 + 28));
      if (HIDWORD(v73[1]))
      {
        WTF::VectorDestructor<true,WebKit::ITPThirdPartyDataForSpecificFirstParty>::destruct(v73[0], (v73[0] + 24 * HIDWORD(v73[1])));
      }

      if (v73[0])
      {
        WTF::fastFree(v73[0], a2);
      }
    }
  }

  v73[0] = v71;
  v20 = DWORD2(v71);
  v21 = HIDWORD(v71);
  v71 = 0uLL;
  v73[1] = __PAIR64__(v21, v20);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, a2);
  v71 = 0uLL;
  v23 = *(a3 + 44);
  if (v23)
  {
    if (v23 >= 0xAAAAAAB)
    {
      __break(0xC471u);
      JUMPOUT(0x19DBD6658);
    }

    v24 = (3 * v23);
    v25 = 8 * v24;
    v26 = WTF::fastMalloc(v24, (8 * v24));
    DWORD2(v71) = v25 / 0x18;
    *&v71 = v26;
    if (*(a3 + 44))
    {
      v27 = 0;
      do
      {
        v28 = *(a3 + 32) + 16 * v27;
        v29 = *(v28 + 8);
        if (v29)
        {
          while (1)
          {
            v30 = v29[1];
            if ((v30 & 1) == 0)
            {
              break;
            }

            v31 = v29[1];
            atomic_compare_exchange_strong_explicit(v29 + 1, &v31, v30 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v31 == v30)
            {
              goto LABEL_35;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(v29[1]);
        }

LABEL_35:
        v79 = (*(*v29 + 48))(v29);
        WebKit::RemoteMediaPlayerProxy::addRemoteVideoTrackProxy(v4, v29);
        v32 = *v28;
        if (*v28)
        {
          atomic_fetch_add(v32 + 2, 1u);
          v80 = v32;
          v81[0] = &v79;
          std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>((a2 + 72), v79, v81, &v80, &v79);
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v32 + 2);
            (*(*v32 + 8))(v32);
          }
        }

        else
        {
          v80 = 0;
          v81[0] = &v79;
          std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>((a2 + 72), v79, v81, &v80, &v79);
        }

        WebKit::MediaDescriptionInfo::MediaDescriptionInfo(&v75, *v28);
        v78 = v79;
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref(v29 + 1, v33);
        v34 = HIDWORD(v71);
        v35 = v71;
        v36 = v71 + 24 * HIDWORD(v71);
        v37 = v75;
        v75 = 0;
        *v36 = v37;
        LOWORD(v37) = v76;
        *(v36 + 10) = v77;
        *(v36 + 8) = v37;
        *(v36 + 16) = v78;
        v38 = v34 + 1;
        HIDWORD(v71) = v34 + 1;
        v39 = v75;
        v75 = 0;
        if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v39, v22);
        }

        ++v27;
      }

      while (v27 < *(a3 + 44));
    }

    else
    {
      v35 = v26;
      v38 = 0;
    }
  }

  else
  {
    v38 = 0;
    v35 = 0;
  }

  v40 = v74[0];
  if (HIDWORD(v74[1]))
  {
    WTF::VectorDestructor<true,WebKit::ITPThirdPartyDataForSpecificFirstParty>::destruct(v74[0], (v74[0] + 24 * HIDWORD(v74[1])));
  }

  if (v40)
  {
    WTF::fastFree(v40, v22);
  }

  v74[0] = v35;
  v41 = DWORD2(v71);
  v71 = 0uLL;
  v74[1] = __PAIR64__(v38, v41);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v22);
  v71 = 0uLL;
  v44 = *(a3 + 60);
  if (v44)
  {
    if (v44 < 0xAAAAAAB)
    {
      v45 = (3 * v44);
      v46 = 8 * v45;
      v47 = WTF::fastMalloc(v45, (8 * v45));
      DWORD2(v71) = v46 / 0x18;
      *&v71 = v47;
      if (*(a3 + 60))
      {
        v48 = 0;
        do
        {
          v49 = *(a3 + 48) + 16 * v48;
          v50 = *(v49 + 8);
          if (v50)
          {
            while (1)
            {
              v51 = v50[1];
              if ((v51 & 1) == 0)
              {
                break;
              }

              v52 = v50[1];
              atomic_compare_exchange_strong_explicit(v50 + 1, &v52, v51 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v52 == v51)
              {
                goto LABEL_59;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(v50[1]);
          }

LABEL_59:
          v79 = (*(*v50 + 48))(v50);
          WebKit::RemoteMediaPlayerProxy::addRemoteTextTrackProxy(v4, v50);
          v53 = *v49;
          if (*v49)
          {
            atomic_fetch_add(v53 + 2, 1u);
            v80 = v53;
            v81[0] = &v79;
            std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>((a2 + 72), v79, v81, &v80, &v79);
            if (atomic_fetch_add(v53 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v53 + 2);
              (*(*v53 + 8))(v53);
            }
          }

          else
          {
            v80 = 0;
            v81[0] = &v79;
            std::__hash_table<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,WTF::FastAllocator<std::__hash_value_type<unsigned long long,WTF::Ref<WebCore::MediaDescription,WTF::RawPtrTraits<WebCore::MediaDescription>,WTF::DefaultRefDerefTraits<WebCore::MediaDescription>>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<WebCore::MediaDescription&>>((a2 + 72), v79, v81, &v80, &v79);
          }

          WebKit::MediaDescriptionInfo::MediaDescriptionInfo(&v75, *v49);
          v78 = v79;
          WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::TrackPrivateBase,(WTF::DestructionThread)0>::deref(v50 + 1, v54);
          v55 = HIDWORD(v71);
          v56 = v71;
          v57 = v71 + 24 * HIDWORD(v71);
          v58 = v75;
          v75 = 0;
          *v57 = v58;
          LOWORD(v58) = v76;
          *(v57 + 10) = v77;
          *(v57 + 8) = v58;
          *(v57 + 16) = v78;
          v59 = v55 + 1;
          HIDWORD(v71) = v55 + 1;
          v60 = v75;
          v75 = 0;
          if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v60, v42);
          }

          ++v48;
        }

        while (v48 < *(a3 + 60));
      }

      else
      {
        v56 = v47;
        v59 = 0;
      }

      goto LABEL_70;
    }

    __break(0xC471u);
LABEL_78:
    JUMPOUT(0x19DBD6650);
  }

  v59 = 0;
  v56 = 0;
LABEL_70:
  v61 = v74[2];
  if (HIDWORD(v74[3]))
  {
    WTF::VectorDestructor<true,WebKit::ITPThirdPartyDataForSpecificFirstParty>::destruct(v74[2], (v74[2] + 24 * HIDWORD(v74[3])));
  }

  if (v61)
  {
    WTF::fastFree(v61, v42);
  }

  *&v43 = 0;
  v62 = DWORD2(v71);
  v71 = v43;
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v42);
  *v70 = v72;
  v70[2] = v73[0];
  v63 = v73[1];
  v64 = HIDWORD(v73[1]);
  v73[0] = 0;
  v73[1] = 0;
  *(v70 + 6) = v63;
  *(v70 + 7) = v64;
  v65 = v74[0];
  v74[0] = 0;
  v70[4] = v65;
  v66 = v74[1];
  *&v74[1] = 0uLL;
  v70[5] = v66;
  v70[6] = v56;
  v74[3] = 0;
  *(v70 + 14) = v62;
  *(v70 + 15) = v59;
  *(v70 + 64) = 1;
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74[2], v67);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v74, v68);
  WTF::Vector<WebKit::ITPThirdPartyDataForSpecificFirstParty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v73, v69);
  return WTF::RefCounted<WebKit::RemoteMediaPlayerProxy>::deref((v4 + 16));
}

atomic_uchar *WebKit::RemoteSourceBufferProxy::sourceBufferPrivateHighestPresentationTimestampChanged(WebKit::RemoteSourceBufferProxy *this, const WTF::MediaTime *a2)
{
  result = *(this + 5);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 4), &v13);
    if (v13)
    {
      v6 = *(v13 + 56);
      v7 = *(this + 6);
      v8 = IPC::Encoder::operator new(0x238, v5);
      *v8 = 1738;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v7;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v14 = v8;
      IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v8, a2);
      IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
      result = v14;
      v14 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        result = bmalloc::api::tzoneFree(v11, v12);
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v10 + 16), v9);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteSourceBufferProxy::sourceBufferPrivateDurationChanged@<X0>(WebKit::RemoteSourceBufferProxy *this@<X0>, const WTF::MediaTime *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(this + 5);
  if (!v5)
  {
    v23 = 0;
LABEL_3:
    LOBYTE(v25) = 4;
    v28 = 0;
    *&v29 = 0;
    *(&v29 + 1) = "sourceBufferPrivateDurationChanged";
    *&v30 = 0;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::createAndReject<WebCore::PlatformMediaError,std::enable_if<true,void>>(&v28, a3, &v25);
    goto LABEL_4;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, *(this + 4), &v23);
  if (!v23)
  {
    goto LABEL_3;
  }

  v10 = *(v23 + 56);
  v11 = *(this + 6);
  v28 = 0;
  *&v29 = 0;
  *(&v29 + 1) = "sendWithPromisedReply";
  *&v30 = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v25, 0, &v28, "sendWithPromisedReply");
  v12 = v25;
  if (v25)
  {
    atomic_fetch_add(v25 + 2, 1u);
    v13 = v25;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v12;
  v25 = 0;
  v29 = v26;
  v30 = v27;
  v14 = WTF::fastMalloc(v12, 0x30);
  *v14 = &unk_1F10FDDC8;
  v14[1] = v13;
  v28 = 0;
  v15 = v30;
  *(v14 + 1) = v29;
  *(v14 + 2) = v15;
  v24[0] = v14;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  v24[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v28);
  v17 = IPC::Encoder::operator new(0x238, v16);
  *v17 = 1736;
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  *(v17 + 1) = v11;
  *(v17 + 68) = 0;
  *(v17 + 70) = 0;
  *(v17 + 69) = 0;
  IPC::Encoder::encodeHeader(v17);
  v28 = v17;
  IPC::ArgumentCoder<WTF::MediaTime,void>::encode(v17, a2);
  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v10, &v28, v24, 0, 0);
  v19 = v28;
  v28 = 0;
  if (v19)
  {
    IPC::Encoder::~Encoder(v19, v18);
    bmalloc::api::tzoneFree(v21, v22);
  }

  v20 = v24[0];
  v24[0] = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v25);
LABEL_4:
  v8 = v23;
  v23 = 0;
  if (v8)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16), v7);
  }

  return result;
}

uint64_t WebKit::RemoteSourceBufferProxy::sourceBufferPrivateBufferedChanged@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = a1[5];
  if (!v5)
  {
    v34 = 0;
LABEL_3:
    v39 = 0;
    *&v40 = 0;
    *(&v40 + 1) = "sourceBufferPrivateBufferedChanged";
    *&v41 = 0;
    v6 = WTF::fastMalloc("sourceBufferPrivateBufferedChanged", 0x78);
    v7 = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::NativePromise(v6, &v39);
    v8 = 0;
    *a3 = v7;
    v9 = (v7 + 48);
    v36 = v9;
    LOBYTE(v37) = 1;
    atomic_compare_exchange_strong_explicit(v9, &v8, 1u, memory_order_acquire, memory_order_acquire);
    if (v8)
    {
      v9 = MEMORY[0x19EB01E30]();
    }

    v10 = WTF::NativePromiseBase::logChannel(v9);
    if (*v10 && v10[16] >= 4u)
    {
      WTF::Logger::log<WTF::Logger::LogSiteIdentifier,char [12],WTF::NativePromise<void,WebCore::PlatformMediaError,0u>>(v10, 4u, &v39, " resolving ", v6);
    }

    v11 = *(v6 + 64);
    if (v11 >= 2 && v11 != 255)
    {
      v12 = v6[7];
      v6[7] = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }

    *(v6 + 28) = 0;
    v13 = 1;
    *(v6 + 64) = 1;
    result = WTF::NativePromise<void,WebCore::PlatformMediaError,0u>::dispatchAll(v6, &v36);
    if (v37 == 1)
    {
      result = v36;
      atomic_compare_exchange_strong_explicit(v36, &v13, 0, memory_order_release, memory_order_relaxed);
      if (v13 != 1)
      {
        result = WTF::Lock::unlockSlow(result);
      }
    }

    goto LABEL_15;
  }

  WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(v5, a1[4], &v34);
  if (!v34)
  {
    goto LABEL_3;
  }

  v18 = *(v34 + 56);
  v19 = a1[6];
  v39 = 0;
  *&v40 = 0;
  *(&v40 + 1) = "sendWithPromisedReply";
  *&v41 = 0;
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::NativePromiseProducer<std::enable_if<true,void>>(&v36, 0, &v39, "sendWithPromisedReply");
  v20 = v36;
  if (v36)
  {
    atomic_fetch_add(v36 + 2, 1u);
    v21 = v36;
  }

  else
  {
    v21 = 0;
  }

  *a3 = v20;
  v36 = 0;
  v40 = v37;
  v41 = v38;
  v22 = WTF::fastMalloc(v20, 0x30);
  *v22 = &unk_1F10FDE18;
  v22[1] = v21;
  v39 = 0;
  v23 = v41;
  *(v22 + 1) = v40;
  *(v22 + 2) = v23;
  v35[0] = v22;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
    return result;
  }

  v35[1] = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
  WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v39);
  v25 = IPC::Encoder::operator new(0x238, v24);
  *v25 = 1731;
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 1) = v19;
  *(v25 + 68) = 0;
  *(v25 + 70) = 0;
  *(v25 + 69) = 0;
  IPC::Encoder::encodeHeader(v25);
  v39 = v25;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v25, *(a2 + 12));
  v26 = *(a2 + 12);
  if (v26)
  {
    v27 = *a2;
    v28 = 16 * v26;
    do
    {
      IPC::VectorArgumentCoder<false,WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::PlatformTimeRanges::Range,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v25, v27);
      v27 += 16;
      v28 -= 16;
    }

    while (v28);
  }

  IPC::Connection::sendMessageWithAsyncReplyWithDispatcher(v18, &v39, v35, 0, 0);
  v30 = v39;
  v39 = 0;
  if (v30)
  {
    IPC::Encoder::~Encoder(v30, v29);
    bmalloc::api::tzoneFree(v32, v33);
  }

  v31 = v35[0];
  v35[0] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  result = WTF::NativePromiseProducer<void,WebCore::PlatformMediaError,0u>::~NativePromiseProducer(&v36);
LABEL_15:
  v16 = v34;
  v34 = 0;
  if (v16)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v16 + 16), v15);
  }

  return result;
}

atomic_uchar *WebKit::RemoteSourceBufferProxy::sourceBufferPrivateDidDropSample(WebKit::RemoteSourceBufferProxy *this)
{
  result = *(this + 5);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 4), &v11);
    if (v11)
    {
      v4 = *(v11 + 56);
      v5 = *(this + 6);
      v6 = IPC::Encoder::operator new(0x238, v3);
      *v6 = 1733;
      *(v6 + 2) = 0;
      *(v6 + 3) = 0;
      *(v6 + 1) = v5;
      *(v6 + 68) = 0;
      *(v6 + 70) = 0;
      *(v6 + 69) = 0;
      IPC::Encoder::encodeHeader(v6);
      v12 = v6;
      IPC::Connection::sendMessageImpl(v4, &v12, 0, 0);
      result = v12;
      v12 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v7);
        result = bmalloc::api::tzoneFree(v9, v10);
      }

      v8 = v11;
      v11 = 0;
      if (v8)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v8 + 16), v7);
      }
    }
  }

  return result;
}

atomic_uchar *WebKit::RemoteSourceBufferProxy::sourceBufferPrivateDidReceiveRenderingError(WebKit::RemoteSourceBufferProxy *this, uint64_t a2)
{
  result = *(this + 5);
  if (result)
  {
    result = WTF::ThreadSafeWeakPtrControlBlock::makeStrongReferenceIfPossible<WebKit::GPUConnectionToWebProcess>(result, *(this + 4), &v13);
    if (v13)
    {
      v6 = *(v13 + 56);
      v7 = *(this + 6);
      v8 = IPC::Encoder::operator new(0x238, v5);
      *v8 = 1735;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      *(v8 + 1) = v7;
      *(v8 + 68) = 0;
      *(v8 + 70) = 0;
      *(v8 + 69) = 0;
      IPC::Encoder::encodeHeader(v8);
      v14 = v8;
      IPC::ArgumentCoder<API::Int64,void>::encode(v8, a2);
      IPC::Connection::sendMessageImpl(v6, &v14, 0, 0);
      result = v14;
      v14 = 0;
      if (result)
      {
        IPC::Encoder::~Encoder(result, v9);
        result = bmalloc::api::tzoneFree(v11, v12);
      }

      v10 = v13;
      v13 = 0;
      if (v10)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::GPUConnectionToWebProcess,(WTF::DestructionThread)1>::deref((v10 + 16), v9);
      }
    }
  }

  return result;
}