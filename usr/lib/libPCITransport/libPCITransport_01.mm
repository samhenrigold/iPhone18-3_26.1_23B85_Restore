void sub_297F82BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3pci9transport2bh17registerTimeEventE22PCITransportTimeDomainU13block_pointerFvP21PCITransportTimeEventE_block_invoke(uint64_t a1, int a2, void *a3, unsigned int a4)
{
  v19 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = _TelephonyUtilDebugPrintError("PCITransport", "%s: got time event for domain %u with status 0x%08x\n", "registerTimeEvent_block_invoke", *(a1 + 40), a2);
    v7 = pci::log::get(v6);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v8 = *(a1 + 40);
    *buf = 67109376;
    v17 = v8;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = a2;
    v9 = "got time event for domain %u with status 0x%08x";
    v10 = v7;
LABEL_7:
    _os_log_impl(&dword_297F72000, v10, OS_LOG_TYPE_INFO, v9, buf, 0xEu);
    return;
  }

  if (a4 <= 3)
  {
    v12 = _TelephonyUtilDebugPrintError("PCITransport", "%s: got time event for domain %u with only %u args\n", "registerTimeEvent_block_invoke", *(a1 + 40), a4);
    v13 = pci::log::get(v12);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v14 = *(a1 + 40);
    *buf = 67109376;
    v17 = v14;
    LOWORD(v18) = 1024;
    *(&v18 + 2) = a4;
    v9 = "got time event for domain %u with only %u args";
    v10 = v13;
    goto LABEL_7;
  }

  buf[0] = *(a1 + 40);
  v15 = a3[1];
  buf[1] = *a3;
  *&buf[2] = 0;
  v17 = v15;
  v18 = a3[3] | (a3[2] << 32);
  (*(*(a1 + 32) + 16))();
}

void pci::transport::bh::eventNotification(pci::transport::bh *this, void *a2, uint64_t a3, void **a4)
{
  if (!this)
  {
    pci::transport::bh::eventNotification();
  }

  _Block_copy(this);
  (*(this + 2))(this, a2, a3, a4);

  _Block_release(this);
}

uint64_t pci::transport::bh::deregisterTimeEvent(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v23 = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 96);
  if (v4)
  {
    v5 = a1 + 96;
    do
    {
      if (*(v4 + 32) >= v2)
      {
        v5 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < v2));
    }

    while (v4);
    if (v5 != a1 + 96 && *(v5 + 32) <= v2)
    {
      v19[0] = 0;
      v19[1] = v19;
      v19[2] = 0x3002000000;
      v19[3] = __Block_byref_object_copy__66;
      v10 = *(v5 + 40);
      v19[4] = __Block_byref_object_dispose__67;
      v19[5] = v10;
      *(v5 + 40) = 0;
      std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer((a1 + 88), v5);
      std::__destroy_at[abi:ne200100]<std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,0>(v5 + 32);
      operator delete(v5);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3802000000;
      *&v21 = __Block_byref_object_copy__68;
      *(&v21 + 1) = __Block_byref_object_dispose__69;
      std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(&v22, a1);
      v17[0] = 0;
      v17[1] = v17;
      v17[2] = 0x2000000000;
      v18 = 0;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2000000000;
      v16 = 0;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 0x40000000;
      aBlock[2] = ___ZN3pci9transport2bh19deregisterTimeEventE22PCITransportTimeDomain_block_invoke;
      aBlock[3] = &unk_29EE87180;
      aBlock[7] = &v13;
      aBlock[8] = a1;
      aBlock[4] = buf;
      aBlock[5] = v19;
      aBlock[6] = v17;
      v11 = _Block_copy(aBlock);
      v14[3] = v11;
      operator new();
    }
  }

  v6 = _TelephonyUtilDebugPrintError("PCITransport", "%s::%s::%p::%d: time event not registered for domain %u\n", "bh", "deregisterTimeEvent", a1, *(a1 + 28), v2);
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 28);
    *buf = 136316162;
    *&buf[4] = "bh";
    *&buf[12] = 2048;
    *&buf[14] = a1;
    *&buf[22] = 1024;
    LODWORD(v21) = v8;
    WORD2(v21) = 2080;
    *(&v21 + 6) = "deregisterTimeEvent";
    HIWORD(v21) = 1024;
    LODWORD(v22) = v2;
    _os_log_impl(&dword_297F72000, v7, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: time event not registered for domain %u", buf, 0x2Cu);
  }

  os_unfair_lock_unlock((a1 + 24));
  return 3758097090;
}

void sub_297F83300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __Block_byref_object_copy__66(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__67(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t __Block_byref_object_copy__68(uint64_t result, uint64_t a2)
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

void __Block_byref_object_dispose__69(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ___ZN3pci9transport2bh19deregisterTimeEventE22PCITransportTimeDomain_block_invoke(void *a1)
{
  v2 = a1[8];
  os_unfair_lock_lock((v2 + 24));
  dispatch_assert_queue_V2(*(v2 + 16));
  v3 = *(a1[6] + 8);
  if (*(v3 + 24) == 1)
  {
    ___ZN3pci9transport2bh19deregisterTimeEventE22PCITransportTimeDomain_block_invoke_cold_1();
  }

  *(v3 + 24) = 1;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;
  if (v5)
  {
    _Block_release(v5);
  }

  std::list<void const*>::remove((v2 + 64), (*(a1[7] + 8) + 24));

  os_unfair_lock_unlock((v2 + 24));
}

void pci::transport::bh::mapRegion(_DWORD *a1, uint64_t *a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a5;
  v9 = a3;
  v30 = *MEMORY[0x29EDCA608];
  v12 = _TelephonyUtilDebugPrintError("PCITransport", "%s::%s::%p::%d: region %u, buffer %p, length %u\n", "bh", "mapRegion", a1, a1[7], a3, a4, a5);
  v13 = pci::log::get(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = a1[7];
    buf[0] = 136316674;
    *&buf[1] = "bh";
    v20 = 2048;
    v21 = a1;
    v22 = 1024;
    *v23 = v14;
    *&v23[4] = 2080;
    *&v23[6] = "mapRegion";
    v24 = 1024;
    v25 = v9;
    v26 = 2048;
    v27 = a4;
    v28 = 1024;
    v29 = v7;
    _os_log_impl(&dword_297F72000, v13, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: region %u, buffer %p, length %u", buf, 0x3Cu);
  }

  v15 = *a2;
  v16 = a2[1];
  v17[0] = v15;
  v17[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  pci::transport::bh::generateCallback(a1, v17, "map region", 0, &aBlock);
}

void sub_297F83784(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void pci::transport::bh::unmapRegion(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v4[0] = *a2;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  pci::transport::bh::generateCallback(a1, v4, "unmap region", 0, &aBlock);
}

void sub_297F839F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x29EDC95A8] + 64;
  a1[14] = MEMORY[0x29EDC95A8] + 64;
  v3 = *(MEMORY[0x29EDC9538] + 16);
  v4 = *(MEMORY[0x29EDC9538] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x29EDC95A8] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_297F83B84(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x29C27D310](v1);
  _Unwind_Resume(a1);
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C27D2C0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x29EDC9570] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_297F83C40(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x29C27D220](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x29EDC93D0]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x29C27D230](v13);
  return a1;
}

void sub_297F83EB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x29C27D230](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x297F83E90);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_297F840E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(void *a1, void *a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_297F842E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<pci::transport::bh>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::transport::bh **std::unique_ptr<pci::transport::bh>::~unique_ptr[abi:ne200100](pci::transport::bh **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::bh::~bh(v2);
    MEMORY[0x29C27D350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::transport::bh *,std::shared_ptr<pci::transport::bh>::__shared_ptr_default_delete<pci::transport::bh,pci::transport::bh>,std::allocator<pci::transport::bh>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

pci::transport::bh *std::__shared_ptr_pointer<pci::transport::bh *,std::shared_ptr<pci::transport::bh>::__shared_ptr_default_delete<pci::transport::bh,pci::transport::bh>,std::allocator<pci::transport::bh>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::bh::~bh(result);

    JUMPOUT(0x29C27D350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::bh *,std::shared_ptr<pci::transport::bh>::__shared_ptr_default_delete<pci::transport::bh,pci::transport::bh>,std::allocator<pci::transport::bh>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,0>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *std::map<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__tree_node<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void *std::map<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__tree_node<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,void *> *,long>>>(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::__emplace_hint_unique_key_args<PCITransportTimeDomain,std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>> const&>(v5, (v5 + 8), v4 + 8, (v4 + 8));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::__emplace_hint_unique_key_args<PCITransportTimeDomain,std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>> const&>(uint64_t **a1, uint64_t *a2, int *a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<PCITransportInterface,char const*>,std::__map_value_compare<PCITransportInterface,std::__value_type<PCITransportInterface,char const*>,std::less<PCITransportInterface>,true>,std::allocator<std::__value_type<PCITransportInterface,char const*>>>::__find_equal<PCITransportInterface>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  *(a1 + 8) = v3;
  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

uint64_t *std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::__emplace_unique_key_args<PCITransportTimeDomain,std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::__map_value_compare<PCITransportTimeDomain,std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,std::less<PCITransportTimeDomain>,true>,std::allocator<std::__value_type<PCITransportTimeDomain,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>>>::__erase_unique<PCITransportTimeDomain>(uint64_t **a1, int *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 1;
  do
  {
    if (*(v2 + 8) >= v3)
    {
      v4 = v2;
    }

    v2 = v2[*(v2 + 8) < v3];
  }

  while (v2);
  if (v4 == a1 + 1 || v3 < *(v4 + 8))
  {
    return 0;
  }

  std::__tree<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::__map_value_compare<void const*,std::__value_type<void const*,std::shared_ptr<pci::transport::th>>,std::less<void const*>,true>,std::allocator<std::__value_type<void const*,std::shared_ptr<pci::transport::th>>>>::__remove_node_pointer(a1, v4);
  std::__destroy_at[abi:ne200100]<std::pair<PCITransportTimeDomain const,dispatch::block<void({block_pointer})(int,void **,unsigned int)>>,0>((v4 + 4));
  operator delete(v4);
  return 1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x26u);
}

void sub_297F849A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::event::Listener::init(pci::event::Listener *this)
{
  v30 = *MEMORY[0x29EDCA608];
  if (!*(this + 2) || !*(this + 3))
  {
    v17 = _TelephonyUtilDebugPrintError("PCITransport", "%s: bad argument\n", "init");
    v18 = pci::log::get(v17);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v19 = "bad argument";
LABEL_33:
    _os_log_impl(&dword_297F72000, v18, OS_LOG_TYPE_INFO, v19, buf, 2u);
    return 0;
  }

  v2 = *(this + 4);
  if (!v2)
  {
    v21 = _TelephonyUtilDebugPrintError("PCITransport", "%s: failed to open control driver\n", "init");
    v18 = pci::log::get(v21);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v19 = "failed to open control driver";
    goto LABEL_33;
  }

  if (!(*(*v2 + 24))(v2))
  {
    v22 = _TelephonyUtilDebugPrintError("PCITransport", "%s: IOABPControlClass::start() returned failure\n", "init");
    v18 = pci::log::get(v22);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v19 = "IOABPControlClass::start() returned failure";
    goto LABEL_33;
  }

  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, this);
  v4 = *buf;
  v3 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 1174405120;
  v26[2] = ___ZN3pci5event8Listener4initEv_block_invoke;
  v26[3] = &__block_descriptor_tmp_4;
  v26[4] = this;
  v26[5] = v4;
  v27 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (*(**(this + 4) + 72))(*(this + 4), *(this + 3), v26);
  v6 = v5;
  if (v5)
  {
    v7 = _TelephonyUtilDebugPrintError("PCITransport", "%s: IOABPControlClass::registerEventCallback() returned %#x\n", "init", v5);
    v8 = pci::log::get(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_297F72000, v8, OS_LOG_TYPE_INFO, "IOABPControlClass::registerEventCallback() returned %#x", buf, 8u);
    }

    (*(**(this + 4) + 32))(*(this + 4));
  }

  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v6)
  {
    return 0;
  }

  v9 = pci::event::PDPListener::start((this + 40));
  if (!v9)
  {
    if (pci::transport::kernel::probeVariant(v9) == 2 && TelephonyRadiosGetRadio() > 13)
    {
      return 1;
    }

    v23 = _TelephonyUtilDebugPrintError("PCITransport", "%s: PDPListener::start() returned failure\n", "init");
    v18 = pci::log::get(v23);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v19 = "PDPListener::start() returned failure";
    goto LABEL_33;
  }

  std::shared_ptr<pci::transport::bh>::shared_ptr[abi:ne200100]<pci::transport::bh,0>(buf, this);
  v11 = *buf;
  v10 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 1174405120;
  v24[2] = ___ZN3pci5event8Listener4initEv_block_invoke_23;
  v24[3] = &__block_descriptor_tmp_27_0;
  v24[4] = this;
  v24[5] = v11;
  v25 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = pci::event::PDPListener::registerEventNotification(this + 40, *(this + 3), v24);
  v13 = v12;
  v14 = v12 == 0;
  if (v12)
  {
    v15 = _TelephonyUtilDebugPrintError("PCITransport", "%s: PDPListener::registerEventCallback() returned %#x\n", "init", v12);
    v16 = pci::log::get(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v13;
      _os_log_impl(&dword_297F72000, v16, OS_LOG_TYPE_INFO, "PDPListener::registerEventCallback() returned %#x", buf, 8u);
    }

    pci::event::PDPListener::stop((this + 40));
  }

  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  return v14;
}

void sub_297F84E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(exception_object);
}

void pci::event::Listener::~Listener(pci::event::Listener *this)
{
  v2 = *(this + 4);
  if (!v2)
  {
    v9 = _TelephonyUtilDebugPrintError("PCITransport", "%s: invalid control driver\n", "~Listener");
    v6 = pci::log::get(v9);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    *v16 = 0;
    v7 = "invalid control driver";
    v8 = v16;
    goto LABEL_10;
  }

  (*(*v2 + 88))(v2, 0);
  if (((*(**(this + 4) + 32))(*(this + 4)) & 1) == 0)
  {
    v3 = _TelephonyUtilDebugPrintError("PCITransport", "%s: IOABPControlClass::stop() returned failure\n", "~Listener");
    v4 = pci::log::get(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_297F72000, v4, OS_LOG_TYPE_INFO, "IOABPControlClass::stop() returned failure", buf, 2u);
    }
  }

  pci::event::PDPListener::deregisterEventNotification((this + 40));
  if ((pci::event::PDPListener::stop((this + 40)) & 1) == 0)
  {
    v5 = _TelephonyUtilDebugPrintError("PCITransport", "%s: PDPListener::stop() returned failure\n", "~Listener");
    v6 = pci::log::get(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v7 = "PDPListener::stop() returned failure";
      v8 = &v14;
LABEL_10:
      _os_log_impl(&dword_297F72000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
    }
  }

LABEL_11:
  pci::event::PDPListener::~PDPListener((this + 40));
  v10 = *(this + 4);
  *(this + 4) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(this + 2);
  if (v12)
  {
    _Block_release(v12);
  }

  v13 = *(this + 1);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

void *pci::event::Listener::Listener(void *a1, void **a2, CFTypeRef cf)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  a1[3] = cf;
  a1[2] = v5;
  if (cf)
  {
    CFRetain(cf);
  }

  pci::transport::kernelControl::create(a1 + 4);
  pci::event::PDPListener::PDPListener((a1 + 5));
  return a1;
}

void sub_297F85154(_Unwind_Exception *a1)
{
  v4 = v1[4];
  v1[4] = 0;
  if (v4)
  {
    pci::event::Listener::Listener(v4);
  }

  ctu::cf::CFSharedRef<__CFRunLoop>::~CFSharedRef(v2);
  v5 = v1[2];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = v1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t pci::event::Listener::notify(uint64_t a1, unint64_t a2, const void *a3, const void *a4)
{
  v61 = *MEMORY[0x29EDCA608];
  v8 = pci::transport::kernel::errorAsString(a2);
  v9 = pci::transport::kernel::errorAsUnsigned(a2);
  v10 = _TelephonyUtilDebugPrint("PCITransport", "%s: %s (%u), arg1 %p, arg2 %p\n", "notify", v8, v9, a3, a4);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315906;
    v54 = pci::transport::kernel::errorAsString(a2);
    v55 = 1024;
    v56 = pci::transport::kernel::errorAsUnsigned(a2);
    v57 = 2048;
    v58 = a3;
    v59 = 2048;
    v60 = a4;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s (%u), arg1 %p, arg2 %p", buf, 0x26u);
  }

  ctu::LogMessageBuffer::LogMessageBuffer(buf);
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (HIDWORD(a2) > 0x31)
        {
LABEL_29:
          v33 = MEMORY[0x29C27D170](buf, "pci error: ");
          ABPErrorTypeString = getABPErrorTypeString();
LABEL_33:
          v40 = MEMORY[0x29C27D170](v33, ABPErrorTypeString);
          MEMORY[0x29C27D170](v40, ": (");
          v41 = ctu::operator<<();
          MEMORY[0x29C27D170](v41, ", ");
          v42 = ctu::operator<<();
          MEMORY[0x29C27D170](v42, ")");
          goto LABEL_19;
        }

        if (((1 << SBYTE4(a2)) & 0x3E77BFFE07FFFLL) != 0)
        {
          v12 = MEMORY[0x29C27D170](buf, "pci error: ");
          ACIPCErrorTypeString = getABPErrorTypeString();
LABEL_17:
          v15 = MEMORY[0x29C27D170](v12, ACIPCErrorTypeString);
          goto LABEL_18;
        }

        if (HIDWORD(a2) != 39)
        {
          if (HIDWORD(a2) == 43)
          {
            v19 = MEMORY[0x29C27D170](buf, "pci error: ");
            v20 = getABPErrorTypeString();
            v21 = MEMORY[0x29C27D170](v19, v20);
            v22 = MEMORY[0x29C27D170](v21, ": ");
            ABPAERErrorTypeString = getABPAERErrorTypeString();
LABEL_26:
            v27 = MEMORY[0x29C27D170](v22, ABPAERErrorTypeString);
            MEMORY[0x29C27D170](v27, ": ");
            ctu::operator<<();
            goto LABEL_19;
          }

          goto LABEL_29;
        }

        if (a3 < 3)
        {
          v28 = MEMORY[0x29C27D170](buf, "pci error: ");
          v29 = getABPErrorTypeString();
          v30 = MEMORY[0x29C27D170](v28, v29);
          v31 = MEMORY[0x29C27D170](v30, ": ");
          ABPLinkStateString = getABPLinkStateString();
          MEMORY[0x29C27D170](v31, ABPLinkStateString);
          goto LABEL_19;
        }

        if (a3 == 3)
        {
          v43 = MEMORY[0x29C27D170](buf, "pci error: ");
          v44 = getABPErrorTypeString();
          v45 = MEMORY[0x29C27D170](v43, v44);
          v46 = MEMORY[0x29C27D170](v45, ": ");
          v47 = getABPLinkStateString();
          MEMORY[0x29C27D170](v46, v47);
          goto LABEL_19;
        }

        if (a3 != 4)
        {
          __assert_rtn("notify", "PCIEvent.cpp", 116, "false");
        }

LABEL_36:
        MEMORY[0x29C27D170](buf, "AP-triggered baseband reset");
        goto LABEL_19;
      }

      goto LABEL_19;
    }

    v14 = "pci error (unsupported variant: unknown): ";
LABEL_13:
    MEMORY[0x29C27D170](buf, v14);
    v15 = ctu::operator<<();
LABEL_18:
    MEMORY[0x29C27D170](v15, ": (");
    v16 = ctu::operator<<();
    MEMORY[0x29C27D170](v16, ", ");
    v17 = ctu::operator<<();
    MEMORY[0x29C27D170](v17, ")");
    goto LABEL_19;
  }

  if (a2 == 2)
  {
    if (HIDWORD(a2) <= 0x39)
    {
      if (((1 << SBYTE4(a2)) & 0x3FE076BFFE07FFFLL) != 0)
      {
        v12 = MEMORY[0x29C27D170](buf, "pci error: ");
        ACIPCErrorTypeString = getACIPCErrorTypeString();
        goto LABEL_17;
      }

      if (HIDWORD(a2) == 39)
      {
        if (a3 < 3)
        {
          v35 = MEMORY[0x29C27D170](buf, "pci error: ");
          v36 = getACIPCErrorTypeString();
          v37 = MEMORY[0x29C27D170](v35, v36);
          v38 = MEMORY[0x29C27D170](v37, ": ");
          ACIPCLinkStateString = getACIPCLinkStateString();
          MEMORY[0x29C27D170](v38, ACIPCLinkStateString);
          goto LABEL_19;
        }

        if (a3 == 3)
        {
          v48 = MEMORY[0x29C27D170](buf, "pci error: ");
          v49 = getACIPCErrorTypeString();
          v50 = MEMORY[0x29C27D170](v48, v49);
          v51 = MEMORY[0x29C27D170](v50, ": ");
          v52 = getACIPCLinkStateString();
          MEMORY[0x29C27D170](v51, v52);
          goto LABEL_19;
        }

        if (a3 != 4)
        {
          __assert_rtn("notify", "PCIEvent.cpp", 216, "false");
        }

        goto LABEL_36;
      }

      if (HIDWORD(a2) == 43)
      {
        v24 = MEMORY[0x29C27D170](buf, "pci error: ");
        v25 = getACIPCErrorTypeString();
        v26 = MEMORY[0x29C27D170](v24, v25);
        v22 = MEMORY[0x29C27D170](v26, ": ");
        ABPAERErrorTypeString = getACIPCAERErrorTypeString();
        goto LABEL_26;
      }
    }

    v33 = MEMORY[0x29C27D170](buf, "pci error: ");
    ABPErrorTypeString = getACIPCErrorTypeString();
    goto LABEL_33;
  }

  if (a2 == 3)
  {
    v14 = "pci error (unsupported variant: daleipc): ";
    goto LABEL_13;
  }

LABEL_19:
  MEMORY[0x29C27D130](buf);
  (*(*(a1 + 16) + 16))();
  return MEMORY[0x29C27D150](buf);
}

void sub_297F85770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x29C27D150](va, a2, a3, a4, a5, a6, a7);
  _Unwind_Resume(a1);
}

uint64_t pci::event::Listener::notifyPDP(uint64_t a1, unint64_t a2, const void *a3)
{
  PDPMessageTypeString = pci::event::getPDPMessageTypeString(a2);
  PDPMessageTypeValue = pci::event::getPDPMessageTypeValue(a2);
  v8 = _TelephonyUtilDebugPrint("PCITransport", "%s: %s (%#x), arg %p\n", "notifyPDP", PDPMessageTypeString, PDPMessageTypeValue, a3);
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    pci::event::Listener::notifyPDP(a2, a3, v9);
  }

  ctu::LogMessageBuffer::LogMessageBuffer(v14);
  v10 = MEMORY[0x29C27D170](v14, "pdp error: ");
  v11 = pci::event::getPDPMessageTypeString(a2);
  v12 = MEMORY[0x29C27D170](v10, v11);
  MEMORY[0x29C27D170](v12, ": ");
  ctu::operator<<();
  MEMORY[0x29C27D130](v14);
  (*(*(a1 + 16) + 16))();
  return MEMORY[0x29C27D150](v14);
}

void ___ZN3pci5event8Listener4initEv_block_invoke(void *a1, unint64_t a2, const void *a3, const void *a4)
{
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        pci::event::Listener::notify(v9, a2, a3, a4);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }
}

uint64_t __copy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3pci5event8ListenerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c44_ZTSNSt3__18weak_ptrIN3pci5event8ListenerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3pci5event8Listener4initEv_block_invoke_23(void *a1, unint64_t a2, const void *a3)
{
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
        pci::event::Listener::notifyPDP(v7, a2, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

const void **ctu::cf::CFSharedRef<__CFRunLoop>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::shared_ptr<pci::event::Listener>::shared_ptr[abi:ne200100]<pci::event::Listener,0>(void *a1, void *a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_297F85AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<pci::event::Listener>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::event::Listener **std::unique_ptr<pci::event::Listener>::~unique_ptr[abi:ne200100](pci::event::Listener **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::event::Listener::~Listener(v2);
    MEMORY[0x29C27D350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::event::Listener *,std::shared_ptr<pci::event::Listener>::__shared_ptr_default_delete<pci::event::Listener,pci::event::Listener>,std::allocator<pci::event::Listener>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

pci::event::Listener *std::__shared_ptr_pointer<pci::event::Listener *,std::shared_ptr<pci::event::Listener>::__shared_ptr_default_delete<pci::event::Listener,pci::event::Listener>,std::allocator<pci::event::Listener>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::event::Listener::~Listener(result);

    JUMPOUT(0x29C27D350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::event::Listener *,std::shared_ptr<pci::event::Listener>::__shared_ptr_default_delete<pci::event::Listener,pci::event::Listener>,std::allocator<pci::event::Listener>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

char *getABPPDPMessageTypeString(int a1)
{
  v2 = &off_29EE871A8;
  v3 = 13;
  result = "invalid";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

char *getACIPCPDPMessageTypeString(int a1)
{
  v2 = &off_29EE87278;
  v3 = 13;
  result = "invalid";
  while (*(v2 - 2) != a1)
  {
    v2 += 2;
    if (!--v3)
    {
      return result;
    }
  }

  return *v2;
}

const char *pci::event::getPDPMessageTypeString(unint64_t a1)
{
  if (!a1)
  {
    return "unrecognized error code";
  }

  v1 = HIDWORD(a1);
  if (a1 == 1)
  {
    v2 = &off_29EE871A8;
    v5 = 13;
    result = "invalid";
    while (*(v2 - 2) != v1)
    {
      v2 += 2;
      if (!--v5)
      {
        return result;
      }
    }

    return *v2;
  }

  if (a1 == 2)
  {
    v2 = &off_29EE87278;
    v3 = 13;
    result = "invalid";
    while (*(v2 - 2) != v1)
    {
      v2 += 2;
      if (!--v3)
      {
        return result;
      }
    }

    return *v2;
  }

  return "unsupported variant: daleipc";
}

double pci::event::PDPListener::PDPListener(pci::event::PDPListener *this)
{
  *this = 850045863;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 24) = 0;
  return result;
}

{
  *this = 850045863;
  *(this + 13) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 52) = 0u;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 9) = 0;
  *(this + 24) = 0;
  return result;
}

void pci::event::PDPListener::~PDPListener(std::mutex *this)
{
  pci::event::PDPListener::stop(this);
  v2 = *&this[1].__m_.__opaque[32];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *this[1].__m_.__opaque;
  if (v3)
  {
    CFRelease(v3);
  }

  std::mutex::~mutex(this);
}

uint64_t pci::event::PDPListener::stop(std::mutex *this)
{
  std::mutex::lock(this);
  pci::event::PDPListener::deregisterEventNotification_nl(this);
  sig = this[1].__m_.__sig;
  if (sig)
  {
    IOObjectRelease(sig);
    LODWORD(this[1].__m_.__sig) = 0;
  }

  std::mutex::unlock(this);
  return 1;
}

BOOL pci::event::PDPListener::start(std::mutex *this)
{
  std::mutex::lock(this);
  if (LODWORD(this[1].__m_.__sig))
  {
    v3 = 1;
    goto LABEL_21;
  }

  v4 = pci::transport::kernel::probeVariant(v2);
  if (v4 == 1)
  {
    v9 = "AppleBasebandPCIPDPManagerBase";
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = _TelephonyUtilDebugPrintError("PCITransport", "%s: unsupported PCI variant: daleipc\n", "start");
        v6 = pci::log::get(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v21 = 0;
          v7 = "unsupported PCI variant: daleipc";
          v8 = &v21;
LABEL_17:
          _os_log_impl(&dword_297F72000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
        }
      }

      else
      {
        v14 = _TelephonyUtilDebugPrintError("PCITransport", "%s: unknown PCI variant\n", "start");
        v6 = pci::log::get(v14);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v20 = 0;
          v7 = "unknown PCI variant";
          v8 = v20;
          goto LABEL_17;
        }
      }

LABEL_18:
      v15 = _TelephonyUtilDebugPrintError("PCITransport", "%s: could not create matching dictionary\n", "start");
      v16 = pci::log::get(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *v19 = 0;
        _os_log_impl(&dword_297F72000, v16, OS_LOG_TYPE_INFO, "could not create matching dictionary", v19, 2u);
      }

      v3 = 0;
      goto LABEL_21;
    }

    v9 = "AppleConvergedIPCPDPManager";
  }

  v10 = IOServiceMatching(v9);
  if (!v10)
  {
    goto LABEL_18;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], v10);
  v3 = MatchingService != 0;
  if (!MatchingService)
  {
    v12 = _TelephonyUtilDebugPrintError("PCITransport", "%s: could not get matching service\n", "start");
    v13 = pci::log::get(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_297F72000, v13, OS_LOG_TYPE_INFO, "could not get matching service", buf, 2u);
    }
  }

  LODWORD(this[1].__m_.__sig) = MatchingService;
LABEL_21:
  std::mutex::unlock(this);
  return v3;
}

void pci::event::PDPListener::deregisterEventNotification_nl(pci::event::PDPListener *this)
{
  if (*(this + 9))
  {
    pci::event::PDPListener::clearEventNotificationPort(this);
    if (CFRunLoopGetCurrent() == *(this + 9))
    {
      IOObjectRelease(*(this + 24));
      *(this + 24) = 0;
    }

    else
    {
      v2 = dispatch_group_create();
      v3 = v2;
      if (v2)
      {
        dispatch_retain(v2);
        dispatch_group_enter(v3);
      }

      v4 = *(this + 9);
      v5 = *MEMORY[0x29EDB8FC0];
      v6[0] = MEMORY[0x29EDCA5F8];
      v6[1] = 1174405120;
      v6[2] = ___ZN3pci5event11PDPListener30deregisterEventNotification_nlEv_block_invoke;
      v6[3] = &__block_descriptor_tmp_5;
      v6[4] = this;
      group = v3;
      if (v3)
      {
        dispatch_retain(v3);
        dispatch_group_enter(group);
      }

      CFRunLoopPerformBlock(v4, v5, v6);
      CFRunLoopWakeUp(*(this + 9));
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (v3)
      {
        dispatch_group_leave(v3);
        dispatch_release(v3);
      }

      std::mutex::unlock(this);
      dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
      std::mutex::lock(this);
      if (v3)
      {
        dispatch_release(v3);
      }
    }
  }
}

void sub_297F861DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (v14)
  {
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void pci::event::PDPListener::setEventNotificationPort(pci::event::PDPListener *this)
{
  if (!*(this + 10))
  {
    v2 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
    *(this + 10) = v2;
    if (!v2)
    {
      pci::event::PDPListener::setEventNotificationPort();
    }

    RunLoopSource = IONotificationPortGetRunLoopSource(v2);
    *(this + 11) = RunLoopSource;
    v4 = *(this + 9);
    v5 = *MEMORY[0x29EDB8FC0];

    CFRunLoopAddSource(v4, RunLoopSource, v5);
  }
}

void pci::event::PDPListener::clearEventNotificationPort(CFRunLoopRef *this)
{
  v1 = this + 10;
  if (this[10])
  {
    CFRunLoopRemoveSource(this[9], this[11], *MEMORY[0x29EDB8FC0]);
    IONotificationPortDestroy(this[10]);
    *v1 = 0;
    v1[1] = 0;
  }
}

uint64_t pci::event::PDPListener::registerEventNotification(uint64_t a1, uint64_t a2, const void *a3)
{
  v22 = *MEMORY[0x29EDCA608];
  std::mutex::lock(a1);
  if (*(a1 + 64))
  {
    if (*(a1 + 104))
    {
      v6 = _TelephonyUtilDebugPrintError("PCITransport", "%s: a notification block is already registered. deregister it before registering a new block\n", "registerEventNotification");
      v7 = pci::log::get(v6);
      v8 = 3758097093;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v9 = "a notification block is already registered. deregister it before registering a new block";
LABEL_7:
        v11 = v7;
        v12 = 2;
LABEL_8:
        _os_log_impl(&dword_297F72000, v11, OS_LOG_TYPE_INFO, v9, buf, v12);
      }
    }

    else
    {
      if (!a3)
      {
        v20 = _TelephonyUtilDebugPrintError("PCITransport", "%s: block must be provided\n", "registerEventNotification");
        v7 = pci::log::get(v20);
        v8 = 3758097090;
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        *buf = 0;
        v9 = "block must be provided";
        goto LABEL_7;
      }

      v14 = _Block_copy(a3);
      v15 = *(a1 + 104);
      *(a1 + 104) = v14;
      if (v15)
      {
        _Block_release(v15);
      }

      *buf = a2;
      ctu::cf::CFSharedRef<__CFRunLoop>::operator=((a1 + 72), buf);
      pci::event::PDPListener::setEventNotificationPort(a1);
      v16 = IOServiceAddInterestNotification(*(a1 + 80), *(a1 + 64), "IOGeneralInterest", pci::event::PDPListener::generalInterestCallback, a1, (a1 + 96));
      v17 = v16;
      if (!v16)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v18 = _TelephonyUtilDebugPrintError("PCITransport", "%s: could not add interest notification on service: %#x\n", "registerEventNotification", v16);
      v19 = pci::log::get(v18);
      v8 = 3758097084;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v17;
        v9 = "could not add interest notification on service: %#x";
        v11 = v19;
        v12 = 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v10 = _TelephonyUtilDebugPrintError("PCITransport", "%s: service is NULL - must successfully start() first\n", "registerEventNotification");
    v7 = pci::log::get(v10);
    v8 = 3758097136;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "service is NULL - must successfully start() first";
      goto LABEL_7;
    }
  }

LABEL_9:
  std::mutex::unlock(a1);
  return v8;
}

pci::transport::kernel *pci::event::PDPListener::generalInterestFunction(pci::transport::kernel *this, int a2, void *a3)
{
  if (*(this + 13))
  {
    v3 = this;
    v4 = 0;
    while (abpPDPMessageTypeStrings[v4] != a2)
    {
      v4 += 4;
      if (v4 == 52)
      {
        v5 = 0;
        while (acipcPDPMessageTypeStrings[v5] != a2)
        {
          v5 += 4;
          if (v5 == 52)
          {
            return this;
          }
        }

        break;
      }
    }

    pci::transport::kernel::probeVariant(this);
    v6 = *(*(v3 + 13) + 16);

    return v6();
  }

  return this;
}

uint64_t pci::event::PDPListener::shouldNotify(pci::event::PDPListener *this, int a2)
{
  v2 = 0;
  while (abpPDPMessageTypeStrings[v2] != a2)
  {
    v2 += 4;
    if (v2 == 52)
    {
      v3 = -1;
      v4 = acipcPDPMessageTypeStrings;
      while (1)
      {
        v5 = *v4;
        v4 += 4;
        if (v5 == a2)
        {
          break;
        }

        if (++v3 == 12)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return 1;
}

void pci::event::PDPListener::deregisterEventNotification(std::mutex *this)
{
  std::mutex::lock(this);
  pci::event::PDPListener::deregisterEventNotification_nl(this);

  std::mutex::unlock(this);
}

void ___ZN3pci5event11PDPListener30deregisterEventNotification_nlEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  std::mutex::lock(v1);
  IOObjectRelease(*(v1 + 96));
  *(v1 + 96) = 0;

  std::mutex::unlock(v1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_297F868C4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void pci::transport::th::init(pci::transport::th *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2000000000;
  v12 = 1;
  dispatch_group_create();
  v2 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: \n", "th", "init", this, *(this + 10));
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::init();
  }

  os_unfair_lock_lock(*this);
  if (!*(this + 6))
  {
    std::string::basic_string[abi:ne200100]<0>(v13, "com.apple.WirelessIPC.baseband.pci_client");
    std::string::basic_string[abi:ne200100]<0>(__p, "_");
    v4 = buf;
    pci::transport::th::generateString(v13, __p, *(this + 10), buf);
    if (v16 < 0)
    {
      v4 = *buf;
    }

    v5 = dispatch_queue_attr_make_with_qos_class(0, *(this + 38), 0);
    v6 = dispatch_queue_create_with_target_V2(v4, v5, *(this + 18));
    v7 = *(this + 6);
    *(this + 6) = v6;
    if (v7)
    {
      dispatch_release(v7);
    }

    if (v16 < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(*__p);
    }

    if (v14 < 0)
    {
      operator delete(*v13);
    }
  }

  *__p = *(this + 10);
  *&__p[4] = *(this + 8);
  v9 = *(this + 18);
  v10 = *(this + 38);
  pci::transport::bh::create();
}

void sub_297F87204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (v39)
  {
    dispatch_release(v39);
  }

  _Block_object_dispose(&a30, 8);
  _Unwind_Resume(a1);
}

void sub_297F87528(_Unwind_Exception *a1)
{
  v6 = v1[17];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = v1[16];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = v1[15];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = v1[14];
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = v1[11];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = v1[7];
  if (v11)
  {
    _Block_release(v11);
  }

  pci::transport::th::th(v4, v2, v3, v1);
  _Unwind_Resume(a1);
}

void pci::transport::th::~th(pci::transport::th *this)
{
  v2 = (this + 40);
  v3 = _TelephonyUtilDebugPrint("PCITransport", "%s::%s::%p::%d: \n", "th", "~th", this, *(this + 10));
  v4 = pci::log::get(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::~th();
  }

  os_unfair_lock_lock(*this);
  *(this + 184) = 1;
  if (*(this + 3))
  {
    v41 = 0u;
    *object = 0u;
    *aBlock = 0u;
    v5 = _Block_copy(&__block_literal_global_2);
    v6 = v5;
    v36 = *v2;
    v37 = 0;
    v39 = 0;
    v38 = 0;
    if (v5)
    {
      v7 = _Block_copy(v5);
    }

    else
    {
      v7 = 0;
    }

    v8 = aBlock[0];
    aBlock[0] = v7;
    if (v8)
    {
      _Block_release(v8);
    }

    v10 = *this;
    v9 = *(this + 1);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = object[0];
    *(&v41 + 1) = v10;
    object[0] = v9;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = *(this + 2);
    if (v12)
    {
      dispatch_retain(*(this + 2));
    }

    v13 = object[1];
    object[1] = v12;
    if (v13)
    {
      dispatch_release(v13);
    }

    v14 = v41;
    aBlock[1] = 0;
    *&v41 = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v6)
    {
      _Block_release(v6);
    }

    LODWORD(v35) = *v2;
    PciTransportToDirectionMap = getPciTransportToDirectionMap();
    if ((*std::map<PCITransportInterface,PCITransportDirection>::at(PciTransportToDirectionMap, &v35) & 0xFFFFFFFD) == 1)
    {
      pci::transport::task::create();
    }

    LODWORD(v35) = *v2;
    v16 = getPciTransportToDirectionMap();
    if ((*std::map<PCITransportInterface,PCITransportDirection>::at(v16, &v35) & 0xFFFFFFFE) == 2)
    {
      pci::transport::task::create();
    }

    v17 = *(this + 21);
    if (v17 != (this + 160))
    {
      do
      {
        v19 = *(v17 + 1);
        v18 = *(v17 + 2);
        v20 = *(v17 + 3);
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (*(this + 73) != 1 || pci::transport::task::getType(v18) == 1)
        {
          pci::transport::task::poison(v18, 0xE00002EB);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v20);
        }

        v17 = v19;
      }

      while (v19 != (this + 160));
    }

    v21 = *(this + 4);
    *(this + 3) = 0;
    *(this + 4) = 0;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (object[1])
    {
      dispatch_release(object[1]);
    }

    if (object[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](object[0]);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    if (aBlock[0])
    {
      _Block_release(aBlock[0]);
    }
  }

  os_unfair_lock_unlock(*this);
  dispatch_group_wait(*(this + 2), 0xFFFFFFFFFFFFFFFFLL);
  v22 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: --done\n", "th", "~th", this, *(this + 10));
  v23 = pci::log::get(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::~th();
  }

  std::__list_imp<std::shared_ptr<pci::transport::task>>::clear(this + 20);
  v24 = *(this + 18);
  if (v24)
  {
    dispatch_release(v24);
  }

  v25 = *(this + 17);
  if (v25)
  {
    _Block_release(v25);
  }

  v26 = *(this + 16);
  if (v26)
  {
    _Block_release(v26);
  }

  v27 = *(this + 15);
  if (v27)
  {
    _Block_release(v27);
  }

  v28 = *(this + 14);
  if (v28)
  {
    _Block_release(v28);
  }

  v29 = *(this + 11);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v30 = *(this + 7);
  if (v30)
  {
    _Block_release(v30);
  }

  v31 = *(this + 6);
  if (v31)
  {
    dispatch_release(v31);
  }

  v32 = *(this + 4);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(this + 2);
  if (v33)
  {
    dispatch_release(v33);
  }

  v34 = *(this + 1);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }
}

void pci::transport::task::parameters::~parameters(pci::transport::task::parameters *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    _Block_release(v5);
  }
}

uint64_t pci::transport::th::generateString@<X0>(uint64_t **a1@<X1>, uint64_t **a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = a1[1];
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, v9, v10);
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
    v14 = a2[1];
  }

  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  MEMORY[0x29C27D250](v15, a3);
  if ((v27 & 0x10) != 0)
  {
    v17 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v17 = v23;
    }

    locale = v22[4].__locale_;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v16 = 0;
      a4[23] = 0;
      goto LABEL_26;
    }

    locale = v22[1].__locale_;
    v17 = v22[3].__locale_;
  }

  v16 = v17 - locale;
  if ((v17 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    operator new();
  }

  a4[23] = v16;
  if (v16)
  {
    memmove(a4, locale, v16);
  }

LABEL_26:
  a4[v16] = 0;
  v20 = *MEMORY[0x29EDC9538];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  v21 = MEMORY[0x29EDC9570] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x29C27D310](&v28);
}

void sub_297F87CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va, MEMORY[0x29EDC9538]);
  MEMORY[0x29C27D310](v3 + 112);
  _Unwind_Resume(a1);
}

void ___ZN3pci9transport2th4initEv_block_invoke_15(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  *(*(v2 + 8) + 24) &= a2 == 0;
  dispatch_group_leave(v3);
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void pci::transport::th::notify(pci::transport::th *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = (this + 40);
  v3 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: \n", "th", "notify", this, *(this + 10));
  v4 = pci::log::get(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::notify();
  }

  os_unfair_lock_lock(*this);
  v19 = 0u;
  *v17 = 0u;
  v18 = 0u;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th6notifyEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_25;
  aBlock[4] = this;
  v5 = _Block_copy(aBlock);
  v6 = v5;
  v12 = *v2;
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  v17[0] = v7;
  v9 = *this;
  v8 = *(this + 1);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(&v18 + 1) = v9;
  *&v19 = v8;
  v10 = *(this + 2);
  if (v10)
  {
    dispatch_retain(*(this + 2));
  }

  *(&v19 + 1) = v10;
  v17[1] = 0;
  *&v18 = 0;
  if (v6)
  {
    _Block_release(v6);
  }

  pci::transport::task::create();
}

void sub_297F87FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  pci::transport::task::parameters::~parameters(va);
  _Unwind_Resume(a1);
}

void pci::transport::th::readAsync(pci::transport::th *this)
{
  v2 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: \n", "th", "readAsync", this, *(this + 10));
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::readAsync();
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3002000000;
  v14 = __Block_byref_object_copy__36;
  v15 = __Block_byref_object_dispose__37;
  v16 = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th9readAsyncEv_block_invoke;
  aBlock[3] = &unk_29EE87418;
  aBlock[4] = &v11;
  aBlock[5] = this;
  v4 = _Block_copy(aBlock);
  v5 = v12[5];
  v12[5] = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  os_unfair_lock_lock(*this);
  v6 = *(this + 25);
  v7 = v12[5];
  if (v7)
  {
    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  pci::transport::th::readInternal(this, 0, v6, 0, &v9);
}

void sub_297F8821C(_Unwind_Exception *a1)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Block_object_dispose((v2 - 80), 8);
  v4 = *(v2 - 40);
  if (v4)
  {
    _Block_release(v4);
  }

  _Unwind_Resume(a1);
}

double pci::transport::th::initParams(uint64_t a1)
{
  *(a1 + 80) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 21;
  return result;
}

BOOL pci::transport::th::validateParams(int *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  if (!a1)
  {
    v9 = _TelephonyUtilDebugPrintError("PCITransport", "%s: no params\n", "validateParams");
    v10 = pci::log::get(v9);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v6 = "no params";
    goto LABEL_16;
  }

  if (*a1 >= 35)
  {
    v2 = _TelephonyUtilDebugPrintError("PCITransport", "%s: invalid interface number %d\n", "validateParams", *a1);
    v3 = pci::log::get(v2);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    v5 = *a1;
    *buf = 67109120;
    v15 = v5;
    v6 = "invalid interface number %d";
    v7 = v3;
    v8 = 8;
    goto LABEL_17;
  }

  if (!*(a1 + 2))
  {
    v12 = _TelephonyUtilDebugPrintError("PCITransport", "%s: status block is required\n", "validateParams");
    v10 = pci::log::get(v12);
    result = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v6 = "status block is required";
    goto LABEL_16;
  }

  v11 = a1[8];
  if ((v11 & 8) == 0 || (v11 & 4) != 0 && a1[11])
  {
    return 1;
  }

  v13 = _TelephonyUtilDebugPrintError("PCITransport", "%s: cannot use optimized transport\n", "validateParams");
  v10 = pci::log::get(v13);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (result)
  {
    *buf = 0;
    v6 = "cannot use optimized transport";
LABEL_16:
    v7 = v10;
    v8 = 2;
LABEL_17:
    _os_log_impl(&dword_297F72000, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
    return 0;
  }

  return result;
}

void ___ZN3pci9transport2th6notifyEv_block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a2)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    if (v7)
    {
      v8 = _Block_copy(v7);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(v6 + 48);
    if (v9)
    {
      dispatch_retain(v9);
    }

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN3pci9transport2th6notifyEv_block_invoke_2;
    v11[3] = &__block_descriptor_tmp_24_0;
    if (v8)
    {
      v10 = _Block_copy(v8);
    }

    else
    {
      v10 = 0;
    }

    aBlock = v10;
    v13 = a5;
    dispatch_async(v9, v11);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    if (v8)
    {
      _Block_release(v8);
    }
  }
}

void *__copy_helper_block_e8_32c67_ZTSN8dispatch5blockIU13block_pointerFv18PCITransportStatusPvS2_EEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c67_ZTSN8dispatch5blockIU13block_pointerFv18PCITransportStatusPvS2_EEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::th::write(pci::transport::th *this, const unsigned __int8 *a2, unsigned int a3, void (*a4)(void *), unsigned int a5)
{
  v37 = *MEMORY[0x29EDCA608];
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2000000000;
  v20 = 1;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3002000000;
  v18[3] = __Block_byref_object_copy__1;
  v18[4] = __Block_byref_object_dispose__1;
  v18[5] = dispatch_semaphore_create(0);
  v10 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: buffer %p, length %u, dDtor %p, timeout %u\n", "th", "write", this, *(this + 10), a2, a3, a4, a5);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(this + 10);
    buf = 136316930;
    buf_4 = "th";
    v23 = 2048;
    v24 = this;
    v25 = 1024;
    v26 = v14;
    v27 = 2080;
    v28 = "write";
    v29 = 2048;
    v30 = a2;
    v31 = 1024;
    v32 = a3;
    v33 = 2048;
    v34 = a4;
    v35 = 1024;
    v36 = a5;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, length %u, dDtor %p, timeout %u", &buf, 0x46u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th5writeEPKhjPFvPvEj_block_invoke;
  aBlock[3] = &unk_29EE873A8;
  aBlock[6] = this;
  aBlock[7] = a2;
  aBlock[8] = a4;
  v17 = a3;
  aBlock[4] = v19;
  aBlock[5] = v18;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  v15 = v13;
  pci::transport::th::writeInternal(this, a2, a3, a4, &v15);
}

void sub_297F88918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, dispatch_object_t object)
{
  if (v35)
  {
    _Block_release(v35);
  }

  _Block_object_dispose(&a29, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Block_object_dispose((v36 - 192), 8);
  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__1(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

intptr_t ___ZN3pci9transport2th5writeEPKhjPFvPvEj_block_invoke(uint64_t a1, int a2, const void *a3, int a4)
{
  v31 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 48);
  v9 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u\n", "th", "write_block_invoke", v8, v8[10], a2, a3, a4);
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v16 = v8[10];
    *buf = 136316674;
    v18 = "th";
    v19 = 2048;
    v20 = v8;
    v21 = 1024;
    v22 = v16;
    v23 = 2080;
    v24 = "write_block_invoke";
    v25 = 1024;
    v26 = a2;
    v27 = 2048;
    v28 = a3;
    v29 = 1024;
    v30 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
  }

  *(*(*(a1 + 32) + 8) + 24) &= a2 == 0;
  v11 = *(*(a1 + 32) + 8);
  if (*(v11 + 24) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 56) == a3 && !*(a1 + 64))
  {
    v12 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    v12 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_7:
    v12 = 0;
  }

LABEL_8:
  *(v11 + 24) = v12;
  v13 = *(*(a1 + 32) + 8);
  if (*(v13 + 24) != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + 72) == a4 && !*(a1 + 64))
  {
    v14 = 1;
    goto LABEL_13;
  }

  if (!a4)
  {
    v14 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

LABEL_13:
  *(v13 + 24) = v14;
  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void pci::transport::th::read(pci::transport::th *this, const unsigned __int8 *a2, unsigned int *a3, void (*a4)(void *), unsigned int a5)
{
  v38 = *MEMORY[0x29EDCA608];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = 1;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3002000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v19[5] = dispatch_semaphore_create(0);
  v10 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: buffer %p, length %u, dDtor %p, timeout %u\n", "th", "read", this, *(this + 10), a2, *a3, a4, a5);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(this + 10);
    v16 = *a3;
    buf = 136316930;
    buf_4 = "th";
    v24 = 2048;
    v25 = this;
    v26 = 1024;
    v27 = v15;
    v28 = 2080;
    v29 = "read";
    v30 = 2048;
    v31 = a2;
    v32 = 1024;
    v33 = v16;
    v34 = 2048;
    v35 = a4;
    v36 = 1024;
    v37 = a5;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, length %u, dDtor %p, timeout %u", &buf, 0x46u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th4readEPKhRjPFvPvEj_block_invoke;
  aBlock[3] = &unk_29EE873F0;
  aBlock[6] = this;
  aBlock[7] = a2;
  aBlock[8] = a3;
  aBlock[4] = v20;
  aBlock[5] = v19;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  v13 = *a3;
  if (v12)
  {
    v14 = _Block_copy(v12);
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  pci::transport::th::readInternal(this, a2, v13, a4, &v17);
}

void sub_297F88F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (v33)
  {
    _Block_release(v33);
  }

  _Block_object_dispose(&a27, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN3pci9transport2th4readEPKhRjPFvPvEj_block_invoke(void *a1, int a2, const void *a3, unsigned int a4)
{
  v34 = *MEMORY[0x29EDCA608];
  v8 = a1[6];
  v9 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u\n", "th", "read_block_invoke", v8, v8[10], a2, a3, a4);
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v19 = v8[10];
    *buf = 136316674;
    v21 = "th";
    v22 = 2048;
    v23 = v8;
    v24 = 1024;
    v25 = v19;
    v26 = 2080;
    v27 = "read_block_invoke";
    v28 = 1024;
    v29 = a2;
    v30 = 2048;
    v31 = a3;
    v32 = 1024;
    v33 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
    if (!a3)
    {
      goto LABEL_5;
    }
  }

  else if (!a3)
  {
    goto LABEL_5;
  }

  v11 = _TelephonyUtilDebugPrintBinaryVerbose();
  v12 = pci::log::get(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::writeInternal();
  }

LABEL_5:
  *(*(a1[4] + 8) + 24) &= a2 == 0;
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 24) == 1 && a1[7] == a3;
  *(v13 + 24) = v14;
  v15 = *(a1[4] + 8);
  v16 = a1[8];
  v17 = *(v15 + 24) == 1 && *v16 >= a4;
  *(v15 + 24) = v17;
  *v16 = a4;
  return dispatch_semaphore_signal(*(*(a1[5] + 8) + 40));
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose__37(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::th::sendImage(pci::transport::th *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4, void (*a5)(void *), unsigned int a6)
{
  v9 = a3;
  v42 = *MEMORY[0x29EDCA608];
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2000000000;
  v23 = 1;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3002000000;
  v21[3] = __Block_byref_object_copy__1;
  v21[4] = __Block_byref_object_dispose__1;
  v21[5] = dispatch_semaphore_create(0);
  v12 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: buffer %p, length %u, cookie %u, dDtor %p, timeout %u\n", "th", "sendImage", this, *(this + 10), a2, v9, *a4, a5, a6);
  v13 = pci::log::get(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(this + 10);
    v17 = *a4;
    buf = 136317186;
    buf_4 = "th";
    v26 = 2048;
    v27 = this;
    v28 = 1024;
    v29 = v16;
    v30 = 2080;
    v31 = "sendImage";
    v32 = 2048;
    v33 = a2;
    v34 = 1024;
    v35 = v9;
    v36 = 1024;
    v37 = v17;
    v38 = 2048;
    v39 = a5;
    v40 = 1024;
    v41 = a6;
    _os_log_debug_impl(&dword_297F72000, v13, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, length %u, cookie %u, dDtor %p, timeout %u", &buf, 0x4Cu);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th9sendImageEPKhjRjPFvPvEj_block_invoke;
  aBlock[3] = &unk_29EE87440;
  aBlock[6] = this;
  aBlock[7] = a2;
  v20 = v9;
  aBlock[8] = a5;
  aBlock[9] = a4;
  aBlock[4] = v22;
  aBlock[5] = v21;
  v14 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  if (v14)
  {
    v15 = _Block_copy(v14);
  }

  else
  {
    v15 = 0;
  }

  v18 = v15;
  pci::transport::th::sendImageInternal(this, a2, v9, a5, &v18);
}

void sub_297F89558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, dispatch_object_t object)
{
  if (v37)
  {
    _Block_release(v37);
  }

  _Block_object_dispose(&a31, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  _Block_object_dispose((v38 - 208), 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN3pci9transport2th9sendImageEPKhjRjPFvPvEj_block_invoke(uint64_t a1, int a2, const void *a3, int a4, int a5)
{
  v35 = *MEMORY[0x29EDCA608];
  v10 = *(a1 + 48);
  v11 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u, code %u\n", "th", "sendImage_block_invoke", v10, v10[10], a2, a3, a4, a5);
  v12 = pci::log::get(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v18 = v10[10];
    *buf = 136316930;
    v20 = "th";
    v21 = 2048;
    v22 = v10;
    v23 = 1024;
    v24 = v18;
    v25 = 2080;
    v26 = "sendImage_block_invoke";
    v27 = 1024;
    v28 = a2;
    v29 = 2048;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    v33 = 1024;
    v34 = a5;
    _os_log_debug_impl(&dword_297F72000, v12, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u, code %u", buf, 0x42u);
  }

  *(*(*(a1 + 32) + 8) + 24) &= a2 == 0;
  v13 = *(*(a1 + 32) + 8);
  if (*(v13 + 24) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 56) == a3 && !*(a1 + 64))
  {
    v14 = 1;
    goto LABEL_8;
  }

  if (!a3)
  {
    v14 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

LABEL_8:
  *(v13 + 24) = v14;
  v15 = *(*(a1 + 32) + 8);
  if (*(v15 + 24) != 1)
  {
    goto LABEL_12;
  }

  if (*(a1 + 80) == a4 && !*(a1 + 64))
  {
    v16 = 1;
    goto LABEL_13;
  }

  if (!a4)
  {
    v16 = *(a1 + 64) != 0;
  }

  else
  {
LABEL_12:
    v16 = 0;
  }

LABEL_13:
  *(v15 + 24) = v16;
  **(a1 + 72) = a5;
  return dispatch_semaphore_signal(*(*(*(a1 + 40) + 8) + 40));
}

void pci::transport::th::sendImageInternal(uint64_t a1, const void *a2, int a3, const void *a4, const void **a5)
{
  v30 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v11 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: buffer %p, size %u, dDtor %p\n", "th", "sendImageInternal", a1, *(a1 + 40), a2, a3, a4);
  v12 = pci::log::get(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 40);
    *v23 = 136316674;
    *v24 = "th";
    *&v24[8] = 2048;
    *&v24[10] = a1;
    *&v24[18] = 1024;
    v25 = v22;
    v26 = 2080;
    *v27 = "sendImageInternal";
    *&v27[8] = 2048;
    *&v27[10] = a2;
    LOWORD(v28) = 1024;
    *(&v28 + 2) = a3;
    WORD3(v28) = 2048;
    *(&v28 + 1) = a4;
    _os_log_debug_impl(&dword_297F72000, v12, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, size %u, dDtor %p", v23, 0x40u);
  }

  v28 = 0u;
  *object = 0u;
  *&v27[2] = 0u;
  if (*a5)
  {
    v13 = _Block_copy(*a5);
  }

  else
  {
    v13 = 0;
  }

  *v23 = *(a1 + 40);
  *v24 = 3;
  *&v24[4] = a4;
  *&v24[12] = a2;
  v25 = a3;
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *&v27[2];
  *&v27[2] = v14;
  if (v15)
  {
    _Block_release(v15);
  }

  v17 = *a1;
  v16 = *(a1 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = object[0];
  *(&v28 + 1) = v17;
  object[0] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    dispatch_retain(*(a1 + 16));
  }

  v20 = object[1];
  object[1] = v19;
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = v28;
  *&v27[10] = 0;
  *&v28 = 0;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  pci::transport::task::create();
}

void sub_297F89B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  pci::transport::task::parameters::~parameters(va);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void pci::transport::th::sendImageAsync(pci::transport::th *this, const unsigned __int8 *a2, int a3, void (*a4)(void *))
{
  v29 = *MEMORY[0x29EDCA608];
  v8 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: buffer %p, size %u, dDtor %p\n", "th", "sendImageAsync", this, *(this + 10), a2, a3, a4);
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(this + 10);
    buf = 136316674;
    buf_4 = "th";
    v17 = 2048;
    v18 = this;
    v19 = 1024;
    v20 = v12;
    v21 = 2080;
    v22 = "sendImageAsync";
    v23 = 2048;
    v24 = a2;
    v25 = 1024;
    v26 = a3;
    v27 = 2048;
    v28 = a4;
    _os_log_debug_impl(&dword_297F72000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: buffer %p, size %u, dDtor %p", &buf, 0x40u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th14sendImageAsyncEPKhjPFvPvE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_47;
  aBlock[4] = this;
  v10 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  if (v10)
  {
    v11 = _Block_copy(v10);
  }

  else
  {
    v11 = 0;
  }

  v13 = v11;
  pci::transport::th::sendImageInternal(this, a2, a3, a4, &v13);
}

void sub_297F89DB0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN3pci9transport2th14sendImageAsyncEPKhjPFvPvE_block_invoke(uint64_t a1, int a2, const void *a3, int a4, int a5)
{
  v39 = *MEMORY[0x29EDCA608];
  v9 = *(a1 + 32);
  v10 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u, code %u\n", "th", "sendImageAsync_block_invoke", v9, *(v9 + 40), a2, a3, a4, a5);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(v9 + 40);
    *buf = 136316930;
    v24 = "th";
    v25 = 2048;
    v26 = v9;
    v27 = 1024;
    v28 = v16;
    v29 = 2080;
    v30 = "sendImageAsync_block_invoke";
    v31 = 1024;
    v32 = a2;
    v33 = 2048;
    v34 = a3;
    v35 = 1024;
    v36 = a4;
    v37 = 1024;
    v38 = a5;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u, code %u", buf, 0x42u);
  }

  v12 = *(v9 + 128);
  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 48);
  if (v14)
  {
    dispatch_retain(v14);
  }

  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN3pci9transport2th14sendImageAsyncEPKhjPFvPvE_block_invoke_45;
  block[3] = &__block_descriptor_tmp_46;
  if (v13)
  {
    v15 = _Block_copy(v13);
  }

  else
  {
    v15 = 0;
  }

  aBlock = v15;
  v19 = a3;
  v20 = a2;
  v21 = a4;
  v22 = a5;
  dispatch_async(v14, block);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (v13)
  {
    _Block_release(v13);
  }
}

void sub_297F8A008(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c47_ZTSN8dispatch5blockIU13block_pointerFviPvjjEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c47_ZTSN8dispatch5blockIU13block_pointerFviPvjjEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void pci::transport::th::readRegister(pci::transport::th *this, uint64_t a2, const unsigned __int8 *a3, unsigned int *a4, unsigned int a5)
{
  v38 = *MEMORY[0x29EDCA608];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2000000000;
  v21 = 1;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3002000000;
  v19[3] = __Block_byref_object_copy__1;
  v19[4] = __Block_byref_object_dispose__1;
  v19[5] = dispatch_semaphore_create(0);
  v10 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: reg %u, buffer %p, length %u, timeout %u\n", "th", "readRegister", this, *(this + 10), a2, a3, *a4, a5);
  v11 = pci::log::get(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(this + 10);
    v16 = *a4;
    buf = 136316930;
    buf_4 = "th";
    v24 = 2048;
    v25 = this;
    v26 = 1024;
    v27 = v15;
    v28 = 2080;
    v29 = "readRegister";
    v30 = 1024;
    v31 = a2;
    v32 = 2048;
    v33 = a3;
    v34 = 1024;
    v35 = v16;
    v36 = 1024;
    v37 = a5;
    _os_log_debug_impl(&dword_297F72000, v11, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: reg %u, buffer %p, length %u, timeout %u", &buf, 0x42u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th12readRegisterEjPKhRjj_block_invoke;
  aBlock[3] = &unk_29EE87488;
  aBlock[6] = this;
  aBlock[7] = a3;
  aBlock[8] = a4;
  aBlock[4] = v20;
  aBlock[5] = v19;
  v12 = _Block_copy(aBlock);
  os_unfair_lock_lock(*this);
  v13 = *a4;
  if (v12)
  {
    v14 = _Block_copy(v12);
  }

  else
  {
    v14 = 0;
  }

  v17 = v14;
  pci::transport::th::readRegisterInternal(this, a2, a3, v13, &v17);
}

void sub_297F8A3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, dispatch_object_t object, ...)
{
  va_start(va, object);
  if (v33)
  {
    _Block_release(v33);
  }

  _Block_object_dispose(&a27, 8);
  if (object)
  {
    dispatch_release(object);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t ___ZN3pci9transport2th12readRegisterEjPKhRjj_block_invoke(void *a1, int a2, const void *a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = a1[6];
  v9 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u\n", "th", "readRegister_block_invoke", v8, v8[10], a2, a3, a4);
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v17 = v8[10];
    *buf = 136316674;
    v19 = "th";
    v20 = 2048;
    v21 = v8;
    v22 = 1024;
    v23 = v17;
    v24 = 2080;
    v25 = "readRegister_block_invoke";
    v26 = 1024;
    v27 = a2;
    v28 = 2048;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
  }

  *(*(a1[4] + 8) + 24) &= a2 == 0;
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 24) == 1 && a1[7] == a3;
  *(v11 + 24) = v12;
  v13 = *(a1[4] + 8);
  v14 = a1[8];
  v15 = *(v13 + 24) == 1 && *v14 >= a4;
  *(v13 + 24) = v15;
  *v14 = a4;
  return dispatch_semaphore_signal(*(*(a1[5] + 8) + 40));
}

void pci::transport::th::readRegisterInternal(uint64_t a1, uint64_t a2, const void *a3, int a4, const void **a5)
{
  v9 = a2;
  v29 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(*a1);
  v11 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: reg %u, buffer %p, size %u\n", "th", "readRegisterInternal", a1, *(a1 + 40), v9, a3, a4);
  v12 = pci::log::get(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 40);
    *v23 = 136316674;
    *v24 = "th";
    *&v24[8] = 2048;
    *&v24[10] = a1;
    *&v24[18] = 1024;
    v25 = v22;
    v26 = 2080;
    *v27 = "readRegisterInternal";
    *&v27[8] = 1024;
    *&v27[10] = v9;
    *&v27[14] = 2048;
    *&v27[16] = a3;
    *&v27[24] = 1024;
    *&v27[26] = a4;
    _os_log_debug_impl(&dword_297F72000, v12, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: reg %u, buffer %p, size %u", v23, 0x3Cu);
  }

  *object = 0u;
  memset(&v27[2], 0, 32);
  if (*a5)
  {
    v13 = _Block_copy(*a5);
  }

  else
  {
    v13 = 0;
  }

  *v23 = *(a1 + 40);
  *v24 = 2;
  *&v24[4] = 0;
  *&v24[12] = a3;
  v25 = a4;
  if (v13)
  {
    v14 = _Block_copy(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *&v27[2];
  *&v27[2] = v14;
  if (v15)
  {
    _Block_release(v15);
  }

  v17 = *a1;
  v16 = *(a1 + 8);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = object[0];
  *&v27[26] = v17;
  object[0] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(a1 + 16);
  if (v19)
  {
    dispatch_retain(*(a1 + 16));
  }

  v20 = object[1];
  object[1] = v19;
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = *&v27[18];
  *&v27[10] = 0;
  *&v27[18] = 0;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v13)
  {
    _Block_release(v13);
  }

  pci::transport::task::create();
}

void sub_297F8A978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  pci::transport::task::parameters::~parameters(va);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void pci::transport::th::timesyncAsync(os_unfair_lock_t *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v5 = a3;
  v6 = a2;
  v29 = *MEMORY[0x29EDCA608];
  v8 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: domain %u, count %u, cb %p\n", "th", "timesyncAsync", a1, *(a1 + 10), a2, a3, a4);
  v9 = pci::log::get(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 10);
    *v23 = 136316674;
    *v24 = "th";
    *&v24[8] = 2048;
    *&v24[10] = a1;
    *&v24[18] = 1024;
    v25 = v21;
    v26 = 2080;
    *v27 = "timesyncAsync";
    *&v27[8] = 1024;
    *&v27[10] = v6;
    *&v27[14] = 1024;
    *&v27[16] = v5;
    *&v27[20] = 2048;
    *&v27[22] = a4;
    _os_log_debug_impl(&dword_297F72000, v9, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: domain %u, count %u, cb %p", v23, 0x3Cu);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th13timesyncAsyncE22PCITransportTimeDomainjU13block_pointerFvijP31PCITransportTimesyncMeasurementE_block_invoke;
  aBlock[3] = &unk_29EE874D8;
  aBlock[4] = a4;
  aBlock[5] = a1;
  v10 = _Block_copy(aBlock);
  os_unfair_lock_lock(*a1);
  v28 = 0u;
  memset(&v27[2], 0, 32);
  TimesyncBufferLength = pci::transport::bh::getTimesyncBufferLength(a1[3], v5);
  if (v10)
  {
    v12 = _Block_copy(v10);
  }

  else
  {
    v12 = 0;
  }

  *v23 = *(a1 + 10);
  *v24 = 2;
  *&v24[4] = 0;
  *&v24[12] = 0;
  v25 = TimesyncBufferLength;
  if (v12)
  {
    v13 = _Block_copy(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = *&v27[2];
  *&v27[2] = v13;
  if (v14)
  {
    _Block_release(v14);
  }

  v16 = *a1;
  v15 = a1[1];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15[2], 1uLL, memory_order_relaxed);
  }

  v17 = v28;
  *&v27[26] = v16;
  *&v28 = v15;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = a1[2];
  if (v18)
  {
    dispatch_retain(a1[2]);
  }

  v19 = *(&v28 + 1);
  *(&v28 + 1) = v18;
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = *&v27[18];
  *&v27[10] = 0;
  *&v27[18] = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  pci::transport::task::create();
}

void sub_297F8AD90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  pci::transport::task::parameters::~parameters((v21 - 176));
  if (v20)
  {
    _Block_release(v20);
  }

  _Unwind_Resume(a1);
}

void ___ZN3pci9transport2th13timesyncAsyncE22PCITransportTimeDomainjU13block_pointerFvijP31PCITransportTimesyncMeasurementE_block_invoke(uint64_t a1, int a2, char *a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  v9 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u\n", "th", "timesyncAsync_block_invoke", v8, *(v8 + 40), a2, a3, a4);
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v14 = *(v8 + 40);
    *buf = 136316674;
    v19 = "th";
    v20 = 2048;
    v21 = v8;
    v22 = 1024;
    v23 = v14;
    v24 = 2080;
    v25 = "timesyncAsync_block_invoke";
    v26 = 1024;
    v27 = a2;
    v28 = 2048;
    v29 = a3;
    v30 = 1024;
    v31 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
  }

  v11 = 0;
  if (!a2 && a3)
  {
    v11 = pci::transport::bh::marshalTimesyncResults(*(v8 + 24), a3, a4);
  }

  v12 = *(v8 + 48);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN3pci9transport2th13timesyncAsyncE22PCITransportTimeDomainjU13block_pointerFvijP31PCITransportTimesyncMeasurementE_block_invoke_54;
  block[3] = &unk_29EE874B0;
  v13 = *(a1 + 32);
  v16 = a2;
  v17 = v11;
  block[4] = v13;
  block[5] = a3;
  dispatch_async(v12, block);
}

void ___ZN3pci9transport2th13timesyncAsyncE22PCITransportTimeDomainjU13block_pointerFvijP31PCITransportTimesyncMeasurementE_block_invoke_54(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 48), *(a1 + 52), *(a1 + 40));
  }

  if (!*(a1 + 48))
  {
    v3 = *(a1 + 40);
    if (v3)
    {

      free(v3);
    }
  }
}

BOOL pci::transport::th::registerTimeEvent(os_unfair_lock_t *a1, uint64_t a2, NSObject *a3)
{
  v29[2] = *MEMORY[0x29EDCA608];
  v6 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: domain %u, cb %p\n", "th", "registerTimeEvent", a1, *(a1 + 10), a2, a3);
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 10);
    *v27 = 136316418;
    *&v27[4] = "th";
    *&v27[12] = 2048;
    *&v27[14] = a1;
    *&v27[22] = 1024;
    LODWORD(v28) = v15;
    WORD2(v28) = 2080;
    *(&v28 + 6) = "registerTimeEvent";
    HIWORD(v28) = 1024;
    LODWORD(v29[0]) = a2;
    WORD2(v29[0]) = 2048;
    *(v29 + 6) = a3;
    _os_log_debug_impl(&dword_297F72000, v7, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: domain %u, cb %p", v27, 0x36u);
  }

  os_unfair_lock_lock(*a1);
  *v27 = 0;
  *&v27[8] = v27;
  *&v27[16] = 0x3002000000;
  *&v28 = __Block_byref_object_copy__59;
  v8 = a1[6];
  *(&v28 + 1) = __Block_byref_object_dispose__60;
  v29[0] = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v16[0] = MEMORY[0x29EDCA5F8];
  v16[1] = 0x40000000;
  v16[2] = ___ZN3pci9transport2th17registerTimeEventE22PCITransportTimeDomainU13block_pointerFvP21PCITransportTimeEventE_block_invoke;
  v16[3] = &unk_29EE87528;
  v16[4] = a3;
  v16[5] = v27;
  v9 = pci::transport::bh::registerTimeEvent(a1[3], a2, v16);
  v10 = v9;
  if (v9)
  {
    v11 = _TelephonyUtilDebugPrintError("PCITransport", "%s::%s::%p::%d: failed to register time event 0x%08x\n", "th", "registerTimeEvent", a1, *(a1 + 10), v9);
    v12 = pci::log::get(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 10);
      *buf = 136316162;
      v18 = "th";
      v19 = 2048;
      v20 = a1;
      v21 = 1024;
      v22 = v13;
      v23 = 2080;
      v24 = "registerTimeEvent";
      v25 = 1024;
      v26 = v10;
      _os_log_impl(&dword_297F72000, v12, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: failed to register time event 0x%08x", buf, 0x2Cu);
    }
  }

  os_unfair_lock_unlock(*a1);
  _Block_object_dispose(v27, 8);
  if (v29[0])
  {
    dispatch_release(v29[0]);
  }

  return v10 == 0;
}

void sub_297F8B2DC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 128), 8);
  v3 = *(v1 - 88);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(a1);
}

void __Block_byref_object_copy__59(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose__60(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void ___ZN3pci9transport2th17registerTimeEventE22PCITransportTimeDomainU13block_pointerFvP21PCITransportTimeEventE_block_invoke(uint64_t a1, __int128 *a2)
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x3802000000;
  v4[3] = __Block_byref_object_copy__61;
  v4[4] = __Block_byref_object_dispose__62;
  v5 = *a2;
  v2 = *(*(*(a1 + 40) + 8) + 40);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN3pci9transport2th17registerTimeEventE22PCITransportTimeDomainU13block_pointerFvP21PCITransportTimeEventE_block_invoke_63;
  block[3] = &unk_29EE87500;
  block[4] = *(a1 + 32);
  block[5] = v4;
  dispatch_async(v2, block);
  _Block_object_dispose(v4, 8);
}

__n128 __Block_byref_object_copy__61(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

BOOL pci::transport::th::deregisterTimeEvent(os_unfair_lock_t *a1, uint64_t a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v4 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: domain %u\n", "th", "deregisterTimeEvent", a1, *(a1 + 10), a2);
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 10);
    *buf = 136316162;
    v14 = "th";
    v15 = 2048;
    v16 = a1;
    v17 = 1024;
    v18 = v12;
    v19 = 2080;
    v20 = "deregisterTimeEvent";
    v21 = 1024;
    v22 = a2;
    _os_log_debug_impl(&dword_297F72000, v5, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: domain %u", buf, 0x2Cu);
  }

  os_unfair_lock_lock(*a1);
  v6 = pci::transport::bh::deregisterTimeEvent(a1[3], a2);
  v7 = v6;
  if (v6)
  {
    v8 = _TelephonyUtilDebugPrintError("PCITransport", "%s::%s::%p::%d: failed to deregister time event 0x%08x\n", "th", "deregisterTimeEvent", a1, *(a1 + 10), v6);
    v9 = pci::log::get(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 10);
      *buf = 136316162;
      v14 = "th";
      v15 = 2048;
      v16 = a1;
      v17 = 1024;
      v18 = v10;
      v19 = 2080;
      v20 = "deregisterTimeEvent";
      v21 = 1024;
      v22 = v7;
      _os_log_impl(&dword_297F72000, v9, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: failed to deregister time event 0x%08x", buf, 0x2Cu);
    }
  }

  os_unfair_lock_unlock(*a1);
  return v7 == 0;
}

void pci::transport::th::mapRegionAsync(os_unfair_lock_t *a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7)
{
  v8 = a4;
  v10 = a2;
  *(&v31[7] + 2) = *MEMORY[0x29EDCA608];
  v12 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: region %u, buffer %p, length %u, cb %p\n", "th", "mapRegionAsync", a1, *(a1 + 10), a2, a3, a4, a7);
  v13 = pci::log::get(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v24 = *(a1 + 10);
    *v27 = 136316930;
    v28 = "th";
    LOWORD(v29) = 2048;
    *(&v29 + 2) = a1;
    WORD5(v29) = 1024;
    HIDWORD(v29) = v24;
    v30 = 2080;
    v31[0] = "mapRegionAsync";
    LOWORD(v31[1]) = 1024;
    *(&v31[1] + 2) = v10;
    HIWORD(v31[1]) = 2048;
    v31[2] = a3;
    LOWORD(v31[3]) = 1024;
    *(&v31[3] + 2) = v8;
    HIWORD(v31[3]) = 2048;
    v31[4] = a7;
    _os_log_debug_impl(&dword_297F72000, v13, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: region %u, buffer %p, length %u, cb %p", v27, 0x46u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th14mapRegionAsyncE21PCITransportMemRegionPvjS3_jU13block_pointerFviE_block_invoke;
  aBlock[3] = &unk_29EE87578;
  v26 = v10;
  aBlock[4] = a7;
  aBlock[5] = a1;
  v14 = _Block_copy(aBlock);
  os_unfair_lock_lock(*a1);
  memset(v31 + 2, 0, 48);
  if (v14)
  {
    v15 = _Block_copy(v14);
  }

  else
  {
    v15 = 0;
  }

  *v27 = *(a1 + 10);
  v28 = 0;
  v29 = 0uLL;
  if (v15)
  {
    v16 = _Block_copy(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v31 + 2);
  *(v31 + 2) = v16;
  if (v17)
  {
    _Block_release(v17);
  }

  v19 = *a1;
  v18 = a1[1];
  if (v18)
  {
    atomic_fetch_add_explicit(&v18[2], 1uLL, memory_order_relaxed);
  }

  v20 = *(&v31[4] + 2);
  *(&v31[3] + 2) = v19;
  *(&v31[4] + 2) = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = a1[2];
  if (v21)
  {
    dispatch_retain(a1[2]);
  }

  v22 = *(&v31[5] + 2);
  *(&v31[5] + 2) = v21;
  if (v22)
  {
    dispatch_release(v22);
  }

  v23 = *(&v31[2] + 2);
  *(&v31[1] + 2) = 0;
  *(&v31[2] + 2) = 0;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  pci::transport::task::create();
}

void sub_297F8B9E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  pci::transport::task::parameters::~parameters((v22 - 192));
  if (v21)
  {
    _Block_release(v21);
  }

  _Unwind_Resume(a1);
}

void ___ZN3pci9transport2th14mapRegionAsyncE21PCITransportMemRegionPvjS3_jU13block_pointerFviE_block_invoke(uint64_t a1, int a2, const void *a3, int a4)
{
  v33 = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 40);
  v9 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, region %u, buff %p, size %u\n", "th", "mapRegionAsync_block_invoke", v8, *(v8 + 40), a2, *(a1 + 48), a3, a4);
  v10 = pci::log::get(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(v8 + 40);
    v14 = *(a1 + 48);
    *buf = 136316930;
    v18 = "th";
    v19 = 2048;
    v20 = v8;
    v21 = 1024;
    v22 = v13;
    v23 = 2080;
    v24 = "mapRegionAsync_block_invoke";
    v25 = 1024;
    v26 = a2;
    v27 = 1024;
    v28 = v14;
    v29 = 2048;
    v30 = a3;
    v31 = 1024;
    v32 = a4;
    _os_log_debug_impl(&dword_297F72000, v10, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, region %u, buff %p, size %u", buf, 0x42u);
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v8 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN3pci9transport2th14mapRegionAsyncE21PCITransportMemRegionPvjS3_jU13block_pointerFviE_block_invoke_72;
    block[3] = &unk_29EE87550;
    block[4] = v11;
    v16 = a2;
    dispatch_async(v12, block);
  }
}

void pci::transport::th::unmapRegionAsync(os_unfair_lock_t *a1, uint64_t a2, const void *a3)
{
  v4 = a2;
  v27 = *MEMORY[0x29EDCA608];
  v6 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: region %u, cb %p\n", "th", "unmapRegionAsync", a1, *(a1 + 10), a2, a3);
  v7 = pci::log::get(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v18 = *(a1 + 10);
    *v21 = 136316418;
    v22 = "th";
    LOWORD(v23) = 2048;
    *(&v23 + 2) = a1;
    WORD5(v23) = 1024;
    HIDWORD(v23) = v18;
    v24 = 2080;
    *v25 = "unmapRegionAsync";
    *&v25[8] = 1024;
    *&v25[10] = v4;
    *&v25[14] = 2048;
    *&v25[16] = a3;
    _os_log_debug_impl(&dword_297F72000, v7, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: region %u, cb %p", v21, 0x36u);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th16unmapRegionAsyncE21PCITransportMemRegionU13block_pointerFviE_block_invoke;
  aBlock[3] = &unk_29EE875C8;
  v20 = v4;
  aBlock[4] = a3;
  aBlock[5] = a1;
  v8 = _Block_copy(aBlock);
  os_unfair_lock_lock(*a1);
  v26 = 0u;
  memset(&v25[2], 0, 32);
  if (v8)
  {
    v9 = _Block_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  *v21 = *(a1 + 10);
  v22 = 0;
  v23 = 0uLL;
  if (v9)
  {
    v10 = _Block_copy(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *&v25[2];
  *&v25[2] = v10;
  if (v11)
  {
    _Block_release(v11);
  }

  v13 = *a1;
  v12 = a1[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12[2], 1uLL, memory_order_relaxed);
  }

  v14 = v26;
  *&v25[26] = v13;
  *&v26 = v12;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = a1[2];
  if (v15)
  {
    dispatch_retain(a1[2]);
  }

  v16 = *(&v26 + 1);
  *(&v26 + 1) = v15;
  if (v16)
  {
    dispatch_release(v16);
  }

  v17 = *&v25[18];
  *&v25[10] = 0;
  *&v25[18] = 0;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  pci::transport::task::create();
}

void sub_297F8BFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  pci::transport::task::parameters::~parameters((v20 - 160));
  if (v19)
  {
    _Block_release(v19);
  }

  _Unwind_Resume(a1);
}

void ___ZN3pci9transport2th16unmapRegionAsyncE21PCITransportMemRegionU13block_pointerFviE_block_invoke(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: status 0x%x, region %u\n", "th", "unmapRegionAsync_block_invoke", v4, *(v4 + 40), a2, *(a1 + 48));
  v6 = pci::log::get(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(v4 + 40);
    v10 = *(a1 + 48);
    *buf = 136316418;
    v14 = "th";
    v15 = 2048;
    v16 = v4;
    v17 = 1024;
    v18 = v9;
    v19 = 2080;
    v20 = "unmapRegionAsync_block_invoke";
    v21 = 1024;
    v22 = a2;
    v23 = 1024;
    v24 = v10;
    _os_log_debug_impl(&dword_297F72000, v6, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: status 0x%x, region %u", buf, 0x32u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v4 + 48);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN3pci9transport2th16unmapRegionAsyncE21PCITransportMemRegionU13block_pointerFviE_block_invoke_78;
    block[3] = &unk_29EE875A0;
    block[4] = v7;
    v12 = a2;
    dispatch_async(v8, block);
  }
}

uint64_t pci::transport::th::unblockRead(pci::transport::th *this)
{
  v2 = _TelephonyUtilDebugPrint("PCITransport", "%s::%s::%p::%d: \n", "th", "unblockRead", this, *(this + 10));
  v3 = pci::log::get(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::unblockRead();
  }

  if ((*(this + 74) & 1) == 0)
  {
    os_unfair_lock_lock(*this);
    v4 = *(this + 21);
    if (v4 != (this + 160))
    {
      do
      {
        v6 = *(v4 + 1);
        v5 = *(v4 + 2);
        v7 = *(v4 + 3);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (pci::transport::task::getType(v5) == 2)
        {
          pci::transport::task::poison(v5, 0xE00002EB);
        }

        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v4 = v6;
      }

      while (v6 != (this + 160));
    }

    os_unfair_lock_unlock(*this);
  }

  return 1;
}

void sub_297F8C2E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t pci::transport::th::flushRead(pci::transport::th *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v2 = (this + 40);
  v3 = _TelephonyUtilDebugPrint("PCITransport", "%s::%s::%p::%d: \n", "th", "flushRead", this, *(this + 10));
  v4 = pci::log::get(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    pci::transport::th::flushRead();
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x2000000000;
  v44 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3002000000;
  v39[3] = __Block_byref_object_copy__1;
  v39[4] = __Block_byref_object_dispose__1;
  v40 = dispatch_semaphore_create(0);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3pci9transport2th9flushReadEv_block_invoke;
  aBlock[3] = &unk_29EE875F0;
  aBlock[5] = v39;
  aBlock[6] = this;
  aBlock[4] = &v41;
  v5 = _Block_copy(aBlock);
  clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (!*(v42 + 6))
  {
    os_unfair_lock_lock(*this);
    if (v5)
    {
      v6 = _Block_copy(v5);
    }

    else
    {
      v6 = 0;
    }

    v37 = v6;
    pci::transport::th::readInternal(this, 0, 0x2000, 0, &v37);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 1;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3002000000;
  v30 = __Block_byref_object_copy__83;
  v31 = __Block_byref_object_dispose__84;
  v32 = dispatch_group_create();
  os_unfair_lock_lock(*this);
  v25 = 0u;
  *object = 0u;
  *v24 = 0u;
  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 0x40000000;
  v21[2] = ___ZN3pci9transport2th9flushReadEv_block_invoke_85;
  v21[3] = &unk_29EE87618;
  v21[4] = &v33;
  v21[5] = &v27;
  v7 = _Block_copy(v21);
  v8 = v7;
  v22[0] = *v2;
  *&v22[1] = 0;
  v23 = 0;
  *&v22[3] = 0;
  if (v7)
  {
    v9 = _Block_copy(v7);
  }

  else
  {
    v9 = 0;
  }

  v10 = v24[0];
  v24[0] = v9;
  if (v10)
  {
    _Block_release(v10);
  }

  v12 = *this;
  v11 = *(this + 1);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = object[0];
  *(&v25 + 1) = v12;
  object[0] = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(this + 2);
  if (v14)
  {
    dispatch_retain(*(this + 2));
  }

  v15 = object[1];
  object[1] = v14;
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = v25;
  v24[1] = 0;
  *&v25 = 0;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v34 + 24) == 1)
  {
    dispatch_group_enter(v28[5]);
    pci::transport::task::create();
  }

  os_unfair_lock_unlock(*this);
  v17 = v28[5];
  v18 = dispatch_time(0, 2000000000);
  if (dispatch_group_wait(v17, v18))
  {
    os_unfair_lock_lock(*this);
    os_unfair_lock_unlock(*this);
    dispatch_group_wait(v28[5], 0xFFFFFFFFFFFFFFFFLL);
  }

  v19 = *(v34 + 24);
  if (v19 == 1)
  {
    if (*(this + 74) == 1 && *(this + 24))
    {
      pci::transport::th::readAsync(this);
    }

    LOBYTE(v19) = 1;
  }

  if (object[1])
  {
    dispatch_release(object[1]);
  }

  if (object[0])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](object[0]);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v24[0])
  {
    _Block_release(v24[0]);
  }

  _Block_object_dispose(&v27, 8);
  if (v32)
  {
    dispatch_release(v32);
  }

  _Block_object_dispose(&v33, 8);
  if (v5)
  {
    _Block_release(v5);
  }

  _Block_object_dispose(v39, 8);
  if (v40)
  {
    dispatch_release(v40);
  }

  _Block_object_dispose(&v41, 8);
  return v19 & 1;
}

void sub_297F8CA8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, dispatch_object_t object, ...)
{
  va_start(va, object);
  pci::transport::task::parameters::~parameters(&a23);
  _Block_object_dispose(&a33, 8);
  if (object)
  {
    dispatch_release(object);
    if (!v40)
    {
LABEL_3:
      if (!v39)
      {
LABEL_5:
        _Block_object_dispose(va, 8);
        if (v38)
        {
          _Block_release(v38);
        }

        pci::transport::th::flushRead((v42 - 256), (v41 + 40));
        _Block_object_dispose((v42 - 208), 8);
        _Unwind_Resume(a1);
      }

LABEL_4:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      goto LABEL_5;
    }
  }

  else if (!v40)
  {
    goto LABEL_3;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  if (!v39)
  {
    goto LABEL_5;
  }

  goto LABEL_4;
}

intptr_t ___ZN3pci9transport2th9flushReadEv_block_invoke(void *a1, int a2, void *a3, int a4)
{
  v27 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  *(*(a1[4] + 8) + 24) = a2;
  if (a2 != -536870165)
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    v9 = _TelephonyUtilDebugPrintError("PCITransport", "%s::%s::%p::%d: status 0x%x, buff %p, size %u\n", "th", "flushRead_block_invoke", v5, v5[10], a2, a3, a4);
    v10 = pci::log::get(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v5[10];
      *buf = 136316674;
      v14 = "th";
      v15 = 2048;
      v16 = v5;
      v17 = 1024;
      v18 = v11;
      v19 = 2080;
      v20 = "flushRead_block_invoke";
      v21 = 1024;
      v22 = a2;
      v23 = 2048;
      v24 = a3;
      v25 = 1024;
      v26 = a4;
      _os_log_impl(&dword_297F72000, v10, OS_LOG_TYPE_INFO, "%s::%p::%d::%s: status 0x%x, buff %p, size %u", buf, 0x3Cu);
    }

    if (!a2)
    {
LABEL_6:
      free(a3);
    }
  }

  return dispatch_semaphore_signal(*(*(a1[5] + 8) + 40));
}

void __Block_byref_object_copy__83(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __Block_byref_object_dispose__84(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t *getPciTransportToDirectionMap(void)
{
  v6 = *MEMORY[0x29EDCA608];
  {
    memcpy(__dst, &unk_297F92040, sizeof(__dst));
    std::map<PCITransportInterface,PCITransportDirection>::map[abi:ne200100](&v2, __dst, 35);
    v1 = v3;
    getPciTransportToDirectionMap(void)::sMap = v2;
    qword_2A18A5B10 = v3;
    qword_2A18A5B18 = v4;
    if (v4)
    {
      v3[2] = &qword_2A18A5B10;
      v2 = &v3;
      v3 = 0;
      v4 = 0;
      v1 = 0;
    }

    else
    {
      getPciTransportToDirectionMap(void)::sMap = &qword_2A18A5B10;
    }

    std::__tree<std::__value_type<char const*,pci::transport::kernel::variant>,std::__map_value_compare<char const*,std::__value_type<char const*,pci::transport::kernel::variant>,std::less<char const*>,true>,std::allocator<std::__value_type<char const*,pci::transport::kernel::variant>>>::destroy(&v2, v1);
  }

  return &getPciTransportToDirectionMap(void)::sMap;
}

uint64_t *std::map<PCITransportInterface,PCITransportDirection>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 7);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 4;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::map<PCITransportInterface,PCITransportDirection>::map[abi:ne200100](uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<PCITransportRegister,unsigned int>,std::__map_value_compare<PCITransportRegister,std::__value_type<PCITransportRegister,unsigned int>,std::less<PCITransportRegister>,true>,std::allocator<std::__value_type<PCITransportRegister,unsigned int>>>::__emplace_hint_unique_key_args<PCITransportRegister,std::pair<PCITransportRegister const,unsigned int> const&>(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE86D70, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void std::shared_ptr<pci::transport::th>::shared_ptr[abi:ne200100]<pci::transport::th,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_297F8D094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<pci::transport::th>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

pci::transport::th **std::unique_ptr<pci::transport::th>::~unique_ptr[abi:ne200100](pci::transport::th **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    pci::transport::th::~th(v2);
    MEMORY[0x29C27D350]();
  }

  return a1;
}

void std::__shared_ptr_pointer<pci::transport::th *,std::shared_ptr<pci::transport::th>::__shared_ptr_default_delete<pci::transport::th,pci::transport::th>,std::allocator<pci::transport::th>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

pci::transport::th *std::__shared_ptr_pointer<pci::transport::th *,std::shared_ptr<pci::transport::th>::__shared_ptr_default_delete<pci::transport::th,pci::transport::th>,std::allocator<pci::transport::th>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    pci::transport::th::~th(result);

    JUMPOUT(0x29C27D350);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::th *,std::shared_ptr<pci::transport::th>::__shared_ptr_default_delete<pci::transport::th,pci::transport::th>,std::allocator<pci::transport::th>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<os_unfair_lock_s>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E97448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

uint64_t pci::transport::bind::setStatus(uint64_t result, int a2, int a3, int a4, char a5, int a6)
{
  *(result + 16) = a3;
  *(result + 64) = a2;
  *(result + 68) = a4;
  if ((a5 & 1) == 0 && (a2 || a6 == 3))
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
  }

  return result;
}

void pci::transport::task::ioFree(pci::transport::task *this, void *a2)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = _TelephonyUtilDebugPrintVerbose("PCITransport", "%s::%s::%p::%d: %p\n", "task", "ioFree", this, *(this + 4), a2);
  v5 = pci::log::get(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(this + 4);
    *buf = 136316162;
    v9 = "task";
    v10 = 2048;
    v11 = this;
    v12 = 1024;
    v13 = v7;
    v14 = 2080;
    v15 = "ioFree";
    v16 = 2048;
    v17 = a2;
    _os_log_debug_impl(&dword_297F72000, v5, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %p", buf, 0x30u);
  }

  v6 = *(this + 4);
  if (v6)
  {
    pci::transport::ioPool::release(v6, a2);
  }

  else
  {
    (*(this + 3))(a2);
  }
}

os_unfair_lock *pci::transport::task::poison(const os_unfair_lock **this, uint32_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  os_unfair_lock_assert_owner(this[6]);
  v4 = *(this + 4);
  TypeString = getTypeString(*(this + 5), v5);
  v7 = _TelephonyUtilDebugPrint("PCITransport", "%s::%s::%p::%d: %s: status 0x%x\n", "task", "poison", this, v4, TypeString, a2);
  v8 = pci::log::get(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = *(this + 4);
    v14 = getTypeString(*(this + 5), v9);
    *buf = 136316418;
    v16 = "task";
    v17 = 2048;
    v18 = this;
    v19 = 1024;
    v20 = v13;
    v21 = 2080;
    v22 = "poison";
    v23 = 2080;
    v24 = v14;
    v25 = 1024;
    v26 = a2;
    _os_log_debug_impl(&dword_297F72000, v8, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %s: status 0x%x", buf, 0x36u);
  }

  result = this[11];
  if (result)
  {
    v11 = *(this + 64);
    v12 = *(this + 5);
    result[4]._os_unfair_lock_opaque = 0;
    result[16]._os_unfair_lock_opaque = a2;
    result[17]._os_unfair_lock_opaque = -1;
    if ((v11 & 1) == 0 && (a2 || v12 == 3))
    {
      *&result[2]._os_unfair_lock_opaque = 0;
    }

    pci::transport::bind::~bind(result);
    result = MEMORY[0x29C27D350]();
    this[11] = 0;
  }

  return result;
}

void pci::transport::bind::parameters::~parameters(pci::transport::bind::parameters *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void std::__shared_ptr_pointer<pci::transport::task *,std::shared_ptr<pci::transport::task>::__shared_ptr_default_delete<pci::transport::task,pci::transport::task>,std::allocator<pci::transport::task>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C27D350);
}

uint64_t std::__shared_ptr_pointer<pci::transport::task *,std::shared_ptr<pci::transport::task>::__shared_ptr_default_delete<pci::transport::task,pci::transport::task>,std::allocator<pci::transport::task>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void pci::system::info::get()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    xmmword_2A18A5AC0 = 0uLL;

    __cxa_guard_release(_MergedGlobals);
  }
}

{
  dispatch_once(&pci::system::info::get(void)::sOnce, &__block_literal_global);
}

void pci::system::info::removeBH(uint64_t a1, int a2, os_log_t log)
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = 136316162;
  v4 = "system";
  v5 = 2048;
  v6 = a1;
  v7 = 1024;
  v8 = a2;
  v9 = 2080;
  v10 = "removeBH";
  v11 = 1024;
  v12 = a2;
  _os_log_debug_impl(&dword_297F72000, log, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: %u", &v3, 0x2Cu);
}

void acipcKernel::abortChannelAsync()
{
  __assert_rtn("abortChannelAsync", "PCITransportKernel.cpp", 1013, "!fRunLoopRef");
}

{
  __assert_rtn("abortChannelAsync", "PCITransportKernel.cpp", 1018, "!fQueue");
}

void acipcKernel::startChannelAsync()
{
  __assert_rtn("startChannelAsync", "PCITransportKernel.cpp", 1042, "!fRunLoopRef");
}

{
  __assert_rtn("startChannelAsync", "PCITransportKernel.cpp", 1047, "!fQueue");
}

void pci::transport::ioPool::ioPool(uint64_t a1, int *a2, os_log_t log)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = *a2;
  v4 = 136315906;
  v5 = "ioPool";
  v6 = 2048;
  v7 = a1;
  v8 = 1024;
  v9 = v3;
  v10 = 2080;
  v11 = "ioPool";
  _os_log_debug_impl(&dword_297F72000, log, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: ", &v4, 0x26u);
}

void pci::transport::bh::init()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "init";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: ", v2, v3, v4, *v5);
}

void pci::transport::bh::bh()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  LODWORD(v4) = 136315906;
  *(&v4 + 4) = "bh";
  WORD6(v4) = 2048;
  HIWORD(v4) = v0;
  LODWORD(v5) = v1;
  WORD2(v5) = 2080;
  *(&v5 + 6) = "bh";
  OUTLINED_FUNCTION_1(&dword_297F72000, v2, v3, "%s::%p::%d::%s: ", v4, *(&v4 + 1), v0 >> 16, v5);
}

void pci::transport::bh::~bh()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "~bh";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: ", v2, v3, v4, *v5);
}

{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "~bh";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: fRegistered\n", v2, v3, v4, *v5);
}

{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "~bh";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: --done", v2, v3, v4, *v5);
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_21_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "init_block_invoke";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: interface added", v2, v3, v4, *v5);
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_25_cold_1()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "init_block_invoke";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: interface removed", v2, v3, v4, *v5);
}

void ___ZN3pci9transport2bh4initERKNS1_10parametersE_block_invoke_25_cold_2()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  v2 = 136315906;
  OUTLINED_FUNCTION_0();
  *&v5[6] = "init_block_invoke";
  OUTLINED_FUNCTION_1(&dword_297F72000, v0, v1, "%s::%p::%d::%s: notify interface removed", v2, v3, v4, *v5);
}

void pci::transport::bh::generateCallback(std::__shared_weak_count **a1, void *a2, const void *a3, void *a4)
{
  v7 = *a1;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Block_object_dispose(a2, 8);
  _Block_object_dispose(a3, 8);
  _Block_object_dispose(a4, 8);
  v8 = a4[6];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void pci::event::Listener::notifyPDP(unint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v6 = 136315650;
  PDPMessageTypeString = pci::event::getPDPMessageTypeString(a1);
  v8 = 1024;
  PDPMessageTypeValue = pci::event::getPDPMessageTypeValue(a1);
  v10 = 2048;
  v11 = a2;
  _os_log_debug_impl(&dword_297F72000, a3, OS_LOG_TYPE_DEBUG, "%s (%#x), arg %p", &v6, 0x1Cu);
}

void pci::transport::th::init()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::th(NSObject **a1, std::__shared_weak_count **a2, dispatch_object_t *a3, uint64_t a4)
{
  v7 = *a1;
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(a4 + 32);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*a3)
  {
    dispatch_release(*a3);
  }

  if (*a2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*a2);
  }
}

void pci::transport::th::th()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::~th()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::notify()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::readAsync()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::writeInternal()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void pci::transport::th::unblockRead()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::flushRead()
{
  OUTLINED_FUNCTION_2(*MEMORY[0x29EDCA608]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x26u);
}

void pci::transport::th::flushRead(const void *a1, dispatch_object_t *a2)
{
  _Block_object_dispose(a1, 8);
  if (*a2)
  {
    dispatch_release(*a2);
  }
}

void pci::transport::bind::bind(_DWORD *a1, NSObject *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = 136315906;
  v4 = "bind";
  v5 = 2048;
  v6 = a1;
  v7 = 1024;
  v8 = v2;
  v9 = 2080;
  v10 = "bind";
  _os_log_debug_impl(&dword_297F72000, a2, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: ", &v3, 0x26u);
}

void pci::transport::bind::~bind()
{
  v3 = *MEMORY[0x29EDCA608];
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = "~bind";
  _os_log_debug_impl(&dword_297F72000, v0, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: ", v1, 0x26u);
}

void pci::transport::task::init()
{
  v3 = *MEMORY[0x29EDCA608];
  v1[0] = 136315906;
  OUTLINED_FUNCTION_0();
  v2 = "init";
  _os_log_debug_impl(&dword_297F72000, v0, OS_LOG_TYPE_DEBUG, "%s::%p::%d::%s: ", v1, 0x26u);
}

void pci::transport::task::complete()
{
  __assert_rtn("complete", "PCITransportTask.cpp", 322, "size <= fSize");
}

{
  __assert_rtn("complete", "PCITransportTask.cpp", 340, "false");
}

uint64_t IOABPClass::start()
{
  return MEMORY[0x2A1C6D7C0]();
}

{
  return MEMORY[0x2A1C6D7C8]();
}

uint64_t IOACIPCClass::start()
{
  return MEMORY[0x2A1C6D960]();
}

{
  return MEMORY[0x2A1C6D968]();
}

uint64_t IOABPControlClass::registerEventNotification()
{
  return MEMORY[0x2A1C6D890]();
}

{
  return MEMORY[0x2A1C6D898]();
}

uint64_t IOACIPCControlClass::registerEventNotification()
{
  return MEMORY[0x2A1C6DA40]();
}

{
  return MEMORY[0x2A1C6DA48]();
}

uint64_t ctu::operator<<()
{
  return MEMORY[0x2A1C6F410]();
}

{
  return MEMORY[0x2A1C6F418]();
}

{
  return MEMORY[0x2A1C6F428]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}