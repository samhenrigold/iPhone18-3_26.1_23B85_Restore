void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 584);
  if (v3)
  {
    BootController::markNonvolatileDataErased(v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void sub_2973897B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B790;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B790;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B790;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B790;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297389BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value((*a1)[2], *MEMORY[0x29EDBF030]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *(v3 + 328) = xpc::dyn_cast_or_default(&object, *(v3 + 328));
  xpc_release(object);
  xpc_release(v2[2]);
  v2[2] = 0;
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

void sub_297389D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B810;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B810;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B810;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B810;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29738A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  v26 = 0xAAAAAAAAAAAAAAAALL;
  object[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(&cf, object, v5);
  v6 = cf;
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v26 = 0;
    v8 = cf;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v6;
  CFRetain(v6);
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object[0]);
  object[0] = 0xAAAAAAAAAAAAAAAALL;
  object[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(object, v6);
  ctu::cf::MakeCFString::MakeCFString(&cf, *MEMORY[0x29EDBD418]);
  v9 = ctu::cf::map_adapter::copyCFDataRef(object, cf);
  MEMORY[0x29C26DF80](&cf);
  v24 = v9;
  if (v9)
  {
    cf = 0;
    v22 = 0;
    v23 = 0;
    ctu::cf::assign();
    v10 = cf;
    v11 = v22;
    if (cf == v22)
    {
      v15 = *(v3 + 104);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_297288000, v15, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data has zero-size", buf, 2u);
        v16 = cf;
        if (!cf)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = *(v3 + 560);
      SystemTime = TelephonyUtilGetSystemTime();
      lcdm::CrashDB::emplaceCrashEntry(v12, v10, v11 - v10, SystemTime);
    }

    v16 = cf;
    if (!cf)
    {
LABEL_18:
      CFRelease(v9);
      goto LABEL_19;
    }

LABEL_17:
    v22 = v16;
    operator delete(v16);
    goto LABEL_18;
  }

  v14 = *(v3 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(cf) = 0;
    _os_log_debug_impl(&dword_297288000, v14, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data is empty", &cf, 2u);
  }

LABEL_19:
  MEMORY[0x29C26DFC0](object);
  if (v6)
  {
    CFRelease(v6);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v17 = v2[1];
  if (v17)
  {
    dispatch_group_leave(v17);
    v18 = v2[1];
    if (v18)
    {
      dispatch_release(v18);
    }
  }

  operator delete(v2);
  v19 = a1[2];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_21handleBootFailed_syncENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEUb3_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNS6_10unique_ptrISE_NS6_14default_deleteISE_EEEEENUlPvE_8__invokeESN_(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*(*a1 + 24))
  {
    v2 = *(*v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, (v1 + 4));
      v3 = v9 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v11 = v3;
      _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping logs failed: %s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v1[4]);
  v1[4] = 0;
  v4 = v1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  v5 = a1;
  if (a1)
  {
    v6 = a1[2];
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = a1;
      }
    }

    operator delete(v5);
  }
}

void sub_29738A7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  _ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(va1);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29738A818(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_22checkFSSyncStatus_syncENS_5blockIU13block_pointerFvbbEEEEUb4_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_(xpc_object_t **a1)
{
  v2 = *a1;
  if (**a1)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    value = xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBEA08]);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v3 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v6 = xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBEA10]);
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    v4 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  v7 = v2[2];
  if (v7)
  {
    v7[2](v7, v3, v4);
    v8 = v2[2];
    if (v8)
    {
      _Block_release(v8);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_29738AA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void dispatch::detail::group_notify<BootModule::setVoiceCall_sync(BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setVoiceCall_sync(BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = *(__p + 24);
        *(v3 + 360) = v6;
        v7 = *(v3 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = "NO";
          if (v6)
          {
            v8 = "YES";
          }

          v10 = 136315138;
          v11 = v8;
          _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Voice Call: %s", &v10, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
}

void dispatch::detail::group_notify<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        *(v3 + 368) = a1[6];
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          abm::asString();
          v7 = v12 >= 0 ? &__p : __p;
          v8 = a1[6];
          *buf = 136315394;
          v16 = v7;
          v17 = 1024;
          v18 = v8;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT1: %s (%d)", buf, 0x12u);
          if (v12 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v9 = *(a1 + 2);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }
}

void sub_29738AD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::unique_ptr<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(unsigned int *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v14 = v4;
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        *(v3 + 416) = a1[6];
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          abm::asString();
          v7 = v12 >= 0 ? &__p : __p;
          v8 = a1[6];
          *buf = 136315394;
          v16 = v7;
          v17 = 1024;
          v18 = v8;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT2: %s (%d)", buf, 0x12u);
          if (v12 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v9 = *(a1 + 2);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }
}

void sub_29738AF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::unique_ptr<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setPLMN1_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN1_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(char *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = a1 + 24;
        v7 = (v3 + 376);
        if ((v3 + 376) != a1 + 24)
        {
          v8 = a1[47];
          if (*(v3 + 399) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a1 + 24;
            }

            else
            {
              v10 = *(a1 + 3);
            }

            if (v8 >= 0)
            {
              v11 = a1[47];
            }

            else
            {
              v11 = *(a1 + 4);
            }

            std::string::__assign_no_alias<false>(v7, v10, v11);
          }

          else if (a1[47] < 0)
          {
            std::string::__assign_no_alias<true>(v7, *(a1 + 3), *(a1 + 4));
          }

          else
          {
            v9 = *v6;
            *(v3 + 392) = *(a1 + 5);
            *v7 = v9;
          }
        }

        v12 = *(v3 + 104);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[47] < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v16 = v6;
          _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN1: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    if (a1[47] < 0)
    {
      operator delete(*(a1 + 3));
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    operator delete(a1);
  }
}

void sub_29738B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setPLMN2_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN2_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(char *a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = a1 + 24;
        v7 = (v3 + 424);
        if ((v3 + 424) != a1 + 24)
        {
          v8 = a1[47];
          if (*(v3 + 447) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a1 + 24;
            }

            else
            {
              v10 = *(a1 + 3);
            }

            if (v8 >= 0)
            {
              v11 = a1[47];
            }

            else
            {
              v11 = *(a1 + 4);
            }

            std::string::__assign_no_alias<false>(v7, v10, v11);
          }

          else if (a1[47] < 0)
          {
            std::string::__assign_no_alias<true>(v7, *(a1 + 3), *(a1 + 4));
          }

          else
          {
            v9 = *v6;
            *(v3 + 440) = *(a1 + 5);
            *v7 = v9;
          }
        }

        v12 = *(v3 + 104);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[47] < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v16 = v6;
          _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN2: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    if (a1[47] < 0)
    {
      operator delete(*(a1 + 3));
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    operator delete(a1);
  }
}

void sub_29738B2A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = __p[3];
        v7 = *(__p + 8);
        *(v3 + 48 * v7 + 400) = v6;
        v8 = *(v3 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109376;
          v10[1] = v7 + 1;
          v11 = 2048;
          v12 = v6;
          _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I CellId%d: %llu", v10, 0x12u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
}

void dispatch::detail::group_notify<BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = __p[3];
        v7 = *(__p + 8);
        *(v3 + 48 * v7 + 408) = v6;
        v8 = *(v3 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10[0] = 67109376;
          v10[1] = v7 + 1;
          v11 = 2048;
          v12 = v6;
          _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I AreaCode%d: %llu", v10, 0x12u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bbResetFlag(BOOL)::$_0>(BootModule::bbResetFlag(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bbResetFlag(BOOL)::$_0,dispatch_queue_s *::default_delete<BootModule::bbResetFlag(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(NSObject ****a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 8) == 1)
  {
    v4 = v3[61];
    if (v4)
    {
      dispatch_retain(v3[61]);
      dispatch_group_enter(v4);
    }

    v5 = v3[62];
    v3[62] = v4;
    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
    }

    v6 = v3[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "#I The baseband reset was detected.";
      v8 = &v13;
LABEL_12:
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v9 = v3[62];
    v3[62] = 0;
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }

    v6 = v3[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "#I The baseband reset-flag is reset.";
      v8 = &v12;
      goto LABEL_12;
    }
  }

  v10 = v3[64];
  v3[64] = 0;
  if (v10)
  {
    dispatch_resume(v10);
    dispatch_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B890;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B890;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E3B890;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E3B890;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
        goto LABEL_16;
      }

      v6 = v3[10];
      if (!v6 || (v7 = v3[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v9 = v8;
      v10 = operator new(8uLL);
      *v10 = v3;
      v11 = v3[11];
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = operator new(0x18uLL);
      *v12 = v10;
      v12[1] = v7;
      v12[2] = v9;
      dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26startNetworkCampTimer_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26startNetworkCampTimer_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26startNetworkCampTimer_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26startNetworkCampTimer_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(BootModule ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Timeout for network camping metrics capture, sending out existing metrics to Core Analytics", buf, 2u);
  }

  BootModule::updateNetworkCampStatus_sync(v3, 0);
  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29738BB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void std::__shared_ptr_pointer<support::misc::safe_timer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297434109)
  {
    if (((v2 & 0x8000000297434109 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297434109))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297434109 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_189()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_190()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_191()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_192()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_193()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_194()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

BOOL prop::get(char *a1, char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBD2C0]) && strcasecmp(v6, *MEMORY[0x29EDBD2B8]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {

                          return prop::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A1399EB8;
                          if (os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v9 = a1;
                            }

                            else
                            {
                              v9 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v10 = a2;
                            }

                            else
                            {
                              v10 = *a2;
                            }

                            v11 = 136315394;
                            v12 = v9;
                            v13 = 2080;
                            v14 = v10;
                            _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "get: Invalid domain; domain='%s' key='%s'", &v11, 0x16u);
                          }

                          return 0;
                        }
                      }

                      goto LABEL_33;
                    }

                    goto LABEL_60;
                  }

                  goto LABEL_57;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBD2C0]) && strcasecmp(a1, *MEMORY[0x29EDBD2B8]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_33:

                    return prop::tailspin::get(a2, a3);
                  }

LABEL_60:

                  return prop::profile::get(a2, a3);
                }

LABEL_57:

                return prop::systemlogs::get(a2, a3);
              }

LABEL_54:

              return prop::logfilter::get(a2, a3);
            }

LABEL_51:

            return prop::ttr::get(a2, a3);
          }

LABEL_48:

          return prop::compression::get(a2, a3);
        }

LABEL_45:

        return prop::bbipc::get(a2, a3);
      }

LABEL_39:

      return prop::ipc::get(a2, a3);
    }

LABEL_42:

    return prop::coredump::get(a2, a3);
  }

  return prop::bbtrace::get(a2, a3);
}

BOOL prop::bbtrace::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8A0];
  v5 = strlen(*MEMORY[0x29EDBF8A0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738C61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::coredump::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE5F8];
  v5 = strlen(*MEMORY[0x29EDBE5F8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::ipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8E8];
  v5 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738C914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::bbipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE7A8];
  v5 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738CA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::compression::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE7B0];
  v5 = strlen(*MEMORY[0x29EDBE7B0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738CC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::ttr::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE718];
  v5 = strlen(*MEMORY[0x29EDBE718]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738CD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::logfilter::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE528];
  v5 = strlen(*MEMORY[0x29EDBE528]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738CF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::systemlogs::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE710];
  v5 = strlen(*MEMORY[0x29EDBE710]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738D080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::profile::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE5B0];
  v5 = strlen(*MEMORY[0x29EDBE5B0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738D1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::tailspin::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE608];
  v5 = strlen(*MEMORY[0x29EDBE608]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE600];
  v5 = strlen(*MEMORY[0x29EDBE600]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29738D4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  _Unwind_Resume(exception_object);
}

uint64_t prop::set(char *a1, char *a2, char *a3)
{
  v18 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBD2C0]) && strcasecmp(v6, *MEMORY[0x29EDBD2B8]))
    {
      if (strcasecmp(v6, *MEMORY[0x29EDBE5F8]))
      {
        if (strcasecmp(v6, *MEMORY[0x29EDBF8E8]) && strcasecmp(v6, *MEMORY[0x29EDBE690]))
        {
          if (strcasecmp(v6, *MEMORY[0x29EDBE7A8]))
          {
            if (strcasecmp(v6, *MEMORY[0x29EDBE7B0]))
            {
              if (strcasecmp(v6, *MEMORY[0x29EDBE718]))
              {
                if (strcasecmp(v6, *MEMORY[0x29EDBE528]))
                {
                  if (strcasecmp(v6, *MEMORY[0x29EDBE710]))
                  {
                    if (strcasecmp(v6, *MEMORY[0x29EDBE5B0]))
                    {
                      if (strcasecmp(v6, *MEMORY[0x29EDBE608]))
                      {
LABEL_16:
                        if (!strcasecmp(v6, *MEMORY[0x29EDBE600]))
                        {

                          return prop::tracesettings::set(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A1399EB8;
                          if (os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
                          {
                            if (a1[23] >= 0)
                            {
                              v9 = a1;
                            }

                            else
                            {
                              v9 = *a1;
                            }

                            if (a2[23] >= 0)
                            {
                              v10 = a2;
                            }

                            else
                            {
                              v10 = *a2;
                            }

                            if (a3[23] >= 0)
                            {
                              v11 = a3;
                            }

                            else
                            {
                              v11 = *a3;
                            }

                            v12 = 136315650;
                            v13 = v9;
                            v14 = 2080;
                            v15 = v10;
                            v16 = 2080;
                            v17 = v11;
                            _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "set: Invalid domain; domain='%s' key='%s' value='%s'", &v12, 0x20u);
                          }

                          return 0;
                        }
                      }

                      goto LABEL_33;
                    }

                    goto LABEL_60;
                  }

                  goto LABEL_57;
                }

                goto LABEL_54;
              }

              goto LABEL_51;
            }

            goto LABEL_48;
          }

          goto LABEL_45;
        }

        goto LABEL_39;
      }

      goto LABEL_42;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBD2C0]) && strcasecmp(a1, *MEMORY[0x29EDBD2B8]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE5F8]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBF8E8]) && strcasecmp(a1, *MEMORY[0x29EDBE690]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBE7A8]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE7B0]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBE718]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE528]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE710]))
                {
                  if (strcasecmp(a1, *MEMORY[0x29EDBE5B0]))
                  {
                    v6 = a1;
                    if (strcasecmp(a1, *MEMORY[0x29EDBE608]))
                    {
                      goto LABEL_16;
                    }

LABEL_33:

                    return prop::tailspin::set(a2, a3);
                  }

LABEL_60:

                  return prop::profile::set(a2, a3);
                }

LABEL_57:

                return prop::systemlogs::set(a2, a3);
              }

LABEL_54:

              return prop::logfilter::set(a2, a3);
            }

LABEL_51:

            return prop::ttr::set(a2, a3);
          }

LABEL_48:

          return prop::compression::set(a2, a3);
        }

LABEL_45:

        return prop::bbipc::set(a2, a3);
      }

LABEL_39:

      return prop::ipc::set(a2, a3);
    }

LABEL_42:

    return prop::coredump::set(a2, a3);
  }

  return prop::bbtrace::set(a2, a3);
}

uint64_t prop::bbtrace::set(char *a1, uint64_t a2)
{
  v117 = *MEMORY[0x29EDCA608];
  memset(&v114, 170, sizeof(v114));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, *a2, *(a2 + 8));
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v114 = *a2;
    if (strcmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbtrace::get(a1, &v114))
  {
    goto LABEL_322;
  }

LABEL_9:
  v5 = a1[23];
  if ((v5 & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBE798]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBEA30]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBF208]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
                {
                  v6 = *MEMORY[0x29EDBE6E8];
                  v7 = a1;
                  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
                  {
                    goto LABEL_18;
                  }

                  goto LABEL_37;
                }

LABEL_107:
                *__dst = -1431655766;
                if (!util::convert<int>(&v114, __dst, 0))
                {
                  goto LABEL_322;
                }

                v49 = *__dst;
                std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                LODWORD(__p.__r_.__value_.__l.__data_) = v49;
                v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
LABEL_121:
                v16 = v39;
LABEL_122:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                goto LABEL_323;
              }

LABEL_92:
              v40 = *MEMORY[0x29EDBF8A0];
              v41 = strlen(*MEMORY[0x29EDBF8A0]);
              if (v41 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v42 = v41;
              if (v41 >= 0x17)
              {
                if ((v41 | 7) == 0x17)
                {
                  v50 = 25;
                }

                else
                {
                  v50 = (v41 | 7) + 1;
                }

                v43 = operator new(v50);
                *&__dst[8] = v42;
                *&__dst[16] = v50 | 0x8000000000000000;
                *__dst = v43;
              }

              else
              {
                __dst[23] = v41;
                v43 = __dst;
                if (!v41)
                {
                  goto LABEL_114;
                }
              }

              memmove(v43, v40, v42);
LABEL_114:
              v43[v42] = 0;
              v39 = prop::file::set<std::string>(__dst, a1, &v114);
              goto LABEL_121;
            }

LABEL_77:
            *__dst = -1431655766;
            if (!util::convert<int>(&v114, __dst, 0))
            {
              goto LABEL_322;
            }

            v32 = *__dst;
            v33 = *MEMORY[0x29EDBF8A0];
            v34 = strlen(*MEMORY[0x29EDBF8A0]);
            if (v34 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v35 = v34;
            if (v34 >= 0x17)
            {
              if ((v34 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v34 | 7) + 1;
              }

              v36 = operator new(v51);
              *&__dst[8] = v35;
              *&__dst[16] = v51 | 0x8000000000000000;
              *__dst = v36;
            }

            else
            {
              __dst[23] = v34;
              v36 = __dst;
              if (!v34)
              {
                goto LABEL_120;
              }
            }

            memmove(v36, v33, v35);
LABEL_120:
            v36[v35] = 0;
            LODWORD(__p.__r_.__value_.__l.__data_) = v32;
            v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
            goto LABEL_121;
          }

LABEL_66:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v27 = util::convert<int>(&v114, &__p, 0);
          v28 = v27;
          v29 = capabilities::radio::maverick(v27);
          if (v29)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 5)
            {
              v30 = v28;
            }

            else
            {
              v30 = 0;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v37 = capabilities::radio::ice(v29);
            if ((v37 & v28) == 1)
            {
              v16 = 0;
              if (LODWORD(__p.__r_.__value_.__l.__data_) > 6 || ((1 << __p.__r_.__value_.__s.__data_[0]) & 0x45) == 0)
              {
                goto LABEL_323;
              }
            }

            else if (((v37 ^ 1) & v28) != 1)
            {
              goto LABEL_322;
            }
          }

          v44 = *MEMORY[0x29EDBF8A0];
          v45 = strlen(*MEMORY[0x29EDBF8A0]);
          if (v45 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v46 = v45;
          if (v45 >= 0x17)
          {
            if ((v45 | 7) == 0x17)
            {
              v48 = 25;
            }

            else
            {
              v48 = (v45 | 7) + 1;
            }

            v47 = operator new(v48);
            *&__dst[8] = v46;
            *&__dst[16] = v48 | 0x8000000000000000;
            *__dst = v47;
          }

          else
          {
            __dst[23] = v45;
            v47 = __dst;
            if (!v45)
            {
              goto LABEL_106;
            }
          }

          memmove(v47, v44, v46);
LABEL_106:
          v47[v46] = 0;
          v39 = prop::file::set<int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_56:
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

        v20 = *MEMORY[0x29EDBF8A0];
        v25 = strlen(*MEMORY[0x29EDBF8A0]);
        if (v25 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v22 = v25;
        if (v25 >= 0x17)
        {
          if ((v25 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v25 | 7) + 1;
          }

          v23 = operator new(v38);
          *&__dst[8] = v22;
          *&__dst[16] = v38 | 0x8000000000000000;
          *__dst = v23;
        }

        else
        {
          __dst[23] = v25;
          v23 = __dst;
          if (!v25)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_90;
      }

LABEL_51:
      __p.__r_.__value_.__s.__data_[0] = -86;
      if (!util::convert<BOOL>(&v114, &__p, 0))
      {
        goto LABEL_322;
      }

      v20 = *MEMORY[0x29EDBF8A0];
      v24 = strlen(*MEMORY[0x29EDBF8A0]);
      if (v24 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v24;
      if (v24 >= 0x17)
      {
        if ((v24 | 7) == 0x17)
        {
          v31 = 25;
        }

        else
        {
          v31 = (v24 | 7) + 1;
        }

        v23 = operator new(v31);
        *&__dst[8] = v22;
        *&__dst[16] = v31 | 0x8000000000000000;
        *__dst = v23;
      }

      else
      {
        __dst[23] = v24;
        v23 = __dst;
        if (!v24)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_90;
    }

LABEL_46:
    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v114, &__p, 0))
    {
      goto LABEL_322;
    }

    v20 = *MEMORY[0x29EDBF8A0];
    v21 = strlen(*MEMORY[0x29EDBF8A0]);
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      if ((v21 | 7) == 0x17)
      {
        v26 = 25;
      }

      else
      {
        v26 = (v21 | 7) + 1;
      }

      v23 = operator new(v26);
      *&__dst[8] = v22;
      *&__dst[16] = v26 | 0x8000000000000000;
      *__dst = v23;
    }

    else
    {
      __dst[23] = v21;
      v23 = __dst;
      if (!v21)
      {
        goto LABEL_91;
      }
    }

LABEL_90:
    memmove(v23, v20, v22);
LABEL_91:
    v23[v22] = 0;
    v39 = prop::file::set<BOOL>(__dst, a1, &__p);
    goto LABEL_121;
  }

  v7 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_46;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE798]))
  {
    goto LABEL_51;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBEA30]))
  {
    goto LABEL_56;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_66;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_77;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_92;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE880]))
  {
    goto LABEL_107;
  }

  v6 = *MEMORY[0x29EDBE6E8];
  if (strcasecmp(v7, *MEMORY[0x29EDBE6E8]))
  {
LABEL_18:
    v8 = MEMORY[0x29EDBD4C8];
    v9 = strcasecmp(v7, *MEMORY[0x29EDBD4C8]);
    if (!v9)
    {
      v52 = capabilities::radio::maverick(v9);
      if (v52 & 1) != 0 || (capabilities::radio::ice(v52))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
        {
          goto LABEL_322;
        }

        v53 = *__dst;
        if (*__dst > 2u)
        {
          goto LABEL_322;
        }

        goto LABEL_308;
      }

      LOBYTE(v5) = a1[23];
    }

    v10 = *a1;
    if ((v5 & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = strcasecmp(v11, *MEMORY[0x29EDBF1F8]);
    if (!v12)
    {
      if (capabilities::trace::supportsDataRateObserver(v12))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        v13 = util::convert<unsigned int>(&v114, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 0xBB9)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          goto LABEL_299;
        }

        goto LABEL_322;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v54 = a1;
    }

    else
    {
      v54 = v10;
    }

    v55 = strcasecmp(v54, *v8);
    if (!v55)
    {
      if (capabilities::radio::initium(v55))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        v56 = util::convert<unsigned int>(&v114, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          goto LABEL_299;
        }

        goto LABEL_322;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v58 = a1;
    }

    else
    {
      v58 = v10;
    }

    v59 = strcasecmp(v58, *MEMORY[0x29EDBFCB8]);
    if (!v59)
    {
      if (capabilities::radio::initium(v59))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
        {
          goto LABEL_322;
        }

        v53 = *__dst;
        if (*__dst > 3u)
        {
          goto LABEL_322;
        }

LABEL_308:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v53;
        v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v60 = a1;
    }

    else
    {
      v60 = v10;
    }

    v61 = strcasecmp(v60, *MEMORY[0x29EDBD4B8]);
    if (!v61)
    {
      if (capabilities::radio::maverick(v61))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

        goto LABEL_230;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v62 = a1;
    }

    else
    {
      v62 = v10;
    }

    v63 = strcasecmp(v62, *MEMORY[0x29EDBD4B0]);
    if (!v63)
    {
      if (capabilities::radio::maverick(v63))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

        goto LABEL_230;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v64 = a1;
    }

    else
    {
      v64 = v10;
    }

    v65 = strcasecmp(v64, *MEMORY[0x29EDBD4D0]);
    if (!v65)
    {
      if (capabilities::radio::maverick(v65))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (util::convert<unsigned int>(&v114, &__p))
        {
LABEL_299:
          std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
          v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_322:
        v16 = 0;
        goto LABEL_323;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v66 = a1;
    }

    else
    {
      v66 = v10;
    }

    v67 = strcasecmp(v66, *MEMORY[0x29EDBD4D8]);
    if (!v67)
    {
      if (capabilities::radio::maverick(v67))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (!diag::config::asEnum())
        {
          goto LABEL_322;
        }

        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        data = __p.__r_.__value_.__l.__data_;
        v39 = prop::file::set<unsigned int>(__dst, a1, &data);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
    }

    if ((v5 & 0x80) != 0)
    {
      v68 = *a1;
      if (strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
      {
LABEL_185:
        v69 = strcasecmp(v68, *MEMORY[0x29EDBF200]);
        if (!v69)
        {
          if (capabilities::radio::maverick(v69))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v70 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_268;
          }
        }

        else
        {
          v70 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_268;
          }
        }

        v71 = strcasecmp(v70, *MEMORY[0x29EDBD4A8]);
        if (!v71)
        {
          if (capabilities::radio::maverick(v71))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80u) == 0)
        {
          v72 = a1;
        }

        else
        {
          v72 = *a1;
        }

        v73 = strcasecmp(v72, *MEMORY[0x29EDBEF70]);
        if (!v73)
        {
          if (capabilities::radio::maverick(v73))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v74 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_268;
          }

          if (strcasecmp(v74, *MEMORY[0x29EDBF7F0]))
          {
            if (!strcasecmp(v74, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v74, *MEMORY[0x29EDBF7B8]))
            {
              goto LABEL_268;
            }

            if (strcasecmp(v74, *MEMORY[0x29EDBE790]))
            {
              if (!strcasecmp(v74, *MEMORY[0x29EDBEDD8]) || !strcasecmp(v74, *MEMORY[0x29EDBEF80]))
              {
                goto LABEL_268;
              }

              if (strcasecmp(v74, *MEMORY[0x29EDBF410]))
              {
LABEL_215:
                v75 = strcasecmp(v74, *MEMORY[0x29EDBFC98]);
                if (!v75)
                {
                  if (capabilities::radio::dal(v75))
                  {
                    goto LABEL_268;
                  }

                  LOBYTE(v5) = a1[23];
                }

                v86 = *a1;
                if ((v5 & 0x80u) == 0)
                {
                  v87 = a1;
                }

                else
                {
                  v87 = *a1;
                }

                v88 = strcasecmp(v87, *MEMORY[0x29EDBFC80]);
                if (!v88)
                {
                  if (capabilities::radio::dal(v88))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                    v89 = util::convert<int>(&v114, &__p, 0);
                    if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                    {
                      v90 = v89;
                    }

                    else
                    {
                      v90 = 0;
                    }

                    if (v90 != 1)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_279;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v91 = a1;
                }

                else
                {
                  v91 = v86;
                }

                v92 = strcasecmp(v91, *MEMORY[0x29EDBFC90]);
                if (!v92)
                {
                  if (capabilities::radio::dal(v92))
                  {
LABEL_268:
                    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                    v39 = prop::file::set<std::string>(__dst, a1, &v114);
                    goto LABEL_121;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v93 = a1;
                }

                else
                {
                  v93 = v86;
                }

                v94 = strcasecmp(v93, *MEMORY[0x29EDBFC78]);
                if (!v94)
                {
                  if (capabilities::radio::dal(v94))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                    v95 = util::convert<int>(&v114, &__p, 0);
                    if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                    {
                      v96 = v95;
                    }

                    else
                    {
                      v96 = 0;
                    }

                    if (v96 != 1)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_279;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v97 = a1;
                }

                else
                {
                  v97 = v86;
                }

                v98 = strcasecmp(v97, *MEMORY[0x29EDBFCA8]);
                if (!v98)
                {
                  if (capabilities::trace::supportsErrorHandling(v98))
                  {
                    *__dst = -1431655766;
                    if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
                    {
                      goto LABEL_322;
                    }

                    v53 = *__dst;
                    if (*__dst > 2u)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_308;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v99 = a1;
                }

                else
                {
                  v99 = v86;
                }

                v100 = strcasecmp(v99, *MEMORY[0x29EDBF648]);
                if (!v100)
                {
                  if (capabilities::radio::initium(v100))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v101 = util::convert<unsigned int>(&v114, &__p);
                    if (LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 = 0;
                    }

                    if (v102 == 1)
                    {
                      goto LABEL_299;
                    }

                    goto LABEL_322;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v103 = a1;
                }

                else
                {
                  v103 = v86;
                }

                v104 = strcasecmp(v103, *MEMORY[0x29EDBF500]);
                if (!v104)
                {
                  if (capabilities::radio::initium(v104))
                  {
                    *__dst = -1431655766;
                    if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
                    {
                      goto LABEL_322;
                    }

                    v53 = *__dst;
                    if (*__dst > 2u)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_308;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v105 = a1;
                }

                else
                {
                  v105 = v86;
                }

                if (!strcasecmp(v105, *MEMORY[0x29EDBF2D8]))
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                  v39 = prop::file::set<std::string>(__dst, a1, a2);
                  goto LABEL_121;
                }

                sGetOsLogContext();
                v106 = qword_2A1399EB8;
                if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_322;
                }

                v107 = *MEMORY[0x29EDBF8A0];
                if (a1[23] >= 0)
                {
                  v108 = a1;
                }

                else
                {
                  v108 = *a1;
                }

                v109 = &v114;
                if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v109 = v114.__r_.__value_.__r.__words[0];
                }

                *__dst = 136315650;
                *&__dst[4] = v107;
                *&__dst[12] = 2080;
                *&__dst[14] = v108;
                *&__dst[22] = 2080;
                v116 = v109;
                v83 = "[bbtrace] set: Invalid key; domain='%s' key='%s' value='%s'";
                v84 = v106;
                v85 = 32;
LABEL_321:
                _os_log_error_impl(&dword_297288000, v84, OS_LOG_TYPE_ERROR, v83, __dst, v85);
                goto LABEL_322;
              }

              goto LABEL_226;
            }

LABEL_233:
            data = -1431655766;
            v76 = util::convert<unsigned int>(&v114, &data);
            if (v76)
            {
              v77 = data;
              v78 = defaults::bbtrace::min_file_size(v76);
              if (v77 < v78)
              {
                v77 = defaults::bbtrace::min_file_size(v78);
              }

              if (!v77)
              {
                sGetOsLogContext();
                v82 = qword_2A1399EB8;
                if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_322;
                }

                *__dst = 0;
                v83 = "file size cannot be 0";
                v84 = v82;
                v85 = 2;
                goto LABEL_321;
              }

              data = 1 << (__clz(v77) ^ 0x1F);
              std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
              v76 = prop::file::set<unsigned int>(__dst, a1, &data);
              v79 = v76;
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }

            else
            {
              v79 = 0;
            }

            v80 = capabilities::trace::defaultHistorySizeMB(v76);
            v81 = 0x7FFFFFFF;
            if (v80 < 0x7FFFFFFF)
            {
              v81 = v80;
            }

            __val = v81;
            std::string::basic_string[abi:ne200100]<0>(__dst, v6);
            prop::bbtrace::get<int>(__dst, &__val);
            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            if (v79)
            {
              std::string::basic_string[abi:ne200100]<0>(__dst, v6);
              std::to_string(&__p, __val);
              v16 = prop::bbtrace::set(__dst, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_122;
            }

            goto LABEL_322;
          }
        }

        else
        {
          if (!strcasecmp(a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_268;
          }

          if (strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
          {
            if (!strcasecmp(a1, *MEMORY[0x29EDBF7B0]) || !strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
            {
              goto LABEL_268;
            }

            if (strcasecmp(a1, *MEMORY[0x29EDBE790]))
            {
              if (!strcasecmp(a1, *MEMORY[0x29EDBEDD8]) || !strcasecmp(a1, *MEMORY[0x29EDBEF80]))
              {
                goto LABEL_268;
              }

              v74 = a1;
              if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
              {
                goto LABEL_215;
              }

LABEL_226:
              __p.__r_.__value_.__s.__data_[0] = -86;
              if (!util::convert<BOOL>(&v114, &__p, 0))
              {
                goto LABEL_322;
              }

              goto LABEL_230;
            }

            goto LABEL_233;
          }
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

LABEL_230:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        v39 = prop::file::set<BOOL>(__dst, a1, &__p);
        goto LABEL_121;
      }
    }

    else
    {
      v68 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
      {
        goto LABEL_185;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v114, &__p, 0))
    {
      goto LABEL_322;
    }

    goto LABEL_230;
  }

LABEL_37:
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  v15 = util::convert<int>(&v114, &__p, 0);
  v16 = v15;
  if (SLODWORD(__p.__r_.__value_.__l.__data_) < 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = capabilities::trace::defaultHistorySizeMB(v15);
    v19 = 0x7FFFFFFF;
    if (v18 < 0x7FFFFFFF)
    {
      v19 = v18;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = v19;
  }

  if (v16)
  {
LABEL_279:
    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
    v39 = prop::file::set<int>(__dst, a1, &__p);
    goto LABEL_121;
  }

LABEL_323:
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_29738F238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::coredump::set(std::string::size_type a1, char *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(&v18, 170, sizeof(v18));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::coredump::get(a1, &v18))
  {
    goto LABEL_38;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE6E0]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v20 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[coredump] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_38:
    v15 = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }

    return v15;
  }

  v17 = -86;
  if (!util::convert<BOOL>(&v18, &v17, 0))
  {
    goto LABEL_38;
  }

  v10 = *MEMORY[0x29EDBE5F8];
  v11 = strlen(*MEMORY[0x29EDBE5F8]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v17);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }
  }

  else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_39:
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_29738F750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::ipc::set(char *a1, char *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v27, 170, sizeof(v27));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ipc::get(a1, &v27))
  {
    goto LABEL_56;
  }

LABEL_9:
  if (a1[23] < 0)
  {
    v5 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

LABEL_33:
    LOBYTE(v26) = -86;
    if (!util::convert<BOOL>(&v27, &v26, 0))
    {
      goto LABEL_56;
    }

    v17 = *MEMORY[0x29EDBF8E8];
    v18 = strlen(*MEMORY[0x29EDBF8E8]);
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
      *&buf[8] = v19;
      *&buf[16] = v21 | 0x8000000000000000;
      *buf = v20;
    }

    else
    {
      buf[23] = v18;
      v20 = buf;
      if (!v18)
      {
        goto LABEL_43;
      }
    }

    memmove(v20, v17, v19);
LABEL_43:
    v20[v19] = 0;
    v22 = prop::file::set<BOOL>(buf, a1, &v26);
    goto LABEL_50;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_33;
  }

  v5 = a1;
  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
  {
LABEL_12:
    v6 = strcasecmp(v5, "BufferCount");
    if (v6 || (capabilities::ipc::supportsPCI(v6) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
      {
        qword_2A1399EB0 = 0;
        qword_2A1399EB8 = 0;
        __cxa_guard_release(&qword_2A1399EA8);
      }

      if (_MergedGlobals_13 == -1)
      {
        v7 = qword_2A1399EB8;
        if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
        v7 = qword_2A1399EB8;
        if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_56;
        }
      }

      v8 = *MEMORY[0x29EDBF8E8];
      if (a1[23] >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      v10 = &v27;
      if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v27.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      *&buf[22] = 2080;
      v29 = v10;
      _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "[ipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
    }

LABEL_56:
    v24 = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_57;
    }

    return v24;
  }

LABEL_25:
  v26 = -1431655766;
  v11 = util::convert<int>(&v27, &v26, 0);
  if (v26 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    goto LABEL_56;
  }

  v13 = *MEMORY[0x29EDBF8E8];
  v14 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v14 | 7) + 1;
    }

    v16 = operator new(v23);
    *&buf[8] = v15;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v16;
  }

  else
  {
    buf[23] = v14;
    v16 = buf;
    if (!v14)
    {
      goto LABEL_49;
    }
  }

  memmove(v16, v13, v15);
LABEL_49:
  v16[v15] = 0;
  v22 = prop::file::set<int>(buf, a1, &v26);
LABEL_50:
  v24 = v22;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_57;
    }
  }

  else if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_57:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return v24;
}

void sub_29738FBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbipc::set(char *a1, char *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v29, 170, sizeof(v29));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v29 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbipc::get(a1, &v29))
  {
    goto LABEL_63;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE7A0]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v28 = -1431655766;
      if (!util::convert<int>(&v29, &v28, 0))
      {
        goto LABEL_63;
      }

      v10 = *MEMORY[0x29EDBE7A8];
      v11 = strlen(*MEMORY[0x29EDBE7A8]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v11 | 7) + 1;
        }

        v13 = operator new(v24);
        *&buf[8] = v12;
        *&buf[16] = v24 | 0x8000000000000000;
        *buf = v13;
      }

      else
      {
        buf[23] = v11;
        v13 = buf;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      memmove(v13, v10, v12);
LABEL_50:
      v13[v12] = 0;
      v23 = prop::file::set<int>(buf, a1, &v28);
      goto LABEL_57;
    }

LABEL_29:
    LOBYTE(v28) = -86;
    if (!util::convert<BOOL>(&v29, &v28, 0))
    {
      goto LABEL_63;
    }

    v14 = *MEMORY[0x29EDBE7A8];
    v15 = strlen(*MEMORY[0x29EDBE7A8]);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v15 | 7) + 1;
      }

      v17 = operator new(v22);
      *&buf[8] = v16;
      *&buf[16] = v22 | 0x8000000000000000;
      *buf = v17;
    }

    else
    {
      buf[23] = v15;
      v17 = buf;
      if (!v15)
      {
        goto LABEL_44;
      }
    }

    memmove(v17, v14, v16);
LABEL_44:
    v17[v16] = 0;
    v23 = prop::file::set<BOOL>(buf, a1, &v28);
    goto LABEL_57;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE7A0]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBEA38]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_63;
      }
    }

    v7 = *MEMORY[0x29EDBE7A8];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v29;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v29.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v31 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[bbipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_63:
    v26 = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }

    return v26;
  }

  v28 = -1431655766;
  if (!util::convert<unsigned int>(&v29, &v28))
  {
    goto LABEL_63;
  }

  v18 = *MEMORY[0x29EDBE7A8];
  v19 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v19 | 7) + 1;
    }

    v21 = operator new(v25);
    *&buf[8] = v20;
    *&buf[16] = v25 | 0x8000000000000000;
    *buf = v21;
  }

  else
  {
    buf[23] = v19;
    v21 = buf;
    if (!v19)
    {
      goto LABEL_56;
    }
  }

  memmove(v21, v18, v20);
LABEL_56:
  v21[v20] = 0;
  v23 = prop::file::set<unsigned int>(buf, a1, &v28);
LABEL_57:
  v26 = v23;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_64;
    }
  }

  else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_64:
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  return v26;
}

void sub_297390114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::compression::set(char *a1, char *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::compression::get(a1, &v26))
  {
    goto LABEL_46;
  }

LABEL_9:
  v5 = a1[23];
  v6 = *a1;
  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (strcasecmp(v7, *MEMORY[0x29EDBD4A0]))
  {
    v8 = 0;
    goto LABEL_28;
  }

  v25 = 0;
  if (util::convert<int>(&v26, &v25, 0))
  {
    v9 = *MEMORY[0x29EDBE7B0];
    v10 = strlen(*MEMORY[0x29EDBE7B0]);
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
      *&__dst[8] = v11;
      *&__dst[16] = v13 | 0x8000000000000000;
      *__dst = v12;
    }

    else
    {
      __dst[23] = v10;
      v12 = __dst;
      if (!v10)
      {
LABEL_25:
        v12[v11] = 0;
        v8 = prop::file::set<int>(__dst, a1, &v25);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_27;
      }
    }

    memmove(v12, v9, v11);
    goto LABEL_25;
  }

  v8 = 0;
LABEL_27:
  LOBYTE(v5) = a1[23];
  v6 = *a1;
LABEL_28:
  if ((v5 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = v6;
  }

  if (!strcasecmp(v14, *MEMORY[0x29EDBD340]))
  {
    LOBYTE(v25) = 1;
    if (util::convert<BOOL>(&v26, &v25, 0))
    {
      v19 = *MEMORY[0x29EDBE7B0];
      v20 = strlen(*MEMORY[0x29EDBE7B0]);
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
      }

      else
      {
        __dst[23] = v20;
        v22 = __dst;
        if (!v20)
        {
LABEL_52:
          v22[v21] = 0;
          v8 = prop::file::set<BOOL>(__dst, a1, &v25);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          goto LABEL_54;
        }
      }

      memmove(v22, v19, v21);
      goto LABEL_52;
    }

LABEL_46:
    v8 = 0;
    goto LABEL_54;
  }

  if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
  {
    qword_2A1399EB0 = 0;
    qword_2A1399EB8 = 0;
    __cxa_guard_release(&qword_2A1399EA8);
  }

  if (_MergedGlobals_13 == -1)
  {
    v15 = qword_2A1399EB8;
    if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
    v15 = qword_2A1399EB8;
    if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  v16 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = *a1;
  }

  v18 = &v26;
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v26.__r_.__value_.__r.__words[0];
  }

  *__dst = 136315650;
  *&__dst[4] = v16;
  *&__dst[12] = 2080;
  *&__dst[14] = v17;
  *&__dst[22] = 2080;
  v28 = v18;
  _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "[compression] set: Invalid key; domain='%s' key='%s' value='%s'", __dst, 0x20u);
LABEL_54:
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v8;
}

void sub_297390568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::ttr::set(char *a1, char *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v24, 170, sizeof(v24));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ttr::get(a1, &v24))
  {
    goto LABEL_54;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_11;
    }

LABEL_22:
    v23 = -1431655766;
    v10 = util::convert<unsigned int>(&v24, &v23);
    if (v23 < 4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_54;
    }

    v12 = *MEMORY[0x29EDBE718];
    v13 = strlen(*MEMORY[0x29EDBE718]);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v13 | 7) + 1;
      }

      v15 = operator new(v19);
      *&buf[8] = v14;
      *&buf[16] = v19 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v13;
      v15 = buf;
      if (!v13)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF2D0]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_54;
      }
    }

    v7 = *MEMORY[0x29EDBE718];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v26 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[ttr] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_54:
    v21 = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_55;
    }

    return v21;
  }

  v23 = -1431655766;
  v16 = util::convert<unsigned int>(&v24, &v23);
  if (v23)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
    goto LABEL_54;
  }

  v12 = *MEMORY[0x29EDBE718];
  v18 = strlen(*MEMORY[0x29EDBE718]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v18 | 7) + 1;
    }

    v15 = operator new(v20);
    *&buf[8] = v14;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_47;
  }

  buf[23] = v18;
  v15 = buf;
  if (v18)
  {
LABEL_47:
    memmove(v15, v12, v14);
  }

LABEL_48:
  v15[v14] = 0;
  v21 = prop::file::set<unsigned int>(buf, a1, &v23);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_55;
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_55:
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_2973909D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::logfilter::set(char *a1, char *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  memset(&v30, 170, sizeof(v30));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v30, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v30 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::logfilter::get(a1, &v30))
  {
    goto LABEL_68;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v29 = -1431655766;
      v10 = util::convert<int>(&v30, &v29, 0);
      if (v29 > -2)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_68;
      }

      v12 = *MEMORY[0x29EDBE528];
      v13 = strlen(*MEMORY[0x29EDBE528]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (v13 | 7) + 1;
        }

        v15 = operator new(v25);
        *&buf[8] = v14;
        *&buf[16] = v25 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_50;
        }
      }

LABEL_49:
      memmove(v15, v12, v14);
LABEL_50:
      v15[v14] = 0;
      v24 = prop::file::set<int>(buf, a1, &v29);
      goto LABEL_62;
    }

LABEL_32:
    v29 = -1431655766;
    v16 = util::convert<int>(&v30, &v29, 0);
    if (v29 > -2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != 1)
    {
      goto LABEL_68;
    }

    v12 = *MEMORY[0x29EDBE528];
    v18 = strlen(*MEMORY[0x29EDBE528]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v18 | 7) + 1;
      }

      v15 = operator new(v23);
      *&buf[8] = v14;
      *&buf[16] = v23 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v18;
      v15 = buf;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBEDE8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF810]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }
    }

    v7 = *MEMORY[0x29EDBE528];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v30.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v32 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[logfilter] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_68:
    v27 = 0;
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_69;
    }

    return v27;
  }

  LOBYTE(v29) = 1;
  if (!util::convert<BOOL>(&v30, &v29, 0))
  {
    goto LABEL_68;
  }

  v19 = *MEMORY[0x29EDBE528];
  v20 = strlen(*MEMORY[0x29EDBE528]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v20 | 7) + 1;
    }

    v22 = operator new(v26);
    *&buf[8] = v21;
    *&buf[16] = v26 | 0x8000000000000000;
    *buf = v22;
  }

  else
  {
    buf[23] = v20;
    v22 = buf;
    if (!v20)
    {
      goto LABEL_61;
    }
  }

  memmove(v22, v19, v21);
LABEL_61:
  v22[v21] = 0;
  v24 = prop::file::set<BOOL>(buf, a1, &v29);
LABEL_62:
  v27 = v24;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_69;
    }
  }

  else if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_69:
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  return v27;
}

void sub_297390F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::systemlogs::set(char *a1, char *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  memset(&v33, 170, sizeof(v33));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v33, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v33 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::systemlogs::get(a1, &v33))
  {
    goto LABEL_73;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v32 = -1431655766;
      v10 = util::convert<int>(&v33, &v32, 0);
      if (v32 > 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_73;
      }

      v12 = *MEMORY[0x29EDBE710];
      v13 = strlen(*MEMORY[0x29EDBE710]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v26 = 25;
        }

        else
        {
          v26 = (v13 | 7) + 1;
        }

        v15 = operator new(v26);
        *&buf[8] = v14;
        *&buf[16] = v26 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_54;
        }
      }

      memmove(v15, v12, v14);
LABEL_54:
      v15[v14] = 0;
      v27 = prop::file::set<int>(buf, a1, &v32);
      goto LABEL_67;
    }

LABEL_32:
    v32 = -1431655766;
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    if (!util::convert<unsigned int>(&v33, &v32))
    {
      goto LABEL_73;
    }

    v17 = IsCarrierBuild ? 3 : 2;
    if (v32 >= v17)
    {
      goto LABEL_73;
    }

    v18 = *MEMORY[0x29EDBE710];
    v19 = strlen(*MEMORY[0x29EDBE710]);
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      if ((v19 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v19 | 7) + 1;
      }

      v21 = operator new(v28);
      *&buf[8] = v20;
      *&buf[16] = v28 | 0x8000000000000000;
      *buf = v21;
    }

    else
    {
      buf[23] = v19;
      v21 = buf;
      if (!v19)
      {
        goto LABEL_60;
      }
    }

    memmove(v21, v18, v20);
LABEL_60:
    v21[v20] = 0;
    v27 = prop::file::set<unsigned int>(buf, a1, &v32);
    goto LABEL_67;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }
    }

    v7 = *MEMORY[0x29EDBE710];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v33;
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v33.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v35 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[systemlogs] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_73:
    v30 = 0;
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_74;
    }

    return v30;
  }

  LOBYTE(v32) = -86;
  if (!util::convert<BOOL>(&v33, &v32, 0))
  {
    goto LABEL_73;
  }

  v22 = *MEMORY[0x29EDBE710];
  v23 = strlen(*MEMORY[0x29EDBE710]);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v23 | 7) + 1;
    }

    v25 = operator new(v29);
    *&buf[8] = v24;
    *&buf[16] = v29 | 0x8000000000000000;
    *buf = v25;
  }

  else
  {
    buf[23] = v23;
    v25 = buf;
    if (!v23)
    {
      goto LABEL_66;
    }
  }

  memmove(v25, v22, v24);
LABEL_66:
  v25[v24] = 0;
  v27 = prop::file::set<BOOL>(buf, a1, &v32);
LABEL_67:
  v30 = v27;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_74;
    }
  }

  else if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_74:
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return v30;
}

void sub_2973914AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::profile::set(char *a1, char *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  memset(&v24, 170, sizeof(v24));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v24, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v24 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::profile::get(a1, &v24))
  {
    goto LABEL_50;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_11;
    }

LABEL_22:
    LOBYTE(v23) = -86;
    if (!util::convert<BOOL>(&v24, &v23, 0))
    {
      goto LABEL_50;
    }

    v10 = *MEMORY[0x29EDBE5B0];
    v11 = strlen(*MEMORY[0x29EDBE5B0]);
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v11 | 7) + 1;
      }

      v13 = operator new(v18);
      *&buf[8] = v12;
      *&buf[16] = v18 | 0x8000000000000000;
      *buf = v13;
    }

    else
    {
      buf[23] = v11;
      v13 = buf;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    memmove(v13, v10, v12);
LABEL_37:
    v13[v12] = 0;
    v19 = prop::file::set<BOOL>(buf, a1, &v23);
    goto LABEL_44;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF7D0]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }
    }

    v7 = *MEMORY[0x29EDBE5B0];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v24.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v26 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[profile] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_50:
    v21 = 0;
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_51;
    }

    return v21;
  }

  v23 = -1431655766;
  if (!util::convert<int>(&v24, &v23, 0))
  {
    goto LABEL_50;
  }

  v14 = *MEMORY[0x29EDBE5B0];
  v15 = strlen(*MEMORY[0x29EDBE5B0]);
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
    *&buf[8] = v16;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v17;
  }

  else
  {
    buf[23] = v15;
    v17 = buf;
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  memmove(v17, v14, v16);
LABEL_43:
  v17[v16] = 0;
  v19 = prop::file::set<std::string>(buf, a1, &v24);
LABEL_44:
  v21 = v19;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_51;
    }
  }

  else if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_51:
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v21;
}

void sub_297391904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::tailspin::set(std::string::size_type a1, char *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(&v18, 170, sizeof(v18));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v18 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::tailspin::get(a1, &v18))
  {
    goto LABEL_38;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE4C8]))
  {
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_38;
      }
    }

    v7 = *MEMORY[0x29EDBE608];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v18.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v20 = v9;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[tailspin] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_38:
    v15 = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }

    return v15;
  }

  v17 = -86;
  if (!util::convert<BOOL>(&v18, &v17, 0))
  {
    goto LABEL_38;
  }

  v10 = *MEMORY[0x29EDBE608];
  v11 = strlen(*MEMORY[0x29EDBE608]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v17);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_39;
    }
  }

  else if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_39:
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  return v15;
}

void sub_297391C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::tracesettings::set(char *a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 8));
  }

  else
  {
    v26 = *a2;
  }

  if (a1[23] < 0)
  {
    v3 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
    {
      if (strcasecmp(v3, *MEMORY[0x29EDBF098]))
      {
        if (strcasecmp(v3, *MEMORY[0x29EDBEA40]))
        {
LABEL_8:
          if (strcasecmp(v3, *MEMORY[0x29EDBEDD0]))
          {
            if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
            {
              qword_2A1399EB0 = 0;
              qword_2A1399EB8 = 0;
              __cxa_guard_release(&qword_2A1399EA8);
            }

            if (_MergedGlobals_13 == -1)
            {
              v4 = qword_2A1399EB8;
              if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_67;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
              v4 = qword_2A1399EB8;
              if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_67;
              }
            }

            v5 = *MEMORY[0x29EDBE600];
            if (a1[23] >= 0)
            {
              v6 = a1;
            }

            else
            {
              v6 = *a1;
            }

            v7 = &v26;
            if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v7 = v26.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = v5;
            *&buf[12] = 2080;
            *&buf[14] = v6;
            *&buf[22] = 2080;
            v28 = v7;
            _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "[tracesettings] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_67:
            v23 = 0;
            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_68;
            }

            return v23;
          }

          v25 = -1431655766;
          if (!util::convert<int>(&v26, &v25, 0))
          {
            goto LABEL_67;
          }

          v12 = *MEMORY[0x29EDBE600];
          v20 = strlen(*MEMORY[0x29EDBE600]);
          if (v20 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v14 = v20;
          if (v20 >= 0x17)
          {
            if ((v20 | 7) == 0x17)
            {
              v22 = 25;
            }

            else
            {
              v22 = (v20 | 7) + 1;
            }

            v15 = operator new(v22);
            *&buf[8] = v14;
            *&buf[16] = v22 | 0x8000000000000000;
            *buf = v15;
          }

          else
          {
            buf[23] = v20;
            v15 = buf;
            if (!v20)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_59;
        }

LABEL_21:
        v8 = *MEMORY[0x29EDBE600];
        v9 = strlen(*MEMORY[0x29EDBE600]);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          if ((v9 | 7) == 0x17)
          {
            v21 = 25;
          }

          else
          {
            v21 = (v9 | 7) + 1;
          }

          v11 = operator new(v21);
          *&buf[8] = v10;
          *&buf[16] = v21 | 0x8000000000000000;
          *buf = v11;
        }

        else
        {
          buf[23] = v9;
          v11 = buf;
          if (!v9)
          {
            goto LABEL_39;
          }
        }

LABEL_38:
        memmove(v11, v8, v10);
LABEL_39:
        v11[v10] = 0;
        v18 = prop::file::set<std::string>(buf, a1, &v26);
        goto LABEL_61;
      }

LABEL_30:
      v8 = *MEMORY[0x29EDBE600];
      v16 = strlen(*MEMORY[0x29EDBE600]);
      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v16;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v16 | 7) + 1;
        }

        v11 = operator new(v17);
        *&buf[8] = v10;
        *&buf[16] = v17 | 0x8000000000000000;
        *buf = v11;
      }

      else
      {
        buf[23] = v16;
        v11 = buf;
        if (!v16)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_38;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBEF68]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v3 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v25 = -1431655766;
  if (!util::convert<int>(&v26, &v25, 0))
  {
    goto LABEL_67;
  }

  v12 = *MEMORY[0x29EDBE600];
  v13 = strlen(*MEMORY[0x29EDBE600]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v13 | 7) + 1;
    }

    v15 = operator new(v19);
    *&buf[8] = v14;
    *&buf[16] = v19 | 0x8000000000000000;
    *buf = v15;
  }

  else
  {
    buf[23] = v13;
    v15 = buf;
    if (!v13)
    {
      goto LABEL_60;
    }
  }

LABEL_59:
  memmove(v15, v12, v14);
LABEL_60:
  v15[v14] = 0;
  v18 = prop::file::set<int>(buf, a1, &v25);
LABEL_61:
  v23 = v18;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_68;
    }
  }

  else if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_68:
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  return v23;
}

void sub_2973921F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
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
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t util::convert<BOOL>(const std::string *a1, BOOL *a2, int a3)
{
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = a1->__r_.__value_.__r.__words[0];
    if (strcasecmp(a1->__r_.__value_.__l.__data_, "false") && strcasecmp(v6, "off") && strcasecmp(v6, "no"))
    {
      if (!strcasecmp(v6, "true") || !strcasecmp(v6, "on") || !strcasecmp(v6, "yes") || !strcasecmp(v6, "full") || !strcasecmp(v6, "streaming") || !strcasecmp(v6, "lite"))
      {
        goto LABEL_29;
      }

      goto LABEL_21;
    }

LABEL_28:
    v10 = 0;
LABEL_30:
    *a2 = v10;
    return 1;
  }

  if (!strcasecmp(a1, "false") || !strcasecmp(a1, "off") || !strcasecmp(a1, "no"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(a1, "true"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "on"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "yes"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "full"))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(a1, "streaming"))
  {
    goto LABEL_29;
  }

  v6 = a1;
  if (!strcasecmp(a1, "lite"))
  {
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v6, "background"))
  {
LABEL_29:
    v10 = 1;
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v7 = std::stol(a1, &__idx, a3);
  result = 0;
  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v10 = v7 != 0;
  if (__idx == size && v7 < 2)
  {
    goto LABEL_30;
  }

  return result;
}

uint64_t sub_297392530(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t prop::file::set<BOOL>(const void **a1, uint64_t a2, unsigned __int8 *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v31, 0, sizeof(v31));
    v10 = &v31;
    *(&v31.__r_.__value_.__s + 23) = v4 + 1;
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
    v31.__r_.__value_.__l.__size_ = v4 + 1;
    v31.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v31.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p[2] = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v17 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  std::to_string(&v31, *a3);
  v19 = *&v31.__r_.__value_.__l.__data_;
  v20 = v31.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v31.__r_.__value_.__r.__words[0] = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E34960;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v22;
    *(&xmmword_2A1399338 + 1) = v21;
    if (!v23)
    {
      *&v29 = v22;
      *(&v29 + 1) = v21;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A1399338 + 1);
  v22 = xmmword_2A1399338;
  v29 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v20 & 0x8000000000000000) == 0)
  {
    *&v28.__r_.__value_.__l.__data_ = v19;
    v28.__r_.__value_.__r.__words[2] = v20;
LABEL_42:
    v31 = v28;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v28, v19, *(&v19 + 1));
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v31, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = ctu::cf::plist_adapter::set<std::string>(v22, &v31, v24, 1);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v26 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
LABEL_53:
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v19);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_58:
    operator delete(__p[0]);
    return v25;
  }

LABEL_52:
  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v25;
}

void sub_2973928D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<int>(const void **a1, uint64_t a2, int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v31, 0, sizeof(v31));
    v10 = &v31;
    *(&v31.__r_.__value_.__s + 23) = v4 + 1;
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
    v31.__r_.__value_.__l.__size_ = v4 + 1;
    v31.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v31.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p[2] = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v17 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  std::to_string(&v31, *a3);
  v19 = *&v31.__r_.__value_.__l.__data_;
  v20 = v31.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v31.__r_.__value_.__r.__words[0] = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E34960;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v22;
    *(&xmmword_2A1399338 + 1) = v21;
    if (!v23)
    {
      *&v29 = v22;
      *(&v29 + 1) = v21;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A1399338 + 1);
  v22 = xmmword_2A1399338;
  v29 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v20 & 0x8000000000000000) == 0)
  {
    *&v28.__r_.__value_.__l.__data_ = v19;
    v28.__r_.__value_.__r.__words[2] = v20;
LABEL_42:
    v31 = v28;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v28, v19, *(&v19 + 1));
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v31, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = ctu::cf::plist_adapter::set<std::string>(v22, &v31, v24, 1);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v26 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
LABEL_53:
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v19);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_58:
    operator delete(__p[0]);
    return v25;
  }

LABEL_52:
  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v25;
}

void sub_297392D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<unsigned int>(const void **a1, uint64_t a2, unsigned int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v31, 0, sizeof(v31));
    v10 = &v31;
    *(&v31.__r_.__value_.__s + 23) = v4 + 1;
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
    v31.__r_.__value_.__l.__size_ = v4 + 1;
    v31.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v31.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v31, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  __p[2] = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v17 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v17 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = __p;
  }

  else
  {
    v18 = __p[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  std::to_string(&v31, *a3);
  v19 = *&v31.__r_.__value_.__l.__data_;
  v20 = v31.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v31.__r_.__value_.__r.__words[0] = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E34960;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v22;
    *(&xmmword_2A1399338 + 1) = v21;
    if (!v23)
    {
      *&v29 = v22;
      *(&v29 + 1) = v21;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A1399338 + 1);
  v22 = xmmword_2A1399338;
  v29 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v20 & 0x8000000000000000) == 0)
  {
    *&v28.__r_.__value_.__l.__data_ = v19;
    v28.__r_.__value_.__r.__words[2] = v20;
LABEL_42:
    v31 = v28;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v28, v19, *(&v19 + 1));
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v31, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  v25 = ctu::cf::plist_adapter::set<std::string>(v22, &v31, v24, 1);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *(&v29 + 1);
    if (!*(&v29 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v26 = *(&v29 + 1);
  if (!*(&v29 + 1))
  {
LABEL_53:
    if ((v20 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v19);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v25;
    }

LABEL_58:
    operator delete(__p[0]);
    return v25;
  }

LABEL_52:
  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v25;
}

void sub_297393188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<std::string>(const void **a1, uint64_t a2, uint64_t a3)
{
  memset(v28, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v29, 0, sizeof(v29));
    v10 = &v29;
    *(&v29.__r_.__value_.__s + 23) = v4 + 1;
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
    v29.__r_.__value_.__l.__size_ = v4 + 1;
    v29.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v29.__r_.__value_.__r.__words[0] = v10;
  }

  if (v3 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v10, v11, v4);
LABEL_15:
  *&v10[v4] = 46;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v29, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v28[2] = v15->__r_.__value_.__r.__words[2];
  *v28 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28[2]) >= 0)
  {
    v17 = (v28 + HIBYTE(v28[2]));
  }

  else
  {
    v17 = (v28[0] + v28[1]);
  }

  if (SHIBYTE(v28[2]) >= 0)
  {
    v18 = v28;
  }

  else
  {
    v18 = v28[0];
  }

  for (; v18 != v17; v18 = (v18 + 1))
  {
    *v18 = __tolower(*v18);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v20 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v20, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v29.__r_.__value_.__r.__words[0] = v20;
    v19 = operator new(0x20uLL);
    *v19 = &unk_2A1E34960;
    v19[1] = 0;
    v19[2] = 0;
    v19[3] = v20;
    v21 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v20;
    *(&xmmword_2A1399338 + 1) = v19;
    if (!v21)
    {
      *&v27 = v20;
      *(&v27 + 1) = v19;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  v19 = *(&xmmword_2A1399338 + 1);
  v20 = xmmword_2A1399338;
  v27 = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
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
    std::string::__init_copy_ctor_external(&v29, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v29 = __p;
  }

  if (SHIBYTE(v28[2]) >= 0)
  {
    v22 = v28;
  }

  else
  {
    v22 = v28[0];
  }

  v23 = ctu::cf::plist_adapter::set<std::string>(v20, &v29, v22, 1);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      v24 = *(&v27 + 1);
      if (!*(&v27 + 1))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v24 = *(&v27 + 1);
  if (!*(&v27 + 1))
  {
    goto LABEL_55;
  }

LABEL_54:
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if ((SHIBYTE(v28[2]) & 0x80000000) == 0)
    {
      return v23;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (SHIBYTE(v28[2]) < 0)
  {
LABEL_56:
    operator delete(v28[0]);
  }

  return v23;
}

void sub_2973935C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t util::convert<unsigned int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v4) = strcasecmp(a1, "false");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "off");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "no");
    if (!v4)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v4) = 1;
    goto LABEL_29;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v4) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "off");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "no");
  if (!v4)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_30:
    LODWORD(v4) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v4 = std::stol(a1, &__idx, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || (v4 & 0x8000000000000000) != 0 || HIDWORD(v4))
  {
    return 0;
  }

LABEL_29:
  *a2 = v4;
  return 1;
}

uint64_t sub_2973938AC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void prop::bbtrace::get<int>(char *a1, _DWORD *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a1, &__p))
  {
    util::convert<int>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_297393938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::enabled(prop::tracesettings *this, const char *a2)
{
  v30 = 0;
  if (*MEMORY[0x29EDBE710] == this)
  {
    v6 = strlen(this);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_63:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v6 | 7) + 1;
      }

      p_dst = operator new(v15);
      v28 = v7;
      v29 = v15 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v29) = v6;
      p_dst = &__dst;
      if (!v6)
      {
LABEL_38:
        *(p_dst + v7) = 0;
        v16 = *MEMORY[0x29EDBE590];
        v17 = strlen(*MEMORY[0x29EDBE590]);
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
          v25 = v18;
          v26 = v20 | 0x8000000000000000;
          v24 = v19;
        }

        else
        {
          HIBYTE(v26) = v17;
          v19 = &v24;
          if (!v17)
          {
LABEL_47:
            *(v19 + v18) = 0;
            memset(&__p, 0, sizeof(__p));
            if (prop::get(&__dst, &v24, &__p))
            {
              v31 = -1431655766;
              v21 = util::convert<int>(&__p, &v31, 0);
              if (v31)
              {
                v22 = 1;
              }

              else
              {
                v22 = v21 ^ 1;
              }

              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_55:
                if (SHIBYTE(v26) < 0)
                {
                  operator delete(v24);
                  if ((SHIBYTE(v29) & 0x80000000) == 0)
                  {
LABEL_57:
                    if (!v21)
                    {
                      return v30;
                    }

                    return v22;
                  }
                }

                else if ((SHIBYTE(v29) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

                operator delete(__dst);
                if (!v21)
                {
                  return v30;
                }

                return v22;
              }
            }

            else
            {
              v21 = 0;
              v22 = 1;
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_55;
              }
            }

            operator delete(__p.__r_.__value_.__l.__data_);
            goto LABEL_55;
          }
        }

        memmove(v19, v16, v18);
        goto LABEL_47;
      }
    }

    memcpy(p_dst, this, v7);
    goto LABEL_38;
  }

  v3 = strlen(this);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_63;
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v3 | 7) + 1;
    }

    v5 = operator new(v9);
    v28 = v4;
    v29 = v9 | 0x8000000000000000;
    __dst = v5;
    goto LABEL_14;
  }

  HIBYTE(v29) = v3;
  v5 = &__dst;
  if (v3)
  {
LABEL_14:
    memcpy(v5, this, v4);
  }

  *(v5 + v4) = 0;
  v10 = *MEMORY[0x29EDBE6E0];
  v11 = strlen(*MEMORY[0x29EDBE6E0]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v11 | 7) + 1;
    }

    v13 = operator new(v14);
    v25 = v12;
    v26 = v14 | 0x8000000000000000;
    v24 = v13;
    goto LABEL_23;
  }

  HIBYTE(v26) = v11;
  v13 = &v24;
  if (v11)
  {
LABEL_23:
    memmove(v13, v10, v12);
  }

  *(v13 + v12) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::get(&__dst, &v24, &__p))
  {
    util::convert<BOOL>(&__p, &v30, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
LABEL_28:
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_32;
      }

      return v30;
    }
  }

  else if ((SHIBYTE(v26) & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

  operator delete(v24);
  if (SHIBYTE(v29) < 0)
  {
LABEL_32:
    operator delete(__dst);
  }

  return v30;
}

void sub_297393C94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::anyEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE710], v2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE5F8], v3) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v4) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v5) || prop::tracesettings::enabled(*MEMORY[0x29EDBE7A8], v6))
  {
    return 1;
  }

  v9 = *MEMORY[0x29EDBE608];

  return prop::tracesettings::enabled(v9, v7);
}

BOOL prop::tracesettings::isContinuous(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

BOOL prop::tracesettings::mobileBasebandServicesEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

void ___ZL16sGetOsLogContextv_block_invoke_5()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void prop::file::get<std::string>(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(__p, 170, sizeof(__p));
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = *(a1 + 23);
  }

  else
  {
    v6 = a1[1];
  }

  v7 = v6 + 1;
  if (v6 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    memset(&v27, 0, sizeof(v27));
    v12 = &v27;
    *(&v27.__r_.__value_.__s + 23) = v6 + 1;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    v12 = operator new(v11);
    v27.__r_.__value_.__l.__size_ = v6 + 1;
    v27.__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
    v27.__r_.__value_.__r.__words[0] = v12;
  }

  if (v5 >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  memmove(v12, v13, v6);
LABEL_15:
  *&v12[v6] = 46;
  v14 = *(a2 + 23);
  if (v14 >= 0)
  {
    v15 = a2;
  }

  else
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = *(a2 + 8);
  }

  v17 = std::string::append(&v27, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p[2] = v17->__r_.__value_.__r.__words[2];
  *__p = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v19 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  for (; v20 != v19; v20 = (v20 + 1))
  {
    *v20 = __tolower(*v20);
  }

  memset(a4, 170, sizeof(std::string));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a4, *a3, *(a3 + 8));
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *a3;
    a4->__r_.__value_.__r.__words[2] = *(a3 + 16);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A1399338)
  {
    v22 = operator new(0x18uLL);
    MEMORY[0x29C26DFD0](v22, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v29 = v22;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E34960;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v22;
    v23 = *(&xmmword_2A1399338 + 1);
    *&xmmword_2A1399338 = v22;
    *(&xmmword_2A1399338 + 1) = v21;
    if (!v23)
    {
      v27.__r_.__value_.__r.__words[0] = v22;
      v27.__r_.__value_.__l.__size_ = v21;
      goto LABEL_41;
    }

    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  v21 = *(&xmmword_2A1399338 + 1);
  v22 = xmmword_2A1399338;
  *&v27.__r_.__value_.__l.__data_ = xmmword_2A1399338;
  if (*(&xmmword_2A1399338 + 1))
  {
LABEL_41:
    atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v24 = __p;
  }

  else
  {
    v24 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v29, v24);
  v25 = (**v22)(v22, v29);
  if (v25)
  {
    ctu::cf::assign();
    CFRelease(v25);
  }

  MEMORY[0x29C26DF80](&v29);
  size = v27.__r_.__value_.__l.__size_;
  if (!v27.__r_.__value_.__l.__size_ || atomic_fetch_add((v27.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_50;
  }

  (size->__on_zero_shared)(size);
  std::__shared_weak_count::__release_weak(size);
  if (SHIBYTE(__p[2]) < 0)
  {
LABEL_50:
    operator delete(__p[0]);
  }
}

void sub_297394234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&a22);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_16()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297288000);
  }

  return result;
}

void CMOnBodyDelegate::create(CMOnBodyDelegate **__return_ptr a1@<X8>, NSObject **this@<X0>, queue a3@<0:X1>)
{
  if (([MEMORY[0x29EDB93C8] isOnBodyStatusDetectionAvailable] & 1) == 0)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A1399CD8 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v12 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        *a1 = 0;
        a1[1] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
      v12 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "Motion on-body detection is not available on this device", buf, 2u);
    goto LABEL_12;
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x40uLL);
  v6 = *this;
  v14 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7.fObj.fObj = &v14;
  CMOnBodyDelegate::CMOnBodyDelegate(v5, v7);
  *a1 = v5;
  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v9 = v8 + 1;
  *v8 = &unk_2A1E3BA18;
  v8[2] = 0;
  v8[3] = v5;
  v8[4] = &__block_literal_global_12;
  a1[1] = v8;
  v10 = *(v5 + 1);
  if (!v10)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *v5 = v5;
    *(v5 + 1) = v8;
    v11 = v8;
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      v13 = v8;
      (*(*v8 + 16))();
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_15:
  if (v6)
  {

    dispatch_release(v6);
  }
}

void sub_297394568(void *a1)
{
  v2 = __cxa_begin_catch(a1);
  _block_invoke(v2, v1);
  __cxa_rethrow();
}

void sub_29739457C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void _block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = _block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  dispatch_async(v2, block);
}

void _block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CMOnBodyDelegate::~CMOnBodyDelegate(v1);

    operator delete(v2);
  }
}

void CMOnBodyDelegate::CMOnBodyDelegate(CMOnBodyDelegate *this, queue a2)
{
  *this = 0;
  *(this + 1) = 0;
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", "cm.onbody");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 16, v5);
  MEMORY[0x29C26DE80](v5);
  ctu::OsLogContext::~OsLogContext(v4);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = *a2.fObj.fObj;
}

void *CMOnBodyDelegate::shutdown(CMOnBodyDelegate *this)
{
  result = [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
  if (*(this + 3))
  {
    *(this + 3) = 0;
  }

  return result;
}

uint64_t CMOnBodyDelegate::stopMotionDetection(CMOnBodyDelegate *this)
{
  v1 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];

  return [v1 stopOnBodyStatusDetection];
}

void CMOnBodyDelegate::~CMOnBodyDelegate(CMOnBodyDelegate *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 7);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    v9 = *(this + 5);
    v10 = *(this + 4);
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 8);
        if (v11)
        {
          dispatch_release(v11);
        }

        v13 = *(v9 - 16);
        v9 -= 16;
        v12 = v13;
        if (v13)
        {
          _Block_release(v12);
        }
      }

      while (v9 != v8);
      v10 = *(this + 4);
    }

    *(this + 5) = v8;
    operator delete(v10);
  }

  MEMORY[0x29C26DE80](this + 16);
  v14 = *(this + 1);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }
}

void CMOnBodyDelegate::startMotionDetection(CMOnBodyDelegate *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 7))
    {
      goto LABEL_5;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    if (*(this + 7))
    {
LABEL_5:
      v6 = [MEMORY[0x29EDB93C8] sharedOnBodyStatusManager];
      v7 = *(this + 3);
      v8 = *(this + 7);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3321888768;
      v10[2] = ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke;
      v10[3] = &__block_descriptor_48_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE_e36_v24__0__CMOnBodyStatus_8__NSError_16l;
      v10[4] = v3;
      v11 = v5;
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      [v6 startOnBodyStatusDetectionToQueue:v7 withParameters:v8 handler:v10];
      if (v11)
      {
        std::__shared_weak_count::__release_weak(v11);
      }

      goto LABEL_10;
    }
  }

  v9 = *(this + 2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Motion parameters not set, cannot start motion detection!", buf, 2u);
  }

LABEL_10:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2973949E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
    std::__shared_weak_count::__release_weak(v14);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN16CMOnBodyDelegate20startMotionDetectionEv_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 32);
      if (v7)
      {
        CMOnBodyDelegate::motionCallback_sync(v7, [a2 result], objc_msgSend(a2, "confidence"));
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void CMOnBodyDelegate::motionCallback_sync(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3 != v4)
  {
    while (!*v3)
    {
      v7 = 0;
      v8 = *(v3 + 8);
      if (v8)
      {
        goto LABEL_6;
      }

LABEL_7:
      if (!v7)
      {
        v10 = 0;
        v12 = MEMORY[0x29EDCA5F8];
        v13 = 3321888768;
        v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
        v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
LABEL_13:
        v11 = 0;
        goto LABEL_14;
      }

      v9 = _Block_copy(v7);
      v10 = v9;
      v12 = MEMORY[0x29EDCA5F8];
      v13 = 3321888768;
      v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEclIJS2_S3_EEEvDpT__block_invoke;
      v15 = &__block_descriptor_48_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE_e5_v8__0l;
      if (!v9)
      {
        goto LABEL_13;
      }

      v11 = _Block_copy(v9);
LABEL_14:
      aBlock = v11;
      v17 = a2;
      v18 = a3;
      dispatch_async(v8, &v12);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v10)
      {
        _Block_release(v10);
      }

      if (v8)
      {
        dispatch_release(v8);
      }

      if (v7)
      {
        _Block_release(v7);
      }

      v3 += 16;
      if (v3 == v4)
      {
        return;
      }
    }

    v7 = _Block_copy(*v3);
    v8 = *(v3 + 8);
    if (!v8)
    {
      goto LABEL_7;
    }

LABEL_6:
    dispatch_retain(v8);
    goto LABEL_7;
  }
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void CMOnBodyDelegate::setThresholds(CMOnBodyDelegate *this, CFTypeRef cf)
{
  if (*(this + 7))
  {
    v3 = *(this + 2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v3, OS_LOG_TYPE_ERROR, "Motion parameters already set, ignore request to set them again", buf, 2u);
    }
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
      v5 = *(this + 7);
      *(this + 7) = cf;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(this + 7) = 0;
    }

    [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
    v6 = *(this + 2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Motion parameters set successfully", v7, 2u);
    }
  }
}

char *CMOnBodyDelegate::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[5];
  if (v4 >= a1[6])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(a1 + 4, a2);
    a1[5] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[5] = (v4 + 2);
  }

  return result;
}

const char *CMOnBodyDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE68558[a1];
  }
}

const char *CMOnBodyDelegate::toString(int a1)
{
  v1 = "Confidence Level Unknown";
  if (a1 == 1)
  {
    v1 = "Confidence Level High";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Confidence Level Low";
  }
}

char *std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}