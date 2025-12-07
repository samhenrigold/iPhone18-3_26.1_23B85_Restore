uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetTimeToLiveUserInteraction,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F0408;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setTimeToLiveUserInteraction(a3, v13[0], &v12, *&v13[1]);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetTopFrameUniqueRedirectTo,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0430;
    v12[1] = v9;
    v12[2] = a1;
    v14 = v12;
    WebKit::NetworkProcess::setTopFrameUniqueRedirectTo(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetTopFrameUniqueRedirectFrom,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,WebCore::RegistrableDomain>>(&v15, a2);
  if (v18 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0458;
    v12[1] = v9;
    v12[2] = a1;
    v14 = v12;
    WebKit::NetworkProcess::setTopFrameUniqueRedirectFrom(a3, v15, &v16, &v17, &v14);
    result = v14;
    v14 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v18)
    {
LABEL_11:
      v13 = v17;
      v17 = 0;
      if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v8);
      }

      result = v16;
      v16 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetCacheMaxAgeCapForPrevalentResources,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0480;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetCacheMaxAgeCapForPrevalentResources(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::DidCommitCrossSiteLoadWithDataTransfer,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WTF::OptionSet<WebCore::CrossSiteNavigationDataTransferFlag>,WebCore::RegistrableDomain &&::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::OptionSet<WebCore::CrossSiteNavigationDataTransferFlag><WebCore::PageIdentifierType,WebCore::RegistrableDomain &&::ObjectIdentifierMainThreadAccessTraits,unsigned long long>,WebKit::DidFilterKnownLinkDecoration)>(IPC::Decoder *a1, uint64_t *a2)
{
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if ((v8 & 1) == 0)
  {
    goto LABEL_29;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v44);
  if ((v45 & 1) == 0)
  {
    v25 = *a1;
    v26 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    goto LABEL_29;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v46);
  if (v47)
  {
    v10 = *(a1 + 1);
    v11 = *(a1 + 2);
    v12 = *a1;
    if (v10 <= &v11[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v33 = *(a1 + 3);
      if (v33)
      {
        if (v10)
        {
          (*(*v33 + 16))(v33);
          v10 = *(a1 + 1);
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v11 + 1;
      if (v11)
      {
        v13 = *v11;
        if ((v13 & 0xFFFFFFF9) == 0)
        {
          v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
          if (v12)
          {
            v2 = v14;
            v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
            if (v12)
            {
              v3 = v15;
              v16 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a1);
              if (v16 > 0xFFu)
              {
                v4 = v16;
                v23 = v44;
                v44 = 0;
                v36 = v9;
                v37 = v23;
                v24 = v46;
                v46 = 0;
                v38 = v24;
                v39 = v13;
                v40 = v2;
                v41 = v3;
                v17 = 1;
                v42 = v16;
                goto LABEL_11;
              }
            }
          }

LABEL_10:
          LOBYTE(v13) = 0;
          v17 = 0;
          LOBYTE(v36) = 0;
LABEL_11:
          v43 = v17;
          v18 = v46;
          if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v18, v12);
          }

          goto LABEL_14;
        }

        goto LABEL_47;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v34 = *(a1 + 3);
    if (v34)
    {
      if (v10)
      {
        (*(*v34 + 16))(v34);
        v12 = *a1;
        v10 = *(a1 + 1);
        goto LABEL_47;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
LABEL_47:
    *a1 = 0;
    *(a1 + 1) = 0;
    v35 = *(a1 + 3);
    if (v35 && v10)
    {
      (*(*v35 + 16))(v35, v12);
    }

    goto LABEL_10;
  }

  v12 = *a1;
  v31 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v32 = *(a1 + 3);
  if (v32 && v31)
  {
    (*(*v32 + 16))(v32, v12);
  }

  LOBYTE(v13) = 0;
  v17 = 0;
  LOBYTE(v36) = 0;
  v43 = 0;
LABEL_14:
  v19 = v44;
  if (v44 && atomic_fetch_add_explicit(v44, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v19, v12);
    if (v17)
    {
LABEL_17:
      result = WebKit::NetworkProcess::didCommitCrossSiteLoadWithDataTransfer(a2, v36, &v37, &v38, v13, v2, v3, v4 & 1);
      if (v43)
      {
        v22 = v38;
        v38 = 0;
        if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v22, v21);
        }

        result = v37;
        v37 = 0;
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
  }

  else if (v17)
  {
    goto LABEL_17;
  }

LABEL_29:
  v28 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    v30 = *(*result + 16);

    return v30();
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetCrossSiteLoadWithLinkDecorationForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WebCore::RegistrableDomain &,WebKit::DidFilterKnownLinkDecoration,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_32;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v37);
  if ((v38 & 1) == 0)
  {
    v24 = *a2;
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v26 = *(a2 + 3);
    if (v26 && v25)
    {
      (*(*v26 + 16))(v26, v24);
    }

    goto LABEL_32;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v39);
  if (v40)
  {
    v10 = IPC::Decoder::decode<WebCore::GraphicsContextGLSurfaceBuffer>(a2);
    if (v10 >= 0x100u)
    {
      v3 = v10;
      v14 = v37;
      v37 = 0;
      v32 = v9;
      v33 = v14;
      v34 = v39;
      v35 = v10;
      v13 = 1;
      v36 = 1;
    }

    else
    {
      LOBYTE(v32) = 0;
      v12 = v39;
      v36 = 0;
      if (v39 && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }

      v13 = 0;
    }
  }

  else
  {
    v11 = *a2;
    v30 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31 && v30)
    {
      (*(*v31 + 16))(v31, v11);
    }

    v13 = 0;
    LOBYTE(v32) = 0;
    v36 = 0;
  }

  v15 = v37;
  if (v37 && atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v11);
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_32:
    v27 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v28 = v27 == 0;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      v29 = *(*result + 16);

      return v29();
    }

    return result;
  }

  if ((v13 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_13:
  v16 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v17 & 1) == 0)
  {
    goto LABEL_22;
  }

  v18 = v16;
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
      goto LABEL_19;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_19:
  v21 = WTF::fastMalloc(v19, 0x18);
  *v21 = &unk_1F10F04A8;
  v21[1] = v18;
  v21[2] = a1;
  v39 = v21;
  WebKit::NetworkProcess::setCrossSiteLoadWithLinkDecorationForTesting(a3, v32, &v33, &v34, v3 & 1, &v39);
  result = v39;
  v39 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v36)
  {
LABEL_22:
    v23 = v34;
    v34 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v17);
    }

    result = v33;
    v33 = 0;
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

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetCrossSiteLoadsWithLinkDecorationForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F04D0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetCrossSiteLoadsWithLinkDecorationForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

IPC::Decoder *IPC::handleMessageAsync<Messages::NetworkProcess::GrantStorageAccessForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WebCore::RegistrableDomain&&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0 || (v8 = v6, IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v4, &v26), v28 != 1))
  {
    LOBYTE(v22) = 0;
    v25 = 0;
    goto LABEL_26;
  }

  IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(v4, &v29);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

  v22 = v8;
  v23[0] = v26;
  v10 = v27;
  v26 = 0;
  v27 = 0;
  v23[1] = v10;
  v24 = v29;
  v25 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v9);
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v4 = result;
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v14 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_12;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
    v15 = WTF::fastMalloc(v13, 0x18);
    *v15 = &unk_1F10F04F8;
    v15[1] = v4;
    v15[2] = a1;
    v26 = v15;
    if (v25)
    {
      WebKit::NetworkProcess::grantStorageAccessForTesting(a3, v22, v23, &v24, &v26);
      result = v26;
      v26 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v17 = *v4;
    v18 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    v19 = *(v4 + 3);
    if (v19 && v18)
    {
      (*(*v19 + 16))(v19, v17);
    }

    LOBYTE(v22) = 0;
    v25 = 0;
    if (v28)
    {
      WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v26, v17);
    }

LABEL_26:
    v12 = *v4;
    v20 = *(v4 + 1);
    *v4 = 0;
    *(v4 + 1) = 0;
    result = *(v4 + 3);
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      result = (*(*result + 16))(result, v12);
      if (v25)
      {
        continue;
      }
    }

    break;
  }

  if (v25 == 1)
  {
    v16 = v24;
    v24 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v12);
      }
    }

    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v23, v12);
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::DeleteCookiesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t *a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain,BOOL>>(&v16, a2);
  if (v19 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
      v9 = v7;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v12 = WTF::fastMalloc(v10, 0x18);
      *v12 = &unk_1F10F0520;
      v12[1] = v9;
      v12[2] = a1;
      v15 = v12;
      v20 = v17;
      WebKit::NetworkProcess::deleteCookiesForTesting(a3, v16, &v20, v18, &v15);
      v14 = v20;
      v20 = 0;
      if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v13);
      }

      result = v15;
      v15 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }

    else
    {
      result = v17;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {

        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::HasIsolatedSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(BOOL)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0548;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::hasIsolatedSession(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::CloseITPDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0570;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::closeITPDatabase(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessageAsync<Messages::NetworkProcess::SetAppBoundDomainsForResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0598;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::setAppBoundDomainsForResourceLoadStatistics(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      if (v15)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v8);
      }
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessageAsync<Messages::NetworkProcess::SetManagedDomainsForResourceLoadStatistics,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F05C0;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::setManagedDomainsForResourceLoadStatistics(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 1))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      if (v15)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v15, v8);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldDowngradeReferrerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<BOOL>>(a2);
  if ((result & 0x100) != 0)
  {
    v7 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v8)
    {
      v9 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v12 = WTF::fastMalloc(v10, 0x18);
      *v12 = &unk_1F10F05E8;
      v12[1] = v9;
      v12[2] = a1;
      v14 = v12;
      WebKit::NetworkProcess::setShouldDowngradeReferrerForTesting(a3, v7 & 1, &v14, v13);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetThirdPartyCookieBlockingMode,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ThirdPartyCookieBlockingMode,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WebCore::ThirdPartyCookieBlockingMode>(a2), (v9 & 0x100) != 0))
  {
    v14 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
      while (1)
      {
        v17 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v18 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(v17, 0x18);
      *v19 = &unk_1F10F0610;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::NetworkProcess::setThirdPartyCookieBlockingMode(a3, v8, v14, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SameSiteStrictEnforcementEnabled,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WebKit::AllowsCellularAccess>(a2), (v9 & 0x100) != 0))
  {
    v14 = v9;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
      while (1)
      {
        v17 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v18 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(v17, 0x18);
      *v19 = &unk_1F10F0638;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::NetworkProcess::setShouldEnbleSameSiteStrictEnforcementForTesting(a3, v8, v14 & 1, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetFirstPartyWebsiteDataRemovalModeForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::FirstPartyWebsiteDataRemovalMode,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) != 0 && (v8 = v6, PartyWebsiteDataRemoval = IPC::Decoder::decode<WebCore::FirstPartyWebsiteDataRemovalMode>(a2), (PartyWebsiteDataRemoval & 0x100) != 0))
  {
    v14 = PartyWebsiteDataRemoval;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v15)
    {
      v16 = result;
      while (1)
      {
        v17 = *a1;
        if ((*a1 & 1) == 0)
        {
          break;
        }

        v18 = *a1;
        atomic_compare_exchange_strong_explicit(a1, &v18, v17 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v17)
        {
          goto LABEL_16;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_16:
      v19 = WTF::fastMalloc(v17, 0x18);
      *v19 = &unk_1F10F0660;
      v19[1] = v16;
      v19[2] = a1;
      v20 = v19;
      WebKit::NetworkProcess::setFirstPartyWebsiteDataRemovalModeForTesting(a3, v8, v14, &v20);
      result = v20;
      v20 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  else
  {
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = *(*result + 16);

      return v13();
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetToSameSiteStrictCookiesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0688;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::setToSameSiteStrictCookiesForTesting(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7)
  {
    v8 = v6;
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v30);
    if ((v31 & 1) == 0)
    {
      goto LABEL_32;
    }

    while (1)
    {
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a2, &v32);
      if ((v33 & 1) == 0)
      {
        v17 = *a2;
        v18 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v19 = *(a2 + 3);
        if (v19 && v18)
        {
          (*(*v19 + 16))(v19, v17);
        }

        if (v31)
        {
          v20 = v30;
          v30 = 0;
          if (v20)
          {
            if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v20, v17);
            }
          }
        }

        goto LABEL_26;
      }

      if (v31)
      {
        break;
      }

      __break(1u);
LABEL_32:
      v24 = *a2;
      v25 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v26 = *(a2 + 3);
      if (v26)
      {
        if (v25)
        {
          (*(*v26 + 16))(v26, v24);
          if (v31)
          {
            continue;
          }
        }
      }

      goto LABEL_26;
    }

    v27 = v30;
    v28 = v32;
    v29 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_14;
    }

    v11 = v9;
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
        goto LABEL_11;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_11:
    v14 = WTF::fastMalloc(v12, 0x18);
    *v14 = &unk_1F10F06B0;
    v14[1] = v11;
    v14[2] = a1;
    v32 = v14;
    WebKit::NetworkProcess::setFirstPartyHostCNAMEDomainForTesting(a3, v8, &v27, &v28, &v32);
    result = v32;
    v32 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v29)
    {
LABEL_14:
      v16 = v28;
      v28 = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v10);
      }

      result = v27;
      v27 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  else
  {
LABEL_26:
    v21 = *a2;
    v22 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v23 = v22 == 0;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      return (*(*result + 16))(result, v21);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::RegistrableDomain &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WebCore::RegistrableDomain>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F06D8;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::setThirdPartyCNAMEDomainForTesting(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsSecure,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsSecure(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsBypassingContentSecurityPolicy,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsBypassingContentSecurityPolicy(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::RegisterURLSchemeAsLocal,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String const&)const>(IPC::Decoder *a1, WebKit::NetworkProcess *a2)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a1, &v9);
  if (v10 & 1) != 0 || ((v6 = *a1, v7 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (result = *(a1 + 3)) != 0) ? (v8 = v7 == 0) : (v8 = 1), !v8 && (result = (*(*result + 16))(result, v6), (v10)))
  {
    result = WebKit::NetworkProcess::registerURLSchemeAsLocal(a2, &v9);
    if (v10)
    {
      result = v9;
      v9 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v5);
        }
      }
    }
  }

  return result;
}

uint64_t *IPC::handleMessageAsync<Messages::NetworkProcess::SyncLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(v8, 0x18);
    *v10 = &unk_1F10F0700;
    v10[1] = v7;
    v10[2] = a1;
    v12 = v10;
    WebKit::NetworkProcess::syncLocalStorage(a3, &v12, v11);
    result = v12;
    v12 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::StoreServiceWorkerRegistrations,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0728;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::storeServiceWorkerRegistrations(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::StorePrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::PrivateClickMeasurement &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::decode(a1, v58);
    if (v86 & 1) != 0 || (v19 = *a1, v20 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v21 = *(a1 + 3)) != 0) && v20 && ((*(*v21 + 16))(v21, v19), (v86))
    {
      v28 = v6;
      v29[0] = v58[0];
      v8 = v59;
      v59 = 0uLL;
      v30 = v8;
      v31[0] = v60[0];
      *(v31 + 9) = *(v60 + 9);
      LOBYTE(v32) = 0;
      v46 = 0;
      if (v75 == 1)
      {
        v32 = v61;
        v33 = v62;
        LOBYTE(v34) = 0;
        v35 = 0;
        if (v64 == 1)
        {
          v26 = v63;
          v63 = 0;
          v34 = v26;
          v35 = 1;
        }

        LOBYTE(v36) = 0;
        v37 = 0;
        if (v66 == 1)
        {
          v9 = v65;
          v65 = 0;
          v36 = v9;
          v37 = 1;
        }

        LOBYTE(v38) = 0;
        v39 = 0;
        if (v68 == 1)
        {
          v27 = v67;
          v67 = 0;
          v38 = v27;
          v39 = 1;
        }

        LOBYTE(v40) = 0;
        v42 = 0;
        if (v71 == 1)
        {
          v10 = v70;
          v40 = v69;
          v69 = 0u;
          v70 = 0u;
          v41 = v10;
          v42 = v71;
        }

        LOBYTE(v43) = 0;
        v45 = 0;
        if (v74 == 1)
        {
          v11 = v72;
          v72 = 0uLL;
          v43 = v11;
          v12 = v73;
          v73 = 0;
          v44 = v12;
          v45 = 1;
        }

        v46 = 1;
      }

      v47 = v76;
      v48 = v77;
      LOBYTE(v49) = 0;
      v50 = 0;
      if (v79 == 1)
      {
        v13 = v78;
        v78 = 0;
        v49 = v13;
        v50 = 1;
      }

      v14 = v81;
      v51 = v80;
      v80 = 0u;
      v81 = 0u;
      v52 = v14;
      LOBYTE(v53) = 0;
      v55 = 0;
      if (v84 == 1)
      {
        v15 = v82;
        v82 = 0uLL;
        v53 = v15;
        v16 = v83;
        v83 = 0;
        v54 = v16;
        v55 = 1;
      }

      v17 = v85;
      v85 = 0;
      v56 = v17;
      v57 = 1;
      WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v58, v7);
      goto LABEL_20;
    }
  }

  LOBYTE(v28) = 0;
  v57 = 0;
  v22 = *a1;
  v23 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v24 = *(a1 + 3);
  if (v24)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    (*(*v24 + 16))(v24, v22);
    if (v57)
    {
LABEL_20:
      WebKit::NetworkProcess::storePrivateClickMeasurement(a2, v28, v29);
      if (v57)
      {
        WebCore::PrivateClickMeasurement::~PrivateClickMeasurement(v29, v18);
      }
    }
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::DumpPrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::String)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0750;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::dumpPrivateClickMeasurement(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearPrivateClickMeasurement,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0778;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::clearPrivateClickMeasurement(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementOverrideTimerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F07A0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setPrivateClickMeasurementOverrideTimerForTesting(a3, v13, v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::MarkAttributedPrivateClickMeasurementsAsExpiredForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F07C8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::markAttributedPrivateClickMeasurementsAsExpiredForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementEphemeralMeasurementForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F07F0;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setPrivateClickMeasurementEphemeralMeasurementForTesting(a3, v13, v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t *IPC::handleMessageAsync<Messages::NetworkProcess::SimulatePrivateClickMeasurementSessionRestart,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0818;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::simulatePrivateClickMeasurementSessionRestart(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementTokenPublicKeyURLForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::URL>>(&v15, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F0840;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkProcess::setPrivateClickMeasurementTokenPublicKeyURLForTesting(a3, v15, &v16, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v17 == 1)
  {
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

void IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementTokenSignatureURLForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::URL>>(&v15, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F0868;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkProcess::setPrivateClickMeasurementTokenSignatureURLForTesting(a3, v15, &v16, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v17 == 1)
  {
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementAttributionReportURLsForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::URL &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7)
  {
    v8 = v6;
    IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v37);
    if ((v40 & 1) == 0)
    {
      goto LABEL_28;
    }

    while (1)
    {
      IPC::ArgumentCoder<WTF::URL,void>::decode(a2, &v41);
      if ((v44 & 1) == 0)
      {
        v9 = *a2;
        v27 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        v28 = *(a2 + 3);
        if (!v28)
        {
          break;
        }

        if (!v27)
        {
          break;
        }

        (*(*v28 + 16))(v28, v9);
        if ((v44 & 1) == 0)
        {
          break;
        }
      }

      if (v40)
      {
        v10 = v37;
        v37 = 0;
        v29 = v8;
        v30 = v10;
        v31 = v38;
        v32 = v39;
        LODWORD(v38) = v38 & 0xFFFFFFFE;
        v33 = v41;
        v34 = v42;
        v35 = v43;
        v11 = 1;
        v36 = 1;
        goto LABEL_6;
      }

      __break(1u);
LABEL_28:
      v21 = *a2;
      v22 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v23 = *(a2 + 3);
      if (v23)
      {
        if (v22)
        {
          (*(*v23 + 16))(v23, v21);
          if (v40)
          {
            continue;
          }
        }
      }

      goto LABEL_29;
    }

    v11 = 0;
    LOBYTE(v29) = 0;
    v36 = 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_6:
    v12 = v37;
    v37 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v9);
      if ((v11 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_29;
    }

    v13 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }

    v15 = v13;
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
    *v18 = &unk_1F10F0890;
    v18[1] = v15;
    v18[2] = a1;
    v41 = v18;
    WebKit::NetworkProcess::setPrivateClickMeasurementAttributionReportURLsForTesting(a3, v29, &v30, &v33, &v41);
    result = v41;
    v41 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v36)
    {
LABEL_18:
      v20 = v33;
      v33 = 0;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v14);
      }

      result = v30;
      v30 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v14);
        }
      }
    }
  }

  else
  {
LABEL_29:
    v24 = *a2;
    v25 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v26 = v25 == 0;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      return (*(*result + 16))(result, v24);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::MarkPrivateClickMeasurementsAsExpiredForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F08B8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::markPrivateClickMeasurementsAsExpiredForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPCMFraudPreventionValuesForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WTF::String &,WTF::String &,WTF::String &,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_44;
  }

  v8 = v6;
  IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v44);
  if ((v45 & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v46);
    if ((v47 & 1) == 0)
    {
      v9 = *a2;
      v31 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v32 = *(a2 + 3);
      if (!v32 || !v31 || ((*(*v32 + 16))(v32, v9), (v47 & 1) == 0))
      {
        v12 = 0;
        LOBYTE(v38) = 0;
        v43 = 0;
        goto LABEL_14;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v48);
    if ((v49 & 1) == 0)
    {
      v9 = *a2;
      v33 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v34 = *(a2 + 3);
      if (!v34 || !v33 || ((*(*v34 + 16))(v34, v9), (v49 & 1) == 0))
      {
        v12 = 0;
        LOBYTE(v38) = 0;
        v43 = 0;
        goto LABEL_10;
      }
    }

    IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v50);
    if ((v51 & 1) == 0)
    {
      v9 = *a2;
      v35 = *(a2 + 1);
      *a2 = 0;
      *(a2 + 1) = 0;
      v36 = *(a2 + 3);
      if (!v36)
      {
        break;
      }

      if (!v35)
      {
        break;
      }

      (*(*v36 + 16))(v36, v9);
      if ((v51 & 1) == 0)
      {
        break;
      }
    }

    if (v45 & 1) != 0 && (v47 & 1) != 0 && (v49)
    {
      v10 = v44;
      v44 = 0;
      v38 = v8;
      v39 = v10;
      v11 = v46;
      v46 = 0;
      v40 = v11;
      v41 = v48;
      v42 = v50;
      v12 = 1;
      v43 = 1;
      goto LABEL_10;
    }

    __break(1u);
LABEL_43:
    v25 = *a2;
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27)
    {
      if (v26)
      {
        (*(*v27 + 16))(v27, v25);
        if (v45)
        {
          continue;
        }
      }
    }

    goto LABEL_44;
  }

  LOBYTE(v38) = 0;
  v43 = 0;
  if (v49)
  {
    v37 = v48;
    v48 = 0;
    if (v37)
    {
      if (atomic_fetch_add_explicit(v37, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v37, v9);
      }
    }
  }

  v12 = 0;
LABEL_10:
  if (v47)
  {
    v13 = v46;
    v46 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v9);
      }
    }
  }

LABEL_14:
  if (v45)
  {
    v14 = v44;
    v44 = 0;
    if (v14)
    {
      if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v14, v9);
        if (v12)
        {
          goto LABEL_18;
        }

LABEL_44:
        v28 = *a2;
        v29 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v30 = v29 == 0;
        }

        else
        {
          v30 = 1;
        }

        if (!v30)
        {
          return (*(*result + 16))(result, v28);
        }

        return result;
      }
    }
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_18:
  v15 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v17 = v15;
  while (1)
  {
    v18 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v19 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v18)
    {
      goto LABEL_24;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_24:
  v20 = WTF::fastMalloc(v18, 0x18);
  *v20 = &unk_1F10F08E0;
  v20[1] = v17;
  v20[2] = a1;
  v50 = v20;
  WebKit::NetworkProcess::setPCMFraudPreventionValuesForTesting(a3, v38, &v39, &v40, &v41, &v42, &v50);
  result = v50;
  v50 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v43)
  {
LABEL_27:
    v22 = v42;
    v42 = 0;
    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v16);
    }

    v23 = v41;
    v41 = 0;
    if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v23, v16);
    }

    v24 = v40;
    v40 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v16);
    }

    result = v39;
    v39 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v16);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPrivateClickMeasurementAppBundleIDForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0908;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::setPrivateClickMeasurementAppBundleIDForTesting(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClosePCMDatabase,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0930;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::closePCMDatabase(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::TerminateIdleServiceWorkers,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0958;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::terminateIdleServiceWorkers(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetQuota,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0980;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetQuota(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetOriginQuotaRatioEnabledForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,BOOL>>(&v13, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F09A8;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::setOriginQuotaRatioEnabledForTesting(a3, v13, v14, &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::SetBackupExclusionPeriodForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Seconds,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::Seconds>>(v14, a2);
  if (v15 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F09D0;
      v11[1] = v8;
      v11[2] = a1;
      v13 = v11;
      WebKit::NetworkProcess::setBackupExclusionPeriodForTesting(a3, v14[0], &v13, v12, *&v14[1]);
      result = v13;
      v13 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetStoragePersistedState,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F09F8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetStoragePersistedState(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessage<Messages::NetworkProcess::CloneSessionStorageForWebPage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && (v6 = v4, v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v8) && (v9 = v7, v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1), (v11))
  {

    return WebKit::NetworkProcess::cloneSessionStorageForWebPage(a2, v6, v9, v10);
  }

  else
  {
    v13 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      v15 = *(*result + 16);

      return v15();
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::DidIncreaseQuota,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::ClientOrigin &&,WTF::ObjectIdentifierGeneric<WebKit::QuotaIncreaseRequestIdentifierType,WebCore::ClientOrigin &&::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,std::optional<unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a1, v37);
    if (v43)
    {
      while (1)
      {
        v8 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
        if ((v7 & 1) == 0)
        {
          v13 = 0;
          LOBYTE(v27) = 0;
          v36 = 0;
          goto LABEL_16;
        }

        v9 = IPC::Decoder::decode<std::optional<unsigned long long>>(a1, &v25);
        if ((v26 & 1) == 0)
        {
          break;
        }

        if (v43)
        {
          v27 = v6;
          LOBYTE(v28[0]) = 0;
          v30 = -1;
          if (!v39)
          {
            v11 = *v37;
            v37[0] = 0;
            v37[1] = 0;
            *v28 = v11;
            v29 = v38;
            goto LABEL_8;
          }

          if (v39 != 255)
          {
            *v28 = *v37;
LABEL_8:
            v30 = v39;
          }

          LOBYTE(v31[0]) = 0;
          v33 = -1;
          if (!v42)
          {
            v12 = *v40;
            v40[0] = 0;
            v40[1] = 0;
            *v31 = v12;
            v32 = v41;
            goto LABEL_11;
          }

          if (v42 != 255)
          {
            *v31 = *v40;
LABEL_11:
            v33 = v42;
          }

          v34 = v8;
          v35 = v25;
          v13 = 1;
          goto LABEL_15;
        }

        __break(1u);
LABEL_60:
        if (v10)
        {
          (*(*v9 + 16))(v9, v7);
          if (v43)
          {
            continue;
          }
        }

        goto LABEL_54;
      }

      v13 = 0;
      LOBYTE(v27) = 0;
LABEL_15:
      v36 = v13;
      if ((v43 & 1) == 0)
      {
        goto LABEL_30;
      }

LABEL_16:
      if (!v42)
      {
        v14 = v40[1];
        v40[1] = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v7);
        }

        v15 = v40[0];
        v40[0] = 0;
        if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v15, v7);
        }
      }

      v42 = -1;
      if (v39)
      {
        goto LABEL_30;
      }

      v16 = v37[1];
      v37[1] = 0;
      if (v16 && atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v7);
      }

      v17 = v37[0];
      v37[0] = 0;
      if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v7);
        if (v13)
        {
LABEL_31:
          result = WebKit::NetworkProcess::didIncreaseQuota(a2, v27, v28, v8, v35, *(&v35 + 1));
          if (v36)
          {
            if (!v33)
            {
              v20 = v31[1];
              v31[1] = 0;
              if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v20, v19);
              }

              result = v31[0];
              v31[0] = 0;
              if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                result = WTF::StringImpl::destroy(result, v19);
              }
            }

            v33 = -1;
            if (!v30)
            {
              v21 = v28[1];
              v28[1] = 0;
              if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v21, v19);
              }

              result = v28[0];
              v28[0] = 0;
              if (result)
              {
                if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  return WTF::StringImpl::destroy(result, v19);
                }
              }
            }
          }

          return result;
        }
      }

      else
      {
LABEL_30:
        if (v13)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      v7 = *a1;
      v10 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v9 = *(a1 + 3);
      if (v9)
      {
        goto LABEL_60;
      }
    }
  }

LABEL_54:
  v22 = *a1;
  v23 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v24 = v23 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    return (*(*result + 16))(result, v22);
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::HasAppBoundSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(BOOL)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0A20;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::hasAppBoundSession(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearAppBoundSession,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0A48;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::clearAppBoundSession(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearServiceWorkerEntitlementOverride,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(v8, 0x18);
    *v10 = &unk_1F10F0A70;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkProcess::clearServiceWorkerEntitlementOverride(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::UpdateBundleIdentifier,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::String &&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WTF *a3)
{
  IPC::ArgumentCoder<std::tuple<WTF::String>,void>::decode<IPC::Decoder>(a2, &v14);
  if (v15 & 1) != 0 || ((v7 = *a2, v11 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (result = *(a2 + 3)) != 0) ? (v12 = v11 == 0) : (v12 = 1), !v12 && (result = (*(*result + 16))(result, v7), (v15)))
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      result = WTF::fastMalloc(v9, 0x18);
      *result = &unk_1F10F0A98;
      *(result + 1) = v8;
      *(result + 2) = a1;
      v13 = result;
      if ((v15 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      WebKit::NetworkProcess::updateBundleIdentifier(a3, &v14, &v13);
      result = v13;
      v13 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }
    }
  }

  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearBundleIdentifier,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, WTF *a3)
{
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v6)
  {
    v7 = result;
    while (1)
    {
      v8 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v9 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v9, v8 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_7:
    v10 = WTF::fastMalloc(v8, 0x18);
    *v10 = &unk_1F10F0AC0;
    v10[1] = v7;
    v10[2] = a1;
    v11 = v10;
    WebKit::NetworkProcess::clearBundleIdentifier(a3, &v11);
    result = v11;
    v11 = 0;
    if (result)
    {
      return (*(*result + 8))(result);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::AppPrivacyReportTestingData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WebKit::AppPrivacyReportTestingData const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0AE8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::appPrivacyReportTestingData(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ClearAppPrivacyReportTestingData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0B10;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::clearAppPrivacyReportTestingData(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessage<Messages::NetworkProcess::AddWebPageNetworkParameters,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebKit::WebPageNetworkParameters &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5)
  {
    v6 = v4;
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v8)
    {
      v9 = v7;
      IPC::ArgumentCoder<WebKit::WebPageNetworkParameters,void>::decode(a1, &v20);
      if (v21)
      {
        v18 = v20;
        v19 = 1;
        result = WebKit::NetworkProcess::addWebPageNetworkParameters(a2, v6, v9, &v18);
        if (v19)
        {
          result = v18;
          v18 = 0;
          if (result)
          {
            if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              return WTF::StringImpl::destroy(result, v11);
            }
          }
        }

        return result;
      }

      v12 = *a1;
      v13 = *(a1 + 1);
      *a1 = 0;
      *(a1 + 1) = 0;
      v14 = *(a1 + 3);
      if (v14 && v13)
      {
        (*(*v14 + 16))(v14, v12);
      }
    }
  }

  v15 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  result = *(a1 + 3);
  if (result)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(*result + 16);

    return v17();
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::CountNonDefaultSessionSets,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(unsigned long long)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0B38;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::countNonDefaultSessionSets(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::AllowFileAccessFromWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && ((v8 = v6, IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a2, &v24), (v25) || (v16 = *a2, v17 = *(a2 + 1), *a2 = 0, *(a2 + 1) = 0, (v18 = *(a2 + 3)) != 0) && v17 && ((*(*v18 + 16))(v18, v16), (v25)))
  {
    v22 = v24;
    v23 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }

    v11 = v9;
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
    *v14 = &unk_1F10F0B60;
    v14[1] = v11;
    v14[2] = a1;
    v24 = v14;
    WebKit::NetworkProcess::allowFileAccessFromWebProcess(a3, v8, &v22, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v23)
    {
LABEL_12:
      result = v22;
      v22 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  else
  {
    v19 = *a2;
    v20 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v21 = v20 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      return (*(*result + 16))(result, v19);
    }
  }

  return result;
}

IPC::Decoder *IPC::handleMessageAsync<Messages::NetworkProcess::AllowFilesAccessFromWebProcess,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v5 = a2;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_18;
  }

  v3 = v7;
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(v5, &v24);
  if ((v26 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_3:
  v21 = v3;
  v22[0] = v24;
  v10 = v25;
  v24 = 0;
  v25 = 0;
  v22[1] = v10;
  v23 = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v24, v9);
  while (1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v12 & 1) == 0)
    {
      break;
    }

    v5 = result;
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v14 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v14, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v14 == v13)
      {
        goto LABEL_10;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_10:
    v15 = WTF::fastMalloc(v13, 0x18);
    *v15 = &unk_1F10F0B88;
    v15[1] = v5;
    v15[2] = a1;
    v24 = v15;
    if (v23)
    {
      WebKit::NetworkProcess::allowFilesAccessFromWebProcess(a3, v21, v22, &v24);
      result = v24;
      v24 = 0;
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      break;
    }

    __break(1u);
LABEL_17:
    v16 = *v5;
    v17 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v18 = *(v5 + 3);
    if (v18)
    {
      if (v17)
      {
        (*(*v18 + 16))(v18, v16);
        if (v26)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_18:
    LOBYTE(v21) = 0;
    v23 = 0;
    v12 = *v5;
    v19 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    result = *(v5 + 3);
    if (result)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      result = (*(*result + 16))(result, v12);
      if (v23)
      {
        continue;
      }
    }

    break;
  }

  if (v23 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v22, v12);
  }

  return result;
}

void IPC::handleMessage<Messages::NetworkProcess::TerminateRemoteWorkerContextConnectionWhenPossible,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebKit::RemoteWorkerType,PAL::SessionID,WebCore::RegistrableDomain const&,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a1);
  if ((v4 & 0x100) != 0)
  {
    v5 = v4;
    v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
    if (v7)
    {
      v8 = v6;
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a1, &v23);
      if (v24)
      {
        v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
        if (v10)
        {
          v21[0] = v23;
          v21[1] = v9;
          v22 = 1;
          WebKit::NetworkProcess::terminateRemoteWorkerContextConnectionWhenPossible(a2, v5, v8, v21, v9);
          if (v22)
          {
            v12 = v21[0];
            v21[0] = 0;
            if (v12)
            {
              if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v12, v11);
              }
            }
          }

          return;
        }

        v13 = v23;
        if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v13, v10);
        }
      }

      else
      {
        v18 = *a1;
        v19 = *(a1 + 1);
        *a1 = 0;
        *(a1 + 1) = 0;
        v20 = *(a1 + 3);
        if (v20 && v19)
        {
          (*(*v20 + 16))(v20, v18);
        }
      }
    }
  }

  v14 = *(a1 + 1);
  *a1 = 0;
  *(a1 + 1) = 0;
  v15 = *(a1 + 3);
  if (v15)
  {
    v16 = v14 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(*v15 + 16);

    v17();
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(unsigned int)> &&)const>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0BB0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::runningOrTerminatingServiceWorkerCountForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetPendingPushMessage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<WebKit::WebPushMessage> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0BD8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getPendingPushMessage(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetPendingPushMessages,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WebKit::WebPushMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0C00;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getPendingPushMessages(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkProcess::ProcessPushMessage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebKit::WebPushMessage &&,WebCore::PushPermissionState,BOOL,WTF::CompletionHandler<void ()(BOOL,std::optional<WebKit::WebPushMessage &&::NotificationPayload> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v5 = a2;
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_33;
  }

  v3 = v7;
  IPC::ArgumentCoder<WebKit::WebPushMessage,void>::decode(v5, &v58);
  if ((v77 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_3:
  v9 = IPC::Decoder::decode<WebCore::NotificationDirection>(v5);
  if ((v9 & 0x100) == 0)
  {
    goto LABEL_4;
  }

  v12 = *(v5 + 1);
  v13 = *(v5 + 2);
  v10 = *v5;
  if (v12 <= &v13[-*v5])
  {
    *v5 = 0;
    *(v5 + 1) = 0;
    v33 = *(v5 + 3);
    if (v33)
    {
      if (v12)
      {
        (*(*v33 + 16))(v33);
        v12 = *(v5 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_45;
  }

  *(v5 + 2) = v13 + 1;
  if (!v13)
  {
LABEL_45:
    *v5 = 0;
    *(v5 + 1) = 0;
    v34 = *(v5 + 3);
    if (v34)
    {
      if (v12)
      {
        (*(*v34 + 16))(v34);
        v10 = *v5;
        v12 = *(v5 + 1);
        goto LABEL_48;
      }
    }

    else
    {
      v12 = 0;
    }

    v10 = 0;
LABEL_48:
    *v5 = 0;
    *(v5 + 1) = 0;
    v35 = *(v5 + 3);
    if (v35 && v12)
    {
      (*(*v35 + 16))(v35, v10);
    }

LABEL_4:
    v11 = 0;
    LOBYTE(v36) = 0;
    goto LABEL_16;
  }

  v14 = *v13;
  if (v14 >= 2)
  {
    goto LABEL_48;
  }

  if (v77)
  {
    v36 = v3;
    LOBYTE(v37[0]) = 0;
    v38 = 0;
    if (v60 == 1)
    {
      v37[0] = v58;
      v15 = v59;
      v58 = 0;
      v59 = 0;
      v37[1] = v15;
      v38 = 1;
    }

    v16 = v61;
    v61 = 0uLL;
    v39 = v16;
    v40 = v62;
    v41 = v63;
    LODWORD(v62) = v62 & 0xFFFFFFFE;
    LOBYTE(v42) = 0;
    v54 = 0;
    if (v76 == 1)
    {
      v17 = v64;
      v64 = 0;
      v42 = v17;
      v43 = v65;
      v44 = v66;
      LODWORD(v65) = v65 & 0xFFFFFFFE;
      v18 = v67;
      v67 = 0;
      v45 = v18;
      v46 = v68;
      v47 = 0;
      v52 = 0;
      if (v74 == 1)
      {
        v47 = v69;
        v19 = v71;
        v48 = v70;
        v70 = 0u;
        v71 = 0u;
        v49 = v19;
        v20 = v72;
        v72 = 0;
        v50 = v20;
        v51 = v73;
        v52 = 1;
      }

      v53 = v75;
      v54 = 1;
    }

    v55 = v9;
    v56 = v14;
    v11 = 1;
LABEL_16:
    v57 = v11;
    if (v77)
    {
      WebKit::WebPushMessage::~WebPushMessage(&v58, v10);
      v11 = v57;
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  while (1)
  {
    __break(1u);
LABEL_32:
    v27 = *v5;
    v28 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v29 = *(v5 + 3);
    if (v29)
    {
      if (v28)
      {
        (*(*v29 + 16))(v29, v27);
        if (v77)
        {
          goto LABEL_3;
        }
      }
    }

LABEL_33:
    LOBYTE(v36) = 0;
    v57 = 0;
LABEL_34:
    v22 = *v5;
    v30 = *(v5 + 1);
    *v5 = 0;
    *(v5 + 1) = 0;
    v31 = *(v5 + 3);
    if (v31)
    {
      v32 = v30 == 0;
    }

    else
    {
      v32 = 1;
    }

    if (v32)
    {
      break;
    }

    (*(*v31 + 16))(v31, v22);
    if ((v57 & 1) == 0)
    {
      break;
    }

LABEL_19:
    v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v5);
    if ((v22 & 1) == 0)
    {
      break;
    }

    v5 = v21;
    while (1)
    {
      v23 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v24 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v24, v23 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v24 == v23)
      {
        goto LABEL_25;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_25:
    v25 = WTF::fastMalloc(v23, 0x18);
    *v25 = &unk_1F10F0C28;
    v25[1] = v5;
    v25[2] = a1;
    v58 = v25;
    if (v57)
    {
      WebKit::NetworkProcess::processPushMessage(a3, v36, v37, v55, v56, &v58);
      v26 = v58;
      v58 = 0;
      if (v26)
      {
        (*(*v26 + 8))(v26);
      }

      break;
    }
  }

  if (v57 == 1)
  {
    WebKit::WebPushMessage::~WebPushMessage(v37, v22);
  }
}

void IPC::handleMessageAsync<Messages::NetworkProcess::ProcessNotificationEvent,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(WebCore::NotificationData &&,WebCore::NotificationEventType,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v4 = a2;
  v23 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::NotificationData>(a2, v21);
  if (v22 != 1)
  {
    goto LABEL_22;
  }

  v6 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(v4);
  if ((v6 & 0x100) != 0)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

    v9 = v6;
    std::__tuple_leaf<0ul,WebCore::NotificationData,false>::__tuple_leaf[abi:sn200100]<WebCore::NotificationData,0>(v18, v21);
    v19 = v9;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v18[0] = 0;
  }

  v20 = v8;
  if (v22)
  {
    WebCore::NotificationData::~NotificationData(v21, v7);
    v8 = v20;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v10 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v4);
    if ((v11 & 1) == 0)
    {
      break;
    }

    v4 = v10;
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
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v14 = WTF::fastMalloc(v12, 0x18);
    *v14 = &unk_1F10F0C50;
    v14[1] = v4;
    v14[2] = a1;
    v21[0] = v14;
    if (v20)
    {
      WebKit::NetworkProcess::processNotificationEvent(a3, v18, v19, v21);
      v15 = v21[0];
      v21[0] = 0;
      if (v15)
      {
        (*(*v15 + 8))(v15);
      }

      break;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    v18[0] = 0;
    v20 = 0;
LABEL_23:
    v11 = *v4;
    v16 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    v17 = v4[3];
    if (v17)
    {
      if (v16)
      {
        (*(*v17 + 16))(v17, v11);
        if (v20)
        {
          continue;
        }
      }
    }

    break;
  }

  if (v20 == 1)
  {
    WebCore::NotificationData::~NotificationData(v18, v11);
  }
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetAllBackgroundFetchIdentifiers,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0C78;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getAllBackgroundFetchIdentifiers(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::GetBackgroundFetchState,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(std::optional<WebKit::BackgroundFetchState> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0CA0;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::getBackgroundFetchState(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::AbortBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0CC8;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::abortBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::PauseBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0CF0;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::pauseBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::ResumeBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0D18;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::resumeBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::ClickBackgroundFetch,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::String const&,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(&v14, a2);
  if (v16 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }

    v9 = v7;
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
        goto LABEL_8;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
    v12 = WTF::fastMalloc(v10, 0x18);
    *v12 = &unk_1F10F0D40;
    v12[1] = v9;
    v12[2] = a1;
    v13 = v12;
    WebKit::NetworkProcess::clickBackgroundFetch(a3, v14, &v15, &v13);
    result = v13;
    v13 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v16)
    {
LABEL_11:
      result = v15;
      v15 = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v8);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::SetPushAndNotificationsEnabledForOrigin,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData const&,BOOL,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_39;
  }

  v9 = v7;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, v40);
  if ((v43 & 1) == 0)
  {
    v25 = *a2;
    v26 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v27 = *(a2 + 3);
    if (v27 && v26)
    {
      (*(*v27 + 16))(v27, v25);
    }

    goto LABEL_39;
  }

  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v12 = *a2;
  if (v10 <= &v11[-*a2])
  {
    *a2 = 0;
    *(a2 + 1) = 0;
    v31 = *(a2 + 3);
    if (v31)
    {
      if (v10)
      {
        (*(*v31 + 16))(v31);
        v10 = *(a2 + 1);
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_50:
    *a2 = 0;
    *(a2 + 1) = 0;
    v32 = *(a2 + 3);
    if (v32)
    {
      if (v10)
      {
        (*(*v32 + 16))(v32);
        v12 = *a2;
        v10 = *(a2 + 1);
        goto LABEL_53;
      }
    }

    else
    {
      v10 = 0;
    }

    v12 = 0;
    goto LABEL_53;
  }

  *(a2 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_50;
  }

  v3 = *v11;
  if (v3 < 2)
  {
    v34 = v9;
    LOBYTE(v35[0]) = 0;
    v37 = -1;
    v13 = v42;
    if (v42)
    {
      if (v42 == 255)
      {
        goto LABEL_9;
      }

      *v35 = *v40;
    }

    else
    {
      v14 = *v40;
      v40[0] = 0;
      v40[1] = 0;
      *v35 = v14;
      v36 = v41;
    }

    v37 = v42;
LABEL_9:
    v38 = v3;
    v15 = 1;
    goto LABEL_10;
  }

LABEL_53:
  *a2 = 0;
  *(a2 + 1) = 0;
  v33 = *(a2 + 3);
  if (v33 && v10)
  {
    (*(*v33 + 16))(v33, v12);
  }

  v15 = 0;
  LOBYTE(v34) = 0;
  v13 = v42;
LABEL_10:
  v39 = v15;
  if (!v13)
  {
    v16 = v40[1];
    if (v40[1] && atomic_fetch_add_explicit(v40[1], 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v16, v12);
    }

    v17 = v40[0];
    if (v40[0])
    {
      if (atomic_fetch_add_explicit(v40[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v12);
        if (v15)
        {
          goto LABEL_17;
        }

LABEL_39:
        v28 = *(a2 + 1);
        *a2 = 0;
        *(a2 + 1) = 0;
        result = *(a2 + 3);
        if (result)
        {
          v29 = v28 == 0;
        }

        else
        {
          v29 = 1;
        }

        if (!v29)
        {
          v30 = *(*result + 16);

          return v30();
        }

        return result;
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_17:
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = result;
  while (1)
  {
    v21 = *a1;
    if ((*a1 & 1) == 0)
    {
      break;
    }

    v22 = *a1;
    atomic_compare_exchange_strong_explicit(a1, &v22, v21 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v22 == v21)
    {
      goto LABEL_23;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_23:
  v23 = WTF::fastMalloc(v21, 0x18);
  *v23 = &unk_1F10F0D68;
  v23[1] = v20;
  v23[2] = a1;
  v40[0] = v23;
  WebKit::NetworkProcess::setPushAndNotificationsEnabledForOrigin(a3, v34, v35, v3 & 1, v40);
  result = v40[0];
  v40[0] = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v39)
  {
LABEL_26:
    if (!v37)
    {
      v24 = v35[1];
      v35[1] = 0;
      if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v24, v19);
      }

      result = v35[0];
      v35[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v19);
        }
      }
    }
  }

  return result;
}

WTF::StringImpl *IPC::handleMessageAsync<Messages::NetworkProcess::RemovePushSubscriptionsForOrigin,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WebCore::SecurityOriginData const&,WTF::CompletionHandler<void ()(unsigned int)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v7 & 1) == 0)
  {
LABEL_26:
    v19 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      v21 = *(*result + 16);

      return v21();
    }

    return result;
  }

  v8 = v6;
  IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a2, &v26);
  if ((v29 & 1) == 0)
  {
    v16 = *a2;
    v17 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    v18 = *(a2 + 3);
    if (v18 && v17)
    {
      (*(*v18 + 16))(v18, v16);
    }

    goto LABEL_26;
  }

  LOBYTE(v22[0]) = 0;
  v24 = -1;
  if (v28)
  {
    if (v28 == 255)
    {
      goto LABEL_6;
    }

    *v22 = v26;
  }

  else
  {
    *v22 = v26;
    v23 = v27;
  }

  v24 = v28;
LABEL_6:
  v25 = 1;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = result;
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
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_12:
  v14 = WTF::fastMalloc(v12, 0x18);
  *v14 = &unk_1F10F0D90;
  v14[1] = v11;
  v14[2] = a1;
  *&v26 = v14;
  WebKit::NetworkProcess::removePushSubscriptionsForOrigin(a3, v8, v22, &v26);
  result = v26;
  *&v26 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  if (v25)
  {
LABEL_15:
    if (!v24)
    {
      v15 = v22[1];
      v22[1] = 0;
      if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v15, v10);
      }

      result = v22[0];
      v22[0] = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(result, v10);
        }
      }
    }
  }

  return result;
}

void IPC::handleMessageAsync<Messages::NetworkProcess::HasPushSubscriptionForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::URL &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::URL>>(&v15, a2);
  if (v17 == 1)
  {
    v7 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v6)
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F0DB8;
      v11[1] = v8;
      v11[2] = a1;
      v14 = v11;
      if ((v17 & 1) == 0)
      {
        __break(1u);
        return;
      }

      WebKit::NetworkProcess::hasPushSubscriptionForTesting(a3, v15, &v16, &v14);
      v12 = v14;
      v14 = 0;
      if (v12)
      {
        (*(*v12 + 8))(v12);
      }
    }
  }

  if (v17 == 1)
  {
    v13 = v16;
    v16 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v6);
      }
    }
  }
}

uint64_t IPC::handleMessage<Messages::NetworkProcess::SetProxyConfigData,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  if (v5 & 1) != 0 && ((v6 = v4, IPC::VectorArgumentCoder<false,std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v19), (v21) || (v11 = *a1, v12 = *(a1 + 1), *a1 = 0, *(a1 + 1) = 0, (v13 = *(a1 + 3)) != 0) && v12 && ((*(*v13 + 16))(v13, v11), (v21)))
  {
    v17[0] = v19;
    v8 = v20;
    v19 = 0;
    v20 = 0;
    v17[1] = v8;
    v18 = 1;
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v19, v7);
    result = WebKit::NetworkProcess::setProxyConfigData(a2, v6, v17);
    if (v18)
    {
      return WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v10);
    }
  }

  else
  {
    v14 = *a1;
    v15 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      return (*(*result + 16))(result, v14);
    }
  }

  return result;
}

WTF::StringImpl **IPC::handleMessage<Messages::NetworkProcess::SetPersistedDomains,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> &&)>(IPC::Decoder *a1, uint64_t a2)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(&v5, a1);
  if (v7 == 1)
  {
    result = WebKit::NetworkProcess::setPersistedDomains(a2, v5, &v6);
    if (v7)
    {
      result = v6;
      if (v6)
      {
        return WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v6, v4);
      }
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::GetAppBadgeForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<unsigned long long>)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0DE0;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::getAppBadgeForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

mpark *IPC::handleMessageAsync<Messages::NetworkProcess::FetchLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0E08;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::fetchLocalStorage(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

mpark *IPC::handleMessageAsync<Messages::NetworkProcess::RestoreLocalStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, IPC::Decoder::decode<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v21, a2), (v22))
  {
    v19 = v21;
    v20 = 1;
    v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v10 & 1) == 0)
    {
      goto LABEL_17;
    }

    v11 = v9;
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
        goto LABEL_14;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_14:
    v18 = WTF::fastMalloc(v12, 0x18);
    *v18 = &unk_1F10F0E30;
    v18[1] = v11;
    v18[2] = a1;
    v21 = v18;
    WebKit::NetworkProcess::restoreLocalStorage(a3, v8, &v19, &v21);
    result = v21;
    v21 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v20)
    {
LABEL_17:
      result = v19;
      if (v19)
      {
        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v19, v10);
      }
    }
  }

  else
  {
    v14 = *a2;
    v15 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      return (*(*result + 16))(result, v14);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::FetchSessionStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(std::optional<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>> &&)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::PageIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v13, a2);
  if (v14 == 1)
  {
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v7)
    {
      v8 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v11 = WTF::fastMalloc(v9, 0x18);
      *v11 = &unk_1F10F0E58;
      v11[1] = v8;
      v11[2] = a1;
      v12 = v11;
      WebKit::NetworkProcess::fetchSessionStorage(a3, v13[0], v13[1], &v12);
      result = v12;
      v12 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

mpark *IPC::handleMessageAsync<Messages::NetworkProcess::RestoreSessionStorage,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(BOOL)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  v6 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
  if (v7 & 1) != 0 && (v8 = v6, v9 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2), (v10) && (v11 = v9, IPC::Decoder::decode<WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>(&v24, a2), (v25))
  {
    v22 = v24;
    v23 = 1;
    v12 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }

    v14 = v12;
    while (1)
    {
      v15 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

      v16 = *a1;
      atomic_compare_exchange_strong_explicit(a1, &v16, v15 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v16 == v15)
      {
        goto LABEL_15;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_15:
    v21 = WTF::fastMalloc(v15, 0x18);
    *v21 = &unk_1F10F0E80;
    v21[1] = v14;
    v21[2] = a1;
    v24 = v21;
    WebKit::NetworkProcess::restoreSessionStorage(a3, v8, v11, &v22, &v24);
    result = v24;
    v24 = 0;
    if (result)
    {
      result = (*(*result + 8))(result);
    }

    if (v23)
    {
LABEL_18:
      result = v22;
      if (v22)
      {
        return WTF::HashTable<WebCore::ClientOrigin,WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashMap<WebCore::ClientOrigin,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,WTF::DefaultHash<WebCore::ClientOrigin>,WTF::HashTraits<WebCore::ClientOrigin>,WTF::HashTraits<WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::ClientOrigin>,WTF::FastMalloc>::deallocateTable(v22, v13);
      }
    }
  }

  else
  {
    v17 = *a2;
    v18 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (result)
    {
      v20 = v18 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (!v20)
    {
      return (*(*result + 16))(result, v17);
    }
  }

  return result;
}

uint64_t IPC::handleMessageAsync<Messages::NetworkProcess::ResetResourceMonitorThrottlerForTesting,IPC::Connection,WebKit::NetworkProcess,WebKit::NetworkProcess,void ()(PAL::SessionID,WTF::CompletionHandler<void ()(void)> &&)>(atomic_ullong *a1, IPC::Decoder *a2, uint64_t a3)
{
  result = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a2);
  if (v7)
  {
    v8 = result;
    result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a2);
    if (v9)
    {
      v10 = result;
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
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_8:
      v13 = WTF::fastMalloc(v11, 0x18);
      *v13 = &unk_1F10F0EA8;
      v13[1] = v10;
      v13[2] = a1;
      v14 = v13;
      WebKit::NetworkProcess::resetResourceMonitorThrottlerForTesting(a3, v8, &v14);
      result = v14;
      v14 = 0;
      if (result)
      {
        return (*(*result + 8))(result);
      }
    }
  }

  return result;
}

uint64_t WebKit::NetworkProcess::didReceiveSyncMessage(atomic_uint *a1, atomic_ullong *a2, unsigned __int16 *a3, uint64_t *a4)
{
  atomic_fetch_add(a1 + 36, 1u);
  v7 = a3[25];
  if (v7 > 0xFAB)
  {
    if (v7 == 4013)
    {
      v20 = IPC::Decoder::decode<std::tuple<WTF::Seconds>>(a3);
      if ((v21 & 1) == 0)
      {
        goto LABEL_36;
      }

      v22 = *&v20;
      v23 = *a4;
      *a4 = 0;
      while (1)
      {
        v24 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v25 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v25, v24 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v25 == v24)
        {
          goto LABEL_33;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_33:
      v29 = WTF::fastMalloc(v24, 0x18);
      *v29 = &unk_1F10F0F20;
      v29[1] = v23;
      v29[2] = a2;
      v32 = v29;
      WebKit::NetworkProcess::setServiceWorkerFetchTimeoutForTesting(a1, &v32, v22);
LABEL_34:
      v30 = v32;
      v32 = 0;
      if (v30)
      {
        (*(*v30 + 8))(v30);
      }

LABEL_36:
      v16 = 1;
      if (!a1)
      {
        return v16;
      }

      goto LABEL_37;
    }

    if (v7 == 4012)
    {
      v11 = IPC::Decoder::decode<std::tuple<WebKit::CacheModel>>(a3);
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_36;
      }

      v12 = v11;
      v13 = *a4;
      *a4 = 0;
      while (1)
      {
        v14 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v15 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v15, v14 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v15 == v14)
        {
          goto LABEL_31;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_31:
      v28 = WTF::fastMalloc(v14, 0x18);
      *v28 = &unk_1F10F0ED0;
      v28[1] = v13;
      v28[2] = a2;
      v32 = v28;
      WebKit::NetworkProcess::setCacheModelSynchronouslyForTesting(a1, v12, &v32);
      goto LABEL_34;
    }
  }

  else
  {
    if (v7 == 4010)
    {
      v17 = *a4;
      *a4 = 0;
      while (1)
      {
        v18 = *a2;
        if ((*a2 & 1) == 0)
        {
          break;
        }

        v19 = *a2;
        atomic_compare_exchange_strong_explicit(a2, &v19, v18 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v18)
        {
          goto LABEL_29;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_29:
      v27 = WTF::fastMalloc(v18, 0x18);
      *v27 = &unk_1F10F0EF8;
      v27[1] = v17;
      v27[2] = a2;
      v32 = v27;
      WebKit::NetworkProcess::processWillSuspendImminentlyForTestingSync(a1, &v32);
      goto LABEL_34;
    }

    if (v7 == 4011)
    {
      v8 = *a4;
      *a4 = 0;
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
          goto LABEL_27;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a2);
LABEL_27:
      v26 = WTF::fastMalloc(v9, 0x18);
      *v26 = &unk_1F10F0F48;
      v26[1] = v8;
      v26[2] = a2;
      v32 = v26;
      WebKit::NetworkProcess::resetServiceWorkerFetchTimeoutForTesting(a1, &v32);
      goto LABEL_34;
    }
  }

  v16 = WebKit::AuxiliaryProcess::didReceiveSyncMessage(a1, a2, a3, a4);
  if (!a1)
  {
    return v16;
  }

LABEL_37:
  if (atomic_fetch_add(a1 + 36, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a1 + 36);
    (*(*a1 + 24))(a1);
  }

  return v16;
}

void WebKit::NetworkProcessProxy::didReceiveMessage(atomic_uint *this, atomic_ullong *a2, IPC::Decoder *a3)
{
  v6 = a2;
  v659 = *MEMORY[0x1E69E9840];
  v8 = this + 4;
  atomic_fetch_add(this + 4, 1u);
  v9 = v642;
  v10 = v571;
  switch(*(a3 + 25))
  {
    case 0x209:
      v11 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::contentExtensionRules(this, v11);
      }

      goto LABEL_1098;
    case 0x20A:
      v155 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::cookiesDidChange(this, v155);
      }

      goto LABEL_1098;
    case 0x20B:
      v128 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v129 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v130 = v128;
      IPC::Decoder::decode<WebCore::ResourceError>(a3, v619);
      if ((BYTE8(v622) & 1) == 0)
      {
        goto LABEL_1097;
      }

      *&v571[8] = *v619;
      *v571 = v130;
      *&v571[24] = *&v619[16];
      *&v571[40] = *&v619[32];
      *&v571[56] = v620;
      *&v571[64] = v621;
      *&v571[68] = WORD2(v621);
      *&v571[72] = *(&v621 + 1);
      v571[80] = v622;
      v571[88] = 1;
      WebKit::NetworkProcessProxy::dataTaskDidCompleteWithError(this, v130, &v571[8]);
      if (v571[88])
      {
        v131 = *&v571[72];
        *&v571[72] = 0;
        if (v131)
        {
          CFRelease(v131);
        }

        v132 = *&v571[56];
        *&v571[56] = 0;
        if (v132 && atomic_fetch_add_explicit(v132, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v132, v12);
        }

        goto LABEL_954;
      }

      goto LABEL_1098;
    case 0x20C:
      v138 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v139 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v140 = v138;
      IPC::ArgumentCoder<std::span<unsigned char const,18446744073709551615ul>,void>::decode<IPC::Decoder>(a3, v571);
      if ((v571[16] & 1) == 0)
      {
        v520 = *a3;
        v521 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v522 = *(a3 + 3);
        if (!v522)
        {
          goto LABEL_1097;
        }

        if (!v521)
        {
          goto LABEL_1097;
        }

        (*(*v522 + 16))(v522, v520);
        if ((v571[16] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      WebKit::NetworkProcessProxy::dataTaskDidReceiveData(this, v140, *v571, *&v571[8]);
      goto LABEL_1098;
    case 0x20D:
      v96 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v97 & 1) != 0 && ((v98 = v96, IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v619), (v639) || (v459 = *a3, v460 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v461 = *(a3 + 3)) != 0) && v460 && ((*(*v461 + 16))(v461, v459), (v639)))
      {
        *&v571[16] = *&v619[8];
        *&v571[32] = *&v619[24];
        v100 = v621;
        v621 = 0u;
        v101 = v622;
        v622 = 0u;
        v102 = *&v619[40];
        *v571 = v98;
        *&v571[8] = *v619;
        *v619 = 0;
        *&v619[8] &= ~1u;
        *&v619[40] = 0;
        *&v571[48] = v102;
        *&v571[56] = v620;
        *&v571[64] = v100;
        *&v571[80] = v101;
        *&v100 = v623;
        v623 = 0;
        *&v571[96] = v100;
        v103 = v624;
        v624 = 0;
        *&v572 = v103;
        *&v100 = v625;
        v625 = 0;
        *(&v572 + 1) = v100;
        v104 = v626;
        v626 = 0;
        v573 = v104;
        LOBYTE(v574) = 0;
        LOBYTE(v575) = 0;
        if (v628 == 1)
        {
          v403 = v627;
          v627 = 0;
          v574 = v403;
          LOBYTE(v575) = 1;
        }

        LOWORD(v576) = v629;
        BYTE2(v576) = v630;
        *v577 = v631;
        v631 = 0;
        *v578 = v634;
        *&v578[16] = v635;
        *&v578[32] = v636[0];
        *&v578[43] = *(v636 + 11);
        *&v577[8] = v632;
        *&v577[24] = v633;
        v579 = v637;
        LOBYTE(v580) = v638;
        v581[0] = 1;
        if (v639)
        {
          v637 = 0;
          WebCore::ResourceResponseBase::~ResourceResponseBase(v619, v99);
        }
      }

      else
      {
        v571[0] = 0;
        v581[0] = 0;
        v12 = *a3;
        v462 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v463 = *(a3 + 3);
        if (!v463)
        {
          goto LABEL_404;
        }

        if (!v462)
        {
          goto LABEL_404;
        }

        (*(*v463 + 16))(v463, v12);
        if ((v581[0] & 1) == 0)
        {
          goto LABEL_404;
        }
      }

      v105 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_404;
      }

      v106 = v105;
      while (1)
      {
        v107 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v108 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v108, v107 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v108 == v107)
        {
          goto LABEL_401;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_401:
      v17 = WTF::fastMalloc(v107, 0x18);
      *v17 = &unk_1F10F1100;
      *(v17 + 8) = v106;
      *(v17 + 16) = v6;
      *v619 = v17;
      if ((v581[0] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::dataTaskDidReceiveResponse(this, *v571, &v571[8], v619);
      v317 = *v619;
      *v619 = 0;
      if (v317)
      {
        (*(*v317 + 8))(v317);
      }

LABEL_404:
      if (v581[0] == 1)
      {
        v318 = v579;
        v579 = 0;
        if (v318)
        {
          CFRelease(v318);
        }

        goto LABEL_415;
      }

      goto LABEL_1098;
    case 0x20E:
      v177 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v178 & 1) != 0 && (v179 = v177, IPC::Decoder::decode<WebCore::AuthenticationChallenge>(v619, a3), v641 == 1))
      {
        *v571 = v179;
        WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v571[8], v619);
        *&v592[24] = v640;
        v592[40] = 1;
        if ((v641 & 1) == 0)
        {
          goto LABEL_188;
        }

        v640 = 0uLL;
        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v619, v180);
        if (v592[40])
        {
          goto LABEL_188;
        }
      }

      else
      {
        v571[0] = 0;
        v592[40] = 0;
      }

      v12 = *a3;
      v431 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v432 = *(a3 + 3);
      if (!v432)
      {
        goto LABEL_388;
      }

      if (!v431)
      {
        goto LABEL_388;
      }

      (*(*v432 + 16))(v432, v12);
      if ((v592[40] & 1) == 0)
      {
        goto LABEL_388;
      }

LABEL_188:
      v181 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_388;
      }

      v182 = v181;
      while (1)
      {
        v183 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v184 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v184, v183 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v184 == v183)
        {
          goto LABEL_385;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_385:
      v17 = WTF::fastMalloc(v183, 0x18);
      *v17 = &unk_1F10F10B0;
      *(v17 + 8) = v182;
      *(v17 + 16) = v6;
      *v619 = v17;
      if ((v592[40] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::dataTaskReceivedChallenge(this, *v571, &v571[8], v619);
      v311 = *v619;
      *v619 = 0;
      if (v311)
      {
        (*(*v311 + 8))(v311);
      }

LABEL_388:
      if (v592[40] == 1)
      {
        v312 = *&v592[32];
        *&v592[32] = 0;
        if (v312)
        {
          CFRelease(v312);
        }

        v313 = *&v592[24];
        *&v592[24] = 0;
        if (v313)
        {
          CFRelease(v313);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v571[8], v12);
      }

      goto LABEL_1098;
    case 0x20F:
      v207 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v208)
      {
        v209 = v207;
        IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v619);
        if (v639 & 1) != 0 || (v464 = *a3, v465 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v466 = *(a3 + 3)) != 0) && v465 && ((*(*v466 + 16))(v466, v464), (v639))
        {
          IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v642);
          if (v658 & 1) != 0 || (v12 = *a3, v467 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v468 = *(a3 + 3)) != 0) && v467 && (v17 = (*(*v468 + 16))(v468, v12), (v658))
          {
            if ((v639 & 1) == 0)
            {
              goto LABEL_1032;
            }

            *&v571[16] = *&v619[8];
            *&v571[32] = *&v619[24];
            v210 = v621;
            v621 = 0u;
            v211 = v622;
            v622 = 0u;
            v212 = *&v619[40];
            *v571 = v209;
            *&v571[8] = *v619;
            *v619 = 0;
            *&v619[8] &= ~1u;
            *&v619[40] = 0;
            *&v571[48] = v212;
            *&v571[56] = v620;
            *&v571[64] = v210;
            *&v571[80] = v211;
            *&v210 = v623;
            v623 = 0;
            *&v571[96] = v210;
            v213 = v624;
            v624 = 0;
            *&v572 = v213;
            *&v210 = v625;
            v625 = 0;
            *(&v572 + 1) = v210;
            v214 = v626;
            v626 = 0;
            v573 = v214;
            LOBYTE(v574) = 0;
            LOBYTE(v575) = 0;
            if (v628 == 1)
            {
              v404 = v627;
              v627 = 0;
              v574 = v404;
              LOBYTE(v575) = 1;
            }

            LOWORD(v576) = v629;
            BYTE2(v576) = v630;
            v215 = v637;
            *v577 = v631;
            *v578 = v634;
            *&v578[16] = v635;
            *&v578[32] = v636[0];
            *&v578[43] = *(v636 + 11);
            *&v577[8] = v632;
            *&v577[24] = v633;
            v631 = 0;
            v637 = 0;
            v579 = v215;
            LOBYTE(v580) = v638;
            std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(v581, v642);
            v594[0] = 1;
            if (v658)
            {
              WebCore::ResourceRequest::~ResourceRequest(v642);
            }
          }

          else
          {
            v571[0] = 0;
            v594[0] = 0;
          }

          if (v639)
          {
            v216 = v637;
            v637 = 0;
            if (v216)
            {
              CFRelease(v216);
            }

            WebCore::ResourceResponseBase::~ResourceResponseBase(v619, v12);
          }
        }

        else
        {
          v571[0] = 0;
          v594[0] = 0;
        }

        if (v594[0])
        {
          goto LABEL_228;
        }
      }

      else
      {
        v571[0] = 0;
        v594[0] = 0;
      }

      v12 = *a3;
      v441 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v442 = *(a3 + 3);
      if (!v442)
      {
        goto LABEL_412;
      }

      if (!v441)
      {
        goto LABEL_412;
      }

      (*(*v442 + 16))(v442, v12);
      if ((v594[0] & 1) == 0)
      {
        goto LABEL_412;
      }

LABEL_228:
      v217 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_412;
      }

      v218 = v217;
      while (1)
      {
        v219 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v220 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v220, v219 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v220 == v219)
        {
          goto LABEL_409;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_409:
      v17 = WTF::fastMalloc(v219, 0x18);
      *v17 = &unk_1F10F10D8;
      *(v17 + 8) = v218;
      *(v17 + 16) = v6;
      *v619 = v17;
      if ((v594[0] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::dataTaskWillPerformHTTPRedirection(this, *v571, &v571[8], v581, v619);
      v319 = *v619;
      *v619 = 0;
      if (v319)
      {
        (*(*v319 + 8))(v319);
      }

LABEL_412:
      if (v594[0] == 1)
      {
        WebCore::ResourceRequest::~ResourceRequest(v581);
        v320 = v579;
        v579 = 0;
        if (v320)
        {
          CFRelease(v320);
        }

LABEL_415:
        WebCore::ResourceResponseBase::~ResourceResponseBase(&v571[8], v12);
      }

      goto LABEL_1098;
    case 0x210:
      v141 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v142 & 1) != 0 && (v143 = v141, v144 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a3), (v144 & 0x100000000) != 0) && (v145 = v144, v146 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataFetchOption>>(a3), v146 > 0xFFu) && (v147 = v146, IPC::Decoder::decode<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a3, v619), v619[16] == 1))
      {
        *v571 = v143;
        *&v571[8] = v145;
        v571[12] = v147;
        v149 = *v619;
        *v619 = 0;
        *&v571[16] = v149;
        v150 = *&v619[8];
        *&v619[8] = 0;
        *&v571[24] = v150;
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v619, v148);
        v571[32] = 1;
      }

      else
      {
        v571[0] = 0;
        v571[32] = 0;
        v12 = *a3;
        v340 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v341 = *(a3 + 3);
        if (!v341)
        {
          goto LABEL_520;
        }

        if (!v340)
        {
          goto LABEL_520;
        }

        (*(*v341 + 16))(v341, v12);
        if ((v571[32] & 1) == 0)
        {
          goto LABEL_520;
        }
      }

      v151 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_520;
      }

      v152 = v151;
      while (1)
      {
        v153 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v154 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v154, v153 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v154 == v153)
        {
          goto LABEL_517;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_517:
      v17 = WTF::fastMalloc(v153, 0x18);
      *v17 = &unk_1F10F0F98;
      *(v17 + 8) = v152;
      *(v17 + 16) = v6;
      *v619 = v17;
      if ((v571[32] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::deleteWebsiteDataInUIProcessForRegistrableDomains(this, *v571, *&v571[8], v571[12], &v571[16], v619);
      v349 = *v619;
      *v619 = 0;
      if (v349)
      {
        (*(*v349 + 8))(v349);
      }

LABEL_520:
      if (v571[32] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v571[16], v12);
      }

      goto LABEL_1098;
    case 0x211:
      v234 = IPC::Decoder::decode<WTF::OptionSet<WebKit::WebsiteDataType>>(a3);
      if ((v234 & 0x100000000) == 0)
      {
        goto LABEL_1097;
      }

      v235 = v234;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v619);
      if ((BYTE8(v621) & 1) == 0)
      {
        v418 = *a3;
        v419 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v420 = *(a3 + 3);
        if (!v420)
        {
          goto LABEL_1097;
        }

        if (!v419)
        {
          goto LABEL_1097;
        }

        (*(*v420 + 16))(v420, v418);
        if ((BYTE8(v621) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v236 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v12)
      {
        v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v12)
        {
          if ((BYTE8(v621) & 1) == 0)
          {
            goto LABEL_1032;
          }

          v10 = v17;
          *v571 = v235;
          v571[8] = 0;
          v571[32] = -1;
          if (v619[24])
          {
            if (v619[24] == 255)
            {
LABEL_264:
              v571[40] = 0;
              v571[64] = -1;
              if (v621)
              {
                if (v621 == 255)
                {
                  goto LABEL_267;
                }

                *&v571[40] = *&v619[32];
              }

              else
              {
                v238 = *&v619[32];
                *&v619[40] = 0;
                *&v619[32] = 0;
                *&v571[40] = v238;
                *&v571[56] = v620;
              }

              v571[64] = v621;
LABEL_267:
              *&v571[72] = v236;
              *&v571[80] = v17;
              v239 = 1;
              goto LABEL_445;
            }

            *&v571[8] = *v619;
          }

          else
          {
            v237 = *v619;
            *&v619[8] = 0;
            *v619 = 0;
            *&v571[8] = v237;
            *&v571[24] = *&v619[16];
          }

          v571[32] = v619[24];
          goto LABEL_264;
        }
      }

      v239 = 0;
      v571[0] = 0;
LABEL_445:
      v571[88] = v239;
      if (BYTE8(v621))
      {
        if (!v621)
        {
          v330 = *&v619[40];
          *&v619[40] = 0;
          if (v330 && atomic_fetch_add_explicit(v330, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v330, v12);
          }

          v331 = *&v619[32];
          *&v619[32] = 0;
          if (v331 && atomic_fetch_add_explicit(v331, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v331, v12);
          }
        }

        LOBYTE(v621) = -1;
        if (!v619[24])
        {
          v332 = *&v619[8];
          *&v619[8] = 0;
          if (v332 && atomic_fetch_add_explicit(v332, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v332, v12);
          }

          v333 = *v619;
          *v619 = 0;
          if (v333 && atomic_fetch_add_explicit(v333, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v333, v12);
          }
        }
      }

      if ((v239 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v334 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_946;
      }

      v335 = v334;
      while (1)
      {
        v336 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v337 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v337, v336 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v337 == v336)
        {
          goto LABEL_467;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_467:
      v338 = WTF::fastMalloc(v336, 0x18);
      *v338 = &unk_1F10F1178;
      v338[1] = v335;
      v338[2] = v6;
      *v619 = v338;
      WebKit::NetworkProcessProxy::deleteWebsiteDataInWebProcessesForOrigin(this, *v571, &v571[8], v236, v10, v619);
      v339 = *v619;
      *v619 = 0;
      if (v339)
      {
        (*(*v339 + 8))(v339);
      }

      if (v571[88])
      {
        goto LABEL_946;
      }

      goto LABEL_1098;
    case 0x212:
      v113 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v114 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v115 = *(a3 + 1);
      v116 = *(a3 + 2);
      v117 = *a3;
      if (v115 <= &v116[-*a3])
      {
        goto LABEL_966;
      }

      *(a3 + 2) = v116 + 1;
      if (!v116)
      {
        goto LABEL_968;
      }

      v118 = *v116;
      if (v118 >= 2)
      {
        goto LABEL_1096;
      }

      v119 = v113;
      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v619);
      if ((v619[40] & 1) == 0)
      {
        v491 = *a3;
        v492 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v493 = *(a3 + 3);
        if (!v493)
        {
          goto LABEL_1097;
        }

        if (!v492)
        {
          goto LABEL_1097;
        }

        (*(*v493 + 16))(v493, v491);
        if ((v619[40] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      *v571 = v119;
      v571[8] = v118;
      *&v571[16] = *v619;
      *&v571[24] = *&v619[8];
      *&v571[40] = *&v619[24];
      v571[56] = 1;
      WebKit::NetworkProcessProxy::didAllowPrivateTokenUsageByThirdPartyForTesting(this, v119, v118 & 1, &v571[16]);
      if (v571[56])
      {
        goto LABEL_1082;
      }

      goto LABEL_1098;
    case 0x213:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(v571, a3);
      if (v571[48] == 1)
      {
        WebKit::NetworkProcessProxy::didBlockLoadToKnownTracker(this, *v571, &v571[8]);
        goto LABEL_273;
      }

      goto LABEL_1098;
    case 0x214:
      v95 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::didCommitCrossSiteLoadWithDataTransferFromPrevalentResource(this, v95);
      }

      goto LABEL_1098;
    case 0x215:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(v571, a3);
      if (v571[48] == 1)
      {
        WebKit::NetworkProcessProxy::didNegotiateModernTLS(this, *v571, &v571[8]);
        goto LABEL_273;
      }

      goto LABEL_1098;
    case 0x216:
      v195 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v196 & 1) == 0 || (v197 = v195, v198 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v199 & 1) == 0))
      {
        v571[0] = 0;
        LOBYTE(v596) = 0;
        goto LABEL_735;
      }

      v200 = v198;
      IPC::Decoder::decode<std::optional<WebCore::SecurityOriginData>>(a3, v642);
      if (v642[40] != 1)
      {
        v571[0] = 0;
        LOBYTE(v596) = 0;
        goto LABEL_1071;
      }

      IPC::Decoder::decode<WebCore::AuthenticationChallenge>(v619, a3);
      if (v641 != 1)
      {
        v571[0] = 0;
        LOBYTE(v596) = 0;
        goto LABEL_1062;
      }

      v201 = *(a3 + 1);
      v202 = *(a3 + 2);
      v12 = *a3;
      if (v201 <= &v202[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v558 = *(a3 + 3);
        if (v558)
        {
          if (v201)
          {
            (*(*v558 + 16))(v558);
            v201 = *(a3 + 1);
          }
        }

        else
        {
          v201 = 0;
        }

        goto LABEL_1051;
      }

      *(a3 + 2) = v202 + 1;
      if (!v202)
      {
LABEL_1051:
        *a3 = 0;
        *(a3 + 1) = 0;
        v559 = *(a3 + 3);
        if (v559)
        {
          if (v201)
          {
            (*(*v559 + 16))(v559);
            v12 = *a3;
            v201 = *(a3 + 1);
            goto LABEL_1054;
          }
        }

        else
        {
          v201 = 0;
        }

        v12 = 0;
LABEL_1054:
        *a3 = 0;
        *(a3 + 1) = 0;
        v560 = *(a3 + 3);
        if (v560 && v201)
        {
          (*(*v560 + 16))(v560, v12);
        }

        goto LABEL_1055;
      }

      v203 = *v202;
      if (v203 >= 2)
      {
        goto LABEL_1054;
      }

      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v12)
      {
        if ((v642[40] & 1) == 0 || (v641 & 1) == 0)
        {
          goto LABEL_1032;
        }

        v204 = v17;
        *v571 = v197;
        *&v571[8] = v200;
        v571[16] = 0;
        v571[48] = 0;
        if (v642[32] != 1)
        {
          goto LABEL_214;
        }

        v571[40] = -1;
        if (v642[24])
        {
          if (v642[24] == 255)
          {
            goto LABEL_691;
          }

          *&v571[16] = *v642;
        }

        else
        {
          v408 = *v642;
          *&v642[8] = 0;
          *v642 = 0;
          *&v571[16] = v408;
          *&v571[32] = *&v642[16];
        }

        v571[40] = v642[24];
LABEL_691:
        v571[48] = 1;
LABEL_214:
        WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v571[56], v619);
        v205 = v640;
        v640 = 0uLL;
        *&v594[8] = v205;
        LOBYTE(v595) = v203;
        *(&v595 + 1) = v204;
        v206 = 1;
        goto LABEL_1056;
      }

LABEL_1055:
      v206 = 0;
      v571[0] = 0;
LABEL_1056:
      LOBYTE(v596) = v206;
      if (v641)
      {
        v561 = *(&v640 + 1);
        *(&v640 + 1) = 0;
        if (v561)
        {
          CFRelease(v561);
        }

        v562 = v640;
        *&v640 = 0;
        if (v562)
        {
          CFRelease(v562);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v619, v12);
      }

LABEL_1062:
      if ((v642[40] & 1) != 0 && v642[32] == 1 && !v642[24])
      {
        v563 = *&v642[8];
        *&v642[8] = 0;
        if (v563 && atomic_fetch_add_explicit(v563, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v563, v12);
        }

        v564 = *v642;
        *v642 = 0;
        if (v564 && atomic_fetch_add_explicit(v564, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v564, v12);
        }
      }

LABEL_1071:
      if (v596)
      {
        goto LABEL_1072;
      }

LABEL_735:
      v12 = *a3;
      v423 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v424 = *(a3 + 3);
      if (!v424)
      {
        goto LABEL_1098;
      }

      if (!v423)
      {
        goto LABEL_1098;
      }

      (*(*v424 + 16))(v424, v12);
      if ((v596 & 1) == 0)
      {
        goto LABEL_1098;
      }

LABEL_1072:
      WebKit::NetworkProcessProxy::didReceiveAuthenticationChallenge(this, *v571, *&v571[8], &v571[16], &v571[56], v595, *(&v595 + 1));
      if (v596)
      {
        v565 = *&v594[16];
        *&v594[16] = 0;
        if (v565)
        {
          CFRelease(v565);
        }

        v566 = *&v594[8];
        *&v594[8] = 0;
        if (v566)
        {
          CFRelease(v566);
        }

        WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v571[56], v12);
        if (v571[48] == 1 && !v571[40])
        {
          goto LABEL_1079;
        }
      }

LABEL_1098:
      if (this)
      {
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v8, v12);
      }

      return;
    case 0x217:
      v82 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::endServiceWorkerBackgroundProcessing(this, v82);
      }

      goto LABEL_1098;
    case 0x218:
      v133 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a3);
      if ((v133 & 0x100) == 0)
      {
        goto LABEL_1097;
      }

      v134 = v133;
      IPC::Decoder::decode<WebCore::Site>(a3, v608);
      if (v609 != 1)
      {
        goto LABEL_1097;
      }

      IPC::ArgumentCoder<std::optional<PAL::SessionID>,void>::decode<IPC::Decoder>(a3, v642);
      if (v642[16] & 1) != 0 || (v12 = *a3, v447 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v448 = *(a3 + 3)) != 0) && v447 && ((*(*v448 + 16))(v448, v12), (v642[16]))
      {
        IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::decode<IPC::Decoder>(a3, v619);
        if ((v620 & 1) != 0 || (v12 = *a3, v449 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v450 = *(a3 + 3)) != 0) && v449 && ((*(*v450 + 16))(v450, v12), (v620)) && (v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v12))
        {
          if ((v609 & 1) == 0 || (v642[16] & 1) == 0 || (v620 & 1) == 0)
          {
            goto LABEL_1032;
          }

          v10 = v17;
          v571[0] = v134;
          v135 = v608[0];
          if (v608[0])
          {
            atomic_fetch_add_explicit(v608[0], 2u, memory_order_relaxed);
          }

          *&v571[8] = v135;
          v136 = v608[1];
          if (v608[1])
          {
            atomic_fetch_add_explicit(v608[1], 2u, memory_order_relaxed);
          }

          *&v571[16] = v136;
          *&v571[24] = *v642;
          *&v571[48] = *v619;
          *&v571[64] = *&v619[16];
          *&v571[80] = *&v619[32];
          *&v571[96] = v17;
          v137 = 1;
        }

        else
        {
          v134 = 0;
          v137 = 0;
          v571[0] = 0;
        }

        BYTE8(v572) = v137;
      }

      else
      {
        v134 = 0;
        v137 = 0;
        v571[0] = 0;
        BYTE8(v572) = 0;
      }

      if (v609)
      {
        v451 = v608[1];
        v608[1] = 0;
        if (v451 && atomic_fetch_add_explicit(v451, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v451, v12);
        }

        v452 = v608[0];
        v608[0] = 0;
        if (v452 && atomic_fetch_add_explicit(v452, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v452, v12);
        }
      }

      if ((v137 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v453 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_954;
      }

      v454 = v453;
      while (1)
      {
        v455 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v456 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v456, v455 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v456 == v455)
        {
          goto LABEL_801;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_801:
      v457 = WTF::fastMalloc(v455, 0x18);
      *v457 = &unk_1F10F1010;
      v457[1] = v454;
      v457[2] = v6;
      *v642 = v457;
      *v619 = *&v571[48];
      *&v619[16] = *&v571[64];
      *&v619[32] = *&v571[80];
      WebKit::NetworkProcessProxy::establishRemoteWorkerContextConnectionToNetworkProcess(this, v134, &v571[8], *&v571[24], v571[32], v619, v10, v642);
      v458 = *v642;
      *v642 = 0;
      if (v458)
      {
        (*(*v458 + 8))(v458);
      }

      if (BYTE8(v572))
      {
        goto LABEL_954;
      }

      goto LABEL_1098;
    case 0x219:
      v75 = IPC::Decoder::decode<std::tuple<PAL::SessionID>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v76 = v75;
      v77 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v78 = v77;
      while (1)
      {
        v79 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v80 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v80, v79 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v80 == v79)
        {
          goto LABEL_395;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_395:
      v314 = WTF::fastMalloc(v79, 0x18);
      *v314 = &unk_1F10F1038;
      v314[1] = v78;
      v314[2] = v6;
      *v571 = v314;
      WebKit::NetworkProcessProxy::getAppBoundDomains(this, v76, v571);
      v315 = *v571;
      *v571 = 0;
      if (v315)
      {
        goto LABEL_396;
      }

      goto LABEL_1098;
    case 0x21A:
      v162 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v163 = v162;
      v164 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v165 = v164;
      while (1)
      {
        v166 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v167 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v167, v166 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v167 == v166)
        {
          goto LABEL_398;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_398:
      v316 = WTF::fastMalloc(v166, 0x18);
      *v316 = &unk_1F10F1088;
      v316[1] = v165;
      v316[2] = v6;
      *v571 = v316;
      WebKit::NetworkProcessProxy::getPaymentCoordinatorEmbeddingUserAgent(this, v163, v571);
      v315 = *v571;
      *v571 = 0;
      if (v315)
      {
LABEL_396:
        (*(*v315 + 8))(v315);
      }

      goto LABEL_1098;
    case 0x21B:
      v221 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v222 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v223 = v221;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v619);
      if ((BYTE8(v621) & 1) == 0)
      {
        v415 = *a3;
        v416 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v417 = *(a3 + 3);
        if (!v417)
        {
          goto LABEL_1097;
        }

        if (!v416)
        {
          goto LABEL_1097;
        }

        (*(*v417 + 16))(v417, v415);
        if ((BYTE8(v621) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a3);
      v224 = v17;
      if ((v12 & 1) == 0)
      {
        goto LABEL_928;
      }

      v225 = *(a3 + 1);
      v226 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = *a3;
      v227 = v226 - *a3;
      v174 = v225 >= v227;
      v228 = v225 - v227;
      if (!v174 || v228 <= 7)
      {
        goto LABEL_924;
      }

      *(a3 + 2) = v226 + 1;
      if (!v226)
      {
        goto LABEL_927;
      }

      v9 = *v226;
      v229 = ((v226 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v225 < v229 - v12 || v225 - (v229 - v12) <= 7)
      {
        goto LABEL_924;
      }

      *(a3 + 2) = v229 + 1;
      if (!v229)
      {
        goto LABEL_927;
      }

      v10 = *v229;
      v230 = ((v229 + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v225 < v230 - v12 || v225 - (v230 - v12) <= 7)
      {
LABEL_924:
        *a3 = 0;
        *(a3 + 1) = 0;
        v523 = *(a3 + 3);
        if (v523)
        {
          if (v225)
          {
            (*(*v523 + 16))(v523);
            v12 = *a3;
            v225 = *(a3 + 1);
            goto LABEL_927;
          }
        }

        else
        {
          v225 = 0;
        }

        v12 = 0;
      }

      else
      {
        *(a3 + 2) = v230 + 1;
        if (v230)
        {
          if ((BYTE8(v621) & 1) == 0)
          {
            goto LABEL_1032;
          }

          v3 = *v230;
          *v571 = v223;
          v571[8] = 0;
          v571[32] = -1;
          if (v619[24])
          {
            if (v619[24] == 255)
            {
LABEL_250:
              v571[40] = 0;
              v571[64] = -1;
              if (v621)
              {
                if (v621 == 255)
                {
                  goto LABEL_253;
                }

                *&v571[40] = *&v619[32];
              }

              else
              {
                v232 = *&v619[32];
                *&v619[40] = 0;
                *&v619[32] = 0;
                *&v571[40] = v232;
                *&v571[56] = v620;
              }

              v571[64] = v621;
LABEL_253:
              *&v571[72] = v17;
              *&v571[80] = v9;
              v233 = 1;
              *&v571[88] = v10;
              *&v571[96] = v3;
              goto LABEL_929;
            }

            *&v571[8] = *v619;
          }

          else
          {
            v231 = *v619;
            *&v619[8] = 0;
            *v619 = 0;
            *&v571[8] = v231;
            *&v571[24] = *&v619[16];
          }

          v571[32] = v619[24];
          goto LABEL_250;
        }
      }

LABEL_927:
      *a3 = 0;
      *(a3 + 1) = 0;
      v524 = *(a3 + 3);
      if (v524 && v225)
      {
        (*(*v524 + 16))(v524);
      }

LABEL_928:
      v233 = 0;
      v571[0] = 0;
LABEL_929:
      LOBYTE(v572) = v233;
      if (BYTE8(v621))
      {
        if (!v621)
        {
          v525 = *&v619[40];
          *&v619[40] = 0;
          if (v525 && atomic_fetch_add_explicit(v525, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v525, v12);
          }

          v526 = *&v619[32];
          *&v619[32] = 0;
          if (v526 && atomic_fetch_add_explicit(v526, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v526, v12);
          }
        }

        LOBYTE(v621) = -1;
        if (!v619[24])
        {
          v527 = *&v619[8];
          *&v619[8] = 0;
          if (v527 && atomic_fetch_add_explicit(v527, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v527, v12);
          }

          v528 = *v619;
          *v619 = 0;
          if (v528 && atomic_fetch_add_explicit(v528, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v528, v12);
          }
        }
      }

      if ((v233 & 1) == 0)
      {
        goto LABEL_1097;
      }

      WebKit::NetworkProcessProxy::increaseQuota(this, *v571, &v571[8], v224, v9, v10, v3);
      if (v572)
      {
LABEL_946:
        if (v571[64])
        {
          goto LABEL_953;
        }

        goto LABEL_947;
      }

      goto LABEL_1098;
    case 0x21C:
      v264 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v265 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v266 = v264;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v642);
      if ((v642[8] & 1) == 0)
      {
        v506 = *a3;
        v507 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v508 = *(a3 + 3);
        if (!v508)
        {
          goto LABEL_1097;
        }

        if (!v507)
        {
          goto LABEL_1097;
        }

        (*(*v508 + 16))(v508, v506);
        if ((v642[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v619);
      if (v619[8] & 1) != 0 || (v12 = *a3, v516 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v517 = *(a3 + 3)) != 0) && v516 && ((*(*v517 + 16))(v517, v12), (v619[8]))
      {
        v17 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
        if ((v17 & 0x100) != 0)
        {
          if ((v642[8] & 1) == 0 || (v619[8] & 1) == 0)
          {
            goto LABEL_1032;
          }

          LOBYTE(v9) = v17;
          v343 = *v642;
          *v642 = 0;
          *v571 = v266;
          *&v571[8] = v343;
          *&v571[16] = *v619;
          v571[24] = v17;
          v268 = 1;
          v571[32] = 1;
        }

        else
        {
          v571[0] = 0;
          v571[32] = 0;
          if (v619[8])
          {
            v267 = *v619;
            *v619 = 0;
            if (v267)
            {
              if (atomic_fetch_add_explicit(v267, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v267, v12);
              }
            }
          }

          v268 = 0;
        }
      }

      else
      {
        v268 = 0;
        v571[0] = 0;
        v571[32] = 0;
      }

      if (v642[8])
      {
        v344 = *v642;
        *v642 = 0;
        if (v344)
        {
          if (atomic_fetch_add_explicit(v344, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v344, v12);
          }
        }
      }

      if (v268)
      {
        WebKit::NetworkProcessProxy::logDiagnosticMessage(this, *v571, &v571[8], &v571[16], v9 & 1);
        goto LABEL_514;
      }

      goto LABEL_1097;
    case 0x21D:
      v168 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v169 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v170 = v168;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v642);
      if ((v642[8] & 1) == 0)
      {
        v500 = *a3;
        v501 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v502 = *(a3 + 3);
        if (!v502)
        {
          goto LABEL_1097;
        }

        if (!v501)
        {
          goto LABEL_1097;
        }

        (*(*v502 + 16))(v502, v500);
        if ((v642[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v619);
      if ((v619[8] & 1) == 0)
      {
        v12 = *a3;
        v512 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v513 = *(a3 + 3);
        if (!v513 || !v512 || ((*(*v513 + 16))(v513, v12), (v619[8] & 1) == 0))
        {
          v176 = 0;
          v571[0] = 0;
          v571[32] = 0;
          goto LABEL_508;
        }
      }

      v171 = *(a3 + 1);
      v172 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v12 = *a3;
      v173 = v172 - *a3;
      v174 = v171 >= v173;
      v175 = v171 - v173;
      if (v174 && v175 > 3)
      {
        *(a3 + 2) = v172 + 1;
        if (v172)
        {
          v9 = *v172;
          v17 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
          if ((v17 & 0x100) == 0)
          {
LABEL_183:
            v176 = 0;
            v571[0] = 0;
            goto LABEL_504;
          }

          if ((v642[8] & 1) == 0 || (v619[8] & 1) == 0)
          {
            goto LABEL_1032;
          }

          LOBYTE(v10) = v17;
          v345 = *v642;
          *v642 = 0;
          *v571 = v170;
          *&v571[8] = v345;
          v346 = *v619;
          *v619 = 0;
          *&v571[16] = v346;
          *&v571[24] = v9;
          v571[28] = v17;
          v176 = 1;
LABEL_504:
          v571[32] = v176;
          if (v619[8])
          {
            v347 = *v619;
            *v619 = 0;
            if (v347)
            {
              if (atomic_fetch_add_explicit(v347, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v347, v12);
              }
            }
          }

LABEL_508:
          if (v642[8])
          {
            v348 = *v642;
            *v642 = 0;
            if (v348)
            {
              if (atomic_fetch_add_explicit(v348, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v348, v12);
              }
            }
          }

          if (v176)
          {
            WebKit::NetworkProcessProxy::logDiagnosticMessageWithResult(this, *v571, &v571[8], &v571[16], v9, v10 & 1);
LABEL_514:
            if ((v571[32] & 1) == 0)
            {
              goto LABEL_1098;
            }

            goto LABEL_954;
          }

          goto LABEL_1097;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v532 = *(a3 + 3);
        if (v532)
        {
          if (v171)
          {
            (*(*v532 + 16))(v532);
            v12 = *a3;
            v171 = *(a3 + 1);
            goto LABEL_963;
          }
        }

        else
        {
          v171 = 0;
        }

        v12 = 0;
      }

LABEL_963:
      *a3 = 0;
      *(a3 + 1) = 0;
      v533 = *(a3 + 3);
      if (v533 && v171)
      {
        (*(*v533 + 16))(v533);
      }

      goto LABEL_183;
    case 0x21E:
      v185 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v186 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v187 = v185;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v642);
      if ((v642[8] & 1) == 0)
      {
        v503 = *a3;
        v504 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v505 = *(a3 + 3);
        if (!v505)
        {
          goto LABEL_1097;
        }

        if (!v504)
        {
          goto LABEL_1097;
        }

        (*(*v505 + 16))(v505, v503);
        if ((v642[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v619);
      if ((v619[8] & 1) == 0)
      {
        v12 = *a3;
        v514 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v515 = *(a3 + 3);
        if (!v515 || !v514 || ((*(*v515 + 16))(v515, v12), (v619[8] & 1) == 0))
        {
          v194 = 0;
          v571[0] = 0;
          v571[40] = 0;
          goto LABEL_590;
        }
      }

      v188 = IPC::Decoder::decode<unsigned long long>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_202;
      }

      v189 = *(a3 + 1);
      v190 = ((*(a3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
      v12 = *a3;
      v191 = v190 - *a3;
      v174 = v189 >= v191;
      v192 = v189 - v191;
      if (v174 && v192 > 3)
      {
        *(a3 + 2) = v190 + 1;
        if (v190)
        {
          v193 = *&v188;
          v6 = *v190;
          v17 = IPC::Decoder::decode<WebKit::UseDownloadPlaceholder>(a3);
          if ((v17 & 0x100) != 0)
          {
            if ((v642[8] & 1) == 0 || (v619[8] & 1) == 0)
            {
              goto LABEL_1032;
            }

            LOBYTE(v9) = v17;
            v369 = *v642;
            *v642 = 0;
            *v571 = v187;
            *&v571[8] = v369;
            v370 = *v619;
            *v619 = 0;
            *&v571[16] = v370;
            *&v571[24] = v193;
            *&v571[32] = v6;
            v571[36] = v17;
            v4 = v193;
            v194 = 1;
LABEL_586:
            v571[40] = v194;
            if (v619[8])
            {
              v371 = *v619;
              *v619 = 0;
              if (v371)
              {
                if (atomic_fetch_add_explicit(v371, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v371, v12);
                }
              }
            }

LABEL_590:
            if (v642[8])
            {
              v372 = *v642;
              *v642 = 0;
              if (v372)
              {
                if (atomic_fetch_add_explicit(v372, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v372, v12);
                }
              }
            }

            if (v194)
            {
              WebKit::NetworkProcessProxy::logDiagnosticMessageWithValue(v4, this, *v571, &v571[8], &v571[16], v6, v9 & 1);
              if ((v571[40] & 1) == 0)
              {
                goto LABEL_1098;
              }

LABEL_954:
              v531 = *&v571[16];
              *&v571[16] = 0;
              if (v531 && atomic_fetch_add_explicit(v531, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v531, v12);
              }

              goto LABEL_957;
            }

LABEL_1097:
            v12 = *a3;
            v569 = *(a3 + 1);
            *a3 = 0;
            *(a3 + 1) = 0;
            v570 = *(a3 + 3);
            if (v570 && v569)
            {
              (*(*v570 + 16))(v570, v12);
            }

            goto LABEL_1098;
          }

LABEL_202:
          v194 = 0;
          v571[0] = 0;
          goto LABEL_586;
        }
      }

      else
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v536 = *(a3 + 3);
        if (v536)
        {
          if (v189)
          {
            (*(*v536 + 16))(v536);
            v12 = *a3;
            v189 = *(a3 + 1);
            goto LABEL_974;
          }
        }

        else
        {
          v189 = 0;
        }

        v12 = 0;
      }

LABEL_974:
      *a3 = 0;
      *(a3 + 1) = 0;
      v537 = *(a3 + 3);
      if (v537 && v189)
      {
        (*(*v537 + 16))(v537);
      }

      goto LABEL_202;
    case 0x21F:
      IPC::Decoder::decode<std::tuple<PAL::SessionID,WTF::String>>(v571, a3);
      if (v571[16] == 1)
      {
        WebKit::NetworkProcessProxy::logTestingEvent(this, *v571, &v571[8]);
        if (v571[16])
        {
          goto LABEL_957;
        }
      }

      goto LABEL_1098;
    case 0x220:
      v273 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v274 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v275 = v273;
      IPC::ArgumentCoder<WebCore::ProcessQualified<WTF::UUID>,void>::decode(a3, v642);
      if ((v642[32] & 1) == 0)
      {
        goto LABEL_1095;
      }

      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v619);
      if ((v619[40] & 1) == 0)
      {
        v494 = *a3;
        v495 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v496 = *(a3 + 3);
        if (!v496)
        {
          goto LABEL_1097;
        }

        if (!v495)
        {
          goto LABEL_1097;
        }

        (*(*v496 + 16))(v496, v494);
        if ((v619[40] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      *v571 = v275;
      *&v571[16] = *v642;
      *&v571[32] = *&v642[16];
      v276 = *v619;
      *&v571[48] = *v619;
      *&v571[56] = *&v619[8];
      *&v571[72] = *&v619[24];
      v571[96] = 1;
      v277 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_421;
      }

      v278 = v277;
      while (1)
      {
        v279 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v280 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v280, v279 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v280 == v279)
        {
          goto LABEL_417;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_417:
      v321 = WTF::fastMalloc(v279, 0x18);
      *v321 = &unk_1F10F1150;
      v321[1] = v278;
      v321[2] = v6;
      *v642 = v321;
      *v619 = *&v571[16];
      *&v619[16] = *&v571[32];
      WebKit::NetworkProcessProxy::navigateServiceWorkerClient(this, v275, v619, &v571[48], v642);
      v322 = *v642;
      *v642 = 0;
      if (v322)
      {
        (*(*v322 + 8))(v322);
      }

      if ((v571[96] & 1) == 0)
      {
        goto LABEL_1098;
      }

      v276 = *&v571[48];
LABEL_421:
      *&v571[48] = 0;
      if (!v276 || atomic_fetch_add_explicit(v276, 0xFFFFFFFE, memory_order_relaxed) != 2)
      {
        goto LABEL_1098;
      }

      v323 = v276;
      goto LABEL_959;
    case 0x221:
      v127 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::negotiatedLegacyTLS(this, v127);
      }

      goto LABEL_1098;
    case 0x222:
      v120 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v121 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v122 = v120;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v619);
      if ((v619[8] & 1) == 0)
      {
        v497 = *a3;
        v498 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v499 = *(a3 + 3);
        if (!v499)
        {
          goto LABEL_1097;
        }

        if (!v498)
        {
          goto LABEL_1097;
        }

        (*(*v499 + 16))(v499, v497);
        if ((v619[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v123 = *(a3 + 1);
      v124 = *(a3 + 2);
      v125 = *a3;
      if (v123 <= &v124[-*a3])
      {
        *a3 = 0;
        *(a3 + 1) = 0;
        v541 = *(a3 + 3);
        if (v541)
        {
          if (v123)
          {
            (*(*v541 + 16))(v541);
            v123 = *(a3 + 1);
          }
        }

        else
        {
          v123 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v124 + 1;
        if (v124)
        {
          v126 = *v124;
          if (v126 < 3)
          {
            *v571 = v122;
            *&v571[8] = *v619;
            v571[16] = v126;
            v571[24] = 1;
            WebKit::NetworkProcessProxy::notifyBackgroundFetchChange(this, v122, &v571[8], v126);
            if ((v571[24] & 1) == 0)
            {
              goto LABEL_1098;
            }

            goto LABEL_957;
          }

LABEL_991:
          *a3 = 0;
          *(a3 + 1) = 0;
          v543 = *(a3 + 3);
          if (v543 && v123)
          {
            (*(*v543 + 16))(v543, v125);
          }

          if ((v619[8] & 1) == 0)
          {
            goto LABEL_1097;
          }

          v483 = *v619;
          *v619 = 0;
          if (!v483)
          {
            goto LABEL_1097;
          }

LABEL_994:
          if (atomic_fetch_add_explicit(v483, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v483, v125);
          }

          goto LABEL_1097;
        }
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v542 = *(a3 + 3);
      if (v542)
      {
        if (v123)
        {
          (*(*v542 + 16))(v542);
          v125 = *a3;
          v123 = *(a3 + 1);
          goto LABEL_991;
        }
      }

      else
      {
        v123 = 0;
      }

      v125 = 0;
      goto LABEL_991;
    case 0x223:
      v298 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v299 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v300 = v298;
      IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v642);
      if ((v642[8] & 1) == 0)
      {
        v509 = *a3;
        v510 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v511 = *(a3 + 3);
        if (!v511)
        {
          goto LABEL_1097;
        }

        if (!v510)
        {
          goto LABEL_1097;
        }

        (*(*v511 + 16))(v511, v509);
        if ((v642[8] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v17 = IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v619);
      if (v619[32])
      {
        if ((v642[8] & 1) == 0)
        {
          goto LABEL_1032;
        }

        *v571 = v300;
        *&v571[8] = *v642;
        v571[16] = 0;
        v571[40] = -1;
        v301 = v619[24];
        if (v619[24])
        {
          if (v619[24] != 255)
          {
            *&v571[16] = *v619;
            v571[40] = v619[24];
          }
        }

        else
        {
          *&v571[16] = *v619;
          *&v571[32] = *&v619[16];
          v571[40] = 0;
        }

        v571[48] = 1;
        v302 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
        if (v12)
        {
          v303 = v302;
          while (1)
          {
            v304 = *v6;
            if ((*v6 & 1) == 0)
            {
              break;
            }

            v305 = *v6;
            atomic_compare_exchange_strong_explicit(v6, &v305, v304 + 2, memory_order_relaxed, memory_order_relaxed);
            if (v305 == v304)
            {
              goto LABEL_425;
            }
          }

          WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_425:
          v324 = WTF::fastMalloc(v304, 0x18);
          *v324 = &unk_1F10F1128;
          v324[1] = v303;
          v324[2] = v6;
          *v619 = v324;
          WebKit::NetworkProcessProxy::openWindowFromServiceWorker(this, v300, &v571[8], &v571[16], v619);
          v325 = *v619;
          *v619 = 0;
          if (v325)
          {
            (*(*v325 + 8))(v325);
          }

          if ((v571[48] & 1) == 0)
          {
            goto LABEL_1098;
          }

          v301 = v571[40];
        }

        if (!v301)
        {
          v326 = *&v571[24];
          *&v571[24] = 0;
          if (v326 && atomic_fetch_add_explicit(v326, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v326, v12);
          }

          v327 = *&v571[16];
          *&v571[16] = 0;
          if (v327 && atomic_fetch_add_explicit(v327, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v327, v12);
          }
        }

        v571[40] = -1;
        goto LABEL_957;
      }

      v125 = *a3;
      v481 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v482 = *(a3 + 3);
      if (v482 && v481)
      {
        (*(*v482 + 16))(v482, v125);
      }

      if ((v642[8] & 1) == 0)
      {
        goto LABEL_1097;
      }

      v483 = *v642;
      *v642 = 0;
      if (!v483)
      {
        goto LABEL_1097;
      }

      goto LABEL_994;
    case 0x224:
      v63 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::processHasUnresponseServiceWorker(this, v63);
      }

      goto LABEL_1098;
    case 0x225:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v571, a3);
      if (v571[24] == 1)
      {
        WebKit::NetworkProcessProxy::registerRemoteWorkerClientProcess(this, v571[0], *&v571[8], *&v571[16]);
      }

      goto LABEL_1098;
    case 0x226:
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v619);
      if ((BYTE8(v621) & 1) == 0)
      {
        v409 = *a3;
        v410 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v411 = *(a3 + 3);
        if (!v411)
        {
          goto LABEL_1097;
        }

        if (!v410)
        {
          goto LABEL_1097;
        }

        (*(*v411 + 16))(v411, v409);
        if ((BYTE8(v621) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      v281 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v12)
      {
        v17 = IPC::ArgumentCoder<std::optional<WTF::ObjectIdentifierGeneric<WebCore::FrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,void>::decode<IPC::Decoder>(a3, v642);
        if ((v642[16] & 1) == 0)
        {
          v12 = *a3;
          v486 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v487 = *(a3 + 3);
          if (!v487 || !v486 || (v17 = (*(*v487 + 16))(v487, v12), (v642[16] & 1) == 0))
          {
            v284 = 0;
            v571[0] = 0;
            goto LABEL_343;
          }
        }

        if ((BYTE8(v621) & 1) == 0)
        {
          goto LABEL_1032;
        }

        v571[0] = 0;
        v571[24] = -1;
        if (v619[24])
        {
          if (v619[24] == 255)
          {
LABEL_339:
            v571[32] = 0;
            v571[56] = -1;
            if (v621)
            {
              if (v621 == 255)
              {
                goto LABEL_342;
              }

              *&v571[32] = *&v619[32];
            }

            else
            {
              v283 = *&v619[32];
              *&v619[40] = 0;
              *&v619[32] = 0;
              *&v571[32] = v283;
              *&v571[48] = v620;
            }

            v571[56] = v621;
LABEL_342:
            *&v571[64] = v281;
            *&v571[72] = *v642;
            v284 = 1;
LABEL_343:
            v571[88] = v284;
            goto LABEL_524;
          }

          *v571 = *v619;
        }

        else
        {
          v282 = *v619;
          *&v619[8] = 0;
          *v619 = 0;
          *v571 = v282;
          *&v571[16] = *&v619[16];
        }

        v571[24] = v619[24];
        goto LABEL_339;
      }

      v284 = 0;
      v571[0] = 0;
      v571[88] = 0;
LABEL_524:
      if (BYTE8(v621))
      {
        if (!v621)
        {
          v350 = *&v619[40];
          *&v619[40] = 0;
          if (v350 && atomic_fetch_add_explicit(v350, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v350, v12);
          }

          v351 = *&v619[32];
          *&v619[32] = 0;
          if (v351 && atomic_fetch_add_explicit(v351, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v351, v12);
          }
        }

        LOBYTE(v621) = -1;
        if (!v619[24])
        {
          v352 = *&v619[8];
          *&v619[8] = 0;
          if (v352 && atomic_fetch_add_explicit(v352, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v352, v12);
          }

          v353 = *v619;
          *v619 = 0;
          if (v353 && atomic_fetch_add_explicit(v353, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v353, v12);
          }
        }
      }

      if ((v284 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v354 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v12)
      {
        v355 = v354;
        while (1)
        {
          v356 = *v6;
          if ((*v6 & 1) == 0)
          {
            break;
          }

          v357 = *v6;
          atomic_compare_exchange_strong_explicit(v6, &v357, v356 + 2, memory_order_relaxed, memory_order_relaxed);
          if (v357 == v356)
          {
            goto LABEL_546;
          }
        }

        WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_546:
        v358 = WTF::fastMalloc(v356, 0x18);
        *v358 = &unk_1F10F11A0;
        v358[1] = v355;
        v358[2] = v6;
        *v619 = v358;
        WebKit::NetworkProcessProxy::reloadExecutionContextsForOrigin(this, v571, v281, *&v571[72], *&v571[80], v619);
        v359 = *v619;
        *v619 = 0;
        if (v359)
        {
          (*(*v359 + 8))(v359);
        }

        if ((v571[88] & 1) == 0)
        {
          goto LABEL_1098;
        }
      }

      if (!v571[56])
      {
        v360 = *&v571[40];
        *&v571[40] = 0;
        if (v360 && atomic_fetch_add_explicit(v360, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v360, v12);
        }

        v361 = *&v571[32];
        *&v571[32] = 0;
        if (v361 && atomic_fetch_add_explicit(v361, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v361, v12);
        }
      }

      v571[56] = -1;
      if (v571[24])
      {
        goto LABEL_1098;
      }

      v362 = *&v571[8];
      *&v571[8] = 0;
      if (v362 && atomic_fetch_add_explicit(v362, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v362, v12);
      }

      v323 = *v571;
      *v571 = 0;
      if (!v323)
      {
        goto LABEL_1098;
      }

      goto LABEL_958;
    case 0x227:
      v240 = IPC::Decoder::decode<WebKit::RemoteWorkerType>(a3);
      if ((v240 & 0x100) == 0)
      {
        goto LABEL_1097;
      }

      v241 = v240;
      v242 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v243 & 1) == 0)
      {
        goto LABEL_1097;
      }

      WebKit::NetworkProcessProxy::remoteWorkerContextConnectionNoLongerNeeded(this, v241, v242);
      goto LABEL_1098;
    case 0x228:
      v156 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v157 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v158 = v156;
      IPC::ArgumentCoder<WTF::URL,void>::decode(a3, v619);
      if ((v619[40] & 1) == 0)
      {
        v488 = *a3;
        v489 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v490 = *(a3 + 3);
        if (!v490)
        {
          goto LABEL_1097;
        }

        if (!v489)
        {
          goto LABEL_1097;
        }

        (*(*v490 + 16))(v490, v488);
        if ((v619[40] & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      IPC::ArgumentCoder<WebCore::SecurityOriginData,void>::decode(a3, v642);
      if ((v642[32] & 1) == 0)
      {
        v12 = *a3;
        v484 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v485 = *(a3 + 3);
        if (v485 && v484)
        {
          (*(*v485 + 16))(v485, v12);
        }

        v161 = 0;
        v571[0] = 0;
        LOBYTE(v572) = 0;
LABEL_614:
        if (v619[40])
        {
          v381 = *v619;
          *v619 = 0;
          if (v381)
          {
            if (atomic_fetch_add_explicit(v381, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v381, v12);
            }
          }
        }

        if (v161)
        {
          WebKit::NetworkProcessProxy::reportConsoleMessage(this, *v571, &v571[8], &v571[48], v6, v9, &v571[88], v10);
          if ((v572 & 1) == 0)
          {
            goto LABEL_1098;
          }

          v382 = *&v571[88];
          *&v571[88] = 0;
          if (v382 && atomic_fetch_add_explicit(v382, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v382, v12);
          }

          if (!v571[72])
          {
            v383 = *&v571[56];
            *&v571[56] = 0;
            if (v383 && atomic_fetch_add_explicit(v383, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v383, v12);
            }

            v384 = *&v571[48];
            *&v571[48] = 0;
            if (v384 && atomic_fetch_add_explicit(v384, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v384, v12);
            }
          }

          v571[72] = -1;
LABEL_957:
          v323 = *&v571[8];
          *&v571[8] = 0;
          if (!v323)
          {
            goto LABEL_1098;
          }

          goto LABEL_958;
        }

        goto LABEL_1097;
      }

      v159 = IPC::Decoder::decode<JSC::MessageSource>(a3);
      LOBYTE(v6) = v159;
      if ((v159 & 0x100) == 0 || (v160 = IPC::Decoder::decode<JSC::MessageLevel>(a3), (v160 & 0x100) == 0))
      {
        v161 = 0;
        v571[0] = 0;
        LOBYTE(v572) = 0;
        goto LABEL_607;
      }

      LOBYTE(v9) = v160;
      v17 = IPC::ArgumentCoder<WTF::String,void>::decode<IPC::Decoder>(a3, v608);
      if ((v608[1] & 1) == 0)
      {
        v12 = *a3;
        v518 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v519 = *(a3 + 3);
        if (!v519 || !v518 || (v17 = (*(*v519 + 16))(v519, v12), (v608[1] & 1) == 0))
        {
          v161 = 0;
          v571[0] = 0;
          LOBYTE(v572) = 0;
LABEL_607:
          if (!v642[24])
          {
            v379 = *&v642[8];
            if (*&v642[8] && atomic_fetch_add_explicit(*&v642[8], 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v379, v12);
            }

            v380 = *v642;
            if (*v642 && atomic_fetch_add_explicit(*v642, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v380, v12);
            }
          }

          goto LABEL_614;
        }
      }

      v373 = *(a3 + 1);
      v374 = ((*(a3 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = *a3;
      v375 = v374 - *a3;
      v174 = v373 >= v375;
      v376 = v373 - v375;
      if (v174 && v376 > 7)
      {
        *(a3 + 2) = v374 + 1;
        if (v374)
        {
          if ((v619[40] & 1) == 0)
          {
            goto LABEL_1032;
          }

          v10 = *v374;
          v377 = *v619;
          *v619 = 0;
          *v571 = v158;
          *&v571[8] = v377;
          *&v571[16] = *&v619[8];
          *&v571[32] = *&v619[24];
          *&v619[8] &= ~1u;
          v571[48] = 0;
          v571[72] = -1;
          if (v642[24])
          {
            if (v642[24] == 255)
            {
              goto LABEL_606;
            }

            *&v571[48] = *v642;
          }

          else
          {
            v378 = *v642;
            *&v642[8] = 0;
            *v642 = 0;
            *&v571[48] = v378;
            *&v571[64] = *&v642[16];
          }

          v571[72] = v642[24];
LABEL_606:
          v571[80] = v6;
          v571[81] = v9;
          *&v571[88] = v608[0];
          *&v571[96] = v10;
          v161 = 1;
          LOBYTE(v572) = 1;
          goto LABEL_607;
        }

LABEL_980:
        *a3 = 0;
        *(a3 + 1) = 0;
        v539 = *(a3 + 3);
        if (v539 && v373)
        {
          (*(*v539 + 16))(v539);
        }

        v571[0] = 0;
        LOBYTE(v572) = 0;
        if (v608[1])
        {
          v540 = v608[0];
          v608[0] = 0;
          if (v540)
          {
            if (atomic_fetch_add_explicit(v540, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v540, v12);
            }
          }
        }

        v161 = 0;
        goto LABEL_607;
      }

      *a3 = 0;
      *(a3 + 1) = 0;
      v538 = *(a3 + 3);
      if (v538)
      {
        if (v373)
        {
          (*(*v538 + 16))(v538);
          v12 = *a3;
          v373 = *(a3 + 1);
          goto LABEL_980;
        }
      }

      else
      {
        v373 = 0;
      }

      v12 = 0;
      goto LABEL_980;
    case 0x229:
      IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::URL>>(v571, a3);
      if (v571[48] == 1)
      {
        WebKit::NetworkProcessProxy::reportNetworkIssue(this, *v571, &v571[8]);
LABEL_273:
        if (v571[48])
        {
          goto LABEL_957;
        }
      }

      goto LABEL_1098;
    case 0x22A:
      v83 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v84 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v85 = v83;
      IPC::ArgumentCoder<WebCore::ClientOrigin,void>::decode(a3, v619);
      if ((BYTE8(v621) & 1) == 0)
      {
        v412 = *a3;
        v413 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v414 = *(a3 + 3);
        if (!v414)
        {
          goto LABEL_1097;
        }

        if (!v413)
        {
          goto LABEL_1097;
        }

        (*(*v414 + 16))(v414, v412);
        if ((BYTE8(v621) & 1) == 0)
        {
          goto LABEL_1097;
        }
      }

      *v571 = v85;
      v571[8] = 0;
      v571[32] = -1;
      if (v619[24])
      {
        if (v619[24] == 255)
        {
LABEL_72:
          v571[40] = 0;
          v571[64] = -1;
          v88 = v621;
          if (v621)
          {
            if (v621 != 255)
            {
              *&v571[40] = *&v619[32];
              v571[64] = v621;
            }

            v571[72] = 1;
          }

          else
          {
            *&v571[40] = *&v619[32];
            *&v571[56] = v620;
            v571[64] = 0;
            v571[72] = 1;
            *&v619[32] = 0;
            *&v619[40] = 0;
          }

          LOBYTE(v621) = -1;
          if (!v619[24])
          {
            v89 = *&v619[8];
            *&v619[8] = 0;
            if (v89 && atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v89, v86);
            }

            v90 = *v619;
            *v619 = 0;
            if (v90 && atomic_fetch_add_explicit(v90, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v90, v86);
            }
          }

          v91 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
          if (v12)
          {
            v92 = v91;
            while (1)
            {
              v93 = *v6;
              if ((*v6 & 1) == 0)
              {
                break;
              }

              v94 = *v6;
              atomic_compare_exchange_strong_explicit(v6, &v94, v93 + 2, memory_order_relaxed, memory_order_relaxed);
              if (v94 == v93)
              {
                goto LABEL_438;
              }
            }

            WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_438:
            v328 = WTF::fastMalloc(v93, 0x18);
            *v328 = &unk_1F10F0FE8;
            v328[1] = v92;
            v328[2] = v6;
            *v619 = v328;
            WebKit::NetworkProcessProxy::requestBackgroundFetchPermission(this, v85, &v571[8], v619);
            v329 = *v619;
            *v619 = 0;
            if (v329)
            {
              (*(*v329 + 8))(v329);
            }

            if ((v571[72] & 1) == 0)
            {
              goto LABEL_1098;
            }

            v88 = v571[64];
          }

          if (!v88)
          {
LABEL_947:
            v529 = *&v571[48];
            *&v571[48] = 0;
            if (v529 && atomic_fetch_add_explicit(v529, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v529, v12);
            }

            v530 = *&v571[40];
            *&v571[40] = 0;
            if (v530 && atomic_fetch_add_explicit(v530, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v530, v12);
            }
          }

LABEL_953:
          v571[64] = -1;
          if (v571[32])
          {
            goto LABEL_1098;
          }

          goto LABEL_954;
        }

        *&v571[8] = *v619;
      }

      else
      {
        v87 = *v619;
        *&v619[8] = 0;
        *v619 = 0;
        *&v571[8] = v87;
        *&v571[24] = *&v619[16];
      }

      v571[32] = v619[24];
      goto LABEL_72;
    case 0x22B:
      v64 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v65 & 1) == 0 || (v66 = v64, v67 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3), (v68 & 1) == 0))
      {
        v571[0] = 0;
        v571[72] = 0;
        goto LABEL_730;
      }

      v69 = v67;
      IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, v608);
      if (v608[1])
      {
        IPC::ArgumentCoder<WebCore::RegistrableDomain,void>::decode(a3, v642);
        if ((v642[8] & 1) == 0)
        {
          v428 = *a3;
          v429 = *(a3 + 1);
          *a3 = 0;
          *(a3 + 1) = 0;
          v430 = *(a3 + 3);
          if (v430 && v429)
          {
            (*(*v430 + 16))(v430, v428);
          }

          v571[0] = 0;
          v571[72] = 0;
          goto LABEL_1013;
        }

        v70 = *(a3 + 1);
        v71 = *(a3 + 2);
        v72 = *a3;
        if (v70 <= &v71[-*a3])
        {
          *a3 = 0;
          *(a3 + 1) = 0;
          v544 = *(a3 + 3);
          if (v544)
          {
            if (v70)
            {
              (*(*v544 + 16))(v544);
              v70 = *(a3 + 1);
            }
          }

          else
          {
            v70 = 0;
          }
        }

        else
        {
          *(a3 + 2) = v71 + 1;
          if (v71)
          {
            v73 = *v71;
            if (v73 < 2)
            {
              if (!v73)
              {
                v571[0] = 0;
                v571[32] = 0;
                std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](v619, v571);
                v619[40] = 1;
                if (v571[32] != 1)
                {
                  goto LABEL_1005;
                }

                goto LABEL_563;
              }

              IPC::Decoder::decode<WebCore::OrganizationStorageAccessPromptQuirk>(a3, v571);
              if (v571[32] == 1)
              {
                std::__optional_destruct_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_destruct_base[abi:sn200100]<WebCore::OrganizationStorageAccessPromptQuirk>(v619, v571);
                v619[40] = 1;
                if ((v571[32] & 1) == 0)
                {
                  goto LABEL_1005;
                }

LABEL_563:
                WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v571[16], v74);
                if (*&v571[8])
                {
                  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*&v571[8], v363);
                }

                v364 = *v571;
                *v571 = 0;
                if (v364 && atomic_fetch_add_explicit(v364, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v364, v363);
                }

LABEL_1005:
                if (v619[40] & 1) != 0 || (v428 = *a3, v556 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v557 = *(a3 + 3)) != 0) && v556 && ((*(*v557 + 16))(v557, v428), (v619[40]))
                {
                  *v571 = v66;
                  *&v571[8] = v69;
                  v547 = v608[0];
                  v608[0] = 0;
                  *&v571[16] = v547;
                  *&v571[24] = *v642;
                  std::__optional_move_base<WebCore::OrganizationStorageAccessPromptQuirk,false>::__optional_move_base[abi:sn200100](&v571[32], v619);
                  v571[72] = 1;
                  if ((v619[40] & 1) == 0 || v619[32] != 1)
                  {
                    goto LABEL_1013;
                  }

                  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v619[16], v428);
                  if (*&v619[8])
                  {
                    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*&v619[8], v428);
                  }

                  v548 = *v619;
                  *v619 = 0;
                  if (!v548)
                  {
                    goto LABEL_1013;
                  }
                }

                else
                {
                  v571[0] = 0;
                  v571[72] = 0;
                  v548 = *v642;
                  if (!*v642)
                  {
LABEL_1013:
                    v549 = v608[0];
                    if (v608[0] && atomic_fetch_add_explicit(v608[0], 0xFFFFFFFE, memory_order_relaxed) == 2)
                    {
                      WTF::StringImpl::destroy(v549, v428);
                    }

                    goto LABEL_1016;
                  }
                }

                if (atomic_fetch_add_explicit(v548, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v548, v428);
                }

                goto LABEL_1013;
              }

LABEL_1004:
              v619[0] = 0;
              v619[40] = 0;
              goto LABEL_1005;
            }

            goto LABEL_1003;
          }
        }

        *a3 = 0;
        *(a3 + 1) = 0;
        v545 = *(a3 + 3);
        if (v545)
        {
          if (v70)
          {
            (*(*v545 + 16))(v545);
            v72 = *a3;
            v70 = *(a3 + 1);
            goto LABEL_1003;
          }
        }

        else
        {
          v70 = 0;
        }

        v72 = 0;
LABEL_1003:
        *a3 = 0;
        *(a3 + 1) = 0;
        v546 = *(a3 + 3);
        if (v546 && v70)
        {
          (*(*v546 + 16))(v546, v72);
        }

        goto LABEL_1004;
      }

      v425 = *a3;
      v426 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v427 = *(a3 + 3);
      if (v427 && v426)
      {
        (*(*v427 + 16))(v427, v425);
      }

      v571[0] = 0;
      v571[72] = 0;
LABEL_1016:
      if (v571[72])
      {
        goto LABEL_1017;
      }

LABEL_730:
      v12 = *a3;
      v421 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v422 = *(a3 + 3);
      if (!v422)
      {
        goto LABEL_1026;
      }

      if (!v421)
      {
        goto LABEL_1026;
      }

      (*(*v422 + 16))(v422, v12);
      if ((v571[72] & 1) == 0)
      {
        goto LABEL_1026;
      }

LABEL_1017:
      v550 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_1026;
      }

      v551 = v550;
      while (1)
      {
        v552 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v553 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v553, v552 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v553 == v552)
        {
          goto LABEL_1023;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_1023:
      v17 = WTF::fastMalloc(v552, 0x18);
      *v17 = &unk_1F10F0F70;
      *(v17 + 8) = v551;
      *(v17 + 16) = v6;
      *v619 = v17;
      if ((v571[72] & 1) == 0)
      {
        goto LABEL_1032;
      }

      WebKit::NetworkProcessProxy::requestStorageAccessConfirm(this, *v571, *&v571[8], &v571[16], &v571[24], &v571[32], v619);
      v554 = *v619;
      *v619 = 0;
      if (v554)
      {
        (*(*v554 + 8))(v554);
      }

LABEL_1026:
      if (v571[72] != 1)
      {
        goto LABEL_1098;
      }

      if (v571[64] == 1)
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v571[48], v12);
        v17 = *&v571[40];
        if (*&v571[40])
        {
LABEL_1033:
          WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v17, v12);
        }

        v555 = *&v571[32];
        *&v571[32] = 0;
        if (v555 && atomic_fetch_add_explicit(v555, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v555, v12);
        }
      }

LABEL_1079:
      v567 = *&v571[24];
      *&v571[24] = 0;
      if (v567 && atomic_fetch_add_explicit(v567, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v567, v12);
      }

LABEL_1082:
      v323 = *&v571[16];
      *&v571[16] = 0;
      if (!v323)
      {
        goto LABEL_1098;
      }

      goto LABEL_958;
    case 0x22C:
      v21 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v22)
      {
        v23 = v21;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v642);
        if (v649 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v619);
          if (v639 & 1) != 0 || (v12 = *a3, v471 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v472 = *(a3 + 3)) != 0) && v471 && ((*(*v472 + 16))(v472, v12), (v639))
          {
            IPC::Decoder::decode<WebCore::ResourceError>(a3, v608);
            if (BYTE8(v613) == 1)
            {
              if ((v649 & 1) == 0 || (v639 & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v571 = v23;
              v24 = v646;
              *&v571[80] = *v644;
              *&v571[16] = *v642;
              *&v571[32] = *&v642[16];
              *&v571[48] = *&v642[32];
              *&v571[64] = v643;
              *v644 = 0;
              *&v571[88] = *&v644[8];
              v572 = v645;
              *&v644[8] &= ~1u;
              v646 = 0;
              v575 = v648;
              v573 = v24;
              v574 = v647;
              *v577 = *&v619[8];
              *&v619[8] &= ~1u;
              v25 = *v619;
              v26 = *&v619[40];
              *v619 = 0;
              *&v577[16] = *&v619[24];
              *&v619[40] = 0;
              v576 = v25;
              *&v577[32] = v26;
              *v578 = v620;
              v27 = v621;
              v621 = 0u;
              *&v578[8] = v27;
              v28 = v622;
              v622 = 0u;
              *&v578[24] = v28;
              *&v28 = v623;
              v623 = 0;
              *&v578[40] = v28;
              v29 = v624;
              v624 = 0;
              *&v578[48] = v29;
              *&v28 = v625;
              v625 = 0;
              *&v578[56] = v28;
              v30 = v626;
              v626 = 0;
              v579 = v30;
              LOBYTE(v580) = 0;
              v581[0] = 0;
              if (v628 == 1)
              {
                v407 = v627;
                v627 = 0;
                v580 = v407;
                v581[0] = 1;
              }

              v582 = v629;
              v583 = v630;
              v587 = v634;
              v588 = v635;
              *v589 = v636[0];
              *&v589[11] = *(v636 + 11);
              v585 = v632;
              v586 = v633;
              v31 = v631;
              v32 = v637;
              v631 = 0;
              v637 = 0;
              v584 = v31;
              v590 = v32;
              v591 = v638;
              v33 = *v608;
              v608[0] = 0;
              v608[1] = 0;
              *v592 = v33;
              *&v592[16] = v609;
              *&v592[32] = v610;
              LODWORD(v609) = v609 & 0xFFFFFFFE;
              *&v593 = v611;
              WORD6(v593) = WORD6(v611);
              DWORD2(v593) = DWORD2(v611);
              *v594 = v612;
              v34 = 1;
              v594[8] = v613;
            }

            else
            {
              v34 = 0;
              v571[0] = 0;
            }

            LOBYTE(v595) = v34;
            if (v639)
            {
              v385 = v637;
              v637 = 0;
              if (v385)
              {
                CFRelease(v385);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v619, v12);
            }
          }

          else
          {
            v571[0] = 0;
            LOBYTE(v595) = 0;
          }

          if (v649)
          {
            v386 = v646;
            v646 = 0;
            if (v386 && atomic_fetch_add_explicit(v386, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v386, v12);
            }

            v387 = *v644;
            *v644 = 0;
            if (v387 && atomic_fetch_add_explicit(v387, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v387, v12);
            }
          }
        }

        else
        {
          v571[0] = 0;
          LOBYTE(v595) = 0;
        }

        if (v595)
        {
LABEL_644:
          WebKit::NetworkProcessProxy::resourceLoadDidCompleteWithError(this, *v571, &v571[16], &v576, v592);
          if ((v595 & 1) == 0)
          {
            goto LABEL_1098;
          }

          v388 = *v594;
          *v594 = 0;
          if (v388)
          {
            CFRelease(v388);
          }

          v389 = v593;
          *&v593 = 0;
          if (v389 && atomic_fetch_add_explicit(v389, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v389, v12);
          }

          v390 = *&v592[8];
          *&v592[8] = 0;
          if (v390 && atomic_fetch_add_explicit(v390, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v390, v12);
          }

          v391 = *v592;
          *v592 = 0;
          if (v391 && atomic_fetch_add_explicit(v391, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v391, v12);
          }

LABEL_656:
          v392 = v590;
          v590 = 0;
          if (v392)
          {
            CFRelease(v392);
          }

          WebCore::ResourceResponseBase::~ResourceResponseBase(&v576, v12);
          goto LABEL_659;
        }
      }

      else
      {
        v571[0] = 0;
        LOBYTE(v595) = 0;
      }

      v12 = *a3;
      v435 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v436 = *(a3 + 3);
      if (!v436)
      {
        goto LABEL_1098;
      }

      if (!v435)
      {
        goto LABEL_1098;
      }

      (*(*v436 + 16))(v436, v12);
      if ((v595 & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_644;
    case 0x22D:
      v35 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v36)
      {
        v37 = v35;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v608);
        if (v618 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v619);
          if (v639 & 1) != 0 || (v12 = *a3, v473 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v474 = *(a3 + 3)) != 0) && v473 && ((*(*v474 + 16))(v474, v12), (v639))
          {
            IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v642);
            if (v658 & 1) != 0 || (v12 = *a3, v479 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v480 = *(a3 + 3)) != 0) && v479 && (v17 = (*(*v480 + 16))(v480, v12), (v658))
            {
              if ((v618 & 1) == 0 || (v639 & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v571 = v37;
              *&v571[16] = *v608;
              *&v571[32] = v609;
              *&v571[48] = v610;
              *&v571[64] = v611;
              v38 = v612;
              v39 = v615;
              v612 = 0;
              *&v571[80] = v38;
              *&v571[88] = v613;
              v572 = v614;
              LODWORD(v613) = v613 & 0xFFFFFFFE;
              v615 = 0;
              v575 = v617;
              v573 = v39;
              v574 = v616;
              *v577 = *&v619[8];
              *&v619[8] &= ~1u;
              v40 = *v619;
              v41 = *&v619[40];
              *v619 = 0;
              *&v577[16] = *&v619[24];
              *&v619[40] = 0;
              v576 = v40;
              *&v577[32] = v41;
              *v578 = v620;
              v42 = v621;
              v621 = 0u;
              *&v578[8] = v42;
              v43 = v622;
              v622 = 0u;
              *&v578[24] = v43;
              v44 = v623;
              v623 = 0;
              *&v578[40] = v44;
              v45 = v624;
              v624 = 0;
              *&v578[48] = v45;
              v46 = v625;
              v625 = 0;
              *&v578[56] = v46;
              v47 = v626;
              v626 = 0;
              v579 = v47;
              LOBYTE(v580) = 0;
              v581[0] = 0;
              if (v628 == 1)
              {
                v406 = v627;
                v627 = 0;
                v580 = v406;
                v581[0] = 1;
              }

              v582 = v629;
              v583 = v630;
              v587 = v634;
              v588 = v635;
              *v589 = v636[0];
              *&v589[11] = *(v636 + 11);
              v585 = v632;
              v586 = v633;
              v48 = v631;
              v49 = v637;
              v631 = 0;
              v637 = 0;
              v584 = v48;
              v590 = v49;
              v591 = v638;
              v50 = *v642;
              v51 = *&v642[40];
              *v642 = 0;
              *v592 = v50;
              *&v592[8] = *&v642[8];
              *&v592[24] = *&v642[24];
              *&v642[8] &= ~1u;
              *&v642[40] = 0;
              *&v592[40] = v51;
              v593 = v643;
              *v594 = *v644;
              LODWORD(v643) = v643 & 0xFFFFFFFE;
              v52 = v646;
              *&v594[16] = *&v644[16];
              v53 = v645;
              v645 = 0uLL;
              v595 = v53;
              v646 = 0;
              v596 = v52;
              v54 = v647;
              v647 = 0;
              v597 = v54;
              v55 = v648;
              v648 = 0;
              v598 = v55;
              v56 = v649;
              v649 = 0;
              v599 = v56;
              v57 = v650;
              v650 = 0;
              v600 = v57;
              v602 = v652;
              v601 = v651;
              v58 = v653;
              v653 = 0uLL;
              *v603 = v58;
              *&v603[16] = v654;
              v605 = v656;
              v604 = v655;
              v59 = v657;
              v654 = 0;
              v657 = 0;
              v606 = v59;
              v607 = 1;
              if (v658)
              {
                WebCore::ResourceRequest::~ResourceRequest(v642);
              }
            }

            else
            {
              v571[0] = 0;
              v607 = 0;
            }

            if (v639)
            {
              v60 = v637;
              v637 = 0;
              if (v60)
              {
                CFRelease(v60);
              }

              WebCore::ResourceResponseBase::~ResourceResponseBase(v619, v12);
            }
          }

          else
          {
            v571[0] = 0;
            v607 = 0;
          }

          if (v618)
          {
            v61 = v615;
            v615 = 0;
            if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v61, v12);
            }

            v62 = v612;
            v612 = 0;
            if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v62, v12);
            }
          }
        }

        else
        {
          v571[0] = 0;
          v607 = 0;
        }

        if (v607)
        {
LABEL_479:
          WebKit::NetworkProcessProxy::resourceLoadDidPerformHTTPRedirection(this, *v571, &v571[16], &v576, v592);
          if ((v607 & 1) == 0)
          {
            goto LABEL_1098;
          }

          WebCore::ResourceRequest::~ResourceRequest(v592);
          goto LABEL_656;
        }
      }

      else
      {
        v571[0] = 0;
        v607 = 0;
      }

      v12 = *a3;
      v437 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v438 = *(a3 + 3);
      if (!v438)
      {
        goto LABEL_1098;
      }

      if (!v437)
      {
        goto LABEL_1098;
      }

      (*(*v438 + 16))(v438, v12);
      if ((v607 & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_479;
    case 0x22E:
      v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v15)
      {
        v16 = v14;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v642);
        if (v649 == 1)
        {
          IPC::Decoder::decode<WebCore::AuthenticationChallenge>(v619, a3);
          if (v641 == 1)
          {
            if ((v649 & 1) == 0)
            {
              goto LABEL_1032;
            }

            *v571 = v16;
            *&v571[16] = *v642;
            *&v571[32] = *&v642[16];
            *&v571[48] = *&v642[32];
            *&v571[64] = v643;
            v18 = *v644;
            v19 = v646;
            *v644 = 0;
            *&v571[80] = v18;
            *&v571[88] = *&v644[8];
            v572 = v645;
            *&v644[8] &= ~1u;
            v646 = 0;
            v575 = v648;
            v573 = v19;
            v574 = v647;
            WebCore::AuthenticationChallengeBase::AuthenticationChallengeBase(&v576, v619);
            *&v603[8] = v640;
            v605 = 1;
            if (v641)
            {
              v640 = 0uLL;
              WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(v619, v12);
            }
          }

          else
          {
            v571[0] = 0;
            v605 = 0;
          }

          if (v649)
          {
            v365 = v646;
            v646 = 0;
            if (v365 && atomic_fetch_add_explicit(v365, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v365, v12);
            }

            v366 = *v644;
            *v644 = 0;
            if (v366 && atomic_fetch_add_explicit(v366, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v366, v12);
            }
          }
        }

        else
        {
          v571[0] = 0;
          v605 = 0;
        }

        if (v605)
        {
          goto LABEL_577;
        }
      }

      else
      {
        v571[0] = 0;
        v605 = 0;
      }

      v12 = *a3;
      v433 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v434 = *(a3 + 3);
      if (!v434)
      {
        goto LABEL_1098;
      }

      if (!v433)
      {
        goto LABEL_1098;
      }

      (*(*v434 + 16))(v434, v12);
      if ((v605 & 1) == 0)
      {
        goto LABEL_1098;
      }

LABEL_577:
      WebKit::NetworkProcessProxy::resourceLoadDidReceiveChallenge(this, *v571, &v571[16], &v576);
      if ((v605 & 1) == 0)
      {
        goto LABEL_1098;
      }

      v367 = *&v603[16];
      *&v603[16] = 0;
      if (v367)
      {
        CFRelease(v367);
      }

      v368 = *&v603[8];
      *&v603[8] = 0;
      if (v368)
      {
        CFRelease(v368);
      }

      WebCore::AuthenticationChallengeBase::~AuthenticationChallengeBase(&v576, v12);
      goto LABEL_659;
    case 0x22F:
      v285 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v286)
      {
        v287 = v285;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v642);
        if (v649 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceResponse,void>::decode(a3, v619);
          if (v639 & 1) != 0 || (v12 = *a3, v475 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v476 = *(a3 + 3)) != 0) && v475 && (v17 = (*(*v476 + 16))(v476, v12), (v639))
          {
            if ((v649 & 1) == 0)
            {
              goto LABEL_1032;
            }

            *v571 = v287;
            v288 = v646;
            *&v571[80] = *v644;
            *&v571[16] = *v642;
            *&v571[32] = *&v642[16];
            *&v571[48] = *&v642[32];
            *&v571[64] = v643;
            *v644 = 0;
            *&v571[88] = *&v644[8];
            v572 = v645;
            *&v644[8] &= ~1u;
            v646 = 0;
            v575 = v648;
            v573 = v288;
            v574 = v647;
            *v577 = *&v619[8];
            *&v619[8] &= ~1u;
            v289 = *v619;
            v290 = *&v619[40];
            *v619 = 0;
            *&v577[16] = *&v619[24];
            *&v619[40] = 0;
            v576 = v289;
            *&v577[32] = v290;
            *v578 = v620;
            v291 = v621;
            v621 = 0u;
            *&v578[8] = v291;
            v292 = v622;
            v622 = 0u;
            *&v578[24] = v292;
            *&v292 = v623;
            v623 = 0;
            *&v578[40] = v292;
            v293 = v624;
            v624 = 0;
            *&v578[48] = v293;
            *&v292 = v625;
            v625 = 0;
            *&v578[56] = v292;
            v294 = v626;
            v626 = 0;
            v579 = v294;
            LOBYTE(v580) = 0;
            v581[0] = 0;
            if (v628 == 1)
            {
              v405 = v627;
              v627 = 0;
              v580 = v405;
              v581[0] = 1;
            }

            v582 = v629;
            v583 = v630;
            v587 = v634;
            v588 = v635;
            *v589 = v636[0];
            *&v589[11] = *(v636 + 11);
            v585 = v632;
            v586 = v633;
            v295 = v631;
            v631 = 0;
            v584 = v295;
            v590 = v637;
            v591 = v638;
            v592[8] = 1;
            if (v639)
            {
              v637 = 0;
              WebCore::ResourceResponseBase::~ResourceResponseBase(v619, v12);
            }
          }

          else
          {
            v571[0] = 0;
            v592[8] = 0;
          }

          if (v649)
          {
            v296 = v646;
            v646 = 0;
            if (v296 && atomic_fetch_add_explicit(v296, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v296, v12);
            }

            v297 = *v644;
            *v644 = 0;
            if (v297 && atomic_fetch_add_explicit(v297, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v297, v12);
            }
          }
        }

        else
        {
          v571[0] = 0;
          v592[8] = 0;
        }

        if (v592[8])
        {
          goto LABEL_490;
        }
      }

      else
      {
        v571[0] = 0;
        v592[8] = 0;
      }

      v12 = *a3;
      v445 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v446 = *(a3 + 3);
      if (!v446)
      {
        goto LABEL_1098;
      }

      if (!v445)
      {
        goto LABEL_1098;
      }

      (*(*v446 + 16))(v446, v12);
      if ((v592[8] & 1) == 0)
      {
        goto LABEL_1098;
      }

LABEL_490:
      WebKit::NetworkProcessProxy::resourceLoadDidReceiveResponse(this, *v571, &v571[16], &v576);
      if ((v592[8] & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_656;
    case 0x230:
      v256 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if (v257)
      {
        v258 = v256;
        IPC::Decoder::decode<WebKit::ResourceLoadInfo>(a3, v642);
        if (v649 == 1)
        {
          IPC::ArgumentCoder<WebCore::ResourceRequest,void>::decode(a3, v619);
          if (v635 & 1) != 0 || (v12 = *a3, v477 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v478 = *(a3 + 3)) != 0) && v477 && ((*(*v478 + 16))(v478, v12), (v635))
          {
            v17 = IPC::ArgumentCoder<std::optional<IPC::FormDataReference>,void>::decode<IPC::Decoder>(a3, v608);
            if (v609 & 1) != 0 || (v12 = *a3, v469 = *(a3 + 1), *a3 = 0, *(a3 + 1) = 0, (v470 = *(a3 + 3)) != 0) && v469 && (v17 = (*(*v470 + 16))(v470, v12), (v609))
            {
              if ((v649 & 1) == 0 || (v635 & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v571 = v258;
              *&v571[16] = *v642;
              *&v571[32] = *&v642[16];
              *&v571[48] = *&v642[32];
              *&v571[64] = v643;
              v259 = *v644;
              v260 = v646;
              *v644 = 0;
              *&v571[80] = v259;
              *&v571[88] = *&v644[8];
              v572 = v645;
              *&v644[8] &= ~1u;
              v646 = 0;
              v575 = v648;
              v573 = v260;
              v574 = v647;
              std::__tuple_leaf<0ul,WebCore::ResourceRequest,false>::__tuple_leaf[abi:sn200100]<WebCore::ResourceRequest,0>(&v576, v619);
              LOBYTE(v588) = 0;
              BYTE8(v588) = 0;
              v261 = 1;
              if (LOBYTE(v608[1]) == 1)
              {
                *&v588 = v608[0];
                BYTE8(v588) = 1;
              }
            }

            else
            {
              v261 = 0;
              v571[0] = 0;
            }

            v589[8] = v261;
            if (v635)
            {
              WebCore::ResourceRequest::~ResourceRequest(v619);
            }
          }

          else
          {
            v571[0] = 0;
            v589[8] = 0;
          }

          if (v649)
          {
            v262 = v646;
            v646 = 0;
            if (v262 && atomic_fetch_add_explicit(v262, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v262, v12);
            }

            v263 = *v644;
            *v644 = 0;
            if (v263 && atomic_fetch_add_explicit(v263, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v263, v12);
            }
          }
        }

        else
        {
          v571[0] = 0;
          v589[8] = 0;
        }

        if (v589[8])
        {
LABEL_483:
          WebKit::NetworkProcessProxy::resourceLoadDidSendRequest(this, *v571, &v571[16], &v576, &v588);
          if ((v589[8] & 1) == 0)
          {
            goto LABEL_1098;
          }

          if (BYTE8(v588) == 1)
          {
            v342 = v588;
            *&v588 = 0;
            if (v342)
            {
              WTF::RefCounted<WebCore::FormData>::deref(v342);
            }
          }

          WebCore::ResourceRequest::~ResourceRequest(&v576);
LABEL_659:
          v393 = v573;
          v573 = 0;
          if (v393 && atomic_fetch_add_explicit(v393, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v393, v12);
          }

          v323 = *&v571[80];
          *&v571[80] = 0;
          if (!v323)
          {
            goto LABEL_1098;
          }

          goto LABEL_958;
        }
      }

      else
      {
        v571[0] = 0;
        v589[8] = 0;
      }

      v12 = *a3;
      v443 = *(a3 + 1);
      *a3 = 0;
      *(a3 + 1) = 0;
      v444 = *(a3 + 3);
      if (!v444)
      {
        goto LABEL_1098;
      }

      if (!v443)
      {
        goto LABEL_1098;
      }

      (*(*v444 + 16))(v444, v12);
      if ((v589[8] & 1) == 0)
      {
        goto LABEL_1098;
      }

      goto LABEL_483;
    case 0x231:
      IPC::ArgumentCoder<std::tuple<WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>>,void>::decode<IPC::Decoder>(a3, v571);
      if ((v571[8] & 1) == 0)
      {
        v12 = *a3;
        v439 = *(a3 + 1);
        *a3 = 0;
        *(a3 + 1) = 0;
        v440 = *(a3 + 3);
        if (!v440)
        {
          goto LABEL_381;
        }

        if (!v439)
        {
          goto LABEL_381;
        }

        (*(*v440 + 16))(v440, v12);
        if ((v571[8] & 1) == 0)
        {
          goto LABEL_381;
        }
      }

      v109 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v12 & 1) == 0)
      {
        goto LABEL_381;
      }

      v110 = v109;
      while (1)
      {
        v111 = *v6;
        if ((*v6 & 1) == 0)
        {
          break;
        }

        v112 = *v6;
        atomic_compare_exchange_strong_explicit(v6, &v112, v111 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v112 == v111)
        {
          goto LABEL_378;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_378:
      v17 = WTF::fastMalloc(v111, 0x18);
      *v17 = &unk_1F10F0FC0;
      *(v17 + 8) = v110;
      *(v17 + 16) = v6;
      *v619 = v17;
      if ((v571[8] & 1) == 0)
      {
LABEL_1032:
        __break(1u);
        goto LABEL_1033;
      }

      WebKit::NetworkProcessProxy::setDomainsWithCrossPageStorageAccess(v571, v619, v571[8]);
      v310 = *v619;
      *v619 = 0;
      if (v310)
      {
        (*(*v310 + 8))(v310);
      }

LABEL_381:
      if (v571[8] == 1 && *v571)
      {
        WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(*v571, v12);
      }

      goto LABEL_1098;
    case 0x232:
      IPC::Decoder::decode<std::tuple<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>>(a3, v571);
      if (v571[8] == 1)
      {
        WebKit::NetworkProcessProxy::setDomainsWithUserInteraction(this, v571);
        if (v571[8])
        {
          if (*v571)
          {
            WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v571, v12);
          }
        }
      }

      goto LABEL_1098;
    case 0x233:
      v269 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v270 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v115 = *(a3 + 1);
      v271 = *(a3 + 2);
      v117 = *a3;
      if (v115 <= &v271[-*a3])
      {
        goto LABEL_966;
      }

      *(a3 + 2) = v271 + 1;
      if (!v271)
      {
        goto LABEL_968;
      }

      v272 = *v271;
      if (v272 >= 2)
      {
        goto LABEL_1096;
      }

      WebKit::NetworkProcessProxy::setWebProcessHasUploads(this, v269, v272 & 1);
      goto LABEL_1098;
    case 0x234:
      v13 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::startServiceWorkerBackgroundProcessing(this, v13);
      }

      goto LABEL_1098;
    case 0x235:
      v81 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::terminateWebProcess(this, v81);
      }

      goto LABEL_1098;
    case 0x236:
      v244 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v245 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v246 = v244;
      v247 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
      if ((v248 & 1) == 0)
      {
        goto LABEL_1097;
      }

      v115 = *(a3 + 1);
      v249 = *(a3 + 2);
      v117 = *a3;
      if (v115 <= &v249[-*a3])
      {
LABEL_966:
        *a3 = 0;
        *(a3 + 1) = 0;
        v534 = *(a3 + 3);
        if (v534)
        {
          if (v115)
          {
            (*(*v534 + 16))(v534);
            v115 = *(a3 + 1);
          }
        }

        else
        {
          v115 = 0;
        }
      }

      else
      {
        *(a3 + 2) = v249 + 1;
        if (v249)
        {
          v250 = *v249;
          if (v250 < 3)
          {
            v251 = v247;
            IPC::Decoder::decode<WebCore::Site>(a3, v619);
            if (v619[16] != 1)
            {
              goto LABEL_1097;
            }

            v17 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            v252 = v17;
            if (v12)
            {
              if ((v619[16] & 1) == 0)
              {
                goto LABEL_1032;
              }

              *v571 = v246;
              *&v571[8] = v251;
              v571[16] = v250;
              v253 = *v619;
              if (*v619)
              {
                atomic_fetch_add_explicit(*v619, 2u, memory_order_relaxed);
              }

              *&v571[24] = v253;
              v254 = *&v619[8];
              if (*&v619[8])
              {
                atomic_fetch_add_explicit(*&v619[8], 2u, memory_order_relaxed);
              }

              *&v571[32] = v254;
              *&v571[40] = v17;
              v255 = 1;
            }

            else
            {
              v255 = 0;
              v571[0] = 0;
            }

            v571[48] = v255;
            if (v619[16])
            {
              v394 = *&v619[8];
              *&v619[8] = 0;
              if (v394 && atomic_fetch_add_explicit(v394, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v394, v12);
              }

              v395 = *v619;
              *v619 = 0;
              if (v395 && atomic_fetch_add_explicit(v395, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v395, v12);
              }
            }

            if ((v255 & 1) == 0)
            {
              goto LABEL_1097;
            }

            v396 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a3);
            if (v12)
            {
              v397 = v396;
              while (1)
              {
                v398 = *v6;
                if ((*v6 & 1) == 0)
                {
                  break;
                }

                v399 = *v6;
                atomic_compare_exchange_strong_explicit(v6, &v399, v398 + 2, memory_order_relaxed, memory_order_relaxed);
                if (v399 == v398)
                {
                  goto LABEL_680;
                }
              }

              WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v6);
LABEL_680:
              v400 = WTF::fastMalloc(v398, 0x18);
              *v400 = &unk_1F10F1060;
              v400[1] = v397;
              v400[2] = v6;
              *v619 = v400;
              WebKit::NetworkProcessProxy::triggerBrowsingContextGroupSwitchForNavigation(this, *v571, v251, v250, &v571[24], v252, v619);
              v401 = *v619;
              *v619 = 0;
              if (v401)
              {
                (*(*v401 + 8))(v401);
              }

              if ((v571[48] & 1) == 0)
              {
                goto LABEL_1098;
              }
            }

            v402 = *&v571[32];
            *&v571[32] = 0;
            if (v402 && atomic_fetch_add_explicit(v402, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v402, v12);
            }

            v323 = *&v571[24];
            *&v571[24] = 0;
            if (!v323)
            {
              goto LABEL_1098;
            }

LABEL_958:
            if (atomic_fetch_add_explicit(v323, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
LABEL_959:
              WTF::StringImpl::destroy(v323, v12);
            }

            goto LABEL_1098;
          }

          goto LABEL_1096;
        }
      }

LABEL_968:
      *a3 = 0;
      *(a3 + 1) = 0;
      v535 = *(a3 + 3);
      if (v535)
      {
        if (v115)
        {
          (*(*v535 + 16))(v535);
LABEL_1095:
          v117 = *a3;
          v115 = *(a3 + 1);
          goto LABEL_1096;
        }
      }

      else
      {
        v115 = 0;
      }

      v117 = 0;
LABEL_1096:
      *a3 = 0;
      *(a3 + 1) = 0;
      v568 = *(a3 + 3);
      if (v568 && v115)
      {
        (*(*v568 + 16))(v568, v117);
      }

      goto LABEL_1097;
    case 0x237:
      IPC::Decoder::decode<std::tuple<WebKit::RemoteWorkerType,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v571, a3);
      if (v571[24] == 1)
      {
        WebKit::NetworkProcessProxy::unregisterRemoteWorkerClientProcess(this, v571[0], *&v571[8], *&v571[16]);
      }

      goto LABEL_1098;
    case 0x238:
      v20 = IPC::Decoder::decode<std::tuple<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(a3);
      if (v12)
      {
        WebKit::NetworkProcessProxy::wakeUpWebProcessForIPC(this, v20);
      }

      goto LABEL_1098;
    default:
      if (IPC::MessageReceiverMap::dispatchMessage((this + 24), a2, a3))
      {
        goto LABEL_1098;
      }

      v306 = qword_1ED6416C8;
      if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
      {
        v307 = *(a3 + 25);
        if (v307 >= 0x107F)
        {
          v307 = 4223;
        }

        v308 = (&IPC::Detail::messageDescriptions)[3 * v307];
        v309 = *(a3 + 7);
        *v571 = 136315394;
        *&v571[4] = v308;
        *&v571[12] = 2048;
        *&v571[14] = v309;
        _os_log_error_impl(&dword_19D52D000, v306, OS_LOG_TYPE_ERROR, "Unhandled message %s to %llu", v571, 0x16u);
      }

      goto LABEL_1097;
  }
}