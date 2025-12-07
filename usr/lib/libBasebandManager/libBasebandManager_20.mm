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
        _os_log_error_impl(&dword_296FF7000, v26, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", object, 2u);
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
  v20 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v42, v19);
    v21 = v42;
    v42 = 0uLL;
    v22 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v21;
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

    v20 = off_2A18B7390;
  }

  v24 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_2970FCB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (*(v19 - 49) < 0)
  {
    operator delete(*(v19 - 72));
  }

  std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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
  if (!xmmword_2A18B73E0)
  {
    v13 = operator new(0x30uLL);
    DeviceHistoryDB::DeviceHistoryDB(v13);
    v63.__r_.__value_.__r.__words[0] = v13;
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E29F28;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v13;
    v14 = *(&xmmword_2A18B73E0 + 1);
    *&xmmword_2A18B73E0 = v13;
    *(&xmmword_2A18B73E0 + 1) = v12;
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

  v12 = *(&xmmword_2A18B73E0 + 1);
  v13 = xmmword_2A18B73E0;
  *&buf.__r_.__value_.__l.__data_ = xmmword_2A18B73E0;
  if (*(&xmmword_2A18B73E0 + 1))
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
    _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I Broadcasting %s", &buf, 0xCu);
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
      _os_log_error_impl(&dword_296FF7000, v35, OS_LOG_TYPE_ERROR, "Failed to create dictionary to update abm domain preferences", &v71, 2u);
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
  v45 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&v71);
    v46 = v71;
    v71 = 0uLL;
    v47 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v46;
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

    v45 = off_2A18B75C0;
  }

  buf.__r_.__value_.__r.__words[0] = v45;
  buf.__r_.__value_.__l.__size_ = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
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
  MEMORY[0x29C26B130](&v63);
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

void sub_2970FD7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  *v1 = &unk_2A1E265A8;
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[3];
    v4 = v1[2];
    if (v3 == v2)
    {
LABEL_17:
      v1[3] = v2;
      operator delete(v4);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v3 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v3 - 6));
      if ((*(v3 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v5 = v3 - 12;
        if (*(v3 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v3 - 9));
      v5 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
LABEL_14:
        operator delete(*v5);
      }

LABEL_5:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = v1[2];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  MEMORY[0x29C26B020](v1 + 1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297229C4BLL)
  {
    if (((v2 & 0x8000000297229C4BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297229C4BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297229C4BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<DeviceHistoryDB>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2A1E265A8;
    v3 = v1[2];
    if (!v3)
    {
LABEL_17:
      MEMORY[0x29C26B020](v1 + 1);
      operator delete(v1);
      return v2;
    }

    v4 = v1[3];
    v5 = v1[2];
    if (v4 == v3)
    {
LABEL_16:
      v1[3] = v3;
      operator delete(v5);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v4 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v4 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v4 - 6));
      if ((*(v4 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v6 = v4 - 12;
        if (*(v4 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v4 - 9));
      v6 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
LABEL_14:
        operator delete(*v6);
      }

LABEL_5:
      v4 = v6;
      if (v6 == v3)
      {
        v5 = v1[2];
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_1,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E29F88;
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
  *a1 = &unk_2A1E29F88;
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
  *result = &unk_2A1E29F88;
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
  *a2 = &unk_2A1E29F88;
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
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", buf, 0xCu);
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
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I \n--- Factory and RF calibration ---\n%s\n%s\n----------------------------------", v19, 0x16u);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (MEMORY[0x29C26CE60](*(v3 + 192)) == MEMORY[0x29EDCAA00])
  {
    v12 = *(v3 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, (v3 + 192));
      v13 = v18 >= 0 ? buf : *buf;
      *v19 = 136315138;
      v20 = v13;
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", v19, 0xCu);
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

void sub_2970FE3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_2970FEED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
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

uint64_t boost::weak_ptr<void>::~weak_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      v2 = result;
      (*(*v1 + 24))(v1);
      return v2;
    }
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
  *a1 = &unk_2A1E2A0C8;
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

  *a1 = &unk_2A1E24C40;
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
      if (v9 == (0x800000029722A0BELL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029722A0BELL & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_2970FF948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
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
    v8.__vftable = &unk_2A1E24E88;
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
      if (v8 == (0x800000029722A0FCLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x800000029722A0FCLL & 0x7FFFFFFFFFFFFFFFLL)))
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

void sub_2970FFC28(void *a1)
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
  *result = &unk_2A1E2A220;
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
  *a1 = &unk_2A1E2A220;
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
  *v7 = &unk_2A1E2A270;
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
  *result = &unk_2A1E2A220;
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
  *result = &unk_2A1E2A270;
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
  *a1 = &unk_2A1E2A270;
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
  *result = &unk_2A1E2A270;
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
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_201()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_202()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_203()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_204()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void *Capabilities::create_default_global@<X0>(void *a1@<X8>)
{
  v2 = operator new(1uLL);
  *a1 = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E2A2B0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  a1[1] = result;
  return result;
}

uint64_t Capabilities::isCMHandDetectionSupported(Capabilities *this)
{
  capabilities::abs::supportsCMHandDetection(this);
  v1 = MEMORY[0x29EDB93A8];

  return [v1 isCallHandednessAvailable];
}

void std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722A24ALL)
  {
    if (((v2 & 0x800000029722A24ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722A24ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722A24ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v57 = 0;
        v58 = 0;
        v59 = 0;
        support::fs::readDir(v5, &v57);
        v20 = v57;
        v53 = v58;
        if (v57 == v58)
        {
          updated = 0;
          if (v57)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v57 + 24);
        while (1)
        {
          memset(&v56, 170, sizeof(v56));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v56, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v56.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v56.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = v5[23];
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
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

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          if (v24 >= 0)
          {
            v29 = v5;
          }

          else
          {
            v29 = *v5;
          }

          memmove(p_dst, v29, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = &v56;
          }

          else
          {
            v30 = v56.__r_.__value_.__r.__words[0];
          }

          if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v56.__r_.__value_.__l.__size_;
          }

          v32 = std::string::append(&__dst, v30, size);
          v33 = *&v32->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v33;
          v32->__r_.__value_.__l.__size_ = 0;
          v32->__r_.__value_.__r.__words[2] = 0;
          v32->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v34 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
            if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v34 == 1)
              {
                if (v56.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v34 == 2 && LOWORD(v56.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v34 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
            if ((*(&v56.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v56.__r_.__value_.__l.__size_ == 1)
          {
            if (*v56.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v56.__r_.__value_.__l.__size_ == 2 && *v56.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v35.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v35.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v35;
          *__dst.st_qspare = v35;
          __dst.st_birthtimespec = v35;
          *&__dst.st_size = v35;
          __dst.st_mtimespec = v35;
          __dst.st_ctimespec = v35;
          *&__dst.st_uid = v35;
          __dst.st_atimespec = v35;
          *&__dst.st_dev = v35;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v46 = &__p) : (v46 = __p.__r_.__value_.__r.__words[0]), (v47 = opendir(v46), (v48 = v47) == 0) || (v49 = readdir(v47), closedir(v48), !v49)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v37 = &__p;
            }

            else
            {
              v37 = __p.__r_.__value_.__r.__words[0];
            }

            v38 = strlen(v37);
            if (v38 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v39 = v38;
            if (v38 >= 0x17)
            {
              if ((v38 | 7) == 0x17)
              {
                v41 = 25;
              }

              else
              {
                v41 = (v38 | 7) + 1;
              }

              v40 = operator new(v41);
              __dst.st_ino = v39;
              *&__dst.st_uid = v41 | 0x8000000000000000;
              *&__dst.st_dev = v40;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v38;
              v40 = &__dst;
              if (!v38)
              {
LABEL_84:
                v40[v39] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v43 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v44 = &__dst;
                }

                else
                {
                  v44 = *&__dst.st_dev;
                }

                updated = chown(v44, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v45 = v43;
LABEL_89:
                  operator delete(v45);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v40, v37, v39);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v54, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v54 = __p;
          }

          updated = support::fs::updateOwner(&v54, a2, a3);
          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            v45 = v54.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v56.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v53)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v57;
            if (!v57)
            {
              return updated;
            }

LABEL_108:
            v50 = v58;
            v15 = v20;
            if (v58 != v20)
            {
              do
              {
                v51 = *(v50 - 1);
                v50 -= 3;
                if (v51 < 0)
                {
                  operator delete(*v50);
                }
              }

              while (v50 != v20);
              v15 = v57;
            }

            v58 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_297100D2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (a1)
    {
      return 0;
    }

    HIBYTE(__p[2]) = 6;
    strcpy(__p, "mobile");
    v5 = getpwnam(__p);
    if (v5)
    {
LABEL_4:
      *a2 = v5->pw_uid;
      *a3 = v5->pw_gid;
      return 1;
    }
  }

  if ((atomic_load_explicit(&qword_2A18B78C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78C0))
  {
    qword_2A18B78C8 = 0;
    qword_2A18B78D0 = 0;
    __cxa_guard_release(&qword_2A18B78C0);
  }

  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_8);
  }

  v7 = qword_2A18B78D0;
  if (os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
  {
    v8 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v8 = __p[0];
    }

    *buf = 136315138;
    v11 = v8;
    _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
    if ((HIBYTE(__p[2]) & 0x80) == 0)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if ((HIBYTE(__p[2]) & 0x80) != 0)
  {
LABEL_11:
    operator delete(__p[0]);
  }

  return 0;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v7 | 7) + 1;
    }

    v9 = operator new(v10);
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_2A18B78C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78C0))
    {
      qword_2A18B78C8 = 0;
      qword_2A18B78D0 = 0;
      __cxa_guard_release(&qword_2A18B78C0);
    }

    if (_MergedGlobals_9 == -1)
    {
      v18 = qword_2A18B78D0;
      if (!os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_9, &__block_literal_global_8);
      v18 = qword_2A18B78D0;
      if (!os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
      {
        return 0;
      }
    }

    if (a1[23] >= 0)
    {
      v30 = a1;
    }

    else
    {
      v30 = *a1;
    }

    *__dst = 136315138;
    *&__dst[4] = v30;
    _os_log_error_impl(&dword_296FF7000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    return 0;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A18B78C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78C0))
  {
    qword_2A18B78C8 = 0;
    qword_2A18B78D0 = 0;
    __cxa_guard_release(&qword_2A18B78C0);
  }

  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_8);
    v28 = qword_2A18B78D0;
    if (!os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v31 = a2;
    }

    else
    {
      v31 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_296FF7000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_2A18B78D0;
  if (os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

  return v19;
}

void sub_297101538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, void **a2)
{
  v17[89] = *MEMORY[0x29EDCA608];
  memset(v17, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v17, a1, 12);
  if (v17[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v17[88], std::istream::seekg(), v4) && !*(&v17[4] + *(v17[0] - 24)))
  {
    v8 = *a2;
    v7 = a2[1];
    v9 = v7 - *a2;
    v10 = v4 - v9;
    if (v4 <= v9)
    {
      if (v4 < v9)
      {
        a2[1] = &v8[v4];
      }
    }

    else
    {
      v11 = a2[2];
      if (v11 - v7 >= v10)
      {
        v16 = &v7[v10];
        bzero(v7, v4 - v9);
        a2[1] = v16;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
        }

        v12 = v11 - v8;
        v13 = 2 * v12;
        if (2 * v12 <= v4)
        {
          v13 = v4;
        }

        if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v14 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        v15 = operator new(v14);
        bzero(&v15[v9], v4 - v9);
        memcpy(v15, v8, v9);
        *a2 = v15;
        a2[1] = &v15[v4];
        a2[2] = &v15[v14];
        if (v8)
        {
          operator delete(v8);
        }
      }
    }

    std::istream::read();
    v5 = v17[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v17 + *(v17[0] - 24)), *(&v17[4] + *(v17[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v17[0] = *MEMORY[0x29EDC9518];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C26BCF0](&v17[2]);
  std::istream::~istream();
  MEMORY[0x29C26C030](&v17[53]);
  return v5;
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
  MEMORY[0x29C26BCE0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_2971019E0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x29C26C030](v1);
  _Unwind_Resume(a1);
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v5;
    std::istream::seekg();
  }

  return v2 != 0;
}

{
  v7[89] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (!v2)
  {
    return 0;
  }

  memset(v7, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v7, a1, 8);
  v5 = v7[17] != 0;
  if (v7[17])
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v7[88];
    std::istream::seekg();
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v7 + *(v7[0] - 24)), *(&v7[4] + *(v7[0] - 24)) | 4);
    }
  }

  v7[0] = *MEMORY[0x29EDC9518];
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C26BCF0](&v7[2]);
  std::istream::~istream();
  MEMORY[0x29C26C030](&v7[53]);
  return v5;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x29EDC9518];
  v3 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C26BCF0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x29C26C030](a1 + 53);
  return a1;
}

uint64_t support::fs::loadFile(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fseek(v3, 0, 2) || (v6 = MEMORY[0x29C26C5C0](v4), v6 == -1))
  {
    v5 = 0;
  }

  else
  {
    v7 = v6;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v7 - v10;
    if (v7 <= v10)
    {
      if (v7 < v10)
      {
        a2[1] = &v9[v7];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v7 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = v7;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v7 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v7];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    rewind(v4);
    v18 = *a2;
    v5 = 1;
    fread(v18, v7, 1uLL, v4);
  }

  fclose(v4);
  return v5;
}

BOOL support::fs::fileExists(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v3) == 0;
}

void support::fs::createUniqueFilename(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v230 = v3;
  v228 = v3;
  v229 = v3;
  *&v227[0].__locale_ = v3;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v227, "^([/_\\-[:alnum:]]*)(.*)", 0);
  memset(&v226, 170, sizeof(v226));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, *a1, *(a1 + 8));
  }

  else
  {
    v226 = *a1;
  }

  v4 = 0;
  v213 = a1;
  v223 = &v233[24];
  while (1)
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v231.st_blksize = v5;
    *v231.st_qspare = v5;
    v231.st_birthtimespec = v5;
    *&v231.st_size = v5;
    v231.st_mtimespec = v5;
    v231.st_ctimespec = v5;
    *&v231.st_uid = v5;
    v231.st_atimespec = v5;
    *&v231.st_dev = v5;
    if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v226;
    }

    else
    {
      v6 = v226.__r_.__value_.__r.__words[0];
    }

    if (stat(v6, &v231))
    {
      *a2 = v226;
      goto LABEL_384;
    }

    if (!std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a1, v227, 0))
    {
      break;
    }

    v7 = v4 + 1;
    memset(__p, 170, 24);
    std::to_string(&v232, v7);
    v8 = std::string::insert(&v232, 0, "$1-", 3uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&v231.st_uid = *(&v8->__r_.__value_.__l + 2);
    *&v231.st_dev = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    st_gid_high = SHIBYTE(v231.st_gid);
    v214 = v7;
    if ((SHIBYTE(v231.st_gid) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v231.st_gid) - 21) >= 2)
      {
        v21 = &v231;
        *(&v231.st_dev + SHIBYTE(v231.st_gid)) = 12836;
        v22 = st_gid_high + 2;
        if (SHIBYTE(v231.st_gid) < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v11 = SHIBYTE(v231.st_gid) + 2;
      v12 = &v231;
      v13 = 22;
LABEL_17:
      v14 = 2 * v13;
      if (v11 > 2 * v13)
      {
        v14 = v11;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v16 = v15;
      }

      else
      {
        v16 = 23;
      }

      v17 = v13 == 22;
      goto LABEL_26;
    }

    st_gid_high = v231.st_ino;
    v13 = (*&v231.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v13 - v231.st_ino >= 2)
    {
      v21 = *&v231.st_dev;
      *(*&v231.st_dev + v231.st_ino) = 12836;
      v22 = st_gid_high + 2;
      if (SHIBYTE(v231.st_gid) < 0)
      {
LABEL_34:
        v231.st_ino = v22;
        goto LABEL_35;
      }

LABEL_32:
      HIBYTE(v231.st_gid) = v22 & 0x7F;
LABEL_35:
      v20 = v21 + v22;
      goto LABEL_36;
    }

    v11 = v231.st_ino + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&v231.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v231.st_ino + 2 - v13)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = *&v231.st_dev;
    if (v13 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_17;
    }

    v17 = 0;
    v16 = 0x7FFFFFFFFFFFFFF7;
LABEL_26:
    v18 = operator new(v16);
    v19 = v18;
    if (st_gid_high)
    {
      memmove(v18, v12, st_gid_high);
    }

    *&v19[st_gid_high] = 12836;
    if (!v17)
    {
      operator delete(v12);
    }

    v231.st_ino = v11;
    *&v231.st_uid = v16 | 0x8000000000000000;
    *&v231.st_dev = v19;
    v20 = &v19[v11];
    a1 = v213;
LABEL_36:
    *v20 = 0;
    *__p = *&v231.st_dev;
    __p[2] = *&v231.st_uid;
    memset(&v231, 0, 24);
    if ((v233[7] & 0x80000000) != 0)
    {
      operator delete(v232);
    }

    memset(&v224, 0, sizeof(v224));
    v23 = *(a1 + 23);
    if (v23 >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 23);
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v26 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v26 = __p[0];
    }

    __s = v26;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v231.st_gen = v27;
    v231.st_size = 0xAAAAAAAAAAAAAAAALL;
    v231.st_ctimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *(&v231.st_rdev + 1) = -1431655766;
    *&v231.st_dev = v24;
    v231.st_ino = v24 + v25;
    *&v231.st_uid = v227;
    v231.st_rdev = 0;
    memset(&v231.st_birthtimespec, 0, 17);
    memset(&v231.st_blocks, 0, 17);
    LOBYTE(v231.st_qspare[0]) = 0;
    v231.st_qspare[1] = 0;
    memset(&v231.st_atimespec, 0, 40);
    v28 = v223;
    *(v223 + 2) = v27;
    v28[3] = v27;
    *v28 = v27;
    v28[1] = v27;
    v234 = 0uLL;
    v235 = 0;
    v236 = 0uLL;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v232 = 0u;
    memset(v233, 0, 25);
    std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v227, v24, (v24 + v25), &v232, 0);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v231.st_atimespec, v24, (v24 + v25), &v232, 0);
    if (v232)
    {
      *(&v232 + 1) = v232;
      operator delete(v232);
    }

    tv_sec = v231.st_atimespec.tv_sec;
    if (v231.st_atimespec.tv_nsec == v231.st_atimespec.tv_sec)
    {
      if (!v25)
      {
        goto LABEL_373;
      }

      while (2)
      {
        while (2)
        {
          first = v24->first;
          v201 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
            {
              *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
              v199 = &v224 + v201;
              *v199 = first;
              v199[1] = 0;
              v24 = (v24 + 1);
              if (!--v25)
              {
                goto LABEL_372;
              }

              continue;
            }

            v202 = &v224;
            size = 22;
LABEL_353:
            if (size + 1 > 2 * size)
            {
              v204 = size + 1;
            }

            else
            {
              v204 = 2 * size;
            }

            if ((v204 | 7) == 0x17)
            {
              v205 = 25;
            }

            else
            {
              v205 = (v204 | 7) + 1;
            }

            if (v204 >= 0x17)
            {
              v206 = v205;
            }

            else
            {
              v206 = 23;
            }

            v207 = size == 22;
            goto LABEL_363;
          }

          break;
        }

        size = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == size)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v202 = v224.__r_.__value_.__r.__words[0];
          if (size < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_353;
          }

          v207 = 0;
          v206 = 0x7FFFFFFFFFFFFFF7;
LABEL_363:
          v208 = operator new(v206);
          v209 = v208;
          if (size)
          {
            memmove(v208, v202, size);
          }

          if (!v207)
          {
            operator delete(v202);
          }

          v224.__r_.__value_.__r.__words[0] = v209;
          v224.__r_.__value_.__r.__words[2] = v206 | 0x8000000000000000;
        }

        else
        {
          size = v224.__r_.__value_.__l.__size_;
          v209 = v224.__r_.__value_.__r.__words[0];
        }

        v224.__r_.__value_.__l.__size_ = size + 1;
        v210 = (v209 + size);
        *v210 = first;
        v210[1] = 0;
        v24 = (v24 + 1);
        if (!--v25)
        {
LABEL_372:
          tv_sec = v231.st_atimespec.tv_sec;
          goto LABEL_373;
        }

        continue;
      }
    }

    v219 = strlen(__s);
    v30 = &__s[v219];
    do
    {
      v31 = v231.st_birthtimespec.tv_sec;
      tv_nsec = v231.st_birthtimespec.tv_nsec;
      while (v31 != tv_nsec)
      {
        v36 = *v31;
        if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
          {
            v33 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
            v34 = &v224;
            goto LABEL_54;
          }

          v37 = &v224;
          v33 = 22;
LABEL_62:
          if (v33 + 1 > 2 * v33)
          {
            v38 = v33 + 1;
          }

          else
          {
            v38 = 2 * v33;
          }

          if ((v38 | 7) == 0x17)
          {
            v39 = 25;
          }

          else
          {
            v39 = (v38 | 7) + 1;
          }

          if (v38 >= 0x17)
          {
            v40 = v39;
          }

          else
          {
            v40 = 23;
          }

          v41 = v33 == 22;
          goto LABEL_72;
        }

        v33 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == v33)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v37 = v224.__r_.__value_.__r.__words[0];
          if (v33 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_62;
          }

          v41 = 0;
          v40 = 0x7FFFFFFFFFFFFFF7;
LABEL_72:
          v42 = operator new(v40);
          v34 = v42;
          if (v33)
          {
            memmove(v42, v37, v33);
          }

          if (!v41)
          {
            operator delete(v37);
          }

          v224.__r_.__value_.__r.__words[0] = v34;
          v224.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
          goto LABEL_78;
        }

        v33 = v224.__r_.__value_.__l.__size_;
        v34 = v224.__r_.__value_.__r.__words[0];
LABEL_78:
        v224.__r_.__value_.__l.__size_ = v33 + 1;
LABEL_54:
        v35 = v34 + v33;
        *v35 = v36;
        v35[1] = 0;
        ++v31;
      }

      if (v219)
      {
        v43 = __s;
        while (1)
        {
          v47 = *v43;
          v48 = (v43 + 1);
          if (v47 != 36 || v48 == v30)
          {
            goto LABEL_89;
          }

          v51 = *v48;
          if (v51 <= 0x26)
          {
            if (v51 == 36)
            {
              ++v43;
              goto LABEL_89;
            }

            if (v51 == 38)
            {
              v52 = *v231.st_atimespec.tv_sec;
              v53 = *(v231.st_atimespec.tv_sec + 8);
              if (*v231.st_atimespec.tv_sec == v53)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v55 = *v52;
                  v56 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v57 = &v224;
                    v58 = 22;
                    goto LABEL_104;
                  }

                  *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v54 = &v224 + v56;
                  *v54 = v55;
                  v54[1] = 0;
                  if (++v52 == v53)
                  {
                    goto LABEL_213;
                  }
                }

                v58 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v224.__r_.__value_.__l.__size_ == v58)
                {
                  if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_388;
                  }

                  v57 = v224.__r_.__value_.__r.__words[0];
                  if (v58 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v62 = 0;
                    v61 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_104:
                    if (v58 + 1 > 2 * v58)
                    {
                      v59 = v58 + 1;
                    }

                    else
                    {
                      v59 = 2 * v58;
                    }

                    if ((v59 | 7) == 0x17)
                    {
                      v60 = 25;
                    }

                    else
                    {
                      v60 = (v59 | 7) + 1;
                    }

                    if (v59 >= 0x17)
                    {
                      v61 = v60;
                    }

                    else
                    {
                      v61 = 23;
                    }

                    v62 = v58 == 22;
                  }

                  v63 = operator new(v61);
                  v64 = v63;
                  if (v58)
                  {
                    memmove(v63, v57, v58);
                  }

                  if (!v62)
                  {
                    operator delete(v57);
                  }

                  v224.__r_.__value_.__r.__words[0] = v64;
                  v224.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
                  goto LABEL_120;
                }

                v58 = v224.__r_.__value_.__l.__size_;
                v64 = v224.__r_.__value_.__r.__words[0];
LABEL_120:
                v224.__r_.__value_.__l.__size_ = v58 + 1;
                v65 = (v64 + v58);
                *v65 = v55;
                v65[1] = 0;
                if (++v52 == v53)
                {
                  goto LABEL_213;
                }
              }
            }

LABEL_174:
            LODWORD(v85) = v51 - 48;
            if (v85 <= 9)
            {
              v85 = v85;
              if (v43 + 2 != v30)
              {
                v86 = v43[2];
                v87 = v86 - 48;
                v88 = v86 + 10 * v85 - 48;
                if (v87 > 9)
                {
                  v48 = (v43 + 1);
                }

                else
                {
                  v85 = v88;
                  v48 = (v43 + 2);
                }
              }

              v89 = v231.st_atimespec.tv_sec + 24 * v85;
              v90 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3) > v85;
              p_tv_nsec = &v231.st_mtimespec.tv_nsec;
              if (v90)
              {
                p_tv_nsec = v89;
              }

              v92 = *p_tv_nsec;
              p_st_ctimespec = (v89 + 8);
              if (!v90)
              {
                p_st_ctimespec = &v231.st_ctimespec;
              }

              v94 = p_st_ctimespec->tv_sec;
              if (v92 == p_st_ctimespec->tv_sec)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v96 = *v92;
                  v97 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v98 = &v224;
                    v99 = 22;
                    goto LABEL_192;
                  }

                  *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v95 = &v224 + v97;
                  *v95 = v96;
                  v95[1] = 0;
                  if (++v92 == v94)
                  {
                    goto LABEL_213;
                  }
                }

                v99 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v224.__r_.__value_.__l.__size_ == v99)
                {
                  if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_388;
                  }

                  v98 = v224.__r_.__value_.__r.__words[0];
                  if (v99 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v103 = 0;
                    v102 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_192:
                    if (v99 + 1 > 2 * v99)
                    {
                      v100 = v99 + 1;
                    }

                    else
                    {
                      v100 = 2 * v99;
                    }

                    if ((v100 | 7) == 0x17)
                    {
                      v101 = 25;
                    }

                    else
                    {
                      v101 = (v100 | 7) + 1;
                    }

                    if (v100 >= 0x17)
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 = 23;
                    }

                    v103 = v99 == 22;
                  }

                  v104 = operator new(v102);
                  v105 = v104;
                  if (v99)
                  {
                    memmove(v104, v98, v99);
                  }

                  if (!v103)
                  {
                    operator delete(v98);
                  }

                  v224.__r_.__value_.__r.__words[0] = v105;
                  v224.__r_.__value_.__r.__words[2] = v102 | 0x8000000000000000;
                  goto LABEL_208;
                }

                v99 = v224.__r_.__value_.__l.__size_;
                v105 = v224.__r_.__value_.__r.__words[0];
LABEL_208:
                v224.__r_.__value_.__l.__size_ = v99 + 1;
                v106 = (v105 + v99);
                *v106 = v96;
                v106[1] = 0;
                if (++v92 == v94)
                {
                  goto LABEL_213;
                }
              }
            }

LABEL_89:
            if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
            {
              v44 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v224.__r_.__value_.__l.__size_ != v44)
              {
                v44 = v224.__r_.__value_.__l.__size_;
                v45 = v224.__r_.__value_.__r.__words[0];
LABEL_172:
                v224.__r_.__value_.__l.__size_ = v44 + 1;
                goto LABEL_83;
              }

              if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
LABEL_388:
                std::string::__throw_length_error[abi:ne200100]();
              }

              v50 = v224.__r_.__value_.__r.__words[0];
              if (v44 >= 0x3FFFFFFFFFFFFFF3)
              {
                v69 = 0;
                v68 = 0x7FFFFFFFFFFFFFF7;
LABEL_136:
                v70 = operator new(v68);
                v45 = v70;
                if (v44)
                {
                  memmove(v70, v50, v44);
                }

                if (!v69)
                {
                  operator delete(v50);
                }

                v224.__r_.__value_.__r.__words[0] = v45;
                v224.__r_.__value_.__r.__words[2] = v68 | 0x8000000000000000;
                goto LABEL_172;
              }

LABEL_126:
              if (v44 + 1 > 2 * v44)
              {
                v66 = v44 + 1;
              }

              else
              {
                v66 = 2 * v44;
              }

              if ((v66 | 7) == 0x17)
              {
                v67 = 25;
              }

              else
              {
                v67 = (v66 | 7) + 1;
              }

              if (v66 >= 0x17)
              {
                v68 = v67;
              }

              else
              {
                v68 = 23;
              }

              v69 = v44 == 22;
              goto LABEL_136;
            }

            if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
            {
              v50 = &v224;
              v44 = 22;
              goto LABEL_126;
            }

            v44 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
            v45 = &v224;
LABEL_83:
            v46 = v45 + v44;
            *v46 = v47;
            v46[1] = 0;
            if (++v43 == v30)
            {
              goto LABEL_241;
            }

            continue;
          }

          if (v51 != 39)
          {
            if (v51 != 96)
            {
              goto LABEL_174;
            }

            v71 = v231.st_birthtimespec.tv_sec;
            v72 = v231.st_birthtimespec.tv_nsec;
            if (v231.st_birthtimespec.tv_sec == v231.st_birthtimespec.tv_nsec)
            {
              goto LABEL_213;
            }

            while (1)
            {
              while (1)
              {
                v74 = *v71;
                v75 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                {
                  v76 = &v224;
                  v77 = 22;
                  goto LABEL_152;
                }

                *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                v73 = &v224 + v75;
                *v73 = v74;
                v73[1] = 0;
                if (++v71 == v72)
                {
                  goto LABEL_213;
                }
              }

              v77 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v224.__r_.__value_.__l.__size_ == v77)
              {
                if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_388;
                }

                v76 = v224.__r_.__value_.__r.__words[0];
                if (v77 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v81 = 0;
                  v80 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_152:
                  if (v77 + 1 > 2 * v77)
                  {
                    v78 = v77 + 1;
                  }

                  else
                  {
                    v78 = 2 * v77;
                  }

                  if ((v78 | 7) == 0x17)
                  {
                    v79 = 25;
                  }

                  else
                  {
                    v79 = (v78 | 7) + 1;
                  }

                  if (v78 >= 0x17)
                  {
                    v80 = v79;
                  }

                  else
                  {
                    v80 = 23;
                  }

                  v81 = v77 == 22;
                }

                v82 = operator new(v80);
                v83 = v82;
                if (v77)
                {
                  memmove(v82, v76, v77);
                }

                if (!v81)
                {
                  operator delete(v76);
                }

                v224.__r_.__value_.__r.__words[0] = v83;
                v224.__r_.__value_.__r.__words[2] = v80 | 0x8000000000000000;
                goto LABEL_168;
              }

              v77 = v224.__r_.__value_.__l.__size_;
              v83 = v224.__r_.__value_.__r.__words[0];
LABEL_168:
              v224.__r_.__value_.__l.__size_ = v77 + 1;
              v84 = (v83 + v77);
              *v84 = v74;
              v84[1] = 0;
              if (++v71 == v72)
              {
                goto LABEL_213;
              }
            }
          }

          st_blocks = v231.st_blocks;
          v108 = *&v231.st_blksize;
          if (v231.st_blocks != *&v231.st_blksize)
          {
            break;
          }

LABEL_213:
          v43 = (v48 + 1);
          if (v48 + 1 == v30)
          {
            goto LABEL_241;
          }
        }

        while (2)
        {
          while (2)
          {
            v110 = *st_blocks;
            v111 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
              {
                *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                v109 = &v224 + v111;
                *v109 = v110;
                v109[1] = 0;
                if (++st_blocks == v108)
                {
                  goto LABEL_213;
                }

                continue;
              }

              v112 = &v224;
              v113 = 22;
LABEL_222:
              if (v113 + 1 > 2 * v113)
              {
                v114 = v113 + 1;
              }

              else
              {
                v114 = 2 * v113;
              }

              if ((v114 | 7) == 0x17)
              {
                v115 = 25;
              }

              else
              {
                v115 = (v114 | 7) + 1;
              }

              if (v114 >= 0x17)
              {
                v116 = v115;
              }

              else
              {
                v116 = 23;
              }

              v117 = v113 == 22;
              goto LABEL_232;
            }

            break;
          }

          v113 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v224.__r_.__value_.__l.__size_ == v113)
          {
            if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_388;
            }

            v112 = v224.__r_.__value_.__r.__words[0];
            if (v113 < 0x3FFFFFFFFFFFFFF3)
            {
              goto LABEL_222;
            }

            v117 = 0;
            v116 = 0x7FFFFFFFFFFFFFF7;
LABEL_232:
            v118 = operator new(v116);
            v119 = v118;
            if (v113)
            {
              memmove(v118, v112, v113);
            }

            if (!v117)
            {
              operator delete(v112);
            }

            v224.__r_.__value_.__r.__words[0] = v119;
            v224.__r_.__value_.__r.__words[2] = v116 | 0x8000000000000000;
          }

          else
          {
            v113 = v224.__r_.__value_.__l.__size_;
            v119 = v224.__r_.__value_.__r.__words[0];
          }

          v224.__r_.__value_.__l.__size_ = v113 + 1;
          v120 = (v119 + v113);
          *v120 = v110;
          v120[1] = 0;
          if (++st_blocks == v108)
          {
            goto LABEL_213;
          }

          continue;
        }
      }

LABEL_241:
      st_rdev = v231.st_rdev;
      v122 = v231.st_rdev | 0x800;
      v231.st_rdev |= 0x800u;
      v123 = v231.st_atimespec.tv_sec;
      v124 = &v231.st_mtimespec.tv_nsec;
      if (v231.st_atimespec.tv_nsec != v231.st_atimespec.tv_sec)
      {
        v124 = v231.st_atimespec.tv_sec;
      }

      v125 = (v231.st_atimespec.tv_sec + 8);
      if (v231.st_atimespec.tv_nsec == v231.st_atimespec.tv_sec)
      {
        v125 = &v231.st_ctimespec;
      }

      v126 = v125->tv_sec;
      st_ino = v231.st_ino;
      v217 = *&v231.st_blksize;
      v218 = v231.st_blocks;
      if (*v124 != v125->tv_sec)
      {
        v221 = v125->tv_sec;
        v128 = v125->tv_sec;
        v129 = v223;
        goto LABEL_247;
      }

      v129 = v223;
      if (v231.st_ino == v126)
      {
        if (!v231.st_atimespec.tv_sec)
        {
          goto LABEL_289;
        }

        goto LABEL_288;
      }

      v154 = *&v231.st_uid;
      *&v155 = 0xAAAAAAAAAAAAAAAALL;
      *(&v155 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v223 + 2) = v155;
      v129[3] = v155;
      *v129 = v155;
      v129[1] = v155;
      v234 = 0uLL;
      v235 = 0;
      v236 = 0uLL;
      v237 = 0;
      v238 = 0;
      v239 = 0;
      v232 = 0u;
      memset(v233, 0, 25);
      v156 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v154, v126, st_ino, &v232, st_rdev | 0x860u);
      v157 = v234.i64[0];
      v158 = *(&v232 + 1) - v232;
      v159 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
      v161 = v231.st_atimespec.tv_sec;
      v160 = v231.st_atimespec.tv_nsec;
      v162 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
      if (v159 <= v162)
      {
        if (v159 < v162)
        {
          v160 = v231.st_atimespec.tv_sec + v158;
          v231.st_atimespec.tv_nsec = v231.st_atimespec.tv_sec + v158;
        }
      }

      else
      {
        std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(&v231.st_atimespec, v159 - v162);
        v161 = v231.st_atimespec.tv_sec;
        v160 = v231.st_atimespec.tv_nsec;
      }

      if (v160 == v161)
      {
        v179 = v126 - v157;
        v177 = v232;
      }

      else
      {
        v175 = 0;
        v176 = 0xAAAAAAAAAAAAAAABLL * ((v160 - v161) >> 3);
        v177 = v232;
        v178 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v179 = v126 - v157;
        if (v176 <= 1)
        {
          v176 = 1;
        }

        v180 = (v161 + 16);
        v181 = v232;
        do
        {
          if (v178 <= v175)
          {
            v182 = &v233[8];
          }

          else
          {
            v182 = v181;
          }

          *(v180 - 2) = v179 + *v182;
          v183 = (v181 + 8);
          if (v178 <= v175)
          {
            v183 = &v233[16];
          }

          *(v180 - 1) = v179 + *v183;
          v184 = (v181 + 16);
          if (v178 <= v175)
          {
            v184 = v129;
          }

          *v180 = *v184;
          v180 += 24;
          ++v175;
          v181 += 24;
        }

        while (v176 != v175);
      }

      v231.st_mtimespec.tv_nsec = st_ino;
      v231.st_ctimespec.tv_sec = st_ino;
      LOBYTE(v231.st_ctimespec.tv_nsec) = 0;
      v185 = vdupq_n_s64(v179);
      v231.st_birthtimespec = vaddq_s64(v185, v234);
      LOBYTE(v231.st_size) = v235;
      *&v231.st_blocks = vaddq_s64(v185, v236);
      LOBYTE(v231.st_gen) = v237;
      LOBYTE(v231.st_qspare[0]) = v238;
      if (v177)
      {
        *(&v232 + 1) = v177;
        operator delete(v177);
      }

      if ((v156 & 1) == 0)
      {
        v221 = v126;
        v128 = (&v126->first + 1);
        v122 = v231.st_rdev;
        st_ino = v231.st_ino;
LABEL_247:
        v231.st_rdev = v122 | 0x80;
        v130 = *&v231.st_uid;
        *&v131 = 0xAAAAAAAAAAAAAAAALL;
        *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v129[2] = v131;
        v129[3] = v131;
        *v129 = v131;
        v129[1] = v131;
        v234 = 0uLL;
        v235 = 0;
        v236 = 0uLL;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        v232 = 0u;
        memset(v233, 0, 25);
        v222 = v128;
        v132 = st_ino;
        v220 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v130, v128, st_ino, &v232, v122 | 0x80u);
        v133 = v234.i64[0];
        v134 = *(&v232 + 1) - v232;
        v135 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v136 = v231.st_atimespec.tv_sec;
        v137 = v231.st_atimespec.tv_nsec;
        v138 = v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec;
        v139 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
        v140 = v135 - v139;
        if (v135 <= v139)
        {
          if (v135 < v139)
          {
            v137 = v231.st_atimespec.tv_sec + v134;
            v231.st_atimespec.tv_nsec = v231.st_atimespec.tv_sec + v134;
          }

          v150 = v223;
          v151 = v221;
          v152 = v220;
          if (v137 == v231.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        else if (0xAAAAAAAAAAAAAAABLL * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_nsec) >> 3) >= v140)
        {
          v173 = v231.st_atimespec.tv_nsec + 24 * v140;
          v174 = 8 * ((*(&v232 + 1) - v232) >> 3) - 8 * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
          do
          {
            *v137 = 0;
            *(v137 + 8) = 0;
            *(v137 + 16) = 0;
            v137 += 24;
            v174 -= 24;
          }

          while (v174);
          v231.st_atimespec.tv_nsec = v173;
          v150 = v223;
          v151 = v221;
          v152 = v220;
          v136 = v231.st_atimespec.tv_sec;
          v137 = v173;
          if (v173 == v231.st_atimespec.tv_sec)
          {
LABEL_264:
            v153 = v222 - v133;
            goto LABEL_282;
          }
        }

        else
        {
          if (v135 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
          }

          v215 = v234.i64[0];
          v141 = 0x5555555555555556 * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_sec) >> 3);
          if (v141 <= v135)
          {
            v141 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_sec) >> 3) >= 0x555555555555555)
          {
            v142 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v142 = v141;
          }

          if (v142 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v143 = operator new(24 * v142);
          v144 = &v143[24 * v140 + v138];
          v145 = 24 * v135 - 24 * v139;
          v146 = &v143[v138];
          do
          {
            *v146 = 0;
            *(v146 + 1) = 0;
            v146[16] = 0;
            v146 += 24;
            v145 -= 24;
          }

          while (v145);
          v133 = v215;
          if (v136 != v137)
          {
            v147 = v136;
            v148 = v143;
            do
            {
              v149 = *v147;
              *(v148 + 2) = *(v147 + 2);
              *v148 = v149;
              v148 += 24;
              v147 += 24;
            }

            while (v147 != v137);
          }

          v231.st_atimespec.tv_sec = v143;
          v231.st_atimespec.tv_nsec = &v143[24 * v140 + v138];
          v231.st_mtimespec.tv_sec = &v143[24 * v142];
          v150 = v223;
          v151 = v221;
          v152 = v220;
          if (v136)
          {
            operator delete(v136);
            v133 = v215;
            v144 = v231.st_atimespec.tv_nsec;
          }

          v136 = v231.st_atimespec.tv_sec;
          v137 = v144;
          if (v144 == v231.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        v163 = 0;
        v164 = 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3);
        v165 = v232;
        v166 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v153 = v222 - v133;
        if (v164 <= 1)
        {
          v164 = 1;
        }

        v167 = v136 + 16;
        do
        {
          if (v166 <= v163)
          {
            v168 = &v233[8];
          }

          else
          {
            v168 = v165;
          }

          *(v167 - 2) = v153 + *v168;
          v169 = (v165 + 8);
          if (v166 <= v163)
          {
            v169 = &v233[16];
          }

          *(v167 - 1) = v153 + *v169;
          v170 = (v165 + 16);
          if (v166 <= v163)
          {
            v170 = v150;
          }

          *v167 = *v170;
          v167 += 24;
          ++v163;
          v165 += 24;
        }

        while (v164 != v163);
LABEL_282:
        v231.st_mtimespec.tv_nsec = v132;
        v231.st_ctimespec.tv_sec = v132;
        LOBYTE(v231.st_ctimespec.tv_nsec) = 0;
        v171 = vdupq_n_s64(v153);
        v172 = vaddq_s64(v171, v234);
        v231.st_birthtimespec = v172;
        LOBYTE(v231.st_size) = v235;
        *&v231.st_blocks = vaddq_s64(v171, v236);
        LOBYTE(v231.st_gen) = v237;
        if ((v122 & 0x800) == 0)
        {
          v231.st_qspare[1] = v172.tv_sec;
        }

        LOBYTE(v231.st_qspare[0]) = v238;
        if (v232)
        {
          *(&v232 + 1) = v232;
          operator delete(v232);
        }

        if (v152)
        {
          v231.st_birthtimespec.tv_sec = v151;
          LOBYTE(v231.st_size) = v231.st_birthtimespec.tv_nsec != v151;
          goto LABEL_51;
        }

        v123 = v231.st_atimespec.tv_sec;
        if (!v231.st_atimespec.tv_sec)
        {
          goto LABEL_289;
        }

LABEL_288:
        v231.st_atimespec.tv_nsec = v123;
        operator delete(v123);
LABEL_289:
        LOBYTE(v231.st_qspare[0]) = 0;
        memset(&v231.st_atimespec, 0, 41);
        memset(&v231.st_birthtimespec, 0, 17);
        memset(&v231.st_blocks, 0, 17);
        v231.st_qspare[1] = 0;
      }

LABEL_51:
      tv_sec = v231.st_atimespec.tv_sec;
    }

    while (v231.st_atimespec.tv_nsec != v231.st_atimespec.tv_sec);
    v186 = v218;
    if (v218 != v217)
    {
      while (1)
      {
        while (1)
        {
          v188 = *v186;
          v189 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
          {
            v190 = &v224;
            v191 = 22;
            goto LABEL_325;
          }

          *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
          v187 = &v224 + v189;
          *v187 = v188;
          v187[1] = 0;
          if (++v186 == v217)
          {
            goto LABEL_372;
          }
        }

        v191 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == v191)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v190 = v224.__r_.__value_.__r.__words[0];
          if (v191 >= 0x3FFFFFFFFFFFFFF3)
          {
            v195 = 0;
            v194 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_325:
            if (v191 + 1 > 2 * v191)
            {
              v192 = v191 + 1;
            }

            else
            {
              v192 = 2 * v191;
            }

            if ((v192 | 7) == 0x17)
            {
              v193 = 25;
            }

            else
            {
              v193 = (v192 | 7) + 1;
            }

            if (v192 >= 0x17)
            {
              v194 = v193;
            }

            else
            {
              v194 = 23;
            }

            v195 = v191 == 22;
          }

          v196 = operator new(v194);
          v197 = v196;
          if (v191)
          {
            memmove(v196, v190, v191);
          }

          if (!v195)
          {
            operator delete(v190);
          }

          v224.__r_.__value_.__r.__words[0] = v197;
          v224.__r_.__value_.__r.__words[2] = v194 | 0x8000000000000000;
          goto LABEL_341;
        }

        v191 = v224.__r_.__value_.__l.__size_;
        v197 = v224.__r_.__value_.__r.__words[0];
LABEL_341:
        v224.__r_.__value_.__l.__size_ = v191 + 1;
        v198 = (v197 + v191);
        *v198 = v188;
        v198[1] = 0;
        if (++v186 == v217)
        {
          goto LABEL_372;
        }
      }
    }

LABEL_373:
    if (tv_sec)
    {
      v231.st_atimespec.tv_nsec = tv_sec;
      operator delete(tv_sec);
    }

    a1 = v213;
    v4 = v214;
    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
      v226 = v224;
      if (SHIBYTE(__p[2]) < 0)
      {
LABEL_5:
        operator delete(__p[0]);
      }
    }

    else
    {
      v226 = v224;
      if (SHIBYTE(__p[2]) < 0)
      {
        goto LABEL_5;
      }
    }
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

LABEL_384:
  v211 = v230;
  if (v230 && !atomic_fetch_add((v230 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v211->__on_zero_shared)(v211);
    std::__shared_weak_count::__release_weak(v211);
  }

  std::locale::~locale(v227);
}

void sub_2971032B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, std::locale a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59, uint64_t a60, void *a61, uint64_t a62)
{
  if (a59 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 185) < 0)
  {
    operator delete(*(v62 - 208));
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a46);
  _Unwind_Resume(a1);
}

uint64_t std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  v4 = *(a1 + 23);
  v5 = *a1;
  v6 = *(a1 + 8);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v13[24] = v7;
  if ((v4 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = v5;
  }

  if ((v4 & 0x80u) == 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v15 = 0xAAAAAAAAAAAAAA00;
  v17 = v7;
  *&v13[32] = 0;
  v14 = 0;
  v16 = 0uLL;
  LOBYTE(v17) = 0;
  BYTE8(v17) = 0;
  v18 = 0;
  *v12 = 0u;
  memset(v13, 0, 25);
  v20[6] = 0xAAAAAAAAAAAAAA00;
  v20[3] = v7;
  v21 = v7;
  v20[4] = 0;
  v20[5] = 0;
  v20[7] = 0;
  v20[8] = 0;
  LOBYTE(v21) = 0;
  BYTE8(v21) = 0;
  v22 = 0;
  *__p = 0u;
  memset(v20, 0, 25);
  v10 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a2, v8, (v8 + v9), __p, a3 | 0x1040u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v12, v8, (v8 + v9), __p, (v3 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v10 && (v17 & 1) != 0)
  {
    v10 = 0;
  }

  if (v12[0])
  {
    v12[1] = v12[0];
    operator delete(v12[0]);
  }

  return v10;
}

void sub_2971034E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
    v25 = a9;
    if (!a9)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v25 = a9;
    if (!a9)
    {
      goto LABEL_3;
    }
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void support::fs::createUniquePath(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v28 = *MEMORY[0x29EDCA608];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__src.st_blksize = v4;
  *__src.st_qspare = v4;
  __src.st_birthtimespec = v4;
  *&__src.st_size = v4;
  __src.st_mtimespec = v4;
  __src.st_ctimespec = v4;
  *&__src.st_uid = v4;
  __src.st_atimespec = v4;
  *&__src.st_dev = v4;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__src))
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v26 = v5;
    v27 = v5;
    v24 = v5;
    v25 = v5;
    v22 = v5;
    v23 = v5;
    *__src.st_qspare = v5;
    v21 = v5;
    *&__src.st_size = v5;
    *&__src.st_blksize = v5;
    __src.st_ctimespec = v5;
    __src.st_birthtimespec = v5;
    __src.st_atimespec = v5;
    __src.st_mtimespec = v5;
    *&__src.st_dev = v5;
    *&__src.st_uid = v5;
    snprintf(&__src, 0x100uLL, "-%u", 1);
    memset(a2, 170, sizeof(std::string));
    v6 = strlen(&__src);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    v8 = 2;
    while (v7 < 0x17)
    {
      HIBYTE(__dst.st_gid) = v7;
      p_dst = &__dst;
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(&p_dst->st_dev + v7) = 0;
      v12 = v2[23];
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 1);
      }

      v15 = std::string::insert(&__dst, 0, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.st_gid) < 0)
      {
        operator delete(*&__dst.st_dev);
      }

      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__dst.st_blksize = v17;
      *__dst.st_qspare = v17;
      __dst.st_birthtimespec = v17;
      *&__dst.st_size = v17;
      __dst.st_mtimespec = v17;
      __dst.st_ctimespec = v17;
      *&__dst.st_uid = v17;
      __dst.st_atimespec = v17;
      *&__dst.st_dev = v17;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      if (stat(v18, &__dst))
      {
        return;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a2->__r_.__value_.__l.__data_);
      }

      v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v26 = v9;
      v27 = v9;
      v24 = v9;
      v25 = v9;
      v22 = v9;
      v23 = v9;
      *__src.st_qspare = v9;
      v21 = v9;
      *&__src.st_size = v9;
      *&__src.st_blksize = v9;
      __src.st_ctimespec = v9;
      __src.st_birthtimespec = v9;
      __src.st_atimespec = v9;
      __src.st_mtimespec = v9;
      *&__src.st_dev = v9;
      *&__src.st_uid = v9;
      snprintf(&__src, 0x100uLL, "-%u", v8);
      memset(a2, 170, sizeof(std::string));
      v7 = strlen(&__src);
      ++v8;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.st_ino = v7;
    *&__dst.st_uid = v11 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
LABEL_16:
    memcpy(p_dst, &__src, v7);
    goto LABEL_17;
  }

  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }
}

void sub_2971037B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_mtimespec = v6;
  v30.st_ctimespec = v6;
  *&v30.st_uid = v6;
  v30.st_atimespec = v6;
  *&v30.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0x1AAAAAAAAAAAAAALL;
  v28[0] = 0xAAAAAAAAAAAA002FLL;
  memset(&__p[32], 170, 24);
  ctu::tokenize();
  memset(__p, 0, 24);
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    *__p = *v28;
    *&__p[16] = v29;
  }

  v8 = *&__p[32];
  if (*&__p[40] != *&__p[32])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if (v29 >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = v28[0];
        }

        if (v29 >= 0)
        {
          v12 = HIBYTE(v29);
        }

        else
        {
          v12 = v28[1];
        }

        std::string::append(__p, v11, v12);
        v8 = *&__p[32];
      }

      v13 = v8 + 24 * v9;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      std::string::append(__p, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_mtimespec = v17;
      v30.st_ctimespec = v17;
      *&v30.st_uid = v17;
      v30.st_atimespec = v17;
      *&v30.st_dev = v17;
      v18 = __p[23] >= 0 ? __p : *__p;
      if (stat(v18, &v30))
      {
        v19 = __p[23] >= 0 ? __p : *__p;
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = *&__p[32];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_43:
    operator delete(*__p);
  }

LABEL_44:
  v22 = *&__p[32];
  if (*&__p[32])
  {
    v23 = *&__p[40];
    v24 = *&__p[32];
    if (*&__p[40] != *&__p[32])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *&__p[32];
    }

    *&__p[40] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

void sub_297103A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

BOOL support::fs::rename(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  return v3 == 0;
}

BOOL support::fs::chmod(const char *a1, mode_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chmod(a1, a2) == 0;
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v56[2] = *MEMORY[0x29EDCA608];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v55.st_blksize = v2;
  *v55.st_qspare = v2;
  v55.st_birthtimespec = v2;
  *&v55.st_size = v2;
  v55.st_mtimespec = v2;
  v55.st_ctimespec = v2;
  *&v55.st_uid = v2;
  v55.st_atimespec = v2;
  *&v55.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v55))
  {
    return 1;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  support::fs::readDir(v1, &v52);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v52 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = v1[23];
    if (v11 >= 0)
    {
      v12 = *(v1 + 23);
    }

    else
    {
      v12 = *(v1 + 1);
    }

    v13 = v12 + 1;
    if (v12 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v55, 0, 24);
      v15 = &v55;
      HIBYTE(v55.st_gid) = v12 + 1;
      if (!v12)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v55.st_ino = v12 + 1;
      *&v55.st_uid = v14 | 0x8000000000000000;
      *&v55.st_dev = v15;
    }

    if (v11 >= 0)
    {
      v16 = v1;
    }

    else
    {
      v16 = *v1;
    }

    memmove(v15, v16, v12);
LABEL_38:
    *&v15[v12] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      size = v10;
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v19 = std::string::append(&v55, p_p, size);
    v20 = v19->__r_.__value_.__r.__words[0];
    v56[0] = v19->__r_.__value_.__l.__size_;
    *(v56 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
    v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v20;
    __p.__r_.__value_.__l.__size_ = v56[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v56 + 7);
    *(&__p.__r_.__value_.__s + 23) = v21;
    if (SHIBYTE(v55.st_gid) < 0)
    {
      operator delete(*&v55.st_dev);
      v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    v22.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v22.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v55.st_blksize = v22;
    *v55.st_qspare = v22;
    v55.st_birthtimespec = v22;
    *&v55.st_size = v22;
    v55.st_mtimespec = v22;
    v55.st_ctimespec = v22;
    *&v55.st_uid = v22;
    v55.st_atimespec = v22;
    if (v21 >= 0)
    {
      v23 = &__p;
    }

    else
    {
      v23 = v20;
    }

    *&v55.st_dev = v22;
    if (!stat(v23, &v55))
    {
      v28 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v29 = opendir(v28);
      v30 = v29;
      if (v29)
      {
        v31 = readdir(v29);
        closedir(v30);
        if (v31)
        {
          v32 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v32 = __p.__r_.__value_.__l.__size_;
            v34 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            v35 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v35 != __p.__r_.__value_.__l.__size_)
            {
              v33 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_89;
            }

            if (v34 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v33 = __p.__r_.__value_.__r.__words[0];
            if (v35 > 0x3FFFFFFFFFFFFFF2)
            {
              v39 = 0;
              v38 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_74:
              v36 = 2 * v35;
              if (v34 > 2 * v35)
              {
                v36 = v34;
              }

              if ((v36 | 7) == 0x17)
              {
                v37 = 25;
              }

              else
              {
                v37 = (v36 | 7) + 1;
              }

              if (v36 >= 0x17)
              {
                v38 = v37;
              }

              else
              {
                v38 = 23;
              }

              v39 = v35 == 22;
            }

            v40 = operator new(v38);
            v41 = v40;
            if (v35)
            {
              memmove(v40, v33, v35);
            }

            *(v41 + v35) = 47;
            if (!v39)
            {
              operator delete(v33);
            }

            __p.__r_.__value_.__l.__size_ = v34;
            __p.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v41;
            v42 = (v41 + v34);
          }

          else
          {
            v33 = &__p;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
            {
              v34 = 23;
              v35 = 22;
              goto LABEL_74;
            }

LABEL_89:
            v33->__r_.__value_.__s.__data_[v32] = 47;
            v43 = v32 + 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v43;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v43 & 0x7F;
            }

            v42 = v33 + v43;
          }

          *v42 = 0;
          v27 = support::fs::removeDir(&__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &__p;
    }

    else
    {
      v25 = __p.__r_.__value_.__r.__words[0];
    }

    if (!remove(v25, v24))
    {
LABEL_61:
      v27 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    v27 = unlink(v26) == 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v27 & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  if (v1[23] >= 0)
  {
    v44 = v1;
  }

  else
  {
    v44 = *v1;
  }

  if (remove(v44, v4))
  {
    if (v1[23] >= 0)
    {
      v45 = v1;
    }

    else
    {
      v45 = *v1;
    }

    unlink(v45);
  }

LABEL_104:
  v46 = v52;
  if (v52)
  {
    v47 = v53;
    v48 = v52;
    if (v53 != v52)
    {
      do
      {
        v49 = *(v47 - 1);
        v47 -= 3;
        if (v49 < 0)
        {
          operator delete(*v47);
        }
      }

      while (v47 != v46);
      v48 = v52;
    }

    v53 = v46;
    operator delete(v48);
  }

  return v3;
}

void sub_297104064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeFile(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!remove(a1, a2))
  {
    return 1;
  }

  if ((v2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  return unlink(v3) == 0;
}

uint64_t support::fs::removeDirContents(const char *a1, unint64_t a2)
{
  v3 = a1;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  support::fs::readDir(a1, &v57);
  v52 = time(0);
  v5 = v57;
  v4 = v58;
  if (v57 == v58)
  {
    v47 = 1;
    if (v57)
    {
      goto LABEL_108;
    }

    return v47 & 1;
  }

  v6 = a2;
  v53 = 1;
  while (1)
  {
    memset(&v56, 170, sizeof(v56));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v56, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      v56.__r_.__value_.__r.__words[2] = v5[2];
      *&v56.__r_.__value_.__l.__data_ = v7;
    }

    v8 = SHIBYTE(v56.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) == 1)
    {
      if (v56.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_98;
      }
    }

    else if (HIBYTE(v56.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v56.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_98;
    }

LABEL_19:
    memset(__p, 170, 24);
    v9 = v3[23];
    if (v9 >= 0)
    {
      v10 = *(v3 + 23);
    }

    else
    {
      v10 = *(v3 + 1);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      memset(&v60, 0, 24);
      v16 = &v60;
      HIBYTE(v60.st_gid) = v10 + 1;
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v14 = a2;
      if ((v11 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v11 | 7) + 1;
      }

      v16 = operator new(v15);
      v60.st_ino = v10 + 1;
      *&v60.st_uid = v15 | 0x8000000000000000;
      *&v60.st_dev = v16;
      a2 = v14;
      v4 = v13;
      v3 = v12;
    }

    if (v9 >= 0)
    {
      v17 = v3;
    }

    else
    {
      v17 = *v3;
    }

    memmove(v16, v17, v10);
LABEL_33:
    *&v16[v10] = 47;
    if ((v8 & 0x80000000) == 0)
    {
      v18 = &v56;
    }

    else
    {
      v18 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x80000000) == 0)
    {
      size = v8;
    }

    else
    {
      size = v56.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v60, v18, size);
    v21 = *&v20->__r_.__value_.__l.__data_;
    __p[2] = v20->__r_.__value_.__r.__words[2];
    *__p = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v60.st_gid) < 0)
    {
      operator delete(*&v60.st_dev);
      if (!a2)
      {
        goto LABEL_50;
      }
    }

    else if (!a2)
    {
      goto LABEL_50;
    }

    v22.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v22.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v60.st_blksize = v22;
    *v60.st_qspare = v22;
    v60.st_birthtimespec = v22;
    *&v60.st_size = v22;
    v60.st_mtimespec = v22;
    v60.st_ctimespec = v22;
    v60.st_atimespec = v22;
    *&v60.st_dev = v22;
    *&v60.st_uid = v22;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (!stat(v23, &v60) && difftime(v52, v60.st_ctimespec.tv_sec) >= v6)
    {
LABEL_50:
      v26.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v26.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v60.st_blksize = v26;
      *v60.st_qspare = v26;
      v60.st_birthtimespec = v26;
      *&v60.st_size = v26;
      v60.st_mtimespec = v26;
      v60.st_ctimespec = v26;
      v60.st_atimespec = v26;
      *&v60.st_dev = v26;
      *&v60.st_uid = v26;
      if (SHIBYTE(__p[2]) >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = __p[0];
      }

      if (stat(v27, &v60) || (SHIBYTE(__p[2]) >= 0 ? (v31 = __p) : (v31 = __p[0]), (v32 = opendir(v31), (v33 = v32) == 0) || (v34 = readdir(v32), closedir(v33), !v34)))
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        if (!remove(v29, v28) || (SHIBYTE(__p[2]) >= 0 ? (v30 = __p) : (v30 = __p[0]), !unlink(v30)))
        {
LABEL_92:
          v25 = 0;
          v53 = 1;
          v24 = 1;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        goto LABEL_62;
      }

      v35 = v3[23];
      if (v35 >= 0)
      {
        v36 = *(v3 + 23);
      }

      else
      {
        v36 = *(v3 + 1);
      }

      v37 = v36 + 1;
      if (v36 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v37 < 0x17)
      {
        memset(&v54, 0, sizeof(v54));
        v40 = &v54;
        *(&v54.__r_.__value_.__s + 23) = v36 + 1;
        if (v36)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v38 = a2;
        if ((v37 | 7) == 0x17)
        {
          v39 = 25;
        }

        else
        {
          v39 = (v37 | 7) + 1;
        }

        v40 = operator new(v39);
        v54.__r_.__value_.__l.__size_ = v36 + 1;
        v54.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
        v54.__r_.__value_.__r.__words[0] = v40;
        a2 = v38;
LABEL_79:
        if (v35 >= 0)
        {
          v41 = v3;
        }

        else
        {
          v41 = *v3;
        }

        memmove(v40, v41, v36);
      }

      *&v40[v36] = 47;
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v42 = &v56;
      }

      else
      {
        v42 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v43 = v56.__r_.__value_.__l.__size_;
      }

      v44 = std::string::append(&v54, v42, v43);
      v45 = *&v44->__r_.__value_.__l.__data_;
      *&v60.st_uid = *(&v44->__r_.__value_.__l + 2);
      *&v60.st_dev = v45;
      v44->__r_.__value_.__l.__size_ = 0;
      v44->__r_.__value_.__r.__words[2] = 0;
      v44->__r_.__value_.__r.__words[0] = 0;
      v46 = support::fs::removeDir(&v60);
      if (SHIBYTE(v60.st_gid) < 0)
      {
        operator delete(*&v60.st_dev);
        if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((SHIBYTE(v54.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_91:
        if (v46)
        {
          goto LABEL_92;
        }

LABEL_62:
        v53 = 0;
        v24 = 0;
        v25 = 2;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      operator delete(v54.__r_.__value_.__l.__data_);
      if (v46)
      {
        goto LABEL_92;
      }

      goto LABEL_62;
    }

    v24 = 0;
    v25 = 3;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_93:
    operator delete(__p[0]);
LABEL_94:
    if (v24)
    {
      goto LABEL_98;
    }

    if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    operator delete(v56.__r_.__value_.__l.__data_);
    if (v25 != 3)
    {
      goto LABEL_100;
    }

LABEL_3:
    v5 += 3;
    if (v5 == v4)
    {
      goto LABEL_105;
    }
  }

  if (v56.__r_.__value_.__l.__size_ == 1)
  {
    if (*v56.__r_.__value_.__l.__data_ == 46)
    {
      goto LABEL_98;
    }

    goto LABEL_19;
  }

  if (v56.__r_.__value_.__l.__size_ != 2 || *v56.__r_.__value_.__l.__data_ != 11822)
  {
    goto LABEL_19;
  }

LABEL_98:
  v25 = 0;
  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v25 == 3)
  {
    goto LABEL_3;
  }

LABEL_100:
  if (!v25)
  {
    goto LABEL_3;
  }

LABEL_105:
  v5 = v57;
  v47 = v53;
  if (!v57)
  {
    return v47 & 1;
  }

LABEL_108:
  v48 = v58;
  v49 = v5;
  if (v58 != v5)
  {
    do
    {
      v50 = *(v48 - 1);
      v48 -= 3;
      if (v50 < 0)
      {
        operator delete(*v48);
      }
    }

    while (v48 != v5);
    v49 = v57;
  }

  v58 = v5;
  operator delete(v49);
  return v47 & 1;
}

void sub_2971046B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void support::fs::moveDirUnique(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v6;
  *v16.st_qspare = v6;
  v16.st_birthtimespec = v6;
  *&v16.st_size = v6;
  v16.st_mtimespec = v6;
  v16.st_ctimespec = v6;
  *&v16.st_uid = v6;
  v16.st_atimespec = v6;
  *&v16.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v16))
  {
    goto LABEL_4;
  }

  v7 = v4[23] >= 0 ? v4 : *v4;
  v8 = opendir(v7);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = readdir(v8);
  closedir(v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  memset(a3, 170, 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  support::fs::createUniquePath(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v4[23] >= 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = *v4;
  }

  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  rename(v12, v13, v11);
  if (v14)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

LABEL_4:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_2971048C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getFileName(std::string *a2@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v3 = *(__p[1] - 24);
    a2->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }

  if (__p[0])
  {
    v4 = __p[1];
    v5 = __p[0];
    if (__p[1] != __p[0])
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

      while (v4 != __p[0]);
      v5 = __p[0];
    }

    operator delete(v5);
  }
}

void sub_297104998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t support::fs::lockDir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = open(a1, 0);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v5 = 1;
  v3[0] = 0;
  v3[1] = 0;
  v4 = getpid();
  if ((fcntl(v1, 9, v3) & 0x80000000) == 0)
  {
    return v1;
  }

  close(v1);
  return 0xFFFFFFFFLL;
}

BOOL support::fs::unlockDir(support::fs *this)
{
  v1 = this;
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  v2 = fcntl(v1, 9, v4) == 0;
  close(v1);
  return v2;
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = *MEMORY[0x29EDCA608];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_69:
    if ((atomic_load_explicit(&qword_2A18B78C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78C0))
    {
      qword_2A18B78C8 = 0;
      qword_2A18B78D0 = 0;
      __cxa_guard_release(&qword_2A18B78C0);
    }

    if (_MergedGlobals_9 == -1)
    {
      v35 = qword_2A18B78D0;
      if (!os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v36 = 0;
        return v36 & 1;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_9, &__block_literal_global_8);
      v35 = qword_2A18B78D0;
      if (!os_log_type_enabled(qword_2A18B78D0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v38 = __error();
    v39 = strerror(*v38);
    v46.st_dev = 136315394;
    *&v46.st_mode = a1;
    WORD2(v46.st_ino) = 2080;
    *(&v46.st_ino + 6) = v39;
    _os_log_error_impl(&dword_296FF7000, v35, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v46, 0x16u);
    goto LABEL_72;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v40 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        v13 = operator new(v15);
        *&__dst[8] = v12;
        *&__dst[16] = v15 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      if ((__dst[23] & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v14 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_64;
          }
        }

        else if (v14 == 2 && *__dst == 11822)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_64;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_64;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_55;
      }

      v16 = v8;
      v17 = a3;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v46.st_blksize = v19;
      *v46.st_qspare = v19;
      v46.st_birthtimespec = v19;
      *&v46.st_size = v19;
      v46.st_ctimespec = v19;
      v46.st_atimespec = v19;
      v46.st_mtimespec = v19;
      *&v46.st_dev = v19;
      *&v46.st_uid = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v42, 0, sizeof(v42));
        v25 = &v42;
        *(&v42.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a4 = v18;
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v42.__r_.__value_.__l.__size_ = v22 + 1;
        v42.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v42.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      if (v20 >= 0)
      {
        v26 = v21;
      }

      else
      {
        v26 = *v21;
      }

      memmove(v25, v26, v22);
      a4 = v18;
LABEL_40:
      *&v25[v22] = 47;
      if ((v14 & 0x80000000) == 0)
      {
        v27 = __dst;
      }

      else
      {
        v27 = *__dst;
      }

      if ((v14 & 0x80000000) == 0)
      {
        v28 = v14;
      }

      else
      {
        v28 = *&__dst[8];
      }

      v29 = std::string::append(&v42, v27, v28);
      a3 = v17;
      v30 = *&v29->__r_.__value_.__l.__data_;
      v44 = v29->__r_.__value_.__r.__words[2];
      *__p = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (v44 >= 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      lstat(v31, &v46);
      v8 = v16;
      if (SHIBYTE(v44) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v46.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v42.__r_.__value_.__l.__data_);
      if ((v46.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        if (std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(__dst, a2, 0))
        {
          v32 = *(a3 + 8);
          if (v32 >= *(a3 + 16))
          {
            v34 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v33 = *__dst;
              *(v32 + 16) = *&__dst[16];
              *v32 = v33;
            }

            v34 = (v32 + 24);
            *(a3 + 8) = v32 + 24;
          }

          *(a3 + 8) = v34;
          v40 = 1;
        }
      }

LABEL_64:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_74;
      }
    }
  }

  v40 = 0;
LABEL_74:
  closedir(v8);
  v36 = v40;
  return v36 & 1;
}

void sub_297104F80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v29 + 8) = v30;
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getBasePath(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      return;
    }

LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    memset(&__p, 170, sizeof(__p));
    v3 = a1;
    support::fs::getFileName(&__p);
    v4 = *(v3 + 1);
    if ((v3[23] & 0x80u) == 0)
    {
      v5 = v3[23];
    }

    else
    {
      v3 = *v3;
      v5 = v4;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = &v3[v5];
    if (v5)
    {
      v10 = size == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v18 = &v3[v5];
    }

    else
    {
      v16 = p_p->__r_.__value_.__s.__data_[0];
      v14 = &p_p->__r_.__value_.__s.__data_[1];
      v15 = v16;
      v17 = v3;
      v18 = &v3[v5];
LABEL_36:
      while (2)
      {
        v19 = v17 + 1;
        while (*v17 != v15)
        {
          ++v17;
          ++v19;
          if (v17 == v9)
          {
            goto LABEL_20;
          }
        }

        v20 = size - 1;
        v21 = v14;
        while (v20)
        {
          if (v19 == v9)
          {
            goto LABEL_20;
          }

          v23 = *v19++;
          v22 = v23;
          v24 = *v21++;
          --v20;
          if (v22 != v24)
          {
            if (++v17 != v9)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }
        }

        v18 = v17++;
        if (v17 != v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
    v11 = v18 != v9 || size == 0;
    if (!v11 || v18 - v3 == -1)
    {
      goto LABEL_34;
    }

    if (v5 >= v18 - v3)
    {
      v12 = v18 - v3;
    }

    else
    {
      v12 = v5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v12 | 7) + 1;
      }

      v13 = operator new(v25);
      *(&v27 + 1) = v12;
      v28 = v25 | 0x8000000000000000;
      *&v27 = v13;
    }

    else
    {
      HIBYTE(v28) = v12;
      v13 = &v27;
      if (!v12)
      {
        LOBYTE(v27) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_33:
          *a2 = v27;
          *(a2 + 16) = v28;
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_34:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

LABEL_53:
        operator delete(*a2);
        goto LABEL_33;
      }
    }

    memmove(v13, v3, v12);
    *(v13 + v12) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (*(a1 + 8))
  {
    goto LABEL_6;
  }

  v26 = *a1;

  std::string::__init_copy_ctor_external(a2, v26, 0);
}

void sub_29710548C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getLastNumberDir(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v79, 170, sizeof(v79));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *a1, *(a1 + 8));
  }

  else
  {
    v79 = *a1;
  }

  v4 = v79.__r_.__value_.__r.__words[0];
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v79;
  }

  else
  {
    v5 = v79.__r_.__value_.__r.__words[0];
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v79.__r_.__value_.__l.__size_;
  }

  v7 = size + 1;
  do
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_20;
    }

    v9 = v5->__r_.__value_.__s.__data_[v7-- - 2];
  }

  while (v9 == 47);
  if (v8)
  {
    v10 = v8 - 1;
    if ((*(&v79.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v79.__r_.__value_.__l.__size_ > v10)
      {
        v79.__r_.__value_.__l.__size_ = v8;
        goto LABEL_19;
      }
    }

    else if (v10 < HIBYTE(v79.__r_.__value_.__r.__words[2]))
    {
      *(&v79.__r_.__value_.__s + 23) = v8;
      v4 = &v79;
LABEL_19:
      v4->__r_.__value_.__s.__data_[v8] = 0;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_20:
  memset(&v78, 170, sizeof(v78));
  support::fs::getBasePath(&v79, &v78);
  v11 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v79.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v78.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
LABEL_35:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_37;
    }

    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    goto LABEL_150;
  }

  memset(&v77, 170, sizeof(v77));
  support::fs::getFileName(&v77);
  v13 = 0x7FFFFFFFFFFFFFF7;
  memset(v76, 170, sizeof(v76));
  v14 = SHIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v77.__r_.__value_.__l.__size_;
  }

  v16 = v15 + 13;
  if (v15 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(v76, 0, sizeof(v76));
    v18 = v76;
    HIBYTE(v76[2]) = v15 + 13;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    v76[1] = (v15 + 13);
    v76[2] = (v17 | 0x8000000000000000);
    v76[0] = v18;
  }

  if (v14 >= 0)
  {
    v19 = &v77;
  }

  else
  {
    v19 = v77.__r_.__value_.__r.__words[0];
  }

  memmove(v18, v19, v15);
LABEL_45:
  strcpy(v18 + v15, "-[[:alnum:]]*");
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v74[32] = v20;
  v75 = v20;
  *v74 = v20;
  *&v74[16] = v20;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v74, v76, 0);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v78;
  }

  std::locale::locale(&v64, v74);
  v65 = *&v74[8];
  v66 = *&v74[24];
  v67 = *&v74[40];
  v68 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
  }

  v69 = *(&v75 + 1);
  if (!support::fs::getFilteredFiles(&v70, &v64, &v71, 0))
  {
    v24 = v68;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    std::locale::~locale(&v64);
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    goto LABEL_85;
  }

  v21 = v71;
  v22 = v72;
  v23 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::locale::~locale(&v64);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    if (v21 == v22)
    {
      goto LABEL_85;
    }
  }

  else if (v21 == v22)
  {
LABEL_85:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    goto LABEL_138;
  }

  v25 = v71;
  v26 = v72;
  if (v71 != v72)
  {
    v27 = 0;
    while (1)
    {
      memset(__p, 170, 24);
      ctu::tokenize();
      memset(&v62, 170, sizeof(v62));
      if (*(__p[1] - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *(__p[1] - 3), *(__p[1] - 2));
      }

      else
      {
        v29 = *(__p[1] - 24);
        v62.__r_.__value_.__r.__words[2] = *(__p[1] - 1);
        *&v62.__r_.__value_.__l.__data_ = v29;
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v62;
      }

      else
      {
        v30 = v62.__r_.__value_.__r.__words[0];
      }

      v31 = strtol(v30, 0, 0);
      if (v27 <= v31)
      {
        v27 = v31;
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        v32 = __p[0];
        if (__p[0])
        {
LABEL_80:
          v33 = __p[1];
          v28 = v32;
          if (__p[1] != v32)
          {
            do
            {
              v34 = *(v33 - 1);
              v33 -= 3;
              if (v34 < 0)
              {
                operator delete(*v33);
              }
            }

            while (v33 != v32);
            v28 = __p[0];
          }

          __p[1] = v32;
          operator delete(v28);
        }
      }

      else
      {
        v32 = __p[0];
        if (__p[0])
        {
          goto LABEL_80;
        }
      }

      v25 += 3;
      if (v25 == v26)
      {
        goto LABEL_89;
      }
    }
  }

  v27 = 0;
LABEL_89:
  v35 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v79.__r_.__value_.__l.__size_;
  }

  v37 = v36 + 1;
  if (v36 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 < 0x17)
  {
    memset(&v62, 0, sizeof(v62));
    v39 = &v62;
    *(&v62.__r_.__value_.__s + 23) = v36 + 1;
    if (!v36)
    {
      goto LABEL_103;
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
    v62.__r_.__value_.__l.__size_ = v36 + 1;
    v62.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    v62.__r_.__value_.__r.__words[0] = v39;
  }

  if (v35 >= 0)
  {
    v40 = &v79;
  }

  else
  {
    v40 = v79.__r_.__value_.__r.__words[0];
  }

  memmove(v39, v40, v36);
LABEL_103:
  *&v39[v36] = 45;
  std::to_string(&v61, v27);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v61;
  }

  else
  {
    v41 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v61.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v62, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  __p[2] = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v45 = __p[1];
    v48 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
    v47 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v47 == __p[1])
    {
      if (v48 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v46 = __p[0];
      if (v47 > 0x3FFFFFFFFFFFFFF2)
      {
        v51 = 0;
LABEL_124:
        v52 = operator new(v13);
        v53 = v52;
        if (v47)
        {
          memmove(v52, v46, v47);
        }

        v53[v47] = 47;
        if (!v51)
        {
          operator delete(v46);
        }

        __p[1] = v48;
        __p[2] = (v13 | 0x8000000000000000);
        __p[0] = v53;
        v54 = &v53[v48];
        goto LABEL_134;
      }

LABEL_115:
      v49 = 2 * v47;
      if (v48 > 2 * v47)
      {
        v49 = v48;
      }

      if ((v49 | 7) == 0x17)
      {
        v50 = 25;
      }

      else
      {
        v50 = (v49 | 7) + 1;
      }

      if (v49 >= 0x17)
      {
        v13 = v50;
      }

      else
      {
        v13 = 23;
      }

      v51 = v47 == 22;
      goto LABEL_124;
    }

    v46 = __p[0];
  }

  else
  {
    v46 = __p;
    if (SHIBYTE(__p[2]) == 22)
    {
      v47 = 22;
      v48 = 23;
      goto LABEL_115;
    }
  }

  *(v45 + v46) = 47;
  v55 = v45 + 1;
  if (SHIBYTE(__p[2]) < 0)
  {
    __p[1] = v55;
  }

  else
  {
    HIBYTE(__p[2]) = v55 & 0x7F;
  }

  v54 = &v55[v46];
LABEL_134:
  *v54 = 0;
  *&a2->__r_.__value_.__l.__data_ = *__p;
  a2->__r_.__value_.__r.__words[2] = __p[2];
  memset(__p, 0, 24);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

LABEL_138:
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
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
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  v60 = v75;
  if (!v75 || atomic_fetch_add((v75 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v74);
    if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_154;
  }

  (v60->__on_zero_shared)(v60);
  std::__shared_weak_count::__release_weak(v60);
  std::locale::~locale(v74);
  if (SHIBYTE(v76[2]) < 0)
  {
LABEL_154:
    operator delete(v76[0]);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_155;
    }

LABEL_150:
    if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_37:
    operator delete(v78.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_38:
    operator delete(v79.__r_.__value_.__l.__data_);
    return;
  }

LABEL_149:
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_155:
  operator delete(v77.__r_.__value_.__l.__data_);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_151:
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_297105CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, std::locale a44)
{
  if (v44 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        std::vector<std::string>::~vector[abi:ne200100](&a41);
        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a44);
        if (*(v45 - 161) < 0)
        {
          operator delete(*(v45 - 184));
          if ((*(v45 - 137) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((*(v45 - 137) & 0x80000000) == 0)
        {
LABEL_11:
          if (*(v45 - 113) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        operator delete(*(v45 - 160));
        if (*(v45 - 113) < 0)
        {
LABEL_12:
          operator delete(*(v45 - 136));
          if ((*(v45 - 89) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }

LABEL_16:
        if ((*(v45 - 89) & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_17:
        operator delete(*(v45 - 112));
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a16);
      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

BOOL support::fs::getPartitionInfo(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      memset(&v11, 0, sizeof(v11));
      v7 = statvfs(a1, &v11);
      result = v7 == 0;
      if (v7)
      {
        return result;
      }

LABEL_7:
      *a4 = v11.f_frsize;
      f_bavail = v11.f_bavail;
      *a2 = v11.f_blocks;
      *a3 = f_bavail;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  v9 = statvfs(*a1, &v11);
  result = v9 == 0;
  if (!v9)
  {
    goto LABEL_7;
  }

  return result;
}

void *support::fs::readCurrentLine@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v4 = v10;
  if (v10 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(v9, MEMORY[0x29EDC93D0]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v9);
  return std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, v7);
}

void sub_297106048(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__darwin_time_t support::fs::getFileCreationTime(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v3))
  {
    return 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    return v3.st_birthtimespec.tv_sec;
  }
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x29C26BD40](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_297106288(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x297106248);
  }

  __cxa_rethrow();
}

void metric::sendCoreAnalyticsEvent(const void **a1, void **a2, int a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 20;
  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    v21 = 779710063;
    HIBYTE(v21) = v4 + 20;
    *__p = *"com.apple.Telephony.";
    v11 = &v21 + 4;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    __p[1] = (v4 + 20);
    v21 = v9 | 0x8000000000000000;
    __p[0] = v10;
    *(v10 + 4) = 779710063;
    *v10 = *"com.apple.Telephony.";
    v11 = v10 + 20;
  }

  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v11, v12, v4);
LABEL_15:
  v11[v4] = 0;
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v13 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
    v13 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }
  }

  v14 = __p;
  if (v21 < 0)
  {
    v14 = __p[0];
  }

  *buf = 136315394;
  v23 = v14;
  v24 = 1024;
  v25 = a3;
  _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "Sending CoreAnalytics event: %s (repeated integer type: %d)", buf, 0x12u);
LABEL_21:
  if (a3)
  {
    v18[1] = MEMORY[0x29EDCA5F8];
    v18[2] = 1174405120;
    v18[3] = ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke;
    v18[4] = &__block_descriptor_tmp_33;
    v15 = *a2;
    object = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      object = xpc_null_create();
    }

    p_object = &object;
    analytics_send_exploding_event_lazy();
    xpc_release(object);
  }

  else
  {
    v16 = *a2;
    v18[0] = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v18[0] = xpc_null_create();
    }

    p_object = v18;
    analytics_send_event_lazy();
    xpc_release(v18[0]);
  }

  *p_object = 0;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297106650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

xpc_object_t __copy_helper_block_e8_32c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 32) = result;
  return result;
}

xpc_object_t ___ZN6metric22sendCoreAnalyticsEventENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3xpc4dictEb_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    xpc_retain(*(a1 + 32));
  }

  else
  {
    v1 = xpc_null_create();
  }

  v2 = xpc_null_create();
  xpc_release(v2);
  return v1;
}

void WorkoutModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v14[0] = v6;
  v14[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  WorkoutModule::WorkoutModule(v4, v14);
  *a2 = v5;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x20uLL);
  v8[1] = 0;
  v10 = v8 + 1;
  *v8 = &unk_2A1E2A580;
  v8[2] = 0;
  v8[3] = v5;
  a2[1] = v8;
  v11 = *(v5 + 80);
  if (v11)
  {
    if (v11->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
      *(v5 + 72) = v5;
      *(v5 + 80) = v8;
      v12 = v8;
      std::__shared_weak_count::__release_weak(v11);
      v8 = v12;
      if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_12:
        v13 = v8;
        (*(*v8 + 16))(v8, v9);
        std::__shared_weak_count::__release_weak(v13);
        if (!v7)
        {
          return;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *(v5 + 72) = v5;
    *(v5 + 80) = v8;
    if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }
  }

  if (!v7)
  {
    return;
  }

LABEL_9:

  std::__shared_weak_count::__release_weak(v7);
}

void sub_29710696C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<WorkoutModule> ctu::SharedSynchronizable<WorkoutModule>::make_shared_ptr<WorkoutModule>(WorkoutModule*)::{lambda(WorkoutModule*)#1}::operator() const(WorkoutModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_297106994(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t WorkoutModule::WorkoutModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E23A28;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E2A380;
  ctu::OsLogContext::OsLogContext(v12, "com.apple.telephony.abm", "workout.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("workout.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 104, v13);
  MEMORY[0x29C26B020](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  *a1 = &unk_2A1E2A380;
  *(a1 + 112) = 0;
  *(a1 + 132) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v7 = operator new(0x30uLL);
  v7->__shared_owners_ = 0;
  p_shared_owners = &v7->__shared_owners_;
  v7->__shared_weak_owners_ = 0;
  v7->__vftable = &unk_2A1E2A500;
  v7[1].__vftable = 0;
  v7[1].__shared_owners_ = 0;
  v7[1].__shared_weak_owners_ = 0;
  v9 = objc_alloc_init(MEMORY[0x29EDBABE0]);
  v7[1].__shared_weak_owners_ = [objc_alloc(MEMORY[0x29EDBAF08]) initWithHealthStore:v9];

  *(a1 + 136) = v7 + 1;
  *(a1 + 144) = v7;
  shared_owners = v7[1].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7[1].__vftable = &v7[1];
      v7[1].__shared_owners_ = v7;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7[1].__vftable = &v7[1];
    v7[1].__shared_owners_ = v7;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }

  *(a1 + 152) = config::hw::watch(shared_owners);
  *(a1 + 153) = 0;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  return a1;
}

void sub_297106CDC(_Unwind_Exception *a1)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1 + 136);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C26B020](v1 + 104);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void WorkoutModule::~WorkoutModule(WorkoutModule *this)
{
  *this = &unk_2A1E2A380;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 18);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 15);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  MEMORY[0x29C26B020](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  WorkoutModule::~WorkoutModule(this);

  operator delete(v1);
}

_WORD *WorkoutModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_WORD *WorkoutModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 770;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void WorkoutModule::shutdownWithStage(void *a1, int a2, dispatch_object_t *a3)
{
  if (a2 != 3)
  {
    if (a2 != 2)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void WorkoutModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<WorkoutModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}