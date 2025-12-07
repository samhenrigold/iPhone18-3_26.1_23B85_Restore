void ___ZN4coex16QMICommandDriver4initEv_block_invoke_4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_debug_impl(&dword_296ECF000, v1, OS_LOG_TYPE_DEBUG, "#D stopped", v2, 2u);
  }
}

uint64_t ___ZN4coex16QMICommandDriver4initEv_block_invoke_6(uint64_t a1)
{
  v62 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D started", &buf, 2u);
  }

  v3 = *(v1 + 72);
  v36 = 0;
  v37 = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v4;
  v50 = v4;
  v47 = v4;
  v48 = v4;
  v45 = v4;
  v46 = v4;
  v43 = v4;
  v44 = v4;
  buf = v4;
  v42 = v4;
  v5 = *(v3 + 24);
  *&v51 = 10;
  *(&v51 + 1) = &buf;
  *&v52 = 0;
  *(&v52 + 1) = v5;
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
      *&v38 = v10;
      if (v9 == v10)
      {
LABEL_12:
        *(v3 + 16) = v10;
        goto LABEL_13;
      }
    }

    else
    {
      *&v38 = *(v3 + 16);
    }

    v11 = v10[2];
    if (*(v11 + 24))
    {
      v10 = v10[1];
    }

    else
    {
      v10 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::erase(v9, (v11 + 64), &v38);
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

  pthread_mutex_unlock(*(&v52 + 1));
  v13 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    if (v52 > 0)
    {
      v28 = *(&v51 + 1) + 16 * v52;
      do
      {
        v29 = *(v28 - 8);
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

    if (v51 >= 0xB)
    {
      operator delete(*(&v51 + 1));
    }
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v60 = v14;
  v55 = v14;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v53 = v14;
  v54 = v14;
  v51 = v14;
  v52 = v14;
  v49 = v14;
  v50 = v14;
  v47 = v14;
  v48 = v14;
  v45 = v14;
  v46 = v14;
  v43 = v14;
  v44 = v14;
  buf = v14;
  v42 = v14;
  LOBYTE(buf) = 0;
  v57 = 10;
  v58 = &buf + 8;
  *(&v60 + 4) = 0;
  v59 = 0;
  v61 = 0;
  v15 = v36;
  v16 = *v36;
  p_buf = &buf;
  v34 = v3;
  v35 = v16;
  *&v31 = *(v16 + 8);
  *(&v31 + 1) = v16;
  *&v32 = &buf;
  *(&v32 + 1) = v16;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v31);
  v30[0] = *v15;
  v30[1] = v30[0];
  v30[2] = &buf;
  v30[3] = v30[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(v30);
  v38 = v31;
  v39 = v32;
  v17 = v30[0];
  v18 = v31;
  if (v31 == v30[0])
  {
    if (DWORD2(v60) <= DWORD1(v60))
    {
      goto LABEL_43;
    }

LABEL_42:
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::force_cleanup_connections(v34, v35);
    goto LABEL_43;
  }

  v19 = v39;
  if ((*v39 & 1) == 0)
  {
    v20 = *(*(v31 + 16) + 32);
    v21 = *(v20 + 24);
    if (!v21)
    {
      std::runtime_error::runtime_error(&v40, "call to empty boost::function");
      v40.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v40);
    }

    (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32);
    if ((*v19 & 1) == 0)
    {
      *v19 = 1;
    }
  }

  *&v38 = *(v18 + 8);
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v38);
  v22 = v39;
  if (*v39 == 1)
  {
    *v39 = 0;
  }

  for (i = v38; v38 != v17; i = v38)
  {
    v24 = *(*(i + 16) + 32);
    v25 = *(v24 + 24);
    if (!v25)
    {
      std::runtime_error::runtime_error(&v40, "call to empty boost::function");
      v40.__vftable = &unk_2A1E17188;
      boost::throw_exception<boost::bad_function_call>(&v40);
    }

    (*((v25 & 0xFFFFFFFFFFFFFFFELL) + 8))(v24 + 32);
    if ((*v22 & 1) == 0)
    {
      *v22 = 1;
    }

    *&v38 = *(i + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::lock_next_callable(&v38);
    v22 = v39;
    if (*v39 == 1)
    {
      *v39 = 0;
    }
  }

  if (*(p_buf + 70) > *(p_buf + 69))
  {
    goto LABEL_42;
  }

LABEL_43:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&buf);
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

void sub_296F71F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(va);
  JUMPOUT(0x296F71FFCLL);
}

void sub_296F71F2C(_Unwind_Exception *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::runtime_error a27)
{
  v27 = a2;
  std::runtime_error::~runtime_error(&a27);
  if (v27 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v29);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v31);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v30);
    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  boost::signals2::detail::connection_body_base::disconnect(*(a23 + 16));
  __cxa_rethrow();
}

void sub_296F71F90(_Unwind_Exception *a1, uint64_t a2)
{
  v2 = a2;
  __cxa_end_catch();
  if (v2 != 2)
  {
    boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(&v4);
    boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type>>::~slot_call_iterator_cache(&v6);
    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(&v5);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x296F71F60);
}

void sub_296F71FD8(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x296F72004);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_8(uint64_t a1, xpc_object_t object)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (object)
  {
    v3 = object;
    xpc_retain(object);
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v3 = xpc_null_create();
    v4 = *(v2 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }
  }

  v5 = MEMORY[0x29C269360](v3);
  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v7;
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
  }

  else
  {
    HIBYTE(__dst[2]) = v6;
    v8 = __dst;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  memcpy(v8, v5, v7);
LABEL_15:
  *(v7 + v8) = 0;
  free(v5);
  v10 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v10 = __dst[0];
  }

  *buf = 136315138;
  v13 = v10;
  _os_log_error_impl(&dword_296ECF000, v4, OS_LOG_TYPE_ERROR, "server error %s", buf, 0xCu);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_5:
  xpc_release(v3);
}

void sub_296F721A8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_11(uint64_t a1, char *object)
{
  v3 = *(a1 + 32);
  *(v3 + 168) = 1;
  var18.gr_name = object;
  if (object)
  {
    dispatch_retain(object);
  }

  coex::QMICommandDriver::updateIndications_sync(v3, &var18);
  if (object)
  {

    dispatch_release(object);
  }
}

void sub_296F72250(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_3(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v19 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v18 = Mutable;
    v19 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v18 = 0;
  }

  v26 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 1174405120;
  v22 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTETransportBlockCountENS_3abm9BLERStats10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v23 = &__block_descriptor_tmp_353_0;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v25 = *MEMORY[0x29EDC8698];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 4);
    v27 = *v9;
    v22(&v20, &v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v17[1] = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v26 = 0;
  v20 = MEMORY[0x29EDCA5F8];
  v21 = 1174405120;
  v22 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm32LTETransportBlockCountErrorCountENS_3abm9BLERStats10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v23 = &__block_descriptor_tmp_357_0;
  cf = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v25 = *MEMORY[0x29EDC8980];
  v10 = qmi::MessageBase::findTlvValue(a2);
  v12 = v10;
  if (v10)
  {
    tlv::throwIfNotEnoughBytes(v10, v10 + v11, 4);
    v27 = *v12;
    v22(&v20, &v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v20 = 0;
  v13 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v14 = v13;
  if (v13)
  {
    v20 = v13;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v13, *MEMORY[0x29EDC8788], v19);
  if (v14 && (v15 = CFGetTypeID(v14), v15 == CFDictionaryGetTypeID()))
  {
    v17[0] = v14;
    CFRetain(v14);
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v17[0] = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, v17, 0);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v19)
  {
    CFRelease(v19);
  }
}

void sub_296F72550(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 17, v2, v3);
  JUMPOUT(0x296F72450);
}

void sub_296F7258C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 16, v2, v3);
  JUMPOUT(0x296F72384);
}

void sub_296F725C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void sub_296F725E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver4initEv_block_invoke_6(uint64_t a1, qmi::MessageBase *a2)
{
  v26[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 32);
  v19 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v18 = Mutable;
    v19 = Mutable;
    CFRetain(Mutable);
  }

  else
  {
    v18 = 0;
  }

  v25 = 0;
  v20[0] = MEMORY[0x29EDCA5F8];
  v20[1] = 1174405120;
  v21 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm26TxPowerLimitEnforceSuccessENS_3abm16ConditionSuccess10IndicationEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v22 = &__block_descriptor_tmp_445;
  cf = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  v24 = *MEMORY[0x29EDC8848];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v9 = TlvValue;
  if (TlvValue)
  {
    v10 = v8;
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v8, 8);
    if ((v10 & 0xFFFFFFF8) != 0)
    {
      v11 = *v9;
    }

    else
    {
      v11 = 0;
    }

    v26[0] = v11;
    v21(v20, v26);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v20[0] = 0;
  v12 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = v12;
  if (v12)
  {
    v20[0] = v12;
  }

  v14 = v19;
  ctu::cf::insert<__CFString const*,__CFDictionary *>(v12, *MEMORY[0x29EDC8840], v19);
  if (v13 && (v15 = CFGetTypeID(v13), v15 == CFDictionaryGetTypeID()))
  {
    v17 = v13;
    CFRetain(v13);
    v16 = v13;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v17, 0);
  if (v16)
  {
    CFRelease(v16);
  }

  if (v13)
  {
    CFRelease(v13);
    v14 = v19;
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_296F728BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void coex::CommandDriver::Callback::~Callback(coex::CommandDriver::Callback *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
  }

  if (*this)
  {
    _Block_release(*this);
  }
}

void coex::QMICommandDriver::get(uint64_t a1, const void **a2, int a3, uint64_t a4)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN4coex16QMICommandDriver3getEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v10[3] = &__block_descriptor_tmp_24_4;
  v7 = *a2;
  v10[4] = a1;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v14 = a3;
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  v9 = *(a4 + 8);
  aBlock = v8;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v10);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver3getEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v10 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = _Block_copy(v5);
    v7 = *(a1 + 56);
    v8 = v6;
    v9 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = 0;
  v7 = *(a1 + 56);
  v8 = 0;
  v9 = v7;
  if (v7)
  {
LABEL_5:
    dispatch_retain(v7);
  }

LABEL_6:
  coex::QMICommandDriver::get_sync(v3, &v10, v4, &v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void sub_296F72B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  coex::CommandDriver::Callback::~Callback(va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::get_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v12[0] = 0xAAAAAAAAAAAAAAAALL;
  v12[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v12, *a2);
  if (!ctu::cf::map_adapter::getBool(v12, *MEMORY[0x29EDC88B8]))
  {
    return MEMORY[0x29C268420](v12);
  }

  if (!*a4)
  {
    v7 = 0;
    v8 = *(a4 + 8);
    v10 = 0;
    v11 = v8;
    if (!v8)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = _Block_copy(*a4);
  v8 = *(a4 + 8);
  v10 = v7;
  v11 = v8;
  if (v8)
  {
LABEL_4:
    dispatch_retain(v8);
  }

LABEL_5:
  coex::QMICommandDriver::getScanFreqBandFilter_sync(a1, v5, &v10);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  return MEMORY[0x29C268420](v12);
}

void sub_296F72C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  coex::CommandDriver::Callback::~Callback(&a9);
  MEMORY[0x29C268420](va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::poll(uint64_t a1, const void **a2, int a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN4coex16QMICommandDriver4pollEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdE_block_invoke;
  v6[3] = &__block_descriptor_tmp_25_0;
  v5 = *a2;
  v6[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v8 = a3;
  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v6);
  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver4pollEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  coex::QMICommandDriver::poll_sync(v2, &v3);
  if (v1)
  {
    CFRelease(v1);
  }
}

void sub_296F72D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::poll_sync(coex::QMICommandDriver *a1, const __CFDictionary **a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v16 = *a2;
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Polling for: %@", buf, 0xCu);
  }

  memset(buf, 170, 16);
  ctu::cf::dict_adapter::dict_adapter(buf, *a2);
  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC8728]))
  {
    coex::QMICommandDriver::pollWWANState_sync(a1);
  }

  v18 = -1431655766;
  v5 = (**buf)(buf, *MEMORY[0x29EDC87D8]);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    v9 = v7 == CFNumberGetTypeID() ? ctu::cf::assign(&v18, v6, v8) : 0;
    CFRelease(v6);
    if (v9)
    {
      coex::QMICommandDriver::pollWLANScanState_sync(a1, v18);
    }
  }

  v17 = -1431655766;
  v10 = (**buf)(buf, *MEMORY[0x29EDC8950]);
  v11 = v10;
  if (v10)
  {
    v12 = CFGetTypeID(v10);
    v14 = v12 == CFNumberGetTypeID() ? ctu::cf::assign(&v17, v11, v13) : 0;
    CFRelease(v11);
    if (v14)
    {
      coex::QMICommandDriver::pollWLANConnState_sync(a1, v17);
    }
  }

  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC86B8]))
  {
    coex::QMICommandDriver::pollPolicy_sync(a1);
  }

  if (ctu::cf::map_adapter::getBool(buf, *MEMORY[0x29EDC8780]))
  {
    coex::QMICommandDriver::pollLinkQuality_sync(a1);
  }

  return MEMORY[0x29C268420](buf);
}

CFTypeRef __copy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void coex::QMICommandDriver::setIndications(uint64_t a1, const void **a2, uint64_t a3)
{
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN4coex16QMICommandDriver14setIndicationsEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v8[3] = &__block_descriptor_tmp_28_2;
  v5 = *a2;
  v8[4] = a1;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a3 + 8);
  aBlock = v6;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::SharedSynchronizable<coex::CommandDriver>::execute_wrapped((a1 + 8), v8);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void ___ZN4coex16QMICommandDriver14setIndicationsEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = (a1 + 5);
  v4 = (v2 + 176);
  if ((v2 + 176) != a1 + 5)
  {
    v5 = *v3;
    if (*v3)
    {
      CFRetain(*v3);
    }

    v6 = *v4;
    *v4 = v5;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  if ((*(v2 + 168) & 1) == 0)
  {
    v7 = a1[6];
    if (v7)
    {
      v8 = _Block_copy(v7);
      v9 = a1[7];
      v10 = v8;
      v11 = v9;
      if (!v9)
      {
LABEL_10:
        coex::QMICommandDriver::setIndications_sync(v2, &v10);
        if (v9)
        {
          dispatch_release(v9);
        }

        if (v8)
        {
          _Block_release(v8);
        }

        return;
      }
    }

    else
    {
      v8 = 0;
      v9 = a1[7];
      v10 = 0;
      v11 = v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    dispatch_retain(v9);
    goto LABEL_10;
  }
}

uint64_t coex::QMICommandDriver::setWLANState_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v76 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v27 = *a2;
    *buf = 138412290;
    *&buf[4] = v27;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting WLAN state with: %@", buf, 0xCu);
  }

  v71[0] = 0xAAAAAAAAAAAAAAAALL;
  v71[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v71, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v69 = v7;
  v70 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v69);
  v8 = (*v71[0])(v71, *MEMORY[0x29EDC87B0]);
  v9 = v8;
  v10 = "St3__111__lookaheadIcNS_12regex_traitsIcEEEE";
  if (v8)
  {
    v11 = CFGetTypeID(v8);
    TypeID = CFDictionaryGetTypeID();
    CFRelease(v9);
    if (v11 == TypeID)
    {
      memset(buf, 170, sizeof(buf));
      ctu::cf::dict_adapter::dict_adapter(buf, v9);
      v65[0] = MEMORY[0x29EDCA5F8];
      v65[1] = 1174405120;
      v66 = ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
      v67 = &__block_descriptor_tmp_69_6;
      ctu::cf::dict_adapter::dict_adapter(v68, buf);
      v13 = *(&v69 + 1);
      v14 = v70;
      v15 = *(&v69 + 1);
      if (*(&v69 + 1) != v70)
      {
        v15 = *(&v69 + 1);
        while (*(*v15 + 8) != 16)
        {
          if (++v15 == v70)
          {
            goto LABEL_13;
          }
        }
      }

      if (v15 == v70)
      {
LABEL_13:
        v18 = operator new(0x20uLL);
        v18[8] = 16;
        *v18 = &unk_2A1E1D988;
        *(v18 + 12) = 0;
        v17 = v18 + 12;
        *(v18 + 20) = 0;
        if (v14 >= *(&v70 + 1))
        {
          v20 = v14 - v13;
          v21 = (v14 - v13) >> 3;
          v22 = v21 + 1;
          if ((v21 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v23 = *(&v70 + 1) - v13;
          if ((*(&v70 + 1) - v13) >> 2 > v22)
          {
            v22 = v23 >> 2;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF8)
          {
            v24 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          v51 = v18 + 12;
          if (v24)
          {
            if (v24 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v25 = v18;
            v26 = operator new(8 * v24);
            v18 = v25;
            v10 = "NSt3__111__lookaheadIcNS_12regex_traitsIcEEEE" + 1;
          }

          else
          {
            v26 = 0;
          }

          v28 = &v26[8 * v21];
          *v28 = v18;
          v19 = v28 + 8;
          memcpy(v26, v13, v20);
          *(&v69 + 1) = v26;
          *&v70 = v19;
          *(&v70 + 1) = &v26[8 * v24];
          if (v13)
          {
            operator delete(v13);
          }

          v17 = v51;
        }

        else
        {
          *v14 = v18;
          v19 = v14 + 8;
        }

        *&v70 = v19;
      }

      else
      {
        if (!v16)
        {
          __cxa_bad_cast();
        }

        v17 = v16 + 12;
      }

      v66(v65, v17);
      MEMORY[0x29C268420](v68);
      MEMORY[0x29C268420](buf);
    }
  }

  v29 = (*v71[0])(v71, *MEMORY[0x29EDC8920]);
  v30 = v29;
  if (v29)
  {
    v31 = CFGetTypeID(v29);
    v32 = CFDictionaryGetTypeID();
    CFRelease(v30);
    if (v31 == v32)
    {
      memset(buf, 170, sizeof(buf));
      ctu::cf::dict_adapter::dict_adapter(buf, v30);
      v61[0] = MEMORY[0x29EDCA5F8];
      v61[1] = *(v10 + 86);
      v62 = ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_70;
      v63 = &__block_descriptor_tmp_73_2;
      ctu::cf::dict_adapter::dict_adapter(v64, buf);
      v33 = *(&v69 + 1);
      v34 = v70;
      v35 = *(&v69 + 1);
      if (*(&v69 + 1) != v70)
      {
        v35 = *(&v69 + 1);
        while (*(*v35 + 8) != 17)
        {
          if (++v35 == v70)
          {
            goto LABEL_40;
          }
        }
      }

      if (v35 == v70)
      {
LABEL_40:
        v38 = operator new(0x38uLL);
        v38[8] = 17;
        *(v38 + 4) = 0;
        v37 = v38 + 16;
        *v38 = &unk_2A1E1D9D8;
        *(v38 + 24) = 0u;
        *(v38 + 40) = 0u;
        if (v34 >= *(&v70 + 1))
        {
          v40 = v34 - v33;
          v41 = (v34 - v33) >> 3;
          v42 = v41 + 1;
          if ((v41 + 1) >> 61)
          {
            std::vector<std::string>::__throw_length_error[abi:ne200100]();
          }

          v43 = *(&v70 + 1) - v33;
          if ((*(&v70 + 1) - v33) >> 2 > v42)
          {
            v42 = v43 >> 2;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF8)
          {
            v44 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v44 = v42;
          }

          v52 = v38 + 16;
          if (v44)
          {
            if (v44 >> 61)
            {
              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v45 = v38;
            v46 = operator new(8 * v44);
            v38 = v45;
            v10 = "NSt3__111__lookaheadIcNS_12regex_traitsIcEEEE" + 1;
          }

          else
          {
            v46 = 0;
          }

          v47 = &v46[8 * v41];
          *v47 = v38;
          v39 = v47 + 8;
          memcpy(v46, v33, v40);
          *(&v69 + 1) = v46;
          *&v70 = v39;
          *(&v70 + 1) = &v46[8 * v44];
          if (v33)
          {
            operator delete(v33);
          }

          v37 = v52;
        }

        else
        {
          *v34 = v38;
          v39 = v34 + 8;
        }

        *&v70 = v39;
      }

      else
      {
        if (!v36)
        {
          __cxa_bad_cast();
        }

        v37 = v36 + 16;
      }

      v62(v61, v37);
      MEMORY[0x29C268420](v64);
      MEMORY[0x29C268420](buf);
    }
  }

  v56 = a1 + 136;
  v57 = QMIServiceMsg::create();
  v58 = 25000;
  v59 = 0;
  aBlock = 0;
  v53[0] = MEMORY[0x29EDCA5F8];
  v53[1] = *(v10 + 86);
  v53[2] = ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_74;
  v53[3] = &__block_descriptor_tmp_78_0;
  v53[4] = a1;
  v48 = *a3;
  if (*a3)
  {
    v48 = _Block_copy(v48);
  }

  v49 = *(a3 + 8);
  v54 = v48;
  object = v49;
  if (v49)
  {
    dispatch_retain(v49);
  }

  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  v73 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm12SetWLANState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v74 = &unk_29EE60108;
  v75 = v53;
  aBlock = _Block_copy(buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v54)
  {
    _Block_release(v54);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v69);
  return MEMORY[0x29C268420](v71);
}

void sub_296F73960(_Unwind_Exception *a1)
{
  MEMORY[0x29C268420](v1 - 144);
  qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
  MEMORY[0x29C268420](v1 - 160);
  _Unwind_Resume(a1);
}

void sub_296F739B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  coex::CommandDriver::Callback::~Callback((v17 + 40));
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase((v18 - 192));
  MEMORY[0x29C268420](v18 - 160);
  _Unwind_Resume(a1);
}

void sub_296F73A10(_Unwind_Exception *a1)
{
  qmi::MutableMessageBase::~MutableMessageBase((v1 - 192));
  MEMORY[0x29C268420](v1 - 160);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::setBLER_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v74 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v27 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v27;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting BLER with: %@", &aBlock, 0xCu);
  }

  v69[0] = 0xAAAAAAAAAAAAAAAALL;
  v69[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = ctu::cf::dict_adapter::dict_adapter(v69, *a2);
  Bool = ctu::cf::map_adapter::getBool(v7, *MEMORY[0x29EDC8AE0]);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (Bool)
  {
    v67 = v9;
    v68 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v67);
    v63[0] = MEMORY[0x29EDCA5F8];
    v63[1] = 1174405120;
    v64 = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
    v65 = &__block_descriptor_tmp_227;
    ctu::cf::dict_adapter::dict_adapter(v66, v69);
    v10 = *(&v67 + 1);
    v11 = v68;
    v12 = *(&v67 + 1);
    if (*(&v67 + 1) != v68)
    {
      v12 = *(&v67 + 1);
      while (*(*v12 + 8) != 1)
      {
        if (++v12 == v68)
        {
          goto LABEL_22;
        }
      }
    }

    if (v12 == v68)
    {
LABEL_22:
      v17 = operator new(0x10uLL);
      v17[8] = 1;
      *v17 = &unk_2A1E1E068;
      *(v17 + 3) = 0;
      v16 = v17 + 12;
      if (v11 >= *(&v68 + 1))
      {
        v19 = v11 - v10;
        v20 = (v11 - v10) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v68 + 1) - v10;
        if ((*(&v68 + 1) - v10) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v17;
          v25 = v17 + 12;
          v26 = operator new(8 * v23);
          v17 = v24;
        }

        else
        {
          v25 = v17 + 12;
          v26 = 0;
        }

        v28 = &v26[8 * v20];
        *v28 = v17;
        v18 = v28 + 8;
        memcpy(v26, v10, v19);
        *(&v67 + 1) = v26;
        *&v68 = v18;
        *(&v68 + 1) = &v26[8 * v23];
        if (v10)
        {
          operator delete(v10);
        }

        v16 = v25;
      }

      else
      {
        *v11 = v17;
        v18 = v11 + 8;
      }

      *&v68 = v18;
    }

    else
    {
      if (!v15)
      {
        __cxa_bad_cast();
      }

      v16 = v15 + 12;
    }

    v64(v63, v16);
    v59[0] = MEMORY[0x29EDCA5F8];
    v59[1] = 1174405120;
    v60 = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_228;
    v61 = &__block_descriptor_tmp_232;
    ctu::cf::dict_adapter::dict_adapter(v62, v69);
    v29 = *(&v67 + 1);
    v30 = v68;
    v31 = *(&v67 + 1);
    if (*(&v67 + 1) != v68)
    {
      v31 = *(&v67 + 1);
      while (*(*v31 + 8) != 2)
      {
        if (++v31 == v68)
        {
          goto LABEL_46;
        }
      }
    }

    if (v31 == v68)
    {
LABEL_46:
      v34 = operator new(0x10uLL);
      v34[8] = 2;
      *v34 = &unk_2A1E1E0B8;
      *(v34 + 3) = 0;
      v33 = v34 + 12;
      if (v30 >= *(&v68 + 1))
      {
        v36 = v30 - v29;
        v37 = (v30 - v29) >> 3;
        v38 = v37 + 1;
        if ((v37 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v39 = *(&v68 + 1) - v29;
        if ((*(&v68 + 1) - v29) >> 2 > v38)
        {
          v38 = v39 >> 2;
        }

        if (v39 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          if (v40 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v41 = v34;
          v42 = v34 + 12;
          v43 = operator new(8 * v40);
          v34 = v41;
        }

        else
        {
          v42 = v34 + 12;
          v43 = 0;
        }

        v44 = &v43[8 * v37];
        *v44 = v34;
        v35 = v44 + 8;
        memcpy(v43, v29, v36);
        *(&v67 + 1) = v43;
        *&v68 = v35;
        *(&v68 + 1) = &v43[8 * v40];
        if (v29)
        {
          operator delete(v29);
        }

        v33 = v42;
      }

      else
      {
        *v30 = v34;
        v35 = v30 + 8;
      }

      *&v68 = v35;
    }

    else
    {
      if (!v32)
      {
        __cxa_bad_cast();
      }

      v33 = v32 + 12;
    }

    v60(v59, v33);
    v54 = a1 + 136;
    v55 = QMIServiceMsg::create();
    v56 = 25000;
    v57 = 0;
    v58 = 0;
    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 1174405120;
    v51[2] = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_233;
    v51[3] = &__block_descriptor_tmp_237;
    v51[4] = a1;
    v45 = *a3;
    if (*a3)
    {
      v45 = _Block_copy(v45);
    }

    v46 = *(a3 + 8);
    v52 = v45;
    v53 = v46;
    if (v46)
    {
      dispatch_retain(v46);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v71 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9BLERStart8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v72 = &unk_29EE60158;
    v73 = v51;
    v58 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v58)
    {
      _Block_release(v58);
    }

    if (v53)
    {
      dispatch_release(v53);
    }

    if (v52)
    {
      _Block_release(v52);
    }

    MEMORY[0x29C268420](v62);
    MEMORY[0x29C268420](v66);
  }

  else
  {
    v67 = v9;
    v68 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v67);
    v54 = a1 + 136;
    v55 = QMIServiceMsg::create();
    v56 = 25000;
    v57 = 0;
    v58 = 0;
    v48[0] = MEMORY[0x29EDCA5F8];
    v48[1] = 1174405120;
    v48[2] = ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_238;
    v48[3] = &__block_descriptor_tmp_242;
    v48[4] = a1;
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    v14 = *(a3 + 8);
    v49 = v13;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v71 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8BLERStop8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v72 = &unk_29EE60180;
    v73 = v48;
    v58 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v58)
    {
      _Block_release(v58);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v49)
    {
      _Block_release(v49);
    }
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v67);
  return MEMORY[0x29C268420](v69);
}

void sub_296F74158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setSINR_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v54 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v27 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v27;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting SINR with: %@", &aBlock, 0xCu);
  }

  v49[0] = 0xAAAAAAAAAAAAAAAALL;
  v49[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = ctu::cf::dict_adapter::dict_adapter(v49, *a2);
  Bool = ctu::cf::map_adapter::getBool(v7, *MEMORY[0x29EDC8AE0]);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (Bool)
  {
    v47 = v9;
    v48 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v47);
    v43[0] = MEMORY[0x29EDCA5F8];
    v43[1] = 1174405120;
    v44 = ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
    v45 = &__block_descriptor_tmp_246;
    ctu::cf::dict_adapter::dict_adapter(v46, v49);
    v10 = *(&v47 + 1);
    v11 = v48;
    v12 = *(&v47 + 1);
    if (*(&v47 + 1) != v48)
    {
      v12 = *(&v47 + 1);
      while (*(*v12 + 8) != 1)
      {
        if (++v12 == v48)
        {
          goto LABEL_22;
        }
      }
    }

    if (v12 == v48)
    {
LABEL_22:
      v17 = operator new(0x10uLL);
      v17[8] = 1;
      *v17 = &unk_2A1E1E108;
      *(v17 + 3) = 0;
      v16 = (v17 + 12);
      if (v11 >= *(&v48 + 1))
      {
        v19 = v11 - v10;
        v20 = (v11 - v10) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v48 + 1) - v10;
        if ((*(&v48 + 1) - v10) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v17;
          v25 = (v17 + 12);
          v26 = operator new(8 * v23);
          v17 = v24;
        }

        else
        {
          v25 = (v17 + 12);
          v26 = 0;
        }

        v28 = &v26[8 * v20];
        *v28 = v17;
        v18 = v28 + 8;
        memcpy(v26, v10, v19);
        *(&v47 + 1) = v26;
        *&v48 = v18;
        *(&v48 + 1) = &v26[8 * v23];
        if (v10)
        {
          operator delete(v10);
        }

        v16 = v25;
      }

      else
      {
        *v11 = v17;
        v18 = v11 + 8;
      }

      *&v48 = v18;
    }

    else
    {
      if (!v15)
      {
        __cxa_bad_cast();
      }

      v16 = (v15 + 12);
    }

    v44(v43, v16);
    v38 = a1 + 136;
    v39 = QMIServiceMsg::create();
    v40 = 25000;
    v41 = 0;
    v42 = 0;
    v35[0] = MEMORY[0x29EDCA5F8];
    v35[1] = 1174405120;
    v35[2] = ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_247;
    v35[3] = &__block_descriptor_tmp_251;
    v35[4] = a1;
    v29 = *a3;
    if (*a3)
    {
      v29 = _Block_copy(v29);
    }

    v30 = *(a3 + 8);
    v36 = v29;
    v37 = v30;
    if (v30)
    {
      dispatch_retain(v30);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v51 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SINRStart8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v52 = &unk_29EE601A8;
    v53 = v35;
    v42 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v42)
    {
      _Block_release(v42);
    }

    if (v37)
    {
      dispatch_release(v37);
    }

    if (v36)
    {
      _Block_release(v36);
    }

    MEMORY[0x29C268420](v46);
  }

  else
  {
    v47 = v9;
    v48 = v9;
    qmi::MutableMessageBase::MutableMessageBase(&v47);
    v38 = a1 + 136;
    v39 = QMIServiceMsg::create();
    v40 = 25000;
    v41 = 0;
    v42 = 0;
    v32[0] = MEMORY[0x29EDCA5F8];
    v32[1] = 1174405120;
    v32[2] = ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_252;
    v32[3] = &__block_descriptor_tmp_256;
    v32[4] = a1;
    v13 = *a3;
    if (*a3)
    {
      v13 = _Block_copy(v13);
    }

    v14 = *(a3 + 8);
    v33 = v13;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v51 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8SINRStop8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v52 = &unk_29EE601D0;
    v53 = v32;
    v42 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v42)
    {
      _Block_release(v42);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v33)
    {
      _Block_release(v33);
    }
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v47);
  return MEMORY[0x29C268420](v49);
}

void sub_296F747B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setBandFilterInfo_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v63 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v36 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v36;
    _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Setting Band filter info with: %@", &aBlock, 0xCu);
  }

  v58[0] = 0xAAAAAAAAAAAAAAAALL;
  v58[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = ctu::cf::dict_adapter::dict_adapter(v58, *a2);
  v10 = ctu::cf::map_adapter::copyCFArrayRef(v9, *MEMORY[0x29EDC86C8]);
  v11 = v10;
  if (v10)
  {
    v57 = v10;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v12;
    v56 = v12;
    qmi::MutableMessageBase::MutableMessageBase(&v55);
    v51[0] = MEMORY[0x29EDCA5F8];
    v51[1] = 1174405120;
    v52 = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
    v53 = &__block_descriptor_tmp_262;
    cf = v11;
    CFRetain(v11);
    v38 = a4;
    v13 = *(&v55 + 1);
    v14 = v56;
    v15 = *(&v55 + 1);
    if (*(&v55 + 1) != v56)
    {
      v15 = *(&v55 + 1);
      while (*(*v15 + 8) != 16)
      {
        if (++v15 == v56)
        {
          goto LABEL_12;
        }
      }
    }

    if (v15 == v56)
    {
LABEL_12:
      v18 = operator new(0x28uLL);
      v18[8] = 16;
      *v18 = &unk_2A1E1E298;
      *(v18 + 2) = 0;
      v17 = (v18 + 16);
      *(v18 + 3) = 0;
      *(v18 + 4) = 0;
      if (v14 >= *(&v56 + 1))
      {
        v20 = v14 - v13;
        v21 = (v14 - v13) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v23 = *(&v56 + 1) - v13;
        if ((*(&v56 + 1) - v13) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        v37 = (v18 + 16);
        if (v24)
        {
          if (v24 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v25 = v18;
          v26 = operator new(8 * v24);
          v18 = v25;
        }

        else
        {
          v26 = 0;
        }

        v27 = &v26[8 * v21];
        *v27 = v18;
        v19 = v27 + 8;
        memcpy(v26, v13, v20);
        *(&v55 + 1) = v26;
        *&v56 = v19;
        *(&v56 + 1) = &v26[8 * v24];
        if (v13)
        {
          operator delete(v13);
        }

        v17 = v37;
      }

      else
      {
        *v14 = v18;
        v19 = v14 + 8;
      }

      *&v56 = v19;
    }

    else
    {
      if (!v16)
      {
        __cxa_bad_cast();
      }

      v17 = (v16 + 16);
    }

    v52(v51, v17);
    v47[0] = MEMORY[0x29EDCA5F8];
    v47[1] = 0x40000000;
    v28 = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_263;
    v48 = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_263;
    v49 = &__block_descriptor_tmp_264;
    v50 = a3;
    v29 = *(&v55 + 1);
    if (*(&v55 + 1) == v56)
    {
      v30 = v38;
    }

    else
    {
      v30 = v38;
      while (*(*v29 + 8) != 17)
      {
        if (++v29 == v56)
        {
          goto LABEL_37;
        }
      }
    }

    if (v29 == v56)
    {
LABEL_37:
      v32 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(&v55, 17);
      v28 = v48;
    }

    else
    {
      if (!v31)
      {
        __cxa_bad_cast();
      }

      v32 = v31 + 12;
    }

    v28(v47, v32);
    v42 = a1 + 136;
    v43 = QMIServiceMsg::create();
    v44 = 25000;
    v45 = 0;
    v46 = 0;
    v39[0] = MEMORY[0x29EDCA5F8];
    v39[1] = 1174405120;
    v39[2] = ___ZN4coex16QMICommandDriver22setBandFilterInfo_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2;
    v39[3] = &__block_descriptor_tmp_268;
    v39[4] = a1;
    v33 = *v30;
    if (*v30)
    {
      v33 = _Block_copy(v33);
    }

    v34 = *(v30 + 8);
    v40 = v33;
    object = v34;
    if (v34)
    {
      dispatch_retain(v34);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v60 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm17SetBandFilterInfo8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v61 = &unk_29EE60220;
    v62 = v39;
    v46 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v46)
    {
      _Block_release(v46);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v40)
    {
      _Block_release(v40);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v55);
    CFRelease(v11);
  }

  return MEMORY[0x29C268420](v58);
}

void sub_296F74DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setScanFreqBandFilter_sync(uint64_t a1, const __CFDictionary **a2, int a3, uint64_t a4)
{
  v62 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v35 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v35;
    _os_log_debug_impl(&dword_296ECF000, v8, OS_LOG_TYPE_DEBUG, "#D Setting Scan Frequency Band filter info with: %@", &aBlock, 0xCu);
  }

  v57[0] = 0xAAAAAAAAAAAAAAAALL;
  v57[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = ctu::cf::dict_adapter::dict_adapter(v57, *a2);
  v10 = ctu::cf::map_adapter::copyCFArrayRef(v9, *MEMORY[0x29EDC87F8]);
  v56 = v10;
  if (v10)
  {
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v54 = v11;
    v55 = v11;
    qmi::MutableMessageBase::MutableMessageBase(&v54);
    v50[0] = MEMORY[0x29EDCA5F8];
    v50[1] = 1174405120;
    v51 = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
    v52 = &__block_descriptor_tmp_271;
    cf = v10;
    CFRetain(v10);
    v37 = a4;
    v12 = *(&v54 + 1);
    v13 = v55;
    v14 = *(&v54 + 1);
    if (*(&v54 + 1) != v55)
    {
      v14 = *(&v54 + 1);
      while (*(*v14 + 8) != 16)
      {
        if (++v14 == v55)
        {
          goto LABEL_12;
        }
      }
    }

    if (v14 == v55)
    {
LABEL_12:
      v17 = operator new(0x28uLL);
      v17[8] = 16;
      *v17 = &unk_2A1E1E2E8;
      *(v17 + 2) = 0;
      v16 = v17 + 16;
      *(v17 + 3) = 0;
      *(v17 + 4) = 0;
      if (v13 >= *(&v55 + 1))
      {
        v19 = v13 - v12;
        v20 = (v13 - v12) >> 3;
        v21 = v20 + 1;
        if ((v20 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v22 = *(&v55 + 1) - v12;
        if ((*(&v55 + 1) - v12) >> 2 > v21)
        {
          v21 = v22 >> 2;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFF8)
        {
          v23 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        v36 = v17 + 16;
        if (v23)
        {
          if (v23 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v17;
          v25 = operator new(8 * v23);
          v17 = v24;
        }

        else
        {
          v25 = 0;
        }

        v26 = &v25[8 * v20];
        *v26 = v17;
        v18 = v26 + 8;
        memcpy(v25, v12, v19);
        *(&v54 + 1) = v25;
        *&v55 = v18;
        *(&v55 + 1) = &v25[8 * v23];
        if (v12)
        {
          operator delete(v12);
        }

        v16 = v36;
      }

      else
      {
        *v13 = v17;
        v18 = v13 + 8;
      }

      *&v55 = v18;
    }

    else
    {
      if (!v15)
      {
        __cxa_bad_cast();
      }

      v16 = v15 + 16;
    }

    v51(v50, v16);
    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 0x40000000;
    v27 = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_272;
    v47 = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_272;
    v48 = &__block_descriptor_tmp_273_0;
    v49 = a3;
    v28 = *(&v54 + 1);
    if (*(&v54 + 1) == v55)
    {
      v29 = v37;
    }

    else
    {
      v29 = v37;
      while (*(*v28 + 8) != 17)
      {
        if (++v28 == v55)
        {
          goto LABEL_37;
        }
      }
    }

    if (v28 == v55)
    {
LABEL_37:
      v31 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(&v54, 17);
      v27 = v47;
    }

    else
    {
      if (!v30)
      {
        __cxa_bad_cast();
      }

      v31 = v30 + 12;
    }

    v27(v46, v31);
    v41 = a1 + 136;
    v42 = QMIServiceMsg::create();
    v43 = 25000;
    v44 = 0;
    v45 = 0;
    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 1174405120;
    v38[2] = ___ZN4coex16QMICommandDriver26setScanFreqBandFilter_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2;
    v38[3] = &__block_descriptor_tmp_277;
    v38[4] = a1;
    v32 = *v29;
    if (*v29)
    {
      v32 = _Block_copy(v32);
    }

    v33 = *(v29 + 8);
    v39 = v32;
    object = v33;
    if (v33)
    {
      dispatch_retain(v33);
    }

    *&aBlock = MEMORY[0x29EDCA5F8];
    *(&aBlock + 1) = 0x40000000;
    v59 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21SetScanFreqBandFilter8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
    v60 = &unk_29EE60248;
    v61 = v38;
    v45 = _Block_copy(&aBlock);
    qmi::Client::send();
    if (v45)
    {
      _Block_release(v45);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v39)
    {
      _Block_release(v39);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    qmi::MutableMessageBase::~MutableMessageBase(&v54);
    CFRelease(v10);
  }

  return MEMORY[0x29C268420](v57);
}

void sub_296F753A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void coex::QMICommandDriver::setWiFiStatus_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x28uLL);
  v7 = xmmword_296FC0F30;
  strcpy(__p, "Setting WiFi status is not supported");
  CreateError();
  operator delete(__p);
  v5 = 0xAAAAAAAAAAAAAAAALL;
  CFRetain(0xAAAAAAAAAAAAAAAALL);
  v4 = 0;
  coex::CommandDriver::Callback::operator()(a3, &v5, &v4);
  CFRelease(0xAAAAAAAAAAAAAAAALL);
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_296F7554C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setLAAConfig_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3, uint64_t a4)
{
  v88 = *MEMORY[0x29EDCA608];
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v72 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v72;
    _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Setting LAA config with: %@", &aBlock, 0xCu);
  }

  v83[0] = 0xAAAAAAAAAAAAAAAALL;
  v83[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v83, *a2);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v8;
  v82 = v8;
  qmi::MutableMessageBase::MutableMessageBase(&v81);
  v9 = *(&v81 + 1);
  v10 = v82;
  v11 = *(&v81 + 1);
  if (*(&v81 + 1) != v82)
  {
    v11 = *(&v81 + 1);
    while (*(*v11 + 8) != 1)
    {
      if (++v11 == v82)
      {
        goto LABEL_11;
      }
    }
  }

  if (v11 == v82)
  {
LABEL_11:
    v14 = operator new(0x10uLL);
    v15 = v14;
    v14[4] = 1;
    *v14 = &unk_2A1E1E158;
    if (v10 >= *(&v82 + 1))
    {
      v17 = v10 - v9;
      v18 = (v10 - v9) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v82 + 1) - v9;
      if ((*(&v82 + 1) - v9) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = operator new(8 * v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[8 * v18];
      *v23 = v15;
      v16 = v23 + 8;
      memcpy(v22, v9, v17);
      *(&v81 + 1) = v22;
      *&v82 = v16;
      *(&v82 + 1) = &v22[8 * v21];
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *v10 = v14;
      v16 = v10 + 8;
    }

    v13 = v15 + 9;
    *&v82 = v16;
  }

  else
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 9;
  }

  *v13 = ctu::cf::map_adapter::getInt(v83, *MEMORY[0x29EDC8870]);
  v24 = *(&v81 + 1);
  v25 = v82;
  v26 = *(&v81 + 1);
  if (*(&v81 + 1) != v82)
  {
    v26 = *(&v81 + 1);
    while (*(*v26 + 8) != 2)
    {
      if (++v26 == v82)
      {
        goto LABEL_34;
      }
    }
  }

  if (v26 == v82)
  {
LABEL_34:
    v29 = operator new(0x10uLL);
    v30 = v29;
    v29[4] = 2;
    *v29 = &unk_2A1E1E1A8;
    if (v25 >= *(&v82 + 1))
    {
      v32 = v25 - v24;
      v33 = (v25 - v24) >> 3;
      v34 = v33 + 1;
      if ((v33 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v35 = *(&v82 + 1) - v24;
      if ((*(&v82 + 1) - v24) >> 2 > v34)
      {
        v34 = v35 >> 2;
      }

      if (v35 >= 0x7FFFFFFFFFFFFFF8)
      {
        v36 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v36 = v34;
      }

      if (v36)
      {
        if (v36 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v37 = operator new(8 * v36);
      }

      else
      {
        v37 = 0;
      }

      v38 = &v37[8 * v33];
      *v38 = v30;
      v31 = v38 + 8;
      memcpy(v37, v24, v32);
      *(&v81 + 1) = v37;
      *&v82 = v31;
      *(&v82 + 1) = &v37[8 * v36];
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v25 = v29;
      v31 = v25 + 8;
    }

    v28 = v30 + 9;
    *&v82 = v31;
  }

  else
  {
    if (!v27)
    {
      __cxa_bad_cast();
    }

    v28 = v27 + 9;
  }

  *v28 = ctu::cf::map_adapter::getInt(v83, *MEMORY[0x29EDC88C8]);
  v39 = *(&v81 + 1);
  v40 = v82;
  v41 = *(&v81 + 1);
  if (*(&v81 + 1) != v82)
  {
    v41 = *(&v81 + 1);
    while (*(*v41 + 8) != 3)
    {
      if (++v41 == v82)
      {
        goto LABEL_57;
      }
    }
  }

  if (v41 == v82)
  {
LABEL_57:
    v44 = operator new(0x10uLL);
    v44[8] = 3;
    *v44 = &unk_2A1E1E1F8;
    *(v44 + 3) = 0;
    v43 = v44 + 12;
    if (v40 >= *(&v82 + 1))
    {
      v46 = v40 - v39;
      v47 = (v40 - v39) >> 3;
      v48 = v47 + 1;
      if ((v47 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v49 = *(&v82 + 1) - v39;
      if ((*(&v82 + 1) - v39) >> 2 > v48)
      {
        v48 = v49 >> 2;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFF8)
      {
        v50 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v48;
      }

      if (v50)
      {
        if (v50 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v51 = v44;
        v52 = operator new(8 * v50);
        v44 = v51;
      }

      else
      {
        v52 = 0;
      }

      v53 = &v52[8 * v47];
      *v53 = v44;
      v45 = v53 + 8;
      memcpy(v52, v39, v46);
      *(&v81 + 1) = v52;
      *&v82 = v45;
      *(&v82 + 1) = &v52[8 * v50];
      if (v39)
      {
        operator delete(v39);
      }
    }

    else
    {
      *v40 = v44;
      v45 = v40 + 8;
    }

    *&v82 = v45;
  }

  else
  {
    if (!v42)
    {
      __cxa_bad_cast();
    }

    v43 = v42 + 12;
  }

  *v43 = ctu::cf::map_adapter::getInt(v83, *MEMORY[0x29EDC8838]);
  v54 = *(&v81 + 1);
  v55 = v82;
  v56 = *(&v81 + 1);
  if (*(&v81 + 1) != v82)
  {
    v56 = *(&v81 + 1);
    while (*(*v56 + 8) != 4)
    {
      if (++v56 == v82)
      {
        goto LABEL_80;
      }
    }
  }

  if (v56 == v82)
  {
LABEL_80:
    v59 = operator new(0x10uLL);
    v59[8] = 4;
    *v59 = &unk_2A1E1E248;
    *(v59 + 3) = 0;
    v58 = v59 + 12;
    if (v55 >= *(&v82 + 1))
    {
      v61 = v55 - v54;
      v62 = (v55 - v54) >> 3;
      v63 = v62 + 1;
      if ((v62 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v64 = *(&v82 + 1) - v54;
      if ((*(&v82 + 1) - v54) >> 2 > v63)
      {
        v63 = v64 >> 2;
      }

      if (v64 >= 0x7FFFFFFFFFFFFFF8)
      {
        v65 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v65 = v63;
      }

      if (v65)
      {
        if (v65 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v66 = v59;
        v67 = operator new(8 * v65);
        v59 = v66;
      }

      else
      {
        v67 = 0;
      }

      v68 = &v67[8 * v62];
      *v68 = v59;
      v60 = v68 + 8;
      memcpy(v67, v54, v61);
      *(&v81 + 1) = v67;
      *&v82 = v60;
      *(&v82 + 1) = &v67[8 * v65];
      if (v54)
      {
        operator delete(v54);
      }
    }

    else
    {
      *v55 = v59;
      v60 = v55 + 8;
    }

    *&v82 = v60;
  }

  else
  {
    if (!v57)
    {
      __cxa_bad_cast();
    }

    v58 = v57 + 12;
  }

  *v58 = ctu::cf::map_adapter::getInt(v83, *MEMORY[0x29EDC8948]);
  v76 = a1 + 136;
  v77 = QMIServiceMsg::create();
  v78 = 25000;
  v79 = 0;
  v80 = 0;
  v73[0] = MEMORY[0x29EDCA5F8];
  v73[1] = 1174405120;
  v73[2] = ___ZN4coex16QMICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v73[3] = &__block_descriptor_tmp_261;
  v73[4] = a1;
  v69 = *a4;
  if (*a4)
  {
    v69 = _Block_copy(v69);
  }

  v70 = *(a4 + 8);
  v74 = v69;
  object = v70;
  if (v70)
  {
    dispatch_retain(v70);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v85 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm15SetLaaParamsReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v86 = &unk_29EE601F8;
  v87 = v73;
  v80 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v80)
  {
    _Block_release(v80);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v74)
  {
    _Block_release(v74);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v81);
  return MEMORY[0x29C268420](v83);
}

void sub_296F75DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setTimeShareConfig_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v146 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v126 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v126;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Setting Time share config with: %@", &aBlock, 0xCu);
  }

  v141[0] = 0xAAAAAAAAAAAAAAAALL;
  v141[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v141, *a2);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v139 = v6;
  v140 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v139);
  v7 = *(&v139 + 1);
  if (*(&v139 + 1) != v140)
  {
    while (*(*v7 + 8) != 1)
    {
      if (++v7 == v140)
      {
        goto LABEL_10;
      }
    }
  }

  if (v7 == v140)
  {
LABEL_10:
    v9 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v139, 1);
  }

  else
  {
    if (!v8)
    {
      __cxa_bad_cast();
    }

    v9 = v8 + 9;
  }

  *v9 = ctu::cf::map_adapter::getBool(v141, *MEMORY[0x29EDC8928]);
  v10 = *(&v139 + 1);
  if (*(&v139 + 1) != v140)
  {
    while (*(*v10 + 8) != 16)
    {
      if (++v10 == v140)
      {
        goto LABEL_18;
      }
    }
  }

  if (v10 == v140)
  {
LABEL_18:
    v12 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(&v139, 16);
  }

  else
  {
    if (!v11)
    {
      __cxa_bad_cast();
    }

    v12 = v11 + 12;
  }

  *v12 = ctu::cf::map_adapter::getInt(v141, *MEMORY[0x29EDC8960]);
  v13 = *(&v139 + 1);
  v14 = v140;
  v15 = *(&v139 + 1);
  v127 = a1;
  if (*(&v139 + 1) != v140)
  {
    v15 = *(&v139 + 1);
    while (*(*v15 + 8) != 18)
    {
      if (++v15 == v140)
      {
        goto LABEL_27;
      }
    }
  }

  if (v15 == v140)
  {
LABEL_27:
    v18 = operator new(0x18uLL);
    v18[8] = 18;
    *v18 = &unk_2A1E1E3B8;
    *(v18 + 2) = 0;
    v17 = v18 + 16;
    if (v14 >= *(&v140 + 1))
    {
      v20 = v14 - v13;
      v21 = (v14 - v13) >> 3;
      v22 = v21 + 1;
      if ((v21 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v23 = *(&v140 + 1) - v13;
      if ((*(&v140 + 1) - v13) >> 2 > v22)
      {
        v22 = v23 >> 2;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFF8)
      {
        v24 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      if (v24)
      {
        if (v24 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v25 = v18;
        v26 = operator new(8 * v24);
        v18 = v25;
      }

      else
      {
        v26 = 0;
      }

      v27 = &v26[8 * v21];
      *v27 = v18;
      v19 = v27 + 8;
      memcpy(v26, v13, v20);
      *(&v139 + 1) = v26;
      *&v140 = v19;
      *(&v140 + 1) = &v26[8 * v24];
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      *v14 = v18;
      v19 = v14 + 8;
    }

    *&v140 = v19;
  }

  else
  {
    if (!v16)
    {
      __cxa_bad_cast();
    }

    v17 = v16 + 16;
  }

  *v17 = ctu::cf::map_adapter::getInt(v141, *MEMORY[0x29EDC8958]);
  v28 = *(&v139 + 1);
  v29 = v140;
  v30 = *(&v139 + 1);
  if (*(&v139 + 1) != v140)
  {
    v30 = *(&v139 + 1);
    while (*(*v30 + 8) != 19)
    {
      if (++v30 == v140)
      {
        goto LABEL_50;
      }
    }
  }

  if (v30 == v140)
  {
LABEL_50:
    v33 = operator new(0x10uLL);
    v33[8] = 19;
    *v33 = &unk_2A1E1E408;
    *(v33 + 5) = 0;
    v32 = v33 + 10;
    if (v29 >= *(&v140 + 1))
    {
      v35 = v29 - v28;
      v36 = (v29 - v28) >> 3;
      v37 = v36 + 1;
      if ((v36 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v38 = *(&v140 + 1) - v28;
      if ((*(&v140 + 1) - v28) >> 2 > v37)
      {
        v37 = v38 >> 2;
      }

      if (v38 >= 0x7FFFFFFFFFFFFFF8)
      {
        v39 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v39 = v37;
      }

      if (v39)
      {
        if (v39 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v40 = v33;
        v41 = operator new(8 * v39);
        v33 = v40;
      }

      else
      {
        v41 = 0;
      }

      v42 = &v41[8 * v36];
      *v42 = v33;
      v34 = v42 + 8;
      memcpy(v41, v28, v35);
      *(&v139 + 1) = v41;
      *&v140 = v34;
      *(&v140 + 1) = &v41[8 * v39];
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v29 = v33;
      v34 = v29 + 8;
    }

    *&v140 = v34;
  }

  else
  {
    if (!v31)
    {
      __cxa_bad_cast();
    }

    v32 = v31 + 10;
  }

  *v32 = ctu::cf::map_adapter::getInt(v141, *MEMORY[0x29EDC8A40]);
  v43 = *(&v139 + 1);
  v44 = v140;
  v45 = *(&v139 + 1);
  if (*(&v139 + 1) != v140)
  {
    v45 = *(&v139 + 1);
    while (*(*v45 + 8) != 20)
    {
      if (++v45 == v140)
      {
        goto LABEL_73;
      }
    }
  }

  if (v45 == v140)
  {
LABEL_73:
    v48 = operator new(0x10uLL);
    v48[8] = 20;
    *v48 = &unk_2A1E1E458;
    *(v48 + 5) = 0;
    v47 = v48 + 10;
    if (v44 >= *(&v140 + 1))
    {
      v50 = v44 - v43;
      v51 = (v44 - v43) >> 3;
      v52 = v51 + 1;
      if ((v51 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v53 = *(&v140 + 1) - v43;
      if ((*(&v140 + 1) - v43) >> 2 > v52)
      {
        v52 = v53 >> 2;
      }

      if (v53 >= 0x7FFFFFFFFFFFFFF8)
      {
        v54 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v54 = v52;
      }

      if (v54)
      {
        if (v54 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v55 = v48;
        v56 = operator new(8 * v54);
        v48 = v55;
      }

      else
      {
        v56 = 0;
      }

      v57 = &v56[8 * v51];
      *v57 = v48;
      v49 = v57 + 8;
      memcpy(v56, v43, v50);
      *(&v139 + 1) = v56;
      *&v140 = v49;
      *(&v140 + 1) = &v56[8 * v54];
      if (v43)
      {
        operator delete(v43);
      }
    }

    else
    {
      *v44 = v48;
      v49 = v44 + 8;
    }

    *&v140 = v49;
  }

  else
  {
    if (!v46)
    {
      __cxa_bad_cast();
    }

    v47 = v46 + 10;
  }

  *v47 = ctu::cf::map_adapter::getInt(v141, *MEMORY[0x29EDC8A60]);
  v59 = *(&v139 + 1);
  v58 = v140;
  v60 = *(&v139 + 1);
  if (*(&v139 + 1) != v140)
  {
    v60 = *(&v139 + 1);
    while (*(*v60 + 8) != 21)
    {
      if (++v60 == v140)
      {
        goto LABEL_96;
      }
    }
  }

  if (v60 == v140)
  {
LABEL_96:
    v63 = operator new(0x10uLL);
    v64 = v63;
    v63[4] = 21;
    *v63 = &unk_2A1E1E4A8;
    if (v58 >= *(&v140 + 1))
    {
      v66 = v58 - v59;
      v67 = (v58 - v59) >> 3;
      v68 = v67 + 1;
      if ((v67 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v69 = *(&v140 + 1) - v59;
      if ((*(&v140 + 1) - v59) >> 2 > v68)
      {
        v68 = v69 >> 2;
      }

      if (v69 >= 0x7FFFFFFFFFFFFFF8)
      {
        v70 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v70 = v68;
      }

      if (v70)
      {
        if (v70 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v71 = operator new(8 * v70);
      }

      else
      {
        v71 = 0;
      }

      v72 = &v71[8 * v67];
      *v72 = v64;
      v65 = v72 + 8;
      memcpy(v71, v59, v66);
      *(&v139 + 1) = v71;
      *&v140 = v65;
      *(&v140 + 1) = &v71[8 * v70];
      if (v59)
      {
        operator delete(v59);
      }
    }

    else
    {
      *v58 = v63;
      v65 = v58 + 8;
    }

    v62 = v64 + 9;
    *&v140 = v65;
  }

  else
  {
    if (!v61)
    {
      __cxa_bad_cast();
    }

    v62 = v61 + 9;
  }

  *v62 = ctu::cf::map_adapter::getInt(v141, *MEMORY[0x29EDC8AB0]);
  theArray = 0xAAAAAAAAAAAAAAAALL;
  v73 = ctu::cf::map_adapter::copyCFArrayRef(v141, *MEMORY[0x29EDC8AC8]);
  theArray = v73;
  v74 = v127;
  if (!v73)
  {
    v79 = 0;
    goto LABEL_181;
  }

  Count = CFArrayGetCount(v73);
  if (Count >= 1)
  {
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v79 = 0;
    v129 = *MEMORY[0x29EDC8778];
    v80 = *MEMORY[0x29EDC8658];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v76);
      v83 = ValueAtIndex;
      if (!ValueAtIndex)
      {
        goto LABEL_116;
      }

      v84 = CFGetTypeID(ValueAtIndex);
      if (v84 != CFDictionaryGetTypeID())
      {
        goto LABEL_116;
      }

      cf = v83;
      CFRetain(v83);
      *&aBlock = 0xAAAAAAAAAAAAAAAALL;
      *(&aBlock + 1) = 0xAAAAAAAAAAAAAAAALL;
      v85 = ctu::cf::dict_adapter::dict_adapter(&aBlock, v83);
      Int = ctu::cf::map_adapter::getInt(v85, v129);
      v87 = ctu::cf::map_adapter::getInt(&aBlock, v80);
      v88 = v87;
      if (v77 >= v78)
      {
        break;
      }

      *v77++ = Int | (v87 << 32);
      MEMORY[0x29C268420](&aBlock);
      v81 = cf;
      if (cf)
      {
        goto LABEL_115;
      }

LABEL_116:
      if (Count == ++v76)
      {
        goto LABEL_136;
      }
    }

    v89 = v77 - v79;
    v90 = v77 - v79;
    v91 = v90 + 1;
    if ((v90 + 1) >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if ((v78 - v79) >> 2 > v91)
    {
      v91 = (v78 - v79) >> 2;
    }

    if ((v78 - v79) >= 0x7FFFFFFFFFFFFFF8)
    {
      v92 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v92 = v91;
    }

    if (v92)
    {
      if (v92 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v93 = operator new(8 * v92);
    }

    else
    {
      v93 = 0;
    }

    v94 = &v93[8 * v90];
    v78 = &v93[8 * v92];
    *v94 = Int | (v88 << 32);
    v77 = v94 + 1;
    memcpy(v93, v79, v89);
    if (v79)
    {
      operator delete(v79);
    }

    v79 = v93;
    MEMORY[0x29C268420](&aBlock);
    v81 = cf;
    if (!cf)
    {
      goto LABEL_116;
    }

LABEL_115:
    CFRelease(v81);
    goto LABEL_116;
  }

  v79 = 0;
  v77 = 0;
LABEL_136:
  v95 = *(&v139 + 1);
  v96 = v140;
  v97 = *(&v139 + 1);
  if (*(&v139 + 1) != v140)
  {
    v97 = *(&v139 + 1);
    while (*(*v97 + 8) != 17)
    {
      if (++v97 == v140)
      {
        goto LABEL_150;
      }
    }
  }

  if (v97 == v140)
  {
LABEL_150:
    v107 = operator new(0x28uLL);
    v107[8] = 17;
    *v107 = &unk_2A1E1E4F8;
    *(v107 + 2) = 0;
    v99 = v107 + 16;
    *(v107 + 3) = 0;
    *(v107 + 4) = 0;
    if (v96 >= *(&v140 + 1))
    {
      v109 = v96 - v95;
      v110 = (v96 - v95) >> 3;
      v111 = v110 + 1;
      if ((v110 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v112 = *(&v140 + 1) - v95;
      if ((*(&v140 + 1) - v95) >> 2 > v111)
      {
        v111 = v112 >> 2;
      }

      if (v112 >= 0x7FFFFFFFFFFFFFF8)
      {
        v113 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v113 = v111;
      }

      if (v113)
      {
        if (v113 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v114 = v107;
        v115 = operator new(8 * v113);
        v107 = v114;
      }

      else
      {
        v115 = 0;
      }

      v117 = &v115[8 * v110];
      *v117 = v107;
      v108 = v117 + 8;
      memcpy(v115, v95, v109);
      *(&v139 + 1) = v115;
      *&v140 = v108;
      *(&v140 + 1) = &v115[8 * v113];
      if (v95)
      {
        operator delete(v95);
      }
    }

    else
    {
      *v96 = v107;
      v108 = v96 + 8;
    }

    *&v140 = v108;
    v100 = v77 - v79;
    v101 = *(v99 + 2);
    v102 = *v99;
    if (v101 - *v99 >= (v77 - v79))
    {
LABEL_144:
      v103 = *(v99 + 1);
      v104 = v103 - v102;
      if (v103 - v102 >= v100)
      {
        if (v77 != v79)
        {
          v116 = v102;
          memmove(v102, v79, v100);
          v102 = v116;
        }

        v106 = &v102[v100];
      }

      else
      {
        v105 = (v79 + v104);
        if (v103 != v102)
        {
          memmove(v102, v79, v104);
          v103 = *(v99 + 1);
        }

        if (v77 != v105)
        {
          memmove(v103, v105, v77 - v105);
        }

        v106 = &v103[v77 - v105];
      }

      goto LABEL_180;
    }
  }

  else
  {
    if (!v98)
    {
      __cxa_bad_cast();
    }

    v99 = (v98 + 2);
    v100 = v77 - v79;
    v101 = v98[4];
    v102 = v98[2];
    if (v101 - v102 >= (v77 - v79))
    {
      goto LABEL_144;
    }
  }

  v118 = v100 >> 3;
  if (v102)
  {
    *(v99 + 1) = v102;
    operator delete(v102);
    v101 = 0;
    *v99 = 0;
    *(v99 + 1) = 0;
    *(v99 + 2) = 0;
  }

  if (v118 >> 61)
  {
    goto LABEL_198;
  }

  v119 = v101 >> 2;
  if (v101 >> 2 <= v118)
  {
    v119 = v100 >> 3;
  }

  v120 = v101 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v119;
  if (v120 >> 61)
  {
LABEL_198:
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v121 = operator new(8 * v120);
  v122 = v121;
  *v99 = v121;
  *(v99 + 1) = v121;
  *(v99 + 2) = &v121[8 * v120];
  if (v77 != v79)
  {
    memcpy(v121, v79, v100);
  }

  v106 = &v122[v100];
LABEL_180:
  *(v99 + 1) = v106;
  v74 = v127;
LABEL_181:
  cf = (v74 + 136);
  v134 = QMIServiceMsg::create();
  v135 = 25000;
  v136 = 0;
  v137 = 0;
  v130[0] = MEMORY[0x29EDCA5F8];
  v130[1] = 1174405120;
  v130[2] = ___ZN4coex16QMICommandDriver23setTimeShareConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v130[3] = &__block_descriptor_tmp_286;
  v130[4] = v74;
  v123 = *a3;
  if (*a3)
  {
    v123 = _Block_copy(v123);
  }

  v124 = *(a3 + 8);
  v131 = v123;
  object = v124;
  if (v124)
  {
    dispatch_retain(v124);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v143 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm18ConfigTimeShareReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v144 = &unk_29EE60298;
  v145 = v130;
  v137 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v137)
  {
    _Block_release(v137);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v131)
  {
    _Block_release(v131);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  if (v79)
  {
    operator delete(v79);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v139);
  return MEMORY[0x29C268420](v141);
}

void sub_296F76CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setWCI2TxAntMap_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v99 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v77 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v77;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Setting Tx antenna map with: %@", &aBlock, 0xCu);
  }

  v94[0] = 0xAAAAAAAAAAAAAAAALL;
  v94[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v94, *a2);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v92 = v5;
  v93 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v92);
  v6 = *(&v92 + 1);
  if (*(&v92 + 1) != v93)
  {
    while (*(*v6 + 8) != 1)
    {
      if (++v6 == v93)
      {
        goto LABEL_10;
      }
    }
  }

  if (v6 == v93)
  {
LABEL_10:
    v8 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v92, 1);
  }

  else
  {
    if (!v7)
    {
      __cxa_bad_cast();
    }

    v8 = v7 + 9;
  }

  v78 = a2;
  *v8 = ctu::cf::map_adapter::getBool(v94, *MEMORY[0x29EDC8850]);
  v10 = *(&v92 + 1);
  v9 = v93;
  v11 = *(&v92 + 1);
  if (*(&v92 + 1) != v93)
  {
    v11 = *(&v92 + 1);
    while (*(*v11 + 8) != 17)
    {
      if (++v11 == v93)
      {
        goto LABEL_19;
      }
    }
  }

  if (v11 == v93)
  {
LABEL_19:
    v14 = operator new(0x10uLL);
    v15 = v14;
    v14[4] = 17;
    *v14 = &unk_2A1E1E548;
    if (v9 >= *(&v93 + 1))
    {
      v17 = v9 - v10;
      v18 = (v9 - v10) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v20 = *(&v93 + 1) - v10;
      if ((*(&v93 + 1) - v10) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        if (v21 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v22 = operator new(8 * v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = &v22[8 * v18];
      *v23 = v15;
      v16 = v23 + 8;
      memcpy(v22, v10, v17);
      *(&v92 + 1) = v22;
      *&v93 = v16;
      *(&v93 + 1) = &v22[8 * v21];
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      *v9 = v14;
      v16 = v9 + 8;
    }

    v13 = v15 + 9;
    *&v93 = v16;
  }

  else
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 9;
  }

  *v13 = ctu::cf::map_adapter::getInt(v94, *MEMORY[0x29EDC8938]);
  v24 = ctu::cf::map_adapter::copyCFArrayRef(v94, *MEMORY[0x29EDC8A20]);
  v91 = v24;
  theArray = v24;
  if (v24)
  {
    v26 = *(&v92 + 1);
    v25 = v93;
    v27 = *(&v92 + 1);
    if (*(&v92 + 1) != v93)
    {
      v27 = *(&v92 + 1);
      while (*(*v27 + 8) != 16)
      {
        if (++v27 == v93)
        {
          goto LABEL_43;
        }
      }
    }

    if (v27 == v93)
    {
LABEL_43:
      v31 = operator new(0x28uLL);
      v31[8] = 16;
      *v31 = &unk_2A1E1E598;
      *(v31 + 2) = 0;
      v29 = v31 + 16;
      *(v31 + 3) = 0;
      *(v31 + 4) = 0;
      if (v25 >= *(&v93 + 1))
      {
        v33 = v25 - v26;
        v34 = (v25 - v26) >> 3;
        v35 = v34 + 1;
        if ((v34 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v36 = *(&v93 + 1) - v26;
        if ((*(&v93 + 1) - v26) >> 2 > v35)
        {
          v35 = v36 >> 2;
        }

        if (v36 >= 0x7FFFFFFFFFFFFFF8)
        {
          v37 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v35;
        }

        if (v37)
        {
          if (v37 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v38 = v31;
          v39 = operator new(8 * v37);
          v31 = v38;
        }

        else
        {
          v39 = 0;
        }

        v40 = &v39[8 * v34];
        *v40 = v31;
        v32 = v40 + 8;
        memcpy(v39, v26, v33);
        *(&v92 + 1) = v39;
        *&v93 = v32;
        *(&v93 + 1) = &v39[8 * v37];
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v25 = v31;
        v32 = v25 + 8;
      }

      v30 = theArray;
      *&v93 = v32;
    }

    else
    {
      if (!v28)
      {
        __cxa_bad_cast();
      }

      v29 = v28 + 16;
      v30 = v24;
    }

    Count = CFArrayGetCount(v30);
    v24 = theArray;
    if (Count >= 1)
    {
      v42 = 0;
      v81 = *MEMORY[0x29EDC8A18];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, v42);
        v45 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v46 = CFGetTypeID(ValueAtIndex);
          if (v46 == CFDictionaryGetTypeID())
          {
            v86 = v45;
            CFRetain(v45);
            *&aBlock = 0xAAAAAAAAAAAAAAAALL;
            *(&aBlock + 1) = 0xAAAAAAAAAAAAAAAALL;
            v47 = ctu::cf::dict_adapter::dict_adapter(&aBlock, v45);
            Int = ctu::cf::map_adapter::getInt(v47, v81);
            v49 = Int;
            v51 = *(v29 + 1);
            v50 = *(v29 + 2);
            if (v51 < v50)
            {
              *v51 = Int;
              v43 = (v51 + 1);
            }

            else
            {
              v52 = *v29;
              v53 = &v51[-*v29];
              v54 = v53 + 1;
              if ((v53 + 1) < 0)
              {
                std::vector<std::string>::__throw_length_error[abi:ne200100]();
              }

              v55 = v50 - v52;
              if (2 * v55 > v54)
              {
                v54 = 2 * v55;
              }

              if (v55 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v56 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v56 = v54;
              }

              if (v56)
              {
                v57 = operator new(v56);
              }

              else
              {
                v57 = 0;
              }

              v57[v53] = v49;
              v43 = &v57[v53 + 1];
              memcpy(v57, v52, v53);
              *v29 = v57;
              *(v29 + 1) = v43;
              *(v29 + 2) = &v57[v56];
              if (v52)
              {
                operator delete(v52);
              }
            }

            *(v29 + 1) = v43;
            MEMORY[0x29C268420](&aBlock);
            CFRelease(v45);
            v24 = theArray;
          }
        }

        ++v42;
      }

      while (Count != v42);
    }
  }

  v58 = *MEMORY[0x29EDC8A50];
  if (CFDictionaryContainsKey(*v78, *MEMORY[0x29EDC8A50]))
  {
    v60 = *(&v92 + 1);
    v59 = v93;
    v61 = *(&v92 + 1);
    if (*(&v92 + 1) != v93)
    {
      v61 = *(&v92 + 1);
      while (*(*v61 + 8) != 18)
      {
        if (++v61 == v93)
        {
          goto LABEL_86;
        }
      }
    }

    if (v61 == v93)
    {
LABEL_86:
      v64 = operator new(0x10uLL);
      v65 = v64;
      v64[4] = 18;
      *v64 = &unk_2A1E1E5E8;
      if (v59 >= *(&v93 + 1))
      {
        v67 = v59 - v60;
        v68 = (v59 - v60) >> 3;
        v69 = v68 + 1;
        if ((v68 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v70 = *(&v93 + 1) - v60;
        if ((*(&v93 + 1) - v60) >> 2 > v69)
        {
          v69 = v70 >> 2;
        }

        if (v70 >= 0x7FFFFFFFFFFFFFF8)
        {
          v71 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v71 = v69;
        }

        if (v71)
        {
          if (v71 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v72 = operator new(8 * v71);
        }

        else
        {
          v72 = 0;
        }

        v73 = &v72[8 * v68];
        *v73 = v65;
        v66 = v73 + 8;
        memcpy(v72, v60, v67);
        *(&v92 + 1) = v72;
        *&v93 = v66;
        *(&v93 + 1) = &v72[8 * v71];
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v59 = v64;
        v66 = v59 + 8;
      }

      v63 = v65 + 9;
      *&v93 = v66;
    }

    else
    {
      if (!v62)
      {
        __cxa_bad_cast();
      }

      v63 = v62 + 9;
    }

    *v63 = ctu::cf::map_adapter::getBool(v94, v58);
    v24 = theArray;
  }

  v86 = (a1 + 136);
  v87 = QMIServiceMsg::create();
  v88 = 25000;
  v89 = 0;
  v90 = 0;
  v83[0] = MEMORY[0x29EDCA5F8];
  v83[1] = 1174405120;
  v83[2] = ___ZN4coex16QMICommandDriver20setWCI2TxAntMap_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v83[3] = &__block_descriptor_tmp_290;
  v83[4] = a1;
  v74 = *a3;
  if (*a3)
  {
    v74 = _Block_copy(v74);
  }

  v75 = *(a3 + 8);
  v84 = v74;
  object = v75;
  if (v75)
  {
    dispatch_retain(v75);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v96 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm15SetWCI2TxAntMap8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v97 = &unk_29EE602C0;
  v98 = v83;
  v90 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v90)
  {
    _Block_release(v90);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v84)
  {
    _Block_release(v84);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v92);
  return MEMORY[0x29C268420](v94);
}

void sub_296F776F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setAntBlocking_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v86 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v56 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v56;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Setting Ant blocking with: %@", &aBlock, 0xCu);
  }

  v78[0] = 0xAAAAAAAAAAAAAAAALL;
  v78[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v78, *a2);
  v58 = a1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v76 = v6;
  v77 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v76);
  v7 = ctu::cf::map_adapter::copyCFArrayRef(v78, *MEMORY[0x29EDC89A8]);
  v75 = v7;
  if (v7)
  {
    v8 = *(&v76 + 1);
    v9 = v77;
    v10 = *(&v76 + 1);
    if (*(&v76 + 1) != v77)
    {
      v10 = *(&v76 + 1);
      while (*(*v10 + 8) != 16)
      {
        if (++v10 == v77)
        {
          goto LABEL_12;
        }
      }
    }

    if (v10 == v77)
    {
LABEL_12:
      v12 = operator new(0x28uLL);
      v12[8] = 16;
      *v12 = &unk_2A1E1E638;
      *(v12 + 2) = 0;
      v13 = v12 + 16;
      *(v12 + 3) = 0;
      *(v12 + 4) = 0;
      if (v9 >= *(&v77 + 1))
      {
        v15 = v12 + 16;
        v16 = v9 - v8;
        v17 = (v9 - v8) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = *(&v77 + 1) - v8;
        if ((*(&v77 + 1) - v8) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v18;
        if (v20)
        {
          if (v20 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = v12;
          v22 = operator new(8 * v20);
          v12 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v17];
        *v23 = v12;
        v14 = v23 + 8;
        memcpy(v22, v8, v16);
        *(&v76 + 1) = v22;
        *&v77 = v14;
        *(&v77 + 1) = &v22[8 * v20];
        if (v8)
        {
          operator delete(v8);
        }

        v13 = v15;
      }

      else
      {
        *v9 = v12;
        v14 = v9 + 8;
      }

      v63 = v13;
      *&v77 = v14;
    }

    else
    {
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v63 = v11 + 16;
    }

    Count = CFArrayGetCount(v7);
    v25 = Count;
    if (Count >= 1)
    {
      v26 = 0;
      v61 = *MEMORY[0x29EDC8818];
      v62 = *MEMORY[0x29EDC87C0];
      v60 = Count;
      v57 = v7;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v26);
        v28 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v29 = CFGetTypeID(ValueAtIndex);
          if (v29 == CFDictionaryGetTypeID())
          {
            break;
          }
        }

LABEL_31:
        if (++v26 == v25)
        {
          goto LABEL_67;
        }
      }

      v81 = v28;
      CFRetain(v28);
      v70 = 0xAAAAAAAAAAAAAAAALL;
      v71 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v70, v28);
      aBlock = 0xAAAAAAAAAAAAAA00;
      v83 = 0;
      v84 = 0;
      Int = ctu::cf::map_adapter::getInt(&v70, v62);
      LOBYTE(aBlock) = Int;
      v31 = ctu::cf::map_adapter::copyCFArrayRef(&v70, v61);
      v32 = v31;
      v80 = v31;
      v64 = Int;
      if (v31 && (v33 = CFArrayGetCount(v31), v33 >= 1))
      {
        v65 = 0;
        __src = 0;
        v34 = 0;
        for (i = 0; i != v33; ++i)
        {
          v79 = 0;
          v36 = CFArrayGetValueAtIndex(v32, i);
          v37 = v36;
          if (v36)
          {
            v38 = CFGetTypeID(v36);
            if (v38 == CFNumberGetTypeID())
            {
              if (ctu::cf::assign(&v79, v37, v39))
              {
                if (v34 < v65)
                {
                  *v34 = v79;
                  v34 += 4;
                }

                else
                {
                  v40 = v34 - __src;
                  v41 = (v34 - __src) >> 2;
                  v42 = v41 + 1;
                  if ((v41 + 1) >> 62)
                  {
                    v83 = v34;
                    v84 = v65;
                    *(&aBlock + 1) = __src;
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  if ((v65 - __src) >> 1 > v42)
                  {
                    v42 = (v65 - __src) >> 1;
                  }

                  if ((v65 - __src) >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v43 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v43 = v42;
                  }

                  if (v43)
                  {
                    if (v43 >> 62)
                    {
                      v83 = v34;
                      v84 = v65;
                      *(&aBlock + 1) = __src;
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v44 = operator new(4 * v43);
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v45 = &v44[4 * v41];
                  v65 = &v44[4 * v43];
                  *v45 = v79;
                  v34 = v45 + 4;
                  memcpy(v44, __src, v40);
                  if (__src)
                  {
                    operator delete(__src);
                  }

                  __src = v44;
                }
              }
            }
          }
        }

        v83 = v34;
        v84 = v65;
        *(&aBlock + 1) = __src;
        v7 = v57;
        v46 = v63;
        v47 = *(v63 + 1);
        if (v47 >= *(v63 + 2))
        {
LABEL_63:
          *(v46 + 8) = std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(v46, &aBlock);
          if (!v32)
          {
LABEL_65:
            v25 = v60;
            if (__src)
            {
              v83 = __src;
              operator delete(__src);
            }

            MEMORY[0x29C268420](&v70);
            CFRelease(v28);
            goto LABEL_31;
          }

LABEL_64:
          CFRelease(v32);
          goto LABEL_65;
        }
      }

      else
      {
        v34 = 0;
        __src = 0;
        v46 = v63;
        v47 = *(v63 + 1);
        if (v47 >= *(v63 + 2))
        {
          goto LABEL_63;
        }
      }

      *v47 = v64;
      *(v47 + 8) = 0;
      *(v47 + 16) = 0;
      *(v47 + 24) = 0;
      v49 = v34 - __src;
      v48 = v34 == __src;
      v50 = v46;
      if (!v48)
      {
        if ((v49 & 0x8000000000000000) != 0)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v51 = operator new(v49);
        *(v47 + 8) = v51;
        *(v47 + 16) = v51;
        v52 = &v51[v49];
        *(v47 + 24) = &v51[v49];
        memcpy(v51, __src, v49);
        *(v47 + 16) = v52;
      }

      *(v50 + 8) = v47 + 32;
      *(v50 + 8) = v47 + 32;
      if (!v32)
      {
        goto LABEL_65;
      }

      goto LABEL_64;
    }
  }

LABEL_67:
  v70 = v58 + 136;
  v71 = QMIServiceMsg::create();
  v72 = 25000;
  v73 = 0;
  v74 = 0;
  v67[0] = MEMORY[0x29EDCA5F8];
  v67[1] = 1174405120;
  v67[2] = ___ZN4coex16QMICommandDriver19setAntBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v67[3] = &__block_descriptor_tmp_294;
  v67[4] = v58;
  v53 = *a3;
  if (*a3)
  {
    v53 = _Block_copy(v53);
  }

  v54 = *(a3 + 8);
  v68 = v53;
  object = v54;
  if (v54)
  {
    dispatch_retain(v54);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v83 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm17SetAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v84 = &unk_29EE602E8;
  v85 = v67;
  v74 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v74)
  {
    _Block_release(v74);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v68)
  {
    _Block_release(v68);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v76);
  return MEMORY[0x29C268420](v78);
}

void sub_296F77EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F77FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(v19 - 120) = a18;
  *(v19 - 136) = a19;
  JUMPOUT(0x296F77FB4);
}

uint64_t coex::QMICommandDriver::setClientAntBlocking_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v111 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v71 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v71;
    _os_log_debug_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEBUG, "#D Setting Ant blocking with: %@", &aBlock, 0xCu);
  }

  v101[0] = 0xAAAAAAAAAAAAAAAALL;
  v101[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v101, *a2);
  v72 = a1;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99 = v6;
  v100 = v6;
  qmi::MutableMessageBase::MutableMessageBase(&v99);
  v7 = ctu::cf::map_adapter::copyCFArrayRef(v101, *MEMORY[0x29EDC8AA0]);
  v98 = v7;
  if (v7)
  {
    v8 = *(&v99 + 1);
    v9 = v100;
    v10 = *(&v99 + 1);
    if (*(&v99 + 1) != v100)
    {
      v10 = *(&v99 + 1);
      while (*(*v10 + 8) != 16)
      {
        if (++v10 == v100)
        {
          goto LABEL_12;
        }
      }
    }

    if (v10 == v100)
    {
LABEL_12:
      v13 = operator new(0x28uLL);
      v13[8] = 16;
      *v13 = &unk_2A1E1E6D8;
      *(v13 + 2) = 0;
      v12 = (v13 + 16);
      *(v13 + 3) = 0;
      *(v13 + 4) = 0;
      if (v9 >= *(&v100 + 1))
      {
        v15 = v9 - v8;
        v16 = (v9 - v8) >> 3;
        v17 = v16 + 1;
        if ((v16 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v18 = *(&v100 + 1) - v8;
        if ((*(&v100 + 1) - v8) >> 2 > v17)
        {
          v17 = v18 >> 2;
        }

        v19 = v18 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v17;
        if (v19)
        {
          if (v19 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v20 = v13;
          v21 = operator new(8 * v19);
          v13 = v20;
        }

        else
        {
          v21 = 0;
        }

        v22 = &v21[8 * v16];
        *v22 = v13;
        v14 = v22 + 8;
        memcpy(v21, v8, v15);
        *(&v99 + 1) = v21;
        *&v100 = v14;
        *(&v100 + 1) = &v21[8 * v19];
        if (v8)
        {
          operator delete(v8);
        }
      }

      else
      {
        *v9 = v13;
        v14 = v9 + 8;
      }

      *&v100 = v14;
    }

    else
    {
      if (!v11)
      {
        __cxa_bad_cast();
      }

      v12 = v11 + 16;
    }

    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v24 = 0;
      v76 = *MEMORY[0x29EDC8898];
      v77 = *MEMORY[0x29EDC8820];
      v74 = *MEMORY[0x29EDC89A8];
      v75 = *MEMORY[0x29EDC89B0];
      v81 = *MEMORY[0x29EDC87C0];
      v79 = v12;
      v80 = *MEMORY[0x29EDC8818];
      v78 = v7;
      do
      {
        v83 = v24;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, v24);
        cf = ValueAtIndex;
        if (ValueAtIndex)
        {
          v27 = CFGetTypeID(ValueAtIndex);
          if (v27 == CFDictionaryGetTypeID())
          {
            v106[2] = cf;
            CFRetain(cf);
            v106[0] = 0xAAAAAAAAAAAAAAAALL;
            v106[1] = 0xAAAAAAAAAAAAAAAALL;
            v28 = ctu::cf::dict_adapter::dict_adapter(v106, cf);
            v108 = 0;
            v109 = 0;
            v110 = 0;
            *&aBlock = 0;
            *(&aBlock + 1) = 0xAAAAAAAAAAAAAA00;
            LODWORD(aBlock) = ctu::cf::map_adapter::getInt(v28, v77);
            BYTE8(aBlock) = ctu::cf::map_adapter::getInt(v106, v76) != 0;
            DWORD1(aBlock) = ctu::cf::map_adapter::getInt(v106, v75);
            v105 = ctu::cf::map_adapter::copyCFArrayRef(v106, v74);
            theArray = v105;
            if (v105)
            {
              v86 = CFArrayGetCount(v105);
              if (v86 >= 1)
              {
                v29 = 0;
                while (1)
                {
                  v30 = CFArrayGetValueAtIndex(theArray, v29);
                  v89 = v30;
                  if (v30)
                  {
                    v31 = CFGetTypeID(v30);
                    if (v31 == CFDictionaryGetTypeID())
                    {
                      break;
                    }
                  }

LABEL_39:
                  if (++v29 == v86)
                  {
                    goto LABEL_76;
                  }
                }

                v104[2] = v89;
                CFRetain(v89);
                v104[0] = 0xAAAAAAAAAAAAAAAALL;
                v104[1] = 0xAAAAAAAAAAAAAAAALL;
                v32 = ctu::cf::dict_adapter::dict_adapter(v104, v89);
                v93 = 0xAAAAAAAAAAAAAA00;
                v95 = 0;
                v96 = 0;
                v94 = 0;
                Int = ctu::cf::map_adapter::getInt(v32, v81);
                LOBYTE(v93) = Int;
                v34 = ctu::cf::map_adapter::copyCFArrayRef(v104, v80);
                v35 = v34;
                v103 = v34;
                v82 = Int;
                if (v34 && (v36 = CFArrayGetCount(v34), v36 >= 1))
                {
                  v37 = 0;
                  v88 = 0;
                  v38 = 0;
                  for (i = 0; i != v36; ++i)
                  {
                    v40 = v37;
                    v102 = 0;
                    v41 = CFArrayGetValueAtIndex(v35, i);
                    v42 = v41;
                    if (v41 && (v43 = CFGetTypeID(v41), v43 == CFNumberGetTypeID()) && ctu::cf::assign(&v102, v42, v44))
                    {
                      v37 = v40;
                      if (v38 >= v88)
                      {
                        v45 = v38;
                        v46 = v38 - v40;
                        v47 = (v46 >> 2) + 1;
                        if (v47 >> 62)
                        {
                          v95 = v45;
                          v96 = v88;
                          v94 = v40;
                          std::vector<std::string>::__throw_length_error[abi:ne200100]();
                        }

                        if ((v88 - v40) >> 1 > v47)
                        {
                          v47 = (v88 - v40) >> 1;
                        }

                        if ((v88 - v40) >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v48 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v48 = v47;
                        }

                        if (v48)
                        {
                          if (v48 >> 62)
                          {
                            v95 = v45;
                            v96 = v88;
                            v94 = v40;
                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          v49 = operator new(4 * v48);
                        }

                        else
                        {
                          v49 = 0;
                        }

                        v50 = &v49[4 * (v46 >> 2)];
                        v88 = &v49[4 * v48];
                        *v50 = v102;
                        v84 = v50 + 4;
                        memcpy(v49, v40, v46);
                        if (v40)
                        {
                          operator delete(v40);
                        }

                        v37 = v49;
                        v38 = v84;
                      }

                      else
                      {
                        *v38 = v102;
                        v38 += 4;
                      }
                    }

                    else
                    {
                      v37 = v40;
                    }
                  }

                  v95 = v38;
                  v96 = v88;
                  v94 = v37;
                  v7 = v78;
                  v51 = v109;
                  if (v109 >= v110)
                  {
LABEL_71:
                    v56 = std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(&v108, &v93);
                    v12 = v79;
LABEL_72:
                    v109 = v56;
                    if (v35)
                    {
                      CFRelease(v35);
                    }

                    if (v37)
                    {
                      v95 = v37;
                      operator delete(v37);
                    }

                    MEMORY[0x29C268420](v104);
                    CFRelease(v89);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v38 = 0;
                  v37 = 0;
                  v51 = v109;
                  if (v109 >= v110)
                  {
                    goto LABEL_71;
                  }
                }

                *v51 = v82;
                *(v51 + 1) = 0;
                *(v51 + 2) = 0;
                *(v51 + 3) = 0;
                v53 = v38 - v37;
                v52 = v38 == v37;
                v12 = v79;
                if (!v52)
                {
                  if ((v53 & 0x8000000000000000) != 0)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v54 = operator new(v53);
                  *(v51 + 1) = v54;
                  *(v51 + 2) = v54;
                  v55 = &v54[v53];
                  *(v51 + 3) = &v54[v53];
                  memcpy(v54, v37, v53);
                  *(v51 + 2) = v55;
                }

                v56 = v51 + 32;
                goto LABEL_72;
              }
            }

LABEL_76:
            v57 = *(v12 + 8);
            if (v57 >= *(v12 + 16))
            {
              v64 = std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBlockClientInfoSet&>(v12, &aBlock);
              v62 = theArray;
            }

            else
            {
              v58 = aBlock;
              *(v57 + 8) = BYTE8(aBlock);
              *v57 = v58;
              *(v57 + 16) = 0;
              *(v57 + 24) = 0;
              *(v57 + 32) = 0;
              v59 = v108;
              v60 = v109;
              v93 = v57 + 16;
              v94 = 0xAAAAAAAAAAAAAA00;
              v61 = v109 - v108;
              v62 = theArray;
              if (v109 != v108)
              {
                if (v61 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v63 = operator new(v109 - v108);
                *(v57 + 16) = v63;
                *(v57 + 24) = v63;
                *(v57 + 32) = &v63[v61];
                *(v57 + 24) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>(v57 + 16, v59, v60, v63);
              }

              v64 = (v57 + 40);
              *(v12 + 8) = v57 + 40;
            }

            *(v12 + 8) = v64;
            if (v62)
            {
              CFRelease(v62);
            }

            v65 = v108;
            if (v108)
            {
              v66 = v109;
              v25 = v108;
              if (v109 != v108)
              {
                do
                {
                  v67 = *(v66 - 3);
                  if (v67)
                  {
                    *(v66 - 2) = v67;
                    operator delete(v67);
                  }

                  v66 -= 32;
                }

                while (v66 != v65);
                v25 = v108;
              }

              v109 = v65;
              operator delete(v25);
            }

            MEMORY[0x29C268420](v106);
            CFRelease(cf);
          }
        }

        v24 = v83 + 1;
      }

      while (v83 + 1 != Count);
    }
  }

  v93 = v72 + 136;
  v94 = QMIServiceMsg::create();
  LODWORD(v95) = 25000;
  v96 = 0;
  v97 = 0;
  v90[0] = MEMORY[0x29EDCA5F8];
  v90[1] = 1174405120;
  v90[2] = ___ZN4coex16QMICommandDriver25setClientAntBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v90[3] = &__block_descriptor_tmp_302_0;
  v90[4] = v72;
  v68 = *a3;
  if (*a3)
  {
    v68 = _Block_copy(v68);
  }

  v69 = *(a3 + 8);
  v91 = v68;
  object = v69;
  if (v69)
  {
    dispatch_retain(v69);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v108 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm23SetClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v109 = &unk_29EE60338;
  v110 = v90;
  v97 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v97)
  {
    _Block_release(v97);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v91)
  {
    _Block_release(v91);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v99);
  return MEMORY[0x29C268420](v101);
}

void sub_296F7891C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setClientAntBlockingExtended_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v111 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_296ECF000, v5, OS_LOG_TYPE_DEFAULT, "#I Setting Extended Ant blocking with: %@", &buf, 0xCu);
  }

  v101[0] = 0xAAAAAAAAAAAAAAAALL;
  v101[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v101, *a2);
  v72 = a1;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99 = v7;
  v100 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v99);
  v8 = ctu::cf::map_adapter::copyCFArrayRef(v101, *MEMORY[0x29EDC8AA0]);
  v98 = v8;
  if (v8)
  {
    v9 = *(&v99 + 1);
    v10 = v100;
    v11 = *(&v99 + 1);
    if (*(&v99 + 1) != v100)
    {
      v11 = *(&v99 + 1);
      while (*(*v11 + 8) != 17)
      {
        if (++v11 == v100)
        {
          goto LABEL_12;
        }
      }
    }

    if (v11 == v100)
    {
LABEL_12:
      v14 = operator new(0x28uLL);
      v14[8] = 17;
      *v14 = &unk_2A1E1E728;
      *(v14 + 2) = 0;
      v13 = (v14 + 16);
      *(v14 + 3) = 0;
      *(v14 + 4) = 0;
      if (v10 >= *(&v100 + 1))
      {
        v16 = v10 - v9;
        v17 = (v10 - v9) >> 3;
        v18 = v17 + 1;
        if ((v17 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v19 = *(&v100 + 1) - v9;
        if ((*(&v100 + 1) - v9) >> 2 > v18)
        {
          v18 = v19 >> 2;
        }

        v20 = v19 >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v18;
        if (v20)
        {
          if (v20 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v21 = v14;
          v22 = operator new(8 * v20);
          v14 = v21;
        }

        else
        {
          v22 = 0;
        }

        v23 = &v22[8 * v17];
        *v23 = v14;
        v15 = v23 + 8;
        memcpy(v22, v9, v16);
        *(&v99 + 1) = v22;
        *&v100 = v15;
        *(&v100 + 1) = &v22[8 * v20];
        if (v9)
        {
          operator delete(v9);
        }
      }

      else
      {
        *v10 = v14;
        v15 = v10 + 8;
      }

      *&v100 = v15;
    }

    else
    {
      if (!v12)
      {
        __cxa_bad_cast();
      }

      v13 = v12 + 16;
    }

    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v25 = 0;
      v76 = *MEMORY[0x29EDC8898];
      v77 = *MEMORY[0x29EDC8820];
      v74 = *MEMORY[0x29EDC89A8];
      v75 = *MEMORY[0x29EDC89B0];
      v81 = *MEMORY[0x29EDC87C0];
      v79 = v13;
      v80 = *MEMORY[0x29EDC8818];
      v78 = v8;
      do
      {
        v83 = v25;
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v25);
        cf = ValueAtIndex;
        if (ValueAtIndex)
        {
          v28 = CFGetTypeID(ValueAtIndex);
          if (v28 == CFDictionaryGetTypeID())
          {
            v106[2] = cf;
            CFRetain(cf);
            v106[0] = 0xAAAAAAAAAAAAAAAALL;
            v106[1] = 0xAAAAAAAAAAAAAAAALL;
            v29 = ctu::cf::dict_adapter::dict_adapter(v106, cf);
            v108 = 0;
            v109 = 0;
            v110 = 0;
            *&buf = 0;
            *(&buf + 1) = 0xAAAAAAAAAAAAAA00;
            LODWORD(buf) = ctu::cf::map_adapter::getInt(v29, v77);
            BYTE8(buf) = ctu::cf::map_adapter::getInt(v106, v76) != 0;
            DWORD1(buf) = ctu::cf::map_adapter::getInt(v106, v75);
            v105 = ctu::cf::map_adapter::copyCFArrayRef(v106, v74);
            theArray = v105;
            if (v105)
            {
              v86 = CFArrayGetCount(v105);
              if (v86 >= 1)
              {
                v30 = 0;
                while (1)
                {
                  v31 = CFArrayGetValueAtIndex(theArray, v30);
                  v89 = v31;
                  if (v31)
                  {
                    v32 = CFGetTypeID(v31);
                    if (v32 == CFDictionaryGetTypeID())
                    {
                      break;
                    }
                  }

LABEL_39:
                  if (++v30 == v86)
                  {
                    goto LABEL_76;
                  }
                }

                v104[2] = v89;
                CFRetain(v89);
                v104[0] = 0xAAAAAAAAAAAAAAAALL;
                v104[1] = 0xAAAAAAAAAAAAAAAALL;
                v33 = ctu::cf::dict_adapter::dict_adapter(v104, v89);
                v93 = 0xAAAAAAAAAAAAAA00;
                v95 = 0;
                v96 = 0;
                v94 = 0;
                Int = ctu::cf::map_adapter::getInt(v33, v81);
                LOBYTE(v93) = Int;
                v35 = ctu::cf::map_adapter::copyCFArrayRef(v104, v80);
                v36 = v35;
                v103 = v35;
                v82 = Int;
                if (v35 && (v37 = CFArrayGetCount(v35), v37 >= 1))
                {
                  v38 = 0;
                  v88 = 0;
                  v39 = 0;
                  for (i = 0; i != v37; ++i)
                  {
                    v41 = v38;
                    v102 = 0;
                    v42 = CFArrayGetValueAtIndex(v36, i);
                    v43 = v42;
                    if (v42 && (v44 = CFGetTypeID(v42), v44 == CFNumberGetTypeID()) && ctu::cf::assign(&v102, v43, v45))
                    {
                      v38 = v41;
                      if (v39 >= v88)
                      {
                        v46 = v39;
                        v47 = v39 - v41;
                        v48 = (v47 >> 2) + 1;
                        if (v48 >> 62)
                        {
                          v95 = v46;
                          v96 = v88;
                          v94 = v41;
                          std::vector<std::string>::__throw_length_error[abi:ne200100]();
                        }

                        if ((v88 - v41) >> 1 > v48)
                        {
                          v48 = (v88 - v41) >> 1;
                        }

                        if ((v88 - v41) >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v49 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v49 = v48;
                        }

                        if (v49)
                        {
                          if (v49 >> 62)
                          {
                            v95 = v46;
                            v96 = v88;
                            v94 = v41;
                            std::__throw_bad_array_new_length[abi:ne200100]();
                          }

                          v50 = operator new(4 * v49);
                        }

                        else
                        {
                          v50 = 0;
                        }

                        v51 = &v50[4 * (v47 >> 2)];
                        v88 = &v50[4 * v49];
                        *v51 = v102;
                        v84 = v51 + 4;
                        memcpy(v50, v41, v47);
                        if (v41)
                        {
                          operator delete(v41);
                        }

                        v38 = v50;
                        v39 = v84;
                      }

                      else
                      {
                        *v39 = v102;
                        v39 += 4;
                      }
                    }

                    else
                    {
                      v38 = v41;
                    }
                  }

                  v95 = v39;
                  v96 = v88;
                  v94 = v38;
                  v8 = v78;
                  v52 = v109;
                  if (v109 >= v110)
                  {
LABEL_71:
                    v57 = std::vector<coex::tlv::abm::AntBandInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBandInfoSet&>(&v108, &v93);
                    v13 = v79;
LABEL_72:
                    v109 = v57;
                    if (v36)
                    {
                      CFRelease(v36);
                    }

                    if (v38)
                    {
                      v95 = v38;
                      operator delete(v38);
                    }

                    MEMORY[0x29C268420](v104);
                    CFRelease(v89);
                    goto LABEL_39;
                  }
                }

                else
                {
                  v39 = 0;
                  v38 = 0;
                  v52 = v109;
                  if (v109 >= v110)
                  {
                    goto LABEL_71;
                  }
                }

                *v52 = v82;
                *(v52 + 1) = 0;
                *(v52 + 2) = 0;
                *(v52 + 3) = 0;
                v54 = v39 - v38;
                v53 = v39 == v38;
                v13 = v79;
                if (!v53)
                {
                  if ((v54 & 0x8000000000000000) != 0)
                  {
                    std::vector<std::string>::__throw_length_error[abi:ne200100]();
                  }

                  v55 = operator new(v54);
                  *(v52 + 1) = v55;
                  *(v52 + 2) = v55;
                  v56 = &v55[v54];
                  *(v52 + 3) = &v55[v54];
                  memcpy(v55, v38, v54);
                  *(v52 + 2) = v56;
                }

                v57 = v52 + 32;
                goto LABEL_72;
              }
            }

LABEL_76:
            v58 = *(v13 + 8);
            if (v58 >= *(v13 + 16))
            {
              v65 = std::vector<coex::tlv::abm::AntBlockClientInfoSet>::__emplace_back_slow_path<coex::tlv::abm::AntBlockClientInfoSet&>(v13, &buf);
              v63 = theArray;
            }

            else
            {
              v59 = buf;
              *(v58 + 8) = BYTE8(buf);
              *v58 = v59;
              *(v58 + 16) = 0;
              *(v58 + 24) = 0;
              *(v58 + 32) = 0;
              v60 = v108;
              v61 = v109;
              v93 = v58 + 16;
              v94 = 0xAAAAAAAAAAAAAA00;
              v62 = v109 - v108;
              v63 = theArray;
              if (v109 != v108)
              {
                if (v62 < 0)
                {
                  std::vector<std::string>::__throw_length_error[abi:ne200100]();
                }

                v64 = operator new(v109 - v108);
                *(v58 + 16) = v64;
                *(v58 + 24) = v64;
                *(v58 + 32) = &v64[v62];
                *(v58 + 24) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<coex::tlv::abm::AntBandInfoSet>,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*,coex::tlv::abm::AntBandInfoSet*>(v58 + 16, v60, v61, v64);
              }

              v65 = (v58 + 40);
              *(v13 + 8) = v58 + 40;
            }

            *(v13 + 8) = v65;
            if (v63)
            {
              CFRelease(v63);
            }

            v66 = v108;
            if (v108)
            {
              v67 = v109;
              v26 = v108;
              if (v109 != v108)
              {
                do
                {
                  v68 = *(v67 - 3);
                  if (v68)
                  {
                    *(v67 - 2) = v68;
                    operator delete(v68);
                  }

                  v67 -= 32;
                }

                while (v67 != v66);
                v26 = v108;
              }

              v109 = v66;
              operator delete(v26);
            }

            MEMORY[0x29C268420](v106);
            CFRelease(cf);
          }
        }

        v25 = v83 + 1;
      }

      while (v83 + 1 != Count);
    }
  }

  v93 = v72 + 136;
  v94 = QMIServiceMsg::create();
  LODWORD(v95) = 25000;
  v96 = 0;
  aBlock = 0;
  v90[0] = MEMORY[0x29EDCA5F8];
  v90[1] = 1174405120;
  v90[2] = ___ZN4coex16QMICommandDriver33setClientAntBlockingExtended_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v90[3] = &__block_descriptor_tmp_306_0;
  v90[4] = v72;
  v69 = *a3;
  if (*a3)
  {
    v69 = _Block_copy(v69);
  }

  v70 = *(a3 + 8);
  v91 = v69;
  object = v70;
  if (v70)
  {
    dispatch_retain(v70);
  }

  *&buf = MEMORY[0x29EDCA5F8];
  *(&buf + 1) = 0x40000000;
  v108 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm23SetClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v109 = &unk_29EE60338;
  v110 = v90;
  aBlock = _Block_copy(&buf);
  qmi::Client::send();
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v91)
  {
    _Block_release(v91);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v99);
  return MEMORY[0x29C268420](v101);
}

void sub_296F793FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, int a41, __int16 a42, char a43, char a44)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setTriggerAntennaBlocking_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v62 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v46 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v46;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting trigger antenna block with  params: %@", &aBlock, 0xCu);
  }

  v57[0] = 0xAAAAAAAAAAAAAAAALL;
  v57[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v57, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v7;
  v56 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v55);
  v8 = *(&v55 + 1);
  if (*(&v55 + 1) != v56)
  {
    while (*(*v8 + 8) != 2)
    {
      if (++v8 == v56)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v56)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v55, 2);
  }

  else
  {
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  *v10 = ctu::cf::map_adapter::getBool(v57, *MEMORY[0x29EDC8998]);
  v11 = *(&v55 + 1);
  v12 = v56;
  v13 = *(&v55 + 1);
  if (*(&v55 + 1) != v56)
  {
    v13 = *(&v55 + 1);
    while (*(*v13 + 8) != 1)
    {
      if (++v13 == v56)
      {
        goto LABEL_19;
      }
    }
  }

  if (v13 == v56)
  {
LABEL_19:
    v16 = operator new(0x10uLL);
    v16[8] = 1;
    *v16 = &unk_2A1E1E778;
    *(v16 + 3) = 0;
    v15 = v16 + 12;
    if (v12 >= *(&v56 + 1))
    {
      v18 = v12 - v11;
      v19 = (v12 - v11) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v56 + 1) - v11;
      if ((*(&v56 + 1) - v11) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = v16;
        v24 = operator new(8 * v22);
        v16 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = &v24[8 * v19];
      *v25 = v16;
      v17 = v25 + 8;
      memcpy(v24, v11, v18);
      *(&v55 + 1) = v24;
      *&v56 = v17;
      *(&v56 + 1) = &v24[8 * v22];
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v12 = v16;
      v17 = v12 + 8;
    }

    *&v56 = v17;
  }

  else
  {
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v15 = v14 + 12;
  }

  *v15 = ctu::cf::map_adapter::getInt(v57, *MEMORY[0x29EDC8A08]);
  v26 = *a2;
  v27 = *MEMORY[0x29EDC8A10];
  if (CFDictionaryContainsKey(v26, *MEMORY[0x29EDC8A10]))
  {
    v28 = *(&v55 + 1);
    v29 = v56;
    v30 = *(&v55 + 1);
    if (*(&v55 + 1) != v56)
    {
      v30 = *(&v55 + 1);
      while (*(*v30 + 8) != 16)
      {
        if (++v30 == v56)
        {
          goto LABEL_43;
        }
      }
    }

    if (v30 == v56)
    {
LABEL_43:
      v33 = operator new(0x10uLL);
      v33[8] = 16;
      *v33 = &unk_2A1E1E7C8;
      *(v33 + 3) = 0;
      v32 = v33 + 12;
      if (v29 >= *(&v56 + 1))
      {
        v35 = v29 - v28;
        v36 = (v29 - v28) >> 3;
        v37 = v36 + 1;
        if ((v36 + 1) >> 61)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v38 = *(&v56 + 1) - v28;
        if ((*(&v56 + 1) - v28) >> 2 > v37)
        {
          v37 = v38 >> 2;
        }

        if (v38 >= 0x7FFFFFFFFFFFFFF8)
        {
          v39 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v39 = v37;
        }

        if (v39)
        {
          if (v39 >> 61)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v40 = v33;
          v41 = operator new(8 * v39);
          v33 = v40;
        }

        else
        {
          v41 = 0;
        }

        v42 = &v41[8 * v36];
        *v42 = v33;
        v34 = v42 + 8;
        memcpy(v41, v28, v35);
        *(&v55 + 1) = v41;
        *&v56 = v34;
        *(&v56 + 1) = &v41[8 * v39];
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v29 = v33;
        v34 = v29 + 8;
      }

      *&v56 = v34;
    }

    else
    {
      if (!v31)
      {
        __cxa_bad_cast();
      }

      v32 = v31 + 12;
    }

    *v32 = ctu::cf::map_adapter::getInt(v57, v27);
  }

  v50 = a1 + 136;
  v51 = QMIServiceMsg::create();
  v52 = 25000;
  v53 = 0;
  v54 = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 1174405120;
  v47[2] = ___ZN4coex16QMICommandDriver30setTriggerAntennaBlocking_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v47[3] = &__block_descriptor_tmp_310;
  v47[4] = a1;
  v43 = *a3;
  if (*a3)
  {
    v43 = _Block_copy(v43);
  }

  v44 = *(a3 + 8);
  v48 = v43;
  object = v44;
  if (v44)
  {
    dispatch_retain(v44);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v59 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm27TriggerClientAntBlockingReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v60 = &unk_29EE60360;
  v61 = v47;
  v54 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v54)
  {
    _Block_release(v54);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v48)
  {
    _Block_release(v48);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v55);
  return MEMORY[0x29C268420](v57);
}

void sub_296F79BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F79C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  MEMORY[0x29C268420](va1);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::setCC1_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v29 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v29;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting CC1 with: %@", &aBlock, 0xCu);
  }

  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v40, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v7;
  v39 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v38);
  v8 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v39)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v39)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v38, 1);
  }

  else
  {
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  *v10 = ctu::cf::map_adapter::getBool(v40, *MEMORY[0x29EDC8660]);
  v11 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v11 + 8) != 16)
    {
      if (++v11 == v39)
      {
        goto LABEL_18;
      }
    }
  }

  if (v11 == v39)
  {
LABEL_18:
    v13 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(&v38, 16);
  }

  else
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 12;
  }

  *v13 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8638]);
  v14 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v14 + 8) != 17)
    {
      if (++v14 == v39)
      {
        goto LABEL_26;
      }
    }
  }

  if (v14 == v39)
  {
LABEL_26:
    v16 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::TechInstance>(&v38, 17);
  }

  else
  {
    if (!v15)
    {
      __cxa_bad_cast();
    }

    v16 = v15 + 12;
  }

  *v16 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8710]);
  v17 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v17 + 8) != 18)
    {
      if (++v17 == v39)
      {
        goto LABEL_34;
      }
    }
  }

  if (v17 == v39)
  {
LABEL_34:
    v19 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CriticalCarrierId>(&v38);
  }

  else
  {
    if (!v18)
    {
      __cxa_bad_cast();
    }

    v19 = v18 + 12;
  }

  *v19 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8668]);
  v20 = *MEMORY[0x29EDC8778];
  if (CFDictionaryContainsKey(*a2, *MEMORY[0x29EDC8778]))
  {
    v21 = *a2;
    v22 = *MEMORY[0x29EDC8658];
    if (CFDictionaryContainsKey(v21, *MEMORY[0x29EDC8658]))
    {
      v23 = *(&v38 + 1);
      if (*(&v38 + 1) != v39)
      {
        while (*(*v23 + 8) != 19)
        {
          if (++v23 == v39)
          {
            goto LABEL_44;
          }
        }
      }

      if (v23 == v39)
      {
LABEL_44:
        v25 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::BandInfo>(&v38);
      }

      else
      {
        if (!v24)
        {
          __cxa_bad_cast();
        }

        v25 = v24 + 12;
      }

      *v25 = ctu::cf::map_adapter::getInt(v40, v20);
      *(v25 + 1) = ctu::cf::map_adapter::getInt(v40, v22);
    }
  }

  v33 = a1 + 136;
  v34 = QMIServiceMsg::create();
  v35 = 25000;
  v36 = 0;
  v37 = 0;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 1174405120;
  v30[2] = ___ZN4coex16QMICommandDriver11setCC1_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v30[3] = &__block_descriptor_tmp_314;
  v30[4] = a1;
  v26 = *a3;
  if (*a3)
  {
    v26 = _Block_copy(v26);
  }

  v27 = *(a3 + 8);
  v31 = v26;
  object = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v42 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetCC1Req8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v43 = &unk_29EE60388;
  v44 = v30;
  v37 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v37)
  {
    _Block_release(v37);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v38);
  return MEMORY[0x29C268420](v40);
}

void sub_296F7A240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setCC2_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v29 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v29;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting CC2 with: %@", &aBlock, 0xCu);
  }

  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v40, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v7;
  v39 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v38);
  v8 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v39)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v39)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v38, 1);
  }

  else
  {
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  *v10 = ctu::cf::map_adapter::getBool(v40, *MEMORY[0x29EDC8660]);
  v11 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v11 + 8) != 16)
    {
      if (++v11 == v39)
      {
        goto LABEL_18;
      }
    }
  }

  if (v11 == v39)
  {
LABEL_18:
    v13 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CoexTech>(&v38, 16);
  }

  else
  {
    if (!v12)
    {
      __cxa_bad_cast();
    }

    v13 = v12 + 12;
  }

  *v13 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8638]);
  v14 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v14 + 8) != 17)
    {
      if (++v14 == v39)
      {
        goto LABEL_26;
      }
    }
  }

  if (v14 == v39)
  {
LABEL_26:
    v16 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::TechInstance>(&v38, 17);
  }

  else
  {
    if (!v15)
    {
      __cxa_bad_cast();
    }

    v16 = v15 + 12;
  }

  *v16 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8710]);
  v17 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v17 + 8) != 18)
    {
      if (++v17 == v39)
      {
        goto LABEL_34;
      }
    }
  }

  if (v17 == v39)
  {
LABEL_34:
    v19 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::CriticalCarrierId>(&v38);
  }

  else
  {
    if (!v18)
    {
      __cxa_bad_cast();
    }

    v19 = v18 + 12;
  }

  *v19 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8668]);
  v20 = *MEMORY[0x29EDC8778];
  if (CFDictionaryContainsKey(*a2, *MEMORY[0x29EDC8778]))
  {
    v21 = *a2;
    v22 = *MEMORY[0x29EDC8658];
    if (CFDictionaryContainsKey(v21, *MEMORY[0x29EDC8658]))
    {
      v23 = *(&v38 + 1);
      if (*(&v38 + 1) != v39)
      {
        while (*(*v23 + 8) != 19)
        {
          if (++v23 == v39)
          {
            goto LABEL_44;
          }
        }
      }

      if (v23 == v39)
      {
LABEL_44:
        v25 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::BandInfo>(&v38);
      }

      else
      {
        if (!v24)
        {
          __cxa_bad_cast();
        }

        v25 = v24 + 12;
      }

      *v25 = ctu::cf::map_adapter::getInt(v40, v20);
      *(v25 + 1) = ctu::cf::map_adapter::getInt(v40, v22);
    }
  }

  v33 = a1 + 136;
  v34 = QMIServiceMsg::create();
  v35 = 25000;
  v36 = 0;
  v37 = 0;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 1174405120;
  v30[2] = ___ZN4coex16QMICommandDriver11setCC2_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v30[3] = &__block_descriptor_tmp_318_0;
  v30[4] = a1;
  v26 = *a3;
  if (*a3)
  {
    v26 = _Block_copy(v26);
  }

  v27 = *(a3 + 8);
  v31 = v26;
  object = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v42 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm9SetCC2Req8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v43 = &unk_29EE603B0;
  v44 = v30;
  v37 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v37)
  {
    _Block_release(v37);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v38);
  return MEMORY[0x29C268420](v40);
}

void sub_296F7A8AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t coex::QMICommandDriver::setLaaGpioThrottle_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v45 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v29 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v29;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting LAA GPIO throttle with: %@", &aBlock, 0xCu);
  }

  v40[0] = 0xAAAAAAAAAAAAAAAALL;
  v40[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v40, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v7;
  v39 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v38);
  v8 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v39)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v39)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v38, 1);
  }

  else
  {
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  *v10 = ctu::cf::map_adapter::getBool(v40, *MEMORY[0x29EDC8908]);
  v11 = *(&v38 + 1);
  v12 = v39;
  v13 = *(&v38 + 1);
  if (*(&v38 + 1) != v39)
  {
    v13 = *(&v38 + 1);
    while (*(*v13 + 8) != 16)
    {
      if (++v13 == v39)
      {
        goto LABEL_19;
      }
    }
  }

  if (v13 == v39)
  {
LABEL_19:
    v16 = operator new(0x10uLL);
    v16[8] = 16;
    *v16 = &unk_2A1E1E8B8;
    *(v16 + 3) = 0;
    v15 = v16 + 12;
    if (v12 >= *(&v39 + 1))
    {
      v18 = v12 - v11;
      v19 = (v12 - v11) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v39 + 1) - v11;
      if ((*(&v39 + 1) - v11) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = v16;
        v24 = operator new(8 * v22);
        v16 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = &v24[8 * v19];
      *v25 = v16;
      v17 = v25 + 8;
      memcpy(v24, v11, v18);
      *(&v38 + 1) = v24;
      *&v39 = v17;
      *(&v39 + 1) = &v24[8 * v22];
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v12 = v16;
      v17 = v12 + 8;
    }

    *&v39 = v17;
  }

  else
  {
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v15 = v14 + 12;
  }

  *v15 = ctu::cf::map_adapter::getInt(v40, *MEMORY[0x29EDC8A00]);
  v33 = a1 + 136;
  v34 = QMIServiceMsg::create();
  v35 = 25000;
  v36 = 0;
  v37 = 0;
  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 1174405120;
  v30[2] = ___ZN4coex16QMICommandDriver23setLaaGpioThrottle_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v30[3] = &__block_descriptor_tmp_322;
  v30[4] = a1;
  v26 = *a3;
  if (*a3)
  {
    v26 = _Block_copy(v26);
  }

  v27 = *(a3 + 8);
  v31 = v26;
  object = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v42 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21SetLaaGpioThrottleReq8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v43 = &unk_29EE603D8;
  v44 = v30;
  v37 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v37)
  {
    _Block_release(v37);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    _Block_release(v31);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v38);
  return MEMORY[0x29C268420](v40);
}

void sub_296F7ADA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7AE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  MEMORY[0x29C268420](va1);
  _Unwind_Resume(a1);
}

uint64_t coex::QMICommandDriver::setGnssParams_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v60 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v44 = *a2;
    LODWORD(aBlock) = 138412290;
    *(&aBlock + 4) = v44;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting Gnss params with: %@", &aBlock, 0xCu);
  }

  v55[0] = 0xAAAAAAAAAAAAAAAALL;
  v55[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v55, *a2);
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v7;
  v54 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v53);
  v8 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    while (*(*v8 + 8) != 1)
    {
      if (++v8 == v54)
      {
        goto LABEL_10;
      }
    }
  }

  if (v8 == v54)
  {
LABEL_10:
    v10 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::Enabled>(&v53, 1);
  }

  else
  {
    if (!v9)
    {
      __cxa_bad_cast();
    }

    v10 = v9 + 9;
  }

  *v10 = ctu::cf::map_adapter::getBool(v55, *MEMORY[0x29EDC86A0]);
  v11 = *(&v53 + 1);
  v12 = v54;
  v13 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    v13 = *(&v53 + 1);
    while (*(*v13 + 8) != 16)
    {
      if (++v13 == v54)
      {
        goto LABEL_19;
      }
    }
  }

  if (v13 == v54)
  {
LABEL_19:
    v16 = operator new(0x10uLL);
    v16[8] = 16;
    *v16 = &unk_2A1E1E908;
    *(v16 + 3) = 0;
    v15 = v16 + 12;
    if (v12 >= *(&v54 + 1))
    {
      v18 = v12 - v11;
      v19 = (v12 - v11) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v21 = *(&v54 + 1) - v11;
      if ((*(&v54 + 1) - v11) >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (v22 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v23 = v16;
        v24 = operator new(8 * v22);
        v16 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = &v24[8 * v19];
      *v25 = v16;
      v17 = v25 + 8;
      memcpy(v24, v11, v18);
      *(&v53 + 1) = v24;
      *&v54 = v17;
      *(&v54 + 1) = &v24[8 * v22];
      if (v11)
      {
        operator delete(v11);
      }
    }

    else
    {
      *v12 = v16;
      v17 = v12 + 8;
    }

    *&v54 = v17;
  }

  else
  {
    if (!v14)
    {
      __cxa_bad_cast();
    }

    v15 = v14 + 12;
  }

  *v15 = ctu::cf::map_adapter::getInt(v55, *MEMORY[0x29EDC8618]);
  v26 = *(&v53 + 1);
  v27 = v54;
  v28 = *(&v53 + 1);
  if (*(&v53 + 1) != v54)
  {
    v28 = *(&v53 + 1);
    while (*(*v28 + 8) != 17)
    {
      if (++v28 == v54)
      {
        goto LABEL_42;
      }
    }
  }

  if (v28 == v54)
  {
LABEL_42:
    v31 = operator new(0x10uLL);
    v31[8] = 17;
    *v31 = &unk_2A1E1E958;
    *(v31 + 3) = 0;
    v30 = v31 + 12;
    if (v27 >= *(&v54 + 1))
    {
      v33 = v27 - v26;
      v34 = (v27 - v26) >> 3;
      v35 = v34 + 1;
      if ((v34 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v36 = *(&v54 + 1) - v26;
      if ((*(&v54 + 1) - v26) >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      if (v36 >= 0x7FFFFFFFFFFFFFF8)
      {
        v37 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v37 = v35;
      }

      if (v37)
      {
        if (v37 >> 61)
        {
          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v38 = v31;
        v39 = operator new(8 * v37);
        v31 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = &v39[8 * v34];
      *v40 = v31;
      v32 = v40 + 8;
      memcpy(v39, v26, v33);
      *(&v53 + 1) = v39;
      *&v54 = v32;
      *(&v54 + 1) = &v39[8 * v37];
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v27 = v31;
      v32 = v27 + 8;
    }

    *&v54 = v32;
  }

  else
  {
    if (!v29)
    {
      __cxa_bad_cast();
    }

    v30 = v29 + 12;
  }

  *v30 = ctu::cf::map_adapter::getInt(v55, *MEMORY[0x29EDC86A8]);
  v48 = a1 + 136;
  v49 = QMIServiceMsg::create();
  v50 = 25000;
  v51 = 0;
  v52 = 0;
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 1174405120;
  v45[2] = ___ZN4coex16QMICommandDriver18setGnssParams_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke;
  v45[3] = &__block_descriptor_tmp_326;
  v45[4] = a1;
  v41 = *a3;
  if (*a3)
  {
    v41 = _Block_copy(v41);
  }

  v42 = *(a3 + 8);
  v46 = v41;
  object = v42;
  if (v42)
  {
    dispatch_retain(v42);
  }

  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 0x40000000;
  v57 = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm13SetGnssBandId8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  v58 = &unk_29EE60400;
  v59 = v45;
  v52 = _Block_copy(&aBlock);
  qmi::Client::send();
  if (v52)
  {
    _Block_release(v52);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v46)
  {
    _Block_release(v46);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v53);
  return MEMORY[0x29C268420](v55);
}

void sub_296F7B42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7B49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  MEMORY[0x29C268420](va1);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::getScanFreqBandFilter_sync(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Getting Scan Frequency Band filter info", aBlock, 2u);
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v7;
  v27 = v7;
  qmi::MutableMessageBase::MutableMessageBase(&v26);
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 0x40000000;
  v8 = ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v23 = ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke;
  v24 = &__block_descriptor_tmp_278;
  v25 = a2;
  v9 = *(&v26 + 1);
  if (*(&v26 + 1) != v27)
  {
    while (*(*v9 + 8) != 16)
    {
      if (++v9 == v27)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v27)
  {
LABEL_10:
    v11 = qmi::MutableMessageBase::createTLV<coex::tlv::abm::LTEInstance>(&v26, 16);
    v8 = v23;
  }

  else
  {
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 12;
  }

  v8(v22, v11);
  v17 = a1 + 136;
  v18 = QMIServiceMsg::create();
  v19 = 25000;
  v20 = 0;
  v21 = 0;
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v14[2] = ___ZN4coex16QMICommandDriver26getScanFreqBandFilter_syncENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke_2;
  v14[3] = &__block_descriptor_tmp_282;
  v14[4] = a1;
  v12 = *a3;
  if (*a3)
  {
    v12 = _Block_copy(v12);
  }

  v13 = *(a3 + 8);
  v15 = v12;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm21GetScanFreqBandFilter8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60270;
  aBlock[4] = v14;
  v21 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v21)
  {
    _Block_release(v21);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v26);
}

void sub_296F7B764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  coex::CommandDriver::Callback::~Callback((v26 + 40));
  qmi::Client::SendProxy::~SendProxy(&a17);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F7B788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F7B7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollWWANState_sync(coex::QMICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D Polling WWAN state", aBlock, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v8);
  v4[5] = this + 136;
  v4[6] = QMIServiceMsg::create();
  v5 = 25000;
  v6 = 0;
  v7 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4coex16QMICommandDriver18pollWWANState_syncEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_34;
  v4[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm12GetWWANState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60040;
  aBlock[4] = v4;
  v7 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v8);
}

void sub_296F7B904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollWLANScanState_sync(coex::QMICommandDriver *this, int a2)
{
  aBlock[5] = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(aBlock[0]) = 67109120;
    HIDWORD(aBlock[0]) = a2;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Polling WLAN Scan State on scan %u", aBlock, 8u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v5;
  v32 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v31);
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 0x40000000;
  v6 = ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke;
  v28 = ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke;
  v29 = &__block_descriptor_tmp_36_0;
  v30 = a2;
  v7 = *(&v31 + 1);
  v8 = v32;
  v9 = *(&v31 + 1);
  if (*(&v31 + 1) != v32)
  {
    v9 = *(&v31 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v32)
      {
        goto LABEL_11;
      }
    }
  }

  if (v9 == v32)
  {
LABEL_11:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1E1D628;
    *(v12 + 3) = 0;
    v11 = v12 + 12;
    if (v8 >= *(&v32 + 1))
    {
      v14 = v8 - v7;
      v15 = (v8 - v7) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v32 + 1) - v7;
      if ((*(&v32 + 1) - v7) >> 2 > v16)
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

        v19 = v12;
        v20 = v12 + 12;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 12;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v7, v14);
      *(&v31 + 1) = v21;
      *&v32 = v13;
      *(&v32 + 1) = &v21[8 * v18];
      if (v7)
      {
        operator delete(v7);
      }

      v11 = v20;
    }

    else
    {
      *v8 = v12;
      v13 = v8 + 8;
    }

    *&v32 = v13;
    v6 = v28;
  }

  else
  {
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 12;
  }

  v6(v27, v11);
  v23[5] = this + 136;
  v23[6] = QMIServiceMsg::create();
  v24 = 25000;
  v25 = 0;
  v26 = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 0x40000000;
  v23[2] = ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke_2;
  v23[3] = &__block_descriptor_tmp_38_1;
  v23[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm16GetWLANScanState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60068;
  aBlock[4] = v23;
  v26 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v26)
  {
    _Block_release(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v31);
}

void sub_296F7BCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7BCEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F7BD04(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7BD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollWLANConnState_sync(coex::QMICommandDriver *this, int a2)
{
  aBlock[5] = *MEMORY[0x29EDCA608];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(aBlock[0]) = 67109120;
    HIDWORD(aBlock[0]) = a2;
    _os_log_debug_impl(&dword_296ECF000, v4, OS_LOG_TYPE_DEBUG, "#D Polling WLAN Connection State on connection %u", aBlock, 8u);
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31 = v5;
  v32 = v5;
  qmi::MutableMessageBase::MutableMessageBase(&v31);
  v27[0] = MEMORY[0x29EDCA5F8];
  v27[1] = 0x40000000;
  v6 = ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke;
  v28 = ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke;
  v29 = &__block_descriptor_tmp_40_0;
  v30 = a2;
  v7 = *(&v31 + 1);
  v8 = v32;
  v9 = *(&v31 + 1);
  if (*(&v31 + 1) != v32)
  {
    v9 = *(&v31 + 1);
    while (*(*v9 + 8) != 1)
    {
      if (++v9 == v32)
      {
        goto LABEL_11;
      }
    }
  }

  if (v9 == v32)
  {
LABEL_11:
    v12 = operator new(0x10uLL);
    v12[8] = 1;
    *v12 = &unk_2A1E1D6A8;
    *(v12 + 3) = 0;
    v11 = v12 + 12;
    if (v8 >= *(&v32 + 1))
    {
      v14 = v8 - v7;
      v15 = (v8 - v7) >> 3;
      v16 = v15 + 1;
      if ((v15 + 1) >> 61)
      {
        std::vector<std::string>::__throw_length_error[abi:ne200100]();
      }

      v17 = *(&v32 + 1) - v7;
      if ((*(&v32 + 1) - v7) >> 2 > v16)
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

        v19 = v12;
        v20 = v12 + 12;
        v21 = operator new(8 * v18);
        v12 = v19;
      }

      else
      {
        v20 = v12 + 12;
        v21 = 0;
      }

      v22 = &v21[8 * v15];
      *v22 = v12;
      v13 = v22 + 8;
      memcpy(v21, v7, v14);
      *(&v31 + 1) = v21;
      *&v32 = v13;
      *(&v32 + 1) = &v21[8 * v18];
      if (v7)
      {
        operator delete(v7);
      }

      v11 = v20;
    }

    else
    {
      *v8 = v12;
      v13 = v8 + 8;
    }

    *&v32 = v13;
    v6 = v28;
  }

  else
  {
    if (!v10)
    {
      __cxa_bad_cast();
    }

    v11 = v10 + 12;
  }

  v6(v27, v11);
  v23[5] = this + 136;
  v23[6] = QMIServiceMsg::create();
  v24 = 25000;
  v25 = 0;
  v26 = 0;
  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 0x40000000;
  v23[2] = ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke_2;
  v23[3] = &__block_descriptor_tmp_42_0;
  v23[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm16GetWLANConnState8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE60090;
  aBlock[4] = v23;
  v26 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v26)
  {
    _Block_release(v26);
  }

  qmi::MutableMessageBase::~MutableMessageBase(&v31);
}

void sub_296F7C0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7C0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void sub_296F7C0FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_296F7C114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollPolicy_sync(coex::QMICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D Polling policy", buf, 2u);
  }

  *buf = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    *buf = Mutable;
  }

  v11 = 0;
  v6 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = v6;
  if (v6)
  {
    v11 = v6;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v5, *MEMORY[0x29EDC86B8], v6);
  if (v5 && (v8 = CFGetTypeID(v5), v8 == CFDictionaryGetTypeID()))
  {
    v10 = v5;
    CFRetain(v5);
    v9 = v5;
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(this, &v10, 0);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
    v5 = *buf;
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F7C294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

void sub_296F7C2B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void coex::QMICommandDriver::pollLinkQuality_sync(coex::QMICommandDriver *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(aBlock[0]) = 0;
    _os_log_debug_impl(&dword_296ECF000, v2, OS_LOG_TYPE_DEBUG, "#D Polling Link Quality", aBlock, 2u);
  }

  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = v3;
  v8[1] = v3;
  qmi::MutableMessageBase::MutableMessageBase(v8);
  v4[5] = this + 136;
  v4[6] = QMIServiceMsg::create();
  v5 = 25000;
  v6 = 0;
  v7 = 0;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN4coex16QMICommandDriver20pollLinkQuality_syncEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_44_0;
  v4[4] = this;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZNO3qmi6Client9SendProxy8callbackIRKN4coex3abm8SINRRead8ResponseEEEOS1_U13block_pointerFvT_E_block_invoke;
  aBlock[3] = &unk_29EE600B8;
  aBlock[4] = v4;
  v7 = _Block_copy(aBlock);
  qmi::Client::send();
  if (v7)
  {
    _Block_release(v7);
  }

  qmi::MutableMessageBase::~MutableMessageBase(v8);
}

void sub_296F7C43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  qmi::Client::SendProxy::~SendProxy(va);
  qmi::MutableMessageBase::~MutableMessageBase(va1);
  _Unwind_Resume(a1);
}

void sub_296F7C458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  qmi::MutableMessageBase::~MutableMessageBase(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver18pollWWANState_syncEv_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v114 = *(a1 + 32);
  cf = 0;
  v3 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  v148 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v153) = 14;
  strcpy(v152, "Get WWAN State");
  coex::QMICommandDriver::checkError(v114, a2, v152, &v148);
  if (SHIBYTE(v153) < 0)
  {
    operator delete(v152[0]);
    v6 = v148;
    if (v148)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = v148;
    if (v148)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v5, *MEMORY[0x29EDC8670], v6);
      if (v5 && (v7 = CFGetTypeID(v5), v7 == CFDictionaryGetTypeID()))
      {
        v147 = v5;
        CFRetain(v5);
        v8 = v5;
      }

      else
      {
        v8 = 0;
        v147 = 0;
      }

      coex::QMICommandDriver::sendStateUpdate_sync(v114, &v147, 0);
      if (v8)
      {
        CFRelease(v8);
      }

      goto LABEL_172;
    }
  }

  v146 = 0;
  v9 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v10 = v9;
  if (v9)
  {
    v145 = v9;
    v146 = v9;
    CFRetain(v9);
  }

  else
  {
    v145 = 0;
  }

  v150 = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18LTEBandInformationENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_451;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v156 = *MEMORY[0x29EDC87E8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v15 = TlvValue;
  if (TlvValue)
  {
    v16 = v12;
    v157[0] = TlvValue;
    v151[0] = tlv::parseV<coex::tlv::abm::LTEBandInformation>(v157, v12, v13, v14);
    v151[1] = v17;
    if (v157[0])
    {
      v153(v152, v151);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 16, v15, v16);
    }
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v144 = v10;
    CFRetain(v10);
  }

  else
  {
    v144 = 0;
  }

  v150 = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm17LTETDDInformationENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_454;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v156 = *MEMORY[0x29EDC87D0];
  v18 = qmi::MessageBase::findTlvValue(a2);
  v20 = v18;
  if (v18)
  {
    v21 = v19;
    v157[0] = v18;
    memset(v151, 170, 20);
    tlv::parseV<coex::tlv::abm::LTETDDInformation>(v157, v19, v151);
    if (v157[0])
    {
      v153(v152, v151);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 17, v20, v21);
    }
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v143 = v10;
    CFRetain(v10);
  }

  else
  {
    v143 = 0;
  }

  v151[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12LTEOffPeriodENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_457;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v156 = *MEMORY[0x29EDC86F0];
  v22 = qmi::MessageBase::findTlvValue(a2);
  v30 = v22;
  if (v22)
  {
    tlv::throwIfNotEnoughBytes(v22, v22 + v23, 4);
    LODWORD(v157[0]) = *v30;
    v153(v152, v157);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v142 = v10;
    CFRetain(v10);
  }

  else
  {
    v142 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTEBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_460;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v31 = *MEMORY[0x29EDC88D0];
  v156 = *MEMORY[0x29EDC88D0];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTEBandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTEBandInformationSet const&)>(a2, v151, v24, v25, v26, v27, v28, v29, v103, v114, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v141 = v10;
    CFRetain(v10);
  }

  else
  {
    v141 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25TDSCDMABandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_463;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v156 = *MEMORY[0x29EDC89D8];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::TDSCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::TDSCDMABandInformationSet const&)>(a2, v151, v32, v33, v34, v35, v36, v37, v104, v115, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v140 = v10;
    CFRetain(v10);
  }

  else
  {
    v140 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21GSMBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_466;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v44 = *MEMORY[0x29EDC88B0];
  v156 = *MEMORY[0x29EDC88B0];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::GSMBandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSMBandInformationSet const&)>(a2, v151, v38, v39, v40, v41, v42, v43, v105, v116, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v139 = v10;
    CFRetain(v10);
  }

  else
  {
    v139 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22ONEXBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_469;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v156 = *MEMORY[0x29EDC8910];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::ONEXBandInformationSet,void({block_pointer}&)(coex::tlv::abm::ONEXBandInformationSet const&)>(a2, v151, v45, v46, v47, v48, v49, v50, v106, v117, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v138 = v10;
    CFRetain(v10);
  }

  else
  {
    v138 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21HDRBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_472;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v156 = *MEMORY[0x29EDC88C0];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::HDRBandInformationSet,void({block_pointer}&)(coex::tlv::abm::HDRBandInformationSet const&)>(a2, v151, v51, v52, v53, v54, v55, v56, v107, v118, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v137 = v10;
    CFRetain(v10);
  }

  else
  {
    v137 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm23WCDMABandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_475;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v63 = *MEMORY[0x29EDC8968];
  v156 = *MEMORY[0x29EDC8968];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMABandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMABandInformationSet const&)>(a2, v151, v57, v58, v59, v60, v61, v62, v108, v119, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
    v136 = v10;
    CFRetain(v10);
  }

  else
  {
    v136 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21NGCBandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_478;
  v155 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v70 = *MEMORY[0x29EDC88E0];
  v156 = *MEMORY[0x29EDC88E0];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGCBandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCBandInformationSet const&)>(a2, v151, v64, v65, v66, v67, v68, v69, v109, v120, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v5 = cf;
  v135 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24LTECarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_481;
  v155 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v71 = *MEMORY[0x29EDC8988];
  v156 = *MEMORY[0x29EDC8988];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTECarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTECarrierInformationSet const&)>(a2, v151);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v5)
  {
    CFRelease(v5);
    v134 = v5;
    CFRetain(v5);
  }

  else
  {
    v134 = 0;
  }

  v110 = v70;
  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24NGCCarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_484;
  v155 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v72 = *MEMORY[0x29EDC8990];
  v156 = *MEMORY[0x29EDC8990];
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGCCarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGCCarrierInformationSet const&)>(a2, v151);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (CFDictionaryGetCount(v10))
  {
    ctu::cf::update<__CFString const*,__CFDictionary *>(v5, *MEMORY[0x29EDC8728], v10);
    if (v5 && (v73 = CFGetTypeID(v5), v73 == CFDictionaryGetTypeID()))
    {
      v133 = v5;
      CFRetain(v5);
      v74 = v5;
    }

    else
    {
      v74 = 0;
      v133 = 0;
    }

    coex::QMICommandDriver::sendStateUpdate_sync(v121, &v133, 0);
    if (v74)
    {
      CFRelease(v74);
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v150 = 0;
  v75 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v82 = v75;
  if (v75)
  {
    v150 = v75;
    v132 = v75;
    CFRetain(v75);
  }

  else
  {
    v132 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22GSM2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_487;
  v155 = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  v156 = v44;
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::GSM2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::GSM2BandInformationSet const&)>(a2, v151, v76, v77, v78, v79, v80, v81, v110, v121, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v82)
  {
    CFRelease(v82);
    v131 = v82;
    CFRetain(v82);
  }

  else
  {
    v131 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm24WCDMA2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_490;
  v155 = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  v156 = v63;
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::WCDMA2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::WCDMA2BandInformationSet const&)>(a2, v151, v83, v84, v85, v86, v87, v88, v111, v122, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v82)
  {
    CFRelease(v82);
    v130 = v82;
    CFRetain(v82);
  }

  else
  {
    v130 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22LTE2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_493;
  v155 = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  v156 = v31;
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2BandInformationSet const&)>(a2, v151, v89, v90, v91, v92, v93, v94, v112, v123, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v82)
  {
    CFRelease(v82);
  }

  v129 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25LTE2CarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_496;
  v155 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v156 = v71;
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::LTE2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::LTE2CarrierInformationSet const&)>(a2, v151);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v5)
  {
    CFRelease(v5);
    v128 = v5;
    CFRetain(v5);
  }

  else
  {
    v128 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm22NGC2BandInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_499;
  v155 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v156 = v113;
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2BandInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2BandInformationSet const&)>(a2, v151, v95, v96, v97, v98, v99, v100, v113, v124, v126);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v5)
  {
    CFRelease(v5);
    v127 = v5;
    CFRetain(v5);
  }

  else
  {
    v127 = 0;
  }

  v157[0] = 0;
  v152[0] = MEMORY[0x29EDCA5F8];
  v152[1] = 1174405120;
  v153 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm25NGC2CarrierInformationSetENS_3abm12GetWWANState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v154 = &__block_descriptor_tmp_502;
  v155 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v156 = v72;
  v151[0] = v152;
  qmi::MessageBase::applyTlv<coex::tlv::abm::NGC2CarrierInformationSet,void({block_pointer}&)(coex::tlv::abm::NGC2CarrierInformationSet const&)>(a2, v151);
  if (v155)
  {
    CFRelease(v155);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (CFDictionaryGetCount(v82))
  {
    ctu::cf::update<__CFString const*,__CFDictionary *>(v5, *MEMORY[0x29EDC8728], v82);
    if (v5 && (v101 = CFGetTypeID(v5), v101 == CFDictionaryGetTypeID()))
    {
      v126 = v5;
      CFRetain(v5);
      v102 = v5;
    }

    else
    {
      v102 = 0;
      v126 = 0;
    }

    coex::QMICommandDriver::sendStateUpdate_sync(v125, &v126, 1);
    if (v102)
    {
      CFRelease(v102);
    }
  }

  if (v82)
  {
    CFRelease(v82);
  }

LABEL_172:
  if (v148)
  {
    CFRelease(v148);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F7D2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, const void *a33, const void *a34)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v34 - 192));
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a33);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a34);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver22pollWLANScanState_syncEj_block_invoke_2(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v18 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    v18 = Mutable;
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(__p[2]) = 19;
  strcpy(__p, "Get WLAN Scan State");
  coex::QMICommandDriver::checkError(v3, a2, __p, &v17);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v6 = v17;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = v17;
    if (v17)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v5, *MEMORY[0x29EDC8670], v6);
      goto LABEL_19;
    }
  }

  v16[1] = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v22 = 0;
  __p[0] = MEMORY[0x29EDCA5F8];
  __p[1] = 1174405120;
  __p[2] = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm12WLANScanInfoENS_3abm16GetWLANScanState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  __p[3] = &__block_descriptor_tmp_510;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v21 = *MEMORY[0x29EDC87D8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v11 = TlvValue;
  if (TlvValue)
  {
    v12 = v8;
    v24 = TlvValue;
    v23[0] = tlv::parseV<coex::tlv::abm::WLANScanInfo>(&v24, v8, v9, v10);
    v23[1] = v13;
    if (v24)
    {
      (__p[2])(__p, v23);
    }

    else
    {
      (*MEMORY[0x29EDC91A8])(*a2, 16, v11, v12);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v5)
  {
    goto LABEL_22;
  }

  CFRelease(v5);
LABEL_19:
  if (v5)
  {
    v14 = CFGetTypeID(v5);
    if (v14 == CFDictionaryGetTypeID())
    {
      v16[0] = v5;
      CFRetain(v5);
      v15 = v5;
      goto LABEL_23;
    }
  }

LABEL_22:
  v15 = 0;
  v16[0] = 0;
LABEL_23:
  coex::QMICommandDriver::sendStateUpdate_sync(v3, v16, 0);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_296F7D94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a12);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a13);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver22pollWLANConnState_syncEj_block_invoke_2(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v16 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v5 = Mutable;
  if (Mutable)
  {
    v16 = Mutable;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v18 = xmmword_296FBF500;
  strcpy(__p, "Get WLAN Connection State");
  coex::QMICommandDriver::checkError(v3, a2, &__p, &v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
    v6 = v15;
    if (v15)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v6 = v15;
    if (v15)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v5, *MEMORY[0x29EDC8670], v6);
      goto LABEL_18;
    }
  }

  v14 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v22 = 0;
  __p = MEMORY[0x29EDCA5F8];
  *&v18 = 1174405120;
  *(&v18 + 1) = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm18WLANConnectionInfoENS_3abm16GetWLANConnState8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v19 = &__block_descriptor_tmp_514;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v21 = *MEMORY[0x29EDC8950];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  if (TlvValue)
  {
    v23 = 0xAAAAAAAA00000000;
    *v24 = 0u;
    v25 = 0u;
    coex::tlv::abm::parseField(TlvValue, &TlvValue[v8], &v23, v9);
    (*(&v18 + 1))(&__p, &v23);
    if (v24[0])
    {
      v24[1] = v24[0];
      operator delete(v24[0]);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v14)
  {
    CFRelease(v14);
  }

LABEL_18:
  v10 = v16;
  if (v16 && (v11 = CFGetTypeID(v16), v11 == CFDictionaryGetTypeID()))
  {
    v13 = v10;
    CFRetain(v10);
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v13, 0);
  if (v12)
  {
    CFRelease(v12);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_296F7DC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 + 32));
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a22);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a11);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver20pollLinkQuality_syncEv_block_invoke(uint64_t a1, qmi::MessageBase *a2)
{
  v3 = *(a1 + 32);
  v18 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v18 = Mutable;
  }

  v17 = 0xAAAAAAAAAAAAAAAALL;
  HIBYTE(v20) = 8;
  strcpy(&__p, "Get SINR");
  coex::QMICommandDriver::checkError(v3, a2, &__p, &v17);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p);
    v7 = v17;
    if (v17)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v7 = v17;
    if (v17)
    {
LABEL_5:
      ctu::cf::insert<__CFString const*,__CFError *>(v6, *MEMORY[0x29EDC8670], v7);
      goto LABEL_20;
    }
  }

  v16 = 0;
  v8 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = v8;
  if (v8)
  {
    v15 = v8;
    v16 = v8;
    CFRetain(v8);
  }

  else
  {
    v15 = 0;
  }

  v24 = 0;
  *&__p = MEMORY[0x29EDCA5F8];
  *(&__p + 1) = 1174405120;
  v20 = ___ZN4coexL21convertTLVFromMessageINS_3tlv3abm21LTESINRFilteredOutputENS_3abm8SINRRead8ResponseEEEvRKT0_N3ctu2cf11CFSharedRefI14__CFDictionaryEEPK10__CFString_block_invoke;
  v21 = &__block_descriptor_tmp_519;
  cf = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v23 = *MEMORY[0x29EDC8AE8];
  TlvValue = qmi::MessageBase::findTlvValue(a2);
  v12 = TlvValue;
  if (TlvValue)
  {
    tlv::throwIfNotEnoughBytes(TlvValue, TlvValue + v11, 4);
    v25 = *v12;
    v20(&__p, &v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  v6 = v18;
  ctu::cf::insert<__CFString const*,__CFDictionary *>(v18, *MEMORY[0x29EDC8780], v16);
  if (v16)
  {
    CFRelease(v16);
  }

LABEL_20:
  if (v6 && (v13 = CFGetTypeID(v6), v13 == CFDictionaryGetTypeID()))
  {
    v14 = v6;
    CFRetain(v6);
  }

  else
  {
    v6 = 0;
    v14 = 0;
  }

  coex::QMICommandDriver::sendStateUpdate_sync(v3, &v14, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_296F7DFE4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  (*MEMORY[0x29EDC91A8])(*v1, 16, v2, v3);
  JUMPOUT(0x296F7DF10);
}

void sub_296F7E01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a17);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a18);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZN4coex16QMICommandDriver19setIndications_syncENS_13CommandDriver8CallbackE_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  __p = operator new(0x20uLL);
  v11 = xmmword_296FBF500;
  strcpy(__p, "set reporting indications");
  coex::QMICommandDriver::checkError(v4, a2, &__p, &cf);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
    v5 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = cf;
    if (cf)
    {
LABEL_3:
      v9 = v5;
      goto LABEL_4;
    }
  }

  v7 = *(v4 + 40);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    goto LABEL_9;
  }

  LOWORD(__p) = 0;
  _os_log_debug_impl(&dword_296ECF000, v7, OS_LOG_TYPE_DEBUG, "#D Setting reporting indications completed", &__p, 2u);
  v5 = cf;
  v9 = cf;
  if (!cf)
  {
LABEL_9:
    v8 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
    v6 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v5);
  v8 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v9, &v8);
  CFRelease(v5);
  v6 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v6);
}

void sub_296F7E270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC86C0]);
  v4 = ctu::cf::map_adapter::copyCFDictionaryRef((a1 + 32), *MEMORY[0x29EDC8718]);
  if (v4)
  {
    v5 = v4;
    v9[0] = 0xAAAAAAAAAAAAAAAALL;
    v9[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v9, v4);
    Int = ctu::cf::map_adapter::getInt(v9, *MEMORY[0x29EDC8778]);
    v7 = ctu::cf::map_adapter::getInt(v9, *MEMORY[0x29EDC8658]);
    MEMORY[0x29C268420](v9);
    *(a2 + 4) = Int | (v7 << 32);
    CFRelease(v5);
  }

  else
  {
    *(a2 + 4) = 0;
  }

  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8748]);
  *(a2 + 12) = result;
  return result;
}

void sub_296F7E398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_70(uint64_t a1, _DWORD *a2)
{
  v2 = a2;
  v3 = a1;
  *a2 = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8890]);
  v4 = ctu::cf::map_adapter::copyCFArrayRef((v3 + 32), *MEMORY[0x29EDC8718]);
  Count = CFArrayGetCount(v4);
  v6 = Count;
  if (Count < 1)
  {
    v18 = 0;
    v17 = 0;
    v8 = 0;
    v20 = v2 + 2;
    v19 = *(v2 + 1);
    if (v19)
    {
LABEL_10:
      *(v2 + 2) = v19;
      operator delete(v19);
      *v20 = 0;
      v20[1] = 0;
      v20[2] = 0;
    }
  }

  else
  {
    if (Count >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v7 = 8 * Count;
    v8 = operator new(8 * Count);
    v23 = v3;
    v24 = v2;
    bzero(v8, 8 * v6);
    v9 = 0;
    v22 = &v8[v7];
    v10 = *MEMORY[0x29EDC8778];
    v11 = *MEMORY[0x29EDC8658];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
      v13 = ValueAtIndex;
      if (ValueAtIndex && (v14 = CFGetTypeID(ValueAtIndex), v14 == CFDictionaryGetTypeID()))
      {
        CFRetain(v13);
        CFRetain(v13);
        v25[0] = 0xAAAAAAAAAAAAAAAALL;
        v25[1] = 0xAAAAAAAAAAAAAAAALL;
        ctu::cf::dict_adapter::dict_adapter(v25, v13);
        Int = ctu::cf::map_adapter::getInt(v25, v10);
        v16 = ctu::cf::map_adapter::getInt(v25, v11);
        MEMORY[0x29C268420](v25);
        *&v8[8 * v9] = Int | (v16 << 32);
        CFRelease(v13);
        CFRelease(v13);
      }

      else
      {
        *&v8[8 * v9] = 0;
      }

      ++v9;
    }

    while (v6 != v9);
    v3 = v23;
    v2 = v24;
    v18 = v22;
    v17 = &v8[8 * v6];
    v20 = v24 + 2;
    v19 = *(v24 + 1);
    if (v19)
    {
      goto LABEL_10;
    }
  }

  *(v2 + 1) = v8;
  *(v2 + 2) = v18;
  *(v2 + 3) = v17;
  if (v4)
  {
    CFRelease(v4);
  }

  v2[8] = ctu::cf::map_adapter::getInt((v3 + 32), *MEMORY[0x29EDC8860]);
  result = ctu::cf::map_adapter::getInt((v3 + 32), *MEMORY[0x29EDC8810]);
  v2[9] = result;
  return result;
}

void sub_296F7E608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F7E61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v15 = va_arg(va2, const void *);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va2);
  operator delete(v11);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_296F7E668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  operator delete(v13);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex16QMICommandDriver17setWLANState_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 14;
  strcpy(__p, "set WLAN state");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Setting WLAN completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7E7F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

CFTypeRef __copy_helper_block_e8_32c30_ZTSN3ctu2cf11CFSharedRefIKvEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c30_ZTSN3ctu2cf11CFSharedRefIKvEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

const void **ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, _DWORD *a2)
{
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8698]);
  *a2 = result;
  return result;
}

uint64_t ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_228(uint64_t a1, _DWORD *a2)
{
  result = ctu::cf::map_adapter::getInt((a1 + 32), *MEMORY[0x29EDC8980]);
  *a2 = result;
  return result;
}

void ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_233(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  strcpy(__p, "Start BLER stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Start BLER completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7EA7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver12setBLER_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_238(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 15;
  strcpy(__p, "Stop BLER stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Stop BLER completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7EBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, float *a2)
{
  result = ctu::cf::map_adapter::getDouble((a1 + 32), *MEMORY[0x29EDC8AF0], 0.0);
  v5 = v4;
  v6 = 0.0;
  if (v5 >= 0.0)
  {
    v6 = v5;
    if (v5 > 1.0)
    {
      v6 = 1.0;
    }
  }

  *a2 = v6;
  return result;
}

void ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_247(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 16;
  strcpy(__p, "Start SINR stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(*__p);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  *__p = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Start SINR completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7ED8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver12setSINR_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_13CommandDriver8CallbackE_block_invoke_252(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 15;
  strcpy(__p, "Stop SINR stats");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Stop SINR completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}

void sub_296F7EEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN4coex16QMICommandDriver17setLAAConfig_syncEN3ctu2cf11CFSharedRefIK14__CFDictionaryEENS_5SubIdENS_13CommandDriver8CallbackE_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v10 = 14;
  strcpy(__p, "Set LAA config");
  coex::QMICommandDriver::checkError(v3, a2, __p, &cf);
  if (v10 < 0)
  {
    operator delete(__p[0]);
    v4 = cf;
    if (cf)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = cf;
    if (cf)
    {
LABEL_3:
      v8 = v4;
      goto LABEL_4;
    }
  }

  v6 = *(v3 + 40);
  if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    goto LABEL_9;
  }

  LOWORD(__p[0]) = 0;
  _os_log_debug_impl(&dword_296ECF000, v6, OS_LOG_TYPE_DEBUG, "#D Set LAA config completed", __p, 2u);
  v4 = cf;
  v8 = cf;
  if (!cf)
  {
LABEL_9:
    v7 = 0;
    coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
    v5 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_4:
  CFRetain(v4);
  v7 = 0;
  coex::CommandDriver::Callback::operator()(a1 + 40, &v8, &v7);
  CFRelease(v4);
  v5 = cf;
  if (!cf)
  {
    return;
  }

LABEL_10:
  CFRelease(v5);
}