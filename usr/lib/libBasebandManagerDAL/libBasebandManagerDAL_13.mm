void sub_29732214C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t object, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v35 - 112);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v35 - 112);
  _Unwind_Resume(a1);
}

void sub_297322228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29732226C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  xpc_release(*(v32 - 112));
  if (a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2973222E0);
}

void sub_2973222A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v27);
  JUMPOUT(0x2973222E0);
}

void sub_2973222C8(_Unwind_Exception *a1)
{
  operator delete(v1);
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2973222E0);
}

void sub_2973222D8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_83(void *a1, uint64_t *a2, uint64_t *a3)
{
  v19 = *MEMORY[0x29EDCA608];
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
        v10 = *a2;
        if (*a2)
        {
          v11 = *(v7 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *object = 138412290;
            *&object[4] = v10;
            _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "%@", object, 0xCu);
          }
        }

        else
        {
          v16 = *a3;
          if (*a3)
          {
            v17 = *(v7 + 104);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *object = 138412290;
              *&object[4] = v16;
              _os_log_impl(&dword_297288000, v17, OS_LOG_TYPE_DEFAULT, "#I %@", object, 0xCu);
            }
          }
        }

        if (*a2)
        {
          v12 = 3760250880;
        }

        else
        {
          v12 = 0;
        }

        v13 = xpc_null_create();
        v14 = a1[7];
        *object = v13;
        v15 = xpc_null_create();
        (*(v14 + 16))(v14, v12, object);
        xpc_release(*object);
        xpc_release(v15);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_2973224D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_93(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_97(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_101(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_105(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_109(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_113(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_117(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb5_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_121(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
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
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v14 = a1[5];
        v13 = a1[6];
        if (!v13)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    v12 = 0;
    v14 = a1[5];
    v13 = a1[6];
    if (!v13)
    {
LABEL_8:
      v15 = v7[10];
      if (!v15 || (v16 = v7[9], (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v18 = v17;
      v19 = operator new(0x28uLL);
      *v19 = v7;
      v19[1] = v10;
      v20 = xpc_null_create();
      v19[2] = v12;
      v19[3] = v14;
      v19[4] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v7[11];
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = operator new(0x18uLL);
      *v22 = v19;
      v22[1] = v16;
      v22[2] = v18;
      dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb6_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      xpc_release(v20);
      goto LABEL_17;
    }

LABEL_7:
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

LABEL_17:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_125(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
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
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v14 = a1[5];
        v13 = a1[6];
        if (!v13)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    v12 = 0;
    v14 = a1[5];
    v13 = a1[6];
    if (!v13)
    {
LABEL_8:
      v15 = v7[10];
      if (!v15 || (v16 = v7[9], (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v18 = v17;
      v19 = operator new(0x28uLL);
      *v19 = v7;
      v19[1] = v10;
      v20 = xpc_null_create();
      v19[2] = v12;
      v19[3] = v14;
      v19[4] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v7[11];
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = operator new(0x18uLL);
      *v22 = v19;
      v22[1] = v16;
      v22[2] = v18;
      dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb7_E4__10EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      xpc_release(v20);
      goto LABEL_17;
    }

LABEL_7:
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

LABEL_17:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_129(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
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
  if (a1[5])
  {
    v10 = *a2;
    if (v10)
    {
      xpc_retain(v10);
      v11 = *a3;
      if (*a3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = xpc_null_create();
      v11 = *a3;
      if (*a3)
      {
LABEL_6:
        v12 = _Block_copy(v11);
        v14 = a1[5];
        v13 = a1[6];
        if (!v13)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }

    v12 = 0;
    v14 = a1[5];
    v13 = a1[6];
    if (!v13)
    {
LABEL_8:
      v15 = v7[10];
      if (!v15 || (v16 = v7[9], (v17 = std::__shared_weak_count::lock(v15)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v18 = v17;
      v19 = operator new(0x28uLL);
      *v19 = v7;
      v19[1] = v10;
      v20 = xpc_null_create();
      v19[2] = v12;
      v19[3] = v14;
      v19[4] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v21 = v7[11];
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = operator new(0x18uLL);
      *v22 = v19;
      v22[1] = v16;
      v22[2] = v18;
      dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb8_E4__11EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }

      xpc_release(v20);
      goto LABEL_17;
    }

LABEL_7:
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_8;
  }

LABEL_17:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_133(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb9_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_137(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
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
  v10 = a1[5];
  if (v10)
  {
    if (*a3)
    {
      v11 = _Block_copy(*a3);
      v10 = a1[5];
      v12 = a1[6];
      if (!v12)
      {
LABEL_7:
        v13 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v14 = v7[10];
          if (!v14)
          {
LABEL_25:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v13 = xpc_null_create();
          v14 = v7[10];
          if (!v14)
          {
            goto LABEL_25;
          }
        }

        v15 = v7[9];
        v16 = std::__shared_weak_count::lock(v14);
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v16;
        v18 = operator new(0x28uLL);
        v19 = v18;
        *v18 = v7;
        v18[1] = v11;
        v18[2] = v10;
        v18[3] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v18[4] = v13;
        v20 = xpc_null_create();
        v21 = v7[11];
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = operator new(0x18uLL);
        *v22 = v19;
        v22[1] = v15;
        v22[2] = v17;
        dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb10_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        xpc_release(v20);
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
      v12 = a1[6];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_20:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_141(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
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
  v10 = a1[5];
  if (v10)
  {
    if (*a3)
    {
      v11 = _Block_copy(*a3);
      v10 = a1[5];
      v12 = a1[6];
      if (!v12)
      {
LABEL_7:
        v13 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v14 = v7[10];
          if (!v14)
          {
LABEL_25:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v13 = xpc_null_create();
          v14 = v7[10];
          if (!v14)
          {
            goto LABEL_25;
          }
        }

        v15 = v7[9];
        v16 = std::__shared_weak_count::lock(v14);
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v16;
        v18 = operator new(0x28uLL);
        v19 = v18;
        *v18 = v7;
        v18[1] = v11;
        v18[2] = v10;
        v18[3] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v18[4] = v13;
        v20 = xpc_null_create();
        v21 = v7[11];
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = operator new(0x18uLL);
        *v22 = v19;
        v22[1] = v15;
        v22[2] = v17;
        dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb11_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        xpc_release(v20);
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
      v12 = a1[6];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_20:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_145(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
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
  v10 = a1[5];
  if (v10)
  {
    if (*a3)
    {
      v11 = _Block_copy(*a3);
      v10 = a1[5];
      v12 = a1[6];
      if (!v12)
      {
LABEL_7:
        v13 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v14 = v7[10];
          if (!v14)
          {
LABEL_25:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v13 = xpc_null_create();
          v14 = v7[10];
          if (!v14)
          {
            goto LABEL_25;
          }
        }

        v15 = v7[9];
        v16 = std::__shared_weak_count::lock(v14);
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v16;
        v18 = operator new(0x28uLL);
        v19 = v18;
        *v18 = v7;
        v18[1] = v11;
        v18[2] = v10;
        v18[3] = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v18[4] = v13;
        v20 = xpc_null_create();
        v21 = v7[11];
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = operator new(0x18uLL);
        *v22 = v19;
        v22[1] = v15;
        v22[2] = v17;
        dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb12_E4__15EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
        }

        xpc_release(v20);
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
      v12 = a1[6];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_20:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_149(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v6 = a1[4];
  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = a1[5];
  if (v9)
  {
    if (*a3)
    {
      v10 = _Block_copy(*a3);
      v9 = a1[5];
      v11 = a1[6];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v10 = 0;
      v11 = a1[6];
      if (!v11)
      {
LABEL_7:
        v12 = v6[10];
        if (!v12 || (v13 = v6[9], (v14 = std::__shared_weak_count::lock(v12)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v15 = v14;
        v16 = operator new(0x20uLL);
        *v16 = v6;
        v16[1] = v10;
        v16[2] = v9;
        v16[3] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = v6[11];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = operator new(0x18uLL);
        *v18 = v16;
        v18[1] = v13;
        v18[2] = v15;
        dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb13_E4__16EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v11)
        {
          std::__shared_weak_count::__release_weak(v11);
        }

        goto LABEL_15;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_7;
  }

LABEL_15:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_153(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v17 = v6;
  if (!v6)
  {
    return;
  }

  if (!*(a1 + 32))
  {
LABEL_18:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v12);
    }

    return;
  }

  cf = TelephonyBasebandCreateController();
  v7 = TelephonyBasebandPowerDebugUnblock();
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    object = v8;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
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
  object = v10;
LABEL_12:
  xpc_release(v9);
  if (v7)
  {
    v11 = 0;
  }

  else
  {
    v11 = -534716414;
  }

  v13 = v11;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v13, &object);
  xpc_release(object);
  if (cf)
  {
    CFRelease(cf);
  }

  v6 = v17;
  if (v17)
  {
    goto LABEL_18;
  }
}

void sub_29732434C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, const void *a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(&a12);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

void sub_297324384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrI11RadioModuleEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_155(uint64_t a1, xpc_object_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v45 = v7;
  if (!v7)
  {
    return;
  }

  if (!*(a1 + 32))
  {
LABEL_64:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v39 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v39);
    }

    return;
  }

  v42 = 0;
  v43 = 0;
  value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF7A8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v10 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF830]);
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v12 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF800]);
  object = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    object = xpc_null_create();
  }

  v13 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v14 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF848]);
  object = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    object = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v16 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF850]);
  object = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    object = xpc_null_create();
  }

  v17 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v18 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF870]);
  object = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object = xpc_null_create();
  }

  v19 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v20 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF828]);
  object = v20;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    object = xpc_null_create();
  }

  v21 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  if (v11)
  {
    v22 = 2;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 | v9;
  if (v13)
  {
    v24 = 4;
  }

  else
  {
    v24 = 0;
  }

  if (v15)
  {
    v25 = 8;
  }

  else
  {
    v25 = 0;
  }

  v26 = v23 | v24 | v25;
  if (v17)
  {
    v27 = 16;
  }

  else
  {
    v27 = 0;
  }

  if (v19)
  {
    v28 = 32;
  }

  else
  {
    v28 = 0;
  }

  v29 = v27 | v28;
  if (v21)
  {
    v30 = 64;
  }

  else
  {
    v30 = 0;
  }

  LODWORD(v42) = v26 | v29 | v30;
  v31 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE6B8]);
  object = v31;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    object = xpc_null_create();
  }

  HIDWORD(v42) = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v32 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBEDC0]);
  object = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    object = xpc_null_create();
  }

  LODWORD(v43) = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  v33 = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBF808]);
  object = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    object = xpc_null_create();
  }

  BYTE4(v43) = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  BYTE5(v43) = 0;
  v34 = TelephonyBasebandSetPowerDebugOptions();
  object = 0xAAAAAAAAAAAAAAAALL;
  v35 = xpc_dictionary_create(0, 0, 0);
  v36 = v35;
  if (v35)
  {
    object = v35;
  }

  else
  {
    v36 = xpc_null_create();
    object = v36;
    if (!v36)
    {
      v37 = xpc_null_create();
      v36 = 0;
      goto LABEL_59;
    }
  }

  if (MEMORY[0x29C26F9F0](v36) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v36);
    goto LABEL_60;
  }

  v37 = xpc_null_create();
LABEL_59:
  object = v37;
LABEL_60:
  xpc_release(v36);
  if (v34)
  {
    v38 = 0;
  }

  else
  {
    v38 = -534716414;
  }

  v40 = v38;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v40, &object);
  xpc_release(object);
  v7 = v45;
  if (v45)
  {
    goto LABEL_64;
  }
}

void sub_29732484C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule28registerCommandHandlers_syncEv_block_invoke_159(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v41 = v6;
  if (!v6)
  {
    return;
  }

  if (!*(a1 + 32))
  {
LABEL_40:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v35 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v35);
    }

    return;
  }

  value = 0;
  v39 = 0;
  v7 = MEMORY[0x29C26D320](&value);
  object = 0xAAAAAAAAAAAAAAAALL;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  v10 = MEMORY[0x29EDCAA00];
  if (v8)
  {
    object = v8;
  }

  else
  {
    v9 = xpc_null_create();
    object = v9;
    if (!v9)
    {
      v11 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (MEMORY[0x29C26F9F0](v9) == v10)
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v11 = xpc_null_create();
LABEL_11:
  object = v11;
LABEL_12:
  xpc_release(v9);
  if (v7)
  {
    if (MEMORY[0x29C26F9F0](object) == v10)
    {
      v12 = xpc_BOOL_create(value & 1);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF7A8], v12);
      v13 = xpc_null_create();
      xpc_release(v12);
      xpc_release(v13);
      v14 = xpc_BOOL_create((value & 2) != 0);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF830], v14);
      v15 = xpc_null_create();
      xpc_release(v14);
      xpc_release(v15);
      v16 = xpc_BOOL_create((value & 4) != 0);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF800], v16);
      v17 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v17);
      v18 = xpc_BOOL_create((value & 8) != 0);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF848], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      v20 = xpc_BOOL_create((value & 0x10) != 0);
      if (!v20)
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF850], v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      v22 = xpc_BOOL_create((value & 0x20) != 0);
      if (!v22)
      {
        v22 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF870], v22);
      v23 = xpc_null_create();
      xpc_release(v22);
      xpc_release(v23);
      v24 = xpc_BOOL_create((value & 0x40) != 0);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF828], v24);
      v25 = xpc_null_create();
      xpc_release(v24);
      xpc_release(v25);
      v26 = xpc_int64_create(HIDWORD(value));
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBE6B8], v26);
      v27 = xpc_null_create();
      xpc_release(v26);
      xpc_release(v27);
      v28 = xpc_int64_create(v39);
      if (!v28)
      {
        v28 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBEDC0], v28);
      v29 = xpc_null_create();
      xpc_release(v28);
      xpc_release(v29);
      v30 = xpc_BOOL_create(SBYTE4(v39));
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF808], v30);
      v31 = xpc_null_create();
      xpc_release(v30);
      xpc_release(v31);
      v32 = xpc_BOOL_create(SBYTE5(v39));
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      xpc_dictionary_set_value(object, *MEMORY[0x29EDBF638], v32);
      v33 = xpc_null_create();
      xpc_release(v32);
      xpc_release(v33);
    }

    v34 = 0;
  }

  else
  {
    v34 = -534716414;
  }

  v36 = v34;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v36, &object);
  xpc_release(object);
  v6 = v41;
  if (v41)
  {
    goto LABEL_40;
  }
}

void sub_29732501C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  xpc_release(v12);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void RadioModule::registerEventHandlers_sync(RadioModule *this)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", __p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_69:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_69;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_69;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(__p, v7);
    v9 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v10 = *(&off_2A1399388 + 1);
    off_2A1399388 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A1399388;
  }

  v12 = *(&off_2A1399388 + 1);
  v34 = v8;
  v35 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 16))(&v36, v8);
  v38 = 0;
  v39 = 0;
  if (v37)
  {
    v39 = std::__shared_weak_count::lock(v37);
    if (v39)
    {
      v38 = v36;
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
    }
  }

  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (!v38)
    {
      goto LABEL_32;
    }
  }

  else if (!v38)
  {
    goto LABEL_32;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule26registerEventHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_165;
  aBlock[4] = this;
  aBlock[5] = v4;
  v31 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  v14 = *(this + 11);
  if (v14)
  {
    dispatch_retain(*(this + 11));
  }

  v32 = v13;
  object = v14;
  radio::CommandDriver::watchOperatingMode();
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

LABEL_32:
  v15 = *MEMORY[0x29EDBF460];
  v16 = strlen(*MEMORY[0x29EDBF460]);
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
    __p[1] = v17;
    v29 = v19 | 0x8000000000000000;
    __p[0] = v18;
    goto LABEL_40;
  }

  HIBYTE(v29) = v16;
  v18 = __p;
  if (v16)
  {
LABEL_40:
    memmove(v18, v15, v17);
  }

  *(v17 + v18) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = 0;
  v20 = operator new(0x20uLL);
  *v20 = &unk_2A1E390A8;
  v20[1] = this;
  v20[2] = v4;
  v20[3] = v6;
  v43 = v20;
  Service::registerEventHandler(this, __p, v42);
  if (v43 == v42)
  {
    (*(*v43 + 32))(v43);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_63;
  }

  if (v43)
  {
    (*(*v43 + 40))(v43);
  }

  if (SHIBYTE(v29) < 0)
  {
LABEL_63:
    operator delete(__p[0]);
  }

LABEL_45:
  v21 = *MEMORY[0x29EDBEFF0];
  v22 = strlen(*MEMORY[0x29EDBEFF0]);
  if (v22 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v23 = v22;
  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v22 | 7) + 1;
    }

    v24 = operator new(v25);
    __p[1] = v23;
    v29 = v25 | 0x8000000000000000;
    __p[0] = v24;
    goto LABEL_53;
  }

  HIBYTE(v29) = v22;
  v24 = __p;
  if (v22)
  {
LABEL_53:
    memmove(v24, v21, v23);
  }

  *(v23 + v24) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = 0;
  v26 = operator new(0x20uLL);
  *v26 = &unk_2A1E39178;
  v26[1] = this;
  v26[2] = v4;
  v26[3] = v6;
  v41 = v26;
  Service::registerEventHandler(this, __p, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_65:
    operator delete(__p[0]);
    goto LABEL_58;
  }

  if (v41)
  {
    (*(*v41 + 40))();
  }

  if (SHIBYTE(v29) < 0)
  {
    goto LABEL_65;
  }

LABEL_58:
  Service::eventsOn(this);
  v27 = v39;
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2973256B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v31);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule26registerEventHandlers_syncEv_block_invoke(void *a1, uint64_t *a2, const void **a3)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = a1[4];
  v21 = 0;
  v22 = 0;
  v5 = a1[6];
  if (v5)
  {
    v22 = std::__shared_weak_count::lock(v5);
    if (!v22)
    {
      return;
    }

    v21 = a1[5];
    if (v21)
    {
      v8 = *a2;
      if (v8)
      {
        v9 = *(v4 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v8;
          _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
        }

        goto LABEL_7;
      }

      if (*a3)
      {
        v11 = *MEMORY[0x29EDBF6A0];
        v12 = strlen(*MEMORY[0x29EDBF6A0]);
        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v13 = v12;
        if (v12 >= 0x17)
        {
          if ((v12 | 7) == 0x17)
          {
            v15 = 25;
          }

          else
          {
            v15 = (v12 | 7) + 1;
          }

          v14 = operator new(v15);
          __dst[1] = v13;
          v20 = v15 | 0x8000000000000000;
          __dst[0] = v14;
        }

        else
        {
          HIBYTE(v20) = v12;
          v14 = __dst;
          if (!v12)
          {
            goto LABEL_21;
          }
        }

        memmove(v14, v11, v13);
LABEL_21:
        *(v13 + v14) = 0;
        v16 = *a3;
        cf = v16;
        if (v16)
        {
          CFRetain(v16);
        }

        aBlock = 0;
        Service::broadcastEvent(v4, __dst, &cf, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(__dst[0]);
        }
      }
    }
  }

LABEL_7:
  v10 = v22;
  if (v22)
  {
    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10, a2, a3);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_2973259B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void RadioModule::setRegion_sync(RadioModule *this)
{
  if (!capabilities::abs::shouldSetRegion(this))
  {
    return;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v1 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v2 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v17, v1);
    v3 = v17;
    v17 = 0uLL;
    v4 = *(&off_2A1399388 + 1);
    off_2A1399388 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v17 + 1);
    if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A1399388;
  }

  v6 = *(&off_2A1399388 + 1);
  v11 = v2;
  v12 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v2 + 16))(&v13, v2);
  v15 = 0;
  v16 = 0;
  if (v14)
  {
    v16 = std::__shared_weak_count::lock(v14);
    if (v16)
    {
      v15 = v13;
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = v15;
    if (v15)
    {
LABEL_20:
      config::hw::regionCode();
      (*(*v7 + 256))(v7, &__p);
      if (v10 < 0)
      {
        operator delete(__p);
      }
    }
  }

  else
  {
    v7 = v15;
    if (v15)
    {
      goto LABEL_20;
    }
  }

  v8 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_297325C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v15 - 48);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v15 - 48);
  _Unwind_Resume(a1);
}

void sub_297325CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule15getVersion_syncEN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEE_block_invoke(void *a1, std::string::size_type *a2, const __CFDictionary **a3)
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
      v9 = v8;
      if (!a1[5])
      {
        goto LABEL_22;
      }

      v10 = *a2;
      if (v10)
      {
        v11 = *(v7 + 104);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "%@", &buf, 0xCu);
        }
      }

      else
      {
        v12 = *a3;
        if (*a3)
        {
          v14[0] = 0xAAAAAAAAAAAAAAAALL;
          v14[1] = 0xAAAAAAAAAAAAAAAALL;
          ctu::cf::dict_adapter::dict_adapter(v14, v12);
          ctu::cf::map_adapter::getString();
          if (*(v7 + 135) < 0)
          {
            operator delete(*(v7 + 112));
          }

          *(v7 + 112) = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          MEMORY[0x29C26DFC0](v14);
        }
      }

      v13 = a1[7];
      if (*(v7 + 135) < 0)
      {
        std::string::__init_copy_ctor_external(&buf, *(v7 + 112), *(v7 + 120));
      }

      else
      {
        buf = *(v7 + 112);
      }

      (*(v13 + 16))(v13, &buf);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }

        goto LABEL_16;
      }

      operator delete(buf.__r_.__value_.__l.__data_);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_16:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_297325EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26DFC0](&a16, a2, a3, a4, a5, a6, a7, a8);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void sub_297325F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297325F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c106_ZTSN8dispatch5blockIU13block_pointerFvNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN11RadioModule21getOperatingMode_syncEN8dispatch5blockIU13block_pointerFviEEE_block_invoke(void *a1, uint64_t *a2, const __CFDictionary **a3)
{
  v14 = *MEMORY[0x29EDCA608];
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
        v10 = *a2;
        if (v10)
        {
          v11 = *(v7 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        else
        {
          v12 = *a3;
          if (*a3)
          {
            memset(buf, 170, 16);
            ctu::cf::dict_adapter::dict_adapter(buf, v12);
            ctu::cf::map_adapter::getInt(buf, *MEMORY[0x29EDC8E10]);
            MEMORY[0x29C26DFC0](buf);
          }
        }

        (*(a1[7] + 16))();
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void RadioModule::getResetProperties_sync(RadioModule *this)
{
  v37 = *MEMORY[0x29EDCA608];
  if (*(this + 208) == 1)
  {
    v2 = *(this + 13);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (*(this + 201))
      {
        v3 = "true";
      }

      else
      {
        v3 = "false";
      }

      v4 = *(this + 101);
      v5 = *(this + 51);
      *buf = 136315650;
      *&buf[4] = v3;
      *&buf[12] = 1024;
      *&buf[14] = v4;
      v35 = 1024;
      v36 = v5;
      _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Baseband properties (cached):\n    Coredump supported: %s\n    PowerSequence index: %u\n    Baseband version: 0x%08x", buf, 0x18u);
    }

    return;
  }

  v6 = *(this + 10);
  if (!v6 || (v7 = *(this + 9), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule23getResetProperties_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_177;
  aBlock[4] = this;
  aBlock[5] = v7;
  v31 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = *(this + 11);
  if (v12)
  {
    dispatch_retain(v12);
  }

  v32 = v11;
  v33 = v12;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v13 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v14 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(buf, v13);
    v15 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v16 = *(&off_2A1399388 + 1);
    off_2A1399388 = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v14 = off_2A1399388;
  }

  v18 = *(&off_2A1399388 + 1);
  v24 = v14;
  v25 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v14 + 16))(&v26, v14);
  v28 = 0;
  v29 = 0;
  if (v27)
  {
    v29 = std::__shared_weak_count::lock(v27);
    if (v29)
    {
      v28 = v26;
    }

    if (v27)
    {
      std::__shared_weak_count::__release_weak(v27);
    }
  }

  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v28;
    if (v28)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v19 = v28;
    if (v28)
    {
LABEL_31:
      v20 = v32;
      if (v32)
      {
        v20 = _Block_copy(v32);
      }

      v22 = v20;
      object = v33;
      if (v33)
      {
        dispatch_retain(v33);
      }

      (*(*v19 + 120))(v19, &v22);
      if (object)
      {
        dispatch_release(object);
      }

      if (v22)
      {
        _Block_release(v22);
      }
    }
  }

  v21 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v33)
  {
    dispatch_release(v33);
  }

  if (v32)
  {
    _Block_release(v32);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2973266B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 96);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule23getResetProperties_syncEv_block_invoke(void *a1, CFErrorRef *a2, const void **a3)
{
  v126 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v121 = v8;
  if (!v8)
  {
    return;
  }

  v120 = a1[5];
  if (!v120)
  {
LABEL_239:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v112 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v112);
    }

    return;
  }

  memset(&v119, 0, sizeof(v119));
  if (*a2)
  {
    std::string::__assign_external(&v119, "Failed to get reset properties", 0x1EuLL);
    v9 = *(v7 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v21 = &v119;
      if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v21 = v119.__r_.__value_.__r.__words[0];
      }

      v22 = *a2;
      *buf = 136315394;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v22;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "%s\n:%@", buf, 0x16u);
    }

    CFErrorGetCode(*a2);
    goto LABEL_236;
  }

  v10 = *a3;
  cf = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = radio::BasebandProperties::create();
  *(v7 + 200) = v11;
  if (cf)
  {
    CFRelease(cf);
    if (*(v7 + 200))
    {
      goto LABEL_11;
    }

LABEL_23:
    std::string::__assign_external(&v119, "Invalid reset properties", 0x18uLL);
    v18 = *(v7 + 104);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_203;
    }

    v19 = &v119;
    if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v19 = v119.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v19;
LABEL_245:
    _os_log_error_impl(&dword_297288000, v18, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    goto LABEL_203;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  v12 = *(v7 + 104);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v7 + 201))
    {
      v13 = "true";
    }

    else
    {
      v13 = "false";
    }

    v14 = *(v7 + 202);
    v15 = *(v7 + 204);
    *buf = 136315650;
    *&buf[4] = v13;
    *&buf[12] = 1024;
    *&buf[14] = v14;
    *&buf[18] = 1024;
    *&buf[20] = v15;
    _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband properties:\n    Coredump supported: %s\n    PowerSequence index: %u\n    Baseband version: 0x%08x", buf, 0x18u);
  }

  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0 && !TelephonyUtilIsVendorBuild())
  {
    goto LABEL_200;
  }

  LOBYTE(v122) = *(v7 + 201) ^ 1;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v17 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v17, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v17;
    v16 = operator new(0x20uLL);
    *v16 = &unk_2A1E34960;
    v16[1] = 0;
    v16[2] = 0;
    v16[3] = v17;
    v20 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v17;
    *(&xmmword_2A1399338 + 1) = v16;
    if (!v20)
    {
      *&v117 = v17;
      *(&v117 + 1) = v16;
      goto LABEL_34;
    }

    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

  v16 = *(&xmmword_2A1399338 + 1);
  v17 = xmmword_2A1399338;
  v117 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_34:
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v23 = *MEMORY[0x29EDC8F08];
  v24 = strlen(*MEMORY[0x29EDC8F08]);
  if (v24 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v24;
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v24 | 7) + 1;
    }

    v26 = operator new(v27);
    *&buf[8] = v25;
    *&buf[16] = v27 | 0x8000000000000000;
    *buf = v26;
    goto LABEL_43;
  }

  buf[23] = v24;
  v26 = buf;
  if (v24)
  {
LABEL_43:
    memmove(v26, v23, v25);
  }

  v26[v25] = 0;
  v28 = *(v7 + 201);
  if (buf[23] >= 0)
  {
    v29 = buf;
  }

  else
  {
    v29 = *buf;
  }

  ctu::cf::MakeCFString::MakeCFString(&key, v29);
  v30 = MEMORY[0x29EDB8F00];
  if (!v28)
  {
    v30 = MEMORY[0x29EDB8EF8];
  }

  v31 = *v30;
  valuePtr = v31;
  v32 = MEMORY[0x29EDB8FA8];
  if (v31)
  {
    v33 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(key, v31, v17[1], v17[2], *MEMORY[0x29EDB8FA8]);
    v34 = CFPreferencesSynchronize(v17[1], v17[2], v33) != 0;
    CFRelease(v31);
  }

  else
  {
    v34 = 0;
  }

  MEMORY[0x29C26DF80](&key);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (*(&v117 + 1) && !atomic_fetch_add((*(&v117 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v117 + 1) + 16))(*(&v117 + 1));
    std::__shared_weak_count::__release_weak(*(&v117 + 1));
  }

  if (!v34)
  {
    goto LABEL_82;
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v36 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v36, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v36;
    v35 = operator new(0x20uLL);
    *v35 = &unk_2A1E34960;
    v35[1] = 0;
    v35[2] = 0;
    v35[3] = v36;
    v37 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v36;
    *(&xmmword_2A1399338 + 1) = v35;
    if (!v37)
    {
      *&v117 = v36;
      *(&v117 + 1) = v35;
      goto LABEL_65;
    }

    if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }
  }

  v35 = *(&xmmword_2A1399338 + 1);
  v36 = xmmword_2A1399338;
  v117 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_65:
    atomic_fetch_add_explicit(v35 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v38 = strlen(v23);
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
    *&buf[8] = v39;
    *&buf[16] = v41 | 0x8000000000000000;
    *buf = v40;
    goto LABEL_74;
  }

  buf[23] = v38;
  v40 = buf;
  if (v38)
  {
LABEL_74:
    memmove(v40, v23, v39);
  }

  v40[v39] = 0;
  v42 = Preferences::getPreference<BOOL>(v36, buf, &v122);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (*(&v117 + 1) && !atomic_fetch_add((*(&v117 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v117 + 1) + 16))(*(&v117 + 1));
    std::__shared_weak_count::__release_weak(*(&v117 + 1));
  }

  if (!v42 || v122 != *(v7 + 201))
  {
LABEL_82:
    v43 = *(v7 + 104);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v43, OS_LOG_TYPE_ERROR, "Failed to save CoredumpSupported property in ABMPreferences file", buf, 2u);
    }
  }

  v116 = *(v7 + 202) == 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v45 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v45, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v45;
    v44 = operator new(0x20uLL);
    *v44 = &unk_2A1E34960;
    v44[1] = 0;
    v44[2] = 0;
    v44[3] = v45;
    v46 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v45;
    *(&xmmword_2A1399338 + 1) = v44;
    if (!v46)
    {
      *&v117 = v45;
      *(&v117 + 1) = v44;
      goto LABEL_91;
    }

    if (!atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

  v44 = *(&xmmword_2A1399338 + 1);
  v45 = xmmword_2A1399338;
  v117 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_91:
    atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v47 = *MEMORY[0x29EDC8F48];
  v48 = strlen(*MEMORY[0x29EDC8F48]);
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
    *&buf[8] = v49;
    *&buf[16] = v51 | 0x8000000000000000;
    *buf = v50;
    goto LABEL_100;
  }

  buf[23] = v48;
  v50 = buf;
  if (v48)
  {
LABEL_100:
    memmove(v50, v47, v49);
  }

  v50[v49] = 0;
  v52 = *(v7 + 202);
  if (buf[23] >= 0)
  {
    v53 = buf;
  }

  else
  {
    v53 = *buf;
  }

  ctu::cf::MakeCFString::MakeCFString(&v122, v53);
  v54 = v122;
  v55 = *MEMORY[0x29EDB8ED8];
  valuePtr = v52;
  v56 = CFNumberCreate(v55, kCFNumberLongLongType, &valuePtr);
  key = v56;
  if (v56)
  {
    v57 = *v32;
    CFPreferencesSetValue(v54, v56, v45[1], v45[2], *v32);
    v58 = CFPreferencesSynchronize(v45[1], v45[2], v57) != 0;
    CFRelease(v56);
  }

  else
  {
    v58 = 0;
  }

  MEMORY[0x29C26DF80](&v122);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (*(&v117 + 1) && !atomic_fetch_add((*(&v117 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v117 + 1) + 16))(*(&v117 + 1));
    std::__shared_weak_count::__release_weak(*(&v117 + 1));
  }

  if (!v58)
  {
    goto LABEL_146;
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v60 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v60, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v60;
    v59 = operator new(0x20uLL);
    *v59 = &unk_2A1E34960;
    v59[1] = 0;
    v59[2] = 0;
    v59[3] = v60;
    v61 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v60;
    *(&xmmword_2A1399338 + 1) = v59;
    if (!v61)
    {
      *&v117 = v60;
      *(&v117 + 1) = v59;
      goto LABEL_120;
    }

    if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }
  }

  v59 = *(&xmmword_2A1399338 + 1);
  v60 = xmmword_2A1399338;
  v117 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_120:
    atomic_fetch_add_explicit(v59 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v62 = strlen(v47);
  if (v62 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v62;
  if (v62 >= 0x17)
  {
    if ((v62 | 7) == 0x17)
    {
      v65 = 25;
    }

    else
    {
      v65 = (v62 | 7) + 1;
    }

    v64 = operator new(v65);
    *&buf[8] = v63;
    *&buf[16] = v65 | 0x8000000000000000;
    *buf = v64;
    goto LABEL_129;
  }

  buf[23] = v62;
  v64 = buf;
  if (v62)
  {
LABEL_129:
    memmove(v64, v47, v63);
  }

  v64[v63] = 0;
  if (buf[23] >= 0)
  {
    v66 = buf;
  }

  else
  {
    v66 = *buf;
  }

  ctu::cf::MakeCFString::MakeCFString(&valuePtr, v66);
  v67 = (**v60)(v60, valuePtr);
  v68 = v67;
  if (v67)
  {
    v69 = CFGetTypeID(v67);
    if (v69 == CFNumberGetTypeID())
    {
      v71 = ctu::cf::assign(&v116, v68, v70);
    }

    else
    {
      v71 = 0;
    }

    CFRelease(v68);
  }

  else
  {
    v71 = 0;
  }

  MEMORY[0x29C26DF80](&valuePtr);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = *(&v117 + 1);
  if (*(&v117 + 1) && !atomic_fetch_add((*(&v117 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v72->__on_zero_shared)(v72);
    std::__shared_weak_count::__release_weak(v72);
  }

  if (!v71 || v116 != *(v7 + 202))
  {
LABEL_146:
    v73 = *(v7 + 104);
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v73, OS_LOG_TYPE_ERROR, "Failed to save PowerSequence property in ABMPreferences file", buf, 2u);
    }
  }

  LODWORD(key) = *(v7 + 204) == 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v75 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v75, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v75;
    v74 = operator new(0x20uLL);
    *v74 = &unk_2A1E34960;
    v74[1] = 0;
    v74[2] = 0;
    v74[3] = v75;
    v76 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v75;
    *(&xmmword_2A1399338 + 1) = v74;
    if (!v76)
    {
      *&v117 = v75;
      *(&v117 + 1) = v74;
      goto LABEL_155;
    }

    if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v76->__on_zero_shared)(v76);
      std::__shared_weak_count::__release_weak(v76);
    }
  }

  v74 = *(&xmmword_2A1399338 + 1);
  v75 = xmmword_2A1399338;
  v117 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_155:
    atomic_fetch_add_explicit(v74 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v77 = *MEMORY[0x29EDC8EB0];
  v78 = strlen(*MEMORY[0x29EDC8EB0]);
  if (v78 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v79 = v78;
  if (v78 >= 0x17)
  {
    if ((v78 | 7) == 0x17)
    {
      v81 = 25;
    }

    else
    {
      v81 = (v78 | 7) + 1;
    }

    v80 = operator new(v81);
    *&buf[8] = v79;
    *&buf[16] = v81 | 0x8000000000000000;
    *buf = v80;
    goto LABEL_164;
  }

  buf[23] = v78;
  v80 = buf;
  if (v78)
  {
LABEL_164:
    memmove(v80, v77, v79);
  }

  v80[v79] = 0;
  v82 = *(v7 + 204);
  if (buf[23] >= 0)
  {
    v83 = buf;
  }

  else
  {
    v83 = *buf;
  }

  ctu::cf::MakeCFString::MakeCFString(&valuePtr, v83);
  v84 = ctu::cf::plist_adapter::set<unsigned int>(v75, v82, valuePtr, 1);
  MEMORY[0x29C26DF80](&valuePtr);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v85 = *(&v117 + 1);
  if (*(&v117 + 1) && !atomic_fetch_add((*(&v117 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v85->__on_zero_shared)(v85);
    std::__shared_weak_count::__release_weak(v85);
  }

  if (!v84)
  {
    goto LABEL_198;
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v87 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v87, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v87;
    v86 = operator new(0x20uLL);
    *v86 = &unk_2A1E34960;
    v86[1] = 0;
    v86[2] = 0;
    v86[3] = v87;
    v88 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v87;
    *(&xmmword_2A1399338 + 1) = v86;
    if (!v88)
    {
      *&v117 = v87;
      *(&v117 + 1) = v86;
      goto LABEL_181;
    }

    if (!atomic_fetch_add(&v88->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v88->__on_zero_shared)(v88);
      std::__shared_weak_count::__release_weak(v88);
    }
  }

  v86 = *(&xmmword_2A1399338 + 1);
  v87 = xmmword_2A1399338;
  v117 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_181:
    atomic_fetch_add_explicit(v86 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v89 = strlen(v77);
  if (v89 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v90 = v89;
  if (v89 >= 0x17)
  {
    if ((v89 | 7) == 0x17)
    {
      v92 = 25;
    }

    else
    {
      v92 = (v89 | 7) + 1;
    }

    v91 = operator new(v92);
    *&buf[8] = v90;
    *&buf[16] = v92 | 0x8000000000000000;
    *buf = v91;
    goto LABEL_190;
  }

  buf[23] = v89;
  v91 = buf;
  if (v89)
  {
LABEL_190:
    memmove(v91, v77, v90);
  }

  v91[v90] = 0;
  v93 = Preferences::getPreference<unsigned int>(v87, buf, &key);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v94 = *(&v117 + 1);
  if (*(&v117 + 1) && !atomic_fetch_add((*(&v117 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v94->__on_zero_shared)(v94);
    std::__shared_weak_count::__release_weak(v94);
  }

  if (!v93 || key != *(v7 + 204))
  {
LABEL_198:
    v95 = *(v7 + 104);
    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v95, OS_LOG_TYPE_ERROR, "Failed to save BasebandVersion property in ABMPreferences file", buf, 2u);
    }
  }

LABEL_200:
  v96 = TelephonyBasebandSetBasebandProperty();
  if ((TelephonyBasebandSetBasebandProperty() & v96) == 1)
  {
    *(v7 + 208) = 1;
    goto LABEL_236;
  }

  *(v7 + 208) = 0;
  std::string::__assign_external(&v119, "Failed to send reset properties to AppleBaseband driver", 0x37uLL);
  v18 = *(v7 + 104);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v113 = &v119;
    if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v113 = v119.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v113;
    goto LABEL_245;
  }

LABEL_203:
  if ((TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0 && !TelephonyUtilIsVendorBuild())
  {
    goto LABEL_236;
  }

  v97 = xpc_dictionary_create(0, 0, 0);
  if (v97 || (v97 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v97) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v97);
      v98 = v97;
    }

    else
    {
      v98 = xpc_null_create();
    }
  }

  else
  {
    v98 = xpc_null_create();
    v97 = 0;
  }

  xpc_release(v97);
  v99 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v99)
  {
    v99 = xpc_null_create();
  }

  xpc_dictionary_set_value(v98, *MEMORY[0x29EDBEB00], v99);
  v100 = xpc_null_create();
  xpc_release(v99);
  xpc_release(v100);
  v101 = xpc_string_create(*MEMORY[0x29EDBF5C8]);
  if (!v101)
  {
    v101 = xpc_null_create();
  }

  xpc_dictionary_set_value(v98, *MEMORY[0x29EDBEEE0], v101);
  v102 = xpc_null_create();
  xpc_release(v101);
  xpc_release(v102);
  if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v103 = &v119;
  }

  else
  {
    v103 = v119.__r_.__value_.__r.__words[0];
  }

  v104 = xpc_string_create(v103);
  if (!v104)
  {
    v104 = xpc_null_create();
  }

  xpc_dictionary_set_value(v98, *MEMORY[0x29EDBED88], v104);
  v105 = xpc_null_create();
  xpc_release(v104);
  xpc_release(v105);
  v106 = v120;
  v107 = *MEMORY[0x29EDBEAA8];
  v108 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v108 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v109 = v108;
  if (v108 >= 0x17)
  {
    if ((v108 | 7) == 0x17)
    {
      v111 = 25;
    }

    else
    {
      v111 = (v108 | 7) + 1;
    }

    v110 = operator new(v111);
    *&buf[8] = v109;
    *&buf[16] = v111 | 0x8000000000000000;
    *buf = v110;
  }

  else
  {
    buf[23] = v108;
    v110 = buf;
    if (!v108)
    {
      goto LABEL_230;
    }
  }

  memmove(v110, v107, v109);
LABEL_230:
  v110[v109] = 0;
  object = v98;
  if (v98)
  {
    xpc_retain(v98);
  }

  else
  {
    object = xpc_null_create();
  }

  v114 = 0;
  Service::runCommand(v106, buf, &object, &v114);
  xpc_release(object);
  object = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  xpc_release(v98);
LABEL_236:
  if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v119.__r_.__value_.__l.__data_);
  }

  v8 = v121;
  if (v121)
  {
    goto LABEL_239;
  }
}

void sub_297327A94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, char a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100]((v31 - 96));
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void RadioModule::stopMonitoringBatteryInfo_sync(RadioModule *this)
{
  if (*(this + 27))
  {
    v3 = *(this + 27);

    ctu::iokit::Controller::stopBatteryInfoNotifications(v3);
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", v5, 2u);
    }
  }
}

void RadioModule::monitorBatteryInfo_sync(RadioModule *this)
{
  if (*(this + 27))
  {
    v2 = *(this + 10);
    if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

    memset(v25, 170, sizeof(v25));
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN11RadioModule23monitorBatteryInfo_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_180;
    aBlock[4] = this;
    aBlock[5] = v3;
    v24 = v5;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v7 = _Block_copy(aBlock);
    v8 = *(this + 11);
    if (v8)
    {
      dispatch_retain(*(this + 11));
    }

    *v25 = v7;
    *&v25[8] = v8;
    v9 = *(this + 13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Registering for battery info updates", buf, 2u);
    }

    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 1174405120;
    v16[2] = ___ZN11RadioModule23monitorBatteryInfo_syncEv_block_invoke_181;
    v16[3] = &__block_descriptor_tmp_185;
    v16[4] = this;
    v16[5] = v3;
    v17 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (v7)
    {
      v18 = _Block_copy(v7);
      v19 = v8;
      if (!v8)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v18 = 0;
      v19 = v8;
      if (!v8)
      {
LABEL_13:
        v10 = _Block_copy(v16);
        v11 = *(this + 11);
        if (v11)
        {
          dispatch_retain(*(this + 11));
        }

        v20 = v10;
        object = v11;
        v12 = ctu::iokit::Controller::registerForBatteryInfoChange();
        if (object)
        {
          dispatch_release(object);
        }

        if (v20)
        {
          _Block_release(v20);
        }

        if ((v12 & 1) == 0 && (v13 = *(this + 13), os_log_type_enabled(v13, OS_LOG_TYPE_ERROR)))
        {
          *buf = 0;
          _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Failed to register for battery info updates", buf, 2u);
          v14 = v19;
          if (!v19)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v14 = v19;
          if (!v19)
          {
LABEL_23:
            if (v18)
            {
              _Block_release(v18);
            }

            if (v17)
            {
              std::__shared_weak_count::__release_weak(v17);
            }

            if (v8)
            {
              dispatch_release(v8);
            }

            if (v7)
            {
              _Block_release(v7);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_weak(v24);
            }

            std::__shared_weak_count::__release_weak(v5);
            return;
          }
        }

        dispatch_release(v14);
        goto LABEL_23;
      }
    }

    dispatch_retain(v8);
    goto LABEL_13;
  }

  v15 = *(this + 13);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *v25 = 0;
    _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "Invalid fIOKitController", v25, 2u);
  }
}

void sub_29732816C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28)
{
  dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBatteryInfo)>::~callback(&a19);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v29 + 56);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
    dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v30 - 112);
    v32 = a28;
    if (!a28)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v28);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v30 - 112);
    v32 = a28;
    if (!a28)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v32);
  std::__shared_weak_count::__release_weak(v28);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule23monitorBatteryInfo_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x29EDCA608];
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
        v9 = *(v5 + 104);
        if (v8)
        {
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v10 = 138412290;
            v11 = v8;
            _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Failed to send battery info update\n:%@", &v10, 0xCu);
          }
        }

        else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Success sending battery info update", &v10, 2u);
        }
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ___ZN11RadioModule23monitorBatteryInfo_syncEv_block_invoke_181(void *a1, unsigned int a2)
{
  v41 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v35 = v6;
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (!a1[5])
  {
LABEL_52:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    return;
  }

  v8 = *(v5 + 232);
  if (*(v5 + 232) && (v8 > 0x27 || a2 <= 0x29u) && (v8 < 0x28 || a2 >= 0x26u))
  {
    v9 = ((a2 >> 8) & 1) != *(v5 + 233);
    v10 = *(v5 + 104);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 1;
    v10 = *(v5 + 104);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:
      if ((a2 >> 8))
      {
        v11 = "TRUE";
      }

      else
      {
        v11 = "FALSE";
      }

      *buf = 67109890;
      *&buf[4] = a2;
      if ((a2 & 0x10000) != 0)
      {
        v12 = "TRUE";
      }

      else
      {
        v12 = "FALSE";
      }

      *&buf[8] = 2080;
      *&buf[10] = v11;
      v37 = 2080;
      v38 = v12;
      if (v9)
      {
        v13 = "TRUE";
      }

      else
      {
        v13 = "FALSE";
      }

      v39 = 2080;
      v40 = v13;
      _os_log_impl(&dword_297288000, v10, OS_LOG_TYPE_DEFAULT, "#I Battery Info Update:\n   chargeLevel:        %u\n   charging:           %s\n   fully charged:      %s\n   reportToBaseband:   %s", buf, 0x26u);
    }
  }

  if (!v9)
  {
    goto LABEL_52;
  }

  *(v5 + 232) = a2;
  *(v5 + 234) = BYTE2(a2);
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v14 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v15 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(buf, v14);
    v16 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v17 = *(&off_2A1399388 + 1);
    off_2A1399388 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A1399388;
  }

  v19 = *(&off_2A1399388 + 1);
  v28 = v15;
  v29 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v15 + 16))(&v30, v15);
  v32 = 0;
  v33 = 0;
  if (v31)
  {
    v33 = std::__shared_weak_count::lock(v31);
    if (v33)
    {
      v32 = v30;
    }

    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  v20 = v32;
  if (v32)
  {
    v21 = *(v5 + 232);
    v22 = *(v5 + 233);
    v23 = a1[7];
    if (v23)
    {
      v23 = _Block_copy(v23);
    }

    v24 = a1[8];
    aBlock = v23;
    object = v24;
    if (v24)
    {
      dispatch_retain(v24);
    }

    (*(*v20 + 128))(v20, v21, v22, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }
  }

  v25 = v33;
  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v7 = v35;
  if (v35)
  {
    goto LABEL_52;
  }
}

void sub_297328748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1, void *a2)
{
  v4 = a2[6];
  a1[5] = a2[5];
  a1[6] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[7];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a2[8];
  a1[7] = v5;
  a1[8] = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE(void *a1)
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

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t RadioModule::shouldResetModemOnModeTransitionError(RadioModule *this)
{
  v2 = &__block_literal_global_4;
  if (atomic_load_explicit(&qword_2A1399DF0, memory_order_acquire) != -1)
  {
    v4 = &v2;
    v3 = &v4;
    std::__call_once(&qword_2A1399DF0, &v3, std::__call_once_proxy[abi:ne200100]<std::tuple<void({block_pointer}&&)(void)>>);
  }

  return _MergedGlobals_5;
}

void ___ZN11RadioModule37shouldResetModemOnModeTransitionErrorEv_block_invoke()
{
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v1 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v1, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __dst[0] = v1;
    v0 = operator new(0x20uLL);
    *v0 = &unk_2A1E34960;
    v0[1] = 0;
    v0[2] = 0;
    v0[3] = v1;
    v2 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v1;
    *(&xmmword_2A1399338 + 1) = v0;
    if (!v2)
    {
      *&v11 = v1;
      *(&v11 + 1) = v0;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

  v0 = *(&xmmword_2A1399338 + 1);
  v1 = xmmword_2A1399338;
  v11 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v0 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  v3 = *MEMORY[0x29EDC8F98];
  v4 = strlen(*MEMORY[0x29EDC8F98]);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    __dst[1] = v5;
    v10 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_17;
  }

  HIBYTE(v10) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_17:
    memmove(v6, v3, v5);
  }

  *(v5 + v6) = 0;
  Preferences::getPreference<BOOL>(v1, __dst, &_MergedGlobals_5);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }

  v8 = *(&v11 + 1);
  if (*(&v11 + 1))
  {
    if (!atomic_fetch_add((*(&v11 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_297328B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_297328B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule21setOperatingMode_syncEjN5radio13OperatingModeEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke(void *a1, uint64_t *a2)
{
  v31 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v25 = 0;
  v26 = 0;
  v4 = a1[6];
  if (v4)
  {
    v26 = std::__shared_weak_count::lock(v4);
    if (!v26)
    {
      return;
    }

    v25 = a1[5];
    if (v25)
    {
      v6 = *a2;
      if (*a2)
      {
        v7 = *(v3 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__dst) = 138412290;
          *(&__dst + 4) = v6;
          _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "%@", &__dst, 0xCu);
        }
      }

      (*(a1[7] + 16))();
      if (*a2)
      {
        v27 = &__block_literal_global_4;
        if (atomic_load_explicit(&qword_2A1399DF0, memory_order_acquire) != -1)
        {
          *&__dst = &v27;
          p_dst = &__dst;
          std::__call_once(&qword_2A1399DF0, &p_dst, std::__call_once_proxy[abi:ne200100]<std::tuple<void({block_pointer}&&)(void)>>);
        }

        if (_MergedGlobals_5 == 1)
        {
          v8 = xpc_dictionary_create(0, 0, 0);
          if (v8 || (v8 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C26F9F0](v8) == MEMORY[0x29EDCAA00])
            {
              xpc_retain(v8);
              v9 = v8;
            }

            else
            {
              v9 = xpc_null_create();
            }
          }

          else
          {
            v9 = xpc_null_create();
            v8 = 0;
          }

          xpc_release(v8);
          v10 = xpc_string_create(*MEMORY[0x29EDBEB60]);
          if (!v10)
          {
            v10 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEB00], v10);
          v11 = xpc_null_create();
          xpc_release(v10);
          xpc_release(v11);
          v12 = xpc_string_create(*MEMORY[0x29EDBF5C8]);
          if (!v12)
          {
            v12 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEEE0], v12);
          v13 = xpc_null_create();
          xpc_release(v12);
          xpc_release(v13);
          v14 = xpc_string_create("Set Operating Mode Error");
          if (!v14)
          {
            v14 = xpc_null_create();
          }

          xpc_dictionary_set_value(v9, *MEMORY[0x29EDBED88], v14);
          v15 = xpc_null_create();
          xpc_release(v14);
          xpc_release(v15);
          v16 = v25;
          v17 = *MEMORY[0x29EDBEAA8];
          v18 = strlen(*MEMORY[0x29EDBEAA8]);
          if (v18 >= 0x7FFFFFFFFFFFFFF8)
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
            *(&__dst + 1) = v19;
            v30 = v21 | 0x8000000000000000;
            *&__dst = v20;
          }

          else
          {
            HIBYTE(v30) = v18;
            v20 = &__dst;
            if (!v18)
            {
              goto LABEL_32;
            }
          }

          memmove(v20, v17, v19);
LABEL_32:
          *(v20 + v19) = 0;
          object = v9;
          if (v9)
          {
            xpc_retain(v9);
          }

          else
          {
            object = xpc_null_create();
          }

          v23 = 0;
          Service::runCommand(v16, &__dst, &object, &v23);
          xpc_release(object);
          object = 0;
          if (SHIBYTE(v30) < 0)
          {
            operator delete(__dst);
          }

          xpc_release(v9);
        }
      }
    }
  }

  v22 = v26;
  if (v26)
  {
    if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22, a2);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_297328F84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11RadioModuleEE56c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void RadioModule::queryFactoryCalibrationStatus_sync(RadioModule *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule34queryFactoryCalibrationStatus_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_191;
  aBlock[4] = this;
  aBlock[5] = v3;
  v27 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 11);
  if (v8)
  {
    dispatch_retain(v8);
  }

  v28 = v7;
  v29 = v8;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A1399388 + 1);
    off_2A1399388 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A1399388;
  }

  v14 = *(&off_2A1399388 + 1);
  v20 = v10;
  v21 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v22, v10);
  v24 = 0;
  v25 = 0;
  if (v23)
  {
    v25 = std::__shared_weak_count::lock(v23);
    if (v25)
    {
      v24 = v22;
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  v16 = v28;
  if (v28)
  {
    v16 = _Block_copy(v28);
  }

  v18 = v16;
  object = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  (*(*v15 + 72))(v15, &v18);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

LABEL_33:
  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297329470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule34queryFactoryCalibrationStatus_syncEv_block_invoke(void *a1, uint64_t *a2, const __CFDictionary **a3)
{
  v14 = *MEMORY[0x29EDCA608];
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
        v10 = *a2;
        if (v10)
        {
          v11 = *(v7 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v10;
            _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        else
        {
          v12 = *a3;
          if (*a3)
          {
            memset(buf, 170, 16);
            ctu::cf::dict_adapter::dict_adapter(buf, v12);
            *(v7 + 136) = ctu::cf::map_adapter::getInt(buf, *MEMORY[0x29EDC8F58]);
            MEMORY[0x29C26DFC0](buf);
          }
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void RadioModule::queryRFCalibrationStatus_sync(RadioModule *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule29queryRFCalibrationStatus_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_194;
  aBlock[4] = this;
  aBlock[5] = v3;
  v27 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 11);
  if (v8)
  {
    dispatch_retain(v8);
  }

  v28 = v7;
  v29 = v8;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A1399388 + 1);
    off_2A1399388 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A1399388;
  }

  v14 = *(&off_2A1399388 + 1);
  v20 = v10;
  v21 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v22, v10);
  v24 = 0;
  v25 = 0;
  if (v23)
  {
    v25 = std::__shared_weak_count::lock(v23);
    if (v25)
    {
      v24 = v22;
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  v16 = v28;
  if (v28)
  {
    v16 = _Block_copy(v28);
  }

  v18 = v16;
  object = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  (*(*v15 + 80))(v15, &v18);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

LABEL_33:
  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297329A0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule29queryRFCalibrationStatus_syncEv_block_invoke(void *a1, uint64_t *a2, CFTypeRef *a3)
{
  v15 = *MEMORY[0x29EDCA608];
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
        v10 = *a2;
        if (v10)
        {
          v11 = *(v7 + 104);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v14 = v10;
            _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }
        }

        else if (*a3)
        {
          cf = *a3;
          CFRetain(*a3);
          radio::RFCalibration_t::fill();
          if (cf)
          {
            CFRelease(cf);
          }
        }
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void sub_297329BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void RadioModule::queryFieldTestConfig_sync(RadioModule *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
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

  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN11RadioModule25queryFieldTestConfig_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_197;
  aBlock[4] = this;
  aBlock[5] = v3;
  v27 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v7 = _Block_copy(aBlock);
  v8 = *(this + 11);
  if (v8)
  {
    dispatch_retain(v8);
  }

  v28 = v7;
  v29 = v8;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v30, v9);
    v11 = v30;
    v30 = 0uLL;
    v12 = *(&off_2A1399388 + 1);
    off_2A1399388 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A1399388;
  }

  v14 = *(&off_2A1399388 + 1);
  v20 = v10;
  v21 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v22, v10);
  v24 = 0;
  v25 = 0;
  if (v23)
  {
    v25 = std::__shared_weak_count::lock(v23);
    if (v25)
    {
      v24 = v22;
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v15 = v24;
    if (!v24)
    {
      goto LABEL_33;
    }
  }

  v16 = v28;
  if (v28)
  {
    v16 = _Block_copy(v28);
  }

  v18 = v16;
  object = v29;
  if (v29)
  {
    dispatch_retain(v29);
  }

  (*(*v15 + 136))(v15, &v18);
  if (object)
  {
    dispatch_release(object);
  }

  if (v18)
  {
    _Block_release(v18);
  }

LABEL_33:
  v17 = v25;
  if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297329F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(v25 - 64);
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(v24);
  _Unwind_Resume(a1);
}

void ___ZN11RadioModule25queryFieldTestConfig_syncEv_block_invoke(void *a1, uint64_t *a2, ctu **a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v10 = v8;
      if (a1[5])
      {
        v11 = *a2;
        if (v11)
        {
          v12 = *(v7 + 104);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *object = 138412290;
            *&object[4] = v11;
            _os_log_error_impl(&dword_297288000, v12, OS_LOG_TYPE_ERROR, "%@", object, 0xCu);
          }
        }

        else if (*a3)
        {
          ctu::cf_to_xpc(object, *a3, v9);
          v13 = *object;
          if (*object && MEMORY[0x29C26F9F0](*object) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v13);
          }

          else
          {
            v13 = xpc_null_create();
          }

          v14 = xpc_null_create();
          v15 = *(v7 + 192);
          *(v7 + 192) = v13;
          xpc_release(v15);
          xpc_release(v14);
          xpc_release(*object);
          v16 = *(v7 + 104);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            xpc::object::to_string(object, (v7 + 192));
            v17 = v19 >= 0 ? object : *object;
            *buf = 136315138;
            v21 = v17;
            _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Baseband field test config:\n%s", buf, 0xCu);
            if (v19 < 0)
            {
              operator delete(*object);
            }
          }
        }
      }

      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }
}

void RadioModule::handleResetSPMI_sync(RadioModule *this, unsigned int a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 67109120;
    LODWORD(v9) = a2;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Received request to reset SPMI with data (0x%x)", &v8, 8u);
  }

  v5 = TelephonyBasebandResetSPMI();
  v6 = *(this + 13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = " not ";
    if (v5)
    {
      v7 = " ";
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Request to reset SPMI was%ssuccessful", &v8, 0xCu);
  }
}

void *std::list<boost::signals2::connection>::~list(void *a1)
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
        if (v6 && atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
        {
          v7 = v2;
          (*(*v6 + 24))(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitBatteryInfo)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<RadioModule *,std::shared_ptr<RadioModule> ctu::SharedSynchronizable<RadioModule>::make_shared_ptr<RadioModule>(RadioModule*)::{lambda(RadioModule *)#1},std::allocator<RadioModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<RadioModule *,std::shared_ptr<RadioModule> ctu::SharedSynchronizable<RadioModule>::make_shared_ptr<RadioModule>(RadioModule*)::{lambda(RadioModule *)#1},std::allocator<RadioModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11RadioModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<RadioModule> ctu::SharedSynchronizable<RadioModule>::make_shared_ptr<RadioModule>(RadioModule*)::{lambda(RadioModule*)#1}::operator() const(RadioModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<RadioModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E38DC8;
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

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11RadioModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11RadioModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  RadioModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29732A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<RadioModule>::execute_wrapped<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<RadioModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  RadioModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_29732A930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF770];
    v5 = strlen(*MEMORY[0x29EDBF770]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb_ENK3__2clEv_block_invoke;
  v60 = &__block_descriptor_tmp_224;
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
  (*(*v14 + 176))(v14, &v66);
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

void sub_29732B13C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb_ENK3__2clEv_block_invoke(void *a1, void *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (!v4)
  {
    return;
  }

  v7 = std::__shared_weak_count::lock(v4);
  v24 = v7;
  if (!v7)
  {
    return;
  }

  if (!a1[4])
  {
LABEL_28:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v19 = v7;
      (v7->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v19);
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
  v11 = MEMORY[0x29C26F9F0](*a2);
  v12 = MEMORY[0x29EDCAA40];
  if (v11 == MEMORY[0x29EDCAA40])
  {
    v16 = *a3;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      v16 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF8C8], v16);
    v17 = xpc_null_create();
    xpc_release(v16);
    xpc_release(v17);
  }

  else
  {
    memset(__p, 0, sizeof(__p));
    xpc::dyn_cast_or_default();
    if (v21 >= 0)
    {
      v13 = &v20;
    }

    else
    {
      v13 = v20;
    }

    v14 = xpc_string_create(v13);
    if (!v14)
    {
      v14 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE870], v14);
    v15 = xpc_null_create();
    xpc_release(v14);
    xpc_release(v15);
    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  if (MEMORY[0x29C26F9F0](*a2) == v12)
  {
    v18 = 0;
  }

  else
  {
    v18 = -534716416;
  }

  LODWORD(__p[0]) = v18;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, __p, &xdict);
  xpc_release(xdict);
  v7 = v24;
  if (v24)
  {
    goto LABEL_28;
  }
}

void sub_29732B540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrI11RadioModuleEE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void __destroy_helper_block_e8_32c36_ZTSNSt3__18weak_ptrI11RadioModuleEE48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t dispatch::callback<void({block_pointer})(xpc::object,xpc::object)>::~callback(uint64_t a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEA00];
    v5 = strlen(*MEMORY[0x29EDBEA00]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb0_ENK3__3clEv_block_invoke;
  v60 = &__block_descriptor_tmp_227;
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
  (*(*v14 + 216))(v14, &v66);
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

void sub_29732BE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb0_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb0_ENK3__3clEv_block_invoke(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v24 = v7;
    if (v7)
    {
      if (!a1[4])
      {
        goto LABEL_24;
      }

      v8 = xpc_null_create();
      object = v8;
      v9 = MEMORY[0x29C26F9F0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C26F9F0](v13) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v13);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        object = v13;
        xpc_release(v8);
        xpc_release(v14);
      }

      else
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26F9F0](v11) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v11);
            v12 = v11;
          }

          else
          {
            v12 = xpc_null_create();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        v15 = xpc_null_create();
        v16 = object;
        object = v12;
        xpc_release(v16);
        xpc_release(v15);
        v17 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE870], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
      }

      v19 = MEMORY[0x29C26F9F0](*a2) == v10 ? 0 : -534716416;
      v21 = v19;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v21, &object);
      xpc_release(object);
      v7 = v24;
      if (v24)
      {
LABEL_24:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_29732C254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(v10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEF30];
    v5 = strlen(*MEMORY[0x29EDBEF30]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb1_ENK3__4clEv_block_invoke;
  v60 = &__block_descriptor_tmp_230;
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
  (*(*v14 + 224))(v14, &v66);
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

void sub_29732CA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb1_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb1_ENK3__4clEv_block_invoke(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v24 = v7;
    if (v7)
    {
      if (!a1[4])
      {
        goto LABEL_24;
      }

      v8 = xpc_null_create();
      object = v8;
      v9 = MEMORY[0x29C26F9F0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C26F9F0](v13) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v13);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        object = v13;
        xpc_release(v8);
        xpc_release(v14);
      }

      else
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26F9F0](v11) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v11);
            v12 = v11;
          }

          else
          {
            v12 = xpc_null_create();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        v15 = xpc_null_create();
        v16 = object;
        object = v12;
        xpc_release(v16);
        xpc_release(v15);
        v17 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE870], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
      }

      v19 = MEMORY[0x29C26F9F0](*a2) == v10 ? 0 : -534716416;
      v21 = v19;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v21, &object);
      xpc_release(object);
      v7 = v24;
      if (v24)
      {
LABEL_24:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_29732CE70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(v10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF1E0];
    v5 = strlen(*MEMORY[0x29EDBF1E0]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb2_ENK3__5clEv_block_invoke;
  v60 = &__block_descriptor_tmp_233;
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
  (*(*v14 + 232))(v14, &v66);
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

void sub_29732D694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb2_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb2_ENK3__5clEv_block_invoke(void *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v24 = v7;
    if (v7)
    {
      if (!a1[4])
      {
        goto LABEL_24;
      }

      v8 = xpc_null_create();
      object = v8;
      v9 = MEMORY[0x29C26F9F0](*a2);
      v10 = MEMORY[0x29EDCAA40];
      if (v9 == MEMORY[0x29EDCAA40])
      {
        v13 = *a3;
        if (v13 && MEMORY[0x29C26F9F0](v13) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v13);
        }

        else
        {
          v13 = xpc_null_create();
        }

        v14 = xpc_null_create();
        object = v13;
        xpc_release(v8);
        xpc_release(v14);
      }

      else
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        if (v11 || (v11 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26F9F0](v11) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v11);
            v12 = v11;
          }

          else
          {
            v12 = xpc_null_create();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v11 = 0;
        }

        xpc_release(v11);
        v15 = xpc_null_create();
        v16 = object;
        object = v12;
        xpc_release(v16);
        xpc_release(v15);
        v17 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE870], v17);
        v18 = xpc_null_create();
        xpc_release(v17);
        xpc_release(v18);
      }

      v19 = MEMORY[0x29C26F9F0](*a2) == v10 ? 0 : -534716416;
      v21 = v19;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v21, &object);
      xpc_release(object);
      v7 = v24;
      if (v24)
      {
LABEL_24:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v20);
        }
      }
    }
  }
}

void sub_29732DA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(v10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF3D8];
    v5 = strlen(*MEMORY[0x29EDBF3D8]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb3_ENK3__6clEv_block_invoke;
  v60 = &__block_descriptor_tmp_236_0;
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
  (*(*v14 + 240))(v14, &v66);
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

void sub_29732E2B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb3_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb3_ENK3__6clEv_block_invoke(void *a1, void *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v18 = v7;
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = xpc_null_create();
        object = v9;
        v10 = MEMORY[0x29C26F9F0](*a2);
        v11 = MEMORY[0x29EDCAA40];
        if (v10 == MEMORY[0x29EDCAA40])
        {
          v12 = *a3;
          if (v12 && MEMORY[0x29C26F9F0](v12) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v12);
          }

          else
          {
            v12 = xpc_null_create();
          }

          v13 = xpc_null_create();
          object = v12;
          xpc_release(v9);
          xpc_release(v13);
        }

        if (MEMORY[0x29C26F9F0](*a2) == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = -534716416;
        }

        v15 = v14;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v15, &object);
        xpc_release(object);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_29732E590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(v10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBEC70];
    v5 = strlen(*MEMORY[0x29EDBEC70]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb4_ENK3__7clEv_block_invoke;
  v60 = &__block_descriptor_tmp_239;
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
  (*(*v14 + 248))(v14, &v66);
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

void sub_29732EDB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, xpc_object_t object, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN11RadioModule28registerCommandHandlers_syncEvEUb4_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
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

void ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb4_ENK3__7clEv_block_invoke(void *a1, void *a2, xpc_object_t *a3)
{
  v4 = a1[5];
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v18 = v7;
    if (v7)
    {
      v8 = v7;
      if (a1[4])
      {
        v9 = xpc_null_create();
        object = v9;
        v10 = MEMORY[0x29C26F9F0](*a2);
        v11 = MEMORY[0x29EDCAA40];
        if (v10 == MEMORY[0x29EDCAA40])
        {
          v12 = *a3;
          if (v12 && MEMORY[0x29C26F9F0](v12) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v12);
          }

          else
          {
            v12 = xpc_null_create();
          }

          v13 = xpc_null_create();
          object = v12;
          xpc_release(v9);
          xpc_release(v13);
        }

        if (MEMORY[0x29C26F9F0](*a2) == v11)
        {
          v14 = 0;
        }

        else
        {
          v14 = -534716416;
        }

        v15 = v14;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 6, &v15, &object);
        xpc_release(object);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_29732F090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  xpc_release(v10);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11RadioModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb5_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  if ((*(v2->~__shared_weak_count + 12))(v2))
  {
    v3 = 0x7FFFFFFFFFFFFFF7;
    memset(aBlock, 170, sizeof(aBlock));
    v4 = *MEMORY[0x29EDBF700];
    v5 = strlen(*MEMORY[0x29EDBF700]);
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
  *&aBlock[16] = ___ZZZN11RadioModule28registerCommandHandlers_syncEvEUb5_ENK3__8clEv_block_invoke;
  v60 = &__block_descriptor_tmp_242;
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
  (*(*v14 + 184))(v14, &v66);
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