unsigned int *WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0)::{lambda(void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    WTF::fastFree(v4, a2);
  }

  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result && atomic_fetch_add(result, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, result);

    return WTF::fastFree(result, a2);
  }

  return result;
}

uint64_t WTF::BlockPtr<void ()(void)>::fromCallable<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0>(WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0)::{lambda(void *)#1}::__invoke(atomic_uint **a1)
{
  WTF::RunLoop::mainSingleton(a1);
  v3 = a1[4];
  if (v3)
  {
    add = atomic_fetch_add(v3, 1u);
  }

  v4 = a1[5];
  v5 = a1[7];
  a1[7] = 0;
  v6 = a1[6];
  a1[5] = 0;
  a1[6] = 0;
  v7 = WTF::fastMalloc(add, 0x28);
  *v7 = &unk_1F1120F00;
  v7[1] = v3;
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v9 = v7;
  WTF::RunLoop::dispatch();
  result = v9;
  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1120F00;
  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1120F00;
  v3 = *(this + 4);
  *(this + 4) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 2);
  if (v4)
  {
    *(this + 2) = 0;
    *(this + 6) = 0;
    WTF::fastFree(v4, a2);
  }

  v5 = *(this + 1);
  *(this + 1) = 0;
  if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v5);
    WTF::fastFree(v5, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockHidConnection::send(WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&,WTF::CompletionHandler<void ()(WebKit::HidConnection::DataSent)> &&)::$_0::operator()(void)::{lambda(void)#1},void>::call(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      if (*(v3 + 336))
      {
        fido::FidoHidMessage::addContinuationPacket();
      }

      else
      {
        fido::FidoHidMessage::createFromSerializedData();
        std::__optional_storage_base<fido::FidoHidMessage,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<fido::FidoHidMessage,false>>((v3 + 288), buf);
        if (v61 == 1)
        {
          WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque(&buf[8]);
        }
      }

      if ((*(v3 + 336) & 1) == 0)
      {
        goto LABEL_78;
      }

      if (!fido::FidoHidMessage::messageComplete((v3 + 288)))
      {
LABEL_58:
        v27 = *(a1 + 8);
        if (v27)
        {
          v28 = *(v27 + 8);
          if (v28)
          {
            if (v28[216])
            {
              v4 = v28[185] != v28[344] || v28[186] != v28[345] || v28[187] != 1;
              goto LABEL_65;
            }

            goto LABEL_78;
          }
        }

LABEL_114:
        __break(0xC471u);
        JUMPOUT(0x19E149F84);
      }

      if ((*(v3 + 336) & 1) == 0)
      {
        goto LABEL_78;
      }

      v5 = *(v3 + 292);
      if (v5 == 3 || v5 == 16)
      {
        *(v3 + 345) = 1;
      }

      else if (v5 == 6)
      {
        v7 = *(v3 + 345);
        *(v3 + 345) = 0;
        if (v7 == 1)
        {
          *(v3 + 344) = 1;
        }
      }

      if (*(v3 + 344) != 1 || *(v3 + 345) != 1)
      {
        goto LABEL_48;
      }

      if (*(v3 + 216) != 1)
      {
        goto LABEL_78;
      }

      if (*(v3 + 184) == 1)
      {
        fido::FidoHidMessage::getMessagePayload(&__s1, (v3 + 288));
        v8 = *(v3 + 392);
        v9 = *(v3 + 388);
        if (v8 >= v9)
        {
          v41 = qword_1ED641530;
          if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
          {
            WTF::base64EncodeToString();
            WTF::String::utf8();
            if (__dst)
            {
              v42 = __dst + 16;
            }

            else
            {
              v42 = 0;
            }

            *buf = 134218498;
            *&buf[4] = v9;
            *&buf[12] = 2048;
            *&buf[14] = v8 + 1;
            v58 = 2080;
            v59 = v42;
            _os_log_error_impl(&dword_19D52D000, v41, OS_LOG_TYPE_ERROR, "MockHidConnection: VALIDATION FAILED - Received unexpected command beyond expected count. Expected %zu commands, but received command %zu. Content: %s", buf, 0x20u);
            v44 = __dst;
            __dst = 0;
            if (v44)
            {
              if (*v44 == 1)
              {
                WTF::fastFree(v44, v43);
              }

              else
              {
                --*v44;
              }
            }

            v48 = v56;
            v56 = 0;
            if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v48, v43);
            }
          }

          goto LABEL_114;
        }

        v10 = *(v3 + 376) + 16 * v8;
        if (HIDWORD(__n) != *(v10 + 12) || (v11 = __s1, memcmp(__s1, *v10, HIDWORD(__n))))
        {
          v36 = qword_1ED641530;
          if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
          {
            WTF::base64EncodeToString();
            WTF::String::utf8();
            if (__dst)
            {
              v37 = __dst + 16;
            }

            else
            {
              v37 = 0;
            }

            WTF::base64EncodeToString();
            WTF::String::utf8();
            if (v55)
            {
              v38 = v55 + 16;
            }

            else
            {
              v38 = 0;
            }

            *buf = 134218498;
            *&buf[4] = v8;
            *&buf[12] = 2080;
            *&buf[14] = v37;
            v58 = 2080;
            v59 = v38;
            _os_log_error_impl(&dword_19D52D000, v36, OS_LOG_TYPE_ERROR, "MockHidConnection: VALIDATION FAILED - Command mismatch at index %zu. Expected %s Actual %s", buf, 0x20u);
            v40 = v55;
            v55 = 0;
            if (v40)
            {
              if (*v40 == 1)
              {
                WTF::fastFree(v40, v39);
              }

              else
              {
                --*v40;
              }
            }

            v45 = v54;
            v54 = 0;
            if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v45, v39);
            }

            v46 = __dst;
            __dst = 0;
            if (v46)
            {
              if (*v46 == 1)
              {
                WTF::fastFree(v46, v39);
              }

              else
              {
                --*v46;
              }
            }

            v47 = v56;
            v56 = 0;
            if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v47, v39);
            }
          }

          __break(0xC471u);
          JUMPOUT(0x19E14A1B8);
        }

        *(v3 + 392) = v8 + 1;
        if (v11)
        {
          __s1 = 0;
          LODWORD(__n) = 0;
          WTF::fastFree(v11, v12);
        }

        if ((*(v3 + 216) & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      if (*(v3 + 192))
      {
        v13 = *(v3 + 336);
        if ((*(v3 + 188) & 1) == 0)
        {
          if ((*(v3 + 336) & 1) == 0)
          {
            goto LABEL_78;
          }

          v14 = *(v3 + 292);
          *(v3 + 188) = v14 == 3;
          goto LABEL_37;
        }
      }

      else
      {
        v13 = *(v3 + 336);
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_78;
      }

      v14 = *(v3 + 292);
LABEL_37:
      if (v14 == 16)
      {
        *(v3 + 352) = 0;
        fido::FidoHidMessage::getMessagePayload(&__dst, (v3 + 288));
        if (!v53)
        {
          __break(0xC471u);
          JUMPOUT(0x19E14A130);
        }

        v15 = *__dst;
        memmove(__dst, __dst + 1, --v53);
        __s1 = __dst;
        __n = v53;
        cbor::CBORReader::read();
        if (v15 == 2)
        {
          if ((v60 & 1) == 0)
          {
            goto LABEL_78;
          }

          Map = cbor::CBORValue::getMap(buf);
          cbor::CBORValue::CBORValue(&__s1);
          v33 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(Map, &__s1);
          cbor::CBORValue::~CBORValue(&__s1);
          if ((v60 & 1) == 0)
          {
            goto LABEL_78;
          }

          if (cbor::CBORValue::getMap(buf) + 8 == v33)
          {
            goto LABEL_73;
          }

          v34 = cbor::CBORValue::getMap((v33 + 64));
          cbor::CBORValue::CBORValue();
          v22 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(v34, &__s1);
          cbor::CBORValue::~CBORValue(&__s1);
          if (v34 + 8 == v22)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_73;
          }

          if ((v60 & 1) == 0)
          {
            goto LABEL_78;
          }

          v17 = cbor::CBORValue::getMap(buf);
          cbor::CBORValue::CBORValue(&__s1);
          v18 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(v17, &__s1);
          cbor::CBORValue::~CBORValue(&__s1);
          if ((v60 & 1) == 0)
          {
            goto LABEL_78;
          }

          if (cbor::CBORValue::getMap(buf) + 8 == v18)
          {
            goto LABEL_73;
          }

          v19 = cbor::CBORValue::getMap((v18 + 64));
          cbor::CBORValue::CBORValue();
          v20 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(v19, &__s1);
          cbor::CBORValue::~CBORValue(&__s1);
          v21 = v19 + 8;
          if (v19 + 8 != v20)
          {
            *(v3 + 352) = cbor::CBORValue::getBool((v20 + 64));
          }

          cbor::CBORValue::CBORValue();
          v22 = std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::find<cbor::CBORValue>(v19, &__s1);
          cbor::CBORValue::~CBORValue(&__s1);
          if (v21 == v22)
          {
            goto LABEL_73;
          }
        }

        *(v3 + 353) = cbor::CBORValue::getBool((v22 + 64));
LABEL_73:
        if (v60 == 1)
        {
          cbor::CBORValue::~CBORValue(buf);
        }

        v35 = __dst;
        if (__dst)
        {
          __dst = 0;
          v52 = 0;
          WTF::fastFree(v35, v16);
        }

        v23 = *(v3 + 336);
        goto LABEL_49;
      }

LABEL_48:
      v23 = 1;
LABEL_49:
      if ((*(v3 + 345) & 1) == 0)
      {
        if ((v23 & 1) == 0)
        {
          goto LABEL_78;
        }

        fido::FidoHidMessage::getMessagePayload(buf, (v3 + 288));
        v25 = *(v3 + 360);
        if (v25)
        {
          *(v3 + 360) = 0;
          *(v3 + 368) = 0;
          WTF::fastFree(v25, v24);
        }

        *(v3 + 360) = *buf;
        *(v3 + 368) = *&buf[8];
        v23 = *(v3 + 336);
      }

      if ((v23 & 1) == 0 || (*(v3 + 348) = *(v3 + 288), WTF::Deque<std::unique_ptr<fido::FidoHidPacket>,0ul>::~Deque((v3 + 296)), *(v3 + 336) = 0, (*(v3 + 216) & 1) == 0))
      {
LABEL_78:
        __break(1u);
      }

      if (*(v3 + 190) == 1)
      {
        WebKit::MockHidConnection::feedReports(v3, v26);
      }

      goto LABEL_58;
    }
  }

  v4 = 0;
LABEL_65:
  v29 = *(a1 + 32);
  *(a1 + 32) = 0;
  (*(*v29 + 16))(v29, v4);
  v30 = *(*v29 + 8);

  return v30(v29);
}

uint64_t WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebUserContentControllerProxy,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::ObjectIdentifierGeneric<WebKit::UserContentControllerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == -1 || !v2)
  {
    __break(0xC471u);
    JUMPOUT(0x19E14A340);
  }

  v3 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v4 = *(v3 - 8);
  v5 = (v2 + ~(v2 << 32)) ^ ((v2 + ~(v2 << 32)) >> 22);
  v6 = 9 * ((v5 + ~(v5 << 13)) ^ ((v5 + ~(v5 << 13)) >> 8));
  v7 = (v6 ^ (v6 >> 15)) + ~((v6 ^ (v6 >> 15)) << 27);
  v8 = v4 & ((v7 >> 31) ^ v7);
  v9 = *(v3 + 16 * v8);
  if (v9 != v2)
  {
    v10 = 1;
    while (v9)
    {
      v8 = (v8 + v10) & v4;
      v9 = *(v3 + 16 * v8);
      ++v10;
      if (v9 == v2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v11 = *(v3 + 16 * v8 + 8);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + 8);
  if (v12)
  {
    return v12 - 16;
  }

  else
  {
    return 0;
  }
}

uint64_t API::Array::GetObjectTransform<API::UserScript>::operator()(uint64_t a1)
{
  if (!a1 || (*(*a1 + 16))(a1) == 27)
  {
    return a1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t API::Array::GetObjectTransform<API::UserStyleSheet>::operator()(uint64_t a1)
{
  if (!a1 || (*(*a1 + 16))(a1) == 28)
  {
    return a1;
  }

  result = 105;
  __break(0xC471u);
  return result;
}

uint64_t **WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::ContentWorldIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t **result, uint64_t *a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  v4 = a3;
  if (!(a3 >> 29))
  {
    v6 = 8 * a3;
    v7 = WTF::fastMalloc(0, (8 * a3));
    *(v3 + 2) = v4;
    *v3 = v7;
    v8 = *(v3 + 3);
    do
    {
      v9 = *a2++;
      (*v3)[v8] = v9;
      v8 = *(v3 + 3) + 1;
      *(v3 + 3) = v8;
      v6 -= 8;
    }

    while (v6);
    return v3;
  }

  __break(0xC471u);
  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserScripts>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3187;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, *a2);
  LOBYTE(v12) = 0;
  v13 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v14, 0, &v12, 1);
  if (v13 == 1)
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

void WTF::HashMap<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(uint64_t a1, uint64_t *a2, uint64_t *a3, _DWORD *a4)
{
  v4 = *a3;
  if (*a3 == -1 || !v4)
  {
    __break(0xC471u);
    JUMPOUT(0x19E14A78CLL);
  }

  v9 = *a2;
  if (!*a2)
  {
    WTF::HashTable<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,WTF::KeyValuePair<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int>>,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashMap<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::FastMalloc>::expand(a2, 0);
    v9 = *a2;
    v4 = *a3;
  }

  v10 = *(v9 - 8);
  v11 = (v4 + ~(v4 << 32)) ^ ((v4 + ~(v4 << 32)) >> 22);
  v12 = 9 * ((v11 + ~(v11 << 13)) ^ ((v11 + ~(v11 << 13)) >> 8));
  v13 = (v12 ^ (v12 >> 15)) + ~((v12 ^ (v12 >> 15)) << 27);
  v14 = v10 & ((v13 >> 31) ^ v13);
  v15 = v9 + 16 * v14;
  v16 = *v15;
  if (*v15)
  {
    v17 = 0;
    v18 = 1;
    do
    {
      if (v16 == v4)
      {
        v22 = 0;
        v23 = v9 + 16 * *(v9 - 4);
        goto LABEL_25;
      }

      if (v16 == -1)
      {
        v17 = v15;
      }

      v14 = (v14 + v18) & v10;
      v15 = v9 + 16 * v14;
      v16 = *v15;
      ++v18;
    }

    while (*v15);
    if (v17)
    {
      *v17 = 0;
      v17[1] = 0;
      --*(*a2 - 16);
      v4 = *a3;
      v15 = v17;
    }
  }

  *a3 = 0;
  v19 = *v15;
  *v15 = v4;
  if (v19)
  {
    CFRelease(*(v19 + 8));
  }

  *(v15 + 8) = *a4;
  v20 = *a2;
  if (*a2)
  {
    v21 = *(v20 - 12) + 1;
  }

  else
  {
    v21 = 1;
  }

  *(v20 - 12) = v21;
  v24 = (*(v20 - 16) + v21);
  v25 = *(v20 - 4);
  if (v25 > 0x400)
  {
    if (v25 <= 2 * v24)
    {
LABEL_21:
      v15 = WTF::HashTable<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,WTF::KeyValuePair<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int>>,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashMap<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::FastMalloc>::expand(a2, v15);
      v20 = *a2;
      if (*a2)
      {
        v25 = *(v20 - 4);
      }

      else
      {
        v25 = 0;
      }
    }
  }

  else if (3 * v25 <= 4 * v24)
  {
    goto LABEL_21;
  }

  v23 = v20 + 16 * v25;
  v22 = 1;
LABEL_25:
  *a1 = v15;
  *(a1 + 8) = v23;
  *(a1 + 16) = v22;
}

uint64_t WTF::HashTable<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,WTF::KeyValuePair<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int>>,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashMap<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>,unsigned int,WTF::DefaultHash<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<API::ContentWorld,WTF::RawPtrTraits<API::ContentWorld>,WTF::DefaultRefDerefTraits<API::ContentWorld>>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 12);
    if (v5)
    {
      v7 = v5 << (6 * v6 >= (2 * v5));
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = 8;
LABEL_6:
  v8 = WTF::fastZeroedMalloc((16 * v7 + 16));
  *a1 = (v8 + 4);
  v8[2] = v7 - 1;
  v8[3] = v7;
  *v8 = 0;
  v8[1] = v6;
  if (v5)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = (v4 + 16 * v10);
      v13 = *v12;
      if (*v12 != -1)
      {
        if (v13)
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

          v16 = (~(v13 << 32) + v13) ^ ((~(v13 << 32) + v13) >> 22);
          v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
          v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
          v19 = v15 & ((v18 >> 31) ^ v18);
          v20 = 1;
          do
          {
            v21 = v19;
            v22 = *(v14 + 16 * v19);
            v19 = (v19 + v20++) & v15;
          }

          while (v22);
          v23 = v14 + 16 * v21;
          *v12 = 0;
          *v23 = v13;
          *(v23 + 8) = *(v12 + 2);
          v24 = *v12;
          *v12 = 0;
          if (v24)
          {
            CFRelease(*(v24 + 8));
          }

          if (v12 == a2)
          {
            v11 = v23;
          }
        }

        else
        {
          *v12 = 0;
        }
      }

      ++v10;
    }

    while (v10 != v5);
  }

  else
  {
    v11 = 0;
    result = 0;
    if (!v4)
    {
      return result;
    }
  }

  WTF::fastFree((v4 - 16), v9);
  return v11;
}

uint64_t WTF::Vector<WTF::Ref<API::UserScript,WTF::RawPtrTraits<API::UserScript>,WTF::DefaultRefDerefTraits<API::UserScript>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,API::UserScript&>(uint64_t *a1, uint64_t a2)
{
  v5 = *(a1 + 2);
  v4 = *(a1 + 3);
  if (v5 + (v5 >> 1) <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v5 + (v5 >> 1);
  }

  if (v6 <= v4 + 1)
  {
    v7 = v4 + 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 <= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = v7;
  }

  WTF::Vector<WTF::Ref<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v8);
  v9 = *(a1 + 3);
  v10 = *a1;
  CFRetain(*(a2 + 8));
  *(v10 + 8 * v9) = a2;
  ++*(a1 + 3);
  return 1;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserStyleSheets>(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = IPC::Encoder::operator new(0x238, a2);
  *v6 = 3188;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 1) = a3;
  *(v6 + 68) = 0;
  *(v6 + 70) = 0;
  *(v6 + 69) = 0;
  IPC::Encoder::encodeHeader(v6);
  v14 = v6;
  IPC::VectorArgumentCoder<false,WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::ObjectIdentifierGeneric<WebKit::WebExtensionFrameIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v6, *a2);
  LOBYTE(v12) = 0;
  v13 = 0;
  WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v14, 0, &v12, 1);
  if (v13 == 1)
  {
    v8 = v12;
    v12 = 0;
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }
  }

  result = v14;
  v14 = 0;
  if (result)
  {
    IPC::Encoder::~Encoder(result, v7);
    return bmalloc::api::tzoneFree(v10, v11);
  }

  return result;
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(a1, v4);
}

_DWORD *WTF::HashTable<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashMap<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
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
            if (v23[2] == 1)
            {
              (*(*v23 + 8))(v23);
            }

            else
            {
              --v23[2];
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

          if (v12[2] == 1)
          {
LABEL_24:
            (*(*v12 + 8))(v12);
            goto LABEL_22;
          }

          --v12[2];
        }

        else
        {
          v12 = v10[1];
          v10[1] = 0;
          if (v12)
          {
            if (v12[2] == 1)
            {
              goto LABEL_24;
            }

            --v12[2];
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

_DWORD *WTF::KeyValuePairHashTraits<WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebKit::ScriptMessageHandlerIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebScriptMessageHandler,WTF::RawPtrTraits<WebKit::WebScriptMessageHandler>,WTF::DefaultRefDerefTraits<WebKit::WebScriptMessageHandler>>>>::customDeleteBucket(void *a1)
{
  result = a1[1];
  *a1 = -1;
  a1[1] = 0;
  if (result)
  {
    if (result[2] == 1)
    {
      return (*(*result + 8))();
    }

    else
    {
      --result[2];
    }
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::WebUserContentController::RemoveAllUserScriptMessageHandlers>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v7 = IPC::Encoder::operator new(0x238, a2);
  *v7 = 3185;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *(v7 + 1) = a3;
  *(v7 + 68) = 0;
  *(v7 + 70) = 0;
  *(v7 + 69) = 0;
  IPC::Encoder::encodeHeader(v7);
  v17 = v7;
  LOBYTE(v15) = 0;
  v16 = 0;
  v9 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v17, a4, &v15, 1);
  if (v16 == 1)
  {
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = v17;
  v17 = 0;
  if (v11)
  {
    IPC::Encoder::~Encoder(v11, v8);
    bmalloc::api::tzoneFree(v13, v14);
  }

  return v9;
}

void *WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>,void,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &>::~CallableWrapper(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_1F1120F50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>,void,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120F50;
  *(this + 1) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WTF::CompletionHandler<void ()(std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &&)>,void,std::experimental::fundamentals_v3::expected<WebKit::JavaScriptEvaluationResult,WTF::String> &>::call(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  (*(*v1 + 16))(v1);
  v2 = *(*v1 + 8);

  return v2(v1);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(uint64_t *a1, uint64_t a2)
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

  return WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(a1, v4);
}

_DWORD *WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(uint64_t *a1, unint64_t a2)
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

  result = WTF::fastZeroedMalloc((56 * a2 + 16));
  *a1 = (result + 4);
  result[2] = v2 - 1;
  result[3] = v2;
  *result = 0;
  result[1] = v6;
  if (v5)
  {
    v9 = 0;
    v10 = v5;
    while (1)
    {
      v11 = v4 + 56 * v9;
      v12 = *v11;
      if (*v11 != -1)
      {
        if (v12)
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

          v18 = v12[4];
          if (v18 < 0x100)
          {
            v19 = WTF::StringImpl::hashSlowCase(v12);
          }

          else
          {
            v19 = v18 >> 8;
          }

          v20 = 0;
          do
          {
            v21 = (v16 + 56 * (v19 & v17));
            v19 = ++v20 + (v19 & v17);
          }

          while (*v21);
          v22 = v21[2];
          v21[2] = 0;
          if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v22, v8);
          }

          v23 = v21[1];
          v21[1] = 0;
          if (v23)
          {
            CFRelease(*(v23 + 1));
          }

          v24 = *v21;
          *v21 = 0;
          if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v24, v8);
          }

          v25 = *v11;
          *v11 = 0;
          *v21 = v25;
          v26 = *(v11 + 8);
          *(v11 + 8) = 0;
          v21[1] = v26;
          WTF::URL::URL((v21 + 2), (v11 + 16));
          v27 = *(v11 + 16);
          *(v11 + 16) = 0;
          if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v27, v8);
          }

          v28 = *(v11 + 8);
          *(v11 + 8) = 0;
          if (v28)
          {
            CFRelease(*(v28 + 8));
          }

          v15 = *v11;
          *v11 = 0;
          if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v13 = *(v11 + 16);
          *(v11 + 16) = 0;
          if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v13, v8);
          }

          v14 = *(v11 + 8);
          *(v11 + 8) = 0;
          if (v14)
          {
            CFRelease(*(v14 + 8));
          }

          v15 = *v11;
          *v11 = 0;
          if (!v15 || atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) != 2)
          {
            goto LABEL_39;
          }
        }

        WTF::StringImpl::destroy(v15, v8);
      }

LABEL_39:
      if (++v9 == v10)
      {
        goto LABEL_43;
      }
    }
  }

  if (v4)
  {
LABEL_43:

    return WTF::fastFree((v4 - 16), v8);
  }

  return result;
}

uint64_t **WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(uint64_t **result, unint64_t a2, unint64_t a3)
{
  v3 = result;
  *result = 0;
  result[1] = 0;
  if (!a3)
  {
    return v3;
  }

  if (a3 < 0x2222223)
  {
    v5 = 120 * a3;
    v6 = WTF::fastMalloc((a3 << 7), (120 * a3));
    *(v3 + 2) = v5 / 0x78;
    *v3 = v6;
    v7 = a2 + v5;
    v8 = *(v3 + 3);
    do
    {
      v9 = *v3;
      v10 = *a2;
      if (*a2)
      {
        atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
      }

      v11 = &v9[15 * v8];
      *v11 = v10;
      v12 = *(a2 + 8);
      if (v12)
      {
        atomic_fetch_add(v12, 1u);
      }

      v11[1] = v12;
      v13 = *(a2 + 16);
      v14 = *(a2 + 32);
      v15 = *(a2 + 64);
      *(v11 + 3) = *(a2 + 48);
      *(v11 + 4) = v15;
      *(v11 + 1) = v13;
      *(v11 + 2) = v14;
      v16 = *(a2 + 80);
      if (v16)
      {
        atomic_fetch_add_explicit(v16, 2u, memory_order_relaxed);
      }

      v11[10] = v16;
      v17 = *(a2 + 88);
      *(v11 + 13) = *(a2 + 104);
      *(v11 + 11) = v17;
      v8 = *(v3 + 3) + 1;
      *(v3 + 3) = v8;
      a2 += 120;
    }

    while (a2 != v7);
    return v3;
  }

  __break(0xC471u);
  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::Authenticator::handleRequest(WebKit::WebAuthenticationRequestData const&)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1120F78;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Authenticator::handleRequest(WebKit::WebAuthenticationRequestData const&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120F78;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::Authenticator::handleRequest(WebKit::WebAuthenticationRequestData const&)::$_0,void>::call(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      ++*(v2 + 4);
      v3 = *v2;
      if (*(v2 + 336))
      {
        result = (*(v3 + 24))(v2);
      }

      else
      {
        result = (*(v3 + 16))(v2);
      }

      if (*(v2 + 4) == 1)
      {
        v4 = *(*v2 + 8);

        return v4(v2);
      }

      else
      {
        --*(v2 + 4);
      }
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorTransportService::startDiscovery(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1120FA0;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorTransportService::startDiscovery(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120FA0;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorTransportService::startDiscovery(void)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return (*(*result + 40))();
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorTransportService::restartDiscovery(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F1120FC8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::AuthenticatorTransportService::restartDiscovery(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1120FC8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

void *WTF::Detail::CallableWrapper<WebKit::AuthenticatorTransportService::restartDiscovery(void)::$_0,void>::call(void *result)
{
  v1 = result[1];
  if (v1)
  {
    result = *(v1 + 8);
    if (result)
    {
      return (*(*result + 48))();
    }
  }

  return result;
}

WTF::StringImpl *WTF::VectorTypeOperations<WebKit::AutofillEvent>::destruct(WTF::StringImpl *result, WTF::StringImpl *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 2);
      *(v3 + 2) = 0;
      if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }

      result = *(v3 + 1);
      *(v3 + 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, a2);
        }
      }

      v3 = (v3 + 56);
    }

    while (v3 != a2);
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1121018;
  v2 = a1[104];
  a1[104] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData((a1 + 4));
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_0,void,BOOL>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1121018;
  v2 = a1[104];
  a1[104] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  WebKit::WebAuthenticationRequestData::~WebAuthenticationRequestData((a1 + 4));
  v4 = a1[2];
  a1[2] = 0;
  if (v4 && atomic_fetch_add(v4, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v4);
    WTF::fastFree(v4, v3);
  }

  return WTF::fastFree(a1, v3);
}

void WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_0,void,BOOL>::call(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      ++*(v4 + 16);
      v5 = *(v4 + 24);
      if (!v5 || (v6 = *(v5 + 8)) == 0)
      {
        __break(0xC471u);
        goto LABEL_52;
      }

      v7 = *(*(v6 + 392) + 376);
      ++v7[4];
      if (a2)
      {
        v8 = (*(*v7 + 56))(v7);
        if (v8 & 1) != 0 || (v8 = (*(*v7 + 64))(v7), (v8))
        {
          if (*(a1 + 824))
          {
            v8 = WebCore::SecurityOriginData::toString(&v32, (a1 + 792));
          }

          else
          {
            v17 = *MEMORY[0x1E696EBA0];
            if (*MEMORY[0x1E696EBA0])
            {
              atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
            }

            v32 = v17;
          }

          if (*(a1 + 336) == 1)
          {
            if (*(a1 + 752))
            {
LABEL_28:
              WebCore::SecurityOriginData::securityOrigin(&v33, (a1 + 608));
              WebCore::buildClientDataJson();
              v19 = *buf;
              *buf = 0;
              v20 = v33;
              v33 = 0;
              if (v20)
              {
                WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v20, v18);
              }

              WebCore::buildClientDataJsonHash(buf, v19, v18);
              v22 = *(a1 + 32);
              if (v22)
              {
                *(a1 + 32) = 0;
                *(a1 + 40) = 0;
                WTF::fastFree(v22, v21);
              }

              v23 = *buf;
              *(a1 + 32) = *buf;
              *(a1 + 40) = *&buf[8];
              v24 = *(a1 + 832);
              *(a1 + 832) = 0;
              v25 = WTF::fastMalloc(v23, 0x18);
              *v25 = &unk_1F1121040;
              v25[1] = v24;
              v25[2] = v19;
              *buf = v25;
              WebKit::AuthenticatorManager::handleRequest(v7, a1 + 32, buf);
              v27 = *buf;
              *buf = 0;
              if (v27)
              {
                (*(*v27 + 8))(v27);
              }

              v28 = v32;
              v32 = 0;
              if (v28 && atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v28, v26);
              }

              goto LABEL_43;
            }
          }

          else
          {
            if (*(a1 + 336))
            {
              mpark::throw_bad_variant_access(v8);
            }

            if (*(a1 + 752))
            {
              goto LABEL_28;
            }
          }

LABEL_52:
          __break(1u);
          return;
        }

        if (WebKit::WebAuthenticatorCoordinatorProxy::isASCAvailable(v4))
        {
          WebKit::WebAuthenticatorCoordinatorProxy::performRequest(v4, a1 + 32, (a1 + 832));
          goto LABEL_43;
        }

        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *buf = 0u;
        LOBYTE(v33) = 6;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v29 = *(a1 + 832);
        *(a1 + 832) = 0;
        (*(*v29 + 16))(v29, buf, 0, &v33);
        (*(*v29 + 8))(v29);
        v31 = v34;
        v34 = 0;
        if (v31 && atomic_fetch_add_explicit(v31, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v31, v30);
        }

        WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(buf, v30);
        v15 = qword_1ED641530;
        if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v16 = "Web Authentication is not currently supported in this environment.";
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
        v42 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *buf = 0u;
        LOBYTE(v33) = 31;
        WTF::StringImpl::createWithoutCopyingNonEmpty();
        v12 = *(a1 + 832);
        *(a1 + 832) = 0;
        (*(*v12 + 16))(v12, buf, 0, &v33);
        (*(*v12 + 8))(v12);
        v14 = v34;
        v34 = 0;
        if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v14, v13);
        }

        WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(buf, v13);
        v15 = qword_1ED641530;
        if (!os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_43;
        }

        *buf = 0;
        v16 = "Request cancelled due to rejected prompt after lack of user gesture.";
      }

      _os_log_error_impl(&dword_19D52D000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
LABEL_43:
      if (v7[4] == 1)
      {
        (*(*v7 + 24))(v7);
      }

      else
      {
        --v7[4];
      }

      if (*(v4 + 16) == 1)
      {
        (*(*v4 + 24))(v4);
      }

      else
      {
        --*(v4 + 16);
      }

      return;
    }
  }

  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *buf = 0u;
  LOBYTE(v33) = 8;
  v34 = 0;
  v9 = *(a1 + 832);
  *(a1 + 832) = 0;
  (*(*v9 + 16))(v9, buf, 0, &v33);
  (*(*v9 + 8))(v9);
  v11 = v34;
  v34 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(buf, v10);
}

void *WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_0::operator()(BOOL)::{lambda(mpark::variant<WTF::Ref<WTF::CompletionHandler::AuthenticatorResponse,WTF::RawPtrTraits<mpark::variant>,WTF::DefaultRefDerefTraits<mpark::variant>>,WTF::CompletionHandler::AuthenticatorAttachment> &&)#1},void,WTF::Ref<WTF::CompletionHandler::AuthenticatorResponse,WTF::RawPtrTraits<mpark::variant>,WTF::DefaultRefDerefTraits<mpark::variant>>>::~CallableWrapper(void *a1)
{
  *a1 = &unk_1F1121040;
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v2);
  }

  v3 = a1[1];
  a1[1] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_0::operator()(BOOL)::{lambda(mpark::variant<WTF::Ref<WTF::CompletionHandler::AuthenticatorResponse,WTF::RawPtrTraits<mpark::variant>,WTF::DefaultRefDerefTraits<mpark::variant>>,WTF::CompletionHandler::AuthenticatorAttachment> &&)#1},void,WTF::Ref<WTF::CompletionHandler::AuthenticatorResponse,WTF::RawPtrTraits<mpark::variant>,WTF::DefaultRefDerefTraits<mpark::variant>>>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121040;
  v3 = *(this + 2);
  *(this + 2) = 0;
  if (v3)
  {
    WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v3);
  }

  v4 = *(this + 1);
  *(this + 1) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

void WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_0::operator()(BOOL)::{lambda(mpark::variant<WTF::Ref<WTF::CompletionHandler::AuthenticatorResponse,WTF::RawPtrTraits<mpark::variant>,WTF::DefaultRefDerefTraits<mpark::variant>>,WTF::CompletionHandler::AuthenticatorAttachment> &&)#1},void,WTF::Ref<WTF::CompletionHandler::AuthenticatorResponse,WTF::RawPtrTraits<mpark::variant>,WTF::DefaultRefDerefTraits<mpark::variant>>>::call(mpark *a1, _BYTE *a2)
{
  if (a2[16] == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    memset(v13, 0, sizeof(v13));
    v10 = *(a1 + 1);
    *(a1 + 1) = 0;
    (*(*v10 + 16))(v10, v13, 0, a2);
    (*(*v10 + 8))(v10);
  }

  else
  {
    if (a2[16])
    {
      mpark::throw_bad_variant_access(a1);
    }

    (*(**a2 + 24))(v13);
    v4 = *(a1 + 2);
    *(a1 + 2) = 0;
    v5 = *(&v14 + 1);
    *(&v14 + 1) = v4;
    if (v5)
    {
      WTF::DeferrableRefCounted<JSC::ArrayBuffer>::deref(v5);
    }

    v6 = WebCore::AuthenticatorResponse::attachment(*a2);
    v11[0] = 0;
    v12 = 0;
    v7 = *(a1 + 1);
    *(a1 + 1) = 0;
    (*(*v7 + 16))(v7, v13, v6, v11);
    (*(*v7 + 8))(v7);
    v9 = v12;
    v12 = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v8);
    }
  }

  WebCore::AuthenticatorResponseData::~AuthenticatorResponseData(v13, v8);
}

void *WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_1,void,std::optional<BOOL>>::~CallableWrapper(void *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121068;
  WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_1::~$_1((a1 + 1), a2);
  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_1,void,std::optional<BOOL>>::~CallableWrapper(WTF *a1, WTF::StringImpl *a2)
{
  *a1 = &unk_1F1121068;
  WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_1::~$_1(a1 + 8, a2);

  return WTF::fastFree(a1, v3);
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebAuthenticatorCoordinatorProxy::handleRequest(WebKit::WebAuthenticationRequestData &&,WTF::CompletionHandler<void ()(WebCore::AuthenticatorResponseData const&,WTF::CompletionHandler::AuthenticatorAttachment,WTF::CompletionHandler::ExceptionData const&)> &&)::$_1,void,std::optional<BOOL>>::call(uint64_t a1, __int16 a2)
{
  v3 = *(a1 + 8);
  if (!v3 || (v4 = *(v3 + 8)) == 0)
  {
    v16 = *(a1 + 24);
    *(a1 + 24) = 0;
    (*(*v16 + 16))(v16, 0);
    v17 = *(*v16 + 8);

    return v17(v16);
  }

  ++*(v4 + 4);
  if ((a2 & 0x100) != 0)
  {
LABEL_23:
    v18 = *(a1 + 24);
    *(a1 + 24) = 0;
    (*(*v18 + 16))(v18, a2 & 1);
    result = (*(*v18 + 8))(v18);
    if (*(v4 + 4) == 1)
    {
      v19 = *(*v4 + 24);

      return v19(v4);
    }

    else
    {
      --*(v4 + 4);
    }

    return result;
  }

  result = WebKit::WebAuthenticatorCoordinatorProxy::removeExpiredAutofillEvents(v4);
  v7 = *(v4 + 19);
  if (!v7)
  {
LABEL_22:
    LOBYTE(a2) = 0;
    goto LABEL_23;
  }

  v8 = 56 * v7 - 56;
  v9 = v7 - 1;
  while (1)
  {
    if (v9 >= *(v4 + 19))
    {
      __break(0xC471u);
      goto LABEL_29;
    }

    v10 = *(v4 + 8) + v8;
    result = WTF::equal(*(v10 + 8), *(a1 + 16), v6);
    if (!result)
    {
      goto LABEL_14;
    }

    WebCore::RegistrableDomain::RegistrableDomain(&v21, (v10 + 16));
    WebCore::RegistrableDomain::RegistrableDomain(&v20, (a1 + 32));
    v13 = WTF::equal(v21, v20, v11);
    v14 = v20;
    v20 = 0;
    if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v14, v12);
    }

    result = v21;
    v21 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        break;
      }
    }

    if (v13)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 -= 56;
    --v9;
    if (v8 == -56)
    {
      goto LABEL_22;
    }
  }

  result = WTF::StringImpl::destroy(result, v12);
  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_17:
  if (v9 < *(v4 + 19))
  {
    v15 = *(v4 + 8) + v8;
    WTF::VectorTypeOperations<WebKit::AutofillEvent>::destruct(v15, (v15 + 56));
    WTF::VectorMover<false,WebKit::AutofillEvent>::moveOverlapping((v15 + 56), (*(v4 + 8) + 56 * *(v4 + 19)), v15);
    --*(v4 + 19);
    LOBYTE(a2) = 1;
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebKit::AutofillEvent>::moveOverlapping(WTF::StringImpl *result, WTF::StringImpl *a2, unint64_t a3)
{
  v4 = result;
  if (result <= a3)
  {
    if (a2 != result)
    {
      v5 = 0;
      v6 = a3 + a2 - result;
      do
      {
        v7 = a2 + v5;
        v8 = v6 + v5;
        *(v8 - 56) = *(a2 + v5 - 56);
        v9 = *(a2 + v5 - 48);
        *(a2 + v5 - 48) = 0;
        *(v8 - 48) = v9;
        WTF::URL::URL(v6 + v5 - 40, (a2 + v5 - 40));
        v11 = *(a2 + v5 - 40);
        *(a2 + v5 - 40) = 0;
        if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v11, v10);
        }

        result = *(v7 - 6);
        *(v7 - 6) = 0;
        if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v10);
        }

        v5 -= 56;
      }

      while ((a2 + v5) != v4);
    }
  }

  else
  {

    return WTF::VectorMover<false,WebKit::AutofillEvent>::move(result, a2, a3);
  }

  return result;
}

WTF::StringImpl *WTF::VectorMover<false,WebKit::AutofillEvent>::move(WTF::StringImpl *result, WTF::StringImpl *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = a3 + 16;
    v5 = (result + 16);
    do
    {
      v6 = v5 - 2;
      *(v4 - 16) = *(v5 - 2);
      v7 = *(v5 - 1);
      *(v5 - 1) = 0;
      *(v4 - 8) = v7;
      WTF::URL::URL(v4, v5);
      v9 = *v5;
      *v5 = 0;
      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v8);
      }

      result = *(v5 - 1);
      *(v5 - 1) = 0;
      if (result)
      {
        if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(result, v8);
        }
      }

      v4 += 56;
      v5 += 7;
    }

    while (v6 + 7 != a2);
  }

  return result;
}

uint64_t WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebKit::AutofillEvent>(unsigned int *a1, unint64_t a2)
{
  v3 = WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, a1[3] + 1, a2);
  v4 = (*a1 + 56 * a1[3]);
  *v4 = *v3;
  v5 = v3[1];
  v3[1] = 0;
  v4[1] = v5;
  WTF::URL::URL((v4 + 2), v3 + 2);
  ++a1[3];
  return 1;
}

unint64_t WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(WTF::StringImpl *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = *a1;
  if (*a1 > a3 || v5 + 56 * *(a1 + 3) <= a3)
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

    WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

WTF::StringImpl *WTF::Vector<WebKit::AutofillEvent,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(WTF::StringImpl *result, unint64_t a2)
{
  if (*(result + 2) < a2)
  {
    if (a2 >= 0x4924925)
    {
      __break(0xC471u);
    }

    else
    {
      v2 = result;
      v3 = *result;
      v4 = (*result + 56 * *(result + 3));
      v5 = 56 * a2;
      v6 = WTF::fastMalloc((a2 << 6), (56 * a2));
      *(v2 + 2) = v5 / 0x38;
      *v2 = v6;
      result = WTF::VectorMover<false,WebKit::AutofillEvent>::move(v3, v4, v6);
      if (v3)
      {
        if (*v2 == v3)
        {
          *v2 = 0;
          *(v2 + 2) = 0;
        }

        return WTF::fastFree(v3, v7);
      }
    }
  }

  return result;
}

uint64_t WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::growImpl<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  if (v4 < a2)
  {
    if (v4 + (v4 >> 1) <= v4 + 1)
    {
      v5 = v4 + 1;
    }

    else
    {
      v5 = v4 + (v4 >> 1);
    }

    if (v5 <= a2)
    {
      v5 = a2;
    }

    if (v5 <= 0x10)
    {
      v6 = 16;
    }

    else
    {
      v6 = v5;
    }

    WTF::Vector<WebCore::AuthenticatorTransport,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v6);
  }

  *(a1 + 12) = v2;
  return 1;
}

uint64_t *std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__emplace_hint_unique_key_args<fido::ProtocolVersion,fido::ProtocolVersion const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v6 = std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__find_equal<fido::ProtocolVersion>(a1, a2, &v12, &v11, a3);
  v8 = *v6;
  if (!*v6)
  {
    v9 = v6;
    v8 = WTF::fastMalloc(v7, 0x20);
    *(v8 + 7) = *a4;
    std::__tree<std::__value_type<cbor::CBORValue,cbor::CBORValue>,std::__map_value_compare<cbor::CBORValue,std::__value_type<cbor::CBORValue,cbor::CBORValue>,cbor::CBORValue::CTAPLess,true>,WTF::FastAllocator<std::__value_type<cbor::CBORValue,cbor::CBORValue>>>::__insert_node_at(a1, v12, v9, v8);
  }

  return v8;
}

uint64_t *std::__tree<fido::ProtocolVersion,std::less<fido::ProtocolVersion>,WTF::FastAllocator<fido::ProtocolVersion>>::__find_equal<fido::ProtocolVersion>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockHidConnection::feedReports(void)::$_0,void>::~CallableWrapper(uint64_t a1, void *a2)
{
  *a1 = &unk_1F1121090;
  v3 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockHidConnection::feedReports(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1121090;
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 1) = 0;
    *(this + 4) = 0;
    WTF::fastFree(v4, a2);
  }

  return WTF::fastFree(this, a2);
}

BOOL WTF::Detail::CallableWrapper<WebKit::MockHidConnection::feedReports(void)::$_0,void>::call(_BOOL8 result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      return WebKit::HidConnection::receiveReport(v2, (result + 8));
    }
  }

  return result;
}

void *WTF::Detail::CallableWrapper<WebKit::MockHidConnection::continueFeedReports(void)::$_0,void>::~CallableWrapper(void *a1, void *a2)
{
  v3 = a1[1];
  *a1 = &unk_1F11210B8;
  a1[1] = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return a1;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::MockHidConnection::continueFeedReports(void)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F11210B8;
  *(this + 1) = 0;
  if (v3 && atomic_fetch_add(v3, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v3);
    WTF::fastFree(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

WTF::RefCountedBase *WTF::Detail::CallableWrapper<WebKit::MockHidConnection::continueFeedReports(void)::$_0,void>::call(WTF::RefCountedBase *result, unint64_t a2)
{
  v2 = *(result + 1);
  if (v2)
  {
    result = *(v2 + 8);
    if (result)
    {
      return WebKit::MockHidConnection::feedReports(result, a2);
    }
  }

  return result;
}

WTF *WebKit::CtapNfcDriver::transact(uint64_t a1, uint64_t a2, WTF::RunLoop *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!fido::isCtap2Protocol())
  {
    WebKit::NfcConnection::transact(*(a1 + 40), a2, &buf);
    (*(**a3 + 16))(*a3, &buf);
    result = buf;
    if (!buf)
    {
      return result;
    }

    *&buf = 0;
    DWORD2(buf) = 0;
    return WTF::fastFree(result, v14);
  }

  v6 = *(a2 + 12);
  if (*(a1 + 32) == 1 && *(a1 + 28) < v6)
  {
    v7 = qword_1ED641530;
    if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v6;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "CtapNfcDriver::transact Sending data larger than maxSize. msgSize=%ld", &buf, 0xCu);
      LODWORD(v6) = *(a2 + 12);
    }
  }

  LODWORD(buf) = 4224;
  v8 = *(a2 + 8);
  v9 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v28 = v8;
  v29 = v6;
  *(&buf + 1) = 0x10000;
  v27 = v9;
  v10 = *(a1 + 40);
  apdu::ApduCommand::getEncodedCommand(&v18, &buf);
  WebKit::NfcConnection::transact(v10, &v18, &v20);
  apdu::ApduResponse::createFromMessage();
  v12 = v20;
  if (v20)
  {
    v20 = 0;
    LODWORD(v21) = 0;
    WTF::fastFree(v12, v11);
  }

  v13 = v18;
  if (v18)
  {
    v18 = 0;
    v19 = 0;
    WTF::fastFree(v13, v11);
  }

  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v24 != 36864)
  {
    if (v24 == 27904)
    {
      LOBYTE(v18) = 1;
      WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v20, &v18, 1);
      WebKit::CtapNfcDriver::respondAsync(a3, &v20);
      v15 = v20;
      if (!v20)
      {
        goto LABEL_20;
      }

      v20 = 0;
      LODWORD(v21) = 0;
LABEL_18:
      WTF::fastFree(v15, v14);
      goto LABEL_20;
    }

LABEL_17:
    v20 = 0;
    v21 = 0;
    WebKit::CtapNfcDriver::respondAsync(a3, &v20);
    v15 = v20;
    if (!v20)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  WebKit::CtapNfcDriver::respondAsync(a3, &v22);
LABEL_20:
  if (v25 == 1)
  {
    v17 = v22;
    if (v22)
    {
      v22 = 0;
      v23 = 0;
      WTF::fastFree(v17, v14);
    }
  }

  result = v27;
  if (v27)
  {
    v27 = 0;
    v28 = 0;
    return WTF::fastFree(result, v14);
  }

  return result;
}

uint64_t WebKit::CtapNfcDriver::respondAsync(WTF::RunLoop *a1, uint64_t *a2)
{
  WTF::RunLoop::mainSingleton(a1);
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  v6 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v8 = WTF::fastMalloc(v7, 0x20);
  *v8 = &unk_1F1121260;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  v10 = v8;
  WTF::RunLoop::dispatch();
  result = v10;
  if (v10)
  {
    return (*(*v10 + 8))(v10);
  }

  return result;
}

double WebKit::FidoAuthenticator::FidoAuthenticator(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 752) = 0;
  *(a1 + 792) = 0;
  *(a1 + 824) = 0;
  result = 0.0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 321) = 0u;
  *a1 = &unk_1F1121110;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 832) = v3;
  return result;
}

void WebKit::FidoAuthenticator::~FidoAuthenticator(WebKit::FidoAuthenticator *this)
{
  *this = &unk_1F1121110;
  v2 = *(this + 104);
  if (v2)
  {
    ++v2[4];
    (*(*v2 + 24))(v2);
    if (v2[4] == 1)
    {
      (*(*v2 + 8))(v2);
    }

    else
    {
      --v2[4];
    }

    v3 = *(this + 104);
    *(this + 104) = 0;
    if (v3)
    {
      if (v3[4] == 1)
      {
        (*(*v3 + 8))(v3);
      }

      else
      {
        --v3[4];
      }
    }
  }

  WebKit::Authenticator::~Authenticator(this);
}

uint64_t *WebKit::FidoAuthenticator::protectedDriver@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = this[104];
  ++*(v2 + 16);
  *a1 = v2;
  return this;
}

uint64_t *WebKit::FidoAuthenticator::releaseDriver@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  *a1 = this[104];
  this[104] = 0;
  return this;
}

WebKit::FidoService *WebKit::FidoService::FidoService(WebKit::FidoService *this, WebKit::AuthenticatorTransportServiceObserver *a2)
{
  *this = &unk_1F10E8570;
  *(this + 1) = 0;
  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 1, a2);
  v4 = *(a2 + 1);
  atomic_fetch_add(v4, 1u);
  *(this + 2) = v4;
  *(this + 6) = 1;
  *this = &unk_1F10E85B8;
  *(this + 4) = 0;
  return this;
}

uint64_t *WebKit::FidoService::getInfo(unint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  fido::encodeEmptyAuthenticatorRequest();
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v5 = *(a1 + 8);
  atomic_fetch_add(v5, 1u);
  v6 = *a2;
  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((*a2 + 8), *a2);
  v7 = *(v6 + 8);
  v8 = WTF::fastMalloc(atomic_fetch_add(v7, 1u), 0x18);
  *v8 = &unk_1F1121288;
  v8[1] = v5;
  v8[2] = v7;
  v15 = v8;
  (*(*v4 + 16))(v4, &v13, &v15);
  v10 = v15;
  v15 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = v13;
  if (v13)
  {
    v13 = 0;
    v14 = 0;
    WTF::fastFree(v11, v9);
  }

  return WTF::HashTable<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::HashTraits<WTF::Ref<WebKit::CtapDriver,WTF::RawPtrTraits<WebKit::CtapDriver>,WTF::DefaultRefDerefTraits<WebKit::CtapDriver>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>((a1 + 32), a2, &v13);
}

uint64_t WebKit::U2fAuthenticator::U2fAuthenticator(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 400) = 0;
  *(a1 + 752) = 0;
  *(a1 + 792) = 0;
  *(a1 + 824) = 0;
  *(a1 + 768) = 0u;
  *(a1 + 784) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 321) = 0u;
  v3 = *a2;
  *a2 = 0;
  *(a1 + 832) = v3;
  *a1 = &unk_1F1121140;
  v4 = WTF::RunLoop::mainSingleton(a1);
  v5 = v4;
  while (1)
  {
    v6 = *(v4 + 8);
    if ((v6 & 1) == 0)
    {
      break;
    }

    v7 = *(v4 + 8);
    atomic_compare_exchange_strong_explicit((v4 + 8), &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v4 + 8));
LABEL_6:
  v10 = v5;
  v8 = WTF::fastMalloc(v6, 0x20);
  *v8 = &unk_1F11212B0;
  v8[1] = a1;
  v8[2] = WebKit::U2fAuthenticator::retryLastCommand;
  v8[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  *(a1 + 840) = &unk_1F10E6DC8;
  *(a1 + 880) = v8;
  if (v10)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v10 + 8));
  }

  *(a1 + 888) = 0u;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0;
  return a1;
}

WTF *WebKit::U2fAuthenticator::makeCredential(WebKit::U2fAuthenticator *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641530;
  v3 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v9)
    {
      v5 = v9 + 16;
    }

    else
    {
      v5 = 0;
    }

    *buf = 134218242;
    v11 = this;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::makeCredential", buf, 0x16u);
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::fastFree(v9, v4);
      }

      else
      {
        --*v9;
      }
    }

    v3 = v8;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = WTF::StringImpl::destroy(v8, v4);
    }
  }

  if (*(this + 336))
  {
    mpark::throw_bad_variant_access(v3);
  }

  result = fido::isConvertibleToU2fRegisterCommand((this + 48), v4);
  if (result)
  {
    if (*(this + 41))
    {
      v7 = *(this + 114);
      *(this + 114) = v7 + 1;
      return WebKit::U2fAuthenticator::checkExcludeList(this, v7);
    }

    else
    {
      return WebKit::U2fAuthenticator::issueRegisterCommand(this);
    }
  }

  return result;
}

WTF *WebKit::U2fAuthenticator::checkExcludeList(WebKit::U2fAuthenticator *this, unint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = qword_1ED641530;
  v5 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v11)
    {
      v6 = v11 + 16;
    }

    else
    {
      v6 = 0;
    }

    *buf = 134218242;
    *&buf[4] = this;
    v13 = 2080;
    v14 = v6;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::checkExcludeList", buf, 0x16u);
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::fastFree(v11, v7);
      }

      else
      {
        --*v11;
      }
    }

    v5 = v10;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v5 = WTF::StringImpl::destroy(v10, v7);
    }
  }

  if (*(this + 336))
  {
LABEL_21:
    mpark::throw_bad_variant_access(v5);
  }

  if (*(this + 41) <= a2)
  {
    return WebKit::U2fAuthenticator::issueRegisterCommand(this);
  }

  v5 = fido::convertToU2fCheckOnlySignCommand();
  if ((BYTE2(v14) & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  result = WebKit::U2fAuthenticator::issueNewCommand(this, buf, 1);
  if (BYTE2(v14) == 1)
  {
    result = *buf;
    if (*buf)
    {
      memset(buf, 0, sizeof(buf));
      return WTF::fastFree(result, v9);
    }
  }

  return result;
}

uint64_t WebKit::U2fAuthenticator::issueRegisterCommand(WebKit::U2fAuthenticator *this)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(this + 336))
  {
    goto LABEL_43;
  }

  v1 = this;
  fido::convertToU2fRegisterCommand();
  v2 = qword_1ED641530;
  result = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (!result)
    {
      goto LABEL_24;
    }

    WebCore::toString();
    this = WTF::String::utf8();
    if (v15)
    {
      if (v12)
      {
        v5 = v12 + 16;
      }

      else
      {
        v5 = 0;
      }

      WTF::base64EncodeToString();
      WTF::String::utf8();
      if (v10)
      {
        v6 = v10 + 16;
      }

      else
      {
        v6 = 0;
      }

      *buf = 134218498;
      v17 = v1;
      v18 = 2080;
      v19 = v5;
      v20 = 2080;
      v21 = v6;
      _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueRegisterCommand: Sending %s", buf, 0x20u);
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v7);
        }

        else
        {
          --*v10;
        }
      }

      if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v9, v7);
      }

      if (v12)
      {
        if (*v12 == 1)
        {
          WTF::fastFree(v12, v7);
        }

        else
        {
          --*v12;
        }
      }

      this = v11;
      if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(v11, v7);
      }

      if (v15)
      {
LABEL_24:
        result = WebKit::U2fAuthenticator::issueNewCommand(v1, &v13, 0);
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_43:
    mpark::throw_bad_variant_access(this);
  }

  if (result)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v12)
    {
      v8 = v12 + 16;
    }

    else
    {
      v8 = 0;
    }

    *buf = 134218242;
    v17 = v1;
    v18 = 2080;
    v19 = v8;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueRegisterCommand: request not convertible to U2F.", buf, 0x16u);
    if (v12)
    {
      if (*v12 == 1)
      {
        WTF::fastFree(v12, v4);
      }

      else
      {
        --*v12;
      }
    }

    result = v11;
    if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      result = WTF::StringImpl::destroy(v11, v4);
    }
  }

LABEL_35:
  if (v15 == 1)
  {
    result = v13;
    if (v13)
    {
      v13 = 0;
      v14 = 0;
      return WTF::fastFree(result, v4);
    }
  }

  return result;
}

WTF *WebKit::U2fAuthenticator::issueNewCommand(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641530;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v11)
    {
      v7 = v11 + 16;
    }

    else
    {
      v7 = 0;
    }

    *buf = 134218498;
    v13 = a1;
    v14 = 2080;
    v15 = v7;
    v16 = 256;
    v17 = v3;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueNewCommand, type=%hhu", buf, 0x19u);
    if (v11)
    {
      if (*v11 == 1)
      {
        WTF::fastFree(v11, v8);
      }

      else
      {
        --*v11;
      }
    }

    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v8);
    }
  }

  WTF::VectorBuffer<unsigned char,0ul,WTF::FastMalloc>::adopt(a1 + 888, a2);
  *(a1 + 904) = v3;
  return WebKit::U2fAuthenticator::issueCommand(a1, a1 + 888, v3);
}

uint64_t WebKit::U2fAuthenticator::getAssertion(WebKit::U2fAuthenticator *this)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641530;
  v3 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v13)
    {
      v5 = v13 + 16;
    }

    else
    {
      v5 = 0;
    }

    *buf = 134218242;
    v15 = this;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::getAssertion: Sending bogus sign.", buf, 0x16u);
    v6 = v13;
    v13 = 0;
    if (v6)
    {
      if (*v6 == 1)
      {
        WTF::fastFree(v6, v4);
      }

      else
      {
        --*v6;
      }
    }

    v3 = v12;
    v12 = 0;
    if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = WTF::StringImpl::destroy(v3, v4);
    }
  }

  if (*(this + 336) != 1)
  {
    mpark::throw_bad_variant_access(v3);
  }

  if (fido::isConvertibleToU2fSignCommand((this + 48), v4))
  {
    v7 = *(this + 114);
    *(this + 114) = v7 + 1;
    return WebKit::U2fAuthenticator::issueSignCommand(this, v7);
  }

  else
  {
    v9 = qword_1ED641530;
    result = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      WebCore::toString();
      WTF::String::utf8();
      if (v13)
      {
        v10 = v13 + 16;
      }

      else
      {
        v10 = 0;
      }

      *buf = 134218242;
      v15 = this;
      v16 = 2080;
      v17 = v10;
      _os_log_impl(&dword_19D52D000, v9, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::getAssertion: command not convertible.", buf, 0x16u);
      if (v13)
      {
        if (*v13 == 1)
        {
          WTF::fastFree(v13, v11);
        }

        else
        {
          --*v13;
        }
      }

      result = v12;
      if (v12)
      {
        if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          return WTF::StringImpl::destroy(v12, v11);
        }
      }
    }
  }

  return result;
}

uint64_t WebKit::U2fAuthenticator::issueSignCommand(WebKit::U2fAuthenticator *this, unint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  if (*(this + 336) != 1)
  {
    goto LABEL_58;
  }

  v3 = this;
  if (*(this + 23) > a2)
  {
    fido::convertToU2fSignCommand();
    v4 = qword_1ED641530;
    result = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
    if ((v23 & 1) == 0)
    {
      if (result)
      {
        WebCore::toString();
        WTF::String::utf8();
        if (v24)
        {
          v16 = v24 + 16;
        }

        else
        {
          v16 = 0;
        }

        *buf = 134218242;
        *&buf[4] = v3;
        v26 = 2080;
        v27 = v16;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueSignCommand: request not convertible to U2F.", buf, 0x16u);
        v17 = v24;
        v24 = 0;
        if (v17)
        {
          if (*v17 == 1)
          {
            WTF::fastFree(v17, v6);
          }

          else
          {
            --*v17;
          }
        }

        result = v20;
        if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          result = WTF::StringImpl::destroy(v20, v6);
        }
      }

LABEL_49:
      if (v23 == 1)
      {
        result = v21;
        if (v21)
        {
          v21 = 0;
          v22 = 0;
          return WTF::fastFree(result, v6);
        }
      }

      return result;
    }

    if (!result)
    {
      goto LABEL_25;
    }

    WebCore::toString();
    this = WTF::String::utf8();
    if (v23)
    {
      if (v24)
      {
        v7 = v24 + 16;
      }

      else
      {
        v7 = 0;
      }

      WTF::base64EncodeToString();
      WTF::String::utf8();
      if (v19)
      {
        v8 = v19 + 16;
      }

      else
      {
        v8 = 0;
      }

      *buf = 134218754;
      *&buf[4] = v3;
      v26 = 2080;
      v27 = v7;
      v28 = 2048;
      v29 = a2;
      v30 = 2080;
      v31 = v8;
      _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueSignCommand: index: %lu Sending %s", buf, 0x2Au);
      if (v19)
      {
        if (*v19 == 1)
        {
          WTF::fastFree(v19, v9);
        }

        else
        {
          --*v19;
        }
      }

      if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v9);
      }

      v10 = v24;
      v24 = 0;
      if (v10)
      {
        if (*v10 == 1)
        {
          WTF::fastFree(v10, v9);
        }

        else
        {
          --*v10;
        }
      }

      this = v20;
      if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        this = WTF::StringImpl::destroy(v20, v9);
      }

      if (v23)
      {
LABEL_25:
        result = WebKit::U2fAuthenticator::issueNewCommand(v3, &v21, 4);
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_58:
    mpark::throw_bad_variant_access(this);
  }

  v11 = qword_1ED641530;
  v12 = os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v21)
    {
      v13 = v21 + 16;
    }

    else
    {
      v13 = 0;
    }

    *buf = 134218242;
    *&buf[4] = v3;
    v26 = 2080;
    v27 = v13;
    _os_log_impl(&dword_19D52D000, v11, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueSignCommand: Sending bogus sign.", buf, 0x16u);
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      if (*v15 == 1)
      {
        WTF::fastFree(v15, v14);
      }

      else
      {
        --*v15;
      }
    }

    v12 = v24;
    v24 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v12 = WTF::StringImpl::destroy(v12, v14);
    }
  }

  fido::constructBogusU2fRegistrationCommand(buf, v12);
  WebKit::U2fAuthenticator::issueNewCommand(v3, buf, 3);
  result = *buf;
  if (*buf)
  {
    memset(buf, 0, sizeof(buf));
    return WTF::fastFree(result, v6);
  }

  return result;
}

WTF *WebKit::U2fAuthenticator::issueCommand(uint64_t a1, uint64_t a2, char a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = qword_1ED641530;
  if (os_log_type_enabled(qword_1ED641530, OS_LOG_TYPE_DEFAULT))
  {
    WebCore::toString();
    WTF::String::utf8();
    if (v23)
    {
      v7 = v23 + 16;
    }

    else
    {
      v7 = 0;
    }

    WTF::base64EncodeToString();
    WTF::String::utf8();
    if (v21)
    {
      v8 = v21 + 16;
    }

    else
    {
      v8 = 0;
    }

    *buf = 134218498;
    *&buf[4] = a1;
    *v25 = 2080;
    *&v25[2] = v7;
    v26 = 2080;
    v27 = v8;
    _os_log_impl(&dword_19D52D000, v6, OS_LOG_TYPE_DEFAULT, "%p [transport=%s] - U2fAuthenticator::issueCommand: Sending %s", buf, 0x20u);
    if (v21)
    {
      if (*v21 == 1)
      {
        WTF::fastFree(v21, v9);
      }

      else
      {
        --*v21;
      }
    }

    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v9);
    }

    v10 = v23;
    v23 = 0;
    if (v10)
    {
      if (*v10 == 1)
      {
        WTF::fastFree(v10, v9);
      }

      else
      {
        --*v10;
      }
    }

    if (v22 && atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v22, v9);
    }
  }

  v11 = *(a1 + 832);
  v12 = (v11[4] + 1);
  v11[4] = v12;
  v13 = *(a2 + 12);
  memset(buf, 0, sizeof(buf));
  *v25 = v13;
  if (v13)
  {
    v14 = WTF::fastMalloc(v12, v13);
    *&buf[8] = v13;
    *buf = v14;
    memcpy(v14, *a2, *(a2 + 12));
  }

  WTF::WeakPtrFactory<WebKit::AuthenticatorObserver,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
  v15 = *(a1 + 8);
  v16 = WTF::fastMalloc(atomic_fetch_add(v15, 1u), 0x18);
  *v16 = &unk_1F11212D8;
  v16[1] = v15;
  *(v16 + 16) = a3;
  v23 = v16;
  (*(*v11 + 16))(v11, buf, &v23);
  v18 = v23;
  v23 = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  result = *buf;
  if (*buf)
  {
    memset(buf, 0, sizeof(buf));
    result = WTF::fastFree(result, v17);
  }

  if (v11[4] == 1)
  {
    return (*(*v11 + 8))(v11);
  }

  --v11[4];
  return result;
}

uint64_t WebKit::WebDeviceOrientationAndMotionAccessController::shouldAllowAccess(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v62 = *MEMORY[0x1E69E9840];
  v12 = *(a2 + 32);
  WebKit::PageLoadState::ref((v12 + 1120));
  WebKit::PageLoadState::activeURL(&v57, (v12 + 1144));
  WebCore::SecurityOrigin::createFromString(&v58, &v57, v13);
  v15 = v58;
  LOBYTE(v59[0]) = 0;
  v61 = -1;
  v16 = *(v58 + 32);
  if (*(v58 + 32))
  {
    if (v16 != 255)
    {
      *v59 = *(v58 + 8);
      v61 = v16;
    }

    *&v58 = 0;
    goto LABEL_87;
  }

  v17 = *(v58 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit(v17, 2u, memory_order_relaxed);
  }

  v59[0] = v17;
  v18 = *(v15 + 16);
  if (v18)
  {
    atomic_fetch_add_explicit(v18, 2u, memory_order_relaxed);
  }

  v59[1] = v18;
  v60 = *(v15 + 24);
  v19 = *(v15 + 32);
  v15 = v58;
  v61 = v19;
  *&v58 = 0;
  if (v15)
  {
LABEL_87:
    WTF::ThreadSafeRefCounted<WebCore::SecurityOrigin,(WTF::DestructionThread)0>::deref(v15, v14);
  }

  v20 = v57;
  v57 = 0;
  if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v20, v14);
  }

  WebKit::PageLoadState::deref((v12 + 1120));
  isNull = WebKit::WebDeviceOrientationAndMotionAccessController::cachedDeviceOrientationPermission(a1, v59);
  if (isNull != 2 || (a5 & 1) == 0)
  {
    v29 = *a6;
    *a6 = 0;
    (*(*v29 + 16))(v29, isNull);
    result = (*(*v29 + 8))(v29);
    goto LABEL_74;
  }

  if (v61)
  {
    if (v61 != 1)
    {
LABEL_30:
      mpark::throw_bad_variant_access(isNull);
    }
  }

  else
  {
    if (!v59[0] && !v59[1] && (v60 & 0x10000) == 0)
    {
      __break(0xC471u);
      JUMPOUT(0x19E14ECBCLL);
    }

    if (v59[0] == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E14ECDCLL);
    }
  }

  v22 = a1[2];
  v55 = a4;
  v56 = a3;
  if (v22 || (WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a1 + 2, 0), (v22 = a1[2]) != 0))
  {
    v23 = *(v22 - 8);
  }

  else
  {
    v23 = 0;
  }

  LODWORD(v58) = -1640531527;
  WORD2(v58) = 0;
  BYTE6(v58) = 0;
  WTF::add<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>(&v58, v59);
  v24 = WTF::SuperFastHash::hash(&v58) & v23;
  v25 = (v22 + 48 * v24);
  isNull = WebCore::SecurityOriginData::isNull(v25);
  if ((isNull & 1) == 0)
  {
    v26 = 0;
    LODWORD(a3) = 1;
    while (!*(v25 + 24))
    {
      if (*v25 != -1)
      {
        goto LABEL_24;
      }

      v26 = v25;
LABEL_27:
      v24 = (v24 + a3) & v23;
      v25 = (v22 + 48 * v24);
      isNull = WebCore::SecurityOriginData::isNull(v25);
      LODWORD(a3) = a3 + 1;
      if (isNull)
      {
        if (v26)
        {
          *(v26 + 1) = 0u;
          *(v26 + 2) = 0u;
          *v26 = 0u;
          --*(a1[2] - 4);
          v25 = v26;
        }

        goto LABEL_34;
      }
    }

    if (*(v25 + 24) != 1)
    {
      goto LABEL_30;
    }

LABEL_24:
    result = WebCore::operator==();
    if (result)
    {
      goto LABEL_48;
    }

    goto LABEL_27;
  }

LABEL_34:
  mpark::detail::assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>>::generic_assign<mpark::detail::copy_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1> const&>(v25, v59);
  v32 = *(v25 + 11);
  v33 = *(v25 + 4);
  if (v32)
  {
    v34 = 8 * v32;
    do
    {
      v35 = *v33;
      *v33 = 0;
      if (v35)
      {
        (*(*v35 + 8))(v35);
      }

      v33 = (v33 + 8);
      v34 -= 8;
    }

    while (v34);
    v33 = *(v25 + 4);
  }

  if (v33)
  {
    *(v25 + 4) = 0;
    *(v25 + 10) = 0;
    WTF::fastFree(v33, v30);
  }

  *&v31 = 0;
  v58 = v31;
  *(v25 + 2) = v31;
  result = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v58, v30);
  v36 = a1[2];
  if (v36)
  {
    v37 = *(v36 - 12) + 1;
  }

  else
  {
    v37 = 1;
  }

  *(v36 - 12) = v37;
  v38 = (*(v36 - 16) + v37);
  v39 = *(v36 - 4);
  if (v39 <= 0x400)
  {
    if (3 * v39 > 4 * v38)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (v39 <= 2 * v38)
  {
LABEL_47:
    result = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::expand(a1 + 2, v25);
    v25 = result;
  }

LABEL_48:
  v40 = *(v25 + 11);
  if (v40 == *(v25 + 10))
  {
    result = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(v25 + 8, v40 + 1, a6);
    a6 = result;
    v40 = *(v25 + 11);
  }

  v41 = (*(v25 + 4) + 8 * v40);
  v42 = *a6;
  *a6 = 0;
  *v41 = v42;
  v43 = v40 + 1;
  *(v25 + 11) = v43;
  if (v43 > 1)
  {
    goto LABEL_74;
  }

  v44 = *(a2 + 120);
  if (!*a1)
  {
    v46 = WTF::fastCompactMalloc(0x10);
    *v46 = 1;
    *(v46 + 8) = a1;
    v47 = *a1;
    *a1 = v46;
    if (v47)
    {
      if (atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v47);
        WTF::fastFree(v47, v45);
      }
    }
  }

  v48 = *a1;
  add = atomic_fetch_add(*a1, 1u);
  v50 = v61;
  if (v61)
  {
    if (v61 == 255)
    {
      v52 = WTF::fastMalloc(add, 0x30);
      v53 = 0;
      v51 = 0;
      *v52 = &unk_1F1121300;
      v52[1] = v48;
      *(v52 + 16) = 0;
      *(v52 + 40) = -1;
      goto LABEL_64;
    }

    v51 = v59[0];
    v25 = v59[1];
  }

  else
  {
    v51 = v59[0];
    if (v59[0])
    {
      add = atomic_fetch_add_explicit(v59[0], 2u, memory_order_relaxed);
    }

    v25 = v59[1];
    if (v59[1])
    {
      add = atomic_fetch_add_explicit(v59[1], 2u, memory_order_relaxed);
    }

    LODWORD(a3) = v60;
    v50 = v61;
  }

  v52 = WTF::fastMalloc(add, 0x30);
  *v52 = &unk_1F1121300;
  v52[1] = v48;
  *(v52 + 16) = 0;
  *(v52 + 40) = -1;
  if (v50)
  {
    if (v50 == 255)
    {
      v53 = 0;
      goto LABEL_64;
    }

    v52[2] = v51;
    v52[3] = v25;
  }

  else
  {
    v52[2] = v51;
    v52[3] = v25;
    *(v52 + 8) = a3;
    v51 = 0;
    v25 = 0;
  }

  *(v52 + 40) = v50;
  v53 = v50 == 0;
LABEL_64:
  *&v58 = v52;
  (*(*v44 + 520))(v44, a2, v56, v55, &v58);
  result = v58;
  *&v58 = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
    if (!v53)
    {
      goto LABEL_74;
    }
  }

  else if (!v53)
  {
    goto LABEL_74;
  }

  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v25, v28);
  }

  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(v51, v28);
  }

LABEL_74:
  if (!v61)
  {
    v54 = v59[1];
    v59[1] = 0;
    if (v54 && atomic_fetch_add_explicit(v54, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v54, v28);
    }

    result = v59[0];
    v59[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v28);
      }
    }
  }

  return result;
}

uint64_t WebKit::WebDeviceOrientationAndMotionAccessController::cachedDeviceOrientationPermission(WebKit::WebDeviceOrientationAndMotionAccessController *this, const WebCore::SecurityOriginData *a2)
{
  if (*(a2 + 24))
  {
    if (*(a2 + 24) != 1)
    {
      mpark::throw_bad_variant_access(this);
    }
  }

  else if (*a2 == -1)
  {
    return 1;
  }

  if (WebCore::SecurityOriginData::isNull(a2))
  {
    return 1;
  }

  v5 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(this + 1, a2);
  v6 = *(this + 1);
  if (v6)
  {
    v6 = (v6 + 40 * *(v6 - 1));
  }

  if (v6 == v5)
  {
    return 2;
  }

  else
  {
    return (*(v5 + 32) & 1) == 0;
  }
}

void WebKit::WebDeviceOrientationAndMotionAccessController::setCachedDeviceOrientationPermission(uint64_t *result, WebCore::SecurityOriginData *this, int a3)
{
  if (*(this + 24))
  {
    if (*(this + 24) != 1)
    {
      mpark::throw_bad_variant_access(result);
    }
  }

  else if (*this == -1)
  {
    return;
  }

  if ((WebCore::SecurityOriginData::isNull(this) & 1) == 0)
  {
    if (a3 == 2)
    {
      v6 = WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::SecurityOriginData>>,(WTF::ShouldValidateKey)1,WebCore::SecurityOriginData>(result + 1, this);
      v7 = result[1];
      if (v7)
      {
        v8 = (v7 + 40 * *(v7 - 4));
        if (v8 == v6)
        {
          return;
        }
      }

      else
      {
        if (!v6)
        {
          return;
        }

        v8 = 0;
      }

      if (v8 != v6)
      {

        WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,BOOL>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::remove(result + 1, v6);
      }
    }

    else
    {
      if (a3 == 1)
      {
        v10 = 0;
      }

      else
      {
        if (a3)
        {
          return;
        }

        v10 = 1;
      }

      WTF::HashMap<WebCore::SecurityOriginData,BOOL,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<BOOL>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<WebCore::SecurityOriginData const&,BOOL>(v9, this, result + 1, &v10);
    }
  }
}

uint64_t WebKit::WebDeviceOrientationAndMotionAccessController::ref(WebKit::WebDeviceOrientationAndMotionAccessController *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    return CFRetain(*(v1 + 8));
  }

  result = 92;
  __break(0xC471u);
  return result;
}

void WebKit::WebDeviceOrientationAndMotionAccessController::deref(WebKit::WebDeviceOrientationAndMotionAccessController *this)
{
  v1 = *(*(this + 3) + 8);
  if (v1)
  {
    CFRelease(*(v1 + 8));
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t WebKit::WebsiteDataRecord::displayNameForHostName(WebKit::WebsiteDataRecord *this, const WTF::String *a2)
{
  WebCore::PublicSuffixStore::singleton(this);

  return WebCore::PublicSuffixStore::topPrivatelyControlledDomain();
}

void WebKit::WebsiteDataStore::createNonPersistent()
{
  v1 = API::Object::newObject(0x230uLL, 124);
  v2 = API::Object::newObject(0x230uLL, 125);
  v4 = WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(v2, 0, 1);
  EphemeralSessionID = PAL::SessionID::generateEphemeralSessionID(v4);
  WebKit::WebsiteDataStore::WebsiteDataStore(v1, &v4, EphemeralSessionID);
}

void WebKit::WebsiteDataStore::~WebsiteDataStore(WebKit::WebsiteDataStore *this)
{
  v88 = *MEMORY[0x1E69E9840];
  *this = &unk_1F1121170;
  v2 = qword_1ED641350;
  v3 = os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v6 = *(this + 3);
    *v85 = 134218240;
    *&v85[4] = this;
    v86 = 2048;
    v87 = v6;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - WebsiteDataStore::~WebsiteDataStore sessionID=%llu", v85, 0x16u);
  }

  if ((*(this + 3) - 1) >= 0xFFFFFFFFFFFFFFFELL)
  {
    __break(0xC471u);
    JUMPOUT(0x19E14F9A0);
  }

  v7 = *(*(this + 28) + 120);
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    if (*(this + 3) >= -1 && v7[1])
    {
      if (_MergedGlobals_105)
      {
        v8 = qword_1ED642B80;
        if (qword_1ED642B80)
        {
          if (v7 == -1)
          {
            __break(0xC471u);
            JUMPOUT(0x19E14FA00);
          }

          v9 = *(qword_1ED642B80 - 8);
          v10 = v7[4];
          if (v10 < 0x100)
          {
            v11 = WTF::StringImpl::hashSlowCase(v7);
          }

          else
          {
            v11 = v10 >> 8;
          }

          for (i = 0; ; v11 = i + v13)
          {
            v13 = v11 & v9;
            v3 = *(v8 + 16 * v13);
            if (v3 != -1)
            {
              if (!v3)
              {
                v14 = qword_1ED642B80;
                if (!qword_1ED642B80)
                {
                  goto LABEL_31;
                }

                v15 = (qword_1ED642B80 + 16 * *(qword_1ED642B80 - 4));
                goto LABEL_20;
              }

              v3 = WTF::equal(v3, v7, v5);
              if (v3)
              {
                break;
              }
            }

            ++i;
          }

          v15 = (v8 + 16 * v13);
          v14 = qword_1ED642B80;
          if (!qword_1ED642B80)
          {
            goto LABEL_21;
          }

LABEL_20:
          v14 += 16 * *(v14 - 4);
          if (v14 == v15)
          {
            goto LABEL_31;
          }

LABEL_21:
          if (v14 != v15)
          {
            v3 = *v15;
            *v15 = -1;
            if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              v3 = WTF::StringImpl::destroy(v3, v4);
            }

            v16 = qword_1ED642B80;
            v17 = vadd_s32(*(qword_1ED642B80 - 16), 0xFFFFFFFF00000001);
            *(qword_1ED642B80 - 16) = v17;
            v18 = *(v16 - 4);
            if (6 * v17.i32[1] < v18 && v18 >= 9)
            {
              WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,PAL::SessionID>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,PAL::SessionID>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,PAL::SessionID,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<PAL::SessionID>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::rehash(v18 >> 1, v18);
            }
          }
        }
      }

      else
      {
        qword_1ED642B80 = 0;
        _MergedGlobals_105 = 1;
      }
    }

LABEL_31:
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      v3 = WTF::StringImpl::destroy(v7, v4);
    }
  }

  WebKit::allDataStores(v3);
  if (WebKit::allDataStores(void)::map)
  {
    v21 = *(this + 3);
    if (v21 == -1)
    {
      __break(0xC471u);
      JUMPOUT(0x19E14F9C0);
    }

    if (!v21)
    {
      __break(0xC471u);
      JUMPOUT(0x19E14F9E0);
    }

    v22 = *(WebKit::allDataStores(void)::map - 8);
    v23 = (v21 + ~(v21 << 32)) ^ ((v21 + ~(v21 << 32)) >> 22);
    v24 = 9 * ((v23 + ~(v23 << 13)) ^ ((v23 + ~(v23 << 13)) >> 8));
    v25 = (v24 ^ (v24 >> 15)) + ~((v24 ^ (v24 >> 15)) << 27);
    v26 = v22 & ((v25 >> 31) ^ v25);
    v27 = *(WebKit::allDataStores(void)::map + 16 * v26);
    if (v27 != v21)
    {
      v28 = 1;
      while (v27)
      {
        v26 = (v26 + v28) & v22;
        v27 = *(WebKit::allDataStores(void)::map + 16 * v26);
        ++v28;
        if (v27 == v21)
        {
          goto LABEL_42;
        }
      }

      v26 = *(WebKit::allDataStores(void)::map - 4);
    }

LABEL_42:
    if (v26 != *(WebKit::allDataStores(void)::map - 4))
    {
      v29 = (WebKit::allDataStores(void)::map + 16 * v26);
      v30 = v29[1];
      *v29 = -1;
      v29[1] = 0;
      if (v30 && atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v30);
        WTF::fastFree(v30, v20);
      }

      v31 = WebKit::allDataStores(void)::map;
      v32 = vadd_s32(*(WebKit::allDataStores(void)::map - 16), 0xFFFFFFFF00000001);
      *(WebKit::allDataStores(void)::map - 16) = v32;
      v33 = *(v31 - 4);
      if (6 * v32.i32[1] < v33 && v33 >= 9)
      {
        WTF::HashTable<PAL::SessionID,WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>>,WTF::DefaultHash<PAL::SessionID>,WTF::HashMap<PAL::SessionID,WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<PAL::SessionID>,WTF::HashTraits<PAL::SessionID>,WTF::HashTraits<WTF::WeakRef<WebKit::WebsiteDataStore,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<PAL::SessionID>,WTF::FastMalloc>::rehash(v33 >> 1, v33);
      }
    }
  }

  v35 = *(this + 54);
  if (v35)
  {
    v36 = v35 + 4;
    atomic_fetch_add(v35 + 4, 1u);
    *v85 = *(this + 59);
    *(this + 59) = 0;
    WebKit::NetworkProcessProxy::removeSession(v35, this, v85);
    v38 = *v85;
    *v85 = 0;
    if (v38)
    {
      (*(*v38 + 8))(v38);
    }

    v35 = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v36, v37);
  }

  if (*(this + 59))
  {
    WTF::RunLoop::mainSingleton(v35);
    v39 = *(this + 59);
    *(this + 59) = 0;
    v41 = WTF::fastMalloc(v40, 0x10);
    *v41 = &unk_1F11213C8;
    v41[1] = v39;
    *v85 = v41;
    WTF::RunLoop::dispatch();
    v42 = *v85;
    *v85 = 0;
    if (v42)
    {
      (*(*v42 + 8))(v42);
    }
  }

  {
    if (WebKit::singleton(void)::singleton)
    {
      v43 = *(WebKit::singleton(void)::singleton + 8);
      if (v43)
      {
        v44 = (v43 + 16);
        atomic_fetch_add((v43 + 16), 1u);
        WebKit::GPUProcessProxy::removeSession(v43, *(this + 3));
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v44, v45);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  v46 = *(this + 68);
  *v46 = 0;
  if ((*(v46 + 16) & 1) == 0 && !*(v46 + 8))
  {
    MEMORY[0x19EB14CF0]();
  }

  v47 = *(this + 67);
  *(this + 67) = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = *(this + 66);
  if (v48)
  {
    WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v48, v20);
  }

  if (*(this + 512) == 1)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 496, v20);
  }

  v49 = *(this + 61);
  if (v49)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,Inspector::SupplementalBackendDispatcher *>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,Inspector::SupplementalBackendDispatcher *,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<Inspector::SupplementalBackendDispatcher *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)0,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v49, v20);
  }

  v50 = *(this + 59);
  *(this + 59) = 0;
  if (v50)
  {
    (*(*v50 + 8))(v50);
  }

  v51 = *(this + 58);
  *(this + 58) = 0;
  if (v51)
  {
    CFRelease(*(v51 + 8));
  }

  v52 = *(this + 57);
  *(this + 57) = 0;
  if (v52)
  {
    if (v52[2] == 1)
    {
      (*(*v52 + 8))(v52);
    }

    else
    {
      --v52[2];
    }
  }

  v53 = *(this + 55);
  *(this + 55) = 0;
  if (v53)
  {
    std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 440, v53);
  }

  v54 = *(this + 54);
  *(this + 54) = 0;
  if (v54)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v54 + 16), v53);
  }

  v55 = *(this + 53);
  *(this + 53) = 0;
  if (v55)
  {
    CFRelease(*(v55 + 8));
  }

  v56 = *(this + 52);
  *(this + 52) = 0;
  if (v56)
  {
    (*(*v56 + 8))(v56);
  }

  v57 = *(this + 51);
  *(this + 51) = 0;
  if (v57 && atomic_fetch_add(v57, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v57);
    v57 = WTF::fastFree(v57, v53);
  }

  v58 = *(this + 50);
  if (v58)
  {
    v59 = *(v58 - 4);
    if (v59)
    {
      v60 = v58 + 32;
      while (!*(v60 - 8))
      {
        if (*(v60 - 32) != -1)
        {
          goto LABEL_93;
        }

LABEL_101:
        v60 += 48;
        if (!--v59)
        {
          goto LABEL_105;
        }
      }

      if (*(v60 - 8) != 1)
      {
        mpark::throw_bad_variant_access(v57);
      }

LABEL_93:
      v57 = WTF::Vector<WTF::CompletionHandler<void ()(WebCore::DeviceOrientationOrMotionPermissionState)>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v60, v53);
      if (!*(v60 - 8))
      {
        v61 = *(v60 - 24);
        *(v60 - 24) = 0;
        if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v61, v53);
        }

        v57 = *(v60 - 32);
        *(v60 - 32) = 0;
        if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          v57 = WTF::StringImpl::destroy(v57, v53);
        }
      }

      *(v60 - 8) = -1;
      goto LABEL_101;
    }

LABEL_105:
    WTF::fastFree((v58 - 16), v53);
  }

  v62 = *(this + 49);
  if (v62)
  {
    WTF::HashTable<WebCore::SecurityOriginData,WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::SecurityOriginData,unsigned long long>>,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashMap<WebCore::SecurityOriginData,unsigned long long,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<unsigned long long>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v62, v53);
  }

  v63 = *(this + 48);
  if (v63)
  {
    *(v63 + 8) = 0;
    v64 = *(this + 48);
    *(this + 48) = 0;
    if (v64)
    {
      if (atomic_fetch_add(v64, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v64);
        WTF::fastFree(v64, v53);
      }
    }
  }

  v65 = *(this + 47);
  *(this + 47) = 0;
  if (v65)
  {
    if (v65[4] == 1)
    {
      (*(*v65 + 24))(v65);
    }

    else
    {
      --v65[4];
    }
  }

  v66 = *(this + 93);
  if (v66)
  {
    v67 = *(this + 45);
    v68 = 8 * v66;
    do
    {
      v69 = *v67;
      *v67 = 0;
      if (v69)
      {
        WTF::RefCounted<WebKit::SecKeyProxyStore>::deref(v69 + 8, v53);
      }

      ++v67;
      v68 -= 8;
    }

    while (v68);
  }

  v70 = *(this + 45);
  if (v70)
  {
    *(this + 45) = 0;
    *(this + 92) = 0;
    WTF::fastFree(v70, v53);
  }

  v71 = *(this + 43);
  if (v71)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v71, v53);
  }

  v72 = *(this + 41);
  if (v72)
  {
    WTF::HashTable<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTraits<WTF::Ref<WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>,WTF::DefaultRefDerefTraits<WTF::DefaultWeakPtrImpl>>>,WTF::FastMalloc>::deallocateTable(v72, v53);
  }

  v73 = *(this + 39);
  if (v73)
  {
    *(this + 39) = 0;
    *(this + 80) = 0;
    WTF::fastFree(v73, v53);
  }

  v74 = *(this + 38);
  *(this + 38) = 0;
  if (v74)
  {
    (*(*v74 + 40))(v74);
  }

  v75 = *(this + 37);
  *(this + 37) = 0;
  if (v75)
  {
    (*(*v75 + 8))(v75);
  }

  v76 = *(this + 35);
  *(this + 35) = 0;
  if (v76 && atomic_fetch_add_explicit(v76, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v76, v53);
  }

  v77 = *(this + 34);
  *(this + 34) = 0;
  if (v77 && atomic_fetch_add_explicit(v77, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v77, v53);
  }

  v78 = *(this + 33);
  *(this + 33) = 0;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v78, v53);
  }

  v79 = *(this + 32);
  *(this + 32) = 0;
  if (v79 && atomic_fetch_add_explicit(v79, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v79, v53);
  }

  v80 = *(this + 31);
  *(this + 31) = 0;
  if (v80)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(v80, v53);
  }

  v81 = *(this + 30);
  *(this + 30) = 0;
  if (v81)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(v81, v53);
  }

  v82 = *(this + 28);
  *(this + 28) = 0;
  if (v82)
  {
    CFRelease(*(v82 + 8));
  }

  if (*(this + 208) == 1)
  {
    WebKit::WebsiteDataStoreConfiguration::Directories::~Directories((this + 40), v53);
  }

  v83 = *(this + 2);
  if (v83)
  {
    *(v83 + 8) = 0;
    v84 = *(this + 2);
    *(this + 2) = 0;
    if (v84)
    {
      if (atomic_fetch_add(v84, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v84);
        WTF::fastFree(v84, v53);
      }
    }
  }
}

{
  WebKit::WebsiteDataStore::~WebsiteDataStore(this);

  JUMPOUT(0x19EB14CF0);
}

void WebKit::WebsiteDataStore::defaultDataStore(CFTypeRef **__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>)
{
  WebKit::InitializeWebKit2(this);
  {
    WebKit::globalDefaultDataStore(void)::globalDefaultDataStore = 0;
    goto LABEL_6;
  }

  if (!WebKit::globalDefaultDataStore(void)::globalDefaultDataStore || (v3 = *(WebKit::globalDefaultDataStore(void)::globalDefaultDataStore + 8)) == 0)
  {
LABEL_6:
    v4 = API::Object::newObject(0x230uLL, 125);
    v5 = WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(v4, 1, 1);
    WebKit::WebsiteDataStore::create(&v5, 1);
  }

  CFRetain(v3[1]);
  *a1 = v3;
}

void WebKit::WebsiteDataStore::deleteDefaultDataStoreForTesting(WebKit::WebsiteDataStore *this)
{
  {
    v1 = WebKit::protectedDefaultDataStore(void)::globalDefaultDataStore;
    WebKit::protectedDefaultDataStore(void)::globalDefaultDataStore = 0;
    if (v1)
    {
      CFRelease(*(v1 + 8));
    }
  }

  else
  {
    WebKit::protectedDefaultDataStore(void)::globalDefaultDataStore = 0;
  }
}

uint64_t *WebKit::WebsiteDataStore::existingDataStoreForIdentifier@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>)
{
  WebKit::allDataStores(this);
  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::allDataStores(void)::map);
  v6 = WebKit::allDataStores(void)::map;
  if (WebKit::allDataStores(void)::map)
  {
    v6 = (WebKit::allDataStores(void)::map + 16 * *(WebKit::allDataStores(void)::map - 4));
  }

  if (v6 == result)
  {
LABEL_14:
    v9 = 0;
LABEL_16:
    *a1 = v9;
  }

  else
  {
    v8 = *this;
    v7 = *(this + 1);
    while (1)
    {
      v9 = *(result[1] + 8);
      if (!v9)
      {
        break;
      }

      if (*(*(v9 + 224) + 32) != 0 && *(*(v9 + 224) + 40) == v7 && *(*(v9 + 224) + 32) == v8)
      {
        result = CFRetain(*(v9 + 8));
        goto LABEL_16;
      }

      do
      {
        result += 2;
      }

      while (result != v5 && (*result + 1) <= 1);
      if (result == v6)
      {
        goto LABEL_14;
      }
    }

    result = 92;
    __break(0xC471u);
  }

  return result;
}

void WebKit::WebsiteDataStore::dataStoreForIdentifier(WebKit::WebsiteDataStore **__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>)
{
  if (*this <= 1uLL)
  {
LABEL_16:
    __break(0xC471u);
    JUMPOUT(0x19E14FE08);
  }

  WebKit::InitializeWebKit2(this);
  WebKit::allDataStores(v4);
  v5 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::allDataStores(void)::map);
  v7 = WebKit::allDataStores(void)::map;
  if (WebKit::allDataStores(void)::map)
  {
    v7 = WebKit::allDataStores(void)::map + 16 * *(WebKit::allDataStores(void)::map - 4);
  }

  if (v7 == v5)
  {
LABEL_14:
    v10 = API::Object::newObject(0x230uLL, 125);
    v12 = WebKit::WebsiteDataStoreConfiguration::WebsiteDataStoreConfiguration(v10, this);
    PersistentSessionID = PAL::SessionID::generatePersistentSessionID(v12);
    WebKit::WebsiteDataStore::create(&v12, PersistentSessionID);
  }

  while (1)
  {
    v8 = *(v5[1] + 8);
    if (!v8)
    {
      goto LABEL_16;
    }

    if (*(*(v8 + 224) + 32) != 0 && *(*(v8 + 224) + 40) == *(this + 1) && *(*(v8 + 224) + 32) == *this)
    {
      break;
    }

    do
    {
      v5 += 2;
    }

    while (v5 != v6 && (*v5 + 1) <= 1);
    if (v5 == v7)
    {
      goto LABEL_14;
    }
  }

  CFRetain(*(v8 + 8));
  *a1 = v8;
}

uint64_t WebKit::WebsiteDataStore::soAuthorizationCoordinator(WebKit::WebsiteDataStore *this, const WebKit::WebPageProxy *a2)
{
  v3 = *(a2 + 46);
  CFRetain(*(v3 + 8));
  {
    atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key = WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::$_0::operator() const(void)::impl;
  }

  BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v3 + 40), &WebKit::WebPreferencesKey::isExtensibleSSOEnabledKey(void)::key, v4);
  CFRelease(*(v3 + 8));
  if (BoolValueForKey)
  {
    result = *(this + 55);
    if (!result)
    {
      v8 = WebKit::SOAuthorizationCoordinator::operator new(0x10, v6);
      result = WebKit::SOAuthorizationCoordinator::SOAuthorizationCoordinator(v8);
      v9 = *(this + 55);
      *(this + 55) = result;
      if (v9)
      {
        std::default_delete<WebCore::PixelBufferConformerCV>::operator()[abi:sn200100](this + 440, v9);
        return *(this + 55);
      }
    }
  }

  else
  {
    result = 314;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::fetchData(WTF::WorkQueue *a1, int a2, char a3, uint64_t *a4)
{
  v8 = WTF::WorkQueue::mainSingleton(a1);
  (*(*v8 + 32))(v8);
  v11 = v8;
  WebKit::WebsiteDataStore::fetchDataAndApply(a1, a2, a3, &v11, a4);
  result = v11;
  if (v11)
  {
    v10 = *(*v11 + 40);

    return v10();
  }

  return result;
}

atomic_uint **WebKit::WebsiteDataStore::fetchDataAndApply(uint64_t a1, int a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v90 = *MEMORY[0x1E69E9840];
  v10 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 24);
    *buf = 134217984;
    *&buf[4] = v12;
    _os_log_impl(&dword_19D52D000, v10, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::fetchDataAndApply started to fetch data for session %llu", buf, 0xCu);
  }

  v13 = WTF::fastMalloc(v11, 0x28);
  *v13 = 1;
  *(v13 + 4) = a3;
  v14 = *a4;
  *a4 = 0;
  v13[1] = v14;
  v15 = *a5;
  *a5 = 0;
  v13[2] = v15;
  v13[3] = 0;
  CFRetain(*(a1 + 8));
  v13[4] = a1;
  v85 = v13;
  if ((a2 & 2) != 0)
  {
    v17 = *(a1 + 304);
    (*(*v17 + 32))(v17);
    WTF::String::isolatedCopy();
    add = atomic_fetch_add(v13, 1u);
    *&buf[8] = v13;
    v19 = WTF::fastMalloc(add, 0x18);
    *v19 = &unk_1F11214B8;
    v19[1] = *buf;
    v20 = *&buf[8];
    memset(buf, 0, sizeof(buf));
    v19[2] = v20;
    v78 = v19;
    (*(*v17 + 48))(v17, &v78);
    v22 = v78;
    v78 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&buf[8], v21);
    v24 = *buf;
    *buf = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v23);
    }

    (*(*v17 + 40))(v17);
  }

  if (a2)
  {
    v25 = *(a1 + 24);
    v26 = a2;
    while (WebKit::WebsiteData::ownerProcess(v26 & -v26))
    {
      v26 &= v26 - 1;
      if (!v26)
      {
        goto LABEL_21;
      }
    }

    if (v25 >= -1)
    {
      WebKit::WebsiteDataStore::networkProcess(a1, v16);
    }

    v27 = *(a1 + 432);
    if (v27)
    {
      atomic_fetch_add((v27 + 16), 1u);
      v28 = *(a1 + 24);
      v30 = v85;
      v29 = atomic_fetch_add(v85, 1u);
      v83 = v30;
      v31 = WTF::fastMalloc(v29, 0x10);
      *v31 = &unk_1F1121508;
      v32 = v83;
      v83 = 0;
      v84 = v31;
      v31[1] = v32;
      v78 = v28;
      v87 = a2;
      v86 = a3;
      *buf = &v78;
      *&buf[8] = &v87;
      v89 = &v86;
      WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::FetchWebsiteData,WTF::CompletionHandler<void ()(WebKit::WebsiteData)>>(v27, buf, &v84, 0, 0, 1);
      v34 = v84;
      v84 = 0;
      if (v34)
      {
        (*(*v34 + 8))(v34);
      }

      WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&v83, v33);
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v27 + 16), v35);
    }

LABEL_21:
    if ((a2 & 4) != 0)
    {
      WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 328), buf);
      v36 = *(a1 + 328);
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

      v78 = (a1 + 328);
      v79 = v38;
      v80 = v38;
      v81 = v38;
      v82 = v36 + 8 * v37;
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v78);
      for (i = *&buf[8]; *&buf[8] != v79; i = *&buf[8])
      {
        v40 = *(*i + 8);
        atomic_fetch_add((v40 + 16), 1u);
        v41 = *(v40 + 80);
        if ((!v41 || (*(v41 + 104) & 1) == 0) && *(v40 + 88))
        {
          v42 = *(a1 + 24);
          v43 = v85;
          v44 = v85;
          atomic_fetch_add(v85, 1u);
          v83 = v44;
          v45 = WTF::fastMalloc(v43, 0x10);
          *v45 = &unk_1F1121530;
          v46 = v83;
          v83 = 0;
          v84 = v45;
          v45[1] = v46;
          WebKit::WebProcessProxy::fetchWebsiteData(v40, v42, a2, &v84);
          v48 = v84;
          v84 = 0;
          if (v48)
          {
            (*(*v48 + 8))(v48);
          }

          WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&v83, v47);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v40 + 16), v16);
        WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
      }
    }
  }

  if ((a2 & 0x10000) != 0)
  {
    WebKit::WebsiteDataStore::ensureProtectedDeviceIdHashSaltStorage(buf, a1, v16);
    v49 = *buf;
    v50 = v85;
    v51 = WTF::fastMalloc(atomic_fetch_add(v85, 1u), 0x10);
    *v51 = &unk_1F1121558;
    v51[1] = v50;
    v84 = 0;
    v78 = v51;
    WebKit::DeviceIdHashSaltStorage::getDeviceIdHashSaltOrigins(v49, &v78);
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }

    WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&v84, v52);
    if (*buf)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(*buf, v16);
    }
  }

  if ((a2 & 0x100) == 0 || *(a1 + 24) < -1)
  {
    goto LABEL_49;
  }

  v53 = *(WebKit::WebsiteDataStore::resolvedDirectories(a1) + 13);
  if (v53)
  {
    atomic_fetch_add_explicit(v53, 2u, memory_order_relaxed);
  }

  v78 = v53;
  v54 = *(a1 + 304);
  (*(*v54 + 32))(v54);
  WTF::String::isolatedCopy();
  v55 = v85;
  v56 = v85;
  atomic_fetch_add(v85, 1u);
  *&buf[8] = v56;
  v57 = WTF::fastMalloc(v55, 0x18);
  *v57 = &unk_1F1121580;
  v57[1] = *buf;
  v58 = *&buf[8];
  memset(buf, 0, sizeof(buf));
  v57[2] = v58;
  v84 = v57;
  (*(*v54 + 48))(v54, &v84);
  v60 = v84;
  v84 = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&buf[8], v59);
  v62 = *buf;
  *buf = 0;
  if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v62, v61);
  }

  (*(*v54 + 40))(v54);
  v63 = v78;
  v78 = 0;
  if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v63, v16);
    if ((a2 & 0x200000) == 0)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_49:
    if ((a2 & 0x200000) == 0)
    {
      goto LABEL_56;
    }
  }

  if (*(a1 + 24) >= -1)
  {
    v64 = *(a1 + 224);
    v66 = *(v64 + 32);
    v67 = *(v64 + 40);
    v65 = (v64 + 32);
    if (v66 | v67)
    {
      *buf = *v65;
      v68 = 1;
    }

    else
    {
      v68 = 0;
      buf[0] = 0;
    }

    LOBYTE(v89) = v68;
    v69 = v85;
    v70 = WTF::fastMalloc(atomic_fetch_add(v85, 1u), 0x10);
    *v70 = &unk_1F11215A8;
    v70[1] = v69;
    v84 = 0;
    v78 = v70;
    WebKit::ScreenTimeWebsiteDataSupport::getScreenTimeURLs(buf, &v78);
    v72 = v78;
    v78 = 0;
    if (v72)
    {
      (*(*v72 + 8))(v72);
    }

    WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&v84, v71);
  }

LABEL_56:
  if ((a2 & 0x100) != 0)
  {
    WebKit::WebsiteDataStore::ensureProtectedMediaKeysHashSaltStorage(buf, a1);
    v73 = *buf;
    v74 = v85;
    v75 = WTF::fastMalloc(atomic_fetch_add(v85, 1u), 0x10);
    *v75 = &unk_1F11215D0;
    v75[1] = v74;
    v84 = 0;
    v78 = v75;
    WebKit::DeviceIdHashSaltStorage::getDeviceIdHashSaltOrigins(v73, &v78);
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }

    WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&v84, v76);
    if (*buf)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(*buf, v16);
    }
  }

  return WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(&v85, v16);
}

uint64_t *WebKit::WebsiteDataStore::ensureProtectedDeviceIdHashSaltStorage@<X0>(uint64_t **__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>, unint64_t a3@<X1>)
{
  result = WebKit::WebsiteDataStore::ensureDeviceIdHashSaltStorage(this, a3);
  v5 = result;
  while (1)
  {
    v6 = *result;
    if ((*result & 1) == 0)
    {
      break;
    }

    v7 = *result;
    atomic_compare_exchange_strong_explicit(result, &v7, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v7 == v6)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*result);
LABEL_6:
  *a1 = v5;
  return result;
}

atomic_ullong *WebKit::WebsiteDataStore::ensureProtectedMediaKeysHashSaltStorage(atomic_ullong *this, void *a2)
{
  v2 = this;
  v3 = a2[31];
  if (!v3)
  {
    add_explicit = a2[3];
    if (add_explicit < -1)
    {
      v6 = 0;
    }

    else
    {
      add_explicit = a2[28];
      v6 = *(add_explicit + 112);
      if (v6)
      {
        add_explicit = atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
      }
    }

    v11 = v6;
    v7 = WTF::fastMalloc(add_explicit, 0x38);
    WebKit::DeviceIdHashSaltStorage::DeviceIdHashSaltStorage(v7, &v11);
    this = a2[31];
    a2[31] = v7;
    if (this)
    {
      this = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(this, v8);
    }

    if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      this = WTF::StringImpl::destroy(v6, v8);
    }

    v3 = a2[31];
  }

  while (1)
  {
    v9 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v10 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v10, v9 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v10 == v9)
    {
      goto LABEL_16;
    }
  }

  this = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_16:
  *v2 = v3;
  return this;
}

atomic_uint **WTF::Ref<WebKit::WebsiteDataStore::fetchDataAndApply(WTF::OptionSet<WebKit::WebsiteDataType>,WTF::OptionSet<WebKit::WebsiteDataFetchOption>,WTF::Ref<WTF::WorkQueue,WTF::RawPtrTraits<WTF::WorkQueue>,WTF::DefaultRefDerefTraits<WTF::WorkQueue>> &&,WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &&)::CallbackAggregator,WTF::RawPtrTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>,WTF::DefaultRefDerefTraits<WTF::Function<void ()(WTF::Vector<WebKit::WebsiteDataRecord,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>)> &>>::~Ref(atomic_uint **a1, unint64_t a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    add = atomic_fetch_add(v3, 0xFFFFFFFF);
    if (add == 1)
    {
      atomic_store(1u, v3);
      v6 = WTF::fastMalloc(add, 0x10);
      *v6 = &unk_1F1121468;
      v6[1] = v3;
      v7 = v6;
      WTF::ensureOnMainRunLoop();
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }
  }

  return a1;
}

uint64_t WebKit::WebsiteDataStore::fetchDataForRegistrableDomains(uint64_t a1, int a2, char a3, uint64_t *a4, uint64_t **a5)
{
  v10 = *(a1 + 304);
  (*(*v10 + 32))(v10);
  v22 = v10;
  v18 = 0;
  v19 = 0;
  _ZN3WTF6MapperIZNS_21CrossThreadCopierBaseILb0ELb0ENS_6VectorIN7WebCore17RegistrableDomainELm0ENS_15CrashOnOverflowELm16ENS_10FastMallocEEEE4copyERKS7_EUlRT_E_S7_SA_vE3mapERS7_SA_RKSD_(&v18, a4);
  v11 = *a5;
  *a5 = 0;
  v20 = v11;
  v12 = WTF::fastMalloc(v11, 0x20);
  *v12 = &unk_1F11215F8;
  v12[1] = v18;
  v13 = v19;
  v18 = 0;
  v19 = 0;
  v12[2] = v13;
  v14 = v20;
  v20 = 0;
  v21 = v12;
  v12[3] = v14;
  WebKit::WebsiteDataStore::fetchDataAndApply(a1, a2, a3, &v22, &v21);
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v16 = v20;
  v20 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v18, v15);
  result = v22;
  if (v22)
  {
    return (*(*v22 + 40))(v22);
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::computeWebProcessAccessTypeForDataRemoval(unsigned int a1)
{
  if ((a1 & 4) != 0)
  {
    return 1;
  }

  else
  {
    return (a1 >> 12) & 1;
  }
}

atomic_uint *WebKit::WebsiteDataStore::removeData(uint64_t a1, unsigned int a2, uint64_t *a3, double a4)
{
  v93 = *MEMORY[0x1E69E9840];
  v8 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 24);
    *buf = 134218240;
    *&buf[4] = a4;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::removeData started to delete data modified since %f for session %llu", buf, 0x16u);
  }

  CFRetain(*(a1 + 8));
  v11 = *(a1 + 24);
  v12 = *a3;
  *a3 = 0;
  v13 = *(a1 + 544);
  if (v13)
  {
    v10 = *v13;
    ++*(v13 + 8);
    if (v10)
    {
      if (*v10)
      {
        (*(**v10 + 16))(*v10, 1);
      }
    }
  }

  v14 = WTF::fastMalloc(v10, 0x28);
  *v14 = &unk_1F1121648;
  v14[1] = a1;
  v14[2] = v11;
  v14[3] = v12;
  v14[4] = v13;
  v16 = WTF::fastMalloc(v15, 0x10);
  *v16 = 1;
  v16[1] = v14;
  if ((a2 & 2) != 0)
  {
    v17 = *(a1 + 304);
    (*(*v17 + 32))(v17);
    *buf = a4;
    WTF::String::isolatedCopy();
    add = atomic_fetch_add(v16, 1u);
    *&buf[16] = v16;
    v19 = WTF::fastMalloc(add, 0x20);
    *v19 = &unk_1F1121670;
    v19[1] = *buf;
    v19[2] = *&buf[8];
    v20 = *&buf[16];
    *&buf[8] = 0;
    *&buf[16] = 0;
    v19[3] = v20;
    v83 = v19;
    (*(*v17 + 48))(v17, &v83);
    v22 = v83;
    v83 = 0;
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *&buf[16];
    *&buf[16] = 0;
    if (v23)
    {
      WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v23, v21);
    }

    v24 = *&buf[8];
    *&buf[8] = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v21);
    }

    (*(*v17 + 40))(v17);
  }

  v25 = WebKit::computeNetworkProcessAccessTypeForDataRemoval(a2, *(a1 + 24) < -1);
  v26 = v25;
  if ((a2 & 0x1004) == 0 && !v25)
  {
    v27 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
    *v27 = &unk_1F11216C0;
    v27[1] = v16;
LABEL_55:
    v82 = 0;
    unk_1F11216D0(v27);
    (*(*v27 + 8))(v27);
    goto LABEL_56;
  }

  WebKit::WebProcessPool::allProcessPools(buf);
  if (*&buf[12])
  {
    v29 = *buf;
    v30 = 8 * *&buf[12];
    do
    {
      v31 = *v29++;
      CFRetain(*(v31 + 8));
      WebKit::WebBackForwardCache::removeEntriesForSession(*(v31 + 808), *(a1 + 24), v32);
      WebKit::WebProcessCache::clearAllProcessesForSession(*(v31 + 816), *(a1 + 24), v33);
      CFRelease(*(v31 + 8));
      v30 -= 8;
    }

    while (v30);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v28);
  if ((a2 & 0x1004) != 0)
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin((a1 + 328), buf);
    v34 = *(a1 + 328);
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

    v83 = (a1 + 328);
    v84 = v36;
    v85 = v36;
    v86 = v36;
    v87 = v34 + 8 * v35;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v83);
    for (i = *&buf[8]; *&buf[8] != v84; i = *&buf[8])
    {
      v39 = *(*i + 8);
      atomic_fetch_add((v39 + 16), 1u);
      v40 = *(v39 + 80);
      if (!v40 || (*(v40 + 104) & 1) == 0)
      {
        if (*(v39 + 88))
        {
          v41 = *(a1 + 24);
          v42 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
          *v42 = &unk_1F1121698;
          v42[1] = v16;
          v89 = *&v42;
          WebKit::WebProcessProxy::deleteWebsiteData(v39, a4, v41, a2, &v89);
          v43 = *&v89;
          v89 = 0.0;
          if (v43)
          {
            (*(*v43 + 8))(v43);
          }
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v39 + 16), v37);
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(buf);
    }
  }

  v27 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
  *v27 = &unk_1F11216C0;
  v27[1] = v16;
  v82 = v27;
  if (v26 == 1)
  {
    v45 = *(a1 + 432);
    if (!v45)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v26 != 2)
    {
      goto LABEL_55;
    }

    v45 = WebKit::WebsiteDataStore::networkProcess(a1, v44);
  }

  v80 = (v45 + 16);
  v81 = a2;
  atomic_fetch_add((v45 + 16), 1u);
  v78 = *(a1 + 24);
  v79 = v45;
  v88 = 0;
  WebKit::WebProcessPool::allProcessPools(&v83);
  if (HIDWORD(v84))
  {
    v47 = v83;
    v48 = (v83 + 8 * HIDWORD(v84));
    do
    {
      v49 = *v47;
      CFRetain(*(*v47 + 8));
      v50 = *(v49 + 84);
      if (!v50)
      {
        goto LABEL_50;
      }

      v51 = *(v49 + 72);
      v52 = 8 * v50;
      do
      {
        v53 = *v51;
        v54 = (*v51 + 16);
        atomic_fetch_add(v54, 1u);
        if ((*(v53 + 811) & 1) == 0 && *(v53 + 800) == a1 && ((v55 = *(v53 + 592)) != 0 && *(v55 - 12) || WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize((v53 + 616), v46) || *(v53 + 896) == 1))
        {
          v89 = *(v53 + 120);
          WTF::HashTable<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v88, &v89, buf);
        }

        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v54, v46);
        ++v51;
        v52 -= 8;
      }

      while (v52);
      if (v49)
      {
LABEL_50:
        CFRelease(*(v49 + 8));
      }

      v47 = (v47 + 8);
    }

    while (v47 != v48);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v46);
  v83 = v78;
  a2 = v81;
  v90 = v81;
  v89 = a4;
  *buf = &v83;
  *&buf[8] = &v90;
  *&buf[16] = &v89;
  v92 = &v88;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DeleteWebsiteData,WTF::CompletionHandler<void ()(void)>>(v79, buf, &v82, 0, 0, 1);
  if (v88)
  {
    WTF::fastFree((v88 - 16), v56);
  }

  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v80, v56);
LABEL_56:
  v58 = v82;
  v82 = 0;
  if (v58)
  {
    (*(*v58 + 8))(v58);
  }

  if ((a2 & 0x10001) != 0)
  {
    WebKit::WebsiteDataStore::ensureProtectedDeviceIdHashSaltStorage(buf, a1, v57);
    v59 = *buf;
    v60 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
    *v60 = &unk_1F11216E8;
    v60[1] = v16;
    v83 = v60;
    WebKit::DeviceIdHashSaltStorage::deleteDeviceIdHashSaltOriginsModifiedSince(v59, &v83, a4);
    v61 = v83;
    v83 = 0;
    if (v61)
    {
      (*(*v61 + 8))(v61);
    }

    if (*buf)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(*buf, v57);
    }
  }

  if ((a2 & 0x101) != 0)
  {
    WebKit::WebsiteDataStore::ensureProtectedMediaKeysHashSaltStorage(buf, a1);
    v62 = *buf;
    v63 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10);
    *v63 = &unk_1F1121710;
    v63[1] = v16;
    v83 = v63;
    WebKit::DeviceIdHashSaltStorage::deleteDeviceIdHashSaltOriginsModifiedSince(v62, &v83, a4);
    v64 = v83;
    v83 = 0;
    if (v64)
    {
      (*(*v64 + 8))(v64);
    }

    if (*buf)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(*buf, v57);
    }

    if ((a2 & 0x100) != 0 && *(a1 + 24) >= -1)
    {
      v65 = *(WebKit::WebsiteDataStore::resolvedDirectories(a1) + 13);
      if (v65)
      {
        atomic_fetch_add_explicit(v65, 2u, memory_order_relaxed);
      }

      v83 = v65;
      v66 = *(a1 + 304);
      (*(*v66 + 32))(v66);
      WTF::String::isolatedCopy();
      v67 = atomic_fetch_add(v16, 1u);
      *&buf[8] = v16;
      *&buf[16] = a4;
      v68 = WTF::fastMalloc(v67, 0x20);
      *v68 = &unk_1F1121738;
      v68[1] = *buf;
      v69 = *&buf[8];
      *buf = 0;
      *&buf[8] = 0;
      v68[2] = v69;
      v68[3] = *&buf[16];
      v89 = *&v68;
      (*(*v66 + 48))(v66, &v89);
      v71 = *&v89;
      v89 = 0.0;
      if (v71)
      {
        (*(*v71 + 8))(v71);
      }

      v72 = *&buf[8];
      *&buf[8] = 0;
      if (v72)
      {
        WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v72, v70);
      }

      v73 = *buf;
      *buf = 0;
      if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v73, v70);
      }

      (*(*v66 + 40))(v66);
      v74 = v83;
      v83 = 0;
      if (v74 && atomic_fetch_add_explicit(v74, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v74, v57);
      }
    }
  }

  if ((a2 & 0x400) != 0 && *(a1 + 24) >= -1 && (v75 = WTF::fastMalloc(atomic_fetch_add(v16, 1u), 0x10), *v75 = &unk_1F1121760, v75[1] = v16, *buf = v75, WebKit::WebsiteDataStore::removeRecentSearches(a1, buf, a4), v76 = *buf, *buf = 0, v76))
  {
    (*(*v76 + 8))(v76);
    if ((a2 & 0x200000) == 0)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v16, v57);
    }
  }

  else if ((a2 & 0x200000) == 0)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v16, v57);
  }

  if (*(a1 + 24) >= -1)
  {
    WebKit::ScreenTimeWebsiteDataSupport::removeScreenTimeDataWithInterval(*(a1 + 224), a4);
  }

  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v16, v57);
}

uint64_t WebKit::computeNetworkProcessAccessTypeForDataRemoval(uint64_t a1, int a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = 0;
    v5 = a1;
    while (1)
    {
      if ((v3 & 4) != 0)
      {
        v4 = 1;
      }

      if (!WebKit::WebsiteData::ownerProcess(v5 & -v5))
      {
        v4 = 2;
        if ((v5 & -v5) != 1 || !a2)
        {
          return v4;
        }

        v4 = 1;
      }

      v5 &= v5 - 1;
      if (!v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

atomic_uint *WebKit::WebsiteDataStore::removeData(WebKit::WebsiteDataStore *a1, unsigned int a2, uint64_t *a3, uint64_t *a4)
{
  v177 = *MEMORY[0x1E69E9840];
  v7 = qword_1ED641350;
  if (os_log_type_enabled(qword_1ED641350, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "WebsiteDataStore::removeData started to delete data for session %llu", &buf, 0xCu);
  }

  CFRetain(*(a1 + 1));
  v9 = *(a1 + 3);
  v10 = *a4;
  *a4 = 0;
  v12 = WTF::fastMalloc(v11, 0x20);
  *v12 = &unk_1F1121788;
  v12[1] = a1;
  v12[2] = v9;
  v12[3] = v10;
  v14 = WTF::fastMalloc(v13, 0x10);
  *v14 = 1;
  v156 = v14;
  v14[1] = v12;
  v168 = 0;
  v169 = 0;
  v15 = *(a3 + 3);
  if (v15)
  {
    v16 = *a3;
    v17 = *a3 + 80 * v15;
    do
    {
      v18 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((v16 + 40));
      v19 = v18;
      v21 = v20;
      v22 = *(v16 + 40);
      if (v22)
      {
        v23 = (v22 + 32 * *(v22 - 4));
      }

      else
      {
        v23 = 0;
      }

      if (v23 != v18)
      {
        do
        {
          if (HIDWORD(v169) == v169)
          {
            WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::SecurityOriginData const&>(&v168, v19);
          }

          else
          {
            mpark::detail::move_assignment<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::move_assignment((v168 + 32 * HIDWORD(v169)), v19);
            ++HIDWORD(v169);
          }

          do
          {
            v19 = (v19 + 32);
          }

          while (v19 != v21 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v19));
        }

        while (v19 != v23);
      }

      v16 += 80;
    }

    while (v16 != v17);
  }

  if ((a2 & 2) != 0)
  {
    v165 = 0;
    v24 = *(a3 + 3);
    if (v24)
    {
      v25 = *a3;
      v26 = *a3 + 80 * v24;
      do
      {
        v27 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((v25 + 40));
        v28 = v27;
        v30 = v29;
        v31 = *(v25 + 40);
        if (v31)
        {
          v32 = (v31 + 32 * *(v31 - 4));
        }

        else
        {
          v32 = 0;
        }

        if (v32 != v27)
        {
          do
          {
            WebCore::SecurityOriginData::isolatedCopy();
            WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&buf, &v165, &v157);
            if (!v174)
            {
              v34 = *(&buf + 1);
              *(&buf + 1) = 0;
              if (v34 && atomic_fetch_add_explicit(v34, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v34, v33);
              }

              v35 = buf;
              *&buf = 0;
              if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v35, v33);
              }
            }

            do
            {
              v28 = (v28 + 32);
            }

            while (v28 != v30 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v28));
          }

          while (v28 != v32);
        }

        v25 += 80;
      }

      while (v25 != v26);
    }

    v36 = *(a1 + 38);
    (*(*v36 + 32))(v36);
    v37 = v165;
    v165 = 0;
    *&buf = v37;
    WTF::String::isolatedCopy();
    v39 = v156;
    add = atomic_fetch_add(v156, 1u);
    v173 = v39;
    v40 = WTF::fastMalloc(add, 0x20);
    *v40 = &unk_1F11217B0;
    v40[1] = buf;
    v41 = *(&buf + 1);
    buf = 0uLL;
    v40[2] = v41;
    v42 = v173;
    v173 = 0;
    v40[3] = v42;
    v157 = v40;
    (*(*v36 + 48))(v36, &v157);
    v44 = v157;
    v157 = 0;
    if (v44)
    {
      (*(*v44 + 8))(v44);
    }

    v45 = v173;
    v173 = 0;
    if (v45)
    {
      WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v45, v43);
    }

    v46 = *(&buf + 1);
    *(&buf + 1) = 0;
    if (v46 && atomic_fetch_add_explicit(v46, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v46, v43);
    }

    if (buf)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(buf, v43);
    }

    (*(*v36 + 40))(v36);
    if (v165)
    {
      WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v165, v47);
    }
  }

  v48 = a2;
  v49 = WebKit::computeNetworkProcessAccessTypeForDataRemoval(a2, *(a1 + 3) < -1);
  if (v49)
  {
    v51 = v49;
    if (v49 == 2)
    {
      WebKit::WebsiteDataStore::processPools(&v167, a1, -1);
      if (!v167 || !*(v167 - 3))
      {
        v52 = API::Object::newObject(0xA8uLL, 89);
        v53 = API::ProcessPoolConfiguration::ProcessPoolConfiguration(v52);
        WebKit::InitializeWebKit2(v53);
        v54 = API::Object::newObject(0x4C0uLL, 88);
        WebKit::WebProcessPool::WebProcessPool(v54, v52);
      }
    }

    else
    {
      WebKit::WebsiteDataStore::processPools(&v167, a1, -1);
    }

    v153 = a1;
    v155 = a3;
    v55 = WTF::HashTable<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::HashTraits<WTF::Ref<WebKit::WebProcessProxy,WTF::RawPtrTraits<WebKit::WebProcessProxy>,WTF::DefaultRefDerefTraits<WebKit::WebProcessProxy>>>,WTF::FastMalloc>::begin(&v167);
    v56 = v50;
    v57 = v167;
    if (v167)
    {
      v58 = &v167[*(v167 - 1)];
    }

    else
    {
      v58 = 0;
    }

    if (v58 != v55)
    {
      while (1)
      {
        v59 = v51;
        if (v51 == 2)
        {
          WebKit::WebsiteDataStore::networkProcess(v153, v50);
        }

        v157 = 0;
        v158 = 0;
        v165 = 0;
        v166 = 0;
        v163 = 0;
        v164 = 0;
        v60 = *(v155 + 3);
        if (v60)
        {
          v61 = *v155;
          v62 = *v155 + 80 * v60;
          do
          {
            v63 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v61 + 48));
            v64 = v63;
            v66 = v65;
            v67 = *(v61 + 48);
            if (v67)
            {
              v68 = (v67 + 8 * *(v67 - 4));
            }

            else
            {
              v68 = 0;
            }

            if (v68 != v63)
            {
              do
              {
                v69 = HIDWORD(v158);
                if (HIDWORD(v158) == v158)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(&v157, v64);
                }

                else
                {
                  v70 = v157;
                  v71 = *v64;
                  if (*v64)
                  {
                    atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
                  }

                  v72 = HIDWORD(v158);
                  *(v70 + v69) = v71;
                  HIDWORD(v158) = v72 + 1;
                }

                do
                {
                  ++v64;
                }

                while (v64 != v66 && *v64 + 1 <= 1);
              }

              while (v64 != v68);
            }

            v73 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin((v61 + 56));
            v76 = v73;
            v77 = v74;
            v78 = *(v61 + 56);
            if (v78)
            {
              v79 = (v78 + 8 * *(v78 - 4));
            }

            else
            {
              v79 = 0;
            }

            if (v79 != v73)
            {
              do
              {
                v80 = HIDWORD(v166);
                if (HIDWORD(v166) == v166)
                {
                  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::String const&>(&v165, v76);
                }

                else
                {
                  v81 = v165;
                  v82 = *v76;
                  if (*v76)
                  {
                    atomic_fetch_add_explicit(v82, 2u, memory_order_relaxed);
                  }

                  v83 = HIDWORD(v166);
                  *(v81 + v80) = v82;
                  HIDWORD(v166) = v83 + 1;
                }

                do
                {
                  ++v76;
                }

                while (v76 != v77 && *v76 + 1 <= 1);
              }

              while (v76 != v79);
            }

            v84 = WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::begin((v61 + 72), v74, v75);
            v86 = v84;
            v87 = *(v61 + 72);
            if (v87)
            {
              v88 = (v87 + 8 * *(v87 - 4));
            }

            else
            {
              v88 = 0;
            }

            *&buf = v84;
            *(&buf + 1) = v50;
            while (v86 != v88)
            {
              v89 = HIDWORD(v164);
              if (HIDWORD(v164) == v164)
              {
                WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WebCore::RegistrableDomain const&>(&v163, v86);
              }

              else
              {
                v90 = v163;
                v91 = *v86;
                if (v91)
                {
                  atomic_fetch_add_explicit(v91, 2u, memory_order_relaxed);
                }

                v92 = HIDWORD(v164);
                v90[v89] = v91;
                HIDWORD(v164) = v92 + 1;
              }

              *&buf = buf + 8;
              WTF::HashTableConstIterator<WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>,WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>>::skipEmptyBuckets(&buf, v50, v85);
              v86 = buf;
            }

            v61 += 80;
          }

          while (v61 != v62);
        }

        v93 = WebKit::WebsiteDataStore::networkProcess(v153, v50);
        atomic_fetch_add((v93 + 16), 1u);
        v94 = *(v153 + 3);
        v95 = atomic_fetch_add(v156, 1u);
        v96 = *v55;
        if (*v55)
        {
          CFRetain(*(v96 + 8));
        }

        v97 = WTF::fastMalloc(v95, 0x18);
        *v97 = &unk_1F11217D8;
        v97[1] = v156;
        if (v96)
        {
          CFRetain(*(v96 + 8));
        }

        v97[2] = v96;
        v162 = v97;
        v171 = v94;
        v170 = a2;
        *&buf = &v171;
        *(&buf + 1) = &v170;
        v173 = &v168;
        v174 = &v157;
        v175 = &v165;
        v176 = &v163;
        WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::DeleteWebsiteDataForOrigins,WTF::CompletionHandler<void ()(void)>>(v93, &buf, &v162, 0, 0, 1);
        v99 = v162;
        v162 = 0;
        if (!v99)
        {
          break;
        }

        (*(*v99 + 8))(v99);
        if (v96)
        {
          goto LABEL_102;
        }

LABEL_103:
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v93 + 16), v98);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v163, v100);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v165, v101);
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v157, v102);
        ++v55;
        v51 = v59;
        while (v55 != v56 && (*v55 + 1) <= 1)
        {
          ++v55;
        }

        if (v55 == v58)
        {
          v57 = v167;
          goto LABEL_111;
        }
      }

      if (!v96)
      {
        goto LABEL_103;
      }

LABEL_102:
      CFRelease(*(v96 + 8));
      goto LABEL_103;
    }

LABEL_111:
    if (v57)
    {
      WTF::HashTable<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::HashTraits<WTF::Ref<WebKit::WebExtensionMatchPattern,WTF::RawPtrTraits<WebKit::WebExtensionMatchPattern>,WTF::DefaultRefDerefTraits<WebKit::WebExtensionMatchPattern>>>,WTF::FastMalloc>::deallocateTable(v57, v50);
    }

    v48 = a2;
    a1 = v153;
    a3 = v155;
  }

  if ((a2 & 4) != 0)
  {
    WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1 + 41, &buf);
    v103 = *(a1 + 41);
    if (v103)
    {
      v104 = *(v103 - 4);
      v105 = v103 + 8 * v104;
    }

    else
    {
      v105 = 0;
      v104 = 0;
    }

    v157 = (a1 + 328);
    v158 = v105;
    v159 = v105;
    v160 = v105;
    v161 = v103 + 8 * v104;
    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v157);
    for (i = *(&buf + 1); *(&buf + 1) != v158; i = *(&buf + 1))
    {
      v107 = *(*i + 8);
      atomic_fetch_add((v107 + 16), 1u);
      v108 = *(v107 + 80);
      if (!v108 || (*(v108 + 104) & 1) == 0)
      {
        if (*(v107 + 88))
        {
          v109 = *(a1 + 3);
          v110 = WTF::fastMalloc(atomic_fetch_add(v156, 1u), 0x10);
          *v110 = &unk_1F1121800;
          v110[1] = v156;
          v165 = v110;
          WebKit::WebProcessProxy::deleteWebsiteDataForOrigins(v107, v109, v48, &v168, &v165);
          v111 = v165;
          v165 = 0;
          if (v111)
          {
            (*(*v111 + 8))(v111);
          }
        }
      }

      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v107 + 16), v50);
      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&buf);
    }
  }

  if ((a2 & 0x10001) != 0)
  {
    WebKit::WebsiteDataStore::ensureProtectedDeviceIdHashSaltStorage(&buf, a1, v50);
    v112 = buf;
    v113 = WTF::fastMalloc(atomic_fetch_add(v156, 1u), 0x10);
    *v113 = &unk_1F1121828;
    v113[1] = v156;
    v157 = v113;
    WebKit::DeviceIdHashSaltStorage::deleteDeviceIdHashSaltForOrigins(v112, &v168, &v157);
    v114 = v157;
    v157 = 0;
    if (v114)
    {
      (*(*v114 + 8))(v114);
    }

    if (buf)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(buf, v50);
    }
  }

  if ((a2 & 0x101) != 0)
  {
    WebKit::WebsiteDataStore::ensureProtectedMediaKeysHashSaltStorage(&buf, a1);
    v115 = buf;
    v116 = WTF::fastMalloc(atomic_fetch_add(v156, 1u), 0x10);
    *v116 = &unk_1F1121850;
    v116[1] = v156;
    v157 = v116;
    WebKit::DeviceIdHashSaltStorage::deleteDeviceIdHashSaltForOrigins(v115, &v168, &v157);
    v117 = v157;
    v157 = 0;
    if (v117)
    {
      (*(*v117 + 8))(v117);
    }

    if (buf)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(buf, v50);
    }

    if ((a2 & 0x100) != 0 && *(a1 + 3) >= -1)
    {
      v165 = 0;
      v118 = *(a3 + 3);
      if (v118)
      {
        v119 = *a3;
        v120 = *a3 + 80 * v118;
        do
        {
          v121 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((v119 + 40));
          v122 = v121;
          v124 = v123;
          v125 = *(v119 + 40);
          if (v125)
          {
            v126 = (v125 + 32 * *(v125 - 4));
          }

          else
          {
            v126 = 0;
          }

          if (v126 != v121)
          {
            do
            {
              WebCore::SecurityOriginData::isolatedCopy();
              WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&buf, &v165, &v157);
              if (!v174)
              {
                v128 = *(&buf + 1);
                *(&buf + 1) = 0;
                if (v128 && atomic_fetch_add_explicit(v128, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v128, v127);
                }

                v129 = buf;
                *&buf = 0;
                if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
                {
                  WTF::StringImpl::destroy(v129, v127);
                }
              }

              do
              {
                v122 = (v122 + 32);
              }

              while (v122 != v124 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v122));
            }

            while (v122 != v126);
          }

          v119 += 80;
        }

        while (v119 != v120);
      }

      v130 = *(WebKit::WebsiteDataStore::resolvedDirectories(a1) + 13);
      if (v130)
      {
        atomic_fetch_add_explicit(v130, 2u, memory_order_relaxed);
      }

      v157 = v130;
      v131 = *(a1 + 38);
      (*(*v131 + 32))(v131);
      WTF::String::isolatedCopy();
      *(&buf + 1) = WebKit::WebsiteDataStore::mediaKeysStorageSalt(a1);
      atomic_fetch_add(v156, 1u);
      v132 = v165;
      v165 = 0;
      v173 = v156;
      v174 = v132;
      v133 = WTF::fastMalloc(v132, 0x28);
      *v133 = &unk_1F1121878;
      *(v133 + 1) = buf;
      v133[3] = v173;
      v134 = v174;
      *&buf = 0;
      v173 = 0;
      v174 = 0;
      v133[4] = v134;
      v163 = v133;
      (*(*v131 + 48))(v131, &v163);
      v136 = v163;
      v163 = 0;
      if (v136)
      {
        (*(*v136 + 8))(v136);
      }

      if (v174)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v174, v135);
      }

      v137 = v173;
      v173 = 0;
      if (v137)
      {
        WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v137, v135);
      }

      v138 = buf;
      *&buf = 0;
      if (v138 && atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v138, v135);
      }

      (*(*v131 + 40))(v131);
      v139 = v157;
      v157 = 0;
      if (v139 && atomic_fetch_add_explicit(v139, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v139, v50);
      }

      if (v165)
      {
        WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::deallocateTable(v165, v50);
      }
    }
  }

  if ((a2 & 0x200000) != 0 && *(a1 + 3) >= -1)
  {
    v165 = 0;
    v140 = *(a3 + 3);
    if (v140)
    {
      v141 = *a3;
      v142 = *a3 + 80 * v140;
      do
      {
        if ((*(v141 + 10) & 0x20) != 0)
        {
          v143 = WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::begin((v141 + 40));
          v144 = v143;
          v146 = v145;
          v147 = *(v141 + 40);
          v148 = v147 ? v147 + 32 * *(v147 - 4) : 0;
          if (v148 != v143)
          {
            do
            {
              WebCore::SecurityOriginData::toURL(&buf, v144);
              WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v165, &buf, &v157);
              v150 = buf;
              *&buf = 0;
              if (v150 && atomic_fetch_add_explicit(v150, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v150, v149);
              }

              do
              {
                v144 = (v144 + 32);
              }

              while (v144 != v146 && WTF::HashTable<WebCore::SecurityOriginData,WebCore::SecurityOriginData,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::HashTraits<WebCore::SecurityOriginData>,WTF::FastMalloc>::isEmptyOrDeletedBucket(v144));
            }

            while (v144 != v148);
          }
        }

        v141 += 80;
      }

      while (v141 != v142);
    }

    WebKit::ScreenTimeWebsiteDataSupport::removeScreenTimeData(&v165, *(a1 + 28));
    if (v165)
    {
      WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::deallocateTable(v165, v50);
    }
  }

  WTF::Vector<WebCore::SecurityOriginData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v168, v50);
  return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)2>,(WTF::DestructionThread)2>::deref(v156, v151);
}

void WebKit::WebsiteDataStore::processPools(uint64_t *__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>, uint64_t a3@<X1>)
{
  *a1 = 0;
  v6 = (this + 328);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 41, &v30);
  v7 = 0;
  v8 = 0;
  v9 = *(this + 41);
  if (v9)
  {
    v8 = *(v9 - 4);
    v7 = v9 + 8 * v8;
  }

  v25 = v6;
  v26 = v7;
  v27 = v7;
  v28 = v7;
  v29 = v9 + 8 * v8;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v25);
  v10 = v31;
  if (v31 == v26)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v11 = *(*v10 + 8);
    atomic_fetch_add(v11 + 4, 1u);
    v12 = WebKit::WebProcessProxy::processPoolIfExists(v11);
    if (v12)
    {
      break;
    }

LABEL_11:
    if (v11)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11 + 4, v13);
    }

    WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v30);
    v10 = v31;
    if (v31 == v26)
    {
      v15 = *a1;
      goto LABEL_19;
    }
  }

  v14 = v12;
  CFRetain(*(v12 + 8));
  v24 = v14;
  WTF::HashTable<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(v23, a1, &v24);
  v15 = *a1;
  if (*a1)
  {
    v16 = *(v15 - 12);
  }

  else
  {
    v16 = 0;
  }

  if (v16 != a3)
  {
    if (v24)
    {
      CFRelease(*(v24 + 8));
    }

    goto LABEL_11;
  }

  if (v24)
  {
    CFRelease(*(v24 + 8));
  }

  if (v11)
  {
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11 + 4, v13);
  }

LABEL_19:
  if (!v15 || !*(v15 - 12))
  {
LABEL_21:
    WebKit::WebProcessPool::allProcessPools(&v25);
    if (HIDWORD(v26))
    {
      v18 = v25;
      v19 = 8 * HIDWORD(v26) - 8;
      do
      {
        v20 = *v18;
        CFRetain(*(*v18 + 8));
        v23[0] = v20;
        WTF::HashTable<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,WTF::IdentityExtractor,WTF::DefaultHash<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::HashTraits<WTF::RefPtr<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v30, a1, v23);
        if (v23[0])
        {
          CFRelease(*(v23[0] + 8));
        }

        v21 = *a1;
        if (*a1)
        {
          v21 = *(v21 - 12);
        }

        if (v21 == a3)
        {
          break;
        }

        ++v18;
        v22 = v19;
        v19 -= 8;
      }

      while (v22);
    }

    WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v25, v17);
  }
}

uint64_t WebKit::WebsiteDataStore::ensureDeviceIdHashSaltStorage(WebKit::WebsiteDataStore *this, unint64_t a2)
{
  result = *(this + 30);
  if (!result)
  {
    add_explicit = *(this + 3);
    if (add_explicit < -1)
    {
      v5 = 0;
    }

    else
    {
      add_explicit = *(this + 28);
      v5 = *(add_explicit + 104);
      if (v5)
      {
        add_explicit = atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
      }
    }

    v9 = v5;
    v6 = WTF::fastMalloc(add_explicit, 0x38);
    WebKit::DeviceIdHashSaltStorage::DeviceIdHashSaltStorage(v6, &v9);
    v8 = *(this + 30);
    *(this + 30) = v6;
    if (v8)
    {
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::DeviceIdHashSaltStorage,(WTF::DestructionThread)2>::deref(v8, v7);
    }

    if (v5)
    {
      if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v5, v7);
      }
    }

    return *(this + 30);
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setServiceWorkerTimeoutForTesting(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v3 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add(v3 + 4, 1u);
  v10 = &v11;
  WTF::ApproximateTime::now(v3);
  WebKit::AuxiliaryProcessProxy::sendSync<Messages::NetworkProcess::SetServiceWorkerFetchTimeoutForTesting>(v3, &v10, 0, 0, &v12, v4 + 1.0);
  if (!v13)
  {
    v6 = v12;
    v12 = 0;
    if (v6)
    {
      IPC::Decoder::~Decoder(v6);
      bmalloc::api::tzoneFree(v8, v9);
    }
  }

  v13 = -1;
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3 + 4, v5);
}

atomic_ullong *WebKit::AuxiliaryProcessProxy::sendSync<Messages::NetworkProcess::SetServiceWorkerFetchTimeoutForTesting>@<X0>(atomic_ullong *result@<X0>, double **a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>, double a6@<D0>)
{
  v7 = result[11];
  if (v7)
  {
    while (1)
    {
      v12 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v13 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v13, v12 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v13 == v12)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_6:
    kdebug_trace();
    IPC::Connection::sendSync<Messages::NetworkProcess::SetServiceWorkerFetchTimeoutForTesting>(v7, a2, a4, a5, a3, a6);
    kdebug_trace();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7, v14);
  }

  else
  {
    *a5 = 1;
    a5[16] = 1;
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::resetServiceWorkerTimeoutForTesting(WebKit::WebsiteDataStore *this, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  atomic_fetch_add(v2 + 4, 1u);
  WTF::ApproximateTime::now(v2);
  WebKit::AuxiliaryProcessProxy::sendSync<Messages::NetworkProcess::ResetServiceWorkerFetchTimeoutForTesting>(v2, 0, 0, &v9, v3 + 1.0);
  if (!v10)
  {
    v5 = v9;
    v9 = 0;
    if (v5)
    {
      IPC::Decoder::~Decoder(v5);
      bmalloc::api::tzoneFree(v7, v8);
    }
  }

  v10 = -1;
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v2 + 4, v4);
}

atomic_ullong *WebKit::AuxiliaryProcessProxy::sendSync<Messages::NetworkProcess::ResetServiceWorkerFetchTimeoutForTesting>@<X0>(atomic_ullong *result@<X0>, uint64_t a3@<X2>, char a4@<W3>, _BYTE *a5@<X8>, double a6@<D0>)
{
  v7 = result[11];
  if (v7)
  {
    while (1)
    {
      v11 = *v7;
      if ((*v7 & 1) == 0)
      {
        break;
      }

      v12 = *v7;
      atomic_compare_exchange_strong_explicit(v7, &v12, v11 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v12 == v11)
      {
        goto LABEL_6;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v7);
LABEL_6:
    kdebug_trace();
    IPC::Connection::sendSync<Messages::NetworkProcess::ResetServiceWorkerFetchTimeoutForTesting>(v7, a4, a5, a3, a6);
    kdebug_trace();

    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v7, v13);
  }

  else
  {
    *a5 = 1;
    a5[16] = 1;
  }

  return result;
}

uint64_t WebKit::WebsiteDataStore::hasServiceWorkerBackgroundActivityForTesting(WebKit::WebsiteDataStore *this, unint64_t a2)
{
  WebKit::WebProcessPool::allProcessPools(&v9);
  if (v10)
  {
    v3 = v9;
    v4 = 8 * v10 - 8;
    do
    {
      v5 = *v3++;
      hasServiceWorkerBackgroundActivityForTesting = WebKit::WebProcessPool::hasServiceWorkerBackgroundActivityForTesting(v5);
      if (hasServiceWorkerBackgroundActivityForTesting)
      {
        break;
      }

      v7 = v4;
      v4 -= 8;
    }

    while (v7);
  }

  else
  {
    hasServiceWorkerBackgroundActivityForTesting = 0;
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v2);
  return hasServiceWorkerBackgroundActivityForTesting;
}

atomic_uint *WebKit::WebsiteDataStore::runningOrTerminatingServiceWorkerCountForTesting(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v8 = *(a1 + 3);
  v9 = &v8;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,WTF::CompletionHandler<void ()>>(v4, &v9, a2, 0, 0, 1);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::RunningOrTerminatingServiceWorkerCountForTesting,WTF::CompletionHandler<void ()(unsigned int)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 664;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v27 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(v14, 0x10);
  *v15 = &unk_1F11218A0;
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
    v25[0] = v16;
    v25[1] = IdentifierInternal;
    v26 = 1;
    v19 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v27, a5, v25, a6);
    if (v26 == 1)
    {
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    if (v19)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setMaxStatisticsEntries(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setMaxStatisticsEntries(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::setPruneEntriesDownTo(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setPruneEntriesDownTo(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::setGrandfatheringTime(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setGrandfatheringTime(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::setMinimumTimeBetweenDataRecordsRemoval(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setMinimumTimeBetweenDataRecordsRemoval(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::dumpResourceLoadStatistics(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  add = atomic_fetch_add((v4 + 16), 1u);
  v6 = *(a1 + 3);
  v7 = WTF::fastMalloc(add, 0x10);
  v8 = *a2;
  *a2 = 0;
  *v7 = &unk_1F11218C8;
  v7[1] = v8;
  v12 = v7;
  WebKit::NetworkProcessProxy::dumpResourceLoadStatistics(v4, v6, &v12);
  v10 = v12;
  v12 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16), v9);
}

atomic_uint *WebKit::WebsiteDataStore::isPrevalentResource(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::isPrevalentResource(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::isGrandfathered(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::isGrandfathered(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setPrevalentResource(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::setPrevalentResource(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setPrevalentResourceForDebugMode(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::setPrevalentResourceForDebugMode(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::isVeryPrevalentResource(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::isVeryPrevalentResource(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setVeryPrevalentResource(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::setVeryPrevalentResource(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setShouldClassifyResourcesBeforeDataRecordsRemoval(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setShouldClassifyResourcesBeforeDataRecordsRemoval(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::setSubframeUnderTopFrameDomain(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    WebKit::NetworkProcessProxy::setSubframeUnderTopFrameDomain(v9, v10, &v18, &v17, a4);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::isRegisteredAsSubFrameUnder(WebKit::WebsiteDataStore *a1, void *a2, const WTF::URL *a3, uint64_t *a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v15, a2);
  WebCore::RegistrableDomain::RegistrableDomain(&v14, a3);
  WebKit::NetworkProcessProxy::isRegisteredAsSubFrameUnder(v8, v9, &v15, &v14, a4);
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v10);
}

atomic_uint *WebKit::WebsiteDataStore::setSubresourceUnderTopFrameDomain(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    WebKit::NetworkProcessProxy::setSubresourceUnderTopFrameDomain(v9, v10, &v18, &v17, a4);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::isRegisteredAsSubresourceUnder(WebKit::WebsiteDataStore *a1, void *a2, const WTF::URL *a3, uint64_t *a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v15, a2);
  WebCore::RegistrableDomain::RegistrableDomain(&v14, a3);
  WebKit::NetworkProcessProxy::isRegisteredAsSubresourceUnder(v8, v9, &v15, &v14, a4);
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v10);
}

atomic_uint *WebKit::WebsiteDataStore::setSubresourceUniqueRedirectTo(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    WebKit::NetworkProcessProxy::setSubresourceUniqueRedirectTo(v9, v10, &v18, &v17, a4);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setSubresourceUniqueRedirectFrom(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    WebKit::NetworkProcessProxy::setSubresourceUniqueRedirectFrom(v9, v10, &v18, &v17, a4);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setTopFrameUniqueRedirectTo(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    WebKit::NetworkProcessProxy::setTopFrameUniqueRedirectTo(v9, v10, &v18, &v17, a4);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setTopFrameUniqueRedirectFrom(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    WebKit::NetworkProcessProxy::setTopFrameUniqueRedirectFrom(v9, v10, &v18, &v17, a4);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::isRegisteredAsRedirectingTo(WebKit::WebsiteDataStore *a1, void *a2, const WTF::URL *a3, uint64_t *a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v15, a2);
  WebCore::RegistrableDomain::RegistrableDomain(&v14, a3);
  WebKit::NetworkProcessProxy::isRegisteredAsRedirectingTo(v8, v9, &v15, &v14, a4);
  v11 = v14;
  v14 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  v12 = v15;
  v15 = 0;
  if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v12, v10);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v10);
}

atomic_uint *WebKit::WebsiteDataStore::clearPrevalentResource(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::clearPrevalentResource(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::resetParametersToDefaultValues(void **a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::resetParametersToDefaultValues(v4, a1[3], a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::scheduleClearInMemoryAndPersistent(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3, double a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v9 = (v8 + 16);
  atomic_fetch_add((v8 + 16), 1u);
  WebKit::NetworkProcessProxy::scheduleClearInMemoryAndPersistent(v8, *(a1 + 3), *&a4, 1, a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v9, v10);
}

atomic_uint *WebKit::WebsiteDataStore::scheduleClearInMemoryAndPersistent(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::scheduleClearInMemoryAndPersistent(v6, *(a1 + 3), 0, 0, a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::scheduleCookieBlockingUpdate(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::scheduleCookieBlockingUpdate(v4, *(a1 + 3), a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::scheduleStatisticsAndDataRecordsProcessing(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::scheduleStatisticsAndDataRecordsProcessing(v4, *(a1 + 3), a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::statisticsDatabaseHasAllTables(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::statisticsDatabaseHasAllTables(v4, *(a1 + 3), a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::setLastSeen(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3, double a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v16, a2);
    WebKit::NetworkProcessProxy::setLastSeen(v9, v10, &v16, a3, a4);
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v14 = *a3;
    *a3 = 0;
    (*(*v14 + 16))(v14);
    v15 = *(*v14 + 8);

    return v15(v14);
  }
}

atomic_uint *WebKit::WebsiteDataStore::domainIDExistsInDatabase(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::domainIDExistsInDatabase(v6, *(a1 + 3), v4, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::mergeStatisticForTesting(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, const WTF::URL *a4, char a5, char a6, char a7, char a8, double a9, double a10, unsigned int a11, uint64_t *a12)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v32 = a7;
    v23 = WebKit::WebsiteDataStore::networkProcess(a1, v22);
    atomic_fetch_add((v23 + 16), 1u);
    v24 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v35, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v34, a3);
    WebCore::RegistrableDomain::RegistrableDomain(&v33, a4);
    WebKit::NetworkProcessProxy::mergeStatisticForTesting(v23, v24, &v35, &v34, &v33, a5, a6, v32, a9, a10, a8, a11, a12);
    v26 = v33;
    v33 = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v25);
    }

    v27 = v34;
    v34 = 0;
    if (v27 && atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v27, v25);
    }

    v28 = v35;
    v35 = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, v25);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v23 + 16), v25);
  }

  else
  {
    v30 = *a12;
    *a12 = 0;
    (*(*v30 + 16))(v30);
    v31 = *(*v30 + 8);

    return v31(v30);
  }
}

atomic_uint *WebKit::WebsiteDataStore::insertExpiredStatisticForTesting(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, unsigned int a3, char a4, char a5, char a6, uint64_t *a7)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v15 = WebKit::WebsiteDataStore::networkProcess(a1, v14);
    atomic_fetch_add((v15 + 16), 1u);
    v16 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v22, a2);
    v27 = v16;
    v23[0] = &v27;
    v23[1] = &v22;
    v23[2] = a3;
    v24 = a4;
    v25 = a5;
    v26 = a6;
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::InsertExpiredStatisticForTesting,WTF::CompletionHandler<void ()(void)>>(v15, v23, a7, 0, 0, 1);
    v18 = v22;
    v22 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v17);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v15 + 16), v17);
  }

  else
  {
    v20 = *a7;
    *a7 = 0;
    (*(*v20 + 16))(v20);
    v21 = *(*v20 + 8);

    return v21(v20);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsTimeAdvanceForTesting(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setResourceLoadStatisticsTimeAdvanceForTesting(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

uint64_t WebKit::WebsiteDataStore::setStorageAccessPromptQuirkForTesting(uint64_t a1, atomic_uint **a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v81 = *MEMORY[0x1E69E9840];
  v7 = *a2;
  if (*a2 && v7[1])
  {
    *a2 = 0;
LABEL_4:
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    goto LABEL_6;
  }

  WTF::StringImpl::createWithoutCopyingNonEmpty();
  v7 = v76;
  if (v76)
  {
    goto LABEL_4;
  }

LABEL_6:
  v8 = *(a3 + 12);
  if (v8)
  {
    v9 = (v8 >> 29);
    if (v9)
    {
      __break(0xC471u);
      JUMPOUT(0x19E1554A8);
    }

    v10 = WTF::fastMalloc(v9, (8 * v8));
    LODWORD(v11) = *(a3 + 12);
    if (v11)
    {
      v11 = 0;
      do
      {
        v12 = v11;
        v13 = *(*a3 + 8 * v11);
        if (v13)
        {
          atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
          if (!v13[1])
          {
            v65 = v13;
            WTF::StringImpl::createWithoutCopyingNonEmpty();
            v13 = v76;
            if (atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v65, v14);
            }
          }
        }

        else
        {
          WTF::StringImpl::createWithoutCopyingNonEmpty();
          v13 = v76;
        }

        v11 = v12 + 1;
        v10[v12] = v13;
      }

      while (v12 + 1 < *(a3 + 12));
    }
  }

  else
  {
    LODWORD(v11) = 0;
    v10 = 0;
  }

  v68[0] = 0;
  v68[1] = 0;
  v72 = v7;
  v73 = v10;
  v74 = v8;
  v75 = v11;
  v15 = WTF::fastZeroedMalloc(0xD0);
  *v15 = xmmword_19E704670;
  v69 = (v15 + 16);
  if (WTF::equal(v72, 0, v16))
  {
    __break(0xC471u);
    goto LABEL_81;
  }

  if (v72 == -1)
  {
    __break(0xC471u);
    JUMPOUT(0x19E1554A0);
  }

  v18 = v69;
  if (v69 || (WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v69, 0), (v18 = v69) != 0))
  {
    v19 = *(v18 - 2);
  }

  else
  {
    v19 = 0;
  }

  v20 = WTF::ASCIICaseInsensitiveHash::hash(v72, v17) & v19;
  v21 = &v18[3 * v20];
  if (WTF::equal(*v21, 0, v22))
  {
LABEL_28:
    WTF::GenericHashTraits<WebCore::RegistrableDomain>::assignToEmpty<WebCore::RegistrableDomain,WebCore::RegistrableDomain const&>(v21, &v72);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(&v76, &v73);
    WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=((v21 + 1), &v76);
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v76, v27);
    v28 = v69;
    if (v69)
    {
      v29 = *(v69 - 3) + 1;
    }

    else
    {
      v29 = 1;
    }

    *(v69 - 3) = v29;
    v30 = (*(v28 - 4) + v29);
    v31 = *(v28 - 1);
    if (v31 > 0x400)
    {
      if (v31 > 2 * v30)
      {
        goto LABEL_34;
      }
    }

    else if (3 * v31 > 4 * v30)
    {
      goto LABEL_34;
    }

    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::expand(&v69, v21);
    goto LABEL_34;
  }

  v24 = 0;
  v25 = 1;
  while (1)
  {
    v26 = v21;
    if (*v21 != -1)
    {
      v26 = v24;
      if (WTF::equalIgnoringASCIICase(*v21, v72, v23))
      {
        break;
      }
    }

    v20 = (v20 + v25) & v19;
    v21 = &v18[3 * v20];
    ++v25;
    v24 = v26;
    if (WTF::equal(*v21, 0, v23))
    {
      if (v26)
      {
        *v26 = 0;
        v26[1] = 0;
        v26[2] = 0;
        --*(v69 - 4);
        v21 = v26;
      }

      goto LABEL_28;
    }
  }

LABEL_34:
  v32 = *(a4 + 12);
  if (!v32)
  {
    LODWORD(v39) = 0;
    v37 = 0;
    v36 = 0;
    goto LABEL_45;
  }

  if (v32 >= 0x6666667)
  {
    __break(0xC471u);
LABEL_81:
    JUMPOUT(0x19E155480);
  }

  v33 = (5 * v32);
  v34 = 8 * v33;
  v35 = WTF::fastMalloc(v33, (8 * v33));
  v36 = v35;
  v37 = v34 / 0x28;
  if (*(a4 + 12))
  {
    v38 = 0;
    v39 = 0;
    v40 = v35;
    do
    {
      WTF::URL::URL(&v76, (*a4 + v38));
      WTF::URL::URL(v40, &v76);
      v42 = v76;
      v76 = 0;
      if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v42, v41);
      }

      ++v39;
      v40 += 40;
      v38 += 8;
    }

    while (v39 < *(a4 + 12));
  }

  else
  {
    LODWORD(v39) = 0;
  }

LABEL_45:
  v43 = v69;
  v69 = 0;
  v76 = v7;
  v77 = v43;
  v67[0] = 0;
  v67[1] = 0;
  v78 = v36;
  v79 = v37;
  v80 = v39;
  v71 = 0;
  v44 = WTF::fastMalloc(v43, 0x20);
  v45 = 1;
  LODWORD(v71) = 1;
  v70 = v44;
  if (v7)
  {
    atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed);
    v45 = HIDWORD(v71) + 1;
  }

  *v44 = v7;
  v46 = (v44 + 2);
  WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::HashTable(v44 + 1, &v77);
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v46, &v78);
  HIDWORD(v71) = v45;
  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v78, v47);
  if (v77)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v77, v48);
  }

  v49 = v76;
  v76 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v48);
  }

  WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v67, v48);
  if (v69)
  {
    WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v69, v50);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v73, v50);
  v52 = v72;
  v72 = 0;
  if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v52, v51);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v68, v51);
  {
    v54 = off_1ED63B6D8;
    byte_1ED63B6D0 = 1;
    if (dword_1ED63B6E4)
    {
      v55 = 32 * dword_1ED63B6E4;
      v56 = off_1ED63B6D8 + 16;
      do
      {
        WTF::Vector<WTF::URL,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v53);
        v57 = *(v56 - 1);
        if (v57)
        {
          WTF::HashTable<WebCore::RegistrableDomain,WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashMap<WebCore::RegistrableDomain,WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WTF::Vector<WebCore::RegistrableDomain,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::deallocateTable(v57, v53);
        }

        v58 = *(v56 - 2);
        *(v56 - 2) = 0;
        if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v58, v53);
        }

        v56 += 32;
        v55 -= 32;
      }

      while (v55);
      v54 = off_1ED63B6D8;
    }

    if (v54)
    {
      off_1ED63B6D8 = 0;
      dword_1ED63B6E0 = 0;
      WTF::fastFree(v54, v53);
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
    WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
    byte_1ED63B6D0 = 1;
  }

  off_1ED63B6D8 = v70;
  v59 = v71;
  v70 = 0;
  v71 = 0;
  *&dword_1ED63B6E0 = v59;
  (*(WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance + 24))(&WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance);
  v61 = WTF::fastMalloc(v60, 0x10);
  *v61 = &unk_1F1121968;
  v76 = v61;
  WTF::WeakHashSet<WebKit::ListDataObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::forEach(&qword_1ED63B6C0, &v76);
  if (v76)
  {
    (*(*v76 + 8))(v76);
  }

  v62 = *a5;
  *a5 = 0;
  (*(*v62 + 16))(v62);
  (*(*v62 + 8))(v62);
  return WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v70, v63);
}

atomic_uint *WebKit::WebsiteDataStore::grantStorageAccessForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  result = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v9 = result;
  v10 = result + 4;
  atomic_fetch_add(result + 4, 1u);
  v11 = *(a1 + 3);
  v23 = 0;
  v24 = v11;
  v22 = 0;
  v12 = *(a3 + 12);
  if (v12)
  {
    v13 = (v12 >> 29);
    if (v13)
    {
      __break(0xC471u);
      return result;
    }

    v14 = WTF::fastMalloc(v13, (8 * v12));
    LODWORD(v23) = v12;
    v22 = v14;
    if (*(a3 + 12))
    {
      v15 = v14;
      v16 = 0;
      v17 = 0;
      do
      {
        WebCore::RegistrableDomain::uncheckedCreateFromHost((*a3 + v16 * 8), v25);
        ++v17;
        v15[v16++] = v25[0];
      }

      while (v17 < *(a3 + 12));
      HIDWORD(v23) = v17;
    }
  }

  WebCore::RegistrableDomain::uncheckedCreateFromHost(a2, &v21);
  v25[0] = &v24;
  v25[1] = &v22;
  v25[2] = &v21;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GrantStorageAccessForTesting,WTF::CompletionHandler<void ()(void)>>(v9, v25, a4, 0, 0, 1);
  v19 = v21;
  v21 = 0;
  if (v19)
  {
    if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v18);
    }
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v22, v18);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v10, v20);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::GrantStorageAccessForTesting,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 619;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v27 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(v12, a2[1]);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(v12, a2[2]);
  v13 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(v14, 0x10);
  *v15 = &unk_1F1121990;
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
    v25[0] = v16;
    v25[1] = IdentifierInternal;
    v26 = 1;
    v19 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v27, a5, v25, a6);
    if (v26 == 1)
    {
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    if (v19)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setIsRunningResourceLoadStatisticsTest(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setIsRunningResourceLoadStatisticsTest(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::getAllStorageAccessEntries(WebKit::WebsiteDataStore *a1, uint64_t a2, uint64_t *a3)
{
  WebKit::WebProcessProxy::webPage(a2, v17);
  if (v17[0])
  {
    CFRelease(v17[0][1]);
    v6 = WebKit::WebsiteDataStore::networkProcess(a1, v5);
    add = atomic_fetch_add((v6 + 16), 1u);
    v8 = *(a1 + 3);
    v9 = WTF::fastMalloc(add, 0x10);
    *v9 = &unk_1F11219B8;
    v10 = *a3;
    *a3 = 0;
    v9[1] = v10;
    v17[0] = v9;
    WebKit::NetworkProcessProxy::getAllStorageAccessEntries(v6, v8, v17, v11);
    v13 = v17[0];
    v17[0] = 0;
    if (v13)
    {
      (*(*v13 + 1))(v13);
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v12);
  }

  else
  {
    v17[0] = 0;
    v17[1] = 0;
    v15 = *a3;
    *a3 = 0;
    (*(*v15 + 16))(v15, v17);
    (*(*v15 + 8))(v15);
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v17, v16);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setTimeToLiveUserInteraction(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setTimeToLiveUserInteraction(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::logUserInteraction(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::logUserInteraction(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::hasHadUserInteraction(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::hasHadUserInteraction(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12, 0);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::isRelationshipOnlyInDatabaseOnce(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, const WTF::URL *a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4) && (WTF::URL::protocolIs() & 1) == 0 && *a3 && *(*a3 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v18, a2);
    WebCore::RegistrableDomain::RegistrableDomain(&v17, a3);
    v19[2] = &v17;
    v20 = v10;
    v19[0] = &v20;
    v19[1] = &v18;
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::IsRelationshipOnlyInDatabaseOnce,WTF::CompletionHandler<void ()(BOOL)>>(v9, v19, a4, 0, 0, 1);
    v12 = v17;
    v17 = 0;
    if (v12 && atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v12, v11);
    }

    v13 = v18;
    v18 = 0;
    if (v13)
    {
      if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v13, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v15 = *a4;
    *a4 = 0;
    (*(*v15 + 16))(v15, 0);
    v16 = *(*v15 + 8);

    return v16(v15);
  }
}

atomic_uint *WebKit::WebsiteDataStore::clearUserInteraction(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t *a3)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v7 = WebKit::WebsiteDataStore::networkProcess(a1, v6);
    atomic_fetch_add((v7 + 16), 1u);
    v8 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v14, a2);
    WebKit::NetworkProcessProxy::clearUserInteraction(v7, v8, &v14, a3);
    v10 = v14;
    v14 = 0;
    if (v10)
    {
      if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v10, v9);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v7 + 16), v9);
  }

  else
  {
    v12 = *a3;
    *a3 = 0;
    (*(*v12 + 16))(v12);
    v13 = *(*v12 + 8);

    return v13(v12);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setGrandfathered(WebKit::WebsiteDataStore *a1, const WTF::URL *a2, uint64_t a3, uint64_t *a4)
{
  if ((WTF::URL::protocolIs() & 1) == 0 && *a2 && *(*a2 + 4))
  {
    v9 = WebKit::WebsiteDataStore::networkProcess(a1, v8);
    atomic_fetch_add((v9 + 16), 1u);
    v10 = *(a1 + 3);
    WebCore::RegistrableDomain::RegistrableDomain(&v16, a2);
    WebKit::NetworkProcessProxy::setGrandfathered(v9, v10, &v16, a3, a4);
    v12 = v16;
    v16 = 0;
    if (v12)
    {
      if (atomic_fetch_add_explicit(v12, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v12, v11);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v9 + 16), v11);
  }

  else
  {
    v14 = *a4;
    *a4 = 0;
    (*(*v14 + 16))(v14);
    v15 = *(*v14 + 8);

    return v15(v14);
  }
}

atomic_uint *WebKit::WebsiteDataStore::setCrossSiteLoadWithLinkDecorationForTesting(WebKit::WebsiteDataStore *a1, void *a2, const WTF::URL *a3, uint64_t a4, uint64_t *a5)
{
  v10 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v10 + 16), 1u);
  v11 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v17, a2);
  WebCore::RegistrableDomain::RegistrableDomain(&v16, a3);
  WebKit::NetworkProcessProxy::setCrossSiteLoadWithLinkDecorationForTesting(v10, v11, &v17, &v16, a4, a5);
  v13 = v16;
  v16 = 0;
  if (v13 && atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v13, v12);
  }

  v14 = v17;
  v17 = 0;
  if (v14 && atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v14, v12);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v10 + 16), v12);
}

atomic_uint *WebKit::WebsiteDataStore::resetCrossSiteLoadsWithLinkDecorationForTesting(void **a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::resetCrossSiteLoadsWithLinkDecorationForTesting(v4, a1[3], a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::deleteCookiesForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v8 + 16), 1u);
  v9 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v13, a2);
  WebKit::NetworkProcessProxy::deleteCookiesForTesting(v8, v9, &v13, a3, a4);
  v11 = v13;
  v13 = 0;
  if (v11 && atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v11, v10);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v10);
}

atomic_uint *WebKit::WebsiteDataStore::hasLocalStorageForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v6 + 16), 1u);
  v7 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v11, a2);
  WebKit::NetworkProcessProxy::hasLocalStorage(v6, v7, &v11, a3);
  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v8);
}

atomic_uint *WebKit::WebsiteDataStore::hasIsolatedSessionForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v6 + 16), 1u);
  v7 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v11, a2);
  WebKit::NetworkProcessProxy::hasIsolatedSession(v6, v7, &v11, a3);
  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v8);
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsShouldDowngradeReferrerForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v5 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v6 = (v5 + 16);
  atomic_fetch_add((v5 + 16), 1u);
  WebKit::NetworkProcessProxy::setShouldDowngradeReferrerForTesting(v5, a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6, v7);
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsShouldEnbleSameSiteStrictEnforcementForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  v12 = *(a1 + 3);
  v10 = &v12;
  v11 = v4;
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetShouldEnbleSameSiteStrictEnforcementForTesting,WTF::CompletionHandler<void ()(void)>>(v6, &v10, a3, 0, 0, 1);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsFirstPartyWebsiteDataRemovalModeForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setFirstPartyWebsiteDataRemovalModeForTesting(v6, *(a1 + 3), v4 ^ 1u, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsToSameSiteStrictCookiesForTesting(WebKit::WebsiteDataStore *a1, void *a2, uint64_t *a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v6 + 16), 1u);
  v7 = *(a1 + 3);
  WebCore::RegistrableDomain::RegistrableDomain(&v11, a2);
  WebKit::NetworkProcessProxy::setToSameSiteStrictCookiesForTesting(v6, v7, &v11, a3);
  v9 = v11;
  v11 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v8);
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsFirstPartyHostCNAMEDomainForTesting(WebKit::WebsiteDataStore *a1, WTF::URL *a2, WTF::URL *this, uint64_t *a4)
{
  v8 = WTF::URL::host(this);
  if (v8 != "testwebkit.org" && v9 == 14)
  {
    if ((v9 & 0x100000000) != 0)
    {
      if (*v8 == 116 && *(v8 + 1) == 0x696B626577747365 && *(v8 + 6) == 0x67726F2E74696B62)
      {
        goto LABEL_15;
      }
    }

    else if (*v8 == 116)
    {
      v20 = vceqq_s16(*(v8 + 2), xmmword_19E704680);
      v20.i16[0] = vminvq_u16(v20);
      if (v20.i32[0])
      {
        v21 = vceqq_s16(*(v8 + 12), xmmword_19E704690);
        v21.i16[0] = vminvq_u16(v21);
        if (v21.i32[0])
        {
          goto LABEL_15;
        }
      }
    }
  }

  else if (v8 == "testwebkit.org" && v9 == 14)
  {
    goto LABEL_15;
  }

  v11 = WTF::URL::host(this);
  if (v11 == "3rdpartytestwebkit.org" || v9 != 22)
  {
    if (v11 != "3rdpartytestwebkit.org" || v9 != 22)
    {
      goto LABEL_40;
    }

LABEL_15:
    v13 = WebKit::WebsiteDataStore::networkProcess(a1, v9);
    atomic_fetch_add((v13 + 16), 1u);
    v14 = *(a1 + 3);
    WTF::URL::host(a2);
    if ((v15 & 0x100000000) != 0)
    {
      WTF::String::String();
    }

    else
    {
      WTF::String::String();
    }

    WebCore::RegistrableDomain::RegistrableDomain(&v29, this);
    v31[2] = &v29;
    v32 = v14;
    v31[0] = &v32;
    v31[1] = &v30;
    WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetFirstPartyHostCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(v13, v31, a4, 0, 0, 1);
    v17 = v29;
    v29 = 0;
    if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v17, v16);
    }

    v18 = v30;
    v30 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v16);
      }
    }

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v13 + 16), v16);
  }

  if ((v9 & 0x100000000) != 0)
  {
    if (*v11 == 51)
    {
      v12 = vandq_s8(vceqq_s8(*(v11 + 6), xmmword_19E7046B0), vceqq_s8(*(v11 + 1), xmmword_19E7046A0));
      v12.i8[0] = vminvq_u8(v12);
      if (v12.i32[0])
      {
        goto LABEL_15;
      }
    }
  }

  else if (*v11 == 51)
  {
    v22 = vceqq_s16(*(v11 + 2), xmmword_19E7046C0);
    v22.i16[0] = vminvq_u16(v22);
    if (v22.i32[0])
    {
      v23 = (v11 + 12);
      v24 = 6u;
      while (1)
      {
        v25 = vceqq_s16(*v23, vmovl_u8(*&str_16_2[v24]));
        v25.i16[0] = vminvq_u16(v25);
        if (!v25.i32[0])
        {
          break;
        }

        v26 = v24 - 1;
        v24 += 8;
        ++v23;
        if (v26 > 0xC)
        {
          goto LABEL_15;
        }
      }
    }
  }

LABEL_40:
  v27 = *a4;
  *a4 = 0;
  (*(*v27 + 16))(v27);
  v28 = *(*v27 + 8);

  return v28(v27);
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsThirdPartyCNAMEDomainForTesting(WebKit::WebsiteDataStore *a1, WTF::URL *this, uint64_t *a3)
{
  v6 = WTF::URL::host(this);
  if (v6 != "testwebkit.org" && v7 == 14)
  {
    if ((v7 & 0x100000000) != 0)
    {
      if (*v6 == 116 && *(v6 + 1) == 0x696B626577747365 && *(v6 + 6) == 0x67726F2E74696B62)
      {
        goto LABEL_15;
      }
    }

    else if (*v6 == 116)
    {
      v16 = vceqq_s16(*(v6 + 2), xmmword_19E704680);
      v16.i16[0] = vminvq_u16(v16);
      if (v16.i32[0])
      {
        v17 = vceqq_s16(*(v6 + 12), xmmword_19E704690);
        v17.i16[0] = vminvq_u16(v17);
        if (v17.i32[0])
        {
          goto LABEL_15;
        }
      }
    }
  }

  else if (v6 == "testwebkit.org" && v7 == 14)
  {
    goto LABEL_15;
  }

  v9 = WTF::URL::host(this);
  if (v9 == "3rdpartytestwebkit.org" || v7 != 22)
  {
    if (v9 == "3rdpartytestwebkit.org" && v7 == 22)
    {
      goto LABEL_15;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    if (*v9 == 51)
    {
      v10 = vandq_s8(vceqq_s8(*(v9 + 6), xmmword_19E7046B0), vceqq_s8(*(v9 + 1), xmmword_19E7046A0));
      v10.i8[0] = vminvq_u8(v10);
      if (v10.i32[0])
      {
LABEL_15:
        v11 = WebKit::WebsiteDataStore::networkProcess(a1, v7);
        atomic_fetch_add((v11 + 16), 1u);
        v12 = *(a1 + 3);
        WebCore::RegistrableDomain::RegistrableDomain(&v25, this);
        v26[1] = &v25;
        v27 = v12;
        v26[0] = &v27;
        WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SetThirdPartyCNAMEDomainForTesting,WTF::CompletionHandler<void ()(void)>>(v11, v26, a3, 0, 0, 1);
        v14 = v25;
        v25 = 0;
        if (v14)
        {
          if (atomic_fetch_add_explicit(v14, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v14, v13);
          }
        }

        return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v11 + 16), v13);
      }
    }
  }

  else if (*v9 == 51)
  {
    v18 = vceqq_s16(*(v9 + 2), xmmword_19E7046C0);
    v18.i16[0] = vminvq_u16(v18);
    if (v18.i32[0])
    {
      v19 = (v9 + 12);
      v20 = 6u;
      while (1)
      {
        v21 = vceqq_s16(*v19, vmovl_u8(*&str_16_2[v20]));
        v21.i16[0] = vminvq_u16(v21);
        if (!v21.i32[0])
        {
          break;
        }

        v22 = v20 - 1;
        v20 += 8;
        ++v19;
        if (v22 > 0xC)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v23 = *a3;
  *a3 = 0;
  (*(*v23 + 16))(v23);
  v24 = *(*v23 + 8);

  return v24(v23);
}

atomic_uint *WebKit::WebsiteDataStore::syncLocalStorage(WebKit::WebsiteDataStore *a1, void *a2)
{
  v3 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v4 = (v3 + 16);
  atomic_fetch_add((v3 + 16), 1u);
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SyncLocalStorage,WTF::CompletionHandler<void ()(void)>>(v3, &v7, a2, 0, 0, 1);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4, v5);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::SyncLocalStorage,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v11 = IPC::Encoder::operator new(0x238, a2);
  *v11 = 727;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 1) = a4;
  *(v11 + 68) = 0;
  *(v11 + 70) = 0;
  *(v11 + 69) = 0;
  IPC::Encoder::encodeHeader(v11);
  v26 = v11;
  v12 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(v13, 0x10);
  *v14 = &unk_1F1121A30;
  v14[1] = v12;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
  {
    result = 141;
    __break(0xC471u);
  }

  else
  {
    v15 = v14;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v15;
    v24[1] = IdentifierInternal;
    v25 = 1;
    v18 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v26, a5, v24, a6);
    if (v25 == 1)
    {
      v19 = v24[0];
      v24[0] = 0;
      if (v19)
      {
        (*(*v19 + 8))(v19);
      }
    }

    v20 = v26;
    v26 = 0;
    if (v20)
    {
      IPC::Encoder::~Encoder(v20, v17);
      bmalloc::api::tzoneFree(v22, v23);
    }

    if (v18)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::storeServiceWorkerRegistrations(WebKit::WebsiteDataStore *a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v8 = (a1 + 24);
  WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::StoreServiceWorkerRegistrations,WTF::CompletionHandler<void ()(void)>>(v4, &v8, a2, 0, 0, 1);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::sendWithAsyncReply<Messages::NetworkProcess::StoreServiceWorkerRegistrations,WTF::CompletionHandler<void ()(void)>>(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4, char a5, int a6)
{
  v12 = IPC::Encoder::operator new(0x238, a2);
  *v12 = 726;
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 1) = a4;
  *(v12 + 68) = 0;
  *(v12 + 70) = 0;
  *(v12 + 69) = 0;
  IPC::Encoder::encodeHeader(v12);
  v27 = v12;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v12, **a2);
  v13 = *a3;
  *a3 = 0;
  v15 = WTF::fastMalloc(v14, 0x10);
  *v15 = &unk_1F1121A58;
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
    v25[0] = v16;
    v25[1] = IdentifierInternal;
    v26 = 1;
    v19 = WebKit::AuxiliaryProcessProxy::sendMessage(a1, &v27, a5, v25, a6);
    if (v26 == 1)
    {
      v20 = v25[0];
      v25[0] = 0;
      if (v20)
      {
        (*(*v20 + 8))(v20);
      }
    }

    v21 = v27;
    v27 = 0;
    if (v21)
    {
      IPC::Encoder::~Encoder(v21, v18);
      bmalloc::api::tzoneFree(v23, v24);
    }

    if (v19)
    {
      return IdentifierInternal;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setCacheMaxAgeCapForPrevalentResources(WebKit::WebsiteDataStore *a1, void *a2, double a3)
{
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setCacheMaxAgeCapForPrevalentResources(v6, *(a1 + 3), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::resetCacheMaxAgeCapForPrevalentResources(void **a1, void *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::resetCacheMaxAgeCapForPrevalentResources(v4, a1[3], a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::allowTLSCertificateChainForLocalPCMTesting(WebKit::WebsiteDataStore *this, const WebCore::CertificateInfo *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v8 = *(this + 3);
  v9[0] = &v8;
  v9[1] = a2;
  WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::AllowTLSCertificateChainForLocalPCMTesting>(v4, v9, 0, 0);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::AllowTLSCertificateChainForLocalPCMTesting>(uint64_t a1, void **a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 575;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<__SecTrust *,void>::encode(v8, *a2[1]);
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

atomic_uint *WebKit::WebsiteDataStore::getNetworkProcessConnection(unsigned int *a1, unsigned int *a2, uint64_t *a3, char a4)
{
  v8 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  atomic_fetch_add((v8 + 16), 1u);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a1 + 4, a1);
  v9 = *(a1 + 2);
  atomic_fetch_add(v9, 1u);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((v8 + 8), v8);
  v10 = *(v8 + 8);
  atomic_fetch_add(v10, 1u);
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(a2 + 2, a2);
  v11 = *(a2 + 1);
  add = atomic_fetch_add(v11, 1u);
  v13 = *a3;
  *a3 = 0;
  v14 = WTF::fastMalloc(add, 0x30);
  *v14 = &unk_1F1121A80;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v11;
  v14[4] = v13;
  *(v14 + 40) = a4;
  v18 = v14;
  WebKit::NetworkProcessProxy::getNetworkProcessConnection(v8, a2, &v18);
  v16 = v18;
  v18 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v8 + 16), v15);
}

WTF::StringImpl *WebKit::WebsiteDataStore::networkProcessDidTerminate(WTF::StringImpl *this, WebKit::NetworkProcessProxy *a2)
{
  v2 = this;
  v3 = *(this + 54);
  *(this + 54) = 0;
  if (v3)
  {
    this = WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v3 + 16), a2);
  }

  v4 = *(v2 + 59);
  *(v2 + 59) = 0;
  if (v4)
  {
    WTF::StringImpl::createWithoutCopyingNonEmpty();
    (*(*v4 + 16))(v4, &v6);
    (*(*v4 + 8))(v4);
    this = v6;
    v6 = 0;
    if (this)
    {
      if (atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(this, v5);
      }
    }
  }

  return this;
}

atomic_uint *WebKit::WebsiteDataStore::terminateNetworkProcess(atomic_uint *this)
{
  v1 = *(this + 54);
  *(this + 54) = 0;
  if (v1)
  {
    WebKit::NetworkProcessProxy::terminate(v1);
    WebKit::NetworkProcessProxy::networkProcessDidTerminate(v1, 2);

    return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v1 + 4, v2);
  }

  return this;
}

atomic_uint *WebKit::WebsiteDataStore::sendNetworkProcessPrepareToSuspendForTesting(WebKit::WebsiteDataStore *a1, void *a2)
{
  v3 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v4 = v3 + 4;
  atomic_fetch_add(v3 + 4, 1u);
  WebKit::NetworkProcessProxy::sendPrepareToSuspend(v3, 0, a2, 0.0);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v4, v5);
}

atomic_uint *WebKit::WebsiteDataStore::sendNetworkProcessWillSuspendImminentlyForTesting(WebKit::WebsiteDataStore *this, void *a2)
{
  v2 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v3 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  WebKit::NetworkProcessProxy::sendProcessWillSuspendImminentlyForTesting(v2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3, v4);
}

atomic_uint *WebKit::WebsiteDataStore::sendNetworkProcessDidResume(WebKit::WebsiteDataStore *this, void *a2)
{
  v2 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v3 = (v2 + 16);
  atomic_fetch_add((v2 + 16), 1u);
  WebKit::NetworkProcessProxy::sendProcessDidResume(v2, 0);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3, v4);
}

uint64_t WebKit::WebProcessPool::sendToAllProcessesForSession<Messages::WebProcess::SetTrackingPreventionEnabled>@<X0>(atomic_uint *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = WTF::fastMalloc(a4, 0x10);
  *v7 = &unk_1F1121AD0;
  v7[1] = a2;
  v10 = v7;
  WebKit::WebProcessPool::forEachProcessForSession(a1, a3, &v10);
  v8 = *(*v7 + 8);

  return v8(v7);
}

uint64_t WebKit::WebsiteDataStore::setStatisticsTestingCallback(WebKit::WebsiteDataStore *this, uint64_t *a2)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = WebKit::WebsiteDataStore::networkProcess(this, a2);
    v6 = (v5 + 16);
    atomic_fetch_add((v5 + 16), 1u);
    v9 = 1;
    WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetResourceLoadStatisticsLogTestingEvent>(v5, &v9, 0, 0);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6, v7);
    v4 = *a2;
  }

  *a2 = 0;
  result = *(this + 37);
  *(this + 37) = v4;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::SetResourceLoadStatisticsLogTestingEvent>(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 701;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::Encoder::operator<<<BOOL &>(v8, a2);
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

uint64_t *WebKit::WebsiteDataStore::setResourceLoadStatisticsDebugMode@<X0>(WebKit::WebsiteDataStore *this@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x10);
  *v5 = &unk_1F1121AF8;
  v7 = v5;
  WebKit::WebsiteDataStore::setResourceLoadStatisticsDebugMode(this, a2, &v7);
  result = v7;
  v7 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

atomic_uint *WebKit::WebsiteDataStore::setResourceLoadStatisticsDebugMode(uint64_t a1, void *a2, uint64_t *a3)
{
  *(a1 + 288) = a2;
  v6 = WebKit::WebsiteDataStore::networkProcess(a1, a2);
  v7 = (v6 + 16);
  atomic_fetch_add((v6 + 16), 1u);
  WebKit::NetworkProcessProxy::setResourceLoadStatisticsDebugMode(v6, *(a1 + 24), a2, a3);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
}

atomic_uint *WebKit::WebsiteDataStore::isResourceLoadStatisticsEphemeral(WebKit::WebsiteDataStore *this, uint64_t *a2)
{
  if (*(this + 289) == 2)
  {
    goto LABEL_7;
  }

  if (*(this + 289))
  {
LABEL_11:
    v9 = *a2;
    *a2 = 0;
    (*(*v9 + 16))(v9, 0);
    v10 = *(*v9 + 8);

    return v10(v9);
  }

  v4 = *(*(this + 28) + 544);
  if ((v4 & 0x100) != 0)
  {
    if (v4)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (!WebKit::doesAppHaveTrackingPreventionEnabled(this))
  {
    goto LABEL_11;
  }

LABEL_7:
  if (*(this + 3) >= -1)
  {
    goto LABEL_11;
  }

  v5 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v6 = (v5 + 16);
  atomic_fetch_add((v5 + 16), 1u);
  WebKit::NetworkProcessProxy::isResourceLoadStatisticsEphemeral(v5, *(this + 3), a2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v6, v7);
}

atomic_uint *WebKit::WebsiteDataStore::setPrivateClickMeasurementDebugMode(WebKit::WebsiteDataStore *this, void *a2)
{
  v2 = a2;
  v4 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  WebKit::NetworkProcessProxy::setPrivateClickMeasurementDebugMode(v4, *(this + 3), v2);

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

atomic_uint *WebKit::WebsiteDataStore::storePrivateClickMeasurement(WebKit::WebsiteDataStore *this, const WebCore::PrivateClickMeasurement *a2)
{
  v4 = WebKit::WebsiteDataStore::networkProcess(this, a2);
  v5 = (v4 + 16);
  atomic_fetch_add((v4 + 16), 1u);
  v8 = *(this + 3);
  v9[0] = &v8;
  v9[1] = a2;
  WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::StorePrivateClickMeasurement>(v4, v9, 0, 0);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v5, v6);
}

uint64_t WebKit::AuxiliaryProcessProxy::send<Messages::NetworkProcess::StorePrivateClickMeasurement>(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = IPC::Encoder::operator new(0x238, a2);
  *v8 = 725;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 1) = a3;
  *(v8 + 68) = 0;
  *(v8 + 70) = 0;
  *(v8 + 69) = 0;
  IPC::Encoder::encodeHeader(v8);
  v18 = v8;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(v8, **a2);
  IPC::ArgumentCoder<WebCore::PrivateClickMeasurement,void>::encode(v8, a2[1]);
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