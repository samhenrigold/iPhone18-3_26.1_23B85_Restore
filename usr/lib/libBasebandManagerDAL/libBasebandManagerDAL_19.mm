void sub_29736EFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, void *aBlock, uint64_t a20, uint64_t a21, char a22)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

void BootModule::requestReset(void *a1, const ResetInfo *a2, uint64_t *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  if (!capabilities::abs::shouldIgnoreResets(v8))
  {
    v12 = a1[63];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
    block[3] = &__block_descriptor_tmp_9_4;
    block[4] = a1;
    block[5] = v7;
    v16 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    ResetInfo::ResetInfo(&v17, a2);
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    aBlock = v13;
    dispatch_async(v12, block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v23 < 0)
    {
      operator delete(__p);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_19:
        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    else if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_20:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    operator delete(v18);
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      v14 = v16;
      if (!v16)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

LABEL_26:
    operator delete(v17.__r_.__value_.__l.__data_);
    v14 = v16;
    if (!v16)
    {
      goto LABEL_28;
    }

LABEL_27:
    std::__shared_weak_count::__release_weak(v14);
    goto LABEL_28;
  }

  v10 = a1[13];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    ResetInfo::asString(a2, v25);
    v11 = v26 >= 0 ? v25 : v25[0];
    *buf = 136446210;
    v28 = v11;
    _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I Ignoring modem reset request: %{public}s", buf, 0xCu);
    if (v26 < 0)
    {
      operator delete(v25[0]);
      if (!*a3)
      {
        goto LABEL_28;
      }

      goto LABEL_12;
    }
  }

  if (*a3)
  {
LABEL_12:
    LODWORD(v25[0]) = 0;
    dispatch::block<void({block_pointer})(int,std::string)>::operator()<int,char const(&)[1]>(a3, v25, "");
  }

LABEL_28:
  std::__shared_weak_count::__release_weak(v9);
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v21 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!a1[5])
  {
    goto LABEL_16;
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v9[3] = &__block_descriptor_tmp_31;
  v9[4] = v3;
  ResetInfo::ResetInfo(&v10, (a1 + 7));
  v6 = a1[21];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v8 = a1[5];
  v7 = a1[6];
  aBlock = v6;
  v18 = v8;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v9);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16 < 0)
  {
    operator delete(__p);
    if ((v14 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      operator delete(v11);
      if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

LABEL_22:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v13);
  if (v12 < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v10.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_22;
  }
}

void ___ZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 576);
  if (v3 > 8 || ((1 << v3) & 0x1C7) == 0)
  {
    v12 = *(v2 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      ResetInfo::asString((a1 + 40), &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Reset requested: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    (*(*v2 + 104))(v2, 1);
    *v64 = 0xAAAAAAAAAAAAAAAALL;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      *v64 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      *v64 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_37;
      }
    }

    if (MEMORY[0x29C26F9F0](v15) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v15);
      goto LABEL_38;
    }

    v16 = xpc_null_create();
LABEL_37:
    *v64 = v16;
LABEL_38:
    xpc_release(v15);
    ResetInfo::addToDict((a1 + 40), v64);
    v21 = *v64;
    v63 = *v64;
    if (*v64)
    {
      xpc_retain(*v64);
    }

    else
    {
      v21 = xpc_null_create();
      v63 = v21;
    }

    BootModule::submitBBResetMetric_sync(v2, &v63);
    xpc_release(v21);
    v22 = *v64;
    v62 = *v64;
    v63 = 0;
    if (*v64)
    {
      xpc_retain(*v64);
    }

    else
    {
      v22 = xpc_null_create();
      v62 = v22;
    }

    BootModule::updateResetInfoAnalyticsEvent_sync(v2, &v62);
    xpc_release(v22);
    v62 = 0;
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __p = *(a1 + 40);
    }

    v23 = *MEMORY[0x29EDBEB60];
    v24 = strlen(*MEMORY[0x29EDBEB60]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v24 != __p.__r_.__value_.__l.__size_)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_57;
      }

      if (v24 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v25 = __p.__r_.__value_.__r.__words[0];
      v26 = memcmp(__p.__r_.__value_.__l.__data_, v23, v24);
      operator delete(v25);
      if (v26)
      {
LABEL_50:
        if ((*(a1 + 63) & 0x80000000) == 0)
        {
LABEL_51:
          __p = *(a1 + 40);
          goto LABEL_58;
        }

LABEL_57:
        std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
LABEL_58:
        v27 = *MEMORY[0x29EDBEB68];
        v28 = strlen(*MEMORY[0x29EDBEB68]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          if (v28 == __p.__r_.__value_.__l.__size_)
          {
            if (v28 == -1)
            {
              std::string::__throw_out_of_range[abi:ne200100]();
            }

            v29 = __p.__r_.__value_.__r.__words[0];
            v30 = memcmp(__p.__r_.__value_.__l.__data_, v27, v28);
            operator delete(v29);
            if (!v30)
            {
              goto LABEL_65;
            }
          }

          else
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else if (v28 == SHIBYTE(__p.__r_.__value_.__r.__words[2]) && !memcmp(&__p, v27, v28))
        {
LABEL_65:
          BootModule::reportStatisticsSoftReset_sync(v2);
        }

LABEL_67:
        *(v2 + 194) = 0;
        memset(&buf, 170, 16);
        (*(*v2 + 88))(&buf, v2);
        if (!buf.__r_.__value_.__r.__words[0])
        {
LABEL_102:
          size = buf.__r_.__value_.__l.__size_;
          if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (size->__on_zero_shared)(size);
            std::__shared_weak_count::__release_weak(size);
          }

          xpc_release(*v64);
          return;
        }

        Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
        v31 = *&__p.__r_.__value_.__l.__data_;
        if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(**(&v31 + 1) + 16))(*(&v31 + 1));
          std::__shared_weak_count::__release_weak(*(&v31 + 1));
        }

        if (v31)
        {
          Registry::getAdaptiveTimerService(&__p, *(v2 + 608));
          ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
          v33 = __p.__r_.__value_.__l.__size_;
          if (__p.__r_.__value_.__l.__size_ && !atomic_fetch_add((__p.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            v34 = ScaledTime;
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
            ScaledTime = v34;
          }

          v35 = ScaledTime / 1000;
        }

        else
        {
          v35 = 360000;
        }

        object = 0xAAAAAAAAAAAAAAAALL;
        v36 = buf.__r_.__value_.__r.__words[0];
        v37 = operator new(0x38uLL);
        strcpy(v37, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v38 = *(v36 + 48);
        std::string::__init_copy_ctor_external(&__p, v37, 0x33uLL);
        (*(*v38 + 24))(&object, v38, &__p, v35);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        operator delete(v37);
        v40 = *(a1 + 160);
        v39 = *(a1 + 168);
        __p.__r_.__value_.__r.__words[0] = v2;
        __p.__r_.__value_.__l.__size_ = v40;
        __p.__r_.__value_.__r.__words[2] = v39;
        if (v39)
        {
          atomic_fetch_add_explicit((v39 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(&v52, (a1 + 40));
        v41 = *(a1 + 152);
        if (v41)
        {
          v41 = _Block_copy(v41);
        }

        aBlock = v41;
        v60 = object;
        if (object)
        {
          dispatch_retain(object);
          v42 = object;
        }

        else
        {
          v42 = 0;
        }

        v43 = *(v2 + 88);
        v44 = operator new(0x98uLL);
        v45 = v44;
        *&v44->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
        v46 = __p.__r_.__value_.__r.__words[2];
        v44->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 16), 1uLL, memory_order_relaxed);
        }

        ResetInfo::ResetInfo(v44 + 1, &v52);
        v47 = aBlock;
        if (aBlock)
        {
          v47 = _Block_copy(aBlock);
        }

        v48 = v60;
        v45[5].__words[2] = v47;
        v45[6].__words[0] = v48;
        v60 = 0;
        dispatch_group_notify_f(v42, v43, v45, _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_);
        if (v60)
        {
          dispatch_release(v60);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v58 < 0)
        {
          operator delete(v57);
          if ((v56 & 0x80000000) == 0)
          {
LABEL_96:
            if ((v54 & 0x80000000) == 0)
            {
              goto LABEL_97;
            }

            goto LABEL_109;
          }
        }

        else if ((v56 & 0x80000000) == 0)
        {
          goto LABEL_96;
        }

        operator delete(v55);
        if ((v54 & 0x80000000) == 0)
        {
LABEL_97:
          if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_98;
          }

          goto LABEL_110;
        }

LABEL_109:
        operator delete(v53);
        if ((SHIBYTE(v52.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_98:
          v49 = __p.__r_.__value_.__r.__words[2];
          if (!__p.__r_.__value_.__r.__words[2])
          {
            goto LABEL_100;
          }

          goto LABEL_99;
        }

LABEL_110:
        operator delete(v52.__r_.__value_.__l.__data_);
        v49 = __p.__r_.__value_.__r.__words[2];
        if (!__p.__r_.__value_.__r.__words[2])
        {
LABEL_100:
          if (object)
          {
            dispatch_release(object);
          }

          goto LABEL_102;
        }

LABEL_99:
        std::__shared_weak_count::__release_weak(v49);
        goto LABEL_100;
      }
    }

    else if (v24 != SHIBYTE(__p.__r_.__value_.__r.__words[2]) || memcmp(&__p, v23, v24))
    {
      goto LABEL_50;
    }

    BootModule::reportStatisticsHardResetTime_sync(v2);
    goto LABEL_67;
  }

  v5 = v3;
  __p.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_297433A20;
  strcpy(__p.__r_.__value_.__l.__data_, "Reset rejected; Boot state is: ");
  v6 = off_29EE683A8[v5];
  v7 = strlen(v6);
  v8 = std::string::append(&__p, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v10 = *(v2 + 104);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    v18 = buf.__r_.__value_.__r.__words[0];
    ResetInfo::asString((a1 + 40), &__p);
    p_buf = &buf;
    if (v17 < 0)
    {
      p_buf = v18;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *v64 = 136315394;
    *&v64[4] = p_buf;
    v65 = 2080;
    v66 = p_p;
    _os_log_debug_impl(&dword_297288000, v10, OS_LOG_TYPE_DEBUG, "#D %s; %s", v64, 0x16u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(a1 + 152);
  if (!v11)
  {
    goto LABEL_13;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = buf;
  }

  (*(v11 + 16))(v11, 3760250880, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_13:
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_14:
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
}

void sub_29736FDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, dispatch_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::submitBBResetMetric_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = MEMORY[0x29C26F9F0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "No input is given", buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of baseband reset", buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v7) == v5)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = xpc_BOOL_create(*(a1 + 360));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE5A8], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_int64_create(*(a1 + 368));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF890], v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 416));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF898], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v15 = *v15;
  }

  v16 = xpc_string_create(v15);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v18 = *v18;
  }

  v19 = xpc_string_create(v18);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF8D8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v21 = *v21;
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF888], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  v24 = xpc_int64_create(*(a1 + 328));
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE548], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE588], v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = xpc_int64_create(524310);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE660], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  v30 = *a2;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE580], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  v32 = *MEMORY[0x29EDBEBD0];
  v33 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v33 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v33;
  if (v33 >= 0x17)
  {
    if ((v33 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v33 | 7) + 1;
    }

    v35 = operator new(v36);
    v40 = v34;
    v41 = v36 | 0x8000000000000000;
    *buf = v35;
LABEL_48:
    memmove(v35, v32, v34);
    *(v35 + v34) = 0;
    object = v8;
    if (v8)
    {
      goto LABEL_43;
    }

LABEL_49:
    object = xpc_null_create();
    goto LABEL_50;
  }

  HIBYTE(v41) = v33;
  v35 = buf;
  if (v33)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  object = v8;
  if (!v8)
  {
    goto LABEL_49;
  }

LABEL_43:
  xpc_retain(v8);
LABEL_50:
  v37 = 0;
  Service::runCommand(a1, buf, &object, &v37);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v8);
}

void sub_2973704C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::updateResetInfoAnalyticsEvent_sync(uint64_t a1, xpc_object_t *a2)
{
  v190[2] = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C26F9F0](*a2);
  v5 = MEMORY[0x29EDCAA00];
  v6 = *(a1 + 104);
  if (v4 != MEMORY[0x29EDCAA00])
  {
    if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
    }

    return;
  }

  if (os_log_type_enabled(*(a1 + 104), OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of baseband reset", &buf, 2u);
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v7) == v5)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v5)
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v11 = xpc_BOOL_create(*(a1 + 360));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "inVoiceCall", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  v13 = xpc_int64_create(*(a1 + 368));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat", v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = xpc_int64_create(*(a1 + 416));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "rat2", v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = (a1 + 376);
  if (*(a1 + 399) < 0)
  {
    v17 = *v17;
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN", v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = (a1 + 424);
  if (*(a1 + 447) < 0)
  {
    v20 = *v20;
  }

  v21 = xpc_string_create(v20);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "PLMN2", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = *(a1 + 400);
  if (v23)
  {
    v24 = xpc_uint64_create(v23);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId", v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
  }

  v26 = *(a1 + 448);
  if (v26)
  {
    v27 = xpc_uint64_create(v26);
    if (!v27)
    {
      v27 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "cellId2", v27);
    v28 = xpc_null_create();
    xpc_release(v27);
    xpc_release(v28);
  }

  v29 = *(a1 + 408);
  if (v29)
  {
    v30 = xpc_uint64_create(v29);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac", v30);
    v31 = xpc_null_create();
    xpc_release(v30);
    xpc_release(v31);
  }

  v32 = *(a1 + 456);
  if (v32)
  {
    v33 = xpc_uint64_create(v32);
    if (!v33)
    {
      v33 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "tac2", v33);
    v34 = xpc_null_create();
    xpc_release(v33);
    xpc_release(v34);
  }

  v35 = (a1 + 464);
  if (*(a1 + 487) < 0)
  {
    v35 = *v35;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "sku", v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  v38 = xpc_int64_create(*(a1 + 328));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "operatingMode", v38);
  v39 = xpc_null_create();
  xpc_release(v38);
  xpc_release(v39);
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED80]);
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v41 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  is_transcription_pending = util::apfs::is_transcription_pending(v42);
  v44 = xpc_BOOL_create((is_transcription_pending ^ 1u) & v41);
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "isMTBF", v44);
  v45 = xpc_null_create();
  xpc_release(v44);
  xpc_release(v45);
  memset(__s1, 170, sizeof(__s1));
  v46 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEEE0]);
  *&buf = v46;
  if (v46)
  {
    xpc_retain(v46);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &buf, *MEMORY[0x29EDBF5C8], v47);
  xpc_release(buf);
  if (is_transcription_pending)
  {
    v48 = *(a1 + 104);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_297288000, v48, OS_LOG_TYPE_DEFAULT, "#I APFS transcription is pending", &buf, 2u);
    }

    if (v41)
    {
      v49 = *(a1 + 104);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_297288000, v49, OS_LOG_TYPE_DEFAULT, "#I Downgrading Baseband Reset MTBF metric because APFS transcription is pending", &buf, 2u);
      }
    }
  }

  if (__s1[2] >= 0)
  {
    v50 = __s1;
  }

  else
  {
    v50 = __s1[0];
  }

  v51 = xpc_string_create(v50);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetType", v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  v53 = strlen(*MEMORY[0x29EDBF6D8]);
  v54 = v53;
  v55 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v53 != -1)
    {
      v56 = __s1;
      goto LABEL_78;
    }

LABEL_283:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v53 == -1)
  {
    goto LABEL_283;
  }

  v56 = __s1[0];
  v55 = __s1[1];
LABEL_78:
  if (v55 >= v54)
  {
    v57 = v54;
  }

  else
  {
    v57 = v55;
  }

  if (!memcmp(v56, *MEMORY[0x29EDBF6D8], v57) && v55 == v54)
  {
    v58 = xpc_string_create(*MEMORY[0x29EDBE918]);
    if (!v58)
    {
      v58 = xpc_null_create();
    }

    xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v58);
    v59 = xpc_null_create();
    xpc_release(v58);
    xpc_release(v59);
    goto LABEL_246;
  }

  memset(&v179, 170, sizeof(v179));
  v60 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBED88]);
  *&buf = v60;
  if (v60)
  {
    xpc_retain(v60);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v179, &buf, "no-reset-reason", v61);
  xpc_release(buf);
  memset(&__str, 170, sizeof(__str));
  if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, v179.__r_.__value_.__l.__data_, v179.__r_.__value_.__l.__size_);
  }

  else
  {
    __str = v179;
  }

  v62 = *MEMORY[0x29EDBF750];
  v63 = strlen(*MEMORY[0x29EDBF750]);
  v64 = v63;
  v65 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v63 != -1)
    {
      v65 = __s1[1];
      if (__s1[1] >= v63)
      {
        v68 = v63;
      }

      else
      {
        v68 = __s1[1];
      }

      v67 = memcmp(__s1[0], v62, v68);
      if (v67)
      {
        goto LABEL_232;
      }

      goto LABEL_104;
    }

LABEL_285:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v63 == -1)
  {
    goto LABEL_285;
  }

  if (SHIBYTE(__s1[2]) >= v63)
  {
    v66 = v63;
  }

  else
  {
    v66 = SHIBYTE(__s1[2]);
  }

  v67 = memcmp(__s1, v62, v66);
  if (v67)
  {
    goto LABEL_232;
  }

LABEL_104:
  if (v65 == v64)
  {
    v69 = capabilities::radio::maverick(v67);
    if (v69)
    {
      *&v70 = 0xAAAAAAAAAAAAAAAALL;
      *(&v70 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v176 = v70;
      v177 = v70;
      v174 = v70;
      v175 = v70;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v174, "(ATCS_TIMEOUT on message for svc=[0-9]*)(client=[0-9]*).*(txid=[0-9]*)(msgid=0x[a-zA-Z0-9]*)\\)(.*)", 0);
      *&v71 = 0xAAAAAAAAAAAAAAAALL;
      *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAA00;
      v166[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v172 = v71;
      v167 = 0;
      v168 = 0;
      v170 = 0;
      v171 = 0;
      LOBYTE(v172) = 0;
      BYTE8(v172) = 0;
      v173 = 0;
      memset(v166, 0, 41);
      v185 = 0xAAAAAAAAAAAAAA00;
      *(&v182[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v188 = v71;
      v183 = 0;
      v184 = 0;
      v186 = 0;
      v187 = 0;
      LOBYTE(v188) = 0;
      BYTE8(v188) = 0;
      v189 = 0;
      buf = 0u;
      v182[0] = 0u;
      size = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = &v179;
      }

      else
      {
        v73 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v179.__r_.__value_.__l.__size_;
      }

      *(v182 + 9) = 0uLL;
      v74 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v174, v73, (v73 + size), &buf, 0);
      v75 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v179;
      }

      else
      {
        v76 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v75 = v179.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v166, v76, (v76 + v75), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (!v74)
      {
        goto LABEL_226;
      }

      begin = v166[0].__begin_;
      v78 = 0xAAAAAAAAAAAAAAABLL * ((v166[0].__end_ - v166[0].__begin_) >> 3);
      if (v78 <= 1)
      {
        v79 = v166;
      }

      else
      {
        v79 = v166[0].__begin_;
      }

      if (v79[1].matched)
      {
        if (v78 <= 1)
        {
          v80 = v166;
        }

        else
        {
          v80 = v166[0].__begin_;
        }

        i = v80[1].first.__i_;
        v82 = v80[1].second.__i_;
        v83 = v82 - i;
        if ((v82 - i) > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v83 > 0x16)
        {
          if ((v83 | 7) == 0x17)
          {
            v93 = 25;
          }

          else
          {
            v93 = (v83 | 7) + 1;
          }

          v156 = v93;
          p_dst = operator new(v93);
          __dst.__r_.__value_.__l.__size_ = v82 - i;
          __dst.__r_.__value_.__r.__words[2] = v156 | 0x8000000000000000;
          __dst.__r_.__value_.__r.__words[0] = p_dst;
        }

        else
        {
          *(&__dst.__r_.__value_.__s + 23) = v82 - i;
          p_dst = &__dst;
        }

        if (v82 != i)
        {
          memmove(p_dst, i, v82 - i);
        }

        p_dst->__r_.__value_.__s.__data_[v83] = 0;
        v5 = MEMORY[0x29EDCAA00];
      }

      else
      {
        memset(&__dst, 0, sizeof(__dst));
      }

      p_matched = &begin[4].matched;
      if (v78 <= 4)
      {
        p_matched = &v166[1].__end_cap_;
      }

      if (LOBYTE(p_matched->__value_) == 1)
      {
        v95 = &begin[4];
        if (v78 <= 4)
        {
          v95 = &v166[1];
        }

        v96 = v95->__begin_;
        p_second = &begin[4].second;
        if (v78 <= 4)
        {
          p_second = &v166[1].__end_;
        }

        v98 = *p_second;
        v99 = *p_second - v96;
        if (v99 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v99 > 0x16)
        {
          if ((v99 | 7) == 0x17)
          {
            v104 = 25;
          }

          else
          {
            v104 = (v99 | 7) + 1;
          }

          v100 = operator new(v104);
          v163 = v99;
          v164 = v104 | 0x8000000000000000;
          v162 = v100;
        }

        else
        {
          HIBYTE(v164) = *p_second - v96;
          v100 = &v162;
        }

        if (v98 != v96)
        {
          memmove(v100, v96, v99);
        }

        *(v100 + v99) = 0;
        v103 = HIBYTE(v164);
        v102 = v162;
        v101 = v163;
      }

      else
      {
        v101 = 0;
        v102 = 0;
        v103 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
      }

      if ((v103 & 0x80u) == 0)
      {
        v105 = &v162;
      }

      else
      {
        v105 = v102;
      }

      if ((v103 & 0x80u) == 0)
      {
        v106 = v103;
      }

      else
      {
        v106 = v101;
      }

      v107 = std::string::append(&__dst, v105, v106);
      v108 = *&v107->__r_.__value_.__l.__data_;
      *&v182[0] = *(&v107->__r_.__value_.__l + 2);
      buf = v108;
      v107->__r_.__value_.__l.__size_ = 0;
      v107->__r_.__value_.__r.__words[2] = 0;
      v107->__r_.__value_.__r.__words[0] = 0;
      v109 = 0xAAAAAAAAAAAAAAABLL * ((v166[0].__end_ - v166[0].__begin_) >> 3);
      p_end_cap = &v166[0].__begin_[5].matched;
      if (v109 <= 5)
      {
        p_end_cap = &v166[1].__end_cap_;
      }

      if (LOBYTE(p_end_cap->__value_) == 1)
      {
        v111 = v109 > 5;
        if (v109 <= 5)
        {
          v112 = &v166[1];
        }

        else
        {
          v112 = v166[0].__begin_ + 5;
        }

        v113 = v112->first.__i_;
        p_end = &v166[0].__begin_[5].second;
        if (!v111)
        {
          p_end = &v166[1].__end_;
        }

        v115 = *p_end;
        v116 = *p_end - v113;
        if (v116 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v116 > 0x16)
        {
          if ((v116 | 7) == 0x17)
          {
            v121 = 25;
          }

          else
          {
            v121 = (v116 | 7) + 1;
          }

          p_p = operator new(v121);
          v160 = v116;
          v161 = v121 | 0x8000000000000000;
          __p = p_p;
        }

        else
        {
          HIBYTE(v161) = *p_end - v113;
          p_p = &__p;
        }

        if (v115 != v113)
        {
          memmove(p_p, v113, v116);
        }

        *(p_p + v116) = 0;
        v120 = HIBYTE(v161);
        v119 = __p;
        v118 = v160;
      }

      else
      {
        v118 = 0;
        v119 = 0;
        v120 = 0;
        __p = 0;
        v160 = 0;
        v161 = 0;
      }

      if ((v120 & 0x80u) == 0)
      {
        v122 = &__p;
      }

      else
      {
        v122 = v119;
      }

      if ((v120 & 0x80u) == 0)
      {
        v123 = v120;
      }

      else
      {
        v123 = v118;
      }

      v124 = std::string::append(&buf, v122, v123);
      v125 = v124->__r_.__value_.__r.__words[0];
      v190[0] = v124->__r_.__value_.__l.__size_;
      *(v190 + 7) = *(&v124->__r_.__value_.__r.__words[1] + 7);
      v126 = HIBYTE(v124->__r_.__value_.__r.__words[2]);
      v124->__r_.__value_.__l.__size_ = 0;
      v124->__r_.__value_.__r.__words[2] = 0;
      v124->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      __str.__r_.__value_.__r.__words[0] = v125;
      __str.__r_.__value_.__l.__size_ = v190[0];
      *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v190 + 7);
      *(&__str.__r_.__value_.__s + 23) = v126;
      if (SHIBYTE(v161) < 0)
      {
        operator delete(__p);
        if ((SBYTE7(v182[0]) & 0x80000000) == 0)
        {
LABEL_209:
          if ((SHIBYTE(v164) & 0x80000000) == 0)
          {
            goto LABEL_210;
          }

          goto LABEL_216;
        }
      }

      else if ((SBYTE7(v182[0]) & 0x80000000) == 0)
      {
        goto LABEL_209;
      }

      operator delete(buf);
      if ((SHIBYTE(v164) & 0x80000000) == 0)
      {
LABEL_210:
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_211;
        }

        goto LABEL_217;
      }

LABEL_216:
      operator delete(v162);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_211:
        v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_212;
        }

        goto LABEL_218;
      }

LABEL_217:
      operator delete(__dst.__r_.__value_.__l.__data_);
      v127 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_212:
        if ((v127 & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&v179, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          v179 = __str;
        }

LABEL_226:
        if (v166[0].__begin_)
        {
          v166[0].__end_ = v166[0].__begin_;
          operator delete(v166[0].__begin_);
        }

        v130 = v177;
        if (v177 && !atomic_fetch_add((v177 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v130->__on_zero_shared)(v130);
          std::__shared_weak_count::__release_weak(v130);
        }

        std::locale::~locale(&v174);
        goto LABEL_232;
      }

LABEL_218:
      if (v127 >= 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (v127 >= 0)
      {
        v129 = v127;
      }

      else
      {
        v129 = __str.__r_.__value_.__l.__size_;
      }

      std::string::__assign_no_alias<false>(&v179, p_str, v129);
      goto LABEL_226;
    }

    if (capabilities::radio::ice(v69))
    {
      *&v85 = 0xAAAAAAAAAAAAAAAALL;
      *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v176 = v85;
      v177 = v85;
      v174 = v85;
      v175 = v85;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v174, "(.*ARI_TIMEOUT -.*)( SZ\\([0-9]*\\).*)", 0);
      *&v86 = 0xAAAAAAAAAAAAAAAALL;
      *(&v86 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v169 = 0xAAAAAAAAAAAAAA00;
      v166[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
      v172 = v86;
      v167 = 0;
      v168 = 0;
      v170 = 0;
      v171 = 0;
      LOBYTE(v172) = 0;
      BYTE8(v172) = 0;
      v173 = 0;
      memset(v166, 0, 41);
      v185 = 0xAAAAAAAAAAAAAA00;
      *(&v182[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v188 = v86;
      v183 = 0;
      v184 = 0;
      v186 = 0;
      v187 = 0;
      LOBYTE(v188) = 0;
      BYTE8(v188) = 0;
      v189 = 0;
      buf = 0u;
      v182[0] = 0u;
      v87 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v88 = &v179;
      }

      else
      {
        v88 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v87 = v179.__r_.__value_.__l.__size_;
      }

      *(v182 + 9) = 0uLL;
      v89 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&v174, v88, (v88 + v87), &buf, 0);
      v90 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v91 = &v179;
      }

      else
      {
        v91 = v179.__r_.__value_.__r.__words[0];
      }

      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v90 = v179.__r_.__value_.__l.__size_;
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v166, v91, (v91 + v90), &buf, 0);
      if (buf)
      {
        *(&buf + 1) = buf;
        operator delete(buf);
      }

      if (v89)
      {
        v92 = v166;
        if (0xAAAAAAAAAAAAAAABLL * ((v166[0].__end_ - v166[0].__begin_) >> 3) > 1)
        {
          v92 = v166[0].__begin_;
        }

        std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](&buf, &v92[1]);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        *&__str.__r_.__value_.__l.__data_ = buf;
        __str.__r_.__value_.__r.__words[2] = *&v182[0];
        std::string::operator=(&v179, &__str);
      }

      goto LABEL_226;
    }
  }

LABEL_232:
  if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v131 = &v179;
  }

  else
  {
    v131 = v179.__r_.__value_.__r.__words[0];
  }

  v132 = xpc_string_create(v131);
  if (!v132)
  {
    v132 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "resetReason", v132);
  v133 = xpc_null_create();
  xpc_release(v132);
  xpc_release(v133);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v134 = &__str;
  }

  else
  {
    v134 = __str.__r_.__value_.__r.__words[0];
  }

  v135 = xpc_string_create(v134);
  if (!v135)
  {
    v135 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, "shortResetReason", v135);
  v136 = xpc_null_create();
  xpc_release(v135);
  xpc_release(v136);
  v137 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v137)
  {
    v137 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B0], v137);
  v138 = xpc_null_create();
  xpc_release(v137);
  xpc_release(v138);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_246;
    }
  }

  else if ((SHIBYTE(v179.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_246;
  }

  operator delete(v179.__r_.__value_.__l.__data_);
LABEL_246:
  v139 = xpc_string_create("metricsCCBasebandResetInfo");
  if (!v139)
  {
    v139 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE7F8], v139);
  v140 = xpc_null_create();
  xpc_release(v139);
  xpc_release(v140);
  v141 = xpc_string_create("Reset");
  if (!v141)
  {
    v141 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBE9B8], v141);
  v142 = xpc_null_create();
  xpc_release(v141);
  xpc_release(v142);
  if (v10)
  {
    xpc_retain(v10);
    v143 = v10;
  }

  else
  {
    v143 = xpc_null_create();
  }

  xpc_dictionary_set_value(v8, *MEMORY[0x29EDBF020], v143);
  v144 = xpc_null_create();
  xpc_release(v143);
  xpc_release(v144);
  v145 = xpc_dictionary_create(0, 0, 0);
  if (v145 || (v145 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v145) == v5)
    {
      xpc_retain(v145);
      v146 = v145;
    }

    else
    {
      v146 = xpc_null_create();
    }
  }

  else
  {
    v146 = xpc_null_create();
    v145 = 0;
  }

  xpc_release(v145);
  v147 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v147)
  {
    v147 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE588], v147);
  v148 = xpc_null_create();
  xpc_release(v147);
  xpc_release(v148);
  if (v8)
  {
    xpc_retain(v8);
    v149 = v8;
  }

  else
  {
    v149 = xpc_null_create();
  }

  xpc_dictionary_set_value(v146, *MEMORY[0x29EDBE580], v149);
  v150 = xpc_null_create();
  xpc_release(v149);
  xpc_release(v150);
  v151 = *MEMORY[0x29EDBEBD0];
  v152 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v152 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v153 = v152;
  if (v152 >= 0x17)
  {
    if ((v152 | 7) == 0x17)
    {
      v155 = 25;
    }

    else
    {
      v155 = (v152 | 7) + 1;
    }

    p_buf = operator new(v155);
    *(&buf + 1) = v153;
    *&v182[0] = v155 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_275:
    memmove(p_buf, v151, v153);
    *(p_buf + v153) = 0;
    object = v146;
    if (v146)
    {
      goto LABEL_270;
    }

LABEL_276:
    object = xpc_null_create();
    goto LABEL_277;
  }

  BYTE7(v182[0]) = v152;
  p_buf = &buf;
  if (v152)
  {
    goto LABEL_275;
  }

  LOBYTE(buf) = 0;
  object = v146;
  if (!v146)
  {
    goto LABEL_276;
  }

LABEL_270:
  xpc_retain(v146);
LABEL_277:
  v157 = 0;
  Service::runCommand(a1, &buf, &object, &v157);
  xpc_release(object);
  object = 0;
  if (SBYTE7(v182[0]) < 0)
  {
    operator delete(buf);
  }

  xpc_release(v146);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v10);
  xpc_release(v8);
}

void sub_297371924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a37);
  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  xpc_release(v64);
  xpc_release(v63);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsHardResetTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of hard reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF4F0], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = (*(this + 132) + 1);
  *(this + 132) = v8;
  v9 = xpc_int64_create(v8);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C0], v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  object = v4;
  *buf = operator new(0x20uLL);
  v14 = xmmword_29742C690;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = 0;
  Service::runCommand(this, buf, &object, &v11);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_297371F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsSoftReset_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of soft reset time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = (*(this + 133) + 1);
  *(this + 133) = v5;
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF2C8], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_29742C690;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_2973721BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t _ZZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEEEUb_EUb0_EN3__0D1Ev(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 136);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 71) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 95) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(*(a1 + 24));
    v4 = *(a1 + 16);
    if (!v4)
    {
      return a1;
    }

    goto LABEL_10;
  }

LABEL_14:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v4 = *(a1 + 16);
  if (v4)
  {
LABEL_10:
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void *__copy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1, void *a2)
{
  ResetInfo::ResetInfo((a1 + 40), (a2 + 5));
  result = a2[19];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[20];
  v5 = a2[21];
  *(a1 + 152) = result;
  *(a1 + 160) = v6;
  *(a1 + 168) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c15_ZTSK9ResetInfo152c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE160c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 152);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_7:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_13:
  v4 = *(a1 + 40);

  operator delete(v4);
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1, void *a2)
{
  v4 = a2[6];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  ResetInfo::ResetInfo((a1 + 56), (a2 + 7));
  result = a2[21];
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 168) = result;
  return result;
}

void sub_297372434(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE56c15_ZTSK9ResetInfo168c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
    if ((*(a1 + 127) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 103) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 127) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 104));
  if ((*(a1 + 103) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    operator delete(*(a1 + 56));
    v3 = *(a1 + 48);
    if (!v3)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_13:
  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v3 = *(a1 + 48);
  if (!v3)
  {
    return;
  }

LABEL_8:

  std::__shared_weak_count::__release_weak(v3);
}

void ___ZN10BootModule4initEv_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 104);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *__p = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Initializing", __p, 2u);
  }

  v5 = capabilities::ipc::supportsPCI(v4);
  if (v5)
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule4initEv_block_invoke_10;
    aBlock[3] = &__block_descriptor_tmp_16_1;
    v7 = a1[5];
    v6 = a1[6];
    aBlock[4] = v2;
    aBlock[5] = v7;
    v31 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = _Block_copy(aBlock);
    v9 = *(v2 + 336);
    *(v2 + 336) = v8;
    if (v9)
    {
      _Block_release(v9);
    }

    v5 = v31;
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  capabilities::abs::supportedMobileAssetTypes(v5);
  v10 = capabilities::abs::operator&();
  if (v10 || (capabilities::abs::supportedMobileAssetTypes(v10), capabilities::abs::operator&()))
  {
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v11 = off_2A1399498;
    if (!off_2A1399498)
    {
      SharedData::create_default_global(__p);
      v12 = *__p;
      *__p = 0;
      *&__p[8] = 0;
      v13 = *(&off_2A1399498 + 1);
      off_2A1399498 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&__p[8];
      if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_2A1399498;
    }

    v15 = *(&off_2A1399498 + 1);
    v28 = v11;
    v29 = *(&off_2A1399498 + 1);
    if (*(&off_2A1399498 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *__p = operator new(0x20uLL);
    *&__p[8] = xmmword_297431610;
    strcpy(*__p, "Baseband Mobile Asset PT image");
    SharedData::setPreference<char const*>(v11, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:
        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        v17 = off_2A1399498;
        if (!off_2A1399498)
        {
          SharedData::create_default_global(__p);
          v18 = *__p;
          *__p = 0;
          *&__p[8] = 0;
          v19 = *(&off_2A1399498 + 1);
          off_2A1399498 = v18;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          v20 = *&__p[8];
          if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
          }

          v17 = off_2A1399498;
        }

        v21 = *(&off_2A1399498 + 1);
        v28 = v17;
        v29 = *(&off_2A1399498 + 1);
        if (*(&off_2A1399498 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_297431620;
        strcpy(*__p, "BasebandMobileAssetVerificationState");
        SharedData::getPreference<std::string>(v17, __p, v2 + 256);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v21->__on_zero_shared)(v21);
          std::__shared_weak_count::__release_weak(v21);
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A1399498;
          if (!off_2A1399498)
          {
LABEL_43:
            SharedData::create_default_global(__p);
            v23 = *__p;
            *__p = 0;
            *&__p[8] = 0;
            v24 = *(&off_2A1399498 + 1);
            off_2A1399498 = v23;
            if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }

            v25 = *&__p[8];
            if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }

            v22 = off_2A1399498;
          }
        }

        else
        {
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v22 = off_2A1399498;
          if (!off_2A1399498)
          {
            goto LABEL_43;
          }
        }

        v26 = *(&off_2A1399498 + 1);
        v28 = v22;
        v29 = *(&off_2A1399498 + 1);
        if (*(&off_2A1399498 + 1))
        {
          atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
        *__p = operator new(0x28uLL);
        *&__p[8] = xmmword_297430680;
        strcpy(*__p, "BasebandMobileAssetVerificationVersion");
        SharedData::getPreference<std::string>(v22, __p, v2 + 280);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        if (v26)
        {
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
          }
        }

        return;
      }
    }

    else
    {
      v16 = *(v2 + 104);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }
    }

    *__p = 0;
    _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Clear MobileAsset PT path", __p, 2u);
    goto LABEL_28;
  }
}

void sub_297372B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297372B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297372B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_10(void *a1, int a2, uint64_t a3, int a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    v18 = v10;
    if (v10)
    {
      v11 = v10;
      if (!a1[5])
      {
        goto LABEL_12;
      }

      memset(&v16, 170, sizeof(v16));
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v16, *a3, *(a3 + 8));
      }

      else
      {
        v16 = *a3;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule4initEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_14_1;
      v12[4] = v9;
      v14 = a2;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v16;
      }

      v15 = a4;
      ctu::SharedSynchronizable<BootModule>::execute_wrapped((v9 + 72), v12);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_12:
          if (atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }

LABEL_16:
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
          return;
        }
      }

      else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      operator delete(v16.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_16;
      }
    }
  }
}

void sub_297372D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 - 64);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule4initEv_block_invoke_2(uint64_t a1)
{
  v69 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (!*(a1 + 64))
  {
    v5 = *(a1 + 63);
    v6 = *(a1 + 48);
    if (v5 >= 0)
    {
      v7 = *(a1 + 63);
    }

    else
    {
      v7 = *(a1 + 48);
    }

    v8 = v7 + 11;
    if (v7 + 11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = (a1 + 40);
    if (v8 < 0x17)
    {
      v59[1] = 0;
      v60 = 0;
      HIBYTE(v60) = v7 + 11;
      *(v59 + 7) = 540693582;
      v59[0] = *"PCI-EVENT: ";
      v12 = &v59[1] + 3;
      if (!v7)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((v8 | 7) == 0x17)
      {
        v10 = 25;
      }

      else
      {
        v10 = (v8 | 7) + 1;
      }

      v11 = operator new(v10);
      v59[1] = (v7 + 11);
      v60 = v10 | 0x8000000000000000;
      v59[0] = v11;
      *(v11 + 7) = 540693582;
      *v11 = *"PCI-EVENT: ";
      v12 = v11 + 11;
    }

    if (v5 >= 0)
    {
      v13 = (a1 + 40);
    }

    else
    {
      v13 = *v9;
    }

    memmove(v12, v13, v7);
LABEL_20:
    v12[v7] = 0;
    if ((v5 & 0x80000000) == 0 || v6 != 27 || (**v9 == 0x67676972742D5041 ? (v14 = *(*v9 + 8) == 0x7361622064657265) : (v14 = 0), v14 ? (v15 = *(*v9 + 16) == 0x657220646E616265) : (v15 = 0), v15 ? (v16 = *(*v9 + 19) == 0x746573657220646ELL) : (v16 = 0), !v16))
    {
LABEL_57:
      *&v30 = 0xAAAAAAAAAAAAAAAALL;
      *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v67 = v30;
      v68 = v30;
      v65 = v30;
      v66 = v30;
      v63 = v30;
      v64 = v30;
      *buf = v30;
      v31 = *MEMORY[0x29EDBEB60];
      v32 = strlen(*MEMORY[0x29EDBEB60]);
      if (v32 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v33 = v32;
      if (v32 >= 0x17)
      {
        if ((v32 | 7) == 0x17)
        {
          v35 = 25;
        }

        else
        {
          v35 = (v32 | 7) + 1;
        }

        v34 = operator new(v35);
        *&__dst[8] = v33;
        *&__dst[16] = v35 | 0x8000000000000000;
        *__dst = v34;
      }

      else
      {
        __dst[23] = v32;
        v34 = __dst;
        if (!v32)
        {
LABEL_66:
          v34[v33] = 0;
          v36 = *MEMORY[0x29EDBF750];
          v37 = strlen(*MEMORY[0x29EDBF750]);
          if (v37 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v38 = v37;
          if (v37 >= 0x17)
          {
            if ((v37 | 7) == 0x17)
            {
              v40 = 25;
            }

            else
            {
              v40 = (v37 | 7) + 1;
            }

            v39 = operator new(v40);
            *(&v57 + 1) = v38;
            v58 = v40 | 0x8000000000000000;
            *&v57 = v39;
          }

          else
          {
            HIBYTE(v58) = v37;
            v39 = &v57;
            if (!v37)
            {
LABEL_75:
              v39[v38] = 0;
              Timestamp::Timestamp(v53);
              Timestamp::asString(v53, 0, 9, __p);
              v52 = 0;
              LOBYTE(v51) = 0;
              ResetInfo::ResetInfo(buf, __dst, &v57, v59, __p, 7, &v51);
              if (v56 < 0)
              {
                operator delete(__p[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53, v54);
                if ((SHIBYTE(v58) & 0x80000000) == 0)
                {
LABEL_77:
                  if ((__dst[23] & 0x80000000) == 0)
                  {
                    goto LABEL_78;
                  }

                  goto LABEL_82;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53, v54);
                if ((SHIBYTE(v58) & 0x80000000) == 0)
                {
                  goto LABEL_77;
                }
              }

              operator delete(v57);
              if ((__dst[23] & 0x80000000) == 0)
              {
LABEL_78:
                v41 = v2[13];
                if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_83;
                }

LABEL_104:
                if (*(a1 + 63) < 0)
                {
                  v9 = *v9;
                }

                v42 = *(a1 + 68);
                *__dst = 136315394;
                *&__dst[4] = v9;
                *&__dst[12] = 1024;
                *&__dst[14] = v42;
                _os_log_error_impl(&dword_297288000, v41, OS_LOG_TYPE_ERROR, "PCI event: %s, sleeping for %u ms, then requesting Baseband reset", __dst, 0x12u);
LABEL_83:
                usleep(1000 * *(a1 + 68));
                ResetInfo::ResetInfo(&v44, buf);
                aBlock = 0;
                BootModule::requestReset(v2, &v44, &aBlock);
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v50 < 0)
                {
                  operator delete(v49);
                  if ((v48 & 0x80000000) == 0)
                  {
LABEL_87:
                    if ((v46 & 0x80000000) == 0)
                    {
                      goto LABEL_88;
                    }

                    goto LABEL_97;
                  }
                }

                else if ((v48 & 0x80000000) == 0)
                {
                  goto LABEL_87;
                }

                operator delete(v47);
                if ((v46 & 0x80000000) == 0)
                {
LABEL_88:
                  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_89;
                  }

                  goto LABEL_98;
                }

LABEL_97:
                operator delete(v45);
                if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
LABEL_89:
                  if ((SHIBYTE(v68) & 0x80000000) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_99;
                }

LABEL_98:
                operator delete(v44.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v68) & 0x80000000) == 0)
                {
LABEL_90:
                  if ((SBYTE7(v66) & 0x80000000) == 0)
                  {
                    goto LABEL_91;
                  }

                  goto LABEL_100;
                }

LABEL_99:
                operator delete(*(&v67 + 1));
                if ((SBYTE7(v66) & 0x80000000) == 0)
                {
LABEL_91:
                  if ((SHIBYTE(v64) & 0x80000000) == 0)
                  {
                    goto LABEL_92;
                  }

                  goto LABEL_101;
                }

LABEL_100:
                operator delete(v65);
                if ((SHIBYTE(v64) & 0x80000000) == 0)
                {
LABEL_92:
                  if ((SBYTE7(v63) & 0x80000000) == 0)
                  {
                    goto LABEL_93;
                  }

                  goto LABEL_102;
                }

LABEL_101:
                operator delete(*(&v63 + 1));
                if ((SBYTE7(v63) & 0x80000000) == 0)
                {
LABEL_93:
                  if ((SHIBYTE(v60) & 0x80000000) == 0)
                  {
                    return;
                  }

                  goto LABEL_103;
                }

LABEL_102:
                operator delete(*buf);
                if ((SHIBYTE(v60) & 0x80000000) == 0)
                {
                  return;
                }

LABEL_103:
                operator delete(v59[0]);
                return;
              }

LABEL_82:
              operator delete(*__dst);
              v41 = v2[13];
              if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_83;
              }

              goto LABEL_104;
            }
          }

          memmove(v39, v36, v38);
          goto LABEL_75;
        }
      }

      memmove(v34, v31, v33);
      goto LABEL_66;
    }

    v17 = SHIBYTE(v60);
    if ((SHIBYTE(v60) & 0x8000000000000000) != 0)
    {
      v17 = v59[1];
      v20 = (v60 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v20 - v59[1] < 0x1F)
      {
        v18 = v59[1] + 31;
        if ((0x7FFFFFFFFFFFFFF7 - (v60 & 0x7FFFFFFFFFFFFFFFLL)) < v59[1] - v20 + 31)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = v59[0];
        if (v20 > 0x3FFFFFFFFFFFFFF2)
        {
          v24 = 0;
          v23 = 0x7FFFFFFFFFFFFFF7;
LABEL_48:
          v25 = operator new(v23);
          v26 = v25;
          if (v17)
          {
            memmove(v25, v19, v17);
          }

          qmemcpy(v26 + v17, " [likely caused by bbctl reset]", 31);
          if (!v24)
          {
            operator delete(v19);
          }

          v59[1] = v18;
          v60 = v23 | 0x8000000000000000;
          v59[0] = v26;
          v27 = &v18[v26];
          goto LABEL_56;
        }

LABEL_39:
        v21 = 2 * v20;
        if (v18 > 2 * v20)
        {
          v21 = v18;
        }

        if ((v21 | 7) == 0x17)
        {
          v22 = 25;
        }

        else
        {
          v22 = (v21 | 7) + 1;
        }

        if (v21 >= 0x17)
        {
          v23 = v22;
        }

        else
        {
          v23 = 23;
        }

        v24 = v20 == 22;
        goto LABEL_48;
      }

      v28 = v59[0];
      qmemcpy(v59[0] + v59[1], " [likely caused by bbctl reset]", 31);
      v29 = v17 + 31;
      v59[1] = (v17 + 31);
    }

    else
    {
      if (SHIBYTE(v60) < 0x17)
      {
        v18 = (SHIBYTE(v60) + 31);
        v19 = v59;
        v20 = 22;
        goto LABEL_39;
      }

      v28 = v59;
      qmemcpy(v59 + SHIBYTE(v60), " [likely caused by bbctl reset]", 31);
      v29 = v17 + 31;
      HIBYTE(v60) = (v17 + 31) & 0x7F;
    }

    v27 = v28 + v29;
LABEL_56:
    *v27 = 0;
    goto LABEL_57;
  }

  v3 = v2[13];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I PCI event: %s", buf, 0xCu);
  }
}

void sub_297373460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void SharedData::setPreference<char const*>(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(v10, v4);
  v5 = v10[0];
  v6 = *MEMORY[0x29EDB8ED8];
  value = 0;
  ctu::cf::convert_copy(&value, "", 0x8000100, v6, v7);
  v8 = value;
  v10[1] = value;
  if (value)
  {
    v9 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v5, value, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
    CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v9);
    CFRelease(v8);
  }

  MEMORY[0x29C26DF80](v10);
  os_unfair_lock_unlock((a1 + 40));
}

void SharedData::getPreference<std::string>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 40));
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v7, v5);
  v6 = (**a1)(a1, v7);
  if (v6)
  {
    ctu::cf::assign();
    CFRelease(v6);
  }

  MEMORY[0x29C26DF80](&v7);
  os_unfair_lock_unlock((a1 + 40));
}

_WORD *BootModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

char *BootModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  result = operator new(3uLL);
  a1[1] = result + 3;
  a1[2] = result + 3;
  *result = 256;
  result[2] = 3;
  *a1 = result;
  return result;
}

void BootModule::shutdownWithStage(uint64_t a1, int a2, NSObject **a3)
{
  if (a2 == 3)
  {
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 1174405120;
    v8[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36;
    v8[3] = &__block_descriptor_tmp_43_0;
    v7 = *a3;
    v8[4] = a1;
    object = v7;
    if (v7)
    {
      dispatch_retain(v7);
      dispatch_group_enter(object);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v8);
    if (object)
    {
      dispatch_group_leave(object);
      v5 = object;
      if (object)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    if (a2 != 1)
    {
      if (a2)
      {
        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
      v12[3] = &__block_descriptor_tmp_24_2;
      v4 = *a3;
      v12[4] = a1;
      v13 = v4;
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v13);
      }

      ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v12);
      if (!v13)
      {
        return;
      }

      dispatch_group_leave(v13);
      v5 = v13;
      if (!v13)
      {
        return;
      }

LABEL_18:
      dispatch_release(v5);
      return;
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25;
    v10[3] = &__block_descriptor_tmp_35_2;
    v6 = *a3;
    v10[4] = a1;
    group = v6;
    if (v6)
    {
      dispatch_retain(v6);
      dispatch_group_enter(group);
    }

    ctu::SharedSynchronizable<BootModule>::execute_wrapped((a1 + 72), v10);
    if (group)
    {
      dispatch_group_leave(group);
      v5 = group;
      if (group)
      {
        goto LABEL_18;
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutdown prepare", &buf, 2u);
  }

  v4 = *(v2 + 576);
  if (v4 <= 8)
  {
    v5 = 1 << v4;
    if ((v5 & 0x1E1) != 0)
    {
      (*(*v2 + 104))(v2, 8);
      v6 = *(v2 + 176);
      *(v2 + 176) = 0;
      if (v6)
      {
        dispatch_group_leave(v6);
        dispatch_release(v6);
      }
    }

    else if ((v5 & 0xE) != 0)
    {
      v7 = *(a1 + 40);
      if (v7)
      {
        dispatch_retain(v7);
        dispatch_group_enter(v7);
      }

      v8 = *(v2 + 176);
      *(v2 + 176) = v7;
      if (v8)
      {
        dispatch_group_leave(v8);
        dispatch_release(v8);
      }

      v9 = *(v2 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Holding shutdown request session", &buf, 2u);
      }
    }

    else
    {
      (*(*v2 + 104))(v2, 7);
    }
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v20, v2);
  if (v20)
  {
    Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
    v10 = *&buf.__r_.__value_.__l.__data_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(**(&v10 + 1) + 16))(*(&v10 + 1));
      std::__shared_weak_count::__release_weak(*(&v10 + 1));
      if (v10)
      {
LABEL_19:
        Registry::getAdaptiveTimerService(&buf, *(v2 + 608));
        ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
        size = buf.__r_.__value_.__l.__size_;
        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          v13 = ScaledTime;
          (size->__on_zero_shared)(size);
          std::__shared_weak_count::__release_weak(size);
          ScaledTime = v13;
        }

        v14 = ScaledTime / 1000;
        goto LABEL_25;
      }
    }

    else if (v10)
    {
      goto LABEL_19;
    }

    v14 = 240000;
LABEL_25:
    v15 = v20;
    v16 = operator new(0x38uLL);
    strcpy(v16, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v17 = *(v15 + 48);
    std::string::__init_copy_ctor_external(&buf, v16, 0x35uLL);
    (*(*v17 + 24))(&object, v17, &buf, v14);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (object)
    {
      dispatch_release(object);
    }

    operator delete(v16);
  }

  if (notify_is_valid_token(*(v2 + 600)))
  {
    notify_cancel(*(v2 + 600));
  }

  v18 = v21;
  if (v21)
  {
    if (!atomic_fetch_add((v21 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }
}

void sub_297373D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  operator delete(v18);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_297373DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297373DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_25(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[10];
  if (!v3 || (v4 = v2[9], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v2[13];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v2[13];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Shutdown baseband", buf, 2u);
  }

LABEL_6:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26;
  aBlock[3] = &__block_descriptor_tmp_32_1;
  v8 = *(a1 + 40);
  aBlock[4] = v2;
  group = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(group);
  }

  v11 = v4;
  v12 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  (*(*v2 + 120))(v2, &v13);
  if (v13)
  {
    _Block_release(v13);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297373FD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_group_t group, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_26(void *a1)
{
  v2 = a1[7];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  v37 = v4;
  if (!v4)
  {
    return;
  }

  if (!a1[6])
  {
LABEL_52:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v4;
      (v4->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v22);
    }

    return;
  }

  v35 = 0;
  v5 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v35 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF420], v5, v7);
  v8 = *MEMORY[0x29EDBF460];
  v9 = strlen(*MEMORY[0x29EDBF460]);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v9 | 7) + 1;
    }

    v11 = operator new(v13);
    __dst[1] = v10;
    v34 = v13 | 0x8000000000000000;
    __dst[0] = v11;
LABEL_15:
    memmove(v11, v8, v10);
    *(v10 + v11) = 0;
    v12 = v35;
    if (!v35)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  HIBYTE(v34) = v9;
  v11 = __dst;
  if (v9)
  {
    goto LABEL_15;
  }

  LOBYTE(__dst[0]) = 0;
  v12 = v35;
  if (!v35)
  {
    goto LABEL_18;
  }

LABEL_16:
  v14 = CFGetTypeID(v12);
  if (v14 == CFDictionaryGetTypeID())
  {
    cf = v12;
    CFRetain(v12);
    goto LABEL_19;
  }

LABEL_18:
  cf = 0;
LABEL_19:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_28_4;
  v15 = a1[5];
  aBlock[4] = v3;
  group = v15;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(group);
  }

  v16 = a1[7];
  v29 = a1[6];
  v30 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v31);
  if (v31)
  {
    _Block_release(v31);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(__dst[0]);
  }

  v17 = *MEMORY[0x29EDBEBF0];
  v18 = strlen(*MEMORY[0x29EDBEBF0]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v18 | 7) + 1;
    }

    v20 = operator new(v21);
    __p[1] = v19;
    v26 = v21 | 0x8000000000000000;
    __p[0] = v20;
    goto LABEL_37;
  }

  HIBYTE(v26) = v18;
  v20 = __p;
  if (v18)
  {
LABEL_37:
    memmove(v20, v17, v19);
  }

  *(v19 + v20) = 0;
  v23 = 0;
  v24 = 0;
  Service::broadcastEvent(v3, __p, &v24, &v23);
  if (v23)
  {
    _Block_release(v23);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v35)
  {
    CFRelease(v35);
  }

  v4 = v37;
  if (v37)
  {
    goto LABEL_52;
  }
}

void sub_2973743A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, std::__shared_weak_count *a25, void *a26, char a27)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  if (a17 < 0)
  {
    operator delete(__p);
    v29 = a25;
    if (!a25)
    {
LABEL_5:
      v30 = group;
      if (!group)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v29 = a25;
    if (!a25)
    {
      goto LABEL_5;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  v30 = group;
  if (!group)
  {
    goto LABEL_11;
  }

LABEL_9:
  dispatch_group_leave(v30);
  if (group)
  {
    dispatch_release(group);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 80);
    _Unwind_Resume(a1);
  }

LABEL_11:
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v27 - 88));
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_2(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[6];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3;
        v7[3] = &__block_descriptor_tmp_27;
        v7[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v6 + 72), v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v6);
  v2 = v6;
  if (v6)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v8, v3, 0x35uLL);
    (*(*v4 + 32))(v4, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
  }

  v5 = v7;
  if (v7)
  {
    if (!atomic_fetch_add((v7 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void sub_2973746F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete(v17);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_29737472C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_36(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v1 + 88))(&v17, v1);
  v2 = v17;
  if (v17)
  {
    v3 = operator new(0x38uLL);
    strcpy(v3, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
    v4 = *(v2 + 48);
    std::string::__init_copy_ctor_external(&v19, v3, 0x33uLL);
    (*(*v4 + 32))(v4, &v19);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    operator delete(v3);
    v5 = v17;
    v6 = operator new(0x38uLL);
    strcpy(v6, "com.apple.AppleBasebandManager.RadioNotReady.Shutdown");
    v7 = *(v5 + 48);
    std::string::__init_copy_ctor_external(&v19, v6, 0x35uLL);
    (*(*v7 + 32))(v7, &v19);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    operator delete(v6);
  }

  v8 = v1[73];
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8);
    v10 = v1[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "failed";
      if (v9)
      {
        v11 = "successful";
      }

      LODWORD(v19.__r_.__value_.__l.__data_) = 136315138;
      *(v19.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I Baseband poweroff (forced) %s", &v19, 0xCu);
    }
  }

  v12 = v1[18];
  v1[17] = 0;
  v1[18] = 0;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v1[44];
  v1[43] = 0;
  v1[44] = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v1[74];
  v1[73] = 0;
  v1[74] = 0;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v1[65];
  if (v15)
  {
    dispatch_async(v15, &__block_literal_global_10);
  }

  v16 = v18;
  if (v18)
  {
    if (!atomic_fetch_add((v18 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }
  }
}

void sub_297374B78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke_39(capabilities::abs *a1)
{
  capabilities::abs::supportedMobileAssetTypes(a1);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    v2 = "com.apple.MobileAsset.MAVBasebandAssets";
    v3 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_28:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  if (capabilities::abs::operator&())
  {
    v2 = "com.apple.MobileAsset.INTBasebandAssets";
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_28;
  }

LABEL_3:
  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v16 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_10;
  }

  HIBYTE(v16) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_10:
    v3 = memcpy(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  capabilities::abs::supportedMobileAssetTypes(v3);
  v7 = capabilities::abs::operator&();
  if (v7)
  {
    v8 = "PT";
    v9 = strlen("PT");
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_13;
    }

LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v7);
  if (capabilities::abs::operator&())
  {
    v8 = "RP";
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_13:
  v10 = v9;
  if (v9 >= 0x17)
  {
    if ((v9 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v9 | 7) + 1;
    }

    v11 = operator new(v12);
    __p[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_20;
  }

  HIBYTE(v14) = v9;
  v11 = __p;
  if (v9)
  {
LABEL_20:
    memcpy(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  MobileAssetSupport::unlockAsset(__dst, __p);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_35;
  }
}

void sub_297374DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void BootModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 1)
  {
    if (a2)
    {
      return;
    }

    v4 = *a3;
    if (*a3)
    {
      dispatch_retain(*a3);
      dispatch_group_enter(v4);
    }

    v5 = a1[10];
    if (!v5 || (v6 = a1[9], (v7 = std::__shared_weak_count::lock(v5)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    v9 = operator new(0x10uLL);
    *v9 = a1;
    v9[1] = v4;
    v10 = a1[11];
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = operator new(0x18uLL);
    *v11 = v9;
    v11[1] = v6;
    v11[2] = v8;
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_14:
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
    return;
  }

  v12 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v12);
  }

  v13 = a1[10];
  if (!v13 || (v14 = a1[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v15;
  v16 = operator new(0x10uLL);
  *v16 = a1;
  v16[1] = v12;
  v17 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v14;
  v18[2] = v8;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void BootModule::registerCommandHandlers_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *__dst = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_118:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_118;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_118;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (config::hw::iPhone(v5))
  {
    BootModule::startNetworkCampTimer_sync(this);
  }

  v7 = *MEMORY[0x29EDBF318];
  v8 = strlen(*MEMORY[0x29EDBF318]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    *&__dst[8] = v9;
    *&__dst[16] = v11 | 0x8000000000000000;
    *__dst = v10;
    goto LABEL_16;
  }

  __dst[23] = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_16:
    memmove(v10, v7, v9);
  }

  v10[v9] = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_48_3;
  aBlock[4] = this;
  aBlock[5] = v4;
  v66 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v67 = v12;
  Service::registerCommandHandler(this, __dst, &v67);
  if (v12)
  {
    _Block_release(v12);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v13 = *MEMORY[0x29EDBEAA8];
  v14 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
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

    v16 = operator new(v17);
    *&__dst[8] = v15;
    *&__dst[16] = v17 | 0x8000000000000000;
    *__dst = v16;
    goto LABEL_29;
  }

  __dst[23] = v14;
  v16 = __dst;
  if (v14)
  {
LABEL_29:
    memmove(v16, v13, v15);
  }

  v16[v15] = 0;
  v62[0] = MEMORY[0x29EDCA5F8];
  v62[1] = 1174405120;
  v62[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_49;
  v62[3] = &__block_descriptor_tmp_57_1;
  v62[4] = this;
  v62[5] = v4;
  v63 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v62);
  v64 = v18;
  Service::registerCommandHandler(this, __dst, &v64);
  if (v18)
  {
    _Block_release(v18);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v19 = *MEMORY[0x29EDBF340];
  v20 = strlen(*MEMORY[0x29EDBF340]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *&__dst[8] = v21;
    *&__dst[16] = v23 | 0x8000000000000000;
    *__dst = v22;
    goto LABEL_42;
  }

  __dst[23] = v20;
  v22 = __dst;
  if (v20)
  {
LABEL_42:
    memmove(v22, v19, v21);
  }

  v22[v21] = 0;
  v59[0] = MEMORY[0x29EDCA5F8];
  v59[1] = 1174405120;
  v59[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_58;
  v59[3] = &__block_descriptor_tmp_59;
  v59[4] = v4;
  v60 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v59);
  v61 = v24;
  Service::registerCommandHandler(this, __dst, &v61);
  if (v24)
  {
    _Block_release(v24);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  v25 = *MEMORY[0x29EDBEE80];
  v26 = strlen(*MEMORY[0x29EDBEE80]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *&__dst[8] = v27;
    *&__dst[16] = v29 | 0x8000000000000000;
    *__dst = v28;
    goto LABEL_55;
  }

  __dst[23] = v26;
  v28 = __dst;
  if (v26)
  {
LABEL_55:
    memmove(v28, v25, v27);
  }

  v28[v27] = 0;
  v56[0] = MEMORY[0x29EDCA5F8];
  v56[1] = 1174405120;
  v56[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_60;
  v56[3] = &__block_descriptor_tmp_63;
  v56[4] = this;
  v56[5] = v4;
  v57 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v56);
  v58 = v30;
  Service::registerCommandHandler(this, __dst, &v58);
  if (v30)
  {
    _Block_release(v30);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }

  capabilities::abs::supportedMobileAssetTypes(v31);
  v32 = capabilities::abs::operator&();
  if (v32 || (capabilities::abs::supportedMobileAssetTypes(v32), capabilities::abs::operator&()))
  {
    *__dst = operator new(0x20uLL);
    *&__dst[8] = xmmword_297433A30;
    strcpy(*__dst, "CommandBasebandHealthEvent");
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 1174405120;
    v53[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_64;
    v53[3] = &__block_descriptor_tmp_67_3;
    v53[4] = this;
    v53[5] = v4;
    v54 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v33 = _Block_copy(v53);
    v55 = v33;
    Service::registerCommandHandler(this, __dst, &v55);
    if (v33)
    {
      _Block_release(v33);
    }

    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }
  }

  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v34 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v35 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(__dst, v34);
    v36 = *__dst;
    *__dst = 0uLL;
    v37 = *(&off_2A1399388 + 1);
    off_2A1399388 = v36;
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v38 = *&__dst[8];
    if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v35 = off_2A1399388;
  }

  v39 = *(&off_2A1399388 + 1);
  v47 = v35;
  v48 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v35 + 16))(&v49, v35);
  v51 = 0;
  v52 = 0;
  if (v50)
  {
    v52 = std::__shared_weak_count::lock(v50);
    if (v52)
    {
      v51 = v49;
    }

    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
    if (!v51)
    {
      goto LABEL_101;
    }
  }

  else if (!v51)
  {
    goto LABEL_101;
  }

  memset(__dst, 170, 16);
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 1174405120;
  v45[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_68;
  v45[3] = &__block_descriptor_tmp_74_1;
  v45[4] = this;
  v45[5] = v4;
  v46 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v45);
  v41 = *(this + 11);
  if (v41)
  {
    dispatch_retain(v41);
  }

  *__dst = v40;
  *&__dst[8] = v41;
  if (!v40)
  {
    v43 = 0;
    object = v41;
    if (!v41)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

  v43 = _Block_copy(v40);
  object = v41;
  if (v41)
  {
LABEL_90:
    dispatch_retain(v41);
  }

LABEL_91:
  radio::CommandDriver::watchClientState();
  if (object)
  {
    dispatch_release(object);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v41)
  {
    dispatch_release(v41);
  }

  if (v40)
  {
    _Block_release(v40);
  }

  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

LABEL_101:
  v42 = v52;
  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v57)
  {
    std::__shared_weak_count::__release_weak(v57);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  if (v63)
  {
    std::__shared_weak_count::__release_weak(v63);
  }

  if (v66)
  {
    std::__shared_weak_count::__release_weak(v66);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297375918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (a38)
  {
    std::__shared_weak_count::__release_weak(a38);
  }

  if (a45)
  {
    std::__shared_weak_count::__release_weak(a45);
  }

  v48 = *(v46 - 208);
  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  v49 = *(v46 - 144);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  std::__shared_weak_count::__release_weak(v45);
  _Unwind_Resume(a1);
}

void BootModule::startNetworkCampTimer_sync(BootModule *this)
{
  v26 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Start network registration timer for metric submission", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  p_shared_weak_owners = &v5->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v18 = 17;
  strcpy(__p, "registration-wait");
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v25 = 0;
  v8 = operator new(0x20uLL);
  *v8 = &unk_2A1E3B890;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = this;
  v25 = v8;
  support::misc::safe_timer::create(__p, 1800000, v24, 17, buf);
  v11 = *buf;
  if (*buf)
  {
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E3B920;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v11;
    *buf = 0;
    *(this + 67) = v11;
    v13 = *(this + 68);
    *(this + 68) = v12;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *buf = 0;
    *(this + 67) = 0;
    v13 = *(this + 68);
    *(this + 68) = 0;
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

LABEL_13:
  v14 = *buf;
  *buf = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v25)
  {
    (*(*v25 + 40))(v25, v9, v10);
  }

  if (v18 < 0)
  {
LABEL_22:
    operator delete(*__p);
  }

LABEL_19:
  v15 = *(this + 67);
  v16 = *(v15 + 23);
  if (v16 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v15);
  }

  else
  {
    *buf = MEMORY[0x29EDCA5F8];
    v20 = 0x40000000;
    v21 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v22 = &__block_descriptor_tmp_8_0;
    v23 = v15;
    dispatch_sync(v16, buf);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_297375E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  (*(*v22 + 8))(v22, a2, a3, a4, a5, a6, a7, a8);
  std::function<void ()(void)>::~function(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v21);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v21);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      if (a1[5])
      {
        v10[0] = MEMORY[0x29EDCA5F8];
        v10[1] = 1174405120;
        v10[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2;
        v10[3] = &__block_descriptor_tmp_44_0;
        v10[4] = v6;
        v9 = *a3;
        if (*a3)
        {
          v9 = _Block_copy(v9);
        }

        aBlock = v9;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v6 + 72), v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  v6 = v2[576];
  if (v6 > 5)
  {
    switch(v6)
    {
      case 6u:
        v7 = xpc_string_create(*MEMORY[0x29EDBEB58]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 7u:
        v7 = xpc_string_create(*MEMORY[0x29EDBF4A0]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 8u:
        v7 = xpc_string_create(*MEMORY[0x29EDBF420]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      default:
LABEL_28:
        v7 = xpc_string_create(*MEMORY[0x29EDBF0C8]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
    }
  }

  else
  {
    switch(v6)
    {
      case 1u:
        v7 = xpc_string_create(*MEMORY[0x29EDBF210]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 3u:
        v7 = xpc_string_create(*MEMORY[0x29EDBEDF0]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      case 4u:
        v7 = xpc_string_create(*MEMORY[0x29EDBEFB8]);
        if (!v7)
        {
          v7 = xpc_null_create();
        }

        break;
      default:
        goto LABEL_28;
    }
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEAF8], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  if (v2[188] == 1)
  {
    v9 = v2 + 112;
    if (v2[135] < 0)
    {
      v9 = *v9;
    }

    v10 = xpc_string_create(v9);
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v10);
    v11 = xpc_null_create();
    xpc_release(v10);
    xpc_release(v11);
  }

  v12 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 40), &v12, &xdict);
  xpc_release(xdict);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_49(void *a1, xpc_object_t *a2, uint64_t *a3)
{
  v84 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v82 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
        goto LABEL_137;
      }

      v10 = MEMORY[0x29C26F9F0](*a2);
      v11 = MEMORY[0x29EDCAA00];
      if (v10 != MEMORY[0x29EDCAA00])
      {
        v12 = v7[13];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
        }

        goto LABEL_137;
      }

      v77 = 0xAAAAAAAAAAAAAAAALL;
      __p = 0;
      v79 = 0;
      v80 = 0;
      buf = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0;
      v76 = 0xAAAAAAAAAAAAAAAALL;
      ResetInfo::fetchFromDict(&buf, a2);
      if (SBYTE7(v72) < 0)
      {
        std::string::__init_copy_ctor_external(&__s1, buf, *(&buf + 1));
      }

      else
      {
        *&__s1.__r_.__value_.__l.__data_ = buf;
        __s1.__r_.__value_.__r.__words[2] = v72;
      }

      v13 = *MEMORY[0x29EDBEB60];
      v14 = strlen(*MEMORY[0x29EDBEB60]);
      v15 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v14 == __s1.__r_.__value_.__l.__size_)
        {
          if (v14 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (!memcmp(__s1.__r_.__value_.__l.__data_, v13, v14))
          {
            goto LABEL_27;
          }
        }
      }

      else if (v14 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, v13, v14))
      {
LABEL_27:
        v18 = 1;
        goto LABEL_31;
      }

      if (SBYTE7(v72) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, buf, *(&buf + 1));
      }

      else
      {
        *&__dst.__r_.__value_.__l.__data_ = buf;
        __dst.__r_.__value_.__r.__words[2] = v72;
      }

      v16 = *MEMORY[0x29EDBEB68];
      v17 = strlen(*MEMORY[0x29EDBEB68]);
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        if (v17 == __dst.__r_.__value_.__l.__size_)
        {
          if (v17 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          v19 = __dst.__r_.__value_.__r.__words[0];
          v18 = memcmp(__dst.__r_.__value_.__l.__data_, v16, v17) == 0;
        }

        else
        {
          v18 = 0;
          v19 = __dst.__r_.__value_.__r.__words[0];
        }

        operator delete(v19);
      }

      else
      {
        v18 = v17 == SHIBYTE(__dst.__r_.__value_.__r.__words[2]) && memcmp(&__dst, v16, v17) == 0;
      }

      v15 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
LABEL_31:
      if (v15 < 0)
      {
        operator delete(__s1.__r_.__value_.__l.__data_);
        if (v18)
        {
LABEL_33:
          if ((*(*v7 + 96))(v7))
          {
            v20 = 0x7FFFFFFFFFFFFFF7;
            memset(&__s1, 170, sizeof(__s1));
            v21 = *MEMORY[0x29EDBEAA8];
            v22 = strlen(*MEMORY[0x29EDBEAA8]);
            if (v22 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v23 = v22;
            if (v22 >= 0x17)
            {
              if ((v22 | 7) == 0x17)
              {
                v27 = 25;
              }

              else
              {
                v27 = (v22 | 7) + 1;
              }

              p_dst = operator new(v27);
              __dst.__r_.__value_.__l.__size_ = v23;
              __dst.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = v22;
              p_dst = &__dst;
              if (!v22)
              {
LABEL_56:
                p_dst[v23] = 0;
                v28 = operator new(0x28uLL);
                v29 = v28;
                strcpy(v28, " rejected; ABM is shutting down ");
                size = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
                if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                {
                  size = __dst.__r_.__value_.__l.__size_;
                  v32 = (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v32 - __dst.__r_.__value_.__l.__size_ < 0x20)
                  {
                    v31 = __dst.__r_.__value_.__l.__size_ + 32;
                    if (0x7FFFFFFFFFFFFFF7 - (__dst.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __dst.__r_.__value_.__l.__size_ + 32 - v32)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    __src = __dst.__r_.__value_.__r.__words[0];
                    if (v32 > 0x3FFFFFFFFFFFFFF2)
                    {
                      v39 = 0;
LABEL_90:
                      v40 = operator new(v20);
                      v41 = v40;
                      if (size)
                      {
                        memmove(v40, __src, size);
                      }

                      v42 = (v41 + size);
                      v43 = v29[1];
                      *v42 = *v29;
                      v42[1] = v43;
                      if (!v39)
                      {
                        operator delete(__src);
                      }

                      __dst.__r_.__value_.__l.__size_ = v31;
                      __dst.__r_.__value_.__r.__words[2] = v20 | 0x8000000000000000;
                      __dst.__r_.__value_.__r.__words[0] = v41;
                      v44 = (v41 + v31);
LABEL_98:
                      *v44 = 0;
                      __s1 = __dst;
                      memset(&__dst, 0, sizeof(__dst));
                      operator delete(v29);
                      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(__dst.__r_.__value_.__l.__data_);
                        v49 = v7[13];
                        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_100:
                          p_s1 = &__s1;
                          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            p_s1 = __s1.__r_.__value_.__r.__words[0];
                          }

                          LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
                          *(__dst.__r_.__value_.__r.__words + 4) = p_s1;
                          _os_log_impl(&dword_297288000, v49, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                          if (!*a3)
                          {
LABEL_125:
                            if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(__s1.__r_.__value_.__l.__data_);
                              v9 = v82;
                              if ((SHIBYTE(v80) & 0x80000000) == 0)
                              {
LABEL_127:
                                if ((SHIBYTE(v75) & 0x80000000) == 0)
                                {
                                  goto LABEL_128;
                                }

                                goto LABEL_134;
                              }
                            }

                            else
                            {
                              v9 = v82;
                              if ((SHIBYTE(v80) & 0x80000000) == 0)
                              {
                                goto LABEL_127;
                              }
                            }

                            operator delete(__p);
                            if ((SHIBYTE(v75) & 0x80000000) == 0)
                            {
LABEL_128:
                              if ((SHIBYTE(v73) & 0x80000000) == 0)
                              {
                                goto LABEL_129;
                              }

                              goto LABEL_135;
                            }

LABEL_134:
                            operator delete(v74);
                            if ((SHIBYTE(v73) & 0x80000000) == 0)
                            {
LABEL_129:
                              if ((SBYTE7(v72) & 0x80000000) == 0)
                              {
                                goto LABEL_130;
                              }

                              goto LABEL_136;
                            }

LABEL_135:
                            operator delete(*(&v72 + 1));
                            if ((SBYTE7(v72) & 0x80000000) == 0)
                            {
LABEL_130:
                              if (!v9)
                              {
                                return;
                              }

                              goto LABEL_137;
                            }

LABEL_136:
                            operator delete(buf);
                            if (!v9)
                            {
                              return;
                            }

                            goto LABEL_137;
                          }

LABEL_106:
                          v69 = xpc_null_create();
                          v51 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
                          if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v51 = __s1.__r_.__value_.__l.__size_;
                          }

                          if (!v51)
                          {
                            goto LABEL_124;
                          }

                          v52 = xpc_dictionary_create(0, 0, 0);
                          v53 = v52;
                          if (v52)
                          {
                            __dst.__r_.__value_.__r.__words[0] = v52;
                          }

                          else
                          {
                            v53 = xpc_null_create();
                            __dst.__r_.__value_.__r.__words[0] = v53;
                            if (!v53)
                            {
                              v54 = xpc_null_create();
                              v53 = 0;
                              goto LABEL_117;
                            }
                          }

                          if (MEMORY[0x29C26F9F0](v53) == v11)
                          {
                            xpc_retain(v53);
LABEL_118:
                            xpc_release(v53);
                            xpc::dict::operator=(&v69, &__dst.__r_.__value_.__l.__data_);
                            xpc_release(__dst.__r_.__value_.__l.__data_);
                            if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                            {
                              v55 = &__s1;
                            }

                            else
                            {
                              v55 = __s1.__r_.__value_.__r.__words[0];
                            }

                            v67 = xpc_string_create(v55);
                            if (!v67)
                            {
                              v67 = xpc_null_create();
                            }

                            v56 = *MEMORY[0x29EDBE648];
                            __dst.__r_.__value_.__r.__words[0] = &v69;
                            __dst.__r_.__value_.__l.__size_ = v56;
                            xpc::dict::object_proxy::operator=(&__dst, &v67, &object);
                            xpc_release(object);
                            object = 0;
                            xpc_release(v67);
                            v67 = 0;
LABEL_124:
                            LODWORD(__dst.__r_.__value_.__l.__data_) = -534716415;
                            dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &__dst, &v69);
                            xpc_release(v69);
                            goto LABEL_125;
                          }

                          v54 = xpc_null_create();
LABEL_117:
                          __dst.__r_.__value_.__r.__words[0] = v54;
                          goto LABEL_118;
                        }
                      }

                      else
                      {
                        v49 = v7[13];
                        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_100;
                        }
                      }

                      if (!*a3)
                      {
                        goto LABEL_125;
                      }

                      goto LABEL_106;
                    }

LABEL_81:
                    v37 = 2 * v32;
                    if (v31 > 2 * v32)
                    {
                      v37 = v31;
                    }

                    if ((v37 | 7) == 0x17)
                    {
                      v38 = 25;
                    }

                    else
                    {
                      v38 = (v37 | 7) + 1;
                    }

                    if (v37 >= 0x17)
                    {
                      v20 = v38;
                    }

                    else
                    {
                      v20 = 23;
                    }

                    v39 = v32 == 22;
                    goto LABEL_90;
                  }

                  v45 = __dst.__r_.__value_.__r.__words[0];
                  v47 = (__dst.__r_.__value_.__r.__words[0] + __dst.__r_.__value_.__l.__size_);
                  v48 = v28[1];
                  *v47 = *v28;
                  v47[1] = v48;
                  v46 = size + 32;
                  __dst.__r_.__value_.__l.__size_ = size + 32;
                }

                else
                {
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0x17)
                  {
                    v31 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]) | 0x20;
                    __src = &__dst;
                    v32 = 22;
                    goto LABEL_81;
                  }

                  v45 = &__dst;
                  qmemcpy(&__dst + SHIBYTE(__dst.__r_.__value_.__r.__words[2]), " rejected; ABM is shutting down ", 32);
                  v46 = size + 32;
                  *(&__dst.__r_.__value_.__s + 23) = (size + 32) & 0x7F;
                }

                v44 = v45 + v46;
                goto LABEL_98;
              }
            }

            memmove(p_dst, v21, v23);
            goto LABEL_56;
          }

          v58[0] = MEMORY[0x29EDCA5F8];
          v58[1] = 1174405120;
          v58[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_51;
          v58[3] = &__block_descriptor_tmp_54_1;
          v58[4] = v7;
          ResetInfo::ResetInfo(&v59, &buf);
          v26 = *a3;
          if (*a3)
          {
            v26 = _Block_copy(v26);
          }

          aBlock = v26;
          ctu::SharedSynchronizable<BootModule>::execute_wrapped(v7 + 9, v58);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v65 < 0)
          {
            operator delete(v64);
            if ((v63 & 0x80000000) == 0)
            {
LABEL_48:
              if ((v61 & 0x80000000) == 0)
              {
                goto LABEL_49;
              }

              goto LABEL_76;
            }
          }

          else if ((v63 & 0x80000000) == 0)
          {
            goto LABEL_48;
          }

          operator delete(v62);
          if ((v61 & 0x80000000) == 0)
          {
LABEL_49:
            if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_65;
            }

LABEL_77:
            operator delete(v59.__r_.__value_.__l.__data_);
            goto LABEL_65;
          }

LABEL_76:
          operator delete(v60);
          if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_65;
          }

          goto LABEL_77;
        }
      }

      else if (v18)
      {
        goto LABEL_33;
      }

      v25 = v7[13];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        if (SBYTE7(v72) < 0)
        {
          std::string::__init_copy_ctor_external(&__s1, buf, *(&buf + 1));
        }

        else
        {
          *&__s1.__r_.__value_.__l.__data_ = buf;
          __s1.__r_.__value_.__r.__words[2] = v72;
        }

        v33 = &__s1;
        if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v33 = __s1.__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
        *(__dst.__r_.__value_.__r.__words + 4) = v33;
        _os_log_impl(&dword_297288000, v25, OS_LOG_TYPE_DEFAULT, "#I Invalid reset request [%s] ignoring it", &__dst, 0xCu);
        if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s1.__r_.__value_.__l.__data_);
        }
      }

      v34 = xpc_null_create();
      v35 = *a3;
      __s1.__r_.__value_.__r.__words[0] = v34;
      v36 = xpc_null_create();
      (*(v35 + 16))(v35, 3760250882, &__s1);
      xpc_release(__s1.__r_.__value_.__l.__data_);
      xpc_release(v36);
LABEL_65:
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p);
        if ((SHIBYTE(v75) & 0x80000000) == 0)
        {
LABEL_67:
          if ((SHIBYTE(v73) & 0x80000000) == 0)
          {
            goto LABEL_68;
          }

          goto LABEL_72;
        }
      }

      else if ((SHIBYTE(v75) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }

      operator delete(v74);
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
LABEL_68:
        if ((SBYTE7(v72) & 0x80000000) == 0)
        {
          goto LABEL_137;
        }

LABEL_73:
        operator delete(buf);
LABEL_137:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

LABEL_72:
      operator delete(*(&v72 + 1));
      if ((SBYTE7(v72) & 0x80000000) == 0)
      {
        goto LABEL_137;
      }

      goto LABEL_73;
    }
  }
}

void sub_297376E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **xpc::dict::operator=(void **a1, xpc_object_t *a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *a1;
  *a1 = v3;
  xpc_release(v4);
  return a1;
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_51(void *a1)
{
  v2 = a1[4];
  ResetInfo::ResetInfo(&v15, (a1 + 5));
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2_52;
  v5[3] = &__block_descriptor_tmp_53_1;
  ResetInfo::ResetInfo(&v6, (a1 + 5));
  v3 = a1[19];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v13 = v3;
  aBlock = _Block_copy(v5);
  BootModule::requestReset(v2, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    operator delete(v15.__r_.__value_.__l.__data_);
    v4 = v13;
    if (!v13)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_13:
  operator delete(v16);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v4 = v13;
  if (v13)
  {
LABEL_15:
    _Block_release(v4);
  }

LABEL_16:
  if (v12 < 0)
  {
    operator delete(__p);
    if ((v10 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v8 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((v10 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v9);
  if ((v8 & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v6.__r_.__value_.__l.__data_);
    return;
  }

LABEL_23:
  operator delete(v7);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_297377188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a27)
  {
    _Block_release(a27);
  }

  ResetInfo::~ResetInfo((v28 + 32));
  ResetInfo::~ResetInfo((v29 - 144));
  _Unwind_Resume(a1);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2_52(uint64_t a1, unsigned int a2, uint64_t *a3)
{
  v18 = a2;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    xdict = v5;
  }

  else
  {
    v6 = xpc_null_create();
    xdict = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26F9F0](v6) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  xdict = v7;
LABEL_9:
  xpc_release(v6);
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_17;
    }

    a3 = *a3;
  }

  else if (!*(a3 + 23))
  {
    goto LABEL_17;
  }

  v8 = xpc_string_create(a3);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE648], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
LABEL_17:
  v10 = *(a1 + 104);
  v11 = operator new(0x38uLL);
  v11[8] = 0;
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 2) = v20;
  v19 = v11;
  v20[0] = v11;
  *(v11 + 24) = 1;
  v20[1] = 1;
  *(v11 + 5) = v10;
  *(v11 + 6) = 0xAAAAAAAA00000000;
  Timestamp::asString(&v19, 0, 9, __p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v19, v20[0]);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE930], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int &,xpc::dict&>((a1 + 144), &v18, &xdict);
  xpc_release(xdict);
}

void *__copy_helper_block_e8_32c14_ZTS9ResetInfo144c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  ResetInfo::ResetInfo((a1 + 32), (a2 + 32));
  result = *(a2 + 144);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 144) = result;
  return result;
}

void __destroy_helper_block_e8_32c14_ZTS9ResetInfo144c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 103) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 79) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 103) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 80));
  if (*(a1 + 79) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *(a1 + 32);

  operator delete(v3);
}

void *__copy_helper_block_e8_40c14_ZTS9ResetInfo152c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  ResetInfo::ResetInfo((a1 + 40), (a2 + 40));
  result = *(a2 + 152);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 152) = result;
  return result;
}

void __destroy_helper_block_e8_40c14_ZTS9ResetInfo152c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
    if ((*(a1 + 111) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(a1 + 87) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_10:
      operator delete(*(a1 + 64));
      if ((*(a1 + 63) & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 111) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 88));
  if (*(a1 + 87) < 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    return;
  }

LABEL_11:
  v3 = *(a1 + 40);

  operator delete(v3);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_58(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    v14 = v6;
    if (v6)
    {
      if (!*(a1 + 32))
      {
LABEL_13:
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v10 = v6;
          (v6->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }

      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        object = v7;
      }

      else
      {
        v8 = xpc_null_create();
        object = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_11;
        }
      }

      if (MEMORY[0x29C26F9F0](v8) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v8);
        goto LABEL_12;
      }

      v9 = xpc_null_create();
LABEL_11:
      object = v9;
LABEL_12:
      xpc_release(v8);
      v11 = 0;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v11, &object);
      xpc_release(object);
      v6 = v14;
      if (!v14)
      {
        return;
      }

      goto LABEL_13;
    }
  }
}

void sub_297377738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, ...)
{
  va_start(va, object);
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_60(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v26 = v8;
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (!a1[5])
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v10 = v7[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = *MEMORY[0x29EDBEE80];
      *object = 136315138;
      *&object[4] = v25;
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
      if (!*a3)
      {
LABEL_18:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }
    }

    else if (!*a3)
    {
      goto LABEL_18;
    }

    v11 = xpc_null_create();
    v12 = *a3;
    *object = v11;
    v13 = xpc_null_create();
    v12[2](v12, 3760250880, object);
    xpc_release(*object);
    xpc_release(v13);
    goto LABEL_18;
  }

  v14 = *a2;
  if (v14)
  {
    xpc_retain(v14);
    v15 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = *a3;
    if (*a3)
    {
LABEL_10:
      v16 = _Block_copy(v15);
      v17 = v7[10];
      if (!v17)
      {
LABEL_23:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_14;
    }
  }

  v16 = 0;
  v17 = v7[10];
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_14:
  v18 = v7[9];
  v19 = std::__shared_weak_count::lock(v17);
  if (!v19)
  {
    goto LABEL_23;
  }

  v20 = v19;
  v21 = operator new(0x18uLL);
  *v21 = v7;
  v21[1] = v14;
  v22 = xpc_null_create();
  v21[2] = v16;
  v23 = v7[11];
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v24 = operator new(0x18uLL);
  *v24 = v21;
  v24[1] = v18;
  v24[2] = v20;
  dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  xpc_release(v22);
  v9 = v26;
  if (v26)
  {
    goto LABEL_18;
  }
}

void sub_297377A34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_64(void *a1, void *a2, void (***a3)(const void *, uint64_t, xpc_object_t *))
{
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = std::__shared_weak_count::lock(v6);
  v23 = v8;
  if (!v8 || !a1[5])
  {
LABEL_9:
    v11 = *a3;
    if (v11)
    {
      object[0] = xpc_null_create();
      v11[2](v11, 3760250880, object);
      xpc_release(object[0]);
    }

    if (v8)
    {
      goto LABEL_12;
    }

    return;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v9 = v5[13];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "No input is given", object, 2u);
      v10 = *a3;
      if (!v10)
      {
LABEL_12:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        return;
      }
    }

    else
    {
      v10 = *a3;
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    object[0] = xpc_null_create();
    v10[2](v10, 3760250882, object);
    xpc_release(object[0]);
    goto LABEL_12;
  }

  v12 = *a2;
  if (v12)
  {
    xpc_retain(v12);
    v13 = *a3;
    if (*a3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = xpc_null_create();
    v13 = *a3;
    if (*a3)
    {
LABEL_17:
      v14 = _Block_copy(v13);
      v15 = v5[10];
      if (!v15)
      {
LABEL_28:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_21;
    }
  }

  v14 = 0;
  v15 = v5[10];
  if (!v15)
  {
    goto LABEL_28;
  }

LABEL_21:
  v16 = v5[9];
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v5;
  v19[1] = v12;
  v20 = xpc_null_create();
  v19[2] = v14;
  v21 = v5[11];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v8 = v23;
  if (v23)
  {
    goto LABEL_12;
  }
}

void sub_297377D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_68(void *a1, uint64_t a2, ctu **a3)
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v9 = v7;
      if (a1[5])
      {
        ctu::cf_to_xpc(object, *a3, v8);
        v10 = *object;
        v11 = MEMORY[0x29EDCAA00];
        if (*object && MEMORY[0x29C26F9F0](*object) == v11)
        {
          xpc_retain(v10);
        }

        else
        {
          v10 = xpc_null_create();
        }

        xpc_release(*object);
        if (MEMORY[0x29C26F9F0](v10) == v11)
        {
          value = xpc_dictionary_get_value(v10, *MEMORY[0x29EDC8C10]);
          *object = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            *object = xpc_null_create();
          }

          *(v6 + 152) = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          v13 = *(v6 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            if (*(v6 + 152))
            {
              v14 = "started";
            }

            else
            {
              v14 = "stopped";
            }

            *object = 136315138;
            *&object[4] = v14;
            _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I Transport client %s", object, 0xCu);
          }
        }

        xpc_release(v10);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_297377F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void BootModule::sendUserNotificationForBBConfigUpdated_sync(BootModule *this)
{
  v28 = *MEMORY[0x29EDCA608];
  if ((config::hw::watch(this) & 1) != 0 || *(this + 224) != 1)
  {
    v8 = *(this + 13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = (this + 200);
      if (*(this + 223) < 0)
      {
        v9 = *v9;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Skip user notification for MobileAsset PT version %s", &buf, 0xCu);
    }

    return;
  }

  v26 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable;
  if (Mutable)
  {
    v26 = Mutable;
  }

  capabilities::abs::supportedMobileAssetTypes(Mutable);
  v5 = capabilities::abs::operator&();
  if (v5)
  {
    v7 = "PT";
  }

  else
  {
    capabilities::abs::supportedMobileAssetTypes(v5);
    if (capabilities::abs::operator&())
    {
      v7 = "RP";
    }

    else
    {
      v7 = "";
    }
  }

  ctu::cf::insert<char const*,char const*>(v4, *MEMORY[0x29EDBF380], v7, v2, v6);
  v10 = time(0);
  std::to_string(&v25, v10);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    buf = v25;
  }

  ctu::cf::insert<char const*,std::string>(v4, *MEMORY[0x29EDBF6B0], &buf, v2, v11);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    operator delete(v25.__r_.__value_.__l.__data_);
    if ((*(this + 255) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  if ((*(this + 255) & 0x80000000) == 0)
  {
LABEL_20:
    buf = *(this + 232);
    goto LABEL_24;
  }

LABEL_23:
  std::string::__init_copy_ctor_external(&buf, *(this + 29), *(this + 30));
LABEL_24:
  ctu::cf::insert<char const*,std::string>(v4, *MEMORY[0x29EDBF578], &buf, v2, v12);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v13 = *MEMORY[0x29EDBF270];
  v14 = strlen(*MEMORY[0x29EDBF270]);
  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    v16 = operator new(v18);
    __dst[1] = v15;
    v24 = v18 | 0x8000000000000000;
    __dst[0] = v16;
  }

  else
  {
    HIBYTE(v24) = v14;
    v16 = __dst;
    if (!v14)
    {
      LOBYTE(__dst[0]) = 0;
      v17 = v26;
      if (!v26)
      {
        goto LABEL_38;
      }

      goto LABEL_36;
    }
  }

  memmove(v16, v13, v15);
  *(v15 + v16) = 0;
  v17 = v26;
  if (!v26)
  {
LABEL_38:
    cf = 0;
    goto LABEL_39;
  }

LABEL_36:
  v19 = CFGetTypeID(v17);
  if (v19 != CFDictionaryGetTypeID())
  {
    goto LABEL_38;
  }

  cf = v17;
  CFRetain(v17);
LABEL_39:
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 0x40000000;
  v20[2] = ___ZN10BootModule43sendUserNotificationForBBConfigUpdated_syncEv_block_invoke;
  v20[3] = &__block_descriptor_tmp_80;
  v20[4] = this;
  aBlock = _Block_copy(v20);
  Service::broadcastEvent(this, __dst, &cf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (!v17)
    {
      return;
    }
  }

  else if (!v17)
  {
    return;
  }

  CFRelease(v17);
}

void sub_29737837C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule43sendUserNotificationForBBConfigUpdated_syncEv_block_invoke_2()
{
  memset(v3, 0, sizeof(v3));
  std::string::__assign_external(&v3[1], "Baseband_Config_Updated", 0x17uLL);
  *(&v3[0].__r_.__value_.__s + 23) = 21;
  strcpy(v3, "BasebandConfigUpdated");
  if (SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v0, v3[0].__r_.__value_.__l.__data_, v3[0].__r_.__value_.__l.__size_);
  }

  else
  {
    v0 = v3[0];
  }

  if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v1, v3[1].__r_.__value_.__l.__data_, v3[1].__r_.__value_.__l.__size_);
  }

  else
  {
    v1 = v3[1];
  }

  if (SHIBYTE(v3[2].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v3[2].__r_.__value_.__l.__data_, v3[2].__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v3[2];
  }

  support::ui::showNotification(3, &v0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v0.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v1.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v1.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v0.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v3[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v0.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v3[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(v3[2].__r_.__value_.__l.__data_);
  if ((SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v3[0].__r_.__value_.__l.__data_);
    return;
  }

LABEL_21:
  operator delete(v3[1].__r_.__value_.__l.__data_);
  if (SHIBYTE(v3[0].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_22;
  }
}

void sub_297378604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      support::ui::NotificationInfo::~NotificationInfo(&a25);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  support::ui::NotificationInfo::~NotificationInfo(&a25);
  _Unwind_Resume(a1);
}

void sub_297378660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  support::ui::NotificationInfo::~NotificationInfo(&a9);
  support::ui::NotificationInfo::~NotificationInfo(&a19);
  _Unwind_Resume(a1);
}

void sub_29737867C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  support::ui::NotificationInfo::~NotificationInfo(va);
  _Unwind_Resume(a1);
}

void BootModule::start(void *a1, dispatch_object_t *a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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
  v9 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v9);
  }

  v10 = a1[10];
  if (!v10 || (v11 = a1[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  v14 = operator new(0x20uLL);
  *v14 = v5;
  v14[1] = v7;
  v14[2] = v9;
  v14[3] = a1;
  v15 = a1[11];
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v14;
  v16[1] = v11;
  v16[2] = v13;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::start(dispatch::group_session)::$_0>(BootModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void BootModule::getPowerTableFromMobileAsset(void *a1, char a2)
{
  if (a1[65])
  {
    v3 = a1[10];
    if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

    v8 = a1[65];
    v9 = operator new(0x20uLL);
    *v9 = a1;
    v9[8] = a2;
    *(v9 + 2) = v5;
    *(v9 + 3) = v7;

    dispatch_async_f(v8, v9, dispatch::async<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>)::{lambda(void *)#1}::__invoke);
  }
}

void BootModule::triggerResetWithUpdatedPT_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I PT file updated, triggering soft reset", &buf, 2u);
  }

  *(this + 46) = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v3;
  v40 = v3;
  v37 = v3;
  v38 = v3;
  v35 = v3;
  v36 = v3;
  buf = v3;
  v4 = *MEMORY[0x29EDBEB68];
  v5 = strlen(*MEMORY[0x29EDBEB68]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    *(&__dst + 1) = v6;
    v33 = v8 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v33) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_11:
    memmove(p_dst, v4, v6);
  }

  *(p_dst + v6) = 0;
  v9 = *MEMORY[0x29EDBF858];
  v10 = strlen(*MEMORY[0x29EDBF858]);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v13 = 25;
    }

    else
    {
      v13 = (v10 | 7) + 1;
    }

    v12 = operator new(v13);
    *(&v30 + 1) = v11;
    v31 = v13 | 0x8000000000000000;
    *&v30 = v12;
    goto LABEL_20;
  }

  HIBYTE(v31) = v10;
  v12 = &v30;
  if (v10)
  {
LABEL_20:
    memmove(v12, v9, v11);
  }

  *(v12 + v11) = 0;
  v29 = 10;
  strcpy(&v28, "PT updated");
  Timestamp::Timestamp(v24);
  Timestamp::asString(v24, 0, 9, __p);
  v23 = 0;
  LOBYTE(v22) = 0;
  ResetInfo::ResetInfo(&buf, &__dst, &v30, &v28, __p, 7, &v22);
  if ((v27 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v25);
    if ((SHIBYTE(v31) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_36:
    operator delete(v30);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  operator delete(__p[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v25);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_36;
  }

LABEL_23:
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_37:
  operator delete(__dst);
LABEL_24:
  ResetInfo::ResetInfo(&v15, &buf);
  aBlock = 0;
  BootModule::requestReset(this, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_40;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v16);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    *(this + 194) = 0;
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v15.__r_.__value_.__l.__data_);
  *(this + 194) = 0;
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SBYTE7(v38) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(*(&v39 + 1));
  if ((SBYTE7(v38) & 0x80000000) == 0)
  {
LABEL_32:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v37);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_33:
    if ((SBYTE7(v35) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(buf);
    return;
  }

LABEL_44:
  operator delete(*(&v35 + 1));
  if (SBYTE7(v35) < 0)
  {
    goto LABEL_45;
  }
}

void sub_297378C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void *a11)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo(&a11);
  ResetInfo::~ResetInfo((v11 - 176));
  _Unwind_Resume(a1);
}

void sub_297378C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a28, a29);
  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 177) < 0)
  {
    operator delete(*(v45 - 200));
  }

  _Unwind_Resume(a1);
}

void BootModule::registerEventHandlers_sync(BootModule *this)
{
  v41 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_70:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_70;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_70;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = abm::kEventTransportIsReady[0];
  v8 = strlen(abm::kEventTransportIsReady[0]);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v32 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v32) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E3B660;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v40 = v12;
  Service::registerEventHandler(this, &__p, v39);
  if (v40 == v39)
  {
    (*(*v40 + 32))(v40);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

  if (v40)
  {
    (*(*v40 + 40))(v40);
  }

  if (SHIBYTE(v32) < 0)
  {
LABEL_48:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBF140];
  v14 = strlen(*MEMORY[0x29EDBF140]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
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

    v16 = operator new(v17);
    *(&__p + 1) = v15;
    v32 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v32) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E3B710;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v38 = v18;
  Service::registerEventHandler(this, &__p, v37);
  if (v38 == v37)
  {
    (*(*v38 + 32))(v38);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_50;
  }

  if (v38)
  {
    (*(*v38 + 40))();
  }

  if (SHIBYTE(v32) < 0)
  {
LABEL_50:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBF6A0];
  v20 = strlen(*MEMORY[0x29EDBF6A0]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v20 | 7) + 1;
    }

    v22 = operator new(v23);
    *(&__p + 1) = v21;
    v32 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v32) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E3B790;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v36 = v24;
  Service::registerEventHandler(this, &__p, v35);
  if (v36 == v35)
  {
    (*(*v36 + 32))(v36);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (v36)
    {
      (*(*v36 + 40))();
    }

    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
LABEL_45:
      if (!*(this + 70))
      {
        goto LABEL_66;
      }

      goto LABEL_53;
    }
  }

  operator delete(__p);
  if (!*(this + 70))
  {
    goto LABEL_66;
  }

LABEL_53:
  v25 = *MEMORY[0x29EDBF620];
  v26 = strlen(*MEMORY[0x29EDBF620]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    *(&__p + 1) = v27;
    v32 = v29 | 0x8000000000000000;
    *&__p = v28;
    goto LABEL_61;
  }

  HIBYTE(v32) = v26;
  v28 = &__p;
  if (v26)
  {
LABEL_61:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v34 = 0;
  v30 = operator new(0x20uLL);
  *v30 = &unk_2A1E3B810;
  v30[1] = this;
  v30[2] = v4;
  v30[3] = v6;
  v34 = v30;
  Service::registerEventHandler(this, &__p, v33);
  if (v34 == v33)
  {
    (*(*v34 + 32))(v34);
    if ((SHIBYTE(v32) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_68:
    operator delete(__p);
    goto LABEL_66;
  }

  if (v34)
  {
    (*(*v34 + 40))();
  }

  if (SHIBYTE(v32) < 0)
  {
    goto LABEL_68;
  }

LABEL_66:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
}

void sub_29737934C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::function<void ()(dispatch::group_session,xpc::dict)>::~function(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v23);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

uint64_t BootModule::isValid(uint64_t a1, unsigned int a2, uint64_t **a3)
{
  v25 = *MEMORY[0x29EDCA608];
  capabilities::abs::supportedMobileAssetTypes(a1);
  v6 = capabilities::abs::operator&();
  if (!v6)
  {
    capabilities::abs::supportedMobileAssetTypes(v6);
    if (!capabilities::abs::operator&())
    {
      v8 = 0;
LABEL_19:
      v9 = *(a1 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      return v8;
    }
  }

  v7 = *(a1 + 192);
  if (v7 == a2)
  {
    v8 = 0;
    v9 = *(a1 + 104);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return v8;
    }

LABEL_20:
    v12 = "Ignore";
    if (v8)
    {
      v12 = "Update";
    }

    v13 = *(a1 + 192);
    if (v13 > 4)
    {
      v14 = "UNKNOWN";
      if (a2 > 4)
      {
LABEL_24:
        v15 = "UNKNOWN";
        if (*(a3 + 23) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v14 = off_29EE68428[v13];
      if (a2 > 4)
      {
        goto LABEL_24;
      }
    }

    v15 = off_29EE68428[a2];
    if (*(a3 + 23) < 0)
    {
LABEL_28:
      a3 = *a3;
    }

LABEL_29:
    v17 = 136315906;
    v18 = v12;
    v19 = 2080;
    v20 = v14;
    v21 = 2080;
    v22 = v15;
    v23 = 2080;
    v24 = a3;
    _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I %s PT MobileAsset status [%s] -> [%s] (%s)", &v17, 0x2Au);
    return v8;
  }

  v8 = 1;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v8 = (v7 - 3) < 0xFFFFFFFE;
      v9 = *(a1 + 104);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        return v8;
      }

      goto LABEL_20;
    }

    if (a2 == 2)
    {
      v8 = v7 == 1;
      v9 = *(a1 + 104);
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        return v8;
      }

      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v10 = v7 == 2;
  v11 = (v7 - 1) < 2;
  if (a2 != 4)
  {
    v11 = 1;
  }

  if (a2 == 3)
  {
    v8 = v10;
  }

  else
  {
    v8 = v11;
  }

  v9 = *(a1 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  return v8;
}

uint64_t BootModule::updateMobileAssetPTStatus_sync(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x29EDCA608];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v51, *a3, *(a3 + 8));
  }

  else
  {
    v51 = *a3;
  }

  result = BootModule::isValid(a1, a2, &v51);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    v9 = result;
    operator delete(v51.__r_.__value_.__l.__data_);
    result = v9;
    if (!v9)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  if (a2 != 1)
  {
    if (a2 != 4)
    {
      goto LABEL_64;
    }

    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v10 = off_2A1399498;
    if (!off_2A1399498)
    {
      SharedData::create_default_global(buf);
      v11 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v12 = *(&off_2A1399498 + 1);
      off_2A1399498 = v11;
      if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }

      v13 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v10 = off_2A1399498;
    }

    v14 = *(&off_2A1399498 + 1);
    v49 = v10;
    v50 = *(&off_2A1399498 + 1);
    if (*(&off_2A1399498 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_297431610;
    strcpy(*buf, "Baseband Mobile Asset PT image");
    SharedData::setPreference<char const*>(v10, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(a1 + 104);
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_64:
      *(a1 + 192) = a2;
      v28 = (a1 + 200);
      v29 = *(a1 + 303);
      if (v29 >= 0)
      {
        v30 = *(a1 + 303);
      }

      else
      {
        v30 = *(a1 + 288);
      }

      v31 = *(a1 + 223);
      v32 = v31;
      if ((v31 & 0x80u) != 0)
      {
        v31 = *(a1 + 208);
      }

      if (v30 != v31 || (v29 >= 0 ? (v33 = (a1 + 280)) : (v33 = *(a1 + 280)), v32 >= 0 ? (v34 = (a1 + 200)) : (v34 = *(a1 + 200)), memcmp(v33, v34, v30)))
      {
LABEL_77:
        if (a2 != 4)
        {
          if (a2 != 3)
          {
            return 1;
          }

          BootModule::sendUserNotificationForBBConfigUpdated_sync(a1);
          if (*(a3 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v47, *a3, *(a3 + 8));
          }

          else
          {
            v47 = *a3;
          }

          BootModule::updateMobileAssetAnalyticsEvent_sync(a1, 3u, &v47);
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
            if ((*(a1 + 223) & 0x80000000) == 0)
            {
              goto LABEL_95;
            }
          }

          else if ((*(a1 + 223) & 0x80000000) == 0)
          {
LABEL_95:
            *&v46.__r_.__value_.__l.__data_ = *v28;
            v46.__r_.__value_.__r.__words[2] = *(a1 + 216);
            goto LABEL_102;
          }

          std::string::__init_copy_ctor_external(&v46, *(a1 + 200), *(a1 + 208));
LABEL_102:
          BootModule::saveVerificationInfo_sync(a1, 3u, &v46.__r_.__value_.__l.__data_);
          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            v39 = v46.__r_.__value_.__r.__words[0];
            goto LABEL_104;
          }

          return 1;
        }

        if (*(a3 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, *a3, *(a3 + 8));
        }

        else
        {
          v45 = *a3;
        }

        BootModule::updateMobileAssetAnalyticsEvent_sync(a1, 4u, &v45);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
          if ((*(a1 + 223) & 0x80000000) == 0)
          {
            goto LABEL_91;
          }
        }

        else if ((*(a1 + 223) & 0x80000000) == 0)
        {
LABEL_91:
          *&v44.__r_.__value_.__l.__data_ = *v28;
          v44.__r_.__value_.__r.__words[2] = *(a1 + 216);
          goto LABEL_98;
        }

        std::string::__init_copy_ctor_external(&v44, *(a1 + 200), *(a1 + 208));
LABEL_98:
        BootModule::saveVerificationInfo_sync(a1, 4u, &v44.__r_.__value_.__l.__data_);
        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          v39 = v44.__r_.__value_.__r.__words[0];
LABEL_104:
          operator delete(v39);
        }

        return 1;
      }

      if (a2 > 4)
      {
        v35 = "UNKNOWN";
        v36 = (a1 + 256);
        v37 = strlen("UNKNOWN");
        v38 = *(a1 + 279);
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v35 = off_29EE68428[a2];
        v36 = (a1 + 256);
        v37 = strlen(v35);
        v38 = *(a1 + 279);
        if ((v38 & 0x8000000000000000) == 0)
        {
LABEL_85:
          if (v37 != v38 || memcmp(v36, v35, v37))
          {
            goto LABEL_77;
          }

          goto LABEL_111;
        }
      }

      if (v37 != *(a1 + 264))
      {
        goto LABEL_77;
      }

      if (v37 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*v36, v35, v37))
      {
        goto LABEL_77;
      }

LABEL_111:
      v40 = *(a1 + 104);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        if ((v38 & 0x80000000) != 0)
        {
          v36 = *v36;
        }

        *buf = 136315394;
        *&buf[4] = v33;
        *&buf[12] = 2080;
        *&buf[14] = v36;
        _os_log_impl(&dword_297288000, v40, OS_LOG_TYPE_DEFAULT, "#I MobileAsset PT same as the last verified version/state [%s/%s]", buf, 0x16u);
      }

      return 1;
    }

    *buf = 0;
    v16 = "#I Verification failed and clearing MobileAsset PT path";
LABEL_63:
    _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    goto LABEL_64;
  }

  v17 = *(a1 + 303);
  if (v17 >= 0)
  {
    v18 = *(a1 + 303);
  }

  else
  {
    v18 = *(a1 + 288);
  }

  v19 = *(a1 + 223);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a1 + 208);
  }

  if (v18 != v19)
  {
    goto LABEL_40;
  }

  v21 = v17 >= 0 ? (a1 + 280) : *(a1 + 280);
  v22 = v20 >= 0 ? (a1 + 200) : *(a1 + 200);
  if (memcmp(v21, v22, v18))
  {
    goto LABEL_40;
  }

  v41 = (a1 + 256);
  v42 = *(a1 + 279);
  if (v42 < 0)
  {
    if (*(a1 + 264) != 8)
    {
      goto LABEL_40;
    }

    v41 = *v41;
  }

  else if (v42 != 8)
  {
    goto LABEL_40;
  }

  if (*v41 != 0x64657463656A6552)
  {
LABEL_40:
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v23 = off_2A1399498;
    if (!off_2A1399498)
    {
      SharedData::create_default_global(buf);
      v24 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v25 = *(&off_2A1399498 + 1);
      off_2A1399498 = v24;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }

      v26 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      v23 = off_2A1399498;
    }

    v27 = *(&off_2A1399498 + 1);
    v49 = v23;
    v50 = *(&off_2A1399498 + 1);
    if (*(&off_2A1399498 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_297431610;
    strcpy(*buf, "Baseband Mobile Asset PT image");
    if (*(a4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v48, *a4, *(a4 + 8));
    }

    else
    {
      v48 = *a4;
    }

    SharedData::setPreference<std::string>(v23, buf, &v48);
    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
      if ((buf[23] & 0x80000000) == 0)
      {
LABEL_55:
        if (!v27)
        {
          goto LABEL_61;
        }

        goto LABEL_59;
      }
    }

    else if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    operator delete(*buf);
    if (!v27)
    {
LABEL_61:
      v15 = *(a1 + 104);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      *buf = 0;
      v16 = "#I Setting MobileAsset PT path";
      goto LABEL_63;
    }

LABEL_59:
    if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
    }

    goto LABEL_61;
  }

  v43 = *(a1 + 104);
  result = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&dword_297288000, v43, OS_LOG_TYPE_DEFAULT, "#I Ignore MobileAsset PT version %s as it was rejected before", buf, 0xCu);
    return 0;
  }

  return result;
}

void sub_297379E3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SharedData::setPreference<std::string>(os_unfair_lock_s *a1, char *a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 10);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v8 = __p;
  }

  if (a2[23] >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  ctu::cf::plist_adapter::set<std::string>(a1, &v8, v6, 1);
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_12;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  os_unfair_lock_unlock(a1 + 10);
}

void sub_29737A04C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

void BootModule::updateMobileAssetAnalyticsEvent_sync(uint64_t a1, unsigned int a2, const void ***a3)
{
  v73 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 193))
  {
    return;
  }

  xdict = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  v8 = MEMORY[0x29EDCAA00];
  if (v6)
  {
    xdict = v6;
  }

  else
  {
    v7 = xpc_null_create();
    xdict = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_9;
    }
  }

  if (MEMORY[0x29C26F9F0](v7) == v8)
  {
    xpc_retain(v7);
    goto LABEL_10;
  }

  v9 = xpc_null_create();
LABEL_9:
  xdict = v9;
LABEL_10:
  xpc_release(v7);
  capabilities::abs::supportedMobileAssetTypes(v10);
  v11 = capabilities::abs::operator&();
  if (v11)
  {
    v12 = "com.apple.MobileAsset.MAVBasebandAssets";
  }

  else
  {
    capabilities::abs::supportedMobileAssetTypes(v11);
    if (capabilities::abs::operator&())
    {
      v12 = "com.apple.MobileAsset.INTBasebandAssets";
    }

    else
    {
      v12 = "";
    }
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE630], v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  capabilities::abs::supportedMobileAssetTypes(v15);
  v16 = capabilities::abs::operator&();
  if (v16)
  {
    v17 = "PT";
  }

  else
  {
    capabilities::abs::supportedMobileAssetTypes(v16);
    if (capabilities::abs::operator&())
    {
      v17 = "RP";
    }

    else
    {
      v17 = "";
    }
  }

  v18 = xpc_string_create(v17);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE9F8], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = (a1 + 200);
  if (*(a1 + 223) < 0)
  {
    v20 = *v20;
  }

  v21 = xpc_string_create(v20);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE850], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(*(a1 + 193));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF068], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  memset(&__dst, 170, sizeof(__dst));
  if (a2 > 4)
  {
    v25 = "UNKNOWN";
  }

  else
  {
    v25 = off_29EE68428[a2];
  }

  v26 = strlen(v25);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v26 | 7) + 1;
    }

    p_dst = operator new(v36);
    __dst.__r_.__value_.__l.__size_ = v27;
    __dst.__r_.__value_.__r.__words[2] = v36 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = v26;
    p_dst = &__dst;
    if (!v26)
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      v29 = *(a3 + 23);
      if ((v29 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_52;
    }
  }

  memcpy(p_dst, v25, v27);
  p_dst->__r_.__value_.__s.__data_[v27] = 0;
  v29 = *(a3 + 23);
  if ((v29 & 0x8000000000000000) == 0)
  {
LABEL_37:
    LODWORD(v30) = v29;
    if (v29)
    {
      goto LABEL_38;
    }

LABEL_53:
    HIBYTE(v68) = 0;
    LOBYTE(__p) = 0;
    goto LABEL_60;
  }

LABEL_52:
  v30 = a3[1];
  if (!v30)
  {
    goto LABEL_53;
  }

LABEL_38:
  if (v29 >= 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = a3[1];
  }

  v32 = v31 + 1;
  if (v31 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v32 >= 0x17)
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
    v67 = v31 + 1;
    v68 = v33 | 0x8000000000000000;
    __p = v34;
    *v34 = 58;
    v35 = v34 + 1;
    goto LABEL_55;
  }

  v67 = 0;
  v68 = 0;
  HIBYTE(v68) = v31 + 1;
  v35 = &__p + 1;
  __p = 58;
  if (v31)
  {
LABEL_55:
    if (v29 >= 0)
    {
      v37 = a3;
    }

    else
    {
      v37 = *a3;
    }

    memmove(v35, v37, v31);
  }

  *(v31 + v35) = 0;
  LODWORD(v30) = HIBYTE(v68);
LABEL_60:
  if (v30 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v30 >= 0)
  {
    v39 = v30;
  }

  else
  {
    v39 = v67;
  }

  v40 = std::string::append(&__dst, p_p, v39);
  if ((v40->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v40 = v40->__r_.__value_.__r.__words[0];
  }

  v41 = xpc_string_create(v40);
  if (!v41)
  {
    v41 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE780], v41);
  v42 = xpc_null_create();
  xpc_release(v41);
  xpc_release(v42);
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p);
  }

  v43 = xpc_dictionary_create(0, 0, 0);
  if (v43 || (v43 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v43) == v8)
    {
      xpc_retain(v43);
      v44 = v43;
    }

    else
    {
      v44 = xpc_null_create();
    }
  }

  else
  {
    v44 = xpc_null_create();
    v43 = 0;
  }

  xpc_release(v43);
  v45 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  xpc_dictionary_set_value(v44, *MEMORY[0x29EDBE9B0], v45);
  v46 = xpc_null_create();
  xpc_release(v45);
  xpc_release(v46);
  v47 = xpc_string_create(*MEMORY[0x29EDBF480]);
  if (!v47)
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v44, *MEMORY[0x29EDBE7F8], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  v49 = xdict;
  if (xdict)
  {
    xpc_retain(xdict);
  }

  else
  {
    v49 = xpc_null_create();
  }

  xpc_dictionary_set_value(v44, *MEMORY[0x29EDBF020], v49);
  v50 = xpc_null_create();
  xpc_release(v49);
  xpc_release(v50);
  v51 = xpc_dictionary_create(0, 0, 0);
  if (v51 || (v51 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v51) == v8)
    {
      xpc_retain(v51);
      v52 = v51;
    }

    else
    {
      v52 = xpc_null_create();
    }
  }

  else
  {
    v52 = xpc_null_create();
    v51 = 0;
  }

  xpc_release(v51);
  v53 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v53)
  {
    v53 = xpc_null_create();
  }

  xpc_dictionary_set_value(v52, *MEMORY[0x29EDBE588], v53);
  v54 = xpc_null_create();
  xpc_release(v53);
  xpc_release(v54);
  if (v44)
  {
    xpc_retain(v44);
    v55 = v44;
  }

  else
  {
    v55 = xpc_null_create();
  }

  xpc_dictionary_set_value(v52, *MEMORY[0x29EDBE580], v55);
  v56 = xpc_null_create();
  xpc_release(v55);
  xpc_release(v56);
  v57 = *(a1 + 104);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(&__p, &xdict);
    v58 = v68 >= 0 ? &__p : __p;
    *buf = 136315138;
    v72 = v58;
    _os_log_impl(&dword_297288000, v57, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of mobileassetUpdated: %s", buf, 0xCu);
    if (SHIBYTE(v68) < 0)
    {
      operator delete(__p);
    }
  }

  v59 = *MEMORY[0x29EDBEBD0];
  v60 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v60 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v61 = v60;
  if (v60 >= 0x17)
  {
    if ((v60 | 7) == 0x17)
    {
      v63 = 25;
    }

    else
    {
      v63 = (v60 | 7) + 1;
    }

    v62 = operator new(v63);
    v67 = v61;
    v68 = v63 | 0x8000000000000000;
    __p = v62;
LABEL_111:
    memmove(v62, v59, v61);
    *(v62 + v61) = 0;
    object = v52;
    if (v52)
    {
      goto LABEL_106;
    }

LABEL_112:
    object = xpc_null_create();
    goto LABEL_113;
  }

  HIBYTE(v68) = v60;
  v62 = &__p;
  if (v60)
  {
    goto LABEL_111;
  }

  LOBYTE(__p) = 0;
  object = v52;
  if (!v52)
  {
    goto LABEL_112;
  }

LABEL_106:
  xpc_retain(v52);
LABEL_113:
  v64 = 0;
  Service::runCommand(a1, &__p, &object, &v64);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(__p);
  }

  *(a1 + 193) = 0;
  xpc_release(v52);
  xpc_release(v44);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  xpc_release(xdict);
}

void sub_29737A8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void BootModule::saveVerificationInfo_sync(uint64_t a1, unsigned int a2, const void **a3)
{
  if (a2 > 4)
  {
    std::string::__assign_external((a1 + 256), "UNKNOWN");
    v5 = a1 + 280;
    if ((a1 + 280) == a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    std::string::__assign_external((a1 + 256), off_29EE68428[a2]);
    v5 = a1 + 280;
    if ((a1 + 280) == a3)
    {
      goto LABEL_16;
    }
  }

  v6 = *(a3 + 23);
  if (*(a1 + 303) < 0)
  {
    if (v6 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v6 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = a3[1];
    }

    std::string::__assign_no_alias<false>(v5, v9, v10);
LABEL_16:
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v8 = off_2A1399498;
    if (off_2A1399498)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((*(a3 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v5, *a3, a3[1]);
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v8 = off_2A1399498;
    if (off_2A1399498)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = *a3;
    *(v5 + 16) = a3[2];
    *v5 = v7;
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v8 = off_2A1399498;
    if (off_2A1399498)
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  SharedData::create_default_global(__p);
  v11 = *__p;
  *__p = 0;
  *&__p[8] = 0;
  v12 = *(&off_2A1399498 + 1);
  off_2A1399498 = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *&__p[8];
  if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v8 = off_2A1399498;
LABEL_24:
  v14 = *(&off_2A1399498 + 1);
  v23 = v8;
  v24 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  *__p = operator new(0x28uLL);
  *&__p[8] = xmmword_297431620;
  strcpy(*__p, "BasebandMobileAssetVerificationState");
  if (*(a1 + 279) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *(a1 + 256), *(a1 + 264));
  }

  else
  {
    v21 = *(a1 + 256);
  }

  SharedData::setPreference<std::string>(v8, __p, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((__p[23] & 0x80000000) == 0)
    {
LABEL_31:
      if (!v14)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(*__p);
  if (!v14)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v15 = off_2A1399498;
    if (off_2A1399498)
    {
      goto LABEL_45;
    }

    goto LABEL_37;
  }

LABEL_36:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v15 = off_2A1399498;
  if (off_2A1399498)
  {
    goto LABEL_45;
  }

LABEL_37:
  SharedData::create_default_global(__p);
  v16 = *__p;
  *__p = 0;
  *&__p[8] = 0;
  v17 = *(&off_2A1399498 + 1);
  off_2A1399498 = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *&__p[8];
  if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  v15 = off_2A1399498;
LABEL_45:
  v19 = *(&off_2A1399498 + 1);
  v23 = v15;
  v24 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  *__p = operator new(0x28uLL);
  *&__p[8] = xmmword_297430680;
  strcpy(*__p, "BasebandMobileAssetVerificationVersion");
  if (*(a1 + 303) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(a1 + 280), *(a1 + 288));
  }

  else
  {
    v20 = *v5;
  }

  SharedData::setPreference<std::string>(v15, __p, &v20);
  if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    operator delete(*__p);
    if (!v19)
    {
      return;
    }

    goto LABEL_56;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  if (!v19)
  {
    return;
  }

LABEL_56:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_29737AF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v23 - 64);
  _Unwind_Resume(a1);
}

void BootModule::calculateBootStatistics_sync(BootModule *this@<X0>, __CFDictionary **a2@<X8>)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v4 = TelephonyUtilSystemMachTime();
  v5 = *(this + 38);
  v6 = v4 - v5;
  v7 = *(this + 78);
  v8 = *(this + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v19[0]) = 67109120;
    HIDWORD(v19[0]) = v4 - v5;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband total boot time = %u millisec", v19, 8u);
    v8 = *(this + 13);
    v9 = v7 - v5;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_3:
      v10 = v4 - v7;
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = v7 - v5;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_3;
    }
  }

  LODWORD(v19[0]) = 67109120;
  HIDWORD(v19[0]) = v9;
  _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband image push time = %u millisec", v19, 8u);
  v8 = *(this + 13);
  v10 = v4 - v7;
  if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  LODWORD(v19[0]) = 67109120;
  HIDWORD(v19[0]) = v10;
  _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband engage time     = %u millisec", v19, 8u);
  v8 = *(this + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    v11 = *(this + 46);
    LODWORD(v19[0]) = 67109120;
    HIDWORD(v19[0]) = v11;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband boot attempts   = %u", v19, 8u);
  }

LABEL_6:
  BootModule::submitMetric_sync(this, *(this + 46), v6, 1);
  *(this + 46) = 0;
  v19[0] = 0;
  v12 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v15 = Mutable;
  if (Mutable)
  {
    v19[0] = Mutable;
  }

  ctu::cf::update<char const*,unsigned int>(Mutable, *MEMORY[0x29EDBE9C0], v6, v12, v14);
  ctu::cf::update<char const*,unsigned int>(v15, *MEMORY[0x29EDBF028], v9, v12, v16);
  ctu::cf::update<char const*,unsigned int>(v15, *MEMORY[0x29EDBEC38], v10, v12, v17);
  if (v15)
  {
    v18 = CFGetTypeID(v15);
    if (v18 == CFDictionaryGetTypeID())
    {
      *a2 = v15;
      CFRetain(v15);
    }

    else
    {
      *a2 = 0;
    }

    CFRelease(v15);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_29737B2C0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::submitMetric_sync(BootModule *this, unsigned int a2, uint64_t a3, BOOL a4)
{
  v8 = *(this + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of bootup time", buf, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == v10)
    {
      xpc_retain(v9);
      v11 = v9;
    }

    else
    {
      v11 = xpc_null_create();
    }
  }

  else
  {
    v11 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v12) == v10)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  v14 = xpc_int64_create(a2);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE7E0], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_uint64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE8D0], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_BOOL_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE7E8], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = xpc_string_create(*MEMORY[0x29EDBF880]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE588], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  v22 = xpc_int64_create(524384);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE660], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (v13)
  {
    xpc_retain(v13);
    v24 = v13;
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(v11, *MEMORY[0x29EDBE580], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = *MEMORY[0x29EDBEBD0];
  v27 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v27 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v28 = v27;
  if (v27 >= 0x17)
  {
    if ((v27 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v27 | 7) + 1;
    }

    v29 = operator new(v30);
    v34 = v28;
    v35 = v30 | 0x8000000000000000;
    *buf = v29;
LABEL_37:
    memmove(v29, v26, v28);
    *(v29 + v28) = 0;
    object = v11;
    if (v11)
    {
      goto LABEL_32;
    }

    goto LABEL_38;
  }

  HIBYTE(v35) = v27;
  v29 = buf;
  if (v27)
  {
    goto LABEL_37;
  }

  buf[0] = 0;
  object = v11;
  if (v11)
  {
LABEL_32:
    xpc_retain(v11);
    goto LABEL_39;
  }

LABEL_38:
  object = xpc_null_create();
LABEL_39:
  v31 = 0;
  Service::runCommand(this, buf, &object, &v31);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v13);
  xpc_release(v11);
}

void sub_29737B71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void BootModule::handleBootFailed_sync(uint64_t a1, const void **a2)
{
  v121 = *MEMORY[0x29EDCA608];
  v114 = _os_activity_create(&dword_297288000, "Baseband state: boot up failed", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
  memset(state, 170, 16);
  os_activity_scope_enter(v114, state);
  os_activity_scope_leave(state);
  memset(__p, 170, sizeof(__p));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  v6 = v5 + 23;
  if (v5 + 23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 >= 0xFFFFFFFFFFFFFFE9)
  {
    v9 = &state[23];
    state[23] = v5 + 23;
    qmemcpy(state, "modem boot up failure [", 23);
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v6 | 7) + 1;
    }

    v8 = operator new(v7);
    *&state[8] = v5 + 23;
    *&state[16] = v7 | 0x8000000000000000;
    *state = v8;
    qmemcpy(v8, "modem boot up failure [", 23);
    v9 = v8 + 23;
    if (!v5)
    {
      *v9 = 0;
      v10 = state[23];
      if ((state[23] & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }
  }

  if (v4 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  memmove(v9, v14, v5);
  v9[v5] = 0;
  v10 = state[23];
  if ((state[23] & 0x8000000000000000) == 0)
  {
LABEL_11:
    v11 = state;
    if (v10 == 22)
    {
      v12 = 22;
      v13 = 23;
LABEL_21:
      v15 = 2 * v12;
      if (v13 > 2 * v12)
      {
        v15 = v13;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v17 = v16;
      }

      else
      {
        v17 = 23;
      }

      v18 = v12 == 22;
      goto LABEL_30;
    }

LABEL_36:
    v11[v10] = 93;
    v22 = v10 + 1;
    if ((state[23] & 0x80000000) != 0)
    {
      *&state[8] = v22;
    }

    else
    {
      state[23] = v22 & 0x7F;
    }

    v21 = &v11[v22];
    goto LABEL_40;
  }

LABEL_18:
  v10 = *&state[8];
  v13 = *&state[16] & 0x7FFFFFFFFFFFFFFFLL;
  v12 = (*&state[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 != *&state[8])
  {
    v11 = *state;
    goto LABEL_36;
  }

  if (v13 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = *state;
  if (v12 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_21;
  }

  v18 = 0;
  v17 = 0x7FFFFFFFFFFFFFF7;
LABEL_30:
  v19 = operator new(v17);
  v20 = v19;
  if (v12)
  {
    memmove(v19, v11, v12);
  }

  v20[v12] = 93;
  if (!v18)
  {
    operator delete(v11);
  }

  *&state[8] = v13;
  *&state[16] = v17 | 0x8000000000000000;
  *state = v20;
  v21 = &v20[v13];
LABEL_40:
  *v21 = 0;
  *__p = *state;
  __p[2] = *&state[16];
  if (*(a1 + 192) == 1 && *(a1 + 184) >= 3u)
  {
    v112[23] = 10;
    strcpy(v112, "BootFailed");
    v111[23] = 0;
    v111[0] = 0;
    BootModule::updateMobileAssetPTStatus_sync(a1, 4u, v112, v111);
  }

  if ((*(a1 + 189) & 1) == 0)
  {
    v23 = *(a1 + 184);
    if (v23 <= *(a1 + 156))
    {
      v47 = *(a1 + 104);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *state = 67109120;
        *&state[4] = v23;
        _os_log_error_impl(&dword_297288000, v47, OS_LOG_TYPE_ERROR, "Attempting to boot baseband again; attempt=%d", state, 8u);
      }

      *&v48 = 0xAAAAAAAAAAAAAAAALL;
      *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v119 = v48;
      v120 = v48;
      v117 = v48;
      v118 = v48;
      *&state[16] = v48;
      v116 = v48;
      *state = v48;
      v49 = *MEMORY[0x29EDBEB60];
      v50 = strlen(*MEMORY[0x29EDBEB60]);
      if (v50 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v51 = v50;
      if (v50 >= 0x17)
      {
        if ((v50 | 7) == 0x17)
        {
          v53 = 25;
        }

        else
        {
          v53 = (v50 | 7) + 1;
        }

        v52 = operator new(v53);
        *(&v109 + 1) = v51;
        v110 = v53 | 0x8000000000000000;
        *&v109 = v52;
      }

      else
      {
        HIBYTE(v110) = v50;
        v52 = &v109;
        if (!v50)
        {
LABEL_98:
          v52[v51] = 0;
          v54 = *MEMORY[0x29EDBF5C0];
          v55 = strlen(*MEMORY[0x29EDBF5C0]);
          if (v55 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v56 = v55;
          if (v55 >= 0x17)
          {
            if ((v55 | 7) == 0x17)
            {
              v58 = 25;
            }

            else
            {
              v58 = (v55 | 7) + 1;
            }

            v57 = operator new(v58);
            *(&v107 + 1) = v56;
            v108 = v58 | 0x8000000000000000;
            *&v107 = v57;
          }

          else
          {
            HIBYTE(v108) = v55;
            v57 = &v107;
            if (!v55)
            {
LABEL_107:
              v57[v56] = 0;
              Timestamp::Timestamp(&cf);
              Timestamp::asString(&cf, 0, 9, v105);
              v102 = 0;
              LOBYTE(v101) = 0;
              ResetInfo::ResetInfo(state, &v109, &v107, __p, v105, 4, &v101);
              if (v106 < 0)
              {
                operator delete(v105[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&cf, v104);
                if ((SHIBYTE(v108) & 0x80000000) == 0)
                {
LABEL_109:
                  if ((SHIBYTE(v110) & 0x80000000) == 0)
                  {
                    goto LABEL_110;
                  }

LABEL_186:
                  operator delete(v109);
LABEL_110:
                  ResetInfo::ResetInfo(&v94, state);
                  v93 = 0;
                  BootModule::requestReset(a1, &v94, &v93);
                  if (v93)
                  {
                    _Block_release(v93);
                  }

                  if (v100 < 0)
                  {
                    operator delete(v99);
                    if ((v98 & 0x80000000) == 0)
                    {
LABEL_114:
                      if ((v96 & 0x80000000) == 0)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_189;
                    }
                  }

                  else if ((v98 & 0x80000000) == 0)
                  {
                    goto LABEL_114;
                  }

                  operator delete(v97);
                  if ((v96 & 0x80000000) == 0)
                  {
LABEL_115:
                    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_190;
                  }

LABEL_189:
                  operator delete(v95);
                  if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_116:
                    if ((SHIBYTE(v120) & 0x80000000) == 0)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_191;
                  }

LABEL_190:
                  operator delete(v94.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v120) & 0x80000000) == 0)
                  {
LABEL_117:
                    if ((SBYTE7(v118) & 0x80000000) == 0)
                    {
                      goto LABEL_118;
                    }

                    goto LABEL_192;
                  }

LABEL_191:
                  operator delete(*(&v119 + 1));
                  if ((SBYTE7(v118) & 0x80000000) == 0)
                  {
LABEL_118:
                    if ((SHIBYTE(v116) & 0x80000000) == 0)
                    {
                      goto LABEL_119;
                    }

                    goto LABEL_193;
                  }

LABEL_192:
                  operator delete(v117);
                  if ((SHIBYTE(v116) & 0x80000000) == 0)
                  {
LABEL_119:
                    if ((state[23] & 0x80000000) == 0)
                    {
                      goto LABEL_175;
                    }

LABEL_194:
                    operator delete(*state);
                    goto LABEL_175;
                  }

LABEL_193:
                  operator delete(*&state[24]);
                  if ((state[23] & 0x80000000) == 0)
                  {
                    goto LABEL_175;
                  }

                  goto LABEL_194;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&cf, v104);
                if ((SHIBYTE(v108) & 0x80000000) == 0)
                {
                  goto LABEL_109;
                }
              }

              operator delete(v107);
              if ((SHIBYTE(v110) & 0x80000000) == 0)
              {
                goto LABEL_110;
              }

              goto LABEL_186;
            }
          }

          memmove(v57, v54, v56);
          goto LABEL_107;
        }
      }

      memmove(v52, v49, v51);
      goto LABEL_98;
    }
  }

  v24 = *(a1 + 104);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *state = 0;
    _os_log_error_impl(&dword_297288000, v24, OS_LOG_TYPE_ERROR, "Baseband is declared dead; no more boot attempts", state, 2u);
  }

  (*(*a1 + 104))(a1, 6);
  cf = 0;
  v25 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBEB58], v25, v27);
  v28 = *(a1 + 80);
  if (!v28 || (v29 = *(a1 + 72), (v30 = std::__shared_weak_count::lock(v28)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v31 = v30;
  atomic_fetch_add_explicit(&v30->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v31);
  }

  *&v107 = 0xAAAAAAAAAAAAAAAALL;
  *(&v107 + 1) = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v32 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(state);
    v33 = *state;
    *state = 0;
    *&state[8] = 0;
    v34 = *(&off_2A1399448 + 1);
    off_2A1399448 = v33;
    if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v34->__on_zero_shared)(v34);
      std::__shared_weak_count::__release_weak(v34);
    }

    v35 = *&state[8];
    if (*&state[8] && !atomic_fetch_add((*&state[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v35->__on_zero_shared)(v35);
      std::__shared_weak_count::__release_weak(v35);
    }

    v32 = off_2A1399448;
  }

  *&v107 = v32;
  *(&v107 + 1) = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v36 = *MEMORY[0x29EDBF460];
  v37 = strlen(*MEMORY[0x29EDBF460]);
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v38 = v37;
  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v37 | 7) + 1;
    }

    v39 = operator new(v41);
    __dst[1] = v38;
    v92 = v41 | 0x8000000000000000;
    __dst[0] = v39;
LABEL_72:
    memmove(v39, v36, v38);
    *(v38 + v39) = 0;
    v40 = cf;
    if (!cf)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

  HIBYTE(v92) = v37;
  v39 = __dst;
  if (v37)
  {
    goto LABEL_72;
  }

  LOBYTE(__dst[0]) = 0;
  v40 = cf;
  if (!cf)
  {
    goto LABEL_75;
  }

LABEL_73:
  v42 = CFGetTypeID(v40);
  if (v42 == CFDictionaryGetTypeID())
  {
    v90 = v40;
    CFRetain(v40);
    goto LABEL_76;
  }

LABEL_75:
  v40 = 0;
  v90 = 0;
LABEL_76:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule21handleBootFailed_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_89_0;
  aBlock[4] = a1;
  aBlock[5] = v29;
  v88 = v31;
  atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = _Block_copy(aBlock);
  v89 = v43;
  ABMServer::broadcast(v32, __dst, &v90, &v89);
  if (v43)
  {
    _Block_release(v43);
  }

  if (v40)
  {
    CFRelease(v40);
  }

  if (SHIBYTE(v92) < 0)
  {
    operator delete(__dst[0]);
  }

  v44 = xpc_dictionary_create(0, 0, 0);
  v45 = MEMORY[0x29EDCAA00];
  if (v44 || (v44 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v44) == v45)
    {
      xpc_retain(v44);
      v46 = v44;
    }

    else
    {
      v46 = xpc_null_create();
    }
  }

  else
  {
    v46 = xpc_null_create();
    v44 = 0;
  }

  xpc_release(v44);
  v59 = xpc_int64_create(4);
  if (!v59)
  {
    v59 = xpc_null_create();
  }

  xpc_dictionary_set_value(v46, *MEMORY[0x29EDBE578], v59);
  v60 = xpc_null_create();
  xpc_release(v59);
  xpc_release(v60);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v61 = __p;
  }

  else
  {
    v61 = __p[0];
  }

  v62 = xpc_string_create(v61);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  xpc_dictionary_set_value(v46, *MEMORY[0x29EDBEF60], v62);
  v63 = xpc_null_create();
  xpc_release(v62);
  xpc_release(v63);
  Timestamp::Timestamp(&v109);
  Timestamp::asString(&v109, 0, 9, state);
  if (state[23] >= 0)
  {
    v64 = state;
  }

  else
  {
    v64 = *state;
  }

  v65 = xpc_string_create(v64);
  if (!v65)
  {
    v65 = xpc_null_create();
  }

  xpc_dictionary_set_value(v46, *MEMORY[0x29EDBE930], v65);
  v66 = xpc_null_create();
  xpc_release(v65);
  xpc_release(v66);
  if ((state[23] & 0x80000000) != 0)
  {
    operator delete(*state);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v109, *(&v109 + 1));
  v67 = *MEMORY[0x29EDBEBE0];
  v68 = strlen(*MEMORY[0x29EDBEBE0]);
  if (v68 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v69 = v68;
  if (v68 >= 0x17)
  {
    if ((v68 | 7) == 0x17)
    {
      v71 = 25;
    }

    else
    {
      v71 = (v68 | 7) + 1;
    }

    v70 = operator new(v71);
    *&state[8] = v69;
    *&state[16] = v71 | 0x8000000000000000;
    *state = v70;
LABEL_145:
    memmove(v70, v67, v69);
    v70[v69] = 0;
    object = v46;
    if (v46)
    {
      goto LABEL_140;
    }

LABEL_146:
    object = xpc_null_create();
    goto LABEL_147;
  }

  state[23] = v68;
  v70 = state;
  if (v68)
  {
    goto LABEL_145;
  }

  state[0] = 0;
  object = v46;
  if (!v46)
  {
    goto LABEL_146;
  }

LABEL_140:
  xpc_retain(v46);
LABEL_147:
  v83[0] = MEMORY[0x29EDCA5F8];
  v83[1] = 1174405120;
  v83[2] = ___ZN10BootModule21handleBootFailed_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_90;
  v83[3] = &__block_descriptor_tmp_94;
  v83[4] = a1;
  v83[5] = v29;
  v84 = v31;
  atomic_fetch_add_explicit(&v31->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v72 = _Block_copy(v83);
  v85 = v72;
  Service::runCommand(a1, state, &object, &v85);
  if (v72)
  {
    _Block_release(v72);
  }

  xpc_release(object);
  object = 0;
  if ((state[23] & 0x80000000) != 0)
  {
    operator delete(*state);
  }

  v73 = xpc_dictionary_create(0, 0, 0);
  if (v73 || (v73 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v73) == v45)
    {
      xpc_retain(v73);
      v74 = v73;
    }

    else
    {
      v74 = xpc_null_create();
    }
  }

  else
  {
    v74 = xpc_null_create();
    v73 = 0;
  }

  xpc_release(v73);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v75 = __p;
  }

  else
  {
    v75 = __p[0];
  }

  v76 = xpc_string_create(v75);
  if (!v76)
  {
    v76 = xpc_null_create();
  }

  xpc_dictionary_set_value(v74, *MEMORY[0x29EDBF090], v76);
  v77 = xpc_null_create();
  xpc_release(v76);
  xpc_release(v77);
  *state = operator new(0x20uLL);
  *&state[8] = xmmword_29742C690;
  strcpy(*state, "CommandUpdateBBBootStats");
  v82 = v74;
  if (v74)
  {
    xpc_retain(v74);
  }

  else
  {
    v82 = xpc_null_create();
  }

  v81 = 0;
  Service::runCommand(a1, state, &v82, &v81);
  xpc_release(v82);
  v82 = 0;
  if ((state[23] & 0x80000000) != 0)
  {
    operator delete(*state);
  }

  xpc_release(v74);
  if (v84)
  {
    std::__shared_weak_count::__release_weak(v84);
  }

  xpc_release(v46);
  if (v88)
  {
    std::__shared_weak_count::__release_weak(v88);
  }

  v78 = *(&v107 + 1);
  if (!*(&v107 + 1) || atomic_fetch_add((*(&v107 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    std::__shared_weak_count::__release_weak(v31);
    v79 = cf;
    if (!cf)
    {
      goto LABEL_175;
    }

    goto LABEL_174;
  }

  (v78->__on_zero_shared)(v78);
  std::__shared_weak_count::__release_weak(v78);
  std::__shared_weak_count::__release_weak(v31);
  v79 = cf;
  if (cf)
  {
LABEL_174:
    CFRelease(v79);
  }

LABEL_175:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v80 = v114;
    if (!v114)
    {
      return;
    }
  }

  else
  {
    v80 = v114;
    if (!v114)
    {
      return;
    }
  }

  os_release(v80);
}