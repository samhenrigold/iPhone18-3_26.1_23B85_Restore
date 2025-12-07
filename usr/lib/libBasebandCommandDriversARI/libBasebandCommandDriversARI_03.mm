atomic_ullong *std::shared_ptr<trace::ARICommandDriver>::shared_ptr[abi:ne200100]<trace::ARICommandDriver,std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0AD88;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296DA2F98(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver*)#1}::operator() const(trace::ARICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<trace::ARICommandDriver *,std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver *)#1},std::allocator<trace::ARICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<trace::ARICommandDriver *,std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver *)#1},std::allocator<trace::ARICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<trace::ARICommandDriver> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriver>(trace::ARICommandDriver*)::{lambda(trace::ARICommandDriver*)#1}::operator() const(trace::ARICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void dispatch::block<void({block_pointer})(dispatch::group_session)>::operator()<dispatch::group_session const&>(uint64_t *a1, NSObject **a2)
{
  v2 = *a1;
  v3 = *a2;
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  (*(v2 + 16))(v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_296DA3198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvNS_13group_sessionEEEE40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a1 + 40);
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void __destroy_helper_block_e8_32c61_ZTSN8dispatch5blockIU13block_pointerFvNS_13group_sessionEEEE40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }
}

void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0AE30;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5trace13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c50_ZTSNSt3__110shared_ptrIKN5trace13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke(uint64_t a1)
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

void sub_296DA34D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__0vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v3[4];
      v7 = std::__shared_weak_count::lock(v4);
      v24 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_39:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v9;
        v21[3] = v9;
        v21[0] = v9;
        v21[1] = v9;
        AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::ARI_CsiTraceProfileSelectRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        HIBYTE(v26) = 13;
        strcpy(&block, "disable trace");
        checkError(&cf, v21, &block);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(block);
          if (cf)
          {
            goto LABEL_17;
          }
        }

        else if (cf)
        {
          goto LABEL_17;
        }

        v10 = AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::unpack(v21);
        if (v10 || *v22)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v18 = *v22;
            LODWORD(block) = 67109376;
            DWORD1(block) = v10;
            WORD4(block) = 1024;
            *(&block + 10) = v18;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to disable trace: unpackResult = %d result_code_t1 = %d", &block, 0xEu);
          }

          __p = operator new(0x19uLL);
          strcpy(__p, "Failed to disable trace");
          CreateError();
          v12 = cf;
          cf = block;
          *&block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (block)
            {
              CFRelease(block);
            }
          }

          operator delete(__p);
        }

        else
        {
          v17 = *(v5 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(block) = 0;
            _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully disabled trace", &block, 2u);
          }
        }

LABEL_17:
        v13 = v3[2];
        if (!v13 || !v3[3])
        {
LABEL_36:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C2651F0](v21);
          goto LABEL_39;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = v3[2]) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = v3[3];
        *&block = MEMORY[0x29EDCA5F8];
        *(&block + 1) = 1174405120;
        v26 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        v27 = &__block_descriptor_tmp_64_0;
        if (v15)
        {
          v28 = _Block_copy(v15);
          v29 = v14;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v28 = 0;
          v29 = v14;
          if (!v14)
          {
LABEL_28:
            dispatch_async(v16, &block);
            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              _Block_release(v28);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_36;
          }
        }

        CFRetain(v14);
        goto LABEL_28;
      }
    }
  }
}

void sub_296DA3914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c157_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c157_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__0NS_9allocatorISD_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0AED0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver17pauseTraceTrafficEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__0NS_9allocatorISD_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__1vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v3[4];
      v7 = std::__shared_weak_count::lock(v4);
      v24 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_39:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v9;
        v21[3] = v9;
        v21[0] = v9;
        v21[1] = v9;
        AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::ARI_CsiTraceProfileSelectRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block = operator new(0x19uLL);
        v26 = xmmword_296E1FAA0;
        strcpy(block, "configure sleep profile");
        checkError(&cf, v21, &block);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(block);
          if (cf)
          {
            goto LABEL_17;
          }
        }

        else if (cf)
        {
          goto LABEL_17;
        }

        v10 = AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::unpack(v21);
        if (v10 || *v22)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v18 = *v22;
            LODWORD(block) = 67109376;
            HIDWORD(block) = v10;
            LOWORD(v26) = 1024;
            *(&v26 + 2) = v18;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to configure sleep profile: unpackResult = %d result_code_t1 = %d", &block, 0xEu);
          }

          __p = operator new(0x28uLL);
          strcpy(__p, "Failed to configure sleep profile");
          CreateError();
          v12 = cf;
          cf = block;
          block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (block)
            {
              CFRelease(block);
            }
          }

          operator delete(__p);
        }

        else
        {
          v17 = *(v5 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(block) = 0;
            _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully configured sleep profile", &block, 2u);
          }
        }

LABEL_17:
        v13 = v3[2];
        if (!v13 || !v3[3])
        {
LABEL_36:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C2651F0](v21);
          goto LABEL_39;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = v3[2]) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = v3[3];
        block = MEMORY[0x29EDCA5F8];
        *&v26 = 1174405120;
        *(&v26 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        v27 = &__block_descriptor_tmp_64_0;
        if (v15)
        {
          v28 = _Block_copy(v15);
          v29 = v14;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v28 = 0;
          v29 = v14;
          if (!v14)
          {
LABEL_28:
            dispatch_async(v16, &block);
            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              _Block_release(v28);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_36;
          }
        }

        CFRetain(v14);
        goto LABEL_28;
      }
    }
  }
}

void sub_296DA3ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c159_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c159_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__1NS_9allocatorISD_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0AF50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver18enableSleepProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__1NS_9allocatorISD_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__2vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v3[4];
      v7 = std::__shared_weak_count::lock(v4);
      v24 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_39:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v22 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v21[2] = v9;
        v21[3] = v9;
        v21[0] = v9;
        v21[1] = v9;
        AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::ARI_CsiTraceProfileSelectRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        strcpy(block, "configure wake profile");
        block[23] = 22;
        checkError(&cf, v21, block);
        if ((block[23] & 0x80000000) != 0)
        {
          operator delete(*block);
          if (cf)
          {
            goto LABEL_17;
          }
        }

        else if (cf)
        {
          goto LABEL_17;
        }

        v10 = AriSdk::ARI_CsiTraceProfileSelectRspCb_SDK::unpack(v21);
        if (v10 || *v22)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v18 = *v22;
            *block = 67109376;
            *&block[4] = v10;
            *&block[8] = 1024;
            *&block[10] = v18;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to configure wake profile: unpackResult = %d result_code_t1 = %d", block, 0xEu);
          }

          __p = operator new(0x28uLL);
          strcpy(__p, "Failed to configure wake profile");
          CreateError();
          v12 = cf;
          cf = *block;
          *block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (*block)
            {
              CFRelease(*block);
            }
          }

          operator delete(__p);
        }

        else
        {
          v17 = *(v5 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *block = 0;
            _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully configured wake profile", block, 2u);
          }
        }

LABEL_17:
        v13 = v3[2];
        if (!v13 || !v3[3])
        {
LABEL_36:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C2651F0](v21);
          goto LABEL_39;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = v3[2]) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = v3[3];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        v26 = &__block_descriptor_tmp_64_0;
        if (v15)
        {
          v27 = _Block_copy(v15);
          v28 = v14;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v27 = 0;
          v28 = v14;
          if (!v14)
          {
LABEL_28:
            dispatch_async(v16, block);
            if (v28)
            {
              CFRelease(v28);
            }

            if (v27)
            {
              _Block_release(v27);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_36;
          }
        }

        CFRetain(v14);
        goto LABEL_28;
      }
    }
  }
}

void sub_296DA444C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c160_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c160_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__2NS_9allocatorISD_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0AFD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver19enableActiveProfileEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__2NS_9allocatorISD_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_E3__3vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v41 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v3[2];
      v7 = std::__shared_weak_count::lock(v4);
      v34 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_59:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31[3] = v9;
        v32 = v9;
        v31[1] = v9;
        v31[2] = v9;
        v31[0] = v9;
        AriSdk::ARI_CsiXsioGetRspCb_SDK::ARI_CsiXsioGetRspCb_SDK(v31, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        HIBYTE(v36) = 8;
        strcpy(&__p, "get mode");
        checkError(&cf, v31, &__p);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p);
          if (cf)
          {
            goto LABEL_17;
          }
        }

        else if (cf)
        {
          goto LABEL_17;
        }

        v10 = AriSdk::ARI_CsiXsioGetRspCb_SDK::unpack(v31);
        if (!v10 && !**(&v32 + 1))
        {
          v13 = *v32;
          v27 = *(v5 + 40);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p) = 67109120;
            DWORD1(__p) = v13;
            _os_log_impl(&dword_296D7D000, v27, OS_LOG_TYPE_DEFAULT, "#I Successfully retrieved mode (%d)", &__p, 8u);
          }

LABEL_18:
          if (!v3[3] || !v3[4])
          {
LABEL_56:
            if (cf)
            {
              CFRelease(cf);
            }

            MEMORY[0x29C263FF0](v31);
            goto LABEL_59;
          }

          v14 = xpc_dictionary_create(0, 0, 0);
          if (v14 || (v14 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C266420](v14) == MEMORY[0x29EDCAA00])
            {
              xpc_retain(v14);
              v15 = v14;
            }

            else
            {
              v15 = xpc_null_create();
            }
          }

          else
          {
            v15 = xpc_null_create();
            v14 = 0;
          }

          xpc_release(v14);
          v16 = xpc_null_create();
          xpc_release(v16);
          v17 = xpc_int64_create(v13);
          if (v17 || (v17 = xpc_null_create()) != 0)
          {
            xpc_retain(v17);
            v18 = v17;
          }

          else
          {
            v18 = xpc_null_create();
            v17 = 0;
          }

          xpc_dictionary_set_value(v15, "Mode", v18);
          v19 = xpc_null_create();
          xpc_release(v18);
          xpc_release(v19);
          if (v15)
          {
            xpc_retain(v15);
            v20 = v15;
          }

          else
          {
            v20 = xpc_null_create();
          }

          xpc_release(v17);
          xpc_release(v15);
          v21 = xpc_null_create();
          xpc_release(v21);
          v22 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          if (v20)
          {
            xpc_retain(v20);
            v23 = v20;
            v24 = v3[3];
            if (v24)
            {
LABEL_36:
              v25 = _Block_copy(v24);
              goto LABEL_39;
            }
          }

          else
          {
            v23 = xpc_null_create();
            v24 = v3[3];
            if (v24)
            {
              goto LABEL_36;
            }
          }

          v25 = 0;
LABEL_39:
          v26 = v3[4];
          *&__p = MEMORY[0x29EDCA5F8];
          *(&__p + 1) = 1174405120;
          v36 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEclIJS5_S7_EEEvDpT__block_invoke;
          v37 = &__block_descriptor_tmp_84;
          if (v25)
          {
            aBlock = _Block_copy(v25);
            v39 = v22;
            if (!v22)
            {
              goto LABEL_44;
            }
          }

          else
          {
            aBlock = 0;
            v39 = v22;
            if (!v22)
            {
LABEL_44:
              object = v23;
              if (v23)
              {
                xpc_retain(v23);
              }

              else
              {
                object = xpc_null_create();
              }

              dispatch_async(v26, &__p);
              xpc_release(object);
              object = 0;
              if (v39)
              {
                CFRelease(v39);
              }

              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (v25)
              {
                _Block_release(v25);
              }

              xpc_release(v23);
              if (v22)
              {
                CFRelease(v22);
              }

              xpc_release(v20);
              goto LABEL_56;
            }
          }

          CFRetain(v22);
          goto LABEL_44;
        }

        v11 = *(v5 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v28 = **(&v32 + 1);
          LODWORD(__p) = 67109376;
          DWORD1(__p) = v10;
          WORD4(__p) = 1024;
          *(&__p + 10) = v28;
          _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to retrieve mode: unpackResult = %d result_code_t2 = %d", &__p, 0xEu);
        }

        v29 = operator new(0x19uLL);
        strcpy(v29, "Failed to retrieve mode");
        CreateError();
        v12 = cf;
        cf = __p;
        *&__p = 0;
        if (v12)
        {
          CFRelease(v12);
          if (__p)
          {
            CFRelease(__p);
          }
        }

        operator delete(v29);
LABEL_17:
        v13 = 0;
        goto LABEL_18;
      }
    }
  }
}

void sub_296DA4B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c164_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_E3__3EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c164_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_E3__3EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_E3__3NS_9allocatorISF_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B050;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver12getTraceModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEEEUb2_E3__3NS_9allocatorISF_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEclIJS5_S7_EEEvDpT__block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = a1[6];
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, &cf, &object);
  xpc_release(object);
  object = 0;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296DA4E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, const void *a10)
{
  xpc_release(object);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32c87_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  v7 = a2[6];
  a1[6] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

  result = xpc_null_create();
  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c87_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN3xpc4dictEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver12setTraceModeENS2_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_E3__4vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v3 + 32);
      v7 = std::__shared_weak_count::lock(v4);
      v26 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_40:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v24 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v23[2] = v9;
        v23[3] = v9;
        v23[0] = v9;
        v23[1] = v9;
        AriSdk::ARI_CsiXsioSetRspCb_SDK::ARI_CsiXsioSetRspCb_SDK(v23, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        HIBYTE(v28) = 8;
        strcpy(&block, "set mode");
        checkError(&cf, v23, &block);
        if (SHIBYTE(v28) < 0)
        {
          operator delete(block);
          if (cf)
          {
            goto LABEL_18;
          }
        }

        else if (cf)
        {
          goto LABEL_18;
        }

        v10 = AriSdk::ARI_CsiXsioSetRspCb_SDK::unpack(v23);
        if (v10 || *v24)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v19 = *v24;
            LODWORD(block) = 67109376;
            DWORD1(block) = v10;
            WORD4(block) = 1024;
            *(&block + 10) = v19;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to set mode: unpackResult = %d result_code_t1 = %d", &block, 0xEu);
          }

          v21 = 18;
          strcpy(__p, "Failed to set mode");
          CreateError();
          v12 = cf;
          cf = block;
          *&block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (block)
            {
              CFRelease(block);
            }
          }

          if (v21 < 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          v17 = *(v5 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v3 + 40);
            LODWORD(block) = 67109120;
            DWORD1(block) = v18;
            _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully set mode %d", &block, 8u);
          }
        }

LABEL_18:
        v13 = *(v3 + 16);
        if (!v13 || !*(v3 + 24))
        {
LABEL_37:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C264020](v23);
          goto LABEL_40;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = *(v3 + 16)) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = *(v3 + 24);
        *&block = MEMORY[0x29EDCA5F8];
        *(&block + 1) = 1174405120;
        v28 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        v29 = &__block_descriptor_tmp_64_0;
        if (v15)
        {
          v30 = _Block_copy(v15);
          v31 = v14;
          if (!v14)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v30 = 0;
          v31 = v14;
          if (!v14)
          {
LABEL_29:
            dispatch_async(v16, &block);
            if (v31)
            {
              CFRelease(v31);
            }

            if (v30)
            {
              _Block_release(v30);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_37;
          }
        }

        CFRetain(v14);
        goto LABEL_29;
      }
    }
  }
}

void sub_296DA52AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c163_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver12setTraceModeENS1_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_E3__4EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c163_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver12setTraceModeENS1_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_E3__4EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver12setTraceModeENS1_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_E3__4NS_9allocatorISE_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B100;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver12setTraceModeENS1_4ModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb3_E3__4NS_9allocatorISE_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5trace16ARICommandDriver18profileMaskV1_syncENSt3__16vectorIcNS4_9allocatorIcEEEES8_NS4_8weak_ptrINS2_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENSC_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v39 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v3 + 32);
      v7 = std::__shared_weak_count::lock(v4);
      v30 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_41:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v28 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v27[2] = v9;
        v27[3] = v9;
        v27[0] = v9;
        v27[1] = v9;
        AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::ARI_CsiTraceProfileInitRspCb_SDK(v27, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block[23] = 18;
        strcpy(block, "update trace masks");
        checkError(&cf, v27, block);
        if ((block[23] & 0x80000000) != 0)
        {
          operator delete(*block);
          if (cf)
          {
            goto LABEL_19;
          }
        }

        else if (cf)
        {
          goto LABEL_19;
        }

        v10 = AriSdk::ARI_CsiTraceProfileInitRspCb_SDK::unpack(v27);
        if (v10 || *v28)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v23 = *v28;
            *block = 67109376;
            *&block[4] = v10;
            *&block[8] = 1024;
            *&block[10] = v23;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to update trace masks: unpackResult = %d result_code_t1 = %d", block, 0xEu);
          }

          __p = operator new(0x20uLL);
          v25 = xmmword_296E1FAD0;
          strcpy(__p, "Failed to update trace masks");
          CreateError();
          v12 = cf;
          cf = *block;
          *block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (*block)
            {
              CFRelease(*block);
            }
          }

          if (SHIBYTE(v25) < 0)
          {
            v13 = __p;
LABEL_18:
            operator delete(v13);
          }
        }

        else
        {
          v18 = *(v5 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            std::string::basic_string[abi:ne200100]<std::__wrap_iter<char const*>,0>(block, *(v3 + 40), *(v3 + 48));
            v19 = block[23];
            v20 = *block;
            std::string::basic_string[abi:ne200100]<std::__wrap_iter<char const*>,0>(&__p, *(v3 + 64), *(v3 + 72));
            v21 = block;
            if (v19 < 0)
            {
              v21 = v20;
            }

            if (v25 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 136315394;
            v32 = v21;
            v33 = 2080;
            v34 = p_p;
            _os_log_impl(&dword_296D7D000, v18, OS_LOG_TYPE_DEFAULT, "#I Successfully updated trace masks\nActive: %s\nSleep: %s", buf, 0x16u);
            if (SHIBYTE(v25) < 0)
            {
              operator delete(__p);
            }

            if ((block[23] & 0x80000000) != 0)
            {
              v13 = *block;
              goto LABEL_18;
            }
          }
        }

LABEL_19:
        v14 = *(v3 + 16);
        if (!v14 || !*(v3 + 24))
        {
LABEL_38:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C264FB0](v27);
          goto LABEL_41;
        }

        v15 = cf;
        if (cf && (CFRetain(cf), (v14 = *(v3 + 16)) == 0))
        {
          v16 = 0;
        }

        else
        {
          v16 = _Block_copy(v14);
        }

        v17 = *(v3 + 24);
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        v36 = &__block_descriptor_tmp_64_0;
        if (v16)
        {
          v37 = _Block_copy(v16);
          v38 = v15;
          if (!v15)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v37 = 0;
          v38 = v15;
          if (!v15)
          {
LABEL_30:
            dispatch_async(v17, block);
            if (v38)
            {
              CFRelease(v38);
            }

            if (v37)
            {
              _Block_release(v37);
            }

            if (v16)
            {
              _Block_release(v16);
            }

            if (v15)
            {
              CFRelease(v15);
            }

            goto LABEL_38;
          }
        }

        CFRetain(v15);
        goto LABEL_30;
      }
    }
  }
}

void sub_296DA58A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (*(v28 - 105) < 0)
  {
    operator delete(*(v28 - 128));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a15);
  MEMORY[0x29C264FB0](&a16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c222_ZTSNSt3__110shared_ptrIZN5trace16ARICommandDriver18profileMaskV1_syncENS_6vectorIcNS_9allocatorIcEEEES6_NS_8weak_ptrINS1_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c222_ZTSNSt3__110shared_ptrIZN5trace16ARICommandDriver18profileMaskV1_syncENS_6vectorIcNS_9allocatorIcEEEES6_NS_8weak_ptrINS1_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B180;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriver::profileMaskV1_sync(std::vector<char>,std::vector<char>,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    a1[12] = v2;
    operator delete(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[9] = v3;
    operator delete(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5trace16ARICommandDriver18profileMaskV2_syncENSt3__16vectorIcNS4_9allocatorIcEEEEtNS4_8weak_ptrINS2_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENSC_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v3 + 16);
      v7 = std::__shared_weak_count::lock(v4);
      v27 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_41:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v25 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v24[2] = v9;
        v24[3] = v9;
        v24[0] = v9;
        v24[1] = v9;
        AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::ARI_CsiTraceProfilePacketsRspCb_SDK(v24, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block[23] = 18;
        strcpy(block, "update trace masks");
        checkError(&cf, v24, block);
        if ((block[23] & 0x80000000) != 0)
        {
          operator delete(*block);
          if (cf)
          {
            goto LABEL_19;
          }
        }

        else if (cf)
        {
          goto LABEL_19;
        }

        v10 = AriSdk::ARI_CsiTraceProfilePacketsRspCb_SDK::unpack(v24);
        if (v10 || *v25)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v22 = *v25;
            *block = 67109376;
            *&block[4] = v10;
            *&block[8] = 1024;
            *&block[10] = v22;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to update trace masks: unpackResult = %d result_code_t1 = %d", block, 0xEu);
          }

          *__p = operator new(0x20uLL);
          *&__p[8] = xmmword_296E1FAD0;
          strcpy(*__p, "Failed to update trace masks");
          CreateError();
          v12 = cf;
          cf = *block;
          *block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (*block)
            {
              CFRelease(*block);
            }
          }

          if ((__p[23] & 0x80000000) != 0)
          {
            v13 = *__p;
LABEL_18:
            operator delete(v13);
          }
        }

        else
        {
          v18 = *(v5 + 40);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(v3 + 24);
            std::string::basic_string[abi:ne200100]<std::__wrap_iter<char const*>,0>(block, *(v3 + 32), *(v3 + 40));
            v20 = "Active: ";
            if (!v19)
            {
              v20 = "Sleep: ";
            }

            v21 = block[23] >= 0 ? block : *block;
            *__p = 136315394;
            *&__p[4] = v20;
            *&__p[12] = 2080;
            *&__p[14] = v21;
            _os_log_impl(&dword_296D7D000, v18, OS_LOG_TYPE_DEFAULT, "#I Successfully updated trace masks\n%s%s", __p, 0x16u);
            if ((block[23] & 0x80000000) != 0)
            {
              v13 = *block;
              goto LABEL_18;
            }
          }
        }

LABEL_19:
        v14 = *(v3 + 56);
        if (!v14 || !*(v3 + 64))
        {
LABEL_38:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C265320](v24);
          goto LABEL_41;
        }

        v15 = cf;
        if (cf && (CFRetain(cf), (v14 = *(v3 + 56)) == 0))
        {
          v16 = 0;
        }

        else
        {
          v16 = _Block_copy(v14);
        }

        v17 = *(v3 + 64);
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        v30 = &__block_descriptor_tmp_64_0;
        if (v16)
        {
          v31 = _Block_copy(v16);
          v32 = v15;
          if (!v15)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v31 = 0;
          v32 = v15;
          if (!v15)
          {
LABEL_30:
            dispatch_async(v17, block);
            if (v32)
            {
              CFRelease(v32);
            }

            if (v31)
            {
              _Block_release(v31);
            }

            if (v16)
            {
              _Block_release(v16);
            }

            if (v15)
            {
              CFRelease(v15);
            }

            goto LABEL_38;
          }
        }

        CFRetain(v15);
        goto LABEL_30;
      }
    }
  }
}

void sub_296DA5EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  MEMORY[0x29C265320](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c220_ZTSNSt3__110shared_ptrIZN5trace16ARICommandDriver18profileMaskV2_syncENS_6vectorIcNS_9allocatorIcEEEEtNS_8weak_ptrINS1_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c220_ZTSNSt3__110shared_ptrIZN5trace16ARICommandDriver18profileMaskV2_syncENS_6vectorIcNS_9allocatorIcEEEEtNS_8weak_ptrINS1_13CommandDriverEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriver::profileMaskV2_sync(std::vector<char>,unsigned short,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriver::profileMaskV2_sync(std::vector<char>,unsigned short,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B200;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<trace::ARICommandDriver::profileMaskV2_sync(std::vector<char>,unsigned short,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriver::profileMaskV2_sync(std::vector<char>,unsigned short,std::weak_ptr<trace::CommandDriver>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v5 = a1[4];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace16ARICommandDriver14setTraceParamsERNS2_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__7vEENS6_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v32 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v3 + 32);
      v7 = std::__shared_weak_count::lock(v4);
      v27 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_39:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v25 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v24[2] = v9;
        v24[3] = v9;
        v24[0] = v9;
        v24[1] = v9;
        AriSdk::ARI_CsiTraceModeInitRspCb_SDK::ARI_CsiTraceModeInitRspCb_SDK(v24, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block = operator new(0x19uLL);
        *v29 = xmmword_296E1FAA0;
        strcpy(block, "update trace parameters");
        checkError(&cf, v24, &block);
        if ((v29[15] & 0x80000000) != 0)
        {
          operator delete(block);
          if (cf)
          {
            goto LABEL_17;
          }
        }

        else if (cf)
        {
          goto LABEL_17;
        }

        v10 = AriSdk::ARI_CsiTraceModeInitRspCb_SDK::unpack(v24);
        if (v10 || *v25)
        {
          v11 = *(v5 + 40);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v21 = *v25;
            LODWORD(block) = 67109376;
            HIDWORD(block) = v10;
            *v29 = 1024;
            *&v29[2] = v21;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to update trace parameters: unpackResult = %d result_code_t1 = %d", &block, 0xEu);
          }

          __p = operator new(0x20uLL);
          strcpy(__p, "Failed to update watermarks");
          CreateError();
          v12 = cf;
          cf = block;
          block = 0;
          if (v12)
          {
            CFRelease(v12);
            if (block)
            {
              CFRelease(block);
            }
          }

          operator delete(__p);
        }

        else
        {
          v17 = *(v5 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v3 + 41);
            v19 = *(v3 + 44);
            v20 = *(v3 + 48);
            block = __PAIR64__(*(v3 + 40), 67109888);
            *v29 = 1024;
            *&v29[2] = v18;
            *&v29[6] = 1024;
            *&v29[8] = v19;
            *&v29[12] = 1024;
            *&v29[14] = v20;
            _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully updated trace parameters to Enabled: %d, BackgroundMode: %d, Watermarks: %d, %d", &block, 0x1Au);
          }
        }

LABEL_17:
        v13 = *(v3 + 16);
        if (!v13 || !*(v3 + 24))
        {
LABEL_36:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C264940](v24);
          goto LABEL_39;
        }

        v14 = cf;
        if (cf && (CFRetain(cf), (v13 = *(v3 + 16)) == 0))
        {
          v15 = 0;
        }

        else
        {
          v15 = _Block_copy(v13);
        }

        v16 = *(v3 + 24);
        block = MEMORY[0x29EDCA5F8];
        *v29 = 1174405120;
        *&v29[8] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke;
        *&v29[16] = &__block_descriptor_tmp_64_0;
        if (v15)
        {
          v30 = _Block_copy(v15);
          v31 = v14;
          if (!v14)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v30 = 0;
          v31 = v14;
          if (!v14)
          {
LABEL_28:
            dispatch_async(v16, &block);
            if (v31)
            {
              CFRelease(v31);
            }

            if (v30)
            {
              _Block_release(v30);
            }

            if (v15)
            {
              _Block_release(v15);
            }

            if (v14)
            {
              CFRelease(v14);
            }

            goto LABEL_36;
          }
        }

        CFRetain(v14);
        goto LABEL_28;
      }
    }
  }
}

void sub_296DA64A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c174_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver14setTraceParamsERNS1_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__7EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c174_ZTSNSt3__110shared_ptrIZZN5trace16ARICommandDriver14setTraceParamsERNS1_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__7EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver14setTraceParamsERNS1_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__7NS_9allocatorISF_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace16ARICommandDriver14setTraceParamsERNS1_11TraceParamsEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb4_E3__7NS_9allocatorISF_EEE16__on_zero_sharedEv(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void cpms::ARICommandDriver::create(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x60uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  cpms::ARICommandDriver::ARICommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<cpms::ARICommandDriver>::shared_ptr[abi:ne200100]<cpms::ARICommandDriver,std::shared_ptr<cpms::ARICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::ARICommandDriver>(cpms::ARICommandDriver*)::{lambda(cpms::ARICommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN4cpms16ARICommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_3;
  v11[4] = v8;
  ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped((v8 + 8), v11);
}

void sub_296DA67D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296DA67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void cpms::ARICommandDriver::init(cpms::ARICommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN4cpms16ARICommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_3;
  v1[4] = this;
  ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped(this + 1, v1);
}

cpms::CommandDriver *cpms::ARICommandDriver::ARICommandDriver(cpms::CommandDriver *a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cpms::CommandDriver::CommandDriver();
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  *a1 = &unk_2A1E0B2D0;
  v4 = *(a1 + 3);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  cpms::CommandDriver::getName(a1);
  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 10) = 0;
  *(a1 + 11) = 0;
  return a1;
}

void sub_296DA6964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296DA6978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  cpms::CommandDriver::~CommandDriver(v10);
  _Unwind_Resume(a1);
}

void cpms::CommandDriver::~CommandDriver(cpms::CommandDriver *this)
{
  *this = &unk_2A1E0B3E0;
  v2 = *(this + 7);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C263A00](this + 40);
  v3 = *(this + 4);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }
}

void cpms::ARICommandDriver::~ARICommandDriver(cpms::ARICommandDriver *this)
{
  *this = &unk_2A1E0B2D0;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v11, 2u);
  }

  v4 = *(this + 11);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 9);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *this = &unk_2A1E0B3E0;
  v7 = *(this + 7);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  MEMORY[0x29C263A00](v2);
  v8 = *(this + 4);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

{
  cpms::ARICommandDriver::~ARICommandDriver(this);

  operator delete(v1);
}

uint64_t ___ZN4cpms16ARICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", &v14, 2u);
  }

  v3 = operator new(0x20uLL);
  v3->__shared_owners_ = 0;
  p_shared_owners = &v3->__shared_owners_;
  v3->__shared_weak_owners_ = 0;
  v3->__vftable = &unk_2A1E0B4C0;
  v3[1].__vftable = v1;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = 1174405120;
  v16 = ___ZN3ice6detail17wrapEventCallbackIZZN4cpms16ARICommandDriver4initEvEUb_E3__1vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v17 = &__block_descriptor_tmp_11_1;
  v18 = v3 + 1;
  v19 = v3;
  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v21 = 0x40000000;
  v22 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_1;
  v23 = &unk_29EE5B840;
  v24 = &v14;
  v5 = _Block_copy(&aBlock);
  v6 = v19;
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_6;
    }

LABEL_9:
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_9;
  }

LABEL_6:
  if (v5)
  {
LABEL_7:
    v7 = _Block_copy(v5);
    goto LABEL_11;
  }

LABEL_10:
  v7 = 0;
LABEL_11:
  v14 = v7;
  ice::Client::regEventHandlerInternal();
  if (v14)
  {
    _Block_release(v14);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  v8 = operator new(0x20uLL);
  v8->__shared_owners_ = 0;
  v9 = &v8->__shared_owners_;
  v8->__shared_weak_owners_ = 0;
  v8->__vftable = &unk_2A1E0B540;
  v8[1].__vftable = v1;
  v14 = MEMORY[0x29EDCA5F8];
  v15 = 1174405120;
  v16 = ___ZN3ice6detail17wrapEventCallbackIZZN4cpms16ARICommandDriver4initEvEUb_E3__2vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke;
  v17 = &__block_descriptor_tmp_15_1;
  v18 = v8 + 1;
  v19 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v21 = 0x40000000;
  v22 = ___ZN3ice6detail17wrapEventCallbackIvEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEU13block_pointerFT_vE_block_invoke_1;
  v23 = &unk_29EE5B840;
  v24 = &v14;
  v10 = _Block_copy(&aBlock);
  v11 = v19;
  if (!v19 || atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

LABEL_21:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v10)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

LABEL_18:
  if (v10)
  {
LABEL_19:
    v12 = _Block_copy(v10);
    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
LABEL_23:
  v14 = v12;
  ice::Client::regEventHandlerInternal();
  if (v14)
  {
    _Block_release(v14);
  }

  if (v10)
  {
    _Block_release(v10);
  }

  return ice::Client::start(*(v1 + 64));
}

void sub_296DA6FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(exception_object);
}

void cpms::ARICommandDriver::sendPowerBudget(void *a1, uint64_t a2, uint64_t a3)
{
  aBlock[0] = a1;
  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock[1] = v6;
  object[0] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a2 + 8);
  object[1] = *a2;
  *&v25 = v8;
  v9 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *(&v25 + 1) = v9;
  v10 = (v8 + 16);
  if (v9)
  {
    v11 = v10;
  }

  else
  {
    v11 = &object[1];
  }

  *v11 = &v25;
  *a2 = a2 + 8;
  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x30uLL);
  v17 = v16;
  v18 = v16 + 3;
  v19 = *object;
  v20 = v25;
  v16[4] = v25;
  *v16 = *aBlock;
  *(v16 + 1) = v19;
  v25 = 0u;
  v16[5] = *(&v20 + 1);
  if (*(&v20 + 1))
  {
    v18 = (v20 + 16);
  }

  *v18 = v16 + 4;
  object[1] = &v25;
  v21 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v17;
  v22[1] = v13;
  v22[2] = v15;
  dispatch_async_f(v21, v22, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&object[1], v25);
  v25 = 0uLL;
  object[1] = &v25;
}

void cpms::ARICommandDriver::registerPowerBudgetIndication(void *a1, uint64_t a2)
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
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>(cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void cpms::ARICommandDriver::getCurrentPower(void *a1, uint64_t a2)
{
  v3 = a1[2];
  if (!v3 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v9 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

LABEL_15:
    v10 = 0;
    v11 = *(a2 + 8);
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

LABEL_5:
  v10 = _Block_copy(v9);
  v11 = *(a2 + 8);
  if (v11)
  {
LABEL_6:
    dispatch_retain(v11);
  }

LABEL_7:
  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(0x28uLL);
  *v16 = a1;
  v16[1] = v5;
  v16[2] = v7;
  v16[3] = v10;
  v16[4] = v11;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>(cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void cpms::ARICommandDriver::enablePowerBudgetIndication(cpms::ARICommandDriver *this, char a2, int a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a2;
  v10[1] = a3;
  *(v10 + 1) = this;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0>(cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void cpms::ARICommandDriver::queryThermalID(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "virtual void cpms::ARICommandDriver::queryThermalID(QueryThermalIDCallback)";
    _os_log_error_impl(&dword_296D7D000, v1, OS_LOG_TYPE_ERROR, "%s is not implemented!", &v2, 0xCu);
  }
}

void cpms::ARICommandDriver::setThermalReportFrequency(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "virtual void cpms::ARICommandDriver::setThermalReportFrequency(ThermalReportVersion, uint32_t, ThermalDataBlock, utils::Callback)";
    _os_log_error_impl(&dword_296D7D000, v1, OS_LOG_TYPE_ERROR, "%s is not implemented!", &v2, 0xCu);
  }
}

void cpms::ARICommandDriver::getPowerMitigation(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "virtual void cpms::ARICommandDriver::getPowerMitigation(QueryPwrMitigationCallback)";
    _os_log_error_impl(&dword_296D7D000, v1, OS_LOG_TYPE_ERROR, "%s is not implemented!", &v2, 0xCu);
  }
}

atomic_ullong *std::shared_ptr<cpms::ARICommandDriver>::shared_ptr[abi:ne200100]<cpms::ARICommandDriver,std::shared_ptr<cpms::ARICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::ARICommandDriver>(cpms::ARICommandDriver*)::{lambda(cpms::ARICommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0B440;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296DA79F0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<cpms::ARICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::ARICommandDriver>(cpms::ARICommandDriver*)::{lambda(cpms::ARICommandDriver*)#1}::operator() const(cpms::ARICommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<cpms::ARICommandDriver *,std::shared_ptr<cpms::ARICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::ARICommandDriver>(cpms::ARICommandDriver*)::{lambda(cpms::ARICommandDriver *)#1},std::allocator<cpms::ARICommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<cpms::ARICommandDriver *,std::shared_ptr<cpms::ARICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::ARICommandDriver>(cpms::ARICommandDriver*)::{lambda(cpms::ARICommandDriver *)#1},std::allocator<cpms::ARICommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15make_shared_ptrINS1_16ARICommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<cpms::ARICommandDriver> ctu::SharedSynchronizable<cpms::CommandDriver>::make_shared_ptr<cpms::ARICommandDriver>(cpms::ARICommandDriver*)::{lambda(cpms::ARICommandDriver*)#1}::operator() const(cpms::ARICommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void ___ZN3ice6detail17wrapEventCallbackIZZN4cpms16ARICommandDriver4initEvEUb_E3__1vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(*v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D Started", v3, 2u);
    }
  }
}

uint64_t __copy_helper_block_e8_32c68_ZTSNSt3__110shared_ptrIZZN4cpms16ARICommandDriver4initEvEUb_E3__1EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c68_ZTSNSt3__110shared_ptrIZZN4cpms16ARICommandDriver4initEvEUb_E3__1EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN4cpms16ARICommandDriver4initEvEUb_E3__1NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B4C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZN3ice6detail17wrapEventCallbackIZZN4cpms16ARICommandDriver4initEvEUb_E3__2vEEN8dispatch5blockIU13block_pointerFiP16dispatch_group_sEEENSt3__117integral_constantIiLi0EEEOT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(*v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D Stopped", v3, 2u);
    }
  }
}

uint64_t __copy_helper_block_e8_32c68_ZTSNSt3__110shared_ptrIZZN4cpms16ARICommandDriver4initEvEUb_E3__2EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c68_ZTSNSt3__110shared_ptrIZZN4cpms16ARICommandDriver4initEvEUb_E3__2EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN4cpms16ARICommandDriver4initEvEUb_E3__2NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B540;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN4cpms13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0B588;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4cpms13CommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN4cpms13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v60 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v34 = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[0] = v3;
  v44[1] = v3;
  __p = v3;
  v42[2] = v3;
  v42[3] = v3;
  v42[0] = v3;
  v42[1] = v3;
  AriSdk::ARI_CsiIceCltmReq_SDK::ARI_CsiIceCltmReq_SDK(v42);
  v4 = operator new(4uLL);
  *v4 = 0x7FFF;
  v5 = __p;
  *&__p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = 0x7FFF;
  v7 = *(&__p + 1);
  *(&__p + 1) = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v41 = 0;
  v40 = 0;
  v59 = 0;
  v8 = operator new(0x20uLL);
  v9 = &unk_2A1E0B5C8;
  *v8 = &unk_2A1E0B5C8;
  *(v8 + 1) = &v41;
  *(v8 + 2) = v42;
  *(v8 + 3) = &v40;
  v59 = v8;
  v10 = v1[1].__vftable;
  if (v10 == &v1[1].__shared_owners_)
  {
    goto LABEL_19;
  }

  do
  {
    if (!v59)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if (!(*(*v59 + 48))(v59, &v10->__get_deleter + 4, &v10->__on_zero_shared_weak))
    {
      break;
    }

    v11 = v10->~__shared_weak_count_0;
    if (v11)
    {
      do
      {
        on_zero_shared = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        on_zero_shared = v10->__on_zero_shared;
        v13 = *on_zero_shared == v10;
        v10 = on_zero_shared;
      }

      while (!v13);
    }

    v10 = on_zero_shared;
  }

  while (on_zero_shared != &v1[1].__shared_owners_);
  if (v59 == &v58)
  {
    (*(*v59 + 32))(v59);
    if (v40 > 4)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v59)
  {
    v9 = *v59;
LABEL_19:
    v9[5]();
  }

  if (v40 > 4)
  {
    goto LABEL_23;
  }

LABEL_21:
  v14 = 0;
  do
  {
    v41 = 0;
    AriSdk::TlvArray<IBI_CPMS_POWER_BUDGET,5ul>::emplace_back<IBI_CPMS_POWER_BUDGET&>((v44 + 8), 0);
    ++v14;
  }

  while (v14 < 5 - v40);
LABEL_23:
  get_deleter = v2[1].__get_deleter;
  on_zero_shared_weak = v2[1].__on_zero_shared_weak;
  v39 = on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    atomic_fetch_add_explicit(&on_zero_shared_weak->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shared_owners = v1->__shared_owners_;
  if (shared_owners)
  {
    v18 = _Block_copy(shared_owners);
    shared_weak_owners = v1->__shared_weak_owners_;
    v35 = v18;
    v36 = shared_weak_owners;
    if (!shared_weak_owners)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v18 = 0;
  shared_weak_owners = v1->__shared_weak_owners_;
  v35 = 0;
  v36 = shared_weak_owners;
  if (shared_weak_owners)
  {
LABEL_27:
    dispatch_retain(shared_weak_owners);
  }

LABEL_28:
  strcpy(v45, "Send power budget");
  *&v45[18] = v37;
  v45[22] = v38;
  v45[23] = 17;
  if (!v18)
  {
    v20 = 0;
    v46 = 0;
    object = shared_weak_owners;
    if (!shared_weak_owners)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v20 = _Block_copy(v18);
  v46 = v20;
  object = shared_weak_owners;
  if (shared_weak_owners)
  {
LABEL_30:
    dispatch_retain(shared_weak_owners);
  }

LABEL_31:
  v21 = operator new(0x40uLL);
  v21->__shared_owners_ = 0;
  p_shared_owners = &v21->__shared_owners_;
  v21->__shared_weak_owners_ = 0;
  v21->__vftable = &unk_2A1E0B688;
  v21[1].std::__shared_count = *v45;
  *v45 = 0;
  *&v45[8] = 0;
  v21[1].__shared_weak_owners_ = *&v45[16];
  v21[2].__vftable = v20;
  v21[2].__shared_owners_ = shared_weak_owners;
  v46 = 0;
  object = 0;
  *&v45[16] = 0;
  *&v49 = MEMORY[0x29EDCA5F8];
  *(&v49 + 1) = 1174405120;
  *&v50 = ___ZN3ice6detail12wrapCallbackIZN5utils7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKEEEvNSt3__110shared_ptrINS_6ClientEEERNS4_7MsgBaseENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_vEENSI_5blockIU13block_pointerFiPhjEEENS6_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v50 + 1) = &__block_descriptor_tmp_33_1;
  v51 = &v21[1];
  v52 = v21;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v54 = 0x40000000;
  v55 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_2;
  v56 = &unk_29EE5B868;
  v57 = &v49;
  v23 = _Block_copy(&aBlock);
  v24 = v52;
  if (!v52 || atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_34:
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_35:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v25;
  v50 = v25;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v26 = *(get_deleter + 2);
  aBlock = *(get_deleter + 1);
  if (!v26)
  {
    v54 = 0;
LABEL_78:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v54 = std::__shared_weak_count::lock(v26);
  if (!v54)
  {
    goto LABEL_78;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v27 = v54;
  if (v54 && !atomic_fetch_add((v54 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v48 = v23;
  ice::SendMsgBaseProxy::callback();
  if (v48)
  {
    _Block_release(v48);
  }

  MEMORY[0x29C263BF0](&v49);
  if (object)
  {
    dispatch_release(object);
  }

  if (v46)
  {
    _Block_release(v46);
  }

  if ((v45[23] & 0x80000000) != 0)
  {
    operator delete(*v45);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (v35)
  {
    _Block_release(v35);
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
    MEMORY[0x29C263DF0](v42);
    v28 = &v34->__vftable;
    if (!v34)
    {
      goto LABEL_60;
    }
  }

  else
  {
    MEMORY[0x29C263DF0](v42);
    v28 = &v34->__vftable;
    if (!v34)
    {
      goto LABEL_60;
    }
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy((v28 + 3), v28[4]);
  v28[4] = 0;
  v28[5] = 0;
  v28[3] = v28 + 4;
  v29 = v28[2];
  if (v29)
  {
    dispatch_release(v29);
  }

  v30 = v28[1];
  if (v30)
  {
    _Block_release(v30);
  }

  operator delete(v28);
LABEL_60:
  v31 = a1;
  if (a1)
  {
    v32 = a1[2];
    if (v32)
    {
      if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v31 = a1;
      }
    }

    operator delete(v31);
  }
}

void sub_296DA86C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **std::unique_ptr<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy((v1 + 3), v1[4]);
    v1[4] = 0;
    v1[5] = 0;
    v1[3] = v1 + 4;
    v3 = v1[2];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void AriSdk::TlvArray<IBI_CPMS_POWER_BUDGET,5ul>::emplace_back<IBI_CPMS_POWER_BUDGET&>(Ari *a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = v3 - *a1;
  v5 = v4 >> 3;
  if ((v4 >> 3) >= 5)
  {
    LogLevels = Ari::GetLogLevels(a1);
    if ((LogLevels & 8) != 0)
    {
      OsLog = AriOsa::GetOsLog(LogLevels);
      if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
      {
        AriOsa::LogSrcInfo(v20, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v11);
        v19 = v21 >= 0 ? v20 : v20[0];
        *__p = 136315650;
        *&__p[4] = "ari";
        v23 = 2080;
        v24 = v19;
        v25 = 1024;
        v26 = 371;
        _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array is full, cannot add new values", __p, 0x1Cu);
        if (v21 < 0)
        {
          operator delete(v20[0]);
        }
      }

      AriOsa::LogSrcInfo(__p, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "emplace_back", v11);
      if (v25 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = *__p;
      }

      AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array is full, cannot add new values", v12, v13, 371);
      if (SHIBYTE(v25) < 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    v7 = *(a1 + 2);
    if (v3 >= v7)
    {
      v14 = v7 - v2;
      if (v14 >> 2 <= (v5 + 1))
      {
        v15 = v5 + 1;
      }

      else
      {
        v15 = v14 >> 2;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      if (v15 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v17 = 8 * v15;
      v18 = operator new(8 * v15);
      *&v18[v4] = a2;
      v8 = &v18[v4 + 8];
      memcpy(v18, v2, v4);
      *a1 = v18;
      *(a1 + 1) = v8;
      *(a1 + 2) = &v18[v17];
      if (v2)
      {
        operator delete(v2);
      }
    }

    else
    {
      *v3 = a2;
      v8 = (v3 + 1);
    }

    *(a1 + 1) = v8;
  }
}

void sub_296DA8A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A1E0B5C8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A1E0B5C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::operator()(uint64_t a1, unsigned __int8 *a2, int *a3)
{
  if (*(a3 + 4) == 1)
  {
    v3 = *a2;
    if (v3 <= 2)
    {
      v4 = *a3;
      v5 = *(a1 + 8);
      v6 = *(a1 + 16);
      *v5 = v3 + 1;
      *(v5 + 4) = v4;
      AriSdk::TlvArray<IBI_CPMS_POWER_BUDGET,5ul>::emplace_back<IBI_CPMS_POWER_BUDGET&>((v6 + 88), *v5);
      ++**(a1 + 24);
    }
  }

  return 1;
}

uint64_t std::__function::__func<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1},std::allocator<cpms::ARICommandDriver::sendPowerBudget(BudgetData,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)#1}>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4cpms16ARICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4cpms16ARICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4cpms16ARICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4cpms16ARICommandDriver15sendPowerBudgetE10BudgetDataN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN3abm28BasebandCPMSPowerBudgetScaleERKNSt3__18optionalIjEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN5utils7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKEEEvNSt3__110shared_ptrINS_6ClientEEERNS4_7MsgBaseENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_vEENSI_5blockIU13block_pointerFiPhjEEENS6_17integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[2] = v4;
    v10[3] = v4;
    v10[0] = v4;
    v10[1] = v4;
    AriSdk::ARI_CsiIceCltmRspCb_SDK::ARI_CsiIceCltmRspCb_SDK(v10, a2);
    if (!*(v3 + 24) || !*(v3 + 32))
    {
      return MEMORY[0x29C263F60](v10);
    }

    cf = 0xAAAAAAAAAAAAAAAALL;
    checkError(&cf, v10, v3);
    v5 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      v7 = _Block_copy(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v3 + 32);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
    block[3] = &__block_descriptor_tmp_37_0;
    if (v7)
    {
      v13 = _Block_copy(v7);
      v14 = v5;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v13 = 0;
      v14 = v5;
      if (!v5)
      {
LABEL_14:
        dispatch_async(v8, block);
        if (v14)
        {
          CFRelease(v14);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v7)
        {
          _Block_release(v7);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        return MEMORY[0x29C263F60](v10);
      }
    }

    CFRetain(v5);
    goto LABEL_14;
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c256_ZTSNSt3__110shared_ptrIZN5utils7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKEEEvNS0_IN3ice6ClientEEERNS3_7MsgBaseENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c256_ZTSNSt3__110shared_ptrIZN5utils7sendMsgIN6AriSdk23ARI_CsiIceCltmRspCb_SDKEEEvNS0_IN3ice6ClientEEERNS3_7MsgBaseENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void utils::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void utils::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B688;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void utils::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void utils::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0(uint64_t a1)
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

void sub_296DA8FDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t utils::sendMsg<AriSdk::ARI_CsiIceCltmRspCb_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>(cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = v4[10];
  v4[10] = v3;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = v2[2];
  if (v6)
  {
    dispatch_retain(v2[2]);
  }

  v7 = v4[11];
  v4[11] = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v4[10] && v4[11])
  {
    v8 = v4[8];
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZZN4cpms16ARICommandDriver29registerPowerBudgetIndicationEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEv_block_invoke;
    v14[3] = &__block_descriptor_tmp_39;
    v14[4] = v4;
    v9 = v2[4];
    v14[5] = v2[3];
    v15 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = v14;
    ice::Client::regIndication<void({block_pointer})(unsigned char *,unsigned int)>(v8, 1031962624, &v16);
    if (v15)
    {
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v10 = v2[4];
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v2[2];
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = v2[1];
  if (v12)
  {
    _Block_release(v12);
  }

  operator delete(v2);
  v13 = a1[2];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
}

void sub_296DA91E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::unique_ptr<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::ARICommandDriver::registerPowerBudgetIndication(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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

void ___ZZN4cpms16ARICommandDriver29registerPowerBudgetIndicationEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEv_block_invoke(void *a1, const unsigned __int8 *a2, unsigned int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v23[4] = v10;
      v24 = v10;
      v23[2] = v10;
      v23[3] = v10;
      v23[0] = v10;
      v23[1] = v10;
      AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::ARI_IBICpsMaxCellularPowerForRatInd_SDK(v23, a2);
      if (!AriSdk::ARI_IBICpsMaxCellularPowerForRatInd_SDK::unpack(v23) && *(v6 + 80) && *(v6 + 88))
      {
        v11 = **(&v24 + 1);
        v21 = 0;
        v22 = 0;
        v12 = operator new(0x28uLL);
        v12[28] = 0;
        v12[32] = 0;
        v12[36] = 0;
        *v12 = 0;
        *(v12 + 1) = 0;
        *(v12 + 2) = &v21;
        v20 = v12;
        v21 = v12;
        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v12, v12);
        ++v22;
        *(v12 + 8) = v11;
        v12[36] = 1;
        v18 = 0;
        v19 = 0;
        v17 = &v18;
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v17, v12, &v21);
        v13 = *(v6 + 80);
        if (v13)
        {
          v14 = _Block_copy(v13);
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v6 + 88);
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 1174405120;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFv10BudgetDataEEclIJS1_EEEvDpT__block_invoke;
        block[3] = &__block_descriptor_tmp_40_0;
        if (v14)
        {
          v16 = _Block_copy(v14);
        }

        else
        {
          v16 = 0;
        }

        v28 = 0;
        v29 = 0;
        v26 = v16;
        v27 = &v28;
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v27, v17, &v18);
        dispatch_async(v15, block);
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v27, v28);
        v28 = 0;
        v29 = 0;
        v27 = &v28;
        if (v26)
        {
          _Block_release(v26);
        }

        if (v14)
        {
          _Block_release(v14);
        }

        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v17, v18);
        v18 = 0;
        v19 = 0;
        v17 = &v18;
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v20, v21);
      }

      MEMORY[0x29C265620](v23);
    }
  }
}

void sub_296DA94E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v15 + 40, *(v16 - 64));
  v18 = *(v16 - 80);
  if (v18)
  {
    _Block_release(v18);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&a9, a10);
  a10 = 0;
  a11 = 0;
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&a12, a13);
  MEMORY[0x29C265620](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4cpms13CommandDriverEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN4cpms13CommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFv10BudgetDataEEclIJS1_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = 0;
  v3[1] = 0;
  v2 = v3;
  if (&v2 != (a1 + 40))
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v2, *(a1 + 40), (a1 + 48));
  }

  (*(v1 + 16))(v1, &v2);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v2, v3[0]);
}

void __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10BudgetDataEEE40c16_ZTS10BudgetData(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[6] = 0;
  a1[4] = v4;
  a1[5] = a1 + 6;
  a1[7] = 0;
  if (a1 != a2)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(a1 + 5, a2[5], a2 + 6);
  }
}

void sub_296DA96B4(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v2, *(v1 + 48));
  v4 = *(v1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10BudgetDataEEE40c16_ZTS10BudgetData(uint64_t a1)
{
  v1 = (a1 + 48);
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(a1 + 40, *(a1 + 48));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  v2 = *(v1 - 2);
  if (v2)
  {
    _Block_release(v2);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>(cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_IBICPMSPowerQueryReq_SDK::ARI_IBICPMSPowerQueryReq_SDK(v24);
  get_deleter = v2[1].__get_deleter;
  shared_owners = v1->__shared_owners_;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (shared_weak_owners)
  {
    atomic_fetch_add_explicit((shared_weak_owners + 16), 1uLL, memory_order_relaxed);
  }

  v7 = v1[1].__vftable;
  if (!v7)
  {
    v8 = 0;
    v9 = v1[1].__shared_owners_;
    if (!v9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = _Block_copy(v7);
  v9 = v1[1].__shared_owners_;
  if (v9)
  {
LABEL_5:
    dispatch_retain(v9);
  }

LABEL_6:
  v10 = operator new(0x40uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10[1].__vftable = shared_owners;
  v10->__vftable = &unk_2A1E0B798;
  v10[1].__shared_owners_ = shared_weak_owners;
  v10[1].__shared_weak_owners_ = v2;
  v10[2].__vftable = v8;
  v10[2].__shared_owners_ = v9;
  *&v26 = MEMORY[0x29EDCA5F8];
  *(&v26 + 1) = 1174405120;
  *&v27 = ___ZN3ice6detail12wrapCallbackIZZN4cpms16ARICommandDriver15getCurrentPowerEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v27 + 1) = &__block_descriptor_tmp_41;
  v28 = &v10[1];
  v29 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v31 = 0x40000000;
  v32 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_2;
  v33 = &unk_29EE5B868;
  v34 = &v26;
  v12 = _Block_copy(&aBlock);
  v13 = v29;
  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_10:
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v14;
  v27 = v14;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v15 = *(get_deleter + 2);
  aBlock = *(get_deleter + 1);
  if (!v15)
  {
    v31 = 0;
LABEL_36:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = std::__shared_weak_count::lock(v15);
  if (!v31)
  {
    goto LABEL_36;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v16 = v31;
  if (v31 && !atomic_fetch_add((v31 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v25 = v12;
  ice::SendMsgBaseProxy::callback();
  if (v25)
  {
    _Block_release(v25);
  }

  MEMORY[0x29C263BF0](&v26);
  MEMORY[0x29C2647C0](v24);
  if (__p)
  {
    v17 = __p[1].__shared_owners_;
    if (v17)
    {
      dispatch_release(v17);
    }

    v18 = __p[1].__vftable;
    if (v18)
    {
      _Block_release(v18);
    }

    v19 = __p->__shared_weak_owners_;
    if (v19)
    {
      std::__shared_weak_count::__release_weak(v19);
    }

    operator delete(__p);
  }

  v20 = a1;
  if (a1)
  {
    v21 = a1[2];
    if (v21)
    {
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
        v20 = a1;
      }
    }

    operator delete(v20);
  }
}

void sub_296DA9AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a15, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *aBlock, char a32)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a32, a2, a3, a4, a5, a6, a7, a8);
  cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a15);
  MEMORY[0x29C2647C0](&a22);
  std::unique_ptr<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0,std::default_delete<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN4cpms16ARICommandDriver15getCurrentPowerEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEvEUlPKhjE_vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v38 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v6 = v3[2];
      v7 = std::__shared_weak_count::lock(v4);
      if (v7)
      {
        v8 = *v3;
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (!v8)
          {
            return;
          }
        }

        else
        {
          v9 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v9);
          if (!v8)
          {
            return;
          }
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        *&v10 = 0xAAAAAAAAAAAAAAAALL;
        *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v30 = v10;
        v29[2] = v10;
        v29[3] = v10;
        v29[0] = v10;
        v29[1] = v10;
        AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::ARI_IBICPMSPowerQueryRspCb_SDK(v29, a2);
        memset(&v28, 170, sizeof(v28));
        *buf = operator new(0x20uLL);
        *&buf[8] = xmmword_296E1FAE0;
        strcpy(*buf, "Failed to get current power");
        checkErrorStr(v29, buf, &v28);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v27[0] = 0;
        v27[1] = 0;
        v26 = v27;
        size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        v12 = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          v13 = *(v6 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = v28.__r_.__value_.__r.__words[0];
            if (v12 >= 0)
            {
              v14 = &v28;
            }

            *buf = 136315138;
            *&buf[4] = v14;
            _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
          }
        }

        else
        {
          v15 = AriSdk::ARI_IBICPMSPowerQueryRspCb_SDK::unpack(v29);
          if (v15)
          {
            v16 = v15;
            v17 = *(v6 + 40);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v16;
              _os_log_error_impl(&dword_296D7D000, v17, OS_LOG_TYPE_ERROR, "Failed to unpack query current power response: unpackResult = %d", buf, 8u);
            }

            std::string::__assign_external(&v28, "Failed to unpack to query current power", 0x27uLL);
          }

          else
          {
            v18 = v30;
            if ((*v30 - 1) < 3)
            {
              BudgetData::set(&v26, (*v30 - 1), *(v30 + 4));
              if ((*(v18 + 8) - 1) <= 2)
              {
                BudgetData::set(&v26, (*(v18 + 8) - 1), *(v18 + 12));
                if ((*(v18 + 16) - 1) <= 2)
                {
                  BudgetData::set(&v26, (*(v18 + 16) - 1), *(v18 + 20));
                  if ((*(v18 + 24) - 1) <= 2)
                  {
                    BudgetData::set(&v26, (*(v18 + 24) - 1), *(v18 + 28));
                    if ((*(v18 + 32) - 1) <= 2)
                    {
                      BudgetData::set(&v26, (*(v18 + 32) - 1), *(v18 + 36));
                    }
                  }
                }
              }
            }
          }
        }

        if (v3[3] && v3[4])
        {
          v24 = 0;
          v25 = 0;
          v23 = &v24;
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v23, v26, v27);
          v19 = v3[3];
          if (v19)
          {
            v20 = _Block_copy(v19);
          }

          else
          {
            v20 = 0;
          }

          v21 = v3[4];
          *buf = MEMORY[0x29EDCA5F8];
          *&buf[8] = 1174405120;
          *&buf[16] = ___ZNK8dispatch8callbackIU13block_pointerFv10BudgetDataEEclIJS1_EEEvDpT__block_invoke;
          v33 = &__block_descriptor_tmp_40_0;
          if (v20)
          {
            v22 = _Block_copy(v20);
          }

          else
          {
            v22 = 0;
          }

          v36 = 0;
          v37 = 0;
          v34 = v22;
          v35 = &v36;
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v35, v23, &v24);
          dispatch_async(v21, buf);
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v35, v36);
          v36 = 0;
          v37 = 0;
          v35 = &v36;
          if (v34)
          {
            _Block_release(v34);
          }

          if (v20)
          {
            _Block_release(v20);
          }

          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v23, v24);
          v24 = 0;
          v25 = 0;
          v23 = &v24;
        }

        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&v26, v27[0]);
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        MEMORY[0x29C264BB0](v29);
      }
    }
  }
}

void sub_296DAA060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(&a13, a14);
  if (a21 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C264BB0](&a22);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C264BB0](&a22);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c143_ZTSNSt3__110shared_ptrIZZN4cpms16ARICommandDriver15getCurrentPowerEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c143_ZTSNSt3__110shared_ptrIZZN4cpms16ARICommandDriver15getCurrentPowerEN8dispatch8callbackIU13block_pointerFv10BudgetDataEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B798;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<cpms::ARICommandDriver::getCurrentPower(dispatch::callback<void({block_pointer})(BudgetData)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

void dispatch::async<void ctu::SharedSynchronizable<cpms::CommandDriver>::execute_wrapped<cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0>(cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0,dispatch_queue_s *::default_delete<cpms::ARICommandDriver::enablePowerBudgetIndication(BOOL,unsigned int)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[3] = v3;
  *__p = v3;
  v32[1] = v3;
  v32[2] = v3;
  v32[0] = v3;
  AriSdk::ARI_IBICpsConfigureCellularPowerReportReq_SDK::ARI_IBICpsConfigureCellularPowerReportReq_SDK(v32);
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p[0];
  __p[0] = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = operator new(4uLL);
  *v6 = *v1;
  v7 = __p[1];
  __p[1] = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = v1[1];
  v9 = operator new(2uLL);
  *v9 = v8;
  v10 = v34;
  v34 = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v12 = v2[8];
  v11 = v2[9];
  v30 = v12;
  v31 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = operator new(0x28uLL);
  strcpy(v13, "Enable CPS to enable the indication");
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZZN4cpms16ARICommandDriver27enablePowerBudgetIndicationEbjENK3__0clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_47;
  aBlock[4] = v2;
  v14 = _Block_copy(aBlock);
  v15 = v2[3];
  if (v15)
  {
    dispatch_retain(v15);
  }

  v28 = v14;
  v29 = v15;
  std::string::__init_copy_ctor_external(&v35, v13, 0x23uLL);
  if (!v14)
  {
    object[0] = 0;
    object[1] = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  object[0] = _Block_copy(v14);
  object[1] = v15;
  if (v15)
  {
LABEL_13:
    dispatch_retain(v15);
  }

LABEL_14:
  v16 = operator new(0x40uLL);
  v16->__shared_owners_ = 0;
  p_shared_owners = &v16->__shared_owners_;
  v16->__shared_weak_owners_ = 0;
  v16->__vftable = &unk_2A1E0B818;
  v16[1] = v35;
  *&v35.__r_.__value_.__l.__data_ = 0uLL;
  v16[2].std::__shared_count = *object;
  v35.__r_.__value_.__r.__words[2] = 0;
  object[0] = 0;
  object[1] = 0;
  *&v38 = MEMORY[0x29EDCA5F8];
  *(&v38 + 1) = 1174405120;
  *&v39 = ___ZN3ice6detail12wrapCallbackIZN5utils7sendMsgIN6AriSdk45ARI_IBICpsConfigureCellularPowerReportRsp_SDKEEEvNSt3__110shared_ptrINS_6ClientEEERNS4_7MsgBaseENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_vEENSI_5blockIU13block_pointerFiPhjEEENS6_17integral_constantIiLi2EEEOT__block_invoke;
  *(&v39 + 1) = &__block_descriptor_tmp_48;
  v40 = &v16[1];
  v41 = v16;
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v42 = MEMORY[0x29EDCA5F8];
  v43 = 0x40000000;
  v44 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_2;
  v45 = &unk_29EE5B868;
  v46 = &v38;
  v18 = _Block_copy(&v42);
  v19 = v41;
  if (!v41 || atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v19->__on_zero_shared)(v19);
  std::__shared_weak_count::__release_weak(v19);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_18:
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v20;
  v39 = v20;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v21 = *(v12 + 16);
  v42 = *(v12 + 8);
  if (!v21)
  {
    v43 = 0;
LABEL_49:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v43 = std::__shared_weak_count::lock(v21);
  if (!v43)
  {
    goto LABEL_49;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v22 = v43;
  if (v43 && !atomic_fetch_add((v43 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v37 = v18;
  ice::SendMsgBaseProxy::callback();
  if (v37)
  {
    _Block_release(v37);
  }

  MEMORY[0x29C263BF0](&v38);
  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    _Block_release(object[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  operator delete(v13);
  v23 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  MEMORY[0x29C265850](v32);
  operator delete(v1);
  v24 = a1;
  if (a1)
  {
    v25 = a1[2];
    if (v25)
    {
      if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
        v24 = a1;
      }
    }

    operator delete(v24);
  }
}

void sub_296DAA928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  v34 = *(v32 - 184);
  if (v34)
  {
    _Block_release(v34);
  }

  MEMORY[0x29C263BF0](v32 - 176, a2, a3, a4, a5, a6, a7, a8);
  utils::sendMsg<AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(va);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a15);
  operator delete(v31);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a17);
  MEMORY[0x29C265850](&a19);
  operator delete(v30);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZN4cpms16ARICommandDriver27enablePowerBudgetIndicationEbjENK3__0clEv_block_invoke(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_296D7D000, v3, OS_LOG_TYPE_ERROR, "%@", &v4, 0xCu);
    }
  }
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN5utils7sendMsgIN6AriSdk45ARI_IBICpsConfigureCellularPowerReportRsp_SDKEEEvNSt3__110shared_ptrINS_6ClientEEERNS4_7MsgBaseENS6_12basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_vEENSI_5blockIU13block_pointerFiPhjEEENS6_17integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(result + 32);
  if (v3)
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v10[3] = v4;
    v10[4] = v4;
    v10[1] = v4;
    v10[2] = v4;
    v10[0] = v4;
    AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK::ARI_IBICpsConfigureCellularPowerReportRsp_SDK(v10, a2);
    if (!*(v3 + 24) || !*(v3 + 32))
    {
      return MEMORY[0x29C265870](v10);
    }

    cf = 0xAAAAAAAAAAAAAAAALL;
    checkError(&cf, v10, v3);
    v5 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      v7 = _Block_copy(v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v3 + 32);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
    block[3] = &__block_descriptor_tmp_37_0;
    if (v7)
    {
      v12 = _Block_copy(v7);
      v13 = v5;
      if (!v5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v12 = 0;
      v13 = v5;
      if (!v5)
      {
LABEL_14:
        dispatch_async(v8, block);
        if (v13)
        {
          CFRelease(v13);
        }

        if (v12)
        {
          _Block_release(v12);
        }

        if (v7)
        {
          _Block_release(v7);
        }

        if (v5)
        {
          CFRelease(v5);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        return MEMORY[0x29C265870](v10);
      }
    }

    CFRetain(v5);
    goto LABEL_14;
  }

  return result;
}

uint64_t __copy_helper_block_e8_32c278_ZTSNSt3__110shared_ptrIZN5utils7sendMsgIN6AriSdk45ARI_IBICpsConfigureCellularPowerReportRsp_SDKEEEvNS0_IN3ice6ClientEEERNS3_7MsgBaseENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c278_ZTSNSt3__110shared_ptrIZN5utils7sendMsgIN6AriSdk45ARI_IBICpsConfigureCellularPowerReportRsp_SDKEEEvNS0_IN3ice6ClientEEERNS3_7MsgBaseENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<void utils::sendMsg<AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void utils::sendMsg<AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0B818;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<void utils::sendMsg<AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<void utils::sendMsg<AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 47) < 0)
  {
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

uint64_t utils::sendMsg<AriSdk::ARI_IBICpsConfigureCellularPowerReportRsp_SDK>(std::shared_ptr<ice::Client>,AriSdk::MsgBase &,std::string,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::{lambda(unsigned char const*,unsigned int)#1}::~callback(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void radio::ARIRFSCommandDriver::create(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  radio::ARIRFSCommandDriver::ARIRFSCommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<radio::ARIRFSCommandDriver>::shared_ptr[abi:ne200100]<radio::ARIRFSCommandDriver,std::shared_ptr<radio::ARIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::ARIRFSCommandDriver>(radio::ARIRFSCommandDriver*)::{lambda(radio::ARIRFSCommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_13;
  v11[4] = v8;
  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((v8 + 8), v11);
}

void sub_296DAAF38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296DAAF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void radio::ARIRFSCommandDriver::init(radio::ARIRFSCommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_13;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t radio::ARIRFSCommandDriver::ARIRFSCommandDriver(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  radio::RFSCommandDriver::RFSCommandDriver();
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  *a1 = &unk_2A1E0B868;
  v4 = *(a1 + 24);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  radio::RFSCommandDriver::getName(a1);
  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return a1;
}

void sub_296DAB0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296DAB0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  radio::RFSCommandDriver::~RFSCommandDriver(v10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(v1 + 112);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 0x40000000;
  v13[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_2;
  v13[3] = &__block_descriptor_tmp_4;
  v13[4] = v1;
  *buf = v13;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v3, 0, buf);
  v4 = *(v1 + 112);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_3;
  v12[3] = &__block_descriptor_tmp_4;
  v12[4] = v1;
  *buf = v12;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v4, 1, buf);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_5;
  v11[3] = &__block_descriptor_tmp_7;
  v11[4] = v1;
  *buf = MEMORY[0x29EDCA5F8];
  v15 = 0x40000000;
  v16 = ___ZN3ice6detail12wrapCallbackIiEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke;
  v17 = &unk_29EE5B990;
  v18 = v11;
  *buf = _Block_copy(buf);
  ice::Client::regIndicationInternal();
  if (*buf)
  {
    _Block_release(*buf);
  }

  ice::Client::setIndShouldWake(*(v1 + 112));
  v5 = *(v1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v5, OS_LOG_TYPE_DEFAULT, "#I Enabling CsiFpPrioSyncReqInd as wakeable", buf, 2u);
  }

  v6 = *(v1 + 112);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_8;
  v10[3] = &__block_descriptor_tmp_10_0;
  v10[4] = v1;
  *buf = v10;
  ice::Client::setEventHandler<void({block_pointer})(dispatch::group_session)>(v6, 2, buf);
  v7 = *(v1 + 112);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_11;
  v9[3] = &__block_descriptor_tmp_12;
  v9[4] = v1;
  *buf = v9;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v7, 3, buf);
  return ice::Client::start(*(v1 + 112));
}

void sub_296DAB3D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 96);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 128);
  if (!v2 || !*(v1 + 136))
  {
LABEL_8:
    v5 = *(v1 + 40);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

LABEL_11:
    *v6 = 0;
    _os_log_debug_impl(&dword_296D7D000, v5, OS_LOG_TYPE_DEBUG, "#D Started", v6, 2u);
    return;
  }

  v3 = _Block_copy(v2);
  v4 = *(v1 + 136);
  if (v4)
  {
    dispatch_retain(*(v1 + 136));
  }

  v9[0] = &unk_2A1E0B9E8;
  v9[1] = v3;
  v7 = 0;
  v8 = 0;
  v9[2] = v4;
  v10 = v9;
  ice::Client::getClientId();
  if (v10 != v9)
  {
    if (v10)
    {
      (*(*v10 + 40))();
    }

    goto LABEL_8;
  }

  (*(*v10 + 32))(v10);
  v5 = *(v1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_11;
  }
}

void sub_296DAB578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::function<void ()(int)>::~function(va1);
  dispatch::callback<void({block_pointer})>::~callback(va);
  _Unwind_Resume(a1);
}

void sub_296DAB594(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_3(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEBUG, "#D Stopped", v2, 2u);
  }
}

uint64_t ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_5(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v12[3] = v4;
  v13 = v4;
  v12[1] = v4;
  v12[2] = v4;
  v12[0] = v4;
  AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::ARI_CsiFpPrioSyncReqInd_SDK(v12, a2);
  if (ice::isARIResponseValid())
  {
    if (!v3[18] || !v3[19])
    {
      goto LABEL_19;
    }

    if (AriSdk::ARI_CsiFpPrioSyncReqInd_SDK::unpack(v12) || !*(&v13 + 1))
    {
      v5 = 0;
      v6 = v3[18];
      if (!v6)
      {
LABEL_11:
        v7 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      v5 = **(&v13 + 1) != 0;
      v6 = v3[18];
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    v7 = _Block_copy(v6);
LABEL_12:
    v9 = v3[19];
    *buf = MEMORY[0x29EDCA5F8];
    v15 = 1174405120;
    v16 = ___ZNK8dispatch8callbackIU13block_pointerFvbyyEEclIJbiiEEEvDpT__block_invoke;
    v17 = &__block_descriptor_tmp_48_0;
    if (v7)
    {
      v10 = _Block_copy(v7);
    }

    else
    {
      v10 = 0;
    }

    aBlock = v10;
    v19 = 0;
    v20 = v5;
    dispatch_async(v9, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v7)
    {
      _Block_release(v7);
    }

    goto LABEL_19;
  }

  v8 = v3[5];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296D7D000, v8, OS_LOG_TYPE_ERROR, "Got invalid ARI indication, was expecting CsiFpPrioSyncReqInd", buf, 2u);
  }

LABEL_19:
  MEMORY[0x29C2644B0](v12);
  return 0;
}

void ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_8(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Enter event received", v9, 2u);
  }

  v5 = v3[20];
  if (v5 && v3[21])
  {
    v6 = *a2;
    if (v6 && (dispatch_retain(v6), dispatch_group_enter(v6), (v5 = v3[20]) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = _Block_copy(v5);
    }

    v8 = v3[21];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEclIJS1_EEEvDpT__block_invoke_0;
    v9[3] = &__block_descriptor_tmp_50;
    if (v7)
    {
      aBlock = _Block_copy(v7);
      group = v6;
      if (!v6)
      {
LABEL_15:
        dispatch_async(v8, v9);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v7)
        {
          _Block_release(v7);
        }

        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      group = v6;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    dispatch_retain(v6);
    if (group)
    {
      dispatch_group_enter(group);
    }

    goto LABEL_15;
  }
}

void ___ZN5radio19ARIRFSCommandDriver4initEv_block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Exit event received", v8, 2u);
  }

  v3 = v1[22];
  if (v3 && v1[23])
  {
    v4 = _Block_copy(v3);
    v5 = v4;
    v6 = v1[23];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke_0;
    v8[3] = &__block_descriptor_tmp_52_0;
    if (v4)
    {
      aBlock = _Block_copy(v4);
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
LABEL_10:
        if (v5)
        {
          _Block_release(v5);
        }

        return;
      }
    }

    else
    {
      aBlock = 0;
      dispatch_async(v6, v8);
      v7 = aBlock;
      if (!aBlock)
      {
        goto LABEL_10;
      }
    }

    _Block_release(v7);
    goto LABEL_10;
  }
}

void radio::ARIRFSCommandDriver::sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(block) = 136315138;
    *(&block + 4) = "sync";
    _os_log_debug_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEBUG, "#D %s: not supported!", &block, 0xCu);
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  v8 = 13;
  strcpy(__p, "Not supported");
  CreateError();
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1174405120;
  v11 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEclIJS5_S8_EEEvDpT__block_invoke;
  v12 = &__block_descriptor_tmp_55;
  if (v5)
  {
    aBlock = _Block_copy(v5);
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    aBlock = 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
  }

  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v15 = 0;
  dispatch_async(v6, &block);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  CFRelease(0xAAAAAAAAAAAAAAAALL);
  CFRelease(cf);
}

void sub_296DABC8C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296DABCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296DABCB8);
}

void radio::ARIRFSCommandDriver::registerRFS_sync(std::__shared_weak_count **this, int a2)
{
  if (capabilities::ct::supportsHiSpeedFiler(this))
  {
    if (a2)
    {

      radio::ARIRFSCommandDriver::getRFSStatus_V2_sync(this);
    }

    return;
  }

  v4 = this[2];
  if (!v4 || (v5 = this[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v8;
  v21[3] = v8;
  v21[0] = v8;
  v21[1] = v8;
  AriSdk::ARI_CsiFpRegister_SDK::ARI_CsiFpRegister_SDK(v21);
  v9 = operator new(4uLL);
  *v9 = a2;
  v10 = __p;
  __p = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = this[14];
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x38uLL);
  v12->__shared_owners_ = 0;
  p_shared_owners = &v12->__shared_owners_;
  v12->__shared_weak_owners_ = 0;
  v12->__vftable = &unk_2A1E0BBD0;
  v12[1].__vftable = v5;
  v12[1].__shared_owners_ = v7;
  v12[1].__shared_weak_owners_ = this;
  LOBYTE(v12[2].__vftable) = a2;
  shared_owners = MEMORY[0x29EDCA5F8];
  v24 = 1174405120;
  v25 = ___ZN3ice6detail12wrapCallbackIZN5radio19ARIRFSCommandDriver16registerRFS_syncEbE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v26 = &__block_descriptor_tmp_57_0;
  v27 = v12 + 1;
  v28 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_3;
  aBlock[3] = &unk_29EE5B9B8;
  aBlock[4] = &shared_owners;
  v14 = _Block_copy(aBlock);
  v15 = v28;
  if (!v28 || atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_15:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_16:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = v16;
  v19[1] = v16;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  shared_weak_owners = v11->__shared_weak_owners_;
  shared_owners = v11->__shared_owners_;
  if (!shared_weak_owners)
  {
    v24 = 0;
LABEL_29:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = std::__shared_weak_count::lock(shared_weak_owners);
  if (!v24)
  {
    goto LABEL_29;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v24;
  if (v24 && !atomic_fetch_add((v24 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  aBlock[0] = v14;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v19);
  MEMORY[0x29C263DD0](v21);
  std::__shared_weak_count::__release_weak(v7);
}

void sub_296DAC058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v17 = *(v15 - 104);
  if (v17)
  {
    _Block_release(v17);
  }

  MEMORY[0x29C263BF0](&a9, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C263DD0](va);
  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void sub_296DAC08C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  if (v14)
  {
    _Block_release(v14);
  }

  MEMORY[0x29C263DD0](va);
  std::__shared_weak_count::__release_weak(v13);
  _Unwind_Resume(a1);
}

void radio::ARIRFSCommandDriver::getRFSStatus_V2_sync(radio::ARIRFSCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v6;
  v17[3] = v6;
  v17[0] = v6;
  v17[1] = v6;
  AriSdk::ARI_CsiFpGetStatusV2_SDK::ARI_CsiFpGetStatusV2_SDK(v17);
  v7 = *(this + 14);
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x30uLL);
  v8->__shared_owners_ = 0;
  p_shared_owners = &v8->__shared_owners_;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v3;
  v8->__vftable = &unk_2A1E0BCD0;
  v8[1].__shared_owners_ = v5;
  v8[1].__shared_weak_owners_ = this;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZN3ice6detail12wrapCallbackIZN5radio19ARIRFSCommandDriver20getRFSStatus_V2_syncEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v21 = &__block_descriptor_tmp_69_0;
  v22 = v8 + 1;
  v23 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_3;
  aBlock[3] = &unk_29EE5B9B8;
  aBlock[4] = &v18;
  v10 = _Block_copy(aBlock);
  v11 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_9:
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v12;
  v15[1] = v12;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *(v7 + 16);
  v18 = *(v7 + 8);
  if (!v13)
  {
    v19 = 0;
LABEL_21:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = std::__shared_weak_count::lock(v13);
  if (!v19)
  {
    goto LABEL_21;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v14 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  aBlock[0] = v10;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v15);
  MEMORY[0x29C2640B0](v17);
  std::__shared_weak_count::__release_weak(v5);
}

void sub_296DAC428(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v17 = *(v15 - 104);
  if (v17)
  {
    _Block_release(v17);
  }

  MEMORY[0x29C263BF0](&a9, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C2640B0](va);
  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void sub_296DAC45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  if (v14)
  {
    _Block_release(v14);
  }

  MEMORY[0x29C2640B0](va);
  std::__shared_weak_count::__release_weak(v13);
  _Unwind_Resume(a1);
}

__n128 radio::ARIRFSCommandDriver::asString@<Q0>(int a1@<W1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 7;
  strcpy(a2, "Unknown");
  v3 = (a2 + 7);
  if (a1 <= 5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        *(a2 + 23) = 21;
        result.n128_u64[0] = *"drv grp not supported";
        strcpy(a2, "drv grp not supported");
      }

      else
      {
        if (a1 == 4)
        {
          v7 = "cmd called in wrong state";
          v8 = 25;
        }

        else
        {
          v7 = "driver IF not available";
          v8 = 23;
        }

        std::string::__assign_external(a2, v7, v8);
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          *(a2 + 3) = 1936942435;
          *a2 = 1667462515;
          *v3 = 0;
          return result;
        case 1:
          *(a2 + 23) = 18;
          *(a2 + 16) = 25959;
          v4 = "param out of range";
          goto LABEL_31;
        case 2:
          *(a2 + 23) = 22;
          result.n128_u64[0] = *"function not supported";
          strcpy(a2, "function not supported");
          break;
      }
    }
  }

  else
  {
    if (a1 > 11)
    {
      if (a1 <= 13)
      {
        if (a1 != 12)
        {
          *(a2 + 23) = 18;
          *(a2 + 16) = 25705;
          v4 = "cmd format invalid";
LABEL_31:
          result = *v4;
          *a2 = *v4;
          *(a2 + 18) = 0;
          return result;
        }

        *(a2 + 23) = 20;
        *(a2 + 16) = 1751348321;
        v6 = "param count mismatch";
LABEL_23:
        result = *v6;
        *a2 = *v6;
        *(a2 + 20) = 0;
        return result;
      }

      if (a1 != 14)
      {
        if (a1 == 0x7FFFFFFF)
        {
          *(a2 + 23) = 17;
          result.n128_u64[0] = *"ARM41 INT ENFORCE";
          strcpy(a2, "ARM41 INT ENFORCE");
        }

        return result;
      }

      v9 = "internal error";
LABEL_27:
      *(a2 + 23) = 14;
      *a2 = *v9;
      *(a2 + 6) = *(v9 + 6);
      *(a2 + 14) = 0;
      return result;
    }

    switch(a1)
    {
      case 6:
        *(a2 + 23) = 12;
        strcpy(a2, "driver error");
        return result;
      case 7:
        v9 = "driver timeout";
        goto LABEL_27;
      case 8:
        *(a2 + 23) = 20;
        *(a2 + 16) = 1684370546;
        v6 = "driver not supported";
        goto LABEL_23;
    }
  }

  return result;
}

void sub_296DAC7B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void radio::ARIRFSCommandDriver::getRFSStatus_sync(radio::ARIRFSCommandDriver *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v6;
  v17[3] = v6;
  v17[0] = v6;
  v17[1] = v6;
  AriSdk::ARI_CsiFpGetStatus_SDK::ARI_CsiFpGetStatus_SDK(v17);
  v7 = *(this + 14);
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x30uLL);
  v8->__shared_owners_ = 0;
  p_shared_owners = &v8->__shared_owners_;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v3;
  v8->__vftable = &unk_2A1E0BC50;
  v8[1].__shared_owners_ = v5;
  v8[1].__shared_weak_owners_ = this;
  v18 = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZN3ice6detail12wrapCallbackIZN5radio19ARIRFSCommandDriver17getRFSStatus_syncEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v21 = &__block_descriptor_tmp_66_1;
  v22 = v8 + 1;
  v23 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_3;
  aBlock[3] = &unk_29EE5B9B8;
  aBlock[4] = &v18;
  v10 = _Block_copy(aBlock);
  v11 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_9:
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v12;
  v15[1] = v12;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v13 = *(v7 + 16);
  v18 = *(v7 + 8);
  if (!v13)
  {
    v19 = 0;
LABEL_21:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v19 = std::__shared_weak_count::lock(v13);
  if (!v19)
  {
    goto LABEL_21;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v14 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  aBlock[0] = v10;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v15);
  MEMORY[0x29C263ED0](v17);
  std::__shared_weak_count::__release_weak(v5);
}

void sub_296DACAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v17 = *(v15 - 104);
  if (v17)
  {
    _Block_release(v17);
  }

  MEMORY[0x29C263BF0](&a9, a2, a3, a4, a5, a6, a7, a8);
  MEMORY[0x29C263ED0](va);
  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void sub_296DACB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  if (v14)
  {
    _Block_release(v14);
  }

  MEMORY[0x29C263ED0](va);
  std::__shared_weak_count::__release_weak(v13);
  _Unwind_Resume(a1);
}

void radio::ARIRFSCommandDriver::checkRFSStatus(radio::ARIRFSCommandDriver *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5radio19ARIRFSCommandDriver14checkRFSStatusEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_29;
  v1[4] = this;
  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped(this + 1, v1);
}

void radio::ARIRFSCommandDriver::setStartHandler(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19ARIRFSCommandDriver15setStartHandlerEN8dispatch8callbackIU13block_pointerFvjEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_30_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19ARIRFSCommandDriver15setStartHandlerEN8dispatch8callbackIU13block_pointerFvjEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 136);
  *(v3 + 136) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvjEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c46_ZTSN8dispatch8callbackIU13block_pointerFvjEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::ARIRFSCommandDriver::setLPMEnterAction(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19ARIRFSCommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_31_3;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19ARIRFSCommandDriver17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 160);
  *(v3 + 160) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 168);
  *(v3 + 168) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void radio::ARIRFSCommandDriver::setLPMExitAction(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19ARIRFSCommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_32_1;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19ARIRFSCommandDriver16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 176);
  *(v3 + 176) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 184);
  *(v3 + 184) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void radio::ARIRFSCommandDriver::setIndicationHandler(uint64_t a1, uint64_t a2)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN5radio19ARIRFSCommandDriver20setIndicationHandlerEN8dispatch8callbackIU13block_pointerFvbyyEEE_block_invoke;
  v6[3] = &__block_descriptor_tmp_33_2;
  v6[4] = a1;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  aBlock = v4;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped((a1 + 8), v6);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5radio19ARIRFSCommandDriver20setIndicationHandlerEN8dispatch8callbackIU13block_pointerFvbyyEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 144);
  *(v3 + 144) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 152);
  *(v3 + 152) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c48_ZTSN8dispatch8callbackIU13block_pointerFvbyyEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c48_ZTSN8dispatch8callbackIU13block_pointerFvbyyEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void radio::ARIRFSCommandDriver::~ARIRFSCommandDriver(radio::ARIRFSCommandDriver *this)
{
  radio::ARIRFSCommandDriver::~ARIRFSCommandDriver(this);

  operator delete(v1);
}

{
  *this = &unk_2A1E0B868;
  v2 = *(this + 23);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 21);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 20);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 18);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 17);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 16);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 15);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = this;
  }

  else
  {
    v11 = this;
  }

  radio::RFSCommandDriver::~RFSCommandDriver(v11);
}

uint64_t dispatch::callback<void({block_pointer})(unsigned int)>::~callback(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

atomic_ullong *std::shared_ptr<radio::ARIRFSCommandDriver>::shared_ptr[abi:ne200100]<radio::ARIRFSCommandDriver,std::shared_ptr<radio::ARIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::ARIRFSCommandDriver>(radio::ARIRFSCommandDriver*)::{lambda(radio::ARIRFSCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0B998;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
      v8 = v4;
      std::__shared_weak_count::__release_weak(v6);
      v4 = v8;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_8;
      }
    }

    return a1;
  }

  atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
  if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

LABEL_8:
  v9 = v4;
  (*(*v4 + 16))();
  std::__shared_weak_count::__release_weak(v9);
  return a1;
}

void sub_296DAD51C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<radio::ARIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::ARIRFSCommandDriver>(radio::ARIRFSCommandDriver*)::{lambda(radio::ARIRFSCommandDriver*)#1}::operator() const(radio::ARIRFSCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<radio::ARIRFSCommandDriver *,std::shared_ptr<radio::ARIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::ARIRFSCommandDriver>(radio::ARIRFSCommandDriver*)::{lambda(radio::ARIRFSCommandDriver *)#1},std::allocator<radio::ARIRFSCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<radio::ARIRFSCommandDriver *,std::shared_ptr<radio::ARIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::ARIRFSCommandDriver>(radio::ARIRFSCommandDriver*)::{lambda(radio::ARIRFSCommandDriver *)#1},std::allocator<radio::ARIRFSCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19ARIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19ARIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19ARIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15make_shared_ptrINS1_19ARIRFSCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<radio::ARIRFSCommandDriver> ctu::SharedSynchronizable<radio::RFSCommandDriver>::make_shared_ptr<radio::ARIRFSCommandDriver>(radio::ARIRFSCommandDriver*)::{lambda(radio::ARIRFSCommandDriver*)#1}::operator() const(radio::ARIRFSCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

void *std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::~__func(void *a1)
{
  *a1 = &unk_2A1E0B9E8;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    _Block_release(v3);
  }

  return a1;
}

void std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::~__func(void *__p)
{
  *__p = &unk_2A1E0B9E8;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void *std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A1E0B9E8;
  v3 = *(a1 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v4 = *(a1 + 16);
  v2[1] = v3;
  v2[2] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return v2;
}

void std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1E0B9E8;
  v4 = *(a1 + 8);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 16);
  a2[1] = v4;
  a2[2] = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    _Block_release(v3);
  }
}

void std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = __p[1];
  if (v3)
  {
    _Block_release(v3);
  }

  operator delete(__p);
}

void std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 16);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJiEEEvDpT__block_invoke;
  v8[3] = &__block_descriptor_tmp_45;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  aBlock = v7;
  v10 = v3;
  dispatch_async(v6, v8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    _Block_release(v5);
  }
}

uint64_t std::__function::__func<dispatch::callback<void({block_pointer})(unsigned int)>,std::allocator<dispatch::callback<void({block_pointer})(unsigned int)>>,void ()(int)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N8dispatch8callbackIU13block_pointerFvjEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N8dispatch8callbackIU13block_pointerFvjEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N8dispatch8callbackIU13block_pointerFvjEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N8dispatch8callbackIU13block_pointerFvjEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t std::function<void ()(int)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *__copy_helper_block_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFvbyyEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c45_ZTSN8dispatch5blockIU13block_pointerFvbyyEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ctu::SharedSynchronizable<radio::RFSCommandDriver>::execute_wrapped(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (!v3 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = a1[2];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5radio16RFSCommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0BB30;
  block[5] = v5;
  v12 = v7;
  p_shared_owners = &v7->__shared_owners_;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = a2;
  dispatch_async(v8, block);
  v10 = v12;
  if (!v12 || atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    return;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t __copy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN5radio16RFSCommandDriverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c53_ZTSNSt3__110shared_ptrIKN5radio16RFSCommandDriverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::operator()<ctu::cf::CFSharedRef<__CFError> const&,ctu::cf::CFSharedRef<__CFDictionary const> const&>(uint64_t *a1, const void **a2, const void **a3)
{
  v4 = *a1;
  v5 = *a2;
  v8 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  (*(v4 + 16))(v4, &v8, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_296DADE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (!v4)
  {
    v6 = a2[5];
    a1[4] = 0;
    a1[5] = v6;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = _Block_copy(v4);
  v6 = a2[5];
  a1[4] = v5;
  a1[5] = v6;
  if (v6)
  {
LABEL_5:
    CFRetain(v6);
  }

LABEL_6:
  result = a2[6];
  a1[6] = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c100_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_IK14__CFDictionaryEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio19ARIRFSCommandDriver16registerRFS_syncEbE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v3 + 16);
      v7 = std::__shared_weak_count::lock(v4);
      v33 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_43:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v31 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v30[2] = v9;
        v30[3] = v9;
        v30[0] = v9;
        v30[1] = v9;
        AriSdk::ARI_CsiFpRegisterRsp_SDK::ARI_CsiFpRegisterRsp_SDK(v30, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        *__p = operator new(0x20uLL);
        *&__p[8] = xmmword_296E20BE0;
        strcpy(*__p, "registering rfs-get-status");
        checkError(&cf, v30, __p);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          v10 = cf;
          if (cf)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v10 = cf;
          if (cf)
          {
            goto LABEL_38;
          }
        }

        if (AriSdk::ARI_CsiFpRegisterRsp_SDK::unpack(v30))
        {
          *__p = operator new(0x40uLL);
          *&__p[8] = xmmword_296E20BF0;
          strcpy(*__p, "Failed to unpack response in registering for RFS Get Status");
          CreateError();
          v11 = cf;
          cf = v34.__r_.__value_.__r.__words[0];
          v34.__r_.__value_.__r.__words[0] = 0;
          if (v11)
          {
            CFRelease(v11);
            if (v34.__r_.__value_.__r.__words[0])
            {
              CFRelease(v34.__r_.__value_.__l.__data_);
            }
          }

          if ((__p[23] & 0x80000000) == 0)
          {
LABEL_37:
            v10 = cf;
            if (!cf)
            {
              if (*(v3 + 24) == 1)
              {
                radio::ARIRFSCommandDriver::getRFSStatus_sync(v5);
              }

              goto LABEL_40;
            }

LABEL_38:
            v23 = *(v5 + 5);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              LODWORD(v34.__r_.__value_.__l.__data_) = 138412290;
              *(v34.__r_.__value_.__r.__words + 4) = v10;
              _os_log_error_impl(&dword_296D7D000, v23, OS_LOG_TYPE_ERROR, "%@", &v34, 0xCu);
            }

LABEL_40:
            if (cf)
            {
              CFRelease(cf);
            }

            MEMORY[0x29C2640E0](v30);
            goto LABEL_43;
          }

          v12 = *__p;
LABEL_36:
          operator delete(v12);
          goto LABEL_37;
        }

        v13 = *v31;
        if (!*v31)
        {
          goto LABEL_37;
        }

        radio::ARIRFSCommandDriver::asString(*v31, &v25);
        v14 = std::string::insert(&v25, 0, "Error on enabling RFS Get Status result: ", 0x29uLL);
        v15 = *&v14->__r_.__value_.__l.__data_;
        v26.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
        *&v26.__r_.__value_.__l.__data_ = v15;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        v16 = std::string::append(&v26, ", value: ", 9uLL);
        v17 = *&v16->__r_.__value_.__l.__data_;
        v34.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
        *&v34.__r_.__value_.__l.__data_ = v17;
        v16->__r_.__value_.__l.__size_ = 0;
        v16->__r_.__value_.__r.__words[2] = 0;
        v16->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v24, v13);
        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v24;
        }

        else
        {
          v18 = v24.__r_.__value_.__r.__words[0];
        }

        if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v24.__r_.__value_.__l.__size_;
        }

        v20 = std::string::append(&v34, v18, size);
        v21 = *&v20->__r_.__value_.__l.__data_;
        *&__p[16] = *(&v20->__r_.__value_.__l + 2);
        *__p = v21;
        v20->__r_.__value_.__l.__size_ = 0;
        v20->__r_.__value_.__r.__words[2] = 0;
        v20->__r_.__value_.__r.__words[0] = 0;
        CreateError();
        v22 = cf;
        cf = v27;
        v27 = 0;
        if (v22)
        {
          CFRelease(v22);
          if (v27)
          {
            CFRelease(v27);
          }
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_27:
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_33;
          }
        }

        else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_27;
        }

        operator delete(v24.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_34;
        }

LABEL_33:
        operator delete(v34.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_29:
          if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

LABEL_35:
          v12 = v25.__r_.__value_.__r.__words[0];
          goto LABEL_36;
        }

LABEL_34:
        operator delete(v26.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }
  }
}

void sub_296DAE2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, int a35, __int16 a36, char a37, char a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZN5radio19ARIRFSCommandDriver16registerRFS_syncEbE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZN5radio19ARIRFSCommandDriver16registerRFS_syncEbE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARIRFSCommandDriver::registerRFS_sync(BOOL)::$_0,std::allocator<radio::ARIRFSCommandDriver::registerRFS_sync(BOOL)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0BBD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARIRFSCommandDriver::registerRFS_sync(BOOL)::$_0,std::allocator<radio::ARIRFSCommandDriver::registerRFS_sync(BOOL)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio19ARIRFSCommandDriver17getRFSStatus_syncEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (!v3)
  {
    return;
  }

  v4 = v3[1];
  if (!v4)
  {
    return;
  }

  v5 = v3[2];
  v7 = std::__shared_weak_count::lock(v4);
  v44 = v7;
  if (!v7)
  {
    return;
  }

  if (!*v3)
  {
LABEL_42:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v30 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v30);
    }

    return;
  }

  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[3] = v8;
  v42 = v8;
  v41[1] = v8;
  v41[2] = v8;
  v41[0] = v8;
  AriSdk::ARI_CsiFpGetStatusRsp_SDK::ARI_CsiFpGetStatusRsp_SDK(v41, a2);
  cf = 0xAAAAAAAAAAAAAAAALL;
  *v45 = operator new(0x20uLL);
  *&v45[8] = xmmword_296E20BE0;
  strcpy(*v45, "registering rfs-get-status");
  checkError(&cf, v41, v45);
  if ((v45[23] & 0x80000000) != 0)
  {
    operator delete(*v45);
    v9 = cf;
    if (!cf)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = cf;
    if (!cf)
    {
LABEL_9:
      if (AriSdk::ARI_CsiFpGetStatusRsp_SDK::unpack(v41))
      {
        *v45 = operator new(0x40uLL);
        *&v45[8] = xmmword_296E20BF0;
        strcpy(*v45, "Failed to unpack response in registering for RFS Get Status");
        CreateError();
        v10 = cf;
        cf = v37[0];
        v37[0] = 0;
        if (v10)
        {
          CFRelease(v10);
        }

        if ((v45[23] & 0x80000000) != 0)
        {
          operator delete(*v45);
          v9 = cf;
          if (!cf)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v11 = *v42;
      v13 = **(&v42 + 1);
      v12 = *(*(&v42 + 1) + 4);
      v15 = *(*(&v42 + 1) + 8);
      v14 = *(*(&v42 + 1) + 12);
      v17 = *(*(&v42 + 1) + 16);
      v16 = *(*(&v42 + 1) + 20);
      v32 = *(*(&v42 + 1) + 24);
      v33 = *(*(&v42 + 1) + 40);
      v34 = *(*(&v42 + 1) + 56);
      if (!*v42)
      {
        goto LABEL_30;
      }

      radio::ARIRFSCommandDriver::asString(v11, &v36);
      v18 = std::string::insert(&v36, 0, "Error on getting RFS Status result: ", 0x24uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v48, ", value: ", 9uLL);
      v21 = *&v20->__r_.__value_.__l.__data_;
      *&v45[16] = *(&v20->__r_.__value_.__l + 2);
      *v45 = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v35, v11);
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v35;
      }

      else
      {
        v22 = v35.__r_.__value_.__r.__words[0];
      }

      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v35.__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(v45, v22, size);
      v25 = *&v24->__r_.__value_.__l.__data_;
      v38 = v24->__r_.__value_.__r.__words[2];
      *v37 = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      CreateError();
      v27 = v39;
      v26 = cf;
      v39 = 0;
      cf = v27;
      if (v26)
      {
        CFRelease(v26);
        if (v39)
        {
          CFRelease(v39);
        }
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[0]);
        if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_27:
          if ((v45[23] & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_47;
        }
      }

      else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      operator delete(v35.__r_.__value_.__l.__data_);
      if ((v45[23] & 0x80000000) == 0)
      {
LABEL_28:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

LABEL_48:
        operator delete(v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_49;
        }

LABEL_30:
        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_31;
        }

        goto LABEL_50;
      }

LABEL_47:
      operator delete(*v45);
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_49:
        operator delete(v36.__r_.__value_.__l.__data_);
        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_31:
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_32;
          }

          goto LABEL_55;
        }

LABEL_50:
        radio::ARIRFSCommandDriver::asString(v11, v45);
        v31 = v45;
        if (v45[23] < 0)
        {
          v31 = *v45;
        }

        LODWORD(v48.__r_.__value_.__l.__data_) = 136315138;
        *(v48.__r_.__value_.__r.__words + 4) = v31;
        _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D RFS Status: %s\n", &v48, 0xCu);
        if ((v45[23] & 0x80000000) != 0)
        {
          operator delete(*v45);
        }

        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_32:
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_33;
          }

          goto LABEL_56;
        }

LABEL_55:
        *v45 = 67110144;
        *&v45[8] = 1024;
        *&v45[10] = v13;
        *&v45[14] = 1024;
        *&v45[16] = v12;
        *&v45[20] = 1024;
        *&v45[22] = v15;
        v46 = 1024;
        v47 = v14;
        _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tTable[%d]\tError Code: %d, Data Type: %d, Offset: %d Group ID: %d\n", v45, 0x20u);
        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_33:
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_34;
          }

          goto LABEL_57;
        }

LABEL_56:
        *v45 = 67110144;
        *&v45[4] = 1;
        *&v45[8] = 1024;
        *&v45[10] = v17;
        *&v45[14] = 1024;
        *&v45[16] = v16;
        *&v45[20] = 1024;
        *&v45[22] = v32;
        v46 = 1024;
        v47 = DWORD1(v32);
        _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tTable[%d]\tError Code: %d, Data Type: %d, Offset: %d Group ID: %d\n", v45, 0x20u);
        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_34:
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_35;
          }

          goto LABEL_58;
        }

LABEL_57:
        *v45 = 67110144;
        *&v45[4] = 2;
        *&v45[8] = 1024;
        *&v45[10] = DWORD2(v32);
        *&v45[14] = 1024;
        *&v45[16] = HIDWORD(v32);
        *&v45[20] = 1024;
        *&v45[22] = v33;
        v46 = 1024;
        v47 = DWORD1(v33);
        _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tTable[%d]\tError Code: %d, Data Type: %d, Offset: %d Group ID: %d\n", v45, 0x20u);
        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_35:
          if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_36;
          }

          goto LABEL_59;
        }

LABEL_58:
        *v45 = 67109120;
        *&v45[4] = DWORD2(v33);
        _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tNumber of Errors: %d\n", v45, 8u);
        v28 = *(v5 + 40);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
LABEL_36:
          v9 = cf;
          if (!cf)
          {
            goto LABEL_39;
          }

          goto LABEL_37;
        }

LABEL_59:
        *v45 = 67110144;
        *&v45[4] = HIDWORD(v33);
        *&v45[8] = 1024;
        *&v45[10] = v34;
        *&v45[14] = 1024;
        *&v45[16] = DWORD1(v34);
        *&v45[20] = 1024;
        *&v45[22] = DWORD2(v34);
        v46 = 1024;
        v47 = HIDWORD(v34);
        _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tSpare: [%d,%d,%d,%d,%d]\n", v45, 0x20u);
        v9 = cf;
        if (!cf)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      goto LABEL_48;
    }
  }

LABEL_37:
  v29 = *(v5 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v48.__r_.__value_.__l.__data_) = 138412290;
    *(v48.__r_.__value_.__r.__words + 4) = v9;
    _os_log_error_impl(&dword_296D7D000, v29, OS_LOG_TYPE_ERROR, "%@", &v48, 0xCu);
  }

LABEL_39:
  radio::ARIRFSCommandDriver::registerRFS_sync(v5, 0);
  if (cf)
  {
    CFRelease(cf);
  }

  MEMORY[0x29C2641C0](v41);
  v7 = v44;
  if (v44)
  {
    goto LABEL_42;
  }
}

void sub_296DAEC94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c81_ZTSNSt3__110shared_ptrIZN5radio19ARIRFSCommandDriver17getRFSStatus_syncEvE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c81_ZTSNSt3__110shared_ptrIZN5radio19ARIRFSCommandDriver17getRFSStatus_syncEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARIRFSCommandDriver::getRFSStatus_sync(void)::$_0,std::allocator<radio::ARIRFSCommandDriver::getRFSStatus_sync(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0BC50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARIRFSCommandDriver::getRFSStatus_sync(void)::$_0,std::allocator<radio::ARIRFSCommandDriver::getRFSStatus_sync(void)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5radio19ARIRFSCommandDriver20getRFSStatus_V2_syncEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v3[2];
      v7 = std::__shared_weak_count::lock(v4);
      v44 = v7;
      if (v7)
      {
        if (!*v3)
        {
LABEL_40:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v30 = v7;
            (v7->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v30);
          }

          return;
        }

        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v41[3] = v8;
        v42 = v8;
        v41[1] = v8;
        v41[2] = v8;
        v41[0] = v8;
        AriSdk::ARI_CsiFpGetStatusRspV2_SDK::ARI_CsiFpGetStatusRspV2_SDK(v41, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        *v45 = operator new(0x20uLL);
        *&v45[8] = xmmword_296E20BE0;
        strcpy(*v45, "registering rfs-get-status");
        checkError(&cf, v41, v45);
        if ((v45[23] & 0x80000000) != 0)
        {
          operator delete(*v45);
          v9 = cf;
          if (!cf)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v9 = cf;
          if (!cf)
          {
LABEL_9:
            if (AriSdk::ARI_CsiFpGetStatusRspV2_SDK::unpack(v41))
            {
              *v45 = operator new(0x40uLL);
              *&v45[8] = xmmword_296E20BF0;
              strcpy(*v45, "Failed to unpack response in registering for RFS Get Status");
              CreateError();
              v10 = cf;
              cf = v37[0];
              v37[0] = 0;
              if (v10)
              {
                CFRelease(v10);
              }

              if ((v45[23] & 0x80000000) != 0)
              {
                operator delete(*v45);
                v9 = cf;
                if (!cf)
                {
                  goto LABEL_39;
                }

                goto LABEL_37;
              }

              goto LABEL_36;
            }

            v11 = *v42;
            v13 = **(&v42 + 1);
            v12 = *(*(&v42 + 1) + 4);
            v15 = *(*(&v42 + 1) + 8);
            v14 = *(*(&v42 + 1) + 12);
            v17 = *(*(&v42 + 1) + 16);
            v16 = *(*(&v42 + 1) + 20);
            v32 = *(*(&v42 + 1) + 24);
            v33 = *(*(&v42 + 1) + 40);
            v34 = *(*(&v42 + 1) + 64);
            if (!*v42)
            {
              goto LABEL_30;
            }

            radio::ARIRFSCommandDriver::asString(v11, &v36);
            v18 = std::string::insert(&v36, 0, "Error on getting RFS Status result: ", 0x24uLL);
            v19 = *&v18->__r_.__value_.__l.__data_;
            v48.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
            *&v48.__r_.__value_.__l.__data_ = v19;
            v18->__r_.__value_.__l.__size_ = 0;
            v18->__r_.__value_.__r.__words[2] = 0;
            v18->__r_.__value_.__r.__words[0] = 0;
            v20 = std::string::append(&v48, ", value: ", 9uLL);
            v21 = *&v20->__r_.__value_.__l.__data_;
            *&v45[16] = *(&v20->__r_.__value_.__l + 2);
            *v45 = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v35, v11);
            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = &v35;
            }

            else
            {
              v22 = v35.__r_.__value_.__r.__words[0];
            }

            if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v35.__r_.__value_.__l.__size_;
            }

            v24 = std::string::append(v45, v22, size);
            v25 = *&v24->__r_.__value_.__l.__data_;
            v38 = v24->__r_.__value_.__r.__words[2];
            *v37 = v25;
            v24->__r_.__value_.__l.__size_ = 0;
            v24->__r_.__value_.__r.__words[2] = 0;
            v24->__r_.__value_.__r.__words[0] = 0;
            CreateError();
            v27 = v39;
            v26 = cf;
            v39 = 0;
            cf = v27;
            if (v26)
            {
              CFRelease(v26);
              if (v39)
              {
                CFRelease(v39);
              }
            }

            if (SHIBYTE(v38) < 0)
            {
              operator delete(v37[0]);
              if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_27:
                if ((v45[23] & 0x80000000) == 0)
                {
                  goto LABEL_28;
                }

                goto LABEL_47;
              }
            }

            else if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_27;
            }

            operator delete(v35.__r_.__value_.__l.__data_);
            if ((v45[23] & 0x80000000) == 0)
            {
LABEL_28:
              if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_29;
              }

LABEL_48:
              operator delete(v48.__r_.__value_.__l.__data_);
              if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_49;
              }

LABEL_30:
              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_31;
              }

              goto LABEL_50;
            }

LABEL_47:
            operator delete(*v45);
            if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_29:
              if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_30;
              }

LABEL_49:
              operator delete(v36.__r_.__value_.__l.__data_);
              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_31:
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_32;
                }

                goto LABEL_55;
              }

LABEL_50:
              radio::ARIRFSCommandDriver::asString(v11, v45);
              v31 = v45;
              if (v45[23] < 0)
              {
                v31 = *v45;
              }

              LODWORD(v48.__r_.__value_.__l.__data_) = 136315138;
              *(v48.__r_.__value_.__r.__words + 4) = v31;
              _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D RFS Status: %s\n", &v48, 0xCu);
              if ((v45[23] & 0x80000000) != 0)
              {
                operator delete(*v45);
              }

              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_32:
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_33;
                }

                goto LABEL_56;
              }

LABEL_55:
              *v45 = 67110144;
              *&v45[8] = 1024;
              *&v45[10] = v13;
              *&v45[14] = 1024;
              *&v45[16] = v12;
              *&v45[20] = 1024;
              *&v45[22] = v15;
              v46 = 1024;
              v47 = v14;
              _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tTable[%d]\tError Code: %d, Data Type: %d, Offset: %d Group ID: %d\n", v45, 0x20u);
              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_33:
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_34;
                }

                goto LABEL_57;
              }

LABEL_56:
              *v45 = 67110144;
              *&v45[4] = 1;
              *&v45[8] = 1024;
              *&v45[10] = v17;
              *&v45[14] = 1024;
              *&v45[16] = v16;
              *&v45[20] = 1024;
              *&v45[22] = v32;
              v46 = 1024;
              v47 = DWORD1(v32);
              _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tTable[%d]\tError Code: %d, Data Type: %d, Offset: %d Group ID: %d\n", v45, 0x20u);
              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_34:
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_35;
                }

                goto LABEL_58;
              }

LABEL_57:
              *v45 = 67110144;
              *&v45[4] = 2;
              *&v45[8] = 1024;
              *&v45[10] = DWORD2(v32);
              *&v45[14] = 1024;
              *&v45[16] = HIDWORD(v32);
              *&v45[20] = 1024;
              *&v45[22] = v33;
              v46 = 1024;
              v47 = HIDWORD(v33);
              _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tTable[%d]\tError Code: %d, Data Type: %d, Offset: %d Group ID: %d\n", v45, 0x20u);
              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_35:
                if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_36;
                }

                goto LABEL_59;
              }

LABEL_58:
              *v45 = 67109120;
              *&v45[4] = v34;
              _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tNumber of Errors: %d\n", v45, 8u);
              v28 = *(v5 + 40);
              if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
              {
LABEL_36:
                v9 = cf;
                if (!cf)
                {
                  goto LABEL_39;
                }

                goto LABEL_37;
              }

LABEL_59:
              *v45 = 67110144;
              *&v45[4] = HIDWORD(v34);
              *&v45[8] = 1024;
              *&v45[14] = 1024;
              *&v45[20] = 1024;
              v46 = 1024;
              _os_log_debug_impl(&dword_296D7D000, v28, OS_LOG_TYPE_DEBUG, "#D \tSpare: [%d,%d,%d,%d,%d]\n", v45, 0x20u);
              v9 = cf;
              if (!cf)
              {
                goto LABEL_39;
              }

              goto LABEL_37;
            }

            goto LABEL_48;
          }
        }

LABEL_37:
        v29 = *(v5 + 40);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR) || (LODWORD(v48.__r_.__value_.__l.__data_) = 138412290, *(v48.__r_.__value_.__r.__words + 4) = v9, _os_log_error_impl(&dword_296D7D000, v29, OS_LOG_TYPE_ERROR, "%@", &v48, 0xCu), (v9 = cf) != 0))
        {
          CFRelease(v9);
        }

LABEL_39:
        MEMORY[0x29C264480](v41);
        v7 = v44;
        if (!v44)
        {
          return;
        }

        goto LABEL_40;
      }
    }
  }
}

void sub_296DAF5F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c84_ZTSNSt3__110shared_ptrIZN5radio19ARIRFSCommandDriver20getRFSStatus_V2_syncEvE3__0EE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c84_ZTSNSt3__110shared_ptrIZN5radio19ARIRFSCommandDriver20getRFSStatus_V2_syncEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARIRFSCommandDriver::getRFSStatus_V2_sync(void)::$_0,std::allocator<radio::ARIRFSCommandDriver::getRFSStatus_V2_sync(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0BCD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARIRFSCommandDriver::getRFSStatus_V2_sync(void)::$_0,std::allocator<radio::ARIRFSCommandDriver::getRFSStatus_V2_sync(void)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

std::string *abm::trace::getBasebandTraceDirSuffix@<X0>(abm::trace *this@<X0>, std::string *a2@<X8>)
{
  v2 = this;
  memset(a2, 170, sizeof(std::string));
  *(&a2->__r_.__value_.__s + 23) = 0;
  a2->__r_.__value_.__s.__data_[0] = 0;
  result = capabilities::radio::vendor(this);
  if ((result - 2) < 3)
  {
    v5 = &abm::trace::kICETraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  if (result == 1)
  {
    if (v2)
    {
      *(&a2->__r_.__value_.__s + 23) = 5;
      strcpy(a2, "-qdss");
      return result;
    }

    v5 = &abm::trace::kEURTraceSnapshotDirectorySuffix;
    return std::string::__assign_external(a2, *v5);
  }

  return result;
}

void sub_296DAF8EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void abm::trace::getCoreDumpDirSuffix(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_1, memory_order_acquire) & 1) == 0)
  {
    v3 = __cxa_guard_acquire(&_MergedGlobals_1);
    if (v3)
    {
      v4 = capabilities::radio::maverick(v3);
      v5 = &abm::trace::kEURCoreDumpSnapshotDirectorySuffix;
      if (!v4)
      {
        v5 = &abm::trace::kCoreDumpSnapshotDirectorySuffix;
      }

      std::string::basic_string[abi:ne200100]<0>(&xmmword_2A18CA870, *v5);
      __cxa_guard_release(&_MergedGlobals_1);
    }
  }

  if (byte_2A18CA887 < 0)
  {
    v2 = xmmword_2A18CA870;

    std::string::__init_copy_ctor_external(a1, v2, *(&v2 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_2A18CA870;
    a1->__r_.__value_.__r.__words[2] = unk_2A18CA880;
  }
}

uint64_t abm::trace::isSupported(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v3 = strcasecmp(*a1, abm::trace::kDIAG);
    if (v3)
    {
LABEL_3:
      v4 = v1;
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v3 = strcasecmp(a1, abm::trace::kDIAG);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  if (capabilities::radio::maverick(v3))
  {
    return 1;
  }

  LOBYTE(v2) = v1[23];
  v4 = v1;
  if ((v2 & 0x80) == 0)
  {
LABEL_4:
    v5 = strcasecmp(v4, abm::trace::kICETrace);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (capabilities::radio::ice(v5))
    {
      return 1;
    }

    LOBYTE(v2) = v1[23];
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_11:
  v5 = strcasecmp(*v1, abm::trace::kICETrace);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v2 & 0x80) == 0)
  {
LABEL_6:
    v6 = v1;
    if (!strcasecmp(v1, abm::trace::kBasebandTrace))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = *v1;
  if (!strcasecmp(*v1, abm::trace::kBasebandTrace))
  {
    return 1;
  }

LABEL_15:
  v7 = strcasecmp(v6, abm::trace::kEURCoreDump);
  if (v7)
  {
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (capabilities::radio::maverick(v7))
    {
      return 1;
    }

    if ((v1[23] & 0x80) == 0)
    {
LABEL_17:
      if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
      {
        return 1;
      }

      if (!strcasecmp(v1, abm::trace::kCompression))
      {
        goto LABEL_40;
      }

      if (strcasecmp(v1, abm::trace::kBasebandIPC))
      {
        if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
        {
          goto LABEL_40;
        }

LABEL_34:
        if (strcasecmp(v1, abm::trace::kProfile))
        {
          if (strcasecmp(v1, abm::trace::kTraceTailspin) && strcasecmp(v1, "Settings") && strcasecmp(v1, "LogFilter"))
          {
            return 0;
          }

          goto LABEL_40;
        }

        return 1;
      }

      goto LABEL_43;
    }
  }

  v1 = *v1;
  if (!strcasecmp(v1, abm::trace::kCoreDump) || !strcasecmp(v1, abm::trace::kSystemLogs))
  {
    return 1;
  }

  if (!strcasecmp(v1, abm::trace::kCompression))
  {
    goto LABEL_40;
  }

  if (strcasecmp(v1, abm::trace::kBasebandIPC))
  {
    if (!strcasecmp(v1, abm::trace::kIPC) || !strcasecmp(v1, "KernelPCI") || !strcasecmp(v1, abm::trace::kTapToRadar))
    {
LABEL_40:

      return MEMORY[0x2A1C6EE08]();
    }

    goto LABEL_34;
  }

LABEL_43:

  return MEMORY[0x2A1C6EDC8]();
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

uint64_t desense::ARICommandDriver::create@<X0>(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  desense::ARICommandDriver::ARICommandDriver(v4, &v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<desense::ARICommandDriver>::shared_ptr[abi:ne200100]<desense::ARICommandDriver,std::shared_ptr<desense::ARICommandDriver> ctu::SharedSynchronizable<desense::CommandDriver>::make_shared_ptr<desense::ARICommandDriver>(desense::ARICommandDriver*)::{lambda(desense::ARICommandDriver*)#1},0>(a2, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return (*(**a2 + 32))(*a2);
}

void sub_296DAFE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

desense::CommandDriver *desense::ARICommandDriver::ARICommandDriver(desense::CommandDriver *a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  desense::CommandDriver::CommandDriver();
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  *a1 = &unk_2A1E0BD20;
  v4 = *(a1 + 3);
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  desense::CommandDriver::getName(a1);
  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_296DAFF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296DAFF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  desense::CommandDriver::~CommandDriver(v10);
  _Unwind_Resume(a1);
}

void desense::CommandDriver::~CommandDriver(void **this)
{
  *this = &unk_2A1E0BE08;
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  v2 = this[13];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    this[9] = &unk_2A1E0BE40;
    v3 = this[11];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    this[9] = &unk_2A1E0BE40;
    v3 = this[11];
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
    if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 24))(v3);
    }
  }

LABEL_10:
  this[6] = &unk_2A1E0BF00;
  v4 = this[8];
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 24))(v4);
      }
    }
  }

  MEMORY[0x29C263A00](this + 5);
  v5 = this[4];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[3];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = this[2];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void desense::ARICommandDriver::~ARICommandDriver(desense::ARICommandDriver *this)
{
  *this = &unk_2A1E0BD20;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    desense::CommandDriver::~CommandDriver(this);
  }

  else
  {
    desense::CommandDriver::~CommandDriver(this);
  }
}

{
  *this = &unk_2A1E0BD20;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v4, 2u);
  }

  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    desense::CommandDriver::~CommandDriver(this);
  }

  else
  {
    desense::CommandDriver::~CommandDriver(this);
  }
}

{
  *this = &unk_2A1E0BD20;
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v5, 2u);
  }

  v3 = *(this + 18);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  desense::CommandDriver::~CommandDriver(this);
  operator delete(v4);
}

void desense::ARICommandDriver::init(desense::ARICommandDriver *this)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN7desense16ARICommandDriver4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_5;
  v9[4] = this;
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7desense13CommandDriverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E0C2A8;
  block[5] = v3;
  v11 = v5;
  p_shared_owners = &v5->__shared_owners_;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v9;
  dispatch_async(v6, block);
  v8 = v11;
  if (!v11 || atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_8:
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }
}

uint64_t ___ZN7desense16ARICommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(v1 + 136);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 0x40000000;
  v17[2] = ___ZN7desense16ARICommandDriver4initEv_block_invoke_2;
  v17[3] = &__block_descriptor_tmp_5;
  v17[4] = v1;
  *buf = v17;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v3, 0, buf);
  v4 = *(v1 + 136);
  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v16[2] = ___ZN7desense16ARICommandDriver4initEv_block_invoke_3;
  v16[3] = &__block_descriptor_tmp_4_0;
  v16[4] = v1;
  *buf = v16;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v4, 1, buf);
  v6 = *(v1 + 8);
  v5 = *(v1 + 16);
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5), (v15 = v7) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  p_shared_weak_owners = &v7->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = operator new(0x38uLL);
  v10->__shared_owners_ = 0;
  p_shared_owners = &v10->__shared_owners_;
  v10->__shared_weak_owners_ = 0;
  v10->__vftable = &unk_2A1E0C260;
  v10[1].__vftable = v6;
  v10[1].__shared_owners_ = v8;
  v10[1].__shared_weak_owners_ = desense::ARICommandDriver::handleCurrentFrequencyInfoIndication_sync;
  v10[2].__vftable = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZN3ice6detail12wrapCallbackIZNS_6Client13regIndicationIN7desense13CommandDriverENS4_16ARICommandDriverEvJPKhjEEEvjNSt3__110shared_ptrIT_EEMT0_FT1_DpT2_EEUlS8_jE_vEEN8dispatch5blockIU13block_pointerFiPhjEEENS9_17integral_constantIiLi2EEEOSB__block_invoke;
  v21 = &__block_descriptor_tmp_28_1;
  v22 = v10 + 1;
  v23 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_4;
  aBlock[3] = &unk_29EE5BA40;
  aBlock[4] = buf;
  v12 = _Block_copy(aBlock);
  v13 = v23;
  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_10:
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_11:
  *buf = v12;
  ice::Client::regIndicationInternal();
  if (*buf)
  {
    _Block_release(*buf);
  }

  std::__shared_weak_count::__release_weak(v8);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return ice::Client::start(*(v1 + 136));
}

void sub_296DB0984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::__shared_weak_count::__release_weak(v21);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t ___ZN7desense16ARICommandDriver4initEv_block_invoke_2(uint64_t a1)
{
  v64 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEBUG, "#D Started", buf, 2u);
  }

  v3 = *(v1 + 56);
  v38 = 0;
  v36 = 0;
  v37 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = v4;
  v51 = v4;
  v48 = v4;
  v49 = v4;
  v46 = v4;
  v47 = v4;
  v44 = v4;
  v45 = v4;
  *buf = v4;
  v43 = v4;
  v5 = *(v3 + 24);
  __p[0] = 10;
  __p[1] = buf;
  v53[0] = 0;
  v53[1] = v5;
  pthread_mutex_lock(v5);
  v6 = *(v3 + 8);
  if (!v6)
  {
    v8 = *v3;
    goto LABEL_15;
  }

  explicit = atomic_load_explicit(v6 + 2, memory_order_acquire);
  v8 = *v3;
  if (explicit == 1)
  {
    v9 = *v8;
    v10 = *(v3 + 16);
    if (v10 == *v8)
    {
      v10 = *(v9 + 8);
      *&v39 = v10;
      if (v9 == v10)
      {
LABEL_12:
        *(v3 + 16) = v10;
        goto LABEL_13;
      }
    }

    else
    {
      *&v39 = *(v3 + 16);
    }

    v11 = v10[2];
    if (*(v11 + 24))
    {
      v10 = v10[1];
    }

    else
    {
      v10 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::erase(v9, (v11 + 64), &v39);
      v8 = *v3;
    }

    goto LABEL_12;
  }

LABEL_13:
  v6 = *(v3 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 2, 1u, memory_order_relaxed);
  }

LABEL_15:
  v12 = v37;
  v36 = v8;
  v37 = v6;
  if (v12)
  {
    if (atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
      if (atomic_fetch_add(v12 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v12 + 24))(v12);
      }
    }
  }

  pthread_mutex_unlock(v53[1]);
  v13 = __p[1];
  if (__p[1])
  {
    if (v53[0] > 0)
    {
      v28 = __p[1] + 16 * v53[0];
      do
      {
        v29 = *(v28 - 1);
        if (v29)
        {
          if (atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v29 + 16))(v29);
            if (atomic_fetch_add(v29 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v29 + 24))(v29);
            }
          }
        }

        v28 -= 16;
      }

      while (v28 > v13);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v14;
  v56 = v14;
  *v53 = v14;
  v54 = v14;
  v51 = v14;
  *__p = v14;
  v49 = v14;
  v50 = v14;
  v47 = v14;
  v48 = v14;
  v45 = v14;
  v46 = v14;
  v43 = v14;
  v44 = v14;
  *buf = v14;
  buf[0] = 0;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  v58 = 10;
  v59 = &buf[8];
  v60 = 0;
  v62 = 0;
  v63 = 0;
  v61 = &v38;
  v15 = v36;
  v16 = *v36;
  v33 = buf;
  v34 = v3;
  v35 = v16;
  *&v31 = *(v16 + 8);
  *(&v31 + 1) = v16;
  *&v32 = buf;
  *(&v32 + 1) = v16;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v31);
  v30[0] = *v15;
  v30[1] = v30[0];
  v30[2] = buf;
  v30[3] = v30[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(v30);
  v39 = v31;
  v40 = v32;
  v17 = v30[0];
  v18 = v31;
  if (v31 == v30[0])
  {
    if (HIDWORD(v62) <= v62)
    {
      goto LABEL_43;
    }

LABEL_42:
    boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::force_cleanup_connections(v34, v35);
    goto LABEL_43;
  }

  v19 = v40;
  if ((*v40 & 1) == 0)
  {
    v20 = *(*(v31 + 16) + 32);
    v21 = *(v20 + 24);
    if (!v21)
    {
      std::runtime_error::runtime_error(&v41, "call to empty boost::function");
      v41.__vftable = &unk_2A1E0C118;
      boost::throw_exception<boost::bad_function_call>(&v41);
    }

    (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32, **(v40 + 272));
    if ((*v19 & 1) == 0)
    {
      *v19 = 1;
    }
  }

  *&v39 = *(v18 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v39);
  v22 = v40;
  if (*v40 == 1)
  {
    *v40 = 0;
  }

  for (i = v39; v39 != v17; i = v39)
  {
    v24 = *(*(i + 16) + 32);
    v25 = *(v24 + 24);
    if (!v25)
    {
      std::runtime_error::runtime_error(&v41, "call to empty boost::function");
      v41.__vftable = &unk_2A1E0C118;
      boost::throw_exception<boost::bad_function_call>(&v41);
    }

    (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(v24 + 32, **(v22 + 272));
    if ((*v22 & 1) == 0)
    {
      *v22 = 1;
    }

    *&v39 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::lock_next_callable(&v39);
    v22 = v40;
    if (*v40 == 1)
    {
      *v40 = 0;
    }
  }

  if (*(v33 + 71) > *(v33 + 70))
  {
    goto LABEL_42;
  }

LABEL_43:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,coex::SubId>>::~slot_call_iterator_cache(buf);
  v27 = v37;
  if (v37 && atomic_fetch_add(v37 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v27 + 16))(v27);
    if (atomic_fetch_add(v27 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v27 + 24))(v27);
    }
  }

  return result;
}