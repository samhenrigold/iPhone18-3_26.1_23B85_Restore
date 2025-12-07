void sub_296E0988C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c150_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c150_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver17getManifestStatusEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FA28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::getManifestStatus(dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13setRegionCodeENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEEUb7_E4__30vEEN8dispatch5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v26[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 8);
  if (!v4)
  {
    return;
  }

  v5 = *(v3 + 40);
  v7 = std::__shared_weak_count::lock(v4);
  v24 = v7;
  if (!v7)
  {
    return;
  }

  v8 = v7;
  if (!*v3)
  {
    goto LABEL_28;
  }

  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[2] = v9;
  v21[3] = v9;
  v21[0] = v9;
  v21[1] = v9;
  AriSdk::ARI_IBISetDeviceRegionCodeRspCb_SDK::ARI_IBISetDeviceRegionCodeRspCb_SDK(v21, a2);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = *(v3 + 39);
  if (v10 >= 0)
  {
    v11 = *(v3 + 39);
  }

  else
  {
    v11 = *(v3 + 24);
  }

  v12 = v11 + 17;
  if (v11 + 17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v13 = (v3 + 16);
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v12 | 7) + 1;
    }

    v15 = operator new(v14);
    *&buf[8] = v11 + 17;
    v26[0] = v14 | 0x8000000000000000;
    *buf = v15;
    v15[16] = 32;
    *v15 = *"Set region code: ";
    v16 = v15 + 17;
    goto LABEL_15;
  }

  v26[0] = 32;
  HIBYTE(v26[0]) = v11 + 17;
  *buf = *"Set region code: ";
  v16 = v26 + 1;
  if (v11)
  {
LABEL_15:
    if (v10 >= 0)
    {
      v17 = (v3 + 16);
    }

    else
    {
      v17 = *v13;
    }

    memmove(v16, v17, v11);
  }

  v16[v11] = 0;
  checkError(&cf, v21, buf);
  if (SHIBYTE(v26[0]) < 0)
  {
    operator delete(*buf);
    v18 = cf;
    if (cf)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v18 = cf;
    if (cf)
    {
      goto LABEL_27;
    }
  }

  v19 = *(v5 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v3 + 39) < 0)
    {
      v13 = *v13;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&dword_296D7D000, v19, OS_LOG_TYPE_DEFAULT, "#I Setting region code (%s) successful", buf, 0xCu);
    v18 = cf;
    if (cf)
    {
LABEL_27:
      CFRelease(v18);
      v8 = v24;
      MEMORY[0x29C2653D0](v21);
      if (!v8)
      {
        return;
      }

LABEL_28:
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return;
      }

      goto LABEL_29;
    }
  }

  MEMORY[0x29C2653D0](v21);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_29:
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_296E09DB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c138_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c138_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30NS6_IS9_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FAA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setRegionCodeENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb7_E4__30NS6_IS9_EEE16__on_zero_sharedEv(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = *v3;
      v7 = std::__shared_weak_count::lock(v4);
      v17 = v7;
      if (v7)
      {
        v8 = v7;
        if (!v3[1])
        {
          goto LABEL_13;
        }

        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[2] = v9;
        v15[3] = v9;
        v15[0] = v9;
        v15[1] = v9;
        AriSdk::ARI_IBINetIceApStatusRspCb_SDK::ARI_IBINetIceApStatusRspCb_SDK(v15, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        __p = operator new(0x19uLL);
        v13 = xmmword_296E1FAA0;
        strcpy(__p, "Update AP Screen Status");
        checkError(&cf, v15, &__p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p);
          v10 = cf;
          if (!cf)
          {
LABEL_9:
            v11 = *(v5 + 40);
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_12;
            }

            LOWORD(__p) = 0;
            _os_log_impl(&dword_296D7D000, v11, OS_LOG_TYPE_DEFAULT, "#I Update AP Screen Status successful", &__p, 2u);
            v10 = cf;
            if (!cf)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v10 = cf;
          if (!cf)
          {
            goto LABEL_9;
          }
        }

        CFRelease(v10);
LABEL_12:
        MEMORY[0x29C264BD0](v15);
LABEL_13:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }
  }
}

void sub_296E0A0F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264BD0](&a16, a2, a3, a4, a5, a6, a7, a8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 - 48);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c79_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FB28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver11screenStateEbEUb8_E4__31NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = *v3;
      v7 = std::__shared_weak_count::lock(v4);
      v17 = v7;
      if (v7)
      {
        v8 = v7;
        if (!v3[1])
        {
LABEL_21:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[3] = v9;
        v15[4] = v9;
        v15[1] = v9;
        v15[2] = v9;
        v15[0] = v9;
        AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::ARI_IBICallPsBreadButterModeRspCb_SDK(v15, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        v19 = 14;
        strcpy(buf, "Set Bread mode");
        checkError(&cf, v15, buf);
        if (v19 < 0)
        {
          operator delete(*buf);
          v10 = *(v5 + 40);
          v11 = v10;
          if (cf)
          {
LABEL_7:
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              if (*(v3 + 24))
              {
                v12 = "enable";
              }

              else
              {
                v12 = "disable";
              }

              *buf = 136315138;
              *&buf[4] = v12;
              _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "Failed to %s Bread mode", buf, 0xCu);
            }

LABEL_18:
            if (cf)
            {
              CFRelease(cf);
            }

            MEMORY[0x29C265510](v15);
            goto LABEL_21;
          }
        }

        else
        {
          v10 = *(v5 + 40);
          v11 = v10;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v3 + 24))
          {
            v13 = "enabled";
          }

          else
          {
            v13 = "disabled";
          }

          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Bread mode", buf, 0xCu);
        }

        goto LABEL_18;
      }
    }
  }
}

void sub_296E0A478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FBA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver12setBreadModeEbEUb9_E4__32NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = *v3;
      v7 = std::__shared_weak_count::lock(v4);
      v17 = v7;
      if (v7)
      {
        v8 = v7;
        if (!v3[1])
        {
LABEL_21:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v15[3] = v9;
        v15[4] = v9;
        v15[1] = v9;
        v15[2] = v9;
        v15[0] = v9;
        AriSdk::ARI_IBICallPsBreadButterModeRspCb_SDK::ARI_IBICallPsBreadButterModeRspCb_SDK(v15, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        v19 = 15;
        strcpy(buf, "Set Butter mode");
        checkError(&cf, v15, buf);
        if (v19 < 0)
        {
          operator delete(*buf);
          v10 = *(v5 + 40);
          v11 = v10;
          if (cf)
          {
LABEL_7:
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              if (*(v3 + 24))
              {
                v12 = "enable";
              }

              else
              {
                v12 = "disable";
              }

              *buf = 136315138;
              *&buf[4] = v12;
              _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "Failed to %s Butter mode", buf, 0xCu);
            }

LABEL_18:
            if (cf)
            {
              CFRelease(cf);
            }

            MEMORY[0x29C265510](v15);
            goto LABEL_21;
          }
        }

        else
        {
          v10 = *(v5 + 40);
          v11 = v10;
          if (cf)
          {
            goto LABEL_7;
          }
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v3 + 24))
          {
            v13 = "enabled";
          }

          else
          {
            v13 = "disabled";
          }

          *buf = 136315138;
          *&buf[4] = v13;
          _os_log_impl(&dword_296D7D000, v10, OS_LOG_TYPE_DEFAULT, "#I Successfully %s Butter mode", buf, 0xCu);
        }

        goto LABEL_18;
      }
    }
  }
}

void sub_296E0A7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c82_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c82_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13setButterModeEbEUb10_E4__33NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<radio::CommandDriver>::execute_wrapped<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v34 = &v1->__vftable;
  v2 = (*a1)->__vftable;
  v38[0] = 0xAAAAAAAAAAAAAAAALL;
  v38[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v38, v1->__shared_owners_);
  on_zero_shared = v2->__on_zero_shared;
  if (!on_zero_shared || (v4 = v2->~__shared_weak_count_0, (v5 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35[3] = v7;
  *__p = v7;
  v35[1] = v7;
  v35[2] = v7;
  v35[0] = v7;
  AriSdk::ARI_IBIMccSettingReq_SDK::ARI_IBIMccSettingReq_SDK(v35);
  Int = ctu::cf::map_adapter::getInt(v38, *MEMORY[0x29EDC8FA0]);
  v9 = operator new(4uLL);
  *v9 = Int;
  v10 = __p[0];
  __p[0] = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = ctu::cf::map_adapter::getInt(v38, *MEMORY[0x29EDC8B68]);
  v12 = operator new(4uLL);
  *v12 = v11;
  v13 = __p[1];
  __p[1] = v12;
  if (v13)
  {
    operator delete(v13);
  }

  v14 = ctu::cf::map_adapter::getInt(v38, *MEMORY[0x29EDC8B60]);
  v15 = operator new(4uLL);
  *v15 = v14;
  v16 = v37;
  v37 = v15;
  if (v16)
  {
    operator delete(v16);
  }

  v17 = v2[6].__on_zero_shared;
  shared_weak_owners = v1->__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    v19 = 0;
    v20 = v1[1].__vftable;
    if (!v20)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v19 = _Block_copy(shared_weak_owners);
  v20 = v1[1].__vftable;
  if (v20)
  {
LABEL_13:
    dispatch_retain(v20);
  }

LABEL_14:
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v21 = operator new(0x38uLL);
  *&v21->__shared_owners_ = 0u;
  p_shared_owners = &v21->__shared_owners_;
  v21->__vftable = &unk_2A1E0FCA8;
  v21[1].__vftable = v19;
  v21[1].__shared_owners_ = v20;
  v21[1].__shared_weak_owners_ = v4;
  v21[2].__vftable = v6;
  *&v40 = MEMORY[0x29EDCA5F8];
  *(&v40 + 1) = 1174405120;
  *&v41 = ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  *(&v41 + 1) = &__block_descriptor_tmp_334;
  v42 = &v21[1];
  v43 = v21;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock = MEMORY[0x29EDCA5F8];
  v45 = 0x40000000;
  v46 = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_8;
  v47 = &unk_29EE5BED8;
  v48 = &v40;
  v23 = _Block_copy(&aBlock);
  v24 = v43;
  if (!v43 || atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_18:
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v25;
  v41 = v25;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v26 = *(v17 + 2);
  aBlock = *(v17 + 1);
  if (!v26)
  {
    v45 = 0;
LABEL_45:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v45 = std::__shared_weak_count::lock(v26);
  if (!v45)
  {
    goto LABEL_45;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v27 = v45;
  if (v45 && !atomic_fetch_add((v45 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v39 = v23;
  ice::SendMsgBaseProxy::callback();
  if (v39)
  {
    _Block_release(v39);
  }

  MEMORY[0x29C263BF0](&v40);
  MEMORY[0x29C264140](v35);
  std::__shared_weak_count::__release_weak(v6);
  MEMORY[0x29C263AC0](v38);
  if (v34)
  {
    v28 = v34[3];
    if (v28)
    {
      dispatch_release(v28);
    }

    v29 = v34[2];
    if (v29)
    {
      _Block_release(v29);
    }

    v30 = v34[1];
    if (v30)
    {
      CFRelease(v30);
    }

    operator delete(v34);
  }

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

void sub_296E0AE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *aBlock, char a32)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  MEMORY[0x29C263BF0](&a32, a2, a3, a4, a5, a6, a7, a8);
  radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(&a12);
  MEMORY[0x29C264140](&a18);
  std::__shared_weak_count::__release_weak(v31);
  MEMORY[0x29C263AC0](&a29);
  std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      CFRelease(v5);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS6_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_vEENSA_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 24);
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      v25 = v6;
      if (v6)
      {
        v7 = v6;
        if (!*(v3 + 16))
        {
LABEL_44:
          if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          return;
        }

        v23 = 0xAAAAAAAAAAAAAAAALL;
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22[2] = v8;
        v22[3] = v8;
        v22[0] = v8;
        v22[1] = v8;
        AriSdk::ARI_IBIMccSettingRspCb_SDK::ARI_IBIMccSettingRspCb_SDK(v22, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        *(&block.__r_.__value_.__s + 23) = 7;
        strcpy(&block, "Set mcc");
        checkError(&cf, v22, &block);
        if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(block.__r_.__value_.__l.__data_);
          if (cf)
          {
            goto LABEL_22;
          }
        }

        else if (cf)
        {
          goto LABEL_22;
        }

        if (AriSdk::ARI_IBIMccSettingRspCb_SDK::unpack(v22))
        {
          __p = operator new(0x30uLL);
          strcpy(__p, "Failed to unpack response of setting mcc");
          CreateError();
          v9 = cf;
          cf = block.__r_.__value_.__r.__words[0];
          block.__r_.__value_.__r.__words[0] = 0;
          if (v9)
          {
            CFRelease(v9);
            if (block.__r_.__value_.__r.__words[0])
            {
              CFRelease(block.__r_.__value_.__l.__data_);
            }
          }

          v10 = __p;
          goto LABEL_21;
        }

        v11 = *v23;
        if (v11)
        {
          ctu::hex(&block, v11);
          v12 = std::string::insert(&block, 0, "Error on setting mcc response result: 0x", 0x28uLL);
          __pa = *v12;
          v12->__r_.__value_.__l.__size_ = 0;
          v12->__r_.__value_.__r.__words[2] = 0;
          v12->__r_.__value_.__r.__words[0] = 0;
          CreateError();
          v13 = cf;
          cf = v20;
          if (v13)
          {
            CFRelease(v13);
          }

          if (SHIBYTE(__pa.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__pa.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
          {
            v10 = block.__r_.__value_.__r.__words[0];
LABEL_21:
            operator delete(v10);
          }
        }

LABEL_22:
        v14 = *v3;
        if (!*v3 || !*(v3 + 8))
        {
LABEL_41:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C2643B0](v22);
          goto LABEL_44;
        }

        v15 = cf;
        if (cf && (CFRetain(cf), (v14 = *v3) == 0))
        {
          v16 = 0;
        }

        else
        {
          v16 = _Block_copy(v14);
        }

        v17 = *(v3 + 8);
        block.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_1;
        v27 = &__block_descriptor_tmp_179;
        if (v16)
        {
          v28 = _Block_copy(v16);
          v29 = v15;
          if (!v15)
          {
            goto LABEL_33;
          }
        }

        else
        {
          v28 = 0;
          v29 = v15;
          if (!v15)
          {
LABEL_33:
            dispatch_async(v17, &block);
            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              _Block_release(v28);
            }

            if (v16)
            {
              _Block_release(v16);
            }

            if (v15)
            {
              CFRelease(v15);
            }

            goto LABEL_41;
          }
        }

        CFRetain(v15);
        goto LABEL_33;
      }
    }
  }
}

void sub_296E0B318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 57) < 0)
  {
    operator delete(*(v20 - 80));
  }

  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  MEMORY[0x29C2643B0](&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v20 - 96);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c180_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver6setMCCEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch8callbackIU13block_pointerFvNS5_I9__CFErrorEEEEEENK3__0clEvEUlPKhjE_EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FCA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1},std::allocator<radio::ARICommandDriver::setMCC(ctu::cf::CFSharedRef<__CFDictionary const>,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(unsigned char const*,unsigned int)#1}>>::__on_zero_shared(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    _Block_release(v4);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = *v3;
      v7 = std::__shared_weak_count::lock(v4);
      v17 = v7;
      if (v7)
      {
        v8 = v7;
        if (v3[1])
        {
          *&v9 = 0xAAAAAAAAAAAAAAAALL;
          *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v15[3] = v9;
          v15[4] = v9;
          v15[1] = v9;
          v15[2] = v9;
          v15[0] = v9;
          AriSdk::ARI_IBICallPsSignificantLocationRspCb_SDK::ARI_IBICallPsSignificantLocationRspCb_SDK(v15, a2);
          memset(__p, 170, sizeof(__p));
          v19 = 15;
          strcpy(buf, "Send visit info");
          checkErrorStr(v15, buf, __p);
          if (v19 < 0)
          {
            operator delete(*buf);
          }

          v10 = HIBYTE(__p[2]);
          v11 = SHIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v10 = __p[1];
          }

          v12 = *(v5 + 40);
          if (v10)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = __p[0];
              if (v11 >= 0)
              {
                v13 = __p;
              }

              *buf = 136315138;
              *&buf[4] = v13;
              _os_log_error_impl(&dword_296D7D000, v12, OS_LOG_TYPE_ERROR, "Failed to send visit info with error: %s", buf, 0xCu);
            }
          }

          else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_296D7D000, v12, OS_LOG_TYPE_DEFAULT, "#I Successfully sent visit info", buf, 2u);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          MEMORY[0x29C2656F0](v15);
        }

        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }
  }
}

void sub_296E0B72C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (*(v9 - 41) < 0)
  {
    operator delete(*(v9 - 64));
  }

  MEMORY[0x29C2656F0](va, a2, a3, a4, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v9 - 80);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c83_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c83_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35NS_9allocatorIS3_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FD28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver13sendVisitInfoEjjEUb11_E4__35NS_9allocatorIS3_EEE16__on_zero_sharedEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES7_EEEEUb12_E4__36vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v5 = *v3;
      v7 = std::__shared_weak_count::lock(v4);
      v33 = v7;
      if (v7)
      {
        v8 = v7;
        if (!v3[1])
        {
LABEL_39:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v30 = v9;
        v31 = v9;
        v29[2] = v9;
        v29[3] = v9;
        v29[0] = v9;
        v29[1] = v9;
        AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::ARI_IBIGetRFFEScanDataRspCb_SDK(v29, a2);
        memset(&v28, 170, sizeof(v28));
        block[23] = 18;
        strcpy(block, "get RFFE Scan Data");
        checkErrorStr(v29, block, &v28);
        if ((block[23] & 0x80000000) != 0)
        {
          operator delete(*block);
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v28.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v10 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
          if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v10 = v28.__r_.__value_.__l.__size_;
          }

          if (v10)
          {
            goto LABEL_15;
          }
        }

        if (AriSdk::ARI_IBIGetRFFEScanDataRspCb_SDK::unpack(v29))
        {
          std::string::__assign_external(&v28, "Failed on getting RFFE Scan Data: could not unpack", 0x32uLL);
        }

        else
        {
          v19 = *v30;
          if (v19)
          {
            v20 = *(&v30 + 1);
            v21 = operator new(*v30);
            memmove(v21, v20, v19);
            v22 = xpc_null_create();
            v23 = xpc_data_create(v21, v19);
            if (!v23)
            {
              v23 = xpc_null_create();
            }

            v24 = v3[3];
            if (v24)
            {
              v25 = _Block_copy(v24);
            }

            else
            {
              v25 = 0;
            }

            v26 = v3[4];
            *block = MEMORY[0x29EDCA5F8];
            *&block[8] = 1174405120;
            *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
            v35 = &__block_descriptor_tmp_269;
            if (v25)
            {
              v27 = _Block_copy(v25);
            }

            else
            {
              v27 = 0;
            }

            v36 = v27;
            v37 = v22;
            if (v22)
            {
              xpc_retain(v22);
            }

            else
            {
              v37 = xpc_null_create();
            }

            v38 = v23;
            if (v23)
            {
              xpc_retain(v23);
            }

            else
            {
              v38 = xpc_null_create();
            }

            dispatch_async(v26, block);
            xpc_release(v38);
            v38 = 0;
            xpc_release(v37);
            v37 = 0;
            if (v36)
            {
              _Block_release(v36);
            }

            if (v25)
            {
              _Block_release(v25);
            }

            xpc_release(v23);
            xpc_release(v22);
            operator delete(v21);
            goto LABEL_36;
          }

          std::string::__assign_external(&v28, "Failed on getting RFFE Scan Data: wrong data size", 0x31uLL);
        }

LABEL_15:
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v28;
        }

        else
        {
          v12 = v28.__r_.__value_.__r.__words[0];
        }

        v13 = xpc_string_create(v12);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        v15 = v3[3];
        if (v15)
        {
          v16 = _Block_copy(v15);
        }

        else
        {
          v16 = 0;
        }

        v17 = v3[4];
        *block = MEMORY[0x29EDCA5F8];
        *&block[8] = 1174405120;
        *&block[16] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc6objectES2_EEclIJS2_S2_EEEvDpT__block_invoke;
        v35 = &__block_descriptor_tmp_269;
        if (v16)
        {
          v36 = _Block_copy(v16);
          v37 = v13;
          if (v13)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v36 = 0;
          v37 = v13;
          if (v13)
          {
LABEL_25:
            xpc_retain(v13);
            v38 = v14;
            if (v14)
            {
LABEL_26:
              xpc_retain(v14);
LABEL_30:
              dispatch_async(v17, block);
              xpc_release(v38);
              v38 = 0;
              xpc_release(v37);
              v37 = 0;
              if (v36)
              {
                _Block_release(v36);
              }

              if (v16)
              {
                _Block_release(v16);
              }

              xpc_release(v14);
              xpc_release(v13);
              v18 = *(v5 + 40);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *block = 0;
                _os_log_error_impl(&dword_296D7D000, v18, OS_LOG_TYPE_ERROR, "Failed to get RFFE Scan Data", block, 2u);
              }

LABEL_36:
              if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v28.__r_.__value_.__l.__data_);
              }

              MEMORY[0x29C264E20](v29);
              goto LABEL_39;
            }

LABEL_29:
            v38 = xpc_null_create();
            goto LABEL_30;
          }
        }

        v37 = xpc_null_create();
        v38 = v14;
        if (v14)
        {
          goto LABEL_26;
        }

        goto LABEL_29;
      }
    }
  }
}

void sub_296E0BCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264E20](&a16, a2, a3, a4, a5, a6, a7, a8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void sub_296E0BD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c140_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c140_ZTSNSt3__110shared_ptrIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36NS_9allocatorISA_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E0FDA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5radio16ARICommandDriver15getRFFEScanDataEN8dispatch8callbackIU13block_pointerFvN3xpc6objectES6_EEEEUb12_E4__36NS_9allocatorISA_EEE16__on_zero_sharedEv(void *a1)
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

  v4 = a1[5];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void Timestamp::Timestamp(Timestamp *this)
{
  v14 = *MEMORY[0x29EDCA608];
  *(this + 1) = 0;
  v2 = (this + 8);
  *(this + 2) = 0;
  *this = this + 8;
  v11 = 0uLL;
  if ((gettimeofday(&v11, 0) & 0x80000000) == 0 || !os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v3 = *v2;
    v4 = v2;
    if (*v2)
    {
      goto LABEL_4;
    }

LABEL_10:
    v7 = operator new(0x38uLL);
    *(v7 + 8) = 0;
    *(v7 + 5) = 0;
    *(v7 + 6) = 0;
    *v7 = 0;
    *(v7 + 1) = 0;
    *(v7 + 2) = v4;
    *v2 = v7;
    v8 = **this;
    if (v8)
    {
      *this = v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 1), v7);
    ++*(this + 2);
    goto LABEL_13;
  }

  v9 = __error();
  v10 = strerror(*v9);
  *buf = 136315138;
  v13 = v10;
  _os_log_error_impl(&dword_296D7D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to get current time. Error: %s\n", buf, 0xCu);
  v3 = *v2;
  v4 = v2;
  if (!*v2)
  {
    goto LABEL_10;
  }

LABEL_4:
  v5 = v3;
  while (1)
  {
    while (1)
    {
      v4 = v5;
      v6 = *(v5 + 32);
      if (v6 < 1)
      {
        break;
      }

      v5 = *v4;
      v2 = v4;
      if (!*v4)
      {
        goto LABEL_10;
      }
    }

    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    v5 = v4[1];
    if (!v5)
    {
      v2 = v4 + 1;
      goto LABEL_10;
    }
  }

  v7 = v4;
LABEL_13:
  *(v7 + 40) = v11;
}

void *Timestamp::Timestamp(void *a1, void *a2)
{
  a1[1] = 0;
  v3 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    while (1)
    {
      v7 = *(v5 + 8);
      v9 = *a1;
      v8 = a1[1];
      v10 = v3;
      if (*a1 != v3)
      {
        v11 = a1[1];
        v12 = v3;
        if (v8)
        {
          do
          {
            v10 = v11;
            v11 = v11[1];
          }

          while (v11);
        }

        else
        {
          do
          {
            v10 = v12[2];
            v13 = *v10 == v12;
            v12 = v10;
          }

          while (v13);
        }

        if (*(v10 + 8) >= v7)
        {
          break;
        }
      }

      if (v8)
      {
        v14 = v10;
      }

      else
      {
        v14 = v3;
      }

      if (v8)
      {
        v15 = v10 + 1;
      }

      else
      {
        v15 = v3;
      }

      if (!*v15)
      {
        goto LABEL_25;
      }

LABEL_28:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v13 = *v21 == v5;
          v5 = v21;
        }

        while (!v13);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return a1;
      }
    }

    v15 = v3;
    v14 = v3;
    if (v8)
    {
      v16 = a1[1];
      while (1)
      {
        while (1)
        {
          v14 = v16;
          v17 = *(v16 + 32);
          if (v17 <= v7)
          {
            break;
          }

          v16 = *v14;
          v15 = v14;
          if (!*v14)
          {
            goto LABEL_25;
          }
        }

        if (v17 >= v7)
        {
          goto LABEL_28;
        }

        v16 = v14[1];
        if (!v16)
        {
          v15 = v14 + 1;
          break;
        }
      }
    }

LABEL_25:
    v18 = operator new(0x38uLL);
    v19 = *(v5 + 2);
    v18[6] = v5[6];
    *(v18 + 2) = v19;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v14;
    *v15 = v18;
    if (*v9)
    {
      *a1 = *v9;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v18);
    ++a1[2];
    goto LABEL_28;
  }

  return a1;
}

void *Timestamp::Timestamp(void *a1, _OWORD *a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  *(v7 + 8) = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  v7[24] = 1;
  a1[2] = 1;
  *(v7 + 40) = *a2;
  return a1;
}

__n128 Timestamp::set(uint64_t ***a1, __n128 *a2, int a3)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        v8 = v6;
        v9 = *(v6 + 8);
        if (v9 <= a3)
        {
          break;
        }

        v6 = *v8;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_8;
        }
      }

      if (v9 >= a3)
      {
        break;
      }

      v6 = v8[1];
      if (!v6)
      {
        v7 = v8 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v8 = (a1 + 1);
LABEL_8:
    v10 = v8;
    v8 = operator new(0x38uLL);
    *(v8 + 8) = a3;
    v8[5] = 0;
    v8[6] = 0;
    *v8 = 0;
    v8[1] = 0;
    v8[2] = v10;
    *v7 = v8;
    v11 = **a1;
    if (v11)
    {
      *a1 = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
    a1[2] = (a1[2] + 1);
  }

  result = *a2;
  *(v8 + 5) = *a2;
  return result;
}

void *Timestamp::Timestamp(void *a1, uint64_t a2, int a3)
{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

{
  a1[2] = 0;
  a1[1] = 0;
  v6 = a1 + 1;
  *a1 = a1 + 1;
  v7 = operator new(0x38uLL);
  v7[8] = a3;
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = v6;
  *v6 = v7;
  *a1 = v7;
  *(v7 + 24) = 1;
  a1[2] = 1;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0xAAAAAAAAAAAAAAAALL;
  return a1;
}

uint64_t **Timestamp::Timestamp(uint64_t **a1, char *a2, char a3, int a4)
{
  v5 = a2;
  v27 = *MEMORY[0x29EDCA608];
  a1[1] = 0;
  v7 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  __p[2] = 0x11AAAAAAAAAA0053;
  *__p = *"%Y-%m-%d-%H-%M-%S";
  if ((a3 & 0x10) != 0)
  {
    HIBYTE(__p[2]) = 19;
    strcpy(__p, "%Y.%m.%d_%H-%M-%S%z");
  }

  *(&v22 + 1) = 0xAAAAAAAA00000000;
  memset(&v23, 0, sizeof(v23));
  if (a2[23] < 0)
  {
    v5 = *a2;
  }

  if (strptime(v5, __p, &v23))
  {
    v23.tm_isdst = -1;
    *&v22 = mktime(&v23);
    if (v22 != -1)
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      v18 = __error();
      v19 = strerror(*v18);
      *buf = 136315138;
      v26 = v19;
      _os_log_error_impl(&dword_296D7D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Failed to convert to absolute time. Error: %s\n", buf, 0xCu);
      v22 = 0uLL;
      if ((gettimeofday(&v22, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = 0uLL;
      if ((gettimeofday(&v22, 0) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = __error();
    v9 = strerror(*v8);
    *buf = 136315138;
    v26 = v9;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after absolute time conversion failed. Error: %s\n";
    goto LABEL_32;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Failed to convert time from string format\n", buf, 2u);
  }

  v22 = 0uLL;
  if (gettimeofday(&v22, 0) < 0 && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
  {
    v20 = __error();
    v21 = strerror(*v20);
    *buf = 136315138;
    v26 = v21;
    v10 = MEMORY[0x29EDCA988];
    v11 = "Failed to get current time after conversion failure. Error: %s\n";
LABEL_32:
    _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, v11, buf, 0xCu);
  }

LABEL_15:
  v12 = *v7;
  v13 = v7;
  if (*v7)
  {
    while (1)
    {
      while (1)
      {
        v13 = v12;
        v14 = *(v12 + 8);
        if (v14 <= a4)
        {
          break;
        }

        v12 = *v13;
        v7 = v13;
        if (!*v13)
        {
          goto LABEL_22;
        }
      }

      if (v14 >= a4)
      {
        break;
      }

      v12 = v13[1];
      if (!v12)
      {
        v7 = v13 + 1;
        goto LABEL_22;
      }
    }

    *(v13 + 5) = v22;
    if (SHIBYTE(__p[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_22:
    v15 = operator new(0x38uLL);
    *(v15 + 8) = a4;
    *(v15 + 5) = 0;
    *(v15 + 6) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v13;
    *v7 = v15;
    v16 = **a1;
    if (v16)
    {
      *a1 = v16;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
    a1[2] = (a1[2] + 1);
    *(v15 + 40) = v22;
    if (SHIBYTE(__p[2]) < 0)
    {
LABEL_25:
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_296E0C874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t Timestamp::get(uint64_t a1, void *a2, int a3)
{
  *a2 = 0;
  a2[1] = 0;
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return 0;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a3)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a3));
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a3)
  {
    return 0;
  }

  *a2 = *(v6 + 40);
  return 1;
}

uint64_t Timestamp::asString@<X0>(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v68 = *MEMORY[0x29EDCA608];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v62 = v6;
  v61 = v6;
  v60 = v6;
  v59 = v6;
  v58 = v6;
  v57 = v6;
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v54 = v6;
  v53 = v6;
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v50 = v6;
  __p = v6;
  v48 = v6;
  v47 = v6;
  v46 = v6;
  v45 = v6;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v56 = 0;
  v7 = MEMORY[0x29EDC9590] + 104;
  v52 = MEMORY[0x29EDC9590] + 104;
  v8 = MEMORY[0x29EDC9590] + 64;
  v44 = MEMORY[0x29EDC9590] + 64;
  v9 = MEMORY[0x29EDC9528];
  v10 = *(MEMORY[0x29EDC9528] + 24);
  v42 = *(MEMORY[0x29EDC9528] + 16);
  *(&v42 + *(v42 - 24)) = v10;
  v43 = 0;
  v11 = (&v42 + *(v42 - 24));
  std::ios_base::init(v11, &v45);
  v12 = MEMORY[0x29EDC9590] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v9[5];
  v44 = v9[4];
  *(&v44 + *(v44 - 24)) = v13;
  v42 = v9[1];
  *(&v42 + *(v42 - 24)) = v9[6];
  v52 = v7;
  v42 = v12;
  v14 = MEMORY[0x29EDC9568] + 16;
  v44 = v8;
  *&v45 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C265EC0](&v45 + 8);
  v48 = 0u;
  v47 = 0u;
  v46 = 0u;
  v15 = MEMORY[0x29EDC9570] + 16;
  *&v45 = MEMORY[0x29EDC9570] + 16;
  __p = 0u;
  v50 = 0u;
  LODWORD(v51) = 24;
  v16 = v9;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](&v45);
  v19 = *(a1 + 8);
  v18 = a1 + 8;
  v17 = v19;
  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = v18;
  do
  {
    if (*(v17 + 32) >= a2)
    {
      v20 = v17;
    }

    v17 = *(v17 + 8 * (*(v17 + 32) < a2));
  }

  while (v17);
  if (v20 == v18)
  {
LABEL_10:
    v22 = 0;
    v23 = 0;
    v21 = a4;
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = a4;
    if (*(v20 + 32) > a2)
    {
      v22 = 0;
      v23 = 0;
      if ((a3 & 0x11) == 0)
      {
        goto LABEL_19;
      }

LABEL_11:
      v40.tm_zone = 0xAAAAAAAAAAAAAAAALL;
      v41 = v23;
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v40.tm_mon = v24;
      *&v40.tm_isdst = v24;
      *&v40.tm_sec = v24;
      localtime_r(&v41, &v40);
      v66 = 0u;
      v67 = 0u;
      *__s = 0u;
      v65 = 0u;
      if ((a3 & 0x10) != 0)
      {
        v25 = "%Y.%m.%d_%H-%M-%S%z";
      }

      else
      {
        v25 = "%Y-%m-%d-%H-%M-%S";
      }

      strftime(__s, 0x40uLL, v25, &v40);
      v26 = strlen(__s);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, __s, v26);
      if ((a3 & 8) != 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, "-", 1);
        v27 = v44;
        v28 = &v44 + *(v44 - 24);
        if (*(v28 + 36) == -1)
        {
          std::ios_base::getloc((&v44 + *(v44 - 24)));
          v29 = std::locale::use_facet(&v63, MEMORY[0x29EDC93D0]);
          (v29->__vftable[2].~facet_0)(v29, 32);
          std::locale::~locale(&v63);
          v27 = v44;
        }

        *(v28 + 36) = 48;
        *(&v46 + *(v27 - 24)) = 3;
        MEMORY[0x29C265D60](&v44, (v22 / 1000));
      }

      goto LABEL_24;
    }

    v23 = *(v20 + 40);
    v22 = *(v20 + 48);
    if ((a3 & 0x11) != 0)
    {
      goto LABEL_11;
    }
  }

LABEL_19:
  MEMORY[0x29C265D70](&v44, v23);
  if ((a3 & 4) != 0)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, ".", 1);
  }

  else
  {
    if ((a3 & 8) == 0)
    {
      goto LABEL_24;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v44, ".", 1);
    v22 = (v22 / 1000);
  }

  MEMORY[0x29C265D60](v30, v22);
LABEL_24:
  if ((v51 & 0x10) != 0)
  {
    v32 = *(&v50 + 1);
    if (*(&v50 + 1) < v48)
    {
      *(&v50 + 1) = v48;
      v32 = v48;
    }

    v33 = *(&v47 + 1);
    v31 = v32 - *(&v47 + 1);
    if ((v32 - *(&v47 + 1)) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_42;
    }
  }

  else
  {
    if ((v51 & 8) == 0)
    {
      v31 = 0;
      v21[23] = 0;
      goto LABEL_38;
    }

    v33 = v46;
    v31 = v47 - v46;
    if (v47 - v46 >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_42:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v35 = operator new(v34);
    *(v21 + 1) = v31;
    *(v21 + 2) = v34 | 0x8000000000000000;
    *v21 = v35;
    v21 = v35;
    goto LABEL_37;
  }

  v21[23] = v31;
  if (v31)
  {
LABEL_37:
    memmove(v21, v33, v31);
  }

LABEL_38:
  v21[v31] = 0;
  v42 = *v16;
  v36 = v16[9];
  *(&v42 + *(v42 - 24)) = v16[8];
  v44 = v36;
  *&v45 = v15;
  if (SBYTE7(v50) < 0)
  {
    operator delete(__p);
  }

  *&v45 = v14;
  std::locale::~locale(&v45 + 1);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C265F10](&v52);
}

void sub_296E0D04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a21);
  MEMORY[0x29C265F10](a12);
  _Unwind_Resume(a1);
}

uint64_t *Timestamp::convert(uint64_t a1)
{
  memset(v8, 170, sizeof(v8));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  Timestamp::Timestamp(v8, &__p, 9, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  else
  {
    v1 = v8[1];
    if (!v8[1])
    {
      goto LABEL_14;
    }
  }

  v2 = &v8[1];
  v3 = v1;
  do
  {
    v4 = *(v3 + 8);
    if ((v4 & 0x80000000) == 0)
    {
      v2 = v3;
    }

    v3 = *(v3 + ((v4 >> 28) & 8));
  }

  while (v3);
  if (v2 != &v8[1] && *(v2 + 8) <= 0)
  {
    v5 = v2[5];
    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
LABEL_15:
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::destroy(v8, v1);
  return v5;
}

void sub_296E0D1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Timestamp::timediffUSec(Timestamp *this, const Timestamp *a2, const Timestamp *a3)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = *(v4 + 8);
      if ((v7 & 0x80000000) == 0)
      {
        v6 = v4;
      }

      v4 = *&v4[(v7 >> 28) & 8];
    }

    while (v4);
    if (v6 == v3 || *(v6 + 8) > 0)
    {
      v8 = 0;
      v4 = 0;
      v11 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v11;
      if (!v11)
      {
LABEL_21:
        v18 = &v4[v8] - v10;
        if (v18 >= 0)
        {
          return v18;
        }

        else
        {
          return -v18;
        }
      }
    }

    else
    {
      v4 = *(v6 + 12);
      v8 = 1000000 * *(v6 + 5);
      v17 = *(a2 + 1);
      v9 = a2 + 8;
      v10 = v17;
      if (!v17)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v8 = 0;
    v12 = *(a2 + 1);
    v9 = a2 + 8;
    v10 = v12;
    if (!v12)
    {
      goto LABEL_21;
    }
  }

  v13 = v9;
  do
  {
    v14 = *(v10 + 8);
    if ((v14 & 0x80000000) == 0)
    {
      v13 = v10;
    }

    v10 = *&v10[(v14 >> 28) & 8];
  }

  while (v10);
  if (v13 == v9 || *(v13 + 8) > 0)
  {
    v15 = &v4[v8];
    if (v15 >= 0)
    {
      return v15;
    }

    else
    {
      return -v15;
    }
  }

  else
  {
    v19 = &v4[v8 - *(v13 + 12) + -1000000 * *(v13 + 5)];
    if (v19 >= 0)
    {
      return v19;
    }

    else
    {
      return -v19;
    }
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

double trace::ARICommandDriverINT::create@<D0>(_OWORD *a1@<X8>)
{
  v2 = operator new(0xF0uLL);
  trace::ARICommandDriverINT::ARICommandDriverINT(v2);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<trace::ARICommandDriverINT>::shared_ptr[abi:ne200100]<trace::ARICommandDriverINT,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1},0>(&v4, v2);
  (*(*v4 + 216))(v4);
  result = *&v4;
  *a1 = v4;
  return result;
}

trace::ARICommandDriverINT *trace::ARICommandDriverINT::ARICommandDriverINT(trace::ARICommandDriverINT *this)
{
  *this = &unk_2A1E0AC98;
  v2 = (this + 8);
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony.abm", "trace.drv");
  ctu::SharedLoggable<trace::CommandDriver,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v2, "trace.drv", QOS_CLASS_DEFAULT, v7);
  ctu::OsLogContext::~OsLogContext(v7);
  *this = &unk_2A1E0FDF8;
  v3 = *(this + 3);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ice::Client::create();
  if (object)
  {
    dispatch_release(object);
  }

  *(this + 9) = 850045863;
  *(this + 64) = 0;
  *(this + 17) = 1018212795;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 16) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 169) = 0u;
  v4 = operator new(0x90uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 850045863;
  *(v4 + 2) = 0u;
  *(v4 + 3) = 0u;
  *(v4 + 4) = 0u;
  *(v4 + 10) = 0;
  *(v4 + 11) = 1018212795;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 124) = 0u;
  *v4 = &unk_2A1E10010;
  *(this + 24) = v4;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 29) = 0;
  return this;
}

void sub_296E0D668(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v4);
  std::mutex::~mutex(v3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 + 48);
  ctu::SharedLoggable<CellularCertCommandDriver,ctu::OsLogLogger>::~SharedLoggable(v2);
  _Unwind_Resume(a1);
}

void sub_296E0D694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  ctu::SharedLoggable<CellularCertCommandDriver,ctu::OsLogLogger>::~SharedLoggable(v10);
  _Unwind_Resume(a1);
}

void sub_296E0D6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void trace::ARICommandDriverINT::~ARICommandDriverINT(trace::ARICommandDriverINT *this)
{
  *this = &unk_2A1E0FDF8;
  v2 = this + 40;
  v3 = *(this + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_296D7D000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v13, 2u);
  }

  v4 = *(this + 29);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 28);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 27);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 26);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 25);
  if (v8 && !atomic_fetch_add(v8 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v8 + 16))(v8);
  }

  std::promise<BOOL>::~promise(this + 24);
  std::condition_variable::~condition_variable((this + 136));
  std::mutex::~mutex((this + 72));
  v9 = *(this + 7);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  MEMORY[0x29C263A00](v2);
  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

{
  trace::ARICommandDriverINT::~ARICommandDriverINT(this);

  operator delete(v1);
}

void trace::ARICommandDriverINT::init(trace::ARICommandDriverINT *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_9_1;
  v1[4] = this;
  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(this + 1, v1);
}

uint64_t ___ZN5trace19ARICommandDriverINT4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing", buf, 2u);
  }

  v3 = *(v1 + 48);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 0x40000000;
  v11[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_1;
  v11[3] = &__block_descriptor_tmp_10;
  v11[4] = v1;
  *buf = v11;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v3, 0, buf);
  v4 = *(v1 + 48);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 0x40000000;
  v10[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_2;
  v10[3] = &__block_descriptor_tmp_3_0;
  v10[4] = v1;
  *buf = v10;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v4, 1, buf);
  v5 = *(v1 + 48);
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_4;
  v9[3] = &__block_descriptor_tmp_6_0;
  v9[4] = v1;
  *buf = v9;
  ice::Client::setEventHandler<void({block_pointer})(dispatch::group_session)>(v5, 2, buf);
  v6 = *(v1 + 48);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 0x40000000;
  v8[2] = ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_7;
  v8[3] = &__block_descriptor_tmp_8_2;
  v8[4] = v1;
  *buf = v8;
  ice::Client::setEventHandler<void({block_pointer})(void)>(v6, 3, buf);
  result = ice::Client::start(*(v1 + 48));
  *(v1 + 64) = 1;
  return result;
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_1(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEFAULT, "#I ARI Started event received.", v2, 2u);
  }
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296D7D000, v1, OS_LOG_TYPE_DEFAULT, "#I ARI Stopped event received.", v2, 2u);
  }
}

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_4(uint64_t a1, NSObject **a2)
{
  v3 = *(a1 + 32);
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    _os_log_impl(&dword_296D7D000, v4, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Enter event received", v9, 2u);
  }

  v5 = v3[26];
  if (v5 && v3[27])
  {
    v6 = *a2;
    if (v6 && (dispatch_retain(v6), dispatch_group_enter(v6), (v5 = v3[26]) == 0))
    {
      v7 = 0;
    }

    else
    {
      v7 = _Block_copy(v5);
    }

    v8 = v3[27];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 1174405120;
    v9[2] = ___ZNK8dispatch8callbackIU13block_pointerFvNS_13group_sessionEEEclIJS1_EEEvDpT__block_invoke_1;
    v9[3] = &__block_descriptor_tmp_41_1;
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

void ___ZN5trace19ARICommandDriverINT4initEv_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I ARI LPM Exit event received", v8, 2u);
  }

  v3 = v1[28];
  if (v3 && v1[29])
  {
    v4 = _Block_copy(v3);
    v5 = v4;
    v6 = v1[29];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke_1;
    v8[3] = &__block_descriptor_tmp_43_0;
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

void trace::ARICommandDriverINT::sendFlushRequest(trace::ARICommandDriverINT *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296D7D000, v2, OS_LOG_TYPE_DEFAULT, "#I Sending flush request", buf, 2u);
  }

  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48 = v3;
  v49 = v3;
  *buf = v3;
  v47 = v3;
  AriSdk::ARI_TraceFlushReq_SDK::ARI_TraceFlushReq_SDK(buf);
  v4 = operator new(4uLL);
  *v4 = 1;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = std::__shared_weak_count::lock(v6)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = operator new(0x90uLL);
  *(v9 + 1) = 0;
  *(v9 + 2) = 0;
  *(v9 + 3) = 850045863;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 10) = 0;
  *(v9 + 11) = 1018212795;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 124) = 0u;
  *v9 = &unk_2A1E10010;
  aBlock[0].__ptr_ = 0;
  __lk.__m_ = *(this + 24);
  *(this + 24) = v9;
  std::promise<BOOL>::~promise(&__lk);
  std::promise<BOOL>::~promise(aBlock);
  v10 = *(this + 24);
  if (!v10)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::mutex::lock((v10 + 24));
  v11 = *(v10 + 136);
  if ((v11 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  *(v10 + 136) = v11 | 2;
  std::mutex::unlock((v10 + 24));
  v12 = *(this + 25);
  *(this + 25) = v10;
  if (v12 && !atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12);
  }

  v13 = *(this + 2);
  if (!v13 || (v14 = *(this + 6), v15 = *(this + 1), (v16 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = operator new(0x30uLL);
  v18->__shared_owners_ = 0;
  p_shared_owners = &v18->__shared_owners_;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v15;
  v18->__vftable = &unk_2A1E100E8;
  v18[1].__shared_owners_ = v17;
  v18[1].__shared_weak_owners_ = this;
  __lk.__m_ = MEMORY[0x29EDCA5F8];
  *&__lk.__owns_ = 1174405120;
  v52 = ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v53 = &__block_descriptor_tmp_48_1;
  v54 = v18 + 1;
  v55 = v18;
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0].__ptr_ = MEMORY[0x29EDCA5F8];
  aBlock[1].__ptr_ = 0x40000000;
  aBlock[2].__ptr_ = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3].__ptr_ = &unk_29EE5BFA0;
  aBlock[4].__ptr_ = &__lk;
  v20 = _Block_copy(aBlock);
  v21 = v55;
  if (!v55 || atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  (v21->__on_zero_shared)(v21);
  std::__shared_weak_count::__release_weak(v21);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_21:
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_22:
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[0] = v22;
  v44[1] = v22;
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v23 = *(v14 + 16);
  __lk.__m_ = *(v14 + 8);
  if (!v23)
  {
    *&__lk.__owns_ = 0;
LABEL_81:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *&__lk.__owns_ = std::__shared_weak_count::lock(v23);
  if (!*&__lk.__owns_)
  {
    goto LABEL_81;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v24 = *&__lk.__owns_;
  if (*&__lk.__owns_ && !atomic_fetch_add((*&__lk.__owns_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  aBlock[0].__ptr_ = v20;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0].__ptr_)
  {
    _Block_release(aBlock[0].__ptr_);
  }

  MEMORY[0x29C263BF0](v44);
  v25 = *(this + 25);
  v26.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  m = (v25 + 24);
  __lk.__m_ = (v25 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v25 + 24));
  v28 = *(v25 + 136);
  if ((v28 & 8) != 0)
  {
    v30 = 2;
    goto LABEL_56;
  }

  if ((v28 & 4) != 0)
  {
    v30 = 0;
    goto LABEL_56;
  }

  v29 = v26.__d_.__rep_ + 5000000000;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v29)
  {
    if (v29 <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      goto LABEL_36;
    }

    v33.__d_.__rep_ = v29 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v33.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v34.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v34.__d_.__rep_)
      {
        v35 = 0;
        goto LABEL_49;
      }

      if (v34.__d_.__rep_ < 1)
      {
        if (v34.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v31.__d_.__rep_ = v33.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_34;
        }
      }

      else if (v34.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v35 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v33.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_49:
          v31.__d_.__rep_ = v35 + v33.__d_.__rep_;
          goto LABEL_34;
        }

LABEL_33:
        v31.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_34:
        std::condition_variable::__do_timed_wait((v25 + 88), &__lk, v31);
        std::chrono::steady_clock::now();
        goto LABEL_35;
      }

      v35 = 1000 * v34.__d_.__rep_;
      if (1000 * v34.__d_.__rep_ <= (v33.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_49;
      }

      goto LABEL_33;
    }

LABEL_35:
    std::chrono::steady_clock::now();
LABEL_36:
    v32 = *(v25 + 136);
    if ((v32 & 4) != 0)
    {
      goto LABEL_54;
    }
  }

  v32 = *(v25 + 136);
LABEL_54:
  v30 = ((v32 >> 2) & 1) == 0;
  if (__lk.__owns_)
  {
    m = __lk.__m_;
LABEL_56:
    std::mutex::unlock(m);
  }

  if (v30 == 1)
  {
    v40 = *(this + 5);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    LOWORD(__lk.__m_) = 0;
    v42 = "Timeout while waiting for trace flush indication";
LABEL_69:
    _os_log_error_impl(&dword_296D7D000, v40, OS_LOG_TYPE_ERROR, v42, &__lk, 2u);
    goto LABEL_75;
  }

  if (v30)
  {
    v40 = *(this + 5);
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_75;
    }

    LOWORD(__lk.__m_) = 0;
    v42 = "Unexpected status while waiting for trace flush indication";
    goto LABEL_69;
  }

  v36 = *(this + 25);
  *(this + 25) = 0;
  __lk.__m_ = (v36 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v36 + 24));
  std::__assoc_sub_state::__sub_wait(v36, &__lk);
  v37 = *(v36 + 16);
  aBlock[0].__ptr_ = 0;
  std::exception_ptr::~exception_ptr(aBlock);
  if (v37)
  {
    v43.__ptr_ = std::exception_ptr::exception_ptr(v38, (v36 + 16));
    std::rethrow_exception(v43);
    __break(1u);
  }

  else
  {
    v39 = *(v36 + 140);
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
      if (!atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_62;
      }

LABEL_71:
      v40 = *(this + 5);
      v41 = v40;
      if (v39)
      {
        goto LABEL_72;
      }

LABEL_63:
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__lk.__m_) = 0;
        v42 = "Error while receiving trace flush indication";
        goto LABEL_69;
      }
    }

    else
    {
      if (atomic_fetch_add((v36 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_71;
      }

LABEL_62:
      (*(*v36 + 16))(v36);
      v40 = *(this + 5);
      v41 = v40;
      if (!v39)
      {
        goto LABEL_63;
      }

LABEL_72:
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__lk.__m_) = 0;
        _os_log_impl(&dword_296D7D000, v40, OS_LOG_TYPE_DEFAULT, "#I Trace flush indication received successfully", &__lk, 2u);
      }

      __lk.__m_ = 1000000000;
      std::this_thread::sleep_for (&__lk);
    }

LABEL_75:
    std::__shared_weak_count::__release_weak(v8);
    MEMORY[0x29C263EB0](buf);
  }
}

void sub_296E0E600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::mutex *a25, char a26)
{
  std::__shared_weak_count::__release_weak(v26);
  MEMORY[0x29C263EB0](&a15);
  _Unwind_Resume(a1);
}

uint64_t trace::ARICommandDriverINT::sendConfig(uint64_t a1, char **a2, void *a3, int a4, int a5, int a6, uint64_t a7)
{
  v96 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 16);
  if (!v8 || (v76 = *(a1 + 8), (v15 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v16 = v15;
  atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v16);
  }

  v73 = a7;
  v83 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__dst = v17;
  *v82 = v17;
  v79[3] = v17;
  *__p = v17;
  v79[1] = v17;
  v79[2] = v17;
  v79[0] = v17;
  AriSdk::ARI_TraceSetConfigReq_SDK::ARI_TraceSetConfigReq_SDK(v79);
  v18 = a4;
  v74 = a6;
  v75 = a5;
  v20 = *a2;
  v19 = a2[1];
  v21 = operator new(4uLL);
  v22 = v19 - v20;
  *v21 = v19 - v20;
  v23 = __p[0];
  __p[0] = v21;
  v72 = a3;
  if (v23)
  {
    operator delete(v23);
    v20 = *a2;
    v19 = a2[1];
    v22 = v19 - *a2;
  }

  if (v22 < 0xF01)
  {
    if (&__p[1] == a2)
    {
      goto LABEL_36;
    }

    v29 = __dst[1];
    v30 = __p[1];
    if (__dst[1] - __p[1] >= v22)
    {
      v34 = __dst[0];
      v35 = __dst[0] - __p[1];
      if (__dst[0] - __p[1] < v22)
      {
        v36 = &v20[v35];
        if (__dst[0] != __p[1])
        {
          memmove(__p[1], v20, v35);
          v34 = __dst[0];
        }

        if (v36 != v19)
        {
          memmove(v34, v36, v19 - v36);
        }

        v37 = &v34[v19 - v36];
        goto LABEL_35;
      }

      if (v19 != v20)
      {
        memmove(__p[1], v20, v22);
      }
    }

    else
    {
      if (__p[1])
      {
        __dst[0] = __p[1];
        operator delete(__p[1]);
        v29 = 0;
        __p[1] = 0;
        __dst[0] = 0;
        __dst[1] = 0;
      }

      v31 = 2 * v29;
      if (2 * v29 <= v22)
      {
        v31 = v22;
      }

      if (v29 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v32 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v32 = v31;
      }

      v33 = operator new(v32);
      v30 = v33;
      __p[1] = v33;
      __dst[0] = v33;
      __dst[1] = &v33[v32];
      if (v19 != v20)
      {
        memcpy(v33, v20, v22);
      }
    }

    v37 = &v30[v22];
LABEL_35:
    __dst[0] = v37;
    goto LABEL_36;
  }

  LogLevels = Ari::GetLogLevels(v21);
  if ((LogLevels & 8) != 0)
  {
    OsLog = AriOsa::GetOsLog(LogLevels);
    if (os_log_type_enabled(OsLog, OS_LOG_TYPE_ERROR))
    {
      AriOsa::LogSrcInfo(buf, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v26);
      v70 = SHIBYTE(v86) >= 0 ? buf : *buf;
      v71 = a2[1] - *a2;
      *__lk = 136316418;
      *&__lk[4] = "ari";
      *&__lk[12] = 2080;
      *&__lk[14] = v70;
      *&__lk[22] = 1024;
      LODWORD(v92) = 349;
      WORD2(v92) = 2048;
      *(&v92 + 6) = &__p[1];
      HIWORD(v92) = 2048;
      v93 = v71;
      LOWORD(v94) = 2048;
      *(&v94 + 2) = 3840;
      _os_log_error_impl(&dword_296D7D000, OsLog, OS_LOG_TYPE_ERROR, "%s: (%s:%d) Array assignment too large(%p), got(%d) max(%d)", __lk, 0x3Au);
      if (SHIBYTE(v86) < 0)
      {
        operator delete(*buf);
      }
    }

    AriOsa::LogSrcInfo(__lk, "/AppleInternal/Library/BuildRoots/4~CAp_ugD_GGG5SdFuDyE0u0QUXWlPVHp8kVTh2Vg/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/ARI/ari_sdk_msg.h", "operator=", v26);
    if (__lk[23] >= 0)
    {
      v28 = __lk;
    }

    else
    {
      v28 = *__lk;
    }

    AriOsa::LogToDefaultStringLogger(8, "(%s:%d) Array assignment too large(%p), got(%d) max(%d)", v27, v28, 349, &__p[1], a2[1] - *a2, 3840);
    if ((__lk[23] & 0x80000000) != 0)
    {
      operator delete(*__lk);
    }
  }

LABEL_36:
  v38 = operator new(1uLL);
  *v38 = v18;
  v39 = v82[0];
  v82[0] = v38;
  if (v39)
  {
    operator delete(v39);
  }

  v40 = operator new(1uLL);
  *v40 = a5;
  v41 = v82[1];
  v82[1] = v40;
  if (v41)
  {
    operator delete(v41);
  }

  v42 = operator new(4uLL);
  *v42 = v74;
  v43 = v83;
  v83 = v42;
  if (v43)
  {
    operator delete(v43);
  }

  v44 = *(a1 + 40);
  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
  {
    if (!a5)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  *__lk = 67109632;
  *&__lk[4] = v18;
  *&__lk[8] = 1024;
  *&__lk[10] = a5;
  *&__lk[14] = 1024;
  *&__lk[16] = v74;
  _os_log_debug_impl(&dword_296D7D000, v44, OS_LOG_TYPE_DEBUG, "#D Background tracing: %d, wait for idle indication: %d, privacy level: %d", __lk, 0x14u);
  if (a5)
  {
LABEL_44:
    *(a1 + 184) = 0;
  }

LABEL_45:
  v45 = *(a1 + 48);
  *__lk = v76;
  *&__lk[8] = v16;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&__lk[16] = a1;
  v92 = 0uLL;
  v93 = 0;
  v47 = *a2;
  v46 = a2[1];
  v48 = v46 - *a2;
  if (v46 == *a2)
  {
    v50 = 0;
    v49 = 0;
    *&v94 = *v72;
    v51 = v94;
    if (v94)
    {
LABEL_48:
      dispatch_retain(v51);
    }
  }

  else
  {
    if ((v48 & 0x8000000000000000) != 0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v49 = operator new(v46 - *a2);
    v50 = v49 + v48;
    *&v92 = v49;
    v93 = v49 + v48;
    memcpy(v49, v47, v48);
    *(&v92 + 1) = v49 + v48;
    *&v94 = *v72;
    v51 = v94;
    if (v94)
    {
      goto LABEL_48;
    }
  }

  if (!*v73)
  {
    v52 = 0;
    v53 = *(v73 + 8);
    *(&v94 + 1) = 0;
    v95 = v53;
    if (!v53)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

  v52 = _Block_copy(*v73);
  v53 = *(v73 + 8);
  *(&v94 + 1) = v52;
  v95 = v53;
  if (v53)
  {
LABEL_51:
    dispatch_retain(v53);
  }

LABEL_52:
  v54 = operator new(0x60uLL);
  v54->__shared_owners_ = 0;
  p_shared_owners = &v54->__shared_owners_;
  v54->__shared_weak_owners_ = 0;
  v54->__vftable = &unk_2A1E10168;
  v54[1].__vftable = v76;
  *__lk = 0;
  *&__lk[8] = 0;
  v54[1].__shared_owners_ = v16;
  v54[1].__shared_weak_owners_ = a1;
  v54[2].__vftable = v49;
  v54[2].__shared_owners_ = v50;
  v93 = 0;
  v92 = 0uLL;
  v54[2].__shared_weak_owners_ = v50;
  v54[3].__vftable = v51;
  v94 = 0uLL;
  v54[3].__shared_owners_ = v52;
  v54[3].__shared_weak_owners_ = v53;
  v95 = 0;
  *buf = MEMORY[0x29EDCA5F8];
  v85 = 1174405120;
  v86 = ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT10sendConfigENSt3__16vectorIcNS4_9allocatorIcEEEEN8dispatch5groupEbbiNS9_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS9_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke;
  v87 = &__block_descriptor_tmp_57_3;
  v88 = v54 + 1;
  v89 = v54;
  atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = buf;
  v56 = _Block_copy(aBlock);
  v57 = v89;
  if (!v89 || atomic_fetch_add(&v89->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  (v57->__on_zero_shared)(v57);
  std::__shared_weak_count::__release_weak(v57);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_55:
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
  }

LABEL_56:
  *&v58 = 0xAAAAAAAAAAAAAAAALL;
  *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v77[0] = v58;
  v77[1] = v58;
  v78 = 0xAAAAAAAAAAAAAAAALL;
  v59 = *(v45 + 16);
  *buf = *(v45 + 8);
  if (!v59)
  {
    v85 = 0;
LABEL_119:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v85 = std::__shared_weak_count::lock(v59);
  if (!v85)
  {
    goto LABEL_119;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v60 = v85;
  if (v85 && !atomic_fetch_add((v85 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  aBlock[0] = v56;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v77);
  if (v95)
  {
    dispatch_release(v95);
  }

  if (*(&v94 + 1))
  {
    _Block_release(*(&v94 + 1));
  }

  if (v94)
  {
    dispatch_release(v94);
  }

  if (v92)
  {
    operator delete(v92);
  }

  if (*&__lk[8])
  {
    std::__shared_weak_count::__release_weak(*&__lk[8]);
  }

  if (!v75)
  {
    v66 = 1;
    goto LABEL_105;
  }

  *__lk = a1 + 72;
  *&__lk[8] = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 72));
  v61.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 3000000000;
  do
  {
    if (*(a1 + 184))
    {
      goto LABEL_97;
    }

    if (v61.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v63.__d_.__rep_ = v61.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v63.__d_.__rep_ < 1)
    {
      continue;
    }

    std::chrono::steady_clock::now();
    v64.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v64.__d_.__rep_)
    {
      v65 = 0;
LABEL_90:
      v62.__d_.__rep_ = v65 + v63.__d_.__rep_;
      goto LABEL_76;
    }

    if (v64.__d_.__rep_ < 1)
    {
      if (v64.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v62.__d_.__rep_ = v63.__d_.__rep_ + 0x8000000000000000;
        goto LABEL_76;
      }

LABEL_89:
      v65 = 1000 * v64.__d_.__rep_;
      if (1000 * v64.__d_.__rep_ <= (v63.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_90;
      }

      goto LABEL_75;
    }

    if (v64.__d_.__rep_ <= 0x20C49BA5E353F7)
    {
      goto LABEL_89;
    }

    v65 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v63.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_90;
    }

LABEL_75:
    v62.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_76:
    std::condition_variable::__do_timed_wait((a1 + 136), __lk, v62);
    std::chrono::steady_clock::now();
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v61.__d_.__rep_);
  if (*(a1 + 184) != 1)
  {
    v68 = *(a1 + 40);
    if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v66 = 0;
      if (__lk[8] != 1)
      {
        goto LABEL_105;
      }

      goto LABEL_104;
    }

    *buf = 0;
    _os_log_error_impl(&dword_296D7D000, v68, OS_LOG_TYPE_ERROR, "Error while waiting for trace output idle indication", buf, 2u);
    v66 = 0;
    if (__lk[8] != 1)
    {
      goto LABEL_105;
    }

LABEL_104:
    std::mutex::unlock(*__lk);
    goto LABEL_105;
  }

LABEL_97:
  v67 = *(a1 + 40);
  if (!os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
  {
    v66 = 1;
    if (__lk[8] != 1)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_296D7D000, v67, OS_LOG_TYPE_DEBUG, "#D Trace output idle indication received successfully", buf, 2u);
  v66 = 1;
  if (__lk[8] == 1)
  {
    goto LABEL_104;
  }

LABEL_105:
  MEMORY[0x29C264240](v79);
  std::__shared_weak_count::__release_weak(v16);
  return v66;
}

void sub_296E0F170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (*(v25 - 153) < 0)
  {
    operator delete(*(v25 - 176));
  }

  MEMORY[0x29C264240](va, a2, a3, a4, a5, a6, a7, a8);
  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void *trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::~$_0(void *a1)
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
    dispatch_release(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t trace::ARICommandDriverINT::isStarted(trace::ARICommandDriverINT *this)
{
  v5 = 0;
  v4[0] = &v5;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNKS1_19ARICommandDriverINT9isStartedEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_62;
  block[4] = this + 8;
  block[5] = v4;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  return v5;
}

void trace::ARICommandDriverINT::start(trace::ARICommandDriverINT *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNS1_19ARICommandDriverINT5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_63;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void trace::ARICommandDriverINT::stop(trace::ARICommandDriverINT *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
    v5 = a2->gr_name;
    if (a2->gr_name)
    {
      dispatch_retain(a2->gr_name);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 2);
  if (!v6 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = this;
  v10[1] = v5;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>(trace::ARICommandDriverINT::stop(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,dispatch_queue_s *::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!gr_name)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!gr_name)
    {
      return;
    }
  }

  dispatch_group_leave(gr_name);

  dispatch_release(gr_name);
}

void trace::ARICommandDriverINT::setLPMEnterAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_10_3;
  v8[4] = a1;
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

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
  block[3] = &__block_descriptor_tmp_66;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS1_13group_sessionEEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 208);
  *(v3 + 208) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 216);
  *(v3 + 216) = v5;
  if (v6)
  {
    dispatch_release(v6);
  }

  if (*(v3 + 208) && *(v3 + 216))
  {
    v7 = operator new(0x20uLL);
    v7->__shared_owners_ = 0;
    p_shared_owners = &v7->__shared_owners_;
    v7->__shared_weak_owners_ = 0;
    v7->__vftable = &unk_2A1E10218;
    v7[1].__vftable = v3;
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS4_13group_sessionEEEEEUb_E3__6vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
    v11[3] = &__block_descriptor_tmp_64_2;
    v11[4] = &v7[1];
    v12 = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
    aBlock[3] = &unk_29EE5BFA0;
    aBlock[4] = v11;
    v9 = _Block_copy(aBlock);
    v10 = v12;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_15;
      }
    }

    else if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_15:
      v11[0] = v9;
      ice::Client::regIndicationInternal();
      if (v11[0])
      {
        _Block_release(v11[0]);
      }

      ice::Client::setIndShouldWake(*(v3 + 48));
      return;
    }

    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    goto LABEL_15;
  }
}

void sub_296E0F894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void trace::ARICommandDriverINT::setLPMExitAction(uint64_t a1, uint64_t a2)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN5trace19ARICommandDriverINT16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v8[3] = &__block_descriptor_tmp_11_2;
  v8[4] = a1;
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

  v11 = v8;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke_0;
  block[3] = &__block_descriptor_tmp_66;
  block[4] = a1 + 8;
  block[5] = &v11;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v6, block);
    v7 = object;
    if (!object)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v6, block);
  v7 = object;
  if (object)
  {
LABEL_7:
    dispatch_release(v7);
  }

LABEL_8:
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN5trace19ARICommandDriverINT16setLPMExitActionEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 224);
  *(v3 + 224) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(v3 + 232);
  *(v3 + 232) = v5;
  if (v6)
  {

    dispatch_release(v6);
  }
}

uint64_t trace::ARICommandDriverINT::registerForTraceFlushCompletion(ice::Client **this)
{
  v2 = operator new(0x20uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E10298;
  v2[1].__vftable = this;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v7[3] = &__block_descriptor_tmp_67_2;
  v7[4] = &v2[1];
  v8 = v2;
  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = v7;
  v4 = _Block_copy(aBlock);
  v5 = v8;
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_4:
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

LABEL_5:
  v7[0] = v4;
  ice::Client::regIndicationInternal();
  if (v7[0])
  {
    _Block_release(v7[0]);
  }

  return ice::Client::setIndShouldWake(this[6]);
}

void sub_296E0FC54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void trace::ARICommandDriverINT::setAnomalyDetectionLevel(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_12_2;
  v19 = a2;
  v15[4] = a1;
  v15[5] = v7;
  v16 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = *a3;
  if (*a3)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a3 + 8);
  aBlock = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[2] = v3;
  v25[3] = v3;
  v25[0] = v3;
  v25[1] = v3;
  AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigReq_SDK(v25);
  v4 = *(a1 + 72);
  v5 = operator new(4uLL);
  *v5 = v4;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(v2 + 48);
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = _Block_copy(v10);
    v12 = *(a1 + 64);
    v21 = v11;
    object = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v11 = 0;
  v12 = *(a1 + 64);
  v21 = 0;
  object = v12;
  if (v12)
  {
LABEL_7:
    dispatch_retain(v12);
  }

LABEL_8:
  v13 = operator new(0x40uLL);
  v13->__shared_owners_ = 0;
  p_shared_owners = &v13->__shared_owners_;
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E10318;
  v13[1].__vftable = v9;
  v13[1].__shared_owners_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v11)
  {
    v13[1].__shared_weak_owners_ = 0;
    v13[2].__vftable = v12;
    if (!v12)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v13[1].__shared_weak_owners_ = _Block_copy(v11);
  v13[2].__vftable = v12;
  if (v12)
  {
LABEL_12:
    dispatch_retain(v12);
  }

LABEL_13:
  v13[2].__shared_owners_ = v2;
  v27 = MEMORY[0x29EDCA5F8];
  v28 = 1174405120;
  v29 = ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS2_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v30 = &__block_descriptor_tmp_69_1;
  v31 = v13 + 1;
  v32 = v13;
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = &v27;
  v15 = _Block_copy(aBlock);
  v16 = v32;
  if (!v32 || atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v16->__on_zero_shared)(v16);
  std::__shared_weak_count::__release_weak(v16);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_17:
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v17;
  v23[1] = v17;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v18 = *(v7 + 16);
  v27 = *(v7 + 8);
  if (!v18)
  {
    v28 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v28 = std::__shared_weak_count::lock(v18);
  if (!v28)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v19 = v28;
  if (v28 && !atomic_fetch_add((v28 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  aBlock[0] = v15;
  ice::SendMsgBaseProxy::callback();
  if (aBlock[0])
  {
    _Block_release(aBlock[0]);
  }

  MEMORY[0x29C263BF0](v23);
  if (object)
  {
    dispatch_release(object);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  return MEMORY[0x29C265890](v25);
}

void sub_296E10168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v5 = *(v3 - 120);
  if (v5)
  {
    _Block_release(v5);
  }

  MEMORY[0x29C263BF0](va1, a2);
  _ZZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__8D1Ev(va);
  MEMORY[0x29C265890](va2);
  _Unwind_Resume(a1);
}

void sub_296E1019C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v29)
  {
    _Block_release(v29);
  }

  _ZZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__8D1Ev(&a10);
  MEMORY[0x29C265890](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_EN3__8D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
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

void trace::ARICommandDriverINT::setAnomalyDetectionDebounceTimeout(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = (a1 + 8);
  if (!v5 || (v10 = std::__shared_weak_count::lock(v5)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  p_shared_weak_owners = &v10->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v11);
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 1174405120;
  v15[2] = ___ZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke;
  v15[3] = &__block_descriptor_tmp_15_5;
  v19 = a2;
  v15[4] = a1;
  v15[5] = v7;
  v16 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v13 = *a3;
  if (*a3)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(a3 + 8);
  aBlock = v13;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped(v6, v15);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  std::__shared_weak_count::__release_weak(v11);
}

uint64_t ___ZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  __p = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[2] = v3;
  v24[3] = v3;
  v24[0] = v3;
  v24[1] = v3;
  AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutReq_SDK(v24);
  v4 = operator new(4uLL);
  *v4 = *(a1 + 72);
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v2 + 48);
  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = _Block_copy(v9);
    v11 = *(a1 + 64);
    v20 = v10;
    object = v11;
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v11 = *(a1 + 64);
  v20 = 0;
  object = v11;
  if (v11)
  {
LABEL_7:
    dispatch_retain(v11);
  }

LABEL_8:
  v12 = operator new(0x40uLL);
  v12->__shared_owners_ = 0;
  p_shared_owners = &v12->__shared_owners_;
  v12->__shared_weak_owners_ = 0;
  v12->__vftable = &unk_2A1E10398;
  v12[1].__vftable = v8;
  v12[1].__shared_owners_ = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v10)
  {
    v12[1].__shared_weak_owners_ = 0;
    v12[2].__vftable = v11;
    if (!v11)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12[1].__shared_weak_owners_ = _Block_copy(v10);
  v12[2].__vftable = v11;
  if (v11)
  {
LABEL_12:
    dispatch_retain(v11);
  }

LABEL_13:
  v12[2].__shared_owners_ = v2;
  v26 = MEMORY[0x29EDCA5F8];
  v27 = 1174405120;
  v28 = ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke;
  v29 = &__block_descriptor_tmp_73_0;
  v30 = v12 + 1;
  v31 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ice6detail12wrapCallbackIvEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEU13block_pointerFT_S4_jE_block_invoke_9;
  aBlock[3] = &unk_29EE5BFA0;
  aBlock[4] = &v26;
  v14 = _Block_copy(aBlock);
  v15 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_16:
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_17:
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[0] = v16;
  v22[1] = v16;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  v17 = *(v6 + 16);
  v26 = *(v6 + 8);
  if (!v17)
  {
    v27 = 0;
LABEL_38:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = std::__shared_weak_count::lock(v17);
  if (!v27)
  {
    goto LABEL_38;
  }

  ice::SendMsgBaseProxy::SendMsgBaseProxy();
  v18 = v27;
  if (v27 && !atomic_fetch_add((v27 + 8), 0xFFFFFFFFFFFFFFFFLL))
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

  MEMORY[0x29C263BF0](v22);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return MEMORY[0x29C2658E0](v24);
}

void sub_296E1074C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v5 = *(v3 - 120);
  if (v5)
  {
    _Block_release(v5);
  }

  MEMORY[0x29C263BF0](va1, a2);
  _ZZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__9D1Ev(va);
  MEMORY[0x29C2658E0](va2);
  _Unwind_Resume(a1);
}

void sub_296E10780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v29)
  {
    _Block_release(v29);
  }

  _ZZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__9D1Ev(&a10);
  MEMORY[0x29C2658E0](&a21);
  _Unwind_Resume(a1);
}

void *_ZZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_EN3__9D1Ev(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
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

atomic_ullong *std::shared_ptr<trace::ARICommandDriverINT>::shared_ptr[abi:ne200100]<trace::ARICommandDriverINT,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E0FFC0;
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

void sub_296E1095C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1}::operator() const(trace::ARICommandDriverINT*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<trace::ARICommandDriverINT *,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT *)#1},std::allocator<trace::ARICommandDriverINT>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<trace::ARICommandDriverINT *,std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT *)#1},std::allocator<trace::ARICommandDriverINT>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN5trace13CommandDriverEE15make_shared_ptrINS1_19ARICommandDriverINTEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<trace::ARICommandDriverINT> ctu::SharedSynchronizable<trace::CommandDriver>::make_shared_ptr<trace::ARICommandDriverINT>(trace::ARICommandDriverINT*)::{lambda(trace::ARICommandDriverINT*)#1}::operator() const(trace::ARICommandDriverINT*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

void *std::promise<BOOL>::~promise(void *result)
{
  v1 = *result;
  if (*result)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v12.__ptr_ = 0;
      v2 = *(v1 + 16);
      v3 = result;
      std::exception_ptr::~exception_ptr(&v12);
      result = v3;
      v1 = *v3;
      if (!v2 && *(v1 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C265C70](v10, 4, v4);
        exception = __cxa_allocate_exception(0x20uLL);
        __cxa_init_primary_exception();
        v6 = std::logic_error::logic_error(exception, v10);
        exception->__vftable = (MEMORY[0x29EDC9548] + 16);
        exception[1] = v10[1];
        std::exception_ptr::__from_native_exception_pointer(&v11, v6, v7);
        v8.__ptr_ = &v11;
        std::__assoc_sub_state::set_exception(v1, v8);
        std::exception_ptr::~exception_ptr(&v11);
        MEMORY[0x29C265C80](v10);
        result = v3;
        v1 = *v3;
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = result;
      (*(*v1 + 16))(v1);
      return v9;
    }
  }

  return result;
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x29C265C70](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x29EDC9430], MEMORY[0x29EDC9390]);
}

void ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = v3[1];
    if (v4)
    {
      v5 = v3[2];
      v7 = std::__shared_weak_count::lock(v4);
      v25 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
LABEL_28:
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          return;
        }

        v23 = 0xAAAAAAAAAAAAAAAALL;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v22[2] = v9;
        v22[3] = v9;
        v22[0] = v9;
        v22[1] = v9;
        AriSdk::ARI_TraceFlushRspCb_SDK::ARI_TraceFlushRspCb_SDK(v22, a2);
        memset(__p, 170, sizeof(__p));
        *buf = operator new(0x20uLL);
        *&buf[8] = xmmword_296E1FAE0;
        strcpy(*buf, "Sending trace flush request");
        checkErrorStr(v22, buf, __p);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          v17 = HIBYTE(__p[2]);
          v11 = SHIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v17 = __p[1];
          }

          if (v17)
          {
LABEL_9:
            v12 = *(v5 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = __p[0];
              if (v11 >= 0)
              {
                v13 = __p;
              }

              *buf = 136315138;
              *&buf[4] = v13;
              v14 = "Failed to send trace flush request (response error: %s)";
              v15 = v12;
              v16 = 12;
              goto LABEL_22;
            }

LABEL_25:
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            MEMORY[0x29C264090](v22);
            goto LABEL_28;
          }
        }

        else
        {
          v10 = HIBYTE(__p[2]);
          v11 = SHIBYTE(__p[2]);
          if (SHIBYTE(__p[2]) < 0)
          {
            v10 = __p[1];
          }

          if (v10)
          {
            goto LABEL_9;
          }
        }

        if (AriSdk::ARI_TraceFlushRspCb_SDK::unpack(v22))
        {
          v18 = *(v5 + 40);
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v14 = "[rsp] Failed to send trace flush request (unpack error)";
          v15 = v18;
          v16 = 2;
        }

        else
        {
          v19 = *v23;
          v20 = *(v5 + 40);
          if (!*v23)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_296D7D000, v20, OS_LOG_TYPE_DEFAULT, "#I [rsp] Successfully sent trace flush request", buf, 2u);
            }

            goto LABEL_25;
          }

          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_25;
          }

          *buf = 67109120;
          *&buf[4] = v19;
          v14 = "[rsp] Failed to send trace flush request (result error: %d)";
          v15 = v20;
          v16 = 8;
        }

LABEL_22:
        _os_log_error_impl(&dword_296D7D000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
        goto LABEL_25;
      }
    }
  }
}

void sub_296E11034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C264090](&a16, a2, a3, a4, a5, a6, a7, a8);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v16 - 80);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c80_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT16sendFlushRequestEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0,std::allocator<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E100E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0,std::allocator<trace::ARICommandDriverINT::sendFlushRequest(void)::$_0>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT10sendConfigENSt3__16vectorIcNS4_9allocatorIcEEEEN8dispatch5groupEbbiNS9_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0vEENS9_5blockIU13block_pointerFiPhjEEENS4_17integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = *(v3 + 16);
      v7 = std::__shared_weak_count::lock(v4);
      v28 = v7;
      if (v7)
      {
        v8 = v7;
        if (!*v3)
        {
          goto LABEL_47;
        }

        v25 = 0xAAAAAAAAAAAAAAAALL;
        v26 = 0;
        *&v9 = 0xAAAAAAAAAAAAAAAALL;
        *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *cf = v9;
        v24 = v9;
        v21 = v9;
        v22 = v9;
        AriSdk::ARI_TraceSetConfigRspCb_SDK::ARI_TraceSetConfigRspCb_SDK(&v21, a2);
        buf[23] = 20;
        strcpy(buf, "Sending trace config");
        checkError(v29, &v21, buf);
        v10 = *v29;
        v26 = *v29;
        *v29 = 0;
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
          if (v10)
          {
LABEL_7:
            v11 = *(v5 + 40);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "[rsp] Failed to send trace config!", buf, 2u);
            }

            goto LABEL_23;
          }
        }

        else if (v10)
        {
          goto LABEL_7;
        }

        v12 = AriSdk::ARI_TraceSetConfigRspCb_SDK::unpack(&v21);
        if (v12 || *v25)
        {
          v13 = *(v5 + 40);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v20 = *v25;
            *buf = 67109376;
            *&buf[4] = v12;
            *&buf[8] = 1024;
            *&buf[10] = v20;
            _os_log_error_impl(&dword_296D7D000, v13, OS_LOG_TYPE_ERROR, "[rsp] Failed to send trace config: unpackResult = %d result_code_t1 = %d", buf, 0xEu);
          }

          *buf = operator new(0x20uLL);
          *&buf[8] = xmmword_296E1FAE0;
          strcpy(*buf, "Failed to send trace config");
          CreateError();
          v10 = *v29;
          v26 = *v29;
          *v29 = 0;
          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }
        }

        else
        {
          v14 = *(v5 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            std::string::basic_string[abi:ne200100]<std::__wrap_iter<char const*>,0>(buf, *(v3 + 24), *(v3 + 32));
            v15 = buf[23] >= 0 ? buf : *buf;
            *v29 = 136315138;
            *&v29[4] = v15;
            _os_log_impl(&dword_296D7D000, v14, OS_LOG_TYPE_DEFAULT, "#I [rsp] Succeeded to send trace config: %s", v29, 0xCu);
            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }

          v10 = 0;
        }

LABEL_23:
        MEMORY[0x29C264580](&v21);
        v16 = *(v3 + 48);
        if (v16)
        {
          dispatch_group_leave(v16);
        }

        v17 = *(v3 + 56);
        if (!v17 || !*(v3 + 64))
        {
          if (!v10)
          {
LABEL_47:
            if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }

            return;
          }

LABEL_46:
          CFRelease(v10);
          goto LABEL_47;
        }

        if (v10 && (CFRetain(v10), (v17 = *(v3 + 56)) == 0))
        {
          v18 = 0;
        }

        else
        {
          v18 = _Block_copy(v17);
        }

        v19 = *(v3 + 64);
        *&v21 = MEMORY[0x29EDCA5F8];
        *(&v21 + 1) = 1174405120;
        *&v22 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
        *(&v22 + 1) = &__block_descriptor_tmp_61_0;
        if (v18)
        {
          cf[0] = _Block_copy(v18);
          cf[1] = v10;
          if (!v10)
          {
            goto LABEL_38;
          }
        }

        else
        {
          cf[0] = 0;
          cf[1] = v10;
          if (!v10)
          {
LABEL_38:
            dispatch_async(v19, &v21);
            if (cf[1])
            {
              CFRelease(cf[1]);
            }

            if (cf[0])
            {
              _Block_release(cf[0]);
            }

            if (v18)
            {
              _Block_release(v18);
            }

            if (!v10)
            {
              goto LABEL_47;
            }

            CFRelease(v10);
            goto LABEL_46;
          }
        }

        CFRetain(v10);
        goto LABEL_38;
      }
    }
  }
}

void sub_296E115C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, ...)
{
  va_start(va, a18);
  MEMORY[0x29C264580](&a9, a2, a3, a4, a5, a6, a7, a8);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c193_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT10sendConfigENS_6vectorIcNS_9allocatorIcEEEEN8dispatch5groupEbbiNS7_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c193_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT10sendConfigENS_6vectorIcNS_9allocatorIcEEEEN8dispatch5groupEbbiNS7_8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::allocator<trace::ARICommandDriverINT::sendConfig(std::vector<char>,dispatch::group,BOOL,BOOL,int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::__on_zero_shared(void *a1)
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

  v4 = a1[9];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    a1[7] = v5;
    operator delete(v5);
  }

  v6 = a1[4];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2(uint64_t a1)
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

void sub_296E1181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK3ctu20SharedSynchronizableIN5trace13CommandDriverEE20execute_wrapped_syncIZNS1_19ARICommandDriverINT5startEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  result = ice::Client::start(*(*v1 + 48));
  *(v2 + 64) = 1;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>(trace::ARICommandDriverINT::stop(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,dispatch_queue_s *::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*v2 + 48);
  object.gr_name = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  ice::Client::stop(v5, &object);
  if (object.gr_name)
  {
    dispatch_release(object.gr_name);
  }

  *(v4 + 64) = 0;
  v6 = v2[1];
  if (v6)
  {
    dispatch_release(v6);
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_296E11948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,std::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<CellularCertCommandDriver>::execute_wrapped<ARICellularCertCommandDriver::init(void)::$_0>(ARICellularCertCommandDriver::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<ARICellularCertCommandDriver::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<trace::ARICommandDriverINT::stop(dispatch::group)::$_0,std::default_delete<trace::ARICommandDriverINT::stop(dispatch::group)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS4_13group_sessionEEEEEUb_E3__6vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2, unsigned int a3)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *v3;
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[2] = v5;
    v11[3] = v5;
    v11[0] = v5;
    v11[1] = v5;
    AriSdk::ARI_TraceOutputIdleInd_SDK::ARI_TraceOutputIdleInd_SDK(v11, a2);
    GMID = AriSdk::MsgBase::getGMID(v11);
    std::mutex::lock((v4 + 72));
    if (ice::isARIResponseValid())
    {
      if (!AriSdk::ARI_TraceOutputIdleInd_SDK::unpack(v11) && *v12 == 1)
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296D7D000, v7, OS_LOG_TYPE_DEFAULT, "#I [ind] Trace output idle indication Success", buf, 2u);
        }

        v8 = 1;
        goto LABEL_13;
      }

      v10 = *(v4 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, "[ind] Error while unpacking trace output idle indication", buf, 2u);
      }
    }

    else
    {
      v9 = *(v4 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        v14 = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
        v15 = 1024;
        v16 = 1568702464;
        _os_log_error_impl(&dword_296D7D000, v9, OS_LOG_TYPE_ERROR, "[ind] Got unexpected message 0x%0x, expected trace output idle indication (0x%0x)", buf, 0xEu);
      }
    }

    v8 = 0;
LABEL_13:
    *(v4 + 184) = v8;
    std::condition_variable::notify_all((v4 + 136));
    std::mutex::unlock((v4 + 72));
    return MEMORY[0x29C2643E0](v11);
  }

  return result;
}

void sub_296E11B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 72));
  MEMORY[0x29C2643E0](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS3_13group_sessionEEEEEUb_E3__6EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c146_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS3_13group_sessionEEEEEUb_E3__6EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT17setLPMEnterActionEN8dispatch8callbackIU13block_pointerFvNS3_13group_sessionEEEEEUb_E3__6NS_9allocatorIS9_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10218;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t ___ZN3ice6detail12wrapCallbackIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0vEEN8dispatch5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t result, const unsigned __int8 *a2, unsigned int a3)
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *v3;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16[2] = v5;
    v16[3] = v5;
    v16[0] = v5;
    v16[1] = v5;
    AriSdk::ARI_TraceFlushCompleteInd_SDK::ARI_TraceFlushCompleteInd_SDK(v16, a2);
    GMID = AriSdk::MsgBase::getGMID(v16);
    if (ice::isARIResponseValid())
    {
      if (!AriSdk::ARI_TraceFlushCompleteInd_SDK::unpack(v16) && !*v17)
      {
        v14 = *(v4 + 40);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v18.__ptr_) = 0;
          _os_log_impl(&dword_296D7D000, v14, OS_LOG_TYPE_DEFAULT, "#I [ind] Trace flush complete indication Success", &v18, 2u);
        }

        v8 = *(v4 + 192);
        if (!v8)
        {
          std::__throw_future_error[abi:ne200100](3u);
        }

        v9 = (v8 + 24);
        std::mutex::lock((v8 + 24));
        if ((*(v8 + 136) & 1) != 0 || (v18.__ptr_ = 0, v15 = *(v8 + 16), std::exception_ptr::~exception_ptr(&v18), v15))
        {
          std::__throw_future_error[abi:ne200100](2u);
        }

        v13 = 1;
        goto LABEL_15;
      }

      v7 = *(v4 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v18.__ptr_) = 0;
        _os_log_error_impl(&dword_296D7D000, v7, OS_LOG_TYPE_ERROR, "[ind] Error while unpacking trace flush complete indication", &v18, 2u);
        v8 = *(v4 + 192);
        if (v8)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v8 = *(v4 + 192);
        if (v8)
        {
LABEL_7:
          v9 = (v8 + 24);
          std::mutex::lock((v8 + 24));
          if ((*(v8 + 136) & 1) != 0 || (v18.__ptr_ = 0, v10 = *(v8 + 16), std::exception_ptr::~exception_ptr(&v18), v10))
          {
            std::__throw_future_error[abi:ne200100](2u);
          }

LABEL_14:
          v13 = 0;
LABEL_15:
          *(v8 + 140) = v13;
          *(v8 + 136) |= 5u;
          std::condition_variable::notify_all((v8 + 88));
          std::mutex::unlock(v9);
          return MEMORY[0x29C264990](v16);
        }
      }

      std::__throw_future_error[abi:ne200100](3u);
    }

    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v18.__ptr_) = 67109376;
      HIDWORD(v18.__ptr_) = (GMID >> 17) & 0xFFFF8000 | (GMID << 26);
      v19 = 1024;
      v20 = 1568735232;
      _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "[ind] Got unexpected message 0x%0x, expected trace flush complete indication (0x%0x)", &v18, 0xEu);
      v8 = *(v4 + 192);
      if (v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *(v4 + 192);
      if (v8)
      {
LABEL_12:
        v9 = (v8 + 24);
        std::mutex::lock((v8 + 24));
        if ((*(v8 + 136) & 1) != 0 || (v18.__ptr_ = 0, v12 = *(v8 + 16), std::exception_ptr::~exception_ptr(&v18), v12))
        {
          std::__throw_future_error[abi:ne200100](2u);
        }

        goto LABEL_14;
      }
    }

    std::__throw_future_error[abi:ne200100](3u);
  }

  return result;
}

void sub_296E11F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock(v9);
  MEMORY[0x29C264990](&a9);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c95_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c95_ZTSNSt3__110shared_ptrIZN5trace19ARICommandDriverINT31registerForTraceFlushCompletionEvE3__0EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_emplace<trace::ARICommandDriverINT::registerForTraceFlushCompletion(void)::$_0,std::allocator<trace::ARICommandDriverINT::registerForTraceFlushCompletion(void)::$_0>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS2_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8vEENS5_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
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
        AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        block = operator new(0x20uLL);
        v26 = xmmword_296E1FAE0;
        strcpy(block, "set anomaly detection level");
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

        v10 = AriSdk::ARI_TraceSetBasebandAnomalyDetectionConfigRsp_SDK::unpack(v21);
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
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to set anomaly detection level: unpackResult = %d result_code_t1 = %d", &block, 0xEu);
          }

          __p = operator new(0x28uLL);
          strcpy(__p, "Failed to set anomaly detection level");
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
            _os_log_impl(&dword_296D7D000, v17, OS_LOG_TYPE_DEFAULT, "#I Successfully set anomaly detection level", &block, 2u);
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

          MEMORY[0x29C2658C0](v21);
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
        *(&v26 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
        v27 = &__block_descriptor_tmp_61_0;
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

void sub_296E124DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c196_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c196_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8NS_9allocatorISE_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10318;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT24setAnomalyDetectionLevelENS1_21AnomalyDetectionLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb0_E3__8NS_9allocatorISE_EEE16__on_zero_sharedEv(void *a1)
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

void ___ZN3ice6detail12wrapCallbackIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9vEENS4_5blockIU13block_pointerFiPhjEEENSt3__117integral_constantIiLi2EEEOT__block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
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
LABEL_40:
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
        AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK(v21, a2);
        cf = 0xAAAAAAAAAAAAAAAALL;
        *buf = operator new(0x28uLL);
        v26 = xmmword_296E22D70;
        strcpy(*buf, "set anomaly detection debounce timeout");
        checkError(&cf, v21, buf);
        if (SHIBYTE(v26) < 0)
        {
          operator delete(*buf);
          if (cf)
          {
            goto LABEL_18;
          }
        }

        else if (cf)
        {
          goto LABEL_18;
        }

        v10 = AriSdk::ARI_CsiSahSetRecoverableAssertDebounceTimeoutRspCb_SDK::unpack(v21);
        v11 = *(v5 + 40);
        if (v10)
        {
          v12 = v10;
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v12;
            _os_log_error_impl(&dword_296D7D000, v11, OS_LOG_TYPE_ERROR, "Failed to set anomaly detection debounce timeout: unpackResult = %d", buf, 8u);
          }

          __p = operator new(0x38uLL);
          strcpy(__p, "Failed to set anomaly detection debounce timeout");
          CreateError();
          v13 = cf;
          cf = *buf;
          *buf = 0;
          if (v13)
          {
            CFRelease(v13);
            if (*buf)
            {
              CFRelease(*buf);
            }
          }

          operator delete(__p);
        }

        else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v14 = *v22;
          *buf = 67109120;
          *&buf[4] = v14;
          _os_log_impl(&dword_296D7D000, v11, OS_LOG_TYPE_DEFAULT, "#I Successfully set anomaly detection debounce timeout (result_t1 = %d)", buf, 8u);
        }

LABEL_18:
        v15 = v3[2];
        if (!v15 || !v3[3])
        {
LABEL_37:
          if (cf)
          {
            CFRelease(cf);
          }

          MEMORY[0x29C265910](v21);
          goto LABEL_40;
        }

        v16 = cf;
        if (cf && (CFRetain(cf), (v15 = v3[2]) == 0))
        {
          v17 = 0;
        }

        else
        {
          v17 = _Block_copy(v15);
        }

        v18 = v3[3];
        *buf = MEMORY[0x29EDCA5F8];
        *&v26 = 1174405120;
        *(&v26 + 1) = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_2;
        v27 = &__block_descriptor_tmp_61_0;
        if (v17)
        {
          v28 = _Block_copy(v17);
          v29 = v16;
          if (!v16)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v28 = 0;
          v29 = v16;
          if (!v16)
          {
LABEL_29:
            dispatch_async(v18, buf);
            if (v29)
            {
              CFRelease(v29);
            }

            if (v28)
            {
              _Block_release(v28);
            }

            if (v17)
            {
              _Block_release(v17);
            }

            if (v16)
            {
              CFRelease(v16);
            }

            goto LABEL_37;
          }
        }

        CFRetain(v16);
        goto LABEL_29;
      }
    }
  }
}

void sub_296E12A5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_32c179_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9EE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c179_ZTSNSt3__110shared_ptrIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9EE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9NS_9allocatorISD_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E10398;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void _ZNSt3__120__shared_ptr_emplaceIZZN5trace19ARICommandDriverINT34setAnomalyDetectionDebounceTimeoutEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb1_E3__9NS_9allocatorISD_EEE16__on_zero_sharedEv(void *a1)
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

void util::strip_non_printable(std::string *this)
{
  v1 = this;
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (size)
  {
    v5 = size - 1;
    v6 = MEMORY[0x29EDCA600];
    while (1)
    {
      v7 = v3->__r_.__value_.__s.__data_[0];
      if ((v7 & 0x80000000) != 0)
      {
        break;
      }

      v8 = *(v6 + 4 * v7 + 60);
      if ((v8 & 0x40000) == 0 || (v8 & 0x4000) != 0)
      {
        goto LABEL_15;
      }

LABEL_8:
      v3 = (v3 + 1);
      --v5;
      if (v3 == v4)
      {
        goto LABEL_28;
      }
    }

    if (__maskrune(v3->__r_.__value_.__s.__data_[0], 0x40000uLL) && !__maskrune(v7, 0x4000uLL))
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
    {
      v9 = 1;
      v4 = v3;
      while (1)
      {
        v10 = v3->__r_.__value_.__s.__data_[v9];
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v3->__r_.__value_.__s.__data_[v9], 0x40000uLL) || __maskrune(v10, 0x4000uLL))
          {
            goto LABEL_19;
          }
        }

        else
        {
          v11 = *(v6 + 4 * v10 + 60);
          if ((v11 & 0x40000) == 0 || (v11 & 0x4000) != 0)
          {
            goto LABEL_19;
          }
        }

        v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v9];
        v4 = (v4 + 1);
LABEL_19:
        ++v9;
        if (!--v5)
        {
          goto LABEL_28;
        }
      }
    }

    v4 = v3;
  }

LABEL_28:
  v12 = HIBYTE(v1->__r_.__value_.__r.__words[2]);
  v13 = v12;
  v14 = v1->__r_.__value_.__r.__words[0];
  v15 = (v1->__r_.__value_.__r.__words[0] + v1->__r_.__value_.__l.__size_);
  if ((v12 & 0x80u) != 0)
  {
    v16 = v1->__r_.__value_.__r.__words[0];
  }

  else
  {
    v15 = v1 + v12;
    v16 = v1;
  }

  if ((v12 & 0x80u) != 0)
  {
    v12 = v1->__r_.__value_.__l.__size_;
  }

  v17 = v4 - v16;
  if (v12 < v4 - v16)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v15 - v4 == -1)
  {
    if (v13 < 0)
    {
      v1->__r_.__value_.__l.__size_ = v17;
      v1 = v14;
    }

    else
    {
      *(&v1->__r_.__value_.__s + 23) = v17 & 0x7F;
    }

    v1->__r_.__value_.__s.__data_[v17] = 0;
  }

  else
  {

    std::string::__erase_external_with_move(v1, v17, v15 - v4);
  }
}

uint64_t util::convert_garbage(uint64_t result)
{
  v1 = *(result + 23);
  if (v1 >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = *result;
  }

  if (v1 >= 0)
  {
    v3 = *(result + 23);
  }

  else
  {
    v3 = *(result + 8);
  }

  if (v3)
  {
    v4 = MEMORY[0x29EDCA600];
    do
    {
      v5 = *v2;
      if ((v5 & 0x80000000) != 0)
      {
        result = __maskrune(*v2, 0x40000uLL);
        if (result)
        {
          goto LABEL_10;
        }

        result = __maskrune(v5, 0x4000uLL);
        if (result)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v6 = *(v4 + 4 * v5 + 60);
        if ((v6 & 0x40000) != 0)
        {
          goto LABEL_10;
        }

        result = v6 & 0x4000;
        if ((v6 & 0x4000) != 0)
        {
          goto LABEL_10;
        }
      }

      *v2 = 32;
LABEL_10:
      ++v2;
      --v3;
    }

    while (v3);
  }

  return result;
}

void util::strip_pattern(char *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
  }

  v5 = a1[23];
  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  v7 = a3->__r_.__value_.__r.__words[0];
  if ((v6 & 0x80u) == 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = a3->__r_.__value_.__r.__words[0];
  }

  size = a3->__r_.__value_.__l.__size_;
  if ((v6 & 0x80u) == 0)
  {
    v9 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = a3->__r_.__value_.__l.__size_;
  }

  if (v5 >= 0)
  {
    v10 = a1[23];
  }

  else
  {
    v10 = *(a1 + 1);
  }

  if (v5 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if (!v10)
  {
    v12 = 0;
    goto LABEL_20;
  }

  if (v9 >= v10)
  {
    v25 = v8 + v9;
    v26 = *v11;
    v27 = v8;
    do
    {
      v28 = v9 - v10;
      if (v28 == -1)
      {
        break;
      }

      v29 = memchr(v27, v26, v28 + 1);
      if (!v29)
      {
        break;
      }

      v30 = v29;
      if (!memcmp(v29, v11, v10))
      {
        if (v30 != v25)
        {
          v12 = v30 - v8;
          if (v30 - v8 != -1)
          {
            if (v10 == -1)
            {
              while (1)
              {
                v31 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v31 = v6;
                }

                if (v31 < v12)
                {
                  break;
                }

                if (v6 < 0)
                {
                  a3->__r_.__value_.__l.__size_ = v12;
                }

                else
                {
                  *(&a3->__r_.__value_.__s + 23) = v12 & 0x7F;
                  v7 = a3;
                }

                v7->__r_.__value_.__s.__data_[v12] = 0;
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                v7 = a3->__r_.__value_.__r.__words[0];
                if ((v6 & 0x80u) == 0)
                {
                  v32 = a3;
                }

                else
                {
                  v32 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v33 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v33 = a3->__r_.__value_.__l.__size_;
                }

                v34 = a1[23];
                if (v34 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                if (v34 >= 0)
                {
                  v36 = a1[23];
                }

                else
                {
                  v36 = *(a1 + 1);
                }

                if (v36)
                {
                  if (v33 < v36)
                  {
                    return;
                  }

                  v37 = v32 + v33;
                  v38 = *v35;
                  v39 = v32;
                  while (1)
                  {
                    v40 = v33 - v36;
                    if (v40 == -1)
                    {
                      return;
                    }

                    v41 = memchr(v39, v38, v40 + 1);
                    if (!v41)
                    {
                      return;
                    }

                    v42 = v41;
                    if (!memcmp(v41, v35, v36))
                    {
                      break;
                    }

                    v39 = (v42 + 1);
                    v33 = v37 - (v42 + 1);
                    if (v33 < v36)
                    {
                      return;
                    }
                  }

                  if (v42 == v37)
                  {
                    return;
                  }

                  v12 = v42 - v32;
                  if (v42 - v32 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            else
            {
              while (1)
              {
LABEL_20:
                v13 = size;
                if ((v6 & 0x80u) == 0)
                {
                  v13 = v6;
                }

                if (v13 < v12)
                {
                  break;
                }

                std::string::__erase_external_with_move(a3, v12, v10);
                v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                if ((v6 & 0x80u) == 0)
                {
                  v14 = a3;
                }

                else
                {
                  v14 = a3->__r_.__value_.__r.__words[0];
                }

                size = a3->__r_.__value_.__l.__size_;
                if ((v6 & 0x80u) == 0)
                {
                  v15 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v15 = a3->__r_.__value_.__l.__size_;
                }

                v16 = a1[23];
                if (v16 >= 0)
                {
                  v17 = a1;
                }

                else
                {
                  v17 = *a1;
                }

                if (v16 >= 0)
                {
                  v18 = a1[23];
                }

                else
                {
                  v18 = *(a1 + 1);
                }

                if (v18)
                {
                  if (v15 < v18)
                  {
                    return;
                  }

                  v19 = v14 + v15;
                  v20 = *v17;
                  v21 = v14;
                  while (1)
                  {
                    v22 = v15 - v18;
                    if (v22 == -1)
                    {
                      return;
                    }

                    v23 = memchr(v21, v20, v22 + 1);
                    if (!v23)
                    {
                      return;
                    }

                    v24 = v23;
                    if (!memcmp(v23, v17, v18))
                    {
                      break;
                    }

                    v21 = (v24 + 1);
                    v15 = v19 - (v24 + 1);
                    if (v15 < v18)
                    {
                      return;
                    }
                  }

                  if (v24 == v19)
                  {
                    return;
                  }

                  v12 = v24 - v14;
                  if (v24 - v14 == -1)
                  {
                    return;
                  }
                }

                else
                {
                  v12 = 0;
                }
              }
            }

            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        return;
      }

      v27 = (v30 + 1);
      v9 = v25 - (v30 + 1);
    }

    while (v9 >= v10);
  }
}

void sub_296E13328(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *util::strip_leading_trailing@<X0>(char *result@<X0>, void ***a2@<X1>, void *a3@<X8>)
{
  v4 = result[23];
  v5 = *(result + 1);
  v20 = *result;
  if ((v4 & 0x80u) == 0)
  {
    v6 = result;
  }

  else
  {
    v6 = *result;
  }

  if ((v4 & 0x80u) == 0)
  {
    v7 = result[23];
  }

  else
  {
    v7 = *(result + 1);
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (!v7)
  {
    goto LABEL_26;
  }

  v11 = result;
  v12 = &v6[v7];
  v13 = 0;
  if (!v10)
  {
    v14 = v7 - 1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  while (1)
  {
    result = memchr(v9, v6[v13], v10);
    if (!result)
    {
      break;
    }

    if (v7 == ++v13)
    {
      goto LABEL_26;
    }
  }

  if (v13 == -1)
  {
LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return result;
  }

  while (v7)
  {
    v15 = *--v12;
    result = memchr(v9, v15, v10);
    --v7;
    if (!result)
    {
      v14 = v12 - v6;
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      if (v5 >= v13)
      {
        v4 = v5;
        v11 = v20;
        goto LABEL_30;
      }

LABEL_43:
      std::string::__throw_out_of_range[abi:ne200100]();
    }
  }

  v14 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if (v13 > v4)
  {
    goto LABEL_43;
  }

LABEL_30:
  v16 = v14 - v13 + 1;
  if (v4 - v13 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v4 - v13;
  }

  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v17 | 7) + 1;
    }

    v19 = operator new(v18);
    a3[1] = v17;
    a3[2] = v18 | 0x8000000000000000;
    *a3 = v19;
    a3 = v19;
  }

  else
  {
    *(a3 + 23) = v17;
    if (!v17)
    {
      goto LABEL_42;
    }
  }

  result = memmove(a3, &v11[v13], v17);
LABEL_42:
  *(a3 + v17) = 0;
  return result;
}

double util::strip_trailing@<D0>(__int128 *a1@<X0>, void ***a2@<X1>, std::string *a3@<X8>)
{
  memset(a3, 170, sizeof(std::string));
  if (*(a1 + 23) < 0)
  {
    v5 = a2;
    std::string::__init_copy_ctor_external(a3, *a1, *(a1 + 1));
    a2 = v5;
  }

  else
  {
    v4 = *a1;
    *a3 = *a1;
  }

  v6 = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = a3->__r_.__value_.__r.__words[0];
  }

  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  if (v10)
  {
    if (v6 >= 0)
    {
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    v12 = size;
    do
    {
      if (!v12)
      {
        return *&v4;
      }
    }

    while (!memchr(v9, v7->__r_.__value_.__s.__data_[--v12], v10));
    if (v12 == -1)
    {
      return *&v4;
    }

    if (size >= size - v10)
    {
      v14 = size - v10;
    }

    else
    {
      v14 = size;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v14 >= 0x17)
    {
      if ((v14 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v14 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v14;
      v19 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v19) = v14;
      p_dst = &__dst;
      if (!v14)
      {
        LOBYTE(__dst) = 0;
        if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          *&v4 = __dst;
          *&a3->__r_.__value_.__l.__data_ = __dst;
          a3->__r_.__value_.__r.__words[2] = v19;
          return *&v4;
        }

LABEL_35:
        operator delete(a3->__r_.__value_.__l.__data_);
        goto LABEL_28;
      }
    }

    memmove(p_dst, v7, v14);
    *(p_dst + v14) = 0;
    if ((SHIBYTE(a3->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  return *&v4;
}

void sub_296E13664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::to_upper(uint64_t result)
{
  v1 = *(result + 23);
  v2 = v1;
  v3 = (result + v1);
  if (v2 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = (*result + *(result + 8));
  }

  if (v2 >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  for (; v5 != v4; ++v5)
  {
    result = __toupper(*v5);
    *v5 = result;
  }

  return result;
}

BOOL util::equal_nocase(const char *a1, const char *a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  return strcasecmp(a1, a2) == 0;
}

void util::strip_non_alpha(std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v3 = this;
  }

  else
  {
    v3 = this->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  v4 = (v3 + size);
  if (!size)
  {
    goto LABEL_22;
  }

  v5 = size - 1;
  v6 = MEMORY[0x29EDCA600];
  while (1)
  {
    v7 = v3->__r_.__value_.__s.__data_[0];
    if ((v7 & 0x80000000) != 0)
    {
      if (!__maskrune(v7, 0x100uLL))
      {
        break;
      }

      goto LABEL_9;
    }

    if ((*(v6 + 4 * v7 + 60) & 0x100) == 0)
    {
      break;
    }

LABEL_9:
    v3 = (v3 + 1);
    --v5;
    if (v3 == v4)
    {
      goto LABEL_22;
    }
  }

  if (v3 != v4 && (&v3->__r_.__value_.__l.__data_ + 1) != v4)
  {
    v8 = 1;
    v4 = v3;
    while (1)
    {
      v9 = v3->__r_.__value_.__s.__data_[v8];
      if ((v9 & 0x80000000) == 0)
      {
        break;
      }

      if (__maskrune(v9, 0x100uLL))
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v8;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    if ((*(v6 + 4 * v9 + 60) & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_16:
    v4->__r_.__value_.__s.__data_[0] = v3->__r_.__value_.__s.__data_[v8];
    v4 = (v4 + 1);
    goto LABEL_17;
  }

  v4 = v3;
LABEL_22:
  v10 = HIBYTE(this->__r_.__value_.__r.__words[2]);
  v11 = v10;
  v12 = this->__r_.__value_.__r.__words[0];
  v13 = (this->__r_.__value_.__r.__words[0] + this->__r_.__value_.__l.__size_);
  if ((v10 & 0x80u) != 0)
  {
    v14 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v13 = this + v10;
    v14 = this;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = this->__r_.__value_.__l.__size_;
  }

  v15 = v4 - v14;
  if (v10 < v4 - v14)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v13 - v4 == -1)
  {
    if (v11 < 0)
    {
      this->__r_.__value_.__l.__size_ = v15;
      *(v12 + v15) = 0;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v15 & 0x7F;
      this->__r_.__value_.__s.__data_[v15] = 0;
    }
  }

  else
  {

    std::string::__erase_external_with_move(this, v15, v13 - v4);
  }
}

void util::readPlistToCFDictionary(uint64_t a1@<X0>, CFPropertyListRef *a2@<X8>)
{
  v2 = a1;
  v21 = *MEMORY[0x29EDCA608];
  v4 = *MEMORY[0x29EDB8ED8];
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;
  }

  v18 = CFStringCreateWithCString(*MEMORY[0x29EDB8ED8], v2, 0x8000100u);
  v5 = CFURLCreateWithFileSystemPath(v4, v18, kCFURLPOSIXPathStyle, 0);
  cf = v5;
  *a2 = 0;
  if (v5)
  {
    v6 = CFReadStreamCreateWithFile(v4, v5);
    v7 = v6;
    v16 = v6;
    if (!v6)
    {
      goto LABEL_16;
    }

    CFReadStreamOpen(v6);
    error = 0;
    *a2 = CFPropertyListCreateWithStream(v4, v7, 0, 1uLL, 0, &error);
    CFReadStreamClose(v7);
    if (!error)
    {
      goto LABEL_15;
    }

    CFErrorGetDomain(error);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v14 = *&buf[16];
    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v8 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v8 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    v10 = cf;
    Code = CFErrorGetCode(error);
    v12 = __p;
    if (v14 < 0)
    {
      v12 = __p[0];
    }

    *buf = 138412802;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = Code;
    *&buf[22] = 2080;
    v20 = v12;
    _os_log_error_impl(&dword_296D7D000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
LABEL_9:
    CFRelease(error);
    v9 = *a2;
    *a2 = 0;
    if (v9)
    {
      CFRelease(v9);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
      v7 = v16;
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v7 = v16;
      if (!v16)
      {
LABEL_16:
        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_18;
      }
    }

LABEL_15:
    CFRelease(v7);
    goto LABEL_16;
  }

LABEL_18:
  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_296E13B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sGetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 != -1)
  {

    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  }
}

void util::moveDirContent(const void **a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  v144 = *MEMORY[0x29EDCA608];
  v135 = 0;
  v136 = 0;
  v137 = 0;
  std::locale::locale(&v129, a5);
  v130 = *(a5 + 8);
  v131 = *(a5 + 24);
  v8 = *(a5 + 48);
  v132 = *(a5 + 40);
  v133 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v134 = *(a5 + 56);
  filtered_files = ctu::fs::get_filtered_files();
  v10 = v133;
  if (v133 && !atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    std::locale::~locale(&v129);
    if (filtered_files)
    {
LABEL_6:
      v11 = v135;
      v117 = v136;
      if (v135 != v136)
      {
        if (a4)
        {
          while (1)
          {
            memset(&v143, 170, sizeof(v143));
            if (*(v11 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v143, *v11, v11[1]);
            }

            else
            {
              v12 = *v11;
              v143.__r_.__value_.__r.__words[2] = v11[2];
              *&v143.__r_.__value_.__l.__data_ = v12;
            }

            v13 = *(a1 + 23);
            if (v13 >= 0)
            {
              v14 = *(a1 + 23);
            }

            else
            {
              v14 = a1[1];
            }

            v15 = v14 + 1;
            if (v14 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v15 < 0x17)
            {
              memset(&v127, 0, sizeof(v127));
              v17 = &v127;
              *(&v127.__r_.__value_.__s + 23) = v14 + 1;
              if (!v14)
              {
                goto LABEL_27;
              }
            }

            else
            {
              if ((v15 | 7) == 0x17)
              {
                v16 = 25;
              }

              else
              {
                v16 = (v15 | 7) + 1;
              }

              v17 = operator new(v16);
              v127.__r_.__value_.__l.__size_ = v14 + 1;
              v127.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
              v127.__r_.__value_.__r.__words[0] = v17;
            }

            if (v13 >= 0)
            {
              v18 = a1;
            }

            else
            {
              v18 = *a1;
            }

            memmove(v17, v18, v14);
LABEL_27:
            *&v17[v14] = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v143;
            }

            else
            {
              v19 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v143.__r_.__value_.__l.__size_;
            }

            v21 = std::string::append(&v127, v19, size);
            v22 = *&v21->__r_.__value_.__l.__data_;
            __p[2] = v21->__r_.__value_.__r.__words[2];
            *__p = v22;
            v21->__r_.__value_.__l.__size_ = 0;
            v21->__r_.__value_.__r.__words[2] = 0;
            v21->__r_.__value_.__r.__words[0] = 0;
            is_directory = ctu::fs::is_directory();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_35:
                if (is_directory)
                {
                  goto LABEL_36;
                }

                goto LABEL_47;
              }
            }

            else if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_35;
            }

            operator delete(v127.__r_.__value_.__l.__data_);
            if (is_directory)
            {
LABEL_36:
              v24 = *(a1 + 23);
              if (v24 >= 0)
              {
                v25 = *(a1 + 23);
              }

              else
              {
                v25 = a1[1];
              }

              v26 = v25 + 1;
              if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              if (v26 < 0x17)
              {
                memset(&v127, 0, sizeof(v127));
                v28 = &v127;
                *(&v127.__r_.__value_.__s + 23) = v25 + 1;
                if (v25)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                if ((v26 | 7) == 0x17)
                {
                  v27 = 25;
                }

                else
                {
                  v27 = (v26 | 7) + 1;
                }

                v28 = operator new(v27);
                v127.__r_.__value_.__l.__size_ = v25 + 1;
                v127.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
                v127.__r_.__value_.__r.__words[0] = v28;
LABEL_60:
                if (v24 >= 0)
                {
                  v35 = a1;
                }

                else
                {
                  v35 = *a1;
                }

                memmove(v28, v35, v25);
              }

              *&v28[v25] = 47;
              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v36 = &v143;
              }

              else
              {
                v36 = v143.__r_.__value_.__r.__words[0];
              }

              if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v37 = v143.__r_.__value_.__l.__size_;
              }

              v38 = std::string::append(&v127, v36, v37);
              v39 = *&v38->__r_.__value_.__l.__data_;
              __p[2] = v38->__r_.__value_.__r.__words[2];
              *__p = v39;
              v38->__r_.__value_.__l.__size_ = 0;
              v38->__r_.__value_.__r.__words[2] = 0;
              v38->__r_.__value_.__r.__words[0] = 0;
              v40 = SHIBYTE(__p[2]);
              if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
              {
                v40 = __p[1];
                v42 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
                v43 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v43 != __p[1])
                {
                  v41 = __p[0];
                  goto LABEL_91;
                }

                if (v42 == 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v41 = __p[0];
                if (v43 > 0x3FFFFFFFFFFFFFF2)
                {
                  v47 = 0;
                  v46 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_76:
                  v44 = 2 * v43;
                  if (v42 > 2 * v43)
                  {
                    v44 = v42;
                  }

                  if ((v44 | 7) == 0x17)
                  {
                    v45 = 25;
                  }

                  else
                  {
                    v45 = (v44 | 7) + 1;
                  }

                  if (v44 >= 0x17)
                  {
                    v46 = v45;
                  }

                  else
                  {
                    v46 = 23;
                  }

                  v47 = v43 == 22;
                }

                v48 = operator new(v46);
                v49 = v48;
                if (v43)
                {
                  memmove(v48, v41, v43);
                }

                v49[v43] = 47;
                if (!v47)
                {
                  operator delete(v41);
                }

                __p[1] = v42;
                __p[2] = (v46 | 0x8000000000000000);
                __p[0] = v49;
                v50 = &v49[v42];
              }

              else
              {
                v41 = __p;
                if (SHIBYTE(__p[2]) == 22)
                {
                  v42 = 23;
                  v43 = 22;
                  goto LABEL_76;
                }

LABEL_91:
                *(v40 + v41) = 47;
                v51 = v40 + 1;
                if (SHIBYTE(__p[2]) < 0)
                {
                  __p[1] = v51;
                }

                else
                {
                  HIBYTE(__p[2]) = v51 & 0x7F;
                }

                v50 = &v51[v41];
              }

              *v50 = 0;
              *v125 = *__p;
              v126 = __p[2];
              memset(__p, 0, sizeof(__p));
              if (*(a2 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v124, *a2, *(a2 + 8));
              }

              else
              {
                v124 = *a2;
              }

              std::locale::locale(&v118, a5);
              v119 = *(a5 + 8);
              v120 = *(a5 + 24);
              v52 = *(a5 + 48);
              v121 = *(a5 + 40);
              v122 = v52;
              if (v52)
              {
                atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v123 = *(a5 + 56);
              util::moveDirContent(v125, &v124, a3, a4 - 1, &v118);
              v53 = v122;
              if (v122 && !atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v53->__on_zero_shared)(v53);
                std::__shared_weak_count::__release_weak(v53);
                std::locale::~locale(&v118);
                if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_103;
                }
              }

              else
              {
                std::locale::~locale(&v118);
                if ((SHIBYTE(v124.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_103:
                  if ((SHIBYTE(v126) & 0x80000000) == 0)
                  {
                    goto LABEL_104;
                  }

LABEL_109:
                  operator delete(v125[0]);
                  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_105;
                  }

                  goto LABEL_110;
                }
              }

              operator delete(v124.__r_.__value_.__l.__data_);
              if ((SHIBYTE(v126) & 0x80000000) == 0)
              {
LABEL_104:
                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                {
                  goto LABEL_105;
                }

                goto LABEL_110;
              }

              goto LABEL_109;
            }

LABEL_47:
            if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
            {
              qword_2A18CA8B0 = 0;
              qword_2A18CA8B8 = 0;
              __cxa_guard_release(&qword_2A18CA8A8);
            }

            if (_MergedGlobals_3 == -1)
            {
              v29 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
              v29 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            v30 = *(a1 + 23);
            if (v30 >= 0)
            {
              v31 = *(a1 + 23);
            }

            else
            {
              v31 = a1[1];
            }

            v32 = v31 + 1;
            if (v31 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v32 < 0x17)
            {
              memset(&v127, 0, sizeof(v127));
              v34 = &v127;
              *(&v127.__r_.__value_.__s + 23) = v31 + 1;
              if (!v31)
              {
                goto LABEL_120;
              }
            }

            else
            {
              if ((v32 | 7) == 0x17)
              {
                v33 = 25;
              }

              else
              {
                v33 = (v32 | 7) + 1;
              }

              v34 = operator new(v33);
              v127.__r_.__value_.__l.__size_ = v31 + 1;
              v127.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
              v127.__r_.__value_.__r.__words[0] = v34;
            }

            if (v30 >= 0)
            {
              v54 = a1;
            }

            else
            {
              v54 = *a1;
            }

            memmove(v34, v54, v31);
LABEL_120:
            *&v34[v31] = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = &v143;
            }

            else
            {
              v55 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v56 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v56 = v143.__r_.__value_.__l.__size_;
            }

            v57 = std::string::append(&v127, v55, v56);
            v58 = *&v57->__r_.__value_.__l.__data_;
            __p[2] = v57->__r_.__value_.__r.__words[2];
            *__p = v58;
            v57->__r_.__value_.__l.__size_ = 0;
            v57->__r_.__value_.__r.__words[2] = 0;
            v57->__r_.__value_.__r.__words[0] = 0;
            v59 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v59 = __p[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
            *(buf.__r_.__value_.__r.__words + 4) = v59;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
            _os_log_error_impl(&dword_296D7D000, v29, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
            if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
            {
LABEL_105:
              if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_111;
              }

              goto LABEL_112;
            }

LABEL_110:
            operator delete(__p[0]);
            if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_111:
              operator delete(v127.__r_.__value_.__l.__data_);
            }

LABEL_112:
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v143.__r_.__value_.__l.__data_);
            }

            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }
        }

        while (1)
        {
          memset(&v143, 170, sizeof(v143));
          if (*(v11 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v143, *v11, v11[1]);
          }

          else
          {
            v65 = *v11;
            v143.__r_.__value_.__r.__words[2] = v11[2];
            *&v143.__r_.__value_.__l.__data_ = v65;
          }

          memset(__p, 170, sizeof(__p));
          v66 = *(a2 + 23);
          if (v66 >= 0)
          {
            v67 = *(a2 + 23);
          }

          else
          {
            v67 = *(a2 + 8);
          }

          v68 = v67 + 1;
          if (v67 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v68 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            p_buf = &buf;
            *(&buf.__r_.__value_.__s + 23) = v67 + 1;
            if (!v67)
            {
              goto LABEL_169;
            }
          }

          else
          {
            if ((v68 | 7) == 0x17)
            {
              v69 = 25;
            }

            else
            {
              v69 = (v68 | 7) + 1;
            }

            p_buf = operator new(v69);
            buf.__r_.__value_.__l.__size_ = v67 + 1;
            buf.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = p_buf;
          }

          if (v66 >= 0)
          {
            v71 = a2;
          }

          else
          {
            v71 = *a2;
          }

          memmove(p_buf, v71, v67);
LABEL_169:
          *(&p_buf->__r_.__value_.__l.__data_ + v67) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v72 = &v143;
          }

          else
          {
            v72 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v73 = v143.__r_.__value_.__l.__size_;
          }

          v74 = std::string::append(&buf, v72, v73);
          v75 = *&v74->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v75;
          v74->__r_.__value_.__l.__size_ = 0;
          v74->__r_.__value_.__r.__words[2] = 0;
          v74->__r_.__value_.__r.__words[0] = 0;
          ctu::fs::get_unique_filename();
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_177;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_177;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
LABEL_177:
          v76 = *(a1 + 23);
          if (v76 >= 0)
          {
            v77 = *(a1 + 23);
          }

          else
          {
            v77 = a1[1];
          }

          v78 = v77 + 1;
          if (v77 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v78 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v80 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v77 + 1;
            if (!v77)
            {
              goto LABEL_191;
            }
          }

          else
          {
            if ((v78 | 7) == 0x17)
            {
              v79 = 25;
            }

            else
            {
              v79 = (v78 | 7) + 1;
            }

            v80 = operator new(v79);
            buf.__r_.__value_.__l.__size_ = v77 + 1;
            buf.__r_.__value_.__r.__words[2] = v79 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v80;
          }

          if (v76 >= 0)
          {
            v81 = a1;
          }

          else
          {
            v81 = *a1;
          }

          memmove(v80, v81, v77);
LABEL_191:
          *(&v80->__r_.__value_.__l.__data_ + v77) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v82 = &v143;
          }

          else
          {
            v82 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v83 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v83 = v143.__r_.__value_.__l.__size_;
          }

          v84 = std::string::append(&buf, v82, v83);
          v85 = *&v84->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v85;
          v84->__r_.__value_.__l.__size_ = 0;
          v84->__r_.__value_.__r.__words[2] = 0;
          v84->__r_.__value_.__r.__words[0] = 0;
          v86 = ctu::fs::rename();
          if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_199:
              explicit = atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire);
              if (v86)
              {
                goto LABEL_200;
              }

              goto LABEL_216;
            }
          }

          else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_199;
          }

          operator delete(buf.__r_.__value_.__l.__data_);
          explicit = atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire);
          if (v86)
          {
LABEL_200:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
            {
              qword_2A18CA8B0 = 0;
              qword_2A18CA8B8 = 0;
              __cxa_guard_release(&qword_2A18CA8A8);
            }

            if (_MergedGlobals_3 == -1)
            {
              v88 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
              v88 = qword_2A18CA8B8;
              if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            v89 = *(a1 + 23);
            if (v89 >= 0)
            {
              v90 = *(a1 + 23);
            }

            else
            {
              v90 = a1[1];
            }

            v91 = v90 + 1;
            if (v90 + 1 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v91 < 0x17)
            {
              memset(&buf, 0, sizeof(buf));
              v93 = &buf;
              *(&buf.__r_.__value_.__s + 23) = v90 + 1;
              if (v90)
              {
                goto LABEL_229;
              }
            }

            else
            {
              if ((v91 | 7) == 0x17)
              {
                v92 = 25;
              }

              else
              {
                v92 = (v91 | 7) + 1;
              }

              v93 = operator new(v92);
              buf.__r_.__value_.__l.__size_ = v90 + 1;
              buf.__r_.__value_.__r.__words[2] = v92 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v93;
LABEL_229:
              if (v89 >= 0)
              {
                v100 = a1;
              }

              else
              {
                v100 = *a1;
              }

              memmove(v93, v100, v90);
            }

            *(&v93->__r_.__value_.__l.__data_ + v90) = 47;
            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v101 = &v143;
            }

            else
            {
              v101 = v143.__r_.__value_.__r.__words[0];
            }

            if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v102 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v102 = v143.__r_.__value_.__l.__size_;
            }

            v103 = std::string::append(&buf, v101, v102);
            v104 = *&v103->__r_.__value_.__l.__data_;
            v127.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
            *&v127.__r_.__value_.__l.__data_ = v104;
            v103->__r_.__value_.__l.__size_ = 0;
            v103->__r_.__value_.__r.__words[2] = 0;
            v103->__r_.__value_.__r.__words[0] = 0;
            v105 = &v127;
            if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v105 = v127.__r_.__value_.__r.__words[0];
            }

            v106 = __p;
            if (SHIBYTE(__p[2]) < 0)
            {
              v106 = __p[0];
            }

            *v138 = 136315394;
            v139 = v105;
            v140 = 2080;
            v141 = v106;
            _os_log_impl(&dword_296D7D000, v88, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v138, 0x16u);
            if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_244;
            }

            goto LABEL_262;
          }

LABEL_216:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
          {
            qword_2A18CA8B0 = 0;
            qword_2A18CA8B8 = 0;
            __cxa_guard_release(&qword_2A18CA8A8);
          }

          if (_MergedGlobals_3 == -1)
          {
            v94 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
            v94 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          v95 = *(a1 + 23);
          if (v95 >= 0)
          {
            v96 = *(a1 + 23);
          }

          else
          {
            v96 = a1[1];
          }

          v97 = v96 + 1;
          if (v96 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v97 < 0x17)
          {
            memset(&buf, 0, sizeof(buf));
            v99 = &buf;
            *(&buf.__r_.__value_.__s + 23) = v96 + 1;
            if (!v96)
            {
              goto LABEL_251;
            }
          }

          else
          {
            if ((v97 | 7) == 0x17)
            {
              v98 = 25;
            }

            else
            {
              v98 = (v97 | 7) + 1;
            }

            v99 = operator new(v98);
            buf.__r_.__value_.__l.__size_ = v96 + 1;
            buf.__r_.__value_.__r.__words[2] = v98 | 0x8000000000000000;
            buf.__r_.__value_.__r.__words[0] = v99;
          }

          if (v95 >= 0)
          {
            v107 = a1;
          }

          else
          {
            v107 = *a1;
          }

          memmove(v99, v107, v96);
LABEL_251:
          *(&v99->__r_.__value_.__l.__data_ + v96) = 47;
          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v108 = &v143;
          }

          else
          {
            v108 = v143.__r_.__value_.__r.__words[0];
          }

          if ((v143.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v109 = HIBYTE(v143.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v109 = v143.__r_.__value_.__l.__size_;
          }

          v110 = std::string::append(&buf, v108, v109);
          v111 = *&v110->__r_.__value_.__l.__data_;
          v127.__r_.__value_.__r.__words[2] = v110->__r_.__value_.__r.__words[2];
          *&v127.__r_.__value_.__l.__data_ = v111;
          v110->__r_.__value_.__l.__size_ = 0;
          v110->__r_.__value_.__r.__words[2] = 0;
          v110->__r_.__value_.__r.__words[0] = 0;
          v112 = &v127;
          if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v112 = v127.__r_.__value_.__r.__words[0];
          }

          v113 = __p;
          if (SHIBYTE(__p[2]) < 0)
          {
            v113 = __p[0];
          }

          *v138 = 136315394;
          v139 = v112;
          v140 = 2080;
          v141 = v113;
          _os_log_error_impl(&dword_296D7D000, v94, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v138, 0x16u);
          if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_244:
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_263;
            }

            goto LABEL_264;
          }

LABEL_262:
          operator delete(v127.__r_.__value_.__l.__data_);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_263:
            operator delete(buf.__r_.__value_.__l.__data_);
          }

LABEL_264:
          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
            if ((SHIBYTE(v143.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_151;
            }

LABEL_266:
            operator delete(v143.__r_.__value_.__l.__data_);
            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }

          else
          {
            if (SHIBYTE(v143.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_266;
            }

LABEL_151:
            v11 += 3;
            if (v11 == v117)
            {
              goto LABEL_138;
            }
          }
        }
      }

      goto LABEL_138;
    }
  }

  else
  {
    std::locale::~locale(&v129);
    if (filtered_files)
    {
      goto LABEL_6;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 == -1)
  {
    v60 = qword_2A18CA8B8;
    if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
    v60 = qword_2A18CA8B8;
    if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  v114 = a1;
  if (*(a1 + 23) < 0)
  {
    v114 = *a1;
  }

  LODWORD(v143.__r_.__value_.__l.__data_) = 136315138;
  *(v143.__r_.__value_.__r.__words + 4) = v114;
  _os_log_error_impl(&dword_296D7D000, v60, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v143, 0xCu);
LABEL_138:
  if (a3)
  {
    ctu::fs::remove_dir();
  }

  v61 = v135;
  if (v135)
  {
    v62 = v136;
    v63 = v135;
    if (v136 != v135)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      v63 = v135;
    }

    v136 = v61;
    operator delete(v63);
  }
}

void sub_296E14C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (*(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  std::vector<std::string>::~vector[abi:ne200100]((v52 - 216));
  _Unwind_Resume(a1);
}

void util::generateSHA256(const char *a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = *MEMORY[0x29EDCA608];
  v8 = operator new(0x20uLL);
  *(a4 + 8) = v8 + 2;
  *(a4 + 16) = v8 + 2;
  *v8 = 0u;
  v8[1] = 0u;
  *a4 = v8;
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v14 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v14 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    LOWORD(c.count[0]) = 0;
    v15 = "dataIn buffer is NULL";
    p_c = &c;
    v17 = v14;
    v18 = 2;
LABEL_20:
    _os_log_error_impl(&dword_296D7D000, v17, OS_LOG_TYPE_ERROR, v15, p_c, v18);
    return;
  }

  *&c.wbuf[14] = 0xAAAAAAAAAAAAAAAALL;
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&c.wbuf[6] = v9;
  *&c.wbuf[10] = v9;
  *&c.hash[6] = v9;
  *&c.wbuf[2] = v9;
  *c.count = v9;
  *&c.hash[2] = v9;
  if (!ctu::fs::get_file_size())
  {
    return;
  }

  CC_SHA256_Init(&c);
  v10 = a1;
  if (a1[23] < 0)
  {
    v10 = *a1;
  }

  v11 = open(v10, 0);
  if (v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      v13 = read(v11, a2, a3);
      if (v13 == -1)
      {
        break;
      }

      CC_SHA256_Update(&c, a2, v13);
      v12 += v13;
      if (v12 >= 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_24;
      }
    }

    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v24 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        CC_SHA256_Final(*a4, &c);
        close(v11);
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v24 = qword_2A18CA8B8;
      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v25 = __error();
    v26 = strerror(*v25);
    v27 = *__error();
    v28 = *__error();
    *buf = 136315906;
    v31 = a1;
    v32 = 2080;
    v33 = v26;
    v34 = 1024;
    v35 = v27;
    v36 = 1024;
    v37 = v28;
    _os_log_error_impl(&dword_296D7D000, v24, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
    goto LABEL_24;
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 == -1)
  {
    v19 = qword_2A18CA8B8;
    if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_17;
  }

  dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  v19 = qword_2A18CA8B8;
  if (os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
  {
LABEL_17:
    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v20 = __error();
    v21 = strerror(*v20);
    v22 = *__error();
    v23 = *__error();
    *buf = 136315906;
    v31 = a1;
    v32 = 2080;
    v33 = v21;
    v34 = 1024;
    v35 = v22;
    v36 = 1024;
    v37 = v23;
    v15 = "Failed to open %s : %s (%d, 0x%x)";
    p_c = buf;
    v17 = v19;
    v18 = 34;
    goto LABEL_20;
  }
}

void sub_296E1526C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL util::markPurgeableFile(const char *a1)
{
  v1 = a1;
  v26 = *MEMORY[0x29EDCA608];
  v15 = 65541;
  if ((a1[23] & 0x80000000) == 0)
  {
    v2 = open(a1, 0);
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
    {
      qword_2A18CA8B0 = 0;
      qword_2A18CA8B8 = 0;
      __cxa_guard_release(&qword_2A18CA8A8);
    }

    if (_MergedGlobals_3 == -1)
    {
      v12 = qword_2A18CA8B8;
      result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
      v12 = qword_2A18CA8B8;
      result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    if (v1[23] < 0)
    {
      v1 = *v1;
    }

    v13 = __error();
    v14 = strerror(*v13);
    *buf = 136315394;
    v17 = v1;
    v18 = 2080;
    v19 = v14;
    v9 = "Failed to open %s : %s";
    v10 = v12;
    v11 = 22;
    goto LABEL_17;
  }

  v2 = open(*a1, 0);
  if (v2 < 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  v3 = v2;
  v4 = ffsctl(v2, 0xC0084A44uLL, &v15, 0);
  close(v3);
  if (!v4)
  {
    return 1;
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 == -1)
  {
    v5 = qword_2A18CA8B8;
    result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
    if (result)
    {
LABEL_7:
      if (v1[23] < 0)
      {
        v1 = *v1;
      }

      v7 = __error();
      v8 = strerror(*v7);
      *buf = 136316162;
      v17 = v1;
      v18 = 2080;
      v19 = v8;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = v4;
      v24 = 2048;
      v25 = v15;
      v9 = "Failed to mark %s as purgeable: %s (%d, 0x%x) (flags 0x%llx)";
      v10 = v5;
      v11 = 44;
LABEL_17:
      _os_log_error_impl(&dword_296D7D000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      return 0;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
    v5 = qword_2A18CA8B8;
    result = os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, __darwin_time_t a2, uint64_t a3)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v48 = 0xAAAAAAAAAAAAAA00;
  v50 = v4;
  v47 = 0;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51 = 0;
  memset(v45, 0, sizeof(v45));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v54 = 0xAAAAAAAAAAAAAA00;
  __p.tm_gmtoff = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  __p.tm_zone = 0;
  v53 = 0;
  v55 = 0;
  v56 = 0;
  LOBYTE(v57) = 0;
  BYTE8(v57) = 0;
  v58 = 0;
  memset(&__p, 0, 41);
  v8 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a3, v6, (v6 + v7), &__p, 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v45, v6, (v6 + v7), &__p.tm_sec, 0);
  if (*&__p.tm_sec)
  {
    *&__p.tm_hour = *&__p.tm_sec;
    operator delete(*&__p.tm_sec);
  }

  if (v8 && (v50 & 1) == 0)
  {
    memset(&__p, 0, sizeof(__p));
    v12 = *v45;
    if (*(*v45 + 40) != 1)
    {
      memset(&__dst, 0, sizeof(__dst));
LABEL_21:
      util::convert<int>(&__dst, &__p.tm_year);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
LABEL_23:
          v17 = *(v12 + 48);
          v18 = *(v12 + 56);
          v19 = v18 - v17;
          if ((v18 - v17) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v19 > 0x16)
          {
            if ((v19 | 7) == 0x17)
            {
              v39 = 25;
            }

            else
            {
              v39 = (v19 | 7) + 1;
            }

            p_dst = operator new(v39);
            __dst.__r_.__value_.__l.__size_ = v18 - v17;
            __dst.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = p_dst;
            if (v18 == v17)
            {
              goto LABEL_27;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v18 - v17;
            p_dst = &__dst;
            if (v18 == v17)
            {
LABEL_27:
              p_dst->__r_.__value_.__s.__data_[v19] = 0;
              goto LABEL_30;
            }
          }

          memmove(p_dst, v17, v18 - v17);
          goto LABEL_27;
        }
      }

      else
      {
        __p.tm_year -= 1900;
        if (*(v12 + 64) == 1)
        {
          goto LABEL_23;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_30:
      util::convert<int>(&__dst, &__p.tm_mon);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
LABEL_32:
          v21 = *(v12 + 72);
          v22 = *(v12 + 80);
          v23 = v22 - v21;
          if ((v22 - v21) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v23 > 0x16)
          {
            if ((v23 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v23 | 7) + 1;
            }

            v24 = operator new(v40);
            __dst.__r_.__value_.__l.__size_ = v22 - v21;
            __dst.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v24;
            if (v22 == v21)
            {
              goto LABEL_36;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v22 - v21;
            v24 = &__dst;
            if (v22 == v21)
            {
LABEL_36:
              v24->__r_.__value_.__s.__data_[v23] = 0;
              goto LABEL_39;
            }
          }

          memmove(v24, v21, v22 - v21);
          goto LABEL_36;
        }
      }

      else
      {
        --__p.tm_mon;
        if (*(v12 + 88) == 1)
        {
          goto LABEL_32;
        }
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_39:
      util::convert<int>(&__dst, (&__p | 0xC));
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 112) == 1)
        {
LABEL_41:
          v25 = *(v12 + 96);
          v26 = *(v12 + 104);
          v27 = v26 - v25;
          if ((v26 - v25) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v27 > 0x16)
          {
            if ((v27 | 7) == 0x17)
            {
              v41 = 25;
            }

            else
            {
              v41 = (v27 | 7) + 1;
            }

            v28 = operator new(v41);
            __dst.__r_.__value_.__l.__size_ = v26 - v25;
            __dst.__r_.__value_.__r.__words[2] = v41 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v28;
            if (v26 == v25)
            {
              goto LABEL_45;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v26 - v25;
            v28 = &__dst;
            if (v26 == v25)
            {
LABEL_45:
              v28->__r_.__value_.__s.__data_[v27] = 0;
              goto LABEL_48;
            }
          }

          memmove(v28, v25, v26 - v25);
          goto LABEL_45;
        }
      }

      else if (*(v12 + 112) == 1)
      {
        goto LABEL_41;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_48:
      util::convert<int>(&__dst, &__p.tm_hour);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 136) == 1)
        {
LABEL_50:
          v29 = *(v12 + 120);
          v30 = *(v12 + 128);
          v31 = v30 - v29;
          if ((v30 - v29) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v31 > 0x16)
          {
            if ((v31 | 7) == 0x17)
            {
              v42 = 25;
            }

            else
            {
              v42 = (v31 | 7) + 1;
            }

            v32 = operator new(v42);
            __dst.__r_.__value_.__l.__size_ = v30 - v29;
            __dst.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v32;
            if (v30 == v29)
            {
              goto LABEL_54;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v30 - v29;
            v32 = &__dst;
            if (v30 == v29)
            {
LABEL_54:
              v32->__r_.__value_.__s.__data_[v31] = 0;
              goto LABEL_57;
            }
          }

          memmove(v32, v29, v30 - v29);
          goto LABEL_54;
        }
      }

      else if (*(v12 + 136) == 1)
      {
        goto LABEL_50;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_57:
      util::convert<int>(&__dst, &__p.tm_min);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v12 + 160) == 1)
        {
LABEL_59:
          v33 = *(v12 + 144);
          v34 = *(v12 + 152);
          v35 = v34 - v33;
          if ((v34 - v33) > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v35 > 0x16)
          {
            if ((v35 | 7) == 0x17)
            {
              v43 = 25;
            }

            else
            {
              v43 = (v35 | 7) + 1;
            }

            v36 = operator new(v43);
            __dst.__r_.__value_.__l.__size_ = v34 - v33;
            __dst.__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
            __dst.__r_.__value_.__r.__words[0] = v36;
            if (v34 == v33)
            {
              goto LABEL_63;
            }
          }

          else
          {
            *(&__dst.__r_.__value_.__s + 23) = v34 - v33;
            v36 = &__dst;
            if (v34 == v33)
            {
LABEL_63:
              v36->__r_.__value_.__s.__data_[v35] = 0;
              goto LABEL_66;
            }
          }

          memmove(v36, v33, v34 - v33);
          goto LABEL_63;
        }
      }

      else if (*(v12 + 160) == 1)
      {
        goto LABEL_59;
      }

      memset(&__dst, 0, sizeof(__dst));
LABEL_66:
      util::convert<int>(&__dst, &__p);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      __p.tm_isdst = -1;
      v37 = mktime(&__p);
      __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      gettimeofday(&__dst, 0);
      v9 = (__dst.__r_.__value_.__r.__words[0] - v37) > a2;
      v10 = *v45;
      if (*v45)
      {
        goto LABEL_12;
      }

      return v9;
    }

    v13 = *(*v45 + 24);
    v14 = *(*v45 + 32);
    v15 = v14 - v13;
    if ((v14 - v13) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v15 > 0x16)
    {
      if ((v15 | 7) == 0x17)
      {
        v38 = 25;
      }

      else
      {
        v38 = (v15 | 7) + 1;
      }

      v16 = operator new(v38);
      __dst.__r_.__value_.__l.__size_ = v14 - v13;
      __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = v16;
      if (v14 == v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      *(&__dst.__r_.__value_.__s + 23) = v14 - v13;
      v16 = &__dst;
      if (v14 == v13)
      {
LABEL_19:
        v16->__r_.__value_.__s.__data_[v15] = 0;
        goto LABEL_21;
      }
    }

    memmove(v16, v13, v14 - v13);
    goto LABEL_19;
  }

  v9 = 0;
  v10 = *v45;
  if (*v45)
  {
LABEL_12:
    *&v45[8] = v10;
    operator delete(v10);
  }

  return v9;
}

void sub_296E15B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    result = strcasecmp(a1, "false");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "off");
    if (!result)
    {
      goto LABEL_29;
    }

    result = strcasecmp(a1, "no");
    if (!result)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }

LABEL_28:
    result = 1;
LABEL_29:
    *a2 = result;
    return result;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  result = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "off");
  if (!result)
  {
    goto LABEL_29;
  }

  result = strcasecmp(v5, "no");
  if (!result)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_31:
    result = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_31;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  result = std::stol(a1, &__idx, 10);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx == size && result >= 0xFFFFFFFF80000000 && result <= 0x7FFFFFFF)
  {
    goto LABEL_29;
  }

  return result;
}

void util::findBasebandLogInfoFile(const void **a1@<X0>, __int128 **a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v49 = a2[1];
  if (v3 == v49)
  {
    return;
  }

  v48 = &v49 + 3;
  while (1)
  {
    memset(&v51, 170, sizeof(v51));
    if (*(v3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      v51.__r_.__value_.__r.__words[2] = *(v3 + 16);
      *&v51.__r_.__value_.__l.__data_ = v5;
    }

    memset(__p, 170, sizeof(__p));
    v6 = *(a1 + 23);
    if (v6 >= 0)
    {
      v7 = *(a1 + 23);
    }

    else
    {
      v7 = a1[1];
    }

    v8 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    v10 = size + v7;
    if (size + v7 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v10 <= 0x16)
    {
      memset(__p, 0, sizeof(__p));
      v12 = __p;
      HIBYTE(__p[2]) = size + v7;
      if (!v7)
      {
        goto LABEL_25;
      }

LABEL_21:
      if (v6 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      memmove(v12, v13, v7);
      goto LABEL_25;
    }

    if ((v10 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v10 | 7) + 1;
    }

    v12 = operator new(v11);
    __p[1] = (size + v7);
    __p[2] = (v11 | 0x8000000000000000);
    __p[0] = v12;
    if (v7)
    {
      goto LABEL_21;
    }

LABEL_25:
    v14 = &v12[v7];
    if (size)
    {
      if (v8 >= 0)
      {
        v15 = &v51;
      }

      else
      {
        v15 = v51.__r_.__value_.__r.__words[0];
      }

      memmove(v14, v15, size);
    }

    v14[size] = 0;
    v16.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v16.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v52.st_blksize = v16;
    *v52.st_qspare = v16;
    v52.st_birthtimespec = v16;
    *&v52.st_size = v16;
    v52.st_mtimespec = v16;
    v52.st_ctimespec = v16;
    *&v52.st_uid = v16;
    v52.st_atimespec = v16;
    *&v52.st_dev = v16;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if (stat(v17, &v52) || (SHIBYTE(__p[2]) >= 0 ? (v19 = __p) : (v19 = __p[0]), v20 = opendir(v19), (v21 = v20) == 0))
    {
      v18 = HIBYTE(__p[2]);
      goto LABEL_35;
    }

    v22 = readdir(v20);
    closedir(v21);
    v18 = HIBYTE(__p[2]);
    if (v22)
    {
      break;
    }

LABEL_35:
    if (v18 < 0)
    {
      operator delete(__p[0]);
      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_60:
        operator delete(v51.__r_.__value_.__l.__data_);
      }
    }

    else if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_60;
    }

    v3 += 24;
    if (v3 == v49)
    {
      return;
    }
  }

  if ((HIBYTE(__p[2]) & 0x80) == 0)
  {
    if (HIBYTE(__p[2]) <= 4u)
    {
      goto LABEL_100;
    }

    v23 = &v48[HIBYTE(__p[2])];
    if (*v23 == 1885626669 && v48[HIBYTE(__p[2]) + 4] == 108)
    {
      goto LABEL_80;
    }

    if (*v23 == 1935962413 && v23[4] == 115)
    {
      goto LABEL_80;
    }

    v26 = *v23;
    v27 = v23[4];
    if (v26 == 1634296877 && v27 == 103)
    {
      goto LABEL_80;
    }

    if (HIBYTE(__p[2]) < 9u)
    {
      goto LABEL_100;
    }

    v29 = __p;
    v30 = HIBYTE(__p[2]);
    goto LABEL_75;
  }

  v30 = __p[1];
  if (__p[1] < 5)
  {
    goto LABEL_100;
  }

  v29 = __p[0];
  v31 = __p[0] + __p[1];
  if ((*(__p[0] + __p[1] - 5) != 1885626669 || *(__p[0] + __p[1] - 1) != 108) && (*(v31 - 5) != 1935962413 || *(v31 - 1) != 115))
  {
    v34 = *(v31 - 5);
    v35 = *(v31 - 1);
    if (v34 != 1634296877 || v35 != 103)
    {
      if (__p[1] < 9)
      {
LABEL_100:
        std::string::__throw_out_of_range[abi:ne200100]();
      }

LABEL_75:
      v37 = v29 + v30;
      v38 = *(v37 - 9);
      v39 = *(v37 - 1);
      if (v38 == 0x636172742D62622DLL && v39 == 101)
      {
        goto LABEL_80;
      }

      goto LABEL_35;
    }
  }

LABEL_80:
  v41 = SHIBYTE(v51.__r_.__value_.__r.__words[2]);
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v51.__r_.__value_.__l.__size_;
  }

  v43 = v42 + 9;
  if (v42 + 9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v43 < 0x17)
  {
    memset(&v52, 0, 24);
    v45 = &v52;
    HIBYTE(v52.st_gid) = v42 + 9;
    if (v42)
    {
      goto LABEL_90;
    }
  }

  else
  {
    if ((v43 | 7) == 0x17)
    {
      v44 = 25;
    }

    else
    {
      v44 = (v43 | 7) + 1;
    }

    v45 = operator new(v44);
    v52.st_ino = v42 + 9;
    *&v52.st_uid = v44 | 0x8000000000000000;
    *&v52.st_dev = v45;
LABEL_90:
    if (v41 >= 0)
    {
      v46 = &v51;
    }

    else
    {
      v46 = v51.__r_.__value_.__r.__words[0];
    }

    memmove(v45, v46, v42);
  }

  strcpy(v45 + v42, "/info.txt");
  *a3 = *&v52.st_dev;
  a3[2] = *&v52.st_uid;
  if ((v18 & 0x80) == 0)
  {
    if ((v41 & 0x80) == 0)
    {
      return;
    }

LABEL_98:
    operator delete(v51.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if ((*(&v51.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_98;
  }
}

void sub_296E16280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

uint64_t util::isDumpForSysdiagnose(uint64_t a1, uint64_t a2)
{
  v88 = *MEMORY[0x29EDCA608];
  v81 = 0;
  v82 = 0;
  v83 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v79[32] = v2;
  v80 = v2;
  *v79 = v2;
  *&v79[16] = v2;
  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = *(a2 + 8);
  }

  v5 = v4 + 2;
  if (v4 + 2 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = a2;
  if (v5 < 0x17)
  {
    v78[1] = 0;
    v78[2] = 0;
    HIBYTE(v78[2]) = v4 + 2;
    v10 = v78 + 2;
    v78[0] = 10798;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    v9 = operator new(v8);
    v78[1] = (v4 + 2);
    v78[2] = (v8 | 0x8000000000000000);
    v78[0] = v9;
    *v9 = 10798;
    v10 = v9 + 2;
  }

  if (v3 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = *v6;
  }

  memmove(v10, v11, v4);
LABEL_15:
  v10[v4] = 0;
  v12 = SHIBYTE(v78[2]);
  if ((SHIBYTE(v78[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v78[2]) - 21) < 2)
    {
      v13 = (SHIBYTE(v78[2]) + 2);
      v14 = v78;
      v15 = 22;
LABEL_21:
      v16 = 2 * v15;
      if (v13 > 2 * v15)
      {
        v16 = v13;
      }

      if ((v16 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v16 | 7) + 1;
      }

      if (v16 >= 0x17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 23;
      }

      v19 = v15 == 22;
      goto LABEL_30;
    }

    v23 = v78;
    *(v78 + SHIBYTE(v78[2])) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v12 = v78[1];
  v15 = (v78[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - v78[1] >= 2)
  {
    v23 = v78[0];
    *(v78[0] + v78[1]) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v78[2]) = v24 & 0x7F;
LABEL_39:
      v22 = &v24[v23];
      goto LABEL_40;
    }

LABEL_38:
    v78[1] = v24;
    goto LABEL_39;
  }

  v13 = v78[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v78[2] & 0x7FFFFFFFFFFFFFFFLL)) < v78[1] - v15 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v78[0];
  if (v15 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v19 = 0;
  v18 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v20 = operator new(v18);
  v21 = v20;
  if (v12)
  {
    memmove(v20, v14, v12);
  }

  *(v21 + v12) = 10798;
  if (!v19)
  {
    operator delete(v14);
  }

  v78[1] = v13;
  v78[2] = (v18 | 0x8000000000000000);
  v78[0] = v21;
  v22 = &v13[v21];
LABEL_40:
  *v22 = 0;
  *&__p[0].__traits_.__loc_.__locale_ = *v78;
  __p[0].__traits_.__col_ = v78[2];
  memset(v78, 0, sizeof(v78));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v79, __p, 0);
  if ((SHIBYTE(__p[0].__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v78[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v78[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0].__traits_.__loc_.__locale_);
  if (SHIBYTE(v78[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v77 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v77, *a1, *(a1 + 8));
LABEL_47:
  std::locale::locale(&v71, v79);
  v72 = *&v79[8];
  v73 = *&v79[24];
  v74 = *&v79[40];
  v75 = v80;
  if (v80)
  {
    atomic_fetch_add_explicit((v80 + 8), 1uLL, memory_order_relaxed);
  }

  v76 = *(&v80 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v77, &v71, &v81, 0);
  v26 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    std::locale::~locale(&v71);
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v27 = 0;
      v28 = v80;
      if (!v80)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else
  {
    std::locale::~locale(&v71);
    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v77.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v78, 170, sizeof(v78));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, *a1, *(a1 + 8));
  }

  else
  {
    v70 = *a1;
  }

  v67 = 0;
  v68 = 0;
  v69 = 0;
  v29 = v81;
  v30 = v82;
  *buf = &v67;
  *&buf[8] = 0xAAAAAAAAAAAAAA00;
  v31 = v82 - v81;
  if (v82 != v81)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v31 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v32 = operator new(v82 - v81);
    v67 = v32;
    v68 = v32;
    v69 = v32 + v31;
    v84 = v32;
    v85 = v32;
    __p[0].__traits_.__loc_.__locale_ = &v67;
    __p[0].__traits_.__ct_ = &v84;
    __p[0].__traits_.__col_ = &v85;
    *&__p[0].__flags_ = 0xAAAAAAAAAAAAAA00;
    do
    {
      while ((*(v29 + 23) & 0x80000000) == 0)
      {
        v33 = *v29;
        v32->__r_.__value_.__r.__words[2] = v29[2];
        *&v32->__r_.__value_.__l.__data_ = v33;
        ++v32;
        v29 += 3;
        v85 = v32;
        if (v29 == v30)
        {
          goto LABEL_66;
        }
      }

      std::string::__init_copy_ctor_external(v32, *v29, v29[1]);
      v29 += 3;
      v32 = ++v85;
    }

    while (v29 != v30);
LABEL_66:
    v68 = v32;
  }

  util::findBasebandLogInfoFile(&v70.__r_.__value_.__l.__data_, &v67, v78);
  v34 = v67;
  if (v67)
  {
    p_data = &v68->__r_.__value_.__l.__data_;
    v36 = v67;
    if (v68 != v67)
    {
      do
      {
        v37 = *(p_data - 1);
        p_data -= 3;
        if (v37 < 0)
        {
          operator delete(*p_data);
        }
      }

      while (p_data != v34);
      v36 = v67;
    }

    v68 = v34;
    operator delete(v36);
  }

  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    v38 = SHIBYTE(v78[2]);
    if (SHIBYTE(v78[2]) >= 0)
    {
      v39 = HIBYTE(v78[2]);
    }

    else
    {
      v39 = v78[1];
    }

    if (v39)
    {
LABEL_80:
      memset(__p, 170, sizeof(__p));
      v40 = *(a1 + 23);
      if (v40 >= 0)
      {
        v41 = *(a1 + 23);
      }

      else
      {
        v41 = *(a1 + 8);
      }

      v42 = v41 + v39;
      if (v41 + v39 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v42 <= 0x16)
      {
        memset(buf, 0, 24);
        v44 = buf;
        buf[23] = v41 + v39;
        if (!v41)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if ((v42 | 7) == 0x17)
        {
          v43 = 25;
        }

        else
        {
          v43 = (v42 | 7) + 1;
        }

        v44 = operator new(v43);
        *&buf[8] = v41 + v39;
        *&buf[16] = v43 | 0x8000000000000000;
        *buf = v44;
        if (!v41)
        {
LABEL_111:
          v47 = &v44[v41];
          if (v38 >= 0)
          {
            v48 = v78;
          }

          else
          {
            v48 = v78[0];
          }

          memmove(v47, v48, v39);
          v47[v39] = 0;
          std::ifstream::basic_ifstream(__p, buf, 8);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[2].__traits_.__ct_)
            {
              goto LABEL_116;
            }
          }

          else if (__p[2].__traits_.__ct_)
          {
LABEL_116:
            std::istream::seekg();
            memset(buf, 170, 24);
            v49 = buf;
            support::fs::readCurrentLine(__p, buf);
            v50 = buf[23];
            v52 = *buf;
            v51 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v49 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v51 = buf[23];
            }

            if (v51 >= 35)
            {
              v53 = &v49[v51];
              v54 = v49;
              do
              {
                v55 = memchr(v54, 98, v51 - 34);
                if (!v55)
                {
                  break;
                }

                if (*v55 == 0x6320676F6C206262 && *(v55 + 1) == 0x6F697463656C6C6FLL && *(v55 + 2) == 0x20726F66202D206ELL && *(v55 + 3) == 0x6E67616964737973 && *(v55 + 27) == 0x65736F6E67616964)
                {
                  if (v55 != v53 && v55 - v49 != -1)
                  {
                    v27 = 1;
                    goto LABEL_148;
                  }

                  break;
                }

                v54 = v55 + 1;
                v51 = v53 - v54;
              }

              while (v53 - v54 >= 35);
            }

            v27 = 0;
LABEL_148:
            if (v50 < 0)
            {
              operator delete(v52);
            }

LABEL_150:
            __p[0].__traits_.__loc_.__locale_ = *MEMORY[0x29EDC9518];
            *(&__p[0].__traits_.__loc_.__locale_ + *(__p[0].__traits_.__loc_.__locale_ - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C265CC0](&__p[0].__traits_.__col_);
            std::istream::~istream();
            MEMORY[0x29C265F10](&__p[6].__start_);
            if (SHIBYTE(v78[2]) < 0)
            {
              goto LABEL_151;
            }

            goto LABEL_103;
          }

          if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
          {
            qword_2A18CA8B0 = 0;
            qword_2A18CA8B8 = 0;
            __cxa_guard_release(&qword_2A18CA8A8);
          }

          if (_MergedGlobals_3 == -1)
          {
            v60 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
LABEL_142:
              v27 = 0;
              goto LABEL_150;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
            v60 = qword_2A18CA8B8;
            if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_142;
            }
          }

          v66 = v78;
          if (SHIBYTE(v78[2]) < 0)
          {
            v66 = v78[0];
          }

          *buf = 136315138;
          *&buf[4] = v66;
          _os_log_error_impl(&dword_296D7D000, v60, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_142;
        }
      }

      if (v40 >= 0)
      {
        v46 = a1;
      }

      else
      {
        v46 = *a1;
      }

      memmove(v44, v46, v41);
      goto LABEL_111;
    }
  }

  else
  {
    v38 = SHIBYTE(v78[2]);
    if (SHIBYTE(v78[2]) >= 0)
    {
      v39 = HIBYTE(v78[2]);
    }

    else
    {
      v39 = v78[1];
    }

    if (v39)
    {
      goto LABEL_80;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
  {
    qword_2A18CA8B0 = 0;
    qword_2A18CA8B8 = 0;
    __cxa_guard_release(&qword_2A18CA8A8);
  }

  if (_MergedGlobals_3 != -1)
  {
    dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
  }

  v45 = qword_2A18CA8B8;
  v27 = 0;
  if (os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0].__traits_.__loc_.__locale_) = 136315138;
    *(&__p[0].__traits_.__loc_.__locale_ + 4) = v6;
    _os_log_impl(&dword_296D7D000, v45, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v27 = 0;
    if (SHIBYTE(v78[2]) < 0)
    {
LABEL_151:
      operator delete(v78[0]);
      v28 = v80;
      if (!v80)
      {
        goto LABEL_152;
      }

      goto LABEL_104;
    }
  }

  else if (SHIBYTE(v78[2]) < 0)
  {
    goto LABEL_151;
  }

LABEL_103:
  v28 = v80;
  if (!v80)
  {
    goto LABEL_152;
  }

LABEL_104:
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_152:
  std::locale::~locale(v79);
  v61 = v81;
  if (v81)
  {
    v62 = v82;
    v63 = v81;
    if (v82 != v81)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v61);
      v63 = v81;
    }

    v82 = v61;
    operator delete(v63);
  }

  return v27;
}

void sub_296E16D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_296E16DD4(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va1, a32);
  va_start(va, a32);
  v33.__locale_ = va_arg(va1, std::locale::__imp *);
  v35 = va_arg(va1, void);
  v36 = va_arg(va1, void);
  v37 = va_arg(va1, void);
  v38 = va_arg(va1, void);
  v39 = va_arg(va1, void);
  v40 = va_arg(va1, void);
  v41 = va_arg(va1, void);
  v42 = va_arg(va1, void);
  std::vector<std::string>::~vector[abi:ne200100](&a12);
  if (SHIBYTE(a17) < 0)
  {
    operator delete(a15);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  std::vector<std::string>::~vector[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_296E16DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](va);
  JUMPOUT(0x296E16EA8);
}

void sub_296E16DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  if ((a33 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a43);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296E16E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x296E16E20);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_296E16E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
    if (a33 < 0)
    {
LABEL_5:
      operator delete(a28);
      std::vector<std::string>::~vector[abi:ne200100](&a43);
      _Unwind_Resume(a1);
    }
  }

  else if (a33 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x296E16DF8);
}

void sub_296E16E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](va);
  JUMPOUT(0x296E16EA0);
}

void util::findLastLogDumpTimestamp(util *this@<X0>, const char *__s@<X1>, const char *a3@<X2>, int a4@<W3>, char *a5@<X4>, std::string *a6@<X8>)
{
  v7 = a3;
  v9 = a6;
  v148 = *MEMORY[0x29EDCA608];
  *&a6->__r_.__value_.__l.__data_ = 0uLL;
  a6->__r_.__value_.__r.__words[2] = 0;
  memset(&v139.__flags_, 0, 24);
  memset(&v139, 170, 24);
  v10 = strlen(__s);
  v104 = v9;
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v10 | 7) + 1;
    }

    p_cntrl = operator new(v18);
    v139.__end_ = v11;
    *v140 = v18 | 0x8000000000000000;
    v139.__start_.__cntrl_ = p_cntrl;
  }

  else
  {
    v140[7] = v10;
    p_cntrl = &v139.__start_.__cntrl_;
    if (!v10)
    {
      LOBYTE(v139.__start_.__cntrl_) = 0;
      end = v140[7];
      if ((v140[7] & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_cntrl, __s, v11);
  *(&v11->__vftable + p_cntrl) = 0;
  end = v140[7];
  if ((v140[7] & 0x8000000000000000) == 0)
  {
LABEL_5:
    if (end - 21 < 2)
    {
      v14 = v7;
      v15 = (end + 2);
      v16 = &v139.__start_.__cntrl_;
      v17 = 22;
LABEL_15:
      v19 = 2 * v17;
      if (v15 > 2 * v17)
      {
        v19 = v15;
      }

      if ((v19 | 7) == 0x17)
      {
        v20 = 25;
      }

      else
      {
        v20 = (v19 | 7) + 1;
      }

      if (v19 >= 0x17)
      {
        v21 = v20;
      }

      else
      {
        v21 = 23;
      }

      v22 = v17 == 22;
      goto LABEL_24;
    }

    cntrl = &v139.__start_.__cntrl_;
    *(&v139.__start_.__cntrl_ + end) = 10798;
    v27 = (end + 2);
    if ((v140[7] & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

LABEL_12:
  end = v139.__end_;
  v17 = (*v140 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v17 - v139.__end_ >= 2)
  {
    cntrl = v139.__start_.__cntrl_;
    *(&v139.__start_.__cntrl_->__vftable + v139.__end_) = 10798;
    v27 = (end + 2);
    if ((v140[7] & 0x80000000) == 0)
    {
LABEL_30:
      v140[7] = v27 & 0x7F;
LABEL_33:
      v25 = v27 + cntrl;
      goto LABEL_34;
    }

LABEL_32:
    v139.__end_ = v27;
    goto LABEL_33;
  }

  v15 = (&v139.__end_->__vftable + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (*v140 & 0x7FFFFFFFFFFFFFFFLL)) < (&v139.__end_->__vftable - v17 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v139.__start_.__cntrl_;
  v14 = v7;
  if (v17 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_15;
  }

  v22 = 0;
  v21 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v23 = operator new(v21);
  v24 = v23;
  if (end)
  {
    memmove(v23, v16, end);
  }

  *(&v24->__vftable + end) = 10798;
  if (!v22)
  {
    operator delete(v16);
  }

  v139.__end_ = v15;
  *v140 = v21 | 0x8000000000000000;
  v139.__start_.__cntrl_ = v24;
  v25 = v15 + v24;
  v7 = v14;
LABEL_34:
  *v25 = 0;
  v139.__traits_.__col_ = *v140;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v138 = v28;
  *&v139.__traits_.__loc_.__locale_ = *&v139.__start_.__cntrl_;
  *&v137[16] = v28;
  *&v137[32] = v28;
  *v137 = v28;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v137, &v139, 0);
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v135[32] = v29;
  v136 = v29;
  *v135 = v29;
  *&v135[16] = v29;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v135, "(\\d{4})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{2})-(\\d{3})", 0);
  v30 = strlen(this);
  if (v30 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  v106 = a5 == 0;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v33 = 25;
    }

    else
    {
      v33 = (v30 | 7) + 1;
    }

    v32 = operator new(v33);
    __p[1] = v31;
    v134 = v33 | 0x8000000000000000;
    __p[0] = v32;
    goto LABEL_42;
  }

  HIBYTE(v134) = v30;
  v32 = __p;
  if (v30)
  {
LABEL_42:
    memcpy(v32, this, v31);
  }

  *(v31 + v32) = 0;
  std::locale::locale(&v127, v137);
  v128 = *&v137[8];
  v129 = *&v137[24];
  v130 = *&v137[40];
  v131 = v138;
  if (v138)
  {
    atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
  }

  v132 = *(&v138 + 1);
  FilteredFiles = support::fs::getFilteredFiles(__p, &v127, &v139.__flags_, 0);
  v35 = v131;
  if (v131 && !atomic_fetch_add(&v131->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    std::locale::~locale(&v127);
    if ((SHIBYTE(v134) & 0x80000000) == 0)
    {
LABEL_48:
      if (!FilteredFiles)
      {
        goto LABEL_192;
      }

      goto LABEL_52;
    }
  }

  else
  {
    std::locale::~locale(&v127);
    if ((SHIBYTE(v134) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  operator delete(__p[0]);
  if (!FilteredFiles)
  {
    goto LABEL_192;
  }

LABEL_52:
  v37 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((*&v139.__loop_count_ - *&v139.__flags_) >> 3));
  if (*&v139.__loop_count_ == *&v139.__flags_)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(*&v139.__flags_, *&v139.__loop_count_, v38, 1, v36);
  memset(&v126, 0, sizeof(v126));
  v39 = *&v139.__flags_;
  v103 = *&v139.__loop_count_;
  if (*&v139.__flags_ == *&v139.__loop_count_)
  {
LABEL_192:
    if (!v7)
    {
      goto LABEL_209;
    }

LABEL_193:
    if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v113, v9->__r_.__value_.__l.__data_, v9->__r_.__value_.__l.__size_);
    }

    else
    {
      v113 = *v9;
    }

    std::locale::locale(&v107, v135);
    v108 = *&v135[8];
    v109 = *&v135[24];
    v110 = *&v135[40];
    v111 = v136;
    if (v136)
    {
      atomic_fetch_add_explicit((v136 + 8), 1uLL, memory_order_relaxed);
    }

    v112 = *(&v136 + 1);
    v91 = util::checkLogFileAge(&v113, v7, &v107);
    v92 = v111;
    if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v92->__on_zero_shared)(v92);
      std::__shared_weak_count::__release_weak(v92);
      std::locale::~locale(&v107);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_201:
        if (!v91)
        {
          goto LABEL_209;
        }

LABEL_205:
        if (SHIBYTE(v9->__r_.__value_.__r.__words[2]) < 0)
        {
          *v9->__r_.__value_.__l.__data_ = 0;
          v9->__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          v9->__r_.__value_.__s.__data_[0] = 0;
          *(&v9->__r_.__value_.__s + 23) = 0;
        }

        goto LABEL_209;
      }
    }

    else
    {
      std::locale::~locale(&v107);
      if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_201;
      }
    }

    operator delete(v113.__r_.__value_.__l.__data_);
    if (!v91)
    {
      goto LABEL_209;
    }

    goto LABEL_205;
  }

  v99 = v7;
  v101 = a5;
  while (1)
  {
    memset(&v125, 170, sizeof(v125));
    v105 = v39;
    v40 = &v125;
    if (*(v39 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v125, *v39, *(v39 + 1));
    }

    else
    {
      v41 = *v39;
      v125.__r_.__value_.__r.__words[2] = *(v39 + 2);
      *&v125.__r_.__value_.__l.__data_ = v41;
    }

    if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v126.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v126.__r_.__value_.__l.__size_;
    }

    v43 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
    v44 = SHIBYTE(v125.__r_.__value_.__r.__words[2]);
    v45 = *&v125.__r_.__value_.__l.__data_;
    if (size)
    {
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v46 = v125.__r_.__value_.__l.__size_;
        v40 = v125.__r_.__value_.__r.__words[0];
      }

      v47 = (v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v126 : v126.__r_.__value_.__r.__words[0];
      if (v46 >= size)
      {
        v68 = v40 + v46;
        v69 = v47->__r_.__value_.__s.__data_[0];
        v70 = v40;
        do
        {
          v71 = v46 - size;
          if (v71 == -1)
          {
            break;
          }

          v72 = memchr(v70, v69, v71 + 1);
          if (!v72)
          {
            break;
          }

          v73 = v72;
          if (!memcmp(v72, v47, size))
          {
            if (v73 == v68 || v73 - v40 == -1)
            {
              break;
            }

            v66 = 3;
            v9 = v104;
            if ((v44 & 0x80) == 0)
            {
              goto LABEL_171;
            }

            goto LABEL_133;
          }

          v70 = (v73 + 1);
          v46 = v68 - (v73 + 1);
        }

        while (v46 >= size);
      }
    }

    *&v48 = 0xAAAAAAAAAAAAAAAALL;
    *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v123 = v48;
    v120 = 0xAAAAAAAAAAAAAA00;
    v117[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v118 = 0;
    v119 = 0;
    v121 = 0;
    v122 = 0;
    LOBYTE(v123) = 0;
    BYTE8(v123) = 0;
    v124 = 0;
    memset(v117, 0, 41);
    if (v106)
    {
      v146 = v48;
      v143 = 0xAAAAAAAAAAAAAA00;
      *&v140[24] = v48;
      v141 = 0;
      v142 = 0;
      v144 = 0;
      v145 = 0;
      LOBYTE(v146) = 0;
      BYTE8(v146) = 0;
      v147 = 0;
      *&v139.__start_.__cntrl_ = 0uLL;
      *v140 = 0uLL;
      if (v44 >= 0)
      {
        v49 = &v125;
      }

      else
      {
        v49 = v45;
      }

      if (v44 >= 0)
      {
        v50 = v43;
      }

      else
      {
        v50 = *(&v45 + 1);
      }

      *&v140[9] = 0uLL;
      v51 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v135, v49, (v49 + v50), &v139.__start_.__cntrl_, 0);
      v52 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v53 = &v125;
      }

      else
      {
        v53 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v125.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v117, v53, (v53 + v52), &v139.__start_.__cntrl_, 0);
      v9 = v104;
      if (v139.__start_.__cntrl_)
      {
        v139.__end_ = v139.__start_.__cntrl_;
        operator delete(v139.__start_.__cntrl_);
      }

      if (v51)
      {
        p_matched = &v117[0].__begin_->matched;
        if (v117[0].__end_ == v117[0].__begin_)
        {
          p_matched = &v117[1].__end_cap_;
        }

        if (*p_matched != 1)
        {
          *&v139.__start_.__cntrl_ = 0uLL;
          *v140 = 0;
          if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_99:
            operator delete(v104->__r_.__value_.__l.__data_);
            *&v104->__r_.__value_.__l.__data_ = *&v139.__start_.__cntrl_;
            v104->__r_.__value_.__r.__words[2] = *v140;
            if (!a4)
            {
              goto LABEL_162;
            }

            goto LABEL_125;
          }

LABEL_124:
          *&v104->__r_.__value_.__l.__data_ = *&v139.__start_.__cntrl_;
          v104->__r_.__value_.__r.__words[2] = *v140;
          if (!a4)
          {
            goto LABEL_162;
          }

LABEL_125:
          v79 = strlen(this);
          if (v79 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v80 = v79;
          if (v79 >= 0x17)
          {
            if ((v79 | 7) == 0x17)
            {
              v83 = 25;
            }

            else
            {
              v83 = (v79 | 7) + 1;
            }

            v81 = operator new(v83);
            v115[1] = v80;
            v116 = v83 | 0x8000000000000000;
            v115[0] = v81;
          }

          else
          {
            HIBYTE(v116) = v79;
            v81 = v115;
            if (!v79)
            {
              LOBYTE(v115[0]) = 0;
              if ((SHIBYTE(v104->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_129:
                v114 = *v104;
                goto LABEL_146;
              }

LABEL_145:
              std::string::__init_copy_ctor_external(&v114, v104->__r_.__value_.__l.__data_, v104->__r_.__value_.__l.__size_);
LABEL_146:
              isDumpForSysdiagnose = util::isDumpForSysdiagnose(v115, &v114);
              if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v114.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v116) & 0x80000000) == 0)
                {
LABEL_148:
                  if (isDumpForSysdiagnose)
                  {
LABEL_149:
                    if ((atomic_load_explicit(&qword_2A18CA8A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8A8))
                    {
                      qword_2A18CA8B0 = 0;
                      qword_2A18CA8B8 = 0;
                      __cxa_guard_release(&qword_2A18CA8A8);
                    }

                    if (_MergedGlobals_3 == -1)
                    {
                      v85 = qword_2A18CA8B8;
                      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_3, &__block_literal_global_1);
                      v85 = qword_2A18CA8B8;
                      if (!os_log_type_enabled(qword_2A18CA8B8, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    if ((v104->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v86 = v104;
                    }

                    else
                    {
                      v86 = v104->__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v139.__start_.__cntrl_) = 136315138;
                    *(&v139.__start_.__cntrl_ + 4) = v86;
                    _os_log_impl(&dword_296D7D000, v85, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &v139.__start_.__cntrl_, 0xCu);
LABEL_156:
                    if (&v126 != v104)
                    {
                      v87 = HIBYTE(v104->__r_.__value_.__r.__words[2]);
                      if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                      {
                        if (v87 >= 0)
                        {
                          v89 = v104;
                        }

                        else
                        {
                          v89 = v104->__r_.__value_.__r.__words[0];
                        }

                        if (v87 >= 0)
                        {
                          v90 = HIBYTE(v104->__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v90 = v104->__r_.__value_.__l.__size_;
                        }

                        std::string::__assign_no_alias<false>(&v126, v89, v90);
                      }

                      else
                      {
                        if ((*(&v104->__r_.__value_.__s + 23) & 0x80) == 0)
                        {
                          v126 = *v104;
LABEL_185:
                          v66 = 0;
                          v104->__r_.__value_.__s.__data_[0] = 0;
                          *(&v104->__r_.__value_.__s + 23) = 0;
                          goto LABEL_167;
                        }

                        std::string::__assign_no_alias<true>(&v126, v104->__r_.__value_.__l.__data_, v104->__r_.__value_.__l.__size_);
                      }
                    }

                    if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
                    {
                      v66 = 0;
                      *v104->__r_.__value_.__l.__data_ = 0;
                      v104->__r_.__value_.__l.__size_ = 0;
                      goto LABEL_167;
                    }

                    goto LABEL_185;
                  }

LABEL_162:
                  v66 = 2;
LABEL_167:
                  v88 = 1;
LABEL_168:
                  v106 = v88;
                  begin = v117[0].__begin_;
                  if (v117[0].__begin_)
                  {
                    goto LABEL_169;
                  }

                  goto LABEL_170;
                }
              }

              else if ((SHIBYTE(v116) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              operator delete(v115[0]);
              if (isDumpForSysdiagnose)
              {
                goto LABEL_149;
              }

              goto LABEL_162;
            }
          }

          memcpy(v81, this, v80);
          *(v80 + v81) = 0;
          if ((SHIBYTE(v104->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_145;
        }

        v55 = &v117[1];
        if (v117[0].__end_ != v117[0].__begin_)
        {
          v55 = v117[0].__begin_;
        }

        i = v55->first.__i_;
        p_i = &v117[0].__begin_->second.__i_;
        if (v117[0].__end_ == v117[0].__begin_)
        {
          p_i = &v117[1].__end_;
        }

        v58 = *p_i;
        v59 = *p_i - i;
        if (v59 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v59 > 0x16)
        {
          if ((v59 | 7) == 0x17)
          {
            v82 = 25;
          }

          else
          {
            v82 = (v59 | 7) + 1;
          }

          v60 = operator new(v82);
          v139.__end_ = v59;
          *v140 = v82 | 0x8000000000000000;
          v139.__start_.__cntrl_ = v60;
          if (v58 == i)
          {
LABEL_98:
            *(&v60->__vftable + v59) = 0;
            if (SHIBYTE(v104->__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_99;
            }

            goto LABEL_124;
          }
        }

        else
        {
          v140[7] = *p_i - i;
          v60 = &v139.__start_.__cntrl_;
          if (v58 == i)
          {
            goto LABEL_98;
          }
        }

        memmove(v60, i, v59);
        goto LABEL_98;
      }

LABEL_166:
      v66 = 0;
      goto LABEL_167;
    }

    v61 = v44 < 0;
    if (v44 >= 0)
    {
      v62 = &v125;
    }

    else
    {
      v62 = v45;
    }

    if (v61)
    {
      v63 = *(&v45 + 1);
    }

    else
    {
      v63 = v43;
    }

    v64 = strlen(v101);
    v9 = v104;
    if (!v64)
    {
LABEL_165:
      std::string::__assign_external(&v126, v101);
      goto LABEL_166;
    }

    v65 = v64;
    if (v63 >= v64)
    {
      v74 = v62 + v63;
      v75 = *v101;
      v76 = v62;
      do
      {
        if (v63 - v65 == -1)
        {
          break;
        }

        v77 = memchr(v76, v75, v63 - v65 + 1);
        if (!v77)
        {
          break;
        }

        v78 = v77;
        if (!memcmp(v77, v101, v65))
        {
          v88 = 0;
          if (v78 != v74)
          {
            v66 = 0;
            if (v78 - v62 == -1)
            {
              goto LABEL_168;
            }

            goto LABEL_165;
          }

          v66 = 0;
          v106 = 0;
          begin = v117[0].__begin_;
          if (v117[0].__begin_)
          {
            goto LABEL_169;
          }

          goto LABEL_170;
        }

        v76 = (v78 + 1);
        v63 = v74 - (v78 + 1);
      }

      while (v63 >= v65);
    }

    v66 = 0;
    v106 = 0;
    begin = v117[0].__begin_;
    if (v117[0].__begin_)
    {
LABEL_169:
      v117[0].__end_ = begin;
      operator delete(begin);
    }

LABEL_170:
    v39 = v105;
    if ((*(&v125.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      break;
    }

LABEL_171:
    if (v66 != 3)
    {
      goto LABEL_172;
    }

LABEL_57:
    v39 = (v39 + 24);
    if (v39 == v103)
    {
      goto LABEL_191;
    }
  }

LABEL_133:
  operator delete(v125.__r_.__value_.__l.__data_);
  if (v66 == 3)
  {
    goto LABEL_57;
  }

LABEL_172:
  if (!v66)
  {
    goto LABEL_57;
  }

LABEL_191:
  v7 = v99;
  if ((SHIBYTE(v126.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_192;
  }

  operator delete(v126.__r_.__value_.__l.__data_);
  if (v99)
  {
    goto LABEL_193;
  }

LABEL_209:
  v93 = v136;
  if (v136 && !atomic_fetch_add((v136 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v93);
    std::locale::~locale(v135);
    v94 = v138;
    if (!v138)
    {
      goto LABEL_213;
    }

LABEL_212:
    if (atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_213;
    }

    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
    std::locale::~locale(v137);
    if (SHIBYTE(v139.__traits_.__col_) < 0)
    {
LABEL_214:
      operator delete(v139.__traits_.__loc_.__locale_);
    }
  }

  else
  {
    std::locale::~locale(v135);
    v94 = v138;
    if (v138)
    {
      goto LABEL_212;
    }

LABEL_213:
    std::locale::~locale(v137);
    if (SHIBYTE(v139.__traits_.__col_) < 0)
    {
      goto LABEL_214;
    }
  }

  v95 = *&v139.__flags_;
  if (*&v139.__flags_)
  {
    v96 = *&v139.__loop_count_;
    v97 = *&v139.__flags_;
    if (*&v139.__loop_count_ != *&v139.__flags_)
    {
      do
      {
        v98 = *(v96 - 1);
        v96 -= 3;
        if (v98 < 0)
        {
          operator delete(*v96);
        }
      }

      while (v96 != v95);
      v97 = *&v139.__flags_;
    }

    *&v139.__loop_count_ = v95;
    operator delete(v97);
  }
}

void sub_296E17C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x200]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x240]);
  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  std::vector<std::string>::~vector[abi:ne200100]((v19 - 248));
  if (*(a19 + 23) < 0)
  {
    operator delete(*a19);
  }

  _Unwind_Resume(a1);
}

uint64_t util::getNumberOfLogDumps(uint64_t a1, const void **a2)
{
  v199 = a1;
  v242 = *MEMORY[0x29EDCA608];
  v224 = 0;
  v225 = 0;
  v226 = 0;
  v221 = 0u;
  v222 = 0u;
  v223 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v219[32] = v5;
  v220 = v5;
  *v219 = v5;
  *&v219[16] = v5;
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = a2[1];
  }

  v8 = v7 + 64;
  v198 = v3;
  if (v7 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(buf, 0, 24);
    v10 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v7 + 64;
LABEL_12:
    if (v6 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    memmove(v10, v11, v7);
    goto LABEL_16;
  }

  if ((v8 | 7) == 0x17)
  {
    v9 = 25;
  }

  else
  {
    v9 = (v8 | 7) + 1;
  }

  v10 = operator new(v9);
  buf[0].__end_ = (v7 + 64);
  buf[0].__end_cap_.__value_ = (v9 | 0x8000000000000000);
  buf[0].__begin_ = v10;
  if (v7)
  {
    goto LABEL_12;
  }

LABEL_16:
  v12 = v10 + v7;
  v13 = *(v4 + 3);
  v15 = *v4;
  v14 = *(v4 + 1);
  *(v12 + 2) = *(v4 + 2);
  *(v12 + 3) = v13;
  *v12 = v15;
  *(v12 + 1) = v14;
  v12[64] = 0;
  value_high = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) - 21) < 2)
    {
      v17 = (SHIBYTE(buf[0].__end_cap_.__value_) + 2);
      v18 = buf;
      v19 = 22;
LABEL_22:
      v20 = 2 * v19;
      if (v17 > 2 * v19)
      {
        v20 = v17;
      }

      if ((v20 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v20 | 7) + 1;
      }

      if (v20 >= 0x17)
      {
        v22 = v21;
      }

      else
      {
        v22 = 23;
      }

      v23 = v19 == 22;
      goto LABEL_31;
    }

    begin = buf;
    *(&buf[0].__begin_ + SHIBYTE(buf[0].__end_cap_.__value_)) = 10798;
    v28 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_39;
  }

  value_high = buf[0].__end_;
  v19 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v19 - buf[0].__end_ >= 2)
  {
    begin = buf[0].__begin_;
    *(&buf[0].__begin_->first.__i_ + buf[0].__end_) = 10798;
    v28 = (value_high + 2);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_37:
      HIBYTE(buf[0].__end_cap_.__value_) = v28 & 0x7F;
LABEL_40:
      v26 = v28 + begin;
      goto LABEL_41;
    }

LABEL_39:
    buf[0].__end_ = v28;
    goto LABEL_40;
  }

  v17 = (&buf[0].__end_->first.__i_ + 2);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_->first.__i_ - v19 + 2))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = buf[0].__begin_;
  if (v19 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_22;
  }

  v23 = 0;
  v22 = 0x7FFFFFFFFFFFFFF7;
LABEL_31:
  v24 = operator new(v22);
  v25 = v24;
  if (value_high)
  {
    memmove(v24, v18, value_high);
  }

  *(&v25->first.__i_ + value_high) = 10798;
  if (!v23)
  {
    operator delete(v18);
  }

  buf[0].__end_ = v17;
  buf[0].__end_cap_.__value_ = (v22 | 0x8000000000000000);
  buf[0].__begin_ = v25;
  v26 = v17 + v25;
LABEL_41:
  *v26 = 0;
  __p.__traits_ = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v219, &__p, 0);
  if (SHIBYTE(__p.__traits_.__col_) < 0)
  {
    operator delete(__p.__traits_.__loc_.__locale_);
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  else if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(buf[0].__begin_);
LABEL_43:
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v217 = v29;
  v218 = v29;
  v216 = v29;
  *&v215[0].__locale_ = v29;
  v30 = *(a2 + 23);
  if (v30 >= 0)
  {
    v31 = *(a2 + 23);
  }

  else
  {
    v31 = a2[1];
  }

  v32 = v31 + 64;
  if (v31 + 64 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v32 <= 0x16)
  {
    memset(buf, 0, 24);
    v34 = buf;
    HIBYTE(buf[0].__end_cap_.__value_) = v31 + 64;
LABEL_54:
    if (v30 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    memmove(v34, v35, v31);
    goto LABEL_58;
  }

  if ((v32 | 7) == 0x17)
  {
    v33 = 25;
  }

  else
  {
    v33 = (v32 | 7) + 1;
  }

  v34 = operator new(v33);
  buf[0].__end_ = (v31 + 64);
  buf[0].__end_cap_.__value_ = (v33 | 0x8000000000000000);
  buf[0].__begin_ = v34;
  if (v31)
  {
    goto LABEL_54;
  }

LABEL_58:
  v36 = v34 + v31;
  v37 = *(v4 + 3);
  v39 = *v4;
  v38 = *(v4 + 1);
  *(v36 + 2) = *(v4 + 2);
  *(v36 + 3) = v37;
  *v36 = v39;
  *(v36 + 1) = v38;
  v36[64] = 0;
  end = SHIBYTE(buf[0].__end_cap_.__value_);
  if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x8000000000000000) == 0)
  {
    if (SHIBYTE(buf[0].__end_cap_.__value_) < 0x17)
    {
      v41 = (SHIBYTE(buf[0].__end_cap_.__value_) + 29);
      v42 = buf;
      v43 = 22;
LABEL_66:
      v44 = 2 * v43;
      if (v41 > 2 * v43)
      {
        v44 = v41;
      }

      if ((v44 | 7) == 0x17)
      {
        v45 = 25;
      }

      else
      {
        v45 = (v44 | 7) + 1;
      }

      if (v44 >= 0x17)
      {
        v46 = v45;
      }

      else
      {
        v46 = 23;
      }

      v47 = v43 == 22;
      goto LABEL_75;
    }

    v51 = buf;
    qmemcpy(buf + SHIBYTE(buf[0].__end_cap_.__value_), "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v52 = end + 29;
    HIBYTE(buf[0].__end_cap_.__value_) = (end + 29) & 0x7F;
LABEL_82:
    v50 = v51 + v52;
    goto LABEL_83;
  }

  end = buf[0].__end_;
  v43 = (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v43 - buf[0].__end_ >= 0x1D)
  {
    v51 = buf[0].__begin_;
    qmemcpy(buf[0].__begin_ + buf[0].__end_, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
    v52 = end + 29;
    buf[0].__end_ = (end + 29);
    goto LABEL_82;
  }

  v41 = (buf[0].__end_ + 29);
  if ((0x7FFFFFFFFFFFFFF7 - (buf[0].__end_cap_.__value_ & 0x7FFFFFFFFFFFFFFFLL)) < (&buf[0].__end_[1].first.__i_ - v43 + 5))
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v42 = buf[0].__begin_;
  if (v43 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_66;
  }

  v47 = 0;
  v46 = 0x7FFFFFFFFFFFFFF7;
LABEL_75:
  v48 = operator new(v46);
  v49 = v48;
  if (end)
  {
    memmove(v48, v42, end);
  }

  qmemcpy(v49 + end, "(?=-*)(?!(\\.json|\\.tailspin))", 29);
  if (!v47)
  {
    operator delete(v42);
  }

  buf[0].__end_ = v41;
  buf[0].__end_cap_.__value_ = (v46 | 0x8000000000000000);
  buf[0].__begin_ = v49;
  v50 = v41 + v49;
LABEL_83:
  *v50 = 0;
  __p.__traits_ = buf[0];
  memset(buf, 0, 24);
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v215, &__p, 0);
  if ((SHIBYTE(__p.__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v53 = v199;
    if ((*(v199 + 23) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_89;
  }

  operator delete(__p.__traits_.__loc_.__locale_);
  if (SHIBYTE(buf[0].__end_cap_.__value_) < 0)
  {
    goto LABEL_88;
  }

LABEL_85:
  v53 = v199;
  if ((*(v199 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v214 = *v53;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v214, v53->__r_.__value_.__l.__data_, v53->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v208, v219);
  v209 = *&v219[8];
  v210 = *&v219[24];
  v211 = *&v219[40];
  v212 = v220;
  if (v220)
  {
    atomic_fetch_add_explicit((v220 + 8), 1uLL, memory_order_relaxed);
  }

  v213 = *(&v220 + 1);
  support::fs::getFilteredFiles(&v214, &v208, &v224, 0);
  v54 = v212;
  if (v212 && !atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v54->__on_zero_shared)(v54);
    std::__shared_weak_count::__release_weak(v54);
    std::locale::~locale(&v208);
    if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_95:
      v56 = v224;
      v55 = v225;
      if (v224 == v225)
      {
        goto LABEL_268;
      }

      goto LABEL_99;
    }
  }

  else
  {
    std::locale::~locale(&v208);
    if ((SHIBYTE(v214.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }
  }

  operator delete(v214.__r_.__value_.__l.__data_);
  v56 = v224;
  v55 = v225;
  if (v224 == v225)
  {
    goto LABEL_268;
  }

LABEL_99:
  p_end_cap = &buf[1].__end_cap_;
  v202 = &buf[1];
  v203 = &v222;
  p_end = &buf[1].__end_;
  v204 = &buf[1].__end_cap_;
  v205 = v55;
  while (2)
  {
    *&v58 = 0xAAAAAAAAAAAAAAAALL;
    *(&v58 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&p_end_cap[4].__value_ = v58;
    *&p_end_cap[6].__value_ = v58;
    *&p_end_cap->__value_ = v58;
    *&p_end_cap[2].__value_ = v58;
    v234 = 0;
    v235 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v240 = 0;
    v241 = 0;
    memset(buf, 0, 41);
    v231 = v58;
    v228 = 0xAAAAAAAAAAAAAA00;
    __p.__start_.__ptr_ = 0xAAAAAAAAAAAAAAAALL;
    __p.__start_.__cntrl_ = 0;
    __p.__end_ = 0;
    v229 = 0;
    v230 = 0;
    LOBYTE(v231) = 0;
    BYTE8(v231) = 0;
    v232 = 0;
    memset(&__p, 0, 40);
    second = *(&v56->matched + 7);
    if (second >= 0)
    {
      first = v56;
    }

    else
    {
      first = v56->first;
    }

    if (second < 0)
    {
      second = v56->second;
    }

    v61 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v215, first, &second[first], &__p, 0);
    v62 = *(&v56->matched + 7);
    if (v62 >= 0)
    {
      v63 = v56;
    }

    else
    {
      v63 = v56->first;
    }

    if (v62 < 0)
    {
      v62 = v56->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v63, &v62[v63], &__p, 0);
    if (__p.__traits_.__loc_.__locale_)
    {
      __p.__traits_.__ct_ = __p.__traits_.__loc_.__locale_;
      operator delete(__p.__traits_.__loc_.__locale_);
    }

    v64 = buf[0].__begin_;
    if (!v61)
    {
      goto LABEL_258;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = p_end_cap;
    }

    if (*p_matched)
    {
      v66 = v202;
      if (buf[0].__end_ != buf[0].__begin_)
      {
        v66 = buf[0].__begin_;
      }

      i = v66->first.__i_;
      p_second = &buf[0].__begin_->second;
      if (buf[0].__end_ == buf[0].__begin_)
      {
        p_second = p_end;
      }

      v69 = p_second->__i_;
      v70 = p_second->__i_ - i;
      if (v70 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v70 > 0x16)
      {
        if ((v70 | 7) == 0x17)
        {
          v158 = 25;
        }

        else
        {
          v158 = (v70 | 7) + 1;
        }

        p_dst = operator new(v158);
        *(&__dst + 1) = v70;
        v207 = v158 | 0x8000000000000000;
        *&__dst = p_dst;
        if (v69 == i)
        {
          goto LABEL_125;
        }
      }

      else
      {
        HIBYTE(v207) = LOBYTE(p_second->__i_) - i;
        p_dst = &__dst;
        if (v69 == i)
        {
LABEL_125:
          *(p_dst + v70) = 0;
          v72 = HIBYTE(v207);
          v74 = *(&__dst + 1);
          v73 = __dst;
          goto LABEL_127;
        }
      }

      memmove(p_dst, i, v70);
      goto LABEL_125;
    }

    v74 = 0;
    v73 = 0;
    v72 = 0;
    __dst = 0uLL;
    v207 = 0;
LABEL_127:
    if ((v72 & 0x80u) == 0)
    {
      v75 = &__dst;
    }

    else
    {
      v75 = v73;
    }

    if ((v72 & 0x80u) == 0)
    {
      v76 = v72;
    }

    else
    {
      v76 = v74;
    }

    if (v76 > 0x20)
    {
      if (v76 <= 0x40)
      {
        if ((v72 & 0x80u) == 0)
        {
          v73 = &__dst;
        }

        v80 = *(v73 + 3);
        v81 = *(v75 + v76 - 16);
        v82 = *v75 - 0x3C5A37A36834CED9 * (v81 + v76);
        v83 = __ROR8__(v82 + v80, 52);
        v85 = *(v73 + 1);
        v84 = *(v73 + 2);
        v86 = v82 + v85;
        v87 = __ROR8__(v86, 7);
        v88 = v86 + v84;
        v89 = v87 + __ROR8__(*v75 - 0x3C5A37A36834CED9 * (v81 + v76), 37) + v83 + __ROR8__(v88, 31);
        v90 = *(v75 + v76 - 32) + v84;
        v91 = *(v75 + v76 - 8) + v80;
        v92 = __ROR8__(v91 + v90, 52);
        v93 = __ROR8__(v90, 37);
        v94 = *(v75 + v76 - 24) + v90;
        v95 = __ROR8__(v94, 7);
        v96 = v94 + v81;
        v97 = v96 + v91;
        v98 = v88 + v80 + v93 + v95 + v92 + __ROR8__(v96, 31);
        v99 = 0x9AE16A3B2F90404FLL;
        v100 = v89 - 0x3C5A37A36834CED9 * ((0xC3A5C85C97CB3127 * (v97 + v89) - 0x651E95C4D06FBFB1 * v98) ^ ((0xC3A5C85C97CB3127 * (v97 + v89) - 0x651E95C4D06FBFB1 * v98) >> 47));
        goto LABEL_145;
      }

      v107 = *(v75 + v76 - 48);
      v108 = *(v75 + v76 - 40);
      v109 = *(v75 + v76 - 24);
      v110 = *(v75 + v76 - 56);
      v112 = *(v75 + v76 - 16);
      v111 = *(v75 + v76 - 8);
      v113 = v110 + v112;
      v114 = 0x9DDFEA08EB382D69 * (v109 ^ ((0x9DDFEA08EB382D69 * (v109 ^ (v107 + v76))) >> 47) ^ (0x9DDFEA08EB382D69 * (v109 ^ (v107 + v76))));
      v115 = 0x9DDFEA08EB382D69 * (v114 ^ (v114 >> 47));
      v116 = *(v75 + v76 - 64) + v76;
      v117 = v107 + v110 + v116;
      v118 = __ROR8__(v117, 44) + v116;
      v119 = __ROR8__(v116 + v108 + v115, 21);
      v120 = v117 + v108;
      v121 = v118 + v119;
      v122 = v113 + *(v75 + v76 - 32) - 0x4B6D499041670D8DLL;
      v123 = v109 + v112 + v122;
      v124 = v123 + v111;
      v125 = __ROR8__(v123, 44) + v122 + __ROR8__(v122 + v108 + v111, 21);
      v126 = v75 + 2;
      v127 = *v75 - 0x4B6D499041670D8DLL * v108;
      v128 = -((v76 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v129 = *(v126 - 3);
        v130 = v127 + v120 + v113 + v129;
        v131 = v126[2];
        v132 = v126[3];
        v133 = v126[1];
        v113 = v133 + v120 - 0x4B6D499041670D8DLL * __ROR8__(v113 + v121 + v131, 42);
        v134 = v115 + v124;
        v135 = *(v126 - 2);
        v136 = *(v126 - 1);
        v137 = *(v126 - 4) - 0x4B6D499041670D8DLL * v121;
        v138 = v137 + v124 + v136;
        v139 = v137 + v129 + v135;
        v120 = v139 + v136;
        v140 = __ROR8__(v139, 44) + v137;
        v141 = (0xB492B66FBE98F273 * __ROR8__(v130, 37)) ^ v125;
        v127 = 0xB492B66FBE98F273 * __ROR8__(v134, 33);
        v121 = v140 + __ROR8__(v138 + v141, 21);
        v142 = v127 + v125 + *v126;
        v124 = v133 + v131 + v142 + v132;
        v125 = __ROR8__(v133 + v131 + v142, 44) + v142 + __ROR8__(v113 + v135 + v142 + v132, 21);
        v126 += 8;
        v115 = v141;
        v128 += 64;
      }

      while (v128);
      v143 = v127 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v125 ^ ((0x9DDFEA08EB382D69 * (v125 ^ v121)) >> 47) ^ (0x9DDFEA08EB382D69 * (v125 ^ v121)))) ^ ((0x9DDFEA08EB382D69 * (v125 ^ ((0x9DDFEA08EB382D69 * (v125 ^ v121)) >> 47) ^ (0x9DDFEA08EB382D69 * (v125 ^ v121)))) >> 47));
      v144 = 0x9DDFEA08EB382D69 * (v143 ^ (v141 - 0x4B6D499041670D8DLL * (v113 ^ (v113 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v124 ^ ((0x9DDFEA08EB382D69 * (v124 ^ v120)) >> 47) ^ (0x9DDFEA08EB382D69 * (v124 ^ v120)))) ^ ((0x9DDFEA08EB382D69 * (v124 ^ ((0x9DDFEA08EB382D69 * (v124 ^ v120)) >> 47) ^ (0x9DDFEA08EB382D69 * (v124 ^ v120)))) >> 47))));
      v79 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v143 ^ (v144 >> 47) ^ v144)) ^ ((0x9DDFEA08EB382D69 * (v143 ^ (v144 >> 47) ^ v144)) >> 47));
    }

    else
    {
      if (v76 > 0x10)
      {
        v101 = 0xB492B66FBE98F273 * *v75;
        if ((v72 & 0x80u) == 0)
        {
          v73 = &__dst;
        }

        v102 = *(v73 + 1);
        v103 = __ROR8__(0x9AE16A3B2F90404FLL * *(v75 + v76 - 8), 30) + __ROR8__(v101 - v102, 43) - 0x3C5A37A36834CED9 * *(v75 + v76 - 16);
        v104 = v101 + v76 + __ROR8__(v102 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(v75 + v76 - 8);
        v105 = v103 ^ v104;
        v99 = 0x9DDFEA08EB382D69;
        v106 = v104 ^ ((0x9DDFEA08EB382D69 * v105) >> 47) ^ (0x9DDFEA08EB382D69 * v105);
        goto LABEL_144;
      }

      if (v76 >= 9)
      {
        v77 = *(v75 + v76 - 8);
        v78 = __ROR8__(v77 + v76, v76);
        v79 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ *v75)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ *v75)))) ^ ((0x9DDFEA08EB382D69 * (v78 ^ ((0x9DDFEA08EB382D69 * (v78 ^ *v75)) >> 47) ^ (0x9DDFEA08EB382D69 * (v78 ^ *v75)))) >> 47))) ^ v77;
        goto LABEL_149;
      }

      if (v76 >= 4)
      {
        v159 = *(v75 + v76 - 4);
        v99 = 0x9DDFEA08EB382D69;
        v160 = 0x9DDFEA08EB382D69 * ((v76 + (8 * *v75)) ^ v159);
        v106 = v159 ^ (v160 >> 47) ^ v160;
LABEL_144:
        v100 = 0x9DDFEA08EB382D69 * v106;
LABEL_145:
        v79 = (v100 ^ (v100 >> 47)) * v99;
        goto LABEL_149;
      }

      v79 = 0x9AE16A3B2F90404FLL;
      if (v76)
      {
        v179 = (0xC949D7C7509E6557 * (v76 | (4 * *(v75 + v76 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*v75 | (*(v75 + (v76 >> 1)) << 8)));
        v79 = 0x9AE16A3B2F90404FLL * (v179 ^ (v179 >> 47));
      }
    }

LABEL_149:
    v145 = *(&v221 + 1);
    if (!*(&v221 + 1))
    {
      v147 = 0xAAAAAAAAAAAAAAAALL;
LABEL_191:
      v161 = operator new(0x28uLL);
      __p.__traits_.__loc_.__locale_ = v161;
      __p.__traits_.__ct_ = &v221;
      __p.__traits_.__col_ = 1;
      *v161 = 0;
      *(v161 + 1) = v79;
      *(v161 + 1) = __dst;
      *(v161 + 4) = v207;
      __dst = 0uLL;
      v207 = 0;
      v162 = (*(&v222 + 1) + 1);
      if (v145 && (*&v223 * v145) >= v162)
      {
        v79 = v147;
        goto LABEL_252;
      }

      v163 = (v145 & (v145 - 1)) != 0;
      if (v145 < 3)
      {
        v163 = 1;
      }

      v164 = v163 | (2 * v145);
      v165 = vcvtps_u32_f32(v162 / *&v223);
      if (v164 <= v165)
      {
        prime = v165;
      }

      else
      {
        prime = v164;
      }

      if (prime == 1)
      {
        prime = 2;
      }

      else if ((prime & (prime - 1)) != 0)
      {
        prime = std::__next_prime(prime);
        v145 = *(&v221 + 1);
      }

      if (prime <= v145)
      {
        if (prime >= v145)
        {
          goto LABEL_240;
        }

        v175 = vcvtps_u32_f32(*(&v222 + 1) / *&v223);
        if (v145 < 3 || (v176 = vcnt_s8(v145), v176.i16[0] = vaddlv_u8(v176), v176.u32[0] > 1uLL))
        {
          v175 = std::__next_prime(v175);
        }

        else
        {
          v177 = 1 << -__clz(v175 - 1);
          if (v175 >= 2)
          {
            v175 = v177;
          }
        }

        if (prime <= v175)
        {
          prime = v175;
        }

        if (prime >= v145)
        {
          v145 = *(&v221 + 1);
          v181 = *(&v221 + 1) - 1;
          if ((*(&v221 + 1) & (*(&v221 + 1) - 1)) != 0)
          {
LABEL_250:
            if (v79 >= v145)
            {
              v79 %= v145;
            }

LABEL_252:
            v183 = v221;
            v184 = *(v221 + 8 * v79);
            if (v184)
            {
              *v161 = *v184;
            }

            else
            {
              *v161 = v222;
              *&v222 = v161;
              *(v183 + 8 * v79) = v203;
              if (!*v161)
              {
LABEL_255:
                ++*(&v222 + 1);
                if ((v207 & 0x8000000000000000) != 0)
                {
                  goto LABEL_256;
                }

                goto LABEL_257;
              }

              v185 = *(*v161 + 8);
              if ((v145 & (v145 - 1)) != 0)
              {
                if (v185 >= v145)
                {
                  v185 %= v145;
                }

                v184 = (v183 + 8 * v185);
              }

              else
              {
                v184 = (v183 + 8 * (v185 & (v145 - 1)));
              }
            }

            *v184 = v161;
            goto LABEL_255;
          }

LABEL_241:
          v79 &= v181;
          goto LABEL_252;
        }

        if (!prime)
        {
          v180 = v221;
          *&v221 = 0;
          if (v180)
          {
            operator delete(v180);
          }

          v145 = 0;
          *(&v221 + 1) = 0;
          v181 = -1;
          goto LABEL_241;
        }
      }

      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v167 = operator new(8 * prime);
      v168 = v221;
      *&v221 = v167;
      if (v168)
      {
        operator delete(v168);
        v167 = v221;
      }

      *(&v221 + 1) = prime;
      bzero(v167, 8 * prime);
      v169 = v222;
      if (!v222)
      {
LABEL_249:
        v145 = prime;
        v181 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      v170 = *(v222 + 8);
      v171 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v172 = v170 & v171;
        *(v167 + v172) = v203;
        for (j = *v169; *v169; j = *v169)
        {
          v174 = j[1] & v171;
          if (v174 == v172)
          {
            v169 = j;
          }

          else if (*(v167 + v174))
          {
            *v169 = *j;
            *j = **(v167 + v174);
            **(v167 + v174) = j;
          }

          else
          {
            *(v167 + v174) = v169;
            v169 = j;
            v172 = v174;
          }
        }

        goto LABEL_249;
      }

      if (v170 < prime)
      {
        *(v167 + v170) = v203;
        v178 = *v169;
        if (*v169)
        {
          goto LABEL_244;
        }

        goto LABEL_239;
      }

      v170 %= prime;
      *(v167 + v170) = v203;
      v178 = *v169;
      if (!*v169)
      {
LABEL_239:
        v145 = prime;
LABEL_240:
        v181 = v145 - 1;
        if ((v145 & (v145 - 1)) != 0)
        {
          goto LABEL_250;
        }

        goto LABEL_241;
      }

      while (1)
      {
LABEL_244:
        v182 = v178[1];
        if (v182 >= prime)
        {
          v182 %= prime;
        }

        if (v182 == v170)
        {
          goto LABEL_243;
        }

        if (*(v167 + v182))
        {
          *v169 = *v178;
          *v178 = **(v167 + v182);
          **(v167 + v182) = v178;
          v178 = v169;
LABEL_243:
          v169 = v178;
          v178 = *v178;
          if (!v178)
          {
            goto LABEL_249;
          }
        }

        else
        {
          *(v167 + v182) = v169;
          v169 = v178;
          v178 = *v178;
          v170 = v182;
          if (!v178)
          {
            goto LABEL_249;
          }
        }
      }
    }

    v146 = vcnt_s8(*(&v221 + 8));
    v146.i16[0] = vaddlv_u8(v146);
    if (v146.u32[0] > 1uLL)
    {
      v147 = v79;
      if (v79 >= *(&v221 + 1))
      {
        v147 = v79 % *(&v221 + 1);
      }
    }

    else
    {
      v147 = (*(&v221 + 1) - 1) & v79;
    }

    v148 = *(v221 + 8 * v147);
    if (!v148)
    {
      goto LABEL_191;
    }

    v149 = *v148;
    if (!*v148)
    {
      goto LABEL_191;
    }

    if (v146.u32[0] < 2uLL)
    {
      v200 = v72;
      while (1)
      {
        v154 = v149[1];
        if (v154 == v79)
        {
          v155 = *(v149 + 39);
          v156 = v155;
          if (v155 < 0)
          {
            v155 = v149[3];
          }

          if (v155 == v76)
          {
            v157 = v156 >= 0 ? (v149 + 2) : v149[2];
            if (!memcmp(v157, v75, v76))
            {
              if ((v200 & 0x80) != 0)
              {
                goto LABEL_256;
              }

              goto LABEL_257;
            }
          }
        }

        else if ((v154 & (v145 - 1)) != v147)
        {
          goto LABEL_191;
        }

        v149 = *v149;
        if (!v149)
        {
          goto LABEL_191;
        }
      }
    }

    while (1)
    {
      v150 = v149[1];
      if (v150 == v79)
      {
        break;
      }

      if (v150 >= v145)
      {
        v150 %= v145;
      }

      if (v150 != v147)
      {
        goto LABEL_191;
      }

LABEL_160:
      v149 = *v149;
      if (!v149)
      {
        goto LABEL_191;
      }
    }

    v151 = *(v149 + 39);
    v152 = v151;
    if (v151 < 0)
    {
      v151 = v149[3];
    }

    if (v151 != v76)
    {
      goto LABEL_160;
    }

    v153 = v152 >= 0 ? (v149 + 2) : v149[2];
    if (memcmp(v153, v75, v76))
    {
      goto LABEL_160;
    }

    if ((v72 & 0x80) != 0)
    {
LABEL_256:
      operator delete(__dst);
    }

LABEL_257:
    v64 = buf[0].__begin_;
    p_end_cap = v204;
    v55 = v205;
LABEL_258:
    if (v64)
    {
      buf[0].__end_ = v64;
      operator delete(v64);
    }

    if (++v56 != v55)
    {
      continue;
    }

    break;
  }

LABEL_268:
  v186 = *(&v222 + 1);
  v187 = v218;
  if (v218 && !atomic_fetch_add((v218 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v187->__on_zero_shared)(v187);
    std::__shared_weak_count::__release_weak(v187);
  }

  std::locale::~locale(v215);
  v188 = v220;
  v189 = v198;
  if (v220 && !atomic_fetch_add((v220 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v188->__on_zero_shared)(v188);
    std::__shared_weak_count::__release_weak(v188);
  }

  std::locale::~locale(v219);
  operator delete(v189);
  v190 = v222;
  if (v222)
  {
    do
    {
      v197 = *v190;
      if (*(v190 + 39) < 0)
      {
        operator delete(v190[2]);
      }

      operator delete(v190);
      v190 = v197;
    }

    while (v197);
  }

  v191 = v221;
  *&v221 = 0;
  if (v191)
  {
    operator delete(v191);
  }

  v192 = v224;
  if (v224)
  {
    v193 = v225;
    v194 = v224;
    if (v225 != v224)
    {
      do
      {
        v195 = *(v193 - 1);
        v193 -= 3;
        if (v195 < 0)
        {
          operator delete(*v193);
        }
      }

      while (v193 != v192);
      v194 = v224;
    }

    v225 = v192;
    operator delete(v194);
  }

  return v186;
}

void sub_296E19340(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_296E19370(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t util::compareTwoStringsWithPattern(uint64_t a1, uint64_t a2, std::basic_regex<char> *a3)
{
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v92 = 0xAAAAAAAAAAAAAA00;
  v89[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v95 = v5;
  v90 = 0;
  v91 = 0;
  v93 = 0;
  v94 = 0;
  LOBYTE(v95) = 0;
  BYTE8(v95) = 0;
  v96 = 0;
  memset(v89, 0, 41);
  v87 = v5;
  v88 = v5;
  *&v85[0].__locale_ = v5;
  v86 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v85, a3, 0);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  __p = 0;
  v80 = 0;
  v81 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v101 = 0xAAAAAAAAAAAAAA00;
  *(&v98[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v104 = v6;
  v99 = 0;
  v100 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  BYTE8(v104) = 0;
  v105 = 0;
  __dst = 0u;
  v98[0] = 0u;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  *(v98 + 9) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v85, v8, (v8 + v7), &__dst, 0);
  v10 = *(a1 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a1 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v89, v11, (v11 + v10), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v9)
  {
LABEL_124:
    v38 = 0;
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  v78 = a2;
  begin = v89[0].__begin_;
  end = v89[0].__end_;
  if (v89[0].__begin_ != v89[0].__end_)
  {
    while (!begin->matched)
    {
      __dst = 0uLL;
      *&v98[0] = 0;
      v20 = v83;
      v19 = v84;
      if (v83 >= v84)
      {
LABEL_26:
        v21 = v82;
        v22 = v20 - v82;
        v23 = 0xAAAAAAAAAAAAAAABLL * (v20 - v82);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v82) >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        if (v26)
        {
          if (v26 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v27 = operator new(24 * v26);
        }

        else
        {
          v27 = 0;
        }

        v29 = &v27[24 * v23];
        v30 = &v27[24 * v26];
        *v29 = __dst;
        *(v29 + 2) = *&v98[0];
        v14 = (v29 + 24);
        v31 = &v29[-v22];
        memcpy(&v29[-v22], v82, v22);
        v82 = v31;
        v84 = v30;
        if (v21)
        {
          operator delete(v21);
        }

        goto LABEL_17;
      }

LABEL_16:
      *v20 = __dst;
      v20[2] = *&v98[0];
      v14 = v20 + 3;
LABEL_17:
      v83 = v14;
      if (++begin == end)
      {
        goto LABEL_44;
      }
    }

    i = begin->first.__i_;
    v16 = begin->second.__i_;
    v17 = v16 - begin->first.__i_;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v17 | 7) + 1;
      }

      p_dst = operator new(v28);
      *(&__dst + 1) = v17;
      *&v98[0] = v28 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v16 == i)
      {
LABEL_23:
        *(p_dst + v17) = 0;
        v20 = v83;
        v19 = v84;
        if (v83 >= v84)
        {
          goto LABEL_26;
        }

        goto LABEL_16;
      }
    }

    else
    {
      BYTE7(v98[0]) = v16 - LOBYTE(begin->first.__i_);
      p_dst = &__dst;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    memmove(p_dst, i, v17);
    goto LABEL_23;
  }

  v14 = 0;
LABEL_44:
  v32 = v82;
  if (v14 - v82 != 24)
  {
    v33 = v82 + 3;
    while (v33 != v14)
    {
      if (*(v32 + 23) < 0)
      {
        operator delete(*v32);
      }

      *v32 = *(v32 + 3);
      v32[2] = v32[5];
      *(v32 + 47) = 0;
      v33 = v32 + 6;
      *(v32 + 24) = 0;
      v32 += 3;
    }

    while (v14 != v32)
    {
      v34 = *(v14 - 1);
      v14 -= 3;
      if (v34 < 0)
      {
        operator delete(*v14);
      }
    }

    v83 = v32;
  }

  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v101 = 0xAAAAAAAAAAAAAA00;
  *(&v98[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v104 = v35;
  v99 = 0;
  v100 = 0;
  v102 = 0;
  v103 = 0;
  LOBYTE(v104) = 0;
  BYTE8(v104) = 0;
  v105 = 0;
  __dst = 0u;
  v98[0] = 0u;
  v36 = *(v78 + 23);
  if ((v36 & 0x80u) == 0)
  {
    v37 = v78;
  }

  else
  {
    v37 = *v78;
  }

  if ((v36 & 0x80u) != 0)
  {
    v36 = *(v78 + 8);
  }

  *(v98 + 9) = 0uLL;
  v38 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v85, v37, (v37 + v36), &__dst, 0);
  v39 = *(v78 + 23);
  if ((v39 & 0x80u) == 0)
  {
    v40 = v78;
  }

  else
  {
    v40 = *v78;
  }

  if ((v39 & 0x80u) != 0)
  {
    v39 = *(v78 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v89, v40, (v40 + v39), &__dst, 0);
  if (__dst)
  {
    *(&__dst + 1) = __dst;
    operator delete(__dst);
  }

  if (!v38)
  {
LABEL_129:
    v61 = __p;
    if (!__p)
    {
      goto LABEL_135;
    }

LABEL_130:
    v72 = v80;
    while (v72 != v61)
    {
      v73 = *(v72 - 1);
      v72 -= 3;
      if (v73 < 0)
      {
        operator delete(*v72);
      }
    }

    operator delete(v61);
    goto LABEL_135;
  }

  v41 = v89[0].__begin_;
  v42 = v89[0].__end_;
  if (v89[0].__begin_ != v89[0].__end_)
  {
    while (!v41->matched)
    {
      __dst = 0uLL;
      *&v98[0] = 0;
      v49 = v80;
      v48 = v81;
      if (v80 >= v81)
      {
LABEL_79:
        v50 = __p;
        v51 = v49 - __p;
        v52 = 0xAAAAAAAAAAAAAAABLL * (v49 - __p);
        v53 = v52 + 1;
        if (v52 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v54 = 0xAAAAAAAAAAAAAAABLL * ((v48 - __p) >> 3);
        if (2 * v54 > v53)
        {
          v53 = 2 * v54;
        }

        if (v54 >= 0x555555555555555)
        {
          v55 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          if (v55 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v56 = operator new(24 * v55);
        }

        else
        {
          v56 = 0;
        }

        v58 = &v56[24 * v52];
        v59 = &v56[24 * v55];
        *v58 = __dst;
        *(v58 + 2) = *&v98[0];
        v43 = (v58 + 24);
        v60 = &v58[-v51];
        memcpy(&v58[-v51], __p, v51);
        __p = v60;
        v81 = v59;
        if (v50)
        {
          operator delete(v50);
        }

        goto LABEL_70;
      }

LABEL_69:
      *v49 = __dst;
      v49[2] = *&v98[0];
      v43 = v49 + 3;
LABEL_70:
      v80 = v43;
      if (++v41 == v42)
      {
        goto LABEL_97;
      }
    }

    v44 = v41->first.__i_;
    v45 = v41->second.__i_;
    v46 = v45 - v41->first.__i_;
    if (v46 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v46 > 0x16)
    {
      if ((v46 | 7) == 0x17)
      {
        v57 = 25;
      }

      else
      {
        v57 = (v46 | 7) + 1;
      }

      v47 = operator new(v57);
      *(&__dst + 1) = v46;
      *&v98[0] = v57 | 0x8000000000000000;
      *&__dst = v47;
      if (v45 == v44)
      {
LABEL_76:
        *(v47 + v46) = 0;
        v49 = v80;
        v48 = v81;
        if (v80 >= v81)
        {
          goto LABEL_79;
        }

        goto LABEL_69;
      }
    }

    else
    {
      BYTE7(v98[0]) = v45 - LOBYTE(v41->first.__i_);
      v47 = &__dst;
      if (v45 == v44)
      {
        goto LABEL_76;
      }
    }

    memmove(v47, v44, v46);
    goto LABEL_76;
  }

  v43 = 0;
LABEL_97:
  v61 = __p;
  if (v43 - __p != 24)
  {
    v62 = __p;
    if (__p + 3 != v43)
    {
      v62 = __p;
      do
      {
        if (*(v62 + 23) < 0)
        {
          operator delete(*v62);
        }

        *v62 = *(v62 + 3);
        v62[2] = v62[5];
        *(v62 + 47) = 0;
        v63 = v62 + 6;
        *(v62 + 24) = 0;
        v62 += 3;
      }

      while (v63 != v43);
    }

    while (v43 != v62)
    {
      v64 = *(v43 - 1);
      v43 -= 3;
      if (v64 < 0)
      {
        operator delete(*v43);
      }
    }

    v80 = v62;
  }

  v65 = v82;
  if (v82 == v83)
  {
    v38 = 1;
    if (!__p)
    {
      goto LABEL_135;
    }

    goto LABEL_130;
  }

  do
  {
    v66 = *(v65 + 23);
    if (v66 >= 0)
    {
      v67 = *(v65 + 23);
    }

    else
    {
      v67 = v65[1];
    }

    v68 = *(v61 + 23);
    v69 = v68;
    if (v68 < 0)
    {
      v68 = v61[1];
    }

    if (v67 != v68)
    {
      v38 = 0;
      goto LABEL_129;
    }

    if (v66 >= 0)
    {
      v70 = v65;
    }

    else
    {
      v70 = *v65;
    }

    if (v69 >= 0)
    {
      v71 = v61;
    }

    else
    {
      v71 = *v61;
    }

    if (memcmp(v70, v71, v67))
    {
      goto LABEL_124;
    }

    v65 += 3;
    v61 += 3;
  }

  while (v65 != v83);
  v38 = 1;
  v61 = __p;
  if (__p)
  {
    goto LABEL_130;
  }

LABEL_135:
  if (v82)
  {
    v74 = v83;
    while (v74 != v82)
    {
      v75 = *(v74 - 1);
      v74 -= 3;
      if (v75 < 0)
      {
        operator delete(*v74);
      }
    }

    operator delete(v82);
  }

  v76 = v88;
  if (v88 && !atomic_fetch_add((v88 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v76->__on_zero_shared)(v76);
    std::__shared_weak_count::__release_weak(v76);
  }

  std::locale::~locale(v85);
  if (v89[0].__begin_)
  {
    v89[0].__end_ = v89[0].__begin_;
    operator delete(v89[0].__begin_);
  }

  return v38;
}

void sub_296E19B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  v28 = *(v26 - 208);
  if (v28)
  {
    *(v26 - 200) = v28;
    operator delete(v28);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a11);
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_0()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "util");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

const void **ctu::cf::CFSharedRef<__CFReadStream>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x29EDC9518];
  v2 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x29C265CC0](a1 + 2);

  return std::istream::~istream();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  __s2 = &a2[-2].n128_u64[1];
  v272 = a2;
  v261 = &a2[-5].n128_u64[1];
  v262 = &a2[-3];
  k = a1;
  while (1)
  {
    a1 = k;
    v9 = a2 - k;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - k) >> 3);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, &a1[1].n128_i64[1], __s2).n128_u64[0];
          return result;
        case 4:

          result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], __s2).n128_u64[0];
          return result;
        case 5:

          result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, &a1[1].n128_i64[1], &a1[3], &a1[4].n128_i64[1], __s2).n128_u64[0];
          return result;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v116 = (a2 - 24);
        v117 = a2[-1].n128_i8[15];
        if (v117 >= 0)
        {
          v118 = &a2[-2].n128_i8[8];
        }

        else
        {
          v118 = a2[-2].n128_u64[1];
        }

        if (v117 >= 0)
        {
          v119 = a2[-1].n128_u8[15];
        }

        else
        {
          v119 = a2[-1].n128_u64[0];
        }

        v120 = a1[1].n128_i8[7];
        v121 = a1->n128_u64[0];
        v122 = a1->n128_u64[1];
        if (v120 >= 0)
        {
          v123 = a1;
        }

        else
        {
          v123 = a1->n128_u64[0];
        }

        if (v120 >= 0)
        {
          v124 = a1[1].n128_u8[7];
        }

        else
        {
          v124 = a1->n128_u64[1];
        }

        if (v124 >= v119)
        {
          v125 = v119;
        }

        else
        {
          v125 = v124;
        }

        v126 = memcmp(v118, v123, v125);
        if (v126)
        {
          if (v126 < 0)
          {
            return result;
          }
        }

        else if (v119 <= v124)
        {
          return result;
        }

        v259 = a1[1].n128_u64[0];
        v260 = a2[-1].n128_u64[1];
        result = *v116;
        *a1 = *v116;
        a1[1].n128_u64[0] = v260;
        a2[-2].n128_u64[1] = v121;
        a2[-1].n128_u64[0] = v122;
        a2[-1].n128_u64[1] = v259;
        return result;
      }
    }

    if (v9 <= 575)
    {
      if (a4)
      {
        if (a1 == a2)
        {
          return result;
        }

        v127 = (a1 + 24);
        if (&a1[1].n128_i8[8] == a2)
        {
          return result;
        }

        v128 = 0;
        v129 = a1;
        while (2)
        {
          v131 = v129;
          v129 = v127;
          v132 = v131[2].n128_i8[15];
          if (v132 >= 0)
          {
            v133 = v127;
          }

          else
          {
            v133 = v131[1].n128_u64[1];
          }

          if (v132 >= 0)
          {
            v134 = v131[2].n128_u8[15];
          }

          else
          {
            v134 = v131[2].n128_u64[0];
          }

          v135 = v131[1].n128_i8[7];
          if (v135 >= 0)
          {
            v136 = v131;
          }

          else
          {
            v136 = v131->n128_u64[0];
          }

          if (v135 >= 0)
          {
            v137 = v131[1].n128_u8[7];
          }

          else
          {
            v137 = v131->n128_u64[1];
          }

          if (v137 >= v134)
          {
            v138 = v134;
          }

          else
          {
            v138 = v137;
          }

          v139 = memcmp(v133, v136, v138);
          if (v139)
          {
            if (v139 < 0)
            {
LABEL_269:
              v127 = (v129 + 24);
              v128 += 24;
              if (&v129[1].n128_i8[8] == v272)
              {
                return result;
              }

              continue;
            }
          }

          else if (v134 <= v137)
          {
            goto LABEL_269;
          }

          break;
        }

        v140 = *v129;
        v275 = v129[1].n128_i64[0];
        v274 = v140;
        if (v275 >= 0)
        {
          v141 = &v274;
        }

        else
        {
          v141 = v140.n128_u64[0];
        }

        if (v275 >= 0)
        {
          v142 = HIBYTE(v275);
        }

        else
        {
          v142 = v140.n128_u64[1];
        }

        v129[1].n128_u64[0] = v131[1].n128_u64[0];
        *v129 = *v131;
        v131[1].n128_u8[7] = 0;
        v131->n128_u8[0] = 0;
        v130 = a1;
        if (v131 != a1)
        {
          v143 = v128;
          while (1)
          {
            v144 = (a1 + v143);
            v145 = a1->n128_i8[v143 - 1];
            if (v145 >= 0)
            {
              v146 = &a1[-1] + v143 - 8;
            }

            else
            {
              v146 = *(&a1[-1] + v143 - 8);
            }

            if (v145 >= 0)
            {
              v147 = a1->n128_u8[v143 - 1];
            }

            else
            {
              v147 = *(a1[-1].n128_u64 + v143);
            }

            if (v147 >= v142)
            {
              v148 = v142;
            }

            else
            {
              v148 = v147;
            }

            v149 = memcmp(v141, v146, v148);
            if (v149)
            {
              if (v149 < 0)
              {
                v130 = (a1 + v143);
                break;
              }
            }

            else if (v142 <= v147)
            {
              v130 = v131;
              break;
            }

            v131 = (v131 - 24);
            *v144 = *(a1 + v143 - 24);
            v144[1].n128_u64[0] = *(&a1->n128_u64[-1] + v143);
            v144[-1].n128_u8[15] = 0;
            v144[-2].n128_u8[8] = 0;
            v143 -= 24;
            if (!v143)
            {
              v130 = a1;
              break;
            }
          }
        }

        result = v274;
        v130[1].n128_u64[0] = v275;
        *v130 = result;
        goto LABEL_269;
      }

      if (a1 == a2)
      {
        return result;
      }

      v240 = (a1 + 24);
      if (&a1[1].n128_i8[8] == a2)
      {
        return result;
      }

LABEL_483:
      v241 = a1;
      a1 = v240;
      v242 = v241[2].n128_i8[15];
      if (v242 >= 0)
      {
        v243 = v240;
      }

      else
      {
        v243 = v241[1].n128_u64[1];
      }

      if (v242 >= 0)
      {
        v244 = v241[2].n128_u8[15];
      }

      else
      {
        v244 = v241[2].n128_u64[0];
      }

      v245 = v241[1].n128_i8[7];
      if (v245 >= 0)
      {
        v246 = v241;
      }

      else
      {
        v246 = v241->n128_u64[0];
      }

      if (v245 >= 0)
      {
        v247 = v241[1].n128_u8[7];
      }

      else
      {
        v247 = v241->n128_u64[1];
      }

      if (v247 >= v244)
      {
        v248 = v244;
      }

      else
      {
        v248 = v247;
      }

      v249 = memcmp(v243, v246, v248);
      if (v249)
      {
        if (v249 < 0)
        {
          goto LABEL_482;
        }
      }

      else if (v244 <= v247)
      {
        goto LABEL_482;
      }

      v250 = *a1;
      v275 = a1[1].n128_i64[0];
      v274 = v250;
      a1->n128_u64[1] = 0;
      a1[1].n128_u64[0] = 0;
      a1->n128_u64[0] = 0;
      if (v275 >= 0)
      {
        v251 = &v274;
      }

      else
      {
        v251 = v274.n128_u64[0];
      }

      if (v275 >= 0)
      {
        v252 = HIBYTE(v275);
      }

      else
      {
        v252 = v274.n128_u64[1];
      }

      for (i = a1; ; i = (i - 24))
      {
        *i = *(i - 24);
        i[1].n128_u64[0] = i[-1].n128_u64[1];
        i[-1].n128_u8[15] = 0;
        i[-2].n128_u8[8] = 0;
        v254 = i[-2].n128_i8[7];
        if (v254 >= 0)
        {
          v255 = i - 3;
        }

        else
        {
          v255 = i[-3].n128_u64[0];
        }

        if (v254 >= 0)
        {
          v256 = i[-2].n128_u8[7];
        }

        else
        {
          v256 = i[-3].n128_u64[1];
        }

        if (v256 >= v252)
        {
          v257 = v252;
        }

        else
        {
          v257 = v256;
        }

        v258 = memcmp(v251, v255, v257);
        if (v258)
        {
          if (v258 < 0)
          {
LABEL_481:
            result = v274;
            i[-1].n128_u64[1] = v275;
            *(i - 24) = result;
LABEL_482:
            v240 = (a1 + 24);
            if (&a1[1].n128_i8[8] == a2)
            {
              return result;
            }

            goto LABEL_483;
          }
        }

        else if (v252 <= v256)
        {
          goto LABEL_481;
        }
      }
    }

    if (!a3)
    {
      break;
    }

    v11 = v10 >> 1;
    v12 = a1 + 24 * (v10 >> 1);
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(v12, a1, __s2);
      v266 = a3 - 1;
      if ((a4 & 1) == 0)
      {
LABEL_15:
        v17 = a1[-1].n128_i8[15];
        if (v17 >= 0)
        {
          v18 = &a1[-2].n128_i8[8];
        }

        else
        {
          v18 = a1[-2].n128_u64[1];
        }

        if (v17 >= 0)
        {
          v19 = a1[-1].n128_u8[15];
        }

        else
        {
          v19 = a1[-1].n128_u64[0];
        }

        v20 = a1[1].n128_i8[7];
        if (v20 >= 0)
        {
          v21 = a1;
        }

        else
        {
          v21 = a1->n128_u64[0];
        }

        if (v20 >= 0)
        {
          v22 = a1[1].n128_u8[7];
        }

        else
        {
          v22 = a1->n128_u64[1];
        }

        if (v22 >= v19)
        {
          v23 = v19;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v18, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_129;
          }
        }

        else if (v19 <= v22)
        {
LABEL_129:
          v69 = *a1;
          v275 = a1[1].n128_i64[0];
          v274 = v69;
          a1->n128_u64[1] = 0;
          a1[1].n128_u64[0] = 0;
          a1->n128_u64[0] = 0;
          v70 = a2;
          if (v275 >= 0)
          {
            v71 = &v274;
          }

          else
          {
            v71 = v274.n128_u64[0];
          }

          if (v275 >= 0)
          {
            v72 = HIBYTE(v275);
          }

          else
          {
            v72 = v274.n128_u64[1];
          }

          v73 = v70[-1].n128_u8[15];
          v75 = v70[-2].n128_u64[1];
          v74 = v70[-1].n128_u64[0];
          if ((v73 & 0x80u) == 0)
          {
            v76 = __s2;
          }

          else
          {
            v76 = v70[-2].n128_u64[1];
          }

          if ((v73 & 0x80u) == 0)
          {
            v77 = v70[-1].n128_u8[15];
          }

          else
          {
            v77 = v70[-1].n128_u64[0];
          }

          if (v77 >= v72)
          {
            v78 = v72;
          }

          else
          {
            v78 = v77;
          }

          v79 = memcmp(v71, v76, v78);
          if (v79)
          {
            if ((v79 & 0x80000000) == 0)
            {
LABEL_146:
              v80 = (a1 + 24);
              do
              {
                while (1)
                {
                  k = v80;
                  v81 = v80[1].n128_u8[7];
                  v82 = (v81 & 0x80u) == 0 ? k : k->n128_u64[0];
                  v83 = (v81 & 0x80u) == 0 ? v81 : k->n128_u64[1];
                  v84 = v83 >= v72 ? v72 : v83;
                  v85 = memcmp(v71, v82, v84);
                  v80 = (k + 24);
                  if (v85)
                  {
                    break;
                  }

                  if (v72 > v83)
                  {
                    goto LABEL_159;
                  }
                }
              }

              while (v85 < 0);
LABEL_159:
              j = v272;
              if (k < v272)
              {
                for (j = __s2; ; v74 = j->n128_u64[1])
                {
                  if ((v73 & 0x80u) == 0)
                  {
                    v88 = j;
                  }

                  else
                  {
                    v88 = v75;
                  }

                  if ((v73 & 0x80u) == 0)
                  {
                    v89 = v73;
                  }

                  else
                  {
                    v89 = v74;
                  }

                  if (v89 >= v72)
                  {
                    v90 = v72;
                  }

                  else
                  {
                    v90 = v89;
                  }

                  v91 = memcmp(v71, v88, v90);
                  if (v91)
                  {
                    if (v91 < 0)
                    {
                      break;
                    }
                  }

                  else if (v72 <= v89)
                  {
                    break;
                  }

                  v87 = j[-2].n128_u64[1];
                  j = (j - 24);
                  v75 = v87;
                  v73 = j[1].n128_u8[7];
                }
              }

              if (k < j)
              {
                v92 = k->n128_u64[0];
                do
                {
                  v93 = *(k + 8);
                  v94 = *j;
                  k[1].n128_u64[0] = j[1].n128_u64[0];
                  *k = v94;
                  j->n128_u64[0] = v92;
                  *(j + 8) = v93;
                  if (v275 >= 0)
                  {
                    v95 = &v274;
                  }

                  else
                  {
                    v95 = v274.n128_u64[0];
                  }

                  if (v275 >= 0)
                  {
                    v96 = HIBYTE(v275);
                  }

                  else
                  {
                    v96 = v274.n128_u64[1];
                  }

                  v97 = (k + 24);
                  do
                  {
                    while (1)
                    {
                      k = v97;
                      v98 = v97[1].n128_u8[7];
                      v92 = k->n128_u64[0];
                      v99 = (v98 & 0x80u) == 0 ? k : k->n128_u64[0];
                      v100 = (v98 & 0x80u) == 0 ? v98 : k->n128_u64[1];
                      v101 = v100 >= v96 ? v96 : v100;
                      v102 = memcmp(v95, v99, v101);
                      v97 = (k + 24);
                      if (v102)
                      {
                        break;
                      }

                      if (v96 > v100)
                      {
                        goto LABEL_196;
                      }
                    }
                  }

                  while (v102 < 0);
LABEL_196:
                  v103 = (j - 24);
                  do
                  {
                    while (1)
                    {
                      j = v103;
                      v104 = v103[1].n128_u8[7];
                      v105 = (v104 & 0x80u) == 0 ? j : j->n128_u64[0];
                      v106 = (v104 & 0x80u) == 0 ? v104 : j->n128_u64[1];
                      v107 = v106 >= v96 ? v96 : v106;
                      v108 = memcmp(v95, v105, v107);
                      v103 = (j - 24);
                      if (v108)
                      {
                        break;
                      }

                      if (v96 <= v106)
                      {
                        goto LABEL_176;
                      }
                    }
                  }

                  while ((v108 & 0x80000000) == 0);
LABEL_176:
                  ;
                }

                while (k < j);
              }

              v109 = &k[-2].n128_u64[1];
              if (&k[-2].n128_i8[8] == a1)
              {
                a2 = v272;
                a3 = v266;
                if (k[-1].n128_i8[15] < 0)
                {
                  operator delete(*v109);
                }
              }

              else
              {
                a2 = v272;
                a3 = v266;
                if (a1[1].n128_i8[7] < 0)
                {
                  operator delete(a1->n128_u64[0]);
                }

                v110 = *v109;
                a1[1].n128_u64[0] = k[-1].n128_u64[1];
                *a1 = v110;
                k[-1].n128_u8[15] = 0;
                k[-2].n128_u8[8] = 0;
              }

              a4 = 0;
              result = v274;
              k[-1].n128_u64[1] = v275;
              *v109 = result;
              continue;
            }
          }

          else if (v72 > v77)
          {
            goto LABEL_146;
          }

          for (k = (a1 + 24); k < v272; k = (k + 24))
          {
            v111 = k[1].n128_i8[7];
            if (v111 >= 0)
            {
              v112 = k;
            }

            else
            {
              v112 = k->n128_u64[0];
            }

            if (v111 >= 0)
            {
              v113 = k[1].n128_u8[7];
            }

            else
            {
              v113 = k->n128_u64[1];
            }

            if (v113 >= v72)
            {
              v114 = v72;
            }

            else
            {
              v114 = v113;
            }

            v115 = memcmp(v71, v112, v114);
            if (v115)
            {
              if ((v115 & 0x80000000) == 0)
              {
                goto LABEL_159;
              }
            }

            else if (v72 > v113)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_159;
        }
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, v12, __s2);
      v13 = 3 * v11;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(&a1[1].n128_i64[1], &a1[-1] + v13 * 8 - 8, v262);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(&a1[3], &a1[1].n128_i64[v13 + 1], v261);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(&a1[-1] + v13 * 8 - 8, v12, &a1[1].n128_u64[v13 + 1]);
      v14 = a1->n128_u64[0];
      v15 = *(a1 + 8);
      v16 = *v12;
      a1[1].n128_u64[0] = *(v12 + 2);
      *a1 = v16;
      *v12 = v14;
      *(v12 + 8) = v15;
      v266 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v25 = 0;
    v26 = *a1;
    v275 = a1[1].n128_i64[0];
    v274 = v26;
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    a1->n128_u64[0] = 0;
    if (v275 >= 0)
    {
      v27 = &v274;
    }

    else
    {
      v27 = v274.n128_u64[0];
    }

    if (v275 >= 0)
    {
      v28 = HIBYTE(v275);
    }

    else
    {
      v28 = v274.n128_u64[1];
    }

    while (1)
    {
      v29 = a1[1].n128_u64[v25 / 8 + 1];
      v30 = a1[2].n128_i8[v25 + 15];
      v31 = v30 >= 0 ? &a1[1].n128_i8[v25 + 8] : a1[1].n128_u64[v25 / 8 + 1];
      v32 = v30 >= 0 ? a1[2].n128_u8[v25 + 15] : a1[2].n128_u64[v25 / 8];
      v33 = v28 >= v32 ? v32 : v28;
      v34 = memcmp(v31, v27, v33);
      if (v34)
      {
        break;
      }

      if (v32 <= v28)
      {
        goto LABEL_51;
      }

LABEL_39:
      v25 += 24;
    }

    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v35 = (a1 + v25 + 24);
    v36 = __s2;
    if (v25)
    {
      do
      {
        while (1)
        {
          v37 = v36;
          v44 = *(v36 + 23);
          v45 = (v44 & 0x80u) == 0 ? v37 : v37->n128_u64[0];
          v46 = (v44 & 0x80u) == 0 ? v44 : v37->n128_u64[1];
          v47 = v28 >= v46 ? v46 : v28;
          v48 = memcmp(v45, v27, v47);
          v36 = &v37[-2].n128_u64[1];
          if (v48)
          {
            break;
          }

          if (v46 > v28)
          {
            goto LABEL_82;
          }
        }
      }

      while (v48 < 0);
    }

    else
    {
      v37 = v272;
      if (v35 < v272)
      {
        v38 = __s2;
        do
        {
          while (1)
          {
            v37 = v38;
            v39 = *(v38 + 23);
            v40 = (v39 & 0x80u) == 0 ? v37 : v37->n128_u64[0];
            v41 = (v39 & 0x80u) == 0 ? v39 : v37->n128_u64[1];
            v42 = v28 >= v41 ? v41 : v28;
            v43 = memcmp(v40, v27, v42);
            v38 = &v37[-2].n128_u64[1];
            if (!v43)
            {
              break;
            }

            if (v35 >= v37 || (v43 & 0x80000000) == 0)
            {
              goto LABEL_82;
            }
          }
        }

        while (v35 < v37 && v41 <= v28);
      }
    }

LABEL_82:
    k = v35;
    if (v35 < v37)
    {
      v49 = v37;
      do
      {
        v50 = *(k + 8);
        v51 = *v49;
        k[1].n128_u64[0] = v49[1].n128_u64[0];
        *k = v51;
        v49->n128_u64[0] = v29;
        *(v49 + 8) = v50;
        if (v275 >= 0)
        {
          v52 = &v274;
        }

        else
        {
          v52 = v274.n128_u64[0];
        }

        if (v275 >= 0)
        {
          v53 = HIBYTE(v275);
        }

        else
        {
          v53 = v274.n128_u64[1];
        }

        v54 = (k + 24);
        do
        {
          while (1)
          {
            k = v54;
            v55 = v54[1].n128_u8[7];
            v29 = k->n128_u64[0];
            v56 = (v55 & 0x80u) == 0 ? k : k->n128_u64[0];
            v57 = (v55 & 0x80u) == 0 ? v55 : k->n128_u64[1];
            v58 = v53 >= v57 ? v57 : v53;
            v59 = memcmp(v56, v52, v58);
            v54 = (k + 24);
            if (v59)
            {
              break;
            }

            if (v57 <= v53)
            {
              goto LABEL_104;
            }
          }
        }

        while ((v59 & 0x80000000) == 0);
LABEL_104:
        v60 = (v49 - 24);
        do
        {
          while (1)
          {
            v49 = v60;
            v61 = v60[1].n128_u8[7];
            v62 = (v61 & 0x80u) == 0 ? v49 : v49->n128_u64[0];
            v63 = (v61 & 0x80u) == 0 ? v61 : v49->n128_u64[1];
            v64 = v53 >= v63 ? v63 : v53;
            v65 = memcmp(v62, v52, v64);
            v60 = (v49 - 24);
            if (v65)
            {
              break;
            }

            if (v63 > v53)
            {
              goto LABEL_84;
            }
          }
        }

        while (v65 < 0);
LABEL_84:
        ;
      }

      while (k < v49);
    }

    v66 = (k - 24);
    if (&k[-2].n128_i8[8] == a1)
    {
      a2 = v272;
      a3 = v266;
      if (k[-1].n128_i8[15] < 0)
      {
        operator delete(a1->n128_u64[0]);
      }
    }

    else
    {
      a2 = v272;
      a3 = v266;
      if (a1[1].n128_i8[7] < 0)
      {
        operator delete(a1->n128_u64[0]);
      }

      v67 = *v66;
      a1[1].n128_u64[0] = k[-1].n128_u64[1];
      *a1 = v67;
      k[-1].n128_u8[15] = 0;
      k[-2].n128_u8[8] = 0;
    }

    result = v274;
    k[-1].n128_u64[1] = v275;
    *v66 = result;
    if (v35 < v37)
    {
LABEL_127:
      result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,false>(a1, (k - 24), a3, a4 & 1, result).n128_u64[0];
      a4 = 0;
    }

    else
    {
      v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(a1, &k[-2].n128_u64[1]);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(k, a2))
      {
        a2 = (k - 24);
        if (v68)
        {
          return result;
        }

        goto LABEL_1;
      }

      if (!v68)
      {
        goto LABEL_127;
      }
    }
  }

  if (a1 == a2)
  {
    return result;
  }

  v150 = (v10 - 2) >> 1;
  v151 = v150;
  v263 = v9;
  while (2)
  {
    v153 = v151;
    if (v150 >= v151)
    {
      v154 = (2 * v151) | 1;
      v155 = a1 + 24 * v154;
      v156 = 2 * v151 + 2;
      if (v156 >= v10)
      {
        goto LABEL_340;
      }

      v157 = (v155 + 24);
      v158 = v155[23];
      if (v158 >= 0)
      {
        v159 = a1 + 24 * v154;
      }

      else
      {
        v159 = *v155;
      }

      if (v158 >= 0)
      {
        v160 = v155[23];
      }

      else
      {
        v160 = *(v155 + 1);
      }

      v161 = v155[47];
      if (v161 >= 0)
      {
        v162 = v155 + 24;
      }

      else
      {
        v162 = *(v155 + 3);
      }

      if (v161 >= 0)
      {
        v163 = v155[47];
      }

      else
      {
        v163 = *(v155 + 4);
      }

      if (v163 >= v160)
      {
        v164 = v160;
      }

      else
      {
        v164 = v163;
      }

      v165 = memcmp(v159, v162, v164);
      if (v165)
      {
        a2 = v272;
        if (v165 < 0)
        {
LABEL_340:
          v157 = &a1->n128_u64[3 * v154];
          v156 = (2 * v153) | 1;
        }
      }

      else
      {
        v166 = v160 >= v163;
        if (v160 == v163)
        {
          v157 = &a1->n128_u64[3 * v154];
          v156 = (2 * v153) | 1;
          a2 = v272;
        }

        else
        {
          a2 = v272;
          if (!v166)
          {
            goto LABEL_340;
          }
        }
      }

      v267 = v153;
      v167 = a1 + 24 * v153;
      v168 = *(v157 + 23);
      if (v168 >= 0)
      {
        v169 = v157;
      }

      else
      {
        v169 = *v157;
      }

      if (v168 >= 0)
      {
        v170 = *(v157 + 23);
      }

      else
      {
        v170 = v157[1];
      }

      v171 = v167[23];
      if (v171 >= 0)
      {
        v172 = a1 + 24 * v153;
      }

      else
      {
        v172 = *v167;
      }

      if (v171 >= 0)
      {
        v173 = v167[23];
      }

      else
      {
        v173 = *(v167 + 1);
      }

      if (v173 >= v170)
      {
        v174 = v170;
      }

      else
      {
        v174 = v173;
      }

      v175 = memcmp(v169, v172, v174);
      if (v175)
      {
        if (v175 < 0)
        {
LABEL_360:
          v176 = *v167;
          v275 = *(v167 + 2);
          v274 = v176;
          *(v167 + 1) = 0;
          *(v167 + 2) = 0;
          *v167 = 0;
          v177 = *v157;
          *(v167 + 2) = v157[2];
          *v167 = v177;
          *(v157 + 23) = 0;
          *v157 = 0;
          if (v150 >= v156)
          {
            v178 = &v274;
            if (v275 < 0)
            {
              v178 = v274.n128_u64[0];
            }

            __s2a = v178;
            if (v275 >= 0)
            {
              v179 = HIBYTE(v275);
            }

            else
            {
              v179 = v274.n128_u64[1];
            }

            while (1)
            {
              v181 = (2 * v156) | 1;
              v182 = a1 + 24 * v181;
              v156 = 2 * v156 + 2;
              if (v156 >= v10)
              {
                goto LABEL_390;
              }

              v152 = (v182 + 24);
              v183 = v182[23];
              v184 = v183 >= 0 ? (a1 + 24 * v181) : *v182;
              v185 = v183 >= 0 ? v182[23] : *(v182 + 1);
              v186 = v182[47];
              v187 = v186 >= 0 ? v182 + 24 : *(v182 + 3);
              v188 = v186 >= 0 ? v182[47] : *(v182 + 4);
              v189 = v188 >= v185 ? v185 : v188;
              v190 = memcmp(v184, v187, v189);
              if (v190)
              {
                break;
              }

              v191 = v185 >= v188;
              if (v185 == v188)
              {
                v152 = &a1->n128_u64[3 * v181];
                v156 = v181;
                a2 = v272;
                v150 = (v10 - 2) >> 1;
                goto LABEL_391;
              }

              a2 = v272;
              v150 = (v10 - 2) >> 1;
              if (!v191)
              {
                goto LABEL_390;
              }

LABEL_391:
              v192 = *(v152 + 23);
              if (v192 >= 0)
              {
                v193 = v152;
              }

              else
              {
                v193 = *v152;
              }

              if (v192 >= 0)
              {
                v194 = *(v152 + 23);
              }

              else
              {
                v194 = v152[1];
              }

              if (v179 >= v194)
              {
                v195 = v194;
              }

              else
              {
                v195 = v179;
              }

              v196 = memcmp(v193, __s2a, v195);
              if (v196)
              {
                if ((v196 & 0x80000000) == 0)
                {
                  goto LABEL_314;
                }
              }

              else if (v194 > v179)
              {
                goto LABEL_314;
              }

              v180 = *v152;
              v157[2] = v152[2];
              *v157 = v180;
              *(v152 + 23) = 0;
              *v152 = 0;
              v157 = v152;
              if (v150 < v156)
              {
                goto LABEL_315;
              }
            }

            a2 = v272;
            v150 = (v10 - 2) >> 1;
            if ((v190 & 0x80000000) == 0)
            {
              goto LABEL_391;
            }

LABEL_390:
            v152 = &a1->n128_u64[3 * v181];
            v156 = v181;
            goto LABEL_391;
          }

LABEL_314:
          v152 = v157;
LABEL_315:
          result = v274;
          v152[2] = v275;
          *v152 = result;
          v153 = v267;
        }
      }

      else if (v170 <= v173)
      {
        goto LABEL_360;
      }
    }

    v151 = v153 - 1;
    if (v153)
    {
      continue;
    }

    break;
  }

  v197 = 0xAAAAAAAAAAAAAAABLL * (v263 >> 3);
  do
  {
    if (v197 < 2)
    {
      goto LABEL_405;
    }

    v199 = 0;
    __s2b = a1->n128_u64[0];
    v273 = a2;
    v265 = a1[1].n128_u64[0];
    v268 = a1->n128_u64[1];
    a1->n128_u64[1] = 0;
    a1[1].n128_u64[0] = 0;
    v200 = a1;
    a1->n128_u64[0] = 0;
    do
    {
      v202 = v200 + 24 * v199;
      v201 = (v202 + 24);
      v203 = 2 * v199;
      v199 = (2 * v199) | 1;
      v204 = v203 + 2;
      if (v203 + 2 < v197)
      {
        v207 = *(v202 + 6);
        v206 = (v202 + 48);
        v205 = v207;
        v208 = v206[-1].n128_i8[15];
        if (v208 >= 0)
        {
          v209 = v201;
        }

        else
        {
          v209 = v206[-2].n128_u64[1];
        }

        if (v208 >= 0)
        {
          v210 = v206[-1].n128_u8[15];
        }

        else
        {
          v210 = v206[-1].n128_u64[0];
        }

        v211 = v206[1].n128_i8[7];
        if (v211 >= 0)
        {
          v212 = v206;
        }

        else
        {
          v212 = v205;
        }

        if (v211 >= 0)
        {
          v213 = v206[1].n128_u8[7];
        }

        else
        {
          v213 = v206->n128_u64[1];
        }

        if (v213 >= v210)
        {
          v214 = v210;
        }

        else
        {
          v214 = v213;
        }

        v215 = memcmp(v209, v212, v214);
        if (v215)
        {
          if ((v215 & 0x80000000) == 0)
          {
            goto LABEL_409;
          }
        }

        else if (v210 > v213)
        {
LABEL_409:
          v201 = v206;
          v199 = v204;
        }
      }

      if (v200[1].n128_i8[7] < 0)
      {
        operator delete(v200->n128_u64[0]);
      }

      result = *v201;
      v200[1].n128_u64[0] = v201[1].n128_u64[0];
      *v200 = result;
      v201[1].n128_u8[7] = 0;
      v201->n128_u8[0] = 0;
      v200 = v201;
    }

    while (v199 <= ((v197 - 2) >> 1));
    if (v201 == &a2[-2].n128_i8[8])
    {
      v201->n128_u64[0] = __s2b;
      v201->n128_u64[1] = v268;
      v201[1].n128_u64[0] = v265;
      goto LABEL_405;
    }

    result = *(a2 - 24);
    v201[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v201 = result;
    a2[-2].n128_u64[1] = __s2b;
    a2[-1].n128_u64[0] = v268;
    a2[-1].n128_u64[1] = v265;
    v216 = v201 - a1 + 24;
    if (v216 >= 25)
    {
      v217 = -2 - 0x5555555555555555 * (v216 >> 3);
      v218 = v217 >> 1;
      v219 = a1 + 24 * (v217 >> 1);
      v220 = v219[23];
      if (v220 >= 0)
      {
        v221 = a1 + 24 * (v217 >> 1);
      }

      else
      {
        v221 = *v219;
      }

      if (v220 >= 0)
      {
        v222 = v219[23];
      }

      else
      {
        v222 = *(v219 + 1);
      }

      v223 = v201[1].n128_i8[7];
      if (v223 >= 0)
      {
        v224 = v201;
      }

      else
      {
        v224 = v201->n128_u64[0];
      }

      if (v223 >= 0)
      {
        v225 = v201[1].n128_u8[7];
      }

      else
      {
        v225 = v201->n128_u64[1];
      }

      if (v225 >= v222)
      {
        v226 = v222;
      }

      else
      {
        v226 = v225;
      }

      v227 = memcmp(v221, v224, v226);
      if (v227)
      {
        if (v227 < 0)
        {
          goto LABEL_405;
        }
      }

      else if (v222 <= v225)
      {
        goto LABEL_405;
      }

      v228 = *v201;
      v275 = v201[1].n128_i64[0];
      v274 = v228;
      v201->n128_u64[1] = 0;
      v201[1].n128_u64[0] = 0;
      v201->n128_u64[0] = 0;
      if (v275 >= 0)
      {
        v229 = &v274;
      }

      else
      {
        v229 = v274.n128_u64[0];
      }

      if (v275 >= 0)
      {
        v230 = HIBYTE(v275);
      }

      else
      {
        v230 = v274.n128_u64[1];
      }

      v231 = *v219;
      v201[1].n128_u64[0] = *(v219 + 2);
      *v201 = v231;
      v219[23] = 0;
      *v219 = 0;
      if (v217 >= 2)
      {
        while (1)
        {
          v233 = v218 - 1;
          v218 = (v218 - 1) >> 1;
          v234 = a1 + 24 * v218;
          v235 = v234[23];
          if (v235 >= 0)
          {
            v236 = a1 + 24 * v218;
          }

          else
          {
            v236 = *v234;
          }

          if (v235 >= 0)
          {
            v237 = v234[23];
          }

          else
          {
            v237 = *(v234 + 1);
          }

          if (v230 >= v237)
          {
            v238 = v237;
          }

          else
          {
            v238 = v230;
          }

          v239 = memcmp(v236, v229, v238);
          if (v239)
          {
            if (v239 < 0)
            {
              break;
            }
          }

          else if (v237 <= v230)
          {
            break;
          }

          v232 = *v234;
          *(v219 + 2) = *(v234 + 2);
          *v219 = v232;
          v234[23] = 0;
          *v234 = 0;
          v219 = a1 + 24 * v218;
          if (v233 <= 1)
          {
            goto LABEL_477;
          }
        }
      }

      v234 = v219;
LABEL_477:
      result = v274;
      *(v234 + 2) = v275;
      *v234 = result;
      a2 = v273;
    }

LABEL_405:
    a2 = (a2 - 24);
  }

  while (v197-- > 2);
  return result;
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 23);
  v7 = *a2;
  v8 = *(a2 + 8);
  if (v6 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v6 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  v11 = *(a1 + 23);
  v13 = *a1;
  v12 = *(a1 + 8);
  if (v11 >= 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = *a1;
  }

  if (v11 >= 0)
  {
    v15 = *(a1 + 23);
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v10 > v15)
  {
LABEL_18:
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = a3[1];
    }

    if (v10 >= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v10;
    }

    v22 = memcmp(v19, v9, v21);
    if (v22)
    {
      if ((v22 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = *(a1 + 16);
        v24 = a3[2];
        result = *a3;
        *a1 = *a3;
        *(a1 + 16) = v24;
        *a3 = v13;
        a3[1] = v12;
        a3[2] = v23;
        return result;
      }
    }

    else if (v20 > v10)
    {
      goto LABEL_29;
    }

    v31 = *(a1 + 16);
    v32 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v32;
    *a2 = v13;
    *(a2 + 8) = v12;
    *(a2 + 16) = v31;
    v33 = *(a3 + 23);
    if (v33 >= 0)
    {
      v34 = a3;
    }

    else
    {
      v34 = *a3;
    }

    if (v33 >= 0)
    {
      v35 = *(a3 + 23);
    }

    else
    {
      v35 = a3[1];
    }

    if (v31 >= 0)
    {
      v36 = a2;
    }

    else
    {
      v36 = v13;
    }

    if (v31 >= 0)
    {
      v37 = HIBYTE(v31);
    }

    else
    {
      v37 = v12;
    }

    if (v37 >= v35)
    {
      v38 = v35;
    }

    else
    {
      v38 = v37;
    }

    v39 = memcmp(v34, v36, v38);
    if (v39)
    {
      if (v39 < 0)
      {
        return result;
      }
    }

    else if (v35 <= v37)
    {
      return result;
    }

    result = *a3;
    *(a2 + 16) = a3[2];
    *a2 = result;
    *a3 = v13;
    a3[1] = v12;
    a3[2] = v31;
    return result;
  }

  v26 = *(a3 + 23);
  if (v26 >= 0)
  {
    v27 = a3;
  }

  else
  {
    v27 = *a3;
  }

  if (v26 >= 0)
  {
    v28 = *(a3 + 23);
  }

  else
  {
    v28 = a3[1];
  }

  if (v10 >= v28)
  {
    v29 = v28;
  }

  else
  {
    v29 = v10;
  }

  v30 = memcmp(v27, v9, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v28 <= v10)
  {
    return result;
  }

  v40 = *(a2 + 16);
  v41 = a3[2];
  *a2 = *a3;
  *(a2 + 16) = v41;
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v40;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = *(a2 + 8);
  }

  v45 = *(a1 + 23);
  v46 = *a1;
  v47 = *(a1 + 8);
  if (v45 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v45 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v44)
  {
    v50 = v44;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v43, v48, v50);
  if (!v51)
  {
    if (v44 <= v49)
    {
      return result;
    }

    goto LABEL_84;
  }

  if ((v51 & 0x80000000) == 0)
  {
LABEL_84:
    v52 = *(a1 + 16);
    v53 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = v46;
    *(a2 + 8) = v47;
    *(a2 + 16) = v52;
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, const void **a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  v12 = *a3;
  v13 = *(a3 + 8);
  if (v11 >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  if (v11 >= 0)
  {
    v15 = *(a3 + 23);
  }

  else
  {
    v15 = *(a3 + 8);
  }

  if (v15 >= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v9, v14, v16);
  if (v17)
  {
    if (v17 < 0)
    {
      return result;
    }
  }

  else if (v10 <= v15)
  {
    return result;
  }

  v19 = *(a3 + 16);
  v20 = a4[2];
  *a3 = *a4;
  *(a3 + 16) = v20;
  *a4 = v12;
  a4[1] = v13;
  a4[2] = v19;
  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = *(a3 + 8);
  }

  v24 = *(a2 + 23);
  v25 = *a2;
  v26 = *(a2 + 8);
  if (v24 >= 0)
  {
    v27 = a2;
  }

  else
  {
    v27 = *a2;
  }

  if (v24 >= 0)
  {
    v28 = *(a2 + 23);
  }

  else
  {
    v28 = *(a2 + 8);
  }

  if (v28 >= v23)
  {
    v29 = v23;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v22, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v23 <= v28)
  {
    return result;
  }

  v31 = *(a2 + 16);
  v32 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v32;
  *a3 = v25;
  *(a3 + 8) = v26;
  *(a3 + 16) = v31;
  v33 = *(a2 + 23);
  if (v33 >= 0)
  {
    v34 = a2;
  }

  else
  {
    v34 = *a2;
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 23);
  }

  else
  {
    v35 = *(a2 + 8);
  }

  v36 = *(a1 + 23);
  v37 = *a1;
  v38 = *(a1 + 8);
  if (v36 >= 0)
  {
    v39 = a1;
  }

  else
  {
    v39 = *a1;
  }

  if (v36 >= 0)
  {
    v40 = *(a1 + 23);
  }

  else
  {
    v40 = *(a1 + 8);
  }

  if (v40 >= v35)
  {
    v41 = v35;
  }

  else
  {
    v41 = v40;
  }

  v42 = memcmp(v34, v39, v41);
  if (!v42)
  {
    if (v35 <= v40)
    {
      return result;
    }

LABEL_58:
    v43 = *(a1 + 16);
    v44 = *(a2 + 16);
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = v44;
    *a2 = v37;
    *(a2 + 8) = v38;
    *(a2 + 16) = v43;
    return result;
  }

  if ((v42 & 0x80000000) == 0)
  {
    goto LABEL_58;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void **a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  v14 = *a4;
  v15 = *(a4 + 8);
  if (v13 >= 0)
  {
    v16 = a4;
  }

  else
  {
    v16 = *a4;
  }

  if (v13 >= 0)
  {
    v17 = *(a4 + 23);
  }

  else
  {
    v17 = *(a4 + 8);
  }

  if (v17 >= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = memcmp(v11, v16, v18);
  if (v19)
  {
    if (v19 < 0)
    {
      return result;
    }
  }

  else if (v12 <= v17)
  {
    return result;
  }

  v21 = *(a4 + 16);
  v22 = a5[2];
  *a4 = *a5;
  *(a4 + 16) = v22;
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v21;
  v23 = *(a4 + 23);
  if (v23 >= 0)
  {
    v24 = a4;
  }

  else
  {
    v24 = *a4;
  }

  if (v23 >= 0)
  {
    v25 = *(a4 + 23);
  }

  else
  {
    v25 = *(a4 + 8);
  }

  v26 = *(a3 + 23);
  v27 = *a3;
  v28 = *(a3 + 8);
  if (v26 >= 0)
  {
    v29 = a3;
  }

  else
  {
    v29 = *a3;
  }

  if (v26 >= 0)
  {
    v30 = *(a3 + 23);
  }

  else
  {
    v30 = *(a3 + 8);
  }

  if (v30 >= v25)
  {
    v31 = v25;
  }

  else
  {
    v31 = v30;
  }

  v32 = memcmp(v24, v29, v31);
  if (v32)
  {
    if (v32 < 0)
    {
      return result;
    }
  }

  else if (v25 <= v30)
  {
    return result;
  }

  v33 = *(a3 + 16);
  v34 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v34;
  *a4 = v27;
  *(a4 + 8) = v28;
  *(a4 + 16) = v33;
  v35 = *(a3 + 23);
  if (v35 >= 0)
  {
    v36 = a3;
  }

  else
  {
    v36 = *a3;
  }

  if (v35 >= 0)
  {
    v37 = *(a3 + 23);
  }

  else
  {
    v37 = *(a3 + 8);
  }

  v38 = *(a2 + 23);
  v39 = *a2;
  v40 = *(a2 + 8);
  if (v38 >= 0)
  {
    v41 = a2;
  }

  else
  {
    v41 = *a2;
  }

  if (v38 >= 0)
  {
    v42 = *(a2 + 23);
  }

  else
  {
    v42 = *(a2 + 8);
  }

  if (v42 >= v37)
  {
    v43 = v37;
  }

  else
  {
    v43 = v42;
  }

  v44 = memcmp(v36, v41, v43);
  if (v44)
  {
    if (v44 < 0)
    {
      return result;
    }
  }

  else if (v37 <= v42)
  {
    return result;
  }

  v45 = *(a2 + 16);
  v46 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v46;
  *a3 = v39;
  *(a3 + 8) = v40;
  *(a3 + 16) = v45;
  v47 = *(a2 + 23);
  if (v47 >= 0)
  {
    v48 = a2;
  }

  else
  {
    v48 = *a2;
  }

  if (v47 >= 0)
  {
    v49 = *(a2 + 23);
  }

  else
  {
    v49 = *(a2 + 8);
  }

  v50 = *(a1 + 23);
  v51 = *a1;
  v52 = *(a1 + 8);
  if (v50 >= 0)
  {
    v53 = a1;
  }

  else
  {
    v53 = *a1;
  }

  if (v50 >= 0)
  {
    v54 = *(a1 + 23);
  }

  else
  {
    v54 = *(a1 + 8);
  }

  if (v54 >= v49)
  {
    v55 = v49;
  }

  else
  {
    v55 = v54;
  }

  v56 = memcmp(v48, v53, v55);
  if (v56)
  {
    if (v56 < 0)
    {
      return result;
    }
  }

  else if (v49 <= v54)
  {
    return result;
  }

  v57 = *(a1 + 16);
  v58 = *(a2 + 16);
  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = v58;
  *a2 = v51;
  *(a2 + 8) = v52;
  *(a2 + 16) = v57;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*>(uint64_t a1, const void **a2)
{
  v2 = a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a2 - 3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a2 - 3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, a1 + 48, a1 + 72, a2 - 3);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v6 = a2 - 3;
      v7 = *(a2 - 1);
      if (v7 >= 0)
      {
        v8 = a2 - 3;
      }

      else
      {
        v8 = *(a2 - 3);
      }

      if (v7 >= 0)
      {
        v9 = *(a2 - 1);
      }

      else
      {
        v9 = *(a2 - 2);
      }

      v10 = *(a1 + 23);
      v11 = *a1;
      v12 = *(a1 + 8);
      if (v10 >= 0)
      {
        v13 = a1;
      }

      else
      {
        v13 = *a1;
      }

      if (v10 >= 0)
      {
        v14 = *(a1 + 23);
      }

      else
      {
        v14 = *(a1 + 8);
      }

      if (v14 >= v9)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = memcmp(v8, v13, v15);
      if (v16)
      {
        if (v16 < 0)
        {
          return 1;
        }
      }

      else if (v9 <= v14)
      {
        return 1;
      }

      v40 = *(a1 + 16);
      v41 = *(v2 - 1);
      *a1 = *v6;
      *(a1 + 16) = v41;
      *(v2 - 3) = v11;
      *(v2 - 2) = v12;
      *(v2 - 1) = v40;
      return 1;
    }
  }

  v17 = a1 + 48;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::greater<std::string> &,std::string*,0>(a1, a1 + 24, (a1 + 48));
  v18 = (a1 + 72);
  if ((a1 + 72) == v2)
  {
    return 1;
  }

  v19 = 0;
  v20 = 0;
  v42 = v2;
  while (2)
  {
    v22 = *(v18 + 23);
    if (v22 >= 0)
    {
      v23 = v18;
    }

    else
    {
      v23 = *v18;
    }

    if (v22 >= 0)
    {
      v24 = *(v18 + 23);
    }

    else
    {
      v24 = v18[1];
    }

    v25 = *(v17 + 23);
    if (v25 >= 0)
    {
      v26 = v17;
    }

    else
    {
      v26 = *v17;
    }

    if (v25 >= 0)
    {
      v27 = *(v17 + 23);
    }

    else
    {
      v27 = *(v17 + 8);
    }

    if (v27 >= v24)
    {
      v28 = v24;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v23, v26, v28);
    if (v29)
    {
      if (v29 < 0)
      {
        goto LABEL_32;
      }
    }

    else if (v24 <= v27)
    {
      goto LABEL_32;
    }

    v43 = v20;
    v44 = *v18;
    v45 = v18[2];
    *v18 = *v17;
    v18[2] = *(v17 + 16);
    *(v17 + 23) = 0;
    *v17 = 0;
    v30 = v19;
    while (1)
    {
      v31 = a1 + v30;
      v32 = (a1 + v30 + 24);
      if (SHIBYTE(v45) >= 0)
      {
        v33 = &v44;
      }

      else
      {
        v33 = v44;
      }

      if (SHIBYTE(v45) >= 0)
      {
        v34 = HIBYTE(v45);
      }

      else
      {
        v34 = *(&v44 + 1);
      }

      v35 = *(v31 + 47);
      if (v35 >= 0)
      {
        v36 = (a1 + v30 + 24);
      }

      else
      {
        v36 = *(a1 + v30 + 24);
      }

      if (v35 >= 0)
      {
        v37 = *(v31 + 47);
      }

      else
      {
        v37 = *(v31 + 32);
      }

      if (v37 >= v34)
      {
        v38 = v34;
      }

      else
      {
        v38 = v37;
      }

      v39 = memcmp(v33, v36, v38);
      if (!v39)
      {
        if (v34 <= v37)
        {
          goto LABEL_31;
        }

        goto LABEL_54;
      }

      if (v39 < 0)
      {
        break;
      }

LABEL_54:
      v17 -= 24;
      *(v31 + 48) = *v32;
      *(v31 + 64) = *(a1 + v30 + 40);
      *(v31 + 47) = 0;
      *v32 = 0;
      v30 -= 24;
      if (v30 == -48)
      {
        v17 = a1;
        goto LABEL_31;
      }
    }

    v17 = a1 + v30 + 48;
LABEL_31:
    v21 = v44;
    *(v17 + 16) = v45;
    *v17 = v21;
    v20 = v43 + 1;
    v2 = v42;
    if (v43 != 7)
    {
LABEL_32:
      v17 = v18;
      v19 += 24;
      v18 += 3;
      if (v18 == v2)
      {
        return 1;
      }

      continue;
    }

    return v18 + 3 == v42;
  }
}

uint64_t std::unordered_set<std::string>::~unordered_set[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void *std::unique_ptr<std::__hash_node<std::string,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1 && *(v2 + 39) < 0)
    {
      v4 = v2;
      operator delete(*(v2 + 16));
      v2 = v4;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *GetOsLogContext(void)
{
  if ((atomic_load_explicit(&qword_2A18CA8C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CA8C8))
  {
    qword_2A18CA8D0 = 0;
    unk_2A18CA8D8 = 0;
    __cxa_guard_release(&qword_2A18CA8C8);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_2);
  }

  return &qword_2A18CA8D0;
}

void ___Z15GetOsLogContextv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "global");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t asString()
{
  return MEMORY[0x2A1C6B1D8]();
}

{
  return MEMORY[0x2A1C6B1F0]();
}

uint64_t awd::asString()
{
  return MEMORY[0x2A1C6D060]();
}

{
  return MEMORY[0x2A1C6D068]();
}

{
  return MEMORY[0x2A1C6D070]();
}

{
  return MEMORY[0x2A1C6D078]();
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

uint64_t ctu::operator<<()
{
  return MEMORY[0x2A1C6F408]();
}

{
  return MEMORY[0x2A1C6F410]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F438]();
}

{
  return MEMORY[0x2A1C6F448]();
}

{
  return MEMORY[0x2A1C6F450]();
}

{
  return MEMORY[0x2A1C6F460]();
}

{
  return MEMORY[0x2A1C6F468]();
}

{
  return MEMORY[0x2A1C6F478]();
}

uint64_t awd::AppContext::operator()()
{
  return MEMORY[0x2A1C6D1B8]();
}

{
  return MEMORY[0x2A1C6D1C0]();
}

{
  return MEMORY[0x2A1C6D1C8]();
}

{
  return MEMORY[0x2A1C6D1D0]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}