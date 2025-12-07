void sub_23C27CC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t KernelPCIABPTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = &v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN17KernelPCIABPTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke;
  block[3] = &__block_descriptor_tmp_83;
  block[4] = a1 + 8;
  block[5] = v6;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }

  return v7;
}

BOOL KernelPCIABPTrace::getProperty_sync(uint64_t a1, char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "getProperty_sync";
    _os_log_debug_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  }

  HIBYTE(v14) = 5;
  strcpy(buf, "State");
  if (a2[23] >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (strcasecmp(v7, buf))
  {
    return prop::ipc::get(a2, a3);
  }

  v12 = 0;
  LOBYTE(__p) = 0;
  KernelPCIABPTrace::dumpState_sync(a1, &__p, 0, 10, buf);
  if (buf != a3)
  {
    if (*(a3 + 23) < 0)
    {
      if (v14 >= 0)
      {
        v9 = buf;
      }

      else
      {
        v9 = *buf;
      }

      if (v14 >= 0)
      {
        v10 = HIBYTE(v14);
      }

      else
      {
        v10 = *&buf[8];
      }

      std::string::__assign_no_alias<false>(a3, v9, v10);
    }

    else if (v14 < 0)
    {
      std::string::__assign_no_alias<true>(a3, *buf, *&buf[8]);
    }

    else
    {
      *a3 = *buf;
      *(a3 + 16) = v14;
    }
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(*buf);
    if ((v12 & 0x80000000) == 0)
    {
      return 1;
    }

LABEL_24:
    operator delete(__p);
    return 1;
  }

  if (v12 < 0)
  {
    goto LABEL_24;
  }

  return 1;
}

void sub_23C27CF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
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

void KernelPCIABPTrace::getSettingPrefix(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 23) = 11;
  strcpy(a1, "KernelPCI::");
}

void pci::transport::kernelTrace::traceCodeDict::~traceCodeDict(pci::transport::kernelTrace::traceCodeDict *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    v3 = *(this + 8);
    v4 = *(this + 7);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 7);
    }

    *(this + 8) = v2;
    operator delete(v4);
  }

  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(*this);
    return;
  }

  operator delete(*(this + 3));
  if (*(this + 23) < 0)
  {
    goto LABEL_13;
  }
}

void KernelPCIABPTrace::BuffContext::~BuffContext(KernelPCIABPTrace::BuffContext *this)
{
  v2 = *this;
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(this + 6);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(this + 5);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_pointer<KernelPCIABPTrace *,std::shared_ptr<KernelPCIABPTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCIABPTrace>(KernelPCIABPTrace*)::{lambda(KernelPCIABPTrace *)#1},std::allocator<KernelPCIABPTrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<KernelPCIABPTrace *,std::shared_ptr<KernelPCIABPTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCIABPTrace>(KernelPCIABPTrace*)::{lambda(KernelPCIABPTrace *)#1},std::allocator<KernelPCIABPTrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI17KernelPCIABPTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI17KernelPCIABPTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI17KernelPCIABPTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI17KernelPCIABPTraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<KernelPCIABPTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCIABPTrace>(KernelPCIABPTrace*)::{lambda(KernelPCIABPTrace*)#1}::operator() const(KernelPCIABPTrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN17KernelPCIABPTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = **(a1 + 40);
  KernelPCIABPTrace::initProperty_sync(v1);
  group = 0;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v5 = "updateTraceState_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
    if (*(v1 + 96) == 1)
    {
LABEL_3:
      if ((*(v1 + 97) & 1) == 0)
      {
        KernelPCIABPTrace::startTrace_sync(v1);
      }

      return;
    }
  }

  else if (*(v1 + 96) == 1)
  {
    goto LABEL_3;
  }

  KernelPCIABPTrace::stopTrace(v1, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_23C27D2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0>(KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v3 = (*a1)->__vftable;
  shared_owners = (*a1)->__shared_owners_;
  object = shared_owners;
  if (shared_owners)
  {
    xpc_retain(shared_owners);
    if ((byte_280C05DB0[23] & 0x80000000) == 0)
    {
LABEL_3:
      v12 = *byte_280C05DB0;
      goto LABEL_6;
    }
  }

  else
  {
    object = xpc_null_create();
    if ((byte_280C05DB0[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(&v12, *byte_280C05DB0, *&byte_280C05DB0[8]);
LABEL_6:
  v4 = util::writeJSON(&object, &v12);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  xpc_release(object);
  object = 0;
  v5 = v3[1].~__shared_weak_count;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (((MEMORY[0x23EECEE80](v1->__shared_owners_) == MEMORY[0x277D86468]) & v4) != 0)
    {
      v6 = "Succeeded";
    }

    else
    {
      v6 = "Failed";
    }

    if (byte_280C05DB0[23] >= 0)
    {
      v7 = byte_280C05DB0;
    }

    else
    {
      v7 = *byte_280C05DB0;
    }

    *buf = 136315394;
    v15 = v6;
    v16 = 2080;
    v17 = v7;
    _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I %s to dump CodeRegistry: %s", buf, 0x16u);
  }

  v8 = v1[1].__vftable;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  xpc_release(v1->__shared_owners_);
  operator delete(v1);
  v9 = a1;
  if (a1)
  {
    v10 = a1[2];
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        v9 = a1;
      }
    }

    operator delete(v9);
  }
}

void sub_23C27D534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0,std::default_delete<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C27D580(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::unique_ptr<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0,std::default_delete<KernelPCIABPTrace::dumpCodeRegistry_sync(void)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 24);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    xpc_release(*(v1 + 8));
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v5 = *(v4 + 40);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    if (*(v4 + 96) == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    KernelPCIABPTrace::stopTrace(v4, &object);
    v3 = object;
    goto LABEL_9;
  }

  *buf = 136315138;
  v11 = "updateTraceState_sync";
  _os_log_debug_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  if (*(v4 + 96) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((*(v4 + 97) & 1) == 0)
  {
    KernelPCIABPTrace::startTrace_sync(v4);
  }

LABEL_9:
  if (v3)
  {
    dispatch_group_leave(v3);
    if (object)
    {
      dispatch_release(object);
    }
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  operator delete(v2);
  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
}

void sub_23C27D7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0>(KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::flushLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v3 + 88);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 136315138;
  v18 = "operator()";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  v5 = *(v3 + 88);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

LABEL_4:
  if (*(v3 + 96))
  {
    v6 = (v2 + 1);
    v7 = v2[1];
    if (*v7)
    {
      v8 = *(v2 + 6);
      v9 = *(v3 + 40);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v10)
        {
          *buf = 67109120;
          LODWORD(v18) = v8;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#E Flush logs completion returned error. Error [0x%x]", buf, 8u);
        }
      }

      else
      {
        if (v10)
        {
          v15 = v2[2];
          *buf = 134217984;
          v18 = v15;
          _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Flush logs completion of size '%ld' bytes", buf, 0xCu);
          v7 = v2[1];
        }

        v16 = *(*(v7 + 4) + 32);
        if (v16)
        {
          (*(*v16 + 72))(v16, *v7, v2[2]);
        }
      }
    }

    else
    {
      v13 = *(v3 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Snapshot received (flush completion with null-log)", buf, 2u);
        v7 = *v6;
      }

      v14 = *(*(v7 + 4) + 32);
      if (v14)
      {
        (*(*v14 + 16))(v14);
      }
    }
  }

  else
  {
    v11 = *(v3 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "#I Flush logs completion for Disabled case", buf, 2u);
    }

    v6 = (v2 + 1);
  }

  KernelPCIABPTrace::deleteBuffContext_sync(v3, *v6);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_23C27DB08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::readLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0>(KernelPCIABPTrace::readLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::readLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::readLogsCompletion(KernelPCIABPTrace::BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 40);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(v3 + 88);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 136315138;
  v21 = "operator()";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "#D %s", buf, 0xCu);
  v5 = *(v3 + 88);
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

LABEL_4:
  if ((*(v3 + 96) & 1) == 0)
  {
    v14 = *(v3 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Read log completion for Disabled case", buf, 2u);
    }

    v13 = v2[1];
    v12 = v3;
    goto LABEL_17;
  }

  v6 = *(v2 + 6);
  if (v6)
  {
    v7 = *(v3 + 40);
  }

  else
  {
    v16 = v2[1];
    v7 = *(v3 + 40);
    if (*v16)
    {
      if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_DEBUG))
      {
        v19 = v2[2];
        *buf = 134217984;
        v21 = v19;
        _os_log_debug_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEBUG, "#D Read logs completion of size '%ld' bytes", buf, 0xCu);
        v16 = v2[1];
        v17 = *(v16[4] + 32);
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v17 = *(v16[4] + 32);
        if (!v17)
        {
          goto LABEL_9;
        }
      }

      (*(*v17 + 72))(v17, *v16, v2[2]);
      goto LABEL_9;
    }
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v21) = v6;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Read logs completion has some failure. Error [0x%x]", buf, 8u);
  }

LABEL_9:
  v8 = v2[1];
  if ((*(v3 + 97) & 1) == 0)
  {
LABEL_13:
    v12 = v3;
    v13 = v8;
LABEL_17:
    KernelPCIABPTrace::deleteBuffContext_sync(v12, v13);
    goto LABEL_18;
  }

  v9 = (*(**(v3 + 160) + 72))(*(v3 + 160), *(*(v8 + 4) + 24), *v8, *(v8 + 2), 0, readLogsCompletionCB, v2[1]);
  v10 = *(v3 + 40);
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (*(v8 + 1) >> 10);
      *buf = 134218240;
      v21 = v11;
      v22 = 1024;
      v23 = v9;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#E Failed re-assigning new buffer of size '%ld KB' to fetch logs. Error [0x%x]", buf, 0x12u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v18 = (*(v8 + 1) >> 10);
    *buf = 134217984;
    v21 = v18;
    _os_log_debug_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEBUG, "#D Assign new buffer of size '%ld KB' to fetch logs", buf, 0xCu);
  }

LABEL_18:
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
}

void sub_23C27DEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<KernelPCIABPTrace::PipeContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFC918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<KernelPCIABPTrace::PipeContext>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v3 = *(a1 + 24);

  operator delete(v3);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCIABPTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  if (*(v3 + 96) == 1)
  {
    KernelPCIABPTrace::deregisterWithKernel_sync(v3);
  }

  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
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

void sub_23C27E12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v28 = v1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  if (v3)
  {
    dispatch_retain(*(*v1 + 88));
    dispatch_group_enter(v3);
  }

  v34[0] = 0xAAAAAAAAAAAAAAAALL;
  v34[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v34, *(v1 + 24));
  memset(__p, 170, sizeof(__p));
  strcpy(buf, "kTraceFilterActionNone");
  buf[23] = 22;
  ctu::cf::MakeCFString::MakeCFString(&v31, "kKeyTraceFilterAction");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v31);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    v4 = SHIBYTE(__p[2]);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (__p[1] != 22)
    {
      v12 = *(v2 + 40);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v5 = __p[0];
    goto LABEL_10;
  }

  v4 = SHIBYTE(__p[2]);
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v4 != 22)
  {
    v12 = *(v2 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v5 = __p;
LABEL_10:
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 14);
  v11 = v6 != *"kTraceFilterActionNone" || v7 != *"lterActionNone" || v8 != *"tionNone";
  v12 = *(v2 + 40);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (!v13)
    {
      goto LABEL_28;
    }

    if (v4 < 0)
    {
LABEL_26:
      v14 = __p[0];
      goto LABEL_27;
    }

LABEL_24:
    v14 = __p;
LABEL_27:
    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Skipping snapshot as trace filter is '%s'", buf, 0xCu);
    goto LABEL_28;
  }

  if (v13)
  {
    v17 = *(v2 + 96);
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Snapshot requested. Enabled = %d", buf, 8u);
  }

  if (*(v2 + 96) == 1)
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    v32 = 0xAAAAAAAAAAAAAAAALL;
    v18 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
    v19 = xmmword_280C05A58;
    if (!xmmword_280C05A58)
    {
      ctu::XpcJetsamAssertion::create_default_global(buf, v18);
      v20 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v21 = *(&xmmword_280C05A58 + 1);
      xmmword_280C05A58 = v20;
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

      v19 = xmmword_280C05A58;
    }

    v23 = *(&xmmword_280C05A58 + 1);
    v30[0] = v19;
    v30[1] = *(&xmmword_280C05A58 + 1);
    if (*(&xmmword_280C05A58 + 1))
    {
      atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_23C32F000;
    strcpy(*buf, "Kernel PCI ABP Trace Snapshot");
    ctu::XpcJetsamAssertion::createActivity();
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = *(v1 + 8);
    v30[0] = v24;
    if (v24)
    {
      dispatch_retain(v24);
      dispatch_group_enter(v24);
    }

    v25 = *(v1 + 24);
    v29 = v25;
    if (v25)
    {
      CFRetain(v25);
    }

    KernelPCIABPTrace::snapshot_sync(v2, v30, &v29);
    if (v25)
    {
      CFRelease(v25);
    }

    if (v24)
    {
      dispatch_group_leave(v24);
      dispatch_release(v24);
    }

    v26 = v32;
    if (v32 && !atomic_fetch_add((v32 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }
  }

LABEL_28:
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  MEMORY[0x23EECD940](v34);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  std::unique_ptr<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&v28);
  v15 = a1;
  if (a1)
  {
    v16 = a1[2];
    if (v16)
    {
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v15 = a1;
      }
    }

    operator delete(v15);
  }
}

void sub_23C27E63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EECD940](&a28);
  if (v27)
  {
    dispatch_group_leave(v27);
    dispatch_release(v27);
  }

  std::unique_ptr<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C27E72C()
{
  if (!v0)
  {
    JUMPOUT(0x23C27E714);
  }

  JUMPOUT(0x23C27E704);
}

void **std::unique_ptr<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCIABPTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      dispatch_group_leave(v5);
      v6 = v2[1];
      if (v6)
      {
        dispatch_release(v6);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCIABPTrace::dumpState(dispatch::group,std::string)::$_0>(KernelPCIABPTrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIABPTrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<KernelPCIABPTrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  v5 = *(v3 + 40);
  if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

  if (*(v2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v2[2], v2[3]);
  }

  else
  {
    v10 = *(v2 + 2);
  }

  KernelPCIABPTrace::dumpState_sync(v3, &v10, 1, 10, __p);
  if (v12 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *buf = 136315138;
  v14 = v6;
  _os_log_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  if (v12 < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_24;
    }

LABEL_12:
    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_24:
  operator delete(v10.__r_.__value_.__l.__data_);
  if (v4)
  {
LABEL_13:
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

LABEL_14:
  if (*(v2 + 39) < 0)
  {
    operator delete(v2[2]);
  }

  v7 = v2[1];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v2[1];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_23C27E990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!v16)
  {
    std::unique_ptr<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  dispatch_group_leave(v16);
  dispatch_release(v16);
  std::unique_ptr<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN17KernelPCIABPTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  v13 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = KernelPCIABPTrace::setProperty_sync(v2, &v13, *(v1 + 16), *(v1 + 24));
  **(v1 + 32) = v4;
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
    v4 = **(v1 + 32);
  }

  if (v4)
  {
    v5 = "Success";
  }

  else
  {
    v5 = "Failed";
  }

  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (v4)
  {
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v12) = v6;
  memcpy(__p, v5, v6);
  *(__p | v6) = 0;
  v7 = *(v2 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return;
    }

LABEL_19:
    operator delete(__p[0]);
    return;
  }

  v8 = __p[0];
  if (v12 >= 0)
  {
    v8 = __p;
  }

  v9 = *(v1 + 16);
  if (*(v9 + 23) < 0)
  {
    v9 = *v9;
    v10 = *(v1 + 24);
    if ((*(v10 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *(v1 + 24);
    if ((*(v10 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  v10 = *v10;
LABEL_18:
  *buf = 136315650;
  v15 = v8;
  v16 = 2080;
  v17 = v9;
  v18 = 2080;
  v19 = v10;
  _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Set property [%s], Key=%s, Value=%s", buf, 0x20u);
  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_19;
  }
}

void sub_23C27EBB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN17KernelPCIABPTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  Property_sync = KernelPCIABPTrace::getProperty_sync(*v1, *(v1 + 8), *(v1 + 16));
  **(v1 + 24) = Property_sync;
  if (Property_sync)
  {
    v4 = "Success";
  }

  else
  {
    v4 = "Failed";
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  if (Property_sync)
  {
    v5 = 7;
  }

  else
  {
    v5 = 6;
  }

  __dst[0] = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v11) = v5;
  memcpy(__dst, v4, v5);
  *(__dst | v5) = 0;
  v6 = *(v2 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if ((SHIBYTE(v11) & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(__dst[0]);
    return;
  }

  v7 = __dst[0];
  if (v11 >= 0)
  {
    v7 = __dst;
  }

  v8 = *(v1 + 8);
  if (*(v8 + 23) < 0)
  {
    v8 = *v8;
    v9 = *(v1 + 16);
    if ((*(v9 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = *(v1 + 16);
    if ((*(v9 + 23) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  v9 = *v9;
LABEL_14:
  *buf = 136315650;
  v13 = v7;
  v14 = 2080;
  v15 = v8;
  v16 = 2080;
  v17 = v9;
  _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Get property [%s], Key=%s, Value=%s", buf, 0x20u);
  if (SHIBYTE(v11) < 0)
  {
    goto LABEL_15;
  }
}

uint64_t __cxx_global_var_init_37()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_38()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

double _GLOBAL__sub_I_KernelPCIABPTrace_cpp()
{
  v0 = operator new(0x90uLL);
  strcpy(v0, "/var/wireless/Library/Logs/AppleBasebandManager/pci-bin.scratch/code-registry.json");
  *byte_280C05DB0 = v0;
  *&result = 82;
  *&byte_280C05DB0[8] = xmmword_23C32F010;
  return result;
}

void *abm::LogManagementTask::LogManagementTask(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a3[1];
  v7 = *a3;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  abm::HelperTask::HelperTask(a1, a2, &v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *a1 = &unk_284EFC968;
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  a1[13] = dispatch_queue_create("log.mgr.task.queue", v5);
  return a1;
}

void sub_23C27EEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void abm::LogManagementTask::~LogManagementTask(abm::LogManagementTask *this)
{
  *this = &unk_284EFC968;
  v2 = *(this + 13);
  if (v2)
  {
    dispatch_release(v2);
  }

  *this = &unk_284F001D8;
  v3 = *(this + 12);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  MEMORY[0x23EECD800](this + 40);
  v5 = *(this + 4);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void abm::LogManagementTask::init_sync(abm::LogManagementTask *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_51;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    v6 = *(this + 12);
    if (!v6)
    {
      goto LABEL_51;
    }
  }

  v7 = std::__shared_weak_count::lock(v6);
  v47 = v7;
  if (v7)
  {
    v8 = v7;
    v9 = *(this + 11);
    v46 = v9;
    if (v9)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3321888768;
      v44[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke;
      v44[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e45_____CFDictionary__20__0i8____CFDictionary__12l;
      v44[4] = this;
      v44[5] = v3;
      v45 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      [ABMCacheDelete RegisterCallbackWithID:@"com.apple.abm.cache-delete" withPurgableBlock:0 withPurgeBlock:0 withPurgeCancelBlock:0 withPeriodicPurgeBlock:v44];
      v10 = *(this + 5);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I CacheDelete Call back is registered. Check if there are purgeable log files.", buf, 2u);
      }

      abm::LogManagementTask::markPurgeableLogs(this);
      v11 = operator new(0x20uLL);
      v41 = v11;
      v42 = xmmword_23C32CA80;
      strcpy(v11, "CommandGetBasebandSnapshotLogs");
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3321888768;
      aBlock[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_4;
      aBlock[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      aBlock[4] = this;
      aBlock[5] = v3;
      v39 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v12 = _Block_copy(aBlock);
      v13 = *(this + 3);
      if (v13)
      {
        dispatch_retain(*(this + 3));
      }

      v40[0] = v12;
      v40[1] = v13;
      abm::HelperServerInternal::setCommandHandler(v9, &v41, v40);
      if (v13)
      {
        dispatch_release(v13);
      }

      if (v12)
      {
        _Block_release(v12);
      }

      operator delete(v11);
      v37[23] = 14;
      strcpy(v37, "CommandLogMove");
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3321888768;
      v34[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_11;
      v34[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v34[4] = this;
      v34[5] = v3;
      v35 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v14 = _Block_copy(v34);
      v15 = *(this + 3);
      if (v15)
      {
        dispatch_retain(*(this + 3));
      }

      v36[0] = v14;
      v36[1] = v15;
      abm::HelperServerInternal::setCommandHandler(v9, v37, v36);
      if (v15)
      {
        dispatch_release(v15);
      }

      if (v14)
      {
        _Block_release(v14);
      }

      v33[23] = 16;
      strcpy(v33, "CommandLogDelete");
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3321888768;
      v30[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_20;
      v30[3] = &__block_descriptor_56_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v30[4] = this;
      v30[5] = v3;
      v31 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v16 = _Block_copy(v30);
      v17 = *(this + 3);
      if (v17)
      {
        dispatch_retain(*(this + 3));
      }

      v32[0] = v16;
      v32[1] = v17;
      abm::HelperServerInternal::setCommandHandler(v9, v33, v32);
      if (v17)
      {
        dispatch_release(v17);
      }

      if (v16)
      {
        _Block_release(v16);
      }

      v18 = operator new(0x20uLL);
      v28 = v18;
      v29 = xmmword_23C32CBF0;
      strcpy(v18, "CommandMobileLogHouseKeeping");
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_29;
      v26[3] = &__block_descriptor_40_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v26[4] = this;
      v19 = _Block_copy(v26);
      v20 = *(this + 3);
      if (v20)
      {
        dispatch_retain(*(this + 3));
      }

      v27[0] = v19;
      v27[1] = v20;
      abm::HelperServerInternal::setCommandHandler(v9, &v28, v27);
      if (v20)
      {
        dispatch_release(v20);
      }

      if (v19)
      {
        _Block_release(v19);
      }

      operator delete(v18);
      v25[23] = 17;
      strcpy(v25, "CommandLogPrepare");
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_30;
      v23[3] = &__block_descriptor_40_e242_v48__0_ServerClientState__shared_ptr_TelephonyXPC::ServerClientState::State____State_____shared_weak_count___8_dict__object__v__24_callback_void_____int__xpc::dict____block_void_____int__xpc::dict_______queue__object___dispatch_object_s____32l;
      v23[4] = this;
      v21 = _Block_copy(v23);
      v22 = *(this + 3);
      if (v22)
      {
        dispatch_retain(v22);
      }

      v24[0] = v21;
      v24[1] = v22;
      abm::HelperServerInternal::setCommandHandler(v9, v25, v24);
      if (v22)
      {
        dispatch_release(v22);
      }

      if (v21)
      {
        _Block_release(v21);
      }

      if (v31)
      {
        std::__shared_weak_count::__release_weak(v31);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_weak(v35);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_weak(v39);
      }

      if (v45)
      {
        std::__shared_weak_count::__release_weak(v45);
      }
    }

    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_51:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_23C27F5A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, std::__shared_weak_count *a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, std::__shared_weak_count *a61)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(&a15);
  if (a36)
  {
    std::__shared_weak_count::__release_weak(a36);
    v64 = a49;
    if (!a49)
    {
LABEL_3:
      v65 = a61;
      if (!a61)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v64 = a49;
    if (!a49)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v64);
  v65 = a61;
  if (!a61)
  {
LABEL_4:
    v66 = *(v62 - 120);
    if (!v66)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v65);
  v66 = *(v62 - 120);
  if (!v66)
  {
LABEL_5:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v62 - 112);
    std::__shared_weak_count::__release_weak(v61);
    _Unwind_Resume(a1);
  }

LABEL_9:
  std::__shared_weak_count::__release_weak(v66);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v62 - 112);
  std::__shared_weak_count::__release_weak(v61);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3abm17LogManagementTask9init_syncEv_block_invoke(void *a1, int a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[5])
      {
        v10 = v7[5];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12[0] = 67109378;
          v12[1] = a2;
          v13 = 2112;
          v14 = a3;
          _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I CacheDelete Purge Periodic Callback: urgency: %d, info: %@", v12, 0x12u);
        }

        abm::LogManagementTask::markPurgeableLogs(v7);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  return 0;
}

uint64_t abm::LogManagementTask::markPurgeableLogs(void *a1)
{
  v2 = a1[2];
  if (!v2 || (v3 = a1[1], (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = a1;
  v7 = a1[3];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<abm::HelperTask>::execute_wrapped<abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0>(abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0,dispatch_queue_s *::default_delete<abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return 0;
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_4(void *a1, TelephonyXPC::ServerClientState *a2, xpc_object_t *a3, uint64_t a4)
{
  v127 = *MEMORY[0x277D85DE8];
  v111 = a1[4];
  v123.__start_.__cntrl_ = 0;
  v123.__end_ = 0;
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_267;
  }

  v123.__end_ = std::__shared_weak_count::lock(v5);
  if (!v123.__end_)
  {
    return;
  }

  v123.__start_.__cntrl_ = a1[5];
  if (!v123.__start_.__cntrl_)
  {
    goto LABEL_267;
  }

  v8 = *(v111 + 80);
  if (v8)
  {
    dispatch_retain(*(v111 + 80));
    dispatch_group_enter(v8);
  }

  group = v8;
  TelephonyXPC::ServerClientState::getName(&block.st_dev, a2);
  st_gid_high = SHIBYTE(block.st_gid);
  v10 = *&block.st_dev;
  if ((block.st_gid & 0x80000000) == 0)
  {
    p_block = &block;
  }

  else
  {
    p_block = *&block.st_dev;
  }

  v12 = strncasecmp(p_block, "BasebandLog.DEHelper", 0x14uLL);
  if (st_gid_high < 0)
  {
    v17 = v12;
    operator delete(v10);
    if (v17)
    {
      goto LABEL_11;
    }
  }

  else if (v12)
  {
LABEL_11:
    v13 = *(v111 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      TelephonyXPC::ServerClientState::getName(&block.st_dev, a2);
      v14 = (block.st_gid & 0x80000000) == 0 ? &block : *&block.st_dev;
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEFAULT, "#I Getting baseband snapshot logs is not allowed for %s", buf, 0xCu);
      if (SHIBYTE(block.st_gid) < 0)
      {
        operator delete(*&block.st_dev);
      }
    }

    v15 = xpc_null_create();
    if (*a4)
    {
      v16 = _Block_copy(*a4);
    }

    else
    {
      v16 = 0;
    }

    v19 = *(a4 + 8);
    *&block.st_dev = MEMORY[0x277D85DD0];
    block.st_ino = 3321888768;
    *&block.st_uid = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
    *&block.st_rdev = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v16)
    {
      v20 = _Block_copy(v16);
      LODWORD(block.st_mtimespec.tv_sec) = -534716414;
      block.st_atimespec.tv_sec = v20;
      block.st_atimespec.tv_nsec = v15;
      if (v15)
      {
LABEL_25:
        xpc_retain(v15);
LABEL_28:
        dispatch_async(v19, &block);
        xpc_release(block.st_atimespec.tv_nsec);
        block.st_atimespec.tv_nsec = 0;
        if (block.st_atimespec.tv_sec)
        {
          _Block_release(block.st_atimespec.tv_sec);
        }

        if (v16)
        {
          _Block_release(v16);
        }

        xpc_release(v15);
        goto LABEL_265;
      }
    }

    else
    {
      LODWORD(block.st_mtimespec.tv_sec) = -534716414;
      block.st_atimespec.tv_sec = 0;
      block.st_atimespec.tv_nsec = v15;
      if (v15)
      {
        goto LABEL_25;
      }
    }

    block.st_atimespec.tv_nsec = xpc_null_create();
    goto LABEL_28;
  }

  value = xpc_dictionary_get_value(*a3, "AllowToDelete");
  *&block.st_dev = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&block.st_dev = xpc_null_create();
  }

  v109 = xpc::dyn_cast_or_default();
  xpc_release(*&block.st_dev);
  v21 = xpc_dictionary_get_value(*a3, "MatchingPattern");
  v22 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v22 = xpc_null_create();
  }

  v23 = xpc_null_create();
  if (v22 && MEMORY[0x23EECEE80](v22) == MEMORY[0x277D86440])
  {
    xpc_retain(v22);
    v24 = v22;
  }

  else
  {
    v24 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](v24) != MEMORY[0x277D86440])
  {
    if (v23)
    {
      xpc_retain(v23);
      v25 = v23;
    }

    else
    {
      v25 = xpc_null_create();
    }

    xpc_release(v24);
    v24 = v25;
  }

  xpc_release(v23);
  xpc_release(v22);
  memset(&v123.__flags_, 170, 24);
  v26 = qword_280C065B0;
  v27 = strlen(qword_280C065B0);
  if (v27 > 0x7FFFFFFFFFFFFFF7)
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

    p_flags = operator new(v30);
    *&v123.__loop_count_ = v28;
    v123.__start_.__ptr_ = (v30 | 0x8000000000000000);
    *&v123.__flags_ = p_flags;
    goto LABEL_54;
  }

  HIBYTE(v123.__start_.__ptr_) = v27;
  p_flags = &v123.__flags_;
  if (v27)
  {
LABEL_54:
    memmove(p_flags, v26, v28);
  }

  *(p_flags + v28) = 0;
  v123.__traits_.__ct_ = 0xAAAAAAAAAAAAAAAALL;
  v123.__traits_.__col_ = 0xAAAAAAAAAAAAAALL;
  v123.__traits_.__loc_.__locale_ = 0xAAAAAAAAAAAAAA00;
  if (v24)
  {
    xpc_retain(v24);
    v31 = v24;
  }

  else
  {
    v31 = xpc_null_create();
    if (!v31)
    {
      v31 = xpc_null_create();
      v32 = 0;
      goto LABEL_59;
    }
  }

  xpc_retain(v31);
  v32 = v31;
LABEL_59:
  xpc_release(v32);
  for (i = 0; ; ++i)
  {
    if (v24)
    {
      xpc_retain(v24);
      v35 = v24;
    }

    else
    {
      v35 = xpc_null_create();
    }

    if (MEMORY[0x23EECEE80](v24) == MEMORY[0x277D86440])
    {
      count = xpc_array_get_count(v24);
      if (!v35)
      {
LABEL_69:
        v37 = xpc_null_create();
        goto LABEL_70;
      }
    }

    else
    {
      count = 0;
      if (!v35)
      {
        goto LABEL_69;
      }
    }

    xpc_retain(v35);
    v37 = v35;
LABEL_70:
    xpc_release(v35);
    xpc_release(v37);
    if (i == count && v31 == v37)
    {
      break;
    }

    memset(&block, 170, 24);
    v38 = xpc_array_get_value(v31, i);
    *buf = v38;
    if (v38)
    {
      xpc_retain(v38);
    }

    else
    {
      *buf = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(*buf);
    v39 = HIBYTE(block.st_gid);
    v40 = HIBYTE(block.st_gid);
    st_ino = block.st_ino;
    if ((block.st_gid & 0x80000000) == 0)
    {
      v42 = HIBYTE(block.st_gid);
    }

    else
    {
      v42 = block.st_ino;
    }

    if (v42)
    {
      col_high = HIBYTE(v123.__traits_.__col_);
      ct = v123.__traits_.__ct_;
      if (SHIBYTE(v123.__traits_.__col_) >= 0)
      {
        v45 = HIBYTE(v123.__traits_.__col_);
      }

      else
      {
        v45 = v123.__traits_.__ct_;
      }

      if (v45)
      {
        if ((HIBYTE(v123.__traits_.__col_) & 0x80) != 0)
        {
          if (((v123.__traits_.__col_ & 0x7FFFFFFFFFFFFFFFLL) - 1) != v123.__traits_.__ct_)
          {
            col_high = v123.__traits_.__ct_;
            locale = v123.__traits_.__loc_.__locale_;
            goto LABEL_104;
          }

          if ((v123.__traits_.__col_ & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v47 = &v123.__traits_.__ct_->__vftable + 1;
          locale = v123.__traits_.__loc_.__locale_;
          if (v123.__traits_.__ct_ > 0x3FFFFFFFFFFFFFF2)
          {
            v51 = 0;
            v50 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_89:
            v48 = 2 * ct;
            if (v47 > 2 * ct)
            {
              v48 = v47;
            }

            if ((v48 | 7) == 0x17)
            {
              v49 = 25;
            }

            else
            {
              v49 = (v48 | 7) + 1;
            }

            if (v48 >= 0x17)
            {
              v50 = v49;
            }

            else
            {
              v50 = 23;
            }

            v51 = ct == 22;
          }

          v52 = operator new(v50);
          v53 = v52;
          if (ct)
          {
            memmove(v52, locale, ct);
          }

          *(v53 + ct) = 124;
          if (!v51)
          {
            operator delete(locale);
          }

          v123.__traits_.__ct_ = v47;
          v123.__traits_.__col_ = (v50 | 0x8000000000000000);
          v123.__traits_.__loc_.__locale_ = v53;
          v54 = v53 + v47;
        }

        else
        {
          locale = &v123;
          if (HIBYTE(v123.__traits_.__col_) == 22)
          {
            v47 = 23;
            ct = 22;
            goto LABEL_89;
          }

LABEL_104:
          *(&col_high->__vftable + locale) = 124;
          v55 = &col_high->__vftable + 1;
          if (SHIBYTE(v123.__traits_.__col_) < 0)
          {
            v123.__traits_.__ct_ = (&col_high->__vftable + 1);
          }

          else
          {
            HIBYTE(v123.__traits_.__col_) = v55 & 0x7F;
          }

          v54 = &v55[locale];
        }

        *v54 = 0;
        v39 = HIBYTE(block.st_gid);
        st_ino = block.st_ino;
        v40 = HIBYTE(block.st_gid);
      }

      if (v40 >= 0)
      {
        v56 = &block;
      }

      else
      {
        v56 = *&block.st_dev;
      }

      if (v40 >= 0)
      {
        v57 = v39;
      }

      else
      {
        v57 = st_ino;
      }

      std::string::append(&v123, v56, v57);
      v40 = HIBYTE(block.st_gid);
    }

    if (v40 < 0)
    {
      operator delete(*&block.st_dev);
      if (!v31)
      {
LABEL_60:
        v34 = xpc_null_create();
        goto LABEL_61;
      }
    }

    else if (!v31)
    {
      goto LABEL_60;
    }

    xpc_retain(v31);
    v34 = v31;
LABEL_61:
    xpc_release(v34);
  }

  xpc_release(v31);
  v58 = xpc_dictionary_create(0, 0, 0);
  if (v58 || (v58 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v58) == MEMORY[0x277D86468])
    {
      xpc_retain(v58);
      v59 = v58;
    }

    else
    {
      v59 = xpc_null_create();
    }
  }

  else
  {
    v59 = xpc_null_create();
    v58 = 0;
  }

  xpc_release(v58);
  v60 = xpc_array_create(0, 0);
  if (v60 || (v60 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x23EECEE80](v60) == MEMORY[0x277D86440])
    {
      xpc_retain(v60);
      v61 = v60;
    }

    else
    {
      v61 = xpc_null_create();
    }
  }

  else
  {
    v61 = xpc_null_create();
    v60 = 0;
  }

  xpc_release(v60);
  v120 = 0;
  v121 = 0;
  v122 = 0;
  *&v62 = 0xAAAAAAAAAAAAAAAALL;
  *(&v62 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf[32] = v62;
  v125 = v62;
  *buf = v62;
  *&buf[16] = v62;
  v107 = v59;
  v108 = v61;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(buf, &v123, 0);
  if (SHIBYTE(v123.__start_.__ptr_) < 0)
  {
    std::string::__init_copy_ctor_external(&v119, *&v123.__flags_, *&v123.__loop_count_);
  }

  else
  {
    v119 = *&v123.__flags_;
  }

  std::locale::locale(&v113, buf);
  v114 = *&buf[8];
  v115 = *&buf[24];
  v116 = *&buf[40];
  v117 = v125;
  if (v125)
  {
    atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
  }

  v118 = *(&v125 + 1);
  FilteredFiles = support::fs::getFilteredFiles(&v119, &v113, &v120, 0);
  v64 = v117;
  if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v64->__on_zero_shared)(v64);
    std::__shared_weak_count::__release_weak(v64);
  }

  std::locale::~locale(&v113);
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
    if (FilteredFiles)
    {
      goto LABEL_147;
    }
  }

  else
  {
    if (!FilteredFiles)
    {
      goto LABEL_207;
    }

LABEL_147:
    v65 = v120;
    if (v120 != v121)
    {
      while (2)
      {
        memset(__p, 170, sizeof(__p));
        ptr_high = SHIBYTE(v123.__start_.__ptr_);
        if (SHIBYTE(v123.__start_.__ptr_) >= 0)
        {
          v67 = HIBYTE(v123.__start_.__ptr_);
        }

        else
        {
          v67 = *&v123.__loop_count_;
        }

        v68 = *(v65 + 23);
        if (v68 >= 0)
        {
          v69 = *(v65 + 23);
        }

        else
        {
          v69 = v65[1];
        }

        v70 = v69 + v67;
        if (v69 + v67 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v70 <= 0x16)
        {
          memset(__p, 0, sizeof(__p));
          v72 = __p;
          HIBYTE(__p[2]) = v69 + v67;
          if (!v67)
          {
            goto LABEL_168;
          }
        }

        else
        {
          if ((v70 | 7) == 0x17)
          {
            v71 = 25;
          }

          else
          {
            v71 = (v70 | 7) + 1;
          }

          v72 = operator new(v71);
          __p[1] = (v69 + v67);
          __p[2] = (v71 | 0x8000000000000000);
          __p[0] = v72;
          if (!v67)
          {
LABEL_168:
            if (v69)
            {
              if (v68 >= 0)
              {
                v74 = v65;
              }

              else
              {
                v74 = *v65;
              }

              memmove(&v72[v67], v74, v69);
            }

            v72[v67 + v69] = 0;
            v75 = SHIBYTE(__p[2]);
            v61 = v108;
            if (!v109)
            {
              v59 = v107;
              goto LABEL_200;
            }

            v76 = strlen(abm::trace::kLogArchiveSuffix[0]);
            v59 = v107;
            if (SHIBYTE(__p[2]) < 0)
            {
              if (v76 == -1 || __p[1] < v76)
              {
LABEL_272:
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              if (!memcmp(__p[0] + __p[1] - v76, abm::trace::kLogArchiveSuffix[0], v76))
              {
LABEL_200:
                if ((v75 & 0x80u) == 0)
                {
                  v86 = __p;
                }

                else
                {
                  v86 = __p[0];
                }

                v87 = xpc_string_create(v86);
                if (!v87)
                {
                  v87 = xpc_null_create();
                }

                xpc_array_append_value(v108, v87);
                xpc_release(v87);
                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                v65 += 3;
                if (v65 == v121)
                {
                  goto LABEL_207;
                }

                continue;
              }
            }

            else
            {
              if (v76 > HIBYTE(__p[2]))
              {
                goto LABEL_272;
              }

              if (!memcmp(__p + HIBYTE(__p[2]) - v76, abm::trace::kLogArchiveSuffix[0], v76))
              {
                goto LABEL_200;
              }
            }

            v78 = *(v111 + 40);
            v79 = os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
            v80 = __p[0];
            if (v79)
            {
              if (v75 >= 0)
              {
                v80 = __p;
              }

              block.st_dev = 136315138;
              *&block.st_mode = v80;
              _os_log_impl(&dword_23C1C4000, v78, OS_LOG_TYPE_DEFAULT, "#I Updating mode: %s", &block, 0xCu);
              LOBYTE(v75) = HIBYTE(__p[2]);
              v80 = __p[0];
            }

            v81.tv_sec = 0xAAAAAAAAAAAAAAAALL;
            v81.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
            *&block.st_blksize = v81;
            *block.st_qspare = v81;
            block.st_birthtimespec = v81;
            *&block.st_size = v81;
            block.st_mtimespec = v81;
            block.st_ctimespec = v81;
            *&block.st_uid = v81;
            block.st_atimespec = v81;
            if ((v75 & 0x80u) == 0)
            {
              v82 = __p;
            }

            else
            {
              v82 = v80;
            }

            *&block.st_dev = v81;
            if (!stat(v82, &block))
            {
              v83 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
              v84 = opendir(v83);
              v85 = v84;
              if (v84)
              {
                readdir(v84);
                closedir(v85);
              }
            }

            ctu::fs::chmod();
            LOBYTE(v75) = HIBYTE(__p[2]);
            goto LABEL_200;
          }
        }

        break;
      }

      if (ptr_high >= 0)
      {
        v73 = &v123.__flags_;
      }

      else
      {
        v73 = *&v123.__flags_;
      }

      memmove(v72, v73, v67);
      goto LABEL_168;
    }
  }

LABEL_207:
  if (MEMORY[0x23EECEE80](v61) == MEMORY[0x277D86440] && xpc_array_get_count(v61))
  {
    if (v109)
    {
      ctu::fs::chmod();
    }

    if (v61)
    {
      xpc_retain(v61);
      v93 = v61;
    }

    else
    {
      v93 = xpc_null_create();
    }

    xpc_dictionary_set_value(v59, "FoundList", v93);
    v96 = xpc_null_create();
    xpc_release(v93);
    xpc_release(v96);
    if (v59)
    {
      xpc_retain(v59);
      v90 = v59;
    }

    else
    {
      v90 = xpc_null_create();
    }

    if (*a4)
    {
      v97 = _Block_copy(*a4);
    }

    else
    {
      v97 = 0;
    }

    v98 = *(a4 + 8);
    *&block.st_dev = MEMORY[0x277D85DD0];
    block.st_ino = 3321888768;
    *&block.st_uid = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
    *&block.st_rdev = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v97)
    {
      v99 = _Block_copy(v97);
    }

    else
    {
      v99 = 0;
    }

    LODWORD(block.st_mtimespec.tv_sec) = 0;
    block.st_atimespec.tv_sec = v99;
    block.st_atimespec.tv_nsec = v90;
    if (v90)
    {
      xpc_retain(v90);
    }

    else
    {
      block.st_atimespec.tv_nsec = xpc_null_create();
    }

    dispatch_async(v98, &block);
    xpc_release(block.st_atimespec.tv_nsec);
    block.st_atimespec.tv_nsec = 0;
    if (block.st_atimespec.tv_sec)
    {
      _Block_release(block.st_atimespec.tv_sec);
    }

    if (v97)
    {
      _Block_release(v97);
    }

    goto LABEL_249;
  }

  v88 = *(v111 + 40);
  if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
  {
    v89 = &v123;
    if (SHIBYTE(v123.__traits_.__col_) < 0)
    {
      v89 = v123.__traits_.__loc_.__locale_;
    }

    block.st_dev = 136315138;
    *&block.st_mode = v89;
    _os_log_impl(&dword_23C1C4000, v88, OS_LOG_TYPE_DEFAULT, "#I Snapshot for pattern %s not found", &block, 0xCu);
  }

  if (v59)
  {
    xpc_retain(v59);
    v90 = v59;
    v91 = *a4;
    if (*a4)
    {
      goto LABEL_214;
    }

LABEL_221:
    v92 = 0;
  }

  else
  {
    v90 = xpc_null_create();
    v91 = *a4;
    if (!*a4)
    {
      goto LABEL_221;
    }

LABEL_214:
    v92 = _Block_copy(v91);
  }

  v94 = *(a4 + 8);
  *&block.st_dev = MEMORY[0x277D85DD0];
  block.st_ino = 3321888768;
  *&block.st_uid = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
  *&block.st_rdev = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (v92)
  {
    v95 = _Block_copy(v92);
    LODWORD(block.st_mtimespec.tv_sec) = -534716416;
    block.st_atimespec.tv_sec = v95;
    block.st_atimespec.tv_nsec = v90;
    if (v90)
    {
      goto LABEL_224;
    }

LABEL_226:
    block.st_atimespec.tv_nsec = xpc_null_create();
  }

  else
  {
    LODWORD(block.st_mtimespec.tv_sec) = -534716416;
    block.st_atimespec.tv_sec = 0;
    block.st_atimespec.tv_nsec = v90;
    if (!v90)
    {
      goto LABEL_226;
    }

LABEL_224:
    xpc_retain(v90);
  }

  dispatch_async(v94, &block);
  xpc_release(block.st_atimespec.tv_nsec);
  block.st_atimespec.tv_nsec = 0;
  if (block.st_atimespec.tv_sec)
  {
    _Block_release(block.st_atimespec.tv_sec);
  }

  if (v92)
  {
    _Block_release(v92);
  }

LABEL_249:
  xpc_release(v90);
  v100 = v125;
  if (v125 && !atomic_fetch_add((v125 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v100->__on_zero_shared)(v100);
    std::__shared_weak_count::__release_weak(v100);
  }

  std::locale::~locale(buf);
  v101 = v120;
  if (v120)
  {
    v102 = v121;
    v103 = v120;
    if (v121 != v120)
    {
      do
      {
        v104 = *(v102 - 1);
        v102 -= 3;
        if (v104 < 0)
        {
          operator delete(*v102);
        }
      }

      while (v102 != v101);
      v103 = v120;
    }

    v121 = v101;
    operator delete(v103);
  }

  xpc_release(v61);
  xpc_release(v59);
  if (SHIBYTE(v123.__traits_.__col_) < 0)
  {
    operator delete(v123.__traits_.__loc_.__locale_);
  }

  if (SHIBYTE(v123.__start_.__ptr_) < 0)
  {
    operator delete(*&v123.__flags_);
  }

  xpc_release(v24);
LABEL_265:
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

LABEL_267:
  end = v123.__end_;
  if (v123.__end_)
  {
    if (!atomic_fetch_add(&v123.__end_->__first_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (end->__exec)(end, a2, a3);
      std::__shared_weak_count::__release_weak(end);
    }
  }
}

void sub_23C280914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group, xpc_object_t a13, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char a53, uint64_t a54, xpc_object_t a55)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_11(void *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[5];
      if (!v11)
      {
LABEL_19:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }

      v12 = *(v8 + 80);
      v13 = *(v8 + 24);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3321888768;
      v18[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_2;
      v18[3] = &__block_descriptor_80_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_e5_v8__0l;
      v18[4] = v8;
      v18[5] = v11;
      v14 = a1[6];
      v19 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a3;
      v20 = v15;
      if (v15)
      {
        xpc_retain(v15);
        v16 = *a4;
        if (!*a4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v20 = xpc_null_create();
        v16 = *a4;
        if (!*a4)
        {
LABEL_11:
          v17 = *(a4 + 8);
          aBlock = v16;
          object = v17;
          if (v17)
          {
            dispatch_retain(v17);
          }

          dispatch_group_notify(v12, v13, v18);
          if (object)
          {
            dispatch_release(object);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          xpc_release(v20);
          v20 = 0;
          if (v19)
          {
            std::__shared_weak_count::__release_weak(v19);
          }

          goto LABEL_19;
        }
      }

      v16 = _Block_copy(v16);
      goto LABEL_11;
    }
  }
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v117 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v93 = *(v1 + 32);
  v3 = std::__shared_weak_count::lock(v2);
  v113 = v3;
  if (!v3)
  {
    return;
  }

  if (!*(v1 + 40))
  {
LABEL_226:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v90 = v3;
      (v3->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v90);
    }

    return;
  }

  v4 = v93[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x23EECEE10](*(v1 + 56));
    memset(__dst, 170, 24);
    v6 = strlen(v5);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v9 = 25;
      }

      else
      {
        v9 = (v6 | 7) + 1;
      }

      v8 = operator new(v9);
      *&__dst[8] = v7;
      *&__dst[16] = v9 | 0x8000000000000000;
      *__dst = v8;
    }

    else
    {
      __dst[23] = v6;
      v8 = __dst;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    memcpy(v8, v5, v7);
LABEL_14:
    v8[v7] = 0;
    free(v5);
    v10 = __dst;
    if (__dst[23] < 0)
    {
      v10 = *__dst;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v10;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I LogMove requested: %s", &buf, 0xCu);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
    }
  }

  value = xpc_dictionary_get_value(*(v1 + 56), "MatchingPattern");
  v12 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v12 = xpc_null_create();
  }

  v13 = xpc_null_create();
  if (v12 && MEMORY[0x23EECEE80](v12) == MEMORY[0x277D86440])
  {
    xpc_retain(v12);
    v14 = v12;
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](v14) != MEMORY[0x277D86440])
  {
    if (v13)
    {
      xpc_retain(v13);
      v15 = v13;
    }

    else
    {
      v15 = xpc_null_create();
    }

    xpc_release(v14);
    v14 = v15;
  }

  xpc_release(v13);
  xpc_release(v12);
  v92 = v14;
  v16 = xpc_dictionary_get_value(*(v1 + 56), "SrcBaseDirectoryIndex");
  *__dst = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *__dst = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default();
  xpc_release(*__dst);
  memset(&buf, 170, sizeof(buf));
  v18 = xpc_dictionary_get_value(*(v1 + 56), "DstDirectory");
  *__dst = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    *__dst = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(*__dst);
  if (v17 >= 8)
  {
    v19 = v93[5];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *__dst = 67109120;
      *&__dst[4] = v17;
      _os_log_error_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid BaseDir [%d]. Cannot process it", __dst, 8u);
    }

    goto LABEL_223;
  }

  v111.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v111.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  v111.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  if (v14)
  {
    xpc_retain(v14);
    v20 = v14;
  }

  else
  {
    v20 = xpc_null_create();
    if (!v20)
    {
      v20 = xpc_null_create();
      v21 = 0;
      goto LABEL_43;
    }
  }

  xpc_retain(v20);
  v21 = v20;
LABEL_43:
  xpc_release(v21);
  v22 = 0;
  v91 = v1;
  while (1)
  {
    if (v14)
    {
      xpc_retain(v14);
      v24 = v14;
    }

    else
    {
      v24 = xpc_null_create();
    }

    if (MEMORY[0x23EECEE80](v14) == MEMORY[0x277D86440])
    {
      count = xpc_array_get_count(v14);
      if (!v24)
      {
LABEL_53:
        v26 = xpc_null_create();
        goto LABEL_54;
      }
    }

    else
    {
      count = 0;
      if (!v24)
      {
        goto LABEL_53;
      }
    }

    xpc_retain(v24);
    v26 = v24;
LABEL_54:
    xpc_release(v24);
    xpc_release(v26);
    if (v22 == count && v20 == v26)
    {
      break;
    }

    memset(__dst, 170, 24);
    v27 = xpc_array_get_value(v20, v22);
    *v110 = v27;
    if (v27)
    {
      xpc_retain(v27);
    }

    else
    {
      *v110 = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(*v110);
    v28 = __dst[23];
    v29 = __dst[23];
    v30 = *&__dst[8];
    if (__dst[23] >= 0)
    {
      v31 = __dst[23];
    }

    else
    {
      v31 = *&__dst[8];
    }

    if (v31)
    {
      v32 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
      size = v111.__r_.__value_.__l.__size_;
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v111.__r_.__value_.__l.__size_;
      }

      if (v34)
      {
        if ((*(&v111.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          if ((v111.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 != v111.__r_.__value_.__l.__size_)
          {
            v32 = v111.__r_.__value_.__l.__size_;
            v35 = v111.__r_.__value_.__r.__words[0];
            goto LABEL_88;
          }

          if ((v111.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v36 = v111.__r_.__value_.__l.__size_ + 1;
          v35 = v111.__r_.__value_.__r.__words[0];
          if (v111.__r_.__value_.__l.__size_ >= 0x3FFFFFFFFFFFFFF3)
          {
            v40 = 0;
            v39 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_73:
            v37 = 2 * size;
            if (v36 > 2 * size)
            {
              v37 = v36;
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
              v39 = v38;
            }

            else
            {
              v39 = 23;
            }

            v40 = size == 22;
          }

          v41 = operator new(v39);
          v42 = v41;
          if (size)
          {
            memmove(v41, v35, size);
          }

          *(v42 + size) = 124;
          if (!v40)
          {
            operator delete(v35);
          }

          v111.__r_.__value_.__l.__size_ = v36;
          v111.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
          v111.__r_.__value_.__r.__words[0] = v42;
          v43 = (v42 + v36);
          v1 = v91;
          v14 = v92;
        }

        else
        {
          v35 = &v111;
          if (HIBYTE(v111.__r_.__value_.__r.__words[2]) == 22)
          {
            v36 = 23;
            size = 22;
            goto LABEL_73;
          }

LABEL_88:
          v35->__r_.__value_.__s.__data_[v32] = 124;
          v44 = v32 + 1;
          if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
          {
            v111.__r_.__value_.__l.__size_ = v32 + 1;
          }

          else
          {
            *(&v111.__r_.__value_.__s + 23) = v44 & 0x7F;
          }

          v43 = v35 + v44;
        }

        *v43 = 0;
        v28 = __dst[23];
        v30 = *&__dst[8];
        v29 = __dst[23];
      }

      *(&v107.__r_.__value_.__s + 23) = 2;
      strcpy(&v107, ".*");
      if (v29 >= 0)
      {
        v45 = __dst;
      }

      else
      {
        v45 = *__dst;
      }

      if (v29 >= 0)
      {
        v46 = v28;
      }

      else
      {
        v46 = v30;
      }

      v47 = std::string::append(&v107, v45, v46);
      v48 = *&v47->__r_.__value_.__l.__data_;
      v109 = v47->__r_.__value_.__r.__words[2];
      *__p = v48;
      v47->__r_.__value_.__l.__size_ = 0;
      v47->__r_.__value_.__r.__words[2] = 0;
      v47->__r_.__value_.__r.__words[0] = 0;
      v49 = SHIBYTE(v109);
      if ((SHIBYTE(v109) & 0x8000000000000000) != 0)
      {
        v49 = __p[1];
        v52 = (v109 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v52 - __p[1] >= 2)
        {
          v60 = __p[0];
          *(__p[0] + __p[1]) = 10798;
          v61 = (v49 + 2);
          if ((SHIBYTE(v109) & 0x80000000) == 0)
          {
            goto LABEL_120;
          }

          goto LABEL_122;
        }

        v50 = __p[1] + 2;
        if ((0x7FFFFFFFFFFFFFF7 - (v109 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v52 + 2)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v51 = __p[0];
        if (v52 >= 0x3FFFFFFFFFFFFFF3)
        {
          v56 = 0;
          v55 = 0x7FFFFFFFFFFFFFF7;
        }

        else
        {
LABEL_105:
          v53 = 2 * v52;
          if (v50 > 2 * v52)
          {
            v53 = v50;
          }

          if ((v53 | 7) == 0x17)
          {
            v54 = 25;
          }

          else
          {
            v54 = (v53 | 7) + 1;
          }

          if (v53 >= 0x17)
          {
            v55 = v54;
          }

          else
          {
            v55 = 23;
          }

          v56 = v52 == 22;
        }

        v57 = operator new(v55);
        v58 = v57;
        if (v49)
        {
          memmove(v57, v51, v49);
        }

        *(v58 + v49) = 10798;
        if (!v56)
        {
          operator delete(v51);
        }

        __p[1] = v50;
        v109 = v55 | 0x8000000000000000;
        __p[0] = v58;
        v59 = &v50[v58];
        v1 = v91;
        v14 = v92;
      }

      else
      {
        if ((SHIBYTE(v109) - 21) < 2)
        {
          v50 = (SHIBYTE(v109) + 2);
          v51 = __p;
          v52 = 22;
          goto LABEL_105;
        }

        v60 = __p;
        *(__p + SHIBYTE(v109)) = 10798;
        v61 = (v49 + 2);
        if ((SHIBYTE(v109) & 0x80000000) == 0)
        {
LABEL_120:
          HIBYTE(v109) = v61 & 0x7F;
          goto LABEL_123;
        }

LABEL_122:
        __p[1] = v61;
LABEL_123:
        v59 = &v61[v60];
      }

      *v59 = 0;
      *&v110[16] = v109;
      *v110 = *__p;
      __p[1] = 0;
      v109 = 0;
      __p[0] = 0;
      if (v110[23] >= 0)
      {
        v62 = v110;
      }

      else
      {
        v62 = *v110;
      }

      if (v110[23] >= 0)
      {
        v63 = v110[23];
      }

      else
      {
        v63 = *&v110[8];
      }

      std::string::append(&v111, v62, v63);
      if ((v110[23] & 0x80000000) != 0)
      {
        operator delete(*v110);
        if (SHIBYTE(v109) < 0)
        {
          goto LABEL_140;
        }

LABEL_132:
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_141:
          operator delete(v107.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if ((SHIBYTE(v109) & 0x80000000) == 0)
        {
          goto LABEL_132;
        }

LABEL_140:
        operator delete(__p[0]);
        if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_141;
        }
      }

      v29 = __dst[23];
    }

    if (v29 < 0)
    {
      operator delete(*__dst);
      if (!v20)
      {
LABEL_44:
        v23 = xpc_null_create();
        goto LABEL_45;
      }
    }

    else if (!v20)
    {
      goto LABEL_44;
    }

    xpc_retain(v20);
    v23 = v20;
LABEL_45:
    ++v22;
    xpc_release(v23);
  }

  xpc_release(v20);
  v64 = v93[10];
  if (v64)
  {
    dispatch_retain(v93[10]);
    dispatch_group_enter(v64);
  }

  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  __p[1] = 0xAAAAAAAAAAAAAAAALL;
  v65 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v66 = xmmword_280C05A58;
  if (!xmmword_280C05A58)
  {
    ctu::XpcJetsamAssertion::create_default_global(__dst, v65);
    v67 = *__dst;
    *__dst = 0;
    *&__dst[8] = 0;
    v68 = *(&xmmword_280C05A58 + 1);
    xmmword_280C05A58 = v67;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
    }

    v69 = *&__dst[8];
    if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
    }

    v66 = xmmword_280C05A58;
  }

  v70 = *(&xmmword_280C05A58 + 1);
  *v110 = v66;
  *&v110[8] = *(&xmmword_280C05A58 + 1);
  if (*(&xmmword_280C05A58 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v106[23] = 8;
  strcpy(v106, "Log Move");
  ctu::XpcJetsamAssertion::createActivity();
  if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v70->__on_zero_shared)(v70);
    std::__shared_weak_count::__release_weak(v70);
  }

  memset(v110, 170, sizeof(v110));
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v111;
  }

  *__dst = v17;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__dst[8], v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    *&__dst[8] = v105;
  }

  v115 = 0;
  std::vector<abm::DirectoryQuery>::vector[abi:ne200100](v110, __dst, 1uLL);
  if ((__dst[31] & 0x80000000) != 0)
  {
    operator delete(*&__dst[8]);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  memset(__dst, 170, 16);
  abm::findFiles(v110, 1u, __dst);
  v71 = *__dst;
  v72 = **__dst;
  if (**__dst != *(*__dst + 8))
  {
    v73 = MEMORY[0x277D85DD0];
    v74 = **__dst;
    do
    {
      block[0] = v73;
      block[1] = 3321888768;
      block[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_14;
      block[3] = &__block_descriptor_96_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c30_ZTSN8dispatch13group_sessionE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_e5_v8__0l;
      v76 = *(v1 + 40);
      v75 = *(v1 + 48);
      block[4] = v93;
      block[5] = v76;
      v101 = v75;
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      group = v64;
      if (v64)
      {
        dispatch_retain(v64);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      v103 = v72;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v104, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        v104 = buf;
      }

      dispatch_async(v93[13], block);
      if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v104.__r_.__value_.__l.__data_);
        v77 = group;
        if (group)
        {
LABEL_184:
          dispatch_group_leave(v77);
          if (group)
          {
            dispatch_release(group);
          }
        }
      }

      else
      {
        v77 = group;
        if (group)
        {
          goto LABEL_184;
        }
      }

      if (v101)
      {
        std::__shared_weak_count::__release_weak(v101);
      }

      v74 += 16;
      v71 = *__dst;
      v72 += 16;
    }

    while (v74 != *(*__dst + 8));
  }

  v14 = v92;
  v78 = v93[10];
  v79 = v93[3];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3321888768;
  v94[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_17;
  v94[3] = &__block_descriptor_88_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c87_ZTSNSt3__110shared_ptrINS_6vectorINS0_IN3abm14FilePropertiesEEENS_9allocatorIS4_EEEEEE72c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_e5_v8__0l;
  v81 = *(v1 + 40);
  v80 = *(v1 + 48);
  v94[4] = v93;
  v94[5] = v81;
  v95 = v80;
  if (v80)
  {
    atomic_fetch_add_explicit(&v80->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v96 = v71;
  v97 = *&__dst[8];
  if (*&__dst[8])
  {
    atomic_fetch_add_explicit((*&__dst[8] + 8), 1uLL, memory_order_relaxed);
  }

  v82 = *(v1 + 64);
  if (v82)
  {
    v82 = _Block_copy(v82);
  }

  v83 = *(v1 + 72);
  aBlock = v82;
  object = v83;
  if (v83)
  {
    dispatch_retain(v83);
  }

  dispatch_group_notify(v78, v79, v94);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v84 = v97;
  if (v97 && !atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v84->__on_zero_shared)(v84);
    std::__shared_weak_count::__release_weak(v84);
  }

  if (v95)
  {
    std::__shared_weak_count::__release_weak(v95);
  }

  v85 = *&__dst[8];
  if (*&__dst[8] && !atomic_fetch_add((*&__dst[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v85->__on_zero_shared)(v85);
    std::__shared_weak_count::__release_weak(v85);
  }

  v86 = *v110;
  if (*v110)
  {
    v87 = *&v110[8];
    v88 = *v110;
    if (*&v110[8] != *v110)
    {
      do
      {
        if (*(v87 - 9) < 0)
        {
          operator delete(*(v87 - 32));
        }

        v87 -= 40;
      }

      while (v87 != v86);
      v88 = *v110;
    }

    *&v110[8] = v86;
    operator delete(v88);
  }

  v89 = __p[1];
  if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v89->__on_zero_shared)(v89);
    std::__shared_weak_count::__release_weak(v89);
  }

  if (v64)
  {
    dispatch_group_leave(v64);
    dispatch_release(v64);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

LABEL_223:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  xpc_release(v14);
  v3 = v113;
  if (v113)
  {
    goto LABEL_226;
  }
}

void sub_23C281BA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, dispatch_group_t group, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a56);
  if (v61)
  {
    dispatch_group_leave(v61);
    dispatch_release(v61);
  }

  if (*(v62 - 209) < 0)
  {
    operator delete(*(v62 - 232));
  }

  if (*(v62 - 121) < 0)
  {
    operator delete(*(v62 - 144));
  }

  xpc_release(object);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v62 - 208);
  _Unwind_Resume(a1);
}

void sub_23C281E94(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_14(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v52 = v4;
    if (v4)
    {
      v51 = *(a1 + 40);
      if (!v51 || (v5 = *(a1 + 64), !*v5))
      {
LABEL_95:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v42 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v42);
        }

        return;
      }

      memset(v50, 170, sizeof(v50));
      abm::FileProperties::getPath(*v5, v50);
      memset(&v49, 170, sizeof(v49));
      v6 = *(a1 + 64);
      v7 = *v6;
      v8 = v6[1];
      v47 = *v6;
      v48 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v7 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v53, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v9 = *(v7 + 8);
        v53.__r_.__value_.__r.__words[2] = *(v7 + 24);
        *&v53.__r_.__value_.__l.__data_ = v9;
      }

      v10 = *(a1 + 95);
      if (v10 >= 0)
      {
        v11 = *(a1 + 95);
      }

      else
      {
        v11 = *(a1 + 80);
      }

      v12 = SHIBYTE(v53.__r_.__value_.__r.__words[2]);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v53.__r_.__value_.__l.__size_;
      }

      v14 = size + v11;
      if (size + v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v14 <= 0x16)
      {
        memset(&v49, 0, sizeof(v49));
        v16 = &v49;
        *(&v49.__r_.__value_.__s + 23) = size + v11;
        if (!v11)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if ((v14 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v14 | 7) + 1;
        }

        v16 = operator new(v15);
        v49.__r_.__value_.__l.__size_ = size + v11;
        v49.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
        v49.__r_.__value_.__r.__words[0] = v16;
        if (!v11)
        {
LABEL_28:
          if (size)
          {
            if (v12 >= 0)
            {
              v18 = &v53;
            }

            else
            {
              v18 = v53.__r_.__value_.__r.__words[0];
            }

            memmove(v16 + v11, v18, size);
          }

          v16->__r_.__value_.__s.__data_[v11 + size] = 0;
          if (v12 < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }

          v19 = *(v3 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = v50;
            if (SHIBYTE(v50[2]) < 0)
            {
              v20 = v50[0];
            }

            v21 = &v49;
            if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v21 = v49.__r_.__value_.__r.__words[0];
            }

            LODWORD(v53.__r_.__value_.__l.__data_) = 136315394;
            *(v53.__r_.__value_.__r.__words + 4) = v20;
            WORD2(v53.__r_.__value_.__r.__words[1]) = 2080;
            *(&v53.__r_.__value_.__r.__words[1] + 6) = v21;
            _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, "#I Move %s to %s", &v53, 0x16u);
          }

          *&__ec.__val_ = 0xAAAAAAAA00000000;
          __ec.__cat_ = std::system_category();
          memset(&v53, 0, sizeof(v53));
          v22 = SHIBYTE(v50[2]);
          if (SHIBYTE(v50[2]) >= 0)
          {
            v23 = v50;
          }

          else
          {
            v23 = v50[0];
          }

          if (SHIBYTE(v50[2]) < 0)
          {
            v22 = v50[1];
          }

          std::string::append[abi:ne200100]<char const*,0>(&v53, v23, v22 + v23);
          memset(&__to, 0, sizeof(__to));
          v24 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v49;
          }

          else
          {
            v25 = v49.__r_.__value_.__r.__words[0];
          }

          if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v24 = v49.__r_.__value_.__l.__size_;
          }

          std::string::append[abi:ne200100]<char const*,0>(&__to, v25, v25 + v24);
          std::__fs::filesystem::__copy(&v53, &__to, recursive|update_existing, &__ec);
          if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__to.__pn_.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              if (__ec.__val_)
              {
                goto LABEL_57;
              }

              goto LABEL_69;
            }
          }

          else if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          operator delete(v53.__r_.__value_.__l.__data_);
          if (__ec.__val_)
          {
LABEL_57:
            v26 = *(v3 + 40);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              v27 = SHIBYTE(v50[2]);
              v28 = v50[0];
              v29 = SHIBYTE(v49.__r_.__value_.__r.__words[2]);
              v30 = v49.__r_.__value_.__r.__words[0];
              std::error_code::message(&__to.__pn_, &__ec);
              v31 = &v49;
              if (v29 < 0)
              {
                v31 = v30;
              }

              v32 = v50;
              if (v27 < 0)
              {
                v32 = v28;
              }

              LODWORD(v53.__r_.__value_.__l.__data_) = 136315650;
              if ((__to.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_to = &__to;
              }

              else
              {
                p_to = __to.__pn_.__r_.__value_.__r.__words[0];
              }

              *(v53.__r_.__value_.__r.__words + 4) = v32;
              WORD2(v53.__r_.__value_.__r.__words[1]) = 2080;
              *(&v53.__r_.__value_.__r.__words[1] + 6) = v31;
              HIWORD(v53.__r_.__value_.__r.__words[2]) = 2080;
              v54 = p_to;
              _os_log_error_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_ERROR, "Failed to copy from %s to %s: %s\n", &v53, 0x20u);
              if (SHIBYTE(__to.__pn_.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__to.__pn_.__r_.__value_.__l.__data_);
              }
            }

            goto LABEL_89;
          }

LABEL_69:
          v44 = -1431655766;
          LODWORD(__to.__pn_.__r_.__value_.__l.__data_) = -1431655766;
          if (support::fs::getUidGid(1, &__to, &v44))
          {
            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, v49.__r_.__value_.__l.__data_, v49.__r_.__value_.__l.__size_);
            }

            else
            {
              __p = v49;
            }

            updated = support::fs::updateOwner(&__p, LODWORD(__to.__pn_.__r_.__value_.__l.__data_), v44);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              v40 = updated;
              operator delete(__p.__r_.__value_.__l.__data_);
              if (v40)
              {
LABEL_75:
                v35 = support::fs::isDir(&v49);
                if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v36 = &v49;
                }

                else
                {
                  v36 = v49.__r_.__value_.__r.__words[0];
                }

                if (v35)
                {
                  v37 = 495;
                }

                else
                {
                  v37 = 422;
                }

                if (chmod(v36, v37))
                {
                  v38 = *(v3 + 40);
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                  {
                    v39 = &v49;
                    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v39 = v49.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(v53.__r_.__value_.__l.__data_) = 136315138;
                    *(v53.__r_.__value_.__r.__words + 4) = v39;
                    _os_log_error_impl(&dword_23C1C4000, v38, OS_LOG_TYPE_ERROR, "Failed to change file permission: %s", &v53, 0xCu);
                  }
                }

                goto LABEL_89;
              }
            }

            else if (updated)
            {
              goto LABEL_75;
            }
          }

          v41 = *(v3 + 40);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v53.__r_.__value_.__l.__data_) = 0;
            _os_log_error_impl(&dword_23C1C4000, v41, OS_LOG_TYPE_ERROR, "Failed to update owner", &v53, 2u);
          }

LABEL_89:
          abm::LogManagementTask::remove_sync(v3, v50);
          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v50[2]) & 0x80000000) == 0)
            {
LABEL_91:
              v4 = v52;
              if (!v52)
              {
                return;
              }

              goto LABEL_95;
            }
          }

          else if ((SHIBYTE(v50[2]) & 0x80000000) == 0)
          {
            goto LABEL_91;
          }

          operator delete(v50[0]);
          v4 = v52;
          if (!v52)
          {
            return;
          }

          goto LABEL_95;
        }
      }

      if (v10 >= 0)
      {
        v17 = (a1 + 72);
      }

      else
      {
        v17 = *(a1 + 72);
      }

      memmove(v16, v17, v11);
      goto LABEL_28;
    }
  }
}

void sub_23C28249C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
LABEL_3:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a39);
    _Unwind_Resume(a1);
  }

  operator delete(a33);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a39);
  _Unwind_Resume(a1);
}

void sub_23C282544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C282558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (*(v29 - 121) < 0)
  {
    operator delete(*(v29 - 144));
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a19);
  if (a29 < 0)
  {
    JUMPOUT(0x23C28252CLL);
  }

  JUMPOUT(0x23C282514);
}

BOOL abm::LogManagementTask::remove_sync(uint64_t a1, std::string::size_type a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *&v12.__val_ = 0xAAAAAAAA00000000;
  v12.__cat_ = std::system_category();
  memset(&v17, 0, sizeof(v17));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 < 0)
  {
    v4 = *(a2 + 8);
  }

  std::string::append[abi:ne200100]<char const*,0>(&v17, v5, &v5[v4]);
  std::__fs::filesystem::__remove_all(&v17, &v12);
  if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__pn_.__r_.__value_.__l.__data_);
    val = v12.__val_;
    v7 = *(a1 + 40);
    v8 = v7;
    if (v12.__val_)
    {
LABEL_8:
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        std::error_code::message(&v17.__pn_, &v12);
        if ((v17.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v9 = &v17;
        }

        else
        {
          v9 = v17.__pn_.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v14 = a2;
        v15 = 2080;
        v16 = v9;
        _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to remove %s: %s\n", buf, 0x16u);
        if (SHIBYTE(v17.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__pn_.__r_.__value_.__l.__data_);
        }
      }

      return val == 0;
    }
  }

  else
  {
    val = v12.__val_;
    v7 = *(a1 + 40);
    v8 = v7;
    if (v12.__val_)
    {
      goto LABEL_8;
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    LODWORD(v17.__pn_.__r_.__value_.__l.__data_) = 136315138;
    *(v17.__pn_.__r_.__value_.__r.__words + 4) = v10;
    _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I File removed: %s\n", &v17, 0xCu);
  }

  return val == 0;
}

void sub_23C282748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c30_ZTSN8dispatch13group_sessionE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  a1[2].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    dispatch_retain(v5);
    size = a1[2].__r_.__value_.__l.__size_;
    if (size)
    {
      dispatch_group_enter(size);
    }
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v7 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v7;
  }
}

void sub_23C2827F0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 56);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c30_ZTSN8dispatch13group_sessionE72c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_17(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
LABEL_27:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v6 = a1[7];
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        if (v8 != *v6)
        {
          do
          {
            v9 = *(v8 - 8);
            if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }

            v8 -= 16;
          }

          while (v8 != v7);
        }

        v6[1] = v7;
      }

      v10 = *(v3 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Moving Done", v16, 2u);
      }

      v11 = xpc_null_create();
      v12 = a1[9];
      if (v12)
      {
        v13 = _Block_copy(v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = a1[10];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3321888768;
      v16[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
      v16[3] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v19 = 0;
        aBlock = v15;
        object = v11;
        if (v11)
        {
LABEL_19:
          xpc_retain(v11);
LABEL_22:
          dispatch_async(v14, v16);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v13)
          {
            _Block_release(v13);
          }

          xpc_release(v11);
          goto LABEL_27;
        }
      }

      else
      {
        v19 = 0;
        aBlock = 0;
        object = v11;
        if (v11)
        {
          goto LABEL_19;
        }
      }

      object = xpc_null_create();
      goto LABEL_22;
    }
  }
}

void __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c87_ZTSNSt3__110shared_ptrINS_6vectorINS0_IN3abm14FilePropertiesEEENS_9allocatorIS4_EEEEEE72c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[8];
  a1[7] = a2[7];
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[9];
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = a2[10];
  a1[9] = v6;
  a1[10] = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c87_ZTSNSt3__110shared_ptrINS_6vectorINS0_IN3abm14FilePropertiesEEENS_9allocatorIS4_EEEEEE72c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = a1[6];
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = a1[6];
    if (!v5)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v5);
}

void ***std::vector<abm::DirectoryQuery>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 9) < 0)
        {
          operator delete(*(v3 - 4));
        }

        v3 -= 5;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  a1[7] = v5;
  if (!v5)
  {
    a1[7] = xpc_null_create();
    v6 = a2[8];
    if (!v6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  xpc_retain(v5);
  v6 = a2[8];
  if (v6)
  {
LABEL_7:
    v6 = _Block_copy(v6);
  }

LABEL_8:
  v7 = a2[9];
  a1[8] = v6;
  a1[9] = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_20(void *a1, uint64_t a2, void **a3, uint64_t a4)
{
  v5 = a1[6];
  if (v5)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      v11 = a1[5];
      if (!v11)
      {
LABEL_19:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }

      v12 = *(v8 + 80);
      v13 = *(v8 + 24);
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3321888768;
      v18[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_2_21;
      v18[3] = &__block_descriptor_80_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_e5_v8__0l;
      v18[4] = v8;
      v18[5] = v11;
      v14 = a1[6];
      v19 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *a3;
      v20 = v15;
      if (v15)
      {
        xpc_retain(v15);
        v16 = *a4;
        if (!*a4)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v20 = xpc_null_create();
        v16 = *a4;
        if (!*a4)
        {
LABEL_11:
          v17 = *(a4 + 8);
          aBlock = v16;
          object = v17;
          if (v17)
          {
            dispatch_retain(v17);
          }

          dispatch_group_notify(v12, v13, v18);
          if (object)
          {
            dispatch_release(object);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          xpc_release(v20);
          v20 = 0;
          if (v19)
          {
            std::__shared_weak_count::__release_weak(v19);
          }

          goto LABEL_19;
        }
      }

      v16 = _Block_copy(v16);
      goto LABEL_11;
    }
  }
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_2_21(uint64_t a1)
{
  v137 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v94 = *(a1 + 32);
  v3 = std::__shared_weak_count::lock(v2);
  v117 = v3;
  if (!v3)
  {
    return;
  }

  if (!*(a1 + 40))
  {
    goto LABEL_252;
  }

  value = xpc_dictionary_get_value(*(a1 + 56), "MatchingPattern");
  v5 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v5 = xpc_null_create();
  }

  v6 = xpc_null_create();
  if (v5 && MEMORY[0x23EECEE80](v5) == MEMORY[0x277D86440])
  {
    xpc_retain(v5);
    v7 = v5;
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (MEMORY[0x23EECEE80](v7) != MEMORY[0x277D86440])
  {
    if (v6)
    {
      xpc_retain(v6);
      v8 = v6;
    }

    else
    {
      v8 = xpc_null_create();
    }

    xpc_release(v7);
    v7 = v8;
  }

  xpc_release(v6);
  xpc_release(v5);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v114 = v9;
  v115 = v9;
  *&v112[0].__locale_ = v9;
  v113 = v9;
  v92 = v7;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v112, "[0-9]{4}.[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}.[0-9]{2}", 0);
  v111.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v111.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
  v111.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
  if (v7)
  {
    xpc_retain(v7);
    v10 = v7;
  }

  else
  {
    v10 = xpc_null_create();
    if (!v10)
    {
      v10 = xpc_null_create();
      v11 = 0;
      goto LABEL_20;
    }
  }

  xpc_retain(v10);
  v11 = v10;
LABEL_20:
  v93 = a1;
  xpc_release(v11);
  v12 = 0;
  v91 = v10;
  while (1)
  {
    if (v7)
    {
      xpc_retain(v7);
      v14 = v7;
    }

    else
    {
      v14 = xpc_null_create();
    }

    if (MEMORY[0x23EECEE80](v7) == MEMORY[0x277D86440])
    {
      count = xpc_array_get_count(v7);
      if (!v14)
      {
LABEL_30:
        v16 = xpc_null_create();
        goto LABEL_31;
      }
    }

    else
    {
      count = 0;
      if (!v14)
      {
        goto LABEL_30;
      }
    }

    xpc_retain(v14);
    v16 = v14;
LABEL_31:
    xpc_release(v14);
    xpc_release(v16);
    if (v12 == count && v10 == v16)
    {
      break;
    }

    memset(&v110, 170, sizeof(v110));
    v17 = xpc_array_get_value(v10, v12);
    *object = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      *object = xpc_null_create();
    }

    xpc::dyn_cast_or_default();
    xpc_release(*object);
    if (SHIBYTE(v110.__end_cap_.__value_) >= 0)
    {
      value_high = HIBYTE(v110.__end_cap_.__value_);
    }

    else
    {
      value_high = v110.__end_;
    }

    if (!value_high)
    {
      goto LABEL_141;
    }

    if (SHIBYTE(v110.__end_cap_.__value_) >= 0)
    {
      begin = &v110;
    }

    else
    {
      begin = v110.__begin_;
    }

    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v125 = v20;
    v122 = 0xAAAAAAAAAAAAAA00;
    v119 = 0xAAAAAAAAAAAAAAAALL;
    v120 = 0;
    v121 = 0;
    v123 = 0;
    v124 = 0;
    LOBYTE(v125) = 0;
    BYTE8(v125) = 0;
    v126 = 0;
    memset(__p, 0, sizeof(__p));
    *&v132.__r_.__value_.__l.__data_ = v20;
    v129.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAA00;
    v128 = 0xAAAAAAAAAAAAAAAALL;
    *&v129.__r_.__value_.__l.__data_ = 0uLL;
    v130 = 0;
    v131 = 0;
    v132.__r_.__value_.__s.__data_[0] = 0;
    v132.__r_.__value_.__s.__data_[8] = 0;
    v132.__r_.__value_.__r.__words[2] = 0;
    memset(object, 0, sizeof(object));
    v21 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v112, begin, (value_high + begin), object, 0x1040u);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, begin, (value_high + begin), object, 0);
    if (*object)
    {
      *&object[8] = *object;
      operator delete(*object);
    }

    if (v21 && (v125 & 1) != 0)
    {
      LOBYTE(v21) = 0;
    }

    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if ((v21 & 1) == 0)
    {
LABEL_141:
      if ((SHIBYTE(v110.__end_cap_.__value_) & 0x80000000) == 0)
      {
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](object, "-|_", 0);
    memset(__p, 0, 24);
    end = HIBYTE(v110.__end_cap_.__value_);
    if (SHIBYTE(v110.__end_cap_.__value_) >= 0)
    {
      v23 = &v110;
    }

    else
    {
      v23 = v110.__begin_;
    }

    if (SHIBYTE(v110.__end_cap_.__value_) < 0)
    {
      end = v110.__end_;
    }

    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(__p, v23, &end[v23], object, ".", 0);
    if (SHIBYTE(v110.__end_cap_.__value_) < 0)
    {
      operator delete(v110.__begin_);
    }

    v110 = *__p;
    __p[23] = 0;
    __p[0] = 0;
    v24 = v129.__r_.__value_.__r.__words[0];
    if (v129.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v129.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    std::locale::~locale(object);
    v25 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
    size = v111.__r_.__value_.__l.__size_;
    if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = v111.__r_.__value_.__l.__size_;
    }

    if (v27)
    {
      if ((*(&v111.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        if ((v111.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1 != v111.__r_.__value_.__l.__size_)
        {
          v25 = v111.__r_.__value_.__l.__size_;
          v28 = v111.__r_.__value_.__r.__words[0];
          goto LABEL_86;
        }

        if ((v111.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v29 = v111.__r_.__value_.__l.__size_ + 1;
        v28 = v111.__r_.__value_.__r.__words[0];
        if (v111.__r_.__value_.__l.__size_ >= 0x3FFFFFFFFFFFFFF3)
        {
          v33 = 0;
          v32 = 0x7FFFFFFFFFFFFFF7;
        }

        else
        {
LABEL_71:
          v30 = 2 * size;
          if (v29 > 2 * size)
          {
            v30 = v29;
          }

          if ((v30 | 7) == 0x17)
          {
            v31 = 25;
          }

          else
          {
            v31 = (v30 | 7) + 1;
          }

          if (v30 >= 0x17)
          {
            v32 = v31;
          }

          else
          {
            v32 = 23;
          }

          v33 = size == 22;
        }

        v34 = operator new(v32);
        v35 = v34;
        if (size)
        {
          memmove(v34, v28, size);
        }

        *(v35 + size) = 124;
        if (!v33)
        {
          operator delete(v28);
        }

        v111.__r_.__value_.__l.__size_ = v29;
        v111.__r_.__value_.__r.__words[2] = v32 | 0x8000000000000000;
        v111.__r_.__value_.__r.__words[0] = v35;
        v36 = (v35 + v29);
        v7 = v92;
      }

      else
      {
        v28 = &v111;
        if (HIBYTE(v111.__r_.__value_.__r.__words[2]) == 22)
        {
          v29 = 23;
          size = 22;
          goto LABEL_71;
        }

LABEL_86:
        v28->__r_.__value_.__s.__data_[v25] = 124;
        v37 = v25 + 1;
        if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
        {
          v111.__r_.__value_.__l.__size_ = v37;
        }

        else
        {
          *(&v111.__r_.__value_.__s + 23) = v37 & 0x7F;
        }

        v36 = v28 + v37;
      }

      *v36 = 0;
    }

    v38 = abm::trace::kLogDirPrefix[0];
    v39 = strlen(abm::trace::kLogDirPrefix[0]);
    v40 = SHIBYTE(v110.__end_cap_.__value_);
    if (SHIBYTE(v110.__end_cap_.__value_) >= 0)
    {
      v41 = HIBYTE(v110.__end_cap_.__value_);
    }

    else
    {
      v41 = v110.__end_;
    }

    v42 = v41 + v39;
    if (v41 + v39 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v43 = v39;
    if (v42 <= 0x16)
    {
      memset(__p, 0, 24);
      v45 = __p;
      __p[23] = v41 + v39;
      v10 = v91;
      if (!v39)
      {
        goto LABEL_103;
      }

LABEL_102:
      memcpy(v45, v38, v43);
      goto LABEL_103;
    }

    if ((v42 | 7) == 0x17)
    {
      v44 = 25;
    }

    else
    {
      v44 = (v42 | 7) + 1;
    }

    v45 = operator new(v44);
    *&__p[8] = v42;
    *&__p[16] = v44 | 0x8000000000000000;
    *__p = v45;
    v10 = v91;
    v7 = v92;
    if (v43)
    {
      goto LABEL_102;
    }

LABEL_103:
    v46 = &v45[v43];
    if (v41)
    {
      if (v40 >= 0)
      {
        v47 = &v110;
      }

      else
      {
        v47 = v110.__begin_;
      }

      memmove(v46, v47, v41);
    }

    v46[v41] = 0;
    v48 = __p[23];
    if ((__p[23] & 0x8000000000000000) == 0)
    {
      if ((__p[23] - 21) < 2)
      {
        v49 = __p[23] + 2;
        v50 = __p;
        v51 = 22;
LABEL_114:
        v52 = 2 * v51;
        if (v49 > 2 * v51)
        {
          v52 = v49;
        }

        if ((v52 | 7) == 0x17)
        {
          v53 = 25;
        }

        else
        {
          v53 = (v52 | 7) + 1;
        }

        if (v52 >= 0x17)
        {
          v54 = v53;
        }

        else
        {
          v54 = 23;
        }

        v55 = v51 == 22;
        goto LABEL_123;
      }

      v59 = __p;
      *&__p[__p[23]] = 10798;
      v60 = v48 + 2;
      if ((__p[23] & 0x80000000) == 0)
      {
LABEL_129:
        __p[23] = v60 & 0x7F;
LABEL_132:
        v58 = &v59[v60];
        goto LABEL_133;
      }

LABEL_131:
      *&__p[8] = v60;
      goto LABEL_132;
    }

    v48 = *&__p[8];
    v51 = (*&__p[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v51 - *&__p[8] >= 2)
    {
      v59 = *__p;
      *(*__p + *&__p[8]) = 10798;
      v60 = v48 + 2;
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_129;
      }

      goto LABEL_131;
    }

    v49 = *&__p[8] + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&__p[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__p[8] + 2 - v51)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v50 = *__p;
    if (v51 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_114;
    }

    v55 = 0;
    v54 = 0x7FFFFFFFFFFFFFF7;
LABEL_123:
    v56 = operator new(v54);
    v57 = v56;
    if (v48)
    {
      memmove(v56, v50, v48);
    }

    *&v57[v48] = 10798;
    if (!v55)
    {
      operator delete(v50);
    }

    *&__p[8] = v49;
    *&__p[16] = v54 | 0x8000000000000000;
    *__p = v57;
    v58 = &v57[v49];
    v7 = v92;
LABEL_133:
    *v58 = 0;
    *object = *__p;
    memset(__p, 0, 24);
    if (object[23] >= 0)
    {
      v61 = object;
    }

    else
    {
      v61 = *object;
    }

    if (object[23] >= 0)
    {
      v62 = HIBYTE(*&object[16]);
    }

    else
    {
      v62 = *&object[8];
    }

    std::string::append(&v111, v61, v62);
    if ((object[23] & 0x80000000) != 0)
    {
      operator delete(*object);
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_141;
      }
    }

    else if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

    operator delete(*__p);
    if ((SHIBYTE(v110.__end_cap_.__value_) & 0x80000000) == 0)
    {
LABEL_142:
      if (!v10)
      {
        goto LABEL_21;
      }

      goto LABEL_147;
    }

LABEL_146:
    operator delete(v110.__begin_);
    if (!v10)
    {
LABEL_21:
      v13 = xpc_null_create();
      goto LABEL_22;
    }

LABEL_147:
    xpc_retain(v10);
    v13 = v10;
LABEL_22:
    ++v12;
    xpc_release(v13);
  }

  xpc_release(v10);
  v63 = v94[10];
  if (v63)
  {
    dispatch_retain(v94[10]);
    dispatch_group_enter(v63);
  }

  v110.__begin_ = 0xAAAAAAAAAAAAAAAALL;
  v110.__end_ = 0xAAAAAAAAAAAAAAAALL;
  v64 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v65 = xmmword_280C05A58;
  if (!xmmword_280C05A58)
  {
    ctu::XpcJetsamAssertion::create_default_global(object, v64);
    v66 = *object;
    *&object[8] = 0;
    *object = 0;
    v67 = *(&xmmword_280C05A58 + 1);
    xmmword_280C05A58 = v66;
    if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v67->__on_zero_shared)(v67);
      std::__shared_weak_count::__release_weak(v67);
    }

    v68 = *&object[8];
    if (*&object[8] && !atomic_fetch_add((*&object[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v68->__on_zero_shared)(v68);
      std::__shared_weak_count::__release_weak(v68);
    }

    v65 = xmmword_280C05A58;
  }

  v69 = *(&xmmword_280C05A58 + 1);
  *__p = v65;
  *&__p[8] = *(&xmmword_280C05A58 + 1);
  if (*(&xmmword_280C05A58 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_280C05A58 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v109[23] = 10;
  strcpy(v109, "Log Delete");
  ctu::XpcJetsamAssertion::createActivity();
  if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v69->__on_zero_shared)(v69);
    std::__shared_weak_count::__release_weak(v69);
  }

  v70 = v94[5];
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    *object = 0;
    _os_log_impl(&dword_23C1C4000, v70, OS_LOG_TYPE_DEFAULT, "#I Deleting Telephony and Baseband logs", object, 2u);
  }

  memset(__p, 170, 24);
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v108, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v108 = v111;
  }

  *object = 4;
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&object[8], v108.__r_.__value_.__l.__data_, v108.__r_.__value_.__l.__size_);
  }

  else
  {
    *&object[8] = v108;
  }

  *&object[32] = 0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v107, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v107 = v111;
  }

  LODWORD(v128) = 3;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v129, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
  }

  else
  {
    v129 = v107;
  }

  LODWORD(v130) = 0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v106 = v111;
  }

  LODWORD(v131) = 5;
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v132, v106.__r_.__value_.__l.__data_, v106.__r_.__value_.__l.__size_);
  }

  else
  {
    v132 = v106;
  }

  v133 = 0;
  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, v111.__r_.__value_.__l.__data_, v111.__r_.__value_.__l.__size_);
  }

  else
  {
    v105 = v111;
  }

  v134 = 6;
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v135, v105.__r_.__value_.__l.__data_, v105.__r_.__value_.__l.__size_);
  }

  else
  {
    v135 = v105;
  }

  v136 = 0;
  std::vector<abm::DirectoryQuery>::vector[abi:ne200100](__p, object, 4uLL);
  if ((SHIBYTE(v135.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v132.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_193;
    }

LABEL_256:
    operator delete(v132.__r_.__value_.__l.__data_);
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_257;
    }

LABEL_194:
    if ((object[31] & 0x80000000) == 0)
    {
      goto LABEL_195;
    }

LABEL_258:
    operator delete(*&object[8]);
    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_259;
    }

LABEL_196:
    if ((SHIBYTE(v106.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_197;
    }

LABEL_260:
    operator delete(v106.__r_.__value_.__l.__data_);
    if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_261;
    }

LABEL_198:
    if ((SHIBYTE(v108.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_199;
    }

LABEL_262:
    operator delete(v108.__r_.__value_.__l.__data_);
    goto LABEL_199;
  }

  operator delete(v135.__r_.__value_.__l.__data_);
  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_256;
  }

LABEL_193:
  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_194;
  }

LABEL_257:
  operator delete(v129.__r_.__value_.__l.__data_);
  if ((object[31] & 0x80000000) != 0)
  {
    goto LABEL_258;
  }

LABEL_195:
  if ((SHIBYTE(v105.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_196;
  }

LABEL_259:
  operator delete(v105.__r_.__value_.__l.__data_);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_260;
  }

LABEL_197:
  if ((SHIBYTE(v107.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_198;
  }

LABEL_261:
  operator delete(v107.__r_.__value_.__l.__data_);
  if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_262;
  }

LABEL_199:
  memset(object, 170, 16);
  abm::findFiles(__p, 1u, object);
  v71 = *object;
  v72 = **object;
  if (**object != *(*object + 8))
  {
    v73 = MEMORY[0x277D85DD0];
    v74 = **object;
    do
    {
      block[0] = v73;
      block[1] = 3321888768;
      block[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_26;
      block[3] = &__block_descriptor_72_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c30_ZTSN8dispatch13group_sessionE_e5_v8__0l;
      v76 = v93[5];
      v75 = v93[6];
      block[4] = v94;
      block[5] = v76;
      v102 = v75;
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      group = v63;
      if (v63)
      {
        dispatch_retain(v63);
        if (group)
        {
          dispatch_group_enter(group);
        }
      }

      v104 = v72;
      dispatch_async(v94[13], block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v102)
      {
        std::__shared_weak_count::__release_weak(v102);
      }

      v74 += 16;
      v71 = *object;
      v72 += 16;
    }

    while (v74 != *(*object + 8));
    v7 = v92;
  }

  v77 = v94[10];
  v78 = v94[3];
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3321888768;
  v95[2] = ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_28;
  v95[3] = &__block_descriptor_88_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c87_ZTSNSt3__110shared_ptrINS_6vectorINS0_IN3abm14FilePropertiesEEENS_9allocatorIS4_EEEEEE72c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE_e5_v8__0l;
  v80 = v93[5];
  v79 = v93[6];
  v95[4] = v94;
  v95[5] = v80;
  v96 = v79;
  if (v79)
  {
    atomic_fetch_add_explicit(&v79->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v97 = v71;
  v98 = *&object[8];
  if (*&object[8])
  {
    atomic_fetch_add_explicit((*&object[8] + 8), 1uLL, memory_order_relaxed);
  }

  v81 = v93[8];
  if (v81)
  {
    v81 = _Block_copy(v81);
  }

  v82 = v93[9];
  aBlock = v81;
  v100 = v82;
  if (v82)
  {
    dispatch_retain(v82);
  }

  dispatch_group_notify(v77, v78, v95);
  if (v100)
  {
    dispatch_release(v100);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v83 = v98;
  if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v83->__on_zero_shared)(v83);
    std::__shared_weak_count::__release_weak(v83);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_weak(v96);
  }

  v84 = *&object[8];
  if (*&object[8] && !atomic_fetch_add((*&object[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v84->__on_zero_shared)(v84);
    std::__shared_weak_count::__release_weak(v84);
  }

  v85 = *__p;
  if (*__p)
  {
    v86 = *&__p[8];
    v87 = *__p;
    if (*&__p[8] != *__p)
    {
      do
      {
        if (*(v86 - 9) < 0)
        {
          operator delete(*(v86 - 32));
        }

        v86 -= 40;
      }

      while (v86 != v85);
      v87 = *__p;
    }

    *&__p[8] = v85;
    operator delete(v87);
  }

  v88 = v110.__end_;
  if (v110.__end_ && !atomic_fetch_add(&v110.__end_->second, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v88->__on_zero_shared)(v88);
    std::__shared_weak_count::__release_weak(v88);
  }

  if (v63)
  {
    dispatch_group_leave(v63);
    dispatch_release(v63);
  }

  if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v111.__r_.__value_.__l.__data_);
  }

  v89 = v115;
  if (v115 && !atomic_fetch_add((v115 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v89->__on_zero_shared)(v89);
    std::__shared_weak_count::__release_weak(v89);
  }

  std::locale::~locale(v112);
  xpc_release(v7);
  v3 = v117;
  if (v117)
  {
LABEL_252:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v90 = v3;
      (v3->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v90);
    }
  }
}

void sub_23C283FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (a38 < 0)
  {
    operator delete(a33);
    if (a45 < 0)
    {
LABEL_10:
      operator delete(a40);
      if ((a52 & 0x80000000) == 0)
      {
LABEL_11:
        if (a59 < 0)
        {
LABEL_12:
          operator delete(a54);
          if (&STACK[0x240] == v68)
          {
            goto LABEL_13;
          }

          do
          {
LABEL_16:
            if (*(v68 - 9) < 0)
            {
              operator delete(*(v68 - 4));
            }

            v68 -= 5;
          }

          while (v68 != &STACK[0x240]);
LABEL_13:
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a63);
          if (v69)
          {
            dispatch_group_leave(v69);
            dispatch_release(v69);
          }

          if (a66 < 0)
          {
            operator delete(a65);
          }

          std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a67);
          xpc_release(object);
          std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a68);
          _Unwind_Resume(a1);
        }

LABEL_4:
        if (&STACK[0x240] == v68)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }

LABEL_3:
      operator delete(__p);
      if (a59 < 0)
      {
        goto LABEL_12;
      }

      goto LABEL_4;
    }
  }

  else if (a45 < 0)
  {
    goto LABEL_10;
  }

  if ((a52 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  goto LABEL_3;
}

void sub_23C284374(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_26(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v11 = 0;
  v3 = a1[6];
  if (v3)
  {
    v11 = std::__shared_weak_count::lock(v3);
    if (!v11)
    {
      return;
    }

    if (a1[5])
    {
      v4 = a1[8];
      v5 = *v4;
      if (*v4)
      {
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v4[1];
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(v5 + 31) < 0)
          {
            std::string::__init_copy_ctor_external(&v12, *(v5 + 8), *(v5 + 16));
          }

          else
          {
            v8 = *(v5 + 8);
            v12.__r_.__value_.__r.__words[2] = *(v5 + 24);
            *&v12.__r_.__value_.__l.__data_ = v8;
          }

          v9 = &v12;
          if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v9 = v12.__r_.__value_.__r.__words[0];
          }

          *buf = 136315138;
          v14 = v9;
          _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Deleting: %s", buf, 0xCu);
          if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v12.__r_.__value_.__l.__data_);
          }

          if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v7->__on_zero_shared)(v7);
            std::__shared_weak_count::__release_weak(v7);
          }

          v4 = a1[8];
          v5 = *v4;
        }

        v10 = v4[1];
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v5)
        {
          abm::FileProperties::getPath(v5, &v12);
          abm::LogManagementTask::remove_sync(v2, &v12);
          if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v12.__r_.__value_.__l.__data_);
          }
        }

        if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }
    }
  }

  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_23C2845EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_23C284608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

abm::FileProperties *abm::LogManagementTask::remove_sync(uint64_t a1, abm::FileProperties **a2)
{
  result = *a2;
  if (*a2)
  {
    abm::FileProperties::getPath(result, __p);
    result = abm::LogManagementTask::remove_sync(a1, __p);
    if (v6 < 0)
    {
      v4 = result;
      operator delete(__p[0]);
      return v4;
    }
  }

  return result;
}

void sub_23C2846C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3abm10HelperTaskEEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_28(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
LABEL_27:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v6 = a1[7];
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        if (v8 != *v6)
        {
          do
          {
            v9 = *(v8 - 8);
            if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }

            v8 -= 16;
          }

          while (v8 != v7);
        }

        v6[1] = v7;
      }

      v10 = *(v3 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16[0]) = 0;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I Deleting Done", v16, 2u);
      }

      v11 = xpc_null_create();
      v12 = a1[9];
      if (v12)
      {
        v13 = _Block_copy(v12);
      }

      else
      {
        v13 = 0;
      }

      v14 = a1[10];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3321888768;
      v16[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
      v16[3] = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v19 = 0;
        aBlock = v15;
        object = v11;
        if (v11)
        {
LABEL_19:
          xpc_retain(v11);
LABEL_22:
          dispatch_async(v14, v16);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v13)
          {
            _Block_release(v13);
          }

          xpc_release(v11);
          goto LABEL_27;
        }
      }

      else
      {
        v19 = 0;
        aBlock = 0;
        object = v11;
        if (v11)
        {
          goto LABEL_19;
        }
      }

      object = xpc_null_create();
      goto LABEL_22;
    }
  }
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_29(uint64_t a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  memset(&v26, 170, sizeof(v26));
  value = xpc_dictionary_get_value(*a3, "TimestampString");
  *&object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&object = xpc_null_create();
  }

  xpc::dyn_cast_or_default();
  xpc_release(object);
  v7 = *(v5 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v26.__r_.__value_.__r.__words[0];
    }

    LODWORD(object) = 136315138;
    *(&object + 4) = v8;
    _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Log HouseKeeping requested - timestamp %s", &object, 0xCu);
  }

  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v10 = abm::trace::kMobileBasebandServicesFolder[0];
    v11 = strlen(abm::trace::kMobileBasebandServicesFolder[0]);
    if (v11 >= 0x7FFFFFFFFFFFFFF8)
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

      v13 = operator new(v16);
      __dst[1] = v12;
      v25 = v16 | 0x8000000000000000;
      __dst[0] = v13;
    }

    else
    {
      HIBYTE(v25) = v11;
      v13 = __dst;
      if (!v11)
      {
        LOBYTE(__dst[0]) = 0;
        if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_15:
          __p = v26;
          goto LABEL_24;
        }

LABEL_23:
        std::string::__init_copy_ctor_external(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
LABEL_24:
        abm::LogManagementTask::cleanUpLogs(v5, __dst, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v25) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }
        }

        else if ((SHIBYTE(v25) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        operator delete(__dst[0]);
LABEL_26:
        v17 = xpc_null_create();
        if (*a4)
        {
          v18 = _Block_copy(*a4);
        }

        else
        {
          v18 = 0;
        }

        v19 = *(a4 + 8);
        *&object = MEMORY[0x277D85DD0];
        *(&object + 1) = 3321888768;
        v28 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
        v29 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
        if (v18)
        {
          v20 = _Block_copy(v18);
          v32 = 0;
          aBlock = v20;
          v31 = v17;
          if (v17)
          {
LABEL_33:
            xpc_retain(v17);
LABEL_36:
            dispatch_async(v19, &object);
            xpc_release(v31);
            v31 = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v18)
            {
              _Block_release(v18);
            }

            xpc_release(v17);
            goto LABEL_52;
          }
        }

        else
        {
          v32 = 0;
          aBlock = 0;
          v31 = v17;
          if (v17)
          {
            goto LABEL_33;
          }
        }

        v31 = xpc_null_create();
        goto LABEL_36;
      }
    }

    memmove(v13, v10, v12);
    *(v12 + v13) = 0;
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v14 = xpc_null_create();
  if (*a4)
  {
    v15 = _Block_copy(*a4);
  }

  else
  {
    v15 = 0;
  }

  v21 = *(a4 + 8);
  *&object = MEMORY[0x277D85DD0];
  *(&object + 1) = 3321888768;
  v28 = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
  v29 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v15)
  {
    v32 = -534716414;
    aBlock = 0;
    v31 = v14;
    if (v14)
    {
      goto LABEL_44;
    }

LABEL_46:
    v31 = xpc_null_create();
    goto LABEL_47;
  }

  v22 = _Block_copy(v15);
  v32 = -534716414;
  aBlock = v22;
  v31 = v14;
  if (!v14)
  {
    goto LABEL_46;
  }

LABEL_44:
  xpc_retain(v14);
LABEL_47:
  dispatch_async(v21, &object);
  xpc_release(v31);
  v31 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  xpc_release(v14);
LABEL_52:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

void sub_23C284DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abm::LogManagementTask::cleanUpLogs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = *MEMORY[0x277D85DE8];
  v98 = 0;
  v99 = 0;
  v100 = 0;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v94 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v93[40] = 0xAAAAAAAAAAAAAAAALL;
  v96 = v6;
  *&v93[48] = 0;
  *&v94 = 0;
  v95 = 0uLL;
  LOBYTE(v96) = 0;
  BYTE8(v96) = 0;
  v97 = 0;
  v7 = 0uLL;
  memset(v93, 0, 41);
  if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0)
  {
    v81 = __cxa_guard_acquire(&_MergedGlobals_9);
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v7 = 0uLL;
    if (v81)
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&stru_280C05DD8, ".*([[:digit:]]{4}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).*", 0);
      __cxa_guard_release(&_MergedGlobals_9);
      v7 = 0uLL;
      *&v6 = 0xAAAAAAAAAAAAAAAALL;
      *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    }
  }

  v110 = 0xAAAAAAAAAAAAAA00;
  *(&v107[1] + 1) = 0xAAAAAAAAAAAAAAAALL;
  v113 = v6;
  v108 = 0;
  v109 = 0;
  v111 = 0;
  v112 = 0;
  LOBYTE(v113) = 0;
  BYTE8(v113) = 0;
  v114 = 0;
  *buf = v7;
  v107[0] = v7;
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) == 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  *(v107 + 9) = v7;
  v10 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&stru_280C05DD8, v9, (v9 + v8), buf, 0);
  v11 = *(a3 + 23);
  if ((v11 & 0x80u) == 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a3 + 8);
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v93, v12, (v12 + v11), buf, 0);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  if (v10)
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v91, ".*", 0);
    ctu::fs::get_filtered_files();
    v13 = v92;
    if (v92 && !atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    std::locale::~locale(&v91);
    v14 = v98;
    v82 = v99;
    v85 = 0;
    v84 = 0;
    v15 = *v93;
    v16 = *&v93[8] - *v93;
    if (*&v93[8] != *v93)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v16 >> 3) >= 0xAAAAAAAAAAAAAABLL)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v84 = operator new(*&v93[8] - *v93);
      v17 = 24 * ((v16 - 24) / 0x18uLL) + 24;
      memcpy(v84, v15, v17);
      v85 = &v84[v17];
    }

    v87[1] = v94;
    v87[2] = v95;
    v87[3] = v96;
    v86 = *&v93[24];
    v87[0] = *&v93[40];
    v88 = v97;
    v89 = a1;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *a2, *(a2 + 8));
    }

    else
    {
      v90 = *a2;
    }

    if (v14 != v82)
    {
      v19 = v87;
      while (1)
      {
        v20 = v89;
        if (*(v14 + 23) < 0)
        {
          break;
        }

        if (*(v14 + 23) == 1)
        {
          if (*v14 != 46)
          {
            goto LABEL_43;
          }
        }

        else if (*(v14 + 23) != 2 || *v14 != 11822)
        {
          goto LABEL_43;
        }

LABEL_30:
        v14 += 3;
        if (v14 == v82)
        {
          goto LABEL_139;
        }
      }

      v21 = v14[1];
      if (v21 == 1)
      {
        if (**v14 != 46)
        {
          goto LABEL_43;
        }

        goto LABEL_30;
      }

      if (v21 == 2 && **v14 == 11822)
      {
        goto LABEL_30;
      }

LABEL_43:
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v104 = v22;
      v103[6] = 0xAAAAAAAAAAAAAA00;
      v103[3] = 0xAAAAAAAAAAAAAAAALL;
      v103[4] = 0;
      v103[5] = 0;
      v103[7] = 0;
      v103[8] = 0;
      LOBYTE(v104) = 0;
      BYTE8(v104) = 0;
      v105 = 0;
      v23 = 0uLL;
      *__p = 0u;
      memset(v103, 0, 25);
      if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0)
      {
        v74 = __cxa_guard_acquire(&_MergedGlobals_9);
        v23 = 0uLL;
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        if (v74)
        {
          std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&stru_280C05DD8, ".*([[:digit:]]{4}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).*", 0);
          __cxa_guard_release(&_MergedGlobals_9);
          *&v22 = 0xAAAAAAAAAAAAAAAALL;
          *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v23 = 0uLL;
        }
      }

      v113 = v22;
      v110 = *(&v22 + 1);
      *(&v107[1] + 1) = v22;
      v108 = 0;
      v109 = 0;
      LOBYTE(v110) = 0;
      v111 = 0;
      v112 = 0;
      LOBYTE(v113) = 0;
      BYTE8(v113) = 0;
      v114 = 0;
      *buf = v23;
      v107[0] = v23;
      *(v107 + 9) = v23;
      v24 = *(v14 + 23);
      if (v24 >= 0)
      {
        v25 = v14;
      }

      else
      {
        v25 = *v14;
      }

      if (v24 < 0)
      {
        v24 = v14[1];
      }

      v26 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(&stru_280C05DD8, v25, &v24[v25], buf, 0);
      v27 = *(v14 + 23);
      if (v27 >= 0)
      {
        v28 = v14;
      }

      else
      {
        v28 = *v14;
      }

      if (v27 < 0)
      {
        v27 = v14[1];
      }

      std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(__p, v28, &v27[v28], buf, 0);
      v83 = v20;
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (v26)
      {
        v29 = 40;
        v30 = 1;
        while (1)
        {
          v31 = 0xAAAAAAAAAAAAAAABLL * ((__p[1] - __p[0]) >> 3);
          v32 = __p[0] + v29;
          v33 = v31 <= v30 ? &v103[3] : __p[0] + v29;
          if (*v33 == 1)
          {
            break;
          }

          memset(buf, 0, sizeof(buf));
          *&v107[0] = 0;
LABEL_72:
          v43 = std::stoi(buf, 0, 10);
          v44 = 0xAAAAAAAAAAAAAAABLL * ((v85 - v84) >> 3);
          v45 = &v84[v29];
          if (v44 <= v30)
          {
            v46 = v19;
          }

          else
          {
            v46 = &v84[v29];
          }

          if (*v46 == 1)
          {
            v47 = v19;
            v48 = (v45 - 16);
            v49 = (v45 - 8);
            v50 = v44 > v30;
            v51 = &v86;
            if (v50)
            {
              v51 = v48;
            }

            v52 = *v51;
            v53 = &v86 + 1;
            if (v50)
            {
              v53 = v49;
            }

            v54 = *v53;
            v55 = *v53 - v52;
            if (v55 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v55 > 0x16)
            {
              if ((v55 | 7) == 0x17)
              {
                v60 = 25;
              }

              else
              {
                v60 = (v55 | 7) + 1;
              }

              p_dst = operator new(v60);
              __dst.__r_.__value_.__l.__size_ = v55;
              __dst.__r_.__value_.__r.__words[2] = v60 | 0x8000000000000000;
              __dst.__r_.__value_.__r.__words[0] = p_dst;
              if (v54 != v52)
              {
LABEL_83:
                memmove(p_dst, v52, v55);
              }
            }

            else
            {
              *(&__dst.__r_.__value_.__s + 23) = *v53 - v52;
              p_dst = &__dst;
              if (v54 != v52)
              {
                goto LABEL_83;
              }
            }

            p_dst->__r_.__value_.__s.__data_[v55] = 0;
            v19 = v47;
            goto LABEL_86;
          }

          memset(&__dst, 0, sizeof(__dst));
LABEL_86:
          v57 = std::stoi(&__dst, 0, 10);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
            if ((SBYTE7(v107[0]) & 0x80000000) == 0)
            {
LABEL_88:
              if (v43 > v57)
              {
                goto LABEL_130;
              }

              goto LABEL_92;
            }
          }

          else if ((SBYTE7(v107[0]) & 0x80000000) == 0)
          {
            goto LABEL_88;
          }

          operator delete(*buf);
          if (v43 > v57)
          {
LABEL_130:
            v72 = *(v83 + 40);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
            {
              if (*(v14 + 23) >= 0)
              {
                v73 = v14;
              }

              else
              {
                v73 = *v14;
              }

              *buf = 136315138;
              *&buf[4] = v73;
              _os_log_impl(&dword_23C1C4000, v72, OS_LOG_TYPE_DEFAULT, "#I Not remove: %s", buf, 0xCu);
            }

            goto LABEL_135;
          }

LABEL_92:
          if (v43 == v57)
          {
            v29 += 24;
            if (v30++ != 6)
            {
              continue;
            }
          }

          goto LABEL_106;
        }

        v34 = (v32 - 16);
        v35 = v32 - 8;
        v36 = v31 > v30;
        v37 = &v103[1];
        if (v36)
        {
          v37 = v34;
        }

        v38 = *v37;
        v39 = &v103[2];
        if (v36)
        {
          v39 = v35;
        }

        v40 = *v39;
        v41 = *v39 - v38;
        if (v41 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v41 > 0x16)
        {
          if ((v41 | 7) == 0x17)
          {
            v59 = 25;
          }

          else
          {
            v59 = (v41 | 7) + 1;
          }

          v42 = operator new(v59);
          *&buf[8] = v41;
          *&v107[0] = v59 | 0x8000000000000000;
          *buf = v42;
          if (v40 == v38)
          {
            goto LABEL_70;
          }
        }

        else
        {
          BYTE7(v107[0]) = *v39 - v38;
          v42 = buf;
          if (v40 == v38)
          {
LABEL_70:
            v42[v41] = 0;
            goto LABEL_72;
          }
        }

        memmove(v42, v38, v41);
        goto LABEL_70;
      }

LABEL_106:
      v61 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v90.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v90.__r_.__value_.__l.__size_;
      }

      v63 = size + 1;
      if (size + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v63 < 0x17)
      {
        memset(&__dst, 0, sizeof(__dst));
        v65 = &__dst;
        *(&__dst.__r_.__value_.__s + 23) = size + 1;
        if (!size)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if ((v63 | 7) == 0x17)
        {
          v64 = 25;
        }

        else
        {
          v64 = (v63 | 7) + 1;
        }

        v65 = operator new(v64);
        __dst.__r_.__value_.__l.__size_ = size + 1;
        __dst.__r_.__value_.__r.__words[2] = v64 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = v65;
      }

      if (v61 >= 0)
      {
        v66 = &v90;
      }

      else
      {
        v66 = v90.__r_.__value_.__r.__words[0];
      }

      memmove(v65, v66, size);
LABEL_120:
      *(&v65->__r_.__value_.__l.__data_ + size) = 47;
      v67 = *(v14 + 23);
      if (v67 >= 0)
      {
        v68 = v14;
      }

      else
      {
        v68 = *v14;
      }

      if (v67 >= 0)
      {
        v69 = *(v14 + 23);
      }

      else
      {
        v69 = v14[1];
      }

      v70 = std::string::append(&__dst, v68, v69);
      v71 = *&v70->__r_.__value_.__l.__data_;
      *&v107[0] = *(&v70->__r_.__value_.__l + 2);
      *buf = v71;
      v70->__r_.__value_.__l.__size_ = 0;
      v70->__r_.__value_.__r.__words[2] = 0;
      v70->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      abm::LogManagementTask::remove_sync(v83, buf);
      if (SBYTE7(v107[0]) < 0)
      {
        operator delete(*buf);
      }

LABEL_135:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      goto LABEL_30;
    }

LABEL_139:
    v75 = v90.__r_.__value_.__r.__words[0];
    v76 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    memset(&v90, 0, sizeof(v90));
    if (v76 < 0)
    {
      operator delete(v75);
    }

    if (v84)
    {
      operator delete(v84);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (*(a3 + 23) < 0)
      {
        a3 = *a3;
      }

      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "Timestamp not provided: %s", buf, 0xCu);
    }
  }

  if (*v93)
  {
    *&v93[8] = *v93;
    operator delete(*v93);
  }

  v77 = v98;
  if (v98)
  {
    v78 = v99;
    v79 = v98;
    if (v99 != v98)
    {
      do
      {
        v80 = *(v78 - 1);
        v78 -= 3;
        if (v80 < 0)
        {
          operator delete(*v78);
        }
      }

      while (v78 != v77);
      v79 = v98;
    }

    v99 = v77;
    operator delete(v79);
  }
}

void sub_23C285904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void **a59)
{
  __cxa_guard_abort(&_MergedGlobals_9);
  if (__p)
  {
    operator delete(__p);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a59);
  _Unwind_Resume(a1);
}

void ___ZN3abm17LogManagementTask9init_syncEv_block_invoke_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  strlen(abm::trace::kMobileBasebandServicesFolder[0]);
  directory = ctu::fs::create_directory();
  v7 = *(v5 + 40);
  if (directory)
  {
    if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I BasebandServices folder created", &__p, 2u);
    }

    memset(&__p, 0, sizeof(__p));
    v8 = abm::trace::kMobileBasebandServicesFolder[0] - 1;
      ;
    }

    std::string::append[abi:ne200100]<char const*,0>(&__p, abm::trace::kMobileBasebandServicesFolder[0], v8);
    std::__fs::filesystem::__permissions(&__p, all, add, 0);
    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    v10 = xpc_null_create();
    if (*a4)
    {
      v11 = _Block_copy(*a4);
    }

    else
    {
      v11 = 0;
    }

    v15 = *(a4 + 8);
    __p.__pn_.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
    __p.__pn_.__r_.__value_.__l.__size_ = 3321888768;
    __p.__pn_.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
    v18 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
    if (v11)
    {
      v16 = _Block_copy(v11);
      v21 = 0;
      aBlock = v16;
      object = v10;
      if (v10)
      {
LABEL_28:
        xpc_retain(v10);
LABEL_31:
        dispatch_async(v15, &__p);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v11)
        {
          _Block_release(v11);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v21 = 0;
      aBlock = 0;
      object = v10;
      if (v10)
      {
        goto LABEL_28;
      }
    }

    object = xpc_null_create();
    goto LABEL_31;
  }

  if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__pn_.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to create BasebandServices folder", &__p, 2u);
  }

  v10 = xpc_null_create();
  if (*a4)
  {
    v12 = _Block_copy(*a4);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a4 + 8);
  __p.__pn_.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  __p.__pn_.__r_.__value_.__l.__size_ = 3321888768;
  __p.__pn_.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke;
  v18 = &__block_descriptor_52_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE40c15_ZTSN3xpc4dictE_e5_v8__0l;
  if (!v12)
  {
    v21 = -534716416;
    aBlock = 0;
    object = v10;
    if (v10)
    {
      goto LABEL_17;
    }

LABEL_19:
    object = xpc_null_create();
    goto LABEL_20;
  }

  v14 = _Block_copy(v12);
  v21 = -534716416;
  aBlock = v14;
  object = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_17:
  xpc_retain(v10);
LABEL_20:
  dispatch_async(v13, &__p);
  xpc_release(object);
  object = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v12)
  {
    _Block_release(v12);
  }

LABEL_35:
  xpc_release(v10);
}

void sub_23C285D50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t abm::LogManagementTask::cleanUpLogs(std::string,std::string)::$_0::~$_0(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void *std::vector<abm::DirectoryQuery>::vector[abi:ne200100](void *a1, uint64_t a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >= 0x666666666666667)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(40 * a3);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = &v6[40 * a3];
    v15 = v6;
    v7 = a2 + 40 * a3;
    v8 = (a2 + 8);
    v9 = v6;
    do
    {
      v12 = v8 - 8;
      *v9 = *(v8 - 2);
      v13 = (v9 + 8);
      if (*(v8 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v13, *v8, *(v8 + 1));
        v11 = v15;
      }

      else
      {
        v10 = *v8;
        *(v9 + 3) = *(v8 + 2);
        *&v13->__r_.__value_.__l.__data_ = v10;
        v11 = v9;
      }

      *(v9 + 8) = *(v8 + 6);
      v9 = v11 + 40;
      v15 = v11 + 40;
      v8 = (v8 + 40);
    }

    while (v12 + 40 != v7);
    a1[1] = v9;
  }

  return a1;
}

void sub_23C285EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abm::DirectoryQuery>,abm::DirectoryQuery*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v10 + 8) = v11;
  std::__exception_guard_exceptions<std::vector<abm::DirectoryQuery>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<abm::DirectoryQuery>,abm::DirectoryQuery*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
      }

      v3 -= 40;
    }
  }

  return a1;
}

void ***std::__exception_guard_exceptions<std::vector<abm::DirectoryQuery>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
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
          if (*(v4 - 9) < 0)
          {
            operator delete(*(v4 - 4));
          }

          v4 -= 5;
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

void ___ZNK8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEclIJN12TelephonyXPC3__1ES2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

unint64_t std::string::append[abi:ne200100]<char const*,0>(unint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v4 = *(a1 + 23);
  v5 = a3 - a2;
  if (v4 < 0)
  {
    if (a3 == a2)
    {
      return a1;
    }

    v8 = *(a1 + 8);
    v10 = *(a1 + 16);
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = *a1;
    v6 = v10 >> 63;
    if (*a1 > a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return a1;
    }

    LODWORD(v6) = 0;
    v7 = 22;
    v8 = *(a1 + 23);
    v9 = a1;
    if (a1 > a2)
    {
LABEL_11:
      if (v7 - v8 >= v5)
      {
        v15 = a1;
        if (v6)
        {
          v15 = *a1;
        }

        goto LABEL_22;
      }

      v12 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - v7 >= v8 + v5 - v7)
      {
        v13 = a1;
        if ((v4 & 0x80000000) != 0)
        {
          v13 = *a1;
          v14 = a2;
          if (v7 > 0x3FFFFFFFFFFFFFF2)
          {
LABEL_15:
            v15 = operator new(0x7FFFFFFFFFFFFFF7uLL);
            if (!v8)
            {
LABEL_17:
              if (v7 != 22)
              {
                operator delete(v13);
              }

              *(a1 + 8) = v8;
              *(a1 + 16) = v12 | 0x8000000000000000;
              *a1 = v15;
              a2 = v14;
LABEL_22:
              memmove(&v15[v8], a2, v5);
              v15[v8 + v5] = 0;
              v16 = v8 + v5;
              if (*(a1 + 23) < 0)
              {
                *(a1 + 8) = v16;
              }

              else
              {
                *(a1 + 23) = v16 & 0x7F;
              }

              return a1;
            }

LABEL_16:
            memmove(v15, v13, v8);
            goto LABEL_17;
          }
        }

        else
        {
          v14 = a2;
          if (v7 > 0x3FFFFFFFFFFFFFF2)
          {
            goto LABEL_15;
          }
        }

        v23 = 2 * v7;
        if (v8 + v5 > 2 * v7)
        {
          v23 = v8 + v5;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v12 = v24;
        }

        else
        {
          v12 = 23;
        }

        v15 = operator new(v12);
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_49:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v9 + v8 + 1 <= a2)
  {
    goto LABEL_11;
  }

  memset(__dst, 170, sizeof(__dst));
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_49;
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v5 | 7) + 1;
    }

    v18 = a2;
    v19 = operator new(v17);
    a2 = v18;
    v11 = v19;
    __dst[1] = v5;
    __dst[2] = (v17 | 0x8000000000000000);
    __dst[0] = v19;
  }

  else
  {
    HIBYTE(__dst[2]) = a3 - a2;
    v11 = __dst;
  }

  memcpy(v11, a2, v5);
  *(v11 + v5) = 0;
  if (SHIBYTE(__dst[2]) >= 0)
  {
    v20 = __dst;
  }

  else
  {
    v20 = __dst[0];
  }

  if (SHIBYTE(__dst[2]) >= 0)
  {
    v21 = HIBYTE(__dst[2]);
  }

  else
  {
    v21 = __dst[1];
  }

  std::string::append(a1, v20, v21);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  return a1;
}

void sub_23C2862DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<abm::HelperTask>::execute_wrapped<abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0>(abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0,dispatch_queue_s *::default_delete<abm::LogManagementTask::markPurgeableLogs(CacheDeleteUrgency,__CFDictionary const*)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v58 = **a1;
  v80 = 0;
  memset(&v79, 0, sizeof(v79));
  HIBYTE(v69) = 4;
  strcpy(&__p, "Time");
  prop::tracesettings::get(&__p, &v79);
  if (SHIBYTE(v69) < 0)
  {
    operator delete(__p);
  }

  util::convert<unsigned int>(&v79, &v80, 0);
  v78.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v78.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v78, 0);
  v2 = operator new(0x38uLL);
  *(v2 + 8) = 0;
  *v2 = 0;
  *(v2 + 1) = 0;
  *(v2 + 2) = v77;
  v76 = v2;
  v77[0] = v2;
  v2[24] = 1;
  v77[1] = 1;
  *(v2 + 40) = v78;
  v3 = v80;
  tv_sec = v78.tv_sec;
  v5 = operator new(0x38uLL);
  v6 = (86400 * v3);
  v5[8] = 0;
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = v75;
  v74 = v5;
  v75[0] = v5;
  *(v5 + 24) = 1;
  v75[1] = 1;
  *(v5 + 5) = tv_sec - v6;
  *(v5 + 6) = 0xAAAAAAAAAAAAAAAALL;
  v7 = *(v58 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    Timestamp::asString(&v76, 0, 9, &__p);
    v8 = SHIBYTE(v69);
    v9 = __p;
    Timestamp::asString(&v74, 0, 9, &v61);
    p_p = &__p;
    if (v8 < 0)
    {
      p_p = v9;
    }

    if (v62 >= 0)
    {
      locale = &v61;
    }

    else
    {
      locale = v61.__locale_;
    }

    *buf = 136315394;
    *&buf[4] = p_p;
    *&buf[12] = 2080;
    *&buf[14] = locale;
    _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Now: %s. Searching files older than %s", buf, 0x16u);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(v61.__locale_);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }
    }

    else if ((SHIBYTE(v69) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    operator delete(__p);
  }

LABEL_11:
  memset(buf, 0, sizeof(buf));
  v57 = v6;
  if (TelephonyUtilIsInternalBuild())
  {
    strlen(abm::trace::kSnapshotFolder[0]);
    goto LABEL_14;
  }

  IsCarrierBuild = TelephonyUtilIsCarrierBuild();
  strlen(abm::trace::kSnapshotFolder[0]);
  if (IsCarrierBuild)
  {
LABEL_14:
    if ((atomic_load_explicit(&qword_280C05DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05DD0))
    {
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&stru_280C05E18, "[^\\.].*([[:digit:]]{4})-([[:digit:]]{2})-([[:digit:]]{2})-([[:digit:]]{2})-([[:digit:]]{2})-([[:digit:]]{2}).*\\.(?!json).*", 0);
      __cxa_guard_release(&qword_280C05DD0);
    }

    std::locale::locale(&__p, &stru_280C05E18);
    v69 = unk_280C05E20;
    v70 = unk_280C05E30;
    v71 = qword_280C05E40;
    v72 = unk_280C05E48;
    if (unk_280C05E48)
    {
      atomic_fetch_add_explicit((unk_280C05E48 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = 0x280C05000uLL;
    v73 = qword_280C05E50;
    ctu::fs::get_filtered_files();
    v14 = v72;
    if (!v72 || atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      std::locale::~locale(&__p);
      v15 = *buf;
      v16 = *&buf[8];
      if (*buf != *&buf[8])
      {
        goto LABEL_25;
      }

      goto LABEL_121;
    }

    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    std::locale::~locale(&__p);
    v15 = *buf;
    v16 = *&buf[8];
    if (*buf == *&buf[8])
    {
      goto LABEL_121;
    }

    while (1)
    {
LABEL_25:
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v67, *v15, *(v15 + 1));
      }

      else
      {
        v18 = *v15;
        v67.__r_.__value_.__r.__words[2] = *(v15 + 2);
        *&v67.__r_.__value_.__l.__data_ = v18;
      }

      if ((atomic_load_explicit(&qword_280C05DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05DD0))
      {
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&stru_280C05E18, "[^\\.].*([[:digit:]]{4})-([[:digit:]]{2})-([[:digit:]]{2})-([[:digit:]]{2})-([[:digit:]]{2})-([[:digit:]]{2}).*\\.(?!json).*", 0);
        __cxa_guard_release(&qword_280C05DD0);
        v6 = v57;
        v13 = 0x280C05000;
      }

      std::locale::locale(&v61, &stru_280C05E18);
      v62 = unk_280C05E20;
      v63 = unk_280C05E30;
      v64 = qword_280C05E40;
      v65 = unk_280C05E48;
      if (unk_280C05E48)
      {
        atomic_fetch_add_explicit((unk_280C05E48 + 8), 1uLL, memory_order_relaxed);
      }

      v66 = *(v13 + 3664);
      v19 = util::checkLogFileAge(&v67, v6, &v61);
      v20 = v65;
      if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
        std::locale::~locale(&v61);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_37:
          operator delete(v67.__r_.__value_.__l.__data_);
          if (!v19)
          {
            goto LABEL_24;
          }

          goto LABEL_38;
        }
      }

      else
      {
        std::locale::~locale(&v61);
        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_37;
        }
      }

      if (!v19)
      {
        goto LABEL_24;
      }

LABEL_38:
      memset(&v60, 170, sizeof(v60));
      v21 = abm::trace::kSnapshotFolder[0];
      v22 = strlen(abm::trace::kSnapshotFolder[0]);
      v23 = *(v15 + 23);
      if (v23 >= 0)
      {
        v24 = *(v15 + 23);
      }

      else
      {
        v24 = *(v15 + 1);
      }

      v25 = v24 + v22;
      if (v24 + v22 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v26 = v22;
      if (v25 <= 0x16)
      {
        memset(&v60, 0, sizeof(v60));
        v28 = &v60;
        *(&v60.__r_.__value_.__s + 23) = v24 + v22;
        v6 = v57;
        if (!v22)
        {
          goto LABEL_50;
        }

LABEL_49:
        memcpy(v28, v21, v26);
        goto LABEL_50;
      }

      if ((v25 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v25 | 7) + 1;
      }

      v28 = operator new(v27);
      v60.__r_.__value_.__l.__size_ = v25;
      v60.__r_.__value_.__r.__words[2] = v27 | 0x8000000000000000;
      v60.__r_.__value_.__r.__words[0] = v28;
      v6 = v57;
      if (v26)
      {
        goto LABEL_49;
      }

LABEL_50:
      v29 = &v28[v26];
      if (v24)
      {
        if (v23 >= 0)
        {
          v30 = v15;
        }

        else
        {
          v30 = *v15;
        }

        memmove(v29, v30, v24);
      }

      v29[v24] = 0;
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v83, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
        v13 = 0x280C05000uLL;
      }

      else
      {
        v83 = v60;
        v13 = 0x280C05000;
      }

      v31 = util::markPurgeableFile(&v83);
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        v33 = v31;
        operator delete(v83.__r_.__value_.__l.__data_);
        v32 = *(v58 + 40);
        if (!v33)
        {
LABEL_63:
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v34 = &v60;
            if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v34 = v60.__r_.__value_.__r.__words[0];
            }

            *v81 = 136315138;
            v82 = v34;
            _os_log_error_impl(&dword_23C1C4000, v32, OS_LOG_TYPE_ERROR, "Failed to mark %s to be purgeable", v81, 0xCu);
            if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_24;
            }

LABEL_65:
            operator delete(v60.__r_.__value_.__l.__data_);
            goto LABEL_24;
          }

          goto LABEL_64;
        }
      }

      else
      {
        v32 = *(v58 + 40);
        if (!v31)
        {
          goto LABEL_63;
        }
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v17 = &v60;
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = v60.__r_.__value_.__r.__words[0];
        }

        *v81 = 136315138;
        v82 = v17;
        _os_log_impl(&dword_23C1C4000, v32, OS_LOG_TYPE_DEFAULT, "#I %s is marked to be purgeable", v81, 0xCu);
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_65;
      }

LABEL_64:
      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_65;
      }

LABEL_24:
      v15 = (v15 + 24);
      if (v15 == v16)
      {
        goto LABEL_120;
      }
    }
  }

  if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_9))
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&stru_280C05DD8, ".*([[:digit:]]{4}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).*", 0);
    __cxa_guard_release(&_MergedGlobals_9);
  }

  std::locale::locale(&__p, &stru_280C05DD8);
  v69 = unk_280C05DE0;
  v70 = unk_280C05DF0;
  v71 = qword_280C05E00;
  v72 = unk_280C05E08;
  if (unk_280C05E08)
  {
    atomic_fetch_add_explicit((unk_280C05E08 + 8), 1uLL, memory_order_relaxed);
  }

  v73 = qword_280C05E10;
  ctu::fs::get_filtered_files();
  v35 = v72;
  if (v72 && !atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
    std::locale::~locale(&__p);
    v15 = *buf;
    v56 = *&buf[8];
    if (*buf == *&buf[8])
    {
      goto LABEL_121;
    }

    while (1)
    {
LABEL_82:
      memset(&v67, 170, sizeof(v67));
      v36 = abm::trace::kSnapshotFolder[0];
      v37 = strlen(abm::trace::kSnapshotFolder[0]);
      v38 = *(v15 + 23);
      if (v38 >= 0)
      {
        v39 = *(v15 + 23);
      }

      else
      {
        v39 = *(v15 + 1);
      }

      v40 = v39 + v37;
      if (v39 + v37 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v41 = v37;
      if (v40 <= 0x16)
      {
        break;
      }

      if ((v40 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v40 | 7) + 1;
      }

      v43 = operator new(v42);
      v67.__r_.__value_.__l.__size_ = v40;
      v67.__r_.__value_.__r.__words[2] = v42 | 0x8000000000000000;
      v67.__r_.__value_.__r.__words[0] = v43;
      v6 = v57;
      if (v41)
      {
        goto LABEL_93;
      }

LABEL_94:
      v44 = &v43[v41];
      if (v39)
      {
        if (v38 >= 0)
        {
          v45 = v15;
        }

        else
        {
          v45 = *v15;
        }

        memmove(v44, v45, v39);
      }

      v44[v39] = 0;
      if (*(v15 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v60, *v15, *(v15 + 1));
      }

      else
      {
        v46 = *v15;
        v60.__r_.__value_.__r.__words[2] = *(v15 + 2);
        *&v60.__r_.__value_.__l.__data_ = v46;
      }

      if ((atomic_load_explicit(&_MergedGlobals_9, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_9))
      {
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&stru_280C05DD8, ".*([[:digit:]]{4}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).([[:digit:]]{2}).*", 0);
        __cxa_guard_release(&_MergedGlobals_9);
        v6 = v57;
      }

      std::locale::locale(&v61, &stru_280C05DD8);
      v62 = unk_280C05DE0;
      v63 = unk_280C05DF0;
      v64 = qword_280C05E00;
      v65 = unk_280C05E08;
      if (unk_280C05E08)
      {
        atomic_fetch_add_explicit((unk_280C05E08 + 8), 1uLL, memory_order_relaxed);
      }

      v66 = qword_280C05E10;
      v47 = util::checkLogFileAge(&v60, v6, &v61);
      v48 = v65;
      if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v48->__on_zero_shared)(v48);
        std::__shared_weak_count::__release_weak(v48);
        std::locale::~locale(&v61);
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_108:
          if (v47)
          {
            goto LABEL_114;
          }

          goto LABEL_80;
        }
      }

      else
      {
        std::locale::~locale(&v61);
        if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_108;
        }
      }

      operator delete(v60.__r_.__value_.__l.__data_);
      if (v47)
      {
LABEL_114:
        v49 = *(v58 + 40);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = &v67;
          if ((v67.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v50 = v67.__r_.__value_.__r.__words[0];
          }

          LODWORD(v83.__r_.__value_.__l.__data_) = 67109378;
          HIDWORD(v83.__r_.__value_.__r.__words[0]) = v80;
          LOWORD(v83.__r_.__value_.__r.__words[1]) = 2080;
          *(&v83.__r_.__value_.__r.__words[1] + 2) = v50;
          _os_log_impl(&dword_23C1C4000, v49, OS_LOG_TYPE_DEFAULT, "#I Removing log files older than %u days: %s ", &v83, 0x12u);
        }

        abm::LogManagementTask::remove_sync(v58, &v67);
      }

LABEL_80:
      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
        v15 = (v15 + 24);
        if (v15 == v56)
        {
LABEL_120:
          v15 = *buf;
          goto LABEL_121;
        }
      }

      else
      {
        v15 = (v15 + 24);
        if (v15 == v56)
        {
          goto LABEL_120;
        }
      }
    }

    memset(&v67, 0, sizeof(v67));
    v43 = &v67;
    *(&v67.__r_.__value_.__s + 23) = v39 + v37;
    if (!v37)
    {
      goto LABEL_94;
    }

LABEL_93:
    memcpy(v43, v36, v41);
    goto LABEL_94;
  }

  std::locale::~locale(&__p);
  v15 = *buf;
  v56 = *&buf[8];
  if (*buf != *&buf[8])
  {
    goto LABEL_82;
  }

LABEL_121:
  if (v15)
  {
    v51 = *&buf[8];
    v52 = v15;
    if (*&buf[8] != v15)
    {
      do
      {
        v53 = *(v51 - 1);
        v51 -= 3;
        if (v53 < 0)
        {
          operator delete(*v51);
        }
      }

      while (v51 != v15);
      v52 = *buf;
    }

    *&buf[8] = v15;
    operator delete(v52);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v74, v75[0]);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v76, v77[0]);
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  operator delete(v1);
  v54 = a1;
  if (a1)
  {
    v55 = *(a1 + 16);
    if (v55)
    {
      if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v55->__on_zero_shared)(v55);
        std::__shared_weak_count::__release_weak(v55);
        v54 = a1;
      }
    }

    operator delete(v54);
  }
}

void sub_23C286F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53)
{
  __cxa_guard_abort(&_MergedGlobals_9);
  std::vector<std::string>::~vector[abi:ne200100]((v53 - 128));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a52, a53);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53 - 248, *(v53 - 240));
  if ((*(v53 - 185) & 0x80000000) == 0)
  {
    operator delete(__p);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  operator delete(*(v53 - 208));
  operator delete(__p);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_31()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_32()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 10;
        strcpy(a2, "24hr_Timer");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "Profile");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "ABMtool");
        return result;
      }

LABEL_8:
      a2[23] = 11;
      strcpy(a2, "UnSpecified");
      return result;
    }

    a2[23] = 2;
    strcpy(a2, "UI");
  }

  return result;
}

{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "Last_Used");
  }

  else if (result)
  {
    a2[23] = 11;
    strcpy(a2, "UnSpecified");
  }

  else
  {
    a2[23] = 7;
    strcpy(a2, "Default");
  }

  return result;
}

double INTTrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v2 = operator new(0x178uLL);
  INTTrace::INTTrace(v2);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<INTTrace>::shared_ptr[abi:ne200100]<INTTrace,std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace*)#1},0>(&v4, v2);
  result = *&v4;
  *a1 = v4;
  return result;
}

void INTTrace::INTTrace(INTTrace *this)
{
  v17 = 8;
  strcpy(__p, "trace.bb");
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED, v18);
  ctu::OsLogContext::~OsLogContext(v18);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFCAA0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v3 = capabilities::trace::defaultHistorySizeMB(v2);
  v4 = 0x7FFFFFFF;
  if (v3 < 0x7FFFFFFF)
  {
    v4 = v3;
  }

  *(this + 28) = v4;
  v5 = capabilities::trace::defaultFileSizeBytes(v3);
  *(this + 10) = 0u;
  *(this + 15) = v5;
  *(this + 151) = 0;
  *(this + 128) = 0;
  *(this + 11) = 0u;
  *(this + 192) = 0;
  v6 = capabilities::radio::vendor(v5);
  if ((v6 - 1) > 3)
  {
    v7 = 25;
  }

  else
  {
    v7 = dword_23C32D580[v6 - 1];
  }

  v8 = capabilities::radio::dal(v6);
  v9 = v8;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v8);
  if (v9)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    if (v7 == 17)
    {
      v11 = 0x80000;
    }

    else if (v7 == 21 || v7 == 20)
    {
      v11 = 61440;
    }

    else
    {
      shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      if ((v7 - 19) > 5)
      {
        v11 = 0x8000;
      }

      else
      {
        v11 = dword_23C32F35C[v7 - 19];
      }
    }
  }

  *(this + 49) = v11;
  count = defaults::bbtrace::transport_read_count(shouldUseMinBasebandTransportIOReadSize);
  *(this + 50) = count;
  *(this + 204) = 0;
  v13 = capabilities::trace::defaultSleepTraceMode(count);
  *(this + 248) = 0u;
  *(this + 52) = v13;
  *(this + 239) = 256;
  *(this + 216) = 0;
  *(this + 19) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 1;
  *(this + 356) = 0;
  v14 = capabilities::trace::defaultPeakBandwidthMbps(v13);
  v15 = -1;
  if (v14 < 0xFFFFFFFF)
  {
    v15 = v14;
  }

  *(this + 90) = v15;
}

void sub_23C287568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 + 351) < 0)
  {
    operator delete(*(v16 + 328));
  }

  if (*(v16 + 327) < 0)
  {
    operator delete(*v20);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19 + 32);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19 + 16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19);
  if (*(v16 + 239) < 0)
  {
    operator delete(*(v16 + 216));
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v17);
  if (*(v16 + 151) < 0)
  {
    operator delete(*(v16 + 128));
  }

  Trace::~Trace(v16);
  _Unwind_Resume(a1);
}

uint64_t INTTrace::init(void *a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v25 = 0;
  v20[0] = &v25;
  v20[1] = a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = a1 + 1;
    v8 = a3[1];
    v22 = *a3;
    v23 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = a1 + 1;
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  if (v8)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = v7;
  block[5] = v20;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    v11 = object;
    if (!object)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  dispatch_sync(v10, block);
  v11 = object;
  if (object)
  {
LABEL_8:
    dispatch_release(v11);
  }

LABEL_9:
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(8uLL);
  *v16 = a1;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>(INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1,std::default_delete<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return v25;
}

void INTTrace::~INTTrace(INTTrace *this)
{
  *this = &unk_284EFCAA0;
  v2 = dispatch_group_create();
  v3 = v2;
  v4 = *(this + 22);
  if (v4)
  {
    v13.gr_passwd = v2;
    if (v2)
    {
      dispatch_retain(v2);
    }

    (*(*v4 + 120))(v4, &v13.gr_passwd);
    if (v13.gr_passwd)
    {
      dispatch_release(v13.gr_passwd);
    }
  }

  v13.gr_name = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  INTTrace::stop_sync(this, &v13);
  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = dispatch_time(0, 1000000000);
  if (!dispatch_group_wait(v3, v5) || (v6 = *(this + 5), !os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    *(this + 104) = 0;
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v12 = 0;
  _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Timeout for stopping trace service!", v12, 2u);
  *(this + 104) = 0;
  if (v3)
  {
LABEL_13:
    dispatch_release(v3);
  }

LABEL_14:
  if ((*(this + 351) & 0x80000000) == 0)
  {
    if ((*(this + 327) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(*(this + 38));
    v7 = *(this + 36);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  operator delete(*(this + 41));
  if (*(this + 327) < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v7 = *(this + 36);
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_22:
  v8 = *(this + 34);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 32);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((*(this + 239) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (*(this + 239) < 0)
  {
LABEL_28:
    operator delete(*(this + 27));
  }

LABEL_29:
  v10 = *(this + 23);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 21);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if ((*(this + 151) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*(this + 151) < 0)
  {
LABEL_35:
    operator delete(*(this + 16));
  }

LABEL_36:
  Trace::~Trace(this);
}

{
  INTTrace::~INTTrace(this);

  operator delete(v1);
}

void INTTrace::stop_sync(INTTrace *this, group *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Stopping BB Trace", buf, 2u);
  }

  if (*(this + 31) && (v43 = 0, LOBYTE(v42) = 0, Timestamp::Timestamp(v40), v39 = 0, *v38 = 0, LOBYTE(v37) = 0, abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v40, v41), v43 < 0))
  {
    operator delete(v42);
    if (!*(this + 33))
    {
      goto LABEL_9;
    }
  }

  else if (!*(this + 33))
  {
    goto LABEL_9;
  }

  v36 = 0;
  LOBYTE(v35) = 0;
  Timestamp::Timestamp(v33);
  v32 = 0;
  LOBYTE(v31) = 0;
  v30 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
  if (v36 < 0)
  {
    operator delete(v35);
  }

LABEL_9:
  if ((*(this + 151) & 0x8000000000000000) != 0)
  {
    if (!*(this + 17))
    {
      goto LABEL_24;
    }
  }

  else if (!*(this + 151))
  {
    goto LABEL_24;
  }

  v5 = *(this + 22);
  if (!v5 || !(*(*v5 + 128))(v5))
  {
LABEL_24:
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I Skip the configuration for the trace";
      v10 = v12;
      v11 = 2;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  gr_name = a2->gr_name;
  v28 = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
  }

  v27 = 4;
  strcpy(v26, "Stop");
  v7 = INTTrace::sendConfig_sync(this, &v28, v26, 0, 0, 1);
  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (gr_name)
  {
    dispatch_release(gr_name);
  }

  v8 = *(this + 5);
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v45 = "Stop";
      v9 = "#I Succeeded sending config: %s";
      v10 = v8;
      v11 = 12;
LABEL_26:
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v45 = "Stop";
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to send config: %s", buf, 0xCu);
  }

LABEL_27:
  INTTrace::stopReader_sync(this);
  v13 = *(this + 23);
  *(this + 22) = 0;
  *(this + 23) = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    *(this + 204) = 0;
    if (!*(this + 31))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(this + 204) = 0;
    if (!*(this + 31))
    {
      goto LABEL_33;
    }
  }

  v25 = 0;
  LOBYTE(v24) = 0;
  Timestamp::Timestamp(v22);
  v21 = 0;
  LOBYTE(v20) = 0;
  v19 = 0;
  LOBYTE(v18) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v22, v23);
  if (v25 < 0)
  {
    operator delete(v24);
  }

LABEL_33:
  if (*(this + 33))
  {
    v17 = 0;
    LOBYTE(v16) = 0;
    Timestamp::Timestamp(v14);
    abm::trace::TraceInfo::push();
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v14, v15);
    if (v17 < 0)
    {
      operator delete(v16);
    }
  }
}

void sub_23C288078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (v38)
  {
    dispatch_release(v38);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void INTTrace::reinit(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23C1C4000, v1, OS_LOG_TYPE_DEFAULT, "#I Not implemented yet: reinit", v2, 2u);
  }
}

void INTTrace::prepare(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = v3;
  v8[1] = a1;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::start(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::stop(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::abort(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = v3;
  v10[1] = a1;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::flush(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void INTTrace::enterLowPower(INTTrace *this, group *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::enterLowPower(dispatch::group)::$_0>(INTTrace::enterLowPower(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::enterLowPower(dispatch::group)::$_0,dispatch_queue_s *::default_delete<INTTrace::enterLowPower(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
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