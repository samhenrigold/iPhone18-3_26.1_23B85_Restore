void sub_297089284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
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

void sub_2970894F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
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
  aBlock[3] = &__block_descriptor_tmp_48_1;
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
  v59[3] = &__block_descriptor_tmp_59_0;
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
  v56[3] = &__block_descriptor_tmp_63_0;
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
    *&__dst[8] = xmmword_297227A50;
    strcpy(*__dst, "CommandBasebandHealthEvent");
    v53[0] = MEMORY[0x29EDCA5F8];
    v53[1] = 1174405120;
    v53[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_64;
    v53[3] = &__block_descriptor_tmp_67_1;
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
  v35 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(__dst, v34);
    v36 = *__dst;
    *__dst = 0uLL;
    v37 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v36;
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

    v35 = off_2A18B7390;
  }

  v39 = *(&off_2A18B7390 + 1);
  v47 = v35;
  v48 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
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
  v45[3] = &__block_descriptor_tmp_74_0;
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

void sub_29708A024(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45)
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
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Start network registration timer for metric submission", buf, 2u);
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
  *v8 = &unk_2A1E272C8;
  v8[1] = v4;
  v8[2] = v6;
  v8[3] = this;
  v25 = v8;
  support::misc::safe_timer::create(__p, 1800000, v24, 17, buf);
  v11 = *buf;
  if (*buf)
  {
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E27358;
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
    v22 = &__block_descriptor_tmp_8;
    v23 = v15;
    dispatch_sync(v16, buf);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29708A5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
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

  if (MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
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

{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void *__copy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
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

      v10 = MEMORY[0x29C26CE60](*a2);
      v11 = MEMORY[0x29EDCAA00];
      if (v10 != MEMORY[0x29EDCAA00])
      {
        v12 = v7[13];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "No input is given", &buf, 2u);
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
                          _os_log_impl(&dword_296FF7000, v49, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
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

                          if (MEMORY[0x29C26CE60](v53) == v11)
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
          v58[3] = &__block_descriptor_tmp_54;
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
        _os_log_impl(&dword_296FF7000, v25, OS_LOG_TYPE_DEFAULT, "#I Invalid reset request [%s] ignoring it", &__dst, 0xCu);
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

void sub_29708B5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, xpc_object_t object, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, char a40)
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

void ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_51(uint64_t a1)
{
  v2 = *(a1 + 32);
  ResetInfo::ResetInfo(&v16, (a1 + 40));
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN10BootModule28registerCommandHandlers_syncEv_block_invoke_2_52;
  v6[3] = &__block_descriptor_tmp_53_2;
  ResetInfo::ResetInfo(&v7, (a1 + 40));
  v3 = *(a1 + 152);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = _Block_copy(v6);
  v15 = v4;
  BootModule::requestReset(v2, &v16, &v15);
  if (v4)
  {
    _Block_release(v4);
  }

  if (v22 < 0)
  {
    operator delete(v21);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_7:
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v19);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    operator delete(v16.__r_.__value_.__l.__data_);
    v5 = aBlock;
    if (!aBlock)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_13:
  operator delete(v17);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v5 = aBlock;
  if (aBlock)
  {
LABEL_15:
    _Block_release(v5);
  }

LABEL_16:
  if (v13 < 0)
  {
    operator delete(__p);
    if ((v11 & 0x80000000) == 0)
    {
LABEL_18:
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v10);
  if ((v9 & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v7.__r_.__value_.__l.__data_);
    return;
  }

LABEL_23:
  operator delete(v8);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_29708B8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *aBlock)
{
  if (v27)
  {
    _Block_release(v27);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
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

  if (MEMORY[0x29C26CE60](v6) == MEMORY[0x29EDCAA00])
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

      if (MEMORY[0x29C26CE60](v8) == MEMORY[0x29EDCAA00])
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

void sub_29708BEA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, ...)
{
  va_start(va, object);
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
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

  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v10 = v7[13];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = *MEMORY[0x29EDBEE80];
      *object = 136315138;
      *&object[4] = v25;
      _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
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

void sub_29708C19C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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

  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v9 = v5[13];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "No input is given", object, 2u);
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

void sub_29708C4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
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
        if (*object && MEMORY[0x29C26CE60](*object) == v11)
        {
          xpc_retain(v10);
        }

        else
        {
          v10 = xpc_null_create();
        }

        xpc_release(*object);
        if (MEMORY[0x29C26CE60](v10) == v11)
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
            _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Transport client %s", object, 0xCu);
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

void sub_29708C6DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
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
      _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Skip user notification for MobileAsset PT version %s", &buf, 0xCu);
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

void sub_29708CB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void sub_29708CDAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
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

void sub_29708CE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  support::ui::NotificationInfo::~NotificationInfo(&a9);
  support::ui::NotificationInfo::~NotificationInfo(&a19);
  _Unwind_Resume(a1);
}

void sub_29708CE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I PT file updated, triggering soft reset", &buf, 2u);
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

LABEL_34:
    operator delete(v30);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_35;
  }

  operator delete(__p[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v25);
  if (SHIBYTE(v31) < 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_35:
  operator delete(__dst);
LABEL_24:
  ResetInfo::ResetInfo(&v15, &buf);
  v14 = 0;
  BootModule::requestReset(this, &v15, &v14);
  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_26:
      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_38;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v18);
  if ((v17 & 0x80000000) == 0)
  {
LABEL_27:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v16);
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_28:
    *(this + 194) = 0;
    if ((SHIBYTE(v40) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v15.__r_.__value_.__l.__data_);
  *(this + 194) = 0;
  if ((SHIBYTE(v40) & 0x80000000) == 0)
  {
LABEL_29:
    if ((SBYTE7(v38) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(*(&v39 + 1));
  if ((SBYTE7(v38) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v37);
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
LABEL_31:
    if ((SBYTE7(v35) & 0x80000000) == 0)
    {
      return;
    }

LABEL_43:
    operator delete(buf);
    return;
  }

LABEL_42:
  operator delete(*(&v35 + 1));
  if (SBYTE7(v35) < 0)
  {
    goto LABEL_43;
  }
}

void sub_29708D3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v5 - 176));
  _Unwind_Resume(a1);
}

void sub_29708D420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
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
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
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
  *v12 = &unk_2A1E27098;
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
  *v18 = &unk_2A1E27148;
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
  *v24 = &unk_2A1E271C8;
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
  *v30 = &unk_2A1E27248;
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

void sub_29708DAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
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
      v14 = off_29EE64070[v13];
      if (a2 > 4)
      {
        goto LABEL_24;
      }
    }

    v15 = off_29EE64070[a2];
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
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I %s PT MobileAsset status [%s] -> [%s] (%s)", &v17, 0x2Au);
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
    v10 = off_2A18B75C0;
    if (!off_2A18B75C0)
    {
      SharedData::create_default_global(buf);
      v11 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v12 = *(&off_2A18B75C0 + 1);
      off_2A18B75C0 = v11;
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

      v10 = off_2A18B75C0;
    }

    v14 = *(&off_2A18B75C0 + 1);
    v49 = v10;
    v50 = *(&off_2A18B75C0 + 1);
    if (*(&off_2A18B75C0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_297227A20;
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
        v35 = off_29EE64070[a2];
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
        _os_log_impl(&dword_296FF7000, v40, OS_LOG_TYPE_DEFAULT, "#I MobileAsset PT same as the last verified version/state [%s/%s]", buf, 0x16u);
      }

      return 1;
    }

    *buf = 0;
    v16 = "#I Verification failed and clearing MobileAsset PT path";
LABEL_63:
    _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
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
    v23 = off_2A18B75C0;
    if (!off_2A18B75C0)
    {
      SharedData::create_default_global(buf);
      v24 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v25 = *(&off_2A18B75C0 + 1);
      off_2A18B75C0 = v24;
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

      v23 = off_2A18B75C0;
    }

    v27 = *(&off_2A18B75C0 + 1);
    v49 = v23;
    v50 = *(&off_2A18B75C0 + 1);
    if (*(&off_2A18B75C0 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_297227A20;
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
    _os_log_impl(&dword_296FF7000, v43, OS_LOG_TYPE_DEFAULT, "#I Ignore MobileAsset PT version %s as it was rejected before", buf, 0xCu);
    return 0;
  }

  return result;
}

void sub_29708E5C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
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

void sub_29708E7D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

  if (MEMORY[0x29C26CE60](v7) == v8)
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
    v25 = off_29EE64070[a2];
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
    if (MEMORY[0x29C26CE60](v43) == v8)
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
    if (MEMORY[0x29C26CE60](v51) == v8)
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
    _os_log_impl(&dword_296FF7000, v57, OS_LOG_TYPE_DEFAULT, "#I Updating Analytics metric of mobileassetUpdated: %s", buf, 0xCu);
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

void sub_29708F068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t object)
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
    std::string::__assign_external((a1 + 256), off_29EE64070[a2]);
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
    v8 = off_2A18B75C0;
    if (off_2A18B75C0)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  if ((*(a3 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v5, *a3, a3[1]);
    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
    v8 = off_2A18B75C0;
    if (off_2A18B75C0)
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
    v8 = off_2A18B75C0;
    if (off_2A18B75C0)
    {
      goto LABEL_24;
    }
  }

LABEL_17:
  SharedData::create_default_global(__p);
  v11 = *__p;
  *__p = 0;
  *&__p[8] = 0;
  v12 = *(&off_2A18B75C0 + 1);
  off_2A18B75C0 = v11;
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

  v8 = off_2A18B75C0;
LABEL_24:
  v14 = *(&off_2A18B75C0 + 1);
  v23 = v8;
  v24 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  *__p = operator new(0x28uLL);
  *&__p[8] = xmmword_297227A30;
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
    v15 = off_2A18B75C0;
    if (off_2A18B75C0)
    {
      goto LABEL_45;
    }

    goto LABEL_37;
  }

LABEL_36:
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v15 = off_2A18B75C0;
  if (off_2A18B75C0)
  {
    goto LABEL_45;
  }

LABEL_37:
  SharedData::create_default_global(__p);
  v16 = *__p;
  *__p = 0;
  *&__p[8] = 0;
  v17 = *(&off_2A18B75C0 + 1);
  off_2A18B75C0 = v16;
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

  v15 = off_2A18B75C0;
LABEL_45:
  v19 = *(&off_2A18B75C0 + 1);
  v23 = v15;
  v24 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  *__p = operator new(0x28uLL);
  *&__p[8] = xmmword_297227A40;
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

void sub_29708F6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  operator delete(v22);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v23 - 64);
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
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband total boot time = %u millisec", v19, 8u);
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
  _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband image push time = %u millisec", v19, 8u);
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
  _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband engage time     = %u millisec", v19, 8u);
  v8 = *(this + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    v11 = *(this + 46);
    LODWORD(v19[0]) = 67109120;
    HIDWORD(v19[0]) = v11;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Baseband boot attempts   = %u", v19, 8u);
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

void sub_29708FA48(_Unwind_Exception *exception_object, int a2)
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
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of bootup time", buf, 2u);
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = MEMORY[0x29EDCAA00];
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v9) == v10)
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
    if (MEMORY[0x29C26CE60](v12) == v10)
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

void sub_29708FEA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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
  v114 = _os_activity_create(&dword_296FF7000, "Baseband state: boot up failed", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
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
        _os_log_error_impl(&dword_296FF7000, v47, OS_LOG_TYPE_ERROR, "Attempting to boot baseband again; attempt=%d", state, 8u);
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

LABEL_184:
                  operator delete(v109);
LABEL_110:
                  ResetInfo::ResetInfo(&v94, state);
                  v93 = 0;
                  BootModule::requestReset(a1, &v94, &v93);
                  if (v100 < 0)
                  {
                    operator delete(v99);
                    if ((v98 & 0x80000000) == 0)
                    {
LABEL_112:
                      if ((v96 & 0x80000000) == 0)
                      {
                        goto LABEL_113;
                      }

                      goto LABEL_187;
                    }
                  }

                  else if ((v98 & 0x80000000) == 0)
                  {
                    goto LABEL_112;
                  }

                  operator delete(v97);
                  if ((v96 & 0x80000000) == 0)
                  {
LABEL_113:
                    if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_114;
                    }

                    goto LABEL_188;
                  }

LABEL_187:
                  operator delete(v95);
                  if ((SHIBYTE(v94.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_114:
                    if ((SHIBYTE(v120) & 0x80000000) == 0)
                    {
                      goto LABEL_115;
                    }

                    goto LABEL_189;
                  }

LABEL_188:
                  operator delete(v94.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v120) & 0x80000000) == 0)
                  {
LABEL_115:
                    if ((SBYTE7(v118) & 0x80000000) == 0)
                    {
                      goto LABEL_116;
                    }

                    goto LABEL_190;
                  }

LABEL_189:
                  operator delete(*(&v119 + 1));
                  if ((SBYTE7(v118) & 0x80000000) == 0)
                  {
LABEL_116:
                    if ((SHIBYTE(v116) & 0x80000000) == 0)
                    {
                      goto LABEL_117;
                    }

                    goto LABEL_191;
                  }

LABEL_190:
                  operator delete(v117);
                  if ((SHIBYTE(v116) & 0x80000000) == 0)
                  {
LABEL_117:
                    if ((state[23] & 0x80000000) == 0)
                    {
                      goto LABEL_173;
                    }

LABEL_192:
                    operator delete(*state);
                    goto LABEL_173;
                  }

LABEL_191:
                  operator delete(*&state[24]);
                  if ((state[23] & 0x80000000) == 0)
                  {
                    goto LABEL_173;
                  }

                  goto LABEL_192;
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

              goto LABEL_184;
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
    _os_log_error_impl(&dword_296FF7000, v24, OS_LOG_TYPE_ERROR, "Baseband is declared dead; no more boot attempts", state, 2u);
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
  v32 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(state);
    v33 = *state;
    *state = 0;
    *&state[8] = 0;
    v34 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v33;
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

    v32 = off_2A18B7340;
  }

  *&v107 = v32;
  *(&v107 + 1) = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
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
  aBlock[3] = &__block_descriptor_tmp_89;
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
    if (MEMORY[0x29C26CE60](v44) == v45)
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
LABEL_143:
    memmove(v70, v67, v69);
    v70[v69] = 0;
    object = v46;
    if (v46)
    {
      goto LABEL_138;
    }

LABEL_144:
    object = xpc_null_create();
    goto LABEL_145;
  }

  state[23] = v68;
  v70 = state;
  if (v68)
  {
    goto LABEL_143;
  }

  state[0] = 0;
  object = v46;
  if (!v46)
  {
    goto LABEL_144;
  }

LABEL_138:
  xpc_retain(v46);
LABEL_145:
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
    if (MEMORY[0x29C26CE60](v73) == v45)
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
  *&state[8] = xmmword_297227A10;
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
      goto LABEL_173;
    }

    goto LABEL_172;
  }

  (v78->__on_zero_shared)(v78);
  std::__shared_weak_count::__release_weak(v78);
  std::__shared_weak_count::__release_weak(v31);
  v79 = cf;
  if (cf)
  {
LABEL_172:
    CFRelease(v79);
  }

LABEL_173:
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

void sub_297090DD8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN10BootModule21handleBootFailed_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      if (!a1[5])
      {
        goto LABEL_15;
      }

      v5 = v3[18];
      v3[17] = 0;
      v3[18] = 0;
      if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = 0xAAAAAAAAAAAAAAAALL;
      (*(*v3 + 88))(&v11, v3);
      v6 = v11;
      if (v11)
      {
        v7 = operator new(0x38uLL);
        strcpy(v7, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v8 = *(v6 + 48);
        std::string::__init_copy_ctor_external(&v15, v7, 0x33uLL);
        (*(*v8 + 32))(v8, &v15);
        if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v15.__r_.__value_.__l.__data_);
        }

        operator delete(v7);
      }

      v9 = v12;
      if (v12 && !atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      v4 = v14;
      if (v14)
      {
LABEL_15:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v10 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }
  }
}

void sub_297091300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  operator delete(v19);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_297091344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule21handleBootFailed_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE_block_invoke_90(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *a3;
        if (*a3)
        {
          xpc_retain(*a3);
          v12 = v7[10];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v7[10];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = v7[9];
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x28uLL);
        *v16 = v7;
        v16[1] = v10;
        v16[2] = v9;
        *(v16 + 6) = a2;
        v16[4] = v11;
        v17 = xpc_null_create();
        v18 = v7[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_21handleBootFailed_syncENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEUb3_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNS6_10unique_ptrISE_NS6_14default_deleteISE_EEEEENUlPvE_8__invokeESN_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ctu::os::scoped_activity::~scoped_activity(void **this)
{
  v1 = *this;
  if (v1)
  {
    os_release(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    os_release(v1);
  }
}

void BootModule::handleReset_sync(uint64_t a1, uint64_t a2, void **a3)
{
  memset(&v54, 170, sizeof(v54));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v54, *(a2 + 48), *(a2 + 56));
    v6 = (a1 + 112);
    if ((a1 + 112) == &v54)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v54 = *(a2 + 48);
    v6 = (a1 + 112);
    if ((a1 + 112) == &v54)
    {
      goto LABEL_16;
    }
  }

  if (*(a1 + 135) < 0)
  {
    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v54;
    }

    else
    {
      v7 = v54.__r_.__value_.__r.__words[0];
    }

    if ((v54.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v54.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v54.__r_.__value_.__l.__size_;
    }

    std::string::__assign_no_alias<false>(v6, v7, size);
  }

  else if ((*(&v54.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v6, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
  }

  else
  {
    *v6 = v54;
  }

LABEL_16:
  v53 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v53 = Mutable;
  }

  else
  {
    Mutable = v53;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF210], v9, v11);
  ResetInfo::addToDict(a2, &v53, v12, v13, v14);
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v15 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(&v55);
    v16 = v55;
    v55 = 0uLL;
    v17 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(&v55 + 1);
    if (*(&v55 + 1) && !atomic_fetch_add((*(&v55 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A18B7340;
  }

  v51 = v15;
  v52 = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v19 = *(a1 + 80);
  if (!v19 || (v20 = *(a1 + 72), (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = v51;
  v24 = *MEMORY[0x29EDBF460];
  v25 = strlen(*MEMORY[0x29EDBF460]);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v25 | 7) + 1;
    }

    v27 = operator new(v29);
    __dst[1] = v26;
    v50 = v29 | 0x8000000000000000;
    __dst[0] = v27;
LABEL_42:
    memmove(v27, v24, v26);
    *(v26 + v27) = 0;
    v28 = v53;
    if (!v53)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  HIBYTE(v50) = v25;
  v27 = __dst;
  if (v25)
  {
    goto LABEL_42;
  }

  LOBYTE(__dst[0]) = 0;
  v28 = v53;
  if (!v53)
  {
    goto LABEL_45;
  }

LABEL_43:
  v30 = CFGetTypeID(v28);
  if (v30 == CFDictionaryGetTypeID())
  {
    v48 = v28;
    CFRetain(v28);
    goto LABEL_46;
  }

LABEL_45:
  v28 = 0;
  v48 = 0;
LABEL_46:
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN10BootModule16handleReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  v37[3] = &__block_descriptor_tmp_97;
  v37[4] = a1;
  v37[5] = v20;
  v38 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  ResetInfo::ResetInfo(&v39, a2);
  v31 = *a3;
  if (*a3)
  {
    v31 = _Block_copy(v31);
  }

  aBlock = v31;
  v32 = _Block_copy(v37);
  v47 = v32;
  ABMServer::broadcast(v23, __dst, &v48, &v47);
  if (v32)
  {
    _Block_release(v32);
  }

  if (v28)
  {
    CFRelease(v28);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(__dst[0]);
    v33 = aBlock;
    if (!aBlock)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v33 = aBlock;
  if (aBlock)
  {
LABEL_56:
    _Block_release(v33);
  }

LABEL_57:
  if (v45 < 0)
  {
    operator delete(__p);
    if ((v43 & 0x80000000) == 0)
    {
LABEL_59:
      if ((v41 & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_72;
    }
  }

  else if ((v43 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

  operator delete(v42);
  if ((v41 & 0x80000000) == 0)
  {
LABEL_60:
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

LABEL_73:
    operator delete(v39.__r_.__value_.__l.__data_);
    v34 = v38;
    if (!v38)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

LABEL_72:
  operator delete(v40);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_73;
  }

LABEL_61:
  v34 = v38;
  if (v38)
  {
LABEL_62:
    std::__shared_weak_count::__release_weak(v34);
  }

LABEL_63:
  std::__shared_weak_count::__release_weak(v22);
  v35 = v52;
  if (!v52 || atomic_fetch_add((v52 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v36 = v53;
    if (!v53)
    {
      goto LABEL_67;
    }

    goto LABEL_66;
  }

  (v35->__on_zero_shared)(v35);
  std::__shared_weak_count::__release_weak(v35);
  v36 = v53;
  if (v53)
  {
LABEL_66:
    CFRelease(v36);
  }

LABEL_67:
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }
}

void sub_297091AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *aBlock, uint64_t a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v38 - 152));
  if (*(v38 - 121) < 0)
  {
    operator delete(*(v38 - 144));
  }

  _Unwind_Resume(a1);
}

void ___ZN10BootModule16handleReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v24 = v4;
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_32;
  }

  if (*(a1 + 79) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    __s1 = *(a1 + 56);
  }

  v6 = *MEMORY[0x29EDBEB68];
  v7 = strlen(*MEMORY[0x29EDBEB68]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1.__r_.__value_.__l.__size_)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      v8 = v3[13];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        ResetInfo::ResetInfo(&v17, (a1 + 56));
        v9 = *(a1 + 168);
        if (v9)
        {
          v10 = _Block_copy(v9);
        }

        else
        {
          v10 = 0;
        }

        v16 = v10;
        BootModule::hardReset_sync(v3, &v17, &v16);
        if (v10)
        {
          _Block_release(v10);
        }

        v15 = &v17;
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }

LABEL_11:
      LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Request to perform hard reset", &__s1, 2u);
      goto LABEL_12;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v11 = __s1.__r_.__value_.__r.__words[0];
    v12 = memcmp(__s1.__r_.__value_.__l.__data_, v6, v7);
    operator delete(v11);
    if (v12)
    {
LABEL_10:
      v8 = v3[13];
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]) || memcmp(&__s1, v6, v7))
  {
    goto LABEL_10;
  }

  v13 = v3[13];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Request to perform soft reset", &__s1, 2u);
  }

  ResetInfo::ResetInfo(&v20, (a1 + 56));
  v14 = *(a1 + 168);
  if (v14)
  {
    v14 = _Block_copy(v14);
  }

  aBlock = v14;
  (*(*v3 + 112))(v3, &v20, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v15 = &v20;
  if ((v21 & 0x80000000) == 0)
  {
LABEL_29:
    if ((SHIBYTE(v15[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v15[3].__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v15[2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_30:
    if ((SHIBYTE(v15[1].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_36:
    operator delete(v15[1].__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_32:
      if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return;
      }

LABEL_38:
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return;
    }

    goto LABEL_37;
  }

LABEL_35:
  operator delete(v15[2].__r_.__value_.__l.__data_);
  if (SHIBYTE(v15[1].__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }

LABEL_31:
  if ((SHIBYTE(v15->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_32;
  }

LABEL_37:
  operator delete(v15->__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_38;
  }
}

void sub_297091EA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock, ...)
{
  va_start(va, aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo(va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 - 64);
  _Unwind_Resume(a1);
}

void sub_297091EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    _Block_release(v9);
  }

  ResetInfo::~ResetInfo(va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v10 - 64);
  _Unwind_Resume(a1);
}

void BootModule::hardReset_sync(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v6 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(&__s1);
    v7 = *&__s1.__r_.__value_.__l.__data_;
    *&__s1.__r_.__value_.__l.__data_ = 0uLL;
    v8 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    size = __s1.__r_.__value_.__l.__size_;
    if (__s1.__r_.__value_.__l.__size_ && !atomic_fetch_add((__s1.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v6 = off_2A18B7340;
  }

  v46 = v6;
  v47 = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  *(a1 + 188) = 0;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __s1 = *(a2 + 24);
  }

  v10 = *MEMORY[0x29EDBF5C0];
  v11 = strlen(*MEMORY[0x29EDBF5C0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v11 == __s1.__r_.__value_.__l.__size_)
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v12 = __s1.__r_.__value_.__r.__words[0];
      v13 = memcmp(__s1.__r_.__value_.__l.__data_, v10, v11);
      operator delete(v12);
      if (!v13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

LABEL_25:
    if ((capabilities::trace::supportsCoredumpCrashReasonOnCustomerBuild(v11) & 1) == 0)
    {
      v17 = *(a1 + 584);
      if (v17)
      {
        v16 = (*v17 + 16);
        goto LABEL_28;
      }
    }

    goto LABEL_29;
  }

  if (v11 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
  {
    goto LABEL_25;
  }

  v11 = memcmp(&__s1, v10, v11);
  if (v11)
  {
    goto LABEL_25;
  }

LABEL_21:
  v14 = *(a1 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_296FF7000, v14, OS_LOG_TYPE_ERROR, "Falling back to baseband powercycle as bootup failed", &__s1, 2u);
    v15 = *(a1 + 584);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

  v15 = *(a1 + 584);
  if (v15)
  {
LABEL_23:
    v16 = (*v15 + 24);
LABEL_28:
    (*v16)();
  }

LABEL_29:
  v18 = *a3;
  if (*a3)
  {
    *(&__s1.__r_.__value_.__s + 23) = 0;
    __s1.__r_.__value_.__s.__data_[0] = 0;
    (*(v18 + 16))(v18, 0, &__s1);
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }
  }

  __s1.__r_.__value_.__r.__words[0] = 0;
  v19 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = __s1.__r_.__value_.__r.__words[0];
  if (Mutable)
  {
    __s1.__r_.__value_.__r.__words[0] = Mutable;
    if (v22)
    {
      CFRelease(v22);
      Mutable = __s1.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    Mutable = __s1.__r_.__value_.__r.__words[0];
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v19, v21);
  ResetInfo::addToDict(a2, &__s1, v23, v24, v25);
  v26 = *(a1 + 80);
  if (!v26 || (v27 = *(a1 + 72), (v28 = std::__shared_weak_count::lock(v26)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v29 = v28;
  atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v29);
  }

  v30 = v46;
  v31 = *MEMORY[0x29EDBF460];
  v32 = strlen(*MEMORY[0x29EDBF460]);
  if (v32 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v33 = v32;
  if (v32 >= 0x17)
  {
    if ((v32 | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (v32 | 7) + 1;
    }

    v34 = operator new(v36);
    __dst[1] = v33;
    v45 = v36 | 0x8000000000000000;
    __dst[0] = v34;
LABEL_49:
    memmove(v34, v31, v33);
    *(v33 + v34) = 0;
    v35 = __s1.__r_.__value_.__r.__words[0];
    if (!__s1.__r_.__value_.__r.__words[0])
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  HIBYTE(v45) = v32;
  v34 = __dst;
  if (v32)
  {
    goto LABEL_49;
  }

  LOBYTE(__dst[0]) = 0;
  v35 = __s1.__r_.__value_.__r.__words[0];
  if (!__s1.__r_.__value_.__r.__words[0])
  {
    goto LABEL_52;
  }

LABEL_50:
  v37 = CFGetTypeID(v35);
  if (v37 == CFDictionaryGetTypeID())
  {
    v43 = v35;
    CFRetain(v35);
    goto LABEL_53;
  }

LABEL_52:
  v35 = 0;
  v43 = 0;
LABEL_53:
  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 1174405120;
  v40[2] = ___ZN10BootModule14hardReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  v40[3] = &__block_descriptor_tmp_101_0;
  v40[4] = a1;
  v40[5] = v27;
  v41 = v29;
  atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = _Block_copy(v40);
  v42 = v38;
  ABMServer::broadcast(v30, __dst, &v43, &v42);
  if (v38)
  {
    _Block_release(v38);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v29);
  if (__s1.__r_.__value_.__r.__words[0])
  {
    CFRelease(__s1.__r_.__value_.__l.__data_);
  }

  v39 = v47;
  if (v47)
  {
    if (!atomic_fetch_add((v47 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }
  }
}

void sub_2970924D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297092510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (*(v24 - 73) < 0)
  {
    operator delete(*(v24 - 96));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a24);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule14hardReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6[0] = MEMORY[0x29EDCA5F8];
        v6[1] = 0x40000000;
        v6[2] = ___ZN10BootModule14hardReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
        v6[3] = &__block_descriptor_tmp_98_0;
        v6[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v6);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void BootModule::boot_sync(BootModule *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = *(this + 576);
  if ((v2 - 2) <= 6)
  {
    v3 = *(this + 13);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = off_29EE64038[v2 - 2];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v4;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Bootup request rejected as we are already in %s state", &buf, 0xCu);
    }

    return;
  }

  (*(*this + 104))(this, 2);
  ++*(this + 46);
  v6 = *(this + 9);
  v5 = *(this + 10);
  v36 = v6;
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5), (v37 = v7) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = 0;
  v9 = dispatch_group_create();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v39 = 0x4002000000;
  v40 = __Block_byref_object_copy__1;
  v41 = __Block_byref_object_dispose__1;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (capabilities::abs::shouldBoot(v9))
  {
    global_queue = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN10BootModule9boot_syncEv_block_invoke;
    block[3] = &unk_2A1E26D00;
    block[6] = this;
    block[7] = v6;
    v31 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    block[4] = &v32;
    block[5] = &buf;
    dispatch_group_async(v9, global_queue, block);
    v11 = v31;
    if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(v9);
    }

    v12 = *(this + 13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Faking bootup", v29, 2u);
    }

    v13 = *(this + 17);
    v14 = operator new(0x20uLL);
    v27 = v14;
    v28 = xmmword_297227A60;
    strcpy(v14, "Wait for Ready on Fake Boot");
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_136;
    aBlock[3] = &__block_descriptor_tmp_137;
    aBlock[4] = this;
    aBlock[5] = v6;
    v24 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    group = v9;
    if (v9)
    {
      dispatch_retain(v9);
      dispatch_group_enter(group);
    }

    v15 = _Block_copy(aBlock);
    v26 = v15;
    ResetDetection::add(v13, &v27, 0, &v26, -1);
    if (v15)
    {
      _Block_release(v15);
    }

    operator delete(v14);
    *(v33 + 24) = 1;
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    v16 = v24;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }
  }

  v17 = *(this + 11);
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 1174405120;
  v20[2] = ___ZN10BootModule9boot_syncEv_block_invoke_138;
  v20[3] = &unk_2A1E26DF8;
  v20[6] = this;
  v20[7] = v36;
  v21 = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20[4] = &v32;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v20[5] = &buf;
  dispatch_group_notify(v9, v17, v20);
  if (object)
  {
    dispatch_release(object);
  }

  v18 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    _Block_object_dispose(&buf, 8);
    if ((SHIBYTE(v44) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  _Block_object_dispose(&buf, 8);
  if (SHIBYTE(v44) < 0)
  {
LABEL_35:
    operator delete(v42);
  }

LABEL_36:
  if (v9)
  {
    dispatch_release(v9);
  }

  _Block_object_dispose(&v32, 8);
  v19 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_297092C64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void BootModule::checkFSSyncStatus_sync(uint64_t a1, void **a2)
{
  v3 = *(a1 + 80);
  if (!v3 || (v5 = *(a1 + 72), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v8 = *MEMORY[0x29EDBF310];
  v9 = strlen(*MEMORY[0x29EDBF310]);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

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
    __dst[1] = v10;
    v23 = v12 | 0x8000000000000000;
    __dst[0] = v11;
    goto LABEL_13;
  }

  HIBYTE(v23) = v9;
  v11 = __dst;
  if (v9)
  {
LABEL_13:
    memmove(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  v13 = xpc_null_create();
  v21 = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_102;
  aBlock[4] = a1;
  v14 = *a2;
  if (*a2)
  {
    v14 = _Block_copy(v14);
  }

  v17 = v14;
  v18 = v5;
  v19 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = _Block_copy(aBlock);
  v20 = v15;
  Service::runCommand(a1, __dst, &v21, &v20);
  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v13);
  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_297092F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v27);
  if (a25 < 0)
  {
    operator delete(__p);
    std::__shared_weak_count::__release_weak(v25);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v25);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEE_block_invoke(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[7];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = v8;
  if (a1[6])
  {
    v10 = *a3;
    if (*a3)
    {
      xpc_retain(*a3);
      v11 = a1[5];
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = a1[5];
      if (v11)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v13 = v7[10];
        if (!v13)
        {
LABEL_25:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

LABEL_10:
        v14 = v7[9];
        v15 = std::__shared_weak_count::lock(v13);
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = v15;
        v17 = operator new(0x18uLL);
        *v17 = a2;
        v17[1] = v10;
        v18 = xpc_null_create();
        if (v12)
        {
          v19 = _Block_copy(v12);
        }

        else
        {
          v19 = 0;
        }

        v17[2] = v19;
        v20 = v7[11];
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = operator new(0x18uLL);
        *v21 = v17;
        v21[1] = v14;
        v21[2] = v16;
        dispatch_async_f(v20, v21, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_22checkFSSyncStatus_syncENS_5blockIU13block_pointerFvbbEEEEUb4_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_);
        if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (!v12)
          {
            goto LABEL_19;
          }
        }

        else
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          if (!v12)
          {
LABEL_19:
            xpc_release(v18);
            goto LABEL_20;
          }
        }

        _Block_release(v12);
        goto LABEL_19;
      }
    }

    v12 = 0;
    v13 = v7[10];
    if (!v13)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_20:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void *__copy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvbbEEE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(void *a1, void *a2)
{
  result = a2[5];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[6];
  v5 = a2[7];
  a1[5] = result;
  a1[6] = v6;
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvbbEEE48c35_ZTSNSt3__18weak_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void BootModule::softReset_sync(uint64_t a1, __int128 *a2, void **a3)
{
  if ((atomic_load_explicit(&qword_2A18B77E0, memory_order_acquire) & 1) == 0)
  {
    v27 = __cxa_guard_acquire(&qword_2A18B77E0);
    if (v27)
    {
      v28 = config::hw::watch(v27);
      v29 = 12;
      if (v28)
      {
        v29 = 18;
      }

      _MergedGlobals_3 = v29;
      __cxa_guard_release(&qword_2A18B77E0);
    }
  }

  v6 = *(a1 + 80);
  if (!v6 || (v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v50 = 0;
    v10 = std::__shared_weak_count::lock(v8);
    v51 = v10;
    if (v10)
    {
LABEL_6:
      v50 = v7;
      goto LABEL_9;
    }
  }

  else
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
    v50 = 0;
    v10 = std::__shared_weak_count::lock(v9);
    v51 = v10;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_9:
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_122;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v39 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a3;
  if (*a3)
  {
    v11 = _Block_copy(v11);
  }

  v40 = v11;
  ResetInfo::ResetInfo(&v41, a2);
  v12 = _Block_copy(aBlock);
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
  }

  v48 = v12;
  v49 = v13;
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v14 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v15 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v52, v14);
    v16 = v52;
    v52 = 0uLL;
    v17 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *(&v52 + 1);
    if (*(&v52 + 1) && !atomic_fetch_add((*(&v52 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A18B7390;
  }

  v19 = *(&off_2A18B7390 + 1);
  v32 = v15;
  v33 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v15 + 16))(&v34, v15);
  v36 = 0;
  v37 = 0;
  if (v35)
  {
    v37 = std::__shared_weak_count::lock(v35);
    if (v37)
    {
      v36 = v34;
    }

    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v36;
    if (!v36)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v20 = v36;
    if (!v36)
    {
      goto LABEL_43;
    }
  }

  v21 = *(a1 + 584);
  if (v21)
  {
    (*(*v21 + 56))(v21, 5);
  }

  v22 = v48;
  if (v48)
  {
    v22 = _Block_copy(v48);
  }

  v30 = v22;
  object = v49;
  if (v49)
  {
    dispatch_retain(v49);
  }

  (*(*v20 + 24))(v20, 8000000000, &v30);
  if (object)
  {
    dispatch_release(object);
  }

  if (v30)
  {
    _Block_release(v30);
  }

LABEL_43:
  v23 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v49)
  {
    dispatch_release(v49);
  }

  if (v48)
  {
    _Block_release(v48);
  }

  if (v47 < 0)
  {
    operator delete(__p);
    if ((v45 & 0x80000000) == 0)
    {
LABEL_52:
      if ((v43 & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_58;
    }
  }

  else if ((v45 & 0x80000000) == 0)
  {
    goto LABEL_52;
  }

  operator delete(v44);
  if ((v43 & 0x80000000) == 0)
  {
LABEL_53:
    if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(v42);
  if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_54:
    v24 = v40;
    if (!v40)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_59:
  operator delete(v41.__r_.__value_.__l.__data_);
  v24 = v40;
  if (v40)
  {
LABEL_60:
    _Block_release(v24);
  }

LABEL_61:
  v25 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2970937D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *aBlock)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v27 - 112);
  ResetInfo::~ResetInfo((v26 + 64));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v25 + 40);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 96);
  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke(__int128 *a1, ctu::cf **a2)
{
  v71 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 4);
  v62 = 0uLL;
  v63 = 0;
  if (!*a2)
  {
    v6 = *(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Soft reset issued; waiting for reset detection", buf, 2u);
    }

    v7 = *(v3 + 136);
    v8 = operator new(0x20uLL);
    v42 = v8;
    v43 = xmmword_2972256B0;
    strcpy(v8, "Soft Reset Wait for Reset");
    v31[0] = MEMORY[0x29EDCA5F8];
    v31[1] = 1174405120;
    v31[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_104;
    v31[3] = &__block_descriptor_tmp_118_0;
    v10 = *(a1 + 5);
    v9 = *(a1 + 6);
    v31[4] = v3;
    v31[5] = v10;
    v32 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 7);
    if (v11)
    {
      v11 = _Block_copy(v11);
    }

    aBlock = v11;
    ResetInfo::ResetInfo(&v34, a1 + 4);
    v12 = _Block_copy(v31);
    v41 = v12;
    v13 = dispatch_time(0, 1000000000 * _MergedGlobals_3);
    ResetDetection::add(v7, &v42, 1, &v41, v13);
    if (v12)
    {
      _Block_release(v12);
    }

    operator delete(v8);
    if (v40 < 0)
    {
      operator delete(__p);
      if ((v38 & 0x80000000) == 0)
      {
LABEL_18:
        if ((v36 & 0x80000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_38;
      }
    }

    else if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    operator delete(v37);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_39;
    }

LABEL_38:
    operator delete(v35);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_20:
      v14 = aBlock;
      if (!aBlock)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }

LABEL_39:
    operator delete(v34.__r_.__value_.__l.__data_);
    v14 = aBlock;
    if (!aBlock)
    {
LABEL_41:
      v17 = v32;
      if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        if ((SHIBYTE(v63) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_78;
      }

      goto LABEL_77;
    }

LABEL_40:
    _Block_release(v14);
    goto LABEL_41;
  }

  ctu::cf::show(buf, *a2, a2);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  v62 = *buf;
  v63 = v65;
  v4 = *(v3 + 104);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 7);
    if (!v5)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v30 = &v62;
  if (v63 < 0)
  {
    v30 = v62;
  }

  *buf = 136446210;
  *&buf[4] = v30;
  _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Soft reset failed; falling back to hard reset: %{public}s", buf, 0xCu);
  v5 = *(a1 + 7);
  if (v5)
  {
LABEL_6:
    if (SHIBYTE(v63) < 0)
    {
      std::string::__init_copy_ctor_external(buf, v62, *(&v62 + 1));
    }

    else
    {
      *buf = v62;
      *&v65 = v63;
    }

    (*(v5 + 16))(v5, 3760250880, buf);
    if (SBYTE7(v65) < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_25:
  if ((v3 + 112) != &v62)
  {
    if (*(v3 + 135) < 0)
    {
      if (v63 >= 0)
      {
        v15 = &v62;
      }

      else
      {
        v15 = v62;
      }

      if (v63 >= 0)
      {
        v16 = HIBYTE(v63);
      }

      else
      {
        v16 = *(&v62 + 1);
      }

      std::string::__assign_no_alias<false>((v3 + 112), v15, v16);
    }

    else if (v63 < 0)
    {
      std::string::__assign_no_alias<true>((v3 + 112), v62, *(&v62 + 1));
    }

    else
    {
      *(v3 + 112) = v62;
      *(v3 + 128) = v63;
    }
  }

  v18 = *(v3 + 584);
  if (v18)
  {
    (*(*v18 + 56))(v18, 7);
  }

  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v19;
  v70 = v19;
  v67 = v19;
  v68 = v19;
  v65 = v19;
  v66 = v19;
  *buf = v19;
  v20 = *MEMORY[0x29EDBEB60];
  v21 = strlen(*MEMORY[0x29EDBEB60]);
  if (v21 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v21 | 7) + 1;
    }

    p_dst = operator new(v24);
    *(&__dst + 1) = v22;
    v61 = v24 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_56;
  }

  HIBYTE(v61) = v21;
  p_dst = &__dst;
  if (v21)
  {
LABEL_56:
    memmove(p_dst, v20, v22);
  }

  *(p_dst + v22) = 0;
  v25 = *MEMORY[0x29EDBF5C8];
  v26 = strlen(*MEMORY[0x29EDBF5C8]);
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
    *(&v58 + 1) = v27;
    v59 = v29 | 0x8000000000000000;
    *&v58 = v28;
    goto LABEL_65;
  }

  HIBYTE(v59) = v26;
  v28 = &v58;
  if (v26)
  {
LABEL_65:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  Timestamp::Timestamp(v54);
  Timestamp::asString(v54, 0, 9, v56);
  v53 = 0;
  LOBYTE(v52) = 0;
  ResetInfo::ResetInfo(buf, &__dst, &v58, (v3 + 112), v56, 7, &v52);
  if ((v57 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v54, v55);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_81:
    operator delete(v58);
    if ((SHIBYTE(v61) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_82;
  }

  operator delete(v56[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v54, v55);
  if (SHIBYTE(v59) < 0)
  {
    goto LABEL_81;
  }

LABEL_68:
  if ((SHIBYTE(v61) & 0x80000000) == 0)
  {
    goto LABEL_69;
  }

LABEL_82:
  operator delete(__dst);
LABEL_69:
  ResetInfo::ResetInfo(&v45, buf);
  v44 = 0;
  BootModule::handleReset_sync(v3, &v45, &v44);
  if (v51 < 0)
  {
    operator delete(v50);
    if ((v49 & 0x80000000) == 0)
    {
LABEL_71:
      if ((v47 & 0x80000000) == 0)
      {
        goto LABEL_72;
      }

      goto LABEL_85;
    }
  }

  else if ((v49 & 0x80000000) == 0)
  {
    goto LABEL_71;
  }

  operator delete(v48);
  if ((v47 & 0x80000000) == 0)
  {
LABEL_72:
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_86;
  }

LABEL_85:
  operator delete(v46);
  if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_73:
    if ((SHIBYTE(v70) & 0x80000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_87;
  }

LABEL_86:
  operator delete(v45.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v70) & 0x80000000) == 0)
  {
LABEL_74:
    if ((SBYTE7(v68) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_88;
  }

LABEL_87:
  operator delete(*(&v69 + 1));
  if ((SBYTE7(v68) & 0x80000000) == 0)
  {
LABEL_75:
    if ((SHIBYTE(v66) & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_89;
  }

LABEL_88:
  operator delete(v67);
  if (SHIBYTE(v66) < 0)
  {
LABEL_89:
    operator delete(*(&v65 + 1));
    if (SBYTE7(v65) < 0)
    {
      goto LABEL_90;
    }

LABEL_77:
    if ((SHIBYTE(v63) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_78;
  }

LABEL_76:
  if ((SBYTE7(v65) & 0x80000000) == 0)
  {
    goto LABEL_77;
  }

LABEL_90:
  operator delete(*buf);
  if (SHIBYTE(v63) < 0)
  {
LABEL_78:
    operator delete(v62);
  }
}

void sub_297093F54(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  _Unwind_Resume(a1);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_104(__int128 *a1, int a2)
{
  v81 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 4);
  if (!a2)
  {
    v7 = *(v3 + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Reset detection observed for soft reset", &buf, 2u);
    }

    usleep(0x249F0u);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_105;
    aBlock[3] = &__block_descriptor_tmp_113;
    aBlock[4] = v3;
    v8 = *(a1 + 7);
    if (v8)
    {
      v8 = _Block_copy(v8);
    }

    v63 = v8;
    ResetInfo::ResetInfo(&v64, a1 + 4);
    v9 = *(a1 + 6);
    v71 = *(a1 + 5);
    v72 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = _Block_copy(aBlock);
    v73 = v10;
    BootModule::checkFSSyncStatus_sync(v3, &v73);
    if (v10)
    {
      _Block_release(v10);
    }

    v11 = v72;
    if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      if ((v70 & 0x80000000) == 0)
      {
LABEL_22:
        if ((v68 & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_45;
      }
    }

    else if ((v70 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(__p);
    if ((v68 & 0x80000000) == 0)
    {
LABEL_23:
      if ((v66 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(v67);
    if ((v66 & 0x80000000) == 0)
    {
LABEL_24:
      if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_47;
    }

LABEL_46:
    operator delete(v65);
    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      v12 = v63;
      if (!v63)
      {
        return;
      }

      goto LABEL_48;
    }

LABEL_47:
    operator delete(v64.__r_.__value_.__l.__data_);
    v12 = v63;
    if (!v63)
    {
      return;
    }

LABEL_48:
    _Block_release(v12);
    return;
  }

  v4 = operator new(0x38uLL);
  v61.__r_.__value_.__r.__words[0] = v4;
  *&v61.__r_.__value_.__r.__words[1] = xmmword_297227A70;
  strcpy(v4, "Soft reset failed; timeout waiting for reset detection");
  v5 = *(v3 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v4;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
  }

  if (TelephonyUtilIsInternalBuild())
  {
    v6 = *(v3 + 104);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  v6 = *(v3 + 104);
  v14 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (IsCarrierBuild)
  {
    if (!v14)
    {
LABEL_7:
      if ((v3 + 112) != &v61)
      {
        if (*(v3 + 135) < 0)
        {
          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v16 = &v61;
          }

          else
          {
            v16 = v61.__r_.__value_.__r.__words[0];
          }

          if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v61.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v61.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>((v3 + 112), v16, size);
        }

        else if ((*(&v61.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>((v3 + 112), v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
        }

        else
        {
          *(v3 + 112) = v61;
        }
      }

      v18 = *(a1 + 7);
      if (v18)
      {
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&buf, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = *&v61.__r_.__value_.__l.__data_;
          *&v75 = *(&v61.__r_.__value_.__l + 2);
        }

        (*(v18 + 16))(v18, 3760250880, &buf);
        if (SBYTE7(v75) < 0)
        {
          operator delete(buf);
        }
      }

      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v79 = v19;
      v80 = v19;
      v77 = v19;
      v78 = v19;
      v75 = v19;
      v76 = v19;
      buf = v19;
      v20 = *MEMORY[0x29EDBEB60];
      v21 = strlen(*MEMORY[0x29EDBEB60]);
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v21;
      if (v21 >= 0x17)
      {
        if ((v21 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v21 | 7) + 1;
        }

        p_dst = operator new(v24);
        *(&__dst + 1) = v22;
        v60 = v24 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v60) = v21;
        p_dst = &__dst;
        if (!v21)
        {
LABEL_65:
          *(p_dst + v22) = 0;
          v25 = *MEMORY[0x29EDBF738];
          v26 = strlen(*MEMORY[0x29EDBF738]);
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
            *(&v57 + 1) = v27;
            v58 = v29 | 0x8000000000000000;
            *&v57 = v28;
          }

          else
          {
            HIBYTE(v58) = v26;
            v28 = &v57;
            if (!v26)
            {
LABEL_74:
              v28[v27] = 0;
              Timestamp::Timestamp(v53);
              Timestamp::asString(v53, 0, 9, v55);
              v52 = 0;
              LOBYTE(v51) = 0;
              ResetInfo::ResetInfo(&buf, &__dst, &v57, (v3 + 112), v55, 7, &v51);
              if (v56 < 0)
              {
                operator delete(v55[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53, v54);
                if ((SHIBYTE(v58) & 0x80000000) == 0)
                {
LABEL_76:
                  if ((SHIBYTE(v60) & 0x80000000) == 0)
                  {
                    goto LABEL_77;
                  }

LABEL_88:
                  operator delete(__dst);
LABEL_77:
                  ResetInfo::ResetInfo(&v44, &buf);
                  v43 = 0;
                  BootModule::handleReset_sync(v3, &v44, &v43);
                  if (v50 < 0)
                  {
                    operator delete(v49);
                    if ((v48 & 0x80000000) == 0)
                    {
LABEL_79:
                      if ((v46 & 0x80000000) == 0)
                      {
                        goto LABEL_80;
                      }

                      goto LABEL_91;
                    }
                  }

                  else if ((v48 & 0x80000000) == 0)
                  {
                    goto LABEL_79;
                  }

                  operator delete(v47);
                  if ((v46 & 0x80000000) == 0)
                  {
LABEL_80:
                    if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_81;
                    }

                    goto LABEL_92;
                  }

LABEL_91:
                  operator delete(v45);
                  if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_81:
                    if ((SHIBYTE(v80) & 0x80000000) == 0)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_93;
                  }

LABEL_92:
                  operator delete(v44.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v80) & 0x80000000) == 0)
                  {
LABEL_82:
                    if ((SBYTE7(v78) & 0x80000000) == 0)
                    {
                      goto LABEL_83;
                    }

                    goto LABEL_94;
                  }

LABEL_93:
                  operator delete(*(&v79 + 1));
                  if ((SBYTE7(v78) & 0x80000000) == 0)
                  {
LABEL_83:
                    if ((SHIBYTE(v76) & 0x80000000) == 0)
                    {
                      goto LABEL_84;
                    }

                    goto LABEL_95;
                  }

LABEL_94:
                  operator delete(v77);
                  if ((SHIBYTE(v76) & 0x80000000) == 0)
                  {
LABEL_84:
                    if ((SBYTE7(v75) & 0x80000000) == 0)
                    {
                      goto LABEL_113;
                    }

LABEL_96:
                    operator delete(buf);
                    goto LABEL_113;
                  }

LABEL_95:
                  operator delete(*(&v75 + 1));
                  if ((SBYTE7(v75) & 0x80000000) == 0)
                  {
                    goto LABEL_113;
                  }

                  goto LABEL_96;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53, v54);
                if ((SHIBYTE(v58) & 0x80000000) == 0)
                {
                  goto LABEL_76;
                }
              }

              operator delete(v57);
              if ((SHIBYTE(v60) & 0x80000000) == 0)
              {
                goto LABEL_77;
              }

              goto LABEL_88;
            }
          }

          memmove(v28, v25, v27);
          goto LABEL_74;
        }
      }

      memmove(p_dst, v20, v22);
      goto LABEL_65;
    }

LABEL_6:
    LOWORD(buf) = 0;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Dumping logs", &buf, 2u);
    goto LABEL_7;
  }

  if (v14)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Falling back to hard reset", &buf, 2u);
  }

  ResetInfo::ResetInfo(&v36, a1 + 4);
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 1174405120;
  v32[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_115;
  v32[3] = &__block_descriptor_tmp_116_0;
  v15 = *(a1 + 7);
  if (v15)
  {
    v15 = _Block_copy(v15);
  }

  v33 = v15;
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = v61;
  }

  v30 = _Block_copy(v32);
  v35 = v30;
  BootModule::hardReset_sync(v3, &v36, &v35);
  if (v30)
  {
    _Block_release(v30);
  }

  if (v42 < 0)
  {
    operator delete(v41);
    if ((v40 & 0x80000000) == 0)
    {
LABEL_102:
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_109;
    }
  }

  else if ((v40 & 0x80000000) == 0)
  {
    goto LABEL_102;
  }

  operator delete(v39);
  if ((v38 & 0x80000000) == 0)
  {
LABEL_103:
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_110;
  }

LABEL_109:
  operator delete(v37);
  if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_104:
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_105;
    }

LABEL_111:
    operator delete(v34.__r_.__value_.__l.__data_);
    v31 = v33;
    if (!v33)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_110:
  operator delete(v36.__r_.__value_.__l.__data_);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_111;
  }

LABEL_105:
  v31 = v33;
  if (v33)
  {
LABEL_112:
    _Block_release(v31);
  }

LABEL_113:
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }
}

void sub_297094860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *__p)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ResetInfo::~ResetInfo(&a19);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_105(void *a1, int a2, int a3)
{
  v85 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v7 = *(v6 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 1024;
    *&buf[10] = a3;
    _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Check FS Sync in progress: %d and sync not started: %d", buf, 0xEu);
  }

  if ((a2 & 1) != 0 || a3)
  {
    if (a2)
    {
      v14 = "Baseband shutdown during baseband filesystem sync";
    }

    else
    {
      v14 = "Baseband never started filesystem sync";
    }

    v77.__r_.__value_.__r.__words[2] = 0x13AAAAAA00AAAAAALL;
    *&v77.__r_.__value_.__l.__data_ = *"Soft reset failed: ";
    *(&v77.__r_.__value_.__r.__words[1] + 7) = 540697701;
    if (a2)
    {
      v15 = 49;
    }

    else
    {
      v15 = 38;
    }

    std::string::append(&v77, v14, v15);
    if ((v6 + 112) != &v77)
    {
      if (*(v6 + 135) < 0)
      {
        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v77;
        }

        else
        {
          v36 = v77.__r_.__value_.__r.__words[0];
        }

        if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v77.__r_.__value_.__l.__size_;
        }

        std::string::__assign_no_alias<false>((v6 + 112), v36, size);
      }

      else if ((*(&v77.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>((v6 + 112), v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v6 + 112) = v77;
      }
    }

    v38 = *(v6 + 104);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v52 = &v77;
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v52 = v77.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      *&buf[4] = v52;
      _os_log_error_impl(&dword_296FF7000, v38, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      v39 = a1[5];
      if (!v39)
      {
LABEL_80:
        v40 = *(v6 + 584);
        if (v40)
        {
          (*(*v40 + 56))(v40, 7);
        }

        *&v41 = 0xAAAAAAAAAAAAAAAALL;
        *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v83 = v41;
        v84 = v41;
        v81 = v41;
        v82 = v41;
        v79 = v41;
        v80 = v41;
        *buf = v41;
        v42 = *MEMORY[0x29EDBEB60];
        v43 = strlen(*MEMORY[0x29EDBEB60]);
        if (v43 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v44 = v43;
        if (v43 >= 0x17)
        {
          if ((v43 | 7) == 0x17)
          {
            v46 = 25;
          }

          else
          {
            v46 = (v43 | 7) + 1;
          }

          v45 = operator new(v46);
          *(&v75 + 1) = v44;
          v76 = v46 | 0x8000000000000000;
          *&v75 = v45;
        }

        else
        {
          HIBYTE(v76) = v43;
          v45 = &v75;
          if (!v43)
          {
LABEL_91:
            *(v45 + v44) = 0;
            v47 = *MEMORY[0x29EDBF7E8];
            v48 = strlen(*MEMORY[0x29EDBF7E8]);
            if (v48 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v49 = v48;
            if (v48 >= 0x17)
            {
              if ((v48 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v48 | 7) + 1;
              }

              v50 = operator new(v51);
              *(&v73 + 1) = v49;
              v74 = v51 | 0x8000000000000000;
              *&v73 = v50;
            }

            else
            {
              HIBYTE(v74) = v48;
              v50 = &v73;
              if (!v48)
              {
LABEL_100:
                v50[v49] = 0;
                Timestamp::Timestamp(v69);
                Timestamp::asString(v69, 0, 9, __p);
                v68 = 0;
                LOBYTE(v67) = 0;
                ResetInfo::ResetInfo(buf, &v75, &v73, (v6 + 112), __p, 7, &v67);
                if (v72 < 0)
                {
                  operator delete(__p[0]);
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v69, v70);
                  if ((SHIBYTE(v74) & 0x80000000) == 0)
                  {
LABEL_102:
                    if ((SHIBYTE(v76) & 0x80000000) == 0)
                    {
                      goto LABEL_103;
                    }

LABEL_115:
                    operator delete(v75);
LABEL_103:
                    ResetInfo::ResetInfo(&v60, buf);
                    v59 = 0;
                    BootModule::handleReset_sync(v6, &v60, &v59);
                    if (v66 < 0)
                    {
                      operator delete(v65);
                      if ((v64 & 0x80000000) == 0)
                      {
LABEL_105:
                        if ((v62 & 0x80000000) == 0)
                        {
                          goto LABEL_106;
                        }

                        goto LABEL_118;
                      }
                    }

                    else if ((v64 & 0x80000000) == 0)
                    {
                      goto LABEL_105;
                    }

                    operator delete(v63);
                    if ((v62 & 0x80000000) == 0)
                    {
LABEL_106:
                      if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_107;
                      }

                      goto LABEL_119;
                    }

LABEL_118:
                    operator delete(v61);
                    if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
LABEL_107:
                      if ((SHIBYTE(v84) & 0x80000000) == 0)
                      {
                        goto LABEL_108;
                      }

                      goto LABEL_120;
                    }

LABEL_119:
                    operator delete(v60.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v84) & 0x80000000) == 0)
                    {
LABEL_108:
                      if ((SBYTE7(v82) & 0x80000000) == 0)
                      {
                        goto LABEL_109;
                      }

                      goto LABEL_121;
                    }

LABEL_120:
                    operator delete(*(&v83 + 1));
                    if ((SBYTE7(v82) & 0x80000000) == 0)
                    {
LABEL_109:
                      if ((SHIBYTE(v80) & 0x80000000) == 0)
                      {
                        goto LABEL_110;
                      }

                      goto LABEL_122;
                    }

LABEL_121:
                    operator delete(v81);
                    if ((SHIBYTE(v80) & 0x80000000) == 0)
                    {
LABEL_110:
                      if ((SBYTE7(v79) & 0x80000000) == 0)
                      {
                        goto LABEL_111;
                      }

                      goto LABEL_123;
                    }

LABEL_122:
                    operator delete(*(&v79 + 1));
                    if ((SBYTE7(v79) & 0x80000000) == 0)
                    {
LABEL_111:
                      if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return;
                      }

                      goto LABEL_124;
                    }

LABEL_123:
                    operator delete(*buf);
                    if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return;
                    }

LABEL_124:
                    operator delete(v77.__r_.__value_.__l.__data_);
                    return;
                  }
                }

                else
                {
                  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v69, v70);
                  if ((SHIBYTE(v74) & 0x80000000) == 0)
                  {
                    goto LABEL_102;
                  }
                }

                operator delete(v73);
                if ((SHIBYTE(v76) & 0x80000000) == 0)
                {
                  goto LABEL_103;
                }

                goto LABEL_115;
              }
            }

            memmove(v50, v47, v49);
            goto LABEL_100;
          }
        }

        memmove(v45, v42, v44);
        goto LABEL_91;
      }
    }

    else
    {
      v39 = a1[5];
      if (!v39)
      {
        goto LABEL_80;
      }
    }

    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(buf, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
    }

    else
    {
      *buf = *&v77.__r_.__value_.__l.__data_;
      *&v79 = *(&v77.__r_.__value_.__l + 2);
    }

    (*(v39 + 16))(v39, 3760250880, buf);
    if (SBYTE7(v79) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_80;
  }

  v8 = *(v6 + 584);
  if (v8)
  {
    v9 = (*(*v8 + 56))(v8, 6);
    if (capabilities::ipc::supportsPCI(v9))
    {
      (*(**(v6 + 584) + 16))(*(v6 + 584));
    }
  }

  v10 = a1[5];
  if (v10)
  {
    BYTE7(v79) = 0;
    buf[0] = 0;
    (*(v10 + 16))(v10, 0, buf);
    if (SBYTE7(v79) < 0)
    {
      operator delete(*buf);
    }
  }

  *&v75 = 0;
  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    *&v75 = Mutable;
  }

  else
  {
    Mutable = v75;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v11, v13);
  ResetInfo::addToDict((a1 + 6), &v75, v16, v17, v18);
  v77.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v77.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v19 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(buf);
    v20 = *buf;
    memset(buf, 0, sizeof(buf));
    v21 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v19 = off_2A18B7340;
  }

  v77.__r_.__value_.__r.__words[0] = v19;
  v77.__r_.__value_.__l.__size_ = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v23 = *MEMORY[0x29EDBF460];
  v24 = strlen(*MEMORY[0x29EDBF460]);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v24 | 7) + 1;
    }

    v26 = operator new(v28);
    __dst[1] = v25;
    v58 = v28 | 0x8000000000000000;
    __dst[0] = v26;
LABEL_43:
    memmove(v26, v23, v25);
    *(v25 + v26) = 0;
    v27 = v75;
    if (!v75)
    {
      goto LABEL_46;
    }

    goto LABEL_44;
  }

  HIBYTE(v58) = v24;
  v26 = __dst;
  if (v24)
  {
    goto LABEL_43;
  }

  LOBYTE(__dst[0]) = 0;
  v27 = v75;
  if (!v75)
  {
    goto LABEL_46;
  }

LABEL_44:
  v29 = CFGetTypeID(v27);
  if (v29 == CFDictionaryGetTypeID())
  {
    v56 = v27;
    CFRetain(v27);
    goto LABEL_47;
  }

LABEL_46:
  v27 = 0;
  v56 = 0;
LABEL_47:
  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = 1174405120;
  v53[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_109;
  v53[3] = &__block_descriptor_tmp_111;
  v31 = a1[20];
  v30 = a1[21];
  v53[4] = v6;
  v53[5] = v31;
  v54 = v30;
  if (v30)
  {
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v32 = _Block_copy(v53);
  v55 = v32;
  ABMServer::broadcast(v19, __dst, &v56, &v55);
  if (v32)
  {
    _Block_release(v32);
  }

  if (v27)
  {
    CFRelease(v27);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst[0]);
  }

  v33 = v54;
  if (v54 && !atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    v34 = v77.__r_.__value_.__l.__size_;
    if (!v77.__r_.__value_.__l.__size_)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v34 = v77.__r_.__value_.__l.__size_;
    if (!v77.__r_.__value_.__l.__size_)
    {
      goto LABEL_59;
    }
  }

  if (!atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v34->__on_zero_shared)(v34);
    std::__shared_weak_count::__release_weak(v34);
    v35 = v75;
    if (v75)
    {
      goto LABEL_60;
    }

    return;
  }

LABEL_59:
  v35 = v75;
  if (v75)
  {
LABEL_60:
    CFRelease(v35);
  }
}

void sub_29709533C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (*(v56 - 201) < 0)
  {
    operator delete(*(v56 - 224));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_109(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN10BootModule14softReset_syncE9ResetInfoN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEEEEE_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_110;
  v2[4] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v2);
}

uint64_t __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void __copy_helper_block_e8_40c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE48c15_ZTSK9ResetInfo160c38_ZTSNSt3__110shared_ptrI10BootModuleEE(std::string *a1, __int128 *a2)
{
  v4 = *(a2 + 5);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[1].__r_.__value_.__r.__words[2] = v4;
  ResetInfo::ResetInfo(a1 + 2, a2 + 3);
  v5 = *(a2 + 21);
  a1[6].__r_.__value_.__r.__words[2] = *(a2 + 20);
  a1[7].__r_.__value_.__r.__words[0] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_29709564C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE48c15_ZTSK9ResetInfo160c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    if ((*(a1 + 159) & 0x80000000) == 0)
    {
LABEL_4:
      if ((*(a1 + 119) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a1 + 159) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 136));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    operator delete(*(a1 + 48));
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_12:
  operator delete(*(a1 + 72));
  if (*(a1 + 71) < 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v3 = *(a1 + 40);
  if (v3)
  {
LABEL_14:
    _Block_release(v3);
  }
}