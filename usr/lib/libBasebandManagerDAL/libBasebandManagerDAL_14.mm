void sub_29732F8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb5_E3__8NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb5_ENK3__8clEv_block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[5];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v20 = v7;
  if (!v7)
  {
    return;
  }

  if (!a1[4])
  {
LABEL_21:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v16);
    }

    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xdict = v8;
  }

  else
  {
    v9 = xpc_null_create();
    xdict = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C26F9F0](*a3);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 != MEMORY[0x29EDCAA40])
  {
    v13 = *a3;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF8C8], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  if (MEMORY[0x29C26F9F0](*a2) == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = -534716416;
  }

  v17 = v15;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v17, &xdict);
  xpc_release(xdict);
  v7 = v20;
  if (v20)
  {
    goto LABEL_21;
  }
}

void sub_29732FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, ...)
{
  va_start(va, object);
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb6_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v77 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v66 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBF690];
    v5 = strlen(*MEMORY[0x29EDBF690]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v5 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v6;
      v76 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v76) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v18 = operator new(0x28uLL);
        v19 = v18;
        strcpy(v18, " rejected; ABM is shutting down ");
        v20 = SHIBYTE(v76);
        if ((SHIBYTE(v76) & 0x8000000000000000) != 0)
        {
          v20 = *(&__dst + 1);
          v23 = (v76 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v23 - *(&__dst + 1) < 0x20)
          {
            v21 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v76 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v23)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = __dst;
            if (v23 > 0x3FFFFFFFFFFFFFF2)
            {
              v26 = 0;
LABEL_46:
              v27 = operator new(v3);
              v28 = v27;
              if (v20)
              {
                memmove(v27, v22, v20);
              }

              v29 = &v28[v20];
              v30 = v19[1];
              *v29 = *v19;
              *(v29 + 1) = v30;
              if (!v26)
              {
                operator delete(v22);
              }

              *(&__dst + 1) = v21;
              v76 = v3 | 0x8000000000000000;
              *&__dst = v28;
              v31 = &v28[v21];
LABEL_85:
              *v31 = 0;
              *object = __dst;
              object[2] = v76;
              v76 = 0;
              __dst = 0uLL;
              operator delete(v19);
              if (SHIBYTE(v76) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_87:
                  v49 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v49 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v49;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_weak_owners = v1->__shared_weak_owners_;
                  p_shared_weak_owners = &v1->__shared_weak_owners_;
                  if (!shared_weak_owners)
                  {
LABEL_110:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v45 = v66;
                      if (!v66)
                      {
                        goto LABEL_117;
                      }

                      goto LABEL_112;
                    }

                    goto LABEL_111;
                  }

LABEL_93:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v53 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v53 = object[1];
                  }

                  if (v53)
                  {
                    v54 = xpc_dictionary_create(0, 0, 0);
                    if (v54 || (v54 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v54) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v54);
                        v55 = v54;
                      }

                      else
                      {
                        v55 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v55 = xpc_null_create();
                      v54 = 0;
                    }

                    xpc_release(v54);
                    v56 = xpc_null_create();
                    v57 = __dst;
                    *&__dst = v55;
                    xpc_release(v57);
                    xpc_release(v56);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v58 = object;
                    }

                    else
                    {
                      v58 = object[0];
                    }

                    v59 = xpc_string_create(v58);
                    if (!v59)
                    {
                      v59 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v55, *MEMORY[0x29EDBE648], v59);
                    v60 = xpc_null_create();
                    xpc_release(v59);
                    xpc_release(v60);
                  }

                  LODWORD(aBlock) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_weak_owners, &aBlock, &__dst);
                  xpc_release(__dst);
                  goto LABEL_110;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_87;
                }
              }

              v52 = v1->__shared_weak_owners_;
              p_shared_weak_owners = &v1->__shared_weak_owners_;
              if (!v52)
              {
                goto LABEL_110;
              }

              goto LABEL_93;
            }

LABEL_37:
            v24 = 2 * v23;
            if (v21 > 2 * v23)
            {
              v24 = v21;
            }

            if ((v24 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v24 | 7) + 1;
            }

            if (v24 >= 0x17)
            {
              v3 = v25;
            }

            else
            {
              v3 = 23;
            }

            v26 = v23 == 22;
            goto LABEL_46;
          }

          v32 = __dst;
          v46 = (__dst + *(&__dst + 1));
          v47 = v18[1];
          *v46 = *v18;
          v46[1] = v47;
          v33 = v20 + 32;
          *(&__dst + 1) = v20 + 32;
        }

        else
        {
          if (SHIBYTE(v76) < 0x17)
          {
            v21 = SHIBYTE(v76) | 0x20;
            v22 = &__dst;
            v23 = 22;
            goto LABEL_37;
          }

          v32 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v76), " rejected; ABM is shutting down ", 32);
          v33 = v20 + 32;
          HIBYTE(v76) = (v20 + 32) & 0x7F;
        }

        v31 = v32 + v33;
        goto LABEL_85;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v72[0] = v9;
  v72[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&aBlock, v9);
  __dst = 0uLL;
  if (v74)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v74);
    if (*(&__dst + 1))
    {
      *&__dst = aBlock;
    }

    if (v74)
    {
      std::__shared_weak_count::__release_weak(v74);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = __dst;
    if (__dst)
    {
LABEL_24:
      shared_owners = v1->__shared_owners_;
      v70 = shared_owners;
      if (shared_owners)
      {
        xpc_retain(shared_owners);
      }

      else
      {
        v70 = xpc_null_create();
      }

      xpc::bridge(&cf, &v70, v16);
      v38 = cf;
      if (cf && (v39 = CFGetTypeID(cf), v39 == CFDictionaryGetTypeID()))
      {
        v72[0] = v38;
        CFRetain(v38);
      }

      else
      {
        v72[0] = 0;
      }

      object[0] = MEMORY[0x29EDCA5F8];
      object[1] = 1174405120;
      object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb6_ENK3__9clEv_block_invoke;
      object[3] = &__block_descriptor_tmp_245;
      object[4] = v2;
      object[5] = v1[1].__vftable;
      v40 = v1[1].__shared_owners_;
      v68 = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v41 = v1->__shared_weak_owners_;
      if (v41)
      {
        v41 = _Block_copy(v41);
      }

      v69 = v41;
      v42 = _Block_copy(object);
      v43 = v2[2].~__shared_weak_count_0;
      if (v43)
      {
        dispatch_retain(v43);
      }

      aBlock = v42;
      v74 = v43;
      (*(*v14 + 200))(v14, v72, &aBlock);
      if (v74)
      {
        dispatch_release(v74);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v72[0])
      {
        CFRelease(v72[0]);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      xpc_release(v70);
      if (v69)
      {
        _Block_release(v69);
      }

      if (v68)
      {
        std::__shared_weak_count::__release_weak(v68);
      }

      goto LABEL_79;
    }
  }

  v34 = v2[2].__get_deleter;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297288000, v34, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
  }

  v35 = xpc_null_create();
  v36 = v1->__shared_weak_owners_;
  object[0] = v35;
  v37 = xpc_null_create();
  (*(v36 + 16))(v36, 3760250880, object);
  xpc_release(object[0]);
  xpc_release(v37);
LABEL_79:
  v44 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v44->__on_zero_shared)(v44);
    std::__shared_weak_count::__release_weak(v44);
    v45 = v66;
    if (!v66)
    {
      goto LABEL_117;
    }

    goto LABEL_112;
  }

LABEL_111:
  v45 = v66;
  if (!v66)
  {
    goto LABEL_117;
  }

LABEL_112:
  v61 = v45[1].__shared_owners_;
  if (v61)
  {
    std::__shared_weak_count::__release_weak(v61);
  }

  v62 = v45->__shared_weak_owners_;
  if (v62)
  {
    _Block_release(v62);
  }

  xpc_release(v45->__shared_owners_);
  operator delete(v45);
LABEL_117:
  v63 = a1;
  if (a1)
  {
    v64 = a1[2];
    if (v64)
    {
      if (!atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v64->__on_zero_shared)(v64);
        std::__shared_weak_count::__release_weak(v64);
        v63 = a1;
      }
    }

    operator delete(v63);
  }
}

void sub_297330538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb6_E3__9NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb6_ENK3__9clEv_block_invoke(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_2973308A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb7_E4__10EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v88 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v77 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBF690];
    v5 = strlen(*MEMORY[0x29EDBF690]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v5 | 7) + 1;
      }

      p_dst = operator new(v16);
      *(&__dst + 1) = v6;
      v87 = v16 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v87) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v17 = operator new(0x28uLL);
        v18 = v17;
        strcpy(v17, " rejected; ABM is shutting down ");
        v19 = SHIBYTE(v87);
        if ((SHIBYTE(v87) & 0x8000000000000000) != 0)
        {
          v19 = *(&__dst + 1);
          v22 = (v87 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v22 - *(&__dst + 1) < 0x20)
          {
            v20 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v87 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v22)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v21 = __dst;
            if (v22 > 0x3FFFFFFFFFFFFFF2)
            {
              v25 = 0;
LABEL_46:
              v26 = operator new(v3);
              v27 = v26;
              if (v19)
              {
                memmove(v26, v21, v19);
              }

              v28 = &v27[v19];
              v29 = v18[1];
              *v28 = *v18;
              *(v28 + 1) = v29;
              if (!v25)
              {
                operator delete(v21);
              }

              *(&__dst + 1) = v20;
              v87 = v3 | 0x8000000000000000;
              *&__dst = v27;
              v30 = &v27[v20];
LABEL_94:
              *v30 = 0;
              *object = __dst;
              object[2] = v87;
              v87 = 0;
              __dst = 0uLL;
              operator delete(v18);
              if (SHIBYTE(v87) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_96:
                  v53 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v53 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v53;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_weak_owners = v1->__shared_weak_owners_;
                  p_shared_weak_owners = &v1->__shared_weak_owners_;
                  if (!shared_weak_owners)
                  {
LABEL_127:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v66 = v77;
                      if (!v77)
                      {
                        goto LABEL_134;
                      }

                      goto LABEL_129;
                    }

                    goto LABEL_128;
                  }

LABEL_102:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v57 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v57 = object[1];
                  }

                  if (v57)
                  {
                    v58 = xpc_dictionary_create(0, 0, 0);
                    if (v58 || (v58 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v58) == MEMORY[0x29EDCAA00])
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
                    v67 = xpc_null_create();
                    v68 = __dst;
                    *&__dst = v59;
                    xpc_release(v68);
                    xpc_release(v67);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v69 = object;
                    }

                    else
                    {
                      v69 = object[0];
                    }

                    v70 = xpc_string_create(v69);
                    if (!v70)
                    {
                      v70 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v59, *MEMORY[0x29EDBE648], v70);
                    v71 = xpc_null_create();
                    xpc_release(v70);
                    xpc_release(v71);
                  }

                  LODWORD(v84) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_weak_owners, &v84, &__dst);
                  xpc_release(__dst);
                  goto LABEL_127;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_96;
                }
              }

              v56 = v1->__shared_weak_owners_;
              p_shared_weak_owners = &v1->__shared_weak_owners_;
              if (!v56)
              {
                goto LABEL_127;
              }

              goto LABEL_102;
            }

LABEL_37:
            v23 = 2 * v22;
            if (v20 > 2 * v22)
            {
              v23 = v20;
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
              v3 = v24;
            }

            else
            {
              v3 = 23;
            }

            v25 = v22 == 22;
            goto LABEL_46;
          }

          v31 = __dst;
          v50 = (__dst + *(&__dst + 1));
          v51 = v17[1];
          *v50 = *v17;
          v50[1] = v51;
          v32 = v19 + 32;
          *(&__dst + 1) = v19 + 32;
        }

        else
        {
          if (SHIBYTE(v87) < 0x17)
          {
            v20 = SHIBYTE(v87) | 0x20;
            v21 = &__dst;
            v22 = 22;
            goto LABEL_37;
          }

          v31 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v87), " rejected; ABM is shutting down ", 32);
          v32 = v19 + 32;
          HIBYTE(v87) = (v19 + 32) & 0x7F;
        }

        v30 = v31 + v32;
        goto LABEL_94;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  v84 = 0xAAAAAAAAAAAAAAAALL;
  v85 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v83[0] = v9;
  v83[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&__dst, v9);
  v84 = 0;
  v85 = 0;
  if (*(&__dst + 1))
  {
    v85 = std::__shared_weak_count::lock(*(&__dst + 1));
    if (v85)
    {
      v84 = __dst;
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_weak(*(&__dst + 1));
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v84;
    if (v84)
    {
      goto LABEL_24;
    }

LABEL_53:
    v33 = v2[2].__get_deleter;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_297288000, v33, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
    }

    v34 = xpc_null_create();
    v35 = v1->__shared_weak_owners_;
    object[0] = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v36);
    goto LABEL_114;
  }

  v14 = v84;
  if (!v84)
  {
    goto LABEL_53;
  }

LABEL_24:
  value = xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBF170]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v37 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v38 = v2[2].__get_deleter;
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (v37 == 1)
  {
    if (v39)
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&dword_297288000, v38, OS_LOG_TYPE_DEFAULT, "#I RF Self Test in FTM requested", object, 2u);
    }

    goto LABEL_67;
  }

  if (v39)
  {
    LOWORD(object[0]) = 0;
    _os_log_impl(&dword_297288000, v38, OS_LOG_TYPE_DEFAULT, "#I RF Self Test in AST2 mode requested", object, 2u);
  }

  memset(object, 0, 24);
  ctu::cf::assign();
  v87 = object[2];
  __dst = *object;
  if (SHIBYTE(object[2]) >= 0)
  {
    v40 = &__dst;
  }

  else
  {
    v40 = __dst;
  }

  v41 = xpc_dictionary_get_value(v1->__shared_owners_, v40);
  if (SHIBYTE(v87) < 0)
  {
    v60 = v41;
    operator delete(__dst);
    if (v60)
    {
      goto LABEL_67;
    }
  }

  else if (v41)
  {
LABEL_67:
    shared_owners = v1->__shared_owners_;
    v81 = shared_owners;
    if (shared_owners)
    {
      xpc_retain(shared_owners);
    }

    else
    {
      v81 = xpc_null_create();
    }

    xpc::bridge(&cf, &v81, v43);
    v44 = cf;
    if (cf && (v45 = CFGetTypeID(cf), v45 == CFDictionaryGetTypeID()))
    {
      v83[0] = v44;
      CFRetain(v44);
    }

    else
    {
      v83[0] = 0;
    }

    object[0] = MEMORY[0x29EDCA5F8];
    object[1] = 1174405120;
    object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb7_ENK4__10clEv_block_invoke;
    object[3] = &__block_descriptor_tmp_248;
    object[4] = v2;
    object[5] = v1[1].__vftable;
    v46 = v1[1].__shared_owners_;
    v79 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = v1->__shared_weak_owners_;
    if (v47)
    {
      v47 = _Block_copy(v47);
    }

    aBlock = v47;
    v48 = _Block_copy(object);
    v49 = v2[2].~__shared_weak_count_0;
    if (v49)
    {
      dispatch_retain(v49);
    }

    *&__dst = v48;
    *(&__dst + 1) = v49;
    (*(*v14 + 208))(v14, v83, &__dst);
    if (*(&__dst + 1))
    {
      dispatch_release(*(&__dst + 1));
    }

    if (__dst)
    {
      _Block_release(__dst);
    }

    if (v83[0])
    {
      CFRelease(v83[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v81);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v79)
    {
      std::__shared_weak_count::__release_weak(v79);
    }

    goto LABEL_114;
  }

  v61 = v2[2].__get_deleter;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297288000, v61, OS_LOG_TYPE_ERROR, "Ticket was not provided", object, 2u);
  }

  v62 = xpc_null_create();
  v63 = v1->__shared_weak_owners_;
  object[0] = v62;
  v64 = xpc_null_create();
  (*(v63 + 16))(v63, 3760250882, object);
  xpc_release(object[0]);
  xpc_release(v64);
LABEL_114:
  v65 = v85;
  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v65->__on_zero_shared)(v65);
    std::__shared_weak_count::__release_weak(v65);
    v66 = v77;
    if (!v77)
    {
      goto LABEL_134;
    }

    goto LABEL_129;
  }

LABEL_128:
  v66 = v77;
  if (!v77)
  {
    goto LABEL_134;
  }

LABEL_129:
  v72 = v66[1].__shared_owners_;
  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

  v73 = v66->__shared_weak_owners_;
  if (v73)
  {
    _Block_release(v73);
  }

  xpc_release(v66->__shared_owners_);
  operator delete(v66);
LABEL_134:
  v74 = a1;
  if (a1)
  {
    v75 = a1[2];
    if (v75)
    {
      if (!atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v75->__on_zero_shared)(v75);
        std::__shared_weak_count::__release_weak(v75);
        v74 = a1;
      }
    }

    operator delete(v74);
  }
}

void sub_297331398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb7_E4__10NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb7_ENK4__10clEv_block_invoke(void *a1, uint64_t *a2, ctu **a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v16 = v8;
    if (v8)
    {
      v10 = v8;
      if (a1[5])
      {
        v11 = *a2;
        if (*a2)
        {
          v12 = -534716416;
          v13 = *(v7 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v12 = -534716416;
            }

            else
            {
              v12 = 0;
            }
          }
        }

        else
        {
          v12 = 0;
        }

        v14 = v12;
        ctu::cf_to_xpc(buf, *a3, v9);
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(a1 + 7, &v14, buf);
        xpc_release(*buf);
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }
}

void sub_297331784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  object = v5;
  if (v5 && MEMORY[0x29C26F9F0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb8_E4__11EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v84 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v73 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBF760];
    v5 = strlen(*MEMORY[0x29EDBF760]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v5 | 7) + 1;
      }

      p_dst = operator new(v19);
      *(&__dst + 1) = v6;
      v83 = v19 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v83) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_36:
        *(p_dst + v6) = 0;
        v20 = operator new(0x28uLL);
        v21 = v20;
        strcpy(v20, " rejected; ABM is shutting down ");
        v22 = SHIBYTE(v83);
        if ((SHIBYTE(v83) & 0x8000000000000000) != 0)
        {
          v22 = *(&__dst + 1);
          v25 = (v83 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v25 - *(&__dst + 1) < 0x20)
          {
            v23 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v83 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v25)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v24 = __dst;
            if (v25 > 0x3FFFFFFFFFFFFFF2)
            {
              v28 = 0;
LABEL_51:
              v29 = operator new(v3);
              v30 = v29;
              if (v22)
              {
                memmove(v29, v24, v22);
              }

              v31 = &v30[v22];
              v32 = v21[1];
              *v31 = *v21;
              *(v31 + 1) = v32;
              if (!v28)
              {
                operator delete(v24);
              }

              *(&__dst + 1) = v23;
              v83 = v3 | 0x8000000000000000;
              *&__dst = v30;
              v33 = &v30[v23];
LABEL_67:
              *v33 = 0;
              *object = __dst;
              object[2] = v83;
              v83 = 0;
              __dst = 0uLL;
              operator delete(v21);
              if (SHIBYTE(v83) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_69:
                  v48 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v48 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_weak_owners = v1->__shared_weak_owners_;
                  p_shared_weak_owners = &v1->__shared_weak_owners_;
                  if (!shared_weak_owners)
                  {
LABEL_119:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v62 = v73;
                      if (!v73)
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_121;
                    }

                    goto LABEL_120;
                  }

LABEL_75:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v52 = object[1];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v63 = xpc_null_create();
                    v64 = __dst;
                    *&__dst = v54;
                    xpc_release(v64);
                    xpc_release(v63);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v65 = object;
                    }

                    else
                    {
                      v65 = object[0];
                    }

                    v66 = xpc_string_create(v65);
                    if (!v66)
                    {
                      v66 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v66);
                    v67 = xpc_null_create();
                    xpc_release(v66);
                    xpc_release(v67);
                  }

                  LODWORD(v80) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_weak_owners, &v80, &__dst);
                  xpc_release(__dst);
                  goto LABEL_119;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_69;
                }
              }

              v51 = v1->__shared_weak_owners_;
              p_shared_weak_owners = &v1->__shared_weak_owners_;
              if (!v51)
              {
                goto LABEL_119;
              }

              goto LABEL_75;
            }

LABEL_42:
            v26 = 2 * v25;
            if (v23 > 2 * v25)
            {
              v26 = v23;
            }

            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            if (v26 >= 0x17)
            {
              v3 = v27;
            }

            else
            {
              v3 = 23;
            }

            v28 = v25 == 22;
            goto LABEL_51;
          }

          v34 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v20[1];
          *v45 = *v20;
          v45[1] = v46;
          v35 = v22 + 32;
          *(&__dst + 1) = v22 + 32;
        }

        else
        {
          if (SHIBYTE(v83) < 0x17)
          {
            v23 = SHIBYTE(v83) | 0x20;
            v24 = &__dst;
            v25 = 22;
            goto LABEL_42;
          }

          v34 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v83), " rejected; ABM is shutting down ", 32);
          v35 = v22 + 32;
          HIBYTE(v83) = (v22 + 32) & 0x7F;
        }

        v33 = v34 + v35;
        goto LABEL_67;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_36;
  }

  v80 = 0xAAAAAAAAAAAAAAAALL;
  v81 = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v79[0] = v9;
  v79[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&__dst, v9);
  v80 = 0;
  v81 = 0;
  if (*(&__dst + 1))
  {
    v81 = std::__shared_weak_count::lock(*(&__dst + 1));
    if (v81)
    {
      v80 = __dst;
    }

    if (*(&__dst + 1))
    {
      std::__shared_weak_count::__release_weak(*(&__dst + 1));
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = v80;
    if (v80)
    {
      goto LABEL_24;
    }

LABEL_58:
    v36 = v2[2].__get_deleter;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object[0]) = 0;
      _os_log_error_impl(&dword_297288000, v36, OS_LOG_TYPE_ERROR, "No radio driver", object, 2u);
    }

    v37 = xpc_null_create();
    v38 = v1->__shared_weak_owners_;
    object[0] = v37;
    v39 = xpc_null_create();
    (*(v38 + 16))(v38, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v39);
    goto LABEL_105;
  }

  v14 = v80;
  if (!v80)
  {
    goto LABEL_58;
  }

LABEL_24:
  memset(object, 0, 24);
  ctu::cf::assign();
  v83 = object[2];
  __dst = *object;
  if (SHIBYTE(object[2]) >= 0)
  {
    v15 = &__dst;
  }

  else
  {
    v15 = __dst;
  }

  value = xpc_dictionary_get_value(v1->__shared_owners_, v15);
  if (SHIBYTE(v83) < 0)
  {
    v40 = value;
    operator delete(__dst);
    if (v40)
    {
      goto LABEL_29;
    }
  }

  else if (value)
  {
LABEL_29:
    shared_owners = v1->__shared_owners_;
    v77 = shared_owners;
    if (shared_owners)
    {
      xpc_retain(shared_owners);
    }

    else
    {
      v77 = xpc_null_create();
    }

    xpc::bridge(&cf, &v77, v18);
    v55 = cf;
    if (cf && (v56 = CFGetTypeID(cf), v56 == CFDictionaryGetTypeID()))
    {
      v79[0] = v55;
      CFRetain(v55);
    }

    else
    {
      v79[0] = 0;
    }

    object[0] = MEMORY[0x29EDCA5F8];
    object[1] = 1174405120;
    object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb8_ENK4__11clEv_block_invoke;
    object[3] = &__block_descriptor_tmp_251;
    object[4] = v2;
    object[5] = v1[1].__vftable;
    v57 = v1[1].__shared_owners_;
    v75 = v57;
    if (v57)
    {
      atomic_fetch_add_explicit(&v57->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = v1->__shared_weak_owners_;
    if (v58)
    {
      v58 = _Block_copy(v58);
    }

    aBlock = v58;
    v59 = _Block_copy(object);
    v60 = v2[2].~__shared_weak_count_0;
    if (v60)
    {
      dispatch_retain(v60);
    }

    *&__dst = v59;
    *(&__dst + 1) = v60;
    (*(*v14 + 192))(v14, v79, &__dst);
    if (*(&__dst + 1))
    {
      dispatch_release(*(&__dst + 1));
    }

    if (__dst)
    {
      _Block_release(__dst);
    }

    if (v79[0])
    {
      CFRelease(v79[0]);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v77);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v75)
    {
      std::__shared_weak_count::__release_weak(v75);
    }

    goto LABEL_105;
  }

  v41 = v2[2].__get_deleter;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297288000, v41, OS_LOG_TYPE_ERROR, "Ticket was not provided", object, 2u);
  }

  v42 = xpc_null_create();
  v43 = v1->__shared_weak_owners_;
  object[0] = v42;
  v44 = xpc_null_create();
  (*(v43 + 16))(v43, 3760250882, object);
  xpc_release(object[0]);
  xpc_release(v44);
LABEL_105:
  v61 = v81;
  if (v81 && !atomic_fetch_add(&v81->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
    v62 = v73;
    if (!v73)
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

LABEL_120:
  v62 = v73;
  if (!v73)
  {
    goto LABEL_126;
  }

LABEL_121:
  v68 = v62[1].__shared_owners_;
  if (v68)
  {
    std::__shared_weak_count::__release_weak(v68);
  }

  v69 = v62->__shared_weak_owners_;
  if (v69)
  {
    _Block_release(v69);
  }

  xpc_release(v62->__shared_owners_);
  operator delete(v62);
LABEL_126:
  v70 = a1;
  if (a1)
  {
    v71 = a1[2];
    if (v71)
    {
      if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v71->__on_zero_shared)(v71);
        std::__shared_weak_count::__release_weak(v71);
        v70 = a1;
      }
    }

    operator delete(v70);
  }
}

void sub_297332258(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb8_E4__11NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb8_ENK4__11clEv_block_invoke(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_297332628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb9_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v66 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBEEA8];
    v5 = strlen(*MEMORY[0x29EDBEEA8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v5 | 7) + 1;
      }

      p_dst = operator new(v18);
      *(&__dst + 1) = v6;
      v65 = v18 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v65) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_30:
        *(p_dst + v6) = 0;
        v19 = operator new(0x28uLL);
        v20 = v19;
        strcpy(v19, " rejected; ABM is shutting down ");
        v21 = SHIBYTE(v65);
        if ((SHIBYTE(v65) & 0x8000000000000000) != 0)
        {
          v21 = *(&__dst + 1);
          v24 = (v65 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v24 - *(&__dst + 1) < 0x20)
          {
            v22 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v65 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v24)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v23 = __dst;
            if (v24 > 0x3FFFFFFFFFFFFFF2)
            {
              v27 = 0;
LABEL_45:
              v28 = operator new(v3);
              v29 = v28;
              if (v21)
              {
                memmove(v28, v23, v21);
              }

              v30 = &v29[v21];
              v31 = v20[1];
              *v30 = *v20;
              *(v30 + 1) = v31;
              if (!v27)
              {
                operator delete(v23);
              }

              *(&__dst + 1) = v22;
              v65 = v3 | 0x8000000000000000;
              *&__dst = v29;
              v32 = &v29[v22];
LABEL_59:
              *v32 = 0;
              *object = __dst;
              object[2] = v65;
              v65 = 0;
              __dst = 0uLL;
              operator delete(v20);
              if (SHIBYTE(v65) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_61:
                  v43 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v43 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v43;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_84:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v39 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_91;
                      }

                      goto LABEL_86;
                    }

                    goto LABEL_85;
                  }

LABEL_67:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v47 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v47 = object[1];
                  }

                  if (v47)
                  {
                    v48 = xpc_dictionary_create(0, 0, 0);
                    if (v48 || (v48 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v48) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v48);
                        v49 = v48;
                      }

                      else
                      {
                        v49 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v49 = xpc_null_create();
                      v48 = 0;
                    }

                    xpc_release(v48);
                    v50 = xpc_null_create();
                    v51 = __dst;
                    *&__dst = v49;
                    xpc_release(v51);
                    xpc_release(v50);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v52 = object;
                    }

                    else
                    {
                      v52 = object[0];
                    }

                    v53 = xpc_string_create(v52);
                    if (!v53)
                    {
                      v53 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v49, *MEMORY[0x29EDBE648], v53);
                    v54 = xpc_null_create();
                    xpc_release(v53);
                    xpc_release(v54);
                  }

                  LODWORD(v61) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v61, &__dst);
                  xpc_release(__dst);
                  goto LABEL_84;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_61;
                }
              }

              v46 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v46)
              {
                goto LABEL_84;
              }

              goto LABEL_67;
            }

LABEL_36:
            v25 = 2 * v24;
            if (v22 > 2 * v24)
            {
              v25 = v22;
            }

            if ((v25 | 7) == 0x17)
            {
              v26 = 25;
            }

            else
            {
              v26 = (v25 | 7) + 1;
            }

            if (v25 >= 0x17)
            {
              v3 = v26;
            }

            else
            {
              v3 = 23;
            }

            v27 = v24 == 22;
            goto LABEL_45;
          }

          v33 = __dst;
          v40 = (__dst + *(&__dst + 1));
          v41 = v19[1];
          *v40 = *v19;
          v40[1] = v41;
          v34 = v21 + 32;
          *(&__dst + 1) = v21 + 32;
        }

        else
        {
          if (SHIBYTE(v65) < 0x17)
          {
            v22 = SHIBYTE(v65) | 0x20;
            v23 = &__dst;
            v24 = 22;
            goto LABEL_36;
          }

          v33 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v65), " rejected; ABM is shutting down ", 32);
          v34 = v21 + 32;
          HIBYTE(v65) = (v21 + 32) & 0x7F;
        }

        v32 = v33 + v34;
        goto LABEL_59;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_30;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v61, v9);
  __dst = 0uLL;
  if (v62)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v62);
    if (*(&__dst + 1))
    {
      *&__dst = v61;
    }

    if (v62)
    {
      std::__shared_weak_count::__release_weak(v62);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_52:
    v35 = xpc_null_create();
    v36 = v1->__shared_owners_;
    object[0] = v35;
    v37 = xpc_null_create();
    (*(v36 + 16))(v36, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v37);
    goto LABEL_53;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_52;
  }

LABEL_24:
  (*(*v14 + 264))(v14, 0);
  (*(*v14 + 264))(v14, 1);
  (*(*v14 + 272))(v14);
  v15 = xpc_null_create();
  v16 = v1->__shared_owners_;
  object[0] = v15;
  v17 = xpc_null_create();
  (*(v16 + 16))(v16, 0, object);
  xpc_release(object[0]);
  xpc_release(v17);
LABEL_53:
  v38 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
    v39 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

LABEL_85:
  v39 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_91;
  }

LABEL_86:
  v55 = v39[3];
  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  v56 = v39[1];
  if (v56)
  {
    _Block_release(v56);
  }

  operator delete(v39);
LABEL_91:
  v57 = a1;
  if (a1)
  {
    v58 = a1[2];
    if (v58)
    {
      if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v58->__on_zero_shared)(v58);
        std::__shared_weak_count::__release_weak(v58);
        v57 = a1;
      }
    }

    operator delete(v57);
  }
}

void sub_297332E8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, xpc_object_t __p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb9_E4__12NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb10_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v79 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v65 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEBC0];
    v5 = strlen(*MEMORY[0x29EDBEBC0]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v78 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v78) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_37:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v78);
        if ((SHIBYTE(v78) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v78 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v78 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_52:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v78 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_83:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v78;
              v78 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v78) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_85:
                  v48 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v48 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_108:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v44 = v65;
                      if (!v65)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_110;
                    }

                    goto LABEL_109;
                  }

LABEL_91:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v52 = *&aBlock[8];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v55 = xpc_null_create();
                    v56 = __dst;
                    *&__dst = v54;
                    xpc_release(v56);
                    xpc_release(v55);
                    if (aBlock[23] >= 0)
                    {
                      v57 = aBlock;
                    }

                    else
                    {
                      v57 = *aBlock;
                    }

                    v58 = xpc_string_create(v57);
                    if (!v58)
                    {
                      v58 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v58);
                    v59 = xpc_null_create();
                    xpc_release(v58);
                    xpc_release(v59);
                  }

                  LODWORD(v75) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v75, &__dst);
                  xpc_release(__dst);
                  goto LABEL_108;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_85;
                }
              }

              v51 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v51)
              {
                goto LABEL_108;
              }

              goto LABEL_91;
            }

LABEL_43:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_52;
          }

          v36 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v22[1];
          *v45 = *v22;
          v45[1] = v46;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v78) < 0x17)
          {
            v25 = SHIBYTE(v78) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_43;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v78), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v78) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_83;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_37;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v74[0] = v9;
  v74[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v75, v9);
  __dst = 0uLL;
  if (v76)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v76);
    if (*(&__dst + 1))
    {
      *&__dst = v75;
    }

    if (v76)
    {
      std::__shared_weak_count::__release_weak(v76);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_59:
    v38 = xpc_null_create();
    v39 = v1->__shared_owners_;
    *aBlock = v38;
    v40 = xpc_null_create();
    (*(v39 + 16))(v39, 3760250880, aBlock);
    xpc_release(*aBlock);
    xpc_release(v40);
    goto LABEL_77;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_59;
  }

LABEL_24:
  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb10_ENK4__13clEv_block_invoke;
  v69 = &__block_descriptor_tmp_254;
  v70 = v2;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v72 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v73 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v75 = v17;
  v76 = v18;
  v19 = v1[1].__shared_owners_;
  object = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&cf, &object, v20);
  v41 = cf;
  if (cf && (v42 = CFGetTypeID(cf), v42 == CFDictionaryGetTypeID()))
  {
    v74[0] = v41;
    CFRetain(v41);
  }

  else
  {
    v74[0] = 0;
  }

  (*(*v14 + 296))(v14, &v75, v74);
  if (v74[0])
  {
    CFRelease(v74[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (v76)
  {
    dispatch_release(v76);
  }

  if (v75)
  {
    _Block_release(v75);
  }

  if (v73)
  {
    _Block_release(v73);
  }

  if (v72)
  {
    std::__shared_weak_count::__release_weak(v72);
  }

LABEL_77:
  v43 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
    v44 = v65;
    if (!v65)
    {
      goto LABEL_115;
    }

    goto LABEL_110;
  }

LABEL_109:
  v44 = v65;
  if (!v65)
  {
    goto LABEL_115;
  }

LABEL_110:
  xpc_release(v44[1].__shared_owners_);
  v44[1].__shared_owners_ = 0;
  v60 = v44[1].__vftable;
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v44->__shared_owners_;
  if (v61)
  {
    _Block_release(v61);
  }

  operator delete(v44);
LABEL_115:
  v62 = a1;
  if (a1)
  {
    v63 = a1[2];
    if (v63)
    {
      if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
        v62 = a1;
      }
    }

    operator delete(v62);
  }
}

void sub_2973338F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, char a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *aBlock, char a24, uint64_t a25, char a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb10_E4__13NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb10_ENK4__13clEv_block_invoke(void *a1, uint64_t *a2, ctu **a3)
{
  v20 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    v18 = v8;
    if (v8)
    {
      v10 = v8;
      if (a1[5])
      {
        v11 = *a2;
        if (*a2)
        {
          v12 = *(v7 + 104);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *object = 138412290;
            *&object[4] = v11;
            _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "%@", object, 0xCu);
          }
        }

        else
        {
          v14 = *a3;
          if (*a3)
          {
            v15 = *(v7 + 104);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *object = 138412290;
              *&object[4] = v14;
              _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, "#I Get Antenna Port Info: %@", object, 0xCu);
            }
          }
        }

        if (*a2)
        {
          v13 = -534716416;
        }

        else
        {
          v13 = 0;
        }

        v16 = v13;
        ctu::cf_to_xpc(object, *a3, v9);
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::object>(a1 + 7, &v16, object);
        xpc_release(*object);
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }
}

void sub_297333CAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb11_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v76 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v65 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBEBD8];
    v5 = strlen(*MEMORY[0x29EDBEBD8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v5 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v6;
      v75 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v75) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v18 = operator new(0x28uLL);
        v19 = v18;
        strcpy(v18, " rejected; ABM is shutting down ");
        v20 = SHIBYTE(v75);
        if ((SHIBYTE(v75) & 0x8000000000000000) != 0)
        {
          v20 = *(&__dst + 1);
          v23 = (v75 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v23 - *(&__dst + 1) < 0x20)
          {
            v21 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v75 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v23)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = __dst;
            if (v23 > 0x3FFFFFFFFFFFFFF2)
            {
              v26 = 0;
LABEL_46:
              v27 = operator new(v3);
              v28 = v27;
              if (v20)
              {
                memmove(v27, v22, v20);
              }

              v29 = &v28[v20];
              v30 = v19[1];
              *v29 = *v19;
              *(v29 + 1) = v30;
              if (!v26)
              {
                operator delete(v22);
              }

              *(&__dst + 1) = v21;
              v75 = v3 | 0x8000000000000000;
              *&__dst = v28;
              v31 = &v28[v21];
LABEL_83:
              *v31 = 0;
              *object = __dst;
              object[2] = v75;
              v75 = 0;
              __dst = 0uLL;
              operator delete(v19);
              if (SHIBYTE(v75) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_85:
                  v48 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v48 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_108:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v44 = v65;
                      if (!v65)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_110;
                    }

                    goto LABEL_109;
                  }

LABEL_91:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v52 = object[1];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v55 = xpc_null_create();
                    v56 = __dst;
                    *&__dst = v54;
                    xpc_release(v56);
                    xpc_release(v55);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v57 = object;
                    }

                    else
                    {
                      v57 = object[0];
                    }

                    v58 = xpc_string_create(v57);
                    if (!v58)
                    {
                      v58 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v58);
                    v59 = xpc_null_create();
                    xpc_release(v58);
                    xpc_release(v59);
                  }

                  LODWORD(aBlock) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &aBlock, &__dst);
                  xpc_release(__dst);
                  goto LABEL_108;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_85;
                }
              }

              v51 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v51)
              {
                goto LABEL_108;
              }

              goto LABEL_91;
            }

LABEL_37:
            v24 = 2 * v23;
            if (v21 > 2 * v23)
            {
              v24 = v21;
            }

            if ((v24 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v24 | 7) + 1;
            }

            if (v24 >= 0x17)
            {
              v3 = v25;
            }

            else
            {
              v3 = 23;
            }

            v26 = v23 == 22;
            goto LABEL_46;
          }

          v32 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v18[1];
          *v45 = *v18;
          v45[1] = v46;
          v33 = v20 + 32;
          *(&__dst + 1) = v20 + 32;
        }

        else
        {
          if (SHIBYTE(v75) < 0x17)
          {
            v21 = SHIBYTE(v75) | 0x20;
            v22 = &__dst;
            v23 = 22;
            goto LABEL_37;
          }

          v32 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v75), " rejected; ABM is shutting down ", 32);
          v33 = v20 + 32;
          HIBYTE(v75) = (v20 + 32) & 0x7F;
        }

        v31 = v32 + v33;
        goto LABEL_83;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v71[0] = v9;
  v71[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&aBlock, v9);
  __dst = 0uLL;
  if (v73)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v73);
    if (*(&__dst + 1))
    {
      *&__dst = aBlock;
    }

    if (v73)
    {
      std::__shared_weak_count::__release_weak(v73);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_53:
    v34 = xpc_null_create();
    v35 = v1->__shared_owners_;
    object[0] = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v36);
    goto LABEL_77;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_53;
  }

LABEL_24:
  v15 = v1[1].__shared_owners_;
  v69 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v69 = xpc_null_create();
  }

  xpc::bridge(&cf, &v69, v16);
  v37 = cf;
  if (cf && (v38 = CFGetTypeID(cf), v38 == CFDictionaryGetTypeID()))
  {
    v71[0] = v37;
    CFRetain(v37);
  }

  else
  {
    v71[0] = 0;
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb11_ENK4__14clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_257;
  object[4] = v2;
  object[5] = v1->__shared_weak_owners_;
  v39 = v1[1].__vftable;
  v67 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v1->__shared_owners_;
  if (v40)
  {
    v40 = _Block_copy(v40);
  }

  v68 = v40;
  v41 = _Block_copy(object);
  v42 = v2[2].~__shared_weak_count_0;
  if (v42)
  {
    dispatch_retain(v42);
  }

  aBlock = v41;
  v73 = v42;
  (*(*v14 + 304))(v14, v71, &aBlock);
  if (v73)
  {
    dispatch_release(v73);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v71[0])
  {
    CFRelease(v71[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(v69);
  if (v68)
  {
    _Block_release(v68);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

LABEL_77:
  v43 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
    v44 = v65;
    if (!v65)
    {
      goto LABEL_115;
    }

    goto LABEL_110;
  }

LABEL_109:
  v44 = v65;
  if (!v65)
  {
    goto LABEL_115;
  }

LABEL_110:
  xpc_release(v44[1].__shared_owners_);
  v44[1].__shared_owners_ = 0;
  v60 = v44[1].__vftable;
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v44->__shared_owners_;
  if (v61)
  {
    _Block_release(v61);
  }

  operator delete(v44);
LABEL_115:
  v62 = a1;
  if (a1)
  {
    v63 = a1[2];
    if (v63)
    {
      if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
        v62 = a1;
      }
    }

    operator delete(v62);
  }
}

void sub_2973345AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb11_E4__14NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb11_ENK4__14clEv_block_invoke(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_297334920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb12_E4__15EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v76 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v65 = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(object, 170, 24);
    v4 = *MEMORY[0x29EDBE5B8];
    v5 = strlen(*MEMORY[0x29EDBE5B8]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v5 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v6;
      v75 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v75) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_31:
        *(p_dst + v6) = 0;
        v18 = operator new(0x28uLL);
        v19 = v18;
        strcpy(v18, " rejected; ABM is shutting down ");
        v20 = SHIBYTE(v75);
        if ((SHIBYTE(v75) & 0x8000000000000000) != 0)
        {
          v20 = *(&__dst + 1);
          v23 = (v75 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v23 - *(&__dst + 1) < 0x20)
          {
            v21 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v75 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v23)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v22 = __dst;
            if (v23 > 0x3FFFFFFFFFFFFFF2)
            {
              v26 = 0;
LABEL_46:
              v27 = operator new(v3);
              v28 = v27;
              if (v20)
              {
                memmove(v27, v22, v20);
              }

              v29 = &v28[v20];
              v30 = v19[1];
              *v29 = *v19;
              *(v29 + 1) = v30;
              if (!v26)
              {
                operator delete(v22);
              }

              *(&__dst + 1) = v21;
              v75 = v3 | 0x8000000000000000;
              *&__dst = v28;
              v31 = &v28[v21];
LABEL_83:
              *v31 = 0;
              *object = __dst;
              object[2] = v75;
              v75 = 0;
              __dst = 0uLL;
              operator delete(v19);
              if (SHIBYTE(v75) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_85:
                  v48 = object;
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v48 = object[0];
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v48;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_108:
                    if (SHIBYTE(object[2]) < 0)
                    {
                      operator delete(object[0]);
                      v44 = v65;
                      if (!v65)
                      {
                        goto LABEL_115;
                      }

                      goto LABEL_110;
                    }

                    goto LABEL_109;
                  }

LABEL_91:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v52 = HIBYTE(object[2]);
                  if (SHIBYTE(object[2]) < 0)
                  {
                    v52 = object[1];
                  }

                  if (v52)
                  {
                    v53 = xpc_dictionary_create(0, 0, 0);
                    if (v53 || (v53 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v53) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v53);
                        v54 = v53;
                      }

                      else
                      {
                        v54 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v54 = xpc_null_create();
                      v53 = 0;
                    }

                    xpc_release(v53);
                    v55 = xpc_null_create();
                    v56 = __dst;
                    *&__dst = v54;
                    xpc_release(v56);
                    xpc_release(v55);
                    if (SHIBYTE(object[2]) >= 0)
                    {
                      v57 = object;
                    }

                    else
                    {
                      v57 = object[0];
                    }

                    v58 = xpc_string_create(v57);
                    if (!v58)
                    {
                      v58 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v54, *MEMORY[0x29EDBE648], v58);
                    v59 = xpc_null_create();
                    xpc_release(v58);
                    xpc_release(v59);
                  }

                  LODWORD(aBlock) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &aBlock, &__dst);
                  xpc_release(__dst);
                  goto LABEL_108;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_85;
                }
              }

              v51 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v51)
              {
                goto LABEL_108;
              }

              goto LABEL_91;
            }

LABEL_37:
            v24 = 2 * v23;
            if (v21 > 2 * v23)
            {
              v24 = v21;
            }

            if ((v24 | 7) == 0x17)
            {
              v25 = 25;
            }

            else
            {
              v25 = (v24 | 7) + 1;
            }

            if (v24 >= 0x17)
            {
              v3 = v25;
            }

            else
            {
              v3 = 23;
            }

            v26 = v23 == 22;
            goto LABEL_46;
          }

          v32 = __dst;
          v45 = (__dst + *(&__dst + 1));
          v46 = v18[1];
          *v45 = *v18;
          v45[1] = v46;
          v33 = v20 + 32;
          *(&__dst + 1) = v20 + 32;
        }

        else
        {
          if (SHIBYTE(v75) < 0x17)
          {
            v21 = SHIBYTE(v75) | 0x20;
            v22 = &__dst;
            v23 = 22;
            goto LABEL_37;
          }

          v32 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v75), " rejected; ABM is shutting down ", 32);
          v33 = v20 + 32;
          HIBYTE(v75) = (v20 + 32) & 0x7F;
        }

        v31 = v32 + v33;
        goto LABEL_83;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_31;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(object, v8);
    v10 = *object;
    object[0] = 0;
    object[1] = 0;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = object[1];
    if (object[1] && !atomic_fetch_add(object[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v71[0] = v9;
  v71[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&aBlock, v9);
  __dst = 0uLL;
  if (v73)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(v73);
    if (*(&__dst + 1))
    {
      *&__dst = aBlock;
    }

    if (v73)
    {
      std::__shared_weak_count::__release_weak(v73);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (__dst)
    {
      goto LABEL_24;
    }

LABEL_53:
    v34 = xpc_null_create();
    v35 = v1->__shared_owners_;
    object[0] = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v36);
    goto LABEL_77;
  }

  v14 = __dst;
  if (!__dst)
  {
    goto LABEL_53;
  }

LABEL_24:
  v15 = v1[1].__shared_owners_;
  v69 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v69 = xpc_null_create();
  }

  xpc::bridge(&cf, &v69, v16);
  v37 = cf;
  if (cf && (v38 = CFGetTypeID(cf), v38 == CFDictionaryGetTypeID()))
  {
    v71[0] = v37;
    CFRetain(v37);
  }

  else
  {
    v71[0] = 0;
  }

  object[0] = MEMORY[0x29EDCA5F8];
  object[1] = 1174405120;
  object[2] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb12_ENK4__15clEv_block_invoke;
  object[3] = &__block_descriptor_tmp_260;
  object[4] = v2;
  object[5] = v1->__shared_weak_owners_;
  v39 = v1[1].__vftable;
  v67 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v1->__shared_owners_;
  if (v40)
  {
    v40 = _Block_copy(v40);
  }

  v68 = v40;
  v41 = _Block_copy(object);
  v42 = v2[2].~__shared_weak_count_0;
  if (v42)
  {
    dispatch_retain(v42);
  }

  aBlock = v41;
  v73 = v42;
  (*(*v14 + 312))(v14, v71, &aBlock);
  if (v73)
  {
    dispatch_release(v73);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v71[0])
  {
    CFRelease(v71[0]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(v69);
  if (v68)
  {
    _Block_release(v68);
  }

  if (v67)
  {
    std::__shared_weak_count::__release_weak(v67);
  }

LABEL_77:
  v43 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v43->__on_zero_shared)(v43);
    std::__shared_weak_count::__release_weak(v43);
    v44 = v65;
    if (!v65)
    {
      goto LABEL_115;
    }

    goto LABEL_110;
  }

LABEL_109:
  v44 = v65;
  if (!v65)
  {
    goto LABEL_115;
  }

LABEL_110:
  xpc_release(v44[1].__shared_owners_);
  v44[1].__shared_owners_ = 0;
  v60 = v44[1].__vftable;
  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = v44->__shared_owners_;
  if (v61)
  {
    _Block_release(v61);
  }

  operator delete(v44);
LABEL_115:
  v62 = a1;
  if (a1)
  {
    v63 = a1[2];
    if (v63)
    {
      if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v63->__on_zero_shared)(v63);
        std::__shared_weak_count::__release_weak(v63);
        v62 = a1;
      }
    }

    operator delete(v62);
  }
}

void sub_297335238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, void *aBlock, xpc_object_t a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb12_E4__15NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      _Block_release(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb12_ENK4__15clEv_block_invoke(void *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *a2;
        if (*a2)
        {
          v9 = 3760250880;
          v10 = *(v5 + 104);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v8;
            _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
            if (*a2)
            {
              v9 = 3760250880;
            }

            else
            {
              v9 = 0;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v11 = xpc_null_create();
        v12 = a1[7];
        *buf = v11;
        v13 = xpc_null_create();
        (*(v12 + 16))(v12, v9, buf);
        xpc_release(*buf);
        xpc_release(v13);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_2973355AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb13_E4__16EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF550];
    v5 = strlen(*MEMORY[0x29EDBF550]);
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      if ((v5 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v5 | 7) + 1;
      }

      p_dst = operator new(v21);
      *(&__dst + 1) = v6;
      v69 = v21 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v69) = v5;
      p_dst = &__dst;
      if (!v5)
      {
LABEL_47:
        *(p_dst + v6) = 0;
        v22 = operator new(0x28uLL);
        v23 = v22;
        strcpy(v22, " rejected; ABM is shutting down ");
        v24 = SHIBYTE(v69);
        if ((SHIBYTE(v69) & 0x8000000000000000) != 0)
        {
          v24 = *(&__dst + 1);
          v27 = (v69 & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v27 - *(&__dst + 1) < 0x20)
          {
            v25 = *(&__dst + 1) + 32;
            if (0x7FFFFFFFFFFFFFF7 - (v69 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 32 - v27)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v26 = __dst;
            if (v27 > 0x3FFFFFFFFFFFFFF2)
            {
              v30 = 0;
LABEL_62:
              v31 = operator new(v3);
              v32 = v31;
              if (v24)
              {
                memmove(v31, v26, v24);
              }

              v33 = &v32[v24];
              v34 = v23[1];
              *v33 = *v23;
              *(v33 + 1) = v34;
              if (!v30)
              {
                operator delete(v26);
              }

              *(&__dst + 1) = v25;
              v69 = v3 | 0x8000000000000000;
              *&__dst = v32;
              v35 = &v32[v25];
LABEL_72:
              *v35 = 0;
              *aBlock = __dst;
              *&aBlock[16] = v69;
              v69 = 0;
              __dst = 0uLL;
              operator delete(v23);
              if (SHIBYTE(v69) < 0)
              {
                operator delete(__dst);
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
LABEL_74:
                  v41 = aBlock;
                  if (aBlock[23] < 0)
                  {
                    v41 = *aBlock;
                  }

                  LODWORD(__dst) = 136315138;
                  *(&__dst + 4) = v41;
                  _os_log_impl(&dword_297288000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I %s", &__dst, 0xCu);
                  shared_owners = v1->__shared_owners_;
                  p_shared_owners = &v1->__shared_owners_;
                  if (!shared_owners)
                  {
LABEL_97:
                    if ((aBlock[23] & 0x80000000) != 0)
                    {
                      operator delete(*aBlock);
                      v20 = &__p->__vftable;
                      if (!__p)
                      {
                        goto LABEL_104;
                      }

                      goto LABEL_99;
                    }

                    goto LABEL_98;
                  }

LABEL_80:
                  *&__dst = 0xAAAAAAAAAAAAAAAALL;
                  *&__dst = xpc_null_create();
                  v45 = aBlock[23];
                  if (aBlock[23] < 0)
                  {
                    v45 = *&aBlock[8];
                  }

                  if (v45)
                  {
                    v46 = xpc_dictionary_create(0, 0, 0);
                    if (v46 || (v46 = xpc_null_create()) != 0)
                    {
                      if (MEMORY[0x29C26F9F0](v46) == MEMORY[0x29EDCAA00])
                      {
                        xpc_retain(v46);
                        v47 = v46;
                      }

                      else
                      {
                        v47 = xpc_null_create();
                      }
                    }

                    else
                    {
                      v47 = xpc_null_create();
                      v46 = 0;
                    }

                    xpc_release(v46);
                    v48 = xpc_null_create();
                    v49 = __dst;
                    *&__dst = v47;
                    xpc_release(v49);
                    xpc_release(v48);
                    if (aBlock[23] >= 0)
                    {
                      v50 = aBlock;
                    }

                    else
                    {
                      v50 = *aBlock;
                    }

                    v51 = xpc_string_create(v50);
                    if (!v51)
                    {
                      v51 = xpc_null_create();
                    }

                    xpc_dictionary_set_value(v47, *MEMORY[0x29EDBE648], v51);
                    v52 = xpc_null_create();
                    xpc_release(v51);
                    xpc_release(v52);
                  }

                  LODWORD(v66) = -534716415;
                  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(p_shared_owners, &v66, &__dst);
                  xpc_release(__dst);
                  goto LABEL_97;
                }
              }

              else
              {
                get_deleter = v2[2].__get_deleter;
                if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_74;
                }
              }

              v44 = v1->__shared_owners_;
              p_shared_owners = &v1->__shared_owners_;
              if (!v44)
              {
                goto LABEL_97;
              }

              goto LABEL_80;
            }

LABEL_53:
            v28 = 2 * v27;
            if (v25 > 2 * v27)
            {
              v28 = v25;
            }

            if ((v28 | 7) == 0x17)
            {
              v29 = 25;
            }

            else
            {
              v29 = (v28 | 7) + 1;
            }

            if (v28 >= 0x17)
            {
              v3 = v29;
            }

            else
            {
              v3 = 23;
            }

            v30 = v27 == 22;
            goto LABEL_62;
          }

          v36 = __dst;
          v38 = (__dst + *(&__dst + 1));
          v39 = v22[1];
          *v38 = *v22;
          v38[1] = v39;
          v37 = v24 + 32;
          *(&__dst + 1) = v24 + 32;
        }

        else
        {
          if (SHIBYTE(v69) < 0x17)
          {
            v25 = SHIBYTE(v69) | 0x20;
            v26 = &__dst;
            v27 = 22;
            goto LABEL_53;
          }

          v36 = &__dst;
          qmemcpy(&__dst + SHIBYTE(v69), " rejected; ABM is shutting down ", 32);
          v37 = v24 + 32;
          HIBYTE(v69) = (v24 + 32) & 0x7F;
        }

        v35 = v36 + v37;
        goto LABEL_72;
      }
    }

    memmove(p_dst, v4, v6);
    goto LABEL_47;
  }

  *&__dst = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v9 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(aBlock, v8);
    v10 = *aBlock;
    *aBlock = 0uLL;
    v11 = *(&off_2A1399388 + 1);
    off_2A1399388 = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = *&aBlock[8];
    if (*&aBlock[8] && !atomic_fetch_add((*&aBlock[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v9 = off_2A1399388;
  }

  v13 = *(&off_2A1399388 + 1);
  v64 = v9;
  v65 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v9 + 16))(&v66, v9);
  __dst = 0uLL;
  if (object)
  {
    *(&__dst + 1) = std::__shared_weak_count::lock(object);
    if (*(&__dst + 1))
    {
      *&__dst = v66;
    }

    if (object)
    {
      std::__shared_weak_count::__release_weak(object);
    }
  }

  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v14 = __dst;
    if (!__dst)
    {
      goto LABEL_38;
    }
  }

  *aBlock = MEMORY[0x29EDCA5F8];
  *&aBlock[8] = 1174405120;
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb13_ENK4__16clEv_block_invoke;
  v60 = &__block_descriptor_tmp_263;
  shared_weak_owners = v1->__shared_weak_owners_;
  v15 = v1[1].__vftable;
  v62 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = v1->__shared_owners_;
  if (v16)
  {
    v16 = _Block_copy(v16);
  }

  v63 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v2[2].~__shared_weak_count_0;
  if (v18)
  {
    dispatch_retain(v18);
  }

  v66 = v17;
  object = v18;
  (*(*v14 + 336))(v14, &v66);
  if (object)
  {
    dispatch_release(object);
  }

  if (v66)
  {
    _Block_release(v66);
  }

  if (v63)
  {
    _Block_release(v63);
  }

  if (v62)
  {
    std::__shared_weak_count::__release_weak(v62);
  }

LABEL_38:
  v19 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = &__p->__vftable;
    if (!__p)
    {
      goto LABEL_104;
    }

    goto LABEL_99;
  }

LABEL_98:
  v20 = &__p->__vftable;
  if (!__p)
  {
    goto LABEL_104;
  }

LABEL_99:
  v53 = v20[3];
  if (v53)
  {
    std::__shared_weak_count::__release_weak(v53);
  }

  v54 = v20[1];
  if (v54)
  {
    _Block_release(v54);
  }

  operator delete(v20);
LABEL_104:
  v55 = a1;
  if (a1)
  {
    v56 = a1[2];
    if (v56)
    {
      if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v56->__on_zero_shared)(v56);
        std::__shared_weak_count::__release_weak(v56);
        v55 = a1;
      }
    }

    operator delete(v55);
  }
}

void sub_297335DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb13_E4__16NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb13_ENK4__16clEv_block_invoke(void *a1, void *a2, void *a3)
{
  v4 = a1[5];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v20 = v7;
  if (!v7)
  {
    return;
  }

  if (!a1[4])
  {
LABEL_21:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v16 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v16);
    }

    return;
  }

  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    xdict = v8;
  }

  else
  {
    v9 = xpc_null_create();
    xdict = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  xdict = v10;
LABEL_12:
  xpc_release(v9);
  v11 = MEMORY[0x29C26F9F0](*a3);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 != MEMORY[0x29EDCAA40])
  {
    v13 = *a3;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE9C8], v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
  }

  if (MEMORY[0x29C26F9F0](*a2) == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = -534716416;
  }

  v17 = v15;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v17, &xdict);
  xpc_release(xdict);
  v7 = v20;
  if (v20)
  {
    goto LABEL_21;
  }
}

void sub_297336150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, ...)
{
  va_start(va, object);
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E390A8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<RadioModule::registerEventHandlers_sync(void)::$_0,std::allocator<RadioModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E390A8;
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
  *result = &unk_2A1E390A8;
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
  *a2 = &unk_2A1E390A8;
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
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
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

void sub_297336630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
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
        _os_log_error_impl(&dword_297288000, v26, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", object, 2u);
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
  v20 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v42, v19);
    v21 = v42;
    v42 = 0uLL;
    v22 = *(&off_2A1399388 + 1);
    off_2A1399388 = v21;
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

    v20 = off_2A1399388;
  }

  v24 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_297336CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, xpc_object_t object)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (*(v19 - 49) < 0)
  {
    operator delete(*(v19 - 72));
  }

  std::unique_ptr<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<RadioModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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
  if (!xmmword_2A1399748)
  {
    v13 = operator new(0x30uLL);
    DeviceHistoryDB::DeviceHistoryDB(v13);
    v63.__r_.__value_.__r.__words[0] = v13;
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E39118;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v13;
    v14 = *(&xmmword_2A1399748 + 1);
    *&xmmword_2A1399748 = v13;
    *(&xmmword_2A1399748 + 1) = v12;
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

  v12 = *(&xmmword_2A1399748 + 1);
  v13 = xmmword_2A1399748;
  *&buf.__r_.__value_.__l.__data_ = xmmword_2A1399748;
  if (*(&xmmword_2A1399748 + 1))
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
    _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Broadcasting %s", &buf, 0xCu);
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
      _os_log_error_impl(&dword_297288000, v35, OS_LOG_TYPE_ERROR, "Failed to create dictionary to update abm domain preferences", &v71, 2u);
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
  v45 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(&v71);
    v46 = v71;
    v71 = 0uLL;
    v47 = *(&off_2A1399498 + 1);
    off_2A1399498 = v46;
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

    v45 = off_2A1399498;
  }

  buf.__r_.__value_.__r.__words[0] = v45;
  buf.__r_.__value_.__l.__size_ = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
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
  MEMORY[0x29C26DF80](&v63);
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

void sub_29733798C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

  *v1 = &unk_2A1E36788;
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
  MEMORY[0x29C26DE80](v1 + 1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002974322CFLL)
  {
    if (((v2 & 0x80000002974322CFLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002974322CFLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002974322CFLL & 0x7FFFFFFFFFFFFFFFLL));
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
    *v1 = &unk_2A1E36788;
    v3 = v1[2];
    if (!v3)
    {
LABEL_17:
      MEMORY[0x29C26DE80](v1 + 1);
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
  *result = &unk_2A1E39178;
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
  *a1 = &unk_2A1E39178;
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
  *result = &unk_2A1E39178;
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
  *a2 = &unk_2A1E39178;
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
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband FW Version: %s", buf, 0xCu);
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
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I \n--- Factory and RF calibration ---\n%s\n%s\n----------------------------------", v19, 0x16u);
      if (v18 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (MEMORY[0x29C26F9F0](*(v3 + 192)) == MEMORY[0x29EDCAA00])
  {
    v12 = *(v3 + 104);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(buf, (v3 + 192));
      v13 = v18 >= 0 ? buf : *buf;
      *v19 = 136315138;
      v20 = v13;
      _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", v19, 0xCu);
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

void sub_2973385CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_200()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_201()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_202()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_203()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_204()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t TraceFilter::determineFilterAction(std::string *a1)
{
  v71 = *MEMORY[0x29EDCA608];
  std::string::__assign_external(a1, *MEMORY[0x29EDBECB0]);
  if (TelephonyUtilIsInternalBuild())
  {
    v63 = -1431655766;
    v2 = *MEMORY[0x29EDBEB40];
    v3 = strlen(*MEMORY[0x29EDBEB40]);
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = v3;
    if (v3 >= 0x17)
    {
      if ((v3 | 7) == 0x17)
      {
        v7 = 25;
      }

      else
      {
        v7 = (v3 | 7) + 1;
      }

      p_dst = operator new(v7);
      *(&__dst + 1) = v4;
      v66 = v7 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v66) = v3;
      p_dst = &__dst;
      if (!v3)
      {
LABEL_12:
        *(p_dst + v4) = 0;
        memset(&__p, 0, 24);
        if (prop::logfilter::get(&__dst, &__p))
        {
          v8 = util::convert<int>(&__p, &v63, 0);
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0;
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        operator delete(*&__p.st_dev);
LABEL_17:
        if (SHIBYTE(v66) < 0)
        {
          operator delete(__dst);
          if (v8)
          {
LABEL_19:
            v9 = v63;
            v64.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
            v64.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
            v64.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
            v10 = *MEMORY[0x29EDBD268];
            v11 = strlen(*MEMORY[0x29EDBD268]);
            if (v11 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v12 = v11;
            if (v11 >= 0x17)
            {
              if ((v11 | 7) == 0x17)
              {
                v21 = 25;
              }

              else
              {
                v21 = (v11 | 7) + 1;
              }

              v13 = operator new(v21);
              *(&__dst + 1) = v12;
              v66 = v21 | 0x8000000000000000;
              *&__dst = v13;
            }

            else
            {
              HIBYTE(v66) = v11;
              v13 = &__dst;
              if (!v11)
              {
                LOBYTE(__dst) = 0;
                v14 = SHIBYTE(v66);
                if ((SHIBYTE(v66) & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_34;
              }
            }

            memmove(v13, v10, v12);
            *(v13 + v12) = 0;
            v14 = SHIBYTE(v66);
            if ((SHIBYTE(v66) & 0x80000000) == 0)
            {
LABEL_23:
              if (!v14)
              {
                goto LABEL_45;
              }

              memset(&__p, 0, 64);
              v15 = statvfs(&__dst, &__p);
              st_ino = __p.st_ino;
              st_rdev = __p.st_rdev;
              if ((v14 & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            }

LABEL_34:
            if (!*(&__dst + 1))
            {
              operator delete(__dst);
              goto LABEL_45;
            }

            memset(&__p, 0, 64);
            v15 = statvfs(__dst, &__p);
            st_ino = __p.st_ino;
            st_rdev = __p.st_rdev;
            if ((v14 & 0x80000000) == 0)
            {
LABEL_25:
              if (v15)
              {
                goto LABEL_45;
              }

              goto LABEL_37;
            }

LABEL_36:
            v22 = v15;
            operator delete(__dst);
            if (v22)
            {
              goto LABEL_45;
            }

LABEL_37:
            v23 = (st_ino * st_rdev) >> 20;
            if ((v9 & 0x80000000) == 0 && v23 <= v9)
            {
              std::string::__assign_external(&v64, *MEMORY[0x29EDBECA8]);
            }

            if ((atomic_load_explicit(&qword_2A1399E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E00))
            {
              qword_2A1399E08 = 0;
              qword_2A1399E10 = 0;
              __cxa_guard_release(&qword_2A1399E00);
            }

            if (_MergedGlobals_6 != -1)
            {
              dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
              v24 = qword_2A1399E10;
              if (!os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              goto LABEL_43;
            }

            v24 = qword_2A1399E10;
            if (os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
            {
LABEL_43:
              __p.st_dev = 134217984;
              *&__p.st_mode = v23;
              _os_log_impl(&dword_297288000, v24, OS_LOG_TYPE_DEFAULT, "Free disk space = %lu MB", &__p, 0xCu);
            }

LABEL_45:
            size = v64.__r_.__value_.__l.__size_;
            v18 = v64.__r_.__value_.__r.__words[0];
            v20 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
LABEL_46:
            v62 = -1431655766;
            v25 = *MEMORY[0x29EDBEDE8];
            v26 = strlen(*MEMORY[0x29EDBEDE8]);
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
              *(&__dst + 1) = v27;
              v66 = v29 | 0x8000000000000000;
              *&__dst = v28;
            }

            else
            {
              HIBYTE(v66) = v26;
              v28 = &__dst;
              if (!v26)
              {
LABEL_55:
                *(v28 + v27) = 0;
                memset(&__p, 0, 24);
                if (prop::logfilter::get(&__dst, &__p))
                {
                  v6 = util::convert<int>(&__p, &v62, 0);
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v6 = 0;
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                operator delete(*&__p.st_dev);
LABEL_60:
                if (SHIBYTE(v66) < 0)
                {
                  operator delete(__dst);
                  if (v6)
                  {
LABEL_62:
                    v30 = v62;
                    memset(&v61, 0, sizeof(v61));
                    if (v62 < 0)
                    {
                      v41 = 0;
                      v40 = 0;
                      v39 = 0;
                      if ((v20 & 0x80u) == 0)
                      {
                        v43 = v20;
                      }

                      else
                      {
                        v43 = size;
                      }

                      if (v43)
                      {
                        goto LABEL_147;
                      }

                      goto LABEL_144;
                    }

                    __dst = 0uLL;
                    v66 = 0;
                    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v31 = off_2A1399498;
                    if (!off_2A1399498)
                    {
                      SharedData::create_default_global(&__p.st_dev);
                      v32 = *&__p.st_dev;
                      *&__p.st_dev = 0;
                      __p.st_ino = 0;
                      v33 = *(&off_2A1399498 + 1);
                      off_2A1399498 = v32;
                      if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v33->__on_zero_shared)(v33);
                        std::__shared_weak_count::__release_weak(v33);
                      }

                      v34 = __p.st_ino;
                      if (__p.st_ino && !atomic_fetch_add((__p.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v34->__on_zero_shared)(v34);
                        std::__shared_weak_count::__release_weak(v34);
                      }

                      v31 = off_2A1399498;
                    }

                    v64.__r_.__value_.__r.__words[0] = v31;
                    v64.__r_.__value_.__l.__size_ = *(&off_2A1399498 + 1);
                    if (*(&off_2A1399498 + 1))
                    {
                      atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v35 = *MEMORY[0x29EDBD290];
                    v36 = strlen(*MEMORY[0x29EDBD290]);
                    if (v36 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v37 = v36;
                    if (v36 >= 0x17)
                    {
                      v60 = v18;
                      if ((v36 | 7) == 0x17)
                      {
                        v44 = 25;
                      }

                      else
                      {
                        v44 = (v36 | 7) + 1;
                      }

                      p_p = operator new(v44);
                      __p.st_ino = v37;
                      *&__p.st_uid = v44 | 0x8000000000000000;
                      *&__p.st_dev = p_p;
                      v18 = v60;
                    }

                    else
                    {
                      HIBYTE(__p.st_gid) = v36;
                      p_p = &__p;
                      if (!v36)
                      {
LABEL_93:
                        *(&p_p->st_dev + v37) = 0;
                        os_unfair_lock_lock((v31 + 40));
                        if ((__p.st_gid & 0x80000000) == 0)
                        {
                          v45 = &__p;
                        }

                        else
                        {
                          v45 = *&__p.st_dev;
                        }

                        ctu::cf::MakeCFString::MakeCFString(buf, v45);
                        v46 = (**v31)(v31, *buf);
                        if (v46)
                        {
                          ctu::cf::assign();
                          CFRelease(v46);
                        }

                        MEMORY[0x29C26DF80](buf);
                        os_unfair_lock_unlock((v31 + 40));
                        if (SHIBYTE(__p.st_gid) < 0)
                        {
                          operator delete(*&__p.st_dev);
                        }

                        v47 = v64.__r_.__value_.__l.__size_;
                        if (v64.__r_.__value_.__l.__size_ && !atomic_fetch_add((v64.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v47->__on_zero_shared)(v47);
                          std::__shared_weak_count::__release_weak(v47);
                        }

                        v48.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                        v48.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                        *&__p.st_blksize = v48;
                        *__p.st_qspare = v48;
                        __p.st_birthtimespec = v48;
                        *&__p.st_size = v48;
                        __p.st_mtimespec = v48;
                        __p.st_ctimespec = v48;
                        *&__p.st_uid = v48;
                        __p.st_atimespec = v48;
                        *&__p.st_dev = v48;
                        if (v66 >= 0)
                        {
                          v49 = &__dst;
                        }

                        else
                        {
                          v49 = __dst;
                        }

                        if (stat(v49, &__p))
                        {
                          v50 = -1;
                          goto LABEL_134;
                        }

                        if (SHIBYTE(v66) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, __dst, *(&__dst + 1));
                        }

                        else
                        {
                          *&__p.st_dev = __dst;
                          *&__p.st_uid = v66;
                        }

                        v51 = *MEMORY[0x29EDBD258];
                        v52 = strlen(*MEMORY[0x29EDBD258]);
                        if (v52 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

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
                          v64.__r_.__value_.__l.__size_ = v53;
                          v64.__r_.__value_.__r.__words[2] = v55 | 0x8000000000000000;
                          v64.__r_.__value_.__r.__words[0] = v54;
                        }

                        else
                        {
                          *(&v64.__r_.__value_.__s + 23) = v52;
                          v54 = &v64;
                          if (!v52)
                          {
LABEL_120:
                            v54[v53] = 0;
                            NumberOfLogDumps = util::getNumberOfLogDumps(&__p, &v64.__r_.__value_.__l.__data_);
                            if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v64.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                              {
LABEL_122:
                                if (NumberOfLogDumps >> 31)
                                {
                                  v50 = -1;
                                }

                                else
                                {
                                  v50 = NumberOfLogDumps;
                                }

                                if (v50 == -1)
                                {
                                  goto LABEL_134;
                                }

LABEL_132:
                                if (v50 >= v30)
                                {
                                  std::string::__assign_external(&v61, *MEMORY[0x29EDBECA8]);
                                  v50 = NumberOfLogDumps;
                                }

LABEL_134:
                                if ((atomic_load_explicit(&qword_2A1399E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399E00))
                                {
                                  qword_2A1399E08 = 0;
                                  qword_2A1399E10 = 0;
                                  __cxa_guard_release(&qword_2A1399E00);
                                }

                                if (_MergedGlobals_6 == -1)
                                {
                                  v57 = qword_2A1399E10;
                                  if (!os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_138;
                                  }
                                }

                                else
                                {
                                  dispatch_once(&_MergedGlobals_6, &__block_literal_global_5);
                                  v57 = qword_2A1399E10;
                                  if (!os_log_type_enabled(qword_2A1399E10, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_138:
                                    if (SHIBYTE(v66) < 0)
                                    {
                                      operator delete(__dst);
                                    }

                                    v40 = v61.__r_.__value_.__l.__size_;
                                    v39 = v61.__r_.__value_.__r.__words[0];
                                    v41 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
                                    if ((v20 & 0x80u) == 0)
                                    {
                                      v58 = v20;
                                    }

                                    else
                                    {
                                      v58 = size;
                                    }

                                    if (v58)
                                    {
                                      goto LABEL_147;
                                    }

LABEL_144:
                                    if ((v41 & 0x80u) == 0)
                                    {
                                      v40 = v41;
                                    }

                                    if (!v40)
                                    {
LABEL_148:
                                      if ((v41 & 0x80) != 0)
                                      {
                                        operator delete(v39);
                                        if ((v20 & 0x80) == 0)
                                        {
                                          return v6;
                                        }
                                      }

                                      else if ((v20 & 0x80) == 0)
                                      {
                                        return v6;
                                      }

                                      operator delete(v18);
                                      return v6;
                                    }

LABEL_147:
                                    std::string::__assign_external(a1, *MEMORY[0x29EDBECA8]);
                                    goto LABEL_148;
                                  }
                                }

                                *buf = 67109376;
                                *&buf[4] = v50;
                                v68 = 1024;
                                v69 = v30;
                                _os_log_impl(&dword_297288000, v57, OS_LOG_TYPE_DEFAULT, "Log dump count = %d, max log limit = %d", buf, 0xEu);
                                goto LABEL_138;
                              }
                            }

                            else if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                            {
                              goto LABEL_122;
                            }

                            operator delete(*&__p.st_dev);
                            if (NumberOfLogDumps >> 31)
                            {
                              v50 = -1;
                            }

                            else
                            {
                              v50 = NumberOfLogDumps;
                            }

                            if (v50 == -1)
                            {
                              goto LABEL_134;
                            }

                            goto LABEL_132;
                          }
                        }

                        memmove(v54, v51, v53);
                        goto LABEL_120;
                      }
                    }

                    memmove(p_p, v35, v37);
                    goto LABEL_93;
                  }
                }

                else if (v6)
                {
                  goto LABEL_62;
                }

                v39 = 0;
                v40 = 0;
                v41 = 0;
                if ((v20 & 0x80u) == 0)
                {
                  v42 = v20;
                }

                else
                {
                  v42 = size;
                }

                if (v42)
                {
                  goto LABEL_147;
                }

                goto LABEL_144;
              }
            }

            memmove(v28, v25, v27);
            goto LABEL_55;
          }
        }

        else if (v8)
        {
          goto LABEL_19;
        }

        v18 = 0;
        size = 0;
        v20 = 0;
        goto LABEL_46;
      }
    }

    memmove(p_dst, v2, v4);
    goto LABEL_12;
  }

  return 1;
}

void sub_297339150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16sGetOsLogContextv_block_invoke_3()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "trace.filter");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void *PowerManager::PowerManager(void *a1, uint64_t *a2)
{
  *a1 = &unk_2A1E39218;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

{
  *a1 = &unk_2A1E39218;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

void sub_2973393CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  v5 = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::State(v4, &v7);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(a2, v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_297339478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::init(PowerManager::State *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN12PowerManager5State4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_3;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_23_0;
  block[4] = this;
  block[5] = &v11;
  v7 = *(this + 2);
  if (!*(this + 3))
  {
    dispatch_sync(v7, block);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v7, block);
  v8 = v10;
  if (v10)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2973396AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E39218;
  v8 = (v4 + 1);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v10, v4 + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  PowerManager::State::init(*v8);
  *a2 = v5;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E395C0;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v5;
  a2[1] = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2973397B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 48))(v10, a2, a3, a4, a5, a6, a7, a8);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void PowerManager::registerForPowerEvents(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_30;
  v5[4] = v2;
  if (!v3)
  {
    aBlock = 0;
    ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
    v4 = aBlock;
    if (!aBlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
  v4 = aBlock;
  if (aBlock)
  {
LABEL_8:
    _Block_release(v4);
  }

LABEL_9:
  if (v3)
  {
    _Block_release(v3);
  }
}

void PowerManager::createPowerAssertion(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v6 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v7 = dispatch_group_create();
  *a4 = v7;
  v18 = v6;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v20 = a3;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v8 = v6[1];
  if (!v8 || (v9 = *v6, (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x30uLL);
  *v12 = v18;
  v13 = (v12 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v12[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v14 = group;
  v12[4] = v20;
  v12[5] = v14;
  group = 0;
  v15 = v6[2];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v12;
  v16[1] = v9;
  v16[2] = v11;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_297339B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    dispatch_release(v14);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void PowerManager::releasePowerAssertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v12 = v2;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    goto LABEL_6;
  }

  v11 = *a2;
  v12 = v2;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = v11;
LABEL_6:
  v3 = v2[1];
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = v12;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = v2[2];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(v11.__r_.__value_.__l.__data_);
      return;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_297339D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::initialize(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State10initializeEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_52_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::shutdown(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State8shutdownEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_53_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::~PowerManager(PowerManager *this)
{
  *this = &unk_2A1E39218;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1E39218;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void *std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E39288;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_29733A07C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1[12];
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = a1[12];
    a1[12] = 0;
    if (v3)
    {
      _Block_release(v3);
    }
  }

  v4 = a1[4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v5 = a1[27];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(a1[24]);
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(a1[21]);
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(a1[18]);
  v6 = a1[16];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = a1[14];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1[12];
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = a1[12];
  if (v8)
  {
LABEL_15:
    _Block_release(v8);
  }

LABEL_16:
  v9 = a1[11];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = a1[10];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = a1[6];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  MEMORY[0x29C26DE80](a1 + 4);
  v12 = a1[3];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = a1[2];
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = a1[1];
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
}

void std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(a1 + 7);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v4 = a1;
    }

    else
    {
      v4 = a1;
    }

    operator delete(v4);
  }
}

uint64_t std::pair<std::string const,dispatch::group_session>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 8));
    v2 = *(a1 + 64);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v3 = a1;

LABEL_7:
        operator delete(v3);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v3 = a1;

    goto LABEL_7;
  }
}

uint64_t PowerManager::State::State(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(v10, "com.apple.telephony.abm", "power.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("power.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v5);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 24) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 32, v11);
  MEMORY[0x29C26DE80](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x200000001;
  *(a1 + 64) = -536870144;
  v6 = operator new(0x88uLL);
  PowerStats::PowerStats(v6);
  *(a1 + 72) = v6;
  v10[0] = v6;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E3A728;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v6;
  *(a1 + 80) = v7;
  *(a1 + 144) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = *a2;
  v8 = a2[1];
  *(a1 + 216) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29733A71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v4);
  MEMORY[0x29C26DE80](v3 + 4);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v3);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State4initEv_block_invoke(uint64_t a1)
{
  v40.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v39 = v2;
  *&v40.__r_.__value_.__l.__data_ = v2;
  v38 = v2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12PowerManager5State4initEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_26;
  v21 = *(a1 + 32);
  v36 = v21;
  v3 = *(a1 + 48);
  v37 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(v21 + 16);
  *&v38 = 1;
  *(&v38 + 1) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v4)
  {
    v39 = _Block_copy(v4);
    v40.__r_.__value_.__r.__words[0] = 5063233;
    *(&v40.__r_.__value_.__s + 23) = 3;
    _Block_release(v4);
  }

  else
  {
    v39 = 0uLL;
    v40.__r_.__value_.__r.__words[0] = 5063233;
    *(&v40.__r_.__value_.__s + 23) = 3;
  }

  ctu::power::manager::get(buf, v5);
  v6 = *buf;
  buf[0] = 0;
  buf[1] = 0;
  v7 = *(v21 + 112);
  *(v21 + 104) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = buf[1];
  if (buf[1] && !atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v30 = v38;
  if (*(&v38 + 1))
  {
    dispatch_retain(*(&v38 + 1));
  }

  v9 = v39;
  if (v39)
  {
    v9 = _Block_copy(v39);
  }

  v31 = v9;
  v10 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v10 = _Block_copy(*(&v39 + 1));
  }

  v32 = v10;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v40;
  }

  ctu::power::manager::registerListener();
  v11 = *buf;
  buf[0] = 0;
  buf[1] = 0;
  v12 = *(v21 + 128);
  *(v21 + 120) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = buf[1];
  if (!buf[1] || atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
    v14 = v32;
    if (!v32)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v14 = v32;
  if (v32)
  {
LABEL_33:
    _Block_release(v14);
  }

LABEL_34:
  if (v31)
  {
    _Block_release(v31);
  }

  if (*(&v30 + 1))
  {
    dispatch_release(*(&v30 + 1));
  }

  v15 = *(v21 + 32);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, "#I Registered power listener", buf, 2u);
  }

  buf[0] = 0xAAAAAAAAAAAAAAAALL;
  buf[1] = 0xAAAAAAAAAAAAAAAALL;
  abm::AWDHelperGetConnection(buf);
  if (buf[0])
  {
    v23 = MEMORY[0x29EDCA5F8];
    v24 = 1174405120;
    v25 = ___ZN12PowerManager5State4initEv_block_invoke_11;
    v26 = &__block_descriptor_tmp_18_0;
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);
    v27 = v21;
    v28 = v17;
    v29 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    wis::WISServerConnection::RegisterQueriableMetricCallbackForIdentifier();
    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
      v18 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v19 = *(v21 + 32);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *v22 = 0;
      _os_log_error_impl(&dword_297288000, v19, OS_LOG_TYPE_ERROR, "AWD connection setup failed", v22, 2u);
      v18 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v18 = buf[1];
  if (!buf[1])
  {
    goto LABEL_50;
  }

LABEL_48:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_50:
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
    v20 = *(&v39 + 1);
    if (!*(&v39 + 1))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v20 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
LABEL_54:
    _Block_release(v20);
  }

LABEL_55:
  if (v39)
  {
    _Block_release(v39);
  }

  if (*(&v38 + 1))
  {
    dispatch_release(*(&v38 + 1));
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }
}

void sub_29733AC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20, dispatch_object_t object, void *a22, void *aBlock, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a22)
  {
    _Block_release(a22);
  }

  if (object)
  {
    dispatch_release(object);
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
      goto LABEL_7;
    }
  }

  std::__shared_weak_count::__release_weak(v38);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State4initEv_block_invoke_2(void *a1, ctu::power::manager *a2, const void **a3)
{
  v67 = *MEMORY[0x29EDCA608];
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = std::__shared_weak_count::lock(v6);
  if (!v8 || !a1[5])
  {
LABEL_7:
    (*(*a3 + 2))();
    if (!v8)
    {
      return;
    }

    goto LABEL_89;
  }

  if (*a3)
  {
    v9 = _Block_copy(*a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 14);
  v11 = *(v5 + 60);
  v49 = v11;
  HIDWORD(v13) = a2 + 536870288;
  LODWORD(v13) = a2 + 536870288;
  v12 = v13 >> 4;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (v11)
      {
        goto LABEL_33;
      }

      v15 = 2;
    }

    else
    {
      if (v12 != 9)
      {
        if (v12 != 11 || v10 || v11 == 2)
        {
          goto LABEL_33;
        }

        v14 = 0;
        v15 = 2;
        goto LABEL_29;
      }

      if (v10)
      {
        goto LABEL_33;
      }

      v15 = v11;
      if (v11 != 2)
      {
        goto LABEL_33;
      }
    }

LABEL_28:
    v14 = 1;
    goto LABEL_29;
  }

  if (!v12)
  {
    if (v10 != 1)
    {
      goto LABEL_33;
    }

    v15 = 0;
    goto LABEL_28;
  }

  if (v12 != 1 || v10 != 1)
  {
    goto LABEL_33;
  }

  v14 = 0;
  v15 = v11 != 0;
LABEL_29:
  if (v5[19])
  {
    if (a2 == -536870288)
    {
      goto LABEL_33;
    }

    if (a2 == -536870272)
    {
      if (!v5[25])
      {
        if (v9)
        {
          v47 = _Block_copy(v9);
        }

        else
        {
          v47 = 0;
        }

        v48 = v5[12];
        v5[12] = v47;
        if (v48)
        {
          _Block_release(v48);
        }

        v16 = 1;
        v17 = v5[4];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
LABEL_41:
          if (a2 == -536870144 || a2 == -536870256)
          {
            v23 = v5[25];
            if (v23)
            {
              v24 = v5[4];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v23;
                _os_log_impl(&dword_297288000, v24, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (skipping power event); count=%zd", buf, 0xCu);
              }

              v26 = v5[24];
              v25 = v5 + 24;
              std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v26);
              *v25 = 0;
              v25[1] = 0;
              *(v25 - 1) = v25;
              if (!v9)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }
          }

LABEL_87:
          if (!v9)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

LABEL_34:
        v18 = ctu::power::manager::asCString(a2);
        v19 = v5[19];
        v20 = "Unknown";
        v21 = v5[25];
        if (v10 == 1)
        {
          v20 = "PoweredOn";
        }

        *buf = 136316418;
        *&buf[4] = v18;
        v61 = 1024;
        if (!v10)
        {
          v20 = "LowPower";
        }

        *v62 = v49;
        v22 = "false";
        *&v62[4] = 2080;
        *&v62[6] = v20;
        *&v62[14] = 2048;
        if (v16)
        {
          v22 = "true";
        }

        *&v62[16] = v19;
        v63 = 2048;
        v64 = v21;
        v65 = 2080;
        v66 = v22;
        _os_log_impl(&dword_297288000, v17, OS_LOG_TYPE_DEFAULT, "#I Cannot accept notification: %s, SleepState: %u, PowerState: %s, Assertions: %lu, Assertions-deferred: %lu, Deferred-ack: %s", buf, 0x3Au);
        goto LABEL_41;
      }

LABEL_33:
      (*(v9 + 2))(v9, 0);
      v16 = 0;
      v17 = v5[4];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }
  }

  *(v5 + 14) = v14;
  *(v5 + 15) = v15;
  *(v5 + 16) = a2;
  v27 = v5[9];
  v57 = a2;
  v58 = v10;
  v59 = v11;
  v56 = __PAIR64__(v15, v14);
  PowerStats::reportSystemStateChange(v27, &v58, &v56);
  v28 = v5[4];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = ctu::power::manager::asCString(a2);
    v30 = "Unknown";
    v31 = "PoweredOn";
    v33 = *(v5 + 14);
    v32 = *(v5 + 15);
    if (v33 != 1)
    {
      v31 = "Unknown";
    }

    if (!v33)
    {
      v31 = "LowPower";
    }

    if (v32 <= 2)
    {
      v30 = off_29EE67E18[v32];
    }

    *buf = 136315650;
    *&buf[4] = v29;
    v61 = 2080;
    *v62 = v31;
    *&v62[8] = 2080;
    *&v62[10] = v30;
    _os_log_impl(&dword_297288000, v28, OS_LOG_TYPE_DEFAULT, "#I Power notification: %s, Power state: %s, Sleep state: %s", buf, 0x20u);
  }

  v34 = *(v5 + 16);
  switch(v34)
  {
    case -536870144:
LABEL_59:
      v35 = *(v5 + 14);
      v36 = dispatch_group_create();
      v37 = v5[11];
      if (v37)
      {
        if (v36)
        {
          dispatch_retain(v36);
          dispatch_group_enter(v36);
          v37 = v5[11];
        }

        *buf = v36;
        (*(v37 + 16))(v37, v35, buf);
        if (*buf)
        {
          dispatch_group_leave(*buf);
          if (*buf)
          {
            dispatch_release(*buf);
          }
        }
      }

      v38 = v5[1];
      if (!v38 || (v39 = *v5, (v40 = std::__shared_weak_count::lock(v38)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v41 = v40;
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v41);
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke;
      block[3] = &__block_descriptor_tmp_26_0;
      block[4] = v5;
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      if (v9)
      {
        v42 = _Block_copy(v9);
      }

      else
      {
        v42 = 0;
      }

      aBlock = v42;
      v53 = v39;
      v54 = v41;
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v55 = v35;
      dispatch_group_notify(v36, v5[2], block);
      if (v54)
      {
        std::__shared_weak_count::__release_weak(v54);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      std::__shared_weak_count::__release_weak(v41);
      if (v36)
      {
        dispatch_release(v36);
      }

      goto LABEL_87;
    case -536870256:
      (*(v9 + 2))(v9, 1);
      v43 = v5[25];
      if (v43)
      {
        v44 = v5[4];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&dword_297288000, v44, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (after WillNotSleep); count=%zd", buf, 0xCu);
        }

        v46 = v5[24];
        v45 = v5 + 24;
        std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v46);
        *v45 = 0;
        v45[1] = 0;
        *(v45 - 1) = v45;
      }

      break;
    case -536870272:
      goto LABEL_59;
    default:
      (*(v9 + 2))(v9, 1);
      break;
  }

LABEL_88:
  _Block_release(v9);
LABEL_89:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_29733B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_11(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZN12PowerManager5State4initEv_block_invoke_2_12;
        v8[3] = &__block_descriptor_tmp_14;
        v8[4] = v5;
        v9 = a2;
        ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v5, v8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_2_12(uint64_t result)
{
  if (*(result + 40) == 524466)
  {
    PowerStats::submitLowPowerStatsMetric_sync(*(*(result + 32) + 72));
  }
}

void ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 56))
      {
        if (*(a1 + 72) == 1)
        {
          v5 = v2[25];
          if (v5)
          {
            v6 = v4;
            v7 = v2[4];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v11 = 134217984;
              v12 = v5;
              _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run; count=%zd", &v11, 0xCu);
            }

            v9 = v2[24];
            v8 = v2 + 24;
            std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v9);
            *v8 = 0;
            v8[1] = 0;
            *(v8 - 1) = v8;
            v4 = v6;
          }
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }
}

void *__copy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v7 = a2[7];
  v6 = a2[8];
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    dispatch_release(v4);
  }
}

void ctu::power::manager::parameters::~parameters(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    v2 = this[3];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = this[3];
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }

LABEL_6:
  v3 = this[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    dispatch_release(v4);
  }
}

void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E39390;
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

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 88);
  *(v2 + 88) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v176 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v166 = 0xAAAAAAAAAAAAAAAALL;
  v167 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v3 = qword_2A1399588;
  if (qword_2A1399588)
  {
    goto LABEL_12;
  }

  v4 = operator new(0x38uLL);
  MEMORY[0x29C26E280]();
  v5 = operator new(0x20uLL);
  v5->__shared_owners_ = 0;
  p_shared_owners = &v5->__shared_owners_;
  v5->__vftable = &unk_2A1E39430;
  v5->__shared_weak_owners_ = 0;
  v5[1].__vftable = v4;
  v7 = v4->~__shared_weak_count_0;
  if (v7)
  {
    if (v7->__shared_owners_ != -1)
    {
      goto LABEL_8;
    }

    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4->~__shared_weak_count = v4;
    v4->~__shared_weak_count_0 = v5;
    std::__shared_weak_count::__release_weak(v7);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4->~__shared_weak_count = v4;
    v4->~__shared_weak_count_0 = v5;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
LABEL_8:
  v8 = off_2A1399590;
  qword_2A1399588 = v4;
  off_2A1399590 = v5;
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v3 = qword_2A1399588;
LABEL_12:
  v9 = off_2A1399590;
  buf.__r_.__value_.__r.__words[0] = v3;
  buf.__r_.__value_.__l.__size_ = off_2A1399590;
  if (off_2A1399590)
  {
    atomic_fetch_add_explicit(off_2A1399590 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v163 = (v1 + 1);
  ctu::power::assertion::createInternal();
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v10 = v166;
    if (v166)
    {
      goto LABEL_17;
    }

LABEL_58:
    v32 = v2[4];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = v1 + 1;
      if (*(v1 + 31) < 0)
      {
        v33 = *v163;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v33;
      _os_log_error_impl(&dword_297288000, v32, OS_LOG_TYPE_ERROR, "Failed to create power assertion '%s'", &buf, 0xCu);
    }

    goto LABEL_331;
  }

  v10 = v166;
  if (!v166)
  {
    goto LABEL_58;
  }

LABEL_17:
  v157 = v10;
  v161 = v2;
  v13 = v2[18];
  v12 = (v2 + 18);
  v11 = v13;
  v159 = (v12 - 1);
  if (!v13)
  {
    v18 = v12;
    if (*(v12 - 1) == v12)
    {
      v34 = 0;
      v18 = v12;
      v35 = v12;
      if (*v12)
      {
        goto LABEL_134;
      }

      goto LABEL_122;
    }

    goto LABEL_71;
  }

  v14 = *(v1 + 31);
  v15 = v1[2];
  v153 = v1[1];
  if ((v14 & 0x80u) == 0)
  {
    v16 = (v1 + 1);
  }

  else
  {
    v16 = v1[1];
  }

  if ((v14 & 0x80u) == 0)
  {
    v17 = *(v1 + 31);
  }

  else
  {
    v17 = v1[2];
  }

  v18 = v12;
  v19 = v11;
  do
  {
    while (1)
    {
      v20 = *(v19 + 55);
      v21 = v20 >= 0 ? v19 + 4 : v19[4];
      v22 = v20 >= 0 ? *(v19 + 55) : v19[5];
      v23 = v17 >= v22 ? v22 : v17;
      v24 = memcmp(v21, v16, v23);
      if (v24)
      {
        break;
      }

      if (v22 >= v17)
      {
        goto LABEL_39;
      }

LABEL_25:
      v19 = v19[1];
      if (!v19)
      {
        goto LABEL_40;
      }
    }

    if (v24 < 0)
    {
      goto LABEL_25;
    }

LABEL_39:
    v18 = v19;
    v19 = *v19;
  }

  while (v19);
LABEL_40:
  if (v18 != v12)
  {
    v25 = *(v18 + 55);
    if (v25 >= 0)
    {
      v26 = (v18 + 4);
    }

    else
    {
      v26 = v18[4];
    }

    if (v25 >= 0)
    {
      v27 = *(v18 + 55);
    }

    else
    {
      v27 = v18[5];
    }

    if (v27 >= v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v27;
    }

    v29 = memcmp(v16, v26, v28);
    if (v29)
    {
      if ((v29 & 0x80000000) == 0)
      {
LABEL_52:
        v30 = v167;
        if (v167)
        {
          atomic_fetch_add_explicit((v167 + 8), 1uLL, memory_order_relaxed);
        }

        v31 = v18[8];
        v18[7] = v157;
        v18[8] = v30;
        if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        goto LABEL_134;
      }
    }

    else if (v17 >= v27)
    {
      goto LABEL_52;
    }
  }

  v34 = *v18;
  if (v159->__vftable == v18)
  {
    v35 = v18;
    if (v34)
    {
      v12 = v18 + 1;
    }

    else
    {
      v12 = v18;
    }

    if (*v12)
    {
      goto LABEL_134;
    }

LABEL_122:
    if (v34)
    {
      v46 = v35;
    }

    else
    {
      v46 = v18;
    }

    v53 = *(v1 + 31);
    goto LABEL_128;
  }

  if (!v34)
  {
LABEL_71:
    v35 = v18;
    do
    {
      v39 = v35;
      v35 = v35[2];
    }

    while (*v35 == v39);
    v34 = 0;
    v14 = *(v1 + 31);
    v38 = v1[1];
    v15 = v1[2];
    v37 = *(v1 + 31);
    goto LABEL_74;
  }

  v36 = *v18;
  do
  {
    v35 = v36;
    v36 = v36[1];
  }

  while (v36);
  v37 = v14;
  v38 = v153;
LABEL_74:
  v40 = *(v35 + 55);
  if (v40 >= 0)
  {
    v41 = (v35 + 4);
  }

  else
  {
    v41 = v35[4];
  }

  if (v40 >= 0)
  {
    v42 = *(v35 + 55);
  }

  else
  {
    v42 = v35[5];
  }

  v155 = v37;
  if (v37 >= 0)
  {
    v43 = (v1 + 1);
  }

  else
  {
    v43 = v38;
  }

  if (v37 < 0)
  {
    v14 = v15;
  }

  if (v14 >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v14;
  }

  v45 = memcmp(v41, v43, v44);
  if (!v45)
  {
    if (v42 >= v14)
    {
      goto LABEL_90;
    }

    goto LABEL_113;
  }

  if (v45 < 0)
  {
LABEL_113:
    if (v34)
    {
      v12 = v35 + 1;
    }

    else
    {
      v12 = v18;
    }

    if (*v12)
    {
      goto LABEL_134;
    }

    goto LABEL_122;
  }

LABEL_90:
  if (!v11)
  {
    v46 = v12;
    goto LABEL_127;
  }

  while (2)
  {
    while (2)
    {
      v46 = v11;
      v47 = *(v11 + 55);
      if (v47 >= 0)
      {
        v48 = v11 + 4;
      }

      else
      {
        v48 = v11[4];
      }

      if (v47 >= 0)
      {
        v49 = *(v11 + 55);
      }

      else
      {
        v49 = v11[5];
      }

      if (v49 >= v14)
      {
        v50 = v14;
      }

      else
      {
        v50 = v49;
      }

      v51 = memcmp(v43, v48, v50);
      if (v51)
      {
        if (v51 < 0)
        {
          break;
        }

        goto LABEL_106;
      }

      if (v14 >= v49)
      {
LABEL_106:
        v52 = memcmp(v48, v43, v50);
        if (v52)
        {
          if ((v52 & 0x80000000) == 0)
          {
            goto LABEL_134;
          }
        }

        else if (v49 >= v14)
        {
          goto LABEL_134;
        }

        v11 = v46[1];
        if (!v11)
        {
          v12 = v46 + 1;
          goto LABEL_127;
        }

        continue;
      }

      break;
    }

    v11 = *v46;
    if (*v46)
    {
      continue;
    }

    break;
  }

  v12 = v46;
LABEL_127:
  v53 = v155;
LABEL_128:
  v54 = operator new(0x48uLL);
  v55 = v54;
  buf.__r_.__value_.__r.__words[0] = v54;
  *&buf.__r_.__value_.__r.__words[1] = v159;
  if (v53 < 0)
  {
    std::string::__init_copy_ctor_external((v54 + 32), v1[1], v1[2]);
    v57 = v167;
    v55[7] = v166;
    v55[8] = v57;
    if (v57)
    {
LABEL_130:
      atomic_fetch_add_explicit((v57 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v56 = *v163;
    *(v54 + 6) = v1[3];
    *(v54 + 2) = v56;
    v57 = v167;
    *(v54 + 7) = v157;
    *(v54 + 8) = v57;
    if (v57)
    {
      goto LABEL_130;
    }
  }

  *v55 = 0;
  v55[1] = 0;
  v55[2] = v46;
  *v12 = v55;
  v58 = v159->~__shared_weak_count;
  if (v58)
  {
    v159->__vftable = v58;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v161[18], v55);
  ++v161[19];
LABEL_134:
  v59 = *(v166 + 32);
  v60 = *(v161 + 14);
  v61 = v161[4];
  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
  if (!v60)
  {
    if (!v62)
    {
LABEL_149:
      v70 = v161[12];
      if (v70)
      {
        (*(v70 + 16))(v70, 1);
        v71 = v161[12];
        v161[12] = 0;
        if (v71)
        {
          _Block_release(v71);
        }

        v72 = v161[4];
        if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v59 = 2;
          _os_log_impl(&dword_297288000, v72, OS_LOG_TYPE_DEFAULT, "#I Assertion held, but action will be deferred; acknowledging previous notification", &buf, 2u);
          v65 = v161[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v59 = 2;
          v65 = v161[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        goto LABEL_157;
      }

      v59 = 2;
      goto LABEL_156;
    }

    v66 = (v1 + 1);
    if (*(v1 + 31) < 0)
    {
      v66 = *v163;
      v67 = v1[4];
      v68 = *(v161 + 15);
      if (v68 <= 2)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v67 = v1[4];
      v68 = *(v161 + 15);
      if (v68 <= 2)
      {
LABEL_143:
        v69 = off_29EE67E18[v68];
LABEL_148:
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v66;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v67;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *group = v59;
        *&group[4] = 1024;
        *&group[6] = 2;
        *&group[10] = 2080;
        *&group[12] = v69;
        _os_log_impl(&dword_297288000, v61, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s' during sleep; Timeout (millisec): %llu, Status = %d, Override = %d; Sleep state: %s", &buf, 0x2Cu);
        goto LABEL_149;
      }
    }

    v69 = "Unknown";
    goto LABEL_148;
  }

  if (!v62)
  {
LABEL_156:
    v65 = v161[9];
    if (*(v1 + 31) < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_157;
  }

  v63 = (v1 + 1);
  if (*(v1 + 31) < 0)
  {
    v63 = *v163;
  }

  v64 = v1[4];
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
  *(buf.__r_.__value_.__r.__words + 4) = v63;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v64;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
  *group = v59;
  _os_log_impl(&dword_297288000, v61, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s'; Timeout (millisec): %llu, Status = %d", &buf, 0x1Cu);
  v65 = v161[9];
  if (*(v1 + 31) < 0)
  {
LABEL_139:
    std::string::__init_copy_ctor_external(&v165, v1[1], v1[2]);
    goto LABEL_158;
  }

LABEL_157:
  v73 = *v163;
  v165.__r_.__value_.__r.__words[2] = v1[3];
  *&v165.__r_.__value_.__l.__data_ = v73;
LABEL_158:
  PowerStats::gotAssertion(v65, &v165, v59);
  if ((SHIBYTE(v165.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v59 == 2)
    {
      goto LABEL_160;
    }

LABEL_163:
    if (v1[4] < 1)
    {
      goto LABEL_331;
    }

    v75 = v161[1];
    if (!v75 || (v76 = *v161, (v77 = std::__shared_weak_count::lock(v75)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v78 = v77;
    p_shared_weak_owners = &v77->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v77->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v77->__on_zero_shared)(v77);
      std::__shared_weak_count::__release_weak(v78);
    }

    buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    buf.__r_.__value_.__l.__size_ = 1174405120;
    buf.__r_.__value_.__r.__words[2] = ___ZZN12PowerManager5State20createPowerAssertionENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEEENKUlvE_clEv_block_invoke;
    *group = &__block_descriptor_tmp_31_0;
    *&group[8] = v161;
    *&group[16] = v76;
    v173 = v78;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v160 = v78;
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v1[1], v1[2]);
    }

    else
    {
      v80 = *v163;
      __p.__r_.__value_.__r.__words[2] = v1[3];
      *&__p.__r_.__value_.__l.__data_ = v80;
    }

    v175 = v1[4];
    v100 = operator new(0x10uLL);
    v101 = _Block_copy(&buf);
    *v100 = "Watchdog timed out";
    TelephonyBasebandWatchdogStart();
    v156 = v100;
    v164 = v100;
    if (v101)
    {
      _Block_release(v101);
    }

    v102 = (v161 + 21);
    v103 = v161[21];
    v158 = (v161 + 20);
    if (!v103)
    {
      v108 = (v161 + 21);
      if (v161[20] == v102)
      {
        v122 = 0;
        v108 = (v161 + 21);
        v123 = v161 + 21;
        goto LABEL_308;
      }

      goto LABEL_264;
    }

    v104 = *(v1 + 31);
    v105 = v1[2];
    v152 = v1[1];
    if ((v104 & 0x80u) == 0)
    {
      v106 = (v1 + 1);
    }

    else
    {
      v106 = v1[1];
    }

    if ((v104 & 0x80u) == 0)
    {
      v107 = *(v1 + 31);
    }

    else
    {
      v107 = v1[2];
    }

    v108 = (v161 + 21);
    v109 = v161[21];
    while (1)
    {
      v110 = *(v109 + 55);
      if (v110 >= 0)
      {
        v111 = v109 + 4;
      }

      else
      {
        v111 = v109[4];
      }

      if (v110 >= 0)
      {
        v112 = *(v109 + 55);
      }

      else
      {
        v112 = v109[5];
      }

      if (v107 >= v112)
      {
        v113 = v112;
      }

      else
      {
        v113 = v107;
      }

      v114 = memcmp(v111, v106, v113);
      if (v114)
      {
        if (v114 < 0)
        {
          goto LABEL_226;
        }
      }

      else if (v112 < v107)
      {
LABEL_226:
        v109 = v109[1];
        if (!v109)
        {
          goto LABEL_241;
        }

        continue;
      }

      v108 = v109;
      v109 = *v109;
      if (!v109)
      {
LABEL_241:
        if (v108 != v102)
        {
          v115 = *(v108 + 55);
          if (v115 >= 0)
          {
            v116 = (v108 + 4);
          }

          else
          {
            v116 = v108[4];
          }

          if (v115 >= 0)
          {
            v117 = *(v108 + 55);
          }

          else
          {
            v117 = v108[5];
          }

          if (v117 >= v107)
          {
            v118 = v107;
          }

          else
          {
            v118 = v117;
          }

          v119 = memcmp(v106, v116, v118);
          if (v119)
          {
            if ((v119 & 0x80000000) == 0)
            {
LABEL_253:
              v120 = operator new(0x20uLL);
              *v120 = &unk_2A1E39480;
              v120[1] = 0;
              v120[2] = 0;
              v120[3] = v156;
              v164 = 0;
              v121 = v108[8];
              v108[7] = v156;
              v108[8] = v120;
              if (v121 && !atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v121->__on_zero_shared)(v121);
                std::__shared_weak_count::__release_weak(v121);
              }

              goto LABEL_324;
            }
          }

          else if (v107 >= v117)
          {
            goto LABEL_253;
          }
        }

        v122 = *v108;
        if (*v158 == v108)
        {
          v123 = v108;
          goto LABEL_308;
        }

        if (v122)
        {
          v124 = *v108;
          do
          {
            v123 = v124;
            v124 = v124[1];
          }

          while (v124);
          v125 = v104;
          v126 = v152;
LABEL_267:
          v128 = *(v123 + 55);
          if (v128 >= 0)
          {
            v129 = v123 + 4;
          }

          else
          {
            v129 = v123[4];
          }

          if (v128 >= 0)
          {
            v130 = *(v123 + 55);
          }

          else
          {
            v130 = v123[5];
          }

          v154 = v125;
          if (v125 >= 0)
          {
            v131 = (v1 + 1);
          }

          else
          {
            v131 = v126;
          }

          if (v125 >= 0)
          {
            v105 = v104;
          }

          if (v105 >= v130)
          {
            v132 = v130;
          }

          else
          {
            v132 = v105;
          }

          v133 = memcmp(v129, v131, v132);
          if (v133)
          {
            if (v133 < 0)
            {
              goto LABEL_308;
            }

LABEL_285:
            v134 = (v161 + 21);
            v135 = v161;
            if (!v103)
            {
LABEL_315:
              v142 = *(v1 + 31);
              goto LABEL_318;
            }

            while (1)
            {
              v134 = v103;
              v136 = *(v103 + 55);
              if (v136 >= 0)
              {
                v137 = v103 + 4;
              }

              else
              {
                v137 = v103[4];
              }

              if (v136 >= 0)
              {
                v138 = *(v103 + 55);
              }

              else
              {
                v138 = v103[5];
              }

              if (v138 >= v105)
              {
                v139 = v105;
              }

              else
              {
                v139 = v138;
              }

              v140 = memcmp(v131, v137, v139);
              if (v140)
              {
                if ((v140 & 0x80000000) == 0)
                {
                  goto LABEL_301;
                }
              }

              else if (v105 >= v138)
              {
LABEL_301:
                v141 = memcmp(v137, v131, v139);
                if (v141)
                {
                  if ((v141 & 0x80000000) == 0)
                  {
                    goto LABEL_324;
                  }
                }

                else if (v138 >= v105)
                {
                  goto LABEL_324;
                }

                v103 = v134[1];
                if (!v103)
                {
                  v102 = v134 + 1;
                  goto LABEL_317;
                }

                continue;
              }

              v103 = *v134;
              if (!*v134)
              {
                v102 = v134;
LABEL_317:
                v142 = v154;
LABEL_318:
                v143 = operator new(0x48uLL);
                v144 = v143;
                v168 = v143;
                v169 = v161 + 20;
                v170 = 0;
                if (v142 < 0)
                {
                  std::string::__init_copy_ctor_external((v143 + 32), v1[1], v1[2]);
                }

                else
                {
                  v145 = *v163;
                  *(v143 + 6) = v1[3];
                  *(v143 + 2) = v145;
                }

                v144[7] = v156;
                v146 = operator new(0x20uLL);
                *v146 = &unk_2A1E39480;
                v146[1] = 0;
                v146[2] = 0;
                v146[3] = v156;
                v144[8] = v146;
                v164 = 0;
                *v144 = 0;
                v144[1] = 0;
                v144[2] = v134;
                *v102 = v144;
                v147 = **v158;
                if (v147)
                {
                  *v158 = v147;
                }

                std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v135[21], v144);
                ++v135[22];
LABEL_324:
                if (v164)
                {
                  TelephonyBasebandWatchdogStop();
                  operator delete(v164);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v173)
                {
                  std::__shared_weak_count::__release_weak(v173);
                }

                std::__shared_weak_count::__release_weak(v160);
                goto LABEL_331;
              }
            }
          }

          if (v130 >= v105)
          {
            goto LABEL_285;
          }

LABEL_308:
          if (v122)
          {
            v134 = v123;
          }

          else
          {
            v134 = v108;
          }

          if (v122)
          {
            v102 = (v123 + 1);
          }

          else
          {
            v102 = v108;
          }

          v135 = v161;
          if (*v102)
          {
            goto LABEL_324;
          }

          goto LABEL_315;
        }

LABEL_264:
        v123 = v108;
        do
        {
          v127 = v123;
          v123 = v123[2];
        }

        while (*v123 == v127);
        v122 = 0;
        v104 = *(v1 + 31);
        v126 = v1[1];
        v105 = v1[2];
        v125 = *(v1 + 31);
        goto LABEL_267;
      }
    }
  }

  operator delete(v165.__r_.__value_.__l.__data_);
  if (v59 != 2)
  {
    goto LABEL_163;
  }

LABEL_160:
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v1[1], v1[2]);
  }

  else
  {
    v74 = *v163;
    buf.__r_.__value_.__r.__words[2] = v1[3];
    *&buf.__r_.__value_.__l.__data_ = v74;
  }

  v81 = v1[5];
  *group = v81;
  if (v81)
  {
    dispatch_retain(v81);
    if (*group)
    {
      dispatch_group_enter(*group);
    }
  }

  v82 = v161[24];
  if (!v82)
  {
    v85 = (v161 + 24);
    v86 = (v161 + 24);
    goto LABEL_202;
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  do
  {
    while (2)
    {
      v86 = v82;
      v89 = v82[4];
      v87 = v82 + 4;
      v88 = v89;
      v90 = *(v87 + 23);
      if (v90 >= 0)
      {
        v91 = v87;
      }

      else
      {
        v91 = v88;
      }

      if (v90 >= 0)
      {
        v92 = *(v87 + 23);
      }

      else
      {
        v92 = v87[1];
      }

      if (v92 >= size)
      {
        v93 = size;
      }

      else
      {
        v93 = v92;
      }

      v94 = memcmp(p_buf, v91, v93);
      if (v94)
      {
        if (v94 < 0)
        {
          goto LABEL_181;
        }
      }

      else if (size < v92)
      {
LABEL_181:
        v82 = *v86;
        v85 = v86;
        if (!*v86)
        {
          goto LABEL_202;
        }

        continue;
      }

      break;
    }

    v95 = memcmp(v91, p_buf, v93);
    if (v95)
    {
      if ((v95 & 0x80000000) == 0)
      {
        goto LABEL_208;
      }
    }

    else if (v92 >= size)
    {
      goto LABEL_208;
    }

    v82 = v86[1];
  }

  while (v82);
  v85 = v86 + 1;
LABEL_202:
  v96 = operator new(0x40uLL);
  v97 = v96;
  v98 = (v161 + 23);
  v168 = v96;
  v169 = v161 + 23;
  v170 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v96 + 32), buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v96 + 32) = buf;
  }

  v97[7] = *group;
  *group = 0;
  *v97 = 0;
  v97[1] = 0;
  v97[2] = v86;
  *v85 = v97;
  v99 = **v98;
  if (v99)
  {
    *v98 = v99;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v161[24], v97);
  ++v161[25];
LABEL_208:
  if (*group)
  {
    dispatch_group_leave(*group);
    if (*group)
    {
      dispatch_release(*group);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_331:
  v148 = v167;
  if (v167 && !atomic_fetch_add((v167 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v148->__on_zero_shared)(v148);
    std::__shared_weak_count::__release_weak(v148);
  }

  v149 = v1[5];
  if (v149)
  {
    dispatch_group_leave(v149);
    v150 = v1[5];
    if (v150)
    {
      dispatch_release(v150);
    }
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v163);
  }

  operator delete(v1);
  v151 = a1[2];
  if (v151 && !atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v151->__on_zero_shared)(v151);
    std::__shared_weak_count::__release_weak(v151);
  }

  operator delete(a1);
}