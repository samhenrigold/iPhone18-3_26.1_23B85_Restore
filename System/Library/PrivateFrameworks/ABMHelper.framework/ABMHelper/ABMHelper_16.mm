void INTTrace::exitLowPower(INTTrace *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

  v4 = *(this + 2);
  if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = gr_name;
  v8[1] = this;
  v9 = *(this + 3);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::exitLowPower(dispatch::group)::$_0>(INTTrace::exitLowPower(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::exitLowPower(dispatch::group)::$_0,dispatch_queue_s *::default_delete<INTTrace::exitLowPower(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!gr_name)
    {
      return;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!gr_name)
    {
      return;
    }
  }

  dispatch_group_leave(gr_name);

  dispatch_release(gr_name);
}

uint64_t INTTrace::snapshot(NSObject *a1, NSObject **a2, const __CFDictionary **a3)
{
  isa = a1[5].isa;
  if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&dword_23C1C4000, isa, OS_LOG_TYPE_DEFAULT, "#I Snapshotting!", group, 2u);
  }

  v25[0] = 0xAAAAAAAAAAAAAAAALL;
  v25[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v25, *a3);
  memset(&v24, 170, sizeof(v24));
  group[0] = 0;
  group[1] = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::MakeCFString::MakeCFString(&v26, "kKeyTraceDumpStateReason");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v26);
  if (__p.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(group[0]);
    v7 = *a2;
    if (v7)
    {
LABEL_5:
      dispatch_retain(v7);
      dispatch_group_enter(v7);
      group[0] = v7;
      dispatch_retain(v7);
      if (group[0])
      {
        dispatch_group_enter(group[0]);
      }

      group[1] = a1;
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = *a2;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  group[0] = 0;
  group[1] = a1;
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_8:
    __p = v24;
    goto LABEL_12;
  }

LABEL_11:
  std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
LABEL_12:
  v8 = *a3;
  cf = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = a1[2].isa;
  if (!v9 || (v10 = a1[1].isa, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x30uLL);
  v14 = *&__p.__r_.__value_.__l.__data_;
  *v13 = *group;
  v13[1] = v14;
  v15 = __p.__r_.__value_.__r.__words[2];
  memset(&__p, 0, sizeof(__p));
  v16 = cf;
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  group[0] = 0;
  cf = 0;
  v17 = a1[3].isa;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v13;
  v18[1] = v10;
  v18[2] = v12;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v19 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v19);
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (group[0])
  {
    dispatch_group_leave(group[0]);
    if (group[0])
    {
      dispatch_release(group[0]);
    }
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x23EECD940](v25);
}

void sub_23C288F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, dispatch_group_t group, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EECD940](&a24, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void INTTrace::dumpState(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __p = *a3;
    v4 = a1[2];
    if (!v4)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v5 = a1[1];
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = operator new(0x20uLL);
  *v8 = a1;
  v9 = (v8 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v8[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::dumpState(dispatch::group,std::string)::$_0>(INTTrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<INTTrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

uint64_t INTTrace::setProperty(void *a1, dispatch_object_t *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
    v16 = 0;
    *buf = &v16;
    *&buf[8] = v8;
    dispatch_retain(v8);
    if (*&buf[8])
    {
      dispatch_group_enter(*&buf[8]);
    }

    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = 0;
    *buf = &v16;
    *&buf[8] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      *&buf[16] = *a3;
      v19 = *(a3 + 16);
      goto LABEL_8;
    }
  }

  std::string::__init_copy_ctor_external(&buf[16], *a3, *(a3 + 8));
LABEL_8:
  v9 = *a2;
  v20 = a1;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = a1 + 1;
  block[5] = buf;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  dispatch_sync(v10, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(*&buf[16]);
  }

  if (*&buf[8])
  {
    dispatch_group_leave(*&buf[8]);
    if (*&buf[8])
    {
      dispatch_release(*&buf[8]);
    }
  }

  if (v16)
  {
    v11 = 1;
    if (!v8)
    {
      return v11 & 1;
    }

    goto LABEL_28;
  }

  v12 = a1[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v14 = a3;
    }

    else
    {
      v14 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = *a4;
    }

    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Setting %s to %s failed", buf, 0x16u);
    v11 = v16;
    if (v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = 0;
    if (v8)
    {
LABEL_28:
      dispatch_group_leave(v8);
      dispatch_release(v8);
    }
  }

  return v11 & 1;
}

void sub_23C289420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      v28 = group;
      if (!group)
      {
LABEL_8:
        if (v26)
        {
          dispatch_group_leave(v26);
          dispatch_release(v26);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      dispatch_group_leave(v28);
      dispatch_release(group);
      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  v28 = group;
  if (!group)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t INTTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 1;
  v4 = a1 + 8;
  v7[0] = &v10;
  v7[1] = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke;
  block[3] = &__block_descriptor_tmp_100;
  block[4] = v4;
  block[5] = v7;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v10;
    }
  }

  else
  {
    dispatch_sync(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v10;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  return v10;
}

void INTTrace::initBootSessionPrefs_sync(INTTrace *this)
{
  HIBYTE(v18[2]) = 15;
  strcpy(v18, "Reset_Mode_Boot");
  memset(&__p, 0, sizeof(__p));
  v2 = prop::bbtrace::get(v18, &__p);
  if (v2)
  {
    LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
    v2 = util::convert<int>(&__p, &v17, 0);
    if (v2)
    {
      *(this + 25) = v17.__r_.__value_.__l.__data_;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(v18[0]);
    if (!sys::isBootSessionChanged(v3))
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*(this + 25))
    {
      goto LABEL_11;
    }

    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I AP reboot detected, resetting trace properties", &__p, 2u);
    }

    HIBYTE(v18[2]) = 4;
    strcpy(v18, "Mode");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v11 = prop::bbtrace::set(v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
      {
LABEL_49:
        if (v11)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    else if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    operator delete(v18[0]);
    if (v11)
    {
      goto LABEL_55;
    }

LABEL_53:
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to reset trace mode for new boot instance", &__p, 2u);
    }

LABEL_55:
    *(this + 24) = 0;
    HIBYTE(v18[2]) = 14;
    strcpy(v18, "TraceOwnership");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v13 = prop::bbtrace::set(v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if (v13)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }
    }

    else if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(v18[0]);
    if (v13)
    {
      goto LABEL_63;
    }

LABEL_61:
    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Failed to reset trace transport owner id for new boot instance", &__p, 2u);
    }

LABEL_63:
    *(this + 38) = 0;
    HIBYTE(v18[2]) = 19;
    strcpy(v18, "Live_Filter_Setting");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v15 = prop::bbtrace::set(v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
      {
LABEL_65:
        if (v15)
        {
          goto LABEL_66;
        }

        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    operator delete(v18[0]);
    if (v15)
    {
      goto LABEL_66;
    }

LABEL_69:
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Failed to reset trace live filter setting for new boot instance", &__p, 2u);
      *(this + 29) = 0;
      return;
    }

LABEL_66:
    *(this + 29) = 0;
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v18[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (sys::isBootSessionChanged(v2))
  {
    goto LABEL_10;
  }

LABEL_11:
  HIBYTE(v18[2]) = 4;
  strcpy(v18, "Mode");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(v18, &__p))
  {
    v5 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
  v4 = util::convert<int>(&__p, &v17, 0);
  v5 = v4;
  if (v4)
  {
    *(this + 24) = v17.__r_.__value_.__l.__data_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v18[0]);
  if (v5)
  {
    goto LABEL_24;
  }

LABEL_22:
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Failed to get trace mode from preferences for same boot instance", &__p, 2u);
  }

LABEL_24:
  HIBYTE(v18[2]) = 14;
  strcpy(v18, "TraceOwnership");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(v18, &__p))
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

LABEL_27:
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
  v7 = util::convert<int>(&__p, &v17, 0);
  v8 = v7;
  if (v7)
  {
    *(this + 38) = v17.__r_.__value_.__l.__data_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_33:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if (v8)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v18[0]);
  if (v8)
  {
    goto LABEL_37;
  }

LABEL_35:
  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to get transport owner id from preferences for same boot instance", &__p, 2u);
  }

LABEL_37:
  HIBYTE(v18[2]) = 19;
  strcpy(v18, "Live_Filter_Setting");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v18, &__p))
  {
    LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
    if (util::convert<int>(&__p, &v17, 0))
    {
      *(this + 29) = v17.__r_.__value_.__l.__data_;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_44:
    operator delete(v18[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v18[2]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_23C289B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::prepare_sync(INTTrace *this)
{
  v275 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 24);
    if (v3 > 8)
    {
      v4 = "Unknown";
    }

    else
    {
      v4 = off_278BB9648[v3];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Preparing BB Trace with mode: %s", &buf, 0xCu);
  }

  if (!*(this + 20) && !*(this + 24))
  {
    memset(v244, 0, sizeof(v244));
    memset(v243, 0, sizeof(v243));
    v24 = *(this + 29);
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 != 1)
        {
          goto LABEL_415;
        }

        v25 = 0x7FFFFFFFFFFFFFF7;
        v26 = abm::trace::kScratchFolder[0];
        v27 = strlen(abm::trace::kScratchFolder[0]);
        if (v27 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v28 = v27;
        if (v27 >= 0x17)
        {
          if ((v27 | 7) == 0x17)
          {
            v96 = 25;
          }

          else
          {
            v96 = (v27 | 7) + 1;
          }

          p_buf = operator new(v96);
          buf.__r_.__value_.__r.__words[2] = v96 | 0x8000000000000000;
          buf.__r_.__value_.__r.__words[0] = p_buf;
          buf.__r_.__value_.__l.__size_ = v28;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v27;
          p_buf = &buf;
          if (!v27)
          {
LABEL_186:
            p_buf->__r_.__value_.__s.__data_[v28] = 0;
            size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              size = buf.__r_.__value_.__l.__size_;
              v100 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v100 - buf.__r_.__value_.__l.__size_ < 0x19)
              {
                v98 = buf.__r_.__value_.__l.__size_ + 25;
                if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v100)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v99 = buf.__r_.__value_.__r.__words[0];
                if (v100 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v118 = 0;
LABEL_225:
                  v119 = operator new(v25);
                  v120 = v119;
                  if (size)
                  {
                    memmove(v119, v99, size);
                  }

                  qmemcpy((v120 + size), "BBTrace.scratch.filtered/", 25);
                  if (!v118)
                  {
                    operator delete(v99);
                  }

                  buf.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
                  buf.__r_.__value_.__r.__words[0] = v120;
                  buf.__r_.__value_.__l.__size_ = v98;
                  v121 = (v120 + v98);
LABEL_289:
                  *v121 = 0;
                  v267.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                  v147 = buf.__r_.__value_.__r.__words[0];
                  *(v267.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                  v148 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  memset(&buf, 0, sizeof(buf));
                  if (SHIBYTE(v244[2]) < 0)
                  {
                    operator delete(v244[0]);
                    v244[0] = v147;
                    v244[1] = v267.__r_.__value_.__l.__data_;
                    *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                    HIBYTE(v244[2]) = v148;
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    v244[0] = v147;
                    v244[1] = v267.__r_.__value_.__l.__data_;
                    *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                    HIBYTE(v244[2]) = v148;
                  }

                  v149 = *(this + 5);
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                  {
                    v150 = v244;
                    if (SHIBYTE(v244[2]) < 0)
                    {
                      v150 = v244[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = v150;
                    v151 = "#I Live filtering is enabled; primaryScratchPath is %s";
LABEL_352:
                    v177 = v149;
                    v178 = 12;
LABEL_414:
                    _os_log_impl(&dword_23C1C4000, v177, OS_LOG_TYPE_DEFAULT, v151, &buf, v178);
                    goto LABEL_415;
                  }

                  goto LABEL_415;
                }

LABEL_216:
                v116 = 2 * v100;
                if (v98 > 2 * v100)
                {
                  v116 = v98;
                }

                if ((v116 | 7) == 0x17)
                {
                  v117 = 25;
                }

                else
                {
                  v117 = (v116 | 7) + 1;
                }

                if (v116 >= 0x17)
                {
                  v25 = v117;
                }

                else
                {
                  v25 = 23;
                }

                v118 = v100 == 22;
                goto LABEL_225;
              }

              v142 = buf.__r_.__value_.__r.__words[0];
              qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
              v143 = size + 25;
              buf.__r_.__value_.__l.__size_ = size + 25;
            }

            else
            {
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0x17)
              {
                v98 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 25;
                v99 = &buf;
                v100 = 22;
                goto LABEL_216;
              }

              v142 = &buf;
              qmemcpy(&buf + SHIBYTE(buf.__r_.__value_.__r.__words[2]), "BBTrace.scratch.filtered/", 25);
              v143 = size + 25;
              *(&buf.__r_.__value_.__s + 23) = (size + 25) & 0x7F;
            }

            v121 = v142 + v143;
            goto LABEL_289;
          }
        }

        memmove(p_buf, v26, v28);
        goto LABEL_186;
      }

      v86 = 0x7FFFFFFFFFFFFFF7;
      v87 = abm::trace::kScratchFolder[0];
      v88 = strlen(abm::trace::kScratchFolder[0]);
      if (v88 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v89 = v88;
      if (v88 >= 0x17)
      {
        if ((v88 | 7) == 0x17)
        {
          v106 = 25;
        }

        else
        {
          v106 = (v88 | 7) + 1;
        }

        v90 = operator new(v106);
        buf.__r_.__value_.__r.__words[2] = v106 | 0x8000000000000000;
        buf.__r_.__value_.__r.__words[0] = v90;
        buf.__r_.__value_.__l.__size_ = v89;
      }

      else
      {
        *(&buf.__r_.__value_.__s + 23) = v88;
        v90 = &buf;
        if (!v88)
        {
LABEL_202:
          v90->__r_.__value_.__s.__data_[v89] = 0;
          v107 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v107 = buf.__r_.__value_.__l.__size_;
            v110 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v110 - buf.__r_.__value_.__l.__size_ < 0x10)
            {
              v108 = buf.__r_.__value_.__l.__size_ + 16;
              if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v110)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v109 = buf.__r_.__value_.__r.__words[0];
              if (v110 >= 0x3FFFFFFFFFFFFFF3)
              {
                v131 = 0;
LABEL_259:
                v132 = operator new(v86);
                v133 = v132;
                if (v107)
                {
                  memmove(v132, v109, v107);
                }

                *(v133 + v107) = *"BBTrace.scratch/";
                if (!v131)
                {
                  operator delete(v109);
                }

                buf.__r_.__value_.__r.__words[2] = v86 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v133;
                buf.__r_.__value_.__l.__size_ = v108;
                v134 = (v133 + v108);
LABEL_344:
                *v134 = 0;
                v267.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                v174 = buf.__r_.__value_.__r.__words[0];
                *(v267.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                v175 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                memset(&buf, 0, sizeof(buf));
                if (SHIBYTE(v244[2]) < 0)
                {
                  operator delete(v244[0]);
                  v244[0] = v174;
                  v244[1] = v267.__r_.__value_.__l.__data_;
                  *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                  HIBYTE(v244[2]) = v175;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  v244[0] = v174;
                  v244[1] = v267.__r_.__value_.__l.__data_;
                  *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                  HIBYTE(v244[2]) = v175;
                }

                v149 = *(this + 5);
                if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                {
                  v176 = v244;
                  if (SHIBYTE(v244[2]) < 0)
                  {
                    v176 = v244[0];
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                  *(buf.__r_.__value_.__r.__words + 4) = v176;
                  v151 = "#I Live filtering is disabled; primaryScratchPath is %s";
                  goto LABEL_352;
                }

LABEL_415:
                *(&v267.__r_.__value_.__s + 23) = 18;
                strcpy(&v267, "MaxMemoryFileCount");
                memset(&buf, 0, sizeof(buf));
                if (prop::bbtrace::get(&v267, &buf))
                {
                  util::convert<unsigned int>(&buf, this + 31, 0);
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v267.__r_.__value_.__l.__data_);
                }

                v267.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA0000;
                *&v267.__r_.__value_.__r.__words[1] = 0u;
                v268 = 0u;
                *v269 = 0u;
                memset(v270, 0, sizeof(v270));
                *&v271 = 0;
                *(&v271 + 1) = 0x1500100000;
                v272 = 0xAAAAAAAA00000015;
                if (SHIBYTE(v244[2]) < 0)
                {
                  std::string::__assign_no_alias<true>(&v270[3], v244[0], v244[1]);
                  if (SHIBYTE(v270[2]) < 0)
                  {
                    v270[1] = 4;
                    v207 = v270[0];
LABEL_425:
                    strcpy(v207, ".acp");
                    LODWORD(v271) = *(this + 28);
                    *(&v271 + 4) = vrev64_s32(*(this + 120));
                    __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA0000;
                    *&__p.__r_.__value_.__r.__words[1] = 0u;
                    v237 = 0u;
                    *v238 = 0u;
                    memset(v239, 0, sizeof(v239));
                    v240 = 0;
                    v241 = 0x1500100000;
                    v242 = 0xAAAAAAAA00000015;
                    if (SHIBYTE(v243[2]) < 0)
                    {
                      std::string::__assign_no_alias<true>(&v239[3], v243[0], v243[1]);
                      if (SHIBYTE(v239[2]) < 0)
                      {
                        v239[1] = 4;
                        v208 = v239[0];
                        goto LABEL_429;
                      }
                    }

                    else
                    {
                      *&v239[3] = *v243;
                      v239[5] = v243[2];
                    }

                    v208 = v239;
                    HIBYTE(v239[2]) = 4;
LABEL_429:
                    strcpy(v208, ".acp");
                    v209 = *(this + 30);
                    v210 = *(this + 31) >> 2;
                    LODWORD(v240) = *(this + 28) / 16;
                    HIDWORD(v240) = v210;
                    LODWORD(v241) = v209;
                    v211 = *(this + 2);
                    if (!v211 || (v212 = *(this + 90), v213 = *(this + 1), (v214 = std::__shared_weak_count::lock(v211)) == 0))
                    {
                      std::__throw_bad_weak_ptr[abi:ne200100]();
                    }

                    v215 = v214;
                    p_shared_weak_owners = &v214->__shared_weak_owners_;
                    atomic_fetch_add_explicit(&v214->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    if (!atomic_fetch_add(&v214->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v214->__on_zero_shared)(v214);
                      std::__shared_weak_count::__release_weak(v215);
                    }

                    *&v217 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v217 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *key = v217;
                    v266 = v217;
                    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                    *(&v266 + 1) = 0;
                    v218 = operator new(0x20uLL);
                    *v218 = &unk_284EFCCC8;
                    v218[1] = this;
                    v218[2] = v213;
                    v218[3] = v215;
                    *(&v266 + 1) = v218;
                    v264 = 0xAAAAAAAAAAAAAAAALL;
                    *&v219 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v219 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v263[0] = v219;
                    v263[1] = v219;
                    LODWORD(v263[0]) = *(this + 90);
                    v220 = operator new(0x20uLL);
                    *v220 = &unk_284EFCCC8;
                    v220[1] = this;
                    v220[2] = v213;
                    v220[3] = v215;
                    atomic_fetch_add_explicit(&v215->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v264 = v220;
                    *&v221 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v221 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v259 = v221;
                    v260 = 0xAAAAAAAAAAAAAAAALL;
                    *v258 = v221;
                    *&v258[16] = v221;
                    v255[0] = v221;
                    *&buf.__r_.__value_.__r.__words[1] = v221;
                    buf.__r_.__value_.__r.__words[0] = 0;
                    LOWORD(buf.__r_.__value_.__r.__words[2]) = 0;
                    v247 = 0u;
                    v248 = 0u;
                    v249 = 0u;
                    v250 = 0u;
                    v251 = 0u;
                    v252 = 0u;
                    v253 = 0;
                    v254 = 0x1500100000;
                    LODWORD(v255[0]) = 21;
                    WORD4(v255[0]) = 0;
                    memset(&v255[1], 0, 96);
                    v256 = 0;
                    v257 = 0x1500100000;
                    *v258 = 21;
                    *&v258[12] = 0;
                    *&v258[24] = 0;
                    v261 = 0;
                    v262 = 0xAAAAAAAA00000015;
                    v222 = *(this + 3);
                    if (v222)
                    {
                      dispatch_retain(*(this + 3));
                      v223 = buf.__r_.__value_.__r.__words[0];
                      buf.__r_.__value_.__r.__words[0] = v222;
                      if (v223)
                      {
                        dispatch_release(v223);
                      }
                    }

                    v224 = (*(*this + 136))(this);
                    if (*(v224 + 23) >= 0)
                    {
                      v225 = v224;
                    }

                    else
                    {
                      v225 = *v224;
                    }

                    buf.__r_.__value_.__l.__size_ = v225;
                    TraceFileCollection::Parameters::operator=(&buf.__r_.__value_.__r.__words[2], &v267);
                    TraceFileCollection::Parameters::operator=(v255 + 8, &__p);
                    *&v258[8] = *(this + 29);
                    *&v258[12] = v212 | 0xAAAAAA1900000000;
                    *&v258[24] = v263[0];
                    v226 = v264;
                    if (v264)
                    {
                      if (v264 == (v263 + 8))
                      {
                        v274 = v273;
                        (*(*v264 + 24))();
LABEL_444:
                        std::__function::__value_func<void ()(xpc::dict const&)>::swap[abi:ne200100](v273, &v259);
                        if (v274 == v273)
                        {
                          (*(*v274 + 4))(v274);
                        }

                        else if (v274)
                        {
                          (*(*v274 + 5))();
                        }

                        abm::trace::TraceReader::Config::Config(v245, &buf);
                        abm::trace::TraceReader::create();
                        v227 = *v273;
                        v273[0] = 0;
                        v273[1] = 0;
                        v228 = *(this + 21);
                        *(this + 10) = v227;
                        if (v228 && !atomic_fetch_add(&v228->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v228->__on_zero_shared)(v228);
                          std::__shared_weak_count::__release_weak(v228);
                        }

                        v229 = v273[1];
                        if (v273[1] && !atomic_fetch_add(v273[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v229->__on_zero_shared)(v229);
                          std::__shared_weak_count::__release_weak(v229);
                        }

                        abm::trace::TraceReader::Config::~Config(v245);
                        v230 = *(this + 5);
                        if (*(this + 20))
                        {
                          if (os_log_type_enabled(v230, OS_LOG_TYPE_DEBUG))
                          {
                            LOWORD(v273[0]) = 0;
                            _os_log_debug_impl(&dword_23C1C4000, v230, OS_LOG_TYPE_DEBUG, "#D Created file reader!", v273, 2u);
                            abm::trace::TraceReader::Config::~Config(&buf);
                            v231 = v264;
                            if (v264 == (v263 + 8))
                            {
                              goto LABEL_457;
                            }

LABEL_464:
                            if (v231)
                            {
                              (*(*v231 + 40))(v231);
                            }

                            v232 = *(&v266 + 1);
                            if (*(&v266 + 1) == key)
                            {
LABEL_458:
                              (*(*v232 + 32))(v232);
                              std::__shared_weak_count::__release_weak(v215);
                              if (SHIBYTE(v239[5]) < 0)
                              {
                                goto LABEL_459;
                              }

                              goto LABEL_470;
                            }

LABEL_467:
                            if (v232)
                            {
                              (*(*v232 + 40))(v232);
                            }

                            std::__shared_weak_count::__release_weak(v215);
                            if (SHIBYTE(v239[5]) < 0)
                            {
LABEL_459:
                              operator delete(v239[3]);
                              if (SHIBYTE(v239[2]) < 0)
                              {
                                goto LABEL_460;
                              }

                              goto LABEL_471;
                            }

LABEL_470:
                            if (SHIBYTE(v239[2]) < 0)
                            {
LABEL_460:
                              operator delete(v239[0]);
                              v233 = *(&v237 + 1);
                              if (!*(&v237 + 1))
                              {
LABEL_473:
                                if (SBYTE7(v237) < 0)
                                {
                                  operator delete(__p.__r_.__value_.__l.__size_);
                                  if ((SHIBYTE(v270[5]) & 0x80000000) == 0)
                                  {
LABEL_475:
                                    if ((SHIBYTE(v270[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_476;
                                    }

                                    goto LABEL_484;
                                  }
                                }

                                else if ((SHIBYTE(v270[5]) & 0x80000000) == 0)
                                {
                                  goto LABEL_475;
                                }

                                operator delete(v270[3]);
                                if ((SHIBYTE(v270[2]) & 0x80000000) == 0)
                                {
LABEL_476:
                                  v234 = *(&v268 + 1);
                                  if (!*(&v268 + 1))
                                  {
                                    goto LABEL_478;
                                  }

                                  goto LABEL_477;
                                }

LABEL_484:
                                operator delete(v270[0]);
                                v234 = *(&v268 + 1);
                                if (!*(&v268 + 1))
                                {
LABEL_478:
                                  if (SBYTE7(v268) < 0)
                                  {
                                    operator delete(v267.__r_.__value_.__l.__size_);
                                    if ((SHIBYTE(v243[2]) & 0x80000000) == 0)
                                    {
LABEL_480:
                                      if ((SHIBYTE(v244[2]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_10;
                                      }

LABEL_488:
                                      operator delete(v244[0]);
                                      goto LABEL_10;
                                    }
                                  }

                                  else if ((SHIBYTE(v243[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_480;
                                  }

                                  operator delete(v243[0]);
                                  if ((SHIBYTE(v244[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_10;
                                  }

                                  goto LABEL_488;
                                }

LABEL_477:
                                v269[0] = v234;
                                operator delete(v234);
                                goto LABEL_478;
                              }

LABEL_472:
                              v238[0] = v233;
                              operator delete(v233);
                              goto LABEL_473;
                            }

LABEL_471:
                            v233 = *(&v237 + 1);
                            if (!*(&v237 + 1))
                            {
                              goto LABEL_473;
                            }

                            goto LABEL_472;
                          }
                        }

                        else if (os_log_type_enabled(v230, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(v273[0]) = 0;
                          _os_log_error_impl(&dword_23C1C4000, v230, OS_LOG_TYPE_ERROR, "Failed to create file reader", v273, 2u);
                          abm::trace::TraceReader::Config::~Config(&buf);
                          v231 = v264;
                          if (v264 != (v263 + 8))
                          {
                            goto LABEL_464;
                          }

LABEL_457:
                          (*(*v231 + 32))(v231);
                          v232 = *(&v266 + 1);
                          if (*(&v266 + 1) == key)
                          {
                            goto LABEL_458;
                          }

                          goto LABEL_467;
                        }

                        abm::trace::TraceReader::Config::~Config(&buf);
                        v231 = v264;
                        if (v264 != (v263 + 8))
                        {
                          goto LABEL_464;
                        }

                        goto LABEL_457;
                      }

                      v226 = (*(*v264 + 16))();
                    }

                    v274 = v226;
                    goto LABEL_444;
                  }
                }

                else
                {
                  *&v270[3] = *v244;
                  v270[5] = v244[2];
                }

                v207 = v270;
                HIBYTE(v270[2]) = 4;
                goto LABEL_425;
              }

LABEL_250:
              v129 = 2 * v110;
              if (v108 > 2 * v110)
              {
                v129 = v108;
              }

              if ((v129 | 7) == 0x17)
              {
                v130 = 25;
              }

              else
              {
                v130 = (v129 | 7) + 1;
              }

              if (v129 >= 0x17)
              {
                v86 = v130;
              }

              else
              {
                v86 = 23;
              }

              v131 = v110 == 22;
              goto LABEL_259;
            }

            v145 = buf.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 7) < 0x10)
            {
              v108 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 16;
              v109 = &buf;
              v110 = 22;
              goto LABEL_250;
            }

            v145 = &buf;
          }

          *(&v145->__r_.__value_.__l.__data_ + v107) = *"BBTrace.scratch/";
          v172 = v107 + 16;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            buf.__r_.__value_.__l.__size_ = v107 + 16;
          }

          else
          {
            *(&buf.__r_.__value_.__s + 23) = v172 & 0x7F;
          }

          v134 = v145 + v172;
          goto LABEL_344;
        }
      }

      memmove(v90, v87, v89);
      goto LABEL_202;
    }

    if (v24 != 2)
    {
      if (v24 != 3)
      {
        goto LABEL_415;
      }

      v39 = 0x7FFFFFFFFFFFFFF7;
      v40 = abm::trace::kScratchFolder[0];
      v41 = strlen(abm::trace::kScratchFolder[0]);
      if (v41 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v42 = v41;
      if (v41 >= 0x17)
      {
        if ((v41 | 7) == 0x17)
        {
          v101 = 25;
        }

        else
        {
          v101 = (v41 | 7) + 1;
        }

        v43 = operator new(v101);
        buf.__r_.__value_.__r.__words[2] = v101 | 0x8000000000000000;
        buf.__r_.__value_.__r.__words[0] = v43;
        buf.__r_.__value_.__l.__size_ = v42;
      }

      else
      {
        *(&buf.__r_.__value_.__s + 23) = v41;
        v43 = &buf;
        if (!v41)
        {
LABEL_194:
          v43->__r_.__value_.__s.__data_[v42] = 0;
          v102 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v102 = buf.__r_.__value_.__l.__size_;
            v105 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v105 - buf.__r_.__value_.__l.__size_ < 0x10)
            {
              v103 = buf.__r_.__value_.__l.__size_ + 16;
              if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v105)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v104 = buf.__r_.__value_.__r.__words[0];
              if (v105 >= 0x3FFFFFFFFFFFFFF3)
              {
                v125 = 0;
                v124 = 0x7FFFFFFFFFFFFFF7;
LABEL_242:
                v126 = operator new(v124);
                v127 = v126;
                if (v102)
                {
                  memmove(v126, v104, v102);
                }

                *(v127 + v102) = *"BBTrace.scratch/";
                if (!v125)
                {
                  operator delete(v104);
                }

                buf.__r_.__value_.__r.__words[2] = v124 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v127;
                buf.__r_.__value_.__l.__size_ = v103;
                v128 = (v127 + v103);
LABEL_302:
                *v128 = 0;
                v267.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                v153 = buf.__r_.__value_.__r.__words[0];
                *(v267.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                v154 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                memset(&buf, 0, sizeof(buf));
                if (SHIBYTE(v244[2]) < 0)
                {
                  operator delete(v244[0]);
                  v244[0] = v153;
                  v244[1] = v267.__r_.__value_.__l.__data_;
                  *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                  HIBYTE(v244[2]) = v154;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  v244[0] = v153;
                  v244[1] = v267.__r_.__value_.__l.__data_;
                  *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                  HIBYTE(v244[2]) = v154;
                }

                v155 = abm::trace::kScratchFolder[0];
                v156 = strlen(abm::trace::kScratchFolder[0]);
                if (v156 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v157 = v156;
                if (v156 >= 0x17)
                {
                  if ((v156 | 7) == 0x17)
                  {
                    v159 = 25;
                  }

                  else
                  {
                    v159 = (v156 | 7) + 1;
                  }

                  v158 = operator new(v159);
                  buf.__r_.__value_.__r.__words[2] = v159 | 0x8000000000000000;
                  buf.__r_.__value_.__r.__words[0] = v158;
                  buf.__r_.__value_.__l.__size_ = v157;
                }

                else
                {
                  *(&buf.__r_.__value_.__s + 23) = v156;
                  v158 = &buf;
                  if (!v156)
                  {
LABEL_315:
                    v158->__r_.__value_.__s.__data_[v157] = 0;
                    v160 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      v160 = buf.__r_.__value_.__l.__size_;
                      v163 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      if (v163 - buf.__r_.__value_.__l.__size_ < 0x19)
                      {
                        v161 = buf.__r_.__value_.__l.__size_ + 25;
                        if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v163)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v162 = buf.__r_.__value_.__r.__words[0];
                        if (v163 >= 0x3FFFFFFFFFFFFFF3)
                        {
                          v166 = 0;
LABEL_330:
                          v167 = operator new(v39);
                          v168 = v167;
                          if (v160)
                          {
                            memmove(v167, v162, v160);
                          }

                          qmemcpy((v168 + v160), "BBTrace.scratch.filtered/", 25);
                          if (!v166)
                          {
                            operator delete(v162);
                          }

                          buf.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
                          buf.__r_.__value_.__r.__words[0] = v168;
                          buf.__r_.__value_.__l.__size_ = v161;
                          v169 = (v168 + v161);
                          goto LABEL_391;
                        }

LABEL_321:
                        v164 = 2 * v163;
                        if (v161 > 2 * v163)
                        {
                          v164 = v161;
                        }

                        if ((v164 | 7) == 0x17)
                        {
                          v165 = 25;
                        }

                        else
                        {
                          v165 = (v164 | 7) + 1;
                        }

                        if (v164 >= 0x17)
                        {
                          v39 = v165;
                        }

                        else
                        {
                          v39 = 23;
                        }

                        v166 = v163 == 22;
                        goto LABEL_330;
                      }

                      v170 = buf.__r_.__value_.__r.__words[0];
                      qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
                      v171 = v160 + 25;
                      buf.__r_.__value_.__l.__size_ = v160 + 25;
                    }

                    else
                    {
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0x17)
                      {
                        v161 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 25;
                        v162 = &buf;
                        v163 = 22;
                        goto LABEL_321;
                      }

                      v170 = &buf;
                      qmemcpy(&buf + SHIBYTE(buf.__r_.__value_.__r.__words[2]), "BBTrace.scratch.filtered/", 25);
                      v171 = v160 + 25;
                      *(&buf.__r_.__value_.__s + 23) = (v160 + 25) & 0x7F;
                    }

                    v169 = v170 + v171;
LABEL_391:
                    *v169 = 0;
                    v267.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                    v198 = buf.__r_.__value_.__r.__words[0];
                    *(v267.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                    v199 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    memset(&buf, 0, sizeof(buf));
                    if (SHIBYTE(v243[2]) < 0)
                    {
                      operator delete(v243[0]);
                      v243[0] = v198;
                      v243[1] = v267.__r_.__value_.__l.__data_;
                      *(&v243[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                      HIBYTE(v243[2]) = v199;
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }
                    }

                    else
                    {
                      v243[0] = v198;
                      v243[1] = v267.__r_.__value_.__l.__data_;
                      *(&v243[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                      HIBYTE(v243[2]) = v199;
                    }

                    v200 = *(this + 5);
                    if (!os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_415;
                    }

                    v201 = v244;
                    if (SHIBYTE(v244[2]) < 0)
                    {
                      v201 = v244[0];
                    }

                    v202 = v243;
                    if (SHIBYTE(v243[2]) < 0)
                    {
                      v202 = v243[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                    *(buf.__r_.__value_.__r.__words + 4) = v201;
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                    *(&buf.__r_.__value_.__r.__words[1] + 6) = v202;
                    v151 = "#I Streaming Mode is enabled; primaryScratchPath is %s,  secondaryScratchPath is %s";
                    goto LABEL_413;
                  }
                }

                memmove(v158, v155, v157);
                goto LABEL_315;
              }

LABEL_233:
              v122 = 2 * v105;
              if (v103 > 2 * v105)
              {
                v122 = v103;
              }

              if ((v122 | 7) == 0x17)
              {
                v123 = 25;
              }

              else
              {
                v123 = (v122 | 7) + 1;
              }

              if (v122 >= 0x17)
              {
                v124 = v123;
              }

              else
              {
                v124 = 23;
              }

              v125 = v105 == 22;
              goto LABEL_242;
            }

            v144 = buf.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 7) < 0x10)
            {
              v103 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 16;
              v104 = &buf;
              v105 = 22;
              goto LABEL_233;
            }

            v144 = &buf;
          }

          *(&v144->__r_.__value_.__l.__data_ + v102) = *"BBTrace.scratch/";
          v152 = v102 + 16;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            buf.__r_.__value_.__l.__size_ = v102 + 16;
          }

          else
          {
            *(&buf.__r_.__value_.__s + 23) = v152 & 0x7F;
          }

          v128 = v144 + v152;
          goto LABEL_302;
        }
      }

      memmove(v43, v40, v42);
      goto LABEL_194;
    }

    v91 = 0x7FFFFFFFFFFFFFF7;
    v92 = abm::trace::kScratchFolder[0];
    v93 = strlen(abm::trace::kScratchFolder[0]);
    if (v93 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v94 = v93;
    if (v93 >= 0x17)
    {
      if ((v93 | 7) == 0x17)
      {
        v111 = 25;
      }

      else
      {
        v111 = (v93 | 7) + 1;
      }

      v95 = operator new(v111);
      buf.__r_.__value_.__r.__words[2] = v111 | 0x8000000000000000;
      buf.__r_.__value_.__r.__words[0] = v95;
      buf.__r_.__value_.__l.__size_ = v94;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v93;
      v95 = &buf;
      if (!v93)
      {
LABEL_210:
        v95->__r_.__value_.__s.__data_[v94] = 0;
        v112 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v112 = buf.__r_.__value_.__l.__size_;
          v115 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v115 - buf.__r_.__value_.__l.__size_ < 0x10)
          {
            v113 = buf.__r_.__value_.__l.__size_ + 16;
            if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v115)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v114 = buf.__r_.__value_.__r.__words[0];
            if (v115 >= 0x3FFFFFFFFFFFFFF3)
            {
              v138 = 0;
              v137 = 0x7FFFFFFFFFFFFFF7;
LABEL_276:
              v139 = operator new(v137);
              v140 = v139;
              if (v112)
              {
                memmove(v139, v114, v112);
              }

              *(v140 + v112) = *"BBTrace.scratch/";
              if (!v138)
              {
                operator delete(v114);
              }

              buf.__r_.__value_.__r.__words[2] = v137 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v140;
              buf.__r_.__value_.__l.__size_ = v113;
              v141 = (v140 + v113);
LABEL_355:
              *v141 = 0;
              v267.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
              v179 = buf.__r_.__value_.__r.__words[0];
              *(v267.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
              v180 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              memset(&buf, 0, sizeof(buf));
              if (SHIBYTE(v244[2]) < 0)
              {
                operator delete(v244[0]);
                v244[0] = v179;
                v244[1] = v267.__r_.__value_.__l.__data_;
                *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                HIBYTE(v244[2]) = v180;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v244[0] = v179;
                v244[1] = v267.__r_.__value_.__l.__data_;
                *(&v244[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                HIBYTE(v244[2]) = v180;
              }

              v181 = abm::trace::kScratchFolder[0];
              v182 = strlen(abm::trace::kScratchFolder[0]);
              if (v182 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v183 = v182;
              if (v182 >= 0x17)
              {
                if ((v182 | 7) == 0x17)
                {
                  v185 = 25;
                }

                else
                {
                  v185 = (v182 | 7) + 1;
                }

                v184 = operator new(v185);
                buf.__r_.__value_.__r.__words[2] = v185 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v184;
                buf.__r_.__value_.__l.__size_ = v183;
              }

              else
              {
                *(&buf.__r_.__value_.__s + 23) = v182;
                v184 = &buf;
                if (!v182)
                {
LABEL_368:
                  v184->__r_.__value_.__s.__data_[v183] = 0;
                  v186 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v186 = buf.__r_.__value_.__l.__size_;
                    v189 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                    if (v189 - buf.__r_.__value_.__l.__size_ < 0x19)
                    {
                      v187 = buf.__r_.__value_.__l.__size_ + 25;
                      if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v189)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v188 = buf.__r_.__value_.__r.__words[0];
                      if (v189 >= 0x3FFFFFFFFFFFFFF3)
                      {
                        v192 = 0;
LABEL_383:
                        v193 = operator new(v91);
                        v194 = v193;
                        if (v186)
                        {
                          memmove(v193, v188, v186);
                        }

                        qmemcpy((v194 + v186), "BBTrace.scratch.filtered/", 25);
                        if (!v192)
                        {
                          operator delete(v188);
                        }

                        buf.__r_.__value_.__r.__words[2] = v91 | 0x8000000000000000;
                        buf.__r_.__value_.__r.__words[0] = v194;
                        buf.__r_.__value_.__l.__size_ = v187;
                        v195 = (v194 + v187);
                        goto LABEL_403;
                      }

LABEL_374:
                      v190 = 2 * v189;
                      if (v187 > 2 * v189)
                      {
                        v190 = v187;
                      }

                      if ((v190 | 7) == 0x17)
                      {
                        v191 = 25;
                      }

                      else
                      {
                        v191 = (v190 | 7) + 1;
                      }

                      if (v190 >= 0x17)
                      {
                        v91 = v191;
                      }

                      else
                      {
                        v91 = 23;
                      }

                      v192 = v189 == 22;
                      goto LABEL_383;
                    }

                    v196 = buf.__r_.__value_.__r.__words[0];
                    qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
                    v197 = v186 + 25;
                    buf.__r_.__value_.__l.__size_ = v186 + 25;
                  }

                  else
                  {
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0x17)
                    {
                      v187 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 25;
                      v188 = &buf;
                      v189 = 22;
                      goto LABEL_374;
                    }

                    v196 = &buf;
                    qmemcpy(&buf + SHIBYTE(buf.__r_.__value_.__r.__words[2]), "BBTrace.scratch.filtered/", 25);
                    v197 = v186 + 25;
                    *(&buf.__r_.__value_.__s + 23) = (v186 + 25) & 0x7F;
                  }

                  v195 = v196 + v197;
LABEL_403:
                  *v195 = 0;
                  v267.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                  v203 = buf.__r_.__value_.__r.__words[0];
                  *(v267.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                  v204 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  memset(&buf, 0, sizeof(buf));
                  if (SHIBYTE(v243[2]) < 0)
                  {
                    operator delete(v243[0]);
                    v243[0] = v203;
                    v243[1] = v267.__r_.__value_.__l.__data_;
                    *(&v243[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                    HIBYTE(v243[2]) = v204;
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    v243[0] = v203;
                    v243[1] = v267.__r_.__value_.__l.__data_;
                    *(&v243[1] + 7) = *(v267.__r_.__value_.__r.__words + 7);
                    HIBYTE(v243[2]) = v204;
                  }

                  v200 = *(this + 5);
                  if (!os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_415;
                  }

                  v205 = v244;
                  if (SHIBYTE(v244[2]) < 0)
                  {
                    v205 = v244[0];
                  }

                  v206 = v243;
                  if (SHIBYTE(v243[2]) < 0)
                  {
                    v206 = v243[0];
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                  *(buf.__r_.__value_.__r.__words + 4) = v205;
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = v206;
                  v151 = "#I Hybrid trace collection is active; primaryScratchPath is %s, secondaryScratchPath is %s";
LABEL_413:
                  v177 = v200;
                  v178 = 22;
                  goto LABEL_414;
                }
              }

              memmove(v184, v181, v183);
              goto LABEL_368;
            }

LABEL_267:
            v135 = 2 * v115;
            if (v113 > 2 * v115)
            {
              v135 = v113;
            }

            if ((v135 | 7) == 0x17)
            {
              v136 = 25;
            }

            else
            {
              v136 = (v135 | 7) + 1;
            }

            if (v135 >= 0x17)
            {
              v137 = v136;
            }

            else
            {
              v137 = 23;
            }

            v138 = v115 == 22;
            goto LABEL_276;
          }

          v146 = buf.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 7) < 0x10)
          {
            v113 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 16;
            v114 = &buf;
            v115 = 22;
            goto LABEL_267;
          }

          v146 = &buf;
        }

        *(&v146->__r_.__value_.__l.__data_ + v112) = *"BBTrace.scratch/";
        v173 = v112 + 16;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          buf.__r_.__value_.__l.__size_ = v112 + 16;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v173 & 0x7F;
        }

        v141 = v146 + v173;
        goto LABEL_355;
      }
    }

    memmove(v95, v92, v94);
    goto LABEL_210;
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEBUG, "#D Skipped creating new file reader instance", &buf, 2u);
  }

LABEL_10:
  v6 = *(this + 24);
  if (v6 != 7 && v6 != 2)
  {
    if (!v6)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      memset(&v267, 170, sizeof(v267));
      v8 = abm::trace::kScratchFolder[0];
      v9 = strlen(abm::trace::kScratchFolder[0]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (v9 | 7) + 1;
        }

        v11 = operator new(v30);
        buf.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
        buf.__r_.__value_.__r.__words[0] = v11;
        buf.__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&buf.__r_.__value_.__s + 23) = v9;
        v11 = &buf;
        if (!v9)
        {
          buf.__r_.__value_.__s.__data_[0] = 0;
          v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
LABEL_17:
            if (v12 - 7 < 0x10)
            {
              v13 = v12 + 16;
              v14 = &buf;
              v15 = 22;
              goto LABEL_42;
            }

            v38 = &buf;
            goto LABEL_67;
          }

LABEL_39:
          v12 = buf.__r_.__value_.__l.__size_;
          v15 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v15 - buf.__r_.__value_.__l.__size_ < 0x10)
          {
            v13 = buf.__r_.__value_.__l.__size_ + 16;
            if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v15)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v14 = buf.__r_.__value_.__r.__words[0];
            if (v15 >= 0x3FFFFFFFFFFFFFF3)
            {
              v34 = 0;
              v33 = 0x7FFFFFFFFFFFFFF7;
LABEL_51:
              v35 = operator new(v33);
              v36 = v35;
              if (v12)
              {
                memmove(v35, v14, v12);
              }

              *(v36 + v12) = *"BBTrace.scratch/";
              if (!v34)
              {
                operator delete(v14);
              }

              buf.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v36;
              buf.__r_.__value_.__l.__size_ = v13;
              v37 = (v36 + v13);
LABEL_71:
              *v37 = 0;
              v267 = buf;
              v45 = abm::trace::kScratchFolder[0];
              memset(&__p, 170, sizeof(__p));
              v46 = strlen(abm::trace::kScratchFolder[0]);
              if (v46 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v47 = v46;
              if (v46 >= 0x17)
              {
                if ((v46 | 7) == 0x17)
                {
                  v53 = 25;
                }

                else
                {
                  v53 = (v46 | 7) + 1;
                }

                v48 = operator new(v53);
                buf.__r_.__value_.__r.__words[2] = v53 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v48;
                buf.__r_.__value_.__l.__size_ = v47;
              }

              else
              {
                *(&buf.__r_.__value_.__s + 23) = v46;
                v48 = &buf;
                if (!v46)
                {
                  buf.__r_.__value_.__s.__data_[0] = 0;
                  v49 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
                  {
LABEL_75:
                    if (v49 < 0x17)
                    {
                      v50 = v49 + 25;
                      v51 = &buf;
                      v52 = 22;
                      goto LABEL_85;
                    }

                    v60 = &buf;
                    qmemcpy(&buf + v49, "BBTrace.scratch.filtered/", 25);
                    v61 = v49 + 25;
                    *(&buf.__r_.__value_.__s + 23) = (v49 + 25) & 0x7F;
                    goto LABEL_101;
                  }

LABEL_82:
                  v49 = buf.__r_.__value_.__l.__size_;
                  v52 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v52 - buf.__r_.__value_.__l.__size_ < 0x19)
                  {
                    v50 = buf.__r_.__value_.__l.__size_ + 25;
                    if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v52)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v51 = buf.__r_.__value_.__r.__words[0];
                    if (v52 >= 0x3FFFFFFFFFFFFFF3)
                    {
                      v56 = 0;
LABEL_94:
                      v57 = operator new(v7);
                      v58 = v57;
                      if (v49)
                      {
                        memmove(v57, v51, v49);
                      }

                      qmemcpy((v58 + v49), "BBTrace.scratch.filtered/", 25);
                      if (!v56)
                      {
                        operator delete(v51);
                      }

                      buf.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
                      buf.__r_.__value_.__r.__words[0] = v58;
                      buf.__r_.__value_.__l.__size_ = v50;
                      v59 = (v58 + v50);
LABEL_102:
                      *v59 = 0;
                      __p = buf;
                      LOBYTE(v273[0]) = 0;
                      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      v62 = off_280C05A08;
                      if (!off_280C05A08)
                      {
                        SharedData::create_default_global(&buf);
                        v63 = *&buf.__r_.__value_.__l.__data_;
                        *&buf.__r_.__value_.__l.__data_ = 0uLL;
                        v64 = *(&off_280C05A08 + 1);
                        off_280C05A08 = v63;
                        if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v64->__on_zero_shared)(v64);
                          std::__shared_weak_count::__release_weak(v64);
                        }

                        v65 = buf.__r_.__value_.__l.__size_;
                        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v65->__on_zero_shared)(v65);
                          std::__shared_weak_count::__release_weak(v65);
                        }

                        v62 = off_280C05A08;
                      }

                      *&v263[0] = v62;
                      *(&v263[0] + 1) = *(&off_280C05A08 + 1);
                      if (*(&off_280C05A08 + 1))
                      {
                        atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      buf.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
                      *&v235[50] = 0;
                      *&v235[52] = 0;
                      *&v235[56] = 0x8000000000000038;
                      *&buf.__r_.__value_.__r.__words[1] = xmmword_23C32DBD0;
                      strcpy(buf.__r_.__value_.__l.__data_, "Firmware version changed since last commcenter launch");
                      strcpy(v235, "ast commcenter l changed since lFirmware version5");
                      os_unfair_lock_lock((v62 + 40));
                      Preferences::getPreference<BOOL>(v62, &buf, v273);
                      os_unfair_lock_unlock((v62 + 40));
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                        v66 = *(&v263[0] + 1);
                        if (!*(&v263[0] + 1))
                        {
                          goto LABEL_117;
                        }
                      }

                      else
                      {
                        v66 = *(&v263[0] + 1);
                        if (!*(&v263[0] + 1))
                        {
                          goto LABEL_117;
                        }
                      }

                      if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v66->__on_zero_shared)(v66);
                        std::__shared_weak_count::__release_weak(v66);
                        if (LOBYTE(v273[0]) == 1)
                        {
                          goto LABEL_118;
                        }

                        goto LABEL_148;
                      }

LABEL_117:
                      if (LOBYTE(v273[0]) == 1)
                      {
LABEL_118:
                        v67 = *(this + 5);
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          v68 = &v267;
                          if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v68 = v267.__r_.__value_.__r.__words[0];
                          }

                          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                          *(buf.__r_.__value_.__r.__words + 4) = v68;
                          _os_log_impl(&dword_23C1C4000, v67, OS_LOG_TYPE_DEFAULT, "#I Removing scratch folder %s because firmware version change detected", &buf, 0xCu);
                        }

                        if ((*(this + 29) & 0xFFFFFFFE) == 2)
                        {
                          v69 = *(this + 5);
                          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                          {
                            p_p = &__p;
                            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              p_p = __p.__r_.__value_.__r.__words[0];
                            }

                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                            *(buf.__r_.__value_.__r.__words + 4) = p_p;
                            _os_log_impl(&dword_23C1C4000, v69, OS_LOG_TYPE_DEFAULT, "#I Removing filtered scratch folder %s because firmware version change detected", &buf, 0xCu);
                          }
                        }

                        abm::trace::TraceReader::clearFiles(*(this + 20));
                        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                        v71 = off_280C05A08;
                        if (!off_280C05A08)
                        {
                          SharedData::create_default_global(&buf);
                          v72 = *&buf.__r_.__value_.__l.__data_;
                          *&buf.__r_.__value_.__l.__data_ = 0uLL;
                          v73 = *(&off_280C05A08 + 1);
                          off_280C05A08 = v72;
                          if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v73->__on_zero_shared)(v73);
                            std::__shared_weak_count::__release_weak(v73);
                          }

                          v74 = buf.__r_.__value_.__l.__size_;
                          if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v74->__on_zero_shared)(v74);
                            std::__shared_weak_count::__release_weak(v74);
                          }

                          v71 = off_280C05A08;
                        }

                        *&v263[0] = v71;
                        *(&v263[0] + 1) = *(&off_280C05A08 + 1);
                        if (*(&off_280C05A08 + 1))
                        {
                          atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
                        }

                        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                        v75 = operator new(0x38uLL);
                        buf.__r_.__value_.__r.__words[0] = v75;
                        *&buf.__r_.__value_.__r.__words[1] = *&v235[48];
                        *v75 = *&v235[32];
                        *(v75 + 1) = *&v235[16];
                        *(v75 + 2) = *v235;
                        strcpy(v75 + 45, "r launch");
                        os_unfair_lock_lock((v71 + 40));
                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v76 = &buf;
                        }

                        else
                        {
                          v76 = buf.__r_.__value_.__r.__words[0];
                        }

                        ctu::cf::MakeCFString::MakeCFString(key, v76);
                        v273[0] = *MEMORY[0x277CBED10];
                        v77 = v273[0];
                        if (v273[0])
                        {
                          v78 = *MEMORY[0x277CBF030];
                          CFPreferencesSetValue(key[0], v273[0], *(v71 + 8), *(v71 + 16), *MEMORY[0x277CBF030]);
                          CFPreferencesSynchronize(*(v71 + 8), *(v71 + 16), v78);
                          CFRelease(v77);
                        }

                        MEMORY[0x23EECD8F0](key);
                        os_unfair_lock_unlock((v71 + 40));
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                        }

                        v79 = *(&v263[0] + 1);
                        if (*(&v263[0] + 1))
                        {
                          if (!atomic_fetch_add((*(&v263[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v79->__on_zero_shared)(v79);
                            std::__shared_weak_count::__release_weak(v79);
                          }
                        }

                        goto LABEL_159;
                      }

LABEL_148:
                      if ((*(this + 356) & 1) == 0)
                      {
                        v80 = *(this + 5);
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                        {
                          v81 = &v267;
                          if ((v267.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v81 = v267.__r_.__value_.__r.__words[0];
                          }

                          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                          *(buf.__r_.__value_.__r.__words + 4) = v81;
                          _os_log_impl(&dword_23C1C4000, v80, OS_LOG_TYPE_DEFAULT, "#I Removing scratch folder %s because retain previous trace property is set to false", &buf, 0xCu);
                        }

                        if ((*(this + 29) & 0xFFFFFFFE) == 2)
                        {
                          v82 = *(this + 5);
                          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                          {
                            v83 = &__p;
                            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v83 = __p.__r_.__value_.__r.__words[0];
                            }

                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                            *(buf.__r_.__value_.__r.__words + 4) = v83;
                            _os_log_impl(&dword_23C1C4000, v82, OS_LOG_TYPE_DEFAULT, "#I Removing filtered scratch folder %s because retain previous trace property is set to false", &buf, 0xCu);
                          }
                        }

                        abm::trace::TraceReader::clearFiles(*(this + 20));
                      }

LABEL_159:
                      started = INTTrace::startReader_sync(this);
                      v85 = *(this + 5);
                      if (started)
                      {
                        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                          _os_log_impl(&dword_23C1C4000, v85, OS_LOG_TYPE_DEFAULT, "#I Succeeded opening trace transport", &buf, 2u);
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_162;
                          }

LABEL_167:
                          if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
                          {
LABEL_163:
                            operator delete(v267.__r_.__value_.__l.__data_);
                            if ((started & 1) == 0)
                            {
                              return 0;
                            }

                            goto LABEL_169;
                          }

                          goto LABEL_168;
                        }
                      }

                      else if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&dword_23C1C4000, v85, OS_LOG_TYPE_ERROR, "Failed to open trace transport", &buf, 2u);
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_167;
                        }

LABEL_162:
                        operator delete(__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_163;
                        }

LABEL_168:
                        if ((started & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_169;
                      }

                      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_167;
                      }

                      goto LABEL_162;
                    }

LABEL_85:
                    v54 = 2 * v52;
                    if (v50 > 2 * v52)
                    {
                      v54 = v50;
                    }

                    if ((v54 | 7) == 0x17)
                    {
                      v55 = 25;
                    }

                    else
                    {
                      v55 = (v54 | 7) + 1;
                    }

                    if (v54 >= 0x17)
                    {
                      v7 = v55;
                    }

                    else
                    {
                      v7 = 23;
                    }

                    v56 = v52 == 22;
                    goto LABEL_94;
                  }

                  v60 = buf.__r_.__value_.__r.__words[0];
                  qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
                  v61 = v49 + 25;
                  buf.__r_.__value_.__l.__size_ = v49 + 25;
LABEL_101:
                  v59 = v60 + v61;
                  goto LABEL_102;
                }
              }

              memmove(v48, v45, v47);
              v48->__r_.__value_.__s.__data_[v47] = 0;
              v49 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
              {
                goto LABEL_75;
              }

              goto LABEL_82;
            }

LABEL_42:
            v31 = 2 * v15;
            if (v13 > 2 * v15)
            {
              v31 = v13;
            }

            if ((v31 | 7) == 0x17)
            {
              v32 = 25;
            }

            else
            {
              v32 = (v31 | 7) + 1;
            }

            if (v31 >= 0x17)
            {
              v33 = v32;
            }

            else
            {
              v33 = 23;
            }

            v34 = v15 == 22;
            goto LABEL_51;
          }

          v38 = buf.__r_.__value_.__r.__words[0];
LABEL_67:
          *(&v38->__r_.__value_.__l.__data_ + v12) = *"BBTrace.scratch/";
          v44 = v12 + 16;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            buf.__r_.__value_.__l.__size_ = v12 + 16;
          }

          else
          {
            *(&buf.__r_.__value_.__s + 23) = v44 & 0x7F;
          }

          v37 = v38 + v44;
          goto LABEL_71;
        }
      }

      memmove(v11, v8, v10);
      v11->__r_.__value_.__s.__data_[v10] = 0;
      v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 > 8)
      {
        v22 = "Unknown";
      }

      else
      {
        v22 = off_278BB95C0[v6];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v22;
      v18 = "#I trace mode (%s)";
      v19 = v21;
      v20 = 12;
      goto LABEL_65;
    }

    goto LABEL_169;
  }

  v16 = INTTrace::startTraceWithUSBBridgeInterface(this);
  v17 = *(this + 5);
  if (v16)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v18 = "#I Succeeded in starting trace via usb bridge";
      v19 = v17;
      v20 = 2;
LABEL_65:
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, v18, &buf, v20);
    }

LABEL_169:
    result = 1;
    *(this + 204) = 1;
    return result;
  }

  result = os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to start trace via usb bridge", &buf, 2u);
    return 0;
  }

  return result;
}

void sub_23C28C128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t INTTrace::startReader_sync(INTTrace *this)
{
  if (*(this + 24))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "#I Trace Mode is not set to Active on AP. Skip starting trace reader";
LABEL_21:
      _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      return 1;
    }

    return 1;
  }

  if ((*(this + 104) & 1) == 0)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "#I Trace is not enabled. Skip starting trace reader";
      goto LABEL_21;
    }

    return 1;
  }

  if (*(this + 20))
  {
    v4 = *(this + 2);
    if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

    *&buf[4] = -1431655936;
    v21 = 0xAAAAAAAAAAAAAAAALL;
    *buf = 17;
    v22 = 0xAAAAAAAAAAAAAA00;
    *&buf[8] = 10;
    v8 = capabilities::radio::dal(v6);
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v8);
    capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
    *&v21 = *(this + 196);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN8INTTrace16startReader_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_28;
    aBlock[4] = this;
    aBlock[5] = v5;
    v19 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v10 = abm::trace::TraceReader::start();
    if (v17)
    {
      _Block_release(v17);
    }

    if (v10 && (*(this + 192) & 1) == 0 && (v11 = *(this + 11)) != 0 && (dispatch_group_enter(v11), *(this + 192) = 1, v12 = *(this + 5), os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG)))
    {
      *v16 = 0;
      _os_log_debug_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEBUG, "#D Holding task group", v16, 2u);
      v13 = v19;
      if (!v19)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v13 = v19;
      if (!v19)
      {
LABEL_18:
        std::__shared_weak_count::__release_weak(v7);
        return v10;
      }
    }

    std::__shared_weak_count::__release_weak(v13);
    goto LABEL_18;
  }

  v15 = *(this + 5);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to start Trace reader. Object does not exist", buf, 2u);
  }

  return 0;
}

void sub_23C28C6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
    std::__shared_weak_count::__release_weak(v18);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

BOOL INTTrace::startTraceWithUSBBridgeInterface(INTTrace *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  if (v2 != 2 && v2 != 7)
  {
    v11 = *(this + 5);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v21 = 136315138;
      *&v21[4] = trace::toString(v2);
      v13 = "Invalid trace mode (%s) to start trace via USB interface";
LABEL_26:
      v19 = v11;
      v20 = 12;
LABEL_34:
      _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, v13, v21, v20);
      return 0;
    }

    return result;
  }

  v4 = (this + 280);
  v5 = *(this + 35);
  if (!v5)
  {
    SoftwareBypassShim::create(v21);
    v6 = *v21;
    *v21 = 0uLL;
    v7 = *(this + 36);
    *v4 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = *&v21[8];
      if (!*&v21[8])
      {
LABEL_11:
        v5 = *v4;
        if (*v4)
        {
          goto LABEL_12;
        }

LABEL_30:
        v14 = *(this + 5);
        result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          return result;
        }

        *v21 = 0;
        v13 = "Failed to create bypass control object";
LABEL_33:
        v19 = v14;
        v20 = 2;
        goto LABEL_34;
      }
    }

    else
    {
      v8 = *&v21[8];
      if (!*&v21[8])
      {
        goto LABEL_11;
      }
    }

    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_11;
    }

    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_30;
    }
  }

LABEL_12:
  if (!*(v5 + 3))
  {
    v14 = *(this + 5);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *v21 = 0;
    v13 = "expected to use software bypass, but it is not supported";
    goto LABEL_33;
  }

  v9 = *(this + 24);
  if (v9 == 2)
  {
    v10 = 41;
    goto LABEL_21;
  }

  if (v9 == 7)
  {
    v10 = 32;
LABEL_21:
    v15 = SoftwareBypassShim::bypassCtl(v5, v10);
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = SoftwareBypassShim::bypassInterfaceMaskAsString(*v4, 41);
      *v21 = 136315394;
      *&v21[4] = v17;
      *&v21[12] = 1024;
      *&v21[14] = v15;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I bypassCtl( %s): success: %d", v21, 0x12u);
    }

    return v15;
  }

  v11 = *(this + 5);
  result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v18 = trace::toString(v9);
    *v21 = 136315138;
    *&v21[4] = v18;
    v13 = "Unexpected trace mode: %s";
    goto LABEL_26;
  }

  return result;
}

void ___ZN8INTTrace16startReader_syncEv_block_invoke(void *a1, _DWORD *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v49 = v6;
    if (v6)
    {
      if (a1[5])
      {
        if (*a2 == 3)
        {
          v13 = v6;
          v14 = *(v5 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#E No Logging Traffic detected (Stalled?)", &buf, 2u);
          }

          v6 = v13;
        }

        else if (*a2 == 2)
        {
          v7 = *(v5 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#E TRACE transport error", &buf, 2u);
          }

          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v46 = v8;
          v47 = v8;
          v44 = v8;
          v45 = v8;
          v42 = v8;
          v43 = v8;
          buf = v8;
          v9 = *MEMORY[0x277CECC38];
          v10 = strlen(*MEMORY[0x277CECC38]);
          if (v10 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v11 = v10;
          if (v10 >= 0x17)
          {
            if ((v10 | 7) == 0x17)
            {
              v15 = 25;
            }

            else
            {
              v15 = (v10 | 7) + 1;
            }

            p_dst = operator new(v15);
            *(&__dst + 1) = v11;
            v40 = v15 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v40) = v10;
            p_dst = &__dst;
            if (!v10)
            {
LABEL_20:
              *(p_dst + v11) = 0;
              v16 = *MEMORY[0x277CECD60];
              v17 = strlen(*MEMORY[0x277CECD60]);
              if (v17 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v18 = v17;
              if (v17 >= 0x17)
              {
                if ((v17 | 7) == 0x17)
                {
                  v20 = 25;
                }

                else
                {
                  v20 = (v17 | 7) + 1;
                }

                v19 = operator new(v20);
                *(&v37 + 1) = v18;
                v38 = v20 | 0x8000000000000000;
                *&v37 = v19;
              }

              else
              {
                HIBYTE(v38) = v17;
                v19 = &v37;
                if (!v17)
                {
LABEL_29:
                  v19[v18] = 0;
                  v36[23] = 21;
                  strcpy(v36, "TRACE transport error");
                  Timestamp::Timestamp(v32);
                  Timestamp::asString(v32, 0, 9, __p);
                  v31 = 0;
                  LOBYTE(v30) = 0;
                  ResetInfo::ResetInfo(&buf, &__dst, &v37, v36, __p, 7, &v30);
                  if (v35 < 0)
                  {
                    operator delete(__p[0]);
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32, v33);
                    if ((SHIBYTE(v38) & 0x80000000) == 0)
                    {
LABEL_31:
                      if ((SHIBYTE(v40) & 0x80000000) == 0)
                      {
                        goto LABEL_32;
                      }

                      goto LABEL_36;
                    }
                  }

                  else
                  {
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32, v33);
                    if ((SHIBYTE(v38) & 0x80000000) == 0)
                    {
                      goto LABEL_31;
                    }
                  }

                  operator delete(v37);
                  if ((SHIBYTE(v40) & 0x80000000) == 0)
                  {
LABEL_32:
                    if (*(v5 + 352) != 2)
                    {
LABEL_43:
                      if ((SHIBYTE(v47) & 0x80000000) == 0)
                      {
                        goto LABEL_44;
                      }

                      goto LABEL_53;
                    }

LABEL_37:
                    v21 = *(v5 + 40);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(__dst) = 0;
                      _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Triggering modem reset for Trace transport error", &__dst, 2u);
                    }

                    ResetInfo::ResetInfo(&v23, &buf);
                    INTTrace::commandResetModem_sync(v5, &v23);
                    if (v29 < 0)
                    {
                      operator delete(v28);
                      if ((v27 & 0x80000000) == 0)
                      {
LABEL_41:
                        if ((v25 & 0x80000000) == 0)
                        {
                          goto LABEL_42;
                        }

                        goto LABEL_51;
                      }
                    }

                    else if ((v27 & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

                    operator delete(v26);
                    if ((v25 & 0x80000000) == 0)
                    {
LABEL_42:
                      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_52;
                    }

LABEL_51:
                    operator delete(v24);
                    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_43;
                    }

LABEL_52:
                    operator delete(v23.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v47) & 0x80000000) == 0)
                    {
LABEL_44:
                      if ((SBYTE7(v45) & 0x80000000) == 0)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_54;
                    }

LABEL_53:
                    operator delete(*(&v46 + 1));
                    if ((SBYTE7(v45) & 0x80000000) == 0)
                    {
LABEL_45:
                      if ((SHIBYTE(v43) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_55;
                    }

LABEL_54:
                    operator delete(v44);
                    if ((SHIBYTE(v43) & 0x80000000) == 0)
                    {
LABEL_46:
                      if ((SBYTE7(v42) & 0x80000000) == 0)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_56;
                    }

LABEL_55:
                    operator delete(*(&v42 + 1));
                    if ((SBYTE7(v42) & 0x80000000) == 0)
                    {
LABEL_47:
                      v6 = v49;
                      if (!v49)
                      {
                        return;
                      }

                      goto LABEL_57;
                    }

LABEL_56:
                    operator delete(buf);
                    v6 = v49;
                    if (!v49)
                    {
                      return;
                    }

                    goto LABEL_57;
                  }

LABEL_36:
                  operator delete(__dst);
                  if (*(v5 + 352) != 2)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_37;
                }
              }

              memmove(v19, v16, v18);
              goto LABEL_29;
            }
          }

          memmove(p_dst, v9, v11);
          goto LABEL_20;
        }
      }

LABEL_57:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v22 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }
}

void sub_23C28CE40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v3 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 80);
  _Unwind_Resume(a1);
}

void sub_23C28CE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  if (a44 < 0)
  {
    operator delete(a39);
    if ((*(v44 - 201) & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 80);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v44 - 201) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v44 - 224));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 80);
  _Unwind_Resume(a1);
}

void INTTrace::commandResetModem_sync(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v4);
  }

  v5 = *(a1 + 80);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v32 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = *(a1 + 72);
  v31 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  if (*(a1 + 248) && (v30 = 0, LOBYTE(v29) = 0, Timestamp::Timestamp(v27), v26 = 0, *v25 = 0, LOBYTE(v24) = 0, abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v27, v28), v30 < 0))
  {
    operator delete(v29);
    if (!*(a1 + 264))
    {
      goto LABEL_12;
    }
  }

  else if (!*(a1 + 264))
  {
    goto LABEL_12;
  }

  v23 = 0;
  LOBYTE(v22) = 0;
  Timestamp::Timestamp(v20);
  v19 = 0;
  LOBYTE(v18) = 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v20, v21);
  if (v23 < 0)
  {
    operator delete(v22);
  }

LABEL_12:
  ResetInfo::ResetInfo(&v9, a2);
  abm::BasebandTracingTask::commandResetModem(v8, &v9);
  if (v15 < 0)
  {
    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      operator delete(v10);
      if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v12);
  if (v11 < 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v9.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_18:
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void sub_23C28D1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a34 & 0x80000000) == 0)
    {
LABEL_3:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a35, a36);
      if ((a43 & 0x80000000) == 0)
      {
LABEL_8:
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 80);
        if (v43)
        {
          dispatch_group_leave(v43);
          dispatch_release(v43);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a38);
      goto LABEL_8;
    }
  }

  else if ((a34 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a29);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a35, a36);
  if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void INTTrace::stopReader_sync(INTTrace *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = abm::trace::TraceReader::stop(v2);
  v4 = *(this + 5);
  if (v3)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Succeeded stopping reader.", v5, 2u);
      if (*(this + 192) != 1)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (*(this + 192) != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 0;
  _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Failed to stop reader", buf, 2u);
  if (*(this + 192) != 1)
  {
    return;
  }

LABEL_8:
  dispatch_group_leave(*(this + 11));
  *(this + 192) = 0;
}

void INTTrace::start_sync(INTTrace *this, group *a2)
{
  v120 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 24);
    if (v5 > 8)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_278BB9648[v5];
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Starting BB Trace with mode: %s", buf, 0xCu);
  }

  if ((*(this + 204) & 1) == 0 && !INTTrace::prepare_sync(this) && !*(this + 24))
  {
    *&v39 = 0xAAAAAAAAAAAAAAAALL;
    *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v118 = v39;
    v119 = v39;
    v116 = v39;
    v117 = v39;
    *&buf[16] = v39;
    v115 = v39;
    *buf = v39;
    v40 = *MEMORY[0x277CECC38];
    v41 = strlen(*MEMORY[0x277CECC38]);
    if (v41 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_163;
    }

    v42 = v41;
    if (v41 >= 0x17)
    {
      if ((v41 | 7) == 0x17)
      {
        v44 = 25;
      }

      else
      {
        v44 = (v41 | 7) + 1;
      }

      p_dst = operator new(v44);
      *(&__dst + 1) = v42;
      v113 = v44 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v113) = v41;
      p_dst = &__dst;
      if (!v41)
      {
LABEL_126:
        *(p_dst + v42) = 0;
        v45 = *MEMORY[0x277CECD60];
        v46 = strlen(*MEMORY[0x277CECD60]);
        if (v46 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v47 = v46;
        if (v46 >= 0x17)
        {
          if ((v46 | 7) == 0x17)
          {
            v49 = 25;
          }

          else
          {
            v49 = (v46 | 7) + 1;
          }

          v48 = operator new(v49);
          v111 = v49 | 0x8000000000000000;
          *&v110 = v48;
          *(&v110 + 1) = v47;
        }

        else
        {
          HIBYTE(v111) = v46;
          v48 = &v110;
          if (!v46)
          {
LABEL_135:
            v48[v47] = 0;
            v50 = operator new(0x20uLL);
            v108 = v50;
            v109 = xmmword_23C32CA80;
            strcpy(v50, "Failed to open trace transport");
            Timestamp::Timestamp(v104);
            Timestamp::asString(v104, 0, 9, v106);
            v103 = 0;
            LOBYTE(v102) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v110, &v108, v106, 7, &v102);
            if (v107 < 0)
            {
              operator delete(v106[0]);
            }

            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v104, v105);
            operator delete(v50);
            if (SHIBYTE(v111) < 0)
            {
              operator delete(v110);
            }

            if (SHIBYTE(v113) < 0)
            {
              operator delete(__dst);
            }

            ResetInfo::ResetInfo(&v95, buf);
            INTTrace::commandResetModem_sync(this, &v95);
            if (v101 < 0)
            {
              operator delete(v100);
              if ((v99 & 0x80000000) == 0)
              {
LABEL_143:
                if ((v97 & 0x80000000) == 0)
                {
                  goto LABEL_144;
                }

                goto LABEL_152;
              }
            }

            else if ((v99 & 0x80000000) == 0)
            {
              goto LABEL_143;
            }

            operator delete(v98);
            if ((v97 & 0x80000000) == 0)
            {
LABEL_144:
              if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_145;
              }

              goto LABEL_153;
            }

LABEL_152:
            operator delete(v96);
            if ((SHIBYTE(v95.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_145:
              if ((SHIBYTE(v119) & 0x80000000) == 0)
              {
                goto LABEL_146;
              }

              goto LABEL_154;
            }

LABEL_153:
            operator delete(v95.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v119) & 0x80000000) == 0)
            {
LABEL_146:
              if ((SBYTE7(v117) & 0x80000000) == 0)
              {
                goto LABEL_147;
              }

              goto LABEL_155;
            }

LABEL_154:
            operator delete(*(&v118 + 1));
            if ((SBYTE7(v117) & 0x80000000) == 0)
            {
LABEL_147:
              if ((SHIBYTE(v115) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              goto LABEL_156;
            }

LABEL_155:
            operator delete(v116);
            if ((SHIBYTE(v115) & 0x80000000) == 0)
            {
LABEL_148:
              if ((buf[23] & 0x80000000) == 0)
              {
                return;
              }

              goto LABEL_157;
            }

LABEL_156:
            operator delete(*&buf[24]);
            if ((buf[23] & 0x80000000) == 0)
            {
              return;
            }

LABEL_157:
            operator delete(*buf);
            return;
          }
        }

        memmove(v48, v45, v47);
        goto LABEL_135;
      }
    }

    memmove(p_dst, v40, v42);
    goto LABEL_126;
  }

  if (*(this + 31) && (v94 = 0, LOBYTE(v93) = 0, Timestamp::Timestamp(v91), v90 = 0, LOBYTE(v89) = 0, v88 = 0, LOBYTE(__p) = 0, abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v91, v92), v94 < 0))
  {
    operator delete(v93);
    if (!*(this + 33))
    {
      goto LABEL_15;
    }
  }

  else if (!*(this + 33))
  {
    goto LABEL_15;
  }

  v86 = 0;
  LOBYTE(v85) = 0;
  Timestamp::Timestamp(v83);
  v82 = 0;
  LOBYTE(v81) = 0;
  v80 = 0;
  LOBYTE(v79) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v83, v84);
  if (v86 < 0)
  {
    operator delete(v85);
  }

LABEL_15:
  v7 = *(this + 22);
  if (!v7)
  {
    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Creating Trace Command Driver", buf, 2u);
    }

    v10 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v11 = off_280C059B8;
    if (!off_280C059B8)
    {
      CommandDriverFactory::create_default_global(buf, v10);
      v12 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v13 = *(&off_280C059B8 + 1);
      off_280C059B8 = v12;
      if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      v11 = off_280C059B8;
    }

    *&v110 = v11;
    *(&v110 + 1) = *(&off_280C059B8 + 1);
    if (*(&off_280C059B8 + 1))
    {
      atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v11 + 128))(&__dst, v11);
    v15 = __dst;
    __dst = 0uLL;
    v16 = *(this + 23);
    *(this + 11) = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(&v110 + 1);
    if (*(&v110 + 1) && !atomic_fetch_add((*(&v110 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    if (*(this + 22))
    {
      v19 = *(this + 2);
      if (!v19 || (v20 = *(this + 1), (v21 = std::__shared_weak_count::lock(v19)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v22 = v21;
      p_shared_weak_owners = &v21->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v22);
      }

      memset(buf, 170, 16);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_18_0;
      aBlock[4] = this;
      aBlock[5] = v20;
      v78 = v22;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v24 = _Block_copy(aBlock);
      v25 = *(this + 3);
      if (v25)
      {
        dispatch_retain(*(this + 3));
      }

      *buf = v24;
      *&buf[8] = v25;
      *&__dst = 0xAAAAAAAAAAAAAAAALL;
      *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 1174405120;
      v75[2] = ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke_19;
      v75[3] = &__block_descriptor_tmp_24_0;
      v75[4] = this;
      v75[5] = v20;
      v76 = v22;
      atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v26 = _Block_copy(v75);
      v27 = *(this + 3);
      if (v27)
      {
        dispatch_retain(*(this + 3));
      }

      *&__dst = v26;
      *(&__dst + 1) = v27;
      v28 = *(this + 22);
      if (v24)
      {
        v73 = _Block_copy(v24);
        object = v25;
        if (!v25)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v73 = 0;
        object = v25;
        if (!v25)
        {
LABEL_52:
          (*(*v28 + 80))(v28, &v73);
          if (object)
          {
            dispatch_release(object);
          }

          if (v73)
          {
            _Block_release(v73);
          }

          v29 = *(this + 22);
          if (v26)
          {
            v71 = _Block_copy(v26);
            v72 = v27;
            if (!v27)
            {
LABEL_59:
              (*(*v29 + 88))(v29, &v71);
              if (v72)
              {
                dispatch_release(v72);
              }

              if (v71)
              {
                _Block_release(v71);
              }

              (*(**(this + 22) + 96))(*(this + 22));
              if (v27)
              {
                dispatch_release(v27);
              }

              if (v26)
              {
                _Block_release(v26);
              }

              if (v76)
              {
                std::__shared_weak_count::__release_weak(v76);
              }

              if (v25)
              {
                dispatch_release(v25);
              }

              if (v24)
              {
                _Block_release(v24);
              }

              if (v78)
              {
                std::__shared_weak_count::__release_weak(v78);
              }

              std::__shared_weak_count::__release_weak(v22);
              goto LABEL_76;
            }
          }

          else
          {
            v71 = 0;
            v72 = v27;
            if (!v27)
            {
              goto LABEL_59;
            }
          }

          dispatch_retain(v27);
          goto LABEL_59;
        }
      }

      dispatch_retain(v25);
      goto LABEL_52;
    }

    v51 = GetOsLogContext()[1];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_23C1C4000, v51, OS_LOG_TYPE_FAULT, "Trace command driver must be present!", buf, 2u);
    }

    v52 = GetOsLogContext()[1];
    if (!os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
    {
      __break(1u);
      return;
    }

    *buf = 136315906;
    *&buf[4] = "ABM ASSERT";
    *&buf[12] = 2080;
    *&buf[14] = "fTraceCommandDriver";
    *&buf[22] = 2080;
    *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/INTTrace/INTTrace.cpp";
    LOWORD(v115) = 1024;
    *(&v115 + 2) = 920;
    _os_log_fault_impl(&dword_23C1C4000, v52, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    __break(1u);
LABEL_163:
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (((*(*v7 + 128))(v7) & 1) == 0)
  {
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Trace Command Driver has not been started!", buf, 2u);
    }

    return;
  }

LABEL_76:
  if ((*(this + 151) & 0x8000000000000000) != 0)
  {
    if (*(this + 17))
    {
      goto LABEL_78;
    }

LABEL_86:
    v34 = *(this + 5);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_DEFAULT, "#I No config is given. Skip to send the configuration", buf, 2u);
    }

LABEL_94:
    if (*(this + 31) && (v68 = 0, LOBYTE(v67) = 0, Timestamp::Timestamp(v65), v64 = 0, LOBYTE(v63) = 0, v62 = 0, LOBYTE(v61) = 0, abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v65, v66), v68 < 0))
    {
      operator delete(v67);
      if (*(this + 33))
      {
LABEL_97:
        v60 = 0;
        LOBYTE(v59) = 0;
        Timestamp::Timestamp(v57);
        v56 = 0;
        LOBYTE(v55) = 0;
        v54 = 0;
        LOBYTE(v53.gr_gid) = 0;
        abm::trace::TraceInfo::push();
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v57, v58);
        if (v60 < 0)
        {
          operator delete(v59);
        }
      }
    }

    else if (*(this + 33))
    {
      goto LABEL_97;
    }

    gr_name = a2->gr_name;
    v53.gr_passwd = gr_name;
    if (gr_name)
    {
      dispatch_retain(gr_name);
    }

    INTTrace::setAnomalyDetectionLevelViaDriver_sync(this, &v53.gr_passwd, *(this + 91));
    if (gr_name)
    {
      dispatch_release(gr_name);
    }

    v38 = a2->gr_name;
    v53.gr_name = v38;
    if (v38)
    {
      dispatch_retain(v38);
    }

    INTTrace::setAnomalyDetectionTimeoutViaDriver_sync(this, &v53, *(this + 92));
    if (v38)
    {
      dispatch_release(v38);
    }

    return;
  }

  if (!*(this + 151))
  {
    goto LABEL_86;
  }

LABEL_78:
  v30 = *(this + 22);
  if (v30 && ((*(*v30 + 128))(v30) & 1) == 0)
  {
    (*(**(this + 22) + 112))(*(this + 22));
  }

  v31 = *(this + 24);
  v32 = a2->gr_name;
  v70 = v32;
  if (v32)
  {
    dispatch_retain(v32);
  }

  v33 = (this + 128);
  if (*(this + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v69, *(this + 16), *(this + 17));
  }

  else
  {
    *&v69.__r_.__value_.__l.__data_ = *v33;
    v69.__r_.__value_.__r.__words[2] = *(this + 18);
  }

  v35 = INTTrace::sendConfig_sync(this, &v70, &v69, v31 == 8, 0, 0);
  if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v69.__r_.__value_.__l.__data_);
  }

  if (v32)
  {
    dispatch_release(v32);
  }

  if (v35)
  {
    goto LABEL_94;
  }

  v36 = *(this + 5);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    if (*(this + 151) < 0)
    {
      v33 = *v33;
    }

    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_error_impl(&dword_23C1C4000, v36, OS_LOG_TYPE_ERROR, "Failed to send config: %s", buf, 0xCu);
  }
}

void sub_23C28E1E4(_Unwind_Exception *a1)
{
  ResetInfo::~ResetInfo(&STACK[0x248]);
  ResetInfo::~ResetInfo((v1 - 224));
  _Unwind_Resume(a1);
}

void sub_23C28E214(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&STACK[0x2D0], STACK[0x2D8]);
  operator delete(v1);
  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (*(v2 - 233) < 0)
  {
    operator delete(*(v2 - 256));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke(void *a1, NSObject **a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      return;
    }
  }

  v9 = *(v5 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I ARI Low Power enter event received", buf, 2u);
  }

  *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
  v45 = 0xAAAAAAAAAAAAAALL;
  *buf = 0xAAAAAAAAAAAAAA00;
  if (*(v5 + 248) && (v43 = 0, LOBYTE(v42) = 0, Timestamp::Timestamp(v40), v39 = 0, LOBYTE(v38) = 0, v37 = 0, LOBYTE(__p) = 0, abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v40, v41), v43 < 0))
  {
    operator delete(v42);
    if (!*(v5 + 264))
    {
      goto LABEL_15;
    }
  }

  else if (!*(v5 + 264))
  {
    goto LABEL_15;
  }

  v35 = 0;
  LOBYTE(v34) = 0;
  Timestamp::Timestamp(v32);
  v31 = 0;
  LOBYTE(v30) = 0;
  v29 = 0;
  LOBYTE(v28) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32, v33);
  if (v35 < 0)
  {
    operator delete(v34);
  }

LABEL_15:
  *(v5 + 240) = 1;
  v10 = *(v5 + 208);
  if (v10)
  {
    v11 = *(v5 + 239);
    if (v11 < 0)
    {
      if (*(v5 + 224))
      {
        goto LABEL_18;
      }
    }

    else if (*(v5 + 239))
    {
LABEL_18:
      v12 = (v5 + 216);
      v13 = *a2;
      v27 = v13;
      if (v13)
      {
        dispatch_retain(v13);
        LOBYTE(v11) = *(v5 + 239);
      }

      if ((v11 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v26, *(v5 + 216), *(v5 + 224));
      }

      else
      {
        *&v26.__r_.__value_.__l.__data_ = *v12;
        v26.__r_.__value_.__r.__words[2] = *(v5 + 232);
      }

      *(v5 + 240) = INTTrace::sendConfig_sync(v5, &v27, &v26, v10 == 2, 1u, 0);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        dispatch_release(v13);
      }

      if (buf != v12)
      {
        v19 = *(v5 + 239);
        if (SHIBYTE(v45) < 0)
        {
          if (v19 >= 0)
          {
            v20 = (v5 + 216);
          }

          else
          {
            v20 = *(v5 + 216);
          }

          if (v19 >= 0)
          {
            v21 = *(v5 + 239);
          }

          else
          {
            v21 = *(v5 + 224);
          }

          std::string::__assign_no_alias<false>(buf, v20, v21);
        }

        else if ((*(v5 + 239) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(buf, *(v5 + 216), *(v5 + 224));
        }

        else
        {
          *buf = *v12;
          v45 = *(v5 + 232);
        }
      }

      goto LABEL_33;
    }
  }

  v14 = *a2;
  v25 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v24 = 4;
  strcpy(v23, "Stop");
  *(v5 + 240) = INTTrace::sendConfig_sync(v5, &v25, v23, 0, 1u, 0);
  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (SHIBYTE(v45) < 0)
  {
    *&buf[8] = 4;
    v15 = *buf;
  }

  else
  {
    HIBYTE(v45) = 4;
    v15 = buf;
  }

  strcpy(v15, "Stop");
  INTTrace::stopReader_sync(v5);
LABEL_33:
  v16 = *(v5 + 240);
  v17 = *(v5 + 40);
  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v22 = buf;
      if (v45 < 0)
      {
        v22 = *buf;
      }

      *v46 = 136315138;
      v47 = v22;
      _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Last sleep entry failed with config: %s", v46, 0xCu);
      if (SHIBYTE(v45) < 0)
      {
        goto LABEL_41;
      }

      return;
    }

LABEL_40:
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_40;
  }

  v18 = buf;
  if (v45 < 0)
  {
    v18 = *buf;
  }

  *v46 = 136315138;
  v47 = v18;
  _os_log_debug_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEBUG, "#D Last sleep entry succeeded with config: %s", v46, 0xCu);
  if (SHIBYTE(v45) < 0)
  {
LABEL_41:
    operator delete(*buf);
  }
}

void sub_23C28E9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (v55)
  {
    dispatch_release(v55);
  }

  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::sendConfig_sync(uint64_t a1, dispatch_object_t *a2, const std::string::value_type *a3, unsigned int a4, unsigned int a5, int a6)
{
  v83 = *MEMORY[0x277D85DE8];
  v51 = *(a1 + 108);
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  buf[23] = 19;
  v73 = 0;
  strcpy(buf, "kKeyTraceConfigPath");
  defaults::bbtrace::get(buf, &v71);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    v9 = a3;
    if ((a3[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = a3;
    if ((a3[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = *a3;
LABEL_3:
  KTLGetTraceConfigFilename(buf, v9);
  v10 = SHIBYTE(v73);
  v70 = *&buf[16];
  v69 = *buf;
  if (v73 >= 0)
  {
    v11 = HIBYTE(v73);
  }

  else
  {
    v11 = v72;
  }

  memset(v68, 170, sizeof(v68));
  v12 = buf[23];
  if (buf[23] >= 0)
  {
    v13 = HIBYTE(*&buf[16]);
  }

  else
  {
    v13 = *(&v69 + 1);
  }

  v14 = v13 + v11;
  if (v13 + v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v50 = a2;
  if (v14 <= 0x16)
  {
    memset(v68, 0, sizeof(v68));
    v16 = v68;
    HIBYTE(v68[2]) = v13 + v11;
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((v14 | 7) == 0x17)
  {
    v15 = 25;
  }

  else
  {
    v15 = (v14 | 7) + 1;
  }

  v16 = operator new(v15);
  v68[1] = (v13 + v11);
  v68[2] = (v15 | 0x8000000000000000);
  v68[0] = v16;
  if (v11)
  {
LABEL_17:
    if (v10 >= 0)
    {
      v17 = &v71;
    }

    else
    {
      v17 = v71;
    }

    memmove(v16, v17, v11);
  }

LABEL_21:
  if (v13)
  {
    if (v12 >= 0)
    {
      v18 = &v69;
    }

    else
    {
      v18 = v69;
    }

    memmove(&v16[v11], v18, v13);
  }

  v16[v11 + v13] = 0;
  if (ctu::fs::load_file())
  {
    v20 = v74;
    v19 = v75;
    while (v19 != v20)
    {
      v21 = *(v19 - 1);
      if (v21 != 13 && v21 != 10)
      {
        break;
      }

      v75 = --v19;
      v23 = *(a1 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#I Trailing EOL character removed", buf, 2u);
        v20 = v74;
        v19 = v75;
      }
    }

    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_50:
      v31 = *v50;
      if (*v50)
      {
        dispatch_retain(*v50);
        dispatch_group_enter(v31);
      }

      v32 = *(a1 + 16);
      if (!v32 || (v33 = *(a1 + 8), (v34 = std::__shared_weak_count::lock(v32)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v35 = v34;
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v36 = *(a1 + 176);
        if (v36)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v35);
        v36 = *(a1 + 176);
        if (v36)
        {
LABEL_56:
          if (a6)
          {
            v37 = dispatch_group_create();
            dispatch_group_enter(v37);
            v36 = *(a1 + 176);
            __p = 0;
            v64 = 0;
            v65 = 0;
            v38 = v74;
            v39 = v75 - v74;
            if (v75 == v74)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v37 = 0;
            __p = 0;
            v64 = 0;
            v65 = 0;
            v38 = v74;
            v39 = v75 - v74;
            if (v75 == v74)
            {
              goto LABEL_67;
            }
          }

          if ((v39 & 0x8000000000000000) != 0)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          __p = operator new(v39);
          v65 = __p + v39;
          memcpy(__p, v38, v39);
          v64 = __p + v39;
LABEL_67:
          v62 = v37;
          if (v37)
          {
            dispatch_retain(v37);
          }

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN8INTTrace15sendConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbbb_block_invoke;
          aBlock[3] = &__block_descriptor_tmp_27_1;
          aBlock[4] = a1;
          group = v31;
          if (v31)
          {
            dispatch_retain(v31);
            dispatch_group_enter(group);
          }

          v57 = v33;
          v58 = v35;
          atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (a3[23] < 0)
          {
            std::string::__init_copy_ctor_external(&v59, *a3, *(a3 + 1));
          }

          else
          {
            v59 = *a3;
          }

          v42 = _Block_copy(aBlock);
          v43 = *(a1 + 24);
          if (v43)
          {
            dispatch_retain(*(a1 + 24));
          }

          v60 = v42;
          object = v43;
          v25 = (*(*v36 + 136))(v36, &__p, &v62, a4, a5, v51, &v60);
          if (object)
          {
            dispatch_release(object);
          }

          if (v60)
          {
            _Block_release(v60);
          }

          if (v62)
          {
            dispatch_release(v62);
          }

          if (__p)
          {
            v64 = __p;
            operator delete(__p);
          }

          if (!a6 || (v44 = dispatch_time(0, 5000000000), !dispatch_group_wait(v37, v44)))
          {
            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            if (v58)
            {
              std::__shared_weak_count::__release_weak(v58);
            }

            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            if (v37)
            {
              dispatch_release(v37);
            }

            goto LABEL_110;
          }

          v45 = *(a1 + 40);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            if (a3[23] < 0)
            {
              a3 = *a3;
            }

            *buf = 136315138;
            *&buf[4] = a3;
            _os_log_error_impl(&dword_23C1C4000, v45, OS_LOG_TYPE_ERROR, "Timeout waiting for confirmation while sending %s config", buf, 0xCu);
            if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_93:
              v46 = v58;
              if (!v58)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }
          }

          else if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

          operator delete(v59.__r_.__value_.__l.__data_);
          v46 = v58;
          if (!v58)
          {
LABEL_95:
            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            if (v37)
            {
              dispatch_release(v37);
            }

LABEL_100:
            v25 = 0;
LABEL_110:
            std::__shared_weak_count::__release_weak(v35);
            if (v31)
            {
              dispatch_group_leave(v31);
              dispatch_release(v31);
            }

            goto LABEL_112;
          }

LABEL_94:
          std::__shared_weak_count::__release_weak(v46);
          goto LABEL_95;
        }
      }

      v40 = *(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v40, OS_LOG_TYPE_ERROR, "Trace command driver is not ready!", buf, 2u);
      }

      goto LABEL_100;
    }

    v27 = v19 - v20;
    if ((v19 - v20) > 0x7FFFFFFFFFFFFFF7)
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
      __dst[1] = (v19 - v20);
      v67 = v41 | 0x8000000000000000;
      __dst[0] = v28;
      if (v19 == v20)
      {
        goto LABEL_44;
      }
    }

    else
    {
      HIBYTE(v67) = v19 - v20;
      v28 = __dst;
      if (v19 == v20)
      {
LABEL_44:
        *(v28 + v27) = 0;
        v29 = __dst;
        if (v67 < 0)
        {
          v29 = __dst[0];
        }

        v30 = v68;
        if (SHIBYTE(v68[2]) < 0)
        {
          v30 = v68[0];
        }

        *buf = 136316162;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = v30;
        *&buf[22] = 1024;
        v78 = a4;
        v79 = 1024;
        v80 = a5;
        v81 = 1024;
        v82 = v51;
        _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Sending trace config to BB: %s (%s), background tracing: %d, wait for idle indication: %d, privacy level: %d", buf, 0x28u);
        if (SHIBYTE(v67) < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_50;
      }
    }

    memmove(v28, v20, v19 - v20);
    goto LABEL_44;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v49 = v68;
    if (SHIBYTE(v68[2]) < 0)
    {
      v49 = v68[0];
    }

    *buf = 136315138;
    *&buf[4] = v49;
    _os_log_error_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_ERROR, "Failed to load from %s", buf, 0xCu);
  }

  v25 = 0;
LABEL_112:
  if (SHIBYTE(v68[2]) < 0)
  {
    operator delete(v68[0]);
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
LABEL_114:
      if ((SHIBYTE(v73) & 0x80000000) == 0)
      {
        goto LABEL_115;
      }

LABEL_120:
      operator delete(v71);
      v47 = v74;
      if (!v74)
      {
        return v25;
      }

      goto LABEL_116;
    }
  }

  else if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
    goto LABEL_114;
  }

  operator delete(v69);
  if (SHIBYTE(v73) < 0)
  {
    goto LABEL_120;
  }

LABEL_115:
  v47 = v74;
  if (v74)
  {
LABEL_116:
    v75 = v47;
    operator delete(v47);
  }

  return v25;
}

void sub_23C28F34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, dispatch_object_t object, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    v51 = group;
    if (!group)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v51 = group;
    if (!group)
    {
LABEL_6:
      if (object)
      {
        dispatch_release(object);
        v52 = __p;
        if (!__p)
        {
LABEL_8:
          if (!v48)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v52 = __p;
        if (!__p)
        {
          goto LABEL_8;
        }
      }

      operator delete(v52);
      if (!v48)
      {
LABEL_9:
        std::__shared_weak_count::__release_weak(v47);
        if (!v46)
        {
LABEL_15:
          if (a40 < 0)
          {
            operator delete(a35);
          }

          if (a46 < 0)
          {
            operator delete(a41);
          }

          if (*(v49 - 169) < 0)
          {
            operator delete(*(v49 - 192));
          }

          v53 = *(v49 - 168);
          if (v53)
          {
            *(v49 - 160) = v53;
            operator delete(v53);
          }

          _Unwind_Resume(a1);
        }

LABEL_14:
        dispatch_group_leave(v46);
        dispatch_release(v46);
        goto LABEL_15;
      }

LABEL_13:
      dispatch_release(v48);
      std::__shared_weak_count::__release_weak(v47);
      if (!v46)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  dispatch_group_leave(v51);
  dispatch_release(group);
  goto LABEL_6;
}

void ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke_19(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (!v2)
  {
    return;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return;
  }

  v5 = a1[5];
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (!v5)
    {
      return;
    }
  }

  if (*(v3 + 248) && (v67 = 0, LOBYTE(v66) = 0, Timestamp::Timestamp(v64), v63 = 0, LOBYTE(v62) = 0, v61 = 0, LOBYTE(__p) = 0, abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v64, v65), v67 < 0))
  {
    operator delete(v66);
    if (*(v3 + 264))
    {
LABEL_10:
      v59 = 0;
      LOBYTE(v58) = 0;
      Timestamp::Timestamp(v56);
      v55 = 0;
      LOBYTE(v54) = 0;
      v53 = 0;
      LOBYTE(v52) = 0;
      abm::trace::TraceInfo::push();
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v56, v57);
      if (v59 < 0)
      {
        operator delete(v58);
      }
    }
  }

  else if (*(v3 + 264))
  {
    goto LABEL_10;
  }

  if ((INTTrace::startReader_sync(v3) & 1) == 0)
  {
    v13 = *(v3 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v22 = "Failed to start trace reader during sleep exit";
    v23 = v13;
    v24 = 2;
    goto LABEL_64;
  }

  if (*(v3 + 240))
  {
    goto LABEL_66;
  }

  v7 = *(v3 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    if (*(v3 + 352) == 2)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

  *buf = 0;
  _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Detected failure on last LPM entry", buf, 2u);
  if (*(v3 + 352) != 2)
  {
LABEL_66:
    v25 = *(v3 + 151);
    if (v25 < 0)
    {
      if (!*(v3 + 136))
      {
        return;
      }
    }

    else if (!*(v3 + 151))
    {
      return;
    }

    v26 = *(v3 + 96);
    v27 = *(v3 + 88);
    v32 = v27;
    if (v27)
    {
      dispatch_retain(v27);
      LOBYTE(v25) = *(v3 + 151);
    }

    v28 = (v3 + 128);
    if ((v25 & 0x80) != 0)
    {
      std::string::__init_copy_ctor_external(&v31, *(v3 + 128), *(v3 + 136));
    }

    else
    {
      *&v31.__r_.__value_.__l.__data_ = *v28;
      v31.__r_.__value_.__r.__words[2] = *(v3 + 144);
    }

    v29 = INTTrace::sendConfig_sync(v3, &v32, &v31, v26 == 8, 0, 0);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v27)
    {
      dispatch_release(v27);
    }

    v30 = *(v3 + 40);
    if (v29)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        if (*(v3 + 151) < 0)
        {
          v28 = *v28;
        }

        *buf = 136315138;
        *&buf[4] = v28;
        _os_log_debug_impl(&dword_23C1C4000, v30, OS_LOG_TYPE_DEBUG, "#D Succeeded sending config: %s", buf, 0xCu);
      }

      return;
    }

    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    if (*(v3 + 151) < 0)
    {
      v28 = *v28;
    }

    *buf = 136315138;
    *&buf[4] = v28;
    v22 = "Failed to send config: %s";
    v23 = v30;
    v24 = 12;
LABEL_64:
    _os_log_error_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
    return;
  }

LABEL_17:
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73 = v8;
  v74 = v8;
  v71 = v8;
  v72 = v8;
  v69 = v8;
  v70 = v8;
  *buf = v8;
  v9 = *MEMORY[0x277CECC38];
  v10 = strlen(*MEMORY[0x277CECC38]);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v11;
    v51 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_27;
  }

  HIBYTE(v51) = v10;
  p_dst = &__dst;
  if (v10)
  {
LABEL_27:
    memmove(p_dst, v9, v11);
  }

  *(p_dst + v11) = 0;
  v15 = *MEMORY[0x277CECD38];
  v16 = strlen(*MEMORY[0x277CECD38]);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    v18 = operator new(v19);
    *(&v48 + 1) = v17;
    v49 = v19 | 0x8000000000000000;
    *&v48 = v18;
    goto LABEL_36;
  }

  HIBYTE(v49) = v16;
  v18 = &v48;
  if (v16)
  {
LABEL_36:
    memmove(v18, v15, v17);
  }

  *(v18 + v17) = 0;
  v20 = operator new(0x28uLL);
  v46 = v20;
  v47 = xmmword_23C32D530;
  strcpy(v20, "Detected failure on last LPM entry");
  Timestamp::Timestamp(v42);
  Timestamp::asString(v42, 0, 9, v44);
  v41 = 0;
  LOBYTE(v40) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v48, &v46, v44, 7, &v40);
  if (v45 < 0)
  {
    operator delete(v44[0]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v42, v43);
  operator delete(v20);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48);
    if ((SHIBYTE(v51) & 0x80000000) == 0)
    {
LABEL_41:
      v21 = *(v3 + 40);
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(__dst);
  v21 = *(v3 + 40);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
LABEL_42:
    LOWORD(__dst) = 0;
    _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Triggering modem reset for LPM Entry Failure", &__dst, 2u);
  }

LABEL_43:
  ResetInfo::ResetInfo(&v33, buf);
  INTTrace::commandResetModem_sync(v3, &v33);
  if (v39 < 0)
  {
    operator delete(v38);
    if ((v37 & 0x80000000) == 0)
    {
LABEL_45:
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_57;
    }
  }

  else if ((v37 & 0x80000000) == 0)
  {
    goto LABEL_45;
  }

  operator delete(v36);
  if ((v35 & 0x80000000) == 0)
  {
LABEL_46:
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_58;
  }

LABEL_57:
  operator delete(v34);
  if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_47:
    if ((SHIBYTE(v74) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v33.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v74) & 0x80000000) == 0)
  {
LABEL_48:
    if ((SBYTE7(v72) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(*(&v73 + 1));
  if ((SBYTE7(v72) & 0x80000000) == 0)
  {
LABEL_49:
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_61;
  }

LABEL_60:
  operator delete(v71);
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
LABEL_50:
    if (SBYTE7(v69) < 0)
    {
      goto LABEL_62;
    }

    return;
  }

LABEL_61:
  operator delete(*(&v69 + 1));
  if (SBYTE7(v69) < 0)
  {
LABEL_62:
    operator delete(*buf);
  }
}

void sub_23C28FC0C(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t INTTrace::setAnomalyDetectionLevelViaDriver_sync(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 176);
  if (!v6 || !(*(*v6 + 128))(v6))
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Unable to set anomaly detection level via trace command driver because it is not ready", buf, 2u);
      v14 = 0;
      if (!v5)
      {
        return v14;
      }
    }

    else
    {
      v14 = 0;
      if (!v5)
      {
        return v14;
      }
    }

LABEL_33:
    dispatch_group_leave(v5);
    dispatch_release(v5);
    return v14;
  }

  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  memset(buf, 170, sizeof(buf));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8INTTrace38setAnomalyDetectionLevelViaDriver_syncEN8dispatch5groupEN5trace21AnomalyDetectionLevelE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_61_2;
  aBlock[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v21 = v8;
  v22 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = *(a1 + 24);
  if (v12)
  {
    dispatch_retain(*(a1 + 24));
  }

  *buf = v11;
  *&buf[8] = v12;
  v13 = *(a1 + 176);
  if (v11)
  {
    v17 = _Block_copy(v11);
    object = v12;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  object = v12;
  if (v12)
  {
LABEL_15:
    dispatch_retain(v12);
  }

LABEL_16:
  (*(*v13 + 200))(v13, a3, &v17);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v10);
  v14 = 1;
  if (v5)
  {
    goto LABEL_33;
  }

  return v14;
}

void sub_23C290048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v20 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t INTTrace::setAnomalyDetectionTimeoutViaDriver_sync(INTTrace *this, group *a2, uint64_t a3)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v6 = *(this + 22);
  if (!v6 || !(*(*v6 + 128))(v6))
  {
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Unable to set anomaly detection debounce timeout via trace command driver because it is not ready", buf, 2u);
      v14 = 0;
      if (!gr_name)
      {
        return v14;
      }
    }

    else
    {
      v14 = 0;
      if (!gr_name)
      {
        return v14;
      }
    }

LABEL_33:
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
    return v14;
  }

  v7 = *(this + 2);
  if (!v7 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  memset(buf, 170, sizeof(buf));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8INTTrace40setAnomalyDetectionTimeoutViaDriver_syncEN8dispatch5groupEj_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_64_1;
  aBlock[4] = this;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v21 = v8;
  v22 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = *(this + 3);
  if (v12)
  {
    dispatch_retain(*(this + 3));
  }

  *buf = v11;
  *&buf[8] = v12;
  v13 = *(this + 22);
  if (v11)
  {
    v17 = _Block_copy(v11);
    object = v12;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  object = v12;
  if (v12)
  {
LABEL_15:
    dispatch_retain(v12);
  }

LABEL_16:
  (*(*v13 + 208))(v13, a3, &v17);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v10);
  v14 = 1;
  if (gr_name)
  {
    goto LABEL_33;
  }

  return v14;
}

void sub_23C290378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v20 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t INTTrace::sendFlushRequest_sync(INTTrace *this)
{
  result = *(this + 22);
  if (result)
  {
    result = (*(*result + 128))(result);
    if (result)
    {
      if (!*(this + 24))
      {
        v3 = *(**(this + 22) + 144);

        return v3();
      }
    }
  }

  return result;
}

void ___ZN8INTTrace15sendConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbbb_block_invoke(uint64_t a1, uint64_t *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    v43 = v6;
    if (v6)
    {
      if (*(a1 + 48))
      {
        v7 = *a2;
        v8 = *(v5 + 40);
        if (v7)
        {
          if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v7;
            _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to send config: %@", &buf, 0xCu);
          }

          *&v9 = 0xAAAAAAAAAAAAAAAALL;
          *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v49 = v9;
          v50 = v9;
          v47 = v9;
          v48 = v9;
          v45 = v9;
          v46 = v9;
          buf = v9;
          v10 = *MEMORY[0x277CECC38];
          v11 = strlen(*MEMORY[0x277CECC38]);
          if (v11 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v12 = v11;
          if (v11 >= 0x17)
          {
            if ((v11 | 7) == 0x17)
            {
              v16 = 25;
            }

            else
            {
              v16 = (v11 | 7) + 1;
            }

            p_dst = operator new(v16);
            *(&__dst + 1) = v12;
            v41 = v16 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v41) = v11;
            p_dst = &__dst;
            if (!v11)
            {
LABEL_21:
              *(p_dst + v12) = 0;
              v17 = *MEMORY[0x277CECD38];
              v18 = strlen(*MEMORY[0x277CECD38]);
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
                *(&v38 + 1) = v19;
                v39 = v21 | 0x8000000000000000;
                *&v38 = v20;
              }

              else
              {
                HIBYTE(v39) = v18;
                v20 = &v38;
                if (!v18)
                {
LABEL_30:
                  v20[v19] = 0;
                  v37[23] = 21;
                  strcpy(v37, "Failed to send config");
                  Timestamp::Timestamp(v33);
                  Timestamp::asString(v33, 0, 9, __p);
                  v32 = 0;
                  LOBYTE(v31) = 0;
                  ResetInfo::ResetInfo(&buf, &__dst, &v38, v37, __p, 7, &v31);
                  if (v36 < 0)
                  {
                    operator delete(__p[0]);
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
                    if ((SHIBYTE(v39) & 0x80000000) == 0)
                    {
LABEL_32:
                      if ((SHIBYTE(v41) & 0x80000000) == 0)
                      {
                        goto LABEL_33;
                      }

                      goto LABEL_37;
                    }
                  }

                  else
                  {
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
                    if ((SHIBYTE(v39) & 0x80000000) == 0)
                    {
                      goto LABEL_32;
                    }
                  }

                  operator delete(v38);
                  if ((SHIBYTE(v41) & 0x80000000) == 0)
                  {
LABEL_33:
                    if ((*(v5 + 352) - 1) > 1)
                    {
LABEL_44:
                      if ((SHIBYTE(v50) & 0x80000000) == 0)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_54;
                    }

LABEL_38:
                    v22 = *(v5 + 40);
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(__dst) = 0;
                      _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#I Triggering modem reset for failure to send config", &__dst, 2u);
                    }

                    ResetInfo::ResetInfo(&v24, &buf);
                    INTTrace::commandResetModem_sync(v5, &v24);
                    if (v30 < 0)
                    {
                      operator delete(v29);
                      if ((v28 & 0x80000000) == 0)
                      {
LABEL_42:
                        if ((v26 & 0x80000000) == 0)
                        {
                          goto LABEL_43;
                        }

                        goto LABEL_52;
                      }
                    }

                    else if ((v28 & 0x80000000) == 0)
                    {
                      goto LABEL_42;
                    }

                    operator delete(v27);
                    if ((v26 & 0x80000000) == 0)
                    {
LABEL_43:
                      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_44;
                      }

                      goto LABEL_53;
                    }

LABEL_52:
                    operator delete(v25);
                    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_44;
                    }

LABEL_53:
                    operator delete(v24.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v50) & 0x80000000) == 0)
                    {
LABEL_45:
                      if ((SBYTE7(v48) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_55;
                    }

LABEL_54:
                    operator delete(*(&v49 + 1));
                    if ((SBYTE7(v48) & 0x80000000) == 0)
                    {
LABEL_46:
                      if ((SHIBYTE(v46) & 0x80000000) == 0)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_56;
                    }

LABEL_55:
                    operator delete(v47);
                    if ((SHIBYTE(v46) & 0x80000000) == 0)
                    {
LABEL_47:
                      if ((SBYTE7(v45) & 0x80000000) == 0)
                      {
                        goto LABEL_48;
                      }

                      goto LABEL_57;
                    }

LABEL_56:
                    operator delete(*(&v45 + 1));
                    if ((SBYTE7(v45) & 0x80000000) == 0)
                    {
LABEL_48:
                      v6 = v43;
                      if (!v43)
                      {
                        return;
                      }

                      goto LABEL_58;
                    }

LABEL_57:
                    operator delete(buf);
                    v6 = v43;
                    if (!v43)
                    {
                      return;
                    }

                    goto LABEL_58;
                  }

LABEL_37:
                  operator delete(__dst);
                  if ((*(v5 + 352) - 1) > 1)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_38;
                }
              }

              memmove(v20, v17, v19);
              goto LABEL_30;
            }
          }

          memmove(p_dst, v10, v12);
          goto LABEL_21;
        }

        v14 = v6;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v15 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v15 = *v15;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Succeeded to send config - %s", &buf, 0xCu);
        }

        v6 = v14;
      }

LABEL_58:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v23 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v23);
      }
    }
  }
}

void sub_23C290924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v3 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v3 - 208);
  _Unwind_Resume(a1);
}

void sub_23C290950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  if (a44 < 0)
  {
    operator delete(a39);
    if ((a50 & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
      _Unwind_Resume(a1);
    }
  }

  else if ((a50 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a45);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }
}

void sub_23C290A74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(v1 + 40);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

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

void INTTrace::getStateAsDict_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  v8 = MEMORY[0x277D86468];
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v7) == v8)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  *a3 = v9;
LABEL_9:
  xpc_release(v7);
  v10 = *a3;
  if (MEMORY[0x23EECEE80](*a3) == v8)
  {
    if (*(a1 + 104))
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = xpc_string_create(v12);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Enabled", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    v15 = *(a1 + 116);
    if (v15 > 3)
    {
      v16 = "unknown";
    }

    else
    {
      v16 = off_278BB9628[v15];
    }

    v17 = xpc_string_create(v16);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Live_Filter_Setting", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = *(a1 + 96);
    if (v19 > 8)
    {
      v20 = "Unknown";
    }

    else
    {
      v20 = off_278BB9648[v19];
    }

    v21 = xpc_string_create(v20);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Mode", v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = *(a1 + 100);
    if (v23 == 1)
    {
      v24 = &buf.__r_.__value_.__s.__data_[9];
      *(&buf.__r_.__value_.__s + 23) = 9;
      qmemcpy(&buf, "Last_Used", 9);
    }

    else if (v23)
    {
      v24 = &buf.__r_.__value_.__s.__data_[11];
      *(&buf.__r_.__value_.__s + 23) = 11;
      qmemcpy(&buf, "UnSpecified", 11);
    }

    else
    {
      v24 = &buf.__r_.__value_.__s.__data_[7];
      *(&buf.__r_.__value_.__s + 23) = 7;
      qmemcpy(&buf, "Default", 7);
    }

    *v24 = 0;
    v25 = xpc_string_create(&buf);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Reset_Mode_Boot", v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    std::to_string(&buf, *(a1 + 152));
    __p = buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v28 = xpc_string_create(p_p);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v29 = *a3;
    xpc_dictionary_set_value(*a3, "TraceOwnership", v28);
    v30 = xpc_null_create();
    xpc_release(v28);
    xpc_release(v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    INTTrace::historyAsString_sync(&buf, a1);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v32 = xpc_string_create(p_buf);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    xpc_dictionary_set_value(v29, "History", v32);
    v33 = xpc_null_create();
    xpc_release(v32);
    xpc_release(v33);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      v34 = (a1 + 128);
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v34 = (a1 + 128);
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    v34 = *v34;
LABEL_50:
    v35 = xpc_string_create(v34);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_dictionary_set_value(v29, "File", v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    v37 = *(a1 + 120);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&buf, v37);
    __p = buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &__p;
    }

    else
    {
      v38 = __p.__r_.__value_.__r.__words[0];
    }

    v39 = xpc_string_create(v38);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    v40 = *a3;
    xpc_dictionary_set_value(*a3, "FileSize", v39);
    v41 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v41);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    capabilities::trace::asString();
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v42 = &buf;
    }

    else
    {
      v42 = buf.__r_.__value_.__r.__words[0];
    }

    v43 = xpc_string_create(v42);
    if (!v43)
    {
      v43 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "Enabled_During_Sleep", v43);
    v44 = xpc_null_create();
    xpc_release(v43);
    xpc_release(v44);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      v45 = (a1 + 216);
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v45 = (a1 + 216);
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }
    }

    v45 = *v45;
LABEL_66:
    v46 = xpc_string_create(v45);
    if (!v46)
    {
      v46 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "File_Sleep", v46);
    v47 = xpc_null_create();
    xpc_release(v46);
    xpc_release(v47);
    v48 = *(a1 + 352);
    if (v48 > 2)
    {
      v49 = "Unknown";
    }

    else
    {
      v49 = off_278BB9690[v48];
    }

    v50 = xpc_string_create(v49);
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "Error_Handling", v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
    if (*(a1 + 356))
    {
      v52 = "true";
    }

    else
    {
      v52 = "false";
    }

    v53 = xpc_string_create(v52);
    if (!v53)
    {
      v53 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "Retain_Previous_Trace", v53);
    v54 = xpc_null_create();
    xpc_release(v53);
    xpc_release(v54);
    if (*(a2 + 23) >= 0)
    {
      v55 = a2;
    }

    else
    {
      v55 = *a2;
    }

    v56 = xpc_string_create(v55);
    if (!v56)
    {
      v56 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, *MEMORY[0x277CECCC8], v56);
    v57 = xpc_null_create();
    xpc_release(v56);
    xpc_release(v57);
    std::to_string(&buf, *(a1 + 360));
    v96 = buf;
    size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v96.__r_.__value_.__l.__size_;
      v61 = (v96.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v61 - v96.__r_.__value_.__l.__size_ < 5)
      {
        v62 = 0x7FFFFFFFFFFFFFF7;
        v59 = v96.__r_.__value_.__l.__size_ + 5;
        if (0x7FFFFFFFFFFFFFF7 - (v96.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v96.__r_.__value_.__l.__size_ + 5 - v61)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v60 = v96.__r_.__value_.__r.__words[0];
        if (v61 >= 0x3FFFFFFFFFFFFFF3)
        {
          v65 = 0;
LABEL_102:
          v66 = operator new(v62);
          v67 = v66;
          if (size)
          {
            memmove(v66, v60, size);
          }

          v68 = v67 + size;
          *(v68 + 4) = 115;
          *v68 = 1885490464;
          if (!v65)
          {
            operator delete(v60);
          }

          v96.__r_.__value_.__l.__size_ = v59;
          v96.__r_.__value_.__r.__words[2] = v62 | 0x8000000000000000;
          v96.__r_.__value_.__r.__words[0] = v67;
          v69 = (v67 + v59);
LABEL_113:
          *v69 = 0;
          __p = v96;
          memset(&v96, 0, sizeof(v96));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v73 = &__p;
          }

          else
          {
            v73 = __p.__r_.__value_.__r.__words[0];
          }

          v74 = xpc_string_create(v73);
          if (!v74)
          {
            v74 = xpc_null_create();
          }

          v75 = *a3;
          xpc_dictionary_set_value(*a3, "PeakBandwidthMbps", v74);
          v76 = xpc_null_create();
          xpc_release(v74);
          xpc_release(v76);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_120;
            }
          }

          else if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_120;
          }

          operator delete(v96.__r_.__value_.__l.__data_);
LABEL_120:
          v77 = xpc_int64_create(*(a1 + 364));
          if (!v77)
          {
            v77 = xpc_null_create();
          }

          xpc_dictionary_set_value(v75, "AnomalyDetectionLevel", v77);
          v78 = xpc_null_create();
          xpc_release(v77);
          xpc_release(v78);
          v79 = *(a1 + 368);
          memset(&v96, 0, sizeof(v96));
          std::to_string(&buf, v79);
          v96 = buf;
          v80 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v80 = v96.__r_.__value_.__l.__size_;
            v83 = (v96.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v83 - v96.__r_.__value_.__l.__size_ < 2)
            {
              v84 = 0x7FFFFFFFFFFFFFF7;
              v81 = v96.__r_.__value_.__l.__size_ + 2;
              if (0x7FFFFFFFFFFFFFF7 - (v96.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v96.__r_.__value_.__l.__size_ + 2 - v83)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v82 = v96.__r_.__value_.__r.__words[0];
              if (v83 >= 0x3FFFFFFFFFFFFFF3)
              {
                v87 = 0;
LABEL_139:
                v88 = operator new(v84);
                v89 = v88;
                if (v80)
                {
                  memmove(v88, v82, v80);
                }

                *(v89 + v80) = 29472;
                if (!v87)
                {
                  operator delete(v82);
                }

                v96.__r_.__value_.__l.__size_ = v81;
                v96.__r_.__value_.__r.__words[2] = v84 | 0x8000000000000000;
                v96.__r_.__value_.__r.__words[0] = v89;
                v90 = (v89 + v81);
LABEL_149:
                *v90 = 0;
                __p = v96;
                memset(&v96, 0, sizeof(v96));
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v93 = &__p;
                }

                else
                {
                  v93 = __p.__r_.__value_.__r.__words[0];
                }

                v94 = xpc_string_create(v93);
                if (!v94)
                {
                  v94 = xpc_null_create();
                }

                xpc_dictionary_set_value(*a3, "AnomalyDetectionTimeout", v94);
                v95 = xpc_null_create();
                xpc_release(v94);
                xpc_release(v95);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return;
                  }
                }

                else if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  return;
                }

                operator delete(v96.__r_.__value_.__l.__data_);
                return;
              }

LABEL_130:
              v85 = 2 * v83;
              if (v81 > 2 * v83)
              {
                v85 = v81;
              }

              if ((v85 | 7) == 0x17)
              {
                v86 = 25;
              }

              else
              {
                v86 = (v85 | 7) + 1;
              }

              if (v85 >= 0x17)
              {
                v84 = v86;
              }

              else
              {
                v84 = 23;
              }

              v87 = v83 == 22;
              goto LABEL_139;
            }

            v91 = v96.__r_.__value_.__r.__words[0];
            *(v96.__r_.__value_.__r.__words[0] + v96.__r_.__value_.__l.__size_) = 29472;
            v92 = v80 + 2;
            if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) - 21) < 2)
            {
              v81 = SHIBYTE(v96.__r_.__value_.__r.__words[2]) + 2;
              v82 = &v96;
              v83 = 22;
              goto LABEL_130;
            }

            v91 = &v96;
            *(&v96.__r_.__value_.__l.__data_ + SHIBYTE(v96.__r_.__value_.__r.__words[2])) = 29472;
            v92 = v80 + 2;
            if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_145:
              *(&v96.__r_.__value_.__s + 23) = v92 & 0x7F;
LABEL_148:
              v90 = v91 + v92;
              goto LABEL_149;
            }
          }

          v96.__r_.__value_.__l.__size_ = v92;
          goto LABEL_148;
        }

LABEL_93:
        v63 = 2 * v61;
        if (v59 > 2 * v61)
        {
          v63 = v59;
        }

        if ((v63 | 7) == 0x17)
        {
          v64 = 25;
        }

        else
        {
          v64 = (v63 | 7) + 1;
        }

        if (v63 >= 0x17)
        {
          v62 = v64;
        }

        else
        {
          v62 = 23;
        }

        v65 = v61 == 22;
        goto LABEL_102;
      }

      v70 = v96.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) - 18) < 5)
      {
        v59 = SHIBYTE(v96.__r_.__value_.__r.__words[2]) + 5;
        v60 = &v96;
        v61 = 22;
        goto LABEL_93;
      }

      v70 = &v96;
    }

    v71 = v70 + size;
    v71[4] = 115;
    *v71 = 1885490464;
    v72 = size + 5;
    if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
    {
      v96.__r_.__value_.__l.__size_ = size + 5;
    }

    else
    {
      *(&v96.__r_.__value_.__s + 23) = v72 & 0x7F;
    }

    v69 = v70 + v72;
    goto LABEL_113;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to create state dump dictionary", &buf, 2u);
  }
}

void sub_23C291674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(__p);
    xpc::dict::~dict(v21);
    _Unwind_Resume(a1);
  }

  xpc::dict::~dict(v21);
  _Unwind_Resume(a1);
}

uint64_t *INTTrace::historyAsString_sync@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v2 = a1;
  if (!*(this + 28))
  {
    *(a1 + 23) = 8;
    strcpy(a1, "Infinite");
    return this;
  }

  v3 = this;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v4;
  v22[8] = v4;
  v22[5] = v4;
  v22[6] = v4;
  v22[3] = v4;
  v22[4] = v4;
  v22[1] = v4;
  v22[2] = v4;
  v21 = v4;
  v22[0] = v4;
  *v19 = v4;
  v20 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  std::to_string(&v24, *(v3 + 28));
  __p = v24;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " MB", 3);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v8 = BYTE8(v21);
    if ((BYTE8(v21) & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = v21;
    if (v21 < *(&v18 + 1))
    {
      *&v21 = *(&v18 + 1);
      v10 = *(&v18 + 1);
    }

    v11 = v18;
    v9 = v10 - v18;
    if ((v10 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v8 = BYTE8(v21);
  if ((BYTE8(v21) & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v8 & 8) == 0)
  {
    v9 = 0;
    *(v2 + 23) = 0;
    goto LABEL_25;
  }

  v11 = *(&v16 + 1);
  v9 = *(&v17 + 1) - *(&v16 + 1);
  if (*(&v17 + 1) - *(&v16 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_29:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_17:
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

    v13 = operator new(v12);
    v2[1] = v9;
    v2[2] = v12 | 0x8000000000000000;
    *v2 = v13;
    v2 = v13;
  }

  else
  {
    *(v2 + 23) = v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  memmove(v2, v11, v9);
LABEL_25:
  *(v2 + v9) = 0;
  *&v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v15 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  *(&v15 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v22);
}

void sub_23C291B48(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C2918F4);
}

void sub_23C291B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t INTTrace::dumpState_sync@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X1>, _BYTE *a3@<X8>)
{
  v128 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v127[7] = v6;
  v127[8] = v6;
  v127[5] = v6;
  v127[6] = v6;
  v127[3] = v6;
  v127[4] = v6;
  v127[1] = v6;
  v127[2] = v6;
  v126 = v6;
  v127[0] = v6;
  *v124 = v6;
  v125 = v6;
  v122 = v6;
  v123 = v6;
  v120 = v6;
  v121 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v120);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, "\n----- BB Trace Dump State -----\n", 33);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, "Trace Enabled                 : ", 32);
  *(v7 + *(*v7 - 24) + 8) |= 1u;
  v8 = MEMORY[0x23EECDF10]();
  v129.__r_.__value_.__s.__data_[0] = 10;
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, &v129, 1);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Live Enabled Setting          : ", 32);
  v11 = *(a1 + 116);
  if (v11 > 3)
  {
    v12 = "unknown";
  }

  else
  {
    v12 = off_278BB9628[v11];
  }

  v13 = strlen(v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, &v129, 1);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Mode                          : ", 32);
  v17 = *(a1 + 96);
  if (v17 > 8)
  {
    v18 = "Unknown";
  }

  else
  {
    v18 = off_278BB9648[v17];
  }

  v19 = strlen(v18);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, &v129, 1);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Reset Mode On Reboot          : ", 32);
  v23 = *(a1 + 100);
  if (v23 == 1)
  {
    v24 = 9;
    v119 = 9;
    qmemcpy(v118, "Last_Used", 9);
  }

  else if (v23)
  {
    v24 = 11;
    v119 = 11;
    qmemcpy(v118, "UnSpecified", 11);
  }

  else
  {
    v24 = 7;
    v119 = 7;
    qmemcpy(v118, "Default", 7);
  }

  *(v118 + v24) = 0;
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v118, v24);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, &v129, 1);
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Trace Ownership               : ", 32);
  std::to_string(&v129, *(a1 + 152));
  v117 = v129;
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v117;
  }

  else
  {
    v28 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v117.__r_.__value_.__l.__size_;
  }

  v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, size);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, &v129, 1);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "History (MB)                  : ", 32);
  INTTrace::historyAsString_sync(v115, a1);
  if ((v116 & 0x80u) == 0)
  {
    v33 = v115;
  }

  else
  {
    v33 = v115[0];
  }

  if ((v116 & 0x80u) == 0)
  {
    v34 = v116;
  }

  else
  {
    v34 = v115[1];
  }

  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, &v129, 1);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "Privacy Level                 : ", 32);
  v38 = *(a1 + 108);
  if (v38 > 3)
  {
    v39 = "Unknown";
  }

  else
  {
    v39 = off_278BB9608[v38];
  }

  v40 = strlen(v39);
  v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, &v129, 1);
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Config File                   : ", 32);
  v44 = *(a1 + 151);
  if (v44 >= 0)
  {
    v45 = a1 + 128;
  }

  else
  {
    v45 = *(a1 + 128);
  }

  if (v44 >= 0)
  {
    v46 = *(a1 + 151);
  }

  else
  {
    v46 = *(a1 + 136);
  }

  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v45, v46);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, &v129, 1);
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Max memory file count         : ", 32);
  v50 = *(a1 + 124);
  if (v50)
  {
    std::to_string(&v129, v50);
    v114 = v129;
  }

  else
  {
    *(&v114.__r_.__value_.__s + 23) = 8;
    strcpy(&v114, "No limit");
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v51 = &v114;
  }

  else
  {
    v51 = v114.__r_.__value_.__r.__words[0];
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v52 = v114.__r_.__value_.__l.__size_;
  }

  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v51, v52);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, &v129, 1);
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, "File Size (Bytes)             : ", 32);
  v56 = MEMORY[0x23EECDF40](v55, *(a1 + 120));
  v129.__r_.__value_.__s.__data_[0] = 10;
  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, &v129, 1);
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "Transport Read Size           : ", 32);
  v59 = MEMORY[0x23EECDF40](v58, *(a1 + 196));
  v129.__r_.__value_.__s.__data_[0] = 10;
  v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, &v129, 1);
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "Transport Read Count          : ", 32);
  v62 = MEMORY[0x23EECDF40](v61, *(a1 + 200));
  v129.__r_.__value_.__s.__data_[0] = 10;
  v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, &v129, 1);
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "Sleep Trace Mode              : ", 32);
  capabilities::trace::asString();
  if ((v113 & 0x80u) == 0)
  {
    v65 = v112;
  }

  else
  {
    v65 = v112[0];
  }

  if ((v113 & 0x80u) == 0)
  {
    v66 = v113;
  }

  else
  {
    v66 = v112[1];
  }

  v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, &v129, 1);
  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Sleep Config File             : ", 32);
  v70 = *(a1 + 239);
  if (v70 >= 0)
  {
    v71 = a1 + 216;
  }

  else
  {
    v71 = *(a1 + 216);
  }

  if (v70 >= 0)
  {
    v72 = *(a1 + 239);
  }

  else
  {
    v72 = *(a1 + 224);
  }

  v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v71, v72);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, &v129, 1);
  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, "Trace Error Handling          : ", 32);
  v76 = *(a1 + 352);
  if (v76 > 2)
  {
    v77 = "Unknown";
  }

  else
  {
    v77 = off_278BB9690[v76];
  }

  v78 = strlen(v77);
  v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v77, v78);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, &v129, 1);
  v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, "Retain Previous Trace         : ", 32);
  *(v81 + *(*v81 - 24) + 8) |= 1u;
  v82 = MEMORY[0x23EECDF10]();
  v129.__r_.__value_.__s.__data_[0] = 10;
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, &v129, 1);
  v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Peak Bandwidth (Mbps)         : ", 32);
  std::to_string(&v129, *(a1 + 360));
  v111 = v129;
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = &v111;
  }

  else
  {
    v85 = v111.__r_.__value_.__r.__words[0];
  }

  if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v86 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v86 = v111.__r_.__value_.__l.__size_;
  }

  v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v85, v86);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, &v129, 1);
  v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, "Anomaly Detection Level       : ", 32);
  std::to_string(&v129, *(a1 + 364));
  v110 = v129;
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v110;
  }

  else
  {
    v90 = v110.__r_.__value_.__r.__words[0];
  }

  if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v91 = v110.__r_.__value_.__l.__size_;
  }

  v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, v90, v91);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, &v129, 1);
  v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, "Anomaly Detection Timeout (s) : ", 32);
  std::to_string(&v129, *(a1 + 368));
  __p = v129;
  if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v96 = __p.__r_.__value_.__l.__size_;
  }

  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, p_p, v96);
  v129.__r_.__value_.__s.__data_[0] = 10;
  v98 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, &v129, 1);
  v99 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, "Reason                        : ", 32);
  v100 = *(a2 + 23);
  if (v100 >= 0)
  {
    v101 = a2;
  }

  else
  {
    v101 = *a2;
  }

  if (v100 >= 0)
  {
    v102 = *(a2 + 23);
  }

  else
  {
    v102 = a2[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v99, v101, v102);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_83:
      if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v110.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

  operator delete(v110.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v111.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_84:
    if ((v113 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(v111.__r_.__value_.__l.__data_);
  if ((v113 & 0x80000000) == 0)
  {
LABEL_85:
    if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(v112[0]);
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_86:
    if ((v116 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(v114.__r_.__value_.__l.__data_);
  if ((v116 & 0x80000000) == 0)
  {
LABEL_87:
    if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

LABEL_104:
    operator delete(v117.__r_.__value_.__l.__data_);
    if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_103:
  operator delete(v115[0]);
  if (SHIBYTE(v117.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_104;
  }

LABEL_88:
  if ((v119 & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_105:
  operator delete(v118[0]);
LABEL_89:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v120, "\n---------------------------------\n", 35);
  if ((BYTE8(v126) & 0x10) != 0)
  {
    v104 = v126;
    if (v126 < *(&v123 + 1))
    {
      *&v126 = *(&v123 + 1);
      v104 = *(&v123 + 1);
    }

    v105 = v123;
    v103 = v104 - v123;
    if ((v104 - v123) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_115;
    }
  }

  else
  {
    if ((BYTE8(v126) & 8) == 0)
    {
      v103 = 0;
      a3[23] = 0;
      goto LABEL_111;
    }

    v105 = *(&v121 + 1);
    v103 = *(&v122 + 1) - *(&v121 + 1);
    if (*(&v122 + 1) - *(&v121 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_115:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v103 >= 0x17)
  {
    if ((v103 | 7) == 0x17)
    {
      v106 = 25;
    }

    else
    {
      v106 = (v103 | 7) + 1;
    }

    v107 = operator new(v106);
    *(a3 + 1) = v103;
    *(a3 + 2) = v106 | 0x8000000000000000;
    *a3 = v107;
    a3 = v107;
    goto LABEL_110;
  }

  a3[23] = v103;
  if (v103)
  {
LABEL_110:
    memmove(a3, v105, v103);
  }

LABEL_111:
  a3[v103] = 0;
  *&v120 = *MEMORY[0x277D82828];
  *(&v120 + *(v120 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v120 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v125) < 0)
  {
    operator delete(v124[1]);
  }

  *(&v120 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v121);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v127);
}

void sub_23C2925D4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C291FA4);
}

void sub_23C2925E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a46 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a52 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a46 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a41);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a47);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_5:
    std::ostringstream::~ostringstream(&a59);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a53);
  std::ostringstream::~ostringstream(&a59);
  _Unwind_Resume(a1);
}

void sub_23C2927C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

double util::to_str<trace::AnomalyDetectionLevel>(std::string *a1, int __val)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_23C292820(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C292810);
}

void sub_23C29282C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropEnabled_sync(uint64_t a1, char **a2, char *a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&v20.gr_passwd + 4, 0, 20);
    v21 = 0;
    if (prop::bbtrace::get(a3, &v20.gr_gid))
    {
      v7 = util::convert<int>(&v20.gr_gid, &v20.gr_passwd + 1, 0);
      if (SHIBYTE(v21) < 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = 0;
      if (SHIBYTE(v21) < 0)
      {
LABEL_4:
        operator delete(*&v20.gr_gid);
        if ((v7 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_13:
        gr_passwd_high = HIDWORD(v20.gr_passwd);
        v12 = *(a1 + 104);
        v13 = *(a1 + 40);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (gr_passwd_high == v12)
        {
          if (v14)
          {
            v15 = "disabled";
            if (v12)
            {
              v15 = "enabled";
            }

            v20.gr_gid = 136315138;
            *(&v20.gr_gid + 1) = v15;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I It is already %s", &v20.gr_gid, 0xCu);
          }
        }

        else
        {
          if (v14)
          {
            v20.gr_gid = 67109376;
            *(&v20.gr_gid + 1) = v12;
            LOWORD(v20.gr_mem) = 1024;
            *(&v20.gr_mem + 2) = gr_passwd_high;
            _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting enable from %d to %d", &v20.gr_gid, 0xEu);
            gr_passwd_high = HIDWORD(v20.gr_passwd);
          }

          *(a1 + 104) = gr_passwd_high != 0;
          if (gr_passwd_high)
          {
            v16 = *a2;
            v20.gr_name = v16;
            if (v16)
            {
              dispatch_retain(v16);
            }

            INTTrace::start_sync(a1, &v20);
            if (v16)
            {
              dispatch_release(v16);
            }
          }

          else if (*(a1 + 176))
          {
            v17 = *a2;
            v19 = v17;
            if (v17)
            {
              dispatch_retain(v17);
            }

            INTTrace::stop_sync(a1, &v19);
            if (v17)
            {
              dispatch_release(v17);
            }

            v18 = *(a1 + 160);
            if (v18)
            {
              if (*(a1 + 116) != 3)
              {
                abm::trace::TraceReader::clearFiles(v18);
              }

              std::shared_ptr<TraceFileCollection>::reset[abi:ne200100]((a1 + 160));
              *&v20.gr_gid = 0;
              v20.gr_mem = 0;
              std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](a1 + 160, &v20.gr_gid);
              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v20.gr_gid);
            }
          }
        }

        return v7;
      }
    }

    if ((v7 & 1) == 0)
    {
LABEL_5:
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20.gr_gid) = 0;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to get enabled property!", &v20.gr_gid, 2u);
      }

      return v7;
    }

    goto LABEL_13;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v20.gr_gid) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set enabled property!", &v20.gr_gid, 2u);
  }

  return 0;
}

void sub_23C292B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropLiveFilterSetting_sync(uint64_t a1, NSObject **a2, char *a3, uint64_t a4)
{
  v77 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&v74[8], 0, 24);
    if (prop::bbtrace::get(a3, &v74[8]))
    {
      LODWORD(v72.gr_passwd) = -1431655766;
      v7 = util::convert<int>(&v74[8], &v72.gr_passwd, 0);
      v8 = v7;
      if (v7)
      {
        gr_passwd = v72.gr_passwd;
      }

      else
      {
        gr_passwd = 0;
      }

      if ((v74[31] & 0x80000000) != 0)
      {
LABEL_7:
        operator delete(*&v74[8]);
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    else
    {
      gr_passwd = 0;
      v8 = 0;
      if ((v74[31] & 0x80000000) != 0)
      {
        goto LABEL_7;
      }
    }

    if ((v8 & 1) == 0)
    {
LABEL_8:
      v10 = *(a1 + 40);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *&v74[8] = 0;
        v12 = "Failed to get trace live filter enable property!";
LABEL_12:
        _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, v12, &v74[8], 2u);
        return 0;
      }

      return result;
    }

LABEL_15:
    v13 = *(a1 + 116);
    v14 = *(a1 + 40);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (gr_passwd == v13)
    {
      if (v15)
      {
        if (gr_passwd > 3)
        {
          v16 = "unknown";
        }

        else
        {
          v16 = off_278BB9628[gr_passwd];
        }

        *&v74[8] = 136315394;
        *&v74[12] = v16;
        *&v74[20] = 1024;
        *&v74[22] = gr_passwd;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Live filter setting is already %s (%d)", &v74[8], 0x12u);
        gr_passwd = *(a1 + 116);
      }

      if (gr_passwd == 3)
      {
        v19 = *(a1 + 160);
        if (v19)
        {
          abm::trace::TraceReader::notifyCellularLoggingPortNumber(v19);
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *&v74[8] = 0;
            _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Notifying streaming port number", &v74[8], 2u);
          }
        }
      }

      return 1;
    }

    if (!v15)
    {
LABEL_32:
      *(a1 + 116) = gr_passwd;
      if (*(a1 + 104) != 1)
      {
        return 1;
      }

      v21 = *a2;
      *v74 = v21;
      if (v21)
      {
        dispatch_retain(v21);
      }

      INTTrace::stop_sync(a1, v74);
      if (v21)
      {
        dispatch_release(v21);
      }

      v22 = (a1 + 160);
      if (*(a1 + 160))
      {
        v23 = *(a1 + 168);
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        if (v23)
        {
          if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          v24 = *(a1 + 168);
          *v22 = 0;
          *(a1 + 168) = 0;
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }
        }

        else
        {
          *v22 = 0;
          *(a1 + 168) = 0;
        }
      }

      if (*(a1 + 248))
      {
        v25 = *(a1 + 256);
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        if (v25)
        {
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }
        }
      }

      v26 = (a1 + 264);
      if (*(a1 + 264))
      {
        v27 = *(a1 + 272);
        *v26 = 0;
        *(a1 + 272) = 0;
        if (v27)
        {
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }
        }
      }

      v28 = *(a1 + 116);
      if ((v28 - 2) >= 2)
      {
        if (v28 == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v72.gr_passwd, abm::trace::kScratchFolder[0]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74[8], "BBTrace.scratch.filtered/", &v72.gr_passwd);
          abm::trace::TraceInfo::create();
        }

        else
        {
          if (v28)
          {
LABEL_147:
            v71 = *a2;
            v72.gr_name = v71;
            if (v71)
            {
              dispatch_retain(v71);
            }

            INTTrace::start_sync(a1, &v72);
            if (v71)
            {
              dispatch_release(v71);
            }

            return 1;
          }

          std::string::basic_string[abi:ne200100]<0>(&v72.gr_passwd, abm::trace::kScratchFolder[0]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v74[8], "BBTrace.scratch/", &v72.gr_passwd);
          abm::trace::TraceInfo::create();
        }

        std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](a1 + 248, &v73);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v73);
LABEL_143:
        if ((v74[31] & 0x80000000) != 0)
        {
          operator delete(*&v74[8]);
        }

        if (SHIBYTE(v72.gr_mem) < 0)
        {
          operator delete(v72.gr_passwd);
        }

        goto LABEL_147;
      }

      v29 = 0x7FFFFFFFFFFFFFF7;
      v30 = abm::trace::kScratchFolder[0];
      v31 = strlen(abm::trace::kScratchFolder[0]);
      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v32 = v31;
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

        p_gr_passwd = operator new(v34);
        *&v72.gr_gid = v32;
        v72.gr_mem = (v34 | 0x8000000000000000);
        v72.gr_passwd = p_gr_passwd;
      }

      else
      {
        HIBYTE(v72.gr_mem) = v31;
        p_gr_passwd = &v72.gr_passwd;
        if (!v31)
        {
LABEL_68:
          p_gr_passwd[v32] = 0;
          gr_mem_high = SHIBYTE(v72.gr_mem);
          if ((SHIBYTE(v72.gr_mem) & 0x8000000000000000) != 0)
          {
            gr_mem_high = *&v72.gr_gid;
            v38 = (v72.gr_mem & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v38 - *&v72.gr_gid < 0x10)
            {
              v36 = *&v72.gr_gid + 16;
              if (0x7FFFFFFFFFFFFFF7 - (v72.gr_mem & 0x7FFFFFFFFFFFFFFFLL) < *&v72.gr_gid + 16 - v38)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v37 = v72.gr_passwd;
              if (v38 >= 0x3FFFFFFFFFFFFFF3)
              {
                v42 = 0;
                v41 = 0x7FFFFFFFFFFFFFF7;
LABEL_83:
                v43 = operator new(v41);
                v44 = v43;
                if (gr_mem_high)
                {
                  memmove(v43, v37, gr_mem_high);
                }

                *&v44[gr_mem_high] = *"BBTrace.scratch/";
                if (!v42)
                {
                  operator delete(v37);
                }

                *&v72.gr_gid = v36;
                v72.gr_mem = (v41 | 0x8000000000000000);
                v72.gr_passwd = v44;
                v45 = &v44[v36];
LABEL_94:
                *v45 = 0;
                *&v74[8] = *&v72.gr_passwd;
                *&v74[24] = v72.gr_mem;
                memset(&v72.gr_passwd, 0, 24);
                abm::trace::TraceInfo::create();
                v48 = v73;
                v73 = 0uLL;
                v49 = *(a1 + 256);
                *(a1 + 248) = v48;
                if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v49->__on_zero_shared)(v49);
                  std::__shared_weak_count::__release_weak(v49);
                }

                v50 = *(&v73 + 1);
                if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v50->__on_zero_shared)(v50);
                  std::__shared_weak_count::__release_weak(v50);
                }

                if ((v74[31] & 0x80000000) != 0)
                {
                  operator delete(*&v74[8]);
                  if ((SHIBYTE(v72.gr_mem) & 0x80000000) == 0)
                  {
LABEL_102:
                    v51 = abm::trace::kScratchFolder[0];
                    v52 = strlen(abm::trace::kScratchFolder[0]);
                    if (v52 <= 0x7FFFFFFFFFFFFFF7)
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_116;
                  }
                }

                else if ((SHIBYTE(v72.gr_mem) & 0x80000000) == 0)
                {
                  goto LABEL_102;
                }

                operator delete(v72.gr_passwd);
                v51 = abm::trace::kScratchFolder[0];
                v52 = strlen(abm::trace::kScratchFolder[0]);
                if (v52 <= 0x7FFFFFFFFFFFFFF7)
                {
LABEL_103:
                  v53 = v52;
                  if (v52 >= 0x17)
                  {
                    if ((v52 | 7) == 0x17)
                    {
                      v55 = 25;
                    }

                    else
                    {
                      v55 = (v52 | 7) + 1;
                    }

                    v54 = operator new(v55);
                    *&v72.gr_gid = v53;
                    v72.gr_mem = (v55 | 0x8000000000000000);
                    v72.gr_passwd = v54;
                  }

                  else
                  {
                    HIBYTE(v72.gr_mem) = v52;
                    v54 = &v72.gr_passwd;
                    if (!v52)
                    {
LABEL_111:
                      v54[v53] = 0;
                      v56 = SHIBYTE(v72.gr_mem);
                      if ((SHIBYTE(v72.gr_mem) & 0x8000000000000000) != 0)
                      {
                        v56 = *&v72.gr_gid;
                        v59 = (v72.gr_mem & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        if (v59 - *&v72.gr_gid < 0x19)
                        {
                          v57 = *&v72.gr_gid + 25;
                          if (0x7FFFFFFFFFFFFFF7 - (v72.gr_mem & 0x7FFFFFFFFFFFFFFFLL) < *&v72.gr_gid + 25 - v59)
                          {
                            std::string::__throw_length_error[abi:ne200100]();
                          }

                          v58 = v72.gr_passwd;
                          if (v59 >= 0x3FFFFFFFFFFFFFF3)
                          {
                            v62 = 0;
LABEL_129:
                            v63 = operator new(v29);
                            v64 = v63;
                            if (v56)
                            {
                              memmove(v63, v58, v56);
                            }

                            qmemcpy(&v64[v56], "BBTrace.scratch.filtered/", 25);
                            if (!v62)
                            {
                              operator delete(v58);
                            }

                            *&v72.gr_gid = v57;
                            v72.gr_mem = (v29 | 0x8000000000000000);
                            v72.gr_passwd = v64;
                            v65 = &v64[v57];
                            goto LABEL_137;
                          }

LABEL_120:
                          v60 = 2 * v59;
                          if (v57 > 2 * v59)
                          {
                            v60 = v57;
                          }

                          if ((v60 | 7) == 0x17)
                          {
                            v61 = 25;
                          }

                          else
                          {
                            v61 = (v60 | 7) + 1;
                          }

                          if (v60 >= 0x17)
                          {
                            v29 = v61;
                          }

                          else
                          {
                            v29 = 23;
                          }

                          v62 = v59 == 22;
                          goto LABEL_129;
                        }

                        v66 = v72.gr_passwd;
                        qmemcpy(&v72.gr_passwd[*&v72.gr_gid], "BBTrace.scratch.filtered/", 25);
                        v67 = v56 + 25;
                        *&v72.gr_gid = v56 + 25;
                      }

                      else
                      {
                        if (SHIBYTE(v72.gr_mem) < 0x17)
                        {
                          v57 = SHIBYTE(v72.gr_mem) + 25;
                          v58 = &v72.gr_passwd;
                          v59 = 22;
                          goto LABEL_120;
                        }

                        v66 = &v72.gr_passwd;
                        qmemcpy(&v72.gr_passwd + SHIBYTE(v72.gr_mem), "BBTrace.scratch.filtered/", 25);
                        v67 = v56 + 25;
                        HIBYTE(v72.gr_mem) = (v56 + 25) & 0x7F;
                      }

                      v65 = &v66[v67];
LABEL_137:
                      *v65 = 0;
                      *&v74[8] = *&v72.gr_passwd;
                      *&v74[24] = v72.gr_mem;
                      memset(&v72.gr_passwd, 0, 24);
                      abm::trace::TraceInfo::create();
                      v68 = v73;
                      v73 = 0uLL;
                      v69 = *(a1 + 272);
                      *v26 = v68;
                      if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v69->__on_zero_shared)(v69);
                        std::__shared_weak_count::__release_weak(v69);
                      }

                      v70 = *(&v73 + 1);
                      if (*(&v73 + 1) && !atomic_fetch_add((*(&v73 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v70->__on_zero_shared)(v70);
                        std::__shared_weak_count::__release_weak(v70);
                      }

                      goto LABEL_143;
                    }
                  }

                  memmove(v54, v51, v53);
                  goto LABEL_111;
                }

LABEL_116:
                std::string::__throw_length_error[abi:ne200100]();
              }

LABEL_74:
              v39 = 2 * v38;
              if (v36 > 2 * v38)
              {
                v39 = v36;
              }

              if ((v39 | 7) == 0x17)
              {
                v40 = 25;
              }

              else
              {
                v40 = (v39 | 7) + 1;
              }

              if (v39 >= 0x17)
              {
                v41 = v40;
              }

              else
              {
                v41 = 23;
              }

              v42 = v38 == 22;
              goto LABEL_83;
            }

            v46 = v72.gr_passwd;
          }

          else
          {
            if ((SHIBYTE(v72.gr_mem) - 7) < 0x10)
            {
              v36 = SHIBYTE(v72.gr_mem) + 16;
              v37 = &v72.gr_passwd;
              v38 = 22;
              goto LABEL_74;
            }

            v46 = &v72.gr_passwd;
          }

          *&v46[gr_mem_high] = *"BBTrace.scratch/";
          v47 = gr_mem_high + 16;
          if (SHIBYTE(v72.gr_mem) < 0)
          {
            *&v72.gr_gid = gr_mem_high + 16;
          }

          else
          {
            HIBYTE(v72.gr_mem) = v47 & 0x7F;
          }

          v45 = &v46[v47];
          goto LABEL_94;
        }
      }

      memmove(p_gr_passwd, v30, v32);
      goto LABEL_68;
    }

    if (v13 > 3)
    {
      v17 = "unknown";
      if (gr_passwd > 3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = off_278BB9628[v13];
      if (gr_passwd > 3)
      {
LABEL_22:
        v18 = "unknown";
LABEL_31:
        *&v74[8] = 136315906;
        *&v74[12] = v17;
        *&v74[20] = 1024;
        *&v74[22] = v13;
        *&v74[26] = 2080;
        *&v74[28] = v18;
        v75 = 1024;
        v76 = gr_passwd;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Setting trace live filter setting from %s (%d) to %s (%d)", &v74[8], 0x22u);
        goto LABEL_32;
      }
    }

    v18 = off_278BB9628[gr_passwd];
    goto LABEL_31;
  }

  v10 = *(a1 + 40);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *&v74[8] = 0;
    v12 = "Failed to set trace live filter enable property!";
    goto LABEL_12;
  }

  return result;
}

void sub_23C293600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropPrivacyLevel_sync(uint64_t a1, NSObject **a2, char *a3, const std::string *a4)
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  if ((util::convert<int>(a4, &__p, 0) & 1) == 0)
  {
    data = -1;
    goto LABEL_10;
  }

  data = __p.__r_.__value_.__l.__data_;
  if (LODWORD(__p.__r_.__value_.__l.__data_) >= 4)
  {
LABEL_10:
    v11 = *(a1 + 40);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = data;
    v14 = "Invalid input privacy level value: %d ";
    v18 = v11;
    v19 = 8;
LABEL_24:
    _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, v14, &__p, v19);
    return 0;
  }

  if ((prop::bbtrace::set(a3, v4) & 1) == 0)
  {
    v13 = *(a1 + 40);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v14 = "Failed to set privacy level!";
LABEL_22:
    v18 = v13;
    v19 = 2;
    goto LABEL_24;
  }

  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(a3, &__p))
  {
    v10 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v26 = -1431655766;
  v9 = util::convert<int>(&__p, &v26, 0);
  v10 = v9;
  if (v9)
  {
    data = v26;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if ((v10 & 1) == 0)
  {
    v13 = *(a1 + 40);
    result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v14 = "Failed to get privacy level!";
    goto LABEL_22;
  }

  v15 = *(a1 + 108);
  v16 = *(a1 + 40);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (data == v15)
  {
    if (v17)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = data;
      _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I It is setting same privacy level: %d", &__p, 8u);
    }

    return 1;
  }

  if (v17)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v15;
    LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
    *(&__p.__r_.__value_.__r.__words[1] + 2) = data;
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I Setting privacy level from %d to %d", &__p, 0xEu);
  }

  *(a1 + 108) = data;
  v20 = *(a1 + 96);
  v21 = *a2;
  v25 = v21;
  if (v21)
  {
    dispatch_retain(v21);
  }

  if (*(a1 + 151) < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    v24 = *(a1 + 128);
  }

  v22 = INTTrace::sendConfig_sync(a1, &v25, &v24, v20 == 8, 0, 0);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    dispatch_release(v21);
  }

  if (v22)
  {
    return 1;
  }

  v23 = *(a1 + 40);
  result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (result)
  {
    if (SHIBYTE(v4->__r_.__value_.__r.__words[2]) < 0)
    {
      v4 = v4->__r_.__value_.__r.__words[0];
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v4;
    v14 = "Failed to send trace config %s";
    v18 = v23;
    v19 = 12;
    goto LABEL_24;
  }

  return result;
}

void sub_23C2939EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    dispatch_release(v23);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropHistory_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = 0;
  util::convert<int>(a4, &v24, 0);
  v7 = v24;
  if (v24)
  {
    v8 = *(a1 + 120) >> 20;
    if (v24 > 0x10000 || v24 < v8)
    {
      v10 = *(a1 + 40);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v8;
      v11 = "Invalid input history size - %d MB (for trace file size - %d MB)";
      v12 = v10;
      v13 = 14;
LABEL_28:
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, v11, &__p, v13);
      return 0;
    }
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v16 = *(a1 + 40);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set history property!";
    v12 = v16;
    v13 = 2;
    goto LABEL_28;
  }

  v23 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v14 = util::convert<int>(&__p, &v23, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_12:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

  if ((v14 & 1) == 0)
  {
LABEL_13:
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Failed to get history property!", &__p, 2u);
    }

    return v14;
  }

LABEL_20:
  v18 = v23;
  v19 = *(a1 + 112);
  v20 = *(a1 + 40);
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v18 == v19)
  {
    if (v21)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v18;
      _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I It is setting same history size: %d", &__p, 8u);
    }
  }

  else
  {
    if (v21)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v19;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v18;
      _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Setting history from %d MB to %d MB", &__p, 0xEu);
      v18 = v23;
    }

    *(a1 + 112) = v18;
    v22 = *(a1 + 160);
    if (v22)
    {
      abm::trace::TraceReader::updateHistorySize(v22);
    }
  }

  return v14;
}

void sub_23C293CDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropBandwidthMbps_sync(uint64_t a1, int a2, char *a3, const std::string *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  util::convert<unsigned int>(a4, &v22, 0);
  v7 = v22;
  if (v22 >= 0xBB9)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(__p.__r_.__value_.__r.__words[0]) = v7;
    v11 = "Invalid input trace bandwidth - %u Mbps";
    v12 = v10;
    v13 = 8;
LABEL_23:
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, v11, &__p, v13);
    return 0;
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v14 = *(a1 + 40);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    v11 = "Failed to set peak bandwidth property";
    v12 = v14;
    v13 = 2;
    goto LABEL_23;
  }

  v21 = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a3, &__p))
  {
    v8 = util::convert<unsigned int>(&__p, &v21, 0);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_5:
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((v8 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to get peak bandwidth property", &__p, 2u);
    }

    return v8;
  }

LABEL_15:
  v16 = v21;
  v17 = *(a1 + 360);
  v18 = *(a1 + 40);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v16 == v17)
  {
    if (v19)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v16;
      _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, "#I Peak bandwidth already set to : %u", &__p, 8u);
    }
  }

  else
  {
    if (v19)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(__p.__r_.__value_.__r.__words[0]) = v17;
      LOWORD(__p.__r_.__value_.__r.__words[1]) = 1024;
      *(&__p.__r_.__value_.__r.__words[1] + 2) = v16;
      _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_DEFAULT, "#I Setting peak bandwidth from %d Mbps to %d Mbps", &__p, 0xEu);
      v16 = v21;
    }

    *(a1 + 360) = v16;
    v20 = *(a1 + 160);
    if (v20)
    {
      abm::trace::TraceReader::updateTraceBandwidth(v20);
    }
  }

  return v8;
}

void sub_23C293F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropTraceResetModeReboot_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v9 = *(a1 + 40);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v11 = "Failed to set - Reset mode on AP boot - property!";
LABEL_20:
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, v11, __p, 2u);
    return 0;
  }

  memset(__p, 0, 24);
  if (prop::bbtrace::get(a3, __p))
  {
    *buf = -1431655766;
    v6 = util::convert<int>(__p, buf, 0);
    v7 = v6;
    if (v6)
    {
      v8 = *buf;
    }

    else
    {
      v8 = 0;
    }

    if ((__p[23] & 0x80000000) != 0)
    {
LABEL_17:
      operator delete(*__p);
      if ((v7 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
    if ((__p[23] & 0x80000000) != 0)
    {
      goto LABEL_17;
    }
  }

  if ((v7 & 1) == 0)
  {
LABEL_18:
    v9 = *(a1 + 40);
    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *__p = 0;
    v11 = "Failed to get - Reset mode on AP boot - property!";
    goto LABEL_20;
  }

LABEL_12:
  v12 = *(a1 + 100);
  v13 = *(a1 + 40);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v8 == v12)
  {
    if (v14)
    {
      if (v8 == 1)
      {
        v15 = &__p[9];
        __p[23] = 9;
        qmemcpy(__p, "Last_Used", 9);
      }

      else if (v8)
      {
        v15 = &__p[11];
        __p[23] = 11;
        qmemcpy(__p, "UnSpecified", 11);
      }

      else
      {
        v15 = &__p[7];
        __p[23] = 7;
        qmemcpy(__p, "Default", 7);
      }

      *v15 = 0;
      *buf = 136315394;
      *&buf[4] = __p;
      v22 = 1024;
      v23 = v8;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I 'Reset mode on AP Boot' is already %s (%d)", buf, 0x12u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  else
  {
    if (v14)
    {
      if (v12 == 1)
      {
        v16 = &buf[9];
        v24 = 9;
        qmemcpy(buf, "Last_Used", 9);
      }

      else if (v12)
      {
        v16 = &buf[11];
        v24 = 11;
        qmemcpy(buf, "UnSpecified", 11);
      }

      else
      {
        v16 = &buf[7];
        v24 = 7;
        qmemcpy(buf, "Default", 7);
      }

      *v16 = 0;
      if (v8 == 1)
      {
        v17 = &v18[9];
        v20 = 9;
        qmemcpy(v18, "Last_Used", 9);
      }

      else if (v8)
      {
        v17 = v19;
        v20 = 11;
        qmemcpy(v18, "UnSpecified", sizeof(v18));
      }

      else
      {
        v17 = &v18[7];
        v20 = 7;
        qmemcpy(v18, "Default", 7);
      }

      *v17 = 0;
      *__p = 136315906;
      *&__p[4] = buf;
      *&__p[12] = 1024;
      *&__p[14] = v12;
      *&__p[18] = 2080;
      *&__p[20] = v18;
      v26 = 1024;
      v27 = v8;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting - Reset mode on AP boot - from %s (%d) to %s (%d)", __p, 0x22u);
      if (v20 < 0)
      {
        operator delete(*v18);
      }

      if (v24 < 0)
      {
        operator delete(*buf);
      }
    }

    *(a1 + 100) = v8;
  }

  return 1;
}

void sub_23C29438C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropTraceOwnership_sync(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 104) == 1)
  {
    v5 = *(a1 + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v7 = "Setting trace ownership, enabled must be set to false";
LABEL_21:
    _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, v7, &buf, 2u);
    return 0;
  }

  if ((prop::bbtrace::set(a3, a4) & 1) == 0)
  {
    v5 = *(a1 + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v7 = "Failed to set trace ownership property!";
    goto LABEL_21;
  }

  memset(&buf, 0, sizeof(buf));
  v9 = -1431655766;
  if (prop::bbtrace::get(a3, &buf))
  {
    v15 = -1431655766;
    v10 = util::convert<int>(&buf, &v15, 0);
    v11 = v10;
    if (v10)
    {
      v9 = v15;
    }

    else
    {
      v9 = -1431655766;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_18:
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((v11 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }
  }

  if ((v11 & 1) == 0)
  {
LABEL_19:
    v5 = *(a1 + 40);
    result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v7 = "Failed to get trace ownership";
    goto LABEL_21;
  }

LABEL_15:
  v12 = *(a1 + 152);
  v13 = *(a1 + 40);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v9 == v12)
  {
    if (v14)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v9;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Trace ownership is already set to %d", &buf, 8u);
    }
  }

  else
  {
    if (v14)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v12;
      LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
      *(&buf.__r_.__value_.__r.__words[1] + 2) = v9;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Setting trace ownership from %d to %d", &buf, 0xEu);
    }

    *(a1 + 152) = v9;
  }

  return 1;
}