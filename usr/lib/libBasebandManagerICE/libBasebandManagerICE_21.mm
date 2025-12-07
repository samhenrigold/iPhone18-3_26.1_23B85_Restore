void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E48AC0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E48AC0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E48AC0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    v19 = v8;
    if (v8)
    {
      v9 = v8;
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v10 = v5;
        v11 = v7[10];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[10];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = v7[9];
      v13 = std::__shared_weak_count::lock(v11);
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = operator new(0x18uLL);
      *v15 = v7;
      v15[1] = v4;
      v15[2] = v10;
      v16 = xpc_null_create();
      v17 = v7[11];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      xpc_release(v16);
      v9 = v19;
      if (v19)
      {
LABEL_25:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }
      }
    }
  }

  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_297582C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11RadioModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11RadioModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11RadioModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11RadioModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v34 = *a1;
  v1 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v34[2], *MEMORY[0x29EDBEAF8]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, *MEMORY[0x29EDBEFC0], v3);
  xpc_release(object[0]);
  v4 = *MEMORY[0x29EDBEFB8];
  v5 = strlen(*MEMORY[0x29EDBEFB8]);
  v6 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v5 == SHIBYTE(__s1[2]))
    {
      v7 = memcmp(__s1, v4, v5);
      if (!v7)
      {
        goto LABEL_27;
      }
    }

LABEL_11:
    v8 = *MEMORY[0x29EDBF210];
    v9 = strlen(*MEMORY[0x29EDBF210]);
    if ((v6 & 0x80000000) != 0)
    {
      if (v9 == __s1[1])
      {
        if (v9 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], v8, v9))
        {
          goto LABEL_25;
        }
      }
    }

    else if (v9 == v6 && !memcmp(__s1, v8, v9))
    {
      goto LABEL_25;
    }

    v10 = *MEMORY[0x29EDBF4A0];
    v11 = strlen(*MEMORY[0x29EDBF4A0]);
    if ((v6 & 0x80000000) != 0)
    {
      if (v11 != __s1[1])
      {
        goto LABEL_66;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], v10, v11))
      {
        goto LABEL_66;
      }
    }

    else if (v11 != v6 || memcmp(__s1, v10, v11))
    {
      goto LABEL_66;
    }

LABEL_25:
    v12 = *(v1 + 216);
    if (v12)
    {
      ctu::iokit::Controller::stopBatteryInfoNotifications(v12);
    }

    else
    {
      v26 = *(v1 + 104);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object[0]) = 0;
        _os_log_error_impl(&dword_297476000, v26, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", object, 2u);
        if (SHIBYTE(__s1[2]) < 0)
        {
          goto LABEL_71;
        }

        goto LABEL_67;
      }
    }

LABEL_66:
    if (SHIBYTE(__s1[2]) < 0)
    {
      goto LABEL_71;
    }

    goto LABEL_67;
  }

  if (v5 != __s1[1])
  {
    goto LABEL_11;
  }

  if (v5 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v7 = memcmp(__s1[0], v4, v5);
  if (v7)
  {
    goto LABEL_11;
  }

LABEL_27:
  v13 = capabilities::radio::supportsBasebandStateController(v7);
  if (v13)
  {
    RadioModule::getResetProperties_sync(v1);
  }

  v14 = capabilities::abs::supportsBatteryInfoMonitoring(v13);
  if (v14)
  {
    *(v1 + 232) = 0;
    *(v1 + 234) = 0;
    RadioModule::monitorBatteryInfo_sync(v1);
  }

  RadioModule::setRegion_sync(v14);
  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 0x40000000;
  object[2] = ___ZZZN11RadioModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_271;
  object[4] = v1;
  v15 = _Block_copy(object);
  v40 = v15;
  RadioModule::getVersion_sync(v1, &v40);
  if (v15)
  {
    _Block_release(v15);
  }

  v17 = capabilities::abs::supportsCalibrationQuery(v16);
  if (v17)
  {
    if (*(v1 + 136) == 3)
    {
      RadioModule::queryFactoryCalibrationStatus_sync(v1);
    }

    if (*(v1 + 144) == 2)
    {
      RadioModule::queryRFCalibrationStatus_sync(v1);
    }
  }

  v18 = capabilities::abs::supportsFieldTestConfig(v17);
  if (v18)
  {
    RadioModule::queryFieldTestConfig_sync(v1);
  }

  if (!capabilities::abs::supportsResetSPMIEvent(v18))
  {
    goto LABEL_66;
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v19 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v20 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v42, v19);
    v21 = v42;
    v42 = 0uLL;
    v22 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = *(&v42 + 1);
    if (*(&v42 + 1) && !atomic_fetch_add((*(&v42 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v20 = off_2A18CADD8;
  }

  v24 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v20 + 16))(&v35, v20);
  v37 = 0;
  v38 = 0;
  if (v36)
  {
    v38 = std::__shared_weak_count::lock(v36);
    if (v38)
    {
      v37 = v35;
    }

    if (v36)
    {
      std::__shared_weak_count::__release_weak(v36);
    }
  }

  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v37)
  {
    (*(*v37 + 344))(v37);
  }

  v25 = v38;
  if (!v38 || atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (SHIBYTE(__s1[2]) < 0)
  {
LABEL_71:
    operator delete(__s1[0]);
    v27 = v34;
    if (v34)
    {
      goto LABEL_72;
    }

LABEL_68:
    v28 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_76;
  }

LABEL_67:
  v27 = v34;
  if (!v34)
  {
    goto LABEL_68;
  }

LABEL_72:
  xpc_release(v27[2]);
  v27[2] = 0;
  v29 = v27[1];
  if (v29)
  {
    dispatch_group_leave(v29);
    v30 = v27[1];
    if (v30)
    {
      dispatch_release(v30);
    }
  }

  operator delete(v27);
  v28 = a1;
  if (a1)
  {
LABEL_76:
    v31 = v28[2];
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v32 = v28;
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      operator delete(v32);
    }

    else
    {
      operator delete(v28);
    }
  }
}

void sub_297583300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (*(v19 - 49) < 0)
  {
    operator delete(*(v19 - 72));
  }

  std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 16));
    *(v1 + 16) = 0;
    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(uint64_t a1, size_t **a2)
{
  v2 = a2;
  v78 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v4 = (v3 + 112);
  if ((v3 + 112) == a2)
  {
    goto LABEL_10;
  }

  if (*(v3 + 135) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v6 = v2[1];
    }

    v4 = std::string::__assign_no_alias<false>(v4, a2, v6);
LABEL_10:
    if (sys::isHardwareModelChanged(v4))
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    v9 = std::string::__assign_no_alias<true>(v4, *a2, a2[1]);
    if (sys::isHardwareModelChanged(v9))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 128) = a2[2];
    *v4 = v5;
    if (sys::isHardwareModelChanged(v4))
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  isFWVersionChanged = sys::isFWVersionChanged(v2);
  if (!isFWVersionChanged && !sys::isOSVersionChanged(isFWVersionChanged))
  {
    v8 = *MEMORY[0x29EDB8ED8];
    goto LABEL_78;
  }

LABEL_15:
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v75 = v10;
  v76 = v10;
  v73 = v10;
  v74 = v10;
  v71 = v10;
  v72 = v10;
  config::hw::product();
  config::build::version();
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v74, *v2, v2[1]);
  }

  else
  {
    v74 = *v2;
    *&v75 = v2[2];
  }

  Timestamp::Timestamp(&buf);
  Timestamp::asString(v11, 0, 9, &v75 + 8);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, buf.__r_.__value_.__l.__size_);
  pthread_mutex_lock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
  if (!xmmword_2A18CAE28)
  {
    v13 = operator new(0x30uLL);
    DeviceHistoryDB::DeviceHistoryDB(v13);
    v63.__r_.__value_.__r.__words[0] = v13;
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E467C8;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v13;
    v14 = *(&xmmword_2A18CAE28 + 1);
    *&xmmword_2A18CAE28 = v13;
    *(&xmmword_2A18CAE28 + 1) = v12;
    if (!v14)
    {
      buf.__r_.__value_.__r.__words[0] = v13;
      buf.__r_.__value_.__l.__size_ = v12;
      goto LABEL_25;
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  v12 = *(&xmmword_2A18CAE28 + 1);
  v13 = xmmword_2A18CAE28;
  *&buf.__r_.__value_.__l.__data_ = xmmword_2A18CAE28;
  if (*(&xmmword_2A18CAE28 + 1))
  {
LABEL_25:
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
  _DeviceHistoryItem::_DeviceHistoryItem(&v64, &v71);
  DeviceHistoryDB::addDeviceHistory(v13, &v64);
  if (v70 < 0)
  {
    operator delete(__p);
    if ((v68 & 0x80000000) == 0)
    {
LABEL_28:
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_34;
    }
  }

  else if ((v68 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v67);
  if ((v66 & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v65);
  if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    size = buf.__r_.__value_.__l.__size_;
    if (!buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v64.__r_.__value_.__l.__data_);
  size = buf.__r_.__value_.__l.__size_;
  if (!buf.__r_.__value_.__l.__size_)
  {
    goto LABEL_38;
  }

LABEL_36:
  if (!atomic_fetch_add(&size->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

LABEL_38:
  v16 = *(v3 + 104);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  v18 = MEMORY[0x29EDBED38];
  if (v17)
  {
    v19 = *MEMORY[0x29EDBED38];
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v19;
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Broadcasting %s", &buf, 0xCu);
  }

  memset(&v63, 0, sizeof(v63));
  if (sys::isHardwareModelChanged(v17))
  {
    v20 = MEMORY[0x29EDBF798];
  }

  else
  {
    v21 = sys::isFWVersionChanged(v2);
    v20 = MEMORY[0x29EDBF618];
    if (v21)
    {
      v20 = MEMORY[0x29EDBF710];
    }
  }

  std::string::__assign_external(&v63, *v20);
  cf = 0;
  v8 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    v24 = Mutable;
    std::string::__init_copy_ctor_external(&buf, v63.__r_.__value_.__l.__data_, v63.__r_.__value_.__l.__size_);
    Mutable = v24;
  }

  else
  {
    buf = v63;
  }

  ctu::cf::insert<char const*,std::string>(Mutable, *v18, &buf, v8, v23);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v25 = *MEMORY[0x29EDBECC0];
  v26 = strlen(*MEMORY[0x29EDBECC0]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (v26 | 7) + 1;
    }

    v28 = operator new(v30);
    __dst[1] = v27;
    v61 = v30 | 0x8000000000000000;
    __dst[0] = v28;
LABEL_60:
    memmove(v28, v25, v27);
    *(v27 + v28) = 0;
    v29 = cf;
    if (!cf)
    {
      goto LABEL_63;
    }

    goto LABEL_61;
  }

  HIBYTE(v61) = v26;
  v28 = __dst;
  if (v26)
  {
    goto LABEL_60;
  }

  LOBYTE(__dst[0]) = 0;
  v29 = cf;
  if (!cf)
  {
    goto LABEL_63;
  }

LABEL_61:
  v31 = CFGetTypeID(v29);
  if (v31 == CFDictionaryGetTypeID())
  {
    v59 = v29;
    CFRetain(v29);
    goto LABEL_64;
  }

LABEL_63:
  v59 = 0;
LABEL_64:
  aBlock = 0;
  Service::broadcastEvent(v3, __dst, &v59, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(__dst[0]);
    if (!v29)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  if (v29)
  {
LABEL_72:
    CFRelease(v29);
  }

LABEL_73:
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v76) & 0x80000000) == 0)
    {
LABEL_75:
      if ((SBYTE7(v75) & 0x80000000) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_85;
    }
  }

  else if ((SHIBYTE(v76) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

  operator delete(*(&v75 + 1));
  if ((SBYTE7(v75) & 0x80000000) == 0)
  {
LABEL_76:
    if ((SHIBYTE(v73) & 0x80000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_86:
    operator delete(*(&v72 + 1));
    if ((SBYTE7(v72) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_87;
  }

LABEL_85:
  operator delete(v74);
  if (SHIBYTE(v73) < 0)
  {
    goto LABEL_86;
  }

LABEL_77:
  if ((SBYTE7(v72) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

LABEL_87:
  operator delete(v71);
LABEL_78:
  cf = 0;
  v32 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v34 = v32;
  if (!v32)
  {
    v35 = *(v3 + 104);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v71) = 0;
      _os_log_error_impl(&dword_297476000, v35, OS_LOG_TYPE_ERROR, "Failed to create dictionary to update abm domain preferences", &v71, 2u);
    }

    return;
  }

  cf = v32;
  if (*(v2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, *v2, v2[1]);
  }

  else
  {
    v71 = *v2;
    *&v72 = v2[2];
  }

  ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBEC00], &v71, v8, v33);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
  }

  config::build::version();
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = *&buf.__r_.__value_.__l.__data_;
    *&v72 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBEC08], &v71, v8, v36);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_96;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_96:
  v37 = operator new(0x28uLL);
  strcpy(v37, "AppleBasebandServices_Manager-1397");
  std::string::__init_copy_ctor_external(&v71, v37, 0x22uLL);
  ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBE990], &v71, v8, v38);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
  }

  operator delete(v37);
  config::hw::product();
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = *&buf.__r_.__value_.__l.__data_;
    *&v72 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBE988], &v71, v8, v39);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_105;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_105:
  v40 = getpid();
  std::to_string(&buf, v40);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = *&buf.__r_.__value_.__l.__data_;
    *&v72 = *(&buf.__r_.__value_.__l + 2);
  }

  v42 = ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBE6A8], &v71, v8, v41);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_112;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_112;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_112:
  capabilities::radio::radioType(&buf, v42);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = *&buf.__r_.__value_.__l.__data_;
    *&v72 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBEC10], &v71, v8, v43);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_119;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_119;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_119:
  config::hw::getBootArgs(&buf);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v71, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v71 = *&buf.__r_.__value_.__l.__data_;
    *&v72 = *(&buf.__r_.__value_.__l + 2);
  }

  ctu::cf::insert<char const*,std::string>(v34, *MEMORY[0x29EDBEAB8], &v71, v8, v44);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_126;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_126;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_126:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v45 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(&v71);
    v46 = v71;
    v71 = 0uLL;
    v47 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v46;
    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    v48 = *(&v71 + 1);
    if (*(&v71 + 1) && !atomic_fetch_add((*(&v71 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }

    v45 = off_2A18CAFB8;
  }

  buf.__r_.__value_.__r.__words[0] = v45;
  buf.__r_.__value_.__l.__size_ = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v49 = *MEMORY[0x29EDBEA50];
  v50 = strlen(*MEMORY[0x29EDBEA50]);
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
    *(&v71 + 1) = v51;
    *&v72 = v53 | 0x8000000000000000;
    *&v71 = v52;
  }

  else
  {
    BYTE7(v72) = v50;
    v52 = &v71;
    if (!v50)
    {
      goto LABEL_145;
    }
  }

  memmove(v52, v49, v51);
LABEL_145:
  *(v52 + v51) = 0;
  v54 = cf;
  os_unfair_lock_lock(v45 + 10);
  if ((SBYTE7(v72) & 0x80u) == 0)
  {
    v55 = &v71;
  }

  else
  {
    v55 = v71;
  }

  ctu::cf::MakeCFString::MakeCFString(&v63, v55);
  ctu::cf::plist_adapter::set<__CFArray *>(v45, v54, v63.__r_.__value_.__l.__data_, 1);
  MEMORY[0x29C270E70](&v63);
  os_unfair_lock_unlock(v45 + 10);
  if (SBYTE7(v72) < 0)
  {
    operator delete(v71);
  }

  v56 = buf.__r_.__value_.__l.__size_;
  if (!buf.__r_.__value_.__l.__size_ || atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v57 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_153;
  }

  (v56->__on_zero_shared)(v56);
  std::__shared_weak_count::__release_weak(v56);
  v57 = cf;
  if (cf)
  {
LABEL_153:
    CFRelease(v57);
  }
}

void sub_297583FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E48B40;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E48B40;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E48B40;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E48B40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  v6 = a1[3];
  if (v6)
  {
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN11RadioModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN11RadioModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN11RadioModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN11RadioModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<RadioModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 104);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = (v3 + 112);
    if (*(v3 + 135) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", buf, 0xCu);
  }

  if (capabilities::abs::supportsCalibrationQuery(v5))
  {
    v7 = *(v3 + 104);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      v9 = capabilities::radio::supportsFactoryCalibrationV2(v8) ? radio::asStringV2() : radio::asString();
      v10 = v9;
      radio::RFCalibration_t::toString(buf, (v3 + 144));
      v11 = v18 >= 0 ? buf : *buf;
      *v19 = 136315394;
      v20 = v10;
      v21 = 2080;
      v22 = v11;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I \n--- Factory and RF calibration ---\n%s\n%s\n----------------------------------", v19, 0x16u);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (MEMORY[0x29C272BA0](*(v3 + 192)) == MEMORY[0x29EDCAA00])
  {
    v12 = *(v3 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, (v3 + 192));
      v13 = v18 >= 0 ? buf : *buf;
      *v19 = 136315138;
      v20 = v13;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", v19, 0xCu);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  v14 = v2[1];
  if (v14)
  {
    dispatch_group_leave(v14);
    v15 = v2[1];
    if (v15)
    {
      dispatch_release(v15);
    }
  }

  operator delete(v2);
  v16 = a1[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
}

void sub_297584908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3ctu20SharedSynchronizableI11RadioModuleE13connect_eventIN5boost8signals26signalIFvjENS5_19optional_last_valueIvEEiNSt3__14lessIiEENS4_8functionIS7_EENSD_IFvRKNS5_10connectionEjEEENS5_5mutexEEES1_vJjEEEDTcl7connectfp_cvNSA_10shared_ptrIS1_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSQ_SS_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 72);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(unsigned int)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(unsigned int),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(unsigned int)>,boost::function<void ()(boost::signals2::connection const&,unsigned int)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void (),boost::function<void ()>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v19[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[8] = v2;
  v14[9] = v2;
  v14[6] = v2;
  v14[7] = v2;
  v14[4] = v2;
  v14[5] = v2;
  v14[2] = v2;
  v14[3] = v2;
  v14[0] = v2;
  v14[1] = v2;
  v3 = *(a1 + 48);
  v15 = 10;
  v16 = v14;
  v17 = 0;
  v18 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v19, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v19);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v19[0]) == SLODWORD(v19[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v14);
        }

        v7 = 1;
        if (LODWORD(v19[0]) == SLODWORD(v19[0]) >> 31)
        {
LABEL_13:
          v8 = v19[2];
          if (v19[2])
          {
            if (atomic_fetch_add((v19[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v19[1])
        {
          (*(*v19[1] + 8))(v19[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v18);
  v10 = v16;
  if (v16)
  {
    if (v17 > 0)
    {
      v12 = &v16[16 * v17];
      do
      {
        v13 = *(v12 - 1);
        if (v13)
        {
          if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v13 + 16))(v13);
            if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v13 + 24))(v13);
            }
          }
        }

        v12 -= 16;
      }

      while (v12 > v10);
    }

    if (v15 >= 0xB)
    {
      operator delete(v16);
    }
  }

  return v9;
}

void sub_2975853FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>>(char **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E48C80;
  v2 = a1[7];
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

  v3 = a1[5];
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

  *a1 = &unk_2A1E41C60;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(unsigned int)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(unsigned int)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x80000002976A27BDLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x80000002976A27BDLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(unsigned int)>>,void,unsigned int>::invoke(uint64_t a1, int a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v18 = 1;
LABEL_11:
    v17 = 0;
    v22[0] = 0;
    goto LABEL_21;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v12 = v11;
    if (v11)
    {
      v13 = _Block_copy(v11);
      v14 = v13;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v16 = v15;
        if (v15)
        {
          v17 = _Block_copy(v15);
          v22[0] = v17;
          _Block_release(v16);
        }

        else
        {
          v17 = 0;
          v22[0] = 0;
        }

        _Block_release(v14);
      }

      else
      {
        v17 = 0;
        v22[0] = 0;
      }

      _Block_release(v12);
    }

    else
    {
      v17 = 0;
      v22[0] = 0;
    }

    _Block_release(v10);
  }

  else
  {
    v17 = 0;
    v22[0] = 0;
  }

  _Block_release(v8);
  v18 = 0;
LABEL_21:
  v19 = operator new(4uLL);
  *v19 = a2;
  v20 = operator new(0x20uLL);
  *v20 = boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable;
  if (v17)
  {
    v21 = _Block_copy(v17);
  }

  else
  {
    v21 = 0;
  }

  v20[1] = v21;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvjEEEj_block_invoke;
  block[3] = &__block_descriptor_tmp_288_0;
  block[4] = v20;
  block[5] = v19;
  dispatch_async(v4, block);
  if (boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable && (boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable & 1) == 0 && boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable[0])
  {
    (boost::function1<void,unsigned int>::assign_to<dispatch::block<void({block_pointer})>>(dispatch::block<void({block_pointer})>)::stored_vtable[0])(v22, v22, 2);
  }

  if ((v18 & 1) == 0)
  {
    _Block_release(v6);
  }
}

void sub_297585D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  boost::function<void ()>::~function(&a9);
  if ((v10 & 1) == 0)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvjEEEj_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E420B0;
    boost::throw_exception<boost::bad_function_call>(&v8);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1, **(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    operator delete(v7);
  }
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(unsigned int)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x80000002976A27FBLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x80000002976A27FBLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function1<void,unsigned int>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_297585FEC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,unsigned int>::~function1(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E48DD8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E48DD8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::lock(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = *(a1 + 8);
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  v7 = operator new(0x18uLL);
  *v7 = &unk_2A1E48E28;
  v7[1] = v6;
  v7[2] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a2 = v7;
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    *a2 = v7;
  }
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<RadioModule>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E48DD8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<RadioModule>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E48E28;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<RadioModule>>::~foreign_shared_ptr_impl(void *a1)
{
  *a1 = &unk_2A1E48E28;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<RadioModule>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E48E28;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

char **boost::signals2::slot<void ()(unsigned int),boost::function<void ()(unsigned int)>>::~slot(char **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

BOOL ctu::cf::plist_adapter::set<unsigned int>(uint64_t a1, unsigned int a2, const __CFString *a3, int a4)
{
  v7 = *MEMORY[0x29EDB8ED8];
  valuePtr = a2;
  v8 = CFNumberCreate(v7, kCFNumberLongLongType, &valuePtr);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSetValue(a3, v8, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
  if (a4)
  {
    v11 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v10) != 0;
  }

  else
  {
    v11 = 1;
  }

  CFRelease(v9);
  return v11;
}

uint64_t __cxx_global_var_init_200()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_201()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_202()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_203()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_204()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t abm::stats::typeAsString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    strcpy(a2, "UNKNOWN");
    a2[23] = 7;
  }

  else
  {
    strcpy(a2, "Boot Statistics");
    a2[23] = 15;
  }

  return result;
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

void sub_297586CE4(_Unwind_Exception *exception_object)
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

void sub_297587020(_Unwind_Exception *exception_object)
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
    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v8 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_9;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v8 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Failed to create %@ PropertyList: %ld: %s", buf, 0x20u);
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

void sub_2975874D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
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
            if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
            {
              qword_2A18CB250 = 0;
              qword_2A18CB258 = 0;
              __cxa_guard_release(&qword_2A18CB248);
            }

            if (_MergedGlobals_6 == -1)
            {
              v29 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_112;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
              v29 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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
            _os_log_error_impl(&dword_297476000, v29, OS_LOG_TYPE_ERROR, "%s is not a directory, so not moving it at depth %d", &buf, 0x12u);
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
              explicit = atomic_load_explicit(&qword_2A18CB248, memory_order_acquire);
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
          explicit = atomic_load_explicit(&qword_2A18CB248, memory_order_acquire);
          if (v86)
          {
LABEL_200:
            if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
            {
              qword_2A18CB250 = 0;
              qword_2A18CB258 = 0;
              __cxa_guard_release(&qword_2A18CB248);
            }

            if (_MergedGlobals_6 == -1)
            {
              v88 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_264;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
              v88 = qword_2A18CB258;
              if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
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
            _os_log_impl(&dword_297476000, v88, OS_LOG_TYPE_DEFAULT, "Moved %s -> %s", v138, 0x16u);
            if ((SHIBYTE(v127.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_244;
            }

            goto LABEL_262;
          }

LABEL_216:
          if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
          {
            qword_2A18CB250 = 0;
            qword_2A18CB258 = 0;
            __cxa_guard_release(&qword_2A18CB248);
          }

          if (_MergedGlobals_6 == -1)
          {
            v94 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_264;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
            v94 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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
          _os_log_error_impl(&dword_297476000, v94, OS_LOG_TYPE_ERROR, "Failed to move %s -> %s", v138, 0x16u);
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

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 == -1)
  {
    v60 = qword_2A18CB258;
    if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
    v60 = qword_2A18CB258;
    if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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
  _os_log_error_impl(&dword_297476000, v60, OS_LOG_TYPE_ERROR, "Did not find any matching content in source directory %s", &v143, 0xCu);
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

void sub_297588610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52)
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
    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v14 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v14 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297476000, v17, OS_LOG_TYPE_ERROR, v15, p_c, v18);
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

    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v24 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
      {
LABEL_24:
        CC_SHA256_Final(*a4, &c);
        close(v11);
        return;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v24 = qword_2A18CB258;
      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297476000, v24, OS_LOG_TYPE_ERROR, "Failed to read %s : %s (%d, 0x%x)", buf, 0x22u);
    goto LABEL_24;
  }

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 == -1)
  {
    v19 = qword_2A18CB258;
    if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_17;
  }

  dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
  v19 = qword_2A18CB258;
  if (os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
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

void sub_297588C28(_Unwind_Exception *exception_object)
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
    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
    {
      qword_2A18CB250 = 0;
      qword_2A18CB258 = 0;
      __cxa_guard_release(&qword_2A18CB248);
    }

    if (_MergedGlobals_6 == -1)
    {
      v12 = qword_2A18CB258;
      result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
      v12 = qword_2A18CB258;
      result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
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

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 == -1)
  {
    v5 = qword_2A18CB258;
    result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
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
      _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      return 0;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
    v5 = qword_2A18CB258;
    result = os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR);
    if (result)
    {
      goto LABEL_7;
    }
  }

  return result;
}

BOOL util::checkLogFileAge(uint64_t a1, int64_t a2, uint64_t a3)
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
      util::convert<int>(&__dst, &__p.tm_year, 10);
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
      util::convert<int>(&__dst, &__p.tm_mon, 10);
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
      util::convert<int>(&__dst, (&__p | 0xC), 10);
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
      util::convert<int>(&__dst, &__p.tm_hour, 10);
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
      util::convert<int>(&__dst, &__p.tm_min, 10);
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
      util::convert<int>(&__dst, &__p, 10);
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

void sub_29758953C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
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

void sub_297589A10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
  v80 = *MEMORY[0x29EDCA608];
  v75 = 0;
  v76 = 0;
  v77 = 0;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v73[32] = v2;
  v74 = v2;
  *v73 = v2;
  *&v73[16] = v2;
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
    v72[1] = 0;
    v72[2] = 0;
    HIBYTE(v72[2]) = v4 + 2;
    v10 = v72 + 2;
    v72[0] = 10798;
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
    v72[1] = (v4 + 2);
    v72[2] = (v8 | 0x8000000000000000);
    v72[0] = v9;
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
  v12 = SHIBYTE(v72[2]);
  if ((SHIBYTE(v72[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v72[2]) - 21) < 2)
    {
      v13 = (SHIBYTE(v72[2]) + 2);
      v14 = v72;
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

    v23 = v72;
    *(v72 + SHIBYTE(v72[2])) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v12 = v72[1];
  v15 = (v72[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - v72[1] >= 2)
  {
    v23 = v72[0];
    *(v72[0] + v72[1]) = 10798;
    v24 = (v12 + 2);
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
LABEL_36:
      HIBYTE(v72[2]) = v24 & 0x7F;
LABEL_39:
      v22 = &v24[v23];
      goto LABEL_40;
    }

LABEL_38:
    v72[1] = v24;
    goto LABEL_39;
  }

  v13 = v72[1] + 2;
  if ((0x7FFFFFFFFFFFFFF7 - (v72[2] & 0x7FFFFFFFFFFFFFFFLL)) < v72[1] - v15 + 2)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v72[0];
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

  v72[1] = v13;
  v72[2] = (v18 | 0x8000000000000000);
  v72[0] = v21;
  v22 = &v13[v21];
LABEL_40:
  *v22 = 0;
  *&__p[0].__traits_.__loc_.__locale_ = *v72;
  __p[0].__traits_.__col_ = v72[2];
  memset(v72, 0, sizeof(v72));
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v73, __p, 0);
  if ((SHIBYTE(__p[0].__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }

LABEL_45:
    operator delete(v72[0]);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_46;
  }

  operator delete(__p[0].__traits_.__loc_.__locale_);
  if (SHIBYTE(v72[2]) < 0)
  {
    goto LABEL_45;
  }

LABEL_42:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_43:
    v71 = *a1;
    goto LABEL_47;
  }

LABEL_46:
  std::string::__init_copy_ctor_external(&v71, *a1, *(a1 + 8));
LABEL_47:
  std::locale::locale(&v65, v73);
  v66 = *&v73[8];
  v67 = *&v73[24];
  v68 = *&v73[40];
  v69 = v74;
  if (v74)
  {
    atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
  }

  v70 = *(&v74 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v71, &v65, &v75, 0);
  v26 = v69;
  if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
    std::locale::~locale(&v65);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_52:
      if (FilteredFiles)
      {
        goto LABEL_53;
      }

LABEL_57:
      v27 = 0;
      v28 = v74;
      if (!v74)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else
  {
    std::locale::~locale(&v65);
    if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }
  }

  operator delete(v71.__r_.__value_.__l.__data_);
  if (!FilteredFiles)
  {
    goto LABEL_57;
  }

LABEL_53:
  memset(v72, 170, sizeof(v72));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *a1, *(a1 + 8));
  }

  else
  {
    v64 = *a1;
  }

  std::vector<std::string>::vector[abi:ne200100](&v62, &v75);
  util::findBasebandLogInfoFile(&v64.__r_.__value_.__l.__data_, &v62, v72);
  v29 = v62;
  if (v62)
  {
    v30 = v63;
    v31 = v62;
    if (v63 != v62)
    {
      do
      {
        v32 = *(v30 - 1);
        v30 -= 3;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = v62;
    }

    v63 = v29;
    operator delete(v31);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
    v33 = SHIBYTE(v72[2]);
    if (SHIBYTE(v72[2]) >= 0)
    {
      v34 = HIBYTE(v72[2]);
    }

    else
    {
      v34 = v72[1];
    }

    if (v34)
    {
LABEL_73:
      memset(__p, 170, sizeof(__p));
      v35 = *(a1 + 23);
      if (v35 >= 0)
      {
        v36 = *(a1 + 23);
      }

      else
      {
        v36 = *(a1 + 8);
      }

      v37 = v36 + v34;
      if (v36 + v34 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v37 <= 0x16)
      {
        memset(buf, 0, 24);
        v39 = buf;
        buf[23] = v36 + v34;
        if (!v36)
        {
          goto LABEL_104;
        }
      }

      else
      {
        if ((v37 | 7) == 0x17)
        {
          v38 = 25;
        }

        else
        {
          v38 = (v37 | 7) + 1;
        }

        v39 = operator new(v38);
        *&buf[8] = v36 + v34;
        *&buf[16] = v38 | 0x8000000000000000;
        *buf = v39;
        if (!v36)
        {
LABEL_104:
          v42 = &v39[v36];
          if (v33 >= 0)
          {
            v43 = v72;
          }

          else
          {
            v43 = v72[0];
          }

          memmove(v42, v43, v34);
          v42[v34] = 0;
          std::ifstream::basic_ifstream(__p, buf, 8);
          if (buf[23] < 0)
          {
            operator delete(*buf);
            if (__p[2].__traits_.__ct_)
            {
              goto LABEL_109;
            }
          }

          else if (__p[2].__traits_.__ct_)
          {
LABEL_109:
            std::istream::seekg();
            memset(buf, 170, 24);
            v44 = buf;
            support::fs::readCurrentLine(__p, buf);
            v45 = buf[23];
            v47 = *buf;
            v46 = *&buf[8];
            if ((buf[23] & 0x80u) != 0)
            {
              v44 = *buf;
            }

            if ((buf[23] & 0x80u) == 0)
            {
              v46 = buf[23];
            }

            if (v46 >= 35)
            {
              v48 = &v44[v46];
              v49 = v44;
              do
              {
                v50 = memchr(v49, 98, v46 - 34);
                if (!v50)
                {
                  break;
                }

                if (*v50 == 0x6320676F6C206262 && *(v50 + 1) == 0x6F697463656C6C6FLL && *(v50 + 2) == 0x20726F66202D206ELL && *(v50 + 3) == 0x6E67616964737973 && *(v50 + 27) == 0x65736F6E67616964)
                {
                  if (v50 != v48 && v50 - v44 != -1)
                  {
                    v27 = 1;
                    goto LABEL_141;
                  }

                  break;
                }

                v49 = v50 + 1;
                v46 = v48 - v49;
              }

              while (v48 - v49 >= 35);
            }

            v27 = 0;
LABEL_141:
            if (v45 < 0)
            {
              operator delete(v47);
            }

LABEL_143:
            __p[0].__traits_.__loc_.__locale_ = *MEMORY[0x29EDC9518];
            *(&__p[0].__traits_.__loc_.__locale_ + *(__p[0].__traits_.__loc_.__locale_ - 3)) = *(MEMORY[0x29EDC9518] + 24);
            MEMORY[0x29C271A60](&__p[0].__traits_.__col_);
            std::istream::~istream();
            MEMORY[0x29C271DA0](&__p[6].__start_);
            if (SHIBYTE(v72[2]) < 0)
            {
              goto LABEL_144;
            }

            goto LABEL_96;
          }

          if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
          {
            qword_2A18CB250 = 0;
            qword_2A18CB258 = 0;
            __cxa_guard_release(&qword_2A18CB248);
          }

          if (_MergedGlobals_6 == -1)
          {
            v55 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
LABEL_135:
              v27 = 0;
              goto LABEL_143;
            }
          }

          else
          {
            dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
            v55 = qword_2A18CB258;
            if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_135;
            }
          }

          v61 = v72;
          if (SHIBYTE(v72[2]) < 0)
          {
            v61 = v72[0];
          }

          *buf = 136315138;
          *&buf[4] = v61;
          _os_log_error_impl(&dword_297476000, v55, OS_LOG_TYPE_ERROR, "Failed to open info baseband log info file %s", buf, 0xCu);
          goto LABEL_135;
        }
      }

      if (v35 >= 0)
      {
        v41 = a1;
      }

      else
      {
        v41 = *a1;
      }

      memmove(v39, v41, v36);
      goto LABEL_104;
    }
  }

  else
  {
    v33 = SHIBYTE(v72[2]);
    if (SHIBYTE(v72[2]) >= 0)
    {
      v34 = HIBYTE(v72[2]);
    }

    else
    {
      v34 = v72[1];
    }

    if (v34)
    {
      goto LABEL_73;
    }
  }

  if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
  {
    qword_2A18CB250 = 0;
    qword_2A18CB258 = 0;
    __cxa_guard_release(&qword_2A18CB248);
  }

  if (_MergedGlobals_6 != -1)
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
  }

  v40 = qword_2A18CB258;
  v27 = 0;
  if (os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
  {
    if (v6[23] < 0)
    {
      v6 = *v6;
    }

    LODWORD(__p[0].__traits_.__loc_.__locale_) = 136315138;
    *(&__p[0].__traits_.__loc_.__locale_ + 4) = v6;
    _os_log_impl(&dword_297476000, v40, OS_LOG_TYPE_DEFAULT, "No baseband info file found for timestamp %s", __p, 0xCu);
    v27 = 0;
    if (SHIBYTE(v72[2]) < 0)
    {
LABEL_144:
      operator delete(v72[0]);
      v28 = v74;
      if (!v74)
      {
        goto LABEL_145;
      }

      goto LABEL_97;
    }
  }

  else if (SHIBYTE(v72[2]) < 0)
  {
    goto LABEL_144;
  }

LABEL_96:
  v28 = v74;
  if (!v74)
  {
    goto LABEL_145;
  }

LABEL_97:
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

LABEL_145:
  std::locale::~locale(v73);
  v56 = v75;
  if (v75)
  {
    v57 = v76;
    v58 = v75;
    if (v76 != v75)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v75;
    }

    v76 = v56;
    operator delete(v58);
  }

  return v27;
}

void sub_29758A434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, std::locale a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void **a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a31);
  std::vector<std::string>::~vector[abi:ne200100](&a40);
  _Unwind_Resume(a1);
}

void sub_29758A4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
{
  std::vector<std::string>::~vector[abi:ne200100](&a10);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a34);
  std::vector<std::string>::~vector[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

void sub_29758A4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void **a43)
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

void sub_29758A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a17);
  if (a30 < 0)
  {
    JUMPOUT(0x29758A500);
  }

  JUMPOUT(0x29758A504);
}

void sub_29758A51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
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

  JUMPOUT(0x29758A4D8);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x29EDC9558] + 64;
  a1[53] = MEMORY[0x29EDC9558] + 64;
  v5 = *(MEMORY[0x29EDC9518] + 16);
  v6 = *(MEMORY[0x29EDC9518] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x29EDC9558] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x29C271A50](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_29758A708(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C271DA0](v1);
  _Unwind_Resume(a1);
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
                    if ((atomic_load_explicit(&qword_2A18CB248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB248))
                    {
                      qword_2A18CB250 = 0;
                      qword_2A18CB258 = 0;
                      __cxa_guard_release(&qword_2A18CB248);
                    }

                    if (_MergedGlobals_6 == -1)
                    {
                      v85 = qword_2A18CB258;
                      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_156;
                      }
                    }

                    else
                    {
                      dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
                      v85 = qword_2A18CB258;
                      if (!os_log_type_enabled(qword_2A18CB258, OS_LOG_TYPE_DEFAULT))
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
                    _os_log_impl(&dword_297476000, v85, OS_LOG_TYPE_DEFAULT, "Ignoring dump with timestamp %s for sysdiagnose", &v139.__start_.__cntrl_, 0xCu);
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

void sub_29758B4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
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
  v167 = *MEMORY[0x29EDCA608];
  v150 = 0;
  v151 = 0;
  v152 = 0;
  v147 = 0u;
  v148 = 0u;
  v149 = 0xAAAAAAAA3F800000;
  v3 = operator new(0x48uLL);
  v4 = v3;
  strcpy(v3, "[0-9]{4}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2}-[0-9]{2,4}-[0-9]{3}");
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v145[32] = v5;
  v146 = v5;
  *v145 = v5;
  *&v145[16] = v5;
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
  v130 = v3;
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
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v145, &__p, 0);
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
  v143 = v29;
  v144 = v29;
  v142 = v29;
  *&v141[0].__locale_ = v29;
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
    v50 = &v51[v52];
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
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v141, &__p, 0);
  if ((SHIBYTE(__p.__traits_.__col_) & 0x80000000) == 0)
  {
    if ((SHIBYTE(buf[0].__end_cap_.__value_) & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

LABEL_88:
    operator delete(buf[0].__begin_);
    v53 = a1;
    if ((*(a1 + 23) & 0x80000000) == 0)
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
  v53 = a1;
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
LABEL_86:
    v140 = *v53;
    goto LABEL_90;
  }

LABEL_89:
  std::string::__init_copy_ctor_external(&v140, v53->__r_.__value_.__l.__data_, v53->__r_.__value_.__l.__size_);
LABEL_90:
  std::locale::locale(&v134, v145);
  v135 = *&v145[8];
  v136 = *&v145[24];
  v137 = *&v145[40];
  v138 = v146;
  if (v146)
  {
    atomic_fetch_add_explicit((v146 + 8), 1uLL, memory_order_relaxed);
  }

  v139 = *(&v146 + 1);
  support::fs::getFilteredFiles(&v140, &v134, &v150, 0);
  v54 = v138;
  if (!v138 || atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v134);
    if ((SHIBYTE(v140.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_95;
    }

LABEL_98:
    operator delete(v140.__r_.__value_.__l.__data_);
    v55 = v150;
    v131 = v151;
    if (v150 == v151)
    {
      goto LABEL_252;
    }

LABEL_101:
    *&v56 = 0xAAAAAAAAAAAAAAAALL;
    *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v165 = v56;
    v162 = 0xAAAAAAAAAAAAAA00;
    buf[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
    v160 = 0;
    v161 = 0;
    v163 = 0;
    v164 = 0;
    LOBYTE(v165) = 0;
    BYTE8(v165) = 0;
    v166 = 0;
    memset(buf, 0, 41);
    v157 = v56;
    v154 = 0xAAAAAAAAAAAAAA00;
    __p.__start_.__ptr_ = 0xAAAAAAAAAAAAAAAALL;
    __p.__start_.__cntrl_ = 0;
    __p.__end_ = 0;
    v155 = 0;
    v156 = 0;
    LOBYTE(v157) = 0;
    BYTE8(v157) = 0;
    v158 = 0;
    memset(&__p, 0, 40);
    second = *(&v55->matched + 7);
    if (second >= 0)
    {
      first = v55;
    }

    else
    {
      first = v55->first;
    }

    if (second < 0)
    {
      second = v55->second;
    }

    v59 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v141, first, &second[first], &__p, 0);
    v60 = *(&v55->matched + 7);
    if (v60 >= 0)
    {
      v61 = v55;
    }

    else
    {
      v61 = v55->first;
    }

    if (v60 < 0)
    {
      v60 = v55->second;
    }

    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(buf, v61, &v60[v61], &__p, 0);
    if (__p.__traits_.__loc_.__locale_)
    {
      __p.__traits_.__ct_ = __p.__traits_.__loc_.__locale_;
      operator delete(__p.__traits_.__loc_.__locale_);
    }

    if (!v59)
    {
      goto LABEL_188;
    }

    p_matched = &buf[0].__begin_->matched;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_matched = &buf[1].__end_cap_;
    }

    if (*p_matched != 1)
    {
      v70 = 0;
      v71 = 0;
      v69 = 0;
      __dst = 0uLL;
      v133 = 0;
LABEL_127:
      if ((v69 & 0x80u) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = v71;
      }

      if ((v69 & 0x80u) == 0)
      {
        v73 = v69;
      }

      else
      {
        v73 = v70;
      }

      v74 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&__p, p_dst, v73);
      v75 = v74;
      v76 = *(&v147 + 1);
      if (!*(&v147 + 1))
      {
        v78 = 0xAAAAAAAAAAAAAAAALL;
        goto LABEL_181;
      }

      v77 = vcnt_s8(*(&v147 + 8));
      v77.i16[0] = vaddlv_u8(v77);
      if (v77.u32[0] > 1uLL)
      {
        v78 = v74;
        if (v74 >= *(&v147 + 1))
        {
          v78 = v74 % *(&v147 + 1);
        }
      }

      else
      {
        v78 = (*(&v147 + 1) - 1) & v74;
      }

      v79 = *(v147 + 8 * v78);
      if (!v79)
      {
        goto LABEL_181;
      }

      v80 = *v79;
      if (!*v79)
      {
        goto LABEL_181;
      }

      v81 = HIBYTE(v133);
      if (v133 >= 0)
      {
        v82 = HIBYTE(v133);
      }

      else
      {
        v82 = *(&__dst + 1);
      }

      if (v133 >= 0)
      {
        v83 = &__dst;
      }

      else
      {
        v83 = __dst;
      }

      if (v77.u32[0] < 2uLL)
      {
        do
        {
          v88 = v80[1];
          if (v88 == v75)
          {
            v89 = *(v80 + 39);
            v90 = v89;
            if (v89 < 0)
            {
              v89 = v80[3];
            }

            if (v89 == v82)
            {
              v91 = v90 >= 0 ? (v80 + 2) : v80[2];
              if (!memcmp(v91, v83, v82))
              {
                v4 = v130;
                goto LABEL_173;
              }
            }
          }

          else if ((v88 & (v76 - 1)) != v78)
          {
            break;
          }

          v80 = *v80;
        }

        while (v80);
        v4 = v130;
LABEL_181:
        v93 = operator new(0x28uLL);
        __p.__traits_.__loc_.__locale_ = v93;
        __p.__traits_.__ct_ = &v147;
        __p.__traits_.__col_ = 1;
        *v93 = 0;
        *(v93 + 1) = v75;
        *(v93 + 1) = __dst;
        *(v93 + 4) = v133;
        __dst = 0uLL;
        v133 = 0;
        v94 = (*(&v148 + 1) + 1);
        if (v76 && (*&v149 * v76) >= v94)
        {
          v95 = v147;
          v96 = *(v147 + 8 * v78);
          if (v96)
          {
            goto LABEL_184;
          }

LABEL_232:
          *v93 = v148;
          *&v148 = v93;
          *(v95 + 8 * v78) = &v148;
          if (*v93)
          {
            v115 = *(*v93 + 8);
            if ((v76 & (v76 - 1)) != 0)
            {
              if (v115 >= v76)
              {
                v115 %= v76;
              }

              v96 = (v95 + 8 * v115);
            }

            else
            {
              v96 = (v95 + 8 * (v115 & (v76 - 1)));
            }

LABEL_185:
            *v96 = v93;
          }

          ++*(&v148 + 1);
          if (v133 < 0)
          {
            goto LABEL_187;
          }

          goto LABEL_188;
        }

        v97 = (v76 & (v76 - 1)) != 0;
        if (v76 < 3)
        {
          v97 = 1;
        }

        v98 = v97 | (2 * v76);
        v99 = vcvtps_u32_f32(v94 / *&v149);
        if (v98 <= v99)
        {
          prime = v99;
        }

        else
        {
          prime = v98;
        }

        if (prime == 1)
        {
          prime = 2;
        }

        else if ((prime & (prime - 1)) != 0)
        {
          prime = std::__next_prime(prime);
          v76 = *(&v147 + 1);
        }

        if (prime <= v76)
        {
          if (prime >= v76)
          {
            goto LABEL_230;
          }

          v109 = vcvtps_u32_f32(*(&v148 + 1) / *&v149);
          if (v76 < 3 || (v110 = vcnt_s8(v76), v110.i16[0] = vaddlv_u8(v110), v110.u32[0] > 1uLL))
          {
            v109 = std::__next_prime(v109);
          }

          else
          {
            v111 = 1 << -__clz(v109 - 1);
            if (v109 >= 2)
            {
              v109 = v111;
            }
          }

          if (prime <= v109)
          {
            prime = v109;
          }

          if (prime < v76)
          {
            if (prime)
            {
              goto LABEL_200;
            }

            v116 = v147;
            *&v147 = 0;
            if (v116)
            {
              operator delete(v116);
            }

            v76 = 0;
            *(&v147 + 1) = 0;
            v114 = -1;
            goto LABEL_231;
          }

          v76 = *(&v147 + 1);
          v114 = *(&v147 + 1) - 1;
          if ((*(&v147 + 1) & (*(&v147 + 1) - 1)) == 0)
          {
            goto LABEL_231;
          }

          goto LABEL_247;
        }

LABEL_200:
        if (prime >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v101 = operator new(8 * prime);
        v102 = v147;
        *&v147 = v101;
        if (v102)
        {
          operator delete(v102);
          v101 = v147;
        }

        *(&v147 + 1) = prime;
        bzero(v101, 8 * prime);
        v103 = v148;
        if (!v148)
        {
          goto LABEL_229;
        }

        v104 = *(v148 + 8);
        v105 = prime - 1;
        if ((prime & (prime - 1)) == 0)
        {
          v106 = v104 & v105;
          *(v101 + v106) = &v148;
          while (1)
          {
            v107 = *v103;
            if (!*v103)
            {
              break;
            }

            v108 = v107[1] & v105;
            if (v108 == v106)
            {
              v103 = *v103;
            }

            else if (*(v101 + v108))
            {
              *v103 = *v107;
              *v107 = **(v101 + v108);
              **(v101 + v108) = v107;
            }

            else
            {
              *(v101 + v108) = v103;
              v103 = v107;
              v106 = v108;
            }
          }

          goto LABEL_229;
        }

        if (v104 >= prime)
        {
          v104 %= prime;
        }

        *(v101 + v104) = &v148;
        v112 = *v103;
        if (!*v103)
        {
LABEL_229:
          v76 = prime;
LABEL_230:
          v114 = v76 - 1;
          if ((v76 & (v76 - 1)) == 0)
          {
LABEL_231:
            v78 = v114 & v75;
            v95 = v147;
            v96 = *(v147 + 8 * v78);
            if (!v96)
            {
              goto LABEL_232;
            }

LABEL_184:
            *v93 = *v96;
            goto LABEL_185;
          }

LABEL_247:
          if (v75 >= v76)
          {
            v78 = v75 % v76;
            v95 = v147;
            v96 = *(v147 + 8 * (v75 % v76));
            if (!v96)
            {
              goto LABEL_232;
            }
          }

          else
          {
            v78 = v75;
            v95 = v147;
            v96 = *(v147 + 8 * v75);
            if (!v96)
            {
              goto LABEL_232;
            }
          }

          goto LABEL_184;
        }

        while (1)
        {
LABEL_224:
          v113 = v112[1];
          if (v113 >= prime)
          {
            v113 %= prime;
          }

          if (v113 == v104)
          {
            goto LABEL_223;
          }

          if (*(v101 + v113))
          {
            break;
          }

          *(v101 + v113) = v103;
          v103 = v112;
          v112 = *v112;
          v104 = v113;
          if (!v112)
          {
            goto LABEL_229;
          }
        }

        *v103 = *v112;
        *v112 = **(v101 + v113);
        **(v101 + v113) = v112;
        v112 = v103;
LABEL_223:
        v103 = v112;
        v112 = *v112;
        if (!v112)
        {
          goto LABEL_229;
        }

        goto LABEL_224;
      }

      while (1)
      {
        v84 = v80[1];
        if (v84 == v75)
        {
          v85 = *(v80 + 39);
          v86 = v85;
          if (v85 < 0)
          {
            v85 = v80[3];
          }

          if (v85 == v82)
          {
            v87 = v86 >= 0 ? (v80 + 2) : v80[2];
            if (!memcmp(v87, v83, v82))
            {
LABEL_173:
              if (v81 < 0)
              {
LABEL_187:
                operator delete(__dst);
              }

LABEL_188:
              if (buf[0].__begin_)
              {
                buf[0].__end_ = buf[0].__begin_;
                operator delete(buf[0].__begin_);
              }

              if (++v55 == v131)
              {
                goto LABEL_252;
              }

              goto LABEL_101;
            }
          }
        }

        else
        {
          if (v84 >= v76)
          {
            v84 %= v76;
          }

          if (v84 != v78)
          {
            goto LABEL_181;
          }
        }

        v80 = *v80;
        if (!v80)
        {
          goto LABEL_181;
        }
      }
    }

    v63 = &buf[1];
    if (buf[0].__end_ != buf[0].__begin_)
    {
      v63 = buf[0].__begin_;
    }

    i = v63->first.__i_;
    p_i = &buf[0].__begin_->second.__i_;
    if (buf[0].__end_ == buf[0].__begin_)
    {
      p_i = &buf[1].__end_;
    }

    v66 = *p_i;
    v67 = *p_i - i;
    if (v67 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v67 > 0x16)
    {
      if ((v67 | 7) == 0x17)
      {
        v92 = 25;
      }

      else
      {
        v92 = (v67 | 7) + 1;
      }

      v68 = operator new(v92);
      *(&__dst + 1) = v67;
      v133 = v92 | 0x8000000000000000;
      *&__dst = v68;
      if (v66 == i)
      {
        goto LABEL_125;
      }
    }

    else
    {
      HIBYTE(v133) = *p_i - i;
      v68 = &__dst;
      if (v66 == i)
      {
LABEL_125:
        *(v68 + v67) = 0;
        v69 = HIBYTE(v133);
        v70 = *(&__dst + 1);
        v71 = __dst;
        goto LABEL_127;
      }
    }

    memmove(v68, i, v67);
    goto LABEL_125;
  }

  (v54->__on_zero_shared)(v54);
  std::__shared_weak_count::__release_weak(v54);
  std::locale::~locale(&v134);
  if (SHIBYTE(v140.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_98;
  }

LABEL_95:
  v55 = v150;
  v131 = v151;
  if (v150 != v151)
  {
    goto LABEL_101;
  }

LABEL_252:
  v117 = *(&v148 + 1);
  v118 = v144;
  if (v144 && !atomic_fetch_add((v144 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v118->__on_zero_shared)(v118);
    std::__shared_weak_count::__release_weak(v118);
  }

  std::locale::~locale(v141);
  v119 = v146;
  if (v146 && !atomic_fetch_add((v146 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v119->__on_zero_shared)(v119);
    std::__shared_weak_count::__release_weak(v119);
  }

  std::locale::~locale(v145);
  operator delete(v4);
  v120 = v148;
  if (v148)
  {
    do
    {
      v127 = *v120;
      if (*(v120 + 39) < 0)
      {
        v128 = v120;
        operator delete(v120[2]);
        v120 = v128;
      }

      operator delete(v120);
      v120 = v127;
    }

    while (v127);
  }

  v121 = v147;
  *&v147 = 0;
  if (v121)
  {
    operator delete(v121);
  }

  v122 = v150;
  if (v150)
  {
    v123 = v151;
    v124 = v150;
    if (v151 != v150)
    {
      do
      {
        v125 = *(v123 - 1);
        v123 -= 3;
        if (v125 < 0)
        {
          operator delete(*v123);
        }
      }

      while (v123 != v122);
      v124 = v150;
    }

    v151 = v122;
    operator delete(v124);
  }

  return v117;
}

void sub_29758C780(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::unordered_set<std::string>::~unordered_set[abi:ne200100](&v3);
  std::vector<std::string>::~vector[abi:ne200100](&v4);
  _Unwind_Resume(a1);
}

void sub_29758C7B0(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29758C7B8);
  }

  JUMPOUT(0x29758C634);
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
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
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
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
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