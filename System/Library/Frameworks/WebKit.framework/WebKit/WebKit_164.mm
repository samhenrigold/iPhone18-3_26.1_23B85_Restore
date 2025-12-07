void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F11206E8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11206E8;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(IPC::Connection*,IPC::Decoder *)> IPC::Connection::makeAsyncReplyCompletionHandler<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,WTF::CompletionHandler<void ()(void)>>(WTF::CompletionHandler<void ()(void)> &&,WTF::ThreadLikeAssertion)::{lambda(IPC::Connection*,IPC::Decoder *)#1},void,IPC::Connection*,IPC::Decoder *>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

void Messages::LegacyCustomProtocolManager::WasRedirectedToRequest::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebCore::ResourceRequest,void>::encode(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a2, v4);
}

uint64_t Messages::LegacyCustomProtocolManager::DidReceiveResponse::encode<IPC::Encoder>(uint64_t a1, IPC::Encoder *a2)
{
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a2, **a1);
  IPC::ArgumentCoder<WebCore::ResourceResponse,void>::encode(a2, *(a1 + 8));
  v4 = *(a1 + 16);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a2, v4);
}

uint64_t *WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,PAL::SessionID>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,PAL::SessionID,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 - 4);
    v5 = *(v3 - 12);
    if (v4)
    {
      v6 = v4 << (6 * v5 >= 2 * v4);
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
  v7 = v6;
  result = WTF::fastMalloc(0x10, ((32 * v6) | 0x10));
  if (v6)
  {
    v10 = result + 2;
    do
    {
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 4;
      --v7;
    }

    while (v7);
  }

  *a1 = (result + 2);
  *(result + 2) = v6 - 1;
  *(result + 3) = v6;
  *result = 0;
  *(result + 1) = v5;
  if (v4)
  {
    v11 = 0;
    v12 = v4;
    do
    {
      v13 = (v3 + 32 * v11);
      if (*v13 >= 2uLL)
      {
        v14 = *a1;
        if (*a1)
        {
          v15 = *(v14 - 8);
        }

        else
        {
          v15 = 0;
        }

        v16 = WTF::UUIDHash::hash((v3 + 32 * v11), v9);
        v17 = 0;
        do
        {
          v18 = v16 & v15;
          v19 = (v14 + 32 * v18);
          v16 = ++v17 + v18;
        }

        while (*v19 != 0);
        v20 = v13[1];
        *v19 = *v13;
        v19[1] = v20;
      }

      ++v11;
    }

    while (v11 != v12);
  }

  else if (!v3)
  {
    return result;
  }

  return WTF::fastFree((v3 - 16), v9);
}

uint64_t *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID const&>@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E13E208);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 32 * v14);
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v5)
      {
        v22 = v9 + 32 * *(v9 - 4);
        *a4 = v15;
        *(a4 + 8) = v22;
        *(a4 + 16) = 0;
        *(v15 + 1) = *a3;
        return result;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 32 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[2] = 0;
      v17[3] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  v19 = *(a3 + 8);
  v15[2] = *a3;
  v15[3] = v19;
  v20 = *v8;
  if (*v8)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v23 = (*(v20 - 16) + v21);
  v24 = *(v20 - 4);
  if (v24 > 0x400)
  {
    if (v24 <= 2 * v23)
    {
LABEL_19:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v20 = *v8;
      if (*v8)
      {
        v24 = *(v20 - 4);
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else if (3 * v24 <= 4 * v23)
  {
    goto LABEL_19;
  }

  *a4 = v15;
  *(a4 + 8) = v20 + 32 * v24;
  *(a4 + 16) = 1;
  return result;
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

_OWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
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

  v9 = a2;
  v10 = WTF::fastMalloc(0x10, ((32 * a2) | 0x10));
  if (v4)
  {
    v12 = v10 + 4;
    do
    {
      *(v12 - 2) = 0;
      *v12 = 0;
      v12[1] = 0;
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  *a1 = (v10 + 2);
  *(v10 + 2) = v4 - 1;
  *(v10 + 3) = v4;
  *v10 = 0;
  *(v10 + 1) = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v6 + 32 * v13;
      if ((*v15 + 1) >= 2)
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

        v18 = (*v15 + ~(*v15 << 32)) ^ ((*v15 + ~(*v15 << 32)) >> 22);
        v19 = 9 * ((v18 + ~(v18 << 13)) ^ ((v18 + ~(v18 << 13)) >> 8));
        v20 = (v19 ^ (v19 >> 15)) + ~((v19 ^ (v19 >> 15)) << 27);
        v21 = v17 & ((v20 >> 31) ^ v20);
        v22 = 1;
        do
        {
          v23 = v21;
          v24 = *(v16 + 32 * v21);
          v21 = (v21 + v22++) & v17;
        }

        while (v24);
        v25 = (v16 + 32 * v23);
        v26 = *(v15 + 16);
        *v25 = *v15;
        v25[1] = v26;
        if (v15 == a3)
        {
          v14 = v25;
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v11);
  return v14;
}

void WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WTF::UUID const&,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>&>(uint64_t *__return_ptr a1@<X8>, WTF::UUIDHash *this@<X1>, uint64_t *a3@<X0>, uint64_t *a4@<X2>)
{
  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E13E5F4);
  }

  v8 = *a3;
  if (*a3 || (WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a3, 0), (v8 = *a3) != 0))
  {
    v9 = *(v8 - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = WTF::UUIDHash::hash(this, this) & v9;
  v11 = (v8 + 32 * v10);
  v13 = *v11;
  v12 = v11[1];
  if (*v11 == 0)
  {
LABEL_17:
    *v11 = *this;
    v17 = *a4;
    CFRetain(*(v17 + 8));
    v18 = v11[2];
    v11[2] = v17;
    if (v18)
    {
      CFRelease(*(v18 + 8));
    }

    v19 = *a3;
    if (*a3)
    {
      v20 = *(v19 - 12) + 1;
    }

    else
    {
      v20 = 1;
    }

    *(v19 - 12) = v20;
    v23 = (*(v19 - 16) + v20);
    v24 = *(v19 - 4);
    if (v24 > 0x400)
    {
      if (v24 <= 2 * v23)
      {
LABEL_26:
        v11 = WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(a3, v11);
        v19 = *a3;
        if (*a3)
        {
          v24 = *(v19 - 4);
        }

        else
        {
          v24 = 0;
        }
      }
    }

    else if (3 * v24 <= 4 * v23)
    {
      goto LABEL_26;
    }

    *a1 = v11;
    a1[1] = v19 + 32 * v24;
    *(a1 + 16) = 1;
    return;
  }

  v14 = 0;
  v15 = 1;
  while (v12 != *(this + 1) || v13 != *this)
  {
    if (!(v13 ^ 1 | v12))
    {
      v14 = v11;
    }

    v10 = (v10 + v15) & v9;
    v11 = (v8 + 32 * v10);
    v13 = *v11;
    v12 = v11[1];
    ++v15;
    if (*v11 == 0)
    {
      if (v14)
      {
        *v14 = 0;
        v14[1] = 0;
        v14[2] = 0;
        --*(*a3 - 16);
        v11 = v14;
      }

      goto LABEL_17;
    }
  }

  v21 = *a3;
  if (*a3)
  {
    v22 = *(v21 - 4);
  }

  else
  {
    v22 = 0;
  }

  *a1 = v11;
  a1[1] = v21 + 32 * v22;
  *(a1 + 16) = 0;
  v25 = *a4;
  CFRetain(*(*a4 + 8));
  v26 = v11[2];
  v11[2] = v25;
  if (v26)
  {
    v27 = *(v26 + 8);

    CFRelease(v27);
  }
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v5, a2);
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2, uint64_t a3)
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

  v9 = a2;
  v10 = WTF::fastMalloc(0x10, ((32 * a2) | 0x10));
  if (v4)
  {
    v12 = v10 + 2;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      v12 += 4;
      --v9;
    }

    while (v9);
  }

  *a1 = (v10 + 2);
  *(v10 + 2) = v4 - 1;
  *(v10 + 3) = v4;
  *v10 = 0;
  *(v10 + 1) = v8;
  if (v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v6 + 32 * v13;
      if (*v15 ^ 1 | *(v15 + 8))
      {
        if (*v15 == 0)
        {
          v16 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v16)
          {
            CFRelease(*(v16 + 8));
          }
        }

        else
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

          v19 = WTF::UUIDHash::hash((v6 + 32 * v13), v11);
          v20 = 0;
          do
          {
            v21 = v19 & v18;
            v22 = v17 + 32 * v21;
            v19 = ++v20 + v21;
          }

          while (*v22 != 0);
          v23 = *(v22 + 16);
          *(v22 + 16) = 0;
          if (v23)
          {
            CFRelease(*(v23 + 8));
          }

          *v22 = *v15;
          v24 = *(v15 + 16);
          *(v15 + 16) = 0;
          *(v22 + 16) = v24;
          v25 = *(v15 + 16);
          *(v15 + 16) = 0;
          if (v25)
          {
            CFRelease(*(v25 + 8));
          }

          if (v15 == a3)
          {
            v14 = v22;
          }
        }
      }

      ++v13;
    }

    while (v13 != v7);
  }

  else
  {
    v14 = 0;
    result = 0;
    if (!v6)
    {
      return result;
    }
  }

  WTF::fastFree((v6 - 16), v11);
  return v14;
}

uint64_t WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,WTF::UUID>(uint64_t *a1, WTF::UUIDHash *this)
{
  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E13E8A8);
  }

  v2 = *a1;
  if (*a1)
  {
    v4 = *(v2 - 8);
    v5 = WTF::UUIDHash::hash(this, this);
    v6 = *this;
    v7 = *(this + 1);
    v8 = v5 & v4;
    v9 = (v2 + 32 * v8);
    v10 = *v9;
    v11 = v9[1];
    if (v11 == v7 && v10 == v6)
    {
      return *(v2 + 32 * v8 + 16);
    }

    v13 = 1;
    while (v10 | v11)
    {
      v8 = (v8 + v13) & v4;
      v14 = (v2 + 32 * v8);
      v10 = *v14;
      v11 = v14[1];
      v15 = v11 == v7 && v10 == v6;
      ++v13;
      if (v15)
      {
        return *(v2 + 32 * v8 + 16);
      }
    }
  }

  return 0;
}

void WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::take(uint64_t *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = (v3 + 32 * *(v3 - 4));
  }

  else
  {
    v4 = 0;
  }

  if (v4 == a2)
  {
    *a3 = 0;
    return;
  }

  v5 = a2[2];
  if (v5)
  {
    a2[2] = 0;
    v3 = *result;
  }

  *a3 = v5;
  if (v3)
  {
    v6 = (v3 + 32 * *(v3 - 4));
    if (v6 == a2)
    {
      return;
    }
  }

  else
  {
    if (!a2)
    {
      return;
    }

    v6 = 0;
  }

  if (v6 != a2)
  {
    WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove(result, a2);
  }
}

void WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::remove(uint64_t *a1, void *a2)
{
  v3 = a2[2];
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 1;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *a1;
  v5 = vadd_s32(*(*a1 - 16), 0xFFFFFFFF00000001);
  *(v4 - 16) = v5;
  v6 = *(v4 - 4);
  if (6 * v5.i32[1] < v6 && v6 >= 9)
  {

    WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::rehash(a1, v6 >> 1, 0);
  }
}

uint64_t WTF::HashTable<WTF::UUID,WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>>,WTF::DefaultHash<WTF::UUID>,WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::UUID>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::UUID,WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>,WTF::DefaultHash<WTF::UUID>,WTF::HashTraits<WTF::UUID>,WTF::HashTraits<WTF::Ref<WebKit::WebNotification,WTF::RawPtrTraits<WebKit::WebNotification>,WTF::DefaultRefDerefTraits<WebKit::WebNotification>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::UUID>>,(WTF::ShouldValidateKey)1,WTF::UUID>(uint64_t *a1, WTF::UUIDHash *this)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  if (!(*this ^ 1 | *(this + 1)) || *this == 0)
  {
    __break(0xC471u);
    JUMPOUT(0x19E13EACCLL);
  }

  v5 = *(v2 - 8);
  v6 = WTF::UUIDHash::hash(this, this);
  v7 = *this;
  v8 = *(this + 1);
  v9 = v6 & v5;
  v10 = (v2 + 32 * v9);
  v11 = *v10;
  v12 = v10[1];
  if (v12 == v8 && v11 == v7)
  {
    return v2 + 32 * v9;
  }

  v14 = 1;
  while (v11 | v12)
  {
    v9 = (v9 + v14) & v5;
    v15 = (v2 + 32 * v9);
    v11 = *v15;
    v12 = v15[1];
    v16 = v12 == v8 && v11 == v7;
    ++v14;
    if (v16)
    {
      return v2 + 32 * v9;
    }
  }

  if (*a1)
  {
    return *a1 + 32 * *(*a1 - 4);
  }

  else
  {
    return 0;
  }
}

uint64_t *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::remove(uint64_t *result, void *a2)
{
  *a2 = -1;
  v2 = *result;
  v3 = vadd_s32(*(*result - 16), 0xFFFFFFFF00000001);
  *(v2 - 16) = v3;
  v4 = *(v2 - 4);
  if (6 * v3.i32[1] < v4 && v4 >= 9)
  {
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(result, v4 >> 1, 0);
  }

  return result;
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::UUID,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::UUID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,(WTF::ShouldValidateKey)1,WTF::ObjectIdentifierGeneric<WebKit::WebNotificationIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
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
    JUMPOUT(0x19E13EC0CLL);
  }

  v4 = *(v2 - 8);
  v5 = (v3 + ~(v3 << 32)) ^ ((v3 + ~(v3 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v2 + 32 * v8);
  if (v9 == v3)
  {
    return v2 + 32 * v8;
  }

  v10 = 1;
  while (v9)
  {
    v8 = (v8 + v10) & v4;
    v9 = *(v2 + 32 * v8);
    ++v10;
    if (v9 == v3)
    {
      return v2 + 32 * v8;
    }
  }

  return v2 + 32 * *(v2 - 4);
}

uint64_t **WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t **result, __int128 *a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 28))
  {
    v6 = 16 * a3;
    v7 = WTF::fastMalloc(0, (16 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *a2++;
      *&(*v3)[2 * v8] = v9;
      v8 = *(v3 + 3) + 1;
      *(v3 + 3) = v8;
      v6 -= 16;
    }

    while (v6);
    return v3;
  }

  __break(0xC471u);
  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebNotificationManager::DidUpdateNotificationDecision>(uint64_t a1, char *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2143;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v4, *a2);
  IPC::Encoder::operator<<<BOOL &>(v4, a2 + 8);
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

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebNotificationManager::DidRemoveNotificationDecisions>(uint64_t a1, void *a2)
{
  v4 = IPC::Encoder::operator new(0x238, a2);
  *v4 = 2141;
  *(v4 + 68) = 0;
  *(v4 + 70) = 0;
  *(v4 + 69) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 1) = 0;
  IPC::Encoder::encodeHeader(v4);
  v12 = v4;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, *a2);
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

BOOL WebKit::WebNotificationProvider::show(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    if (a2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    v3(v4, *(a3 + 8), *(a1 + 16));
  }

  return v3 != 0;
}

uint64_t WebKit::WebNotificationProvider::cancel(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return v2(*(a2 + 8), *(result + 16));
  }

  return result;
}

uint64_t WebKit::WebNotificationProvider::didDestroyNotification(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    return v2(*(a2 + 8), *(result + 16));
  }

  return result;
}

uint64_t WebKit::WebNotificationProvider::clearNotifications(uint64_t result, unint64_t a2)
{
  if (*(result + 72))
  {
    v3 = result;
    v13 = 0;
    v14 = 0;
    v4 = *(a2 + 12);
    if (v4)
    {
      v5 = (v4 >> 29);
      if (v5)
      {
        __break(0xC471u);
        return result;
      }

      v6 = WTF::fastMalloc(v5, (8 * v4));
      LODWORD(v14) = v4;
      v13 = v6;
      if (*(a2 + 12))
      {
        v7 = v6;
        v8 = 0;
        do
        {
          v9 = v8;
          API::UInt64::create(*(*a2 + 8 * v8), &v15);
          v8 = v9 + 1;
          v7[v9] = v15;
        }

        while (v9 + 1 < *(a2 + 12));
        HIDWORD(v14) = v9 + 1;
      }
    }

    v10 = *(v3 + 72);
    API::Array::create(&v13, &v15);
    v11 = v15;
    if (v15)
    {
      v10(v15->var1, *(v3 + 16));
      CFRelease(v11->var1);
    }

    else
    {
      v10(0, *(v3 + 16));
    }

    return WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v12);
  }

  return result;
}

uint64_t WebKit::WebNotificationProvider::addNotificationManager(uint64_t this, WebKit::WebNotificationManagerProxy *a2)
{
  v2 = *(this + 48);
  if (v2)
  {
    return v2(*(a2 + 1), *(this + 16));
  }

  return this;
}

uint64_t WebKit::WebNotificationProvider::removeNotificationManager(uint64_t this, WebKit::WebNotificationManagerProxy *a2)
{
  v2 = *(this + 56);
  if (v2)
  {
    return v2(*(a2 + 1), *(this + 16));
  }

  return this;
}

void WebKit::WebNotificationProvider::notificationPermissions(WebKit::WebNotificationProvider *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  v3 = *(this + 8);
  if (v3)
  {
    v4 = v3(*(this + 2));
    if (v4)
    {
      v5 = [v4 _apiObject];
      if ((*(*v5 + 16))(v5) != 9)
      {
        __break(0xC471u);
LABEL_53:
        JUMPOUT(0x19E13F31CLL);
      }

      API::Dictionary::keys(&v35, v5);
      v6 = v35;
      if (!HIDWORD(v35[1].var1))
      {
        goto LABEL_48;
      }

      v7 = 0;
      v32 = v5;
LABEL_6:
      v8 = API::Array::at<API::String>(v6, v7);
      v9 = v8;
      if (v8)
      {
        CFRetain(*(v8 + 8));
      }

      WTF::String::isolatedCopy();
      WTF::String::isolatedCopy();
      v11 = API::Dictionary::get<API::Boolean>(v5, &v33, v10);
      if (v34 == -1)
      {
        __break(0xC471u);
        goto LABEL_53;
      }

      if (!v34)
      {
        __break(0xC471u);
        JUMPOUT(0x19E13F33CLL);
      }

      v14 = *(v11 + 16);
      v15 = *a2;
      if (*a2 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, 0), (v15 = *a2) != 0))
      {
        v16 = *(v15 - 8);
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v34 + 4);
      if (v17 < 0x100)
      {
        v18 = WTF::StringImpl::hashSlowCase(v34);
      }

      else
      {
        v18 = v17 >> 8;
      }

      v19 = 0;
      for (i = 1; ; ++i)
      {
        v21 = v18 & v16;
        v22 = v15 + 16 * (v18 & v16);
        v23 = *v22;
        if (*v22 == -1)
        {
          v19 = (v15 + 16 * v21);
        }

        else
        {
          if (!v23)
          {
            if (v19)
            {
              *v19 = 0;
              v19[1] = 0;
              --*(*a2 - 16);
              v22 = v19;
            }

            v24 = v34;
            v34 = 0;
            v25 = *v22;
            *v22 = v24;
            v5 = v32;
            if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v25, v12);
            }

            *(v22 + 8) = v14;
            v26 = *a2;
            if (*a2)
            {
              v27 = *(v26 - 12) + 1;
            }

            else
            {
              v27 = 1;
            }

            *(v26 - 12) = v27;
            v28 = (*(v26 - 16) + v27);
            v29 = *(v26 - 4);
            if (v29 > 0x400)
            {
              if (v29 <= 2 * v28)
              {
LABEL_31:
                WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,BOOL>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,BOOL,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(a2, v22);
              }
            }

            else if (3 * v29 <= 4 * v28)
            {
              goto LABEL_31;
            }

LABEL_32:
            v30 = v33;
            v33 = 0;
            if (v30 && atomic_fetch_add_explicit(v30, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v30, v12);
            }

            v31 = v34;
            v34 = 0;
            if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v31, v12);
              if (v9)
              {
LABEL_38:
                CFRelease(*(v9 + 8));
              }
            }

            else if (v9)
            {
              goto LABEL_38;
            }

            ++v7;
            v6 = v35;
            if (v7 >= HIDWORD(v35[1].var1))
            {
LABEL_48:
              CFRelease(v6->var1);
              CFRelease(*(v5 + 8));
              return;
            }

            goto LABEL_6;
          }

          if (WTF::equal(v23, v34, v13))
          {
            *(v22 + 8) = v14;
            v5 = v32;
            goto LABEL_32;
          }
        }

        v18 = i + v21;
      }
    }
  }
}

void WebKit::RemoteScrollingCoordinatorProxy::~RemoteScrollingCoordinatorProxy(WebKit::RemoteScrollingCoordinatorProxy *this)
{
  *this = &unk_1F1120790;
  WebKit::RemoteScrollingTree::invalidate(*(this + 4));
  v3 = *(this + 18);
  if (v3)
  {
    WTF::fastFree((v3 - 16), v2);
  }

  v4 = *(this + 14);
  if (v4)
  {
    WTF::fastFree((v4 - 16), v2);
  }

  v5 = *(this + 13);
  if (v5)
  {
    WTF::fastFree((v5 - 16), v2);
  }

  v6 = *(this + 12);
  if (v6)
  {
    WTF::fastFree((v6 - 16), v2);
  }

  v7 = *(this + 4);
  *(this + 4) = 0;
  if (v7)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTree,(WTF::DestructionThread)0>::deref((v7 + 8), v2);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v8);
    WTF::fastFree(v8, v2);
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v2);
}

unsigned int *WebKit::RemoteScrollingTree::invalidate(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 16;
  atomic_compare_exchange_strong_explicit(this + 16, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 16);
  }

  WebCore::ScrollingTree::removeAllNodes(this);
  result = *(this + 47);
  *(this + 47) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v4);
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {

    return WTF::Lock::unlockSlow(v3);
  }

  return result;
}

uint64_t WebKit::RemoteScrollingCoordinatorProxy::protectedWebPageProxy@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::RemoteScrollingCoordinatorProxy *this@<X0>)
{
  v3 = *(*(this + 3) + 8);
  if (v3)
  {
    v4 = v3 - 16;
    result = CFRetain(*(v3 - 8));
    *a1 = v4;
  }

  else
  {
    result = 103;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteScrollingCoordinatorProxy::layerTreeHost(WebKit::RemoteScrollingCoordinatorProxy *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    v2 = *(v1 + 312);
    if (!v2 || *(v2 + 36))
    {
      return 0;
    }

    v3 = *(v2 + 72);
    *(v2 + 72) = v3 + 1;
    v4 = *(v2 + 80);
    if (v3)
    {
      *(v2 + 72) = v3;
    }

    else
    {
      (*(*v2 + 24))(v2);
    }

    return v4;
  }

  else
  {
    result = 92;
    __break(0xC471u);
  }

  return result;
}

void WebKit::RemoteScrollingCoordinatorProxy::commitScrollingTreeState(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a6@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  buf[0] = 0;
  v17 = 0;
  std::__optional_storage_base<WebCore::RequestedScrollData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RequestedScrollData,false>>(a1 + 40, buf);
  v10 = *a3;
  *a3 = 0;
  v11 = WebKit::RemoteScrollingCoordinatorProxy::layerTreeHost(a1);
  if (v11)
  {
    v12 = v11;
    *(v10 + 24) = a3[2];
    (*(*a1 + 200))(a1, v10, v11);
    if (WebCore::ScrollingTree::commitTreeState())
    {
      (*(*a1 + 208))(a1, v12);
      if (*(a3 + 8) == 1)
      {
        WebCore::ScrollingTree::clearLatchedNode(*(a1 + 32));
      }

      buf[0] = 0;
      v17 = 0;
      v13 = *(a1 + 56);
      *a6 = *(a1 + 40);
      *(a6 + 16) = v13;
      *(a6 + 32) = *(a1 + 72);
      std::__optional_storage_base<WebCore::RequestedScrollData,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebCore::RequestedScrollData,false>>(a1 + 40, buf);
      goto LABEL_10;
    }

    v14 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446210;
      v16 = "std::optional<RequestedScrollData> WebKit::RemoteScrollingCoordinatorProxy::commitScrollingTreeState(IPC::Connection &, const RemoteScrollingCoordinatorTransaction &, std::optional<LayerHostingContextIdentifier>)";
      _os_log_fault_impl(&dword_19D52D000, v14, OS_LOG_TYPE_FAULT, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/UIProcess/RemoteLayerTree/RemoteScrollingCoordinatorProxy.cpp 109: Invalid message dispatched %{public}s", buf, 0xCu);
    }

    *(a2 + 94) = 1;
    if (IPC::s_shouldCrashOnMessageCheckFailure == 1)
    {
      __break(0xC471u);
      return;
    }
  }

  *a6 = 0;
  *(a6 + 44) = 0;
LABEL_10:
  if (v10)
  {
    WebCore::ScrollingStateTree::operator delete();
  }
}

void WebKit::RemoteScrollingCoordinatorProxy::handleWheelEvent(WebCore::ScrollingTree **a1, const WebKit::WebWheelEvent *a2, unsigned int a3)
{
  v12 = *MEMORY[0x1E69E9840];
  WebKit::WebKit2PlatformWheelEvent::WebKit2PlatformWheelEvent(v11, a2);
  if (v11[92] == 1)
  {
    WebCore::ScrollingTree::setClientAllowedMainFrameRubberBandableEdges();
  }

  v5 = WebCore::ScrollingTree::determineWheelEventProcessing();
  v6 = v5;
  if (v5)
  {
    WebCore::ScrollingTree::willProcessWheelEvent(a1[4]);
    (*(*a1 + 8))(v10, a1, v11);
    v8 = (*(*a1[4] + 56))(a1[4], v10, v6);
    v9 = v8;
    (*(*a1 + 27))(a1, (v8 >> 8) & 1);
    v7 = v9;
  }

  else
  {
    v7 = v5;
  }

  WebKit::RemoteScrollingCoordinatorProxy::continueWheelEventHandling(a1, a2, v7);
}

void WebKit::RemoteScrollingCoordinatorProxy::continueWheelEventHandling(uint64_t a1, const WebKit::WebWheelEvent *a2, __int16 a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v8 = a3;
  WebKit::WebKit2PlatformWheelEvent::WebKit2PlatformWheelEvent(v9, a2);
  started = WebCore::ScrollingTree::willWheelEventStartSwipeGesture();
  v6 = *(*(a1 + 24) + 8);
  if (v6)
  {
    v7 = started;
    CFRetain(*(v6 - 8));
    WebKit::WebPageProxy::continueWheelEventHandling(v6 - 16, a2, &v8, v7 | 0x100);
    CFRelease(*(v6 - 8));
  }

  else
  {
    __break(0xC471u);
  }
}

void WebKit::RemoteScrollingCoordinatorProxy::sendScrollingTreeNodeDidScroll(WebKit::RemoteScrollingCoordinatorProxy *this)
{
  v2 = *(*(this + 3) + 8);
  if (v2)
  {
    CFRetain(*(v2 - 8));
    if ((WebKit::WebPageProxy::scrollingUpdatesDisabledForTesting((v2 - 16)) & 1) == 0)
    {
      WebCore::ScrollingTree::takePendingScrollUpdates(&v16._attr.layer, *(this + 4));
      objc_observation_info_high = HIDWORD(v16._attr._objc_observation_info);
      if (HIDWORD(v16._attr._objc_observation_info))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = v16._attr.layer + v6;
          WebKit::WebPageProxy::scrollingNodeScrollViewDidScroll(v2 - 16, *(v16._attr.layer + v6), *(v16._attr.layer + v6 + 8));
          v9 = *(v2 + 1024);
          if (v9 && v8[32] == 1)
          {
            WebCore::ScrollingTree::layoutViewport(*(this + 4));
            v16._attr.refcount = v10;
            v16._attr.magic = v11;
            if ((v8[32] & 1) == 0)
            {
              __break(1u);
              goto LABEL_14;
            }

            v16.super.isa = *(v8 + 3);
            v12 = WebKit::RemoteLayerTreeScrollingPerformanceData::blankPixelCount(v9, &v16);
            WebKit::RemoteLayerTreeScrollingPerformanceData::appendBlankPixelCount(v9, 1, v12);
          }

          v13 = WebCore::ScrollingTree::frameIDForScrollingNodeID();
          v1 = v1 & 0xFFFFFFFF00000000 | *(v8 + 8);
          WebKit::WebPageProxy::sendScrollPositionChangedForNode((v2 - 16), v13, v14, *v8, *(v8 + 1), v8 + 2, *(v8 + 3), v1, v8[37] == 2, v7 == objc_observation_info_high - 1);
          *(this + 136) = 1;
          ++v7;
          objc_observation_info_high = HIDWORD(v16._attr._objc_observation_info);
          v6 += 40;
        }

        while (v7 < HIDWORD(v16._attr._objc_observation_info));
      }

      layer = v16._attr.layer;
      if (v16._attr.layer)
      {
        v16._attr.layer = 0;
        LODWORD(v16._attr._objc_observation_info) = 0;
        WTF::fastFree(layer, v4);
      }
    }

    CFRelease(*(v2 - 8));
  }

  else
  {
LABEL_14:
    __break(0xC471u);
  }
}

WTF::RunLoop *WebKit::RemoteScrollingCoordinatorProxy::receivedLastScrollingTreeNodeDidScrollReply(WebKit::RemoteScrollingCoordinatorProxy *this)
{
  *(this + 136) = 0;
  result = WebCore::ScrollingTree::hasPendingScrollUpdates(*(this + 4));
  if (result)
  {
    WTF::RunLoop::mainSingleton(result);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v3 = *(this + 1);
    v4 = WTF::fastMalloc(atomic_fetch_add(v3, 1u), 0x10);
    *v4 = &unk_1F1120BE0;
    v4[1] = v3;
    v5 = v4;
    WTF::RunLoop::dispatch();
    result = v5;
    if (v5)
    {
      return (*(*v5 + 8))(v5);
    }
  }

  return result;
}

uint64_t WebKit::RemoteScrollingCoordinatorProxy::scrollingTreeNodeRequestsScroll(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *(*(a1 + 32) + 24);
  if (v4)
  {
    v6 = *(v4 + 56);
    v5 = *(v4 + 64);
    if (a2 == v6 && a3 == v5)
    {
      if (*(a1 + 84) == 1)
      {
        v8 = *a4;
        *(a1 + 55) = *(a4 + 15);
        *(a1 + 40) = v8;
        if (*(a1 + 80) == *(a4 + 40))
        {
          if (*(a1 + 80))
          {
            *(a1 + 60) = *(a4 + 20);
            v9 = *(a4 + 3);
            *(a1 + 72) = *(a4 + 8);
            *(a1 + 64) = v9;
            *(a1 + 76) = *(a4 + 18);
          }
        }

        else
        {
          if (!*(a1 + 80))
          {
            v12 = *(a4 + 20);
            *(a1 + 76) = *(a4 + 9);
            *(a1 + 60) = v12;
            v4 = 1;
            *(a1 + 80) = 1;
            return v4;
          }

          *(a1 + 80) = 0;
        }

        return 1;
      }

      else
      {
        v10 = *a4;
        v11 = a4[1];
        *(a1 + 68) = *(a4 + 28);
        *(a1 + 56) = v11;
        *(a1 + 40) = v10;
        v4 = 1;
        *(a1 + 84) = 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

void WebKit::RemoteScrollingCoordinatorProxy::sendUIStateChangedIfNecessary(WebKit::RemoteScrollingCoordinatorProxy *this)
{
  v1 = this + 88;
  if (*(this + 88))
  {
    v3 = *(*(this + 3) + 8);
    if (!v3 || (CFRetain(*(v3 - 8)), v4 = *(v3 + 336), atomic_fetch_add((v4 + 16), 1u), v7 = v1, (v5 = *(*(this + 3) + 8)) == 0))
    {
      __break(0xC471u);
      JUMPOUT(0x19E13FE38);
    }

    WebKit::AuxiliaryProcessProxy::send<Messages::RemoteScrollingCoordinator::ScrollingStateInUIProcessChanged>(v4, &v7, *(v5 + 32), 0);
    if (v4)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16), v6);
    }

    CFRelease(*(v3 - 8));
    *v1 = 0;
  }
}

atomic_ullong *WebKit::RemoteScrollingCoordinatorProxy::scrollbarStateForScrollingNodeID@<X0>(uint64_t a3@<X2>, void *a4@<X8>)
{
  result = WebCore::ScrollingTree::nodeForID();
  if (result)
  {
    v8 = result;
    v9 = result + 1;
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
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v9);
LABEL_7:
    v12 = v8[48];
    v13 = v12 > 5;
    v14 = (1 << v12) & 0x2B;
    if (!v13 && v14 != 0)
    {
      (*(*v8 + 120))(v8, a3);
      return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v9, v16);
    }

    result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ScrollingTreeNode,(WTF::DestructionThread)0>::deref(v9, v7);
  }

  v17 = MEMORY[0x1E696EB88];
  atomic_fetch_add_explicit(MEMORY[0x1E696EB88], 2u, memory_order_relaxed);
  *a4 = v17;
  return result;
}

void WebKit::RemoteScrollingTree::~RemoteScrollingTree(WebKit::RemoteScrollingTree *this, void *a2)
{
  *this = &unk_1F1120880;
  v3 = *(this + 47);
  *(this + 47) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  MEMORY[0x1EEE55378](this);
}

{
  WebKit::RemoteScrollingTree::~RemoteScrollingTree(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::RemoteScrollingTree::scrollingTreeNodeDidScroll(uint64_t a1, uint64_t a2, char a3)
{
  WebCore::ScrollingTree::scrollingTreeNodeDidScroll();
  v4 = *(a1 + 376);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      ++*(v5 + 16);
      WebCore::ScrollingTree::addPendingScrollUpdate();
      if ((*(v5 + 136) & 1) == 0)
      {
        WebKit::RemoteScrollingCoordinatorProxy::sendScrollingTreeNodeDidScroll(v5);
      }

      v6 = *(v5 + 16);
      if (v6)
      {
        *(v5 + 16) = v6 - 1;
      }

      else
      {
        __break(0xC471u);
      }
    }
  }
}

void WebKit::RemoteScrollingTree::scrollingTreeNodeDidStopAnimatedScroll(WebKit::RemoteScrollingTree *this, WebCore::ScrollingTreeScrollingNode *a2)
{
  v2 = *(this + 47);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ++*(v3 + 16);
      v16 = *(a2 + 56);
      v4 = *(*(v3 + 24) + 8);
      if (!v4)
      {
        __break(0xC471u);
        goto LABEL_19;
      }

      CFRetain(*(v4 - 8));
      v6 = *(v4 + 336);
      atomic_fetch_add((v6 + 16), 1u);
      v7 = *(*(v3 + 24) + 8);
      if (!v7)
      {
        __break(0xC471u);
        JUMPOUT(0x19E140280);
      }

      v8 = *(v7 + 32);
      v9 = IPC::Encoder::operator new(0x238, v5);
      *v9 = 1619;
      *(v9 + 2) = 0;
      *(v9 + 3) = 0;
      *(v9 + 1) = v8;
      *(v9 + 68) = 0;
      *(v9 + 70) = 0;
      *(v9 + 69) = 0;
      IPC::Encoder::encodeHeader(v9);
      v19 = v9;
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v9, &v16);
      LOBYTE(v17) = 0;
      v18 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v6, &v19, 0, &v17, 1);
      if (v18 == 1)
      {
        v11 = v17;
        v17 = 0;
        if (v11)
        {
          (*(*v11 + 8))(v11);
        }
      }

      v12 = v19;
      v19 = 0;
      if (v12)
      {
        IPC::Encoder::~Encoder(v12, v10);
        bmalloc::api::tzoneFree(v14, v15);
        if (!v6)
        {
          goto LABEL_11;
        }
      }

      else if (!v6)
      {
LABEL_11:
        CFRelease(*(v4 - 8));
        v13 = *(v3 + 16);
        if (v13)
        {
          *(v3 + 16) = v13 - 1;
          return;
        }

        __break(0xC471u);
LABEL_19:
        JUMPOUT(0x19E140260);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v10);
      goto LABEL_11;
    }
  }
}

uint64_t WebKit::RemoteScrollingTree::scrollingTreeNodeRequestsScroll(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  ++v2[4];
  result = (*(*v2 + 16))(v2);
  v4 = v2[4];
  if (v4)
  {
    v2[4] = v4 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteScrollingTree::scrollingTreeNodeRequestsKeyboardScroll(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v1 + 8);
  if (!v2)
  {
    return 0;
  }

  ++v2[4];
  result = (*(*v2 + 24))(v2);
  v4 = v2[4];
  if (v4)
  {
    v2[4] = v4 - 1;
  }

  else
  {
    result = 290;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::RemoteScrollingTree::scrollingTreeNodeWillStartScroll(uint64_t result)
{
  v1 = *(result + 376);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++v2[4];
      result = (*(*v2 + 80))(v2);
      v3 = v2[4];
      if (v3)
      {
        v2[4] = v3 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteScrollingTree::scrollingTreeNodeDidEndScroll(uint64_t result)
{
  v1 = *(result + 376);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++v2[4];
      result = (*(*v2 + 88))(v2);
      v3 = v2[4];
      if (v3)
      {
        v2[4] = v3 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteScrollingTree::clearNodesWithUserScrollInProgress(WebKit::RemoteScrollingTree *this)
{
  result = WebCore::ScrollingTree::clearNodesWithUserScrollInProgress(this);
  v3 = *(this + 47);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++v4[4];
      result = (*(*v4 + 96))(v4);
      v5 = v4[4];
      if (v5)
      {
        v4[4] = v5 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteScrollingTree::scrollingTreeNodeDidBeginScrollSnapping(uint64_t result)
{
  v1 = *(result + 376);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++v2[4];
      result = (*(*v2 + 128))(v2);
      v3 = v2[4];
      if (v3)
      {
        v2[4] = v3 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

uint64_t WebKit::RemoteScrollingTree::scrollingTreeNodeDidEndScrollSnapping(uint64_t result)
{
  v1 = *(result + 376);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++v2[4];
      result = (*(*v2 + 136))(v2);
      v3 = v2[4];
      if (v3)
      {
        v2[4] = v3 - 1;
      }

      else
      {
        result = 290;
        __break(0xC471u);
      }
    }
  }

  return result;
}

void WebKit::RemoteScrollingTree::stickyScrollingTreeNodeBeganSticking(uint64_t a1)
{
  v1 = *(a1 + 376);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 16);
      v3 = *(*(v2 + 24) + 8);
      if (!v3)
      {
        __break(0xC471u);
        JUMPOUT(0x19E140740);
      }

      CFRetain(*(v3 - 8));
      WebKit::WebPageProxy::stickyScrollingTreeNodeBeganSticking((v3 - 16));
      CFRelease(*(v3 - 8));
      v4 = *(v2 + 16);
      if (!v4)
      {
        __break(0xC471u);
        JUMPOUT(0x19E140760);
      }

      *(v2 + 16) = v4 - 1;
    }
  }
}

uint64_t WebKit::RemoteScrollingTree::createScrollingTreeNode(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 > 6)
  {
    if (a2 == 7)
    {
      return MEMORY[0x1EEE598A8](a1, a3, a4);
    }

    if (a2 != 8)
    {
      if (a2 == 9)
      {
        return MEMORY[0x1EEE5A030](a1, a3, a4);
      }

      return MEMORY[0x1EEE598A8](a1, a3, a4);
    }

    return MEMORY[0x1EEE599D8](a1, a3, a4);
  }

  else
  {
    switch(a2)
    {
      case 2:
        return MEMORY[0x1EEE59C20](a1, a3, a4);
      case 4:
        return MEMORY[0x1EEE59D78](a1, a3, a4);
      case 6:
        return MEMORY[0x1EEE5A3C0](a1, a3, a4);
      default:
        return MEMORY[0x1EEE598A8](a1, a3, a4);
    }
  }
}

void WebKit::RemoteScrollingTree::currentSnapPointIndicesDidChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 376);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      ++*(v6 + 16);
      v21[0] = a2;
      v21[1] = a3;
      v19 = a5;
      v20 = a4;
      v7 = *(*(v6 + 24) + 8);
      if (!v7)
      {
        __break(0xC471u);
        goto LABEL_19;
      }

      CFRetain(*(v7 - 8));
      v9 = *(v7 + 336);
      atomic_fetch_add((v9 + 16), 1u);
      v10 = *(*(v6 + 24) + 8);
      if (!v10)
      {
        __break(0xC471u);
        JUMPOUT(0x19E1409A0);
      }

      v11 = *(v10 + 32);
      v12 = IPC::Encoder::operator new(0x238, v8);
      *v12 = 1620;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = v11;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      IPC::Encoder::encodeHeader(v12);
      v24 = v12;
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v12, v21);
      IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v12, &v20);
      IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(v12, &v19);
      LOBYTE(v22) = 0;
      v23 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v9, &v24, 0, &v22, 1);
      if (v23 == 1)
      {
        v14 = v22;
        v22 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      v15 = v24;
      v24 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v13);
        bmalloc::api::tzoneFree(v17, v18);
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else if (!v9)
      {
LABEL_11:
        CFRelease(*(v7 - 8));
        v16 = *(v6 + 16);
        if (v16)
        {
          *(v6 + 16) = v16 - 1;
          return;
        }

        __break(0xC471u);
LABEL_19:
        JUMPOUT(0x19E140980);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v13);
      goto LABEL_11;
    }
  }
}

uint64_t WebKit::RemoteScrollingTree::reportExposedUnfilledArea(uint64_t this, MonotonicTime a2)
{
  v2 = *(this + 376);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      v4 = *(v3 + 16);
      *(v3 + 16) = v4 + 1;
      if (v4 == -1)
      {
        this = 290;
        __break(0xC471u);
      }

      else
      {
        *(v3 + 16) = v4;
      }
    }
  }

  return this;
}

uint64_t WebKit::RemoteScrollingTree::reportSynchronousScrollingReasonsChanged(uint64_t result, unsigned __int8 a2, double a3)
{
  v3 = *(result + 376);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v4 + 16) + 1;
      *(v4 + 16) = v5;
      v6 = *(*(v4 + 24) + 8);
      if (!v6)
      {
        goto LABEL_9;
      }

      result = *(v6 + 1024);
      if (result)
      {
        result = WebKit::RemoteLayerTreeScrollingPerformanceData::appendSynchronousScrollingChange(result, a2, a3);
        v5 = *(v4 + 16);
      }

      if (!v5)
      {
LABEL_9:
        __break(0xC471u);
        JUMPOUT(0x19E140A8CLL);
      }

      *(v4 + 16) = v5 - 1;
    }
  }

  return result;
}

void WebKit::RemoteScrollingTree::receivedWheelEventWithPhases(uint64_t a1, char a2, char a3)
{
  v3 = *(a1 + 376);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 16);
      v5 = *(*(v4 + 24) + 8);
      if (!v5)
      {
        __break(0xC471u);
        goto LABEL_19;
      }

      CFRetain(*(v5 - 8));
      v9 = *(v5 + 336);
      atomic_fetch_add((v9 + 16), 1u);
      v10 = *(*(v4 + 24) + 8);
      if (!v10)
      {
        __break(0xC471u);
        JUMPOUT(0x19E140C68);
      }

      v11 = *(v10 + 32);
      v12 = IPC::Encoder::operator new(0x238, v8);
      *v12 = 1621;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      *(v12 + 1) = v11;
      *(v12 + 68) = 0;
      *(v12 + 70) = 0;
      *(v12 + 69) = 0;
      IPC::Encoder::encodeHeader(v12);
      v21 = v12;
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a2);
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(v12, a3);
      LOBYTE(v19) = 0;
      v20 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v9, &v21, 0, &v19, 1);
      if (v20 == 1)
      {
        v14 = v19;
        v19 = 0;
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }
      }

      v15 = v21;
      v21 = 0;
      if (v15)
      {
        IPC::Encoder::~Encoder(v15, v13);
        bmalloc::api::tzoneFree(v17, v18);
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      else if (!v9)
      {
LABEL_11:
        CFRelease(*(v5 - 8));
        v16 = *(v4 + 16);
        if (v16)
        {
          *(v4 + 16) = v16 - 1;
          return;
        }

        __break(0xC471u);
LABEL_19:
        JUMPOUT(0x19E140C48);
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v13);
      goto LABEL_11;
    }
  }
}

void WebKit::RemoteScrollingTree::deferWheelEventTestCompletionForReason(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = *(a1 + 376);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = *(v5 + 16) + 1;
      *(v5 + 16) = v6;
      if (*(a1 + 369) != 1)
      {
        goto LABEL_15;
      }

      v19[0] = a2;
      v19[1] = a3;
      v20 = 1;
      if (*(*(v5 + 32) + 369) != 1)
      {
        goto LABEL_15;
      }

      v7 = *(*(v5 + 24) + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        v10 = *(v7 + 336);
        atomic_fetch_add((v10 + 16), 1u);
        v11 = *(*(v5 + 24) + 8);
        if (v11)
        {
          v12 = *(v11 + 32);
          v13 = IPC::Encoder::operator new(0x238, v9);
          *v13 = 1626;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          *(v13 + 1) = v12;
          *(v13 + 68) = 0;
          *(v13 + 70) = 0;
          *(v13 + 69) = 0;
          IPC::Encoder::encodeHeader(v13);
          v23 = v13;
          IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v13, v19);
          IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v13, a4);
          LOBYTE(v21) = 0;
          v22 = 0;
          WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v23, 0, &v21, 1);
          if (v22 == 1)
          {
            v15 = v21;
            v21 = 0;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }
          }

          v16 = v23;
          v23 = 0;
          if (v16)
          {
            IPC::Encoder::~Encoder(v16, v14);
            bmalloc::api::tzoneFree(v17, v18);
            if (!v10)
            {
              goto LABEL_14;
            }
          }

          else if (!v10)
          {
LABEL_14:
            CFRelease(*(v7 - 8));
            v6 = *(v5 + 16);
LABEL_15:
            if (v6)
            {
              *(v5 + 16) = v6 - 1;
              return;
            }

            __break(0xC471u);
LABEL_24:
            JUMPOUT(0x19E140E4CLL);
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v14);
          goto LABEL_14;
        }
      }

      else
      {
        __break(0xC471u);
        __break(1u);
      }

      __break(0xC471u);
      goto LABEL_24;
    }
  }
}

void WebKit::RemoteScrollingTree::removeWheelEventTestCompletionDeferralForReason(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v4 = *(a1 + 376);
  if (v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      v6 = *(v5 + 16) + 1;
      *(v5 + 16) = v6;
      if (*(a1 + 369) != 1)
      {
        goto LABEL_15;
      }

      v19[0] = a2;
      v19[1] = a3;
      v20 = 1;
      if (*(*(v5 + 32) + 369) != 1)
      {
        goto LABEL_15;
      }

      v7 = *(*(v5 + 24) + 8);
      if (v7)
      {
        CFRetain(*(v7 - 8));
        v10 = *(v7 + 336);
        atomic_fetch_add((v10 + 16), 1u);
        v11 = *(*(v5 + 24) + 8);
        if (v11)
        {
          v12 = *(v11 + 32);
          v13 = IPC::Encoder::operator new(0x238, v9);
          *v13 = 1627;
          *(v13 + 2) = 0;
          *(v13 + 3) = 0;
          *(v13 + 1) = v12;
          *(v13 + 68) = 0;
          *(v13 + 70) = 0;
          *(v13 + 69) = 0;
          IPC::Encoder::encodeHeader(v13);
          v23 = v13;
          IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardFrameItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::encode(v13, v19);
          IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(v13, a4);
          LOBYTE(v21) = 0;
          v22 = 0;
          WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v23, 0, &v21, 1);
          if (v22 == 1)
          {
            v15 = v21;
            v21 = 0;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }
          }

          v16 = v23;
          v23 = 0;
          if (v16)
          {
            IPC::Encoder::~Encoder(v16, v14);
            bmalloc::api::tzoneFree(v17, v18);
            if (!v10)
            {
              goto LABEL_14;
            }
          }

          else if (!v10)
          {
LABEL_14:
            CFRelease(*(v7 - 8));
            v6 = *(v5 + 16);
LABEL_15:
            if (v6)
            {
              *(v5 + 16) = v6 - 1;
              return;
            }

            __break(0xC471u);
LABEL_24:
            JUMPOUT(0x19E141050);
          }

          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v14);
          goto LABEL_14;
        }
      }

      else
      {
        __break(0xC471u);
        __break(1u);
      }

      __break(0xC471u);
      goto LABEL_24;
    }
  }
}

uint64_t WebKit::RemoteScrollingTree::propagateSynchronousScrollingReasons(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    LOBYTE(v2) = *(v2 - 12) != 0;
  }

  *(result + 384) = v2;
  return result;
}

WebKit::RemoteScrollingTreeIOS *WebKit::RemoteScrollingTreeIOS::RemoteScrollingTreeIOS(WebKit::RemoteScrollingTreeIOS *this, WebKit::RemoteScrollingCoordinatorProxy *a2)
{
  *WebCore::ScrollingTree::ScrollingTree(this) = &unk_1F1120880;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 47) = v4;
  *(this + 384) = 0;
  *this = &unk_1F1120A20;
  return this;
}

void WebKit::RemoteScrollingTreeIOS::~RemoteScrollingTreeIOS(WebKit::RemoteScrollingTreeIOS *this, void *a2)
{
  WebKit::RemoteScrollingTree::~RemoteScrollingTree(this, a2);

  bmalloc::api::tzoneFree(v2, v3);
}

void WebKit::RemoteScrollingTreeIOS::scrollingTreeNodeDidScroll(uint64_t a1, WebCore::ScrollingTreeNode *this, uint64_t a3)
{
  v3 = a3;
  if (WebCore::ScrollingTreeNode::isRootNode(this))
  {

    WebCore::ScrollingTree::scrollingTreeNodeDidScroll();
  }

  else
  {

    WebKit::RemoteScrollingTree::scrollingTreeNodeDidScroll(a1, this, v3);
  }
}

void *WebKit::RemoteScrollingTreeIOS::scrollingTreeNodeWillStartPanGesture(void *result)
{
  v1 = result[47];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return (*(*result + 72))();
    }
  }

  return result;
}

WebCore::ScrollingTreeScrollingNode *WebKit::RemoteScrollingTreeIOS::createScrollingTreeNode@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, WebCore::ScrollingTreeScrollingNode **a5@<X8>)
{
  if (a2 <= 9)
  {
    if (((1 << a2) & 0x3D4) != 0)
    {
      return WebKit::RemoteScrollingTree::createScrollingTreeNode(a1, a2, a3, a4);
    }

    if (a2 == 3)
    {
      return WebKit::ScrollingTreePluginScrollingNodeIOS::create(a3, a5);
    }

    if (a2 == 5)
    {
      return WebKit::ScrollingTreeOverflowScrollingNodeIOS::create(a3, a5);
    }
  }

  if (a2 >= 2)
  {
    return MEMORY[0x1EEE598A8](a1, a3, a4);
  }

  else
  {
    return WebKit::ScrollingTreeFrameScrollingNodeRemoteIOS::create(a2, a5);
  }
}

uint64_t WebKit::WebScriptMessageHandler::create@<X0>(uint64_t *a1@<X0>, atomic_uint **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = WTF::fastMalloc(a4, 0x30);
  v9 = *a1;
  *a1 = 0;
  v12 = v9;
  *a4 = WebKit::WebScriptMessageHandler::WebScriptMessageHandler(v8, &v12, a2, a3);
  result = v12;
  if (v12)
  {
    v11 = *(*v12 + 8);

    return v11();
  }

  return result;
}

uint64_t WebKit::WebScriptMessageHandler::WebScriptMessageHandler(uint64_t a1, uint64_t *a2, atomic_uint **a3, uint64_t a4)
{
  *(a1 + 8) = 1;
  *(a1 + 16) = WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>::generateIdentifierInternal();
  *a1 = &unk_1F1120BC0;
  v8 = *a2;
  *a2 = 0;
  *(a1 + 24) = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  *(a1 + 32) = v9;
  CFRetain(*(a4 + 8));
  *(a1 + 40) = a4;
  return a1;
}

void WebKit::WebScriptMessageHandler::~WebScriptMessageHandler(WebKit::WebScriptMessageHandler *this, WTF::StringImpl *a2)
{
  *this = &unk_1F1120BC0;
  v3 = *(this + 5);
  *(this + 5) = 0;
  if (v3)
  {
    CFRelease(*(v3 + 8));
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  v5 = *(this + 3);
  *(this + 3) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  if (*(this + 2) != 1)
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebScriptMessageHandler::~WebScriptMessageHandler(this, a2);

  WTF::fastFree(v2, v3);
}

void *WTF::Detail::CallableWrapper<WebKit::RemoteScrollingCoordinatorProxy::receivedLastScrollingTreeNodeDidScrollReply(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1120BE0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::RemoteScrollingCoordinatorProxy::receivedLastScrollingTreeNodeDidScrollReply(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120BE0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::RemoteScrollingCoordinatorProxy::receivedLastScrollingTreeNodeDidScrollReply(void)::$_0,void>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      WebKit::RemoteScrollingCoordinatorProxy::sendScrollingTreeNodeDidScroll(v2);
    }
  }
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::RemoteScrollingCoordinator::ScrollingStateInUIProcessChanged>(uint64_t a1, char **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 1623;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<WebKit::RemoteScrollingUIState,void>::encode(v8, *a2);
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

unsigned int *WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WebKit::WebUserContentControllerProxy&>@<X0>(unsigned int *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a2;
  if (*a2 == -1 || !v5)
  {
    __break(0xC471u);
    JUMPOUT(0x19E14192CLL);
  }

  v8 = result;
  v9 = *result;
  if (!*result)
  {
    result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(result, 0);
    v9 = *v8;
    v5 = *a2;
  }

  v10 = *(v9 - 8);
  v11 = (v5 + ~(v5 << 32)) ^ ((v5 + ~(v5 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = (v9 + 16 * v14);
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
        v24 = v9 + 16 * *(v9 - 4);
        goto LABEL_24;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = (v9 + 16 * v14);
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*v8 - 16);
      v5 = *a2;
      v15 = v17;
    }
  }

  *v15 = v5;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a3 + 24), a3 + 16);
  v20 = *(a3 + 24);
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
    v22 = *(v21 - 12) + 1;
  }

  else
  {
    v22 = 1;
  }

  *(v21 - 12) = v22;
  v25 = (*(v21 - 16) + v22);
  v26 = *(v21 - 4);
  if (v26 > 0x400)
  {
    if (v26 <= 2 * v25)
    {
LABEL_20:
      result = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v8, v15);
      v15 = result;
      v21 = *v8;
      if (*v8)
      {
        v26 = *(v21 - 4);
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else if (3 * v26 <= 4 * v25)
  {
    goto LABEL_20;
  }

  v24 = v21 + 16 * v26;
  v23 = 1;
LABEL_24:
  *a4 = v15;
  *(a4 + 8) = v24;
  *(a4 + 16) = v23;
  return result;
}

void WebKit::WebUserContentControllerProxy::~WebUserContentControllerProxy(WebKit::WebUserContentControllerProxy *this, void *a2)
{
  *this = &unk_1F1120C08;
  *(this + 2) = &unk_1F1120C48;
  v3 = *(this + 10);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = (v3 + 8 * v4);
    if (*(v3 - 12))
    {
      if (v4)
      {
        v6 = 8 * v4;
        v7 = *(this + 10);
        while (*v7 + 1 <= 1)
        {
          ++v7;
          v6 -= 8;
          if (!v6)
          {
            v7 = v5;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v7 = *(this + 10);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v7 = v5;
  v5 = (v3 + 8 * v4);
  if (!v3)
  {
    v8 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v8 = (v3 + 8 * *(v3 - 4));
LABEL_14:
  if (v8 != v7)
  {
    while (1)
    {
      v50 = *v7;
      {
        API::sharedWorldIdentifierMap(void)::sharedMap = 0;
      }

      v9 = WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<API::ContentWorld,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(&API::sharedWorldIdentifierMap(void)::sharedMap, &v50);
      if (!v9)
      {
        break;
      }

      v10 = v9;
      CFRetain(*(v9 + 8));
      WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>((v10 + 48), this);
      CFRelease(*(v10 + 8));
      do
      {
        ++v7;
      }

      while (v7 != v5 && *v7 + 1 <= 1);
      if (v7 == v8)
      {
        goto LABEL_22;
      }
    }

LABEL_74:
    __break(0xC471u);
    JUMPOUT(0x19E141E00);
  }

LABEL_22:
  {
    if (WebKit::webUserContentControllerProxies(void)::proxies)
    {
      v11 = *(this + 4);
      if (v11 == -1)
      {
        __break(0xC471u);
        JUMPOUT(0x19E141E20);
      }

      if (!v11)
      {
        goto LABEL_74;
      }

      v12 = *(WebKit::webUserContentControllerProxies(void)::proxies - 8);
      v13 = (v11 + ~(v11 << 32)) ^ ((v11 + ~(v11 << 32)) >> 22);
      v14 = 9 * ((v13 + ~(v13 << 13)) ^ ((v13 + ~(v13 << 13)) >> 8));
      v15 = (v14 ^ (v14 >> 15)) + ~((v14 ^ (v14 >> 15)) << 27);
      v16 = v12 & ((v15 >> 31) ^ v15);
      v17 = *(WebKit::webUserContentControllerProxies(void)::proxies + 16 * v16);
      if (v17 != v11)
      {
        v18 = 1;
        while (v17)
        {
          v16 = (v16 + v18) & v12;
          v17 = *(WebKit::webUserContentControllerProxies(void)::proxies + 16 * v16);
          ++v18;
          if (v17 == v11)
          {
            goto LABEL_32;
          }
        }

        v16 = *(WebKit::webUserContentControllerProxies(void)::proxies - 4);
      }

LABEL_32:
      if (v16 != *(WebKit::webUserContentControllerProxies(void)::proxies - 4))
      {
        v19 = (WebKit::webUserContentControllerProxies(void)::proxies + 16 * v16);
        v20 = v19[1];
        *v19 = -1;
        v19[1] = 0;
        if (v20 && atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v20);
          WTF::fastFree(v20, a2);
        }

        v21 = WebKit::webUserContentControllerProxies(void)::proxies;
        v22 = vadd_s32(*(WebKit::webUserContentControllerProxies(void)::proxies - 16), 0xFFFFFFFF00000001);
        *(WebKit::webUserContentControllerProxies(void)::proxies - 16) = v22;
        v23 = *(v21 - 4);
        if (6 * v22.i32[1] < v23 && v23 >= 9)
        {
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::ServiceWorkerFetchTask,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::FetchIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(&WebKit::webUserContentControllerProxies(void)::proxies, v23 >> 1, 0);
        }
      }
    }
  }

  else
  {
    WebKit::webUserContentControllerProxies(void)::proxies = 0;
  }

  v25 = (this + 40);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v50);
  v26 = *(this + 5);
  if (v26)
  {
    v27 = *(v26 - 4);
    v28 = v26 + 8 * v27;
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  v45 = this + 40;
  v46 = v28;
  v47 = v28;
  v48 = v28;
  v49 = v26 + 8 * v27;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v45);
  for (i = v51; v51 != v46; i = v51)
  {
    v30 = *(*i + 8);
    atomic_fetch_add((v30 + 16), 1u);
    IPC::MessageReceiverMap::removeMessageReceiver(v30 + 96, 0xD4u, *(this + 4));
    WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::remove<WebKit::WebPageProxy>((v30 + 680), this);
    if (v30)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v30 + 16), v31);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v50);
  }

  v32 = (this + 88);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v50);
  v33 = *(this + 11);
  if (v33)
  {
    v34 = *(v33 - 4);
    v35 = v33 + 8 * v34;
  }

  else
  {
    v35 = 0;
    v34 = 0;
  }

  v45 = this + 88;
  v46 = v35;
  v47 = v35;
  v48 = v35;
  v49 = v33 + 8 * v34;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v45);
  for (j = v51; v51 != v46; j = v51)
  {
    v38 = *(*j + 8);
    atomic_fetch_add(v38 + 4, 1u);
    WebKit::NetworkProcessProxy::didDestroyWebUserContentControllerProxy(v38, this);
    if (v38)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v38 + 4, v39);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v50);
  }

  v40 = *(this + 13);
  if (v40)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v40, v36);
  }

  if (*v32)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*v32, v36);
  }

  v41 = *(this + 10);
  if (v41)
  {
    WTF::fastFree((v41 - 16), v36);
  }

  v42 = *(this + 9);
  if (v42)
  {
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(v42, v36);
  }

  v43 = *(this + 8);
  *(this + 8) = 0;
  if (v43)
  {
    CFRelease(*(v43 + 8));
  }

  v44 = *(this + 7);
  *(this + 7) = 0;
  if (v44)
  {
    CFRelease(*(v44 + 8));
  }

  if (*v25)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(*v25, v36);
  }

  *(this + 2) = &unk_1F10EA5E0;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 3, v36);
}

{
  WebKit::WebUserContentControllerProxy::~WebUserContentControllerProxy(this, a2);

  JUMPOUT(0x19EB14CF0);
}

void non-virtual thunk toWebKit::WebUserContentControllerProxy::~WebUserContentControllerProxy(WebKit::WebUserContentControllerProxy *this, void *a2)
{
  WebKit::WebUserContentControllerProxy::~WebUserContentControllerProxy((this - 16), a2);
}

{
  WebKit::WebUserContentControllerProxy::~WebUserContentControllerProxy((this - 16), a2);

  JUMPOUT(0x19EB14CF0);
}

void *WebKit::WebUserContentControllerProxy::addContentWorld(void *this, API::ContentWorld *a2)
{
  v3 = this;
  v4 = *(a2 + 3);
  {
    v5 = WebKit::pageContentWorldIdentifier(void)::identifier;
  }

  else
  {
    v5 = 1;
    WebKit::pageContentWorldIdentifier(void)::identifier = 1;
  }

  if (v4 == v5)
  {
    return this;
  }

  if (v4 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E142244);
  }

  v6 = this[10];
  if (!v6)
  {
    this = WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(this + 10);
    v6 = *(v3 + 80);
  }

  v7 = *(v6 - 8);
  v8 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v7 & ((v10 >> 31) ^ v10);
  v12 = (v6 + 8 * v11);
  v13 = *v12;
  if (*v12)
  {
    v14 = 0;
    v15 = 1;
    do
    {
      if (v13 == v4)
      {
        return this;
      }

      if (v13 == -1)
      {
        v14 = v12;
      }

      v11 = (v11 + v15) & v7;
      v12 = (v6 + 8 * v11);
      v13 = *v12;
      ++v15;
    }

    while (*v12);
    if (v14)
    {
      *v14 = 0;
      --*(*(v3 + 80) - 16);
      v12 = v14;
    }
  }

  *v12 = v4;
  v16 = *(v3 + 80);
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
  if (v19 <= 0x400)
  {
    if (3 * v19 > 4 * v18)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v19 <= 2 * v18)
  {
LABEL_21:
    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand((v3 + 80));
  }

LABEL_22:
  WTF::WeakHashSet<WebKit::WebPageProxy,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::WebPageProxy>(a2 + 6, v3, &v47);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((v3 + 40), &v47);
  v20 = *(v3 + 40);
  if (v20)
  {
    v21 = *(v20 - 4);
    v22 = v20 + 8 * v21;
  }

  else
  {
    v22 = 0;
    v21 = 0;
  }

  v42 = v3 + 40;
  v43 = v22;
  v44 = v22;
  v45 = v22;
  v46 = v20 + 8 * v21;
  this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v42);
  v23 = v48;
  if (v48 != v43)
  {
    while (1)
    {
      v24 = *(*v23 + 8);
      add = atomic_fetch_add((v24 + 16), 1u);
      v27 = *(a2 + 3);
      v26 = *(a2 + 4);
      if (v26)
      {
        add = atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      }

      v28 = *(a2 + 40);
      v40 = 0;
      v41 = 0;
      v29 = WTF::fastMalloc(add, 0x18);
      LODWORD(v41) = 1;
      v40 = v29;
      v31 = &v29[3 * HIDWORD(v41)];
      *v31 = v27;
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      }

      v31[1] = v26;
      *(v31 + 16) = v28;
      ++HIDWORD(v41);
      v32 = *(v3 + 32);
      v33 = IPC::Encoder::operator new(0x238, v30);
      *v33 = 3180;
      *(v33 + 2) = 0;
      *(v33 + 3) = 0;
      *(v33 + 1) = v32;
      *(v33 + 68) = 0;
      *(v33 + 70) = 0;
      *(v33 + 69) = 0;
      IPC::Encoder::encodeHeader(v33);
      v51 = v33;
      IPC::VectorArgumentCoder<false,WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v33, &v40);
      LOBYTE(v49) = 0;
      v50 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v24, &v51, 0, &v49, 1);
      if (v50 == 1)
      {
        v35 = v49;
        v49 = 0;
        if (v35)
        {
          (*(*v35 + 8))(v35);
        }
      }

      v36 = v51;
      v51 = 0;
      if (v36)
      {
        IPC::Encoder::~Encoder(v36, v34);
        bmalloc::api::tzoneFree(v38, v39);
      }

      WTF::Vector<WebKit::ContentWorldData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v34);
      if (v26)
      {
        if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          break;
        }
      }

      if (v24)
      {
        goto LABEL_38;
      }

LABEL_39:
      this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v47);
      v23 = v48;
      if (v48 == v43)
      {
        return this;
      }
    }

    WTF::StringImpl::destroy(v26, v37);
    if (!v24)
    {
      goto LABEL_39;
    }

LABEL_38:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v24 + 16), v37);
    goto LABEL_39;
  }

  return this;
}

void *WebKit::WebUserContentControllerProxy::contentWorldDestroyed(WebKit::WebUserContentControllerProxy *this, API::ContentWorld *a2)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = *(this + 10);
  v4 = (this + 80);
  v5 = v6;
  if (v6)
  {
    v7 = *(a2 + 3);
    if (v7 == -1 || !v7)
    {
      __break(0xC471u);
      JUMPOUT(0x19E14253CLL);
    }

    v8 = *(v5 - 8);
    v9 = (v7 + ~(v7 << 32)) ^ ((v7 + ~(v7 << 32)) >> 22);
    v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
    v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
    v12 = v8 & ((v11 >> 31) ^ v11);
    v13 = *(v5 + 8 * v12);
    if (v13 != v7)
    {
      v14 = 1;
      while (v13)
      {
        v12 = (v12 + v14) & v8;
        v13 = *(v5 + 8 * v12);
        ++v14;
        if (v13 == v7)
        {
          goto LABEL_10;
        }
      }

      v12 = *(v5 - 4);
    }

LABEL_10:
    v15 = *(v5 - 4);
    if (v12 != v15)
    {
      *(v5 + 8 * v12) = -1;
      v16 = vadd_s32(*(v5 - 16), 0xFFFFFFFF00000001);
      *(v5 - 16) = v16;
      if (6 * v16.i32[1] < v15 && v15 >= 9)
      {
        WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::PDFTileRenderType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v4, v15 >> 1);
      }
    }
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v40);
  v18 = *(this + 5);
  if (v18)
  {
    v19 = *(v18 - 4);
    v20 = v18 + 8 * v19;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v35 = this + 40;
  v36 = v20;
  v37 = v20;
  v38 = v20;
  v39 = v18 + 8 * v19;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v35);
  for (i = v41; v41 != v36; i = v41)
  {
    v23 = *(*i + 8);
    atomic_fetch_add((v23 + 16), 1u);
    v45[0] = *(a2 + 3);
    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v33, v45, 1uLL);
    v24 = *(this + 4);
    v26 = IPC::Encoder::operator new(0x238, v25);
    *v26 = 3190;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 1) = v24;
    *(v26 + 68) = 0;
    *(v26 + 70) = 0;
    *(v26 + 69) = 0;
    IPC::Encoder::encodeHeader(v26);
    v44 = v26;
    IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v26, &v33);
    LOBYTE(v42) = 0;
    v43 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v23, &v44, 0, &v42, 1);
    if (v43 == 1)
    {
      v28 = v42;
      v42 = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    v29 = v44;
    v44 = 0;
    if (v29)
    {
      IPC::Encoder::~Encoder(v29, v27);
      bmalloc::api::tzoneFree(v31, v32);
    }

    v30 = v33;
    if (v33)
    {
      v33 = 0;
      v34 = 0;
      WTF::fastFree(v30, v27);
    }

    if (v23)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v23 + 16), v27);
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v40);
  }

  return result;
}

void WebKit::WebUserContentControllerProxy::addUserScript(void *a1, uint64_t a2, char a3)
{
  v47[11] = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 112);
  CFRetain(*(v6 + 8));
  WebKit::WebUserContentControllerProxy::addContentWorld(a1, v6);
  v7 = a1[7];
  v8 = *(v7 + 28);
  if (v8 == *(v7 + 24))
  {
    if (v8 + (v8 >> 1) <= v8 + 1)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = v8 + (v8 >> 1);
    }

    if (v9 <= 0x10)
    {
      v10 = 16;
    }

    else
    {
      v10 = v9;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v7 + 16, v10);
    v11 = *(v7 + 28);
    v12 = *(v7 + 16);
    CFRetain(*(a2 + 8));
    v13 = *(v7 + 28);
    *(v12 + 8 * v11) = a2;
  }

  else
  {
    v14 = *(v7 + 16);
    CFRetain(*(a2 + 8));
    *(v14 + 8 * v8) = a2;
    v13 = *(v7 + 28);
  }

  *(v7 + 28) = v13 + 1;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1 + 5, &v41);
  v15 = a1[5];
  if (v15)
  {
    v16 = *(v15 - 4);
    v17 = v15 + 8 * v16;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v36 = a1 + 5;
  v37 = v17;
  v38 = v17;
  v39 = v17;
  v40 = v15 + 8 * v16;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v36);
  for (i = v42; v42 != v37; i = v42)
  {
    v19 = *(*i + 8);
    atomic_fetch_add((v19 + 16), 1u);
    v20 = *(v6 + 24);
    *&v46 = *(a2 + 16);
    *(&v46 + 1) = v20;
    WebCore::UserScript::UserScript(v47, a2 + 24);
    v34 = 0;
    v35 = 0;
    v22 = WTF::fastMalloc(v21, 0x68);
    LODWORD(v35) = 1;
    v34 = v22;
    v23 = &v22[13 * HIDWORD(v35)];
    *v23 = v46;
    WebCore::UserScript::UserScript((v23 + 2), v47);
    ++HIDWORD(v35);
    v24 = a1[4];
    v26 = IPC::Encoder::operator new(0x238, v25);
    *v26 = 3182;
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 1) = v24;
    *(v26 + 68) = 0;
    *(v26 + 70) = 0;
    *(v26 + 69) = 0;
    IPC::Encoder::encodeHeader(v26);
    v45 = v26;
    IPC::VectorArgumentCoder<false,WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v26, &v34);
    LOBYTE(v43[0]) = a3;
    IPC::Encoder::operator<<<BOOL>(v26, v43);
    LOBYTE(v43[0]) = 0;
    v44 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v19, &v45, 0, v43, 1);
    if (v44 == 1)
    {
      v28 = v43[0];
      v43[0] = 0;
      if (v28)
      {
        (*(*v28 + 8))(v28);
      }
    }

    v29 = v45;
    v45 = 0;
    if (v29)
    {
      IPC::Encoder::~Encoder(v29, v27);
      bmalloc::api::tzoneFree(v32, v33);
    }

    WTF::Vector<WebKit::WebUserScriptData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v34, v27);
    WebCore::UserScript::~UserScript(v47, v30);
    if (v19)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v19 + 16), v31);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v41);
  }

  CFRelease(*(v6 + 8));
}

void WebKit::WebUserContentControllerProxy::removeUserScript(WebKit::WebUserContentControllerProxy *this, API::UserScript *a2)
{
  v4 = *(a2 + 14);
  CFRetain(*(v4 + 8));
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v37);
  v5 = *(this + 5);
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

  v32 = this + 40;
  v33 = v7;
  v34 = v7;
  v35 = v7;
  v36 = v5 + 8 * v6;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v32);
  for (i = v38; v38 != v33; i = v38)
  {
    v10 = *(*i + 8);
    atomic_fetch_add((v10 + 16), 1u);
    v11 = v4;
    v12 = *(v4 + 24);
    v13 = *(a2 + 2);
    v14 = *(this + 4);
    v15 = IPC::Encoder::operator new(0x238, v8);
    *v15 = 3191;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = v14;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v41 = v15;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v12);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v13);
    LOBYTE(v39) = 0;
    v40 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v41, 0, &v39, 1);
    if (v40 == 1)
    {
      v17 = v39;
      v39 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v41;
    v41 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v16);
      bmalloc::api::tzoneFree(v19, v20);
    }

    v4 = v11;
    if (v10)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v16);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v37);
  }

  v21 = *(this + 7);
  v22 = *(v21 + 16);
  v23 = *(v21 + 28);
  v24 = &v22[v23];
  if (v23)
  {
    v25 = 0;
    v26 = *(v21 + 16);
    v27 = &v22[v23];
    v28 = v27;
    do
    {
      v29 = *v22;
      if (*v22 == a2)
      {
        if (v27 == (*(v21 + 16) + 8 * *(v21 + 28)))
        {
          v27 = v22;
        }

        else if (v22 != v28)
        {
          memmove(v27, v28, v26 - v28);
          v27 = (v27 + v26 - v28);
          v29 = *v22;
        }

        *v22 = 0;
        v28 = v22 + 1;
        if (v29)
        {
          CFRelease(*(v29 + 1));
        }

        ++v25;
      }

      ++v22;
      v26 += 8;
    }

    while (v22 < v24);
    v22 = *(v21 + 16);
    v30 = *(v21 + 28);
    LODWORD(v23) = *(v21 + 28);
    v24 = v28;
  }

  else
  {
    v30 = 0;
    v25 = 0;
    v27 = &v22[v23];
  }

  v31 = &v22[v30];
  if (v24 != v31)
  {
    memmove(v27, v24, v31 - v24);
    LODWORD(v23) = *(v21 + 28);
  }

  *(v21 + 28) = v23 - v25;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }
}

void WebKit::WebUserContentControllerProxy::removeAllUserScripts(WebKit::WebUserContentControllerProxy *this, API::ContentWorld *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = this + 40;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v33);
  v5 = *(this + 5);
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

  v28 = v4;
  v29 = v7;
  v30 = v7;
  v31 = v7;
  v32 = v5 + 8 * v6;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v28);
  for (i = v34; v34 != v29; i = v34)
  {
    v9 = *(*i + 8);
    atomic_fetch_add((v9 + 16), 1u);
    v35[0] = *(a2 + 3);
    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v25, v35, 1uLL);
    v27 = &v25;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserScripts>(v9, &v27, *(this + 4));
    v11 = v25;
    if (v25)
    {
      v25 = 0;
      v26 = 0;
      WTF::fastFree(v11, v10);
    }

    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v10);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v33);
  }

  v12 = *(this + 7);
  v13 = *(v12 + 16);
  v14 = *(v12 + 28);
  v15 = (v13 + 8 * v14);
  v16 = 0;
  if (v14)
  {
    v17 = *(v12 + 16);
    v18 = (v13 + 8 * v14);
    v19 = v18;
    do
    {
      if ((*(**v13 + 16))() == 27)
      {
        v20 = *v13;
        if (*v13)
        {
          CFRetain(*(v20 + 8));
        }

        v21 = *(v20 + 112);
        CFRelease(*(v20 + 8));
        if (v21 == a2)
        {
          v22 = v13;
          if (v18 != (*(v12 + 16) + 8 * *(v12 + 28)))
          {
            if (v13 == v19)
            {
              v22 = v18;
            }

            else
            {
              memmove(v18, v19, v17 - v19);
              v22 = &v18[v17 - v19];
            }
          }

          v23 = *v13;
          *v13 = 0;
          v19 = (v13 + 8);
          if (v23)
          {
            CFRelease(*(v23 + 8));
          }

          ++v16;
          v18 = v22;
        }
      }

      v13 += 8;
      v17 += 8;
    }

    while (v13 < v15);
    v13 = *(v12 + 16);
    LODWORD(v14) = *(v12 + 28);
    v15 = v19;
  }

  else
  {
    v18 = (v13 + 8 * v14);
  }

  v24 = (v13 + 8 * v14);
  if (v15 != v24)
  {
    memmove(v18, v15, v24 - v15);
    LODWORD(v14) = *(v12 + 28);
  }

  *(v12 + 28) = v14 - v16;
}

void WebKit::WebUserContentControllerProxy::removeAllUserScripts(uint64_t *a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v47 = 0;
    API::Array::elementsOfType<API::UserScript>(&v48, a1[7]);
    v3 = v50;
    v4 = v52;
    if (v50 == v52)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v5 = v51;
      do
      {
        v6 = *v3;
        API::Array::GetObjectTransform<API::UserScript>::operator()(*v3);
        if (v6)
        {
          CFRetain(*(v6 + 8));
        }

        v7 = *(v6 + 112);
        CFRetain(v7[1]);
        v45 = v7;
        LODWORD(v39) = 0;
        WTF::HashMap<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(&v40, &v47, &v45, &v39);
        ++*(v40 + 2);
        if (v45)
        {
          CFRelease(*(v45 + 1));
        }

        CFRelease(*(v6 + 8));
        v8 = v3 + 1;
        while (v8 - 1 != v5)
        {
          v3 = v8;
          if (v8 != v5)
          {
            ++v8;
            if ((*(**v3 + 16))() != 27)
            {
              continue;
            }
          }

          goto LABEL_14;
        }

        v3 = v8 - 1;
LABEL_14:
        ;
      }

      while (v3 != v4);
      v9 = v47;
      v45 = 0;
      v46 = 0;
      if (v47)
      {
        v10 = *(v47 - 3);
        if (v10)
        {
          v11 = (v10 >> 29);
          if (v11)
          {
            __break(0xC471u);
            return;
          }

          v12 = WTF::fastMalloc(v11, (8 * v10));
          LODWORD(v46) = v10;
          v45 = v12;
        }

        else
        {
          v12 = 0;
        }

        v25 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v9);
        v27 = &v9[2 * *(v9 - 1)];
        goto LABEL_45;
      }
    }

    v25 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(0);
    v12 = 0;
    v27 = 0;
LABEL_45:
    if (v27 != v25)
    {
      v28 = 0;
      do
      {
        v29 = *v25;
        v25 += 2;
        v12[v28] = *(v29 + 24);
        while (v25 != v26 && (*v25 + 1) <= 1)
        {
          v25 += 2;
        }

        ++v28;
      }

      while (v25 != v27);
      HIDWORD(v46) = v28;
    }

    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1 + 5, &v48);
    v30 = a1[5];
    if (v30)
    {
      v31 = *(v30 - 4);
      v32 = v30 + 8 * v31;
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v40 = a1 + 5;
    v41 = v32;
    v42 = v32;
    v43 = v32;
    v44 = v30 + 8 * v31;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v40);
    for (i = v49; v49 != v41; i = v49)
    {
      v35 = *(*i + 8);
      atomic_fetch_add((v35 + 16), 1u);
      v39 = &v45;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserScripts>(v35, &v39, a1[4]);
      if (v35)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v35 + 16), v36);
      }

      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v48);
    }

    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1[7] + 16), 0, v33);
    v38 = v45;
    if (v45)
    {
      v45 = 0;
      LODWORD(v46) = 0;
      WTF::fastFree(v38, v37);
    }

    if (v47)
    {
      WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v47, v37);
    }

    return;
  }

  v40 = 0;
  v41 = 0;
  API::Array::elementsOfType<API::UserScript>(&v48, a1[7]);
  v14 = v50;
  v15 = v52;
  if (v50 == v52)
  {
    goto LABEL_40;
  }

  v16 = v51;
  do
  {
    v17 = *v14;
    API::Array::GetObjectTransform<API::UserScript>::operator()(*v14);
    if (v17)
    {
      CFRetain(*(v17 + 8));
    }

    if (WebKit::WebExtensionMatchPattern::isWebExtensionURL((v17 + 32), v18))
    {
      goto LABEL_26;
    }

    v19 = HIDWORD(v41);
    if (HIDWORD(v41) == v41)
    {
      WTF::Vector<WTF::Ref<API::UserScript,WTF::RawPtrTraits<API::UserScript>,WTF::DefaultRefDerefTraits<API::UserScript>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,API::UserScript&>(&v40, v17);
LABEL_26:
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v20 = v40;
    CFRetain(*(v17 + 8));
    v20[v19] = v17;
    ++HIDWORD(v41);
LABEL_29:
    CFRelease(*(v17 + 8));
LABEL_30:
    v21 = v14 + 1;
    while (v21 - 1 != v16)
    {
      v14 = v21;
      if (v21 != v16)
      {
        ++v21;
        if ((*(**v14 + 16))() != 27)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    v14 = v21 - 1;
LABEL_36:
    ;
  }

  while (v14 != v15);
  if (HIDWORD(v41))
  {
    v22 = v40;
    v23 = 8 * HIDWORD(v41);
    do
    {
      v24 = *v22++;
      WebKit::WebUserContentControllerProxy::removeUserScript(a1, v24);
      v23 -= 8;
    }

    while (v23);
  }

LABEL_40:
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v13);
}

void WebKit::WebUserContentControllerProxy::addUserStyleSheet(WebKit::WebUserContentControllerProxy *this, API::UserStyleSheet *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  CFRetain(*(v4 + 8));
  WebKit::WebUserContentControllerProxy::addContentWorld(this, v4);
  v5 = *(this + 8);
  v6 = *(v5 + 28);
  if (v6 == *(v5 + 24))
  {
    if (v6 + (v6 >> 1) <= v6 + 1)
    {
      v7 = v6 + 1;
    }

    else
    {
      v7 = v6 + (v6 >> 1);
    }

    if (v7 <= 0x10)
    {
      v8 = 16;
    }

    else
    {
      v8 = v7;
    }

    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(v5 + 16, v8);
    v9 = *(v5 + 28);
    v10 = *(v5 + 16);
    CFRetain(*(a2 + 1));
    v11 = *(v5 + 28);
    *(v10 + 8 * v9) = a2;
  }

  else
  {
    v12 = *(v5 + 16);
    CFRetain(*(a2 + 1));
    *(v12 + 8 * v6) = a2;
    v11 = *(v5 + 28);
  }

  *(v5 + 28) = v11 + 1;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v48);
  v13 = *(this + 5);
  if (v13)
  {
    v14 = *(v13 - 4);
    v15 = v13 + 8 * v14;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  v43 = this + 40;
  v44 = v15;
  v45 = v15;
  v46 = v15;
  v47 = v13 + 8 * v14;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v43);
  v16 = v49;
  if (v49 != v44)
  {
    while (1)
    {
      v17 = *(*v16 + 8);
      atomic_fetch_add((v17 + 16), 1u);
      v18 = *(v4 + 24);
      v19 = *(a2 + 3);
      *&v53 = *(a2 + 2);
      *(&v53 + 1) = v18;
      if (v19)
      {
        atomic_fetch_add_explicit(v19, 2u, memory_order_relaxed);
      }

      v54 = v19;
      v20 = *(a2 + 4);
      if (v20)
      {
        atomic_fetch_add_explicit(v20, 2u, memory_order_relaxed);
      }

      v55 = v20;
      v21 = *(a2 + 56);
      v56 = *(a2 + 40);
      v57 = v21;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v58, a2 + 72);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v59, a2 + 88);
      v60 = *(a2 + 104);
      v61 = *(a2 + 120);
      v41 = 0;
      v42 = 0;
      v22 = WTF::fastMalloc(v61, 0x78);
      LODWORD(v42) = 1;
      v41 = v22;
      v23 = &v22[15 * HIDWORD(v42)];
      *v23 = v53;
      v24 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
      }

      v23[2] = v24;
      v25 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(v55, 2u, memory_order_relaxed);
      }

      v23[3] = v25;
      v26 = v57;
      *(v23 + 2) = v56;
      *(v23 + 3) = v26;
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((v23 + 8), v58);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector((v23 + 10), v59);
      v27 = v61;
      *(v23 + 6) = v60;
      *(v23 + 112) = v27;
      ++HIDWORD(v42);
      v28 = *(this + 4);
      v30 = IPC::Encoder::operator new(0x238, v29);
      *v30 = 3183;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 1) = v28;
      *(v30 + 68) = 0;
      *(v30 + 70) = 0;
      *(v30 + 69) = 0;
      IPC::Encoder::encodeHeader(v30);
      v52 = v30;
      IPC::VectorArgumentCoder<false,WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v30, &v41);
      LOBYTE(v50) = 0;
      v51 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v17, &v52, 0, &v50, 1);
      if (v51 == 1)
      {
        v32 = v50;
        v50 = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      v33 = v52;
      v52 = 0;
      if (v33)
      {
        IPC::Encoder::~Encoder(v33, v31);
        bmalloc::api::tzoneFree(v39, v40);
      }

      WTF::Vector<WebKit::WebUserStyleSheetData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v41, v31);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v59, v34);
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v58, v35);
      v37 = v55;
      v55 = 0;
      if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v36);
      }

      v38 = v54;
      v54 = 0;
      if (v38)
      {
        if (atomic_fetch_add_explicit(v38, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          break;
        }
      }

      if (v17)
      {
        goto LABEL_33;
      }

LABEL_34:
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v48);
      v16 = v49;
      if (v49 == v44)
      {
        goto LABEL_38;
      }
    }

    WTF::StringImpl::destroy(v38, v36);
    if (!v17)
    {
      goto LABEL_34;
    }

LABEL_33:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v17 + 16), v36);
    goto LABEL_34;
  }

LABEL_38:
  CFRelease(*(v4 + 8));
}

void WebKit::WebUserContentControllerProxy::removeUserStyleSheet(WebKit::WebUserContentControllerProxy *this, API::UserStyleSheet *a2)
{
  v4 = *(a2 + 16);
  CFRetain(*(v4 + 8));
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v37);
  v5 = *(this + 5);
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

  v32 = this + 40;
  v33 = v7;
  v34 = v7;
  v35 = v7;
  v36 = v5 + 8 * v6;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v32);
  for (i = v38; v38 != v33; i = v38)
  {
    v10 = *(*i + 8);
    atomic_fetch_add((v10 + 16), 1u);
    v11 = v4;
    v12 = *(v4 + 24);
    v13 = *(a2 + 2);
    v14 = *(this + 4);
    v15 = IPC::Encoder::operator new(0x238, v8);
    *v15 = 3193;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0;
    *(v15 + 1) = v14;
    *(v15 + 68) = 0;
    *(v15 + 70) = 0;
    *(v15 + 69) = 0;
    IPC::Encoder::encodeHeader(v15);
    v41 = v15;
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v12);
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v15, v13);
    LOBYTE(v39) = 0;
    v40 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v41, 0, &v39, 1);
    if (v40 == 1)
    {
      v17 = v39;
      v39 = 0;
      if (v17)
      {
        (*(*v17 + 8))(v17);
      }
    }

    v18 = v41;
    v41 = 0;
    if (v18)
    {
      IPC::Encoder::~Encoder(v18, v16);
      bmalloc::api::tzoneFree(v19, v20);
    }

    v4 = v11;
    if (v10)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v16);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v37);
  }

  v21 = *(this + 8);
  v22 = *(v21 + 16);
  v23 = *(v21 + 28);
  v24 = &v22[v23];
  if (v23)
  {
    v25 = 0;
    v26 = *(v21 + 16);
    v27 = &v22[v23];
    v28 = v27;
    do
    {
      v29 = *v22;
      if (*v22 == a2)
      {
        if (v27 == (*(v21 + 16) + 8 * *(v21 + 28)))
        {
          v27 = v22;
        }

        else if (v22 != v28)
        {
          memmove(v27, v28, v26 - v28);
          v27 = (v27 + v26 - v28);
          v29 = *v22;
        }

        *v22 = 0;
        v28 = v22 + 1;
        if (v29)
        {
          CFRelease(*(v29 + 1));
        }

        ++v25;
      }

      ++v22;
      v26 += 8;
    }

    while (v22 < v24);
    v22 = *(v21 + 16);
    v30 = *(v21 + 28);
    LODWORD(v23) = *(v21 + 28);
    v24 = v28;
  }

  else
  {
    v30 = 0;
    v25 = 0;
    v27 = &v22[v23];
  }

  v31 = &v22[v30];
  if (v24 != v31)
  {
    memmove(v27, v24, v31 - v24);
    LODWORD(v23) = *(v21 + 28);
  }

  *(v21 + 28) = v23 - v25;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }
}

void WebKit::WebUserContentControllerProxy::removeAllUserStyleSheets(WebKit::WebUserContentControllerProxy *this, API::ContentWorld *a2)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v4 = this + 40;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v33);
  v5 = *(this + 5);
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

  v28 = v4;
  v29 = v7;
  v30 = v7;
  v31 = v7;
  v32 = v5 + 8 * v6;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v28);
  for (i = v34; v34 != v29; i = v34)
  {
    v9 = *(*i + 8);
    atomic_fetch_add((v9 + 16), 1u);
    v35[0] = *(a2 + 3);
    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v25, v35, 1uLL);
    v27 = &v25;
    WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserStyleSheets>(v9, &v27, *(this + 4));
    v11 = v25;
    if (v25)
    {
      v25 = 0;
      v26 = 0;
      WTF::fastFree(v11, v10);
    }

    if (v9)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v10);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v33);
  }

  v12 = *(this + 8);
  v13 = *(v12 + 16);
  v14 = *(v12 + 28);
  v15 = (v13 + 8 * v14);
  v16 = 0;
  if (v14)
  {
    v17 = *(v12 + 16);
    v18 = (v13 + 8 * v14);
    v19 = v18;
    do
    {
      if ((*(**v13 + 16))() == 28)
      {
        v20 = *v13;
        if (*v13)
        {
          CFRetain(*(v20 + 8));
        }

        v21 = *(v20 + 128);
        CFRelease(*(v20 + 8));
        if (v21 == a2)
        {
          v22 = v13;
          if (v18 != (*(v12 + 16) + 8 * *(v12 + 28)))
          {
            if (v13 == v19)
            {
              v22 = v18;
            }

            else
            {
              memmove(v18, v19, v17 - v19);
              v22 = &v18[v17 - v19];
            }
          }

          v23 = *v13;
          *v13 = 0;
          v19 = (v13 + 8);
          if (v23)
          {
            CFRelease(*(v23 + 8));
          }

          ++v16;
          v18 = v22;
        }
      }

      v13 += 8;
      v17 += 8;
    }

    while (v13 < v15);
    v13 = *(v12 + 16);
    LODWORD(v14) = *(v12 + 28);
    v15 = v19;
  }

  else
  {
    v18 = (v13 + 8 * v14);
  }

  v24 = (v13 + 8 * v14);
  if (v15 != v24)
  {
    memmove(v18, v15, v24 - v15);
    LODWORD(v14) = *(v12 + 28);
  }

  *(v12 + 28) = v14 - v16;
}

void WebKit::WebUserContentControllerProxy::removeAllUserStyleSheets(uint64_t *a1, int a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v47 = 0;
    API::Array::elementsOfType<API::UserStyleSheet>(&v48, a1[8]);
    v3 = v50;
    v4 = v52;
    if (v50 == v52)
    {
      v45 = 0;
      v46 = 0;
    }

    else
    {
      v5 = v51;
      do
      {
        v6 = *v3;
        API::Array::GetObjectTransform<API::UserStyleSheet>::operator()(*v3);
        if (v6)
        {
          CFRetain(*(v6 + 8));
        }

        v7 = *(v6 + 128);
        CFRetain(v7[1]);
        v45 = v7;
        LODWORD(v39) = 0;
        WTF::HashMap<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(&v40, &v47, &v45, &v39);
        ++*(v40 + 2);
        if (v45)
        {
          CFRelease(*(v45 + 1));
        }

        CFRelease(*(v6 + 8));
        v8 = v3 + 1;
        while (v8 - 1 != v5)
        {
          v3 = v8;
          if (v8 != v5)
          {
            ++v8;
            if ((*(**v3 + 16))() != 28)
            {
              continue;
            }
          }

          goto LABEL_14;
        }

        v3 = v8 - 1;
LABEL_14:
        ;
      }

      while (v3 != v4);
      v9 = v47;
      v45 = 0;
      v46 = 0;
      if (v47)
      {
        v10 = *(v47 - 3);
        if (v10)
        {
          v11 = (v10 >> 29);
          if (v11)
          {
            __break(0xC471u);
            return;
          }

          v12 = WTF::fastMalloc(v11, (8 * v10));
          LODWORD(v46) = v10;
          v45 = v12;
        }

        else
        {
          v12 = 0;
        }

        v25 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(v9);
        v27 = &v9[2 * *(v9 - 1)];
        goto LABEL_45;
      }
    }

    v25 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::Ref<WebKit::SimulatedInputSource,WTF::RawPtrTraits<WebKit::SimulatedInputSource>,WTF::DefaultRefDerefTraits<WebKit::SimulatedInputSource>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(0);
    v12 = 0;
    v27 = 0;
LABEL_45:
    if (v27 != v25)
    {
      v28 = 0;
      do
      {
        v29 = *v25;
        v25 += 2;
        v12[v28] = *(v29 + 24);
        while (v25 != v26 && (*v25 + 1) <= 1)
        {
          v25 += 2;
        }

        ++v28;
      }

      while (v25 != v27);
      HIDWORD(v46) = v28;
    }

    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1 + 5, &v48);
    v30 = a1[5];
    if (v30)
    {
      v31 = *(v30 - 4);
      v32 = v30 + 8 * v31;
    }

    else
    {
      v32 = 0;
      v31 = 0;
    }

    v40 = a1 + 5;
    v41 = v32;
    v42 = v32;
    v43 = v32;
    v44 = v30 + 8 * v31;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v40);
    for (i = v49; v49 != v41; i = v49)
    {
      v35 = *(*i + 8);
      atomic_fetch_add((v35 + 16), 1u);
      v39 = &v45;
      WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserStyleSheets>(v35, &v39, a1[4]);
      if (v35)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v35 + 16), v36);
      }

      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v48);
    }

    WTF::Vector<WTF::RefPtr<API::Object,WTF::RawPtrTraits<API::Object>,WTF::DefaultRefDerefTraits<API::Object>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1[8] + 16), 0, v33);
    v38 = v45;
    if (v45)
    {
      v45 = 0;
      LODWORD(v46) = 0;
      WTF::fastFree(v38, v37);
    }

    if (v47)
    {
      WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime>>,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashMap<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::WallTime,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v47, v37);
    }

    return;
  }

  v40 = 0;
  v41 = 0;
  API::Array::elementsOfType<API::UserStyleSheet>(&v48, a1[8]);
  v14 = v50;
  v15 = v52;
  if (v50 == v52)
  {
    goto LABEL_40;
  }

  v16 = v51;
  do
  {
    v17 = *v14;
    API::Array::GetObjectTransform<API::UserStyleSheet>::operator()(*v14);
    if (v17)
    {
      CFRetain(*(v17 + 8));
    }

    if (WebKit::WebExtensionMatchPattern::isWebExtensionURL((v17 + 32), v18))
    {
      goto LABEL_26;
    }

    v19 = HIDWORD(v41);
    if (HIDWORD(v41) == v41)
    {
      WTF::Vector<WTF::Ref<API::UserScript,WTF::RawPtrTraits<API::UserScript>,WTF::DefaultRefDerefTraits<API::UserScript>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,API::UserScript&>(&v40, v17);
LABEL_26:
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    v20 = v40;
    CFRetain(*(v17 + 8));
    v20[v19] = v17;
    ++HIDWORD(v41);
LABEL_29:
    CFRelease(*(v17 + 8));
LABEL_30:
    v21 = v14 + 1;
    while (v21 - 1 != v16)
    {
      v14 = v21;
      if (v21 != v16)
      {
        ++v21;
        if ((*(**v14 + 16))() != 28)
        {
          continue;
        }
      }

      goto LABEL_36;
    }

    v14 = v21 - 1;
LABEL_36:
    ;
  }

  while (v14 != v15);
  if (HIDWORD(v41))
  {
    v22 = v40;
    v23 = 8 * HIDWORD(v41);
    do
    {
      v24 = *v22++;
      WebKit::WebUserContentControllerProxy::removeUserStyleSheet(a1, v24);
      v23 -= 8;
    }

    while (v23);
  }

LABEL_40:
  WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v40, v13);
}

uint64_t WebKit::WebUserContentControllerProxy::addUserScriptMessageHandler(WebKit::WebUserContentControllerProxy *this, WebKit::WebScriptMessageHandler *a2)
{
  v56 = *(a2 + 5);
  CFRetain(*(v56 + 8));
  v55 = this;
  v7 = *(this + 9);
  v6 = (this + 72);
  v5 = v7;
  if (v7)
  {
    v8 = *(v5 - 1);
    v9 = &v5[2 * v8];
    if (*(v5 - 3))
    {
      if (v8)
      {
        v10 = 16 * v8;
        v11 = v5;
        while ((*v11 + 1) <= 1)
        {
          v11 += 2;
          v10 -= 16;
          if (!v10)
          {
            v11 = v9;
            break;
          }
        }

        if (!v5)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v11 = v5;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v11 = v9;
  v9 = &v5[2 * v8];
  if (!v5)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_14:
  v12 = &v5[2 * *(v5 - 1)];
LABEL_15:
  if (v12 == v11)
  {
LABEL_38:
    WebKit::WebUserContentControllerProxy::addContentWorld(v55, v56);
    v17 = *(a2 + 2);
    if (v17 == -1 || !v17)
    {
      __break(0xC471u);
      JUMPOUT(0x19E144368);
    }

    v18 = *v6;
    if (!*v6)
    {
      WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v6, 0);
      v18 = *v6;
    }

    v19 = *(v18 - 8);
    v20 = (v17 + ~(v17 << 32)) ^ ((v17 + ~(v17 << 32)) >> 22);
    v21 = 9 * ((v20 + ~(v20 << 13)) ^ ((v20 + ~(v20 << 13)) >> 8));
    v22 = (v21 ^ (v21 >> 15)) + ~((v21 ^ (v21 >> 15)) << 27);
    v23 = v19 & ((v22 >> 31) ^ v22);
    v24 = (v18 + 16 * v23);
    v25 = *v24;
    if (*v24)
    {
      v26 = 0;
      v27 = 1;
      while (v25 != v17)
      {
        if (v25 == -1)
        {
          v26 = v24;
        }

        v23 = (v23 + v27) & v19;
        v24 = (v18 + 16 * v23);
        v25 = *v24;
        ++v27;
        if (!*v24)
        {
          if (v26)
          {
            *v26 = 0;
            v26[1] = 0;
            --*(*v6 - 16);
            v24 = v26;
          }

          goto LABEL_50;
        }
      }

LABEL_60:
      WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(v55 + 5, &v64);
      v34 = *(v55 + 5);
      if (v34)
      {
        v35 = *(v34 - 4);
        v36 = v34 + 8 * v35;
      }

      else
      {
        v36 = 0;
        v35 = 0;
      }

      v59 = v55 + 40;
      v60 = v36;
      v61 = v36;
      v62 = v36;
      v63 = v34 + 8 * v35;
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v59);
      v37 = v65;
      if (v65 == v60)
      {
LABEL_81:
        v31 = 1;
        goto LABEL_82;
      }

      while (1)
      {
        v38 = *(*v37 + 8);
        atomic_fetch_add((v38 + 16), 1u);
        v39 = *(a2 + 2);
        add_explicit = v56;
        v41 = *(v56 + 24);
        v42 = *(a2 + 4);
        if (v42)
        {
          add_explicit = atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
        }

        v57 = 0;
        v58 = 0;
        v43 = WTF::fastMalloc(add_explicit, 0x18);
        LODWORD(v58) = 1;
        v57 = v43;
        v45 = &v43[3 * HIDWORD(v58)];
        *v45 = v39;
        v45[1] = v41;
        if (v42)
        {
          atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
        }

        v45[2] = v42;
        ++HIDWORD(v58);
        v46 = *(v55 + 4);
        v47 = IPC::Encoder::operator new(0x238, v44);
        *v47 = 3181;
        *(v47 + 2) = 0;
        *(v47 + 3) = 0;
        *(v47 + 1) = v46;
        *(v47 + 68) = 0;
        *(v47 + 70) = 0;
        *(v47 + 69) = 0;
        IPC::Encoder::encodeHeader(v47);
        v68 = v47;
        IPC::VectorArgumentCoder<false,WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v47, &v57);
        LOBYTE(v66) = 0;
        v67 = 0;
        WebKit::AuxiliaryProcessProxy::sendMessage(v38, &v68, 0, &v66, 1);
        if (v67 == 1)
        {
          v49 = v66;
          v66 = 0;
          if (v49)
          {
            (*(*v49 + 8))(v49);
          }
        }

        v50 = v68;
        v68 = 0;
        if (v50)
        {
          IPC::Encoder::~Encoder(v50, v48);
          bmalloc::api::tzoneFree(v52, v53);
        }

        WTF::Vector<WebKit::WebScriptMessageHandlerData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v48);
        if (v42)
        {
          if (atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            break;
          }
        }

        if (v38)
        {
          goto LABEL_76;
        }

LABEL_77:
        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v64);
        v37 = v65;
        if (v65 == v60)
        {
          goto LABEL_81;
        }
      }

      WTF::StringImpl::destroy(v42, v51);
      if (!v38)
      {
        goto LABEL_77;
      }

LABEL_76:
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v38 + 16), v51);
      goto LABEL_77;
    }

LABEL_50:
    v28 = v24[1];
    *v24 = v17;
    ++*(a2 + 2);
    v24[1] = a2;
    if (v28)
    {
      if (v28[2] == 1)
      {
        (*(*v28 + 8))(v28);
      }

      else
      {
        --v28[2];
      }
    }

    v29 = *v6;
    if (*v6)
    {
      v30 = *(v29 - 12) + 1;
    }

    else
    {
      v30 = 1;
    }

    *(v29 - 12) = v30;
    v32 = (*(v29 - 16) + v30);
    v33 = *(v29 - 4);
    if (v33 > 0x400)
    {
      if (v33 > 2 * v32)
      {
        goto LABEL_60;
      }
    }

    else if (3 * v33 > 4 * v32)
    {
      goto LABEL_60;
    }

    WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(v6, v24);
    goto LABEL_60;
  }

  while (1)
  {
    v13 = *(v11[1] + 32);
    if (v13)
    {
      atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    }

    v14 = *(a2 + 4);
    if (v14)
    {
      atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
      if ((WTF::equal(v13, v14, v4) & 1) == 0)
      {
        if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v15);
        }

LABEL_31:
        if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v15);
        }

        goto LABEL_35;
      }

      v16 = *(*(v11[1] + 40) + 24) == *(v56 + 24);
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v15);
      }

      if (!v13)
      {
LABEL_29:
        if (v16)
        {
          break;
        }

        goto LABEL_35;
      }
    }

    else
    {
      if ((WTF::equal(v13, 0, v4) & 1) == 0)
      {
        goto LABEL_31;
      }

      v16 = *(*(v11[1] + 40) + 24) == *(v56 + 24);
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) != 2)
    {
      goto LABEL_29;
    }

    WTF::StringImpl::destroy(v13, v15);
    if (v16)
    {
      break;
    }

    do
    {
LABEL_35:
      v11 += 2;
    }

    while (v11 != v9 && (*v11 + 1) <= 1);
    if (v11 == v12)
    {
      goto LABEL_38;
    }
  }

  v31 = 0;
LABEL_82:
  CFRelease(*(v56 + 8));
  return v31;
}

uint64_t WebKit::WebUserContentControllerProxy::removeUserMessageHandlerForName(uint64_t this, const WTF::StringImpl **a2, API::ContentWorld *a3)
{
  v5 = *(this + 72);
  v35 = (this + 72);
  v36 = this;
  if (v5)
  {
    v6 = *(v5 - 4);
    v7 = (v5 + 16 * v6);
    if (*(v5 - 12))
    {
      if (v6)
      {
        v8 = 16 * v6;
        v9 = *(this + 72);
        while ((*v9 + 1) <= 1)
        {
          v9 += 2;
          v8 -= 16;
          if (!v8)
          {
            v9 = v7;
            goto LABEL_13;
          }
        }
      }

      else
      {
        v9 = *(this + 72);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v9 = v7;
  v7 = (v5 + 16 * v6);
  if (!v5)
  {
    v10 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v10 = (v5 + 16 * *(v5 - 4));
LABEL_14:
  if (v10 == v9)
  {
    return this;
  }

  while (1)
  {
    v11 = *(v9[1] + 32);
    if (!v11)
    {
      this = WTF::equal(0, *a2, a3);
      if ((this & 1) != 0 && *(*(v9[1] + 40) + 24) == *(a3 + 3))
      {
        break;
      }

      goto LABEL_25;
    }

    atomic_fetch_add_explicit(v11, 2u, memory_order_relaxed);
    this = WTF::equal(v11, *a2, a3);
    if ((this & 1) == 0)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(v11, v12);
      }

      goto LABEL_25;
    }

    v13 = *(*(v9[1] + 40) + 24);
    v14 = *(a3 + 3);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(v11, v12);
    }

    if (v13 == v14)
    {
      break;
    }

    do
    {
LABEL_25:
      v9 += 2;
    }

    while (v9 != v7 && (*v9 + 1) <= 1);
    if (v9 == v10)
    {
      return this;
    }
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((v36 + 40), &v42);
  v15 = *(v36 + 40);
  if (v15)
  {
    v16 = *(v15 - 4);
    v17 = v15 + 8 * v16;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  v37 = v36 + 40;
  v38 = v17;
  v39 = v17;
  v40 = v17;
  v41 = v15 + 8 * v16;
  this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v37);
  v19 = v43;
  if (v43 != v38)
  {
    while (1)
    {
      v20 = *(*v19 + 8);
      atomic_fetch_add((v20 + 16), 1u);
      v21 = *(a3 + 3);
      v22 = *(v9[1] + 16);
      v23 = *(v36 + 32);
      v24 = IPC::Encoder::operator new(0x238, v18);
      *v24 = 3192;
      *(v24 + 2) = 0;
      *(v24 + 3) = 0;
      *(v24 + 1) = v23;
      *(v24 + 68) = 0;
      *(v24 + 70) = 0;
      *(v24 + 69) = 0;
      IPC::Encoder::encodeHeader(v24);
      v46 = v24;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v21);
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v24, v22);
      LOBYTE(v44) = 0;
      v45 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v20, &v46, 0, &v44, 1);
      if (v45 == 1)
      {
        v26 = v44;
        v44 = 0;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }
      }

      v27 = v46;
      v46 = 0;
      if (v27)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_38;
      }

LABEL_39:
      this = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v42);
      v19 = v43;
      if (v43 == v38)
      {
        goto LABEL_43;
      }
    }

    IPC::Encoder::~Encoder(v27, v25);
    bmalloc::api::tzoneFree(v28, v29);
    if (!v20)
    {
      goto LABEL_39;
    }

LABEL_38:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v20 + 16), v25);
    goto LABEL_39;
  }

LABEL_43:
  v30 = *v35;
  if (!*v35 || (v30 += 16 * *(v30 - 4), v30 != v9))
  {
    if (v30 != v9)
    {
      this = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>::customDeleteBucket(v9);
      v31 = *v35;
      v32 = vadd_s32(*(*v35 - 16), 0xFFFFFFFF00000001);
      *(v31 - 16) = v32;
      v33 = *(v31 - 4);
      if (6 * v32.i32[1] < v33 && v33 >= 9)
      {
        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v35, v33 >> 1);
      }
    }
  }

  return this;
}

void *WebKit::WebUserContentControllerProxy::removeAllUserMessageHandlers(WebKit::WebUserContentControllerProxy *this, API::ContentWorld *a2)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v4 = this + 40;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v41);
  v5 = *(this + 5);
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

  v36 = v4;
  v37 = v7;
  v38 = v7;
  v39 = v7;
  v40 = v5 + 8 * v6;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v36);
  for (i = v42; v42 != v37; i = v42)
  {
    v10 = *(*i + 8);
    atomic_fetch_add((v10 + 16), 1u);
    v46[0] = *(a2 + 3);
    WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v34, v46, 1uLL);
    v11 = *(this + 4);
    v13 = IPC::Encoder::operator new(0x238, v12);
    *v13 = 3186;
    *(v13 + 2) = 0;
    *(v13 + 3) = 0;
    *(v13 + 1) = v11;
    *(v13 + 68) = 0;
    *(v13 + 70) = 0;
    *(v13 + 69) = 0;
    IPC::Encoder::encodeHeader(v13);
    v45 = v13;
    IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v13, &v34);
    LOBYTE(v43) = 0;
    v44 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(v10, &v45, 0, &v43, 1);
    if (v44 == 1)
    {
      v15 = v43;
      v43 = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }
    }

    v16 = v45;
    v45 = 0;
    if (v16)
    {
      IPC::Encoder::~Encoder(v16, v14);
      bmalloc::api::tzoneFree(v18, v19);
    }

    v17 = v34;
    if (v34)
    {
      v34 = 0;
      v35 = 0;
      WTF::fastFree(v17, v14);
    }

    if (v10)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v14);
    }

    result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v41);
  }

  v22 = *(this + 9);
  v21 = (this + 72);
  v20 = v22;
  if (v22)
  {
    v23 = *(v20 - 4);
    if (v23)
    {
      v24 = 0;
      v25 = (v20 + 16 * v23 - 16);
      do
      {
        if ((*v25 + 1) >= 2 && *(*(v25[1] + 40) + 24) == *(a2 + 3))
        {
          result = WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>::customDeleteBucket(v25);
          ++v24;
        }

        v25 -= 2;
        --v23;
      }

      while (v23);
      v20 = *v21;
      if (v24)
      {
        v26 = *(v20 - 12) - v24;
        *(v20 - 16) += v24;
        *(v20 - 12) = v26;
      }

      else if (!v20)
      {
        return result;
      }
    }

    v27 = *(v20 - 12);
    v28 = *(v20 - 4);
    if (6 * v27 < v28 && v28 >= 9)
    {
      if (v27 > 1)
      {
        v31 = __clz(v27 - 1);
        if (!v31)
        {
          __break(1u);
        }

        v30 = (1 << -v31);
        if (v27 > 0x400)
        {
          if (v30 > 2 * v27)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v30 = 1;
      }

      if (3 * v30 > 4 * v27)
      {
LABEL_36:
        if (v30 > 0x400)
        {
          v32 = 0.416666667;
        }

        else
        {
          v32 = 0.604166667;
        }

        if (v30 * v32 <= v27)
        {
          LODWORD(v30) = 2 * v30;
        }

        if (v30 <= 8)
        {
          v33 = 8;
        }

        else
        {
          v33 = v30;
        }

        return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(v21, v33);
      }

LABEL_35:
      LODWORD(v30) = 2 * v30;
      goto LABEL_36;
    }
  }

  return result;
}

uint64_t WebKit::WebUserContentControllerProxy::removeAllUserMessageHandlers(WebKit::WebUserContentControllerProxy *this)
{
  v2 = this + 40;
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v17);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 - 4);
    v5 = v3 + 8 * v4;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v12 = v2;
  v13 = v5;
  v14 = v5;
  v15 = v5;
  v16 = v3 + 8 * v4;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v12);
  for (i = v18; v18 != v13; i = v18)
  {
    v8 = *(*i + 8);
    atomic_fetch_add((v8 + 16), 1u);
    WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserScriptMessageHandlers>(v8, &v11, *(this + 4), 0);
    if (v8)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v9);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v17);
  }

  result = *(this + 9);
  if (result)
  {
    *(this + 9) = 0;
    return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(result, v6);
  }

  return result;
}

void WebKit::WebUserContentControllerProxy::didPostMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  WebKit::WebProcessProxy::webPage(a2, &v36);
  v11 = v36;
  if (!v36)
  {
    v34[0] = 0;
    v35 = 1;
    v30 = *a6;
    *a6 = 0;
    (*(*v30 + 16))(v30, v34);
    (*(*v30 + 8))(v30);
    std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v34, v31);
    return;
  }

  if ((a4 - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_13;
  }

  v12 = *(a1 + 72);
  if (!v12)
  {
    goto LABEL_13;
  }

  v13 = *(v12 - 8);
  v14 = (~(a4 << 32) + a4) ^ ((~(a4 << 32) + a4) >> 22);
  v15 = 9 * ((v14 + ~(v14 << 13)) ^ ((v14 + ~(v14 << 13)) >> 8));
  v16 = (v15 ^ (v15 >> 15)) + ~((v15 ^ (v15 >> 15)) << 27);
  v17 = v13 & ((v16 >> 31) ^ v16);
  v18 = *(v12 + 16 * v17);
  if (v18 != a4)
  {
    v19 = 1;
    while (v18)
    {
      v17 = (v17 + v19) & v13;
      v18 = *(v12 + 16 * v17);
      ++v19;
      if (v18 == a4)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_13;
  }

LABEL_8:
  v20 = *(v12 + 16 * v17 + 8);
  if (!v20)
  {
LABEL_13:
    v34[0] = 0;
    v35 = 1;
    v28 = *a6;
    *a6 = 0;
    (*(*v28 + 16))(v28, v34);
    (*(*v28 + 8))(v28);
    std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v34, v29);
    goto LABEL_18;
  }

  ++*(v20 + 8);
  v21 = (*(**(v20 + 24) + 24))(*(v20 + 24));
  v23 = *(v20 + 24);
  v24 = *(v20 + 40);
  if (v21)
  {
    v25 = WTF::fastMalloc(v22, 0x10);
    *v25 = &unk_1F1120F50;
    v26 = *a6;
    *a6 = 0;
    v25[1] = v26;
    if (!v26)
    {
      __break(0xC471u);
      return;
    }

    v34[0] = v25;
    (*(*v23 + 32))(v23, v11, a3, v24, a5, v34);
    v27 = v34[0];
    v34[0] = 0;
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }
  }

  else
  {
    (*(*v23 + 16))(*(v20 + 24), v11, a3, *(v20 + 40), a5);
    v34[0] = 0;
    v35 = 1;
    v32 = *a6;
    *a6 = 0;
    (*(*v32 + 16))(v32, v34);
    (*(*v32 + 8))(v32);
    std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String>::~expected(v34, v33);
  }

  if (*(v20 + 8) == 1)
  {
    (*(*v20 + 8))(v20);
  }

  else
  {
    --*(v20 + 8);
  }

LABEL_18:
  CFRelease(v11[1]);
}

void *WebKit::WebUserContentControllerProxy::removeContentRuleList(WebKit::WebUserContentControllerProxy *this, const WTF::StringImpl **a2, const WTF::StringImpl *a3)
{
  v5 = (this + 104);
  v6 = *(this + 13);
  if (v6)
  {
    v7 = *a2;
    if (*a2 == -1 || !v7)
    {
      __break(0xC471u);
      JUMPOUT(0x19E145318);
    }

    v8 = *(v6 - 8);
    v9 = *(v7 + 4);
    if (v9 < 0x100)
    {
      v10 = WTF::StringImpl::hashSlowCase(v7);
    }

    else
    {
      v10 = v9 >> 8;
    }

    for (i = 0; ; v10 = i + v12)
    {
      v12 = v10 & v8;
      v13 = v6 + 56 * (v10 & v8);
      v14 = *v13;
      if (*v13 != -1)
      {
        if (!v14)
        {
          v15 = *v5;
          if (!*v5)
          {
            goto LABEL_30;
          }

          v13 = v15 + 56 * *(v15 - 4);
          goto LABEL_14;
        }

        if (WTF::equal(v14, *a2, a3))
        {
          break;
        }
      }

      ++i;
    }

    v15 = *v5;
    if (!*v5)
    {
      goto LABEL_15;
    }

LABEL_14:
    v15 += 56 * *(v15 - 4);
    if (v15 == v13)
    {
      goto LABEL_30;
    }

LABEL_15:
    if (v15 != v13)
    {
      v16 = *v13;
      *v13 = -1;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, a2);
      }

      v17 = *(v13 + 16);
      *(v13 + 16) = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, a2);
      }

      v18 = *(v13 + 8);
      *(v13 + 8) = 0;
      if (v18)
      {
        CFRelease(*(v18 + 8));
      }

      v19 = *v5;
      v20 = vadd_s32(*(*v5 - 16), 0xFFFFFFFF00000001);
      *(v19 - 16) = v20;
      v21 = *(v19 - 4);
      if (6 * v20.i32[1] < v21 && v21 >= 9)
      {
        WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v5, v21 >> 1);
      }
    }
  }

LABEL_30:
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v55);
  v23 = *(this + 5);
  if (v23)
  {
    v24 = *(v23 - 4);
    v25 = v23 + 8 * v24;
  }

  else
  {
    v25 = 0;
    v24 = 0;
  }

  v50 = this + 40;
  v51 = v25;
  v52 = v25;
  v53 = v25;
  v54 = v23 + 8 * v24;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v50);
  v27 = v56;
  if (v56 != v51)
  {
    while (1)
    {
      v28 = *(*v27 + 8);
      atomic_fetch_add((v28 + 16), 1u);
      v29 = *(this + 4);
      v30 = IPC::Encoder::operator new(0x238, v26);
      *v30 = 3189;
      *(v30 + 2) = 0;
      *(v30 + 3) = 0;
      *(v30 + 1) = v29;
      *(v30 + 68) = 0;
      *(v30 + 70) = 0;
      *(v30 + 69) = 0;
      IPC::Encoder::encodeHeader(v30);
      v59 = v30;
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v30, a2);
      LOBYTE(v57[0]) = 0;
      v58 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v28, &v59, 0, v57, 1);
      if (v58 == 1)
      {
        v32 = v57[0];
        v57[0] = 0;
        if (v32)
        {
          (*(*v32 + 8))(v32);
        }
      }

      v33 = v59;
      v59 = 0;
      if (v33)
      {
        break;
      }

      if (v28)
      {
        goto LABEL_39;
      }

LABEL_40:
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v55);
      v27 = v56;
      if (v56 == v51)
      {
        goto LABEL_44;
      }
    }

    IPC::Encoder::~Encoder(v33, v31);
    bmalloc::api::tzoneFree(v34, v35);
    if (!v28)
    {
      goto LABEL_40;
    }

LABEL_39:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v28 + 16), v31);
    goto LABEL_40;
  }

LABEL_44:
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v55);
  v36 = *(this + 11);
  if (v36)
  {
    v37 = *(v36 - 4);
    v38 = v36 + 8 * v37;
  }

  else
  {
    v38 = 0;
    v37 = 0;
  }

  v50 = this + 88;
  v51 = v38;
  v52 = v38;
  v53 = v38;
  v54 = v36 + 8 * v37;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v50);
  v41 = v56;
  if (v56 != v51)
  {
    while (1)
    {
      v42 = *(*v41 + 8);
      atomic_fetch_add((v42 + 16), 1u);
      v43 = *(this + 4);
      v44 = IPC::Encoder::operator new(0x238, v40);
      *v44 = 505;
      *(v44 + 68) = 0;
      *(v44 + 70) = 0;
      *(v44 + 69) = 0;
      *(v44 + 2) = 0;
      *(v44 + 3) = 0;
      *(v44 + 1) = 0;
      IPC::Encoder::encodeHeader(v44);
      v59 = v44;
      IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v44, v43);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v44, a2);
      LOBYTE(v57[0]) = 0;
      v58 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v42, &v59, 0, v57, 1);
      if (v58 == 1)
      {
        v46 = v57[0];
        v57[0] = 0;
        if (v46)
        {
          (*(*v46 + 8))(v46);
        }
      }

      v47 = v59;
      v59 = 0;
      if (v47)
      {
        break;
      }

      if (v42)
      {
        goto LABEL_53;
      }

LABEL_54:
      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v55);
      v41 = v56;
      if (v56 == v51)
      {
        return result;
      }
    }

    IPC::Encoder::~Encoder(v47, v45);
    bmalloc::api::tzoneFree(v48, v49);
    if (!v42)
    {
      goto LABEL_54;
    }

LABEL_53:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v42 + 16), v45);
    goto LABEL_54;
  }

  return result;
}

uint64_t WebKit::Authenticator::handleRequest(WebKit::Authenticator *this, const WebKit::WebAuthenticationRequestData *a2)
{
  v3 = WebKit::WebAuthenticationRequestData::operator=(this + 32, a2);
  WTF::RunLoop::mainSingleton(v3);
  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 1, this);
  v4 = *(this + 1);
  v5 = WTF::fastMalloc(atomic_fetch_add(v4, 1u), 0x10);
  *v5 = &unk_1F1120F78;
  v5[1] = v4;
  v7 = v5;
  WTF::RunLoop::dispatch();
  result = v7;
  if (v7)
  {
    return (*(*v7 + 8))(v7);
  }

  return result;
}

uint64_t WebKit::WebAuthenticationRequestData::operator=(uint64_t a1, uint64_t a2)
{
  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(a1, a2);
  v5 = *(a1 + 304);
  v6 = *(a2 + 304);
  if (v5 == 255 && v6 == 255)
  {
    goto LABEL_71;
  }

  v7 = (a1 + 16);
  if (v6 == 255)
  {
    mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1 + 16);
    goto LABEL_71;
  }

  if (!*(a2 + 304))
  {
    if (*(a1 + 304))
    {
      mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1 + 16);
      WebCore::PublicKeyCredentialCreationOptions::PublicKeyCredentialCreationOptions((a1 + 16), (a2 + 16));
      *(a1 + 304) = 0;
      goto LABEL_71;
    }

    WTF::String::operator=((a1 + 16), (a2 + 16));
    WTF::String::operator=((a1 + 24), (a2 + 24));
    WTF::String::operator=((a1 + 32), (a2 + 32));
    WTF::String::operator=((a1 + 40), (a2 + 40));
    WTF::String::operator=((a1 + 48), (a2 + 48));
    v15 = (a1 + 56);
    v16 = *(a1 + 64);
    v17 = *(a2 + 64);
    if (v16 == 255)
    {
      if (v17 == 255)
      {
        goto LABEL_46;
      }
    }

    else if (v17 == 255)
    {
      v19 = *v15;
      *v15 = 0;
      if (v16)
      {
        if (v19)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v19);
        }
      }

      else if (v19)
      {
        if (*v19 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v19;
        }
      }

      *(a1 + 64) = -1;
LABEL_46:
      WTF::String::operator=((a1 + 72), (a2 + 72));
      v21 = (a1 + 80);
      v22 = *(a1 + 88);
      v23 = *(a2 + 88);
      if (v22 == 255)
      {
        if (v23 == 255)
        {
          goto LABEL_58;
        }
      }

      else if (v23 == 255)
      {
        v24 = *v21;
        *v21 = 0;
        if (v22)
        {
          if (v24)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v24);
          }
        }

        else if (v24)
        {
          if (*v24 == 1)
          {
            JSC::ArrayBufferView::operator delete();
          }

          else
          {
            --*v24;
          }
        }

        *(a1 + 88) = -1;
        goto LABEL_58;
      }

      _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v23);
LABEL_58:
      if (a2 != a1)
      {
        v25 = *(a1 + 108);
        v26 = *(a2 + 108);
        if (v25 <= v26)
        {
          if (v26 > *(a1 + 104))
          {
            WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 96), 0);
            WTF::Vector<WTF::UUID,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 96, *(a2 + 108));
            v25 = *(a1 + 108);
          }
        }

        else
        {
          *(a1 + 108) = v26;
          v25 = v26;
        }

        if (v25)
        {
          memmove(*(a1 + 96), *(a2 + 96), 16 * v25);
          v25 = *(a1 + 108);
        }

        v27 = *(a2 + 108);
        if (v25 != v27)
        {
          v28 = (*(a1 + 96) + 16 * v25);
          v29 = (*(a2 + 96) + 16 * v25);
          v30 = 16 * v27 - 16 * v25;
          do
          {
            v31 = *v29++;
            *v28++ = v31;
            v30 -= 16;
          }

          while (v30);
          v25 = *(a2 + 108);
        }

        *(a1 + 108) = v25;
      }

      v32 = *(a2 + 112);
      *(a1 + 116) = *(a2 + 116);
      *(a1 + 112) = v32;
      WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 120), (a2 + 120));
      v33 = *(a2 + 144);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 144) = v33;
      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs,false> const&>(a1 + 152, a2 + 152);
      goto LABEL_71;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v17);
    goto LABEL_46;
  }

  if (v5 == 1)
  {
    v8 = *(a1 + 24);
    v9 = *(a2 + 24);
    if (v8 == 255)
    {
      if (v9 == 255)
      {
        goto LABEL_41;
      }
    }

    else if (v9 == 255)
    {
      v18 = *v7;
      *v7 = 0;
      if (v8)
      {
        if (v18)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v18);
        }
      }

      else if (v18)
      {
        if (*v18 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v18;
        }
      }

      *(a1 + 24) = -1;
      goto LABEL_41;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v9);
LABEL_41:
    v20 = *(a2 + 32);
    *(a1 + 36) = *(a2 + 36);
    *(a1 + 32) = v20;
    WTF::String::operator=((a1 + 40), (a2 + 40));
    WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((a1 + 48), (a2 + 48));
    *(a1 + 64) = *(a2 + 64);
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs,false> const&>(a1 + 72, a2 + 72);
    *(a1 + 224) = *(a2 + 224);
    goto LABEL_71;
  }

  mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  v10 = *(a2 + 24);
  if (v10 != 255)
  {
    v11 = *(a2 + 16);
    if (v11)
    {
      if (*(a2 + 24))
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      *v11 += v12;
    }

    *(a1 + 16) = v11;
    *(a1 + 24) = v10;
  }

  *(a1 + 32) = *(a2 + 32);
  v13 = *(a2 + 40);
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
  }

  *(a1 + 40) = v13;
  WTF::Vector<WebCore::PublicKeyCredentialDescriptor,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(a1 + 48, a2 + 48);
  v14 = *(a2 + 64);
  *(a1 + 72) = 0;
  *(a1 + 64) = v14;
  *(a1 + 216) = 0;
  if (*(a2 + 216) == 1)
  {
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs const&>((a1 + 72), a2 + 72);
  }

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 304) = 1;
LABEL_71:
  v34 = *(a2 + 312);
  if (v34)
  {
    atomic_fetch_add(v34, 1u);
  }

  v35 = *(a1 + 312);
  *(a1 + 312) = v34;
  if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v35);
    WTF::fastFree(v35, v4);
  }

  *(a1 + 320) = *(a2 + 320);
  v36 = *(a2 + 328);
  if (v36)
  {
    CFRetain(*(v36 + 8));
  }

  v37 = *(a1 + 328);
  *(a1 + 328) = v36;
  if (v37)
  {
    CFRelease(*(v37 + 8));
  }

  v38 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v38;
  std::__optional_storage_base<WebKit::FrameInfoData,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebKit::FrameInfoData,false> const&>(a1 + 368, a2 + 368);
  WTF::String::operator=((a1 + 736), (a2 + 736));
  v40 = *(a2 + 744);
  if (v40)
  {
    atomic_fetch_add(v40, 1u);
  }

  v41 = *(a1 + 744);
  *(a1 + 744) = v40;
  if (v41 && atomic_fetch_add(v41, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v41);
    WTF::fastFree(v41, v39);
  }

  *(a1 + 752) = *(a2 + 752);
  v42 = (a1 + 760);
  if (*(a1 + 792) == *(a2 + 792))
  {
    if (*(a1 + 792))
    {
      mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>((a1 + 760), (a2 + 760));
    }
  }

  else if (*(a1 + 792))
  {
    if (!*(a1 + 784))
    {
      v43 = *(a1 + 768);
      *(a1 + 768) = 0;
      if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v43, v39);
      }

      v44 = *v42;
      *v42 = 0;
      if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v44, v39);
      }
    }

    *(a1 + 784) = -1;
    *(a1 + 792) = 0;
  }

  else
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 760), a2 + 760);
    *(a1 + 792) = 1;
  }

  return a1;
}

uint64_t WebKit::Authenticator::receiveRespond(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      (**v3)(v3);
      (*(*v3 + 32))(v3, a2);
      v5 = *(*v3 + 8);

      return v5(v3);
    }
  }

  return result;
}

WebKit::CcidService *WebKit::AuthenticatorTransportService::create@<X0>(WebKit::HidService *this@<X1>, int a2@<W0>, uint64_t *a3@<X8>)
{
  if (a2 > 2)
  {
    if (a2 != 6)
    {
      return WebKit::LocalService::create(this, this, a3);
    }

    return WebKit::CcidService::create(this, a3);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return WebKit::NfcService::create(this, a3);
      }

      return WebKit::LocalService::create(this, this, a3);
    }

    return WebKit::HidService::create(this, this, a3);
  }
}

uint64_t WebKit::AuthenticatorTransportService::startDiscovery(WebKit::AuthenticatorTransportService *this)
{
  WTF::RunLoop::mainSingleton(this);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v2 = *(this + 1);
  v3 = WTF::fastMalloc(atomic_fetch_add(v2, 1u), 0x10);
  *v3 = &unk_1F1120FA0;
  v3[1] = v2;
  v5 = v3;
  WTF::RunLoop::dispatch();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

uint64_t WebKit::AuthenticatorTransportService::restartDiscovery(WebKit::AuthenticatorTransportService *this)
{
  WTF::RunLoop::mainSingleton(this);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v2 = *(this + 1);
  v3 = WTF::fastMalloc(atomic_fetch_add(v2, 1u), 0x10);
  *v3 = &unk_1F1120FC8;
  v3[1] = v2;
  v5 = v3;
  WTF::RunLoop::dispatch();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void WebKit::WebAuthenticatorCoordinatorProxy::~WebAuthenticatorCoordinatorProxy(WebKit::WebAuthenticatorCoordinatorProxy *this@<X0>, uint64_t *a3@<X8>)
{
  *this = &unk_1F1120C90;
  v4 = WTF::fastMalloc(a3, 0x10);
  *v4 = &unk_1F1120FF0;
  v20 = v4;
  WebKit::WebAuthenticatorCoordinatorProxy::cancel(this, &v20);
  v6 = v20;
  v20 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      CFRetain(*(v8 - 8));
      v9 = *(v8 + 336);
      atomic_fetch_add((v9 + 16), 1u);
      IPC::MessageReceiverMap::removeMessageReceiver(v9 + 96, 0x9Du, *(v8 + 32));
      if (v9)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v10);
      }

      CFRelease(*(v8 - 8));
    }
  }

  v11 = *(this + 12);
  *(this + 12) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(this + 11);
  *(this + 11) = 0;
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(this + 10);
  *(this + 10) = 0;
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(this + 19);
  if (v14)
  {
    WTF::VectorTypeOperations<WebKit::AutofillEvent>::destruct(*(this + 8), (*(this + 8) + 56 * v14));
  }

  v15 = *(this + 8);
  if (v15)
  {
    *(this + 8) = 0;
    *(this + 18) = 0;
    WTF::fastFree(v15, v5);
  }

  v16 = *(this + 6);
  *(this + 6) = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(this + 5);
  *(this + 5) = 0;
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(this + 4);
  *(this + 4) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  v19 = *(this + 3);
  *(this + 3) = 0;
  if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v19);
    WTF::fastFree(v19, v5);
  }

  if (*(this + 4) == 1)
  {
    *this = &unk_1F10EA5E0;
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::~WeakPtrFactory(this + 1, v5);
  }

  else
  {
    __break(0xC471u);
  }
}

{
  WebKit::WebAuthenticatorCoordinatorProxy::~WebAuthenticatorCoordinatorProxy(this, a3);

  bmalloc::api::tzoneFree(v3, v4);
}

void WebKit::WebAuthenticatorCoordinatorProxy::sharedPreferencesForWebProcess(uint64_t *__return_ptr a1@<X8>, WebKit::WebAuthenticatorCoordinatorProxy *this@<X0>)
{
  v3 = *(this + 3);
  if (v3 && (v4 = *(v3 + 8)) != 0)
  {
    CFRetain(*(v4 - 8));
    v5 = *(v4 + 336);
    atomic_fetch_add((v5 + 16), 1u);
    *a1 = *(v5 + 1096);
    a1[2] = *(v5 + 1112);
    *(a1 + 24) = 1;
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v5 + 16), v6);
    v7 = *(v4 - 8);

    CFRelease(v7);
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void WebKit::WebAuthenticatorCoordinatorProxy::makeCredential(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5, uint64_t **a6)
{
  v59 = *MEMORY[0x1E69E9840];
  v12 = *(a1 + 24);
  if (v12 && (v13 = *(v12 + 8)) != 0)
  {
    v14 = v13 - 16;
    CFRetain(*(v13 - 8));
    v15 = 0;
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *buf = 0u;
    v38 = 0u;
    v35[0] = 6;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v16 = *a6;
    *a6 = 0;
    (*(*v16 + 16))(v16, buf, 0, v35);
    (*(*v16 + 8))(v16);
    v18 = v36;
    v36 = 0;
    if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v18, v17);
    }

    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(buf, v17);
    v19 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v19, OS_LOG_TYPE_ERROR, "WebPageProxy had been released", buf, 2u);
    }

    v14 = 0;
    v15 = 1;
  }

  *(&v20 + 1) = 0;
  v21 = *a4;
  v22 = a4[1];
  *buf = 0u;
  v38 = v21;
  *a4 = 0u;
  a4[1] = 0u;
  v39 = v22;
  v23 = *(a4 + 4);
  *(a4 + 4) = 0;
  *&v40 = v23;
  BYTE8(v40) = 0;
  LOBYTE(v41) = -1;
  v24 = *(a4 + 48);
  if (v24 != 255)
  {
    v25 = *(a4 + 5);
    *(a4 + 5) = 0;
    *(&v40 + 1) = v25;
    LOBYTE(v41) = v24;
  }

  v26 = *(a4 + 7);
  *(a4 + 7) = 0;
  *(&v41 + 1) = v26;
  LOBYTE(v42) = 0;
  BYTE8(v42) = -1;
  v27 = *(a4 + 72);
  if (v27 != 255)
  {
    v28 = *(a4 + 8);
    *(a4 + 8) = 0;
    *&v42 = v28;
    BYTE8(v42) = v27;
  }

  *&v20 = 0;
  v29 = *(a4 + 10);
  v30 = *(a4 + 11);
  a4[5] = v20;
  *&v43 = v29;
  *(&v43 + 1) = v30;
  v31 = *(a4 + 12);
  v32 = *(a4 + 13);
  v33 = *(a4 + 14);
  *(a4 + 104) = v20;
  *&v44 = v31;
  *(&v44 + 1) = v32;
  *(&v45 + 1) = *(a4 + 15);
  LOBYTE(v46) = *(a4 + 128);
  *&v45 = v33;
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](&v46 + 8, a4 + 136);
  v47 = 0;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v14 + 24), v14 + 16);
  v34 = *(v14 + 24);
  atomic_fetch_add(v34, 1u);
  v48 = v34;
  v49 = 0;
  v50 = 0;
  v51 = *(v14 + 48);
  v52 = a2;
  v53 = 1;
  std::optional<WebKit::FrameInfoData>::optional[abi:sn200100]<WebKit::FrameInfoData,0>(v54, a3);
  v54[23] = 0u;
  v55 = a5;
  v56 = 1;
  v57 = 0;
  v58 = 0;
  WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(a1, buf, a6);
  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(buf);
  if ((v15 & 1) == 0)
  {
    CFRelease(*(v14 + 8));
  }
}

void WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(unint64_t a1, uint64_t a2, uint64_t **a3)
{
  v44 = *MEMORY[0x1E69E9840];
  if (*(a2 + 720))
  {
    API::SecurityOrigin::create(&v39);
    if (*(a2 + 304))
    {
      v7 = 0;
      v38 = 0;
    }

    else
    {
      v11 = *(a2 + 753);
      v12 = *(a2 + 752);
      v38 = 0;
      if (v11 == 1 && v12 == 3)
      {
        v14 = *(a2 + 40);
        if (v14)
        {
          atomic_fetch_add_explicit(v14, 2u, memory_order_relaxed);
          v38 = v14;
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }
    }

    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v15 = *(a1 + 8);
    atomic_fetch_add(v15, 1u);
    v41[0] = v15;
    var1 = v41;
    WebKit::WebAuthenticationRequestData::WebAuthenticationRequestData(v42, a2);
    v17 = *a3;
    *a3 = 0;
    v43 = v17;
    v18 = WTF::fastMalloc(v17, 0x350);
    *v18 = &unk_1F1121018;
    v19 = v41[0];
    v41[0] = 0;
    v18[2] = v19;
    WebKit::WebAuthenticationRequestData::WebAuthenticationRequestData((v18 + 4), v42);
    v18[104] = v43;
    v43 = 0;
    WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(v42);
    v21 = v41[0];
    v41[0] = 0;
    if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v21);
      WTF::fastFree(v21, v20);
    }

    v22 = *(a1 + 24);
    if (!v22)
    {
      goto LABEL_61;
    }

    v23 = *(v22 + 8);
    if (!v23)
    {
      goto LABEL_61;
    }

    v24 = *(*(v23 + 392) + 376);
    ++v24[4];
    if (!v7 || ((*(*v24 + 56))(v24) & 1) != 0 || ((*(*v24 + 64))(v24) & 1) != 0)
    {
      (*(*v18 + 16))(v18, 1);
      (*(*v18 + 8))(v18);
LABEL_25:
      if (v24[4] == 1)
      {
        (*(*v24 + 24))(v24);
      }

      else
      {
        --v24[4];
      }

      v26 = v38;
      v38 = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }

      v27 = v39;
      v39 = 0;
      if (v27)
      {
        CFRelease(v27->var1);
      }

      return;
    }

    v28 = *(a1 + 24);
    if (!v28 || (v29 = *(v28 + 8)) == 0)
    {
LABEL_61:
      __break(0xC471u);
      JUMPOUT(0x19E146720);
    }

    v30 = *(v29 + 104);
    WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
    v31 = *(a1 + 8);
    atomic_fetch_add(v31, 1u);
    v32 = v38;
    if (v38)
    {
      atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
    }

    v33 = v39;
    var1_low = LOBYTE(v39[2].var1);
    if (LOBYTE(v39[2].var1))
    {
      if (var1_low == 255)
      {
        var0 = 0;
      }

      else
      {
        var0 = v39[1].var0;
        var1 = v39[1].var1;
      }
    }

    else
    {
      var0 = v39[1].var0;
      if (var0)
      {
        atomic_fetch_add_explicit(var0, 2u, memory_order_relaxed);
      }

      var1 = v33[1].var1;
      if (var1)
      {
        atomic_fetch_add_explicit(var1, 2u, memory_order_relaxed);
      }

      v3 = v33[2].var0;
      var1_low = LOBYTE(v33[2].var1);
    }

    v36 = WTF::fastMalloc(v33, 0x40);
    *v36 = &unk_1F1121068;
    v36[1] = v31;
    v36[2] = v32;
    v36[3] = v18;
    *(v36 + 32) = 0;
    *(v36 + 56) = -1;
    if (var1_low)
    {
      if (var1_low == 255)
      {
        goto LABEL_46;
      }

      v36[4] = var0;
      v36[5] = var1;
    }

    else
    {
      v36[4] = var0;
      v36[5] = var1;
      *(v36 + 12) = v3;
      var0 = 0;
      var1 = 0;
    }

    *(v36 + 56) = var1_low;
LABEL_46:
    v41[0] = v36;
    (*(*v30 + 576))(v30, &v38, v41);
    v37 = v41[0];
    v41[0] = 0;
    if (v37)
    {
      (*(*v37 + 8))(v37);
    }

    if (!var1_low)
    {
      if (var1 && atomic_fetch_add_explicit(var1, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(var1, v25);
      }

      if (var0 && atomic_fetch_add_explicit(var0, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(var0, v25);
      }
    }

    goto LABEL_25;
  }

  memset(v42, 0, 144);
  *v41 = 0u;
  LOBYTE(v39) = 8;
  v40 = 0;
  v8 = *a3;
  *a3 = 0;
  (*(*v8 + 16))(v8, v41, 0, &v39);
  (*(*v8 + 8))(v8);
  v10 = v40;
  v40 = 0;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v9);
  }

  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v41, v9);
}

void WebKit::WebAuthenticatorCoordinatorProxy::getAssertion(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, __int128 *a6, uint64_t **a7)
{
  v48 = *MEMORY[0x1E69E9840];
  v14 = *(a1 + 24);
  if (v14 && (v15 = *(v14 + 8)) != 0)
  {
    v16 = v15 - 16;
    CFRetain(*(v15 - 8));
    v17 = 0;
  }

  else
  {
    memset(v32, 0, 128);
    *buf = 0u;
    v31 = 0u;
    v28[0] = 6;
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    v18 = *a7;
    *a7 = 0;
    (*(*v18 + 16))(v18, buf, 0, v28);
    (*(*v18 + 8))(v18);
    v20 = v29;
    v29 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v19);
    }

    WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(buf, v19);
    v21 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_19D52D000, v21, OS_LOG_TYPE_ERROR, "WebPageProxy had been released", buf, 2u);
    }

    v16 = 0;
    v17 = 1;
  }

  memset(buf, 0, sizeof(buf));
  LOBYTE(v31) = 0;
  BYTE8(v31) = -1;
  v22 = *(a4 + 8);
  if (v22 != 255)
  {
    v23 = *a4;
    *a4 = 0;
    *&v31 = v23;
    BYTE8(v31) = v22;
  }

  *&v32[0] = a4[2];
  v24 = *(a4 + 3);
  *(a4 + 3) = 0u;
  *(v32 + 8) = v24;
  *&v24 = a4[5];
  a4[5] = 0;
  *(&v32[1] + 1) = v24;
  LOBYTE(v32[2]) = *(a4 + 48);
  std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100](&v32[2] + 8, (a4 + 7));
  v33 = *(a4 + 104);
  v34 = 1;
  WTF::WeakPtrFactory<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v16 + 24), v16 + 16);
  v25 = *(v16 + 24);
  atomic_fetch_add(v25, 1u);
  v35 = v25;
  v36 = 0;
  v37 = 0;
  v38 = *(v16 + 48);
  v39 = a2;
  v40 = 1;
  std::optional<WebKit::FrameInfoData>::optional[abi:sn200100]<WebKit::FrameInfoData,0>(v41, a3);
  v41[23] = 0u;
  v42 = a5;
  v43 = 1;
  LOBYTE(v44) = 0;
  v47 = 0;
  if (*(a6 + 32) == 1)
  {
    v46 = -1;
    LODWORD(v26) = *(a6 + 24);
    if (*(a6 + 24))
    {
      if (v26 == 255)
      {
        goto LABEL_20;
      }

      v44 = *a6;
    }

    else
    {
      v27 = *a6;
      if (*a6)
      {
        atomic_fetch_add_explicit(v27, 2u, memory_order_relaxed);
      }

      *&v44 = v27;
      v26 = *(a6 + 1);
      if (v26)
      {
        atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
      }

      *(&v44 + 1) = v26;
      v45 = *(a6 + 4);
      LOBYTE(v26) = *(a6 + 24);
    }

    v46 = v26;
LABEL_20:
    v47 = 1;
  }

  WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(a1, buf, a7);
  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData(buf);
  if ((v17 & 1) == 0)
  {
    CFRelease(*(v16 + 8));
  }
}

uint64_t WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_1::~$_1(uint64_t a1, WTF::StringImpl *a2)
{
  if (!*(a1 + 48))
  {
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v3, a2);
    }

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
    if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, a2);
    }
  }

  *(a1 + 48) = -1;
  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5, a2);
  }

  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *a1;
  *a1 = 0;
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v7);
    WTF::fastFree(v7, a2);
  }

  return a1;
}

WTF::StringImpl *WebKit::WebAuthenticatorCoordinatorProxy::removeExpiredAutofillEvents(WTF::StringImpl *this)
{
  v1 = this;
  v2 = *(this + 8);
  v3 = *(this + 19);
  v4 = (v2 + 56 * v3);
  v5 = 0;
  if (v3)
  {
    v6 = *(this + 8);
    v7 = v2 + 56 * v3;
    v8 = v7;
    do
    {
      this = WTF::MonotonicTime::now(this);
      if (*v2 + 300.0 >= v10)
      {
        v11 = v7;
      }

      else
      {
        v11 = v2;
        if (v7 != *(v1 + 8) + 56 * *(v1 + 19))
        {
          if (v2 == v8)
          {
            v11 = v7;
          }

          else
          {
            WTF::VectorMover<false,WebKit::AutofillEvent>::moveOverlapping(v8, v2, v7);
            v11 = v7 + v6 - v8;
          }
        }

        v12 = *(v2 + 2);
        *(v2 + 2) = 0;
        if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v12, v9);
        }

        this = *(v2 + 1);
        *(v2 + 1) = 0;
        if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          this = WTF::StringImpl::destroy(this, v9);
        }

        v8 = (v2 + 56);
        ++v5;
        v7 = v11;
      }

      v2 = (v2 + 56);
      v6 += 56;
    }

    while (v2 < v4);
    v2 = *(v1 + 8);
    v3 = *(v1 + 19);
    v4 = v8;
  }

  else
  {
    v11 = *(this + 8);
  }

  v13 = (v2 + 56 * v3);
  if (v4 != v13)
  {
    this = WTF::VectorMover<false,WebKit::AutofillEvent>::moveOverlapping(v4, v13, v11);
    v3 = *(v1 + 19);
  }

  *(v1 + 19) = v3 - v5;
  return this;
}

WTF::StringImpl *WebKit::WebAuthenticatorCoordinatorProxy::recordAutofill(WebKit::WebAuthenticatorCoordinatorProxy *this, atomic_uint **a2, const WTF::URL *a3)
{
  v6 = WebKit::WebAuthenticatorCoordinatorProxy::removeExpiredAutofillEvents(this);
  WTF::MonotonicTime::now(v6);
  v17 = v7;
  v8 = *a2;
  if (*a2)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v18 = v8;
  v9 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
  }

  v19 = v9;
  v10 = *(a3 + 24);
  v20 = *(a3 + 8);
  v21 = v10;
  v11 = *(this + 19);
  if (v11 == *(this + 18))
  {
    WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::AutofillEvent>(this + 16, &v17);
  }

  else
  {
    v13 = (*(this + 8) + 56 * v11);
    *v13 = v7;
    v14 = v18;
    v18 = 0;
    v13[1] = v14;
    WTF::URL::URL((v13 + 2), &v19);
    ++*(this + 19);
  }

  v15 = v19;
  v19 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v12);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      return WTF::StringImpl::destroy(result, v12);
    }
  }

  return result;
}

uint64_t WebKit::MockAuthenticatorManager::operator new(WebKit::MockAuthenticatorManager *this, void *a2)
{
  if (this == 1136 && WebKit::MockAuthenticatorManager::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::MockAuthenticatorManager::s_heapRef, a2);
  }

  else
  {
    return WebKit::MockAuthenticatorManager::operatorNewSlow(this);
  }
}

uint64_t WebKit::MockAuthenticatorManager::MockAuthenticatorManager(uint64_t a1, uint64_t a2)
{
  v4 = WebKit::AuthenticatorManager::AuthenticatorManager(a1);
  *v4 = &unk_1F1120CD8;
  *(v4 + 3) = &unk_1F1120DA0;
  *(v4 + 944) = *a2;
  *(v4 + 952) = 0;
  *(v4 + 992) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 952) = *(a2 + 8);
    v5 = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a1 + 960) = v5;
    v6 = *(a2 + 24);
    *(a2 + 24) = 0;
    *(a1 + 968) = v6;
    v7 = *(a2 + 32);
    *(a2 + 32) = 0;
    *(a1 + 976) = v7;
    v8 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a1 + 984) = v8;
    *(a1 + 992) = 1;
  }

  *(a1 + 1000) = 0;
  *(a1 + 1064) = 0;
  if (*(a2 + 120) == 1)
  {
    *(a1 + 1000) = 0u;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 1000, (a2 + 56));
    *(a1 + 1016) = 0u;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 1016, (a2 + 72));
    v9 = *(a2 + 104);
    *(a1 + 1032) = *(a2 + 88);
    *(a1 + 1048) = v9;
    *(a1 + 1064) = 1;
  }

  std::__optional_copy_assign_base<WebCore::MockWebAuthenticationConfiguration::NfcConfiguration,false>::__optional_copy_assign_base[abi:sn200100](a1 + 1072, a2 + 128);
  *(a1 + 1112) = 0;
  *(a1 + 1128) = 0;
  if (*(a2 + 184) == 1)
  {
    *(a1 + 1112) = 0;
    *(a1 + 1120) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 1112, (a2 + 168));
    *(a1 + 1128) = 1;
  }

  return a1;
}

WebKit::MockLocalService *WebKit::MockAuthenticatorManager::createService@<X0>(WebKit::MockNfcService *this@<X2>, uint64_t a2@<X0>, unint64_t a3@<X1>, WebKit::MockNfcService **a4@<X8>)
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      v8 = WebKit::FidoService::operatorNewSlow(0xF8);
      v9 = WebKit::HidService::HidService(v8, this);
      *v9 = &unk_1F1120E60;
      result = WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v9 + 48, a2 + 944);
      *(v8 + 30) = 0;
      *a4 = v8;
      return result;
    }

    if (a3 == 1)
    {

      return WebKit::MockNfcService::create(this, (a2 + 944), a4);
    }

    goto LABEL_8;
  }

  if (a3 != 6)
  {
LABEL_8:

    return WebKit::MockLocalService::create(this, (a2 + 944), a4);
  }

  return WebKit::MockCcidService::create(this, (a2 + 944), a4);
}

void WebKit::MockAuthenticatorManager::respondReceivedInternal(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 924);
  if (v6)
  {
    v7 = *(a1 + 912);
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      (*(*v9 + 32))(v9);
      v8 -= 8;
    }

    while (v8);
  }

  v10 = qword_1ED641530;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "MockAuthenticatorManager: validateHidExpectedCommandscompleted", v11, 2u);
  }

  if (a3 || (*(a1 + 944) & 1) == 0)
  {
    WebKit::AuthenticatorManager::invokePendingCompletionHandler(a1, a2);
    WebKit::AuthenticatorManager::clearStateAsync(a1);

    WTF::RunLoop::TimerBase::stop((a1 + 856));
  }
}

void WebKit::MockAuthenticatorManager::filterTransports(_BYTE *a1, uint64_t *a2)
{
  if ((a1[1104] & 1) == 0)
  {
    v15 = 1;
    v4 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(a2, &v15);
    if (*a2)
    {
      v5 = (*a2 + *(*a2 - 4));
      if (v5 == v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      if (!v4)
      {
        goto LABEL_9;
      }

      v5 = 0;
    }

    if (v5 != v4)
    {
      WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::remove(a2, v4);
    }
  }

LABEL_9:
  if (a1[992])
  {
    goto LABEL_17;
  }

  v14 = 3;
  v6 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(a2, &v14);
  if (*a2)
  {
    v7 = (*a2 + *(*a2 - 4));
    if (v7 == v6)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = 0;
  }

  if (v7 != v6)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::remove(a2, v6);
  }

LABEL_17:
  if (a1[1128])
  {
    goto LABEL_25;
  }

  v13 = 6;
  v8 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(a2, &v13);
  if (*a2)
  {
    v9 = (*a2 + *(*a2 - 4));
    if (v9 == v8)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (!v8)
    {
      goto LABEL_25;
    }

    v9 = 0;
  }

  if (v9 != v8)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::remove(a2, v8);
  }

LABEL_25:
  v12 = 2;
  v10 = WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::IntHash<WebCore::AuthenticatorTransport>>,(WTF::ShouldValidateKey)1,WebCore::AuthenticatorTransport>(a2, &v12);
  if (*a2)
  {
    v11 = (*a2 + *(*a2 - 4));
    if (v11 == v10)
    {
      return;
    }
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v11 = 0;
  }

  if (v11 != v10)
  {
    WTF::HashTable<WebCore::AuthenticatorTransport,WebCore::AuthenticatorTransport,WTF::IdentityExtractor,WTF::IntHash<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::StrongEnumHashTraits<WebCore::AuthenticatorTransport>,WTF::FastMalloc>::remove(a2, v10);
  }
}

uint64_t WebKit::MockHidConnection::sendSync(uint64_t result, uint64_t a2)
{
  if (*(result + 216))
  {
    if (*(result + 193) == 1)
    {
      v5 = v2;
      v6 = v3;
      fido::FidoHidMessage::createFromSerializedData();
      if (v4[40] == 1)
      {
        WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(v4);
      }
    }

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void WebKit::MockHidConnection::send(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v6 = *(a1 + 8);
  atomic_fetch_add(v6, 1u);
  v7 = *a2;
  *a2 = 0;
  v8 = *a3;
  *a3 = 0;
  v9 = a2[1];
  a2[1] = 0;
  v10 = malloc_type_malloc(0x40uLL, 0x10F00407B933D54uLL);
  *v10 = MEMORY[0x1E69E9818];
  v10[1] = 50331650;
  v10[2] = WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0)::{lambda(void *)#1}::__invoke;
  v10[3] = &WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0)::descriptor;
  v10[4] = v6;
  v10[5] = v7;
  v10[6] = v9;
  v10[7] = v8;
  global_queue = dispatch_get_global_queue(0, 0);
  dispatch_async(global_queue, v10);

  _Block_release(v10);
}

WTF::RefCountedBase *WebKit::MockHidConnection::registerDataReceivedCallbackInternal(WTF::RefCountedBase *this, unint64_t a2)
{
  if ((*(this + 216) & 1) == 0)
  {
    goto LABEL_15;
  }

  v2 = this;
  if (*(this + 185) == *(this + 344) && *(this + 186) == *(this + 345) && *(this + 187) == 2)
  {
    v4 = 0;
    v5 = 0;
    WebKit::HidConnection::receiveReport(this, &v4);
    this = v4;
    if (v4)
    {
      v4 = 0;
      LODWORD(v5) = 0;
      this = WTF::fastFree(this, v3);
    }

    if (*(v2 + 216))
    {
      if (*(v2 + 191) == 1)
      {
        *(v2 + 191) = 0;
        *(v2 + 187) = 0;
        return WebKit::MockHidConnection::continueFeedReports(v2);
      }

      return this;
    }

LABEL_15:
    __break(1u);
    return this;
  }

  if ((*(this + 190) & 1) == 0)
  {

    return WebKit::MockHidConnection::feedReports(this, a2);
  }

  return this;
}

WTF::RefCountedBase *WebKit::MockHidConnection::feedReports(WTF::RefCountedBase *this, unint64_t a2)
{
  v2 = this;
  v73[1] = *MEMORY[0x1E69E9840];
  if (*(this + 345))
  {
    LOBYTE(v70) = 0;
    v72 = 0;
    v3 = *(this + 344);
    if ((v3 & 1) == 0)
    {
      v68 = 0;
      v69 = 0;
      if ((*(this + 216) & 1) == 0)
      {
        goto LABEL_101;
      }

      if (*(this + 192) == 1)
      {
        v4 = 0;
        v73[0] = 0x300000000;
        v60 = 0;
        v61 = 0;
        v59 = &v60;
        do
        {
          std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__emplace_hint_unique_key_args<fido::ProtocolVersion,fido::ProtocolVersion const&>(&v59, &v60, (v73 + v4), (v73 + v4));
          v4 += 4;
        }

        while (v4 != 8);
        v58 = 0x1000000010;
        v57 = WTF::fastMalloc(v5, 0x10);
        bzero(v57, 0x10uLL);
        fido::AuthenticatorGetInfoResponse::AuthenticatorGetInfoResponse();
        fido::encodeAsCBOR(&v66, &v62, v6);
        v8 = v68;
        if (v68)
        {
          v68 = 0;
          LODWORD(v69) = 0;
          WTF::fastFree(v8, v7);
        }

        v68 = v66;
        v9 = v67;
        v66 = 0;
        v67 = 0;
        v69 = v9;
        fido::AuthenticatorGetInfoResponse::~AuthenticatorGetInfoResponse(&v62);
        v11 = v57;
        if (v57)
        {
          v57 = 0;
          LODWORD(v58) = 0;
          WTF::fastFree(v11, v10);
        }

        std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::destroy(&v59, v60);
      }

      else
      {
        LODWORD(v57) = 0;
        v60 = 0;
        v61 = 0;
        v59 = &v60;
        std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__emplace_hint_unique_key_args<fido::ProtocolVersion,fido::ProtocolVersion const&>(&v59, &v60, &v57, &v57);
        v66 = 0;
        v67 = 0x1000000000;
        v21 = WTF::fastMalloc(v20, 0x10);
        LODWORD(v67) = 16;
        v66 = v21;
        bzero(v21, HIDWORD(v67));
        fido::AuthenticatorGetInfoResponse::AuthenticatorGetInfoResponse();
        v23 = v66;
        if (v66)
        {
          v66 = 0;
          LODWORD(v67) = 0;
          WTF::fastFree(v23, v22);
        }

        std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::destroy(&v59, v60);
        LOWORD(v59) = 256;
        HIDWORD(v59) = 2;
        LOBYTE(v60) = 1;
        HIDWORD(v60) = 2;
        if ((*(v2 + 216) & 1) == 0)
        {
          goto LABEL_127;
        }

        if (*(v2 + 194) == 1)
        {
          LOBYTE(v57) = 1;
          WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v66, &v57, 1);
          fido::AuthenticatorGetInfoResponse::setPinProtocols();
          v25 = v66;
          if (v66)
          {
            v66 = 0;
            LODWORD(v67) = 0;
            WTF::fastFree(v25, v24);
          }

          fido::AuthenticatorSupportedOptions::setClientPinAvailability();
          if ((*(v2 + 216) & 1) == 0)
          {
            goto LABEL_127;
          }
        }

        if (*(v2 + 195) == 1)
        {
          fido::AuthenticatorSupportedOptions::setUserVerificationAvailability();
        }

        fido::AuthenticatorGetInfoResponse::setOptions();
        if ((*(v2 + 216) & 1) == 0)
        {
          goto LABEL_127;
        }

        fido::AuthenticatorGetInfoResponse::setMaxCredentialCountInList(&v62);
        if ((*(v2 + 216) & 1) == 0)
        {
          goto LABEL_127;
        }

        fido::AuthenticatorGetInfoResponse::setMaxCredentialIDLength(&v62);
        fido::encodeAsCBOR(&v66, &v62, v26);
        v28 = v68;
        if (v68)
        {
          v68 = 0;
          LODWORD(v69) = 0;
          WTF::fastFree(v28, v27);
        }

        v68 = v66;
        v69 = v67;
        fido::AuthenticatorGetInfoResponse::~AuthenticatorGetInfoResponse(&v62);
      }

      LOBYTE(v62) = 0;
      v29 = HIDWORD(v69);
      if (HIDWORD(v69) == v69)
      {
        v30 = WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v68, HIDWORD(v69) + 1, &v62);
        v29 = HIDWORD(v69);
      }

      else
      {
        v30 = &v62;
      }

      v31 = v68;
      memmove(v68 + 1, v68, v29);
      *v31 = *v30;
      ++HIDWORD(v69);
      if ((*(v2 + 216) & 1) == 0)
      {
LABEL_101:
        do
        {
          while (1)
          {
            while (1)
            {
LABEL_127:
              __break(1u);
LABEL_92:
              WTF::base64Decode();
              if ((*(v2 + 216) & 1) != 0 && *(v2 + 41))
              {
                v41 = *(v2 + 19);
                v42 = *v41;
                *v41 = 0;
                if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v42, v40);
                }

                memmove(v41, v41 + 1, *(v2 + 19) + 8 * *(v2 + 41) - (v41 + 1));
                --*(v2 + 41);
                if (*(v2 + 216))
                {
                  break;
                }
              }
            }

            if ((*(v2 + 188) & 1) == 0)
            {
              break;
            }

            if (v61)
            {
              goto LABEL_102;
            }
          }
        }

        while ((v61 & 1) == 0);
LABEL_102:
        fido::FidoHidMessage::create();
        std::__optional_storage_base<fido::FidoHidMessage,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<fido::FidoHidMessage,false>>(&v70, &v62);
        if (v65 == 1)
        {
          WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(&v63);
        }

        if (v61 != 1)
        {
          goto LABEL_107;
        }

        goto LABEL_105;
      }

      if (*(v2 + 185) == *(v2 + 344) && *(v2 + 186) == *(v2 + 345) && *(v2 + 187) == 3 || (*(v2 + 188) & 1) == 0)
      {
        fido::FidoHidMessage::create();
        std::__optional_storage_base<fido::FidoHidMessage,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<fido::FidoHidMessage,false>>(&v70, &v62);
        if (v65 == 1)
        {
          WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(&v63);
        }
      }

      else
      {
        LOBYTE(v66) = 1;
        WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v59, &v66, 1);
        fido::FidoHidMessage::create();
        std::__optional_storage_base<fido::FidoHidMessage,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<fido::FidoHidMessage,false>>(&v70, &v62);
        if (v65 == 1)
        {
          WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(&v63);
        }

        v33 = v59;
        if (v59)
        {
          v59 = 0;
          LODWORD(v60) = 0;
          WTF::fastFree(v33, v32);
        }
      }

      this = v68;
      if (v68)
      {
        v68 = 0;
        LODWORD(v69) = 0;
        this = WTF::fastFree(this, v32);
      }

      v3 = *(v2 + 344);
    }

    if ((v3 & 1) == 0 || *(v2 + 345) != 1)
    {
LABEL_107:
      if (v72 != 1)
      {
        goto LABEL_127;
      }

      v44 = 1;
      while (1)
      {
        this = fido::FidoHidMessage::numPackets(&v70);
        if (!this)
        {
          goto LABEL_81;
        }

        if ((v72 & 1) == 0)
        {
          goto LABEL_127;
        }

        Packet = fido::FidoHidMessage::popNextPacket(&v59, &v70);
        if ((v44 & 1) == 0)
        {
          if ((*(v2 + 216) & 1) == 0)
          {
            goto LABEL_127;
          }

          if (*(v2 + 185) == *(v2 + 344) && *(v2 + 186) == *(v2 + 345) && *(v2 + 187) == 3)
          {
            v66 = 0;
            v67 = 0;
            fido::FidoHidContinuationPacket::FidoHidContinuationPacket();
            fido::FidoHidContinuationPacket::getSerializedData(&v68, &v62);
            v47 = v59;
            if (v59)
            {
              v59 = 0;
              LODWORD(v60) = 0;
              WTF::fastFree(v47, v46);
            }

            v59 = v68;
            v48 = v69;
            v68 = 0;
            v69 = 0;
            v60 = v48;
            v62 = &unk_1F1120F28;
            v49 = v63;
            if (v63)
            {
              v63 = 0;
              v64 = 0;
              WTF::fastFree(v49, v46);
            }

            Packet = v66;
            if (v66)
            {
              v66 = 0;
              LODWORD(v67) = 0;
              Packet = WTF::fastFree(Packet, v46);
            }
          }
        }

        WTF::RunLoop::mainSingleton(Packet);
        v50 = v59;
        v51 = v60;
        v59 = 0;
        v60 = 0;
        WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v2 + 2, v2);
        v52 = *(v2 + 1);
        v53 = WTF::fastMalloc(atomic_fetch_add(v52, 1u), 0x20);
        *v53 = &unk_1F1121090;
        v53[1] = v50;
        v53[2] = v51;
        v53[3] = v52;
        v62 = v53;
        WTF::RunLoop::dispatch();
        v55 = v62;
        v62 = 0;
        if (v55)
        {
          (*(*v55 + 8))(v55);
        }

        v56 = v59;
        if (v59)
        {
          v59 = 0;
          LODWORD(v60) = 0;
          WTF::fastFree(v56, v54);
        }

        v44 = 0;
        if ((v72 & 1) == 0)
        {
          goto LABEL_127;
        }
      }
    }

    if ((*(v2 + 216) & 1) == 0)
    {
      goto LABEL_127;
    }

    if (*(v2 + 193))
    {
      goto LABEL_81;
    }

    if (*(v2 + 189) == 1)
    {
      *(v2 + 189) = 0;
      LOBYTE(v68) = 1;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v59, &v68, 1);
      fido::FidoHidInitPacket::FidoHidInitPacket();
      v35 = v59;
      if (v59)
      {
        v59 = 0;
        LODWORD(v60) = 0;
        WTF::fastFree(v35, v34);
      }

      fido::FidoHidInitPacket::getSerializedData(&v59, &v62);
      WebKit::HidConnection::receiveReport(v2, &v59);
      v37 = v59;
      if (v59)
      {
        v59 = 0;
        LODWORD(v60) = 0;
        WTF::fastFree(v37, v36);
      }

      WebKit::MockHidConnection::continueFeedReports(v2);
      v62 = &unk_1F1120F28;
      this = v63;
      if (v63)
      {
        v63 = 0;
        v64 = 0;
        this = WTF::fastFree(this, v38);
      }

LABEL_81:
      if (v72 == 1)
      {
        return WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(&v71);
      }

      return this;
    }

    if (*(v2 + 185) == v3 && *(v2 + 186) == 1 && *(v2 + 187) == 5 && ((*(v2 + 352) & 1) != 0 || *(v2 + 353) == 1))
    {
      LOBYTE(v68) = 43;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v59, &v68, 1);
      fido::FidoHidMessage::create();
      std::__optional_storage_base<fido::FidoHidMessage,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<fido::FidoHidMessage,false>>(&v70, &v62);
      if (v65 == 1)
      {
        WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(&v63);
      }

LABEL_105:
      v43 = v59;
      if (v59)
      {
        v59 = 0;
        LODWORD(v60) = 0;
        WTF::fastFree(v43, v39);
      }

      goto LABEL_107;
    }

    if (*(v2 + 41))
    {
      goto LABEL_92;
    }

    __break(0xC471u);
LABEL_131:
    JUMPOUT(0x19E147FCCLL);
  }

  v71 = 17;
  v12 = WTF::fastMalloc(0x11, 0x11);
  v70 = v12;
  v13 = *(v2 + 93);
  if (v13)
  {
    v14 = *(v2 + 45);
    if (v13 < 0x12)
    {
      v16 = 0;
    }

    else
    {
      if (v13 <= 0x19)
      {
        v15 = 25;
      }

      else
      {
        v15 = *(v2 + 93);
      }

      WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v70, v15);
      v16 = HIDWORD(v71);
      if (v13 < HIDWORD(v71))
      {
        __break(0xC471u);
        goto LABEL_131;
      }

      v12 = v70;
    }

    memcpy(v12 + v16, v14, v13);
    HIDWORD(v71) = v13;
  }

  if ((*(v2 + 216) & 1) == 0)
  {
    goto LABEL_127;
  }

  if (*(v2 + 185) == *(v2 + 344) && *(v2 + 186) == *(v2 + 345) && *(v2 + 187) == 6)
  {
    if (!v13)
    {
      __break(0xC471u);
      JUMPOUT(0x19E147FD4);
    }

    --*v70;
  }

  WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(&v70, 0x11uLL);
  if (HIDWORD(v71) < v13)
  {
    goto LABEL_127;
  }

  if (HIDWORD(v71) - v13 <= 3)
  {
    goto LABEL_127;
  }

  WTF::cryptographicallyRandomValues();
  if ((*(v2 + 216) & 1) == 0)
  {
    goto LABEL_127;
  }

  fido::FidoHidInitPacket::FidoHidInitPacket();
  fido::FidoHidInitPacket::getSerializedData(&v59, &v62);
  WebKit::HidConnection::receiveReport(v2, &v59);
  v18 = v59;
  if (v59)
  {
    v59 = 0;
    LODWORD(v60) = 0;
    WTF::fastFree(v18, v17);
  }

  if ((*(v2 + 216) & 1) == 0)
  {
    goto LABEL_127;
  }

  if (*(v2 + 191) == 1)
  {
    *(v2 + 191) = 0;
    *(v2 + 187) = 0;
    WebKit::MockHidConnection::continueFeedReports(v2);
  }

  v62 = &unk_1F1120F28;
  v19 = v63;
  if (v63)
  {
    v63 = 0;
    v64 = 0;
    WTF::fastFree(v19, v17);
  }

  this = v70;
  if (v70)
  {
    v70 = 0;
    LODWORD(v71) = 0;
    return WTF::fastFree(this, v17);
  }

  return this;
}

uint64_t WebKit::MockHidConnection::continueFeedReports(WebKit::MockHidConnection *this)
{
  WTF::RunLoop::mainSingleton(this);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v2 = *(this + 1);
  v3 = WTF::fastMalloc(atomic_fetch_add(v2, 1u), 0x10);
  *v3 = &unk_1F11210B8;
  v3[1] = v2;
  v5 = v3;
  WTF::RunLoop::dispatch();
  result = v5;
  if (v5)
  {
    return (*(*v5 + 8))(v5);
  }

  return result;
}

WebKit::HidService *WebKit::MockHidService::platformStartDiscovery(WebKit::HidService *this)
{
  if (*(this + 168) == 1)
  {
    return WebKit::HidService::deviceAdded(this, 0);
  }

  return this;
}

unsigned int *WebKit::MockHidService::createHidConnection@<X0>(WebKit::MockHidService *this@<X0>, __IOHIDDevice *a2@<X1>, uint64_t **a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = WTF::fastMalloc(v34, 0x190);
  v8 = WebKit::HidConnection::HidConnection(v7, a2);
  *v8 = &unk_1F1120E18;
  WebCore::MockWebAuthenticationConfiguration::MockWebAuthenticationConfiguration(v8 + 96, this + 48);
  *(v7 + 288) = 0;
  *(v7 + 336) = 0;
  *(v7 + 172) = 0;
  *(v7 + 87) = -1;
  *(v7 + 176) = 0;
  *(v7 + 45) = 0u;
  *(v7 + 47) = 0u;
  v7[49] = 0;
  if (*(v7 + 216) == 1 && *(v7 + 184) == 1)
  {
    v9 = *(v7 + 45);
    if (v9)
    {
      v10 = v7[21];
      v11 = 8 * v9;
      do
      {
        v12 = *v10;
        if (*v10)
        {
          v13 = *(v12 + 16);
          v12 = *(v12 + 4);
          v14 = ((v13 >> 2) & 1) << 32;
        }

        else
        {
          v14 = 0x100000000;
        }

        v3 = v12 | v3 & 0xFFFFFF0000000000 | v14;
        WTF::base64Decode();
        if (v33 == 1)
        {
          v16 = *(v7 + 97);
          if (v16 == *(v7 + 96))
          {
            WTF::Vector<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>((v7 + 47), v31);
          }

          else
          {
            v20 = v7[47] + 16 * v16;
            *v20 = 0;
            *(v20 + 8) = 0;
            v21 = *v31;
            *v31 = 0;
            *v20 = v21;
            *(v20 + 8) = *&v31[8];
            LODWORD(v21) = v32;
            v32 = 0;
            *(v20 + 12) = v21;
            ++*(v7 + 97);
          }
        }

        else
        {
          v17 = qword_1ED641530;
          if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
          {
            WTF::String::utf8();
            v18 = v28 ? v28 + 16 : 0;
            *buf = 136315138;
            v30 = v18;
            _os_log_error_impl(&dword_19D52D000, v17, OS_LOG_TYPE_ERROR, "MockHidConnection: Failed to decode expected command: %s", buf, 0xCu);
            v19 = v28;
            v28 = 0;
            if (v19)
            {
              if (*v19 == 1)
              {
                WTF::fastFree(v19, v15);
              }

              else
              {
                --*v19;
              }
            }
          }
        }

        if (v33 == 1)
        {
          v22 = *v31;
          if (*v31)
          {
            memset(v31, 0, sizeof(v31));
            WTF::fastFree(v22, v15);
          }
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }

    v23 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v7 + 97);
      *v31 = 134217984;
      *&v31[4] = v24;
      _os_log_impl(&dword_19D52D000, v23, OS_LOG_TYPE_DEFAULT, "MockHidConnection: Initialized %zu expected commands for validation", v31, 0xCu);
    }
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v7 + 2, v7);
  v26 = v7[1];
  atomic_fetch_add(v26, 1u);
  result = *(this + 30);
  *(this + 30) = v26;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);
    result = WTF::fastFree(result, v25);
  }

  *a3 = v7;
  return result;
}

void WebKit::MockHidService::validateExpectedCommandsCompleted(WebKit::MockHidService *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(this + 30);
  if (v1 && (v2 = *(v1 + 8)) != 0)
  {
    ++*(v2 + 16);
    v3 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "MockHidService: Found active connection, calling validation", buf, 2u);
    }

    if (*(v2 + 216) == 1 && *(v2 + 184) == 1 && (v4 = *(v2 + 392), v5 = *(v2 + 388), v4 < v5))
    {
      v7 = 16 * v4;
      do
      {
        v8 = qword_1ED641530;
        if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
        {
          WTF::base64EncodeToString();
          WTF::String::utf8();
          if (v14)
          {
            v9 = v14 + 16;
          }

          else
          {
            v9 = 0;
          }

          *buf = 134218242;
          v16 = v4;
          v17 = 2080;
          v18 = v9;
          _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "MockHidConnection: Missing expected command %zu: %s", buf, 0x16u);
          v11 = v14;
          v14 = 0;
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

          v12 = v13;
          v13 = 0;
          if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v12, v10);
          }

          v5 = *(v2 + 388);
        }

        ++v4;
        v7 += 16;
      }

      while (v4 < v5);
      __break(0xC471u);
    }

    else if (*(v2 + 16) == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --*(v2 + 16);
    }
  }

  else
  {
    v6 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "MockHidService: No active connection found", buf, 2u);
    }
  }
}

_DWORD *WebKit::WebAuthenticatorCoordinatorProxy::deref(_DWORD *this)
{
  if (this[4] == 1)
  {
    return (*(*this + 24))();
  }

  --this[4];
  return this;
}

void WebKit::MockAuthenticatorManager::~MockAuthenticatorManager(WebKit::MockAuthenticatorManager *this, void *a2)
{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 944), a2);

  WebKit::AuthenticatorManager::~AuthenticatorManager(this);
}

{
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 944), a2);
  WebKit::AuthenticatorManager::~AuthenticatorManager(this);

  bmalloc::api::tzoneFree(v3, v4);
}

void non-virtual thunk toWebKit::MockAuthenticatorManager::~MockAuthenticatorManager(WebKit::MockAuthenticatorManager *this, void *a2)
{
  v2 = (this - 24);
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 920), a2);

  WebKit::AuthenticatorManager::~AuthenticatorManager(v2);
}

{
  v2 = (this - 24);
  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 920), a2);
  WebKit::AuthenticatorManager::~AuthenticatorManager(v2);

  bmalloc::api::tzoneFree(v3, v4);
}

void WebKit::MockHidConnection::~MockHidConnection(WebKit::MockHidConnection *this, void *a2)
{
  WebKit::MockHidConnection::~MockHidConnection(this, a2);

  WTF::fastFree(v2, v3);
}

{
  WTF::Vector<WebCore::PlatformTimeRanges,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 376, a2);
  v4 = *(this + 45);
  if (v4)
  {
    *(this + 45) = 0;
    *(this + 92) = 0;
    WTF::fastFree(v4, v3);
  }

  if (*(this + 336) == 1)
  {
    WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque((this + 296));
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 96), v3);

  WebKit::HidConnection::~HidConnection(this);
}

void WebKit::MockHidService::~MockHidService(WebKit::MockHidService *this, void *a2)
{
  v3 = *(this + 30);
  *(this + 30) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 48), a2);

  WebKit::HidService::~HidService(this);
}

{
  v3 = *(this + 30);
  *(this + 30) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  WebCore::MockWebAuthenticationConfiguration::~MockWebAuthenticationConfiguration((this + 48), a2);
  WebKit::HidService::~HidService(this);

  bmalloc::api::tzoneFree(v4, v5);
}

uint64_t WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(uint64_t a1, WTF::StringImpl *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = a1;
    do
    {
      if (*v4 != -1)
      {
        v5 = *(v4 + 16);
        *(v4 + 16) = 0;
        if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v5, a2);
        }

        v6 = *(v4 + 8);
        *(v4 + 8) = 0;
        if (v6)
        {
          CFRelease(*(v6 + 8));
        }

        v7 = *v4;
        *v4 = 0;
        if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v7, a2);
        }
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

uint64_t WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::deallocateTable(uint64_t a1, void *a2)
{
  v3 = *(a1 - 4);
  if (v3)
  {
    v4 = (a1 + 8);
    do
    {
      if (*(v4 - 1) != -1)
      {
        v5 = *v4;
        *v4 = 0;
        if (v5)
        {
          if (v5[2] == 1)
          {
            (*(*v5 + 8))(v5, a2);
          }

          else
          {
            --v5[2];
          }
        }
      }

      v4 += 2;
      --v3;
    }

    while (v3);
  }

  return WTF::fastFree((a1 - 16), a2);
}

void std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::AuthenticationExtensionsClientInputs,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) != *(a2 + 144))
  {
    if (*(a1 + 144))
    {
      if (*(a1 + 136) == 1)
      {
        WebCore::AuthenticationExtensionsClientInputs::PRFInputs::~PRFInputs((a1 + 64));
      }

      if (*(a1 + 56) == 1)
      {
        if (*(a1 + 48) == 1)
        {
          v5 = *(a1 + 40);
          if (v5 != 255)
          {
            v6 = *(a1 + 32);
            *(a1 + 32) = 0;
            if (v5)
            {
              if (v6)
              {
                WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
              }
            }

            else if (v6)
            {
              if (*v6 == 1)
              {
                JSC::ArrayBufferView::operator delete();
              }

              else
              {
                --*v6;
              }
            }
          }

          *(a1 + 40) = -1;
        }

        v10 = *(a1 + 16);
        *(a1 + 16) = 0;
        if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v10, a2);
        }
      }

      v11 = *a1;
      *a1 = 0;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, a2);
      }

      *(a1 + 144) = 0;
    }

    else
    {

      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs const&>(a1, a2);
    }

    return;
  }

  if (!*(a1 + 144))
  {
    return;
  }

  WTF::String::operator=(a1, a2);
  *(a1 + 8) = *(a2 + 8);
  if (*(a1 + 56) == *(a2 + 56))
  {
    if (*(a1 + 56))
    {
      WTF::String::operator=((a1 + 16), (a2 + 16));
      *(a1 + 24) = *(a2 + 24);
      std::__optional_storage_base<WebCore::BufferSource,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BufferSource,false> const&>(a1 + 32, a2 + 32);
    }
  }

  else if (*(a1 + 56))
  {
    if (*(a1 + 48) == 1)
    {
      v7 = *(a1 + 40);
      if (v7 != 255)
      {
        v8 = *(a1 + 32);
        *(a1 + 32) = 0;
        if (v7)
        {
          if (v8)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v8);
          }
        }

        else if (v8)
        {
          if (*v8 == 1)
          {
            JSC::ArrayBufferView::operator delete();
          }

          else
          {
            --*v8;
          }
        }
      }

      *(a1 + 40) = -1;
    }

    v12 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v4);
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v9 = *(a2 + 16);
    if (v9)
    {
      atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed);
    }

    *(a1 + 16) = v9;
    *(a1 + 24) = *(a2 + 24);
    std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100]((a1 + 32), a2 + 32);
    *(a1 + 56) = 1;
  }

  v13 = (a1 + 64);
  if (*(a1 + 136) != *(a2 + 136))
  {
    if (*(a1 + 136))
    {
      WebCore::AuthenticationExtensionsClientInputs::PRFInputs::~PRFInputs((a1 + 64));
      *(a1 + 136) = 0;
    }

    else
    {

      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs const&>((a1 + 64), a2 + 64);
    }

    return;
  }

  if (!*(a1 + 136))
  {
    return;
  }

  if (*(a1 + 104) == *(a2 + 104))
  {
    if (!*(a1 + 104))
    {
      goto LABEL_88;
    }

    v14 = *(a1 + 72);
    v15 = *(a2 + 72);
    if (v14 == 255)
    {
      if (v15 == 255)
      {
        goto LABEL_87;
      }
    }

    else if (v15 == 255)
    {
      v18 = *v13;
      *v13 = 0;
      if (v14)
      {
        if (v18)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v18);
        }
      }

      else if (v18)
      {
        if (*v18 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v18;
        }
      }

      *(a1 + 72) = -1;
      goto LABEL_87;
    }

    _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v15);
LABEL_87:
    std::__optional_storage_base<WebCore::BufferSource,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BufferSource,false> const&>(a1 + 80, a2 + 80);
    goto LABEL_88;
  }

  if (*(a1 + 104))
  {
    if (*(a1 + 96) == 1)
    {
      v16 = *(a1 + 88);
      if (v16 != 255)
      {
        v17 = *(a1 + 80);
        *(a1 + 80) = 0;
        if (v16)
        {
          if (v17)
          {
            WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v17);
          }
        }

        else if (v17)
        {
          if (*v17 == 1)
          {
            JSC::ArrayBufferView::operator delete();
          }

          else
          {
            --*v17;
          }
        }
      }

      *(a1 + 88) = -1;
    }

    v19 = *(a1 + 72);
    if (v19 != 255)
    {
      v20 = *v13;
      *v13 = 0;
      if (v19)
      {
        if (v20)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v20);
        }
      }

      else if (v20)
      {
        if (*v20 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v20;
        }
      }
    }

    *(a1 + 72) = -1;
    *(a1 + 104) = 0;
  }

  else
  {
    std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues const&>((a1 + 64), a2 + 64);
  }

LABEL_88:
  if (*(a1 + 128) == *(a2 + 128))
  {
    if (a2 != a1 && *(a1 + 128))
    {
      v21 = *(a2 + 124);
      if (*(a1 + 124) <= v21)
      {
        if (v21 > *(a1 + 120))
        {
          WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity((a1 + 112), 0);
          WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1 + 112, *(a2 + 124));
        }
      }

      else
      {
        WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink((a1 + 112), v21);
      }

      v23 = *(a2 + 112);
      v24 = *(a1 + 124);
      v25 = *(a1 + 112);
      if (v24)
      {
        v26 = 0;
        v27 = v23 + 48 * v24;
        while (1)
        {
          v28 = v23 + v26;
          WTF::String::operator=((v25 + v26), (v23 + v26));
          v29 = (v25 + v26 + 8);
          v30 = *(v25 + v26 + 16);
          v31 = *(v23 + v26 + 16);
          if (v30 == 255)
          {
            if (v31 == 255)
            {
              goto LABEL_112;
            }
          }

          else if (v31 == 255)
          {
            v32 = *v29;
            *v29 = 0;
            if (v30)
            {
              if (v32)
              {
                WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v32);
              }
            }

            else if (v32)
            {
              if (*v32 == 1)
              {
                JSC::ArrayBufferView::operator delete();
              }

              else
              {
                --*v32;
              }
            }

            *(v25 + v26 + 16) = -1;
            goto LABEL_112;
          }

          _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v31);
LABEL_112:
          std::__optional_storage_base<WebCore::BufferSource,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BufferSource,false> const&>(v25 + v26 + 24, v28 + 24);
          v26 += 48;
          if (v28 + 48 == v27)
          {
            v23 = *(a2 + 112);
            v33 = *(a1 + 124);
            v25 = *(a1 + 112);
            goto LABEL_116;
          }
        }
      }

      v33 = 0;
LABEL_116:
      WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::uninitializedCopy((v23 + 48 * v33), (v23 + 48 * *(a2 + 124)), v25 + 48 * v33);
      *(a1 + 124) = *(a2 + 124);
    }
  }

  else
  {
    v22 = a1 + 112;
    if (*(a1 + 128))
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22);
      *(a1 + 128) = 0;
    }

    else
    {
      WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v22, (a2 + 112));
      *(a1 + 128) = 1;
    }
  }
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs const&>(_BYTE *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    }

    *result = v4;
    *(result + 4) = *(a2 + 8);
    result[16] = 0;
    result[56] = 0;
    if (*(a2 + 56) == 1)
    {
      v5 = *(a2 + 16);
      if (v5)
      {
        atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      }

      *(result + 2) = v5;
      *(result + 12) = *(a2 + 24);
      std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](result + 32, a2 + 32);
      v3[56] = 1;
    }

    v3[64] = 0;
    result = v3 + 64;
    v3[136] = 0;
    if (*(a2 + 136) == 1)
    {
      result = std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs const&>(result, a2 + 64);
    }

    v3[144] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::__optional_storage_base<WebCore::BufferSource,false>::__assign_from[abi:sn200100]<std::__optional_copy_assign_base<WebCore::BufferSource,false> const&>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {
      v3 = *(a1 + 8);
      v4 = *(a2 + 8);
      if (v3 == 255)
      {
        if (v4 == 255)
        {
          return;
        }

LABEL_20:
        _ZN5mpark6detail10visitation3alt12visit_alt_atIZNS0_10assignmentINS0_6traitsIJN3WTF6RefPtrIN3JSC15ArrayBufferViewENS6_12RawPtrTraitsIS9_EENS6_21DefaultRefDerefTraitsIS9_EEEENS7_INS8_11ArrayBufferENSA_ISF_EENSC_ISF_EEEEEEEE14generic_assignIRKNS0_15copy_assignmentISJ_LNS0_5TraitE1EEEEEvOT_EUlRSR_OT0_E_JRSK_SQ_EEEDcmSS_DpOT0_(v4);
        return;
      }

      if (v4 != 255)
      {
        goto LABEL_20;
      }

      v10 = *a1;
      *a1 = 0;
      if (v3)
      {
        if (v10)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v10);
        }
      }

      else if (v10)
      {
        if (*v10 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v10;
        }
      }

      *(a1 + 8) = -1;
    }
  }

  else if (*(a1 + 16))
  {
    v5 = *(a1 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = 0;
      if (v5)
      {
        if (v6)
        {
          WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v6);
        }
      }

      else if (v6)
      {
        if (*v6 == 1)
        {
          JSC::ArrayBufferView::operator delete();
        }

        else
        {
          --*v6;
        }
      }
    }

    *(a1 + 8) = -1;
    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = -1;
    v7 = *(a2 + 8);
    if (v7 != 255)
    {
      v8 = *a2;
      if (*a2)
      {
        if (*(a2 + 8))
        {
          v9 = 2;
        }

        else
        {
          v9 = 1;
        }

        *v8 += v9;
      }

      *a1 = v8;
      *(a1 + 8) = v7;
    }

    *(a1 + 16) = 1;
  }
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFInputs,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFInputs const&>(_BYTE *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    *result = 0;
    result[40] = 0;
    if (*(a2 + 40) == 1)
    {
      std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues const&>(result, a2);
    }

    v3[48] = 0;
    result = v3 + 48;
    v3[64] = 0;
    if (*(a2 + 64) == 1)
    {
      result = WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(result, (a2 + 48));
      v3[64] = 1;
    }

    v3[72] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *std::__optional_storage_base<WebCore::AuthenticationExtensionsClientInputs::PRFValues,false>::__construct[abi:sn200100]<WebCore::AuthenticationExtensionsClientInputs::PRFValues const&>(_BYTE *result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    *result = 0;
    result[8] = -1;
    v3 = *(a2 + 8);
    if (v3 != 255)
    {
      v4 = *a2;
      if (*a2)
      {
        if (*(a2 + 8))
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        *v4 += v5;
      }

      *result = v4;
      result[8] = v3;
    }

    result = std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](result + 16, a2 + 16);
    v2[40] = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *WTF::Vector<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(uint64_t *result, unint64_t a2)
{
  v2 = *(result + 3);
  if (v2 < a2)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v4 = result;
    if (v2 != a2)
    {
      result = (*result + 48 * a2);
      v5 = 48 * v2 - 48 * a2;
      do
      {
        result = WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>::~KeyValuePair(result) + 6;
        v5 -= 48;
      }

      while (v5);
    }

    *(v4 + 3) = v3;
  }

  return result;
}

_BYTE *WTF::VectorTypeOperations<WTF::KeyValuePair<WTF::String,WebCore::AuthenticationExtensionsClientInputs::PRFValues>>::uninitializedCopy(_BYTE *result, _BYTE *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    result = (a3 + 24);
    v5 = (v4 + 24);
    do
    {
      v7 = v5 - 24;
      v6 = *(v5 - 24);
      if (v6)
      {
        atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }

      *(result - 3) = v6;
      *(result - 16) = 0;
      *(result - 8) = -1;
      v8 = *(v5 - 8);
      if (v8 != 255)
      {
        v9 = *(v5 - 16);
        if (v9)
        {
          if (*(v5 - 8))
          {
            v10 = 2;
          }

          else
          {
            v10 = 1;
          }

          *v9 += v10;
        }

        *(result - 2) = v9;
        *(result - 8) = v8;
      }

      result = std::__optional_copy_base<WebCore::BufferSource,false>::__optional_copy_base[abi:sn200100](result, v5) + 48;
      v5 += 48;
    }

    while ((v7 + 48) != a2);
  }

  return result;
}

uint64_t WebKit::WebAuthenticationRequestData::WebAuthenticationRequestData(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1, a2);
  *(a1 + 16) = 0;
  *(a1 + 304) = -1;
  mpark::detail::destructor<mpark::detail::traits<WebCore::PublicKeyCredentialCreationOptions,WebCore::PublicKeyCredentialRequestOptions>,(mpark::detail::Trait)1>::destroy(a1 + 16);
  if (*(a2 + 304) != 255)
  {
    if (*(a2 + 304))
    {
      *(a1 + 16) = 0;
      *(a1 + 24) = -1;
      v4 = *(a2 + 24);
      if (v4 != 255)
      {
        v5 = *(a2 + 16);
        *(a2 + 16) = 0;
        *(a1 + 16) = v5;
        *(a1 + 24) = v4;
      }

      *(a1 + 32) = *(a2 + 32);
      v6 = *(a2 + 40);
      *(a2 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 40) = v6;
      *(a1 + 56) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 48, (a2 + 48));
      *(a1 + 64) = *(a2 + 64);
      std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]((a1 + 72), a2 + 72);
      *(a1 + 224) = *(a2 + 224);
    }

    else
    {
      v7 = *(a2 + 16);
      *(a2 + 16) = 0;
      *(a1 + 16) = v7;
      v8 = *(a2 + 24);
      *(a2 + 24) = 0;
      *(a1 + 24) = v8;
      v9 = *(a2 + 32);
      *(a2 + 32) = 0;
      *(a1 + 32) = v9;
      v10 = *(a2 + 40);
      *(a2 + 40) = 0;
      *(a1 + 40) = v10;
      v11 = *(a2 + 48);
      *(a2 + 48) = 0;
      *(a1 + 48) = v11;
      *(a1 + 56) = 0;
      *(a1 + 64) = -1;
      v12 = *(a2 + 64);
      if (v12 != 255)
      {
        v13 = *(a2 + 56);
        *(a2 + 56) = 0;
        *(a1 + 56) = v13;
        *(a1 + 64) = v12;
      }

      v14 = *(a2 + 72);
      *(a2 + 72) = 0;
      *(a1 + 72) = v14;
      *(a1 + 80) = 0;
      *(a1 + 88) = -1;
      v15 = *(a2 + 88);
      if (v15 != 255)
      {
        v16 = *(a2 + 80);
        *(a2 + 80) = 0;
        *(a1 + 80) = v16;
        *(a1 + 88) = v15;
      }

      *(a1 + 104) = 0;
      *(a1 + 96) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 96, (a2 + 96));
      v17 = *(a2 + 112);
      *(a1 + 120) = 0;
      *(a1 + 112) = v17;
      *(a1 + 128) = 0;
      WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 120, (a2 + 120));
      v18 = *(a2 + 136);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 136) = v18;
      std::optional<WebCore::AuthenticationExtensionsClientInputs>::optional[abi:sn200100]((a1 + 152), a2 + 152);
    }

    *(a1 + 304) = *(a2 + 304);
  }

  v19 = *(a2 + 312);
  *(a2 + 312) = 0;
  *(a1 + 312) = v19;
  *(a1 + 320) = *(a2 + 320);
  v20 = *(a2 + 328);
  *(a2 + 328) = 0;
  *(a1 + 328) = v20;
  v21 = *(a2 + 336);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 336) = v21;
  *(a1 + 368) = 0;
  *(a1 + 720) = 0;
  if (*(a2 + 720) == 1)
  {
    *(a1 + 368) = *(a2 + 368);
    WTF::URL::URL(a1 + 376, (a2 + 376));
    WTF::URL::URL(a1 + 416, (a2 + 416));
    *(a1 + 456) = *(a2 + 456);
    v22 = *(a2 + 464);
    *(a2 + 464) = 0;
    *(a1 + 472) = 0;
    *(a1 + 480) = 0;
    *(a1 + 464) = v22;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 472, (a2 + 472));
    *(a1 + 488) = 0;
    *(a1 + 496) = 0;
    WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 488, (a2 + 488));
    *(a1 + 504) = 0;
    *(a1 + 512) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(a1 + 504, (a2 + 504));
    v23 = *(a2 + 520);
    *(a1 + 524) = *(a2 + 524);
    *(a1 + 520) = v23;
    v24 = *(a2 + 528);
    *(a2 + 528) = 0;
    *(a1 + 528) = v24;
    v25 = *(a2 + 536);
    *(a2 + 536) = 0;
    *(a1 + 536) = v25;
    v26 = *(a2 + 544);
    *(a2 + 544) = 0;
    *(a1 + 544) = v26;
    v27 = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 552) = v27;
    v28 = *(a2 + 568);
    *(a2 + 568) = 0;
    *(a1 + 568) = v28;
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 576), a2 + 576);
    v29 = *(a2 + 608);
    *(a2 + 608) = 0;
    *(a1 + 608) = v29;
    v30 = *(a2 + 616);
    v31 = *(a2 + 632);
    v32 = *(a2 + 648);
    *(a1 + 664) = *(a2 + 664);
    *(a1 + 632) = v31;
    *(a1 + 648) = v32;
    *(a1 + 616) = v30;
    v33 = *(a2 + 672);
    *(a2 + 672) = 0;
    *(a1 + 672) = v33;
    v34 = *(a2 + 680);
    v35 = *(a2 + 696);
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 680) = v34;
    *(a1 + 696) = v35;
    *(a1 + 720) = 1;
  }

  v36 = *(a2 + 736);
  *(a2 + 736) = 0;
  *(a1 + 736) = v36;
  v37 = *(a2 + 744);
  *(a2 + 744) = 0;
  *(a1 + 744) = v37;
  *(a1 + 752) = *(a2 + 752);
  *(a1 + 760) = 0;
  *(a1 + 792) = 0;
  if (*(a2 + 792) == 1)
  {
    mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((a1 + 760), a2 + 760);
    *(a1 + 792) = 1;
  }

  return a1;
}