uint64_t __copy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(std::__shared_weak_count *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    shared_owners = a1[1].__shared_owners_;
    if (a1[2].__vftable)
    {
      v6 = a1;
      a1 = std::__shared_weak_count::lock(a1[2].__vftable);
      v9 = a1;
      if (a1 && !a2 && v6[1].__shared_weak_owners_)
      {
        v12 = a4;
        v13 = a3;
        v10 = *(shared_owners + 136);
        if (!v10)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        v11 = (*(*v10 + 48))(v10, &v13, &v12);
        if ((capabilities::pci::supportsRxIOPool(v11) & 1) == 0)
        {
          free(a3);
        }

LABEL_13:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }
    }

    else
    {
      v9 = 0;
    }

    if ((capabilities::pci::supportsRxIOPool(a1) & 1) == 0)
    {
      free(a3);
    }

    if (v9)
    {
      goto LABEL_13;
    }
  }
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t abb::router::MipcTransport::close(abb::router::MipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t abb::router::MipcTransport::write(abb::router::MipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v6 = *(this + 10);
    if (!v6)
    {
      return 0;
    }

    result = v6(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (!v10)
    {
      return 0;
    }

    result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
    if (a4)
    {
      if (result)
      {
        *a4 = v11;
        return 1;
      }
    }
  }

  return result;
}

uint64_t abb::router::MipcTransport::isReady(abb::router::MipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void abb::router::MipcTransport::~MipcTransport(abb::router::MipcTransport *this)
{
  *this = &unk_2A1E39AC8;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 17);
  if (v3 == (this + 112))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 2);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2A1E39AC8;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 17);
  if (v3 == (this + 112))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 2);
    if (v4)
    {
LABEL_7:
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 2);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  operator delete(this);
}

void *sys::UIObserver::create_default_global@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0x40uLL);
  sys::UIObserver::UIObserver(v2);

  return std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(a1, v2);
}

sys::UIObserver *sys::UIObserver::UIObserver(sys::UIObserver *this)
{
  v2 = dispatch_queue_create("sys::UIObserver", 0);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 4) = &unk_2A1E39CA0;
  v4 = operator new(0x28uLL);
  boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(v4);
  *(this + 5) = v4;
  *(this + 6) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(this + 40, v4, this + 6);
  *(this + 7) = 0xFFFFFFFF00000000;
  return this;
}

void sub_297349B84(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_297349BA4(_Unwind_Exception *a1)
{
  operator delete(v2);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

uint64_t sys::UIObserver::handleDisplayLockedChange_sync(uint64_t this)
{
  if (*(this + 60) != -1)
  {
    v1 = this;
    v2 = SBSGetScreenLockStatus() != 0;
    return boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v1 + 40), v2);
  }

  return this;
}

void sys::UIObserver::registerForScreenLockedNotification_sync(sys::UIObserver *this)
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

  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke;
  v7[3] = &__block_descriptor_tmp_28;
  v7[4] = v3;
  v8 = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  notify_register_dispatch("com.apple.springboard.lockstate", this + 15, *(this + 2), v7);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297349D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  std::__shared_weak_count::__release_weak(v14);
  _Unwind_Resume(a1);
}

void ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4 && *(v4 + 60) != -1)
      {
        v5 = v3;
        v6 = SBSGetScreenLockStatus() != 0;
        boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v4 + 40), v6);
        v3 = v5;
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_297349E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sys::UIObserver::unregisterForScreenLockedNotification_sync(sys::UIObserver *this)
{
  result = *(this + 15);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(this + 15) = -1;
  }

  return result;
}

void sys::UIObserver::observe(std::__shared_weak_count_vtbl **__return_ptr a1@<X8>, sys::UIObserver *this@<X0>, char a3@<W1>)
{
  v4 = *(this + 1);
  if (!v4 || (v7 = *this, (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(8uLL);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN3sys10UIObserver7observeEb_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_6_3;
  aBlock[4] = this;
  aBlock[5] = v7;
  v20 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (v11)
  {
    v13 = _Block_copy(v11);
  }

  else
  {
    v13 = 0;
  }

  v10->~__shared_weak_count = v13;
  *a1 = v10;
  v21 = v10;
  v14 = operator new(0x20uLL);
  *v14 = &unk_2A1E39EE8;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  *(v14 + 3) = v10;
  a1[1] = v14;
  if (v12)
  {
    _Block_release(v12);
  }

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 1174405120;
  v16[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_7;
  v16[3] = &__block_descriptor_tmp_8_2;
  v16[4] = this;
  v16[5] = v10;
  v17 = v14;
  atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  v18 = a3;
  ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(this, v16);
  v15 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  std::__shared_weak_count::__release_weak(v9);
}

void sub_29734A0F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100]((v25 - 88));
  if (v24)
  {
    _Block_release(v24);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
    std::__shared_weak_count::__release_weak(v23);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v23);
  _Unwind_Resume(a1);
}

void ___ZN3sys10UIObserver7observeEb_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_2;
        v7[3] = &__block_descriptor_tmp_5;
        v7[4] = v3;
        ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(v6, v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t ___ZN3sys10UIObserver7observeEb_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56) - 1;
  *(v1 + 56) = v2;
  if (!v2)
  {
    result = *(v1 + 60);
    if (result != -1)
    {
      result = notify_cancel(result);
      *(v1 + 60) = -1;
    }
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3sys10UIObserver7observeEb_block_invoke_7(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = v3 + 1;
  if (v3)
  {
    if (*(a1 + 56) != 1)
    {
      return;
    }
  }

  else
  {
    sys::UIObserver::registerForScreenLockedNotification_sync(v2);
    if (*(a1 + 56) != 1)
    {
      return;
    }
  }

  if (*(v2 + 60) != -1)
  {
    v4 = SBSGetScreenLockStatus() != 0;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v2 + 40), v4);
  }
}

uint64_t __copy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c51_ZTSNSt3__110shared_ptrIN3sys10UIObserver6HandleEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E39C50;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = a2[1];
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *a2 = a2;
        a2[1] = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_8:
        v9 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  return a1;
}

void sub_29734A5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v1[4] = &unk_2A1E39CA0;
    v2 = v1[6];
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

    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297432C4ALL)
  {
    if (((v2 & 0x8000000297432C4ALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297432C4ALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297432C4ALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E39CA0;
  v1 = result[2];
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

void boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E39CA0;
  v1 = a1[2];
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

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void **std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v1[4] = &unk_2A1E39CA0;
    v3 = v1[6];
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

    v4 = v1[3];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[2];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = v1[1];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(uint64_t a1)
{
  v18[4] = *MEMORY[0x29EDCA608];
  v2 = operator new(0x20uLL);
  v14 = &v14;
  v15 = &v14;
  v18[0] = 0;
  v18[1] = 0;
  v16 = 0;
  v17 = v18;
  v3 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v3, &v14);
  *v2 = v3;
  *(v2 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v2, v3, v2 + 1);
  v4 = operator new(1uLL);
  *(v2 + 3) = 0;
  *(v2 + 2) = v4;
  v5 = operator new(0x18uLL);
  v5[1] = 0x100000001;
  *v5 = &unk_2A1E39D60;
  v5[2] = v4;
  *(v2 + 3) = v5;
  *a1 = v2;
  *(a1 + 8) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v2, (a1 + 8));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v17, v18[0]);
  if (v16)
  {
    v6 = v15;
    v7 = *(v14 + 8);
    v8 = *v15;
    *(v8 + 8) = v7;
    *v7 = v8;
    v16 = 0;
    if (v6 != &v14)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[3];
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
            if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 24))(v10);
            }
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != &v14);
    }
  }

  *(a1 + 16) = **a1;
  v11 = operator new(0x40uLL);
  pthread_mutex_init(v11, 0);
  *(a1 + 32) = 0;
  *(a1 + 24) = v11;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E39DC0;
  v12[2] = v11;
  *(a1 + 32) = v12;
  return a1;
}

void sub_29734ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::mutex>(v10);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
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

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
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

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((a1 + 3), a1[4]);
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

void boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    pthread_mutex_destroy(*(a1 + 16));

    operator delete(v1);
  }
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E39E20;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_29734B23C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
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

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(uint64_t a1, char a2)
{
  v60 = *MEMORY[0x29EDCA608];
  v34 = a2;
  v32 = 0;
  v33 = 0;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46 = v3;
  v47 = v3;
  v44 = v3;
  v45 = v3;
  v42 = v3;
  v43 = v3;
  v40 = v3;
  v41 = v3;
  v38 = v3;
  v39 = v3;
  v4 = *(a1 + 24);
  __p[0] = 10;
  __p[1] = &v38;
  v49[0] = 0;
  v49[1] = v4;
  pthread_mutex_lock(v4);
  v5 = *(a1 + 8);
  if (!v5)
  {
    v7 = *a1;
    goto LABEL_13;
  }

  explicit = atomic_load_explicit(v5 + 2, memory_order_acquire);
  v7 = *a1;
  if (explicit == 1)
  {
    v8 = *v7;
    v9 = *(a1 + 16);
    if (v9 == *v7)
    {
      v9 = v8[1];
      *&v35 = v9;
      if (v8 == v9)
      {
LABEL_10:
        *(a1 + 16) = v9;
        goto LABEL_11;
      }
    }

    else
    {
      *&v35 = *(a1 + 16);
    }

    v10 = v9[2];
    if (*(v10 + 24))
    {
      v9 = v9[1];
    }

    else
    {
      v9 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v8, (v10 + 64), &v35);
      v7 = *a1;
    }

    goto LABEL_10;
  }

LABEL_11:
  v5 = *(a1 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 2, 1u, memory_order_relaxed);
  }

LABEL_13:
  v11 = v33;
  v32 = v7;
  v33 = v5;
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
      if (atomic_fetch_add(v11 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v11 + 24))(v11);
      }
    }
  }

  pthread_mutex_unlock(v49[1]);
  v12 = __p[1];
  if (__p[1])
  {
    if (v49[0] > 0)
    {
      v24 = __p[1] + 16 * v49[0];
      do
      {
        v25 = *(v24 - 1);
        if (v25)
        {
          if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v25 + 16))(v25);
            if (atomic_fetch_add(v25 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v25 + 24))(v25);
            }
          }
        }

        v24 -= 16;
      }

      while (v24 > v12);
    }

    if (__p[0] >= 0xB)
    {
      operator delete(__p[1]);
    }
  }

  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v51 = v13;
  v52 = v13;
  *v49 = v13;
  v50 = v13;
  v47 = v13;
  *__p = v13;
  v45 = v13;
  v46 = v13;
  v43 = v13;
  v44 = v13;
  v41 = v13;
  v42 = v13;
  v39 = v13;
  v40 = v13;
  v38 = v13;
  LOBYTE(v38) = 0;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v54 = 10;
  v55 = &v38 + 8;
  v56 = 0;
  v58 = 0;
  v59 = 0;
  v57 = &v34;
  v14 = v32;
  v15 = *v32;
  v29 = &v38;
  v30 = a1;
  v31 = v15;
  *&v27 = *(v15 + 8);
  *(&v27 + 1) = v15;
  *&v28 = &v38;
  *(&v28 + 1) = v15;
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v27);
  v26[0] = *v14;
  v26[1] = v26[0];
  v26[2] = &v38;
  v26[3] = v26[0];
  boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(v26);
  v35 = v27;
  v36 = v28;
  v16 = v26[0];
  v17 = v27;
  if (v27 == v26[0])
  {
    if (HIDWORD(v58) <= v58)
    {
      goto LABEL_35;
    }

LABEL_34:
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(v30, v31);
    goto LABEL_35;
  }

  v18 = v36;
  LOBYTE(v19) = *v36;
  do
  {
    if ((v19 & 1) == 0)
    {
      v20 = *(*(v17 + 16) + 32);
      v21 = *(v20 + 24);
      if (!v21)
      {
        std::runtime_error::runtime_error(&v37, "call to empty boost::function");
        v37.__vftable = &unk_2A1E35198;
        boost::throw_exception<boost::bad_function_call>(&v37);
      }

      (*((v21 & 0xFFFFFFFFFFFFFFFELL) + 8))(v20 + 32, **(v18 + 272));
      if ((*v18 & 1) == 0)
      {
        *v18 = 1;
      }
    }

    *&v35 = *(v17 + 8);
    boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(&v35);
    v18 = v36;
    v19 = *v36;
    if (v19 == 1)
    {
      LOBYTE(v19) = 0;
      *v36 = 0;
    }

    v17 = v35;
  }

  while (v35 != v16);
  if (*(v29 + 71) > *(v29 + 70))
  {
    goto LABEL_34;
  }

LABEL_35:
  result = boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(&v38);
  v23 = v33;
  if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v23 + 16))(v23);
    if (atomic_fetch_add(v23 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v23 + 24))(v23);
    }
  }

  return result;
}

void sub_29734BA60(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x29734BAC4);
}

void boost::signals2::detail::slot_call_iterator_t<boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::lock_next_callable(void *a1)
{
  v70[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*a1 == a1[3])
  {
    return;
  }

  v2 = a1;
  if (v1 == a1[1])
  {
    goto LABEL_87;
  }

  while (1)
  {
    v3 = v2[2];
    v4 = *(v3 + 264);
    if (v4)
    {
      v5 = *(v3 + 264);
      if (-24 * v4 < 0)
      {
        v6 = *(v3 + 256) + 24 * v4;
        v7 = *(v3 + 256);
        v8 = v6;
        do
        {
          v9 = *(v8 - 24);
          v8 -= 24;
          if (v9 == v9 >> 31)
          {
            v10 = *(v6 - 8);
            if (v10)
            {
              if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v10 + 16))(v10);
                if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v10 + 24))(v10);
                }
              }
            }
          }

          else
          {
            v11 = *(v6 - 16);
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          v6 = v8;
        }

        while (v8 > v7);
        v5 = *(v3 + 264);
        v1 = *v2;
      }

      *(v3 + 264) = v5 - v4;
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *__p = v12;
    v69 = v12;
    v66 = v12;
    v67 = v12;
    v64 = v12;
    v65 = v12;
    v62 = v12;
    v63 = v12;
    v60 = v12;
    v61 = v12;
    v58 = v12;
    v59 = v12;
    v13 = *(v1 + 16);
    __p[0] = 10;
    __p[1] = &v58;
    *&v69 = 0;
    *(&v69 + 1) = v13;
    (*(*v13 + 24))(v13);
    v14 = *v2;
    v15 = *(*v2 + 16);
    v16 = v2[2];
    v17 = *(v15 + 32);
    if (v17)
    {
      v18 = *v17;
      if (*v17 != v17[1])
      {
        v19 = (v16 + 8);
        while (1)
        {
          memset(v70, 170, 24);
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v18, v70);
          if ((*v18 ^ (*v18 >> 31)) == 2)
          {
            if (!(*(**(v18 + 8) + 24))(*(v18 + 8)))
            {
              goto LABEL_22;
            }
          }

          else
          {
            v20 = *(v18 + 16);
            if (v20 && atomic_load_explicit((v20 + 8), memory_order_acquire))
            {
LABEL_22:
              v21 = *(v16 + 264);
              if (v21 == *(v16 + 248))
              {
                if (v21 == -1)
                {
                  v34 = *(v16 + 256) - 24;
                  v35 = v70[1];
                  if (LODWORD(v70[0]) == SLODWORD(v70[0]) >> 31)
                  {
                    goto LABEL_48;
                  }
                }

                else
                {
                  if (4 * v21 <= (v21 + 1))
                  {
                    v22 = v21 + 1;
                  }

                  else
                  {
                    v22 = 4 * v21;
                  }

                  v23 = v19;
                  if (v22 >= 0xB)
                  {
                    if (v22 >= 0xAAAAAAAAAAAAAABLL)
                    {
                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v23 = operator new(24 * v22);
                  }

                  v24 = v19;
                  v57 = v22;
                  if (v21)
                  {
                    v25 = 0;
                    v26 = *(v16 + 256);
                    v27 = v26 + 24 * v21;
                    v28 = v23;
                    do
                    {
                      v30 = *(v26 + 8);
                      if (*v26 == *v26 >> 31)
                      {
                        v28[1] = v30;
                        v31 = *(v26 + 16);
                        v28[2] = v31;
                        if (v31)
                        {
                          atomic_fetch_add_explicit((v31 + 8), 1u, memory_order_relaxed);
                        }
                      }

                      else
                      {
                        v28[1] = (*(*v30 + 16))(v30);
                      }

                      v29 = *v26;
                      v26 += 24;
                      *v28 = v29 ^ (v29 >> 31);
                      v28 += 3;
                      v25 -= 24;
                    }

                    while (v26 != v27);
                  }

                  v19 = v24;
                  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(v24);
                  *(v16 + 248) = v22;
                  *(v16 + 256) = v23;
                  v34 = &v23[3 * *(v16 + 264)];
                  v35 = v70[1];
                  if (LODWORD(v70[0]) == SLODWORD(v70[0]) >> 31)
                  {
LABEL_48:
                    *(v34 + 8) = v35;
                    v37 = v70[2];
                    *(v34 + 16) = v70[2];
                    if (v37)
                    {
                      atomic_fetch_add_explicit((v37 + 8), 1u, memory_order_relaxed);
                    }

LABEL_53:
                    v32 = 0;
                    *v34 = LODWORD(v70[0]) ^ (SLODWORD(v70[0]) >> 31);
                    ++*(v16 + 264);
                    if (LODWORD(v70[0]) == SLODWORD(v70[0]) >> 31)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_54;
                  }
                }

                v36 = (*(*v35 + 16))(v35);
              }

              else
              {
                v34 = *(v16 + 256) + 24 * v21;
                v35 = v70[1];
                if (LODWORD(v70[0]) == SLODWORD(v70[0]) >> 31)
                {
                  goto LABEL_48;
                }

                v36 = (*(*v70[1] + 16))(v70[1]);
              }

              *(v34 + 8) = v36;
              goto LABEL_53;
            }
          }

          if (*(v15 + 24) == 1)
          {
            *(v15 + 24) = 0;
            boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v15, &v58);
          }

          v32 = 1;
          if (LODWORD(v70[0]) == SLODWORD(v70[0]) >> 31)
          {
LABEL_41:
            v33 = v70[2];
            if (v70[2])
            {
              if (atomic_fetch_add((v70[2] + 8), 0xFFFFFFFF) == 1)
              {
                (*(*v33 + 16))(v33);
                if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
                {
                  (*(*v33 + 24))(v33);
                }
              }
            }

            goto LABEL_56;
          }

LABEL_54:
          if (v70[1])
          {
            (*(*v70[1] + 8))(v70[1]);
          }

LABEL_56:
          if ((v32 & 1) == 0)
          {
            v18 += 24;
            if (v18 != *(*(v15 + 32) + 8))
            {
              continue;
            }
          }

          v2 = a1;
          v14 = *a1;
          v15 = *(*a1 + 16);
          v16 = a1[2];
          break;
        }
      }
    }

    if ((*(v15 + 24) & 1) == 0)
    {
      ++*(v16 + 284);
LABEL_69:
      v41 = 1;
      goto LABEL_70;
    }

    ++*(v16 + 280);
    v38 = *(v15 + 16);
    if (v38)
    {
      if (atomic_load_explicit((v38 + 8), memory_order_acquire))
      {
        goto LABEL_69;
      }

      v16 = v2[2];
      v14 = *v2;
    }

    v2[3] = v14;
    if (v2[1] == v14)
    {
      v46 = *(v16 + 288);
      if (v46)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v46, &v58);
      }

      v41 = 0;
      *(v16 + 288) = 0;
    }

    else
    {
      v39 = *(v14 + 16);
      v40 = *(v16 + 288);
      if (v40)
      {
        boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v40, &v58);
      }

      *(v16 + 288) = v39;
      v41 = 0;
      if (v39)
      {
        ++*(v39 + 28);
      }
    }

LABEL_70:
    (*(**(&v69 + 1) + 32))(*(&v69 + 1));
    v42 = __p[1];
    if (__p[1])
    {
      if (v69 > 0)
      {
        v44 = __p[1] + 16 * v69;
        do
        {
          v45 = *(v44 - 1);
          if (v45)
          {
            if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v45 + 16))(v45);
              if (atomic_fetch_add(v45 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v45 + 24))(v45);
              }
            }
          }

          v44 -= 16;
        }

        while (v44 > v42);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }

    v1 = *v2;
    v43 = v2[1];
    if (!v41)
    {
      break;
    }

    v1 = *(v1 + 8);
    *v2 = v1;
    if (v1 == v43)
    {
      v48 = v43;
      v47 = v2[3];
      if (v47 != v48)
      {
        goto LABEL_90;
      }

      return;
    }
  }

  if (v1 == v43)
  {
LABEL_87:
    v47 = v2[3];
    if (v47 == v1)
    {
      return;
    }

LABEL_90:
    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v66 = v49;
    v67 = v49;
    v64 = v49;
    v65 = v49;
    v62 = v49;
    v63 = v49;
    v60 = v49;
    v61 = v49;
    v58 = v49;
    v59 = v49;
    v50 = *(v47 + 16);
    __p[0] = 10;
    __p[1] = &v58;
    *&v69 = 0;
    *(&v69 + 1) = v50;
    (*(*v50 + 24))(v50);
    v51 = v2[2];
    v2[3] = v2[1];
    v52 = *(v51 + 288);
    if (v52)
    {
      boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(v52, &v58);
    }

    *(v51 + 288) = 0;
    (*(**(&v69 + 1) + 32))(*(&v69 + 1));
    v53 = __p[1];
    if (__p[1])
    {
      if (v69 > 0)
      {
        v54 = __p[1] + 16 * v69;
        do
        {
          v55 = *(v54 - 1);
          if (v55)
          {
            if (atomic_fetch_add(v55 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v55 + 16))(v55);
              if (atomic_fetch_add(v55 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v55 + 24))(v55);
              }
            }
          }

          v54 -= 16;
        }

        while (v54 > v53);
      }

      if (__p[0] >= 0xB)
      {
        operator delete(__p[1]);
      }
    }
  }
}

void sub_29734C4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

void sub_29734C530(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (v3)
    {
      v4 = -v3;
      v5 = (v2 + 16);
      do
      {
        if (*(v5 - 4) == *(v5 - 4) >> 31)
        {
          v6 = *v5;
          if (*v5 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        else
        {
          v7 = *(v5 - 1);
          if (v7)
          {
            (*(*v7 + 8))(v7);
          }
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
    }

    __cxa_rethrow();
  }

  JUMPOUT(0x29734C654);
}

void sub_29734C624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  __cxa_end_catch();
  boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(va);
  boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(v5 - 120);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(va1);
  _Unwind_Resume(a1);
}

void sub_29734C64C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy(void *a1)
{
  v1 = a1[31];
  if (v1)
  {
    v3 = a1[32];
    if (v3 && -24 * v3 < 0)
    {
      v5 = v1 + 24 * v3;
      v6 = v5 - 24 * v3;
      v7 = v5;
      do
      {
        v8 = *(v7 - 24);
        v7 -= 24;
        if (v8 == v8 >> 31)
        {
          v9 = *(v5 - 8);
          if (v9)
          {
            if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 16))(v9);
              if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v9 + 24))(v9);
              }
            }
          }
        }

        else
        {
          v10 = *(v5 - 16);
          if (v10)
          {
            (*(*v10 + 8))(v10);
          }
        }

        v5 = v7;
      }

      while (v7 > v6);
    }

    if (a1[30] >= 0xBuLL)
    {
      v4 = a1[31];

      operator delete(v4);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_29734C830(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x29734C820);
}

void *boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(void *result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(result[1], result[2]);
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t **a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19[8] = v4;
  v19[9] = v4;
  v19[6] = v4;
  v19[7] = v4;
  v19[4] = v4;
  v19[5] = v4;
  v19[2] = v4;
  v19[3] = v4;
  v19[0] = v4;
  v19[1] = v4;
  v5 = a1[3];
  v20 = 10;
  __p = v19;
  v22 = 0;
  v23 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v7, v10, v7 + 1);
      v11 = v8[3];
      *(v7 + 2) = v8[2];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v7);
    }

    v12 = **a1;
    v13 = v12[1];
    v18 = v13;
    if (v12 != v13)
    {
      do
      {
        while (1)
        {
          v14 = v13[2];
          if ((*(v14 + 24) & 1) == 0)
          {
            break;
          }

          v13 = v13[1];
          v18 = v13;
          if (v13 == v12)
          {
            goto LABEL_12;
          }
        }

        v13 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v12, (v14 + 64), &v18);
        v12 = **a1;
        v18 = v13;
      }

      while (v13 != v12);
LABEL_12:
      v13 = v12;
    }

    a1[2] = v13;
  }

  pthread_mutex_unlock(v23);
  v15 = __p;
  if (__p)
  {
    if (v22 > 0)
    {
      v16 = __p + 16 * v22;
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 16;
      }

      while (v16 > v15);
    }

    if (v20 >= 0xB)
    {
      operator delete(__p);
    }
  }
}

void sub_29734CADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  boost::detail::shared_count::~shared_count(v11);
  operator delete(v10);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(va);
  _Unwind_Resume(a1);
}

uint64_t boost::signals2::detail::slot_call_iterator_cache<boost::signals2::detail::void_type,boost::signals2::detail::variadic_slot_invoker<boost::signals2::detail::void_type,BOOL>>::~slot_call_iterator_cache(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 288);
  if (v2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8[8] = v3;
    v8[9] = v3;
    v8[6] = v3;
    v8[7] = v3;
    v8[4] = v3;
    v8[5] = v3;
    v8[2] = v3;
    v8[3] = v3;
    v8[0] = v3;
    v8[1] = v3;
    v9 = 10;
    __p = v8;
    v11 = 0;
    v12 = v2;
    (*(*v2 + 24))(v2);
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(*(a1 + 288), v8);
    (*(*v12 + 32))(v12);
    v4 = __p;
    if (__p)
    {
      if (v11 > 0)
      {
        v6 = __p + 16 * v11;
        do
        {
          v7 = *(v6 - 1);
          if (v7)
          {
            if (atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v7 + 16))(v7);
              if (atomic_fetch_add(v7 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v7 + 24))(v7);
              }
            }
          }

          v6 -= 16;
        }

        while (v6 > v4);
      }

      if (v9 >= 0xB)
      {
        operator delete(__p);
      }
    }
  }

  boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::auto_buffer_destroy((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_29734CD14(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3sys10UIObserverEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E39EA8;
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

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3sys10UIObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrIKN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297432E8ELL)
  {
    if (((v2 & 0x8000000297432E8ELL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297432E8ELL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297432E8ELL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void ***std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100](const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void AWDModule::create(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AWDModule::AWDModule(v4, v10);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2 + 72;
  v11 = *a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = v8;
  block[5] = &v11;
  v9 = *(v11 + 88);
  if (*(v11 + 96))
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    dispatch_sync(v9, block);
  }
}

void sub_29734D1C4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void AWDModule::init(AWDModule *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = this + 72;
  block[5] = &v3;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void AWDModule::~AWDModule(AWDModule *this)
{
  *this = &unk_2A1E39F38;
  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 17));
  v2 = *(this + 15);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C26DE80](this + 104);
  v3 = *(this + 12);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(this + 4);
    v8 = *(this + 3);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 3);
    }

    *(this + 4) = v6;
    operator delete(v8);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

{
  AWDModule::~AWDModule(this);

  operator delete(v1);
}

void *AWDModule::AWDModule(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E34AE8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E39F38;
  ctu::OsLogContext::OsLogContext(&v15, "com.apple.telephony.abm", "awd.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("awd.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 13, v14);
  MEMORY[0x29C26DE80](v14);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = &unk_2A1E39F38;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(&v15, v7);
    v9 = v15;
    v15 = 0uLL;
    v10 = *(&off_2A1399388 + 1);
    off_2A1399388 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v15 + 1);
    if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A1399388;
  }

  v12 = *(&off_2A1399388 + 1);
  v14[0] = v8;
  v14[1] = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 64))(v8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  a1[18] = 0;
  a1[17] = 0;
  a1[16] = a1 + 17;
  return a1;
}

void sub_29734D708(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  MEMORY[0x29C26DE80](v1 + 104);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

_WORD *AWDModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *AWDModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(1uLL);
  *a1 = v2;
  *v2 = 3;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AWDModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_29;
  v5 = *a3;
  v13[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[10];
  if (!v6 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[11];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E3A340;
  block[5] = v7;
  v17 = v9;
  p_shared_owners = &v9->__shared_owners_;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v10, block);
  v12 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_9:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void AWDModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AWDModule::registerCommandHandlers_sync(AWDModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEE68];
  v8 = strlen(*MEMORY[0x29EDBEE68]);
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

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v44 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v44) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5_6;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF110];
  v14 = strlen(*MEMORY[0x29EDBF110]);
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
    *(&__dst + 1) = v15;
    v44 = v17 | 0x8000000000000000;
    *&__dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v44) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6;
  v37[3] = &__block_descriptor_tmp_9_3;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBE8C0];
  v20 = strlen(*MEMORY[0x29EDBE8C0]);
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
    *(&__dst + 1) = v21;
    v44 = v23 | 0x8000000000000000;
    *&__dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v44) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10;
  v34[3] = &__block_descriptor_tmp_13_4;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBEEB0];
  v26 = strlen(*MEMORY[0x29EDBEEB0]);
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
    v44 = v29 | 0x8000000000000000;
    *&__dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v44) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14;
  v31[3] = &__block_descriptor_tmp_17_3;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29734E1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
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
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6(void *a1, xpc_object_t *a2, const void **a3)
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
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10(void *a1, xpc_object_t *a2, const void **a3)
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
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14(void *a1, xpc_object_t *a2, const void **a3)
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
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void AWDModule::sendPayload_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16sendPayload_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_11PayloadTypeERKNS0_6vectorIhNS0_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_19_2;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 8))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Cannot send payload because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_29734ED68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, ...)
{
  va_start(va, aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AWDModule::enableMetricSubmission_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 112);
  if (v5)
  {
    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN9AWDModule27enableMetricSubmission_syncENSt3__110shared_ptrIN3awd10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v12[3] = &__block_descriptor_tmp_22_1;
    v8 = *a4;
    if (*a4)
    {
      v8 = _Block_copy(v8);
    }

    v13 = v8;
    aBlock = _Block_copy(v12);
    (**v5)(v5, &v15, a3, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v9 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    else
    {
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    _Block_release(v10);
  }

  else
  {
    v11 = *(a1 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "Cannot enable metric submission because driver is unavailable", buf, 2u);
    }

    (*(*a4 + 16))();
  }
}

void sub_29734EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, ...)
{
  va_start(va, aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AWDModule::clearConfiguration_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule23clearConfiguration_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_25_0;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 16))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Cannot clear configuration because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_29734F174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, ...)
{
  va_start(va, aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AWDModule::updateProperties_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule21updateProperties_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_28_3;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 24))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v9, OS_LOG_TYPE_ERROR, "Cannot update properties because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_29734F370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, ...)
{
  va_start(va, aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AWDModule::queryMetric_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16queryMetric_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_10MetricInfoENS2_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_31_2;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 40))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v13, OS_LOG_TYPE_ERROR, "Cannot query metric because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_29734F588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, ...)
{
  va_start(va, aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AWDModule::appCheckIn_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 80);
  if (!v5 || (v6 = a2, v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v5)) == 0))
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

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x58uLL);
  v11 = v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = &unk_2A1E3A4D0;
  v12 = (v10 + 24);
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
    *(v11 + 24) = v13;
    dispatch_retain(v13);
    *(v11 + 33) = 0;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    *(v11 + 32) = v6;
    dispatch_release(v13);
  }

  else
  {
    *(v10 + 3) = 0;
    *(v10 + 33) = 0;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    v10[32] = v6;
  }

  *a3 = v12;
  a3[1] = v11;
  atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  v15 = (a1 + 136);
  v14 = *(a1 + 136);
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v16 = v14;
        v17 = *(v14 + 32);
        if (v17 <= v6)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_15;
        }
      }

      if (v17 >= v6)
      {
        break;
      }

      v14 = v16[1];
      if (!v14)
      {
        v15 = v16 + 1;
        goto LABEL_15;
      }
    }

    v21 = v16;
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v20 = v16[6];
    v21[5] = v12;
    v21[6] = v11;
    if (!v20)
    {
LABEL_21:
      v22 = *(a1 + 104);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = (a1 + 136);
LABEL_15:
    v18 = operator new(0x38uLL);
    *(v18 + 32) = v6;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v15 = v18;
    v19 = **(a1 + 128);
    if (v19)
    {
      *(a1 + 128) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 136), v18);
    ++*(a1 + 144);
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    v20 = *(v18 + 6);
    *(v18 + 5) = v12;
    *(v18 + 6) = v11;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v22 = *(a1 + 104);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
LABEL_22:
    v23 = awd::asString();
    *buf = 136315138;
    v48 = v23;
    _os_log_impl(&dword_297288000, v22, OS_LOG_TYPE_DEFAULT, "#I New app checking-in: %s", buf, 0xCu);
  }

LABEL_23:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_35_1;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v45 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v46 = _Block_copy(aBlock);
  awd::AppContext::setHandler();
  if (v46)
  {
    _Block_release(v46);
  }

  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 1174405120;
  v39[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36;
  v39[3] = &__block_descriptor_tmp_38;
  v39[4] = a1;
  v39[5] = v7;
  v40 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = v12;
  v42 = v11;
  atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  v43 = _Block_copy(v39);
  awd::AppContext::setHandler();
  if (v43)
  {
    _Block_release(v43);
  }

  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39;
  v34[3] = &__block_descriptor_tmp_43;
  v34[4] = a1;
  v34[5] = v7;
  v35 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v36 = v12;
  v37 = v11;
  atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  v38 = _Block_copy(v34);
  awd::AppContext::setHandler();
  if (v38)
  {
    _Block_release(v38);
  }

  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 1174405120;
  v29[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44;
  v29[3] = &__block_descriptor_tmp_48_2;
  v29[4] = a1;
  v29[5] = v7;
  v30 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = v12;
  v32 = v11;
  atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  v33 = _Block_copy(v29);
  awd::AppContext::setHandler();
  if (v33)
  {
    _Block_release(v33);
  }

  if (*(a1 + 112))
  {
    v24 = a3[1];
    v28 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    awd::AwdCommandDriver::checkIn();
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
      v25 = v32;
      if (!v32)
      {
        goto LABEL_41;
      }

LABEL_40:
      std::__shared_weak_count::__release_weak(v25);
      goto LABEL_41;
    }

LABEL_39:
    v25 = v32;
    if (!v32)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v26 = *(a1 + 104);
  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_39;
  }

  v27 = awd::asString();
  *buf = 136315138;
  v48 = v27;
  _os_log_error_impl(&dword_297288000, v26, OS_LOG_TYPE_ERROR, "Cannot check in context of app %s because driver is unavailable", buf, 0xCu);
  v25 = v32;
  if (v32)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  std::__shared_weak_count::__release_weak(v11);
  std::__shared_weak_count::__release_weak(v9);
}

void sub_29734FC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_weak(a39);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  v44 = *(v42 - 160);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v40);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v41);
  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void sub_29734FD1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v4 = a1[4];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[5])
      {
        v7 = *(v4 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v9 = awd::asString();
          _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Client state: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36(void *a1, uint64_t a2, int *a3)
{
  v49 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v46 = v8;
  if (!v8)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_56:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v38 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v38);
    }

    return;
  }

  v9 = *(v7 + 104);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *a3;
    *buf = 67109120;
    *&buf[4] = v10;
    _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Received trigger 0x%x", buf, 8u);
  }

  *buf = 0;
  v48 = 0;
  v11 = a1[8];
  if (v11)
  {
    v48 = std::__shared_weak_count::lock(v11);
    if (v48)
    {
      *buf = a1[7];
    }
  }

  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v12) == MEMORY[0x29EDCAA00])
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
  AppID = awd::AppContext::getAppID(*buf);
  v15 = xpc_int64_create(AppID);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBF8B0], v15);
  v16 = xpc_null_create();
  xpc_release(v15);
  xpc_release(v16);
  v17 = xpc_int64_create(a3[1]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5E8], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a3[2]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE680], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a3);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE5A0], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(*(a3 + 2));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE678], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_int64_create(*(a2 + 12));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE6D8], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_int64_create(*(a2 + 8));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE640], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  v29 = *MEMORY[0x29EDBE538];
  v30 = strlen(*MEMORY[0x29EDBE538]);
  if (v30 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v31 = v30;
  if (v30 >= 0x17)
  {
    if ((v30 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v30 | 7) + 1;
    }

    v32 = operator new(v34);
    __dst[1] = v31;
    v44 = v34 | 0x8000000000000000;
    __dst[0] = v32;
LABEL_38:
    memmove(v32, v29, v31);
    *(v31 + v32) = 0;
    object = v13;
    if (v13)
    {
      goto LABEL_33;
    }

LABEL_39:
    object = xpc_null_create();
    goto LABEL_40;
  }

  HIBYTE(v44) = v30;
  v32 = __dst;
  if (v30)
  {
    goto LABEL_38;
  }

  LOBYTE(__dst[0]) = 0;
  object = v13;
  if (!v13)
  {
    goto LABEL_39;
  }

LABEL_33:
  xpc_retain(v13);
LABEL_40:
  xpc::bridge(&cf, &object, v33);
  v35 = cf;
  if (cf && (v36 = CFGetTypeID(cf), v36 == CFDictionaryGetTypeID()))
  {
    v42 = v35;
    CFRetain(v35);
  }

  else
  {
    v42 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v7, __dst, &v42, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
  }

  xpc_release(v13);
  v37 = v48;
  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  v8 = v46;
  if (v46)
  {
    goto LABEL_56;
  }
}

void sub_2973503A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39(void *a1, int *a2, unsigned int a3, uint64_t a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (!v5)
  {
    return;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  v58 = v10;
  if (!v10)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_68:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v50 = v10;
      (v10->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v50);
    }

    return;
  }

  v11 = *(v9 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = a2[1];
    *buf = 67109376;
    *&buf[4] = a3;
    LOWORD(v60) = 1024;
    *(&v60 + 2) = v12;
    _os_log_impl(&dword_297288000, v11, OS_LOG_TYPE_DEFAULT, "#I Received segment %d of metric 0x%x", buf, 0xEu);
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  if (v13 || (v13 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v13) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v13);
      v14 = v13;
    }

    else
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v13 = 0;
  }

  xpc_release(v13);
  *buf = 0;
  v60 = 0;
  v15 = a1[8];
  if (v15)
  {
    v15 = std::__shared_weak_count::lock(v15);
    v60 = v15;
    if (v15)
    {
      v15 = a1[7];
      *buf = v15;
    }
  }

  AppID = awd::AppContext::getAppID(v15);
  v17 = xpc_int64_create(AppID);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBF8B0], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = xpc_int64_create(a2[3]);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE5E8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  v21 = xpc_int64_create(*a2);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE570], v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_int64_create(a2[1]);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE520], v23);
  v24 = xpc_null_create();
  xpc_release(v23);
  xpc_release(v24);
  v25 = xpc_BOOL_create(*(a2 + 20));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE4D0], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = xpc_BOOL_create(*(a2 + 21));
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6C8], v27);
  v28 = xpc_null_create();
  xpc_release(v27);
  xpc_release(v28);
  if (*(a2 + 28) == 1)
  {
    v29 = xpc_int64_create(a2[6]);
    if (!v29)
    {
      v29 = xpc_null_create();
    }

    xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6C0], v29);
    v30 = xpc_null_create();
    xpc_release(v29);
    xpc_release(v30);
  }

  v31 = xpc_data_create(*a4, *(a4 + 8) - *a4);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE4D8], v31);
  v32 = xpc_null_create();
  xpc_release(v31);
  xpc_release(v32);
  v33 = xpc_int64_create(a2[2]);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE640], v33);
  v34 = xpc_null_create();
  xpc_release(v33);
  xpc_release(v34);
  v35 = xpc_int64_create(a2[3]);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE6D8], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  v37 = xpc_int64_create(a3);
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE860], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_int64_create(a2[4]);
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(v14, *MEMORY[0x29EDBE5A0], v39);
  v40 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v40);
  v41 = *MEMORY[0x29EDBE518];
  v42 = strlen(*MEMORY[0x29EDBE518]);
  if (v42 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = v42;
  if (v42 >= 0x17)
  {
    if ((v42 | 7) == 0x17)
    {
      v46 = 25;
    }

    else
    {
      v46 = (v42 | 7) + 1;
    }

    v44 = operator new(v46);
    __dst[1] = v43;
    v56 = v46 | 0x8000000000000000;
    __dst[0] = v44;
LABEL_50:
    memmove(v44, v41, v43);
    *(v43 + v44) = 0;
    object = v14;
    if (v14)
    {
      goto LABEL_45;
    }

LABEL_51:
    object = xpc_null_create();
    goto LABEL_52;
  }

  HIBYTE(v56) = v42;
  v44 = __dst;
  if (v42)
  {
    goto LABEL_50;
  }

  LOBYTE(__dst[0]) = 0;
  object = v14;
  if (!v14)
  {
    goto LABEL_51;
  }

LABEL_45:
  xpc_retain(v14);
LABEL_52:
  xpc::bridge(&cf, &object, v45);
  v47 = cf;
  if (cf && (v48 = CFGetTypeID(cf), v48 == CFDictionaryGetTypeID()))
  {
    v54 = v47;
    CFRetain(v47);
  }

  else
  {
    v54 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v9, __dst, &v54, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v54)
  {
    CFRelease(v54);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__dst[0]);
  }

  v49 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v49->__on_zero_shared)(v49);
    std::__shared_weak_count::__release_weak(v49);
  }

  xpc_release(v14);
  v10 = v58;
  if (v58)
  {
    goto LABEL_68;
  }
}

void sub_297350C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, char a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44(void *a1, int *a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v39 = v6;
  if (!v6)
  {
    return;
  }

  if (!a1[5])
  {
LABEL_50:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v29 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v29);
    }

    return;
  }

  v7 = *(v5 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Received end of metric submission", buf, 2u);
  }

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
  *buf = 0;
  v37 = 0;
  v10 = a1[8];
  if (v10)
  {
    v10 = std::__shared_weak_count::lock(v10);
    v37 = v10;
    if (v10)
    {
      v10 = a1[7];
      *buf = v10;
    }
  }

  AppID = awd::AppContext::getAppID(v10);
  v12 = xpc_int64_create(AppID);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF8B0], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  v14 = xpc_int64_create(a2[2]);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE640], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a2[3]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE6D8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  v18 = xpc_int64_create(a2[4]);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v9, *MEMORY[0x29EDBE5A0], v18);
  v19 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v19);
  v20 = *MEMORY[0x29EDBEFE8];
  v21 = strlen(*MEMORY[0x29EDBEFE8]);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v21 | 7) + 1;
    }

    v23 = operator new(v25);
    __dst[1] = v22;
    v35 = v25 | 0x8000000000000000;
    __dst[0] = v23;
LABEL_32:
    memmove(v23, v20, v22);
    *(v22 + v23) = 0;
    object = v9;
    if (v9)
    {
      goto LABEL_27;
    }

LABEL_33:
    object = xpc_null_create();
    goto LABEL_34;
  }

  HIBYTE(v35) = v21;
  v23 = __dst;
  if (v21)
  {
    goto LABEL_32;
  }

  LOBYTE(__dst[0]) = 0;
  object = v9;
  if (!v9)
  {
    goto LABEL_33;
  }

LABEL_27:
  xpc_retain(v9);
LABEL_34:
  xpc::bridge(&cf, &object, v24);
  v26 = cf;
  if (cf && (v27 = CFGetTypeID(cf), v27 == CFDictionaryGetTypeID()))
  {
    v33 = v26;
    CFRetain(v26);
  }

  else
  {
    v33 = 0;
  }

  aBlock = 0;
  Service::broadcastEvent(v5, __dst, &v33, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst[0]);
  }

  v28 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  xpc_release(v9);
  v6 = v39;
  if (v39)
  {
    goto LABEL_50;
  }
}

void sub_29735128C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, xpc_object_t object, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a12);
  xpc_release(object);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a20);
  xpc_release(v20);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v21 - 64);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3A2F8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_297351488(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 40) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_297288000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AWDModule::registerCommandHandlers_sync(**a1);
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

void sub_297351838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
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
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    __p = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      __p = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
    xpc_release(__p);
    if (v13 != 1)
    {
      if (v13)
      {
        if ((v13 - 2) > 3u)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v42 = 0;
    v43 = 0;
    v15 = *(v2 + 136);
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v2 + 136;
    do
    {
      v17 = *(v15 + 32);
      v18 = v17 >= v13;
      v19 = v17 < v13;
      if (v18)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v16 != v2 + 136 && *(v16 + 32) <= v13)
    {
      v21 = *(v16 + 40);
      v20 = *(v16 + 48);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_32:
      AWDModule::appCheckIn_sync(v2, v13, &__p);
      v21 = __p;
      v20 = v31;
    }

    v42 = v21;
    v43 = v20;
    if (v21)
    {
      *(v45 + 6) = -534716416;
      v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE650]);
      __p = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        __p = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
      xpc_release(__p);
      memset(object, 170, sizeof(object));
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE4D8]);
      v40[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v40[0] = xpc_null_create();
      }

      __p = 0;
      v31 = 0;
      v32 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      xpc_release(v40[0]);
      v25 = object[0];
      if (object[1] != object[0] && v23 <= 2u)
      {
        v40[0] = v21;
        v40[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = MEMORY[0x29EDCA5F8];
        v31 = 1174405120;
        v32 = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke;
        v33 = &unk_2A1E3A3B0;
        v35 = v2;
        v26 = *(v1 + 32);
        if (v26)
        {
          v26 = _Block_copy(v26);
        }

        aBlock = v26;
        v37 = v21;
        v38 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = &v44;
        v27 = _Block_copy(&__p);
        v39 = v27;
        AWDModule::sendPayload_sync(v2, v40, v23, object, &v39);
        if (v27)
        {
          _Block_release(v27);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v28 = v38;
        if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        v25 = object[0];
      }

      if (v25)
      {
        object[1] = v25;
        operator delete(v25);
      }

      v20 = v43;
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_2:
  v3 = v45;
  if (*(v45 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object[0] = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, object);
    xpc_release(object[0]);
    xpc_release(v7);
  }

  _Block_object_dispose(&v44, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_297351DFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, uint64_t a25, void *__p, uint64_t a27)
{
  if (v25)
  {
    _Block_release(v25);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v26 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&object);
  if (__p)
  {
    a27 = __p;
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v27 - 112);
  _Block_object_dispose((v27 - 96), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[8];
    v15[0] = a1[7];
    v15[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E3A378;
    aBlock[4] = a1[4];
    v13 = 1;
    v5 = a1[6];
    if (v5)
    {
      v5 = _Block_copy(v5);
    }

    v12 = v5;
    v6 = _Block_copy(aBlock);
    v14 = v6;
    AWDModule::enableMetricSubmission_sync(v3, v15, 1, &v14);
    if (v6)
    {
      _Block_release(v6);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v7 = v12;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v12;
      if (v12)
      {
LABEL_11:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v8 = xpc_null_create();
    v9 = a1[6];
    v16 = v8;
    v10 = xpc_null_create();
    (*(v9 + 16))(v9, 3760250880, &v16);
    xpc_release(v16);
    xpc_release(v10);
  }
}

void sub_297352128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_297352228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(void *a1, void *a2)
{
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[7];
  v5 = a2[8];
  a1[6] = result;
  a1[7] = v6;
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  _Block_release(v2);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 != 1)
    {
      if (v13)
      {
        if (v13 - 2 > 3)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v15 = v2[17];
    if (v15)
    {
      v16 = v2 + 17;
      do
      {
        v17 = *(v15 + 32);
        v18 = v17 >= v13;
        v19 = v17 < v13;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v2 + 17 && *(v16 + 32) <= v13)
      {
        *(v30 + 6) = -534716416;
        v20 = v16[6];
        v28[0] = v16[5];
        v28[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        object[0] = MEMORY[0x29EDCA5F8];
        object[1] = 1174405120;
        object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke;
        object[3] = &unk_2A1E3A420;
        object[5] = v2;
        v21 = *(v1 + 32);
        if (v21)
        {
          v21 = _Block_copy(v21);
        }

        aBlock = v21;
        v26 = v16;
        object[4] = &v29;
        v22 = _Block_copy(object);
        v27 = v22;
        AWDModule::clearConfiguration_sync(v2, v28, &v27);
        if (v22)
        {
          _Block_release(v22);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }
    }
  }

LABEL_2:
  v3 = v30;
  if (*(v30 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v33 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v33);
    xpc_release(v33);
    xpc_release(v7);
  }

  _Block_object_dispose(&v29, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_29735264C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (v19)
  {
    _Block_release(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Block_object_dispose((v20 - 88), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[7];
    v5 = *(v4 + 48);
    v16[0] = *(v4 + 40);
    v16[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E3A3E8;
    aBlock[4] = a1[4];
    v14 = 1;
    v6 = a1[6];
    if (v6)
    {
      v6 = _Block_copy(v6);
    }

    v13 = v6;
    v7 = _Block_copy(aBlock);
    v15 = v7;
    AWDModule::enableMetricSubmission_sync(v3, v16, 0, &v15);
    if (v7)
    {
      _Block_release(v7);
    }

    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = v13;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = v13;
      if (v13)
      {
LABEL_11:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v9 = xpc_null_create();
    v10 = a1[6];
    v17 = v9;
    v11 = xpc_null_create();
    (*(v10 + 16))(v10, 3760250880, &v17);
    xpc_release(v17);
    xpc_release(v11);
  }
}

void sub_297352904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_297352A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    aBlock[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      aBlock[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(aBlock, 0xFFFFFFFFLL);
    xpc_release(aBlock[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v51 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5E8]);
          aBlock[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE680]);
          aBlock[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5A0]);
          aBlock[0] = v24;
          if (v24)
          {
            xpc_retain(v24);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v26 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE570]);
          aBlock[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v28 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE520]);
          aBlock[0] = v28;
          if (v28)
          {
            xpc_retain(v28);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v29 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v30 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE6D8]);
          aBlock[0] = v30;
          if (v30)
          {
            xpc_retain(v30);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v31 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v32 = *(v16 + 40);
          v33 = *(v16 + 48);
          v49[0] = v32;
          v49[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object = __PAIR64__(v29, v27);
          v43 = 0;
          v44 = v31;
          v45 = 0;
          v46 = -1431699456;
          v47 = -1431655936;
          v48 = -1431655936;
          v40[0] = v25;
          v40[1] = v21;
          v40[2] = v23;
          v40[3] = -1431655766;
          v41 = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke;
          aBlock[3] = &unk_2A1E3A458;
          aBlock[4] = &v50;
          v34 = *(v1 + 32);
          if (v34)
          {
            v34 = _Block_copy(v34);
          }

          v38 = v34;
          v35 = _Block_copy(aBlock);
          v39 = v35;
          AWDModule::queryMetric_sync(v2, v49, &object, v40, &v39);
          if (v35)
          {
            _Block_release(v35);
          }

          if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v38)
          {
            _Block_release(v38);
          }
        }
      }
    }
  }

  v3 = v51;
  if (*(v51 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &object);
    xpc_release(object);
    xpc_release(v7);
  }

  _Block_object_dispose(&v50, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_297352FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *aBlock, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a28);
  _Block_object_dispose((v27 - 120), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_29735321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v32 = 0;
  v33 = &v32;
  v34 = 0x2000000000;
  v35 = -534716414;
  if (MEMORY[0x29C26F9F0](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v33 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE910]);
          object[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5D0]);
          object[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          LOWORD(v36) = -21846;
          BYTE2(v36) = -86;
          LOBYTE(v36) = awd::AppContext::getProperties(*(v16 + 40));
          BYTE1(v36) = v23;
          BYTE2(v36) = v21;
          awd::AppContext::setProperties();
          v24 = *(v16 + 48);
          v31[0] = *(v16 + 40);
          v31[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object[0] = MEMORY[0x29EDCA5F8];
          object[1] = 1174405120;
          object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke;
          object[3] = &unk_2A1E3A490;
          object[4] = &v32;
          v25 = *(v1 + 32);
          if (v25)
          {
            v25 = _Block_copy(v25);
          }

          aBlock = v25;
          v26 = _Block_copy(object);
          v30 = v26;
          AWDModule::updateProperties_sync(v2, v31, &v30);
          if (v26)
          {
            _Block_release(v26);
          }

          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }
    }
  }

  v3 = v33;
  if (*(v33 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v36 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v36);
    xpc_release(v36);
    xpc_release(v7);
  }

  _Block_object_dispose(&v32, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_297353628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (v19)
  {
    _Block_release(v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a18);
  _Block_object_dispose(va, 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_297353824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<awd::AppContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E3A4D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::AppContext>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = a1[3];
  if (v8)
  {

    dispatch_release(v8);
  }
}

uint64_t __cxx_global_var_init_49()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

void StatsModule::create(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  StatsModule::StatsModule(v4, v11);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v9 = *a2 + 72;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN11StatsModule4initEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_10;
  v12[4] = v8;
  v13 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
  block[4] = v9;
  block[5] = &v13;
  v10 = *(v8 + 88);
  if (*(v8 + 96))
  {
    dispatch_async_and_wait(v10, block);
  }

  else
  {
    dispatch_sync(v10, block);
  }
}

void sub_297353AEC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void StatsModule::init(StatsModule *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11StatsModule4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_10;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22_0;
  block[4] = this + 72;
  block[5] = &v4;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t StatsModule::StatsModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E3EF20;
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
    *a1 = &unk_2A1E34AE8;
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
    *a1 = &unk_2A1E34AE8;
  }

  *a1 = &unk_2A1E3A520;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "stats.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("stats.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
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
  MEMORY[0x29C26DE70](a1 + 104, v9);
  MEMORY[0x29C26DE80](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E3A520;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void StatsModule::~StatsModule(StatsModule *this)
{
  *this = &unk_2A1E3A520;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v18, 2u);
  }

  v4 = *(this + 23);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 21);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 18));
  v6 = *(this + 14);
  if (v6)
  {
    v7 = *(this + 15);
    v8 = *(this + 14);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 14);
    }

    *(this + 15) = v6;
    operator delete(v8);
  }

  MEMORY[0x29C26DE80](v2);
  v10 = *(this + 12);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  *this = &unk_2A1E3EF20;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(this + 4);
    v15 = *(this + 3);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 3);
    }

    *(this + 4) = v13;
    operator delete(v15);
  }

  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

{
  StatsModule::~StatsModule(this);

  operator delete(v1);
}

void ___ZN11StatsModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Initializing", v3, 2u);
    StatsModule::initializeStats_sync(v1);
  }

  else
  {
    StatsModule::initializeStats_sync(v1);
  }
}

void StatsModule::initializeStats_sync(std::__shared_weak_count **this)
{
  StatsModule::addStatsToModule_sync(this, 0);
  StatsAWD::create(&v8);
  v2 = v8;
  v8 = 0uLL;
  v3 = this[21];
  *(this + 10) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v8 + 1);
  if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  AnalyticsHelper::create(&v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = this[23];
  *(this + 11) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(&v8 + 1);
  if (*(&v8 + 1))
  {
    if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

_WORD *StatsModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(2uLL);
  *a1 = v2;
  *v2 = 256;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *StatsModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v2 = operator new(1uLL);
  *a1 = v2;
  *v2 = 3;
  result = v2 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void StatsModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_3_1;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[10];
  if (!v6 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[11];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E3A6E8;
  block[5] = v7;
  v17 = v9;
  p_shared_owners = &v9->__shared_owners_;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v10, block);
  v12 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_9:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void StatsModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void StatsModule::registerCommandHandlers_sync(StatsModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297288000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEBD0];
  v8 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
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

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v17 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v17) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_5_7;
  v13[4] = this;
  v13[5] = v4;
  v14 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(v13);
  v15 = v12;
  Service::registerCommandHandler(this, &__dst, &v15);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29735487C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    _Block_release(v23);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v27 = v8;
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = a1[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C26F9F0](*a2) != MEMORY[0x29EDCAA00])
  {
    v11 = v7[13];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v26 = *MEMORY[0x29EDBEBD0];
      *object = 136315138;
      *&object[4] = v26;
      _os_log_error_impl(&dword_297288000, v11, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
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

    v12 = xpc_null_create();
    v13 = *a3;
    *object = v12;
    v14 = xpc_null_create();
    v13[2](v13, 3760250880, object);
    xpc_release(*object);
    xpc_release(v14);
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = *a2;
  if (v15)
  {
    xpc_retain(v15);
    v16 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v15 = xpc_null_create();
    v16 = *a3;
    if (*a3)
    {
LABEL_10:
      v17 = _Block_copy(v16);
      v18 = v7[10];
      if (!v18)
      {
LABEL_23:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_14;
    }
  }

  v17 = 0;
  v18 = v7[10];
  if (!v18)
  {
    goto LABEL_23;
  }

LABEL_14:
  v19 = v7[9];
  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  v22 = operator new(0x28uLL);
  *v22 = v7;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v15;
  v23 = xpc_null_create();
  v22[4] = v17;
  v24 = v7[11];
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v22;
  v25[1] = v19;
  v25[2] = v21;
  dispatch_async_f(v24, v25, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  xpc_release(v23);
  v9 = v27;
  if (v27)
  {
    goto LABEL_18;
  }
}

void sub_297354BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL StatsModule::reportStats_sync(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v3 = a2;
  v5 = *a3;
  v8 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  updated = StatsModule::updateData_sync(a1, v3, &v8);
  xpc_release(v5);
  return updated;
}

BOOL StatsModule::updateData_sync(uint64_t a1, int a2, void **a3)
{
  cf = 0;
  v48 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v7 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v8 = *(&off_2A1399498 + 1);
    off_2A1399498 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_2A1399498;
  }

  v10 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v11 = &__p[1] + 7;
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v12 = 7;
    v13 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v12 = 15;
    v13 = &__p[1] + 7;
  }

  *v13 = 0;
  v46 = v12;
  os_unfair_lock_lock((v6 + 40));
  Preferences::getPreference<__CFDictionary const*>(v6, __p, &cf);
  os_unfair_lock_unlock((v6 + 40));
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else if (!v10)
  {
LABEL_19:
    v14 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  v14 = cf;
  if (cf)
  {
LABEL_20:
    CFRetain(v14);
  }

LABEL_21:
  v15 = v48;
  v48 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = (a1 + 144);
  v16 = *(a1 + 144);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (v16)
  {
    while (1)
    {
      while (1)
      {
        v18 = v16;
        v19 = *(v16 + 32);
        if (v19 <= a2)
        {
          break;
        }

        v16 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_30;
        }
      }

      if (v19 >= a2)
      {
        break;
      }

      v16 = v18[1];
      if (!v16)
      {
        v17 = v18 + 1;
        goto LABEL_30;
      }
    }

    v34 = v18 + 5;
    v23 = v18[5];
    v22 = v34[1];
    v43 = v23;
    v44 = v22;
    if (v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = (a1 + 144);
LABEL_30:
    v20 = operator new(0x38uLL);
    *(v20 + 8) = a2;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = v18;
    *v17 = v20;
    v21 = **(a1 + 136);
    if (v21)
    {
      *(a1 + 136) = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v20);
    ++*(a1 + 152);
    v23 = *(v20 + 5);
    v22 = *(v20 + 6);
    v43 = v23;
    v44 = v22;
    if (v22)
    {
LABEL_33:
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (!v23)
  {
    goto LABEL_60;
  }

  v24 = v48;
  v42 = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  v25 = *a3;
  object = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v23 + 24))(__p, v23, &v42, &object);
  v26 = __p[0];
  v48 = __p[0];
  __p[0] = 0;
  if (v24)
  {
    CFRelease(v24);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }
  }

  xpc_release(object);
  object = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  if (!v26)
  {
LABEL_60:
    v33 = 0;
    if (!v22)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v27 = off_2A1399498;
  if (!off_2A1399498)
  {
    SharedData::create_default_global(__p);
    v28 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v29 = *(&off_2A1399498 + 1);
    off_2A1399498 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_2A1399498;
  }

  v31 = *(&off_2A1399498 + 1);
  if (*(&off_2A1399498 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399498 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v32 = 7;
    v11 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v32 = 15;
  }

  *v11 = 0;
  v46 = v32;
  v35 = v48;
  os_unfair_lock_lock((v27 + 40));
  if (v46 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v49, v36);
  v37 = v49[0];
  v49[1] = v35;
  if (v35)
  {
    CFRetain(v35);
    v38 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v37, v35, *(v27 + 8), *(v27 + 16), *MEMORY[0x29EDB8FA8]);
    v33 = CFPreferencesSynchronize(*(v27 + 8), *(v27 + 16), v38) != 0;
    CFRelease(v35);
    MEMORY[0x29C26DF80](v49);
    os_unfair_lock_unlock((v27 + 40));
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v22 = v44;
      if (!v44)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v33 = 0;
  MEMORY[0x29C26DF80](v49);
  os_unfair_lock_unlock((v27 + 40));
  if (v46 < 0)
  {
    goto LABEL_73;
  }

LABEL_70:
  if (v31)
  {
    goto LABEL_74;
  }

LABEL_75:
  v22 = v44;
  if (!v44)
  {
    goto LABEL_77;
  }

LABEL_76:
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v39 = v48;
    if (!v48)
    {
      return v33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v39 = v48;
  if (v48)
  {
LABEL_78:
    CFRelease(v39);
  }

  return v33;
}

void sub_297355310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

void sub_2973553F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void StatsModule::getAllStats_sync(StatsModule *this@<X0>, CFMutableDictionaryRef *a2@<X8>)
{
  v27 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v27 = Mutable;
  }

  v7 = *(this + 17);
  v8 = this + 144;
  if (v7 != this + 144)
  {
    while (1)
    {
      v26 = 0;
      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v9 = off_2A1399498;
      if (off_2A1399498)
      {
        v10 = *(&off_2A1399498 + 1);
        if (!*(&off_2A1399498 + 1))
        {
          goto LABEL_9;
        }

LABEL_8:
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_9;
      }

      SharedData::create_default_global(__p);
      v13 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v14 = *(&off_2A1399498 + 1);
      off_2A1399498 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

LABEL_37:
      v9 = off_2A1399498;
      v10 = *(&off_2A1399498 + 1);
      if (*(&off_2A1399498 + 1))
      {
        goto LABEL_8;
      }

LABEL_9:
      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v11 = 7;
        v12 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v11 = 15;
        v12 = &__p[1] + 7;
      }

      *v12 = 0;
      v25 = v11;
      os_unfair_lock_lock((v9 + 40));
      Preferences::getPreference<__CFDictionary const*>(v9, __p, &v26);
      os_unfair_lock_unlock((v9 + 40));
      if (v25 < 0)
      {
        operator delete(__p[0]);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else if (!v10)
      {
        goto LABEL_22;
      }

      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_22:
        v17 = v26;
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v17 = v26;
      if (!v26)
      {
        goto LABEL_29;
      }

LABEL_23:
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v18 = 7;
        v19 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v18 = 15;
        v19 = &__p[1] + 7;
      }

      *v19 = 0;
      v25 = v18;
      ctu::cf::insert<char const*,__CFDictionary const*>(v27, __p, v17, v4, v16);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        v20 = *(v7 + 1);
        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      operator delete(__p[0]);
      v20 = *(v7 + 1);
      if (!v20)
      {
        do
        {
LABEL_33:
          v21 = *(v7 + 2);
          v22 = *v21 == v7;
          v7 = v21;
        }

        while (!v22);
        goto LABEL_5;
      }

      do
      {
LABEL_30:
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
LABEL_5:
      v7 = v21;
      if (v21 == v8)
      {
        v6 = v27;
        break;
      }
    }
  }

  if (v6 && (v23 = CFGetTypeID(v6), v23 == CFDictionaryGetTypeID()))
  {
    *a2 = v6;
    CFRetain(v6);
  }

  else
  {
    *a2 = 0;
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void StatsModule::addStatsToModule_sync(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v24 = *MEMORY[0x29EDCA608];
  v20 = 0;
  v21 = 0;
  Stats::create(a2, __p);
  v5 = __p[0];
  v4 = __p[1];
  v20 = __p[0];
  v21 = __p[1];
  if (__p[0])
  {
    v6 = *(__p[0] + 12);
    v8 = (a1 + 144);
    v7 = *(a1 + 144);
    if (v7)
    {
      while (1)
      {
        while (1)
        {
          v9 = v7;
          v10 = *(v7 + 32);
          if (v6 >= v10)
          {
            break;
          }

          v7 = *v9;
          v8 = v9;
          if (!*v9)
          {
            goto LABEL_9;
          }
        }

        if (v10 >= v6)
        {
          break;
        }

        v7 = v9[1];
        if (!v7)
        {
          v8 = v9 + 1;
          goto LABEL_9;
        }
      }

      v11 = v9;
      if (!__p[1])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = (a1 + 144);
LABEL_9:
      v11 = operator new(0x38uLL);
      *(v11 + 8) = v6;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v9;
      *v8 = v11;
      v12 = **(a1 + 136);
      if (v12)
      {
        *(a1 + 136) = v12;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v11);
      ++*(a1 + 152);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
LABEL_13:
    v13 = *(v11 + 6);
    *(v11 + 5) = v5;
    *(v11 + 6) = v4;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    goto LABEL_17;
  }

  v14 = *(a1 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (v2)
    {
      v16 = __p + 7;
      qmemcpy(__p, "UNKNOWN", 7);
      v17 = 7;
    }

    else
    {
      v16 = &__p[1] + 7;
      qmemcpy(__p, "Boot Statistics", 15);
      v17 = 15;
    }

    *v16 = 0;
    v19 = v17;
    *buf = 136315138;
    v23 = __p;
    _os_log_error_impl(&dword_297288000, v14, OS_LOG_TYPE_ERROR, "Failed to create stats of %s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_17:
  v15 = v21;
  if (v21)
  {
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

void sub_297355A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297355A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StatsModule::updateAnalyticsData_sync(uint64_t a1, void **a2)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *a2;
    object = v3;
    if (v3 && MEMORY[0x29C26F9F0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    AnalyticsHelper::updateData(v2, &object);
    xpc_release(object);
  }

  else
  {
    v4 = *(a1 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Analytics object has not created yet", buf, 2u);
    }
  }
}

void StatsModule::reportAWD_sync(uint64_t a1, int a2, void **a3)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = *a3;
    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    v7.fObj = &object;
    StatsAWD::submit(v4, a2, v7);
    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = a2;
      _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "AWD object has not created yet. 0x%x metric ID cannot be submitted", buf, 8u);
    }
  }
}

void sub_297355C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E3A6A0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_297355DBC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  StatsModule::registerCommandHandlers_sync(**a1);
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

void sub_297356064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
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
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t *a1)
{
  v39 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v36 = v1;
  v2 = *v1;
  v3 = *MEMORY[0x29EDBE588];
  if (xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE588]))
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE580]);
    v5 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v5 = xpc_null_create();
    }

    v8 = MEMORY[0x29C26F9F0](v5);
    v9 = MEMORY[0x29EDCAA00];
    if (v8 != MEMORY[0x29EDCAA00] && MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCA9E0])
    {
      v6 = 3760250880;
      v10 = *(v2 + 104);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Data type should be dictionary/array", buf, 2u);
      }

      goto LABEL_63;
    }

    memset(buf, 170, 24);
    v11 = xpc_dictionary_get_value(*(v1 + 24), v3);
    *object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(buf, object, "", v12);
    xpc_release(*object);
    v13 = *MEMORY[0x29EDBF8E0];
    v14 = strlen(*MEMORY[0x29EDBF8E0]);
    v15 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      if (v14 == *&buf[8])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v13, v14))
        {
LABEL_41:
          v23 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
          *object = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            *object = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          *object = v5;
          if (v5 && MEMORY[0x29C26F9F0](v5) == v9)
          {
            xpc_retain(v5);
            v26 = v5;
          }

          else
          {
            v26 = xpc_null_create();
            *object = v26;
          }

          v34 = StatsModule::reportStats_sync(v2, v25, object);
          xpc_release(v26);
          *object = 0;
          if (v34)
          {
            v6 = 0;
          }

          else
          {
            v6 = 3760250880;
          }

          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }
      }
    }

    else if (v14 == buf[23] && !memcmp(buf, v13, v14))
    {
      goto LABEL_41;
    }

    v16 = *MEMORY[0x29EDBF880];
    v17 = strlen(*MEMORY[0x29EDBF880]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v17 == *&buf[8])
      {
        if (v17 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v16, v17))
        {
          goto LABEL_43;
        }
      }
    }

    else if (v17 == v15 && !memcmp(buf, v16, v17))
    {
LABEL_43:
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
      *object = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        *object = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      *object = v5;
      if (v5)
      {
        xpc_retain(v5);
        v28 = v5;
      }

      else
      {
        v28 = xpc_null_create();
        *object = v28;
      }

      StatsModule::reportAWD_sync(v2, v27, object);
      xpc_release(v28);
LABEL_60:
      v6 = 0;
      *object = 0;
LABEL_61:
      if (buf[23] < 0)
      {
LABEL_62:
        operator delete(*buf);
      }

LABEL_63:
      xpc_release(v5);
      goto LABEL_64;
    }

    v6 = 3760250880;
    v18 = *MEMORY[0x29EDBE550];
    v19 = strlen(*MEMORY[0x29EDBE550]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v19 != *&buf[8])
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_46;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*buf, v18, v19))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 != v15)
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      }

      if (memcmp(buf, v18, v19))
      {
LABEL_31:
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        if ((v15 & 0x80000000) != 0)
        {
LABEL_46:
          v22 = *buf;
LABEL_47:
          *object = 136315138;
          *&object[4] = v22;
          _os_log_impl(&dword_297288000, v20, OS_LOG_TYPE_DEFAULT, "#I Unrecognized stats type: %s", object, 0xCu);
          if (buf[23] < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_40:
        v22 = buf;
        goto LABEL_47;
      }
    }

    *object = v5;
    if (v5)
    {
      xpc_retain(v5);
      v21 = v5;
    }

    else
    {
      v21 = xpc_null_create();
      *object = v21;
    }

    StatsModule::updateAnalyticsData_sync(v2, object);
    xpc_release(v21);
    goto LABEL_60;
  }

  v6 = 3760250880;
  v7 = *(v2 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "Stats type is missing!", buf, 2u);
  }

LABEL_64:
  if (*(v1 + 32))
  {
    v29 = xpc_null_create();
    v30 = *(v1 + 32);
    *buf = v29;
    v31 = xpc_null_create();
    (*(v30 + 16))(v30, v6, buf);
    xpc_release(*buf);
    xpc_release(v31);
  }

  _ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(&v36);
  v32 = a1;
  if (a1)
  {
    v33 = a1[2];
    if (v33)
    {
      if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v33->__on_zero_shared)(v33);
        std::__shared_weak_count::__release_weak(v33);
        v32 = a1;
      }
    }

    operator delete(v32);
  }
}

void sub_297356710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL ctu::cf::insert<char const*,__CFDictionary const*>(__CFDictionary *a1, const __CFString **a2, const void *a3, uint64_t a4, const __CFAllocator *a5)
{
  v10 = 0;
  ctu::cf::convert_copy(&v10, a2, 0x8000100, a4, a5);
  v7 = v10;
  v10 = a3;
  if (!a3)
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

LABEL_7:
    CFRelease(v7);
    return v8;
  }

  CFRetain(a3);
  v8 = v7 != 0;
  if (v7)
  {
    CFDictionaryAddValue(a1, v7, a3);
  }

  CFRelease(a3);
  if (v7)
  {
    goto LABEL_7;
  }

  return v8;
}

void sub_2973569A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

const char *abm::asString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE67FA0[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE67FF0[a1];
  }
}

const char *abm::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE68010[a1 - 1];
  }
}

{
  if ((a1 - 1) > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE68028[a1 - 1];
  }
}

PowerStats *PowerStats::create@<X0>(PowerStats **a1@<X8>)
{
  v2 = operator new(0x88uLL);
  PowerStats::PowerStats(v2);
  *a1 = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E3A728;
  *(result + 1) = 0;
  *(result + 2) = 0;
  *(result + 3) = v2;
  a1[1] = result;
  return result;
}

void sub_297356B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void PowerStats::PowerStats(PowerStats *this)
{
  ctu::OsLogContext::OsLogContext(&v7, "com.apple.telephony.abm", "power.stats");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this, v8);
  MEMORY[0x29C26DE80](v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *(this + 120) = 0u;
  *(this + 6) = 0;
  *(this + 5) = this + 48;
  *(this + 92) = 0x200000001;
  *(this + 25) = -536870144;
  *(this + 104) = 0u;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 40, 0);
  *(this + 5) = this + 48;
  *(this + 7) = 0;
  *(this + 6) = 0;
  v6 = 11;
  strcpy(__p, "power.stats");
  AppleBasebandManager::create();
  v2 = v7;
  v7 = 0uLL;
  v3 = *(this + 16);
  *(this + 120) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v7 + 1);
  if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297356D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v17);
  dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(v18);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v16, *(v15 + 48));
  MEMORY[0x29C26DE80](v15);
  _Unwind_Resume(a1);
}

void PowerStats::clear(PowerStats *this)
{
  v2 = (this + 48);
  v1 = *(this + 6);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 40, v1);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
}

void PowerStats::~PowerStats(PowerStats *this)
{
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 14);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    _Block_release(v4);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 40, *(this + 6));

  JUMPOUT(0x29C26DE80);
}

void PowerStats::gotAssertion(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 88) = 1;
  v3 = *(a1 + 96);
  if (v3 == 1)
  {
    ++*(a1 + 16);
    if (*(a2 + 23) < 0)
    {
      v4 = a1;
      std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
      a1 = v4;
    }

    else
    {
      v8 = *a2;
    }

    v5 = &v8;
    PowerStats::submitLowPowerEventMetric_sync(a1, 0, 1u, &v8);
    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_18;
    }
  }

  else if (!v3)
  {
    if (a3 == 1)
    {
      ++*(a1 + 12);
      if (*(a2 + 23) < 0)
      {
        v6 = a1;
        std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
        a1 = v6;
      }

      else
      {
        v10 = *a2;
      }

      v5 = &v10;
      PowerStats::submitLowPowerEventMetric_sync(a1, 2u, 0, &v10);
      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_18:
        operator delete(v5->__r_.__value_.__l.__data_);
      }
    }

    else
    {
      ++*(a1 + 8);
      if (*(a2 + 23) < 0)
      {
        v7 = a1;
        std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
        a1 = v7;
      }

      else
      {
        v9 = *a2;
      }

      v5 = &v9;
      PowerStats::submitLowPowerEventMetric_sync(a1, 0, 0, &v9);
      if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_18;
      }
    }
  }
}

void PowerStats::submitLowPowerEventMetric_sync(uint64_t a1, unsigned int a2, unsigned int a3, const char *a4)
{
  v8 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30[0]) = 0;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting AWD of low power event stats", v30, 2u);
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

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBEAD8], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  v16 = xpc_int64_create(a3);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBEAE8], v16);
  v17 = xpc_null_create();
  xpc_release(v16);
  xpc_release(v17);
  if (a4[23] < 0)
  {
    a4 = *a4;
  }

  v18 = xpc_string_create(a4);
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(v13, *MEMORY[0x29EDBE7F0], v18);
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
  v22 = xpc_int64_create(524464);
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
  if (*(a1 + 104) && *(a1 + 112))
  {
    if (v11)
    {
      xpc_retain(v11);
      v26 = v11;
      v27 = *(a1 + 104);
      if (v27)
      {
LABEL_34:
        v28 = _Block_copy(v27);
        goto LABEL_37;
      }
    }

    else
    {
      v26 = xpc_null_create();
      v27 = *(a1 + 104);
      if (v27)
      {
        goto LABEL_34;
      }
    }

    v28 = 0;
LABEL_37:
    v29 = *(a1 + 112);
    v30[0] = MEMORY[0x29EDCA5F8];
    v30[1] = 1174405120;
    v30[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3xpc4dictEEEclIJS2_EEEvDpT__block_invoke;
    v30[3] = &__block_descriptor_tmp_30;
    if (v28)
    {
      aBlock = _Block_copy(v28);
      object = v26;
      if (v26)
      {
LABEL_39:
        xpc_retain(v26);
LABEL_42:
        dispatch_async(v29, v30);
        xpc_release(object);
        object = 0;
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v28)
        {
          _Block_release(v28);
        }

        xpc_release(v26);
        goto LABEL_47;
      }
    }

    else
    {
      aBlock = 0;
      object = v26;
      if (v26)
      {
        goto LABEL_39;
      }
    }

    object = xpc_null_create();
    goto LABEL_42;
  }

LABEL_47:
  xpc_release(v13);
  xpc_release(v11);
}

void PowerStats::reportSystemStateChange(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(result + 100) = *(a3 + 2);
  *(result + 92) = v4;
  v5 = *(a3 + 2);
  if (v5 != -536870112)
  {
    if (v5 != -536870272)
    {
      return;
    }

    if (*(a3 + 1) == 1)
    {
      if (*(result + 88) == 1)
      {
        v6 = *result;
        if (os_log_type_enabled(*result, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Forced sleep while power assertion(s) held ", buf, 2u);
        }

        ++*(result + 20);
        v16 = 0;
        LOBYTE(__p) = 0;
        PowerStats::submitLowPowerEventMetric_sync(result, 1u, 1u, &__p);
        if (v16 < 0)
        {
          operator delete(__p);
        }
      }

      ++*(result + 28);
      SystemTime = TelephonyUtilGetSystemTime();
      *(result + 72) = SystemTime;
      v8 = *(result + 64);
      if (!v8)
      {
        return;
      }
    }

    else
    {
      ++*(result + 32);
      SystemTime = TelephonyUtilGetSystemTime();
      *(result + 72) = SystemTime;
      v8 = *(result + 64);
      if (!v8)
      {
        return;
      }
    }

    *(result + 80) = (SystemTime - v8) / 0x3E8u;
    return;
  }

  ++*(result + 24);
  v10 = TelephonyUtilGetSystemTime();
  *(result + 64) = v10;
  v11 = *(result + 72);
  if (v11)
  {
    v12 = (v10 - v11) / 0x3E8u;
    *(result + 84) = v12;
  }

  else
  {
    v12 = *(result + 84);
  }

  v13 = *(a2 + 4) == 1;
  v14 = *(result + 80);

  PowerStats::submitWakeInfoMetric_sync(result, v13, v12, v14);
}