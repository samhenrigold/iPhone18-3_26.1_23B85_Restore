void WebKit::WebProcessProxy::connectionWillOpen(WebKit::WebProcessProxy *this, IPC::Connection *a2)
{
  if ((*(a2 + 96) & 1) == 0)
  {
    *(a2 + 95) = 256;
  }

  *(a2 + 34) = 1;
}

uint64_t IPC::Connection::open(IPC::Connection *a1, uint64_t a2, uint64_t a3)
{
  atomic_fetch_add((a2 + 16), 1u);
  v4 = *(a1 + 1);
  *(a1 + 1) = a2;
  if (v4)
  {
    v9 = (v4 + 16);
    if (!atomic_load(v9))
    {
      result = 290;
      __break(0xC471u);
      return result;
    }

    atomic_fetch_add(v9, 0xFFFFFFFF);
  }

  v5 = IPC::Connection::SyncMessageState::get(a3, &v11);
  v7 = *(a1 + 2);
  *(a1 + 2) = v11;
  if (v7)
  {
    IPC::Connection::SyncMessageStateRelease::operator()(v5, v7);
  }

  IPC::Connection::platformOpen(a1, v7, v6);
  return 1;
}

uint64_t IPC::Connection::SyncMessageState::get@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = 0;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_145, &v4, 1u, memory_order_acquire, memory_order_acquire);
  if (v4)
  {
    MEMORY[0x19EB01E30](_MergedGlobals_145);
  }

  if ((byte_1ED6432C0 & 1) == 0)
  {
    qword_1ED6432B8 = 0;
    byte_1ED6432C0 = 1;
  }

  v5 = (a1 + 8);
  while (1)
  {
    v6 = *v5;
    if ((*v5 & 1) == 0)
    {
      break;
    }

    v19 = *v5;
    atomic_compare_exchange_strong_explicit(v5, &v19, v6 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v19 == v6)
    {
      goto LABEL_8;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v5);
LABEL_8:
  v7 = qword_1ED6432B8;
  if (!qword_1ED6432B8)
  {
    WTF::HashTable<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>,WTF::KeyValuePair<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>,IPC::Connection::SyncMessageState *>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>,IPC::Connection::SyncMessageState *>>,WTF::DefaultHash<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>>,WTF::HashMap<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>,IPC::Connection::SyncMessageState *,WTF::DefaultHash<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>>,WTF::HashTraits<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>>,WTF::HashTraits<IPC::Connection::SyncMessageState *>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::RefPtr<WTF::SerialFunctionDispatcher,WTF::RawPtrTraits<WTF::SerialFunctionDispatcher>,WTF::DefaultRefDerefTraits<WTF::SerialFunctionDispatcher>>>,WTF::FastMalloc>::expand(0);
    v7 = qword_1ED6432B8;
  }

  v8 = *(v7 - 8);
  v9 = (~(a1 << 32) + a1) ^ ((~(a1 << 32) + a1) >> 22);
  v10 = 9 * ((v9 + ~(v9 << 13)) ^ ((v9 + ~(v9 << 13)) >> 8));
  v11 = (v10 ^ (v10 >> 15)) + ~((v10 ^ (v10 >> 15)) << 27);
  v12 = v8 & ((v11 >> 31) ^ v11);
  v13 = (v7 + 16 * v12);
  v14 = *v13;
  if (!*v13)
  {
LABEL_20:
    *v13 = a1;
    operator new();
  }

  v15 = 0;
  v16 = 1;
  while (v14 != a1)
  {
    if (v14 == -1)
    {
      v15 = v13;
    }

    v12 = (v12 + v16) & v8;
    v13 = (v7 + 16 * v12);
    v14 = *v13;
    ++v16;
    if (!*v13)
    {
      if (v15)
      {
        v15[1] = 0;
        --*(v7 - 16);
        v13 = v15;
      }

      goto LABEL_20;
    }
  }

  result = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((a1 + 8));
  v18 = v13[1];
  ++*(v18 + 96);
  *a2 = v18;
  LODWORD(v18) = 1;
  atomic_compare_exchange_strong_explicit(_MergedGlobals_145, &v18, 0, memory_order_release, memory_order_relaxed);
  if (v18 != 1)
  {

    return WTF::Lock::unlockSlow(_MergedGlobals_145);
  }

  return result;
}

atomic_ullong *IPC::Connection::platformOpen(IPC::Connection *this, uint64_t a2, unsigned int a3)
{
  v4 = MEMORY[0x1E69E9A60];
  if (*(this + 32) == 1)
  {
    IPC::requestNoSenderNotifications(*(this + 80), *(this + 80));
  }

  else
  {
    result = mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, this + 80);
    if (result)
    {
      __break(0xC471u);
      return result;
    }

    mach_port_guard(*v4, *(this + 80), this, 1);
    *(this + 72) = 1;
    WTF::MachSendRight::createFromReceiveRight(&v40, *(this + 80));
    IPC::requestNoSenderNotifications(*(this + 80), *(this + 80));
    IPC::Connection::initializeSendSource(this);
    if (*(this + 76) != -1)
    {
      v7 = IPC::Encoder::operator new(0x238, v6);
      *v7 = 3195;
      *(v7 + 68) = 0;
      *(v7 + 70) = 0;
      *(v7 + 69) = 0;
      *(v7 + 2) = 0;
      *(v7 + 3) = 0;
      *(v7 + 1) = 0;
      IPC::Encoder::encodeHeader(v7);
      v34[0] = v7;
      IPC::Encoder::addAttachment(v7, &v40);
      IPC::Connection::sendMessageImpl(this, v34, 0, 0);
      v9 = v34[0];
      v34[0] = 0;
      if (v9)
      {
        IPC::Encoder::~Encoder(v9, v8);
        bmalloc::api::tzoneFree(v27, v28);
      }
    }

    WTF::MachSendRight::~MachSendRight(&v40);
  }

  v10 = *(this + 80);
  LODWORD(v34[0]) = 128;
  MEMORY[0x19EB15390](*v4, v10, 1, v34, 1);
  v11 = dispatch_source_create(MEMORY[0x1E69E96D8], *(this + 80), 0, *(*(this + 8) + 8));
  v12 = *(this + 41);
  *(this + 41) = v11;
  if (v12)
  {

    v11 = *(this + 41);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3321888768;
  handler[2] = ___ZN3IPC10Connection12platformOpenEv_block_invoke;
  handler[3] = &__block_descriptor_48_e8_32c44_ZTSKZN3IPC10Connection12platformOpenEvE3__0_e5_v8__0l;
  while (1)
  {
    v13 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v29 = *this;
    atomic_compare_exchange_strong_explicit(this, &v29, v13 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v29 == v13)
    {
      goto LABEL_12;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_12:
  handler[4] = this;
  while (1)
  {
    v14 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v30 = *this;
    atomic_compare_exchange_strong_explicit(this, &v30, v14 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v30 == v14)
    {
      goto LABEL_15;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_15:
  v39 = this;
  dispatch_source_set_event_handler(v11, handler);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this, v15);
  v16 = *(this + 41);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3321888768;
  v35[2] = ___ZN3IPC10Connection12platformOpenEv_block_invoke_2;
  v35[3] = &__block_descriptor_48_e8_32c44_ZTSKZN3IPC10Connection12platformOpenEvE3__1_e5_v8__0l;
  while (1)
  {
    v17 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v31 = *this;
    atomic_compare_exchange_strong_explicit(this, &v31, v17 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v31 == v17)
    {
      goto LABEL_18;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_18:
  v18 = *(this + 80);
  while (1)
  {
    v19 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v32 = *this;
    atomic_compare_exchange_strong_explicit(this, &v32, v19 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v32 == v19)
    {
      goto LABEL_21;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_21:
  v36 = this;
  v37 = v18;
  dispatch_source_set_cancel_handler(v16, v35);
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this, v20);
  v21 = *(this + 8);
  while (1)
  {
    v22 = *this;
    if ((*this & 1) == 0)
    {
      break;
    }

    v33 = *this;
    atomic_compare_exchange_strong_explicit(this, &v33, v22 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v33 == v22)
    {
      goto LABEL_24;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*this);
LABEL_24:
  v23 = WTF::fastMalloc(v22, 0x18);
  *v23 = &unk_1F1146E30;
  v23[1] = this;
  v23[2] = this;
  v34[0] = v23;
  (*(*v21 + 48))(v21, v34);
  v24 = v34[0];
  v34[0] = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  IPC::Connection::getAuditToken(v34, this);
  v26 = v36;
  v36 = 0;
  if (v26)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v26, v25);
  }

  result = v39;
  v39 = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result, v25);
  }

  return result;
}

uint64_t IPC::requestNoSenderNotifications(mach_port_name_t name, mach_port_t notify)
{
  previous = 0;
  result = mach_port_request_notification(*MEMORY[0x1E69E9A60], name, 70, 0, notify, 0x15u, &previous);
  if (!result)
  {
    return WTF::deallocateSendRightSafely(previous);
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c44_ZTSKZN3IPC10Connection12platformOpenEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  *(v2 + 40) = v3;
  return result;
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(atomic_ullong *result, unint64_t a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      v3 = *result;

      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::Connection,(WTF::DestructionThread)2>(v3, a2);
    }

    v4 = *result;
    atomic_compare_exchange_strong_explicit(result, &v4, v2 - 2, memory_order_relaxed, memory_order_relaxed);
  }

  while (v4 != v2);
  if (v2 == 3)
  {
    v5 = result;
    v6 = WTF::fastMalloc(3, 0x10);
    *v6 = &unk_1F10EA3C0;
    v6[1] = v5;
    v7 = v6;
    WTF::ensureOnMainRunLoop();
    result = v7;
    if (v7)
    {
      return (*(*v7 + 8))(v7);
    }
  }

  return result;
}

void sub_19D5A0DD0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

atomic_uchar *WTF::ThreadSafeWeakPtrControlBlock::strongDeref<IPC::Connection,(WTF::DestructionThread)2>(atomic_uchar *this, unint64_t a2)
{
  v2 = this;
  v3 = 0;
  atomic_compare_exchange_strong_explicit(this, &v3, 1u, memory_order_acquire, memory_order_acquire);
  if (v3)
  {
    this = MEMORY[0x19EB01E30](this, a2);
  }

  v4 = *(v2 + 1) - 1;
  *(v2 + 1) = v4;
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 3);
    ++*(v2 + 2);
    *(v2 + 3) = 0;
  }

  v6 = 1;
  atomic_compare_exchange_strong_explicit(v2, &v6, 0, memory_order_release, memory_order_relaxed);
  if (v6 != 1)
  {
    v8 = v4;
    this = WTF::Lock::unlockSlow(v2);
    v4 = v8;
  }

  if (!v4)
  {
    v7 = WTF::fastMalloc(0, 0x18);
    *v7 = &unk_1F10EA3E8;
    v7[1] = v2;
    v7[2] = v5;
    v9 = v7;
    WTF::ensureOnMainRunLoop();
    this = v9;
    if (v9)
    {
      return (*(*v9 + 8))(v9);
    }
  }

  return this;
}

void sub_19D5A0F08(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c44_ZTSKZN3IPC10Connection12platformOpenEvE3__1(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
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

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v4);
LABEL_6:
  *(v3 + 32) = v4;
  *(v3 + 40) = *(a2 + 40);
  return result;
}

double IPC::Connection::getAuditToken@<D0>(uint64_t *__return_ptr a1@<X8>, IPC::Connection *this@<X0>)
{
  v3 = (this + 356);
  if (*(this + 388) == 1)
  {
    v4 = *v3;
    v5 = *(this + 372);
    *a1 = *v3;
    *(a1 + 1) = v5;
    *(a1 + 8) = *(this + 97);
  }

  else if (*(this + 43))
  {
    xpc_connection_get_audit_token();
    v7 = *(this + 388);
    *v3 = v9;
    v3[1] = v10;
    if ((v7 & 1) == 0)
    {
      *(this + 388) = 1;
    }

    *&v4 = v9;
    *a1 = v9;
    *(a1 + 1) = v10;
    *(a1 + 32) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 32) = 0;
  }

  return *&v4;
}

uint64_t WebKit::EventDispatcher::deref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t IPC::Connection::sendMessageWithAsyncReply(os_unfair_lock_s *a1, unsigned __int16 **a2, uint64_t *a3, char a4, uint64_t a5)
{
  v5 = a3[1];
  if (v5)
  {
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(*a2, a3[1]);
    IPC::Connection::addAsyncReplyHandler(a1, a3);
    v11 = IPC::Connection::sendMessageImpl(a1, a2, a4, a5);
    if (v11)
    {
      IPC::Connection::takeAsyncReplyHandler(a1, v5, &v19);
      if (v19)
      {
        WTF::RunLoop::mainSingleton(v13);
        v14 = v19;
        v19 = 0;
        v16 = WTF::fastMalloc(v15, 0x10);
        *v16 = &unk_1F1147430;
        v16[1] = v14;
        v18 = v16;
        WTF::RunLoop::dispatch();
        if (v18)
        {
          (*(*v18 + 8))(v18);
        }

        v17 = v19;
        v19 = 0;
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }
    }

    return v11;
  }

  else
  {
    result = 158;
    __break(0xC471u);
  }

  return result;
}

uint64_t WebKit::WebProcessProxy::shouldSendPendingMessage(unint64_t a1, unsigned __int16 **a2)
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = **a2;
  if (v5 == 2595)
  {
    v8 = v4[2];
    if (v8)
    {
      v9 = v4[3];
    }

    else
    {
      v8 = v4 + 4;
      v9 = 512;
    }

    v38 = v4[68];
    if (v9 < v38)
    {
      goto LABEL_100;
    }

    v87 = 0;
    v88 = 0;
    IPC::Decoder::create(&v80, v38, v8, &v87);
    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v39);
    v2 = v80;
    if (v80)
    {
      IPC::ArgumentCoder<WebKit::GoToBackForwardItemParameters,void>::decode(v80, &v96);
      if ((v102 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_57;
    }

    return 0;
  }

  if (v5 != 2624)
  {
    return 1;
  }

  v6 = v4[2];
  if (v6)
  {
    v7 = v4[3];
  }

  else
  {
    v6 = v4 + 4;
    v7 = 512;
  }

  v11 = v4[68];
  if (v7 < v11)
  {
    goto LABEL_100;
  }

  v87 = 0;
  v88 = 0;
  IPC::Decoder::create(&v86, v11, v6, &v87);
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v87, v12);
  if (v86)
  {
    IPC::Decoder::decode<WebKit::LoadParameters>(v86, &v96);
    v13 = v86;
    IPC::ArgumentCoder<WTF::URL,void>::decode(v86, v84);
    if ((v85 & 1) == 0)
    {
      v72 = *v13;
      v73 = v13[1];
      *v13 = 0;
      v13[1] = 0;
      v74 = v13[3];
      if (v74)
      {
        if (v73)
        {
          (*(*v74 + 16))(v74, v72);
        }
      }
    }

    v14 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v86);
    v16 = v15;
    v17 = v86;
    v18 = v86[1];
    v19 = v86[2];
    v20 = *v86;
    if (v18 > v19 - *v86)
    {
      v86[2] = v19 + 1;
      if (v19)
      {
        v21 = *v19;
        if (v21 < 2)
        {
          v22 = 1;
          goto LABEL_16;
        }

        v75 = v16;
LABEL_114:
        *v17 = 0;
        v17[1] = 0;
        v78 = v17[3];
        if (v78 && v18)
        {
          (*(*v78 + 16))(v78, v20);
        }

        v22 = 0;
        v16 = v75;
LABEL_16:
        if (v21)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        if (v103 == 1)
        {
          if ((v85 & 1) == 0)
          {
            goto LABEL_49;
          }

          if ((v22 & v16) == 1)
          {
            v24 = v86[7];
            WebKit::WebProcessProxy::webPage(v14, &v83);
            v2 = v83;
            if (v83)
            {
              if ((v103 & 1) == 0)
              {
                goto LABEL_100;
              }

              v25 = WebCore::ResourceRequestBase::url(v99);
              v26 = *v25;
              if (*v25)
              {
                atomic_fetch_add_explicit(v26, 2u, memory_order_relaxed);
              }

              v80 = v26;
              v27 = *(v25 + 24);
              v81 = *(v25 + 8);
              v82 = v27;
              if ((v85 & 1) == 0)
              {
LABEL_100:
                while (1)
                {
                  __break(1u);
LABEL_101:
                  v69 = *v2;
                  v70 = *(v2 + 1);
                  *v2 = 0;
                  *(v2 + 1) = 0;
                  v71 = *(v2 + 3);
                  if (v71 && v70)
                  {
                    (*(*v71 + 16))(v71, v69);
                  }

LABEL_57:
                  if (v102 != 1)
                  {
                    break;
                  }

                  v40 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v80);
                  v41 = v102;
                  if ((v42 & 1) == 0)
                  {
                    goto LABEL_89;
                  }

                  if (v102)
                  {
                    v43 = v40;
                    v44 = *(v80 + 7);
                    v2 = v97;
                    ++*v97;
                    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
                    v45 = *(a1 + 8);
                    atomic_fetch_add(v45, 1u);
                    v87 = v45;
                    std::optional<WebKit::GoToBackForwardItemParameters>::optional[abi:sn200100](&v88, &v96);
                    v94 = v44;
                    v46 = WebKit::WebProcessProxy::webPage(v43, &v86);
                    v48 = v86;
                    if (v86)
                    {
                      if (!*(v2 + 18))
                      {
                        __break(0xC471u);
                        JUMPOUT(0x19D5A19A0);
                      }

                      v49 = *(v2 + 19);
                      v84[0] = *(v2 + 18);
                      v84[1] = v49;
                      v50 = WebKit::WebBackForwardListItem::allItems(v46);
                      v51 = WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::get<WTF::IdentityHashTranslator<WTF::HashMap<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>,WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>,WTF::HashTraits<WTF::WeakRef<WebKit::WebBackForwardListItem,WTF::DefaultWeakPtrImpl>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>>,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::BackForwardItemIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>>(v50, v84);
                      if (v51)
                      {
                        v52 = v51;
                        CFRetain(*(v51 + 8));
                        if (*(v52 + 136))
                        {
                          v53 = MEMORY[0x1E696EBA8];
                        }

                        else
                        {
                          v53 = (*(*(v52 + 48) + 40) + 8);
                        }

                        WTF::URL::URL(v84, v53);
                        v56 = WTF::fastMalloc(v55, 0xE8);
                        *v56 = &unk_1F111A9E8;
                        v57 = v87;
                        v87 = 0;
                        v56[1] = v57;
                        std::optional<WebKit::GoToBackForwardItemParameters>::optional[abi:sn200100]((v56 + 2), &v88);
                        v56[28] = v94;
                        v83 = v56;
                        WebKit::WebPageProxy::maybeInitializeSandboxExtensionHandle(v48, a1, v84, v52 + 64, 1, &v83);
                        v59 = v83;
                        v83 = 0;
                        if (v59)
                        {
                          (*(*v59 + 1))(v59);
                        }

                        v60 = v84[0];
                        v84[0] = 0;
                        if (v60 && atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v60, v58);
                        }

                        CFRelease(*(v52 + 8));
                      }

                      CFRelease(v48[1]);
                      goto LABEL_77;
                    }

                    if (!v87)
                    {
                      goto LABEL_77;
                    }

                    v54 = *(v87 + 1);
                    if (!v54)
                    {
                      goto LABEL_77;
                    }

                    if (v93)
                    {
                      v84[0] = &v88;
                      WebKit::AuxiliaryProcessProxy::send<Messages::WebPage::GoToBackForwardItem>(v54, v84, v94, 0);
LABEL_77:
                      if (v93 == 1)
                      {
                        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v92);
                        v61 = v91;
                        v91 = 0;
                        if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v61, v47);
                        }

                        if (v90[120] == 1)
                        {
                          WebKit::WebsitePoliciesData::~WebsitePoliciesData(v90, v47);
                        }

                        v62 = v89[0];
                        v89[0] = 0;
                        if (v62)
                        {
                          WTF::RefCounted<WebKit::FrameState>::deref(v62);
                        }
                      }

                      v63 = v87;
                      v87 = 0;
                      if (v63 && atomic_fetch_add(v63, 0xFFFFFFFF) == 1)
                      {
                        atomic_store(1u, v63);
                        WTF::fastFree(v63, v47);
                      }

                      WTF::RefCounted<WebKit::FrameState>::deref(v2);
                      v41 = v102;
LABEL_89:
                      if (v41)
                      {
                        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v101);
                        v65 = v100;
                        v100 = 0;
                        if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
                        {
                          WTF::StringImpl::destroy(v65, v64);
                        }

                        if (v99[104] == 1)
                        {
                          WebKit::WebsitePoliciesData::~WebsitePoliciesData(&v98, v64);
                        }

                        v66 = v97;
                        v97 = 0;
                        if (v66)
                        {
                          WTF::RefCounted<WebKit::FrameState>::deref(v66);
                        }
                      }

                      break;
                    }
                  }
                }

                v37 = v80;
                v80 = 0;
                if (!v37)
                {
                  return 0;
                }

LABEL_98:
                IPC::Decoder::~Decoder(v37);
                bmalloc::api::tzoneFree(v67, v68);
                return 0;
              }

              WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded((a1 + 8), a1);
              v28 = *(a1 + 8);
              atomic_fetch_add(v28, 1u);
              v87 = v28;
              v88 = v24;
              LOBYTE(v89[0]) = 0;
              v95 = 0;
              v29 = v103;
              if (v103 == 1)
              {
                WebKit::LoadParameters::LoadParameters(v89, &v96);
                v95 = 1;
              }

              v30 = WTF::fastMalloc(v29, 0x3F0);
              *v30 = &unk_1F111A9C0;
              v31 = v87;
              v32 = v88;
              v87 = 0;
              v30[2] = v31;
              v30[3] = v32;
              *(v30 + 32) = 0;
              *(v30 + 992) = 0;
              if (v95 == 1)
              {
                WebKit::LoadParameters::LoadParameters((v30 + 4), v89);
                *(v30 + 992) = 1;
              }

              v79 = v30;
              WebKit::WebPageProxy::maybeInitializeSandboxExtensionHandle(v2, a1, &v80, v84, v23, &v79);
              v33 = v79;
              v79 = 0;
              if (v33)
              {
                (*(*v33 + 8))(v33);
              }

              if (v95 == 1)
              {
                WebKit::LoadParameters::~LoadParameters(v89, v20);
              }

              v34 = v87;
              v87 = 0;
              if (v34 && atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
              {
                atomic_store(1u, v34);
                WTF::fastFree(v34, v20);
              }

              v35 = v80;
              v80 = 0;
              if (v35 && atomic_fetch_add_explicit(v35, 0xFFFFFFFE, memory_order_relaxed) == 2)
              {
                WTF::StringImpl::destroy(v35, v20);
              }

              if (v83)
              {
                CFRelease(v83[1]);
              }
            }

            if ((v85 & 1) == 0)
            {
LABEL_49:
              if (v103 == 1)
              {
                WebKit::LoadParameters::~LoadParameters(&v96, v20);
              }

              v37 = v86;
              v86 = 0;
              if (!v37)
              {
                return 0;
              }

              goto LABEL_98;
            }
          }
        }

        else if ((v85 & 1) == 0)
        {
          goto LABEL_49;
        }

        v36 = v84[0];
        v84[0] = 0;
        if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v36, v20);
        }

        goto LABEL_49;
      }

      v75 = v16;
LABEL_110:
      *v17 = 0;
      v17[1] = 0;
      v77 = v17[3];
      if (v77)
      {
        if (v18)
        {
          (*(*v77 + 16))(v77, v20);
          v21 = 0;
          v20 = *v17;
          v18 = v17[1];
          goto LABEL_114;
        }
      }

      else
      {
        v18 = 0;
      }

      v20 = 0;
      v21 = 0;
      goto LABEL_114;
    }

    v75 = v16;
    *v86 = 0;
    v17[1] = 0;
    v76 = v17[3];
    if (v76)
    {
      if (v18)
      {
        (*(*v76 + 16))(v76);
        v20 = *v17;
        v18 = v17[1];
        goto LABEL_110;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
    goto LABEL_110;
  }

  return 0;
}

uint64_t WebKit::WebInspectorInterruptDispatcher::ref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

uint64_t WebKit::WebInspectorInterruptDispatcher::deref(uint64_t this)
{
  if (!*(this + 16))
  {
    this = 120;
    __break(0xC471u);
  }

  return this;
}

void IPC::Connection::addAsyncReplyHandler(os_unfair_lock_s *a1, uint64_t *a2)
{
  os_unfair_lock_lock(a1 + 25);
  if (a2[1])
  {
    WTF::HashMap<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>,WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>,WTF::DefaultHash<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>,WTF::HashTraits<WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<WTF::CompletionHandler<void ()(IPC::Connection *,IPC::Decoder *)>>(&a1[72], a2 + 1, a2, v4);
    os_unfair_lock_unlock(a1 + 25);
  }

  else
  {
    __break(0xC471u);
  }
}

uint64_t IPC::Connection::sendMessageImpl(uint64_t *a1, unsigned __int16 **a2, char a3, uint64_t a4)
{
  v79 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(a1 + 33);
  if ((v4 & 1) == 0)
  {
    return 1;
  }

  isMainRunLoop = WTF::isMainRunLoop(a1);
  if (isMainRunLoop && *(a1 + 22) && **a2 <= 0xF8EuLL && LOBYTE((&IPC::Detail::messageDescriptions)[3 * **a2 + 2]) != 213)
  {
    IPC::Connection::createSyncMessageEncoder(0x107F, *(*a2 + 1), buf);
    v49 = *buf;
    IPC::Encoder::setFullySynchronousModeForTesting(*buf);
    IPC::Encoder::wrapForTesting(v49, a2);
    v50 = IPC::Connection::sendSyncMessage(v72, a1, *&buf[8], buf, 0, INFINITY);
    if (LOBYTE(v72[1]))
    {
      if (LOBYTE(v72[1]) != 1)
      {
        mpark::throw_bad_variant_access(v50);
      }

      v33 = LOBYTE(v72[0]);
    }

    else
    {
      v63 = v72[0];
      v72[0] = 0;
      if (v63)
      {
        IPC::Decoder::~Decoder(v63);
        bmalloc::api::tzoneFree(v68, v69);
      }

      v33 = 0;
    }

    v64 = *buf;
    *buf = 0;
    if (v64)
    {
      IPC::Encoder::~Encoder(v64, v51);
      bmalloc::api::tzoneFree(v65, v66);
    }

    return v33;
  }

  if ((a3 & 1) != 0 && (*(a1 + 34) != 1 || *(a1 + 21)))
  {
    v35 = 1;
  }

  else
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_6;
    }

    v35 = 2;
  }

  isMainRunLoop = IPC::Encoder::setShouldDispatchMessageWhenWaitingForSyncReply(*a2, v35);
LABEL_6:
  v10 = 0;
  atomic_compare_exchange_strong_explicit(a1 + 176, &v10, 1u, memory_order_acquire, memory_order_acquire);
  if (v10)
  {
    isMainRunLoop = MEMORY[0x19EB01E30](a1 + 22);
  }

  v11 = a1[23];
  v12 = a1[24];
  if (v11)
  {
    v13 = a1[24];
    if (v12 + 1 != v11)
    {
      goto LABEL_10;
    }

    LODWORD(v36) = *(a1 + 52);
LABEL_48:
    v37 = v36;
    v38 = (v36 >> 2) + v36;
    if (v38 >= 0x1FFFFFFF)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5A214CLL);
    }

    v39 = a1[25];
    if (v38 <= 0xF)
    {
      v38 = 15;
    }

    v40 = v38 + 1;
    v41 = WTF::fastMalloc(v38, (8 * (v38 + 1)));
    *(a1 + 52) = v40;
    a1[25] = v41;
    v13 = a1[23];
    v42 = a1[24];
    v43 = v42 - v13;
    if (v42 < v13)
    {
      if (v42 > v37)
      {
        goto LABEL_88;
      }

      memcpy(v41, v39, 8 * v42);
      v13 = a1[23];
      v45 = v37 - v13;
      if (v37 < v13)
      {
        goto LABEL_88;
      }

      v46 = *(a1 + 52);
      if (v46 < v45)
      {
        goto LABEL_88;
      }

      v47 = v46 - (v37 - v13);
      isMainRunLoop = memcpy((a1[25] + 8 * v47), &v39[8 * v13], 8 * v45);
      a1[23] = v47;
    }

    else
    {
      if (v37 < v13)
      {
        goto LABEL_88;
      }

      if (v43 == -1)
      {
        v43 = v37 - v13;
      }

      else if (v37 - v13 < v43)
      {
        goto LABEL_88;
      }

      isMainRunLoop = memcpy(&v41[v13], &v39[8 * v13], 8 * v43);
    }

    if (v39)
    {
      if (a1[25] == v39)
      {
        a1[25] = 0;
        *(a1 + 52) = 0;
      }

      isMainRunLoop = WTF::fastFree(v39, v44);
    }

    v13 = a1[24];
    goto LABEL_10;
  }

  v36 = *(a1 + 52);
  if (v12)
  {
    v13 = a1[24];
    if (v12 == v36 - 1)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (!v36)
    {
      goto LABEL_48;
    }

    v13 = 0;
  }

LABEL_10:
  v14 = *(a1 + 52);
  if (v13 >= v14)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v15 = 0;
  v16 = 0;
  v17 = a1[25];
  v18 = *a2;
  *a2 = 0;
  *(v17 + 8 * v13) = v18;
  if (v13 == v14 - 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v13 + 1;
  }

  a1[24] = v19;
  v20 = a1[23];
  v21 = v19 >= v20;
  v22 = v19 - v20;
  if (v21)
  {
    v14 = 0;
  }

  v23 = v14 + v22;
  if (a1[6])
  {
    v24 = 0;
    if (v23 >= 0x81)
    {
      v25 = WTF::MonotonicTime::now(isMainRunLoop);
      if (v26 - *(a1 + 7) < 20.0)
      {
        v15 = 0;
        v16 = 0;
        v24 = 0;
      }

      else
      {
        v71 = 0;
        v27 = a1[24];
        if (a1[23] == v27)
        {
          WTF::MonotonicTime::now(v25);
          v70 = 0;
          v16 = 0;
          a1[7] = v28;
        }

        else
        {
          v54 = a1[23];
          v70 = 0;
          v16 = 0;
          v13 = *(a1 + 52);
          do
          {
            if (v54 >= v13)
            {
              goto LABEL_88;
            }

            v55 = **(a1[25] + 8 * v54);
            if (v55 >= 0x107F)
            {
              v55 = 4223;
            }

            *v72 = *&(&IPC::Detail::messageDescriptions)[3 * v55];
            v73 = 0;
            v56 = WTF::HashMap<WTF::ASCIILiteral,unsigned int,WTF::DefaultHash<WTF::ASCIILiteral>,WTF::HashTraits<WTF::ASCIILiteral>,WTF::HashTraits<unsigned int>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::add<int>(buf, &v71, v72, &v73);
            v57 = *(*buf + 16) + 1;
            *(*buf + 16) = v57;
            v13 = *(a1 + 52);
            v54 += v13 + 1;
            do
            {
              v54 -= v13;
            }

            while (v54 >= v13);
            v58 = v70;
            if (v57 > v70)
            {
              v16 = v72[0];
              v58 = v57;
            }

            v70 = v58;
          }

          while (v27 != v54);
          v59 = v71;
          WTF::MonotonicTime::now(v56);
          a1[7] = v61;
          if (v59)
          {
            WTF::fastFree((v59 - 16), v60);
          }
        }

        v15 = 1;
        v24 = v70;
      }
    }
  }

  else
  {
    v24 = 0;
  }

  v29 = 1;
  atomic_compare_exchange_strong_explicit(a1 + 176, &v29, 0, memory_order_release, memory_order_relaxed);
  if (v29 != 1)
  {
    v48 = v24;
    WTF::Lock::unlockSlow((a1 + 22));
    v24 = v48;
  }

  if (v15)
  {
    v52 = v24;
    v53 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_ERROR))
    {
      v67 = IPC::Connection::remoteProcessID(a1);
      *buf = 134218754;
      *&buf[4] = v23;
      *&buf[12] = 1024;
      *&buf[14] = v67;
      v75 = 1024;
      v76 = v52;
      v77 = 2082;
      v78 = v16;
      _os_log_error_impl(&dword_19D52D000, v53, OS_LOG_TYPE_ERROR, "Connection::sendMessage(): Too many messages (%zu) in the queue to remote PID: %d (most common: %u %{public}s messages), notifying client", buf, 0x22u);
    }

    (*(*a1[6] + 16))(a1[6]);
  }

  if (v11 == v12 || (a4 & 0x100000000) != 0)
  {
    while (1)
    {
      v13 = *a1;
      if ((*a1 & 1) == 0)
      {
        break;
      }

LABEL_89:
      v62 = v13;
      atomic_compare_exchange_strong_explicit(a1, &v62, v13 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v62 == v13)
      {
        goto LABEL_30;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(*a1);
LABEL_30:
    v30 = a1[8];
    v31 = WTF::fastMalloc(v13, 0x10);
    *v31 = &unk_1F1147408;
    v31[1] = a1;
    *buf = v31;
    if ((a4 & 0x100000000) != 0)
    {
      WTF::WorkQueueBase::dispatchWithQOS();
    }

    else
    {
      (*(*v30 + 48))(v30, buf);
    }

    v32 = *buf;
    *buf = 0;
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }
  }

  return 0;
}

uint64_t WTF::Vector<WebKit::AuxiliaryProcessProxy::PendingMessage,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    v4 = *a1;
    v5 = 40 * v3;
    do
    {
      if (*(v4 + 32) == 1)
      {
        v6 = *(v4 + 2);
        *(v4 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6, a2);
        }
      }

      std::unique_ptr<IPC::Encoder>::reset[abi:sn200100](v4, 0);
      v4 = (v4 + 40);
      v5 -= 40;
    }

    while (v5);
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

IPC::Encoder *std::unique_ptr<IPC::Encoder>::reset[abi:sn200100](IPC::Encoder **a1, IPC::Encoder *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    IPC::Encoder::~Encoder(result, a2);

    return bmalloc::api::tzoneFree(v5, v6);
  }

  return result;
}

atomic_uint *WebKit::ProcessThrottler::didConnectToProcess(WebKit::ProcessThrottler *this, WebKit::AuxiliaryProcessProxy *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(*(this + 2) + 8);
    if (!v4)
    {
      __break(0xC471u);
LABEL_14:
      JUMPOUT(0x19D5A236CLL);
    }

    v5 = *(v4 + 80);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 108);
    }

    v8 = 134218240;
    v9 = this;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_19D52D000, v3, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::didConnectToProcess", &v8, 0x12u);
  }

  if (*(this + 3))
  {
    __break(0xC471u);
    goto LABEL_14;
  }

  *(this + 237) = 1;
  v6 = WebKit::ProcessThrottler::expectedThrottleState(this);
  result = WebKit::ProcessThrottler::setThrottleState(this, v6);
  if (!*(this + 3) && (*(this + 232) || *(this + 235) == 1))
  {
    __break(0xC471u);
    JUMPOUT(0x19D5A238CLL);
  }

  return result;
}

uint64_t WebKit::ProcessThrottler::expectedThrottleState(WebKit::ProcessThrottler *this)
{
  if (WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(this + 23))
  {
    return !WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(this + 25);
  }

  else
  {
    return 2;
  }
}

uint64_t IPC::Connection::initializeSendSource(uint64_t this)
{
  v1 = *(this + 304);
  if (v1 != -1)
  {
    if (v1)
    {
      v2 = this;
      v3 = dispatch_source_create(MEMORY[0x1E69E96E0], v1, 8uLL, *(*(this + 64) + 8));
      v4 = *(v2 + 312);
      *(v2 + 312) = v3;
      if (v4)
      {

        v3 = *(v2 + 312);
      }

      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3321888768;
      handler[2] = ___ZN3IPC10Connection20initializeSendSourceEv_block_invoke;
      handler[3] = &__block_descriptor_48_e8_32c52_ZTSKZN3IPC10Connection20initializeSendSourceEvE3__0_e5_v8__0l;
      while (1)
      {
        v5 = *v2;
        if ((*v2 & 1) == 0)
        {
          break;
        }

        v16 = *v2;
        atomic_compare_exchange_strong_explicit(v2, &v16, v5 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v16 == v5)
        {
          goto LABEL_8;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_8:
      handler[4] = v2;
      while (1)
      {
        v6 = *v2;
        if ((*v2 & 1) == 0)
        {
          break;
        }

        v17 = *v2;
        atomic_compare_exchange_strong_explicit(v2, &v17, v6 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v17 == v6)
        {
          goto LABEL_11;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_11:
      v25 = v2;
      dispatch_source_set_registration_handler(v3, handler);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2, v7);
      v8 = *(v2 + 312);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3321888768;
      v22[2] = ___ZN3IPC10Connection20initializeSendSourceEv_block_invoke_8;
      v22[3] = &__block_descriptor_48_e8_32c52_ZTSKZN3IPC10Connection20initializeSendSourceEvE3__1_e5_v8__0l;
      while (1)
      {
        v9 = *v2;
        if ((*v2 & 1) == 0)
        {
          break;
        }

        v18 = *v2;
        atomic_compare_exchange_strong_explicit(v2, &v18, v9 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v18 == v9)
        {
          goto LABEL_14;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_14:
      v22[4] = v2;
      while (1)
      {
        v10 = *v2;
        if ((*v2 & 1) == 0)
        {
          break;
        }

        v19 = *v2;
        atomic_compare_exchange_strong_explicit(v2, &v19, v10 + 2, memory_order_relaxed, memory_order_relaxed);
        if (v19 == v10)
        {
          goto LABEL_17;
        }
      }

      WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v2);
LABEL_17:
      v23 = v2;
      dispatch_source_set_event_handler(v8, v22);
      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2, v11);
      v12 = *(v2 + 304);
      v13 = *(v2 + 312);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = ___ZN3IPC10Connection20initializeSendSourceEv_block_invoke_10;
      v20[3] = &__block_descriptor_36_e5_v8__0l;
      v21 = v12;
      dispatch_source_set_cancel_handler(v13, v20);
      dispatch_resume(*(v2 + 312));
      v15 = v23;
      v23 = 0;
      if (v15)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v15, v14);
      }

      this = v25;
      v25 = 0;
      if (this)
      {
        return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(this, v14);
      }
    }

    else
    {
      this = 344;
      __break(0xC471u);
    }
  }

  return this;
}

void sub_19D5A2660(_Unwind_Exception *a1, unint64_t a2)
{
  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v2, a2);
  v6 = *(v3 - 40);
  *(v3 - 40) = 0;
  if (v6)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v6, v5);
  }

  _Unwind_Resume(a1);
}

BOOL WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::isEmptyIgnoringNullReferences(uint64_t *a1)
{
  if (!*a1 || !*(*a1 - 12))
  {
    return 1;
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(a1, v11);
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 - 4);
    v4 = (v2 + 8 * v3);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  v6 = a1;
  v7 = v4;
  v8 = v4;
  v9 = v4;
  v10 = v2 + 8 * v3;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v6);
  return v11[1] == v7;
}

uint64_t __copy_helper_block_e8_32c52_ZTSKZN3IPC10Connection20initializeSendSourceEvE3__0(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  *(v2 + 40) = v3;
  return result;
}

atomic_uint *WebKit::ProcessThrottler::setThrottleState(atomic_uint *result, uint64_t a2)
{
  v3 = result;
  v102 = *MEMORY[0x1E69E9840];
  *(result + 232) = a2;
  v4 = 0x30100u >> (8 * a2);
  v5 = *(result + 3);
  if (v5 && (*(v5 + 48) & 1) == 0 && *(v5 + 16) == v4 || *(result + 237) != 1)
  {
    return result;
  }

  v6 = *(*(result + 2) + 8);
  if (!v6)
  {
    __break(0xC471u);
    goto LABEL_133;
  }

  v7 = v6 + 4;
  atomic_fetch_add(v6 + 4, 1u);
  v8 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(v3 + 2) + 8);
    if (!v10)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5A310CLL);
    }

    v11 = *(v10 + 80);
    if (v11)
    {
      v12 = *(v11 + 108);
    }

    else
    {
      v12 = 0;
    }

    *buf = 134219008;
    *&buf[4] = v3;
    v94 = 1024;
    v95 = v12;
    v96 = 1024;
    v97 = v4 & 3;
    v98 = 1024;
    v99 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(v3 + 23, v9);
    v100 = 1024;
    v101 = WTF::WeakHashSet<WebKit::ProcessThrottlerActivity,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::computeSize(v3 + 25, v13);
    _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::setThrottleState: Updating process assertion type to %u (foregroundActivities=%u, backgroundActivities=%u)", buf, 0x24u);
    v7 = v6 + 4;
  }

  v14 = *(v3 + 3);
  *(v3 + 3) = 0;
  if (!v14)
  {
    goto LABEL_52;
  }

  v15 = *(v3 + 1);
  v16 = (v14 + 8);
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
      goto LABEL_18;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v16);
LABEL_18:
  if (*(v15 + 16) != 1)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v14 + 8), v9);
    goto LABEL_52;
  }

  v19 = *(v14 + 16);
  v20 = *(v14 + 64);
  *(v14 + 64) = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  v89 = v7;
  if (WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion::s_heapRef, v9);
  }

  else
  {
    NonCompact = WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion::operatorNewSlow(0);
  }

  v22 = NonCompact;
  *NonCompact = 1;
  NonCompact[1] = v15;
  ++*v15;
  NonCompact[2] = v14;
  v23 = WTF::RunLoop::mainSingleton(NonCompact);
  v24 = v23;
  while (1)
  {
    v25 = *(v23 + 8);
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = *(v23 + 8);
    atomic_compare_exchange_strong_explicit((v23 + 8), &v26, v25 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v26 == v25)
    {
      goto LABEL_29;
    }
  }

  WTF::ThreadSafeWeakPtrControlBlock::strongRef(*(v23 + 8));
LABEL_29:
  *buf = v24;
  v27 = WTF::fastMalloc(v25, 0x20);
  *v27 = &unk_1F1115268;
  v27[1] = v22;
  v27[2] = WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion::entryExpired;
  v27[3] = 0;
  WTF::RunLoop::TimerBase::TimerBase();
  v22[3] = &unk_1F10E6DC8;
  v22[8] = v27;
  v28 = *buf;
  *buf = 0;
  if (v28)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WTF::SerialFunctionDispatcher,(WTF::DestructionThread)0>::deref((v28 + 8));
  }

  WTF::RunLoop::TimerBase::start();
  v7 = v89;
  if (v19 == 254)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5A312CLL);
  }

  if (v19 == 255)
  {
    __break(0xC471u);
LABEL_133:
    JUMPOUT(0x19D5A30CCLL);
  }

  v29 = *(v15 + 8);
  if (!v29)
  {
    WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::expand((v15 + 8));
    v29 = *(v15 + 8);
  }

  v30 = *(v29 - 8);
  v31 = 9 * ((~(v19 << 15) + v19) ^ ((~(v19 << 15) + v19) >> 10));
  v32 = (v31 ^ (v31 >> 6)) + ~((v31 ^ (v31 >> 6)) << 11);
  v33 = v30 & (v32 ^ HIWORD(v32));
  v34 = (v29 + 16 * v33);
  v35 = *v34;
  if (v35 != 255)
  {
    v36 = 0;
    v37 = 1;
    do
    {
      if (v35 == v19)
      {
        WTF::RefCounted<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>::deref(v22);
        goto LABEL_52;
      }

      if (v35 == 254)
      {
        v36 = v34;
      }

      v33 = (v33 + v37) & v30;
      v34 = (v29 + 16 * v33);
      v35 = *v34;
      ++v37;
    }

    while (v35 != 255);
    if (v36)
    {
      *v36 = -1;
      *(v36 + 1) = 0;
      --*(v29 - 16);
      v34 = v36;
    }
  }

  *v34 = v19;
  v38 = *(v34 + 1);
  *(v34 + 1) = v22;
  if (v38)
  {
    WTF::RefCounted<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>::deref(v38);
  }

  v39 = *(v15 + 8);
  if (v39)
  {
    v40 = *(v39 - 12) + 1;
  }

  else
  {
    v40 = 1;
  }

  *(v39 - 12) = v40;
  v41 = (*(v39 - 16) + v40);
  v42 = *(v39 - 4);
  if (v42 <= 0x400)
  {
    if (3 * v42 > 4 * v41)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (v42 <= 2 * v41)
  {
LABEL_50:
    WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::expand((v15 + 8));
  }

LABEL_52:
  v43 = *(v3 + 1);
  v45 = *(v43 + 8);
  v44 = (v43 + 8);
  v46 = WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::find<WTF::IdentityHashTranslator<WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::IntHash<WebKit::ProcessAssertionType>>,(WTF::ShouldValidateKey)1,WebKit::ProcessAssertionType>(v45, v4);
  v47 = v46;
  v48 = *v44;
  if (*v44)
  {
    v49 = v48 + 16 * *(v48 - 4);
  }

  else
  {
    v49 = 0;
  }

  if (v49 == v46)
  {
    goto LABEL_68;
  }

  v50 = *(v46 + 8);
  if (v50)
  {
    *(v46 + 8) = 0;
    v48 = *v44;
  }

  if (v48)
  {
    v51 = v48 + 16 * *(v48 - 4);
    if (v51 == v46)
    {
      goto LABEL_65;
    }
  }

  else
  {
    if (!v46)
    {
      goto LABEL_65;
    }

    v51 = 0;
  }

  if (v51 != v46)
  {
    WTF::HashTable<WebKit::ProcessAssertionType,WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::HashMap<WebKit::ProcessAssertionType,WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>,WTF::IntHash<WebKit::ProcessAssertionType>,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::HashTraits<WTF::Ref<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion,WTF::RawPtrTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>,WTF::DefaultRefDerefTraits<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::StrongEnumHashTraits<WebKit::ProcessAssertionType>,WTF::FastMalloc>::remove(v44, v46);
  }

LABEL_65:
  if (v50)
  {
    v52 = v50[2];
    if (*(v52 + 48))
    {
      v52 = 0;
    }

    else
    {
      v50[2] = 0;
    }

    WTF::RefCounted<WebKit::ProcessThrottler::ProcessAssertionCache::CachedAssertion>::deref(v50);
    goto LABEL_71;
  }

LABEL_68:
  v52 = 0;
LABEL_71:
  v53 = *(v3 + 3);
  *(v3 + 3) = v52;
  if (v53)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v53 + 8), v47);
    v52 = *(v3 + 3);
  }

  if (!v52)
  {
    if (*(v3 + 234) == 1)
    {
      WebKit::ProcessThrottler::assertionName(&v91, v3, v4);
      v55 = WTF::fastMalloc(v54, 0x10);
      *v55 = &unk_1F11152B8;
      v55[1] = v14;
      v90 = v55;
      v57 = WebKit::ProcessAndUIAssertion::operator new(0xC0, v56);
      v58 = *(v6 + 10);
      if (v58)
      {
        v59 = *(v58 + 108);
      }

      else
      {
        v59 = 0;
      }

      (*(*v6 + 152))(&v92, v6);
      v66 = *(v6 + 10);
      if (v66)
      {
        std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](buf, v66 + 40);
      }

      else
      {
        buf[0] = 0;
        BYTE2(v95) = 0;
      }

      WebKit::ProcessAndUIAssertion::ProcessAndUIAssertion(v57, v59, &v91, v4, &v92, buf);
      if (BYTE2(v95) == 1 && buf[8] != 255)
      {
        v88 = *buf;
        *buf = 0;
        if (v88)
        {
          CFRelease(v88);
        }
      }

      v68 = v92;
      v92 = 0;
      if (v68 && atomic_fetch_add_explicit(v68, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v68, v67);
      }

      WebKit::ProcessAssertion::acquireAsync(v57, &v90);
      v70 = v90;
      v90 = 0;
      if (v70)
      {
        (*(*v70 + 8))(v70);
      }

      v71 = v91;
      if (v91 && atomic_fetch_add_explicit(v91, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v69);
      }

      WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3, v3);
      v72 = *v3;
      v74 = WTF::fastMalloc(atomic_fetch_add(*v3, 1u), 0x10);
      *v74 = &unk_1F11152E0;
      v74[1] = v72;
      v75 = v57[22];
      v57[22] = v74;
      if (v75)
      {
        (*(*v75 + 8))(v75);
      }

      v76 = *(v3 + 3);
      *(v3 + 3) = v57;
      if (!v76)
      {
        v14 = 0;
        goto LABEL_105;
      }

      WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v76 + 8), v73);
    }

    else
    {
      WebKit::ProcessThrottler::assertionName(&v92, v3, v4);
      v61 = WTF::fastMalloc(v60, 0x10);
      *v61 = &unk_1F1115308;
      v61[1] = v14;
      v91 = v61;
      WebKit::ProcessAssertion::create(v6, &v92, v4, 1, &v91, buf);
      v63 = *(v3 + 3);
      *(v3 + 3) = *buf;
      if (v63)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v63 + 8), v62);
      }

      v64 = v91;
      v91 = 0;
      if (v64)
      {
        (*(*v64 + 8))(v64);
      }

      v65 = v92;
      if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v65, v62);
      }
    }

    v14 = 0;
  }

  v57 = *(v3 + 3);
  if (v57)
  {
LABEL_105:
    while (1)
    {
      v77 = v57[1];
      if ((v77 & 1) == 0)
      {
        break;
      }

      v78 = v57[1];
      atomic_compare_exchange_strong_explicit(v57 + 1, &v78, v77 + 2, memory_order_relaxed, memory_order_relaxed);
      if (v78 == v77)
      {
        goto LABEL_109;
      }
    }

    WTF::ThreadSafeWeakPtrControlBlock::strongRef(v57[1]);
  }

LABEL_109:
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v3, v3);
  v79 = *v3;
  v81 = WTF::fastMalloc(atomic_fetch_add(*v3, 1u), 0x10);
  *v81 = &unk_1F1115330;
  v81[1] = v79;
  v82 = v57[8];
  v57[8] = v81;
  if (v82)
  {
    (*(*v82 + 8))(v82);
  }

  WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref(v57 + 1, v80);
  v83 = *(v3 + 3);
  if (v83 && !*(v83 + 16))
  {
    if (*(v3 + 235))
    {
      if (*(v3 + 233) == 1)
      {
        WTF::RunLoop::TimerBase::start();
      }
    }

    else
    {
      WebKit::ProcessThrottler::clearAssertion(v3);
    }
  }

  else
  {
    WTF::RunLoop::TimerBase::stop((v3 + 22));
  }

  v84 = *(*(v3 + 2) + 8);
  if (!v84)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5A30ECLL);
  }

  v85 = v84 + 4;
  atomic_fetch_add(v84 + 4, 1u);
  (*(*v84 + 136))(v84, a2);
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v85, v86);
  if (v14)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v14 + 8), v87);
  }

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v87);
}

atomic_uint *WebKit::ProcessThrottler::assertionName(void *a1, uint64_t a2, int a3)
{
  v4 = "Foreground";
  v5 = 11;
  v6 = "Unknown";
  if (a3 == 1)
  {
    v6 = "Background";
    v7 = 11;
  }

  else
  {
    v7 = 8;
  }

  if (a3 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  if (a3)
  {
    v8 = v4;
  }

  else
  {
    v8 = "NearSuspended";
  }

  if (a3)
  {
    v9 = v5;
  }

  else
  {
    v9 = 14;
  }

  v10 = *(*(a2 + 16) + 8);
  if (!v10)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5A3368);
  }

  v11 = v10 + 4;
  atomic_fetch_add(v10 + 4, 1u);
  v12 = (*(*v10 + 144))(v10);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 >> 31)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5A3388);
  }

  v15 = v9 - 1;
  if (v15 >> 31)
  {
    __break(0xC471u);
    goto LABEL_40;
  }

  if (__OFADD__(v15, 10) || (v16 = v15 + 11, __OFADD__(v15 + 10, 1)) || (v17 = (v14 + v16), __OFADD__(v14, v16)) || (v17 & 0x80000000) != 0 || (v18 = v12, WTF::tryFastCompactMalloc(&v26, (v17 + 20)), (v20 = v26) == 0))
  {
    *a1 = 0;
    __break(0xC471u);
    goto LABEL_41;
  }

  v21 = v26 + 5;
  *v26 = 2;
  v20[1] = v17;
  *(v20 + 1) = v20 + 5;
  v20[4] = 4;
  if (v14)
  {
    if (v14 == 1)
    {
      *v21 = *v18;
    }

    else
    {
      memcpy(v20 + 5, v18, v14);
    }
  }

  if (v14 >= v17)
  {
    goto LABEL_40;
  }

  v21[v14] = 32;
  v22 = &v21[v14 + 1];
  v23 = v17 + ~v14;
  if (v15)
  {
    if (v15 == 1)
    {
      *v22 = *v8;
    }

    else
    {
      memcpy(v22, v8, v15);
    }
  }

  if (v23 < v15)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    JUMPOUT(0x19D5A3348);
  }

  v24 = &v22[v15];
  *v24 = *" Assertion";
  *(v24 + 4) = 28271;
  *a1 = v20;

  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v11, v19);
}

uint64_t __copy_helper_block_e8_32c52_ZTSKZN3IPC10Connection20initializeSendSourceEvE3__1(uint64_t result, uint64_t a2)
{
  v2 = result;
  *(result + 32) = *(a2 + 32);
  v3 = *(a2 + 40);
  while (1)
  {
    v4 = *v3;
    if ((*v3 & 1) == 0)
    {
      break;
    }

    v5 = *v3;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4 + 2, memory_order_relaxed, memory_order_relaxed);
    if (v5 == v4)
    {
      goto LABEL_6;
    }
  }

  result = WTF::ThreadSafeWeakPtrControlBlock::strongRef(*v3);
LABEL_6:
  *(v2 + 40) = v3;
  return result;
}

uint64_t IPC::Encoder::addAttachment(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 564) == *(a1 + 560))
  {
    v3 = a1 + 552;

    return WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::MachSendRight>(v3, a2);
  }

  else
  {
    result = WTF::MachSendRight::MachSendRight();
    ++*(a1 + 564);
  }

  return result;
}

uint64_t WebKit::ProcessAndUIAssertion::operator new(WebKit::ProcessAndUIAssertion *this, void *a2)
{
  if (this == 192 && WebKit::ProcessAndUIAssertion::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::ProcessAndUIAssertion::s_heapRef, a2);
  }

  else
  {
    return WebKit::ProcessAndUIAssertion::operatorNewSlow(this);
  }
}

uint64_t WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,WTF::MachSendRight>(uint64_t a1, unint64_t a2)
{
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(a1, *(a1 + 12) + 1, a2);
  WTF::MachSendRight::MachSendRight();
  ++*(a1 + 12);
  return 1;
}

uint64_t WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t result, unint64_t a2)
{
  if (*(result + 8) >= a2)
  {
    return 1;
  }

  v2 = a2;
  if (!(a2 >> 30))
  {
    v3 = result;
    v4 = *result;
    v5 = *(result + 12);
    v6 = (*result + 4 * v5);
    v7 = WTF::fastMalloc(v5, (4 * a2));
    *(v3 + 8) = v2;
    *v3 = v7;
    WTF::VectorMover<false,WTF::MachSendRight>::move(v4, v6, v7);
    if (v4)
    {
      if (*v3 == v4)
      {
        *v3 = 0;
        *(v3 + 8) = 0;
      }

      WTF::fastFree(v4, v8);
    }

    return 1;
  }

  __break(0xC471u);
  return result;
}

unint64_t WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = *a1;
  if (*a1 <= a3 && v4 + 4 * *(a1 + 3) > a3)
  {
    v9 = a3 - v4;
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

    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
    return *a1 + v9;
  }

  else
  {
    v5 = *(a1 + 2);
    if (v5 + (v5 >> 1) <= v5 + 1)
    {
      v6 = v5 + 1;
    }

    else
    {
      v6 = v5 + (v5 >> 1);
    }

    if (v6 <= a2)
    {
      v6 = a2;
    }

    if (v6 <= 0x10)
    {
      v7 = 16;
    }

    else
    {
      v7 = v6;
    }

    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v7);
  }

  return v3;
}

WTF::StringImpl *WebKit::WebProcessProxy::environmentIdentifier@<X0>(WTF::StringImpl *this@<X0>, atomic_uint **a2@<X8>)
{
  v2 = this;
  v32 = *MEMORY[0x1E69E9840];
  v4 = *(this + 136);
  if (v4 && v4[1])
  {
LABEL_44:
    atomic_fetch_add_explicit(v4, 2u, memory_order_relaxed);
    goto LABEL_45;
  }

  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 1;
  WTF::StringBuilder::append();
  v5 = *(v2 + 10);
  if (!v5)
  {
    v6 = 0;
    v7 = v29;
LABEL_9:
    v9 = 0;
    v12 = v6;
    do
    {
      ++v9;
      v13 = v12 > 9;
      v12 /= 0xAu;
    }

    while (v13);
    v11 = 0;
    goto LABEL_12;
  }

  v6 = *(v5 + 108);
  v7 = v29;
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  v8 = -v6;
  v9 = 1;
  do
  {
    ++v9;
    v10 = v8 >= 0xA;
    v8 /= 0xAu;
  }

  while (v10);
  v11 = 1;
LABEL_12:
  v10 = __CFADD__(v7, v9);
  v14 = v7 + v9;
  if (v10)
  {
    v15 = 0xFFFFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  v16 = MEMORY[0x19EB01170](&v27, v15);
  if (v16)
  {
    if (v11)
    {
      v18 = -v6;
      v19 = 12;
      do
      {
        if (v19 == -1)
        {
          goto LABEL_46;
        }

        v31[v19--] = (v18 % 0xA) | 0x30;
        v13 = v18 > 9;
        v18 /= 0xAu;
      }

      while (v13);
      if (v19 < 0xD)
      {
        v20 = v19 - 12;
        v21 = v19 - 11;
        v31[v19] = 45;
        while (v17)
        {
          *v16++ = v31[v20 + 12];
          ++v21;
          ++v20;
          v17 = (v17 - 1);
          if (v21 == 2)
          {
            goto LABEL_31;
          }
        }
      }
    }

    else
    {
      v22 = 0;
      do
      {
        if (v22 == -13)
        {
          goto LABEL_46;
        }

        v31[v22-- + 12] = (v6 % 0xA) | 0x30;
        v13 = v6 > 9;
        v6 /= 0xAu;
      }

      while (v13);
      v23 = 0;
      while (v17 != v23)
      {
        *(v23 + v16) = v31[v23 + v22 + 13];
        v23 = (v23 + 1);
        if (-v22 == v23)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_46:
    __break(1u);
  }

LABEL_31:
  v24 = v27;
  if (v27 || (WTF::StringBuilder::shrinkToFit(&v27), WTF::StringBuilder::reifyString(&v27), (v24 = v27) != 0))
  {
    atomic_fetch_add_explicit(v24, 2u, memory_order_relaxed);
  }

  v25 = *(v2 + 136);
  *(v2 + 136) = v24;
  if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v25, v17);
  }

  v26 = v28;
  v28 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v17);
  }

  this = v27;
  v27 = 0;
  if (this && atomic_fetch_add_explicit(this, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    this = WTF::StringImpl::destroy(this, v17);
  }

  v4 = *(v2 + 136);
  if (v4)
  {
    goto LABEL_44;
  }

LABEL_45:
  *a2 = v4;
  return this;
}

WTF::MachSendRight *WTF::VectorMover<false,WTF::MachSendRight>::move(WTF::MachSendRight *result, WTF::MachSendRight *a2, uint64_t a3)
{
  if (result != a2)
  {
    do
    {
      v3 = a3;
      v5 = result;
      WTF::MachSendRight::MachSendRight();
      WTF::MachSendRight::~MachSendRight(v5);
      a3 = v3 + 4;
      result = (v5 + 4);
    }

    while ((v5 + 4) != a2);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<IPC::Connection::platformOpen(void)::$_2,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1146E30;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(v3, a2);
  }

  return WTF::fastFree(this, a2);
}

_BYTE *std::__optional_copy_base<WebKit::ExtensionProcess,false>::__optional_copy_base[abi:sn200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[16] = 0;
  if (*(a2 + 16) == 1)
  {
    mpark::detail::copy_constructor<mpark::detail::traits<WTF::RetainPtr<BEWebContentProcess>,WTF::RetainPtr<BENetworkingProcess>,WTF::RetainPtr<BERenderingProcess>>,(mpark::detail::Trait)1>::copy_constructor(a1, a2);
    a1[16] = 1;
  }

  return a1;
}

void WebKit::SandboxInitializationParameters::~SandboxInitializationParameters(WebKit::SandboxInitializationParameters *this, WTF::StringImpl *a2)
{
  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3 && atomic_fetch_add_explicit(v3, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v3, a2);
  }

  v4 = *(this + 4);
  *(this + 4) = 0;
  if (v4 && atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v4, a2);
  }

  WTF::Vector<WTF::CString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 16, a2);
  v6 = *this;
  if (*this)
  {
    *this = 0;
    *(this + 2) = 0;
    WTF::fastFree(v6, v5);
  }
}

uint64_t WebKit::ProcessAssertion::ProcessAssertion(uint64_t a1, int a2, atomic_uint **a3, char a4, atomic_uint **a5, uint64_t a6)
{
  v73[1] = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 3;
  v9 = (a1 + 8);
  *a1 = &unk_1F1100818;
  *(a1 + 16) = a4;
  *(a1 + 20) = a2;
  v10 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  v11 = (a1 + 32);
  *(a1 + 56) = 0;
  *(a1 + 24) = v10;
  *(a1 + 72) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 152) = 0;
  *(a1 + 168) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 144) = 0;
  if (*(a6 + 16) != 1)
  {
    goto LABEL_4;
  }

  v32 = *(a1 + 16);
  v61 = WebKit::runningBoardNameForAssertionType(v32);
  v34 = v33;
  v35 = (v32 - 5);
  if (((v32 - 5) & 0xFE) != 0)
  {
    v36 = "com.apple.webkit";
  }

  else
  {
    v36 = "com.apple.common";
  }

  v37 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v9, v35);
  v62 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v37);
  v39 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(v9, v38);
  v40 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v39);
  v41 = *a5;
  if (*a5)
  {
    atomic_fetch_add_explicit(v41, 2u, memory_order_relaxed);
  }

  v65 = v41;
  WTF::String::String(&v64, v36, 17);
  WTF::String::String(&v63, v61, v34);
  v43 = WTF::fastMalloc(v42, 0x28);
  *v43 = &unk_1F1100C98;
  v43[1] = a1;
  v43[2] = v40;
  v43[3] = v61;
  v43[4] = v34;
  v66[0] = v43;
  v45 = WTF::fastMalloc(v44, 0x28);
  *v45 = &unk_1F1100CE8;
  v45[1] = a1;
  v45[2] = v62;
  v45[3] = v61;
  v45[4] = v34;
  *&v68 = v45;
  WebKit::AssertionCapability::AssertionCapability(buf, &v65, &v64, &v63, v66, &v68);
  std::optional<WebKit::AssertionCapability>::operator=[abi:sn200100]<WebKit::AssertionCapability,void>(a1 + 72, buf);
  WebKit::AssertionCapability::~AssertionCapability(buf);
  v47 = v68;
  *&v68 = 0;
  if (v47)
  {
    (*(*v47 + 8))(v47);
  }

  v48 = v66[0];
  v66[0] = 0;
  if (v48)
  {
    (*(*v48 + 8))(v48);
  }

  v49 = v63;
  v63 = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v46);
  }

  v50 = v64;
  v64 = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, v46);
  }

  v51 = v65;
  v65 = 0;
  if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v51, v46);
  }

  std::__optional_storage_base<WebKit::ExtensionProcess,false>::__assign_from[abi:sn200100]<std::__optional_move_assign_base<WebKit::ExtensionProcess,false>>(a1 + 152, a6);
  if (*(a1 + 128) != 1 || !*(a1 + 80))
  {
    v52 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = a1;
      *&buf[12] = 2080;
      *&buf[14] = v61;
      _os_log_impl(&dword_19D52D000, v52, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion() Failed to create capability %s", buf, 0x16u);
    }

LABEL_4:
    v12 = WebKit::runningBoardNameForAssertionType(*(a1 + 16));
    *&v68 = v12;
    *(&v68 + 1) = v13;
    v14 = *(a1 + 20);
    if (v14 <= 0)
    {
      v53 = v12;
      v54 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR))
      {
        WTF::String::utf8();
        v57 = v66[0] ? v66[0] + 16 : 0;
        v58 = *(a1 + 20);
        *buf = 134218754;
        *&buf[4] = a1;
        *&buf[12] = 2082;
        *&buf[14] = v53;
        *&buf[22] = 2082;
        v70 = v57;
        LOWORD(v71) = 1024;
        *(&v71 + 2) = v58;
        _os_log_error_impl(&dword_19D52D000, v54, OS_LOG_TYPE_ERROR, "%p - ProcessAssertion: Failed to acquire RBS %{public}s assertion '%{public}s' for process because PID %d is invalid", buf, 0x26u);
        v60 = v66[0];
        v66[0] = 0;
        if (v60)
        {
          if (*v60 == 1)
          {
            WTF::fastFree(v60, v59);
          }

          else
          {
            --*v60;
          }
        }
      }

      *(a1 + 48) = 1;
    }

    else
    {
      if (*a5 && (*a5)[1])
      {
        v55 = MEMORY[0x1E69C7640];
        WTF::String::createNSString(buf, a5);
        v15 = [v55 targetWithPid:v14 environmentIdentifier:*buf];
        v56 = *buf;
        *buf = 0;
        if (v56)
        {
        }
      }

      else
      {
        v15 = [MEMORY[0x1E69C7640] targetWithPid:*(a1 + 20)];
      }

      v16 = MEMORY[0x1E69C7560];
      if (*(a1 + 16) - 5 >= 2)
      {
        v17 = "com.apple.webkit";
      }

      else
      {
        v17 = "com.apple.common";
      }

      *buf = v17;
      *&buf[8] = 17;
      WTF::ASCIILiteral::createNSString(v66, buf);
      v18 = v66[0];
      WTF::ASCIILiteral::createNSString(v73, &v68);
      v19 = [v16 attributeWithDomain:v18 name:v73[0]];
      v20 = v73[0];
      v73[0] = 0;
      if (v20)
      {
      }

      v21 = v66[0];
      v66[0] = 0;
      if (v21)
      {
      }

      v22 = objc_alloc(MEMORY[0x1E69C7548]);
      v23 = *(a1 + 24);
      if (v23)
      {
        atomic_fetch_add_explicit(v23, 2u, memory_order_relaxed);
        MEMORY[0x19EB00B70](buf, v23);
        if (atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v23, v24);
        }
      }

      else
      {
        *buf = &stru_1F1147748;
        v25 = &stru_1F1147748;
      }

      v73[0] = v19;
      v26 = [v22 initWithExplanation:*buf target:v15 attributes:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v73, 1)}];
      v27 = *v11;
      *v11 = v26;
      if (v27)
      {
      }

      v28 = *buf;
      *buf = 0;
      if (v28)
      {
      }

      v29 = objc_alloc_init(WKRBSAssertionDelegate);
      v30 = *(a1 + 40);
      *(a1 + 40) = v29;
      if (v30)
      {

        v29 = *(a1 + 40);
      }

      [*v11 addObserver:v29];
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZN6WebKit16ProcessAssertion4initERKN3WTF6StringE_block_invoke;
      v70 = &__block_descriptor_56_e5_v8__0l;
      v71 = a1;
      v72 = v68;
      [*(a1 + 40) setInvalidationCallback:buf];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = ___ZN6WebKit16ProcessAssertion4initERKN3WTF6StringE_block_invoke_328;
      v66[3] = &__block_descriptor_56_e5_v8__0l;
      v66[4] = a1;
      v67 = v68;
      [*(a1 + 40) setPrepareForInvalidationCallback:v66];
    }
  }

  return a1;
}

void sub_19D5A429C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF::ThreadSafeWeakPtrControlBlock *a11, uint64_t *a12, WTF::StringImpl *a13, WTF::StringImpl *a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a25)
  {
  }

  std::__optional_destruct_base<WebKit::ExtensionProcess,false>::~__optional_destruct_base[abi:sn200100](v28);
  WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(v27);
  if (*(v25 + 128) == 1)
  {
    WebKit::AssertionCapability::~AssertionCapability(v29);
  }

  v32 = *(v25 + 64);
  *(v25 + 64) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *a12;
  *a12 = 0;
  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  v34 = *(v25 + 40);
  *(v25 + 40) = 0;
  if (v34)
  {
  }

  v35 = *v26;
  *v26 = 0;
  if (v35)
  {
  }

  v36 = *(v25 + 24);
  *(v25 + 24) = 0;
  if (v36)
  {
    if (atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v36, v31);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t WebKit::ProcessAndUIAssertion::ProcessAndUIAssertion(uint64_t a1, int a2, atomic_uint **a3, char a4, atomic_uint **a5, uint64_t a6)
{
  v7 = WebKit::ProcessAssertion::ProcessAssertion(a1, a2, a3, a4, a5, a6);
  *v7 = &unk_1F1100840;
  *(v7 + 176) = 0;
  *(v7 + 184) = 0;
  WebKit::ProcessAndUIAssertion::updateRunInBackgroundCount(v7);
  return a1;
}

void sub_19D5A457C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 22);
  *(v1 + 22) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  WebKit::ProcessAssertion::~ProcessAssertion(v1);
  _Unwind_Resume(a1);
}

const char *WebKit::runningBoardNameForAssertionType(int a1)
{
  if (a1 == 5)
  {
    return "FinishTaskCanSleep";
  }

  v2 = "Suspended";
  v3 = "MediaPlayback";
  v4 = "FinishTaskInterruptable";
  v5 = "BoostedJetsam";
  if (a1 != 7)
  {
    v5 = "Suspended";
  }

  if (a1 != 6)
  {
    v4 = v5;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 == 3)
  {
    v2 = "Foreground";
  }

  if (a1 == 2)
  {
    v2 = "UnboundedNetworking";
  }

  if (a1 == 1)
  {
    v2 = "Background";
  }

  if (a1 <= 3)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t WTF::Vector<WTF::CString,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(uint64_t a1, void *a2)
{
  v3 = *(a1 + 12);
  if (v3)
  {
    WTF::VectorDestructor<true,WTF::CString>::destruct(*a1, (*a1 + 8 * v3));
  }

  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    WTF::fastFree(v4, a2);
  }

  return a1;
}

void WebKit::AuxiliaryProcessInitializationParameters::~AuxiliaryProcessInitializationParameters(WebKit::AuxiliaryProcessInitializationParameters *this, WTF::StringImpl *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::String>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::String>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v3, a2);
  }

  v4 = *(this + 6);
  if (v4)
  {
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6 && atomic_fetch_add_explicit(v6, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v6, a2);
  }

  v7 = *this;
  *this = 0;
  if (v7)
  {
    if (atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, a2);
    }
  }
}

void WebKit::XPCServiceInitializerDelegate::~XPCServiceInitializerDelegate(WebKit::XPCServiceInitializerDelegate *this)
{
  *this = &unk_1F10F20B8;
  v1 = *(this + 1);
  if (v1)
  {
  }
}

{
  *this = &unk_1F10F20B8;
  v1 = *(this + 1);
  if (v1)
  {
  }

  JUMPOUT(0x19EB14CF0);
}

atomic_uchar *IPC::Connection::sendOutgoingMessages(atomic_uchar *this, void *a2)
{
  if (this[72] == 1)
  {
    v2 = this;
    if (!*(this + 42) && (*(this + 76) - 1) <= 0xFFFFFFFD)
    {
      v3 = this + 176;
      v4 = (this + 216);
      do
      {
        v5 = 0;
        atomic_compare_exchange_strong_explicit(v3, &v5, 1u, memory_order_acquire, memory_order_acquire);
        if (v5)
        {
          goto LABEL_28;
        }

        while (1)
        {
          v6 = *(v2 + 23);
          v7 = *(v2 + 24);
          if (v6 == v7)
          {
            break;
          }

          if (v6 < *(v2 + 52))
          {
            v8 = (*(v2 + 25) + 8 * v6);
            v9 = *v8;
            *v8 = 0;
            this = std::unique_ptr<IPC::Encoder>::reset[abi:sn200100](v8, 0);
            v10 = 0;
            v11 = *(v2 + 23);
            if (v11 == *(v2 + 52) - 1)
            {
              v12 = 0;
            }

            else
            {
              v12 = v11 + 1;
            }

            *(v2 + 23) = v12;
            goto LABEL_12;
          }

          __break(1u);
LABEL_28:
          this = MEMORY[0x19EB01E30](v2 + 176);
        }

        v15 = atomic_load(v4);
        if (v15)
        {
          atomic_store(0, v4);
          this = WTF::ParkingLot::unparkAll((v2 + 216), a2);
        }

        v9 = 0;
        v10 = 3;
LABEL_12:
        v13 = 1;
        atomic_compare_exchange_strong_explicit(v3, &v13, 0, memory_order_release, memory_order_relaxed);
        if (v13 != 1)
        {
          this = WTF::Lock::unlockSlow((v2 + 176));
        }

        if (v6 == v7)
        {
          if (v9)
          {
            IPC::Encoder::~Encoder(v9, a2);
            this = bmalloc::api::tzoneFree(v16, v17);
          }
        }

        else
        {
          v20 = v9;
          v14 = IPC::Connection::sendOutgoingMessage(v2, &v20);
          this = v20;
          v20 = 0;
          if (this)
          {
            IPC::Encoder::~Encoder(this, a2);
            this = bmalloc::api::tzoneFree(v18, v19);
          }

          if ((v14 & 1) == 0)
          {
            return this;
          }

          v10 = 0;
        }
      }

      while (!v10);
    }
  }

  return this;
}

WTF *___ZN3IPC10Connection12platformOpenEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v68 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 32);
  msg = v60;
  v5 = *(v4 + 320);
  *rcv_size = vdup_n_s32(0x1044u);
  v6 = mach_msg(v60, 2310, 0, 0x1044u, v5, 0, 0);
  if (v6 == 268451843)
  {
    goto LABEL_32;
  }

  if (v6 == 268451844)
  {
    v6 = WTF::Vector<unsigned char,4164ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::resize(&msg, v60[0].msgh_size + 68);
    if (rcv_size[1] <= 0x17)
    {
      goto LABEL_83;
    }

    v31 = msg;
    v6 = mach_msg(msg, 2310, 0, rcv_size[1], v5, 0, 0);
    v8 = v31;
  }

  else
  {
    v8 = v60;
  }

  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    goto LABEL_32;
  }

  msgh_id = v8->msgh_id;
  if (msgh_id != 230297018 && msgh_id != 230301114)
  {
    if (msgh_id == 70)
    {
      IPC::Connection::connectionDidClose(v4, v7);
    }

    goto LABEL_32;
  }

  v12 = rcv_size[1];
  msgh_size = v8->msgh_size;
  if (rcv_size[1] < msgh_size)
  {
    v32 = qword_1ED6416C8;
    if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 134218240;
    *&buf[4] = msgh_size;
    *&buf[12] = 2048;
    *&buf[14] = v12;
    v28 = "createMessageDecoder: msgh_size is greater than bufferSize (header->msgh_size: %lu, bufferSize: %lu)";
LABEL_54:
    v29 = v32;
    v30 = 22;
LABEL_39:
    _os_log_fault_impl(&dword_19D52D000, v29, OS_LOG_TYPE_FAULT, v28, buf, v30);
    goto LABEL_32;
  }

  if (rcv_size[1] <= 0x17)
  {
    goto LABEL_83;
  }

  v14 = rcv_size[1] - 24;
  if ((v8->msgh_bits & 0x80000000) == 0)
  {
    v15 = (msgh_size - 24);
    if (msgh_size >= 0x18)
    {
      if (v14 >= v15)
      {
        *buf = 0;
        *&buf[8] = 0;
        IPC::Decoder::create(&v57, v15, &msg[1], buf);
        WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v16);
        goto LABEL_19;
      }

      goto LABEL_83;
    }

    v32 = qword_1ED6416C8;
    if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 134218240;
    *&buf[4] = msgh_size;
    *&buf[12] = 2048;
    *&buf[14] = 24;
    v28 = "createMessageDecoder: Overflow when computing bodySize (header->msgh_size: %lu, sizeof(mach_msg_header_t): %lu)";
    goto LABEL_54;
  }

  if (v14 <= 3)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  msgh_bits = msg[1].msgh_bits;
  if (!msgh_bits)
  {
    goto LABEL_32;
  }

  if (12 * msgh_bits + 28 > rcv_size[1])
  {
    v23 = qword_1ED6416C8;
    if (!os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_32;
    }

    *buf = 134217984;
    *&buf[4] = msgh_bits;
    v28 = "createMessageDecoder: Overflow when computing sizeWithPortDescriptors (numberOfPortDescriptors: %lu)";
    v29 = v23;
    v30 = 12;
    goto LABEL_39;
  }

  v55 = v8;
  v56 = 12 * msgh_bits + 28;
  v37 = rcv_size[1] - 28;
  p_msgh_size = &msg[1].msgh_size;
  v39 = msgh_id == 230301114;
  if (msgh_id == 230301114)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v62 = 0;
  v63 = 0;
  v41 = (msgh_bits - v39);
  v64 = msgh_bits - v39;
  if (msgh_bits != v39)
  {
    v42 = (v41 >> 30);
    if (v42)
    {
LABEL_88:
      __break(0xC471u);
      JUMPOUT(0x19D5A5020);
    }

    v6 = WTF::fastMalloc(v42, (4 * v41));
    v63 = v41;
    v62 = v6;
    if (v64)
    {
      bzero(v6, 4 * v64);
    }

    v43 = v37 - 12 * v41;
    v44 = -v41;
    v45 = msgh_bits + v40 - 1;
    while (v37 > 0xB)
    {
      if (*(p_msgh_size + 11))
      {
        goto LABEL_87;
      }

      WTF::MachSendRight::adopt(buf, *p_msgh_size);
      WTF::MachSendRight::MachSendRight();
      if (v64 <= v45)
      {
        goto LABEL_88;
      }

      WTF::MachSendRight::operator=();
      p_msgh_size = (p_msgh_size + 12);
      WTF::MachSendRight::~MachSendRight(v61);
      WTF::MachSendRight::~MachSendRight(buf);
      --v45;
      v37 -= 12;
      if (__CFADD__(v44++, 1))
      {
        v37 = v43;
        goto LABEL_75;
      }
    }

    goto LABEL_83;
  }

LABEL_75:
  if (msgh_id != 230301114)
  {
    v47 = v55->msgh_size;
    v48 = (v47 - v56);
    if (v47 >= v56)
    {
      if (v37 >= v48)
      {
        IPC::Decoder::create(&v57, v48, p_msgh_size, &v62);
        goto LABEL_82;
      }

      goto LABEL_83;
    }

    v54 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      *&buf[4] = v47;
      *&buf[12] = 2048;
      *&buf[14] = 12 * msgh_bits + 28;
      _os_log_fault_impl(&dword_19D52D000, v54, OS_LOG_TYPE_FAULT, "createMessageDecoder: Overflow when computing bodySize (header->msgh_size: %lu, sizeWithPortDescriptors: %lu)", buf, 0x16u);
    }

LABEL_87:
    v57 = 0;
    goto LABEL_82;
  }

  if (v37 <= 0xF)
  {
    goto LABEL_83;
  }

  v49 = *(p_msgh_size + 2);
  if (HIBYTE(v49) != 1)
  {
    goto LABEL_87;
  }

  v50 = *p_msgh_size;
  v51 = *(p_msgh_size + 3);
  v52 = (v49 & 0x1FFFF00);
  *(p_msgh_size + 2) = v52;
  v53 = WTF::fastMalloc(v52, 0x10);
  *v53 = &unk_1F1146D18;
  *buf = v53;
  IPC::Decoder::create(v50, v51, buf, &v62, &v57);
  v6 = *buf;
  *buf = 0;
  if (v6)
  {
LABEL_84:
    (*(*v6 + 8))(v6);
  }

LABEL_82:
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v62, v7);
LABEL_19:
  if (v57)
  {
    if (*(v57 + 25) == 3195)
    {
      if (*(v4 + 72) == 1)
      {
        IPC::Connection::connectionDidClose(v4, v7);
      }

      else
      {
        IPC::Decoder::takeLastAttachment(buf, v57);
        if (buf[4])
        {
          *(v4 + 72) = 1;
          if ((*buf + 1) >= 2)
          {
            *(v4 + 304) = WTF::MachSendRight::leakSendRight(buf);
            IPC::Connection::initializeSendSource(v4);
          }
        }

        else
        {
          IPC::Connection::connectionDidClose(v4, v7);
        }

        if (buf[4] == 1)
        {
          WTF::MachSendRight::~MachSendRight(buf);
        }
      }
    }

    else
    {
      if (qword_1ED643280 != -1)
      {
        dispatch_once(&qword_1ED643280, &__block_literal_global_39);
      }

      if (byte_1ED643233 == 1)
      {
        v33 = qword_1ED641628;
        if (os_log_type_enabled(qword_1ED641628, OS_LOG_TYPE_DEFAULT))
        {
          v34 = *(v57 + 25);
          if (v34 >= 0x107F)
          {
            v34 = 4223;
          }

          v35 = (&IPC::Detail::messageDescriptions)[3 * v34];
          v36 = *(v4 + 320);
          *buf = 134218498;
          *&buf[4] = v4;
          *&buf[12] = 2082;
          *&buf[14] = v35;
          v66 = 1024;
          v67 = v36;
          _os_log_impl(&dword_19D52D000, v33, OS_LOG_TYPE_DEFAULT, "Connection::processIncomingMessage(%p) received %{public}s from port 0x%08x", buf, 0x1Cu);
        }
      }

      v17 = v57;
      v57 = 0;
      *buf = v17;
      IPC::Connection::processIncomingMessage(v4, buf);
      v18 = *buf;
      *buf = 0;
      if (v18)
      {
        IPC::Decoder::~Decoder(v18);
        bmalloc::api::tzoneFree(v26, v27);
      }
    }

    v19 = v57;
    v57 = 0;
    if (v19)
    {
      IPC::Decoder::~Decoder(v19);
      bmalloc::api::tzoneFree(v20, v21);
    }
  }

LABEL_32:
  result = msg;
  if (v60 != msg && msg != 0)
  {
    msg = 0;
    rcv_size[0] = 0;
    return WTF::fastFree(result, v7);
  }

  return result;
}

void sub_19D5A502C(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, IPC::Decoder *a12, WTF *a13, int a14)
{
  v17 = *(v15 - 144);
  *(v15 - 144) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17, a2, a3, a4, a5, a6, a7, a8);
  }

  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v15 - 160, a2);
  if (v14 != a13 && a13 != 0)
  {
    WTF::fastFree(a13, v18);
  }

  _Unwind_Resume(a1);
}

atomic_uchar *IPC::Connection::resumeSendSource(IPC::Connection *this, void *a2)
{
  v3 = *(this + 42);
  if (v3)
  {
    *(this + 42) = 0;
    v6 = v3;
    IPC::Connection::sendMessage(this, &v6);
    std::unique_ptr<IPC::MachMessage>::operator=[abi:sn200100](&v6, v5);
  }

  return IPC::Connection::sendOutgoingMessages(this, a2);
}

void sub_19D5A5180(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<IPC::MachMessage>::operator=[abi:sn200100](va, a2);
  _Unwind_Resume(a1);
}

_BYTE *WebKit::ProcessAndUIAssertion::updateRunInBackgroundCount(_BYTE *this)
{
  if ((this[48] & 1) == 0)
  {
    v1 = this + 184;
    if (this[184] == (this[16] != 0))
    {
      return this;
    }

    if (this[16])
    {
      this = [+[WKProcessAssertionBackgroundTaskManager shared](WKProcessAssertionBackgroundTaskManager "shared")];
      v2 = 1;
LABEL_8:
      *v1 = v2;
      return this;
    }

LABEL_7:
    [+[WKProcessAssertionBackgroundTaskManager shared](WKProcessAssertionBackgroundTaskManager "shared")];
    this = [+[WKProcessAssertionBackgroundTaskManager shared](WKProcessAssertionBackgroundTaskManager "shared")];
    v2 = 0;
    goto LABEL_8;
  }

  v1 = this + 184;
  if (this[184])
  {
    goto LABEL_7;
  }

  return this;
}

uint64_t _ZN3WTF6Detail15CallableWrapperIZZN6WebKit22XPCServiceEventHandlerEPU24objcproto13OS_xpc_object8NSObjectEUb_E3__1vJEED0Ev(WTF *this, void *a2)
{
  *this = &unk_1F10F27E0;
  v3 = *(this + 3);
  if (v3)
  {
  }

  v4 = *(this + 2);
  if (v4)
  {
  }

  return WTF::fastFree(this, a2);
}

IPC::Encoder *___ZN3IPC10Connection20initializeSendSourceEv_block_invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  if (*(result + 39))
  {
    return IPC::Connection::resumeSendSource(result, a2);
  }

  return result;
}

BOOL WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(atomic_uchar *this)
{
  v2 = 0;
  v3 = 1;
  atomic_compare_exchange_strong_explicit(this, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this);
  }

  v4 = *(this + 3);
  atomic_compare_exchange_strong_explicit(this, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    v6 = this;
    v7 = v4;
    WTF::Lock::unlockSlow(v6);
    v4 = v7;
  }

  return v4 == 0;
}

atomic_ullong *__destroy_helper_block_e8_32c52_ZTSKZN3IPC10Connection20initializeSendSourceEvE3__0(uint64_t a1, unint64_t a2)
{
  result = *(a1 + 40);
  *(a1 + 40) = 0;
  if (result)
  {
    return WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<IPC::Connection,(WTF::DestructionThread)2>::deref(result, a2);
  }

  return result;
}

void ___ZN6WebKit14WebProcessPool29registerNotificationObserversEv_block_invoke_2()
{
  if (qword_1ED642630 != -1)
  {
    dispatch_once(&qword_1ED642630, &__block_literal_global_70);
  }
}

void ___ZN6WebKit14WebProcessPool31startObservingPreferenceChangesEv_block_invoke()
{
  global_queue = dispatch_get_global_queue(0, 0);

  dispatch_async(global_queue, &__block_literal_global_72);
}

BOOL WTF::ThreadSafeWeakHashSet<WebKit::ProcessAndUIAssertion>::isEmptyIgnoringNullReferences(atomic_uchar *a1)
{
  v2 = 0;
  v3 = a1 + 16;
  atomic_compare_exchange_strong_explicit(a1 + 16, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](a1 + 16);
  }

  v4 = *(a1 + 3);
  v5 = *(a1 + 2) + 1;
  *(a1 + 2) = v5;
  v6 = *a1;
  if (v5 > v4)
  {
    if (v6)
    {
      v7 = *(v6 - 1);
      if (!v7)
      {
LABEL_17:
        v13 = *(v6 - 1);
        if (6 * *(v6 - 3) < v13 && v13 > 8)
        {
          WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebCore::RealtimeMediaSource const*>>,WTF::FastMalloc>::shrinkToBestSize(a1);
          v6 = *a1;
          *(a1 + 2) = 0;
          if (!v6)
          {
            v15 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          *(a1 + 2) = 0;
        }

        v15 = *(v6 - 3);
        if (v15 > 0x7FFFFFFE)
        {
          v16 = -2;
LABEL_28:
          *(a1 + 3) = v16;
          goto LABEL_29;
        }

LABEL_27:
        v16 = 2 * v15;
        goto LABEL_28;
      }

      v8 = 0;
      v9 = &v6[2 * v7 - 2];
      do
      {
        if (*v9 != -1 && *v9 != 0 && WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v9))
        {
          v11 = *v9;
          *v9 = 0;
          if (v11)
          {
            WTF::ThreadSafeWeakPtrControlBlock::weakDeref(v11, v10);
          }

          *v9 = -1;
          ++v8;
        }

        v9 -= 2;
        --v7;
      }

      while (v7);
      v6 = *a1;
      if (v8)
      {
        v12 = *(v6 - 3) - v8;
        *(v6 - 4) += v8;
        *(v6 - 3) = v12;
        goto LABEL_17;
      }

      if (v6)
      {
        goto LABEL_17;
      }
    }

    v6 = 0;
    v15 = 0;
    *(a1 + 2) = 0;
    goto LABEL_27;
  }

LABEL_29:
  v17 = WTF::HashTable<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>,WTF::IdentityExtractor,WTF::DefaultHash<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::HashTraits<std::pair<WTF::RefPtr<WTF::ThreadSafeWeakPtrControlBlock,WTF::RawPtrTraits<WTF::ThreadSafeWeakPtrControlBlock>,WTF::ThreadSafeWeakPtrControlBlockRefDerefTraits>,WebKit::ProcessAndUIAssertion const*>>,WTF::FastMalloc>::begin(v6);
  v18 = v17;
  v20 = v19;
  if (v6)
  {
    v21 = &v6[2 * *(v6 - 1)];
  }

  else
  {
    v21 = 0;
  }

  v22 = 1;
  if (v21 == v17)
  {
    HasStartedDeletion = 1;
  }

  else
  {
    do
    {
      HasStartedDeletion = WTF::ThreadSafeWeakPtrControlBlock::objectHasStartedDeletion(*v18);
      if (!HasStartedDeletion)
      {
        break;
      }

      do
      {
        v18 += 2;
        if (v18 == v20)
        {
          break;
        }
      }

      while (*v18 == -1 || *v18 == 0);
    }

    while (v18 != v21);
  }

  atomic_compare_exchange_strong_explicit(v3, &v22, 0, memory_order_release, memory_order_relaxed);
  if (v22 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return HasStartedDeletion;
}

void sub_19D5A57B8(_Unwind_Exception *exception_object)
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(v1, &v3, 0, memory_order_release, memory_order_relaxed);
  if (v3 != 1)
  {
    WTF::Lock::unlockSlow(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5A5ADC(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5A5D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, WTF *a11, void *a12)
{
  if (a12)
  {
  }

  if (v12)
  {
  }

  _Unwind_Resume(exception_object);
}

unint64_t WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(unint64_t *a1, unint64_t a2, unint64_t a3)
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

    WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v12);
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

    WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(a1, v9);
    return *a1 + v6;
  }

  return v3;
}

void WTF::Vector<WTF::RetainPtr<WKUserDefaults>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 8) < a2)
  {
    v2 = a2;
    if (a2 >> 29)
    {
      __break(0xC471u);
    }

    else
    {
      v4 = *a1;
      v5 = *(a1 + 12);
      v6 = WTF::fastMalloc(0, (8 * a2));
      *(a1 + 8) = v2;
      *a1 = v6;
      if (v5)
      {
        v8 = v6;
        v9 = 8 * v5;
        v10 = v4;
        do
        {
          v11 = *v10;
          *v10 = 0;
          *v8 = v11;
          v12 = *v10;
          *v10 = 0;
          if (v12)
          {
          }

          ++v8;
          v10 = (v10 + 8);
          v9 -= 8;
        }

        while (v9);
      }

      if (v4)
      {
        if (*a1 == v4)
        {
          *a1 = 0;
          *(a1 + 8) = 0;
        }

        WTF::fastFree(v4, v7);
      }
    }
  }
}

void WTF::Detail::CallableWrapper<API::ContentRuleListStore::lookupContentRuleListFile(WTF::String &&,WTF::String &,WTF::CompletionHandler<void ()(WTF::RefPtr<API::ContentRuleList,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,std::error_code)>)::$_0::operator()(void)::{lambda(void)#4},void>::call(uint64_t a1)
{
  API::createExtension(&v3, (a1 + 16), a1 + 24);
  std::system_category();
  WTF::CompletionHandler<void ()(WTF::RefPtr<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,std::error_code)>::operator()((a1 + 128), &v3);
  if (v3)
  {
    v2 = *(v3 + 8);

    CFRelease(v2);
  }
}

uint64_t API::createExtension(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  WebKit::NetworkCache::Data::tryCreateSharedMemory(&v20, (a3 + 72));
  v5 = v20;
  if (v20)
  {
    v6 = 64;
    if (*a3 < 0xCu)
    {
      v6 = 48;
    }

    v7 = *(a3 + 16);
    v8 = v6 + *(a3 + 8);
    v9 = *(a3 + 24);
    v10 = *(a3 + 32);
    v20 = 0;
    v11 = *(a3 + 40);
    v17 = v11;
    v12 = *a2;
    *a2 = 0;
    v13 = WTF::fastMalloc(v11, 0x60);
    *(v13 + 2) = 1;
    *v13 = &unk_1F110D9F8;
    v13[2] = v12;
    v13[3] = v5;
    v13[4] = v8;
    v13[5] = v7;
    v13[6] = v8 + v7;
    v13[7] = v9;
    v13[8] = v8 + v7 + v9;
    v13[9] = v10;
    v13[10] = v8 + v7 + v9 + v10;
    v13[11] = v17;
    v19 = v13;
    v14 = API::Object::newObject(0x38uLL, 46);
    *a1 = API::ContentRuleList::ContentRuleList(v14, &v19, a3 + 72);
    v15 = v19;
    v19 = 0;
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      atomic_store(1u, v15 + 2);
      (*(*v15 + 8))(v15);
    }

    result = v20;
    v20 = 0;
    if (result)
    {
      return WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(result);
    }
  }

  else
  {
    result = 455;
    __break(0xC471u);
  }

  return result;
}

WebKit::NetworkCache::Data *WebKit::NetworkCache::Data::tryCreateSharedMemory@<X0>(uint64_t *__return_ptr a1@<X8>, WebKit::NetworkCache::Data *this@<X0>)
{
  if (*this && (*(this + 24) & 1) != 0)
  {
    v2 = WebKit::NetworkCache::Data::span(this);

    return MEMORY[0x1EEE54F10](v2);
  }

  else
  {
    *a1 = 0;
  }

  return this;
}

uint64_t WTF::CompletionHandler<void ()(WTF::RefPtr<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,std::error_code)>::operator()(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  *a1 = 0;
  v3 = *a2;
  *a2 = 0;
  v6 = v3;
  (*(*v2 + 16))(v2, &v6);
  v4 = v6;
  v6 = 0;
  if (v4)
  {
    CFRelease(*(v4 + 8));
  }

  return (*(*v2 + 8))(v2);
}

uint64_t WebKit::ProcessAssertion::acquireAsync(uint64_t a1, uint64_t *a2)
{
  if (byte_1ED642571 == 1)
  {
    v4 = qword_1ED642580;
  }

  else
  {
    WTF::WorkQueue::create();
    v4 = v11;
    qword_1ED642580 = v11;
    byte_1ED642571 = 1;
  }

  v5 = (a1 + 8);
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
  v8 = *a2;
  *a2 = 0;
  v9 = WTF::fastMalloc(v6, 0x18);
  *v9 = &unk_1F1100D38;
  v9[1] = a1;
  v9[2] = v8;
  v11 = v9;
  (*(*v4 + 48))(v4, &v11);
  result = v11;
  v11 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_19D5A63B0(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref(atomic_ullong *result, void *a2)
{
  do
  {
    v2 = *result;
    if ((*result & 1) == 0)
    {
      return WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::ProcessAssertion,(WTF::DestructionThread)0>(*result, a2);
    }

    v3 = *result;
    atomic_compare_exchange_strong_explicit(result, &v3, (v2 - 2), memory_order_relaxed, memory_order_relaxed);
  }

  while (v3 != v2);
  if (v2 == 3)
  {
    return (*(*(result - 1) + 8))();
  }

  return result;
}

uint64_t WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebKit::ProcessAssertion,(WTF::DestructionThread)0>(atomic_uchar *this, void *a2)
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
    result = (*(*result + 8))(result);
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

void WebKit::WebProcessProxy::didChangeThrottleState(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v76 = *MEMORY[0x1E69E9840];
  WebKit::AuxiliaryProcessProxy::didChangeThrottleState(a1, a2);
  atomic_fetch_add((a1 + 16), 1u);
  if (*(a1 + 720) != 1)
  {
    goto LABEL_56;
  }

  v4 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 80);
    if (v5)
    {
      LODWORD(v5) = *(v5 + 108);
    }

    *v72 = 134218496;
    *&v72[4] = a1;
    *v73 = 1024;
    *&v73[2] = v5;
    v74 = 1024;
    v75 = v2;
    _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::didChangeThrottleState: type=%u", v72, 0x18u);
  }

  if (*(a1 + 896) != 1 || (v6 = *(a1 + 592)) != 0 && *(v6 - 12))
  {
    if (v2 != 2)
    {
      if (v2 != 1)
      {
        if (v2)
        {
          goto LABEL_119;
        }

        v7 = qword_1ED641030;
        if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 80);
          if (v8)
          {
            LODWORD(v8) = *(v8 + 108);
          }

          *v72 = 134218240;
          *&v72[4] = a1;
          *v73 = 1024;
          *&v73[2] = v8;
          _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::didChangeThrottleState(Suspended) Release all assertions for network process", v72, 0x12u);
        }

        v9 = *(a1 + 704);
        *(a1 + 704) = 0;
        if (v9)
        {
          v10 = *v9;
          v11 = *(v9 + 8) - 1;
          *(v9 + 8) = v11;
          if (v10)
          {
            v12 = *v10;
            if (!*v10)
            {
              goto LABEL_23;
            }

            v13 = *(v9 + 16);
            *(v9 + 16) = 1;
            (*(*v12 + 16))(v12, 0);
            *(v9 + 16) = v13;
            if (*v9)
            {
              goto LABEL_23;
            }

            v11 = *(v9 + 8);
          }

          if (!v11)
          {
            MEMORY[0x19EB14CF0](v9, 0x1020C40545B2139);
          }
        }

LABEL_23:
        v14 = *(a1 + 712);
        *(a1 + 712) = 0;
        if (v14)
        {
          v15 = *v14;
          v16 = *(v14 + 8) - 1;
          *(v14 + 8) = v16;
          if (!v15)
          {
            goto LABEL_28;
          }

          v17 = *v15;
          if (*v15)
          {
            v18 = *(v14 + 16);
            *(v14 + 16) = 1;
            (*(*v17 + 16))(v17, 0);
            *(v14 + 16) = v18;
            if (!*v14)
            {
              v16 = *(v14 + 8);
LABEL_28:
              if (!v16)
              {
                MEMORY[0x19EB14CF0](v14, 0x1020C40545B2139);
              }
            }
          }
        }

        WebKit::WebProcessProxy::pages(a1, v72);
        if (*v73)
        {
          v20 = *v72;
          v21 = 8 * *v73;
          do
          {
            v22 = *v20;
            CFRetain(*(*v20 + 8));
            if ((*(v22 + 865) & 1) == 0 && *(v22 + 864) == 1)
            {
              v23 = *(*(v22 + 32) + 1296);
              *(v22 + 544) = v23;
              if (v23 == 1)
              {
                WebKit::WebPageProxy::setNetworkRequestsInProgress(v22, 0);
              }
            }

            CFRelease(*(v22 + 8));
            ++v20;
            v21 -= 8;
          }

          while (v21);
        }

LABEL_118:
        WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v72, v19);
        goto LABEL_119;
      }

      v37 = qword_1ED641030;
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        v38 = *(a1 + 80);
        if (v38)
        {
          LODWORD(v38) = *(v38 + 108);
        }

        *v72 = 134218240;
        *&v72[4] = a1;
        *v73 = 1024;
        *&v73[2] = v38;
        _os_log_impl(&dword_19D52D000, v37, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::didChangeThrottleState(Background) Taking background assertion for network process", v72, 0x12u);
      }

      v39 = *(*(a1 + 552) + 8);
      if (v39)
      {
        v40 = v39 - 16;
      }

      else
      {
        v40 = 0;
      }

      CFRetain(*(v40 + 8));
      v41 = *(v40 + 800);
      if (v41)
      {
        v42 = *v41;
        ++*(v41 + 8);
        if (v42)
        {
          if (*v42)
          {
            (*(**v42 + 16))(*v42, 1);
          }
        }
      }

      v43 = *(a1 + 712);
      *(a1 + 712) = v41;
      if (v43)
      {
        v44 = *v43;
        v45 = *(v43 + 8) - 1;
        *(v43 + 8) = v45;
        if (v44)
        {
          v46 = *v44;
          if (!*v44)
          {
            goto LABEL_75;
          }

          v47 = *(v43 + 16);
          *(v43 + 16) = 1;
          (*(*v46 + 16))(v46, 0);
          *(v43 + 16) = v47;
          if (*v43)
          {
            goto LABEL_75;
          }

          v45 = *(v43 + 8);
        }

        if (!v45)
        {
          MEMORY[0x19EB14CF0](v43, 0x1020C40545B2139);
        }
      }

LABEL_75:
      if (v39)
      {
        CFRelease(*(v39 - 8));
      }

      v48 = *(a1 + 704);
      *(a1 + 704) = 0;
      if (v48)
      {
        v49 = *v48;
        v50 = *(v48 + 8) - 1;
        *(v48 + 8) = v50;
        if (v49)
        {
          v51 = *v49;
          if (!*v49)
          {
            goto LABEL_119;
          }

          v52 = *(v48 + 16);
          *(v48 + 16) = 1;
          (*(*v51 + 16))(v51, 0);
          *(v48 + 16) = v52;
          if (*v48)
          {
            goto LABEL_119;
          }

          v50 = *(v48 + 8);
        }

        if (!v50)
        {
          MEMORY[0x19EB14CF0](v48, 0x1020C40545B2139);
        }
      }

LABEL_119:
      WebKit::BackgroundProcessResponsivenessTimer::updateState((a1 + 416));
      WebKit::WebProcessProxy::updateRuntimeStatistics(a1);
      if (!a1)
      {
        return;
      }

      goto LABEL_120;
    }

    v53 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v54 = *(a1 + 80);
      if (v54)
      {
        LODWORD(v54) = *(v54 + 108);
      }

      *v72 = 134218240;
      *&v72[4] = a1;
      *v73 = 1024;
      *&v73[2] = v54;
      _os_log_impl(&dword_19D52D000, v53, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::didChangeThrottleState(Foreground) Taking foreground assertion for network process", v72, 0x12u);
    }

    v55 = *(*(a1 + 552) + 8);
    if (v55)
    {
      v56 = v55 - 16;
    }

    else
    {
      v56 = 0;
    }

    CFRetain(*(v56 + 8));
    v57 = *(v56 + 784);
    if (v57)
    {
      v58 = *v57;
      ++*(v57 + 8);
      if (v58)
      {
        if (*v58)
        {
          (*(**v58 + 16))(*v58, 1);
        }
      }
    }

    v59 = *(a1 + 704);
    *(a1 + 704) = v57;
    if (v59)
    {
      v60 = *v59;
      v61 = *(v59 + 8) - 1;
      *(v59 + 8) = v61;
      if (v60)
      {
        v62 = *v60;
        if (!*v60)
        {
          goto LABEL_102;
        }

        v63 = *(v59 + 16);
        *(v59 + 16) = 1;
        (*(*v62 + 16))(v62, 0);
        *(v59 + 16) = v63;
        if (*v59)
        {
          goto LABEL_102;
        }

        v61 = *(v59 + 8);
      }

      if (!v61)
      {
        MEMORY[0x19EB14CF0](v59, 0x1020C40545B2139);
      }
    }

LABEL_102:
    if (v55)
    {
      CFRelease(*(v55 - 8));
    }

    v64 = *(a1 + 712);
    *(a1 + 712) = 0;
    if (!v64)
    {
      goto LABEL_111;
    }

    v65 = *v64;
    v66 = *(v64 + 8) - 1;
    *(v64 + 8) = v66;
    if (v65)
    {
      v67 = *v65;
      if (!*v65 || (v68 = *(v64 + 16), *(v64 + 16) = 1, (*(*v67 + 16))(v67, 0), *(v64 + 16) = v68, *v64))
      {
LABEL_111:
        WebKit::WebProcessProxy::pages(a1, v72);
        if (*v73)
        {
          v69 = *v72;
          v70 = 8 * *v73;
          do
          {
            v71 = *v69;
            CFRetain(*(*v69 + 8));
            if ((*(v71 + 865) & 1) == 0 && *(v71 + 864) == 1 && *(v71 + 544) == 1)
            {
              WebKit::WebPageProxy::setNetworkRequestsInProgress(v71, 1);
              *(v71 + 544) = 0;
            }

            CFRelease(*(v71 + 8));
            ++v69;
            v70 -= 8;
          }

          while (v70);
        }

        goto LABEL_118;
      }

      v66 = *(v64 + 8);
    }

    if (!v66)
    {
      MEMORY[0x19EB14CF0](v64, 0x1020C40545B2139);
    }

    goto LABEL_111;
  }

  v24 = qword_1ED641030;
  if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 80);
    if (v25)
    {
      LODWORD(v25) = *(v25 + 108);
    }

    *v72 = 134218240;
    *&v72[4] = a1;
    *v73 = 1024;
    *&v73[2] = v25;
    _os_log_impl(&dword_19D52D000, v24, OS_LOG_TYPE_DEFAULT, "%p - [PID=%i] WebProcessProxy::didChangeThrottleState: Release all assertions for network process because this is a service worker process without page", v72, 0x12u);
  }

  v26 = *(a1 + 704);
  *(a1 + 704) = 0;
  if (v26)
  {
    v27 = *v26;
    v28 = *(v26 + 8) - 1;
    *(v26 + 8) = v28;
    if (v27)
    {
      v29 = *v27;
      if (!*v27)
      {
        goto LABEL_49;
      }

      v30 = *(v26 + 16);
      *(v26 + 16) = 1;
      (*(*v29 + 16))(v29, 0);
      *(v26 + 16) = v30;
      if (*v26)
      {
        goto LABEL_49;
      }

      v28 = *(v26 + 8);
    }

    if (!v28)
    {
      MEMORY[0x19EB14CF0](v26, 0x1020C40545B2139);
    }
  }

LABEL_49:
  v31 = *(a1 + 712);
  *(a1 + 712) = 0;
  if (v31)
  {
    v32 = *v31;
    v33 = *(v31 + 8) - 1;
    *(v31 + 8) = v33;
    if (!v32)
    {
      goto LABEL_54;
    }

    v34 = *v32;
    if (*v32)
    {
      v35 = *(v31 + 16);
      *(v31 + 16) = 1;
      (*(*v34 + 16))(v34, 0);
      *(v31 + 16) = v35;
      if (!*v31)
      {
        v33 = *(v31 + 8);
LABEL_54:
        if (!v33)
        {
          MEMORY[0x19EB14CF0](v31, 0x1020C40545B2139);
        }
      }
    }
  }

LABEL_56:
  WebKit::WebProcessProxy::updateRuntimeStatistics(a1);
LABEL_120:
  WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((a1 + 16), v36);
}

WTF::URL *WTF::URL::URL(WTF::URL *this)
{
  *this = 0;
  WTF::URL::invalidate(this);
  return this;
}

void sub_19D5A6E98(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  v3 = v2;
  v5 = *v3;
  *v3 = 0;
  if (v5)
  {
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void *WebKit::WebUserContentControllerProxy::addContentRuleList(WebKit::WebUserContentControllerProxy *this, API::ContentRuleList *a2, const WTF::URL *a3)
{
  v96 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 2);
  CFRetain(*(a2 + 1));
  v80 = a2;
  v8 = *a3;
  if (*a3)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v81 = v8;
  v9 = *(a3 + 24);
  v82 = *(a3 + 8);
  v83 = v9;
  v10 = *(v6 + 16);
  if (v10 == -1 || !v10)
  {
    __break(0xC471u);
    JUMPOUT(0x19D5A74F4);
  }

  v11 = *(this + 13);
  if (v11 || (WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(this + 13, 0), (v11 = *(this + 13)) != 0))
  {
    v12 = *(v11 - 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v6 + 16);
  v14 = *(v13 + 4);
  v72 = v8;
  v73 = a2;
  if (v14 < 0x100)
  {
    v15 = WTF::StringImpl::hashSlowCase(v13);
  }

  else
  {
    v15 = v14 >> 8;
  }

  v16 = 0;
  for (i = 1; ; ++i)
  {
    v18 = v15 & v12;
    v19 = (v11 + 56 * (v15 & v12));
    v20 = *v19;
    if (*v19 == -1)
    {
      v16 = v11 + 56 * v18;
      goto LABEL_16;
    }

    if (!v20)
    {
      break;
    }

    if (WTF::equal(v20, *(v6 + 16), v7))
    {
      std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>::operator=[abi:sn200100](v19 + 1, &v80);
      v26 = v73;
      goto LABEL_30;
    }

LABEL_16:
    v15 = i + v18;
  }

  if (v16)
  {
    *(v16 + 48) = 0;
    *(v16 + 16) = 0u;
    *(v16 + 32) = 0u;
    *v16 = 0u;
    --*(*(this + 13) - 16);
    v19 = v16;
  }

  WTF::String::operator=(v19, (v6 + 16));
  v80 = 0;
  v81 = 0;
  v26 = v73;
  v87 = v73;
  v88 = v72;
  v89 = v82;
  v90 = v83;
  LODWORD(v82) = v82 & 0xFFFFFFFE;
  std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>::operator=[abi:sn200100](v19 + 1, &v87);
  v21 = v88;
  v88 = 0;
  if (v21 && atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v21, v25);
  }

  v22 = v87;
  v87 = 0;
  if (v22)
  {
    CFRelease(*(v22 + 1));
  }

  v23 = *(this + 13);
  if (v23)
  {
    v24 = *(v23 - 12) + 1;
  }

  else
  {
    v24 = 1;
  }

  *(v23 - 12) = v24;
  v27 = (*(v23 - 16) + v24);
  v28 = *(v23 - 4);
  if (v28 > 0x400)
  {
    if (v28 <= 2 * v27)
    {
LABEL_29:
      WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::expand(this + 13, v19);
    }
  }

  else if (3 * v28 <= 4 * v27)
  {
    goto LABEL_29;
  }

LABEL_30:
  v29 = v81;
  v81 = 0;
  if (v29 && atomic_fetch_add_explicit(v29, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v29, v25);
  }

  v30 = v80;
  v80 = 0;
  if (v30)
  {
    CFRelease(v30[1]);
  }

  v31 = *(v26 + 2);
  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 5, &v80);
  v32 = *(this + 5);
  if (v32)
  {
    v33 = *(v32 - 4);
    v34 = (v32 + 8 * v33);
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  v75 = this + 40;
  v76 = v34;
  v77 = v34;
  v78 = v34;
  v79 = v32 + 8 * v33;
  WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v75);
  v35 = v81;
  if (v81 != v76)
  {
    while (2)
    {
      v36 = *(*v35 + 8);
      atomic_fetch_add((v36 + 16), 1u);
      v37 = *(v31 + 16);
      if (v37)
      {
        atomic_fetch_add_explicit(v37, 2u, memory_order_relaxed);
      }

      v87 = v37;
      v38 = *(v31 + 24);
      if (v38)
      {
        atomic_fetch_add(v38, 1u);
      }

      v88 = v38;
      v39 = *(v31 + 32);
      v40 = *(v31 + 48);
      v41 = *(v31 + 80);
      v91 = *(v31 + 64);
      v92 = v41;
      v89 = v39;
      v90 = v40;
      v42 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v42, 2u, memory_order_relaxed);
      }

      v93 = v42;
      v94 = *(a3 + 8);
      v95 = *(a3 + 24);
      WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v74, &v87, 1uLL);
      v43 = *(this + 4);
      v45 = IPC::Encoder::operator new(0x238, v44);
      *v45 = 3179;
      *(v45 + 2) = 0;
      *(v45 + 3) = 0;
      *(v45 + 1) = v43;
      *(v45 + 68) = 0;
      *(v45 + 70) = 0;
      *(v45 + 69) = 0;
      IPC::Encoder::encodeHeader(v45);
      v86 = v45;
      IPC::VectorArgumentCoder<false,std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(v45, v74);
      LOBYTE(v84[0]) = 0;
      v85 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v36, &v86, 0, v84, 1);
      if (v85 == 1)
      {
        v47 = v84[0];
        v84[0] = 0;
        if (v47)
        {
          (*(*v47 + 8))(v47);
        }
      }

      v48 = v86;
      v86 = 0;
      if (v48)
      {
        IPC::Encoder::~Encoder(v48, v46);
        bmalloc::api::tzoneFree(v53, v54);
      }

      WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v74, v46);
      v50 = v93;
      v93 = 0;
      if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v50, v49);
      }

      v51 = v88;
      v88 = 0;
      if (v51)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v51);
      }

      v52 = v87;
      v87 = 0;
      if (v52 && atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v49);
        if (v36)
        {
LABEL_58:
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v36 + 16), v49);
        }
      }

      else if (v36)
      {
        goto LABEL_58;
      }

      WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v80);
      v35 = v81;
      if (v81 == v76)
      {
        break;
      }

      continue;
    }
  }

  WTF::WeakHashSet<WebKit::ApplicationStateTracker,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::begin(this + 11, &v80);
  v55 = *(this + 11);
  if (v55)
  {
    v56 = *(v55 - 4);
    v57 = (v55 + 8 * v56);
  }

  else
  {
    v57 = 0;
    v56 = 0;
  }

  v75 = this + 88;
  v76 = v57;
  v77 = v57;
  v78 = v57;
  v79 = v55 + 8 * v56;
  result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::skipEmptyBuckets(&v75);
  v59 = v81;
  if (v81 != v76)
  {
    while (2)
    {
      v60 = *(*v59 + 8);
      atomic_fetch_add((v60 + 16), 1u);
      v86 = *(this + 4);
      v61 = *(v31 + 16);
      if (v61)
      {
        atomic_fetch_add_explicit(v61, 2u, memory_order_relaxed);
      }

      v87 = v61;
      v62 = *(v31 + 24);
      if (v62)
      {
        atomic_fetch_add(v62, 1u);
      }

      v88 = v62;
      v63 = *(v31 + 32);
      v64 = *(v31 + 48);
      v65 = *(v31 + 80);
      v91 = *(v31 + 64);
      v92 = v65;
      v89 = v63;
      v90 = v64;
      v66 = *a3;
      if (*a3)
      {
        atomic_fetch_add_explicit(v66, 2u, memory_order_relaxed);
      }

      v93 = v66;
      v94 = *(a3 + 8);
      v95 = *(a3 + 24);
      WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::Vector(v74, &v87, 1uLL);
      v84[0] = &v86;
      v84[1] = v74;
      WebKit::AuxiliaryProcessProxy::send<Messages::NetworkContentRuleListManager::AddContentRuleLists>(v60, v84, 0, 0);
      WTF::Vector<std::pair<WebKit::WebCompiledContentRuleListData,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v74, v67);
      v69 = v93;
      v93 = 0;
      if (v69 && atomic_fetch_add_explicit(v69, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v69, v68);
      }

      v70 = v88;
      v88 = 0;
      if (v70)
      {
        WTF::ThreadSafeRefCounted<WebCore::SharedMemory,(WTF::DestructionThread)0>::deref(v70);
      }

      v71 = v87;
      v87 = 0;
      if (v71 && atomic_fetch_add_explicit(v71, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v71, v68);
        if (v60)
        {
LABEL_81:
          WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v60 + 16), v68);
        }
      }

      else if (v60)
      {
        goto LABEL_81;
      }

      result = WTF::WeakHashSet<WebKit::RemoteLayerBackingStore,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::WeakHashSetConstIterator::operator++(&v80);
      v59 = v81;
      if (v81 == v76)
      {
        return result;
      }

      continue;
    }
  }

  return result;
}

IPC::Encoder *WebKit::AuxiliaryProcessProxy::didChangeThrottleState(IPC::Encoder *result, unint64_t a2)
{
  v2 = a2 == 0;
  if (*(result + 114) == v2)
  {
    return result;
  }

  v3 = result;
  *(result + 114) = v2;
  if (!a2)
  {
    return result;
  }

  v4 = *(result + 50);
  if (!v4)
  {
    return result;
  }

  v5 = *(v4 - 12);
  if (!v5)
  {
    return result;
  }

  v37 = 0;
  v6 = (v5 >> 28);
  if (v6)
  {
    __break(0xC471u);
    return result;
  }

  v7 = WTF::fastMalloc(v6, (16 * v5));
  LODWORD(v37) = v5;
  v36 = v7;
  v8 = *(v3 + 50);
  if (!v8)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_14;
  }

  v9 = *(v8 - 4);
  v10 = v8 + 32 * v9;
  if (!*(v8 - 12))
  {
LABEL_14:
    v12 = v10;
    v10 = v8 + 32 * v9;
    goto LABEL_15;
  }

  if (!v9)
  {
    v12 = *(v3 + 50);
    goto LABEL_18;
  }

  v11 = 32 * v9;
  v12 = *(v3 + 50);
  while ((*(v12 + 12) + 1) <= 1)
  {
    v12 += 32;
    v11 -= 32;
    if (!v11)
    {
      v12 = v10;
      break;
    }
  }

LABEL_15:
  if (v8)
  {
LABEL_18:
    v13 = v8 + 32 * *(v8 - 4);
    goto LABEL_19;
  }

  v13 = 0;
LABEL_19:
  if (v13 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      if (v14 == v37)
      {
        v15 = WTF::Vector<std::pair<unsigned long long,unsigned long long>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v36, v14 + 1, v12 + 16);
        v14 = HIDWORD(v37);
        v7 = v36;
        v16 = v36 + 16 * HIDWORD(v37);
        v18 = *v15;
        v17 = (v15 + 2);
        *v16 = v18;
      }

      else
      {
        v16 = v7 + 16 * v14;
        *v16 = *(v12 + 16);
        v17 = (v12 + 24);
      }

      v19 = *v17;
      *v17 = 0;
      *(v16 + 1) = v19;
      HIDWORD(v37) = ++v14;
      do
      {
        v12 += 32;
      }

      while (v12 != v10 && (*(v12 + 12) + 1) <= 1);
    }

    while (v12 != v13);
  }

  v38 = 0;
  v40[0] = &v39;
  v40[1] = &v38;
  v20 = 126 - 2 * __clz(v14);
  if (v14)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  std::__introsort<std::_RangeAlgPolicy,std::_ProjectedPred<std::ranges::less,unsigned int std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>::*> &,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>*,false>(v7, v7 + 2 * v14, v40, v21, 1);
  v23 = v36;
  v24 = HIDWORD(v37);
  v25 = 16 * HIDWORD(v37);
  if (HIDWORD(v37))
  {
    v26 = (v36 + 8);
    v27 = 16 * HIDWORD(v37);
    do
    {
      v28 = *v26;
      *v26 = 0;
      v40[0] = v28;
      LOBYTE(v34) = 0;
      v35 = 0;
      WebKit::AuxiliaryProcessProxy::sendMessage(v3, v40, 0, &v34, 1);
      if (v35 == 1)
      {
        v29 = v34;
        v34 = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      v30 = v40[0];
      v40[0] = 0;
      if (v30)
      {
        IPC::Encoder::~Encoder(v30, v22);
        bmalloc::api::tzoneFree(v31, v32);
      }

      v26 += 2;
      v27 -= 16;
    }

    while (v27);
  }

  result = *(v3 + 50);
  if (result)
  {
    *(v3 + 50) = 0;
    result = WTF::HashTable<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::KeyValuePair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>>,WTF::DefaultHash<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashMap<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>,WTF::DefaultHash<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::HashTraits<std::pair<unsigned int,std::unique_ptr<IPC::Encoder>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>,WTF::FastMalloc>::deallocateTable(result, v22);
  }

  *(v3 + 102) = 0;
  if (v24)
  {
    v33 = (v23 + 8);
    do
    {
      result = std::unique_ptr<IPC::Encoder>::reset[abi:sn200100](v33, 0);
      v33 += 2;
      v25 -= 16;
    }

    while (v25);
    v23 = v36;
  }

  if (v23)
  {
    return WTF::fastFree(v23, v22);
  }

  return result;
}

uint64_t WebKit::WebProcessPool::updateProcessAssertions(WebKit::WebProcessPool *this, unint64_t a2)
{
  {
    if (WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess)
    {
      v2 = *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8);
      if (v2)
      {
        v3 = v2 + 4;
        atomic_fetch_add(v2 + 4, 1u);
        WebKit::NetworkProcessProxy::updateProcessAssertion(v2, a2);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v3, v4);
      }
    }
  }

  else
  {
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
  }

  v5 = &qword_1ED643000;
  {
    v5 = WebKit::singleton(void)::singleton;
    if (WebKit::singleton(void)::singleton)
    {
      v6 = *(WebKit::singleton(void)::singleton + 8);
      if (v6)
      {
        v7 = v6 + 4;
        atomic_fetch_add(v6 + 4, 1u);
        WebKit::GPUProcessProxy::updateProcessAssertion(v6, a2);
        WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7, v8);
      }
    }
  }

  else
  {
    WebKit::singleton(void)::singleton = 0;
  }

  v9 = WTF::fastMalloc(v5, 0x10);
  *v9 = &unk_1F111A6A0;
  v11 = v9;
  WTF::callOnMainRunLoop();
  result = v11;
  if (v11)
  {
    return (*(*v11 + 8))(v11);
  }

  return result;
}

uint64_t WebKit::BackgroundProcessResponsivenessTimer::updateState(WebKit::BackgroundProcessResponsivenessTimer *this)
{
  if (WTF::RunLoop::TimerBase::isActive((this + 24)))
  {
    *(this + 2) = 0x4034000000000000;
    WTF::RunLoop::TimerBase::stop((this + 24));
  }

  result = WTF::RunLoop::TimerBase::stop((this + 72));
  *(this + 120) = 1;
  return result;
}

uint64_t *std::pair<WTF::Ref<API::ContentRuleList,WTF::RawPtrTraits<API::ContentRuleList>,WTF::DefaultRefDerefTraits<API::ContentRuleList>>,WTF::URL>::operator=[abi:sn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    CFRelease(*(v5 + 8));
  }

  WTF::URL::operator=(a1 + 1, a2 + 1);
  return a1;
}

uint64_t *WTF::URL::operator=(uint64_t *a1, uint64_t *a2)
{
  WTF::String::operator=(a1, a2);
  *(a1 + 2) = a1[1] & 0xFFFFFFFE | a2[1] & 1;
  *(a2 + 2) &= ~1u;
  *(a1 + 2) = a1[1] & 0xFFFFFFFD | (2 * ((a2[1] & 2) != 0));
  *(a1 + 2) = a1[1] & 0xFFFFFFFB | (4 * ((a2[1] & 4) != 0));
  *(a1 + 2) = a1[1] & 0xFFFFFFC7 | (8 * ((*(a2 + 2) >> 3) & 7));
  *(a1 + 2) = a1[1] & 0x3F | (*(a2 + 2) >> 6 << 6);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 6) = *(a2 + 6);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

void WebKit::WebProcessProxy::updateRuntimeStatistics(WebKit::WebProcessProxy *this)
{
  v1 = this;
  v2 = 0;
  if (*(this + 811) & 1) != 0 || (*(this + 760))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(this + 376);
    if (!v3)
    {
      v3 = *(this + 381) != 1 || *(this + 21) != 0;
    }

    this = WTF::MonotonicTime::now(this);
    v2 = v4;
  }

  if (*(v1 + 146) != 0.0)
  {
    WTF::MonotonicTime::now(this);
    v6 = *(v1 + 1160);
    if (v6 <= 2)
    {
      (v1 - v6)[149] = v5 - *(v1 + 146) + (v1 - v6)[149];
    }
  }

  *(v1 + 1160) = v3;
  *(v1 + 146) = v2;
  v7 = *(v1 + 69);
  if (v7)
  {
    v8 = *(v7 + 8);
    if (v8)
    {
      CFRetain(*(v8 - 8));
      if (*(v8 + 1040) == 1)
      {
        WebKit::WebProcessProxy::mainPages(v1, &v13);
        if (v14)
        {
          v10 = v13;
          v11 = 8 * v14;
          do
          {
            v12 = *v10++;
            CFRetain(*(v12 + 8));
            WebKit::WebPageProxy::processDidUpdateThrottleState(v12);
            CFRelease(*(v12 + 8));
            v11 -= 8;
          }

          while (v11);
        }

        WTF::Vector<WTF::Ref<WebKit::WebPageProxy,WTF::RawPtrTraits<WebKit::WebPageProxy>,WTF::DefaultRefDerefTraits<WebKit::WebPageProxy>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v13, v9);
      }

      CFRelease(*(v8 - 8));
    }
  }
}

uint64_t *WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::operator=(uint64_t *a1, uint64_t *a2)
{
  v4[2] = a1;
  v4[1] = a2;
  v4[4] = v4;
  v4[3] = a2;
  v4[6] = v4;
  v4[5] = a2;
  v4[0] = WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(a2);
  WTF::RefPtr<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>::swap<JSC::ArrayBufferView,WTF::RawPtrTraits<JSC::ArrayBufferView>,WTF::DefaultRefDerefTraits<JSC::ArrayBufferView>>(a1, v4);
  v4[7] = v4;
  v5[1] = v4;
  v5[0] = 0;
  v5[3] = v4;
  v5[2] = v5;
  v6 = std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(v4);
  if (v6)
  {
    WTF::StringImpl::deref(v6);
  }

  return a1;
}

uint64_t WTF::RefPtr<WTF::StringImpl,WTF::RawPtrTraits<WTF::StringImpl>,WTF::DefaultRefDerefTraits<WTF::StringImpl>>::leakRef(uint64_t *a1)
{
  v2[1] = a1;
  v2[0] = 0;
  v2[3] = a1;
  v2[2] = v2;
  return std::exchange[abi:sn200100]<WTF::StringImpl *,decltype(nullptr) &>(a1);
}

void WebKit::ExtensionCapabilityGrant::invalidate(WebKit::ExtensionCapabilityGrant *this)
{
  v2 = 0;
  WebKit::ExtensionCapabilityGrant::setPlatformGrant(this, &v2);
  v1 = v2;
  if (v2)
  {
  }
}

void sub_19D5A7DAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(atomic_uint *result)
{
  add = atomic_fetch_add(result, 0xFFFFFFFF);
  if (add == 1)
  {
    v5 = v1;
    atomic_store(add, result);
    WebKit::LaunchGrant::~LaunchGrant(result);

    return WTF::fastFree(v3, v4);
  }

  return result;
}

uint64_t WTF::Detail::CallableWrapper<API::ContentRuleListStore::lookupContentRuleListFile(WTF::String &&,WTF::String &,WTF::CompletionHandler<void ()(WTF::RefPtr<API::ContentRuleList,WTF::RawPtrTraits<WTF::RefPtr>,WTF::DefaultRefDerefTraits<WTF::RefPtr>>,std::error_code)>)::$_0::operator()(void)::{lambda(void)#4},void>::~CallableWrapper(WTF *this, WTF::StringImpl *a2)
{
  *this = &unk_1F111B1F8;
  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3, a2);
  }

  v4 = *(this + 12);
  if (v4)
  {
    os_release(v4);
  }

  v5 = *(this + 2);
  *(this + 2) = 0;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = *(this + 1);
  *(this + 1) = 0;
  if (v6)
  {
    CFRelease(*(v6 + 8));
  }

  return WTF::fastFree(this, a2);
}

void WebKit::ExtensionCapabilityGrant::~ExtensionCapabilityGrant(WebKit::ExtensionCapabilityGrant *this)
{
  v5 = 0;
  WebKit::ExtensionCapabilityGrant::setPlatformGrant(this, &v5);
  if (v5)
  {
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
  }

  v4 = *this;
  *this = 0;
  if (v4)
  {
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v2);
    }
  }
}

void sub_19D5A7FA8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  v12 = *(v10 + 8);
  *(v10 + 8) = 0;
  if (v12)
  {
  }

  v13 = *v10;
  *v10 = 0;
  if (v13)
  {
    if (atomic_fetch_add_explicit(v13, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v13, a2);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_19D5A80A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = WTF::fastMalloc(a3, 0x20);
  *v5 = 1;
  v6 = *a2;
  *a2 = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[1] = v6;
  v24 = v5;
  v21 = a1;
  CFRetain(*(a1 + 8));
  v7 = (*v5 + 1);
  *v5 = v7;
  v8 = WTF::fastMalloc(v7, 0x20);
  *v8 = &unk_1F11218F0;
  v8[1] = a1;
  v8[2] = a1;
  v8[3] = v5;
  v22 = 0;
  v23 = 0;
  v10 = WTF::fastMalloc(v9, 0x10);
  *v10 = 1;
  v10[1] = v8;
  WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref(&v23);
  v11 = v22;
  v22 = 0;
  if (v11)
  {
    CFRelease(*(v11 + 8));
  }

  WebKit::WebProcessPool::allProcessPools(&v21);
  if (HIDWORD(v22))
  {
    v13 = v21;
    v14 = 8 * HIDWORD(v22);
    do
    {
      v15 = *v13;
      CFRetain(*(*v13 + 8));
      v16 = WTF::fastMalloc(atomic_fetch_add(v10, 1u), 0x10);
      *v16 = &unk_1F1121940;
      v16[1] = v10;
      v20 = v16;
      WebKit::WebProcessPool::sendResourceLoadStatisticsDataImmediately(v15, &v20, v17);
      v18 = v20;
      v20 = 0;
      if (v18)
      {
        (*(*v18 + 8))(v18);
      }

      CFRelease(*(v15 + 8));
      ++v13;
      v14 -= 8;
    }

    while (v14);
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v21, v12);
  WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v10);
  return WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref(&v24);
}

uint64_t WebKit::WebProcessProxy::shouldTakeNearSuspendedAssertion(WebKit::WebProcessProxy *this)
{
  v1 = *(this + 74);
  if (v1 && *(v1 - 12))
  {
    v2 = (this + 592);
    v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 74);
    v5 = v3;
    v7 = v6;
    if (*v2)
    {
      v8 = *v2 + 16 * *(*v2 - 4);
    }

    else
    {
      v8 = 0;
    }

    if (v8 == v3)
    {
      v10 = 0;
    }

    else
    {
      do
      {
        v12 = *(v5[1] + 8);
        if (!v12)
        {
          goto LABEL_24;
        }

        v13 = *(v12 + 352);
        {
          atomic_fetch_add_explicit(WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
          WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key = WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::$_0::operator() const(void)::impl;
        }

        BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v13 + 40), &WebKit::WebPreferencesKey::pageVisibilityBasedProcessSuppressionEnabledKey(void)::key, v4);
        v16 = *(v5[1] + 8);
        if (!v16)
        {
LABEL_24:
          __break(0xC471u);
          JUMPOUT(0x19D5A8430);
        }

        v17 = *(v16 + 352);
        {
          atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
          WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::key = WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::$_0::operator() const(void)::impl;
        }

        v10 = WebKit::WebPreferencesStore::getBoolValueForKey((v17 + 40), &WebKit::WebPreferencesKey::shouldTakeNearSuspendedAssertionsKey(void)::key, v15) | BoolValueForKey ^ 1;
        if (v10)
        {
          break;
        }

        do
        {
          v5 += 2;
        }

        while (v5 != v7 && (*v5 + 1) <= 1);
      }

      while (v5 != v8);
    }
  }

  else
  {
    {
      v9 = WebKit::defaultShouldTakeNearSuspendedAssertion(void)::newSDK;
    }

    else
    {
      v9 = WTF::linkedOnOrAfterSDKWithBehavior();
      WebKit::defaultShouldTakeNearSuspendedAssertion(void)::newSDK = v9;
    }

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t WebKit::WebProcessProxy::shouldDropNearSuspendedAssertionAfterDelay(WebKit::WebProcessProxy *this)
{
  v1 = *(this + 74);
  if (!v1 || !*(v1 - 12))
  {
    {
      BoolValueForKey = WebKit::defaultShouldDropNearSuspendedAssertionAfterDelay(void)::newSDK;
    }

    else
    {
      BoolValueForKey = WTF::linkedOnOrAfterSDKWithBehavior();
      WebKit::defaultShouldDropNearSuspendedAssertionAfterDelay(void)::newSDK = BoolValueForKey;
    }

    return BoolValueForKey & 1;
  }

  v2 = (this + 592);
  v3 = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(this + 74);
  v5 = v3;
  v7 = v6;
  if (*v2)
  {
    v8 = *v2 + 16 * *(*v2 - 4);
  }

  else
  {
    v8 = 0;
  }

  if (v3 == v8)
  {
    BoolValueForKey = 0;
    return BoolValueForKey & 1;
  }

  while (1)
  {
    v10 = *(v5[1] + 8);
    if (!v10)
    {
      break;
    }

    v11 = *(v10 + 352);
    {
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::shouldDropNearSuspendedAssertionAfterDelayKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::shouldDropNearSuspendedAssertionAfterDelayKey(void)::key = WebKit::WebPreferencesKey::shouldDropNearSuspendedAssertionAfterDelayKey(void)::$_0::operator() const(void)::impl;
    }

    BoolValueForKey = WebKit::WebPreferencesStore::getBoolValueForKey((v11 + 40), &WebKit::WebPreferencesKey::shouldDropNearSuspendedAssertionAfterDelayKey(void)::key, v4);
    if (BoolValueForKey)
    {
      BoolValueForKey = 1;
      return BoolValueForKey & 1;
    }

    do
    {
      v5 += 2;
    }

    while (v5 != v7 && (*v5 + 1) <= 1);
    if (v5 == v8)
    {
      return BoolValueForKey & 1;
    }
  }

  result = 92;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref(WTF **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  if (*v2 != 1)
  {
    --*v2;
    return a1;
  }

  v4 = *(v2 + 1);
  *(v2 + 1) = 0;
  (*(*v4 + 16))(v4, v2 + 2);
  (*(*v4 + 8))(v4);
  WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v2 + 16, v5);
  v7 = *(v2 + 1);
  *(v2 + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  if (*v2 == 1)
  {
    WTF::fastFree(v2, v6);
    return a1;
  }

  result = 191;
  __break(0xC471u);
  return result;
}

atomic_uint *WebKit::ProcessThrottler::setShouldTakeNearSuspendedAssertion(atomic_uint *this, int a2)
{
  v2 = this;
  v14 = *MEMORY[0x1E69E9840];
  *(this + 235) = a2;
  v3 = *(this + 3);
  if (a2)
  {
    if (!v3 && *(this + 237) == 1)
    {
      v4 = qword_1ED641030;
      if (!os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        return WebKit::ProcessThrottler::setThrottleState(v2, 0);
      }

      v5 = *(*(v2 + 2) + 8);
      if (v5)
      {
        v6 = *(v5 + 80);
        if (v6)
        {
          LODWORD(v6) = *(v6 + 108);
        }

        v10 = 134218240;
        v11 = v2;
        v12 = 1024;
        v13 = v6;
        _os_log_impl(&dword_19D52D000, v4, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::setShouldTakeNearSuspendedAssertion: Taking near-suspended assertion", &v10, 0x12u);
        return WebKit::ProcessThrottler::setThrottleState(v2, 0);
      }

LABEL_19:
      __break(0xC471u);
      JUMPOUT(0x19D5A886CLL);
    }
  }

  else if (v3 && !*(v3 + 16))
  {
    v7 = qword_1ED641030;
    if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(v2 + 2) + 8);
      if (!v8)
      {
        goto LABEL_19;
      }

      v9 = *(v8 + 80);
      if (v9)
      {
        LODWORD(v9) = *(v9 + 108);
      }

      v10 = 134218240;
      v11 = v2;
      v12 = 1024;
      v13 = v9;
      _os_log_impl(&dword_19D52D000, v7, OS_LOG_TYPE_DEFAULT, "%p - [PID=%d] ProcessThrottler::setShouldTakeNearSuspendedAssertion: Releasing near-suspended assertion", &v10, 0x12u);
    }

    WTF::RunLoop::TimerBase::stop((v2 + 22));
    return WebKit::ProcessThrottler::clearAssertion(v2);
  }

  return this;
}

atomic_uint *WebKit::WebProcessPool::sendResourceLoadStatisticsDataImmediately@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = WTF::fastMalloc(a3, 0x10);
  *v6 = 1;
  v7 = *a2;
  *a2 = 0;
  v6[1] = v7;
  v8 = *(a1 + 84);
  if (!v8)
  {
    return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6);
  }

  v9 = *(a1 + 72);
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    v12 = (*v9 + 16);
    atomic_fetch_add(v12, 1u);
    v13 = *(v11 + 592);
    if (v13)
    {
      if (*(v13 - 12) && (*(v11 + 381) != 1 || *(v11 + 168)))
      {
        break;
      }
    }

LABEL_13:
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v12, v5);
    ++v9;
    v10 -= 8;
    if (!v10)
    {
      return WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v6);
    }
  }

  atomic_fetch_add(v6, 1u);
  v14 = IPC::Encoder::operator new(0x238, v5);
  *v14 = 2984;
  *(v14 + 68) = 0;
  *(v14 + 70) = 0;
  *(v14 + 69) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 1) = 0;
  IPC::Encoder::encodeHeader(v14);
  v26 = v14;
  v16 = WTF::fastMalloc(v15, 0x10);
  *v16 = &unk_1F111A7B8;
  v16[1] = v6;
  if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected != 1)
  {
    v17 = v16;
    IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
    v24[0] = v17;
    v24[1] = IdentifierInternal;
    v25 = 1;
    WebKit::AuxiliaryProcessProxy::sendMessage(v11, &v26, 0, v24, 1);
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
      IPC::Encoder::~Encoder(v20, v5);
      bmalloc::api::tzoneFree(v21, v22);
    }

    goto LABEL_13;
  }

  result = 141;
  __break(0xC471u);
  return result;
}

uint64_t WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_1,void>::~CallableWrapper(WTF *this, void *a2)
{
  v3 = *(this + 1);
  *this = &unk_1F1121940;
  *(this + 1) = 0;
  if (v3)
  {
    WTF::ThreadSafeRefCounted<WTF::CallbackAggregatorOnThread<(WTF::DestructionThread)0>,(WTF::DestructionThread)0>::deref(v3);
  }

  return WTF::fastFree(this, a2);
}

uint64_t WebKit::ProcessThrottler::setShouldDropNearSuspendedAssertionAfterDelay(uint64_t this, int a2)
{
  if (*(this + 233) != a2)
  {
    *(this + 233) = a2;
    if (a2)
    {
      v2 = *(this + 24);
      if (v2)
      {
        if (!*(v2 + 16))
        {
          return WTF::RunLoop::TimerBase::start();
        }
      }
    }

    else
    {
      return WTF::RunLoop::TimerBase::stop((this + 88));
    }
  }

  return this;
}

uint64_t WebKit::WebProcessProxy::unblockAccessibilityServerIfNeeded(uint64_t this)
{
  if ((*(this + 721) & 1) == 0)
  {
    v1 = this;
    this = _AXSApplicationAccessibilityEnabled();
    if (this)
    {
      v2 = *(v1 + 80);
      if (v2)
      {
        if (*(v2 + 108) && ((*(v2 + 104) & 1) != 0 || *(v1 + 88)))
        {
          v14 = 0;
          v15 = 0;
          WebKit::WebProcessProxy::auditToken(v10, v1);
          v16[0] = v10[0];
          v16[1] = v10[1];
          v17 = v11;
          WebKit::SandboxExtension::createHandlesForMachLookup(0, 0, v16, 1, &v12);
          if (HIDWORD(v15))
          {
            v7 = v14;
            v8 = 8 * HIDWORD(v15);
            do
            {
              WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v7);
              v7 = (v9 + 8);
              v8 -= 8;
            }

            while (v8);
          }

          v4 = v14;
          if (v14)
          {
            v14 = 0;
            LODWORD(v15) = 0;
            WTF::fastFree(v4, v3);
          }

          v14 = v12;
          v5 = v13;
          v12 = 0;
          v13 = 0;
          v15 = v5;
          WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v12, v3);
          *&v16[0] = &v14;
          WebKit::AuxiliaryProcessProxy::send<Messages::WebProcess::UnblockServicesRequiredByAccessibility>(v1, v16, 0, 0);
          *(v1 + 721) = 1;
          return WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v14, v6);
        }
      }
    }
  }

  return this;
}

void sub_19D5A8C24(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va, a2);
  WTF::Vector<WebKit::SandboxExtensionHandle,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v15);
  _Unwind_Resume(a1);
}

IPC::Encoder *WebKit::WebProcessProxy::enableRemoteInspectorIfNeeded(WebKit::WebProcessProxy *this)
{
  result = CFPreferencesGetAppIntegerValue(@"RemoteInspectorEnabled", @"com.apple.webinspectord", 0);
  if (result)
  {
    v4 = IPC::Encoder::operator new(0x238, v3);
    *v4 = 2943;
    *(v4 + 68) = 0;
    *(v4 + 70) = 0;
    *(v4 + 69) = 0;
    *(v4 + 2) = 0;
    *(v4 + 3) = 0;
    *(v4 + 1) = 0;
    IPC::Encoder::encodeHeader(v4);
    v11 = v4;
    LOBYTE(v9) = 0;
    v10 = 0;
    WebKit::AuxiliaryProcessProxy::sendMessage(this, &v11, 0, &v9, 1);
    if (v10 == 1)
    {
      v6 = v9;
      v9 = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    result = v11;
    v11 = 0;
    if (result)
    {
      IPC::Encoder::~Encoder(result, v5);
      return bmalloc::api::tzoneFree(v7, v8);
    }
  }

  return result;
}

void sub_19D5A8D38(_Unwind_Exception *exception_object, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, IPC::Encoder *a12)
{
  if (a11 == 1 && a9)
  {
    (*(*a9 + 8))(a9, a2, a3, a4, a5, a6, a7, a8);
  }

  if (a12)
  {
    IPC::Encoder::~Encoder(a12, a2);
    bmalloc::api::tzoneFree(v13, v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::NetworkProcessProxy::operator new(WebKit::NetworkProcessProxy *this, void *a2)
{
  if (this == 584 && WebKit::NetworkProcessProxy::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(WebKit::NetworkProcessProxy::s_heapRef, a2);
  }

  else
  {
    return WebKit::NetworkProcessProxy::operatorNewSlow(this);
  }
}

WebKit::ResponsivenessTimer *WebKit::AuxiliaryProcessProxy::beginResponsivenessChecks(WebKit::ResponsivenessTimer *this)
{
  *(this + 113) = 1;
  if (*(this + 129) == 1)
  {
    v1 = *(this + 64);
    if ((v1 & 0x100) != 0)
    {
      *(this + 129) = 0;
      return WebKit::AuxiliaryProcessProxy::startResponsivenessTimer(this, v1 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  return this;
}

void WebKit::NetworkProcessProxy::ensureDefaultNetworkProcess(void *a1@<X1>, uint64_t *a2@<X8>)
{
  {
    if (WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess)
    {
      v3 = *(WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess + 8);
      if (v3)
      {
        atomic_fetch_add((v3 + 16), 1u);
        *a2 = v3;
        return;
      }
    }
  }

  else
  {
    WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = 0;
  }

  v4 = WebKit::NetworkProcessProxy::operator new(0x248, a1);
  v6 = WebKit::NetworkProcessProxy::NetworkProcessProxy(v4, v5);
  *a2 = v6;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(v6 + 2, v4);
  v8 = *(v4 + 1);
  atomic_fetch_add(v8, 1u);
  v9 = WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess;
  WebKit::NetworkProcessProxy::defaultNetworkProcess(void)::networkProcess = v8;
  if (v9 && atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v9);

    WTF::fastFree(v9, v7);
  }
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireAsync(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::call(uint64_t a1)
{
  WebKit::ProcessAssertion::acquireSync(*(a1 + 8));
  WTF::RunLoop::mainSingleton(v2);
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = WTF::fastMalloc(v5, 0x18);
  *v6 = &unk_1F1100D60;
  v6[1] = v3;
  v6[2] = v4;
  v8 = v6;
  WTF::RunLoop::dispatch();
  result = v8;
  if (v8)
  {
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_19D5A8F70(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t WebKit::WebsiteDataStore::networkProcess(WebKit::WebsiteDataStore *this, void *a2)
{
  result = *(this + 54);
  if (!result)
  {
    WebKit::NetworkProcessProxy::ensureDefaultNetworkProcess(a2, &v9);
    v5 = v9;
    atomic_fetch_add(v9 + 4, 1u);
    v6 = *(this + 54);
    *(this + 54) = v5;
    if (v6)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v6 + 16), v4);
    }

    v7 = v9;
    WebKit::NetworkProcessProxy::addSession(v9, this, 1);
    if (v7)
    {
      WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref(v7 + 4, v8);
    }

    return *(this + 54);
  }

  return result;
}

atomic_uint *WTF::Detail::CallableWrapper<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::$_0,void>::call(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = WebKit::WebsiteDataStore::networkProcess(v3, a2);
  atomic_fetch_add((v4 + 16), 1u);
  v5 = *(v3 + 3);
  v6 = *(a1 + 24);
  v7 = (*v6 + 1);
  *v6 = v7;
  v8 = WTF::fastMalloc(v7, 0x10);
  v12 = 0;
  *v8 = &unk_1F1121918;
  v8[1] = v6;
  v13 = v8;
  WebKit::NetworkProcessProxy::getResourceLoadStatisticsDataSummary(v4, v5, &v13);
  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  WTF::Ref<WebKit::WebsiteDataStore::getResourceLoadStatisticsDataSummary(WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &&)::LocalCallbackAggregator,WTF::RawPtrTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>,WTF::DefaultRefDerefTraits<WTF::CompletionHandler<void ()(WTF::Vector<WebKit::ITPThirdPartyData,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> &&)> &>>::~Ref(&v12);
  return WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v4 + 16), v10);
}

void WebKit::ProcessAssertion::acquireSync(WebKit::ProcessAssertion *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = qword_1ED641030;
  v3 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    WTF::String::utf8();
    v5 = v31 ? v31 + 16 : 0;
    v6 = *(this + 5);
    *buf = 134218498;
    *&buf[4] = this;
    v33 = 2082;
    v34 = v5;
    v35 = 1024;
    v36 = v6;
    _os_log_impl(&dword_19D52D000, v2, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion::acquireSync Trying to take RBS assertion '%{public}s' for process with PID=%d", buf, 0x1Cu);
    v3 = v31;
    v31 = 0;
    if (v3)
    {
      if (*v3 == 1)
      {
        v3 = WTF::fastFree(v3, v4);
      }

      else
      {
        --*v3;
      }
    }
  }

  if (*(this + 168) != 1 || *(this + 128) != 1 || !*(this + 10))
  {
LABEL_9:
    v31 = 0;
    v7 = [*(this + 4) acquireWithError:&v31];
    v8 = qword_1ED641030;
    if (v7)
    {
      if (os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT))
      {
        WTF::String::utf8();
        if (v30)
        {
          v9 = v30 + 16;
        }

        else
        {
          v9 = 0;
        }

        v10 = *(this + 5);
        *buf = 134218498;
        *&buf[4] = this;
        v33 = 2082;
        v34 = v9;
        v35 = 1024;
        v36 = v10;
        _os_log_impl(&dword_19D52D000, v8, OS_LOG_TYPE_DEFAULT, "%p - ProcessAssertion::acquireSync Successfully took RBS assertion '%{public}s' for process with PID=%d", buf, 0x1Cu);
        if (v30)
        {
          if (*v30 == 1)
          {
            WTF::fastFree(v30, v11);
          }

          else
          {
            --*v30;
          }
        }
      }

      return;
    }

    v3 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_ERROR);
    if (!v3)
    {
      goto LABEL_28;
    }

    WTF::String::utf8();
    v28 = v30 ? v30 + 16 : 0;
    v29 = *(this + 5);
    *buf = 134218754;
    *&buf[4] = this;
    v33 = 2082;
    v34 = v28;
    v35 = 1024;
    v36 = v29;
    v37 = 2114;
    v38 = v31;
    _os_log_error_impl(&dword_19D52D000, v8, OS_LOG_TYPE_ERROR, "%p - ProcessAssertion::acquireSync Failed to acquire RBS assertion '%{public}s' for process with PID=%d, error: %{public}@", buf, 0x26u);
    v3 = v30;
    if (!v30)
    {
      goto LABEL_28;
    }

    if (*v30 != 1)
    {
      --*v30;
      goto LABEL_28;
    }

LABEL_48:
    v3 = WTF::fastFree(v3, v4);
LABEL_28:
    WTF::RunLoop::mainSingleton(v3);
    v20 = WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::NetworkDataTask,(WTF::DestructionThread)1>::controlBlock(this + 1, v19);
    v21 = WTF::ThreadSafeWeakPtrControlBlock::weakRef(v20);
    v23 = WTF::fastMalloc(v22, 0x18);
    *v23 = &unk_1F1100D88;
    v23[1] = this;
    v23[2] = v21;
    *buf = v23;
    WTF::RunLoop::dispatch();
    v24 = *buf;
    *buf = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    return;
  }

  v12 = 0;
  atomic_compare_exchange_strong_explicit(WebKit::ProcessAssertion::s_capabilityLock, &v12, 1u, memory_order_acquire, memory_order_acquire);
  if (v12)
  {
    v3 = MEMORY[0x19EB01E30](WebKit::ProcessAssertion::s_capabilityLock);
  }

  if ((*(this + 168) & 1) == 0 || (*(this + 128) & 1) == 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  *buf = _Block_copy(*(this + 15));
  WebKit::ExtensionProcess::grantCapability((this + 152), this + 10, buf, &v31);
  _Block_release(*buf);
  WebKit::ExtensionCapabilityGrant::setPlatformGrant(this + 136, &v31);
  isValid = WebKit::ExtensionCapabilityGrant::isValid(this + 17);
  v14 = qword_1ED641030;
  v15 = os_log_type_enabled(qword_1ED641030, OS_LOG_TYPE_DEFAULT);
  if (isValid)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    *buf = 134217984;
    *&buf[4] = this;
    v16 = "%p - ProcessAssertion() Successfully granted capability";
    v17 = v14;
    v18 = 12;
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    v25 = WebKit::runningBoardNameForAssertionType(*(this + 16));
    *buf = 134218242;
    *&buf[4] = this;
    v33 = 2080;
    v34 = v25;
    v16 = "%p - ProcessAssertion() Failed to grant capability %s";
    v17 = v14;
    v18 = 22;
  }

  _os_log_impl(&dword_19D52D000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
LABEL_33:
  v26 = v31;
  v31 = 0;
  if (v26)
  {
  }

  v27 = 1;
  atomic_compare_exchange_strong_explicit(WebKit::ProcessAssertion::s_capabilityLock, &v27, 0, memory_order_release, memory_order_relaxed);
  if (v27 != 1)
  {
    WTF::Lock::unlockSlow(WebKit::ProcessAssertion::s_capabilityLock);
  }

  if ((isValid & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_19D5A95CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock)
{
  _Block_release(aBlock);
  v13 = 1;
  atomic_compare_exchange_strong_explicit(v11, &v13, 0, memory_order_release, memory_order_relaxed);
  if (v13 != 1)
  {
    WTF::Lock::unlockSlow(WebKit::ProcessAssertion::s_capabilityLock);
  }

  _Unwind_Resume(a1);
}

uint64_t WTF::Detail::CallableWrapper<WebKit::ProcessAssertion::acquireAsync(WTF::CompletionHandler<void ()(void)> &&)::$_0,void>::~CallableWrapper(WTF *this, void *a2)
{
  *this = &unk_1F1100D38;
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
    WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebKit::ProcessAssertion,(WTF::DestructionThread)0>::deref((v4 + 8), a2);
  }

  return WTF::fastFree(this, a2);
}

WebKit::NetworkProcessProxy *WebKit::NetworkProcessProxy::NetworkProcessProxy(WebKit::NetworkProcessProxy *this, unint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = WebKit::WebProcessPool::anyProcessPoolNeedsUIBackgroundAssertion(this, a2);
  WebKit::WebProcessPool::allProcessPools(buf);
  if (v26)
  {
    v5 = *buf;
    v6 = 8 * v26 - 8;
    do
    {
      v7 = *v5++;
      v8 = *(v7 + 536);
      if (v8)
      {
        break;
      }

      v9 = v6;
      v6 -= 8;
    }

    while (v9);
  }

  else
  {
    v8 = 0;
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(buf, v4);
  WebKit::AuxiliaryProcessProxy::AuxiliaryProcessProxy(this, v3, v8, 6.0);
  *this = &unk_1F111EF80;
  *(this + 3) = &unk_1F111F0A8;
  *(this + 4) = &unk_1F111F130;
  *(this + 52) = 0;
  if (WebKit::LegacyCustomProtocolManagerClient::s_heapRef)
  {
    NonCompact = bmalloc::api::tzoneAllocateNonCompact(WebKit::LegacyCustomProtocolManagerClient::s_heapRef, v10);
  }

  else
  {
    NonCompact = WebKit::LegacyCustomProtocolManagerClient::operatorNewSlow(0x10);
  }

  *NonCompact = &unk_1F10FF378;
  NonCompact[1] = 0;
  *(this + 55) = 0;
  *(this + 53) = NonCompact;
  *(this + 54) = &unk_1F111F190;
  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v12 = *(this + 1);
  atomic_fetch_add(v12, 1u);
  *(this + 56) = v12;
  LOBYTE(v24) = 19;
  WTF::HashMap<IPC::ReceiverName,WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>,WTF::IntHash<IPC::ReceiverName>,WTF::StrongEnumHashTraits<IPC::ReceiverName>,WTF::HashTraits<WTF::WeakPtr<IPC::MessageReceiver,WTF::DefaultWeakPtrImpl,WTF::RawPtrTraits<WTF::DefaultWeakPtrImpl>>>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineSet<IPC::ReceiverName const&,IPC::MessageReceiver&>(this + 12, &v24, this + 432, buf);
  *(this + 512) = 0;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  v13 = qword_1ED6416A0;
  if (os_log_type_enabled(qword_1ED6416A0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = this;
    _os_log_impl(&dword_19D52D000, v13, OS_LOG_TYPE_DEFAULT, "%p - NetworkProcessProxy::NetworkProcessProxy", buf, 0xCu);
  }

  WebKit::AuxiliaryProcessProxy::connect(this);
  WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(this);
  WebKit::NetworkProcessProxy::updateProcessAssertion(this, v14);
  {
    WebKit::networkProcessesSet(void)::set = 0;
    *algn_1ED643778 = 0;
  }

  WTF::WeakHashSet<WebKit::FrameLoadStateObserver,WTF::DefaultWeakPtrImpl,(WTF::EnableWeakPtrThreadingAssertions)1>::add<WebKit::FrameLoadStateObserver>(&WebKit::networkProcessesSet(void)::set, this, buf);
  WebKit::NetworkProcessProxy::addBackgroundStateObservers(this);
  {
    *algn_1ED63B6A8 = 0u;
    *&qword_1ED63B6C8 = 0u;
    dword_1ED63B6B0 = 1;
    qword_1ED63B6B8 = 0;
    qword_1ED63B6C0 = 0;
    qword_1ED63B6C8 = 0;
    byte_1ED63B6D0 = 0;
    off_1ED63B6D8 = 0;
    *&dword_1ED63B6E0 = 0;
    WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
  }

  WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
  v15 = *(this + 1);
  v16 = WTF::fastMalloc(atomic_fetch_add(v15, 1u), 0x10);
  *v16 = &unk_1F111F5E0;
  v16[1] = v15;
  v24 = v16;
  WebKit::ListDataControllerBase::observeUpdates(&WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance, &v24, buf);
  v18 = *buf;
  *buf = 0;
  v19 = *(this + 60);
  *(this + 60) = v18;
  if (v19)
  {
    WTF::RefCounted<WebKit::ListDataObserver>::deref((v19 + 8), v17);
    v21 = *buf;
    *buf = 0;
    if (v21)
    {
      WTF::RefCounted<WebKit::ListDataObserver>::deref((v21 + 8), v20);
    }
  }

  v22 = v24;
  v24 = 0;
  if (v22)
  {
    (*(*v22 + 8))(v22);
  }

  return this;
}

uint64_t WebKit::WebProcessPool::anyProcessPoolNeedsUIBackgroundAssertion(WebKit::WebProcessPool *this, unint64_t a2)
{
  WebKit::WebProcessPool::allProcessPools(&v9);
  if (v10)
  {
    v3 = v9;
    v4 = 8 * v10 - 8;
    do
    {
      v5 = *v3++;
      v6 = *(v5 + 537);
      if (v6)
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
    v6 = 0;
  }

  WTF::Vector<WTF::Ref<WebKit::WebProcessPool,WTF::RawPtrTraits<WebKit::WebProcessPool>,WTF::DefaultRefDerefTraits<WebKit::WebProcessPool>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v9, v2);
  return v6;
}

uint64_t WebKit::NetworkProcessProxy::getLaunchOptions(WebKit::AuxiliaryProcessProxy *a1, uint64_t a2)
{
  *(a2 + 8) = 1;
  result = WebKit::AuxiliaryProcessProxy::getLaunchOptions(a1, a2);
  v4 = WebKit::nextNetworkProcessLaunchShouldFailForTesting;
  WebKit::nextNetworkProcessLaunchShouldFailForTesting = 0;
  if (v4 == 1)
  {
    *(a2 + 25) = 1;
  }

  return result;
}

void WebKit::NetworkProcessProxy::sendCreationParametersToNewProcess(WebKit::NetworkProcessProxy *this)
{
  v2 = WTF::RunLoop::mainSingleton(this);
  if (WTF::RunLoop::isCurrent(v2))
  {
    v71 = 0;
    *v69 = 0u;
    *v70 = 0u;
    *v72 = 0u;
    v73 = 0u;
    isFullWebBrowserOrRunningTest = 0;
    *v75 = 0u;
    *v76 = 0u;
    *v77 = 0u;
    v78 = 0u;
    v79 = 1;
    v80 = 0;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0;
    v85 = 0x7FF8000000000000;
    WebKit::AuxiliaryProcessProxy::auxiliaryProcessParameters(&v65);
    v4 = v65;
    v65 = 0;
    v5 = v69[0];
    v69[0] = v4;
    if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v3);
    }

    v6 = v66;
    v66 = 0;
    v7 = v69[1];
    v69[1] = v6;
    if (v7 && atomic_fetch_add_explicit(v7, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v7, v3);
    }

    v8 = v70[0];
    v70[0] = v67;
    if (v8 && atomic_fetch_add_explicit(v8, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v8, v3);
    }

    v9 = v70[1];
    v70[1] = v68;
    if (v9)
    {
      if (*v9)
      {
        v61 = v9;
        WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(*v9, v3);
        v9 = v61;
      }

      WTF::fastFree(v9, v3);
    }

    {
      WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
      *&qword_1ED643540 = 0u;
      *&qword_1ED643550 = 0u;
    }

    v65 = 0;
    v66 = 0;
    WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v65, &qword_1ED643540);
    if (HIDWORD(v75[1]))
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(v75[0], (v75[0] + 8 * HIDWORD(v75[1])));
    }

    v11 = v75[0];
    if (v75[0])
    {
      v75[0] = 0;
      LODWORD(v75[1]) = 0;
      WTF::fastFree(v11, v10);
    }

    v75[0] = v65;
    v12 = v66;
    v65 = 0;
    v66 = 0;
    v75[1] = v12;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v10);
    {
      WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
      *&qword_1ED643540 = 0u;
      *&qword_1ED643550 = 0u;
    }

    v65 = 0;
    v66 = 0;
    WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v65, &qword_1ED643548);
    if (HIDWORD(v76[1]))
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(v76[0], (v76[0] + 8 * HIDWORD(v76[1])));
    }

    v14 = v76[0];
    if (v76[0])
    {
      v76[0] = 0;
      LODWORD(v76[1]) = 0;
      WTF::fastFree(v14, v13);
    }

    v76[0] = v65;
    v15 = v66;
    v65 = 0;
    v66 = 0;
    v76[1] = v15;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v13);
    {
      WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
      *&qword_1ED643540 = 0u;
      *&qword_1ED643550 = 0u;
    }

    v65 = 0;
    v66 = 0;
    WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v65, &qword_1ED643550);
    if (HIDWORD(v77[1]))
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(v77[0], (v77[0] + 8 * HIDWORD(v77[1])));
    }

    v17 = v77[0];
    if (v77[0])
    {
      v77[0] = 0;
      LODWORD(v77[1]) = 0;
      WTF::fastFree(v17, v16);
    }

    v77[0] = v65;
    v18 = v66;
    v65 = 0;
    v66 = 0;
    v77[1] = v18;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v16);
    {
      v19 = WebKit::LegacyGlobalSettings::singleton(void)::properties;
    }

    else
    {
      v19 = 2;
      WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
      *&qword_1ED643540 = 0u;
      *&qword_1ED643550 = 0u;
    }

    LOBYTE(v71) = v19;
    {
      WebKit::globalURLSchemesWithCustomProtocolHandlers(void)::set = 0;
    }

    v65 = 0;
    v66 = 0;
    WTF::Mapper<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> WTF::copyToVectorOf<WTF::String,WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>>(WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&)::{lambda(WTF::String&&)#1},WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,WTF::HashSet<WTF::String,WTF::ASCIICaseInsensitiveHash,WTF::HashTraits<WTF::String>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1> const&,void>::map(&v65, &WebKit::globalURLSchemesWithCustomProtocolHandlers(void)::set);
    if (HIDWORD(v72[1]))
    {
      WTF::VectorDestructor<true,WTF::String>::destruct(v72[0], (v72[0] + 8 * HIDWORD(v72[1])));
    }

    v21 = v72[0];
    if (v72[0])
    {
      v72[0] = 0;
      LODWORD(v72[1]) = 0;
      WTF::fastFree(v21, v20);
    }

    v72[0] = v65;
    v22 = v66;
    v65 = 0;
    v66 = 0;
    v72[1] = v22;
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v20);
    {
      WebKit::LegacyGlobalSettings::singleton(void)::properties = 2;
      *&qword_1ED643540 = 0u;
      *&qword_1ED643550 = 0u;
    }

    v23 = WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::operator=(&v83, &qword_1ED643558);
    WebKit::WebsiteDataStore::parametersFromEachWebsiteDataStore(&v65, v23);
    if (HIDWORD(v81))
    {
      v25 = 0;
      v26 = v81;
      v27 = 768 * HIDWORD(v81);
      do
      {
        v28 = v26 + v25;
        if (*(v26 + v25 + 760) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v28 + 752));
        }

        if (*(v28 + 744) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v26 + v25 + 736));
        }

        v29 = v26 + v25;
        if (*(v26 + v25 + 728) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v29 + 720));
        }

        if (*(v29 + 712) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle((v26 + v25 + 704));
        }

        v30 = (v26 + v25);
        if (*(v26 + v25 + 696) == 1)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v30 + 86);
        }

        WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v30 + 4);
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(v30 + 2);
        v31 = *v30;
        if (*v30)
        {
          v32 = v26 + v25;
          *v32 = 0;
          *(v32 + 8) = 0;
          WTF::fastFree(v31, v24);
        }

        v25 += 768;
      }

      while (v27 != v25);
    }

    v35 = v81;
    if (v81)
    {
      *&v81 = 0;
      DWORD2(v81) = 0;
      WTF::fastFree(v35, v24);
    }

    *&v81 = v65;
    v36 = v66;
    v65 = 0;
    v66 = 0;
    *(&v81 + 1) = v36;
    WTF::Vector<WebKit::WebsiteDataStoreParameters,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v24);
    v38 = WTF::fastMalloc(v37, 0x10);
    *v38 = &unk_1F111F590;
    v38[1] = this;
    v65 = v38;
    WebKit::WebsiteDataStore::forEachWebsiteDataStore(&v65);
    (*(*v38 + 8))(v38);
    v80 = CFPreferencesGetAppBooleanValue(@"EnableModernDownloadProgress", @"com.apple.WebKit", 0) != 0;
    WebKit::WebProcessProxy::allowedFirstPartiesForCookies(&v65);
    if (HIDWORD(v82))
    {
      WTF::VectorDestructor<true,std::tuple<Inspector::BackendDispatcher::CommonErrorCode,WTF::String>>::destruct(v82, (v82 + 16 * HIDWORD(v82)));
    }

    v40 = v82;
    if (v82)
    {
      *&v82 = 0;
      DWORD2(v82) = 0;
      WTF::fastFree(v40, v39);
    }

    *&v82 = v65;
    v41 = v66;
    v65 = 0;
    v66 = 0;
    *(&v82 + 1) = v41;
    v42 = WTF::Vector<std::pair<WTF::ObjectIdentifierGeneric<WebCore::ProcessIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>,WebCore::RegistrableDomain>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v39);
    isFullWebBrowserOrRunningTest = WebKit::isFullWebBrowserOrRunningTest(v42);
    {
      *algn_1ED63B6A8 = 0u;
      *&qword_1ED63B6C8 = 0u;
      dword_1ED63B6B0 = 1;
      qword_1ED63B6B8 = 0;
      qword_1ED63B6C0 = 0;
      qword_1ED63B6C8 = 0;
      byte_1ED63B6D0 = 0;
      off_1ED63B6D8 = 0;
      *&dword_1ED63B6E0 = 0;
      WebKit::ListDataController<WebKit::StorageAccessPromptQuirkController,WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>::sharedSingleton(void)::sharedInstance = &unk_1F10EE4C0;
    }

    v43 = WTF::Vector<WebCore::OrganizationStorageAccessPromptQuirk,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(&v83 + 1, &off_1ED63B6D8);
    WebCore::ResourceRequestBase::defaultTimeoutInterval(v43);
    v85 = v44;
    WebKit::WebProcessPool::platformInitializeNetworkProcess(v69);
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v45 = *(this + 1);
    atomic_fetch_add(v45, 1u);
    v63[0] = v45;
    WebKit::AuxiliaryProcessProxy::initializationActivityAndGrant(&v63[1], this, v46);
    v48 = IPC::Encoder::operator new(0x238, v47);
    *v48 = 625;
    *(v48 + 68) = 0;
    *(v48 + 70) = 0;
    *(v48 + 69) = 0;
    *(v48 + 2) = 0;
    *(v48 + 3) = 0;
    *(v48 + 1) = 0;
    IPC::Encoder::encodeHeader(v48);
    v86 = v48;
    IPC::ArgumentCoder<WebKit::NetworkProcessCreationParameters,void>::encode(v48, v69);
    v49 = v64;
    v62 = *v63;
    v63[1] = 0;
    v64 = 0;
    v51 = WTF::fastMalloc(v50, 0x20);
    *v51 = &unk_1F111F5B8;
    *(v51 + 1) = v62;
    v51[3] = v49;
    if (WTF::ObjectIdentifierGeneric<IPC::AsyncReplyIDType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>::m_generationProtected == 1)
    {
      __break(0xC471u);
    }

    else
    {
      v52 = v51;
      IdentifierInternal = WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>::generateIdentifierInternal();
      v65 = v52;
      v66 = IdentifierInternal;
      LOBYTE(v67) = 1;
      WebKit::AuxiliaryProcessProxy::sendMessage(this, &v86, 0, &v65, 1);
      if (v67 == 1)
      {
        v55 = v65;
        v65 = 0;
        if (v55)
        {
          (*(*v55 + 8))(v55);
        }
      }

      v56 = v86;
      v86 = 0;
      if (v56)
      {
        IPC::Encoder::~Encoder(v56, v54);
        bmalloc::api::tzoneFree(v59, v60);
      }

      v57 = v64;
      v64 = 0;
      if (v57)
      {
        WTF::ThreadSafeRefCounted<WebKit::LaunchGrant,(WTF::DestructionThread)0>::deref(v57);
      }

      v58 = v63[1];
      v63[1] = 0;
      if (v58)
      {
        WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref(v58 + 2, v54);
      }

      WebKit::NetworkProcessCreationParameters::~NetworkProcessCreationParameters(v69, v54);
    }
  }

  else
  {
    WTF::WeakPtrFactory<WebPushD::PushServiceConnection,WTF::DefaultWeakPtrImpl>::initializeIfNeeded(this + 2, this);
    v33 = *(this + 1);
    v34 = WTF::fastMalloc(atomic_fetch_add(v33, 1u), 0x10);
    *v34 = &unk_1F111F568;
    v34[1] = v33;
    v69[0] = v34;
    WTF::callOnMainRunLoopAndWait();
    if (v69[0])
    {
      (*(*v69[0] + 8))(v69[0]);
    }
  }
}

uint64_t *WebKit::WebsiteDataStore::parametersFromEachWebsiteDataStore@<X0>(uint64_t **__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>)
{
  v38 = *MEMORY[0x1E69E9840];
  WebKit::allDataStores(this);
  *a1 = 0;
  a1[1] = 0;
  if (WebKit::allDataStores(void)::map && (v3 = *(WebKit::allDataStores(void)::map - 12), v3))
  {
    if (v3 >= 0x555556)
    {
      __break(0xC471u);
      goto LABEL_40;
    }

    v4 = (3 * v3);
    v5 = v4 << 8;
    v6 = WTF::fastMalloc(v4, (v4 << 8));
    *(a1 + 2) = v5 / 0x300;
    *a1 = v6;
  }

  else
  {
    v6 = 0;
  }

  result = WTF::HashTable<WTF::String,WTF::KeyValuePair<WTF::String,WTF::WallTime>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::String,WTF::WallTime>>,WTF::DefaultHash<WTF::String>,WTF::HashMap<WTF::String,WTF::WallTime,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::WallTime>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::begin(&WebKit::allDataStores(void)::map);
  v8 = result;
  v10 = v9;
  if (WebKit::allDataStores(void)::map)
  {
    v11 = (WebKit::allDataStores(void)::map + 16 * *(WebKit::allDataStores(void)::map - 4));
  }

  else
  {
    v11 = 0;
  }

  if (v11 != result)
  {
    v12 = 0;
    while (1)
    {
      v13 = *(v8[1] + 8);
      if (!v13)
      {
        break;
      }

      WebKit::WebsiteDataStore::parameters(&v23, v13);
      v14 = &v6[96 * v12];
      v15 = v23;
      v23 = 0;
      *v14 = v15;
      LODWORD(v15) = v24;
      v24 = 0;
      *(v14 + 2) = v15;
      LODWORD(v15) = v25;
      v25 = 0;
      *(v14 + 3) = v15;
      v16 = v26;
      v26 = 0;
      v14[2] = v16;
      WebKit::NetworkSessionCreationParameters::NetworkSessionCreationParameters((v14 + 4), v27);
      *(v14 + 688) = 0;
      *(v14 + 696) = 0;
      if (v29 == 1)
      {
        v18 = v28;
        v28 = 0;
        v14[86] = v18;
        *(v14 + 696) = 1;
      }

      *(v14 + 704) = 0;
      *(v14 + 712) = 0;
      if (v31 == 1)
      {
        v19 = v30;
        v30 = 0;
        v14[88] = v19;
        *(v14 + 712) = 1;
      }

      *(v14 + 720) = 0;
      *(v14 + 728) = 0;
      if (v33 == 1)
      {
        v20 = v32;
        v32 = 0;
        v14[90] = v20;
        *(v14 + 728) = 1;
      }

      *(v14 + 736) = 0;
      *(v14 + 744) = 0;
      if (v35 == 1)
      {
        v21 = v34;
        v34 = 0;
        v14[92] = v21;
        *(v14 + 744) = 1;
      }

      *(v14 + 752) = 0;
      *(v14 + 760) = 0;
      if (v37 == 1)
      {
        v22 = v36;
        v36 = 0;
        v14[94] = v22;
        *(v14 + 760) = 1;
        if (v37)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v36);
        }
      }

      if (v35 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v34);
      }

      if (v33 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v32);
      }

      if (v31 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v30);
      }

      if (v29 == 1)
      {
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v28);
      }

      WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v27);
      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v26);
      result = v23;
      if (v23)
      {
        v23 = 0;
        v24 = 0;
        result = WTF::fastFree(result, v17);
      }

      do
      {
        v8 += 2;
      }

      while (v8 != v10 && (*v8 + 1) <= 1);
      ++v12;
      if (v8 == v11)
      {
        *(a1 + 3) = v12;
        return result;
      }
    }

    *(a1 + 3) = v12;
    __break(0xC471u);
LABEL_40:
    JUMPOUT(0x19D5AA708);
  }

  return result;
}

uint64_t *IPC::Decoder::create@<X0>(uint64_t *__return_ptr a1@<X8>, WTF *this@<X1>, const void *a3@<X0>, _DWORD *a4@<X2>)
{
  v5 = this;
  v17 = *MEMORY[0x1E69E9840];
  WTF::tryFastMalloc(__dst, this);
  v8 = *__dst;
  if (*__dst)
  {
    memcpy(*__dst, a3, v5);
  }

  else
  {
    v15 = qword_1ED6416C8;
    if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
    {
      *__dst = 134217984;
      *&__dst[4] = v5;
      _os_log_fault_impl(&dword_19D52D000, v15, OS_LOG_TYPE_FAULT, "Decoder::copyBuffer: tryMalloc(%lu) failed", __dst, 0xCu);
    }

    v5 = 0;
  }

  WTF::fastFree(0, v9);
  v11 = WTF::fastMalloc(v10, 0x18);
  *v11 = &unk_1F11475C0;
  v11[1] = v8;
  v11[2] = v5;
  *__dst = v11;
  IPC::Decoder::create(v8, v5, __dst, a4, a1);
  if (*__dst)
  {
    (*(**__dst + 8))(*__dst);
  }

  WTF::fastFree(0, v12);
  return WTF::fastFree(0, v13);
}

void WebKit::WebsiteDataStore::parameters(uint64_t *__return_ptr a1@<X8>, WebKit::WebsiteDataStore *this@<X0>)
{
  v279[5] = *MEMORY[0x1E69E9840];
  a1[2] = 0;
  *a1 = 0u;
  a1[4] = 1;
  a1[6] = 0;
  *(a1 + 7) = 0u;
  *(a1 + 72) = 1;
  a1[14] = 0;
  a1[10] = 0;
  *(a1 + 11) = 0u;
  *(a1 + 104) = 0;
  v213 = a1 + 4;
  v214 = a1 + 14;
  WTF::URL::invalidate((a1 + 14));
  a1[19] = 0;
  WTF::URL::invalidate((a1 + 19));
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 112) = 0;
  a1[40] = 0;
  *(a1 + 41) = 0u;
  a1[43] = 0x100000000;
  *(a1 + 88) = 256;
  *(a1 + 356) = 0;
  *(a1 + 360) = 0;
  a1[50] = 0;
  *(a1 + 380) = 0;
  *(a1 + 387) = 0;
  *(a1 + 364) = 0u;
  *(a1 + 408) = 2;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  *(a1 + 67) = 0u;
  *(a1 + 69) = 0u;
  *(a1 + 63) = 0u;
  *(a1 + 65) = 0u;
  *(a1 + 61) = 0u;
  *(a1 + 142) = 257;
  *(a1 + 576) = 0;
  *(a1 + 592) = 0;
  *(a1 + 75) = 0u;
  *(a1 + 308) = 0;
  *(a1 + 618) = 1;
  *(a1 + 619) = 0;
  *(a1 + 39) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 41) = 0u;
  *(a1 + 665) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = 0;
  *(a1 + 704) = 0;
  *(a1 + 712) = 0;
  *(a1 + 720) = 0;
  *(a1 + 728) = 0;
  *(a1 + 736) = 0;
  *(a1 + 744) = 0;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0;
  v4 = WebKit::WebsiteDataStore::resolvedDirectories(this);
  v5 = v4;
  v6 = *(v4 + 15);
  if (v6)
  {
    atomic_fetch_add_explicit(v6, 2u, memory_order_relaxed);
  }

  v238 = 0;
  v239 = v6;
  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v4, &v239, &v238, 1);
  v8 = *(v5 + 14);
  if (v8)
  {
    atomic_fetch_add_explicit(v8, 2u, memory_order_relaxed);
  }

  v236 = 0;
  v237 = v8;
  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v7, &v237, &v236, 1);
  v10 = *(v5 + 8);
  if (v10)
  {
    atomic_fetch_add_explicit(v10, 2u, memory_order_relaxed);
  }

  v234 = 0;
  v235 = v10;
  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v9, &v235, &v234, 1);
  if (*(this + 3) <= -2)
  {
    v12 = MEMORY[0x1E696EBA8];
  }

  else
  {
    v12 = (v5 + 160);
  }

  v13 = *v12;
  if (v13)
  {
    atomic_fetch_add_explicit(v13, 2u, memory_order_relaxed);
    v232 = 0;
    v233 = v13;
    if (v13[1])
    {
      WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v11, &v233, &v232, 1);
    }
  }

  else
  {
    v232 = 0;
    v233 = 0;
  }

  v14 = atomic_load(WebKit::WebsiteDataStore::isAppBoundITPRelaxationEnabled);
  if (v14 & 1) != 0 && (v15 = atomic_load(WebKit::hasInitializedAppBoundDomains), (v15))
  {
    {
      WebKit::appBoundDomains(void)::appBoundDomains = 0;
    }

    WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>::HashSet<WTF::HashSet<WebCore::RegistrableDomain,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTableTraits,(WTF::ShouldValidateKey)1>&>(v242, &WebKit::appBoundDomains(void)::appBoundDomains);
    v16 = v242[0];
  }

  else
  {
    v16 = 0;
  }

  v231 = 0;
  v17 = atomic_load(WebKit::hasInitializedManagedDomains);
  if (v17)
  {
    {
      WebKit::managedDomains(void)::managedDomains = 0;
    }

    WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::operator=(&v231, &WebKit::managedDomains(void)::managedDomains);
  }

  v230 = 0;
  v18 = WTF::HashTable<WTF::URL,WTF::URL,WTF::IdentityExtractor,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::FastMalloc>::begin(this + 66);
  v19 = v18;
  v21 = v20;
  v22 = *(this + 66);
  if (v22)
  {
    v23 = (v22 + 40 * *(v22 - 4));
  }

  else
  {
    v23 = 0;
  }

  if (v23 != v18)
  {
    do
    {
      WebCore::RegistrableDomain::RegistrableDomain(v218, v19);
      WTF::HashTable<WebCore::RegistrableDomain,WebCore::RegistrableDomain,WTF::IdentityExtractor,WTF::DefaultHash<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::HashTraits<WebCore::RegistrableDomain>,WTF::FastMalloc>::add<(WTF::ShouldValidateKey)1>(&v230, v218, v24, v242);
      v26 = v218[0];
      v218[0] = 0;
      if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, v25);
      }

      do
      {
        v19 = (v19 + 40);
      }

      while (v19 != v21 && ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v19) & 1) != 0 || *v19 == -1));
    }

    while (v19 != v23);
  }

  v28 = v238;
  v27 = v239;
  v238 = 0;
  v239 = 0;
  v218[0] = v27;
  v218[1] = v28;
  if (*(this + 289))
  {
    LOBYTE(v29) = *(this + 289) == 2;
  }

  else
  {
    v29 = *(*(this + 28) + 544);
    if ((v29 & 0x100) == 0)
    {
      LOBYTE(v29) = WebKit::doesAppHaveTrackingPreventionEnabled(v29);
    }
  }

  v219 = v29 & 1;
  v220 = *(this + 37) != 0;
  v221 = 0;
  v222 = *(this + 288);
  v223 = WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(this);
  v224 = 0;
  v225 = 0;
  v226 = v16;
  v31 = v230;
  v30 = v231;
  v230 = 0;
  v231 = 0;
  v227 = v30;
  v228 = v31;
  v229 = 0;
  v242[0] = 1;
  memset(&v242[2], 0, 24);
  v243 = 1;
  v247[0] = 0;
  v244 = 0;
  v245 = 0u;
  v246 = 0;
  WTF::URL::invalidate(v247);
  v248[0] = 0;
  WTF::URL::invalidate(v248);
  LOBYTE(v255) = 0;
  v256 = 0;
  *v252 = 0u;
  *v253 = 0u;
  LOBYTE(v254) = 0;
  v249 = 0u;
  *v250 = 0u;
  v251 = 0;
  v258 = 0u;
  v257 = 0;
  *&v259 = 0x100000000;
  DWORD2(v259) = 256;
  BYTE12(v259) = 0;
  v260[0] = 0;
  *&v260[40] = 0;
  *&v260[20] = 0;
  *&v260[27] = 0;
  *&v260[4] = 0u;
  LOBYTE(v261) = 2;
  LOBYTE(v262) = 0;
  BYTE8(v262) = 0;
  LOBYTE(v263) = 0;
  BYTE8(v263) = 0;
  v264[0] = 0;
  v264[8] = 0;
  v264[16] = 0;
  v264[24] = 0;
  v268 = 0u;
  v269 = 0u;
  v266 = 0u;
  v267 = 0u;
  v265 = 0u;
  v270 = 257;
  LOBYTE(v271) = 0;
  v272 = 0;
  v273 = 0u;
  v274 = 0;
  v275 = 1;
  v276 = 0;
  v277 = 0u;
  v278 = 0u;
  memset(v279, 0, 25);
  v242[0] = *(this + 3);
  v33 = *(this + 28);
  v34 = *(v33 + 32);
  LOBYTE(v242[2]) = v34;
  *(&v242[2] + 1) = v34 >> 8;
  HIBYTE(v242[3]) = HIBYTE(v34);
  *(&v242[3] + 5) = HIDWORD(v34) >> 8;
  *(&v242[3] + 1) = *(&v34 + 1) >> 8;
  v35 = *(v33 + 328);
  if (v35)
  {
    atomic_fetch_add_explicit(v35, 2u, memory_order_relaxed);
  }

  v36 = v242[4];
  v242[4] = v35;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v32);
  }

  v37 = *(this + 28);
  v243 = *(v37 + 426);
  v251 = *(v37 + 424);
  v38 = *(v37 + 512);
  if (v38)
  {
    atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
  }

  v39 = *(v37 + 32);
  if (*(v37 + 32) == 0)
  {
    LOBYTE(v39) = 0;
    v40 = 0;
  }

  else
  {
    *&v240 = *(v37 + 33);
    *(&v240 + 7) = *(v37 + 40);
    v40 = 1;
  }

  v41 = v252[0];
  if (v252[0])
  {
    v252[0] = 0;
    LODWORD(v252[1]) = 0;
    WTF::fastFree(v41, v32);
  }

  v252[0] = 0;
  v252[1] = 0;
  v42 = v253[0];
  v253[0] = 0;
  if (v42 && atomic_fetch_add_explicit(v42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v42, v32);
  }

  v43 = v253[1];
  v253[1] = v38;
  if (v43 && atomic_fetch_add_explicit(v43, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v43, v32);
  }

  LOBYTE(v254) = v39;
  *(&v254 + 1) = v240;
  *(&v254 + 1) = *(&v240 + 7);
  LOBYTE(v255) = v40;
  v256 = 0;
  v44 = v237;
  v237 = 0;
  v45 = v257;
  v257 = v44;
  if (v45 && atomic_fetch_add_explicit(v45, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v45, v32);
  }

  v46 = v236;
  v236 = 0;
  v47 = v258;
  *&v258 = v46;
  if (v47)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v47);
    bmalloc::api::tzoneFree(v207, v208);
  }

  v48 = v235;
  v235 = 0;
  v49 = v250[0];
  v250[0] = v48;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, v32);
  }

  v50 = v234;
  v234 = 0;
  v51 = v250[1];
  v250[1] = v50;
  if (v51)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v51);
    bmalloc::api::tzoneFree(v209, v210);
  }

  v52 = *(*(this + 28) + 336);
  if (v52)
  {
    atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
  }

  v53 = *(&v258 + 1);
  *(&v258 + 1) = v52;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v32);
  }

  v54 = *(this + 28);
  LOBYTE(v259) = *(v54 + 428);
  BYTE1(v259) = *(v54 + 304);
  BYTE2(v259) = *(v54 + 430);
  BYTE3(v259) = *(v54 + 305);
  DWORD1(v259) = *(v54 + 444);
  WORD4(v259) = *(v54 + 431);
  WebKit::ResourceLoadStatisticsParameters::operator=(&v273, v218);
  v56 = *(this + 28);
  WORD5(v259) = *(v56 + 434);
  v57 = *(v56 + 436);
  HIDWORD(v259) = v57;
  v260[0] = BYTE4(v57);
  v260[4] = *(v56 + 433);
  v260[7] = *(v56 + 489);
  v58 = *(v56 + 496);
  if (v58)
  {
    atomic_fetch_add_explicit(v58, 2u, memory_order_relaxed);
  }

  v59 = *&v260[8];
  *&v260[8] = v58;
  if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v59, v55);
  }

  v60 = *(*(this + 28) + 504);
  if (v60)
  {
    atomic_fetch_add_explicit(v60, 2u, memory_order_relaxed);
  }

  v61 = *&v260[16];
  *&v260[16] = v60;
  if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v61, v55);
  }

  v62 = *(*(this + 28) + 512);
  if (v62)
  {
    atomic_fetch_add_explicit(v62, 2u, memory_order_relaxed);
  }

  v63 = *&v260[24];
  *&v260[24] = v62;
  if (v63 && atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v63, v55);
  }

  v260[33] = WebKit::WebsiteDataStore::isOptInCookiePartitioningEnabled(this);
  *&v260[40] = *(this + 69);
  v65 = *(this + 28);
  LOBYTE(v261) = *(v65 + 17);
  *(&v261 + 1) = *(v65 + 232);
  v66 = *(v65 + 248);
  *&v262 = *(v65 + 240);
  BYTE8(v262) = v66;
  v67 = *(v65 + 264);
  *&v263 = *(v65 + 256);
  BYTE8(v263) = v67;
  v68 = *(v65 + 280);
  *v264 = *(v65 + 272);
  v264[8] = v68;
  v70 = *(v65 + 288);
  v69 = *(v65 + 296);
  *&v264[16] = v70;
  v264[24] = v69;
  v71 = *(v5 + 11);
  if (v71)
  {
    atomic_fetch_add_explicit(v71, 2u, memory_order_relaxed);
  }

  v72 = v265;
  *&v265 = v71;
  if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v72 = WTF::StringImpl::destroy(v72, v64);
  }

  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v72, &v265, &v265 + 1, 1);
  v74 = *(v5 + 9);
  if (v74)
  {
    atomic_fetch_add_explicit(v74, 2u, memory_order_relaxed);
  }

  v75 = v266;
  *&v266 = v74;
  if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v75 = WTF::StringImpl::destroy(v75, v73);
  }

  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v75, &v266, &v266 + 1, 1);
  v77 = *(v5 + 7);
  if (v77)
  {
    atomic_fetch_add_explicit(v77, 2u, memory_order_relaxed);
  }

  v78 = v268;
  *&v268 = v77;
  if (v78 && atomic_fetch_add_explicit(v78, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v78 = WTF::StringImpl::destroy(v78, v76);
  }

  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v78, &v268, &v268 + 1, 1);
  v80 = *(v5 + 3);
  if (v80)
  {
    atomic_fetch_add_explicit(v80, 2u, memory_order_relaxed);
  }

  v81 = v267;
  *&v267 = v80;
  if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v81 = WTF::StringImpl::destroy(v81, v79);
  }

  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v81, &v267, &v267 + 1, 1);
  v83 = *(v5 + 17);
  if (v83)
  {
    atomic_fetch_add_explicit(v83, 2u, memory_order_relaxed);
  }

  v84 = v269;
  *&v269 = v83;
  if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    v84 = WTF::StringImpl::destroy(v84, v82);
  }

  WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v84, &v269, &v269 + 1, 1);
  v86 = *(this + 28);
  LOBYTE(v270) = *(v86 + 429);
  BYTE1(v270) = *(this + 480);
  BYTE2(v270) = *(this + 520);
  HIBYTE(v270) = *(v86 + 491);
  if (v272 == *(this + 512))
  {
    v87 = (this + 496);
    if ((this + 496) != &v271 && v272)
    {
      v85 = *(this + 127);
      if (HIDWORD(v271) <= v85)
      {
        if (v85 > DWORD2(v271))
        {
          WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v271, 0);
          WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::reserveCapacity<(WTF::FailureAction)0>(&v271, *(this + 127));
        }
      }

      else
      {
        WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrink(&v271, v85);
      }

      v96 = *v87;
      v97 = HIDWORD(v271);
      v98 = v271;
      if (HIDWORD(v271))
      {
        v99 = v96 + 48 * HIDWORD(v271);
        do
        {
          WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::operator=(v98, v96);
          v100 = *(v96 + 32);
          *(v98 + 16) = *(v96 + 16);
          *(v98 + 32) = v100;
          v96 += 48;
          v98 += 48;
        }

        while (v96 != v99);
        v96 = *v87;
        v97 = HIDWORD(v271);
        v98 = v271;
      }

      v101 = *(this + 127);
      if (v97 != v101)
      {
        v102 = v98 + 48 * v97;
        v103 = v96 + 48 * v97;
        v104 = 48 * v101 - 48 * v97;
        do
        {
          v102 = std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](v102, v103, v97) + 48;
          v103 += 48;
          v104 -= 48;
        }

        while (v104);
        LODWORD(v97) = *(this + 127);
      }

      HIDWORD(v271) = v97;
    }
  }

  else if (v272)
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v271, v85);
    v272 = 0;
  }

  else
  {
    v88 = *(this + 127);
    *&v271 = 0;
    DWORD2(v271) = 0;
    HIDWORD(v271) = v88;
    if (v88)
    {
      if (v88 >= 0x5555556)
      {
        __break(0xC471u);
        return;
      }

      v89 = (3 * v88);
      v90 = 16 * v89;
      v91 = WTF::fastMalloc(v89, (16 * v89));
      DWORD2(v271) = v90 / 0x30;
      *&v271 = v91;
      v92 = *(this + 127);
      if (v92)
      {
        v93 = *(this + 62);
        v94 = (3 * v92);
        v95 = 16 * v94;
        do
        {
          v91 = (std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>::pair[abi:sn200100](v91, v93, v94) + 48);
          v93 += 48;
          v95 -= 48;
        }

        while (v95);
      }
    }

    v272 = 1;
  }

  v105 = v279[1];
  v279[1] = v233;
  if (v105 && atomic_fetch_add_explicit(v105, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v105, v85);
  }

  v106 = v232;
  v232 = 0;
  v107 = v279[2];
  v279[2] = v106;
  if (v107)
  {
    WebKit::SandboxExtensionImpl::~SandboxExtensionImpl(v107);
    bmalloc::api::tzoneFree(v211, v212);
  }

  LOBYTE(v279[3]) = *(*(this + 28) + 427);
  v108 = *&v242[2];
  *v213 = *v242;
  *(v213 + 1) = v108;
  v109 = v242[4];
  v242[4] = 0;
  v110 = a1[8];
  a1[8] = v109;
  if (v110 && atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v110, v85);
  }

  *(a1 + 72) = v243;
  v111 = v244;
  v244 = 0;
  v112 = a1[10];
  a1[10] = v111;
  if (v112)
  {
    CFRelease(v112);
  }

  v113 = v245;
  *&v245 = 0;
  v114 = a1[11];
  a1[11] = v113;
  if (v114 && atomic_fetch_add_explicit(v114, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v114, v85);
  }

  v115 = *(&v245 + 1);
  *(&v245 + 1) = 0;
  v116 = a1[12];
  a1[12] = v115;
  if (v116 && atomic_fetch_add_explicit(v116, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v116, v85);
  }

  *(a1 + 104) = v246;
  WTF::URL::operator=(v214, v247);
  WTF::URL::operator=(a1 + 19, v248);
  v118 = v249;
  *&v249 = 0;
  v119 = a1[24];
  a1[24] = v118;
  if (v119 && atomic_fetch_add_explicit(v119, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v119, v117);
  }

  v120 = *(&v249 + 1);
  *(&v249 + 1) = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 25, v120);
  v122 = v250[0];
  v250[0] = 0;
  v123 = a1[26];
  a1[26] = v122;
  if (v123 && atomic_fetch_add_explicit(v123, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v123, v121);
  }

  v124 = v250[1];
  v250[1] = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 27, v124);
  *(a1 + 112) = v251;
  v126 = a1[30];
  if (v126)
  {
    a1[30] = 0;
    *(a1 + 62) = 0;
    WTF::fastFree(v126, v125);
  }

  a1[30] = v252[0];
  v127 = v252[1];
  v252[0] = 0;
  v252[1] = 0;
  a1[31] = v127;
  v128 = v253[0];
  v253[0] = 0;
  v129 = a1[32];
  a1[32] = v128;
  if (v129 && atomic_fetch_add_explicit(v129, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v129, v125);
  }

  v130 = v253[1];
  v253[1] = 0;
  v131 = a1[33];
  a1[33] = v130;
  if (v131 && atomic_fetch_add_explicit(v131, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v131, v125);
  }

  v132 = v255;
  *(a1 + 17) = v254;
  *(a1 + 18) = v132;
  *(a1 + 304) = v256;
  v133 = v257;
  v257 = 0;
  v134 = a1[40];
  a1[40] = v133;
  if (v134 && atomic_fetch_add_explicit(v134, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v134, v125);
  }

  v135 = v258;
  *&v258 = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 41, v135);
  v137 = *(&v258 + 1);
  *(&v258 + 1) = 0;
  v138 = a1[42];
  a1[42] = v137;
  if (v138 && atomic_fetch_add_explicit(v138, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v138, v136);
  }

  *(a1 + 43) = v259;
  v139 = *&v260[8];
  *&v260[8] = 0;
  v140 = a1[46];
  a1[45] = *v260;
  a1[46] = v139;
  if (v140 && atomic_fetch_add_explicit(v140, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v140, v136);
  }

  v141 = *&v260[16];
  *&v260[16] = 0;
  v142 = a1[47];
  a1[47] = v141;
  if (v142 && atomic_fetch_add_explicit(v142, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v142, v136);
  }

  v143 = *&v260[24];
  *&v260[24] = 0;
  v144 = a1[48];
  a1[48] = v143;
  if (v144 && atomic_fetch_add_explicit(v144, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v144, v136);
  }

  v145 = v263;
  *(a1 + 53) = v262;
  *(a1 + 55) = v145;
  *(a1 + 57) = *v264;
  *(a1 + 465) = *&v264[9];
  v146 = v261;
  *(a1 + 49) = *&v260[32];
  *(a1 + 51) = v146;
  v147 = v265;
  *&v265 = 0;
  v148 = a1[61];
  a1[61] = v147;
  if (v148 && atomic_fetch_add_explicit(v148, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v148, v136);
  }

  v149 = *(&v265 + 1);
  *(&v265 + 1) = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 62, v149);
  v151 = v266;
  *&v266 = 0;
  v152 = a1[63];
  a1[63] = v151;
  if (v152 && atomic_fetch_add_explicit(v152, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v152, v150);
  }

  v153 = *(&v266 + 1);
  *(&v266 + 1) = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 64, v153);
  v155 = v267;
  *&v267 = 0;
  v156 = a1[65];
  a1[65] = v155;
  if (v156 && atomic_fetch_add_explicit(v156, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v156, v154);
  }

  v157 = *(&v267 + 1);
  *(&v267 + 1) = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 66, v157);
  v159 = v268;
  *&v268 = 0;
  v160 = a1[67];
  a1[67] = v159;
  if (v160 && atomic_fetch_add_explicit(v160, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v160, v158);
  }

  v161 = *(&v268 + 1);
  *(&v268 + 1) = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 68, v161);
  v163 = v269;
  *&v269 = 0;
  v164 = a1[69];
  a1[69] = v163;
  if (v164 && atomic_fetch_add_explicit(v164, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v164, v162);
  }

  v165 = *(&v269 + 1);
  *(&v269 + 1) = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 70, v165);
  *(a1 + 142) = v270;
  if (*(a1 + 592) == v272)
  {
    if (*(a1 + 592))
    {
      v168 = *(a1 + 147);
      v169 = a1[72];
      if (v168)
      {
        v170 = 48 * v168;
        do
        {
          v171 = *v169;
          if (*v169)
          {
            *v169 = 0;
            *(v169 + 2) = 0;
            WTF::fastFree(v171, v166);
          }

          v169 = (v169 + 48);
          v170 -= 48;
        }

        while (v170);
        v169 = a1[72];
      }

      if (v169)
      {
        a1[72] = 0;
        *(a1 + 146) = 0;
        WTF::fastFree(v169, v166);
      }

      *&v167 = 0;
      v172 = v271;
      v271 = v167;
      *(a1 + 36) = v172;
    }
  }

  else if (*(a1 + 592))
  {
    WTF::Vector<std::pair<WTF::Vector<unsigned char,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>,std::optional<WTF::UUID>>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector((a1 + 72), v166);
    *(a1 + 592) = 0;
  }

  else
  {
    *&v167 = 0;
    v173 = v271;
    v271 = v167;
    *(a1 + 36) = v173;
    *(a1 + 592) = 1;
  }

  WebKit::ResourceLoadStatisticsParameters::operator=((a1 + 75), &v273);
  v175 = v279[1];
  v279[1] = 0;
  v176 = a1[83];
  a1[83] = v175;
  if (v176 && atomic_fetch_add_explicit(v176, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v176, v174);
  }

  v177 = v279[2];
  v279[2] = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 84, v177);
  *(a1 + 680) = v279[3];
  if (*(this + 289))
  {
    LOBYTE(v178) = *(this + 289) == 2;
  }

  else
  {
    v178 = *(*(this + 28) + 544);
    if ((v178 & 0x100) == 0)
    {
      LOBYTE(v178) = WebKit::doesAppHaveTrackingPreventionEnabled(v178);
    }
  }

  *(a1 + 616) = v178 & 1;
  WebKit::WebsiteDataStore::platformSetNetworkParameters(this, a1);
  *(a1 + 365) = WebKit::WebsiteDataStore::useNetworkLoader(v179);
  if (*(this + 3) > -2)
  {
    v217 = 0;
    v181 = WebKit::WebsiteDataStore::resolvedCookieStorageDirectory(&v240, this, v180);
    WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v181, &v240, &v217, 1);
    v183 = v240;
    *&v240 = 0;
    if (v183 && atomic_fetch_add_explicit(v183, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v183, v182);
    }

    v184 = *(a1 + 696);
    v185 = v217;
    v217 = 0;
    if (v184 == 1)
    {
      std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 86, v185);
    }

    else
    {
      a1[86] = v185;
      *(a1 + 696) = 1;
    }

    v216 = 0;
    v186 = WebKit::WebsiteDataStore::resolvedContainerCachesNetworkingDirectory(&v240, this, v185);
    WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v186, &v240, &v216, 1);
    v188 = v240;
    *&v240 = 0;
    if (v188 && atomic_fetch_add_explicit(v188, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v188, v187);
    }

    v189 = *(a1 + 712);
    v190 = v216;
    v216 = 0;
    if (v189 == 1)
    {
      std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 88, v190);
    }

    else
    {
      a1[88] = v190;
      *(a1 + 712) = 1;
    }

    v215 = 0;
    v191 = WebKit::WebsiteDataStore::parentBundleDirectory(&v240, this);
    WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(v191, &v240, &v215, 0);
    v193 = v240;
    *&v240 = 0;
    if (v193 && atomic_fetch_add_explicit(v193, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v193, v192);
    }

    v194 = *(a1 + 728);
    v195 = v215;
    v215 = 0;
    if (v194 == 1)
    {
      std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 90, v195);
    }

    else
    {
      a1[90] = v195;
      *(a1 + 728) = 1;
    }

    WebKit::SandboxExtension::createHandleForTemporaryFile("com.apple.WebKit.Networking", 0x10000001BLL, 1, &v240);
    if (v241 == 1)
    {
      v196 = *(a1 + 744);
      v197 = v240;
      *&v240 = 0;
      if (v196 == 1)
      {
        std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 92, v197);
        if ((v241 & 1) == 0)
        {
          goto LABEL_245;
        }
      }

      else
      {
        a1[92] = v197;
        *(a1 + 744) = 1;
      }

      v198 = *(&v240 + 1);
      *(&v240 + 1) = 0;
      if (v198 && atomic_fetch_add_explicit(v198, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v198, v197);
      }

      WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v240);
    }

LABEL_245:
    v199 = *MEMORY[0x1E696EBA8];
    if (*MEMORY[0x1E696EBA8])
    {
      v200 = *(v199 + 8);
      v201 = *(v199 + 4) | (((*(v199 + 16) >> 2) & 1) << 32);
    }

    else
    {
      v200 = 0;
      v201 = 0x100000000;
    }

    WebKit::SandboxExtension::createHandleForTemporaryFile(v200, v201, 0, &v240);
    if (v241 != 1)
    {
      goto LABEL_256;
    }

    v202 = *(a1 + 760);
    v203 = v240;
    *&v240 = 0;
    if (v202 == 1)
    {
      std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a1 + 94, v203);
      if ((v241 & 1) == 0)
      {
LABEL_256:
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v215);
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v216);
        WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v217);
        goto LABEL_257;
      }
    }

    else
    {
      a1[94] = v203;
      *(a1 + 760) = 1;
    }

    v204 = *(&v240 + 1);
    *(&v240 + 1) = 0;
    if (v204 && atomic_fetch_add_explicit(v204, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v204, v203);
    }

    WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v240);
    goto LABEL_256;
  }

LABEL_257:
  WebKit::NetworkSessionCreationParameters::~NetworkSessionCreationParameters(v242);
  WebKit::ResourceLoadStatisticsParameters::~ResourceLoadStatisticsParameters(v218, v205);
  if (v230)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v230, v206);
  }

  if (v231)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v231, v206);
  }

  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v232);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v234);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v236);
  WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v238);
}

void IPC::Decoder::create(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, _DWORD *a4@<X3>, uint64_t *a5@<X8>)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v10 = IPC::Decoder::operator new(0x58, a2);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a1;
    v11 = *a3;
    *a3 = 0;
    *(v10 + 24) = v11;
    *(v10 + 40) = 0;
    *(v10 + 32) = 0;
    WTF::VectorBuffer<WTF::String,0ul,WTF::FastMalloc>::adopt(v10 + 32, a4);
    *(v10 + 48) = 276824064;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    v12 = *v10;
    if ((*v10 & 7) == 0)
    {
      v13 = *(v10 + 8);
      v14 = *(v10 + 16);
      if (v13 <= v14 - v12)
      {
LABEL_31:
        IPC::Decoder::markInvalid(v10);
        goto LABEL_32;
      }

      *(v10 + 16) = v14 + 1;
      if (!v14)
      {
        goto LABEL_32;
      }

      v15 = *v14;
      if (v15 >= 0x10)
      {
        goto LABEL_33;
      }

      *(v10 + 48) = v15;
      v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
      v17 = ((v14 & 0xFFFFFFFFFFFFFFFELL) + 2);
      if (v13 < v17 - v12 || v13 - (v17 - v12) <= 1)
      {
        goto LABEL_31;
      }

      *(v10 + 16) = v16 + 4;
      if (!v17)
      {
LABEL_32:
        IPC::Decoder::markInvalid(v10);
        goto LABEL_33;
      }

      v19 = *v17;
      if (v19 >> 7 < 0x21)
      {
        *(v10 + 50) = v19;
        v20 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
        v21 = v20 - v12;
        v22 = v13 >= v21;
        v23 = v13 - v21;
        if (!v22 || v23 <= 7)
        {
          goto LABEL_32;
        }

        *(v10 + 16) = v20 + 1;
        if (v20 && *v20 != -1)
        {
          *(v10 + 56) = *v20;
          if (v19 >= 0xF8F)
          {
            v25 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteImageBufferSetIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(v10);
            if (v26)
            {
              *(v10 + 64) = v25;
            }
          }

          goto LABEL_21;
        }
      }
    }

LABEL_33:
    IPC::Decoder::markInvalid(v10);
LABEL_21:
    if (*v10)
    {
      *a5 = v10;
    }

    else
    {
      *a5 = 0;
      IPC::Decoder::~Decoder(v10);

      bmalloc::api::tzoneFree(v10, v28);
    }

    return;
  }

  v27 = qword_1ED6416C8;
  if (os_log_type_enabled(qword_1ED6416C8, OS_LOG_TYPE_FAULT))
  {
    v29 = 134217984;
    v30 = a2;
    _os_log_fault_impl(&dword_19D52D000, v27, OS_LOG_TYPE_FAULT, "Decoder::create() called with a null buffer (buffer size: %lu)", &v29, 0xCu);
  }

  *a5 = 0;
}

atomic_uchar *WebKit::WebsiteDataStore::resolvedDirectories(atomic_uchar *this)
{
  v2 = 0;
  v3 = this + 32;
  atomic_compare_exchange_strong_explicit(this + 32, &v2, 1u, memory_order_acquire, memory_order_acquire);
  if (v2)
  {
    MEMORY[0x19EB01E30](this + 32);
  }

  if ((this[208] & 1) == 0)
  {
    if (this[34] != 1)
    {
      __break(0xC471u);
      JUMPOUT(0x19D5ABFDCLL);
    }

    do
    {
      v6 = 0x7FF0000000000000;
      v7 = 0;
      WTF::Condition::waitUntilUnchecked<WTF::Lock>((this + 33), v3, &v6);
    }

    while (this[208] != 1);
  }

  v4 = 1;
  atomic_compare_exchange_strong_explicit(v3, &v4, 0, memory_order_release, memory_order_relaxed);
  if (v4 != 1)
  {
    WTF::Lock::unlockSlow(v3);
  }

  return this + 40;
}

uint64_t IPC::Decoder::operator new(IPC::Decoder *this, void *a2)
{
  if (this == 88 && IPC::Decoder::s_heapRef)
  {
    return bmalloc::api::tzoneAllocateNonCompact(IPC::Decoder::s_heapRef, a2);
  }

  else
  {
    return IPC::Decoder::operatorNewSlow(this);
  }
}

void WebKit::WebsiteDataStore::createHandleFromResolvedPathIfPossible(uint64_t a1, uint64_t *a2, WebKit::SandboxExtensionImpl **a3, void *a4)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 + 4);
    if (v5)
    {
      WebKit::SandboxExtension::createHandleWithoutResolvingPath(*(v4 + 8), (v5 | (((*(v4 + 16) >> 2) & 1) << 32)), a4, &v8);
      if (v9 == 1)
      {
        v7 = v8;
        v8 = 0;
        std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100](a3, v7);
        if (v9)
        {
          WebKit::SandboxExtensionHandle::~SandboxExtensionHandle(&v8);
        }
      }
    }
  }
}

void IPC::Decoder::takeLastAttachment(uint64_t *__return_ptr a1@<X8>, IPC::Decoder *this@<X0>)
{
  if (*(this + 11))
  {
    WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::takeLast(this + 32);
    WTF::MachSendRight::MachSendRight();
    *(a1 + 4) = 1;
    WTF::MachSendRight::~MachSendRight(v3);
  }

  else
  {
    IPC::Decoder::markInvalid(this);
    *a1 = 0;
    *(a1 + 4) = 0;
  }
}

void IPC::Decoder::~Decoder(IPC::Decoder *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    *this = 0;
    *(this + 1) = 0;
    v4 = *(this + 3);
    if (v4 && v3 != 0)
    {
      (*(*v4 + 16))(v4);
    }
  }

  v6 = *(this + 9);
  if (v6)
  {
    *(this + 9) = 0;
    *(this + 20) = 0;
    WTF::fastFree(v6, v2);
  }

  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(this + 32, v2);
  v7 = *(this + 3);
  *(this + 3) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }
}

uint64_t WebKit::WebsiteDataStore::thirdPartyCookieBlockingMode(WebKit::WebsiteDataStore *this)
{
  if (*(this + 449) == 1)
  {
    LOBYTE(v2) = *(this + 448);
  }

  else
  {
    {
      goto LABEL_11;
    }

    while (1)
    {
      v4 = WebKit::optionalExperimentalFeatureEnabled(&WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::key, 0x100uLL);
      if ((v4 & 0x100) != 0)
      {
        break;
      }

      __break(1u);
LABEL_11:
      atomic_fetch_add_explicit(WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::$_0::operator() const(void)::impl, 2u, memory_order_relaxed);
      WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::key = WebKit::WebPreferencesKey::isThirdPartyCookieBlockingDisabledKey(void)::$_0::operator() const(void)::impl;
      v3[3168] = 1;
    }

    if (v4)
    {
      v2 = 260;
    }

    else
    {
      v2 = 256;
    }

    *(this + 224) = v2;
  }

  return v2;
}

uint64_t WebKit::optionalExperimentalFeatureEnabled(atomic_uint **a1, unint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = *a1;
  if (v5)
  {
    atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v12, v5);
    if (atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v5, v6);
    }
  }

  else
  {
    v12 = &stru_1F1147748;
    v7 = &stru_1F1147748;
  }

  v8 = [v4 initWithFormat:@"WebKitExperimental%@", v12];
  v9 = v12;
  v12 = 0;
  if (v9)
  {
  }

  if (![objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
  {
    v10 = a2 >> 8;
    if (!v8)
    {
      return a2 | (v10 << 8);
    }

    goto LABEL_9;
  }

  LOBYTE(a2) = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  LODWORD(v10) = 1;
  if (v8)
  {
LABEL_9:
  }

  return a2 | (v10 << 8);
}

void sub_19D5AC354(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Connection::sendOutgoingMessage(WTF *a1, IPC::Encoder **a2)
{
  IPC::Encoder::releaseAttachments(&v39, *a2);
  v6 = *a2;
  if (*(*a2 + 2))
  {
    v7 = *(v6 + 3);
  }

  else
  {
    v7 = 512;
  }

  v8 = *(v6 + 68);
  if (v7 < v8)
  {
    goto LABEL_59;
  }

  v9 = v40;
  v10 = __CFADD__(v8, 24);
  v11 = v8 + 24;
  v12 = v10;
  if (v10)
  {
    v11 = 24;
  }

  if (v40)
  {
    v2 = 0;
    v35 = v11 >= 0xFFFFFFFFFFFFFFFCLL;
    if (v11 < 0xFFFFFFFFFFFFFFFCLL)
    {
      v11 += 4;
    }

    v36 = __CFADD__(v11, 12 * v40);
    if (!__CFADD__(v11, 12 * v40))
    {
      v11 += 12 * v40;
    }

    if (v35 || v36)
    {
      goto LABEL_30;
    }
  }

  if ((v12 & 1) != 0 || (v13 = v11 + 3, v11 >= 0xFFFFFFFFFFFFFFFDLL))
  {
    v2 = 0;
    goto LABEL_30;
  }

  v14 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = (v13 & 0xFFFFFFFFFFFFFFFCLL) <= 0x1000 ? v13 & 0xFFFFFFFFFFFFFFFCLL : (12 * v40 + 47) & 0x1FFFFFFFFCLL;
  v16 = *v6;
  v17 = WTF::fastZeroedMalloc((v15 + 24));
  *v17 = v16;
  *(v17 + 8) = v15;
  *(v17 + 16) = 1;
  v38 = v17;
  if (v15 <= 0x17)
  {
    goto LABEL_59;
  }

  v2 = v17;
  v18 = v15 - 24;
  *(v17 + 20) = 19;
  *(v17 + 24) = v15;
  *(v17 + 28) = *(a1 + 76);
  *(v17 + 32) = 0;
  if (v14 <= 0x1000)
  {
    v19 = 230297018;
  }

  else
  {
    v19 = 230301114;
  }

  *(v17 + 40) = v19;
  if (!v9 && v14 <= 0x1000)
  {
    v20 = (v17 + 44);
    goto LABEL_22;
  }

  *(v17 + 20) = -2147483629;
  if (v15 == 24)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v18 = v15 - 28;
  v26 = v17 + 48;
  if (v14 <= 0x1000)
  {
    v27 = v9;
  }

  else
  {
    v27 = v9 + 1;
  }

  *(v17 + 44) = v27;
  if (v40)
  {
    v28 = v39;
    v29 = 4 * v40;
    while (v18 > 0xB)
    {
      v30 = WTF::MachSendRight::leakSendRight(v28);
      v20 = (v26 + 12);
      v18 -= 12;
      *v26 = v30;
      *(v26 + 10) = 17;
      v28 = (v28 + 4);
      v26 += 12;
      v29 -= 4;
      if (!v29)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_59;
  }

  v20 = (v17 + 48);
LABEL_39:
  if (v14 > 0x1000)
  {
    if (v18 > 0xF)
    {
      v31 = *a2;
      v32 = *(*a2 + 2);
      if (v32)
      {
        v33 = *(v31 + 3);
      }

      else
      {
        v32 = v31 + 32;
        v33 = 512;
      }

      v34 = *(v31 + 68);
      if (v33 >= v34)
      {
        *v20 = v32;
        v20[2] = (*(v20 + 10) << 16) | 0x1000100;
        v20[3] = v34;
LABEL_27:
        v37 = v2;
        v38 = 0;
        v2 = IPC::Connection::sendMessage(a1, &v37);
        a1 = v37;
        if (!v37)
        {
LABEL_30:
          WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v39, v5);
          return v2;
        }

        if (*(v37 + 16) != 1)
        {
LABEL_29:
          WTF::fastFree(a1, v5);
          goto LABEL_30;
        }

LABEL_60:
        mach_msg_destroy((a1 + 20));
        goto LABEL_29;
      }
    }

    goto LABEL_59;
  }

LABEL_22:
  v21 = *a2;
  v22 = *(*a2 + 2);
  if (v22)
  {
    v23 = *(v21 + 3);
  }

  else
  {
    v22 = v21 + 32;
    v23 = 512;
  }

  v24 = *(v21 + 68);
  if (v23 < v24)
  {
    goto LABEL_59;
  }

  if (v18 >= v24)
  {
    memcpy(v20, v22, v24);
    v2 = v38;
    goto LABEL_27;
  }

  result = 1067;
  __break(0xC471u);
  return result;
}

void sub_19D5AC660(_Unwind_Exception *a1, void *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  std::unique_ptr<IPC::MachMessage>::operator=[abi:sn200100](va, a2);
  WTF::Vector<WTF::MachSendRight,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(va1, v4);
  _Unwind_Resume(a1);
}

BOOL WebKit::doesAppHaveTrackingPreventionEnabled(WebKit *this)
{
  {
    v1 = WebKit::itpQueue(void)::itpQueue;
    if (WebKit::itpQueue(void)::itpQueue)
    {
      (*(*WebKit::itpQueue(void)::itpQueue + 32))(WebKit::itpQueue(void)::itpQueue);
      v3 = WTF::fastMalloc(v2, 0x10);
      *v3 = &unk_1F10F18D0;
      v7 = v3;
      (*(*v1 + 24))(v1, &v7);
      v4 = v7;
      v7 = 0;
      if (v4)
      {
        (*(*v4 + 8))(v4);
      }

      (*(*v1 + 40))(v1);
    }
  }

  else
  {
    WebKit::itpQueue(void)::itpQueue = 0;
  }

  v5 = atomic_load(WebKit::currentTrackingPreventionState);
  return v5 == 1;
}

void sub_19D5AC7C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  }

  (*(*v10 + 40))(v10, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t IPC::Connection::sendMessage(IPC::Connection *a1, unsigned __int16 **a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = mach_msg((*a2 + 10), 145, *(*a2 + 2), 0, 0, 0, 0);
  if (v4)
  {
    if (v4 == 268435459)
    {
      IPC::Connection::cancelSendSource(a1);
    }

    else
    {
      if (v4 != 268435460)
      {
        v6 = **a2;
        WTF::Internal::appendHex();
        v15 = v7;
        if (v6 >= 0x107F)
        {
          v8 = 4223;
        }

        else
        {
          v8 = v6;
        }

        WTF::makeString<WTF::ASCIILiteral,WTF::HexNumberBuffer,WTF::ASCIILiteral,WTF::ASCIILiteral,WTF::ASCIILiteral,IPC::MessageName,char>(&v13, &v14, (&IPC::Detail::messageDescriptions)[3 * v8], (&IPC::Detail::messageDescriptions)[3 * v8 + 1], v6);
        WTF::String::utf8();
        if (v14)
        {
          v9 = v14 + 16;
        }

        else
        {
          v9 = 0;
        }

        WTFLogAlways("%s", v9);
        WTF::setCrashLogMessage(v9, v10);
        v12 = v14;
        v14 = 0;
        if (v12)
        {
          if (*v12 == 1)
          {
            WTF::fastFree(v12, v11);
          }

          else
          {
            --*v12;
          }
        }

        WTFCrashWithInfoImpl(260, "/Library/Caches/com.apple.xbs/Sources/WebKit/Source/WebKit/Platform/IPC/cocoa/ConnectionCocoa.mm", "BOOL IPC::Connection::sendMessage(std::unique_ptr<MachMessage>)");
        __break(1u);
      }

      std::unique_ptr<IPC::MachMessage>::operator=[abi:sn200100](a1 + 42, a2);
    }

    return 0;
  }

  else
  {
    *(*a2 + 16) = 0;
    return 1;
  }
}

void sub_19D5AC9E8(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, WTF::StringImpl *a12, WTF *a13)
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

uint64_t WebKit::ResourceLoadStatisticsParameters::operator=(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5 && atomic_fetch_add_explicit(v5, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v5, a2);
  }

  v6 = a2[1];
  a2[1] = 0;
  std::unique_ptr<WebKit::SandboxExtensionImpl>::reset[abi:sn200100]((a1 + 8), v6);
  v8 = *(a2 + 4);
  *(a1 + 19) = *(a2 + 19);
  *(a1 + 16) = v8;
  v9 = a2[3];
  a2[3] = 0;
  v10 = *(a1 + 24);
  *(a1 + 24) = v9;
  if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v10, v7);
  }

  v11 = a2[4];
  a2[4] = 0;
  v12 = *(a1 + 32);
  *(a1 + 32) = v11;
  if (v12)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v12, v7);
  }

  v13 = a2[5];
  a2[5] = 0;
  v14 = *(a1 + 40);
  *(a1 + 40) = v13;
  if (v14)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v14, v7);
  }

  v15 = a2[6];
  a2[6] = 0;
  v16 = *(a1 + 48);
  *(a1 + 48) = v15;
  if (v16)
  {
    WTF::HashTable<WTF::String,WTF::String,WTF::IdentityExtractor,WTF::DefaultHash<WTF::String>,WTF::HashTraits<WTF::String>,WTF::HashTraits<WTF::String>,WTF::FastMalloc>::deallocateTable(v16, v7);
  }

  v17 = a2[7];
  a2[7] = 0;
  v18 = *(a1 + 56);
  *(a1 + 56) = v17;
  if (v18 && atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v18, v7);
  }

  return a1;
}