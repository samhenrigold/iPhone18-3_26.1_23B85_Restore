void sub_296F3BEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_296F3BF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::getOperatingMode(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting operating mode", buf, 2u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_85_0;
  v7[4] = a1;
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a2 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

uint64_t ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1, _BYTE *a2)
{
  result = radio::OpMode::convertMode();
  *a2 = result;
  return result;
}

void ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2(void *a1, qmi::MessageBase *this)
{
  v3 = a1[4];
  v24 = 0;
  if (*(this + 1) == 26)
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 0x40000000;
    v21 = ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
    v22 = &__block_descriptor_tmp_61_2;
    v23 = v3;
    TlvValue = qmi::MessageBase::findTlvValue(this);
    v7 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v6, 1);
      LOBYTE(cf[0]) = *v7;
      v21(v20, cf);
    }

    else
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 0x40000000;
      v17 = ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4;
      v18 = &__block_descriptor_tmp_63_2;
      v19 = v3;
      v12 = qmi::MessageBase::findTlvValue(this);
      v14 = v12;
      if (v12)
      {
        tlv::throwIfNotEnoughBytes(v12, v12 + v13, 1);
        LOBYTE(cf[0]) = *v14;
        v17(v16, cf);
      }
    }

    v8 = 0;
    v9 = 1;
    v10 = a1[5];
    if (v10)
    {
      goto LABEL_12;
    }

LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  radio::QMICommandDriverBase::checkError(cf, v3, this, "setting operating mode");
  v8 = cf[0];
  v24 = cf[0];
  if (cf[0])
  {
    CFRetain(cf[0]);
    v9 = 0;
    v10 = a1[5];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v9 = 1;
    v10 = a1[5];
    if (!v10)
    {
      goto LABEL_8;
    }
  }

LABEL_12:
  v11 = _Block_copy(v10);
LABEL_13:
  v15 = a1[6];
  cf[0] = MEMORY[0x29EDCA5F8];
  cf[1] = 1174405120;
  cf[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  cf[3] = &__block_descriptor_tmp_292;
  if (!v11)
  {
    aBlock = 0;
    v27 = v8;
    if (v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  aBlock = _Block_copy(v11);
  v27 = v8;
  if ((v9 & 1) == 0)
  {
LABEL_17:
    CFRetain(v8);
  }

LABEL_18:
  dispatch_async(v15, cf);
  if (v27)
  {
    CFRelease(v27);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if ((v9 & 1) == 0)
  {
    CFRelease(v8);
    CFRelease(v8);
  }
}

void sub_296F3C328(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 16, v2, v3);
  JUMPOUT(0x296F3C23CLL);
}

void sub_296F3C360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F3C388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3(uint64_t a1, unsigned __int8 *a2)
{
  radio::OpMode::convertMode(*(*(a1 + 32) + 160));

  return radio::CommandDriver::handleOperatingModeChanged_sync();
}

uint64_t ___ZN5radio20QMICommandDriverBase31setOperatingModeUnconditionallyEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_4(uint64_t a1, unsigned __int8 *a2)
{
  radio::OpMode::convertMode(*(*(a1 + 32) + 160));

  return radio::CommandDriver::handleOperatingModeChanged_sync();
}

void radio::QMICommandDriverBase::setOperatingMode(uint64_t a1, int64_t a2, char a3, uint64_t a4)
{
  v8 = dispatch_time(0, a2);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3802000000;
  v22[3] = __Block_byref_object_copy__4;
  v22[4] = __Block_byref_object_dispose__4;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *a4;
  if (*a4)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *(a4 + 8);
  v23 = v9;
  v24 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN5radio20QMICommandDriverBase16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  aBlock[3] = &unk_29EE5E9C0;
  aBlock[4] = v22;
  v12 = _Block_copy(aBlock);
  v19 = v12;
  watchdog::create(&v20, v11, &v19, v8);
  if (v12)
  {
    _Block_release(v12);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5radio20QMICommandDriverBase16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v15[3] = &unk_2A1E19428;
  v15[5] = a1;
  v15[6] = a2;
  v17 = a3;
  v15[7] = v20;
  v16 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v15[4] = v22;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v15);
  v13 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v21;
  if (v21 && !atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  _Block_object_dispose(v22, 8);
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v23)
  {
    _Block_release(v23);
  }
}

void sub_296F3C6B8(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Block_object_dispose((v4 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v3 + 40);
  _Unwind_Resume(a1);
}

void watchdog::create(void *a1, NSObject *a2, const void **a3, dispatch_time_t a4)
{
  v8 = operator new(0x28uLL);
  if (a2)
  {
    dispatch_retain(a2);
  }

  if (*a3)
  {
    v9 = _Block_copy(*a3);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = a2;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = 0;
  *v8 = 0;
  v8[1] = 0;
  v8[2] = a2;
  if (a2)
  {
LABEL_5:
    dispatch_retain(a2);
  }

LABEL_6:
  v8[3] = 0;
  v10 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, a2);
  v8[4] = v10;
  dispatch_source_set_timer(v10, a4, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  dispatch_source_set_event_handler(v10, v9);
  dispatch_activate(v10);
  *a1 = v8;
  v11 = operator new(0x20uLL);
  v11[2] = 0;
  v11[1] = 0;
  *v11 = &unk_2A1E19E60;
  v11[3] = v8;
  a1[1] = v11;
  atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  *v8 = v8;
  v8[1] = v11;
  if (!atomic_fetch_add(v11 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v12 = v11;
    (*(*v11 + 16))();
    std::__shared_weak_count::__release_weak(v12);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v9)
  {
LABEL_12:
    _Block_release(v9);
  }

LABEL_13:
  if (a2)
  {

    dispatch_release(a2);
  }
}

void sub_296F3C8B0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<watchdog> ctu::SharedSynchronizable<watchdog>::make_shared_ptr<watchdog>(watchdog*)::{lambda(watchdog*)#1}::operator() const(watchdog*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_296F3C8D8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    _Block_release(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 7;
  strcpy(__p, "timeout");
  CreateError();
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 40) && *(v2 + 48))
  {
    CFRetain(cf);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = _Block_copy(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    block[3] = &__block_descriptor_tmp_292;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      v14 = cf;
    }

    else
    {
      aBlock = 0;
      v14 = cf;
    }

    CFRetain(cf);
    dispatch_async(v5, block);
    if (v14)
    {
      CFRelease(v14);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v4)
    {
      _Block_release(v4);
    }

    CFRelease(cf);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
    if (v7)
    {
      _Block_release(v7);
    }

    v8 = *(v6 + 48);
    *(v6 + 48) = 0;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F3CAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio20QMICommandDriverBase16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio20QMICommandDriverBase16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  aBlock[3] = &unk_2A1E193F0;
  v4 = *(a1 + 64);
  aBlock[5] = *(a1 + 56);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[4] = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = *(v1 + 24);
  if (v6)
  {
    dispatch_retain(*(v1 + 24));
  }

  v10[0] = v5;
  v10[1] = v6;
  radio::QMICommandDriverBase::setOperatingMode_sync(v1, v2, v3, v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v7 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_296F3CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 + 40);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase16setOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (!v4 || !*(v3 + 48))
  {
    return;
  }

  v5 = *a2;
  if (*a2 && (CFRetain(*a2), (v4 = *(v3 + 40)) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = _Block_copy(v4);
  }

  v7 = *(v3 + 48);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v11[3] = &__block_descriptor_tmp_292;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  cf = v5;
  if (v5)
  {
LABEL_11:
    CFRetain(v5);
  }

LABEL_12:
  dispatch_async(v7, v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(v8 + 48);
  *(v8 + 48) = 0;
  if (v10)
  {
    dispatch_release(v10);
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__110shared_ptrI8watchdogEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__110shared_ptrI8watchdogEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_e8_56c35_ZTSNSt3__110shared_ptrI8watchdogEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c35_ZTSNSt3__110shared_ptrI8watchdogEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void radio::QMICommandDriverBase::forceOperatingMode(uint64_t a1, int64_t a2, char a3, uint64_t a4)
{
  v8 = dispatch_time(0, a2);
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3802000000;
  v22[3] = __Block_byref_object_copy__4;
  v22[4] = __Block_byref_object_dispose__4;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v9 = *a4;
  if (*a4)
  {
    v9 = _Block_copy(v9);
  }

  v10 = *(a4 + 8);
  v23 = v9;
  v24 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v11 = *(a1 + 24);
  if (v11)
  {
    dispatch_retain(*(a1 + 24));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN5radio20QMICommandDriverBase18forceOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  aBlock[3] = &unk_29EE5E9E8;
  aBlock[4] = v22;
  v12 = _Block_copy(aBlock);
  v19 = v12;
  watchdog::create(&v20, v11, &v19, v8);
  if (v12)
  {
    _Block_release(v12);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5radio20QMICommandDriverBase18forceOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v15[3] = &unk_2A1E19498;
  v15[5] = a1;
  v15[6] = a2;
  v17 = a3;
  v15[7] = v20;
  v16 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v15[4] = v22;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v15);
  v13 = v16;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v21;
  if (v21 && !atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  _Block_object_dispose(v22, 8);
  if (v24)
  {
    dispatch_release(v24);
  }

  if (v23)
  {
    _Block_release(v23);
  }
}

void sub_296F3D1A0(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  if (v1)
  {
    dispatch_release(v1);
  }

  _Block_object_dispose((v4 - 120), 8);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v3 + 40);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase18forceOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 7;
  strcpy(__p, "timeout");
  CreateError();
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 40) && *(v2 + 48))
  {
    CFRetain(cf);
    v3 = *(v2 + 40);
    if (v3)
    {
      v4 = _Block_copy(v3);
    }

    else
    {
      v4 = 0;
    }

    v5 = *(v2 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
    block[3] = &__block_descriptor_tmp_292;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      v14 = cf;
    }

    else
    {
      aBlock = 0;
      v14 = cf;
    }

    CFRetain(cf);
    dispatch_async(v5, block);
    if (v14)
    {
      CFRelease(v14);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v4)
    {
      _Block_release(v4);
    }

    CFRelease(cf);
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
    if (v7)
    {
      _Block_release(v7);
    }

    v8 = *(v6 + 48);
    *(v6 + 48) = 0;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F3D3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio20QMICommandDriverBase18forceOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 48);
  v3 = *(a1 + 72);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN5radio20QMICommandDriverBase18forceOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3;
  aBlock[3] = &unk_2A1E19460;
  v4 = *(a1 + 64);
  aBlock[5] = *(a1 + 56);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  aBlock[4] = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = *(v1 + 24);
  if (v6)
  {
    dispatch_retain(*(v1 + 24));
  }

  v10[0] = v5;
  v10[1] = v6;
  radio::QMICommandDriverBase::setOperatingModeUnconditionally(v1, v2, v3, v10);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v7 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_296F3D528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 + 40);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase18forceOperatingModeEyNS_13OperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_3(uint64_t a1, CFTypeRef *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  if (!v4 || !*(v3 + 48))
  {
    return;
  }

  v5 = *a2;
  if (*a2 && (CFRetain(*a2), (v4 = *(v3 + 40)) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = _Block_copy(v4);
  }

  v7 = *(v3 + 48);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v11[3] = &__block_descriptor_tmp_292;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    cf = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  cf = v5;
  if (v5)
  {
LABEL_11:
    CFRetain(v5);
  }

LABEL_12:
  dispatch_async(v7, v11);
  if (cf)
  {
    CFRelease(cf);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = 0;
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(v8 + 48);
  *(v8 + 48) = 0;
  if (v10)
  {
    dispatch_release(v10);
  }
}

void ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v3;
  v14[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v14);
  v9 = v2 + 232;
  v10 = QMIServiceMsg::create();
  v11 = 25000;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_82;
  v6[4] = v2;
  v4 = a1[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[6];
  v7 = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm16GetOperatingMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EB08;
  aBlock[4] = v6;
  v13 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v13)
  {
    _Block_release(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

void sub_296F3D81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F3D840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v4 = a1[4];
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v27 = 0;
  radio::QMICommandDriverBase::checkError(&v26, v4, a2, "getting operating mode");
  if (v26)
  {
    v5 = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v5 = Mutable;
    if (Mutable)
    {
      v27 = Mutable;
    }

    v22[0] = MEMORY[0x29EDCA5F8];
    v22[1] = 0x40000000;
    v23 = ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
    v24 = &__block_descriptor_tmp_79;
    v25 = v4;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v9 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 2);
      LOWORD(block[0]) = *v9;
      v23(v22, block);
    }

    v17[0] = MEMORY[0x29EDCA5F8];
    v17[1] = 1174405120;
    v18 = ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_80;
    v19 = &__block_descriptor_tmp_81_0;
    v20 = v4;
    cf = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    v10 = qmi::MessageBase::findTlvValue(a2);
    v12 = v10;
    if (v10)
    {
      tlv::throwIfNotEnoughBytes(v10, v10 + v11, 1);
      LOBYTE(block[0]) = *v12;
      v18(v17, block);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (a1[5] && a1[6])
  {
    v13 = v26;
    if (v26)
    {
      CFRetain(v26);
    }

    if (v5)
    {
      CFRetain(v5);
    }

    v14 = a1[5];
    if (v14)
    {
      v15 = _Block_copy(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = a1[6];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
    block[3] = &__block_descriptor_tmp_295;
    if (v15)
    {
      aBlock = _Block_copy(v15);
      v30 = v13;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    else
    {
      aBlock = 0;
      v30 = v13;
      if (!v13)
      {
LABEL_27:
        v31 = v5;
        if (v5)
        {
          CFRetain(v5);
        }

        dispatch_async(v16, block);
        if (v31)
        {
          CFRelease(v31);
        }

        if (v30)
        {
          CFRelease(v30);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v15)
        {
          _Block_release(v15);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        goto LABEL_41;
      }
    }

    CFRetain(v13);
    goto LABEL_27;
  }

LABEL_41:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v27)
  {
    CFRelease(v27);
  }
}

void sub_296F3DB58(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F3D9F8);
}

void sub_296F3DB88(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x296F3D964);
}

void sub_296F3DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v21 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v19 + 40));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F3DBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3(uint64_t a1, unsigned __int16 *a2)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  radio::OpMode::setConfig(*(v2 + 160));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    radio::OpMode::getConfigString(__p, *(v2 + 160));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v8 = v4;
    _os_log_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEFAULT, "#I Got config: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void ___ZN5radio20QMICommandDriverBase16getOperatingModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_80(uint64_t a1, unsigned __int8 *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  radio::OpMode::setMode(*(v3 + 160));
  Mode = radio::OpMode::getMode(*(v3 + 160));
  ctu::cf::insert<__CFString const*,int>(*(a1 + 40), *MEMORY[0x29EDC8E10], Mode, *MEMORY[0x29EDB8ED8]);
  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    radio::OpMode::getModeString(__p, *(v3 + 160));
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Got mode: %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void radio::QMICommandDriverBase::releaseResetDetect(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Releasing reset detect", buf, 2u);
  }

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN5radio20QMICommandDriverBase18releaseResetDetectEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_92_1;
  v7[4] = a1;
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a2 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped((a1 + 8), v7);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio20QMICommandDriverBase18releaseResetDetectEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[0] = v3;
  v14[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v14);
  v9 = v2 + 264;
  v10 = QMIServiceMsg::create();
  v11 = 25000;
  v12 = 0;
  v13 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio20QMICommandDriverBase18releaseResetDetectEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2;
  v6[3] = &__block_descriptor_tmp_89_1;
  v6[4] = v2;
  v4 = a1[5];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = a1[6];
  v7 = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18ReleaseResetDetect8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EB30;
  aBlock[4] = v6;
  v13 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v13)
  {
    _Block_release(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v14);
}

void sub_296F3E058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v15 + 40);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F3E07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase18releaseResetDetectEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[4];
  cf = 0xAAAAAAAAAAAAAAAALL;
  radio::QMICommandDriverBase::checkError(&cf, v3, a2, "releasing reset detect");
  v4 = a1[5];
  if (!v4 || !a1[6])
  {
    goto LABEL_20;
  }

  v5 = cf;
  if (cf && (CFRetain(cf), (v4 = a1[5]) == 0))
  {
    v6 = 0;
  }

  else
  {
    v6 = _Block_copy(v4);
  }

  v7 = a1[6];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  block[3] = &__block_descriptor_tmp_292;
  if (v6)
  {
    aBlock = _Block_copy(v6);
    v11 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  aBlock = 0;
  v11 = v5;
  if (v5)
  {
LABEL_11:
    CFRetain(v5);
  }

LABEL_12:
  dispatch_async(v7, block);
  if (v11)
  {
    CFRelease(v11);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

LABEL_20:
  if (cf)
  {
    CFRelease(cf);
  }
}

void radio::QMICommandDriverBase::getBasebandTime(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting baseband time", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio20QMICommandDriverBase15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_101_1;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN5radio20QMICommandDriverBase15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v3;
  v17[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v17);
  v12 = v2 + 232;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio20QMICommandDriverBase15getBasebandTimeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_98_2;
  v5 = a1[5];
  v4 = a1[6];
  v8[4] = v2;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a1[8];
  v10 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm15GetBasebandTime8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EB58;
  aBlock[4] = v8;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

void sub_296F3E518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v22 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F3E548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_48c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    CFRelease(v1);
  }
}

void radio::QMICommandDriverBase::getBasebandStatus(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting baseband status", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_117_0;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v3;
  v17[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v17);
  v12 = v2 + 264;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_114;
  v5 = a1[5];
  v4 = a1[6];
  v8[4] = v2;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a1[8];
  v10 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17GetBasebandStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EB80;
  aBlock[4] = v8;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

void sub_296F3E8D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v22 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F3E900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v35 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_53:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v33 = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(&v33, v5, a2, "getting baseband status");
      v32 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        v32 = Mutable;
      }

      if (!v33)
      {
        v28[0] = MEMORY[0x29EDCA5F8];
        v28[1] = 1174405120;
        v29 = ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
        v30 = &__block_descriptor_tmp_106_0;
        v31 = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v12 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 1);
          LOBYTE(block) = *v12;
          v29(v28, &block);
        }

        v24[0] = MEMORY[0x29EDCA5F8];
        v24[1] = 1174405120;
        v25 = ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_107;
        v26 = &__block_descriptor_tmp_111_0;
        cf = v9;
        if (v9)
        {
          CFRetain(v9);
        }

        v13 = qmi::MessageBase::findTlvValue(a2);
        v17 = v13;
        if (v13)
        {
          v18 = v14;
          v43 = v13;
          block = tlv::parseV<bsp::tlv::abm::SleepManagerStats>(&v43, v14, v15, v16);
          v37 = v19;
          if (v43)
          {
            v25(v24, &block);
          }

          else
          {
            (*MEMORY[0x29EDC91A8])(*a2, 17, v17, v18);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v31)
        {
          CFRelease(v31);
        }
      }

      if (!a1[7] || !a1[8])
      {
LABEL_49:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        goto LABEL_53;
      }

      v20 = v33;
      if (v33)
      {
        CFRetain(v33);
      }

      if (v9)
      {
        CFRetain(v9);
      }

      v21 = a1[7];
      if (v21)
      {
        v22 = _Block_copy(v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = a1[8];
      block = MEMORY[0x29EDCA5F8];
      v37 = 1174405120;
      v38 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
      v39 = &__block_descriptor_tmp_295;
      if (v22)
      {
        aBlock = _Block_copy(v22);
        v41 = v20;
        if (!v20)
        {
          goto LABEL_35;
        }
      }

      else
      {
        aBlock = 0;
        v41 = v20;
        if (!v20)
        {
LABEL_35:
          v42 = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          dispatch_async(v23, &block);
          if (v42)
          {
            CFRelease(v42);
          }

          if (v41)
          {
            CFRelease(v41);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v22)
          {
            _Block_release(v22);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v20)
          {
            CFRelease(v20);
          }

          goto LABEL_49;
        }
      }

      CFRetain(v20);
      goto LABEL_35;
    }
  }
}

void sub_296F3ECCC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 16, v2, v3);
  JUMPOUT(0x296F3EA60);
}

void sub_296F3ED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va2, a18);
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v22 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v18 + 32));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void sub_296F3ED78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5radio20QMICommandDriverBase17getBasebandStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_107(uint64_t a1, unsigned int *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,unsigned char>(*(a1 + 32), *MEMORY[0x29EDC8BD8], *a2, *MEMORY[0x29EDB8ED8]);
  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 32), *MEMORY[0x29EDC8C18], a2[1], v4);
  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 32), *MEMORY[0x29EDC8C38], a2[2], v4);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x29EDC8C48];
  v7 = a2[3];

  return ctu::cf::insert<__CFString const*,unsigned int>(v5, v6, v7, v4);
}

void radio::QMICommandDriverBase::getBasebandFWVersion(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting baseband firmware version", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio20QMICommandDriverBase20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_127;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN5radio20QMICommandDriverBase20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v3;
  v17[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v17);
  v12 = v2 + 232;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio20QMICommandDriverBase20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_124;
  v5 = a1[5];
  v4 = a1[6];
  v8[4] = v2;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a1[8];
  v10 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm20GetBasebandFWVersion8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EBA8;
  aBlock[4] = v8;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

void sub_296F3F180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v22 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F3F1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v23 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_46:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v21 = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(&v21, v5, a2, "getting baseband firmware version");
      v20 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        v20 = Mutable;
      }

      if (!v21)
      {
        v16[0] = MEMORY[0x29EDCA5F8];
        v16[1] = 1174405120;
        v17 = ___ZN5radio20QMICommandDriverBase20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
        v18 = &__block_descriptor_tmp_121_0;
        cf = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        TlvValue = qmi::MessageBase::findTlvValue(a2);
        if (TlvValue)
        {
          __p = 0;
          v25 = 0;
          v26 = 0;
          std::string::__assign_trivial[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, TlvValue, &TlvValue[v10], v10);
          v17(v16, &__p);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__p);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (!a1[7] || !a1[8])
      {
LABEL_42:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        goto LABEL_46;
      }

      v12 = v21;
      if (v21)
      {
        CFRetain(v21);
      }

      if (v9)
      {
        CFRetain(v9);
      }

      v13 = a1[7];
      if (v13)
      {
        v14 = _Block_copy(v13);
      }

      else
      {
        v14 = 0;
      }

      v15 = a1[8];
      __p = MEMORY[0x29EDCA5F8];
      v25 = 1174405120;
      v26 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
      v27 = &__block_descriptor_tmp_295;
      if (v14)
      {
        aBlock = _Block_copy(v14);
        v29 = v12;
        if (!v12)
        {
          goto LABEL_28;
        }
      }

      else
      {
        aBlock = 0;
        v29 = v12;
        if (!v12)
        {
LABEL_28:
          v30 = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          dispatch_async(v15, &__p);
          if (v30)
          {
            CFRelease(v30);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v14)
          {
            _Block_release(v14);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v12)
          {
            CFRelease(v12);
          }

          goto LABEL_42;
        }
      }

      CFRetain(v12);
      goto LABEL_28;
    }
  }
}

void sub_296F3F4E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 + 32));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_296F3F594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase20getBasebandFWVersionEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3(uint64_t a1, const void **a2)
{
  memset(&__p, 170, sizeof(__p));
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  if (v2 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    p_p = operator new(v7);
    __p.__r_.__value_.__l.__size_ = v4;
    __p.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
    goto LABEL_15;
  }

  *(&__p.__r_.__value_.__s + 23) = v4;
  p_p = &__p;
  if (v4)
  {
LABEL_15:
    memmove(p_p, v3, v4);
  }

  p_p->__r_.__value_.__s.__data_[v4] = 0;
  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= 2)
  {
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v11 = memchr(&v10->__r_.__value_.__l.__data_ + 1, 32, size - 1);
    v12 = v11 - v10;
    if (v11 && v12 != -1)
    {
      if (size >= v12)
      {
        v14 = v11 - v10;
      }

      else
      {
        v14 = size;
      }

      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v14 >= 0x17)
      {
        if ((v14 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v14 | 7) + 1;
        }

        p_dst = operator new(v17);
        __dst.__r_.__value_.__l.__size_ = v14;
        __dst.__r_.__value_.__r.__words[2] = v17 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v14;
        p_dst = &__dst;
        if (v11 == v10)
        {
          __dst.__r_.__value_.__s.__data_[v14] = 0;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_34:
            __p = __dst;
            v8 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            goto LABEL_35;
          }

LABEL_48:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_34;
        }
      }

      memmove(p_dst, v10, v14);
      *(p_dst + v14) = 0;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    }
  }

LABEL_35:
  v16 = *(a1 + 32);
  if (v8 < 0)
  {
    std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    __dst = __p;
  }

  ctu::cf::insert<__CFString const*,std::string>(v16, *MEMORY[0x29EDC8D98], &__dst);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_42:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }
}

void sub_296F3F7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a14 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void radio::QMICommandDriverBase::getFactoryCalibrationStatus(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting factory calibration status", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio20QMICommandDriverBase27getFactoryCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_138;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN5radio20QMICommandDriverBase27getFactoryCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v3;
  v17[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v17);
  v12 = v2 + 264;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio20QMICommandDriverBase27getFactoryCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_135_0;
  v5 = a1[5];
  v4 = a1[6];
  v8[4] = v2;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a1[8];
  v10 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm27GetFactoryCalibrationStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EBD0;
  aBlock[4] = v8;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

void sub_296F3FB54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v22 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F3FB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase27getFactoryCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v24 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_42:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v22 = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(&v22, v5, a2, "getting factory calibration status");
      v21 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        v21 = Mutable;
        if (!v22)
        {
          v17[0] = MEMORY[0x29EDCA5F8];
          v17[1] = 1174405120;
          v18 = ___ZN5radio20QMICommandDriverBase27getFactoryCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
          v19 = &__block_descriptor_tmp_132;
          cf = Mutable;
          CFRetain(Mutable);
          TlvValue = qmi::MessageBase::findTlvValue(a2);
          v12 = TlvValue;
          if (TlvValue)
          {
            tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 1);
            LOBYTE(block[0]) = *v12;
            v18(v17, block);
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      if (!a1[7] || !a1[8])
      {
LABEL_38:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        goto LABEL_42;
      }

      v13 = v22;
      if (v22)
      {
        CFRetain(v22);
      }

      if (v9)
      {
        CFRetain(v9);
      }

      v14 = a1[7];
      if (v14)
      {
        v15 = _Block_copy(v14);
      }

      else
      {
        v15 = 0;
      }

      v16 = a1[8];
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
      block[3] = &__block_descriptor_tmp_295;
      if (v15)
      {
        aBlock = _Block_copy(v15);
        v27 = v13;
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      else
      {
        aBlock = 0;
        v27 = v13;
        if (!v13)
        {
LABEL_24:
          v28 = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          dispatch_async(v16, block);
          if (v28)
          {
            CFRelease(v28);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v15)
          {
            _Block_release(v15);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          goto LABEL_38;
        }
      }

      CFRetain(v13);
      goto LABEL_24;
    }
  }
}

void sub_296F3FE78(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F3FCD8);
}

void sub_296F3FED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v15 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v11 + 32));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va1);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void sub_296F3FF14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::getRFCalibrationStatus(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting RF calibration status", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_174_0;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v3;
  v17[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v17);
  v12 = v2 + 264;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_171;
  v5 = a1[5];
  v4 = a1[6];
  v8[4] = v2;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a1[8];
  v10 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22GetRFCalibrationStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EBF8;
  aBlock[4] = v8;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

void sub_296F4026C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v22 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F4029C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v70 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_62:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      v68 = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(&v68, v5, a2, "getting RF calibration status");
      v67 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        v67 = Mutable;
        if (!v68)
        {
          v63[0] = MEMORY[0x29EDCA5F8];
          v63[1] = 1174405120;
          v64 = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
          v65 = &__block_descriptor_tmp_143_0;
          v66 = Mutable;
          CFRetain(Mutable);
          TlvValue = qmi::MessageBase::findTlvValue(a2);
          v12 = TlvValue;
          if (TlvValue)
          {
            tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 1);
            LOBYTE(block) = *v12;
            v64(v63, &block);
          }

          v59[0] = MEMORY[0x29EDCA5F8];
          v59[1] = 1174405120;
          v60 = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_144;
          v61 = &__block_descriptor_tmp_148;
          v62 = v9;
          CFRetain(v9);
          v13 = qmi::MessageBase::findTlvValue(a2);
          v15 = v13;
          if (v13)
          {
            v16 = v14;
            tlv::throwIfNotEnoughBytes(v13, v13 + v14, 2);
            v17 = *v15;
            tlv::throwIfNotEnoughBytes((v15 + 2), &v15[v16], 2);
            LODWORD(block) = v17 | (*(v15 + 1) << 16);
            v60(v59, &block);
          }

          v55[0] = MEMORY[0x29EDCA5F8];
          v55[1] = 1174405120;
          v56 = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_149;
          v57 = &__block_descriptor_tmp_153;
          v58 = v9;
          CFRetain(v9);
          v18 = qmi::MessageBase::findTlvValue(a2);
          v20 = v18;
          if (v18)
          {
            v21 = v19;
            tlv::throwIfNotEnoughBytes(v18, v18 + v19, 4);
            v22 = *v20;
            tlv::throwIfNotEnoughBytes((v20 + 4), &v20[v21], 4);
            block = v22 | (*(v20 + 1) << 32);
            v56(v55, &block);
          }

          v51[0] = MEMORY[0x29EDCA5F8];
          v51[1] = 1174405120;
          v52 = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_154;
          v53 = &__block_descriptor_tmp_158;
          v54 = v9;
          CFRetain(v9);
          v23 = qmi::MessageBase::findTlvValue(a2);
          v25 = v23;
          if (v23)
          {
            v26 = v24;
            tlv::throwIfNotEnoughBytes(v23, v23 + v24, 4);
            v27 = *v25;
            tlv::throwIfNotEnoughBytes((v25 + 4), &v25[v26], 4);
            block = v27 | (*(v25 + 1) << 32);
            v52(v51, &block);
          }

          v47[0] = MEMORY[0x29EDCA5F8];
          v47[1] = 1174405120;
          v48 = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_159;
          v49 = &__block_descriptor_tmp_163_0;
          v50 = v9;
          CFRetain(v9);
          v28 = qmi::MessageBase::findTlvValue(a2);
          v30 = v28;
          if (v28)
          {
            v31 = v29;
            tlv::throwIfNotEnoughBytes(v28, v28 + v29, 4);
            v32 = *v30;
            tlv::throwIfNotEnoughBytes((v30 + 4), &v30[v31], 4);
            block = v32 | (*(v30 + 1) << 32);
            v48(v47, &block);
          }

          v43[0] = MEMORY[0x29EDCA5F8];
          v43[1] = 1174405120;
          v44 = ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_164;
          v45 = &__block_descriptor_tmp_168_0;
          cf = v9;
          CFRetain(v9);
          v33 = qmi::MessageBase::findTlvValue(a2);
          v35 = v33;
          if (v33)
          {
            v36 = v34;
            tlv::throwIfNotEnoughBytes(v33, v33 + v34, 8);
            v37 = *v35;
            tlv::throwIfNotEnoughBytes((v35 + 8), &v35[v36], 8);
            v38 = *(v35 + 1);
            block = v37;
            v72 = v38;
            v44(v43, &block);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          if (v54)
          {
            CFRelease(v54);
          }

          if (v58)
          {
            CFRelease(v58);
          }

          if (v62)
          {
            CFRelease(v62);
          }

          if (v66)
          {
            CFRelease(v66);
          }
        }
      }

      if (!a1[7] || !a1[8])
      {
LABEL_58:
        if (v9)
        {
          CFRelease(v9);
        }

        if (v68)
        {
          CFRelease(v68);
        }

        goto LABEL_62;
      }

      v39 = v68;
      if (v68)
      {
        CFRetain(v68);
      }

      if (v9)
      {
        CFRetain(v9);
      }

      v40 = a1[7];
      if (v40)
      {
        v41 = _Block_copy(v40);
      }

      else
      {
        v41 = 0;
      }

      v42 = a1[8];
      block = MEMORY[0x29EDCA5F8];
      v72 = 1174405120;
      v73 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
      v74 = &__block_descriptor_tmp_295;
      if (v41)
      {
        v75 = _Block_copy(v41);
        v76 = v39;
        if (!v39)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v75 = 0;
        v76 = v39;
        if (!v39)
        {
LABEL_44:
          v77 = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          dispatch_async(v42, &block);
          if (v77)
          {
            CFRelease(v77);
          }

          if (v76)
          {
            CFRelease(v76);
          }

          if (v75)
          {
            _Block_release(v75);
          }

          if (v41)
          {
            _Block_release(v41);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v39)
          {
            CFRelease(v39);
          }

          goto LABEL_58;
        }
      }

      CFRetain(v39);
      goto LABEL_44;
    }
  }
}

void sub_296F40920(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 1, v2, v3);
  JUMPOUT(0x296F403F8);
}

void sub_296F40994(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 7, v2, v3);
  JUMPOUT(0x296F40728);
}

void sub_296F409C0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 6, v2, v3);
  JUMPOUT(0x296F40688);
}

void sub_296F409EC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 5, v2, v3);
  JUMPOUT(0x296F405E4);
}

void sub_296F40A18(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 4, v2, v3);
  JUMPOUT(0x296F40540);
}

void sub_296F40A44(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 3, v2, v3);
  JUMPOUT(0x296F4049CLL);
}

void sub_296F40A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, const void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, const void *a38)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v38 + 32));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a23);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a28);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a38);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v39 - 192));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v39 - 184));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v39 - 176);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_144(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,unsigned short>(*(a1 + 32), *MEMORY[0x29EDC8EC0], *a2, *MEMORY[0x29EDB8ED8]);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x29EDC8E80];
  v7 = a2[1];

  ctu::cf::insert<__CFString const*,unsigned short>(v5, v6, v7, v4);
}

uint64_t ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_149(uint64_t a1, unsigned int *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 32), *MEMORY[0x29EDC8EE8], *a2, *MEMORY[0x29EDB8ED8]);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x29EDC8E90];
  v7 = a2[1];

  return ctu::cf::insert<__CFString const*,unsigned int>(v5, v6, v7, v4);
}

uint64_t ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_154(uint64_t a1, unsigned int *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 32), *MEMORY[0x29EDC8F40], *a2, *MEMORY[0x29EDB8ED8]);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x29EDC8ED0];
  v7 = a2[1];

  return ctu::cf::insert<__CFString const*,unsigned int>(v5, v6, v7, v4);
}

uint64_t ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_159(uint64_t a1, unsigned int *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,unsigned int>(*(a1 + 32), *MEMORY[0x29EDC8F60], *a2, *MEMORY[0x29EDB8ED8]);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x29EDC8F38];
  v7 = a2[1];

  return ctu::cf::insert<__CFString const*,unsigned int>(v5, v6, v7, v4);
}

void ___ZN5radio20QMICommandDriverBase22getRFCalibrationStatusEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_164(uint64_t a1, uint64_t *a2)
{
  v4 = *MEMORY[0x29EDB8ED8];
  ctu::cf::insert<__CFString const*,long long>(*(a1 + 32), *MEMORY[0x29EDC8EC8], *a2, *MEMORY[0x29EDB8ED8]);
  v5 = a2[1];
  v6 = *(a1 + 32);
  v7 = *MEMORY[0x29EDC8E88];

  ctu::cf::insert<__CFString const*,long long>(v6, v7, v5, v4);
}

void radio::QMICommandDriverBase::getWakeReason(uint64_t *a1, uint64_t a2)
{
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I Getting Baseband wake reason", buf, 2u);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_188_0;
  v12[4] = a1;
  v12[5] = v6;
  v13 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = *a2;
  if (*a2)
  {
    v10 = _Block_copy(v10);
  }

  v11 = *(a2 + 8);
  aBlock = v10;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(a1 + 1, v12);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v8);
}

void ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke(void *a1)
{
  v2 = a1[4];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v3;
  v17[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v17);
  v12 = v2 + 264;
  v13 = QMIServiceMsg::create();
  v14 = 25000;
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_185;
  v5 = a1[5];
  v4 = a1[6];
  v8[4] = v2;
  v8[5] = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = a1[7];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a1[8];
  v10 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13GetWakeReason8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EC20;
  aBlock[4] = v8;
  v16 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v16)
  {
    _Block_release(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v17);
}

void sub_296F410D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v22 + 56);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F41108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_2(void *a1, const qmi::ResponseBase *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v38 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_59:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      cf = 0xAAAAAAAAAAAAAAAALL;
      radio::QMICommandDriverBase::checkError(&cf, v5, a2, "getting wake reason");
      v35 = 0;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v9 = Mutable;
      if (Mutable)
      {
        v35 = Mutable;
      }

      if (cf)
      {
        if (!a1[7])
        {
          goto LABEL_55;
        }
      }

      else
      {
        block = 0;
        p_block = &block;
        v41 = 0x2000000000;
        LOBYTE(v42) = 0;
        v33[0] = 0;
        v33[1] = v33;
        v33[2] = 0x2000000000;
        v34 = 0;
        v28[0] = MEMORY[0x29EDCA5F8];
        v28[1] = 1174405120;
        v29 = ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3;
        v30 = &unk_2A1E199B8;
        v31 = v33;
        v32 = Mutable;
        if (Mutable)
        {
          CFRetain(Mutable);
        }

        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v12 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 4);
          LODWORD(v46) = *v12;
          (v29)(v28, &v46);
        }

        v21[0] = MEMORY[0x29EDCA5F8];
        v21[1] = 1174405120;
        v22 = ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_180;
        v23 = &unk_2A1E199F0;
        v26 = v5;
        v27 = v9;
        if (v9)
        {
          CFRetain(v9);
        }

        v24 = v33;
        v25 = &block;
        v14 = qmi::MessageBase::findTlvValue(a2);
        if (v14)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v46, v14, &v14[v13], v13);
          v22(v21, &v46);
          if (v46)
          {
            v47 = v46;
            operator delete(v46);
          }
        }

        if (*(p_block + 24) == 1)
        {
          __p = operator new(0x20uLL);
          strcpy(__p, "Null wake data from baseband");
          CreateError();
          v15 = cf;
          cf = v46;
          v46 = 0;
          if (v15)
          {
            CFRelease(v15);
            if (v46)
            {
              CFRelease(v46);
            }
          }

          operator delete(__p);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        if (v32)
        {
          CFRelease(v32);
        }

        _Block_object_dispose(v33, 8);
        _Block_object_dispose(&block, 8);
        if (!a1[7])
        {
          goto LABEL_55;
        }
      }

      if (!a1[8])
      {
LABEL_55:
        if (v9)
        {
          CFRelease(v9);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_59;
      }

      v16 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      if (v9)
      {
        CFRetain(v9);
      }

      v17 = a1[7];
      if (v17)
      {
        v18 = _Block_copy(v17);
      }

      else
      {
        v18 = 0;
      }

      v19 = a1[8];
      block = MEMORY[0x29EDCA5F8];
      p_block = 1174405120;
      v41 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_NS3_IS6_EEEEEvDpT__block_invoke_1;
      v42 = &__block_descriptor_tmp_295;
      if (v18)
      {
        v43 = _Block_copy(v18);
        v44 = v16;
        if (!v16)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v43 = 0;
        v44 = v16;
        if (!v16)
        {
LABEL_41:
          v45 = v9;
          if (v9)
          {
            CFRetain(v9);
          }

          dispatch_async(v19, &block);
          if (v45)
          {
            CFRelease(v45);
          }

          if (v44)
          {
            CFRelease(v44);
          }

          if (v43)
          {
            _Block_release(v43);
          }

          if (v18)
          {
            _Block_release(v18);
          }

          if (v9)
          {
            CFRelease(v9);
          }

          if (v16)
          {
            CFRelease(v16);
          }

          goto LABEL_55;
        }
      }

      CFRetain(v16);
      goto LABEL_41;
    }
  }
}

void sub_296F415C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, const void *a34, const void *a35, __int16 a36, char a37, char a38)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v38 + 56));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v39 + 40));
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v40 - 176), 8);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a34);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a35);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a36);
  _Unwind_Resume(a1);
}

void sub_296F416F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_3(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, const __CFAllocator *a5)
{
  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = *a2;
  return ctu::cf::insert<char const*,unsigned int>(v5, "kKeyBasebandWakeChannel", *(*(*(a1 + 32) + 8) + 24), *MEMORY[0x29EDB8ED8], a5);
}

void ___ZN5radio20QMICommandDriverBase13getWakeReasonEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS5_IK14__CFDictionaryEEEEE_block_invoke_180(uint64_t a1, uint64_t a2)
{
  ctu::cf::convert_copy();
  ctu::cf::insert<char const*,__CFData const*>(*(a1 + 56), "kKeyBasebandWakeData", 0, *MEMORY[0x29EDB8ED8], v3);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = v4 > 0xD;
  v6 = (1 << v4) & 0x2410;
  if (!v5 && v6 != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void sub_296F41888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F418A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F418B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_56c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 56);
  *(a1 + 56) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_56c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    CFRelease(v1);
  }
}

void radio::QMICommandDriverBase::dumpLogsIndState_sync(radio::QMICommandDriverBase *this, char a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41 = v4;
  v42 = v4;
  qmi::MutableMessageBase::MutableMessageBase(&v41);
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 0x40000000;
  v5 = ___ZN5radio20QMICommandDriverBase21dumpLogsIndState_syncEb_block_invoke;
  v38 = ___ZN5radio20QMICommandDriverBase21dumpLogsIndState_syncEb_block_invoke;
  v39 = &__block_descriptor_tmp_190_0;
  v40 = a2;
  v6 = *(&v41 + 1);
  v7 = v42;
  v8 = *(&v41 + 1);
  if (*(&v41 + 1) != v42)
  {
    v8 = *(&v41 + 1);
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v42)
      {
        goto LABEL_9;
      }
    }
  }

  if (v8 == v42)
  {
LABEL_9:
    v11 = operator new(0x10uLL);
    v12 = v11;
    v11[4] = 1;
    *v11 = &unk_2A1E1A088;
    if (v7 >= *(&v42 + 1))
    {
      v14 = v7 - v6;
      v15 = (v7 - v6) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v42 + 1) - v6;
      if ((*(&v42 + 1) - v6) >> 2 > v16)
      {
        v16 = v17 >> 2;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        v18 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (v18 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v19 = operator new(8 * v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = &v19[8 * v15];
      *v20 = v12;
      v13 = v20 + 8;
      memcpy(v19, v6, v14);
      *(&v41 + 1) = v19;
      *&v42 = v13;
      *(&v42 + 1) = &v19[8 * v18];
      if (v6)
      {
        operator delete(v6);
      }
    }

    else
    {
      *v7 = v11;
      v13 = v7 + 8;
    }

    v10 = v12 + 9;
    *&v42 = v13;
    v5 = v38;
  }

  else
  {
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  v5(v37, v10);
  v22 = *(this + 1);
  v21 = *(this + 2);
  v35 = v22;
  if (!v21 || (v23 = std::__shared_weak_count::lock(v21), (v36 = v23) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = v23;
  v30 = this + 264;
  v31 = QMIServiceMsg::create();
  v32 = 25000;
  v33 = 0;
  v34 = 0;
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 1174405120;
  v27[2] = ___ZN5radio20QMICommandDriverBase21dumpLogsIndState_syncEb_block_invoke_2;
  v27[3] = &__block_descriptor_tmp_195;
  v27[4] = this;
  v27[5] = v22;
  v28 = v24;
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  v29 = a2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm8DumpLogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5EC48;
  aBlock[4] = v27;
  v34 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v34)
  {
    _Block_release(v34);
  }

  v25 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v36;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v41);
}

void sub_296F41CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v28 + 40);
  qmi::Client::SendProxy::~SendProxy(&a17);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a22);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F41D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F41D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN5radio20QMICommandDriverBase21dumpLogsIndState_syncEb_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 4))
    {
      v5 = "Failure";
    }

    else
    {
      v5 = "Success";
    }

    v6 = "Disable";
    if (*(a1 + 56))
    {
      v6 = "Enable";
    }

    v7 = 136315394;
    v8 = v5;
    v9 = 2080;
    v10 = v6;
    _os_log_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEFAULT, "#I %s: %s DumpLogs indication", &v7, 0x16u);
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIN5radio13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIN5radio13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void radio::QMICommandDriverBase::enableDumpLogsInd(radio::QMICommandDriverBase *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio20QMICommandDriverBase17enableDumpLogsIndEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_196;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(this + 1, v1);
}

void radio::QMICommandDriverBase::disableDumpLogsInd(radio::QMICommandDriverBase *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio20QMICommandDriverBase18disableDumpLogsIndEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_197;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(this + 1, v1);
}

void radio::QMICommandDriverBase::simTestCommand(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN5radio20QMICommandDriverBase14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke;
  v14[3] = &__block_descriptor_tmp_203;
  v14[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v12 = *a3;
  if (*a3)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a3 + 8);
  aBlock = v12;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v18 = v7;
  v19 = v11;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped(v6, v14);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v11);
}

void ___ZN5radio20QMICommandDriverBase14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke(uint64_t a1)
{
  if ((*(a1 + 63) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 48))
    {
      goto LABEL_3;
    }

LABEL_6:
    cf = 0xAAAAAAAAAAAAAAAALL;
    v44 = operator new(0x20uLL);
    v45 = xmmword_296FBC300;
    strcpy(v44, "Invalid SIM test command");
    CreateError();
    operator delete(v44);
    if (*(a1 + 64) && *(a1 + 72))
    {
      CFRetain(cf);
      v19 = *(a1 + 64);
      if (v19)
      {
        v20 = _Block_copy(v19);
      }

      else
      {
        v20 = 0;
      }

      v27 = *(a1 + 72);
      aBlock = MEMORY[0x29EDCA5F8];
      v47 = 1174405120;
      v48 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
      v49 = &__block_descriptor_tmp_305;
      if (v20)
      {
        v50 = _Block_copy(v20);
        v51 = cf;
      }

      else
      {
        v50 = 0;
        v51 = cf;
      }

      CFRetain(cf);
      v52 = 0;
      dispatch_async(v27, &aBlock);
      if (v52)
      {
        CFRelease(v52);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      if (v50)
      {
        _Block_release(v50);
      }

      if (v20)
      {
        _Block_release(v20);
      }

      CFRelease(cf);
    }

    CFRelease(cf);
    return;
  }

  if (!*(a1 + 63))
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *(a1 + 32);
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42 = v3;
  v43 = v3;
  qmi::MutableMessageBase::MutableMessageBase(&v42);
  v38[0] = MEMORY[0x29EDCA5F8];
  v38[1] = 1174405120;
  v39 = ___ZN5radio20QMICommandDriverBase14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke_2;
  v40 = &__block_descriptor_tmp_199;
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v41, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v41 = *(a1 + 40);
  }

  v4 = *(&v42 + 1);
  v5 = v43;
  v6 = *(&v42 + 1);
  if (*(&v42 + 1) != v43)
  {
    v6 = *(&v42 + 1);
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v43)
      {
        goto LABEL_16;
      }
    }
  }

  if (v6 == v43)
  {
LABEL_16:
    v9 = operator new(0x28uLL);
    v9[8] = 1;
    *v9 = &unk_2A1E1A108;
    *(v9 + 2) = 0;
    v8 = v9 + 16;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    if (v5 >= *(&v43 + 1))
    {
      v11 = v5 - v4;
      v12 = (v5 - v4) >> 3;
      v13 = v12 + 1;
      if ((v12 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v14 = *(&v43 + 1) - v4;
      if ((*(&v43 + 1) - v4) >> 2 > v13)
      {
        v13 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (v15 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v16 = v9;
        v17 = v9 + 16;
        v18 = operator new(8 * v15);
        v9 = v16;
      }

      else
      {
        v17 = v9 + 16;
        v18 = 0;
      }

      v21 = &v18[8 * v12];
      *v21 = v9;
      v10 = v21 + 8;
      memcpy(v18, v4, v11);
      *(&v42 + 1) = v18;
      *&v43 = v10;
      *(&v43 + 1) = &v18[8 * v15];
      if (v4)
      {
        operator delete(v4);
      }

      v8 = v17;
    }

    else
    {
      *v5 = v9;
      v10 = v5 + 8;
    }

    *&v43 = v10;
  }

  else
  {
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7 + 16;
  }

  v39(v38, v8);
  cf = (v2 + 264);
  v34 = QMIServiceMsg::create();
  v35 = 25000;
  v36 = 0;
  v37 = 0;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN5radio20QMICommandDriverBase14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke_200;
  v28[3] = &__block_descriptor_tmp_202;
  v23 = *(a1 + 80);
  v22 = *(a1 + 88);
  v28[4] = v2;
  v28[5] = v23;
  v29 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
  }

  v24 = *(a1 + 64);
  if (v24)
  {
    v24 = _Block_copy(v24);
  }

  v25 = *(a1 + 72);
  v31 = v24;
  object = v25;
  if (v25)
  {
    dispatch_retain(v25);
  }

  aBlock = MEMORY[0x29EDCA5F8];
  v47 = 0x40000000;
  v48 = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15SendTestCommand8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v49 = &unk_29EE5EC70;
  v50 = v28;
  v26 = _Block_copy(&aBlock);
  v37 = v26;
  if (v34)
  {
    qmi::Client::send();
    v26 = v37;
  }

  if (v26)
  {
    _Block_release(v26);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_weak(v29);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v42);
}

void sub_296F42720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  qmi::Client::SendProxy::~SendProxy(&a24);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&a39);
  _Unwind_Resume(a1);
}

_OWORD *___ZN5radio20QMICommandDriverBase14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 55);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = &v4[v3];
    v6 = *(a2 + 16);
    result = *a2;
    if (v6 - *a2 < v3)
    {
LABEL_3:
      if (result)
      {
        *(a2 + 8) = result;
        operator delete(result);
        v6 = 0;
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
      }

      if ((v3 & 0x8000000000000000) != 0)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v8 = 2 * v6;
      if (2 * v6 <= v3)
      {
        v8 = v3;
      }

      if (v6 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      result = operator new(v9);
      *a2 = result;
      *(a2 + 8) = result;
      *(a2 + 16) = result + v9;
      if (v3 < 0x20 || (result - v4) < 0x20)
      {
        v10 = v4;
        v11 = result;
      }

      else
      {
        v10 = &v4[v3 & 0x7FFFFFFFFFFFFFE0];
        v11 = result + (v3 & 0x7FFFFFFFFFFFFFE0);
        v12 = result + 1;
        v13 = (v4 + 16);
        v14 = v3 & 0x7FFFFFFFFFFFFFE0;
        do
        {
          v15 = *v13;
          *(v12 - 1) = *(v13 - 1);
          *v12 = v15;
          v12 += 2;
          v13 += 2;
          v14 -= 32;
        }

        while (v14);
        if (v3 == (v3 & 0x7FFFFFFFFFFFFFE0))
        {
          goto LABEL_33;
        }
      }

      do
      {
        v27 = *v10++;
        *v11++ = v27;
      }

      while (v10 != v5);
LABEL_33:
      *(a2 + 8) = v11;
      return result;
    }
  }

  else
  {
    v4 = (a1 + 32);
    v5 = (a1 + 32 + v3);
    v6 = *(a2 + 16);
    result = *a2;
    if (v6 - *a2 < v3)
    {
      goto LABEL_3;
    }
  }

  v16 = *(a2 + 8);
  v17 = v16 - result;
  v18 = v3 - (v16 - result);
  if (v3 > v16 - result)
  {
    v19 = &v4[v17];
    if (v16 != result)
    {
      result = memmove(result, v4, v17);
      v16 = *(a2 + 8);
    }

    v20 = v16;
    if (v19 == v5)
    {
      goto LABEL_36;
    }

    v21 = v19;
    if (v18 < 0x20)
    {
      v20 = v16;
    }

    else
    {
      v20 = v16;
      if ((v16 - v19) >= 0x20)
      {
        v21 = &v19[v18 & 0xFFFFFFFFFFFFFFE0];
        v20 = v16 + (v18 & 0xFFFFFFFFFFFFFFE0);
        v22 = v16 + 1;
        v23 = (v19 + 16);
        v24 = v18 & 0xFFFFFFFFFFFFFFE0;
        do
        {
          v25 = *v23;
          *(v22 - 1) = *(v23 - 1);
          *v22 = v25;
          v22 += 2;
          v23 += 2;
          v24 -= 32;
        }

        while (v24);
        if (v18 == (v18 & 0xFFFFFFFFFFFFFFE0))
        {
          goto LABEL_36;
        }
      }
    }

    do
    {
      v28 = *v21++;
      *v20++ = v28;
    }

    while (v21 != v5);
LABEL_36:
    *(a2 + 8) = v20;
    return result;
  }

  if (v3)
  {
    v26 = result;
    memmove(result, v4, v3);
    result = v26;
  }

  *(a2 + 8) = result + v3;
  return result;
}

void __copy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v2 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v2;
  }
}

void __destroy_helper_block_e8_32c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void ___ZN5radio20QMICommandDriverBase14simTestCommandENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENSC_IK14__CFDictionaryEEEEE_block_invoke_200(uint64_t a1, const qmi::ResponseBase *a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v23 = v6;
    if (v6)
    {
      v7 = v6;
      if (!*(a1 + 40))
      {
LABEL_53:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      cf = 0xAAAAAAAAAAAAAAAALL;
      v8 = *(a1 + 79);
      if (v8 >= 0)
      {
        v9 = *(a1 + 79);
      }

      else
      {
        v9 = *(a1 + 64);
      }

      v10 = v9 + 26;
      if (v9 + 26 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = (a1 + 56);
      if (v10 <= 0x16)
      {
        qmemcpy(__p, "sending SIM test command: ", 26);
        v13 = &__p[26];
      }

      else
      {
        if ((v10 | 7) == 0x17)
        {
          v12 = 25;
        }

        else
        {
          v12 = (v10 | 7) + 1;
        }

        *&__p[8] = v9 + 26;
        *&__p[16] = v12 | 0x8000000000000000;
        *__p = operator new(v12);
        qmemcpy(*__p, "sending SIM test command: ", 26);
        v13 = (*__p + 26);
        if (!v9)
        {
LABEL_19:
          v13[v9] = 0;
          if (__p[23] >= 0)
          {
            v15 = __p;
          }

          else
          {
            v15 = *__p;
          }

          radio::QMICommandDriverBase::checkError(&cf, v5, a2, v15);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
            if (cf)
            {
              goto LABEL_30;
            }
          }

          else if (cf)
          {
            goto LABEL_30;
          }

          v16 = v5[5];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a1 + 79) < 0)
            {
              v11 = *v11;
            }

            *__p = 136315138;
            *&__p[4] = v11;
            _os_log_impl(&dword_296ECF000, v16, OS_LOG_TYPE_DEFAULT, "#I SIM test command: %s successful", __p, 0xCu);
          }

LABEL_30:
          v17 = *(a1 + 80);
          if (!v17 || !*(a1 + 88))
          {
LABEL_51:
            if (cf)
            {
              CFRelease(cf);
            }

            goto LABEL_53;
          }

          v18 = cf;
          if (cf && (CFRetain(cf), (v17 = *(a1 + 80)) == 0))
          {
            v19 = 0;
          }

          else
          {
            v19 = _Block_copy(v17);
          }

          v20 = *(a1 + 88);
          *__p = MEMORY[0x29EDCA5F8];
          *&__p[8] = 1174405120;
          *&__p[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
          *&__p[24] = &__block_descriptor_tmp_305;
          if (v19)
          {
            aBlock = _Block_copy(v19);
            v26 = v18;
            if (!v18)
            {
              goto LABEL_41;
            }
          }

          else
          {
            aBlock = 0;
            v26 = v18;
            if (!v18)
            {
LABEL_41:
              v27 = 0;
              dispatch_async(v20, __p);
              if (v27)
              {
                CFRelease(v27);
              }

              if (v26)
              {
                CFRelease(v26);
              }

              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v19)
              {
                _Block_release(v19);
              }

              if (v18)
              {
                CFRelease(v18);
              }

              goto LABEL_51;
            }
          }

          CFRetain(v18);
          goto LABEL_41;
        }
      }

      if (v8 >= 0)
      {
        v14 = (a1 + 56);
      }

      else
      {
        v14 = *v11;
      }

      memmove(v13, v14, v9);
      goto LABEL_19;
    }
  }
}

void sub_296F42D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 88);
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_296F42E58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(a1 + 48);
    if (!v4)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v4);
}

void __copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE80c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
    v5 = *(a2 + 64);
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a2 + 64);
  if (v5)
  {
LABEL_5:
    v5 = _Block_copy(v5);
  }

LABEL_6:
  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c103_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE80c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    _Block_release(v4);
  }

  if (*(a1 + 63) < 0)
  {
    v5 = *(a1 + 40);

    operator delete(v5);
  }
}

void radio::QMICommandDriverBase::getFirmwareNonce(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::getPkHash(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::getPersParams(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  p_p = operator new(0x20uLL);
  __p = p_p;
  v11 = xmmword_296FBEC30;
  strcpy(p_p, "Unsupported cmd: getPersParams");
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = p_p;
    _os_log_error_impl(&dword_296ECF000, v5, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    if (v11 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }
  }

  v6 = xpc_string_create(p_p);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v7 = xpc_null_create();
  if (*a2)
  {
    v8 = _Block_copy(*a2);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v13 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
  v14 = &__block_descriptor_tmp_307;
  if (v8)
  {
    aBlock = _Block_copy(v8);
    v16 = v6;
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_12:
    v16 = xpc_null_create();
    object = v7;
    if (v7)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  aBlock = 0;
  v16 = v6;
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  xpc_retain(v6);
  object = v7;
  if (v7)
  {
LABEL_10:
    xpc_retain(v7);
    goto LABEL_14;
  }

LABEL_13:
  object = xpc_null_create();
LABEL_14:
  dispatch_async(v9, &block);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v7);
  xpc_release(v6);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }
}

void sub_296F43580(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::getFirmwareInfo(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getFirmwareInfo(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

uint64_t radio::QMICommandDriverBase::mapManifestStatus(radio::QMICommandDriverBase *this, int a2)
{
  if (a2 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void radio::QMICommandDriverBase::getManifestStatus(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::getManifest(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v9 = 0;
    v10 = *(a2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v9 = _Block_copy(v8);
  v10 = *(a2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = a1[2];
  if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x28uLL);
  *v15 = a1;
  v15[1] = v9;
  v15[2] = v10;
  v15[3] = v5;
  v15[4] = v7;
  v16 = a1[3];
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getManifest(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::setRegionCode(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "setRegionCode";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v2, 0xCu);
  }
}

void radio::QMICommandDriverBase::screenState(radio::QMICommandDriverBase *this, char a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *(this + 2);
  if (!v9 || (v10 = *(this + 1), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = this;
  v13[8] = a2;
  *(v13 + 2) = v5;
  *(v13 + 3) = v7;
  v14 = *(this + 3);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::screenState(BOOL)::$_0>(radio::QMICommandDriverBase::screenState(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::screenState(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::screenState(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::forceNetworkSearch(radio::QMICommandDriverBase *this)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(this + 5);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    v2 = 136315138;
    v3 = "forceNetworkSearch";
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &v2, 0xCu);
  }
}

void radio::QMICommandDriverBase::getRFSelfTestNonce(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v4 = operator new(0x28uLL);
  __p = v4;
  v12 = xmmword_296FBEC40;
  strcpy(v4, "Get RF Self Test none: not supported!");
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v4;
    _os_log_error_impl(&dword_296ECF000, v5, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    if (!*a2)
    {
      goto LABEL_24;
    }
  }

  else if (!*a2)
  {
    goto LABEL_24;
  }

  if (!*(a2 + 8))
  {
    goto LABEL_24;
  }

  if (v12 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v7 = xpc_string_create(p_p);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v8 = xpc_null_create();
  if (*a2)
  {
    v9 = _Block_copy(*a2);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
  v15 = &__block_descriptor_tmp_307;
  if (v9)
  {
    aBlock = _Block_copy(v9);
    v17 = v7;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_17:
    v17 = xpc_null_create();
    object = v8;
    if (v8)
    {
      goto LABEL_15;
    }

LABEL_18:
    object = xpc_null_create();
    goto LABEL_19;
  }

  aBlock = 0;
  v17 = v7;
  if (!v7)
  {
    goto LABEL_17;
  }

LABEL_14:
  xpc_retain(v7);
  object = v8;
  if (!v8)
  {
    goto LABEL_18;
  }

LABEL_15:
  xpc_retain(v8);
LABEL_19:
  dispatch_async(v10, &block);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  xpc_release(v8);
  xpc_release(v7);
LABEL_24:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void sub_296F44048(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void radio::QMICommandDriverBase::setRFSelfTestTicket(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = operator new(0x28uLL);
  strcpy(v5, "Set RF Self Test Ticket: not supported!");
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v5;
    _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    if (!*a3)
    {
      goto LABEL_22;
    }
  }

  else if (!*a3)
  {
    goto LABEL_22;
  }

  if (!*(a3 + 8))
  {
    goto LABEL_22;
  }

  std::string::__init_copy_ctor_external(&__p, v5, 0x27uLL);
  CreateError();
  if (*a3)
  {
    v7 = _Block_copy(*a3);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v15 = &__block_descriptor_tmp_292;
  if (v7)
  {
    v9 = _Block_copy(v7);
    v10 = cf;
    aBlock = v9;
    v17 = cf;
    if (!cf)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = cf;
  aBlock = 0;
  v17 = cf;
  if (cf)
  {
LABEL_11:
    CFRetain(v10);
  }

LABEL_12:
  dispatch_async(v8, &block);
  if (v17)
  {
    CFRelease(v17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_22:
  operator delete(v5);
}

void sub_296F442A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void radio::QMICommandDriverBase::prepareRFSelfTest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = operator new(0x38uLL);
  strcpy(v5, "Prepare baseband for RF Self Test: not supported!");
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = v5;
    _os_log_error_impl(&dword_296ECF000, v6, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    if (!*a3)
    {
      goto LABEL_22;
    }
  }

  else if (!*a3)
  {
    goto LABEL_22;
  }

  if (!*(a3 + 8))
  {
    goto LABEL_22;
  }

  std::string::__init_copy_ctor_external(&__p, v5, 0x31uLL);
  CreateError();
  if (*a3)
  {
    v7 = _Block_copy(*a3);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
  v15 = &__block_descriptor_tmp_292;
  if (v7)
  {
    v9 = _Block_copy(v7);
    v10 = cf;
    aBlock = v9;
    v17 = cf;
    if (!cf)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = cf;
  aBlock = 0;
  v17 = cf;
  if (cf)
  {
LABEL_11:
    CFRetain(v10);
  }

LABEL_12:
  dispatch_async(v8, &block);
  if (v17)
  {
    CFRelease(v17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_22:
  operator delete(v5);
}

void sub_296F444F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void radio::QMICommandDriverBase::setBreadMode(radio::QMICommandDriverBase *this, char a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *(this + 2);
  if (!v9 || (v10 = *(this + 1), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = this;
  v13[8] = a2;
  *(v13 + 2) = v5;
  *(v13 + 3) = v7;
  v14 = *(this + 3);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0>(radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::setBreadMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::setButterMode(radio::QMICommandDriverBase *this, char a2)
{
  v3 = *(this + 2);
  if (!v3 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *(this + 2);
  if (!v9 || (v10 = *(this + 1), (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = this;
  v13[8] = a2;
  *(v13 + 2) = v5;
  *(v13 + 3) = v7;
  v14 = *(this + 3);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::setButterMode(BOOL)::$_0>(radio::QMICommandDriverBase::setButterMode(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::setButterMode(BOOL)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::setButterMode(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void radio::QMICommandDriverBase::sendVisitInfo(radio::QMICommandDriverBase *this, unsigned int a2, uint64_t a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = *(this + 2);
  if (!v11 || (v12 = *(this + 1), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x20uLL);
  *v15 = this;
  v15[1] = v7;
  v15[2] = v9;
  v15[3] = a2 | (a3 << 32);
  v16 = *(this + 3);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0>(radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::sendVisitInfo(unsigned int,unsigned int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void radio::QMICommandDriverBase::getSIMSummary(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getSIMSummary";
    _os_log_debug_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v7 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v10 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v11 = &__block_descriptor_tmp_305;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v14 = 0;
  dispatch_async(v5, &block);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296F44BB0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F44BEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F44BDCLL);
}

void radio::QMICommandDriverBase::getSIMPresence(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "getSIMPresence";
    _os_log_debug_impl(&dword_296ECF000, v3, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v7 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a2)
  {
    v4 = _Block_copy(*a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v10 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke_0;
  v11 = &__block_descriptor_tmp_305;
  if (v4)
  {
    aBlock = _Block_copy(v4);
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v13 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v14 = 0;
  dispatch_async(v5, &block);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296F44E04(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F44E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F44E30);
}

void *boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E19D80;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E19DF0;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E19D80;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E19DF0;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void std::__shared_ptr_pointer<watchdog *,std::shared_ptr<watchdog> ctu::SharedSynchronizable<watchdog>::make_shared_ptr<watchdog>(watchdog*)::{lambda(watchdog *)#1},std::allocator<watchdog>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<watchdog *,std::shared_ptr<watchdog> ctu::SharedSynchronizable<watchdog>::make_shared_ptr<watchdog>(watchdog*)::{lambda(watchdog *)#1},std::allocator<watchdog>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI8watchdogE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI8watchdogE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI8watchdogE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI8watchdogE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<watchdog> ctu::SharedSynchronizable<watchdog>::make_shared_ptr<watchdog>(watchdog*)::{lambda(watchdog*)#1}::operator() const(watchdog*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    dispatch_source_cancel(*(a1 + 32));
    v2 = *(a1 + 32);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(a1);
  }
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3dms3abm11EventReport10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F453C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x29EDB8F00];
  if (!a3)
  {
    v6 = MEMORY[0x29EDB8EF8];
  }

  v7 = *v6;
  if (cf && v7)
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

  CFRelease(v7);
LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F454B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(uint64_t a1, int *a2, uint64_t **a3)
{
  v5 = (a1 + 32);
  v4 = *(a1 + 32);
  if (!v4)
  {
    if (*(a1 + 80) != *a3)
    {
      goto LABEL_75;
    }

    v19 = (*a3)[1];
    v20 = (a1 + 32);
    v8 = (a1 + 32);
    if (v19 != a1)
    {
      goto LABEL_71;
    }

    goto LABEL_50;
  }

  v6 = *a2;
  v7 = a2[2];
  v8 = (a1 + 32);
  v9 = *(a1 + 32);
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v14 = *(v9 + 8);
        v15 = v14 < 1;
        if (v14 == 1)
        {
          v15 = *(v9 + 10) < v7;
        }

        if (!v15)
        {
          break;
        }

        v9 = v9[1];
        if (!v9)
        {
          goto LABEL_16;
        }
      }

      v8 = v9;
      v9 = *v9;
    }

    while (v9);
  }

  else
  {
    do
    {
      v10 = *(v9 + 8);
      v11 = v10 == v6;
      v15 = v10 < v6;
      v12 = v10 < v6;
      if (v15)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v11)
      {
        v12 = 0;
        v8 = v9;
      }

      else
      {
        v8 = v13;
      }

      v9 = v9[v12];
    }

    while (v9);
  }

LABEL_16:
  if (v8[6] != *a3)
  {
    goto LABEL_75;
  }

  if (v6 == 1)
  {
    v16 = (a1 + 32);
    v17 = *(a1 + 32);
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 == 1)
      {
        if (v7 < *(v17 + 10))
        {
          goto LABEL_24;
        }

LABEL_19:
        v17 = v17[1];
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v18 <= 1)
        {
          goto LABEL_19;
        }

LABEL_24:
        v16 = v17;
        v17 = *v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v16 = (a1 + 32);
  v21 = *(a1 + 32);
  do
  {
    v22 = *(v21 + 32);
    v23 = v6 == v22;
    v15 = v6 < v22;
    v24 = 8 * (v6 >= v22);
    if (v15)
    {
      v25 = v21;
    }

    else
    {
      v25 = v16;
    }

    if (v23)
    {
      v24 = 8;
    }

    else
    {
      v16 = v25;
    }

    v21 = *(v21 + v24);
  }

  while (v21);
LABEL_37:
  v19 = (*a3)[1];
  v26 = a1;
  if (v16 != v5)
  {
    v26 = v16[6];
  }

  if (v19 == v26)
  {
LABEL_50:
    v31 = v8[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      v35 = v8;
      do
      {
        v32 = v35[2];
        v11 = *v32 == v35;
        v35 = v32;
      }

      while (!v11);
    }

    v36 = a3;
    if (*(a1 + 24) == v8)
    {
      *(a1 + 24) = v32;
    }

    --*(a1 + 40);
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v8);
    operator delete(v8);
    a3 = v36;
    goto LABEL_75;
  }

  v27 = *a2;
  if (*a2 == 1)
  {
    v28 = a2[2];
    while (1)
    {
      v20 = v4;
      v29 = *(v4 + 8);
      if (v29 == 1)
      {
        v30 = *(v4 + 10);
        if (v30 <= v28)
        {
          if (v30 >= v28)
          {
            *(v4 + 6) = v19;
            goto LABEL_75;
          }

          goto LABEL_48;
        }

LABEL_42:
        v4 = *v4;
        if (!*v20)
        {
          v5 = v20;
          goto LABEL_71;
        }
      }

      else
      {
        if (v29 > 1)
        {
          goto LABEL_42;
        }

LABEL_48:
        v4 = *(v4 + 1);
        if (!v4)
        {
          v5 = v20 + 1;
          goto LABEL_71;
        }
      }
    }
  }

  v33 = *(v4 + 8);
  if (v27 == v33)
  {
    goto LABEL_74;
  }

  while (v27 >= v33)
  {
    if (v33 >= v27)
    {
      goto LABEL_74;
    }

    v34 = *(v4 + 1);
    if (!v34)
    {
      v5 = v4 + 8;
      goto LABEL_70;
    }

LABEL_56:
    v33 = *(v34 + 8);
    v4 = v34;
    if (v27 == v33)
    {
      v34[6] = v19;
      goto LABEL_75;
    }
  }

  v34 = *v4;
  if (*v4)
  {
    goto LABEL_56;
  }

  v5 = v4;
LABEL_70:
  v20 = v4;
LABEL_71:
  v37 = a3;
  v4 = operator new(0x38uLL);
  *(v4 + 4) = *a2;
  *(v4 + 10) = a2[2];
  *(v4 + 6) = 0;
  *v4 = 0;
  *(v4 + 1) = 0;
  *(v4 + 2) = v20;
  *v5 = v4;
  v39 = **(a1 + 24);
  if (v39)
  {
    *(a1 + 24) = v39;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v4);
  ++*(a1 + 40);
  a3 = v37;
LABEL_74:
  *(v4 + 6) = v19;
LABEL_75:
  v40 = *a3;
  v41 = **a3;
  v42 = (*a3)[1];
  *(v41 + 8) = v42;
  *v42 = v41;
  --*(a1 + 16);
  v43 = v40[3];
  if (v43)
  {
    if (atomic_fetch_add(v43 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v43 + 16))(v43);
      if (atomic_fetch_add(v43 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v43 + 24))(v43);
      }
    }
  }

  operator delete(v40);
  return v42;
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v44[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    return;
  }

  if (v1 == a1[1])
  {
LABEL_50:
    v23 = a1[3];
    if (v23 != v1)
    {
      goto LABEL_53;
    }

    return;
  }

  do
  {
    boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::clear((a1[2] + 8));
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v42 = v3;
    v43 = v3;
    v40 = v3;
    v41 = v3;
    v38 = v3;
    v39 = v3;
    v36 = v3;
    v37 = v3;
    v34 = v3;
    v35 = v3;
    v32 = v3;
    v33 = v3;
    v4 = *(*a1 + 16);
    *&v42 = 10;
    *(&v42 + 1) = &v32;
    *&v43 = 0;
    *(&v43 + 1) = v4;
    (*(*v4 + 24))(v4);
    v5 = *a1;
    v6 = *(*a1 + 16);
    v7 = a1[2];
    v8 = *(v6 + 32);
    if (v8)
    {
      v9 = *v8;
      if (*v8 != v8[1])
      {
        while (1)
        {
          memset(v44, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v9, v44);
          if ((*v9 ^ (*v9 >> 31)) == 2)
          {
            if (!(*(**(v9 + 8) + 24))(*(v9 + 8)))
            {
              goto LABEL_8;
            }
          }

          else
          {
            v10 = *(v9 + 16);
            if (v10 && atomic_load_explicit((v10 + 8), memory_order_acquire))
            {
LABEL_8:
              boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::push_back((v7 + 8), v44);
              v11 = 0;
              if (LODWORD(v44[0]) == SLODWORD(v44[0]) >> 31)
              {
                goto LABEL_15;
              }

              goto LABEL_9;
            }
          }

          if (*(v6 + 24) == 1)
          {
            *(v6 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v6, &v32);
          }

          v11 = 1;
          if (LODWORD(v44[0]) == SLODWORD(v44[0]) >> 31)
          {
LABEL_15:
            v12 = v44[2];
            if (v44[2])
            {
              if (atomic_fetch_add((v44[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v12 + 16))(v12);
                if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v12 + 24))(v12);
                }
              }
            }

            goto LABEL_19;
          }

LABEL_9:
          if (v44[1])
          {
            (*(*v44[1] + 8))(v44[1]);
          }

LABEL_19:
          if ((v11 & 1) == 0)
          {
            v9 += 24;
            if (v9 != *(*(v6 + 32) + 8))
            {
              continue;
            }
          }

          v5 = *a1;
          v6 = *(*a1 + 16);
          v7 = a1[2];
          break;
        }
      }
    }

    if ((*(v6 + 24) & 1) == 0)
    {
      ++*(v7 + 284);
LABEL_32:
      v16 = 1;
      goto LABEL_33;
    }

    ++*(v7 + 280);
    v13 = *(v6 + 16);
    if (v13)
    {
      if (atomic_load_explicit((v13 + 8), memory_order_acquire))
      {
        goto LABEL_32;
      }

      v7 = a1[2];
      v5 = *a1;
    }

    a1[3] = v5;
    if (a1[1] == v5)
    {
      v22 = *(v7 + 288);
      if (v22)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v22, &v32);
      }

      v16 = 0;
      *(v7 + 288) = 0;
    }

    else
    {
      v14 = *(v5 + 16);
      v15 = *(v7 + 288);
      if (v15)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v32);
      }

      *(v7 + 288) = v14;
      v16 = 0;
      if (v14)
      {
        ++*(v14 + 28);
      }
    }

LABEL_33:
    (*(**(&v43 + 1) + 32))(*(&v43 + 1));
    v17 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      if (v43 > 0)
      {
        v20 = *(&v42 + 1) + 16 * v43;
        do
        {
          v21 = *(v20 - 8);
          if (v21)
          {
            if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v21 + 16))(v21);
              if (atomic_fetch_add(v21 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v21 + 24))(v21);
              }
            }
          }

          v20 -= 16;
        }

        while (v20 > v17);
      }

      if (v42 >= 0xB)
      {
        operator delete(*(&v42 + 1));
      }
    }

    v1 = *a1;
    v18 = a1[1];
    if (!v16)
    {
      if (v1 != v18)
      {
        return;
      }

      goto LABEL_50;
    }

    v19 = *(v1 + 8);
    *a1 = v19;
  }

  while (v19 != v18);
  v24 = v18;
  v23 = a1[3];
  if (v23 == v24)
  {
    return;
  }

LABEL_53:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v25;
  v41 = v25;
  v38 = v25;
  v39 = v25;
  v36 = v25;
  v37 = v25;
  v34 = v25;
  v35 = v25;
  v32 = v25;
  v33 = v25;
  v26 = *(v23 + 16);
  *&v42 = 10;
  *(&v42 + 1) = &v32;
  *&v43 = 0;
  *(&v43 + 1) = v26;
  (*(*v26 + 24))(v26);
  v27 = a1[2];
  a1[3] = a1[1];
  v28 = *(v27 + 288);
  if (v28)
  {
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v28, &v32);
  }

  *(v27 + 288) = 0;
  (*(**(&v43 + 1) + 32))(*(&v43 + 1));
  v29 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    if (v43 > 0)
    {
      v30 = *(&v42 + 1) + 16 * v43;
      do
      {
        v31 = *(v30 - 8);
        if (v31)
        {
          if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v31 + 16))(v31);
            if (atomic_fetch_add(v31 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v31 + 24))(v31);
            }
          }
        }

        v30 -= 16;
      }

      while (v30 > v29);
    }

    if (v42 >= 0xB)
    {
      operator delete(*(&v42 + 1));
    }
  }
}

void sub_296F45E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_296F45E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(void *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v3 = a1;
  v74 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69[8] = v4;
  v69[9] = v4;
  v69[6] = v4;
  v69[7] = v4;
  v69[4] = v4;
  v69[5] = v4;
  v69[2] = v4;
  v69[3] = v4;
  v69[0] = v4;
  v69[1] = v4;
  v5 = a1[3];
  v70 = 10;
  __p = v69;
  v72 = 0;
  v73 = v5;
  pthread_mutex_lock(v5);
  if (**v3 != a2)
  {
    goto LABEL_95;
  }

  v6 = v3[1];
  if (!v6 || atomic_load_explicit(v6 + 2, memory_order_acquire) != 1)
  {
    v7 = operator new(0x20uLL);
    v8 = *v3;
    v9 = **v3;
    v65 = v7;
    v10 = operator new(0x40uLL);
    v11 = v10;
    *v10 = v10;
    v10[1] = v10;
    v10[2] = 0;
    v12 = *(v9 + 8);
    if (v12 != v9)
    {
      v13 = 0;
      v14 = v10;
      do
      {
        v15 = operator new(0x20uLL);
        v15[2] = v12[2];
        v16 = v12[3];
        v15[3] = v16;
        if (v16)
        {
          atomic_fetch_add_explicit((v16 + 8), 1u, memory_order_relaxed);
          v14 = *v11;
          v13 = v11[2];
        }

        *v15 = v14;
        v15[1] = v11;
        v14[1] = v15;
        *v11 = v15;
        v11[2] = ++v13;
        v12 = v12[1];
        v14 = v15;
      }

      while (v12 != v9);
    }

    v63 = v3;
    v64 = v8;
    v11[3] = 0;
    v11[4] = 0;
    v17 = v11 + 4;
    v11[5] = 0;
    *(v11 + 48) = *(v9 + 48);
    v66 = (v11 + 3);
    v11[3] = v11 + 4;
    v18 = *(v9 + 24);
    v19 = (v9 + 32);
    if (v18 == (v9 + 32))
    {
LABEL_10:
      *(v11 + 56) = *(v9 + 56);
      v20 = *(v9 + 24);
      if (v20 != v19)
      {
        v21 = v11[3];
        v22 = v11[1];
        do
        {
          v21[6] = v22;
          v23 = v9;
          if (v20 != v19)
          {
            v23 = v20[6];
          }

          v24 = v20[1];
          v25 = v24;
          v26 = v20;
          if (v24)
          {
            do
            {
              v27 = v25;
              v25 = *v25;
            }

            while (v25);
          }

          else
          {
            do
            {
              v27 = v26[2];
              v28 = *v27 == v26;
              v26 = v27;
            }

            while (!v28);
          }

          v29 = v9;
          if (v27 != v19)
          {
            v29 = v27[6];
          }

          while (v23 != v29)
          {
            v23 = *(v23 + 8);
            v22 = *(v22 + 8);
          }

          if (v24)
          {
            do
            {
              v30 = v24;
              v24 = *v24;
            }

            while (v24);
          }

          else
          {
            do
            {
              v30 = v20[2];
              v28 = *v30 == v20;
              v20 = v30;
            }

            while (!v28);
          }

          v31 = v21[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v21[2];
              v28 = *v32 == v21;
              v21 = v32;
            }

            while (!v28);
          }

          v20 = v30;
          v21 = v32;
        }

        while (v30 != v19);
      }

      *v65 = v11;
      v65[1] = 0;
      v52 = operator new(0x18uLL);
      v52[1] = 0x100000001;
      *v52 = &unk_2A1E19F10;
      v52[2] = v11;
      v65[1] = v52;
      v65[2] = v64[2];
      v53 = v64[3];
      v65[3] = v53;
      v3 = v63;
      if (v53)
      {
        atomic_fetch_add_explicit((v53 + 8), 1u, memory_order_relaxed);
      }

      v67 = v65;
      v68 = 0;
      v54 = operator new(0x18uLL);
      v54[1] = 0x100000001;
      *v54 = &unk_2A1E19EB0;
      v54[2] = v65;
      v55 = *v63;
      v56 = v63[1];
      *v63 = v65;
      v63[1] = v54;
      v67 = v55;
      v68 = v56;
      if (v56)
      {
        if (atomic_fetch_add(v56 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v56 + 16))(v56);
          if (atomic_fetch_add(v56 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v56 + 24))(v56);
          }
        }
      }

      goto LABEL_88;
    }

    while (1)
    {
      v33 = *(v18 + 8);
      v34 = *v66;
      v35 = *v17;
      v36 = v11 + 4;
      if (*v66 != v17)
      {
        v37 = *v17;
        v38 = v11 + 4;
        if (v35)
        {
          do
          {
            v36 = v37;
            v37 = v37[1];
          }

          while (v37);
        }

        else
        {
          do
          {
            v36 = v38[2];
            v28 = *v36 == v38;
            v38 = v36;
          }

          while (v28);
        }

        v39 = *(v18 + 10);
        v40 = *(v36 + 8);
        if (v40 == v33)
        {
          if (v33 != 1)
          {
            goto LABEL_55;
          }

          if (*(v36 + 10) >= v39)
          {
            v41 = *v17;
            v42 = v11 + 4;
            v43 = v11 + 4;
            if (v35)
            {
              goto LABEL_59;
            }

LABEL_66:
            v47 = operator new(0x38uLL);
            v48 = *(v18 + 2);
            v47[6] = v18[6];
            *(v47 + 2) = v48;
            *v47 = 0;
            v47[1] = 0;
            v47[2] = v43;
            *v42 = v47;
            if (*v34)
            {
              *v66 = *v34;
            }

            std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v11[4], v47);
            ++v11[5];
            goto LABEL_69;
          }
        }

        else if (v40 >= v33)
        {
LABEL_55:
          v42 = v11 + 4;
          v43 = v11 + 4;
          if (!v35)
          {
            goto LABEL_66;
          }

          v41 = *v17;
          if (v33 != 1)
          {
            v44 = *(v35 + 8);
            v43 = *v17;
            while (v33 != v44)
            {
              if (v33 < v44)
              {
                v51 = *v43;
                v42 = v43;
                if (!*v43)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v44 >= v33)
                {
                  goto LABEL_69;
                }

                v51 = v43[1];
                if (!v51)
                {
                  goto LABEL_65;
                }
              }

              v44 = *(v51 + 32);
              v43 = v51;
            }

            goto LABEL_69;
          }

          while (1)
          {
LABEL_59:
            v43 = v41;
            v45 = *(v41 + 8);
            if (v45 == 1)
            {
              v46 = *(v41 + 10);
              if (v46 > v39)
              {
                goto LABEL_58;
              }

              if (v46 >= v39)
              {
                goto LABEL_69;
              }
            }

            else if (v45 > 1)
            {
LABEL_58:
              v41 = *v41;
              v42 = v43;
              if (!*v43)
              {
                goto LABEL_66;
              }

              continue;
            }

            v41 = v41[1];
            if (!v41)
            {
LABEL_65:
              v42 = v43 + 1;
              goto LABEL_66;
            }
          }
        }
      }

      if (v35)
      {
        v43 = v36;
      }

      else
      {
        v43 = v11 + 4;
      }

      if (v35)
      {
        v42 = v36 + 1;
      }

      else
      {
        v42 = v11 + 4;
      }

      if (!*v42)
      {
        goto LABEL_66;
      }

LABEL_69:
      v49 = v18[1];
      if (v49)
      {
        do
        {
          v50 = v49;
          v49 = *v49;
        }

        while (v49);
      }

      else
      {
        do
        {
          v50 = v18[2];
          v28 = *v50 == v18;
          v18 = v50;
        }

        while (!v28);
      }

      v18 = v50;
      if (v50 == v19)
      {
        goto LABEL_10;
      }
    }
  }

LABEL_88:
  v57 = **v3;
  v58 = *(v57 + 8);
  v67 = v58;
  if (v57 != v58)
  {
    do
    {
      while (1)
      {
        v59 = v58[2];
        if ((*(v59 + 24) & 1) == 0)
        {
          break;
        }

        v58 = v58[1];
        v67 = v58;
        if (v58 == v57)
        {
          goto LABEL_93;
        }
      }

      v58 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::erase(v57, (v59 + 64), &v67);
      v57 = **v3;
      v67 = v58;
    }

    while (v58 != v57);
LABEL_93:
    v58 = v57;
  }

  v3[2] = v58;
LABEL_95:
  pthread_mutex_unlock(v73);
  v60 = __p;
  if (__p)
  {
    if (v72 > 0)
    {
      v61 = __p + 16 * v72;
      do
      {
        v62 = *(v61 - 1);
        if (v62)
        {
          if (atomic_fetch_add(v62 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v62 + 16))(v62);
            if (atomic_fetch_add(v62 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v62 + 24))(v62);
            }
          }
        }

        v61 -= 16;
      }

      while (v61 > v60);
    }

    if (v70 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

void sub_296F465F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
    if (a1[2])
    {
      v2 = a1[1];
      v3 = *(*a1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      a1[2] = 0;
      if (v2 != a1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,ctu::cf::CFSharedRef<__CFDictionary const>>>::~slot_call_iterator_cache(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8[8] = v3;
    v8[9] = v3;
    v8[6] = v3;
    v8[7] = v3;
    v8[4] = v3;
    v8[5] = v3;
    v8[2] = v3;
    v8[3] = v3;
    v8[0] = v3;
    v8[1] = v3;
    v9 = 10;
    __p = v8;
    v11 = 0;
    v12 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v8);
    (*(*v12 + 32))(v12);
    v4 = __p;
    if (__p)
    {
      if (v11 > 0)
      {
        v6 = __p + 16 * v11;
        do
        {
          v7 = *(v6 - 1);
          if (v7)
          {
            if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v7 + 16))(v7);
              if (atomic_fetch_add(v7 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v7 + 24))(v7);
              }
            }
          }

          v6 -= 16;
        }

        while (v6 > v4);
      }

      if (v9 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_296F46FE4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void ___ZNK3qmi6Client13setIndHandlerIRKN3bsp3abm11DumpLogsInd10IndicationEEEvtU13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::MessageBase::MessageBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<dms::tlv::abm::OperatingModeReporting>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<dms::tlv::abm::OperatingModeReporting>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E19F88;
  return result;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F472C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<dms::tlv::abm::OperatingMode>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<dms::tlv::abm::OperatingMode>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1A008;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm16SetOperatingMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm16GetOperatingMode8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm18ReleaseResetDetect8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F4765C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm17GetBasebandStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3dms3abm20GetBasebandFWVersion8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm27GetFactoryCalibrationStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F479B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,unsigned short>(__CFDictionary *a1, CFTypeRef cf, unsigned int a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F47AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F47AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,long long>(__CFDictionary *a1, CFTypeRef cf, uint64_t a3, CFAllocatorRef allocator)
{
  if (cf)
  {
    CFRetain(cf);
  }

  valuePtr = a3;
  v8 = CFNumberCreate(allocator, kCFNumberLongLongType, &valuePtr);
  v9 = v8;
  if (cf && v8)
  {
    CFDictionaryAddValue(a1, cf, v8);
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  CFRelease(v9);
LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296F47B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  _Unwind_Resume(a1);
}

void sub_296F47B9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm22GetRFCalibrationStatus8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm13GetWakeReason8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DumpLogsState>::write(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  v3 = *a2;
  v4 = *a2 + 4;
  *(v3 + 3) = *(result + 9);
  *a2 = v4;
  *v3 = v2;
  *(v3 + 1) = 1;
  return result;
}

_WORD *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::DumpLogsState>::clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  result[4] = *(a1 + 8);
  *result = &unk_2A1E1A088;
  return result;
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm8DumpLogs8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F47F34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Payload>::~TlvWrapper(void *result)
{
  *result = &unk_2A1E1A108;
  v1 = result[2];
  if (v1)
  {
    result[3] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Payload>::~TlvWrapper(void *a1)
{
  *a1 = &unk_2A1E1A108;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  operator delete(a1);
}

void *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Payload>::write(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = (*a2 + 3);
  *a2 = v6;
  result = memcpy(v6, *(a1 + 16), *(a1 + 24) - *(a1 + 16));
  v8 = *(a1 + 24) - *(a1 + 16);
  *a2 = &v6[v8];
  *v5 = v4;
  *(v5 + 1) = v8;
  return result;
}

_BYTE *qmi::MutableMessageBase::TlvWrapper<bsp::tlv::abm::Payload>::clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  v2[8] = *(a1 + 8);
  *(v2 + 2) = 0;
  *v2 = &unk_2A1E1A108;
  *(v2 + 3) = 0;
  *(v2 + 4) = 0;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = v3 - v4;
  if (v3 != v4)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v3 - v4);
    *(v2 + 2) = v6;
    *(v2 + 3) = v6;
    v7 = &v6[v5];
    *(v2 + 4) = &v6[v5];
    memcpy(v6, v4, v5);
    *(v2 + 3) = v7;
  }

  return v2;
}

void sub_296F48180(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm15SendTestCommand8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F4826C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v4;
  v21[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v16 = v3 + 264;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZZN5radio20QMICommandDriverBase16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_315;
  v12[4] = v3;
  v5 = v2[4];
  v12[5] = v2[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[1];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = v2[2];
  v14 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm8GetNonce8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5ECE8;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v21);
  v8 = v2[4];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v2[2];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[1];
  if (v10)
  {
    _Block_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_296F484F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v24 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  std::unique_ptr<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F48540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getFirmwareNonce(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v52 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v38 = v6;
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
LABEL_53:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        return;
      }

      if (*(a2 + 1))
      {
        __p = 0;
        p_p = &__p;
        v41 = 0x2000000000;
        LOWORD(v42) = 0;
        v29[0] = MEMORY[0x29EDCA5F8];
        v29[1] = 0x40000000;
        v30 = ___ZZN5radio20QMICommandDriverBase16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
        v31 = &unk_29EE5ECC0;
        v32 = &__p;
        TlvValue = qmi::MessageBase::findTlvValue(a2);
        v10 = TlvValue;
        if (TlvValue)
        {
          tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 2);
          LOWORD(block.__r_.__value_.__l.__data_) = *v10;
          v30(v29, &block);
        }

        memset(v28, 170, sizeof(v28));
        ctu::hex(&block, *(p_p + 24));
        v11 = std::string::insert(&block, 0, "Failed to get Nonce: BBSecurityStatus: 0x", 0x29uLL);
        v12 = *&v11->__r_.__value_.__l.__data_;
        v28[2] = v11->__r_.__value_.__r.__words[2];
        *v28 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
        }

        v13 = *(v5 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v27 = v28;
          if (SHIBYTE(v28[2]) < 0)
          {
            v27 = v28[0];
          }

          LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
          *(block.__r_.__value_.__r.__words + 4) = v27;
          _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
        }

        if (SHIBYTE(v28[2]) >= 0)
        {
          v14 = v28;
        }

        else
        {
          v14 = v28[0];
        }

        v15 = xpc_string_create(v14);
        if (!v15)
        {
          v15 = xpc_null_create();
        }

        v16 = xpc_null_create();
        v17 = a1[7];
        if (v17)
        {
          v18 = _Block_copy(v17);
        }

        else
        {
          v18 = 0;
        }

        v25 = a1[8];
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
        v47 = &__block_descriptor_tmp_307;
        if (v18)
        {
          v48 = _Block_copy(v18);
          v49 = v15;
          if (v15)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v48 = 0;
          v49 = v15;
          if (v15)
          {
LABEL_27:
            xpc_retain(v15);
            v50 = v16;
            if (v16)
            {
LABEL_28:
              xpc_retain(v16);
LABEL_32:
              dispatch_async(v25, &block);
              xpc_release(v50);
              v50 = 0;
              xpc_release(v49);
              v49 = 0;
              if (v48)
              {
                _Block_release(v48);
              }

              if (v18)
              {
                _Block_release(v18);
              }

              xpc_release(v16);
              xpc_release(v15);
              if (SHIBYTE(v28[2]) < 0)
              {
                operator delete(v28[0]);
              }

              _Block_object_dispose(&__p, 8);
              goto LABEL_53;
            }

LABEL_31:
            v50 = xpc_null_create();
            goto LABEL_32;
          }
        }

        v49 = xpc_null_create();
        v50 = v16;
        if (v16)
        {
          goto LABEL_28;
        }

        goto LABEL_31;
      }

      block.__r_.__value_.__r.__words[0] = 0;
      block.__r_.__value_.__l.__size_ = &block;
      block.__r_.__value_.__r.__words[2] = 0x4002000000;
      v47 = __Block_byref_object_copy__308;
      v48 = __Block_byref_object_dispose__309;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v33[0] = MEMORY[0x29EDCA5F8];
      v33[1] = 0x40000000;
      v34 = ___ZZN5radio20QMICommandDriverBase16getFirmwareNonceEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_310;
      v35 = &unk_29EE5EC98;
      p_block = &block;
      v20 = qmi::MessageBase::findTlvValue(a2);
      if (v20)
      {
        __p = 0;
        p_p = 0;
        v41 = 0;
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v20, &v20[v19], v19);
        v34(v33, &__p);
        if (__p)
        {
          p_p = __p;
          operator delete(__p);
        }
      }

      v21 = xpc_null_create();
      v22 = xpc_data_create(*(block.__r_.__value_.__l.__size_ + 40), *(block.__r_.__value_.__l.__size_ + 48) - *(block.__r_.__value_.__l.__size_ + 40));
      if (!v22)
      {
        v22 = xpc_null_create();
      }

      v23 = a1[7];
      if (v23)
      {
        v24 = _Block_copy(v23);
      }

      else
      {
        v24 = 0;
      }

      v26 = a1[8];
      __p = MEMORY[0x29EDCA5F8];
      p_p = 1174405120;
      v41 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES2_EEEvDpT__block_invoke_0;
      v42 = &__block_descriptor_tmp_317;
      if (v24)
      {
        aBlock = _Block_copy(v24);
        v44 = v21;
        if (v21)
        {
          goto LABEL_42;
        }
      }

      else
      {
        aBlock = 0;
        v44 = v21;
        if (v21)
        {
LABEL_42:
          xpc_retain(v21);
          object = v22;
          if (v22)
          {
LABEL_43:
            xpc_retain(v22);
LABEL_47:
            dispatch_async(v26, &__p);
            xpc_release(object);
            object = 0;
            xpc_release(v44);
            v44 = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v24)
            {
              _Block_release(v24);
            }

            xpc_release(v22);
            xpc_release(v21);
            _Block_object_dispose(&block, 8);
            if (v49)
            {
              v50 = v49;
              operator delete(v49);
            }

            goto LABEL_53;
          }

LABEL_46:
          object = xpc_null_create();
          goto LABEL_47;
        }
      }

      v44 = xpc_null_create();
      object = v22;
      if (v22)
      {
        goto LABEL_43;
      }

      goto LABEL_46;
    }
  }
}

void sub_296F48B88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__308(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__309(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN5radio13CommandDriverEEE56c61_ZTSN8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm8GetNonce8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke(uint64_t a1, QMIServiceMsg *this)
{
  v2 = *(a1 + 32);
  if (*(this + 10) != 1 || *(this + 22) == 3)
  {
    memset(__p, 170, sizeof(__p));
    QMIServiceMsg::serialize(__p, this);
    qmi::ResponseBase::ResponseBase(v4, __p[0]);
    qmi::MessageBase::validateMsgId(v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  else
  {
    QMIServiceMsg::getNewError(this);
    qmi::MessageBase::MessageBase();
    qmi::MessageBase::validateMsgId(v4);
  }

  (*(v2 + 16))(v2, v4);
  qmi::MessageBase::~MessageBase(v4);
}

void sub_296F48EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  qmi::MessageBase::~MessageBase(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>(radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,dispatch_queue_s *::default_delete<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v4;
  v21[1] = v4;
  qmi::MutableMessageBase::MutableMessageBase(v21);
  v16 = v3 + 264;
  v17 = QMIServiceMsg::create();
  v18 = 25000;
  v19 = 0;
  v20 = 0;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_323;
  v12[4] = v3;
  v5 = v2[4];
  v12[5] = v2[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v2[1];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = v2[2];
  v14 = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN3bsp3abm9GetPKHash8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE5ED60;
  aBlock[4] = v12;
  v20 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v20)
  {
    _Block_release(v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v21);
  v8 = v2[4];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v2[2];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v2[1];
  if (v10)
  {
    _Block_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_296F49178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(v24 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  qmi::Client::SendProxy::~SendProxy(&a20);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  std::unique_ptr<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_296F491C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, ...)
{
  va_start(va, a9);
  std::unique_ptr<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0>(radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&)::{lambda(void)#1},std::default_delete<radio::QMICommandDriverM20::getFieldTestConfig(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0,std::default_delete<radio::QMICommandDriverBase::getPkHash(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      _Block_release(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke(void *a1, qmi::MessageBase *a2)
{
  v60 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v46 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_62:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v34 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v34);
    }

    return;
  }

  if (*(a2 + 1))
  {
    v7 = v6;
    __p = 0;
    p_p = &__p;
    v49 = 0x2000000000;
    LOWORD(v50) = 0;
    v37[0] = MEMORY[0x29EDCA5F8];
    v37[1] = 0x40000000;
    v38 = ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_3;
    v39 = &unk_29EE5ED38;
    v40 = &__p;
    TlvValue = qmi::MessageBase::findTlvValue(a2);
    v10 = TlvValue;
    if (TlvValue)
    {
      tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v9, 2);
      LOWORD(block.__r_.__value_.__l.__data_) = *v10;
      v38(v37, &block);
    }

    memset(v36, 170, sizeof(v36));
    ctu::hex(&block, *(p_p + 24));
    v11 = std::string::insert(&block, 0, "Failed to get PK hash: BBSecurityStatus: 0x", 0x2BuLL);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v36[2] = v11->__r_.__value_.__r.__words[2];
    *v36 = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }

    v13 = *(v5 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v35 = v36;
      if (SHIBYTE(v36[2]) < 0)
      {
        v35 = v36[0];
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315138;
      *(block.__r_.__value_.__r.__words + 4) = v35;
      _os_log_error_impl(&dword_296ECF000, v13, OS_LOG_TYPE_ERROR, "%s", &block, 0xCu);
    }

    v14 = xpc_int64_create(*(p_p + 24));
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    v15 = xpc_null_create();
    v16 = a1[7];
    if (v16)
    {
      v17 = _Block_copy(v16);
    }

    else
    {
      v17 = 0;
    }

    v24 = a1[8];
    block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke_0;
    v55 = &__block_descriptor_tmp_307;
    if (v17)
    {
      v56 = _Block_copy(v17);
      v57 = v14;
      if (v14)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v56 = 0;
      v57 = v14;
      if (v14)
      {
LABEL_25:
        xpc_retain(v14);
        v58 = v15;
        if (v15)
        {
LABEL_26:
          xpc_retain(v15);
LABEL_30:
          dispatch_async(v24, &block);
          xpc_release(v58);
          v58 = 0;
          xpc_release(v57);
          v57 = 0;
          if (v56)
          {
            _Block_release(v56);
          }

          if (v17)
          {
            _Block_release(v17);
          }

          xpc_release(v15);
          xpc_release(v14);
          if (SHIBYTE(v36[2]) < 0)
          {
            operator delete(v36[0]);
          }

          _Block_object_dispose(&__p, 8);
          v6 = v7;
          goto LABEL_62;
        }

LABEL_29:
        v58 = xpc_null_create();
        goto LABEL_30;
      }
    }

    v57 = xpc_null_create();
    v58 = v15;
    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  block.__r_.__value_.__r.__words[0] = 0;
  block.__r_.__value_.__l.__size_ = &block;
  block.__r_.__value_.__r.__words[2] = 0x4002000000;
  v55 = __Block_byref_object_copy__308;
  v56 = __Block_byref_object_dispose__309;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 0x40000000;
  v42 = ___ZZN5radio20QMICommandDriverBase9getPkHashEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES4_EEEENK3__0clEv_block_invoke_2;
  v43 = &unk_29EE5ED10;
  p_block = &block;
  v19 = qmi::MessageBase::findTlvValue(a2);
  if (v19)
  {
    __p = 0;
    p_p = 0;
    v49 = 0;
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&__p, v19, &v19[v18], v18);
    v42(v41, &__p);
    if (__p)
    {
      p_p = __p;
      operator delete(__p);
    }
  }

  v20 = *(block.__r_.__value_.__l.__size_ + 40);
  if (*(block.__r_.__value_.__l.__size_ + 48) - v20 < 4uLL)
  {
    std::vector<unsigned char>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = *v20;
  v22 = xpc_dictionary_create(0, 0, 0);
  if (v22 || (v22 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C2693B0](v22) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v22);
      v23 = v22;
    }

    else
    {
      v23 = xpc_null_create();
    }
  }

  else
  {
    v23 = xpc_null_create();
    v22 = 0;
  }

  xpc_release(v22);
  v25 = xpc_data_create(*(block.__r_.__value_.__l.__size_ + 40), *(block.__r_.__value_.__l.__size_ + 48) - *(block.__r_.__value_.__l.__size_ + 40));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, *MEMORY[0x29EDC8B90], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(bswap32(v21));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v23, *MEMORY[0x29EDC8B80], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = xpc_null_create();
  if (v23)
  {
    xpc_retain(v23);
    v30 = v23;
    v31 = a1[7];
    if (v31)
    {
LABEL_45:
      v32 = _Block_copy(v31);
      goto LABEL_48;
    }
  }

  else
  {
    v30 = xpc_null_create();
    v31 = a1[7];
    if (v31)
    {
      goto LABEL_45;
    }
  }

  v32 = 0;
LABEL_48:
  v33 = a1[8];
  __p = MEMORY[0x29EDCA5F8];
  p_p = 1174405120;
  v49 = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJNS1_4dictES7_EEEvDpT__block_invoke;
  v50 = &__block_descriptor_tmp_325;
  if (v32)
  {
    aBlock = _Block_copy(v32);
    v52 = v29;
    if (v29)
    {
      goto LABEL_50;
    }

LABEL_53:
    v52 = xpc_null_create();
    object = v30;
    if (v30)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  aBlock = 0;
  v52 = v29;
  if (!v29)
  {
    goto LABEL_53;
  }

LABEL_50:
  xpc_retain(v29);
  object = v30;
  if (v30)
  {
LABEL_51:
    xpc_retain(v30);
    goto LABEL_55;
  }

LABEL_54:
  object = xpc_null_create();
LABEL_55:
  dispatch_async(v33, &__p);
  xpc_release(object);
  object = 0;
  xpc_release(v52);
  v52 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  xpc_release(v30);
  xpc_release(v29);
  xpc_release(v23);
  _Block_object_dispose(&block, 8);
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  v6 = v46;
  if (v46)
  {
    goto LABEL_62;
  }
}