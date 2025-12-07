uint64_t KernelPCITrace::setProperty(uint64_t a1, NSObject **a2, uint64_t a3, uint64_t a4)
{
  v22 = 0;
  v21 = 3;
  LOWORD(__p) = *"IPC";
  WORD1(__p) = str_45[2];
  isSupported = abm::trace::isSupported(&__p);
  if (v21 < 0)
  {
    v12 = isSupported;
    operator delete(__p);
    if (v12)
    {
LABEL_3:
      v9 = *a2;
      v15 = a1;
      group = v9;
      if (v9)
      {
        dispatch_retain(v9);
        dispatch_group_enter(v9);
      }

      v17 = a3;
      v18 = a4;
      v19 = &v22;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN14KernelPCITrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke;
      block[3] = &__block_descriptor_tmp_54;
      block[4] = a1 + 8;
      block[5] = &v15;
      v10 = *(a1 + 24);
      if (*(a1 + 32))
      {
        dispatch_async_and_wait(v10, block);
        v11 = group;
        if (!group)
        {
          goto LABEL_13;
        }
      }

      else
      {
        dispatch_sync(v10, block);
        v11 = group;
        if (!group)
        {
LABEL_13:
          v13 = v22;
          return v13 & 1;
        }
      }

      dispatch_group_leave(v11);
      if (group)
      {
        dispatch_release(group);
      }

      goto LABEL_13;
    }
  }

  else if (isSupported)
  {
    goto LABEL_3;
  }

  v13 = 0;
  return v13 & 1;
}

void sub_23C1E93E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t KernelPCITrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = &v7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN14KernelPCITrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke;
  block[3] = &__block_descriptor_tmp_57;
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

void KernelPCITrace::getSettingPrefix(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a1 + 23) = 11;
  strcpy(a1, "KernelPCI::");
}

void CircularFileLogWriter::Params::~Params(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

void std::__tree<KernelPCITrace::BuffContext *>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<KernelPCITrace::BuffContext *>::destroy(*a1);
    std::__tree<KernelPCITrace::BuffContext *>::destroy(a1[1]);

    operator delete(a1);
  }
}

atomic_ullong *std::shared_ptr<KernelPCITrace>::shared_ptr[abi:ne200100]<KernelPCITrace,std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_284EF9508;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 8) = a2;
      *(a2 + 16) = v4;
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
  *(a2 + 8) = a2;
  *(a2 + 16) = v4;
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

void sub_23C1E96D4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace*)#1}::operator() const(KernelPCITrace*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<KernelPCITrace *,std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace *)#1},std::allocator<KernelPCITrace>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<KernelPCITrace *,std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace *)#1},std::allocator<KernelPCITrace>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI14KernelPCITraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI14KernelPCITraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI14KernelPCITraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5TraceE15make_shared_ptrI14KernelPCITraceEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<KernelPCITrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<KernelPCITrace>(KernelPCITrace*)::{lambda(KernelPCITrace*)#1}::operator() const(KernelPCITrace*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN14KernelPCITrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  KernelPCITrace::initProperty_sync(v1);
  v2 = 0;
  KernelPCITrace::updateTraceState_sync(v1, &v2);
}

uint64_t util::convert<int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || v6 < 0xFFFFFFFF80000000 || v6 > 0x7FFFFFFF)
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_23C1E9A6C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t util::convert<unsigned int>(const std::string *a1, _DWORD *a2, int a3)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v6) = strcasecmp(a1, "false");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "off");
    if (!v6)
    {
      goto LABEL_29;
    }

    LODWORD(v6) = strcasecmp(a1, "no");
    if (!v6)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v7 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v6) = 1;
    goto LABEL_29;
  }

  v7 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v6) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "off");
  if (!v6)
  {
    goto LABEL_29;
  }

  LODWORD(v6) = strcasecmp(v7, "no");
  if (!v6)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v7, "true") || !strcasecmp(v7, "on") || !strcasecmp(v7, "yes") || !strcasecmp(v7, "full") || !strcasecmp(v7, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v7, "lite"))
  {
LABEL_30:
    LODWORD(v6) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v7, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::stol(a1, &__idx, a3);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || (v6 & 0x8000000000000000) != 0 || HIDWORD(v6))
  {
    return 0;
  }

LABEL_29:
  *a2 = v6;
  return 1;
}

uint64_t sub_23C1E9CC4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (*(v2 + 24))
    {
      return result;
    }

    v3 = *(v2 + 16);
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = *(v2 + 8);
        v11 = *v10;
        *(v2 + 8) = *v10;
        v12 = v2;
        if (v11)
        {
          *(v11 + 16) = v2;
          v3 = *(v2 + 16);
          v12 = *v3;
        }

        *(v10 + 16) = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        *(v2 + 16) = v10;
        v3 = *(v10 + 16);
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = *(v4 + 8);
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      *(v4 + 8) = v3;
      *(v4 + 16) = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = (v4 + 24);
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = v15[1];
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = *(v2 + 16);
    }

    v3[*v3 != v2] = v15;
    v15[1] = v2;
    v15[2] = v3;
    *(v2 + 16) = v15;
    v3 = v15[2];
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      *(v6 + 8) = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(v6 + 8);
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = *(v14 + 8);
      v17 = *v16;
      *(v14 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = *(v14 + 16);
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      *(v14 + 16) = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_65:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = *(v14 + 16);
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    *(v14 + 16) = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
    goto LABEL_70;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_70:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = *(v34 + 16);
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  *(v34 + 16) = v35;
  return result;
}

void *std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v38 = a1;
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(v3 + 88));
    dispatch_group_enter(v4);
  }

  if (*(v3 + 100))
  {
    v5 = (v2 + 1);
    if (*v2[1])
    {
      v6 = *(v2 + 4);
      v7 = *(v3 + 40);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          buf.st_dev = 67109120;
          *&buf.st_mode = v6;
          _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#E Flush logs completion returned error. Error [0x%x]", &buf, 8u);
        }
      }

      else
      {
        if (v8)
        {
          v17 = v2[3];
          buf.st_dev = 134217984;
          *&buf.st_mode = v17;
          _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#I Flush logs completion of size '%ld' bytes", &buf, 0xCu);
        }

        v18 = *(v3 + 176);
        if (v18)
        {
          (*(*v18 + 72))(v18, *v2[1], v2[3]);
        }
      }

      goto LABEL_13;
    }

    v12 = *(v3 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.st_dev) = 0;
      _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Snapshot received (flush completion with null-log)", &buf, 2u);
    }

    v13 = *(v3 + 176);
    if (v13)
    {
      (*(*v13 + 16))(v13);
    }

    if (*(v3 + 160) != 1)
    {
      goto LABEL_65;
    }

    v14 = operator new(0x40uLL);
    *v42 = v14;
    *&v42[8] = xmmword_23C32C710;
    strcpy(v14, "/var/wireless/Library/Logs/AppleBasebandManager/pci.scratch/");
    qmemcpy(v37, "ger/pci.scratch/BasebandManager/brary/Logs/Apple/var/wireless/Li", sizeof(v37));
    v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&buf.st_blksize = v15;
    *buf.st_qspare = v15;
    *&buf.st_size = v15;
    buf.st_ctimespec = v15;
    buf.st_birthtimespec = v15;
    buf.st_atimespec = v15;
    buf.st_mtimespec = v15;
    *&buf.st_dev = v15;
    *&buf.st_uid = v15;
    if (stat(v14, &buf))
    {
      LODWORD(v16) = 0;
    }

    else
    {
      if (v42[23] >= 0)
      {
        v19 = v42;
      }

      else
      {
        v19 = *v42;
      }

      v20 = opendir(v19);
      v16 = v20;
      if (v20)
      {
        v21 = readdir(v20);
        closedir(v16);
        LODWORD(v16) = v21 != 0;
      }
    }

    if ((v42[23] & 0x80000000) != 0)
    {
      operator delete(*v42);
      if (v16)
      {
LABEL_37:
        support::fs::getBasePath(v3 + 136, &buf);
        support::fs::createDir(&buf, 0x1EDu, 1);
        if (SHIBYTE(buf.st_gid) < 0)
        {
          operator delete(*&buf.st_dev);
        }

        memset(&buf, 170, 24);
        if (*(v3 + 159) < 0)
        {
          std::string::__init_copy_ctor_external(&v39, *(v3 + 136), *(v3 + 144));
        }

        else
        {
          v39 = *(v3 + 136);
        }

        support::fs::createUniquePath(&v39, &buf);
        if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v39.__r_.__value_.__l.__data_);
        }

        v23 = operator new(0x40uLL);
        *v23 = v37[3];
        v23[1] = v37[2];
        v23[2] = v37[1];
        *(v23 + 44) = v37[0];
        *(v23 + 60) = 0;
        if ((buf.st_gid & 0x80000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = *&buf.st_dev;
        }

        v26 = v23;
        rename(v23, p_buf, v24);
        v28 = v27;
        operator delete(v26);
        v29 = *(v3 + 40);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          if (!v30)
          {
            goto LABEL_60;
          }

          v31 = &buf;
          if ((buf.st_gid & 0x80000000) != 0)
          {
            v31 = *&buf.st_dev;
          }

          *v42 = 136315138;
          *&v42[4] = v31;
          v32 = "#E Failed to move scratch logs to snapshot path [%s]";
        }

        else
        {
          if (!v30)
          {
            goto LABEL_60;
          }

          v33 = &buf;
          if ((buf.st_gid & 0x80000000) != 0)
          {
            v33 = *&buf.st_dev;
          }

          *v42 = 136315138;
          *&v42[4] = v33;
          v32 = "#I Snapshot files are in path [%s]";
        }

        _os_log_impl(&dword_23C1C4000, v29, OS_LOG_TYPE_DEFAULT, v32, v42, 0xCu);
LABEL_60:
        if (SHIBYTE(buf.st_gid) < 0)
        {
          operator delete(*&buf.st_dev);
        }

        goto LABEL_62;
      }
    }

    else if (v16)
    {
      goto LABEL_37;
    }

    v22 = *(v3 + 40);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      buf.st_dev = 136315138;
      *&buf.st_mode = "/var/wireless/Library/Logs/AppleBasebandManager/pci.scratch/";
      _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#E Couldn't find scratch path [%s]", &buf, 0xCu);
    }

LABEL_62:
    v34 = *(v3 + 176);
    if (v34)
    {
      *v42 = MEMORY[0x277D85DD0];
      *&v42[8] = 0x40000000;
      *&v42[16] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
      v43 = &__block_descriptor_tmp;
      v44 = v34;
      v40 = v42;
      *&buf.st_dev = MEMORY[0x277D85DD0];
      buf.st_ino = 0x40000000;
      *&buf.st_uid = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
      *&buf.st_rdev = &__block_descriptor_tmp_21;
      buf.st_atimespec.tv_sec = v34 + 8;
      buf.st_atimespec.tv_nsec = &v40;
      v35 = *(v34 + 24);
      if (!*(v34 + 32))
      {
        dispatch_sync(v35, &buf);
        if ((*(v3 + 159) & 0x80000000) == 0)
        {
LABEL_66:
          *(v3 + 136) = 0;
          *(v3 + 159) = 0;
          v36 = *(v3 + 168);
          *(v3 + 168) = 0;
          if (!v36)
          {
            goto LABEL_13;
          }

LABEL_70:
          dispatch_group_leave(v36);
          dispatch_release(v36);
          goto LABEL_13;
        }

LABEL_69:
        **(v3 + 136) = 0;
        *(v3 + 144) = 0;
        v36 = *(v3 + 168);
        *(v3 + 168) = 0;
        if (!v36)
        {
          goto LABEL_13;
        }

        goto LABEL_70;
      }

      dispatch_async_and_wait(v35, &buf);
    }

LABEL_65:
    if ((*(v3 + 159) & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_69;
  }

  v9 = *(v3 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.st_dev) = 0;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Flush logs completion for Disabled case", &buf, 2u);
  }

  v10 = *(v3 + 168);
  *(v3 + 168) = 0;
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  v5 = (v2 + 1);
LABEL_13:
  KernelPCITrace::deleteBuffContext_sync(v3, *v5);
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  operator delete(v2);
  v38 = 0;
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_23C1EA92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (v32)
  {
    dispatch_group_leave(v32);
    dispatch_release(v32);
  }

  operator delete(v31);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<pci::transport::kernelControl  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<pci::transport::kernelControl  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::kernelControl  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32C8BCLL)
  {
    if (((v2 & 0x800000023C32C8BCLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32C8BCLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32C8BCLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  KernelPCITrace::updateTraceState_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
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

void sub_23C1EAB94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[1];
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

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 88);
  if (v4)
  {
    dispatch_retain(*(*v2 + 88));
    dispatch_group_enter(v4);
  }

  if (*(v3 + 100) == 1)
  {
    KernelPCITrace::deregisterWithKernel_sync(v3);
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

void sub_23C1EAD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
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

uint64_t ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
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
    v17 = *(v2 + 100);
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_DEFAULT, "#I Snapshot requested. Enabled = %d", buf, 8u);
  }

  if (*(v2 + 100) == 1)
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
    *&buf[8] = xmmword_23C32C720;
    strcpy(*buf, "Kernel PCI Trace Snapshot");
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

    KernelPCITrace::snapshot_sync(v2, v30, &v29);
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

  std::unique_ptr<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&v28);
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

void sub_23C1EB2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
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

  std::unique_ptr<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C1EB3EC()
{
  if (!v0)
  {
    JUMPOUT(0x23C1EB3D4);
  }

  JUMPOUT(0x23C1EB3C4);
}

void **std::unique_ptr<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
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

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>(KernelPCITrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
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

  KernelPCITrace::dumpState_sync(v3, &v10, 1, 10, __p);
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

void sub_23C1EB650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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

uint64_t *std::unique_ptr<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<KernelPCITrace::dumpState(dispatch::group,std::string)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 39) < 0)
    {
      operator delete(*(v2 + 16));
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v2 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN14KernelPCITrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke(uint64_t a1)
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

  v4 = KernelPCITrace::setProperty_sync(v2, &v13, *(v1 + 16), *(v1 + 24));
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

void sub_23C1EB8D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN14KernelPCITrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  Property_sync = KernelPCITrace::getProperty_sync(*v1, *(v1 + 8), *(v1 + 16));
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

uint64_t __cxx_global_var_init_18()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_19()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(void **this)
{
  if (*(this + 64) != 1)
  {
LABEL_5:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(*this);
    return;
  }

  v2 = this[7];
  if (v2 != this + 4)
  {
    if (v2)
    {
      (*(*v2 + 5))(v2);
    }

    goto LABEL_5;
  }

  (*(*v2 + 4))(v2);
  if (*(this + 23) < 0)
  {
    goto LABEL_8;
  }
}

void ResetReasonEncoder::Mapping::~Mapping(ResetReasonEncoder::Mapping *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      v5 = v3 - 5;
      do
      {
        while (1)
        {
          if (*(v3 - 8) == 1)
          {
            v7 = *(v3 - 2);
            if (v3 - 5 == v7)
            {
              (*(*v7 + 4))(v7);
            }

            else if (v7)
            {
              (*(*v7 + 5))(v7);
            }
          }

          v6 = v3 - 9;
          if (*(v3 - 49) < 0)
          {
            break;
          }

          v5 -= 9;
          v3 -= 9;
          if (v6 == v2)
          {
            goto LABEL_12;
          }
        }

        operator delete(*v6);
        v5 -= 9;
        v3 -= 9;
      }

      while (v6 != v2);
LABEL_12:
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

BOOL ResetReasonEncoder::findMatchingMapping(uint64_t a1, uint64_t a2)
{
  v2 = qword_280C05CC8;
  v3 = qword_280C05CD0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v64, *a1, *(a1 + 8));
    if (v2 == v3)
    {
      goto LABEL_33;
    }

    while (1)
    {
LABEL_5:
      if (*(v2 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v65, *v2, *(v2 + 8));
      }

      else
      {
        v4 = *v2;
        v65.__traits_.__col_ = *(v2 + 16);
        *&v65.__traits_.__loc_.__locale_ = v4;
      }

      LOBYTE(v65.__flags_) = *(v2 + 24);
      memset(&v65.__loop_count_, 0, 24);
      std::vector<ResetReasonEncoder::SubmatchInfo>::__init_with_size[abi:ne200100]<ResetReasonEncoder::SubmatchInfo*,ResetReasonEncoder::SubmatchInfo*>(&v65.__loop_count_, *(v2 + 32), *(v2 + 40), 0x8E38E38E38E38E39 * ((*(v2 + 40) - *(v2 + 32)) >> 3));
      v5 = *(v2 + 56);
      v65.__end_ = v5;
      if ((v5 & 0x100000000) != 0 && TelephonyRadiosGetRadioVendor() != v5)
      {
        v7 = 0;
        v9 = *&v65.__loop_count_;
        if (!*&v65.__loop_count_)
        {
          goto LABEL_14;
        }
      }

      else
      {
        *&v6 = 0xAAAAAAAAAAAAAAAALL;
        *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v68 = v6;
        v69 = v6;
        *&v66[0].__locale_ = v6;
        v67 = v6;
        std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v66, &v65, 0);
        v7 = std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(&v64, v66, 0);
        v8 = v69;
        if (v69 && !atomic_fetch_add((v69 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }

        std::locale::~locale(v66);
        v9 = *&v65.__loop_count_;
        if (!*&v65.__loop_count_)
        {
LABEL_14:
          if (SHIBYTE(v65.__traits_.__col_) < 0)
          {
            goto LABEL_30;
          }

          goto LABEL_15;
        }
      }

      ptr = v65.__start_.__ptr_;
      v11 = v9;
      if (v65.__start_.__ptr_ != v9)
      {
        p_first = &v65.__start_.__ptr_[-3].__first_;
        do
        {
          while (1)
          {
            if (LOBYTE(ptr[-1].__first_) == 1)
            {
              v14 = ptr[-1].__vftable;
              if (&ptr[-3].__first_ == v14)
              {
                (*(v14->~__owns_one_state + 4))(v14);
              }

              else if (v14)
              {
                (*(v14->~__owns_one_state + 5))(v14);
              }
            }

            v13 = &ptr[-5].__first_;
            if (SHIBYTE(ptr[-4].__first_) < 0)
            {
              break;
            }

            p_first -= 9;
            ptr = (ptr - 72);
            if (v13 == v9)
            {
              goto LABEL_28;
            }
          }

          operator delete(*v13);
          p_first -= 9;
          ptr = (ptr - 72);
        }

        while (v13 != v9);
LABEL_28:
        v11 = *&v65.__loop_count_;
      }

      v65.__start_.__ptr_ = v9;
      operator delete(v11);
      if (SHIBYTE(v65.__traits_.__col_) < 0)
      {
LABEL_30:
        operator delete(v65.__traits_.__loc_.__locale_);
        if (v7)
        {
          goto LABEL_33;
        }

        goto LABEL_31;
      }

LABEL_15:
      if (v7)
      {
        goto LABEL_33;
      }

LABEL_31:
      v2 += 64;
      if (v2 == v3)
      {
        v2 = v3;
        goto LABEL_33;
      }
    }
  }

  v64 = *a1;
  if (qword_280C05CC8 != qword_280C05CD0)
  {
    goto LABEL_5;
  }

LABEL_33:
  v15 = a2;
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
    v16 = qword_280C05CD0;
    if (qword_280C05CD0 == v2)
    {
      return v16 != v2;
    }
  }

  else
  {
    v16 = qword_280C05CD0;
    if (qword_280C05CD0 == v2)
    {
      return v16 != v2;
    }
  }

  if (v2 == a2)
  {
    *(a2 + 24) = *(v2 + 24);
  }

  else
  {
    v17 = *(v2 + 23);
    if (*(a2 + 23) < 0)
    {
      if (v17 >= 0)
      {
        v19 = v2;
      }

      else
      {
        v19 = *v2;
      }

      if (v17 >= 0)
      {
        v20 = *(v2 + 23);
      }

      else
      {
        v20 = *(v2 + 8);
      }

      std::string::__assign_no_alias<false>(a2, v19, v20);
    }

    else if ((*(v2 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a2, *v2, *(v2 + 8));
    }

    else
    {
      v18 = *v2;
      *(a2 + 16) = *(v2 + 16);
      *a2 = v18;
    }

    v22 = (a2 + 32);
    v21 = *(a2 + 32);
    *(a2 + 24) = *(v2 + 24);
    v23 = *(v2 + 32);
    v24 = *(v2 + 40);
    v25 = v24 - v23;
    v26 = *(a2 + 48);
    if (v26 - v21 >= (v24 - v23))
    {
      v62 = v16;
      v38 = *(a2 + 40);
      v39 = (v38 - v21);
      if (v38 - v21 >= v25)
      {
        v16 = v62;
        if (v23 != v24)
        {
          v48 = 0;
          do
          {
            v51 = v21 + v48;
            v52 = v23 + v48;
            if (v23 != v21)
            {
              v53 = v52[23];
              if (v51[23] < 0)
              {
                if (v53 >= 0)
                {
                  v49 = v23 + v48;
                }

                else
                {
                  v49 = *(v23 + v48);
                }

                if (v53 >= 0)
                {
                  v50 = v52[23];
                }

                else
                {
                  v50 = *(v23 + v48 + 8);
                }

                std::string::__assign_no_alias<false>((v21 + v48), v49, v50);
              }

              else if (v52[23] < 0)
              {
                std::string::__assign_no_alias<true>((v21 + v48), *(v23 + v48), *(v23 + v48 + 8));
              }

              else
              {
                v54 = *v52;
                *(v51 + 2) = *(v52 + 2);
                *v51 = v54;
              }
            }

            *(v51 + 6) = *(v52 + 6);
            std::__optional_storage_base<std::function<std::string ()(std::string,std::string)>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::function<std::string ()(std::string,std::string)>,false> const&>(v51 + 32, (v52 + 32));
            v48 += 72;
          }

          while ((v23 + v48) != v24);
          v38 = *(a2 + 40);
          v21 = (v21 + v48);
        }

        if (v38 != v21)
        {
          v56 = v38 - 40;
          do
          {
            while (1)
            {
              if (*(v38 - 8) == 1)
              {
                v58 = *(v38 - 2);
                if ((v38 - 40) == v58)
                {
                  (*(*v58 + 32))(v58);
                }

                else if (v58)
                {
                  (*(*v58 + 40))(v58);
                }
              }

              v57 = (v38 - 72);
              if (*(v38 - 49) < 0)
              {
                break;
              }

              v56 -= 72;
              v38 = (v38 - 72);
              if (v57 == v21)
              {
                goto LABEL_122;
              }
            }

            operator delete(*v57);
            v56 -= 72;
            v38 = (v38 - 72);
          }

          while (v57 != v21);
        }

LABEL_122:
        *(a2 + 40) = v21;
      }

      else
      {
        v40 = &v39[v23];
        if (v38 != v21)
        {
          v41 = 0;
          do
          {
            v44 = &v41[v21];
            v45 = &v41[v23];
            if (v23 != v21)
            {
              v46 = v45[23];
              if (v44[23] < 0)
              {
                if (v46 >= 0)
                {
                  v42 = &v41[v23];
                }

                else
                {
                  v42 = *&v41[v23];
                }

                if (v46 >= 0)
                {
                  v43 = v45[23];
                }

                else
                {
                  v43 = *&v41[v23 + 8];
                }

                std::string::__assign_no_alias<false>(&v41[v21], v42, v43);
              }

              else if (v45[23] < 0)
              {
                std::string::__assign_no_alias<true>(&v41[v21], *&v41[v23], *&v41[v23 + 8]);
              }

              else
              {
                v47 = *v45;
                *(v44 + 2) = *(v45 + 2);
                *v44 = v47;
              }
            }

            *(v44 + 6) = *(v45 + 6);
            std::__optional_storage_base<std::function<std::string ()(std::string,std::string)>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::function<std::string ()(std::string,std::string)>,false> const&>(v44 + 32, (v45 + 32));
            v41 += 72;
          }

          while (v39 != v41);
          v15 = a2;
          v38 = *(a2 + 40);
        }

        v65.__traits_.__loc_.__locale_ = v38;
        v70[0] = v38;
        v66[0].__locale_ = (a2 + 32);
        v66[1].__locale_ = v70;
        v55 = v38;
        *&v67 = &v65;
        *(&v67 + 1) = 0xAAAAAAAAAAAAAA00;
        v16 = v62;
        if (v40 != v24)
        {
          v55 = v38;
          do
          {
            std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo&,ResetReasonEncoder::SubmatchInfo*>(v55, v40);
            v40 = (v40 + 72);
            v55 = (v65.__traits_.__loc_.__locale_ + 72);
            v65.__traits_.__loc_.__locale_ = (v65.__traits_.__loc_.__locale_ + 72);
          }

          while (v40 != v24);
        }

        *(v15 + 40) = v55;
      }
    }

    else
    {
      v27 = 0x8E38E38E38E38E39 * (v25 >> 3);
      if (v21)
      {
        v61 = v16;
        v28 = *(a2 + 40);
        v29 = v21;
        if (v28 != v21)
        {
          v30 = v28 - 40;
          do
          {
            while (1)
            {
              if (*(v28 - 8) == 1)
              {
                v32 = *(v28 - 2);
                if ((v28 - 40) == v32)
                {
                  (*(*v32 + 32))(v32);
                }

                else if (v32)
                {
                  (*(*v32 + 40))(v32);
                }
              }

              v31 = v28 - 9;
              if (*(v28 - 49) < 0)
              {
                break;
              }

              v30 -= 72;
              v28 = (v28 - 72);
              if (v31 == v21)
              {
                goto LABEL_62;
              }
            }

            operator delete(*v31);
            v30 -= 72;
            v28 = (v28 - 72);
          }

          while (v31 != v21);
LABEL_62:
          v29 = *v22;
          v15 = a2;
        }

        *(v15 + 40) = v21;
        operator delete(v29);
        v26 = 0;
        *v22 = 0;
        *(a2 + 40) = 0;
        *(a2 + 48) = 0;
        v16 = v61;
      }

      if (v27 > 0x38E38E38E38E38ELL)
      {
        goto LABEL_125;
      }

      v33 = 0x8E38E38E38E38E39 * (v26 >> 3);
      v34 = 2 * v33;
      if (2 * v33 <= v27)
      {
        v34 = v27;
      }

      v35 = v33 >= 0x1C71C71C71C71C7 ? 0x38E38E38E38E38ELL : v34;
      if (v35 > 0x38E38E38E38E38ELL)
      {
LABEL_125:
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v36 = 72 * v35;
      v37 = operator new(72 * v35);
      *(v15 + 32) = v37;
      *(v15 + 40) = v37;
      *(v15 + 48) = v37 + v36;
      v65.__traits_.__loc_.__locale_ = v37;
      v70[0] = v37;
      v66[0].__locale_ = (a2 + 32);
      v66[1].__locale_ = v70;
      *&v67 = &v65;
      for (*(&v67 + 1) = 0xAAAAAAAAAAAAAA00; v23 != v24; v65.__traits_.__loc_.__locale_ = (v65.__traits_.__loc_.__locale_ + 72))
      {
        std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo&,ResetReasonEncoder::SubmatchInfo*>(v37, v23);
        v23 = (v23 + 72);
        v37 = (v65.__traits_.__loc_.__locale_ + 72);
      }

      *(v15 + 40) = v37;
    }
  }

  v59 = *(v2 + 56);
  *(v15 + 60) = *(v2 + 60);
  *(v15 + 56) = v59;
  return v16 != v2;
}

void sub_23C1EC488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetReasonEncoder::SubmatchInfo>,ResetReasonEncoder::SubmatchInfo*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v23 + 40) = v22;
  _Unwind_Resume(a1);
}

void sub_23C1EC4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if ((a16 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void ResetReasonEncoder::parse(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a2;
  v99 = *MEMORY[0x277D85DE8];
  *(a2 + 32) = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *a2 = v4;
  *(a2 + 16) = v4;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = (a2 + 8);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v80 = (a2 + 40);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  v96 = 0xAAAAAA00AAAAAA00;
  v92 = 0xAAAAAAAAAAAAAAAALL;
  v90[0] = 0;
  v90[1] = 0;
  v91 = 0;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v89, *a1, *(a1 + 8));
  }

  else
  {
    v89 = *a1;
  }

  MatchingMapping = ResetReasonEncoder::findMatchingMapping(&v89, v90);
  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    v64 = MatchingMapping;
    operator delete(v89.__r_.__value_.__l.__data_);
    v65 = v64;
    v3 = a2;
    v7 = 0x280C05000uLL;
    if (v65)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0x280C05000uLL;
    if (MatchingMapping)
    {
LABEL_6:
      *v3 = v92;
      v82 = v94;
      if (v93 == v94)
      {
        goto LABEL_141;
      }

      v79 = v5;
      v8 = (v93 + 72);
      v83 = 1;
      while (1)
      {
        v9 = (v8 - 9);
        __p.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        __p.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
        if (*(v8 - 8) != 1)
        {
          break;
        }

        if (*(a1 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v87, *a1, *(a1 + 8));
        }

        else
        {
          v87 = *a1;
        }

        if (*(v8 - 49) < 0)
        {
          std::string::__init_copy_ctor_external(&v86, *(v8 - 9), *(v8 - 8));
        }

        else
        {
          v16 = *v9;
          v86.__r_.__value_.__r.__words[2] = *(v8 - 7);
          *&v86.__r_.__value_.__l.__data_ = v16;
        }

        v17 = *(v8 - 2);
        if (!v17)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v17 + 48))(&v98);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&__p.__r_.__value_.__l.__data_ = *&v98.__position_.__begin_.__i_;
        __p.__r_.__value_.__r.__words[2] = v98.__position_.__pregex_;
        HIBYTE(v98.__position_.__pregex_) = 0;
        LOBYTE(v98.__position_.__begin_.__i_) = 0;
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v86.__r_.__value_.__l.__data_);
          if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
          {
LABEL_36:
            operator delete(v87.__r_.__value_.__l.__data_);
          }
        }

        else if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_36;
        }

LABEL_50:
        v29 = *(v8 - 12);
        switch(v29)
        {
          case 2:
            v34 = std::stol(&__p, 0, 16);
            if (v34 > 0xFFFFFFFFLL)
            {
              goto LABEL_91;
            }

            v36 = *(v3 + 48);
            v35 = *(v3 + 56);
            if (v36 >= v35)
            {
              v43 = *v80;
              v44 = v36 - *v80;
              v45 = (v44 >> 2) + 1;
              if (v45 >> 62)
              {
                std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
              }

              v46 = v35 - v43;
              if (v46 >> 1 > v45)
              {
                v45 = v46 >> 1;
              }

              v47 = v46 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v45;
              if (v47)
              {
                if (v47 >> 62)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v48 = v34;
                v49 = operator new(4 * v47);
                LODWORD(v34) = v48;
              }

              else
              {
                v49 = 0;
              }

              v50 = &v49[4 * (v44 >> 2)];
              *v50 = v34;
              v37 = v50 + 4;
              memcpy(v49, v43, v44);
              *(a2 + 40) = v49;
              *(a2 + 48) = v37;
              *(a2 + 56) = &v49[4 * v47];
              v3 = a2;
              if (v43)
              {
                operator delete(v43);
              }
            }

            else
            {
              *v36 = v34;
              v37 = v36 + 4;
            }

            *(v3 + 48) = v37;
            v7 = 0x280C05000uLL;
            if ((v83 & 1) == 0)
            {
LABEL_91:
              v51 = *(v7 + 3264);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                p_p = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  p_p = __p.__r_.__value_.__r.__words[0];
                }

                LODWORD(v98.__position_.__begin_.__i_) = 136315138;
                *(&v98.__position_.__begin_.__i_ + 4) = p_p;
                v40 = v51;
                v41 = "An error occurred converting hex string argument %s to unsigned integer";
LABEL_120:
                v42 = 12;
LABEL_121:
                _os_log_debug_impl(&dword_23C1C4000, v40, OS_LOG_TYPE_DEBUG, v41, &v98, v42);
              }

LABEL_110:
              v22 = 0;
              v83 = 0;
              goto LABEL_111;
            }

            goto LABEL_108;
          case 1:
            v30 = std::stol(&__p, 0, 10);
            if (v30 > 0xFFFFFFFFLL)
            {
              goto LABEL_109;
            }

            v32 = *(v3 + 48);
            v31 = *(v3 + 56);
            if (v32 >= v31)
            {
              v53 = *v80;
              v54 = v32 - *v80;
              v55 = (v54 >> 2) + 1;
              if (v55 >> 62)
              {
                std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
              }

              v56 = v31 - v53;
              if (v56 >> 1 > v55)
              {
                v55 = v56 >> 1;
              }

              v57 = v56 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v55;
              if (v57)
              {
                if (v57 >> 62)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v58 = v30;
                v59 = operator new(4 * v57);
                LODWORD(v30) = v58;
              }

              else
              {
                v59 = 0;
              }

              v60 = &v59[4 * (v54 >> 2)];
              *v60 = v30;
              v33 = v60 + 4;
              memcpy(v59, v53, v54);
              *(a2 + 40) = v59;
              *(a2 + 48) = v33;
              *(a2 + 56) = &v59[4 * v57];
              v3 = a2;
              if (v53)
              {
                operator delete(v53);
              }
            }

            else
            {
              *v32 = v30;
              v33 = v32 + 4;
            }

            *(v3 + 48) = v33;
            v7 = 0x280C05000;
            if ((v83 & 1) == 0)
            {
LABEL_109:
              v61 = *(v7 + 3264);
              if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
              {
                v63 = &__p;
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v63 = __p.__r_.__value_.__r.__words[0];
                }

                LODWORD(v98.__position_.__begin_.__i_) = 136315138;
                *(&v98.__position_.__begin_.__i_ + 4) = v63;
                v40 = v61;
                v41 = "An error occurred converting decimal string argument %s to unsigned integer";
                goto LABEL_120;
              }

              goto LABEL_110;
            }

LABEL_108:
            v22 = 0;
            v83 = 1;
            goto LABEL_111;
          case 0:
            if (*(v3 + 32))
            {
              goto LABEL_72;
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(v79, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              *v79 = __p;
            }

            *(v3 + 32) = 1;
            if ((v83 & 1) == 0)
            {
LABEL_72:
              v39 = *(v7 + 3264);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                LOWORD(v98.__position_.__begin_.__i_) = 0;
                v40 = v39;
                v41 = "Expected to find a text argument, but none was found";
                v42 = 2;
                goto LABEL_121;
              }

              goto LABEL_110;
            }

            goto LABEL_108;
        }

        v22 = 0;
LABEL_111:
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (!v22)
        {
          v62 = v8 == v82;
          v8 += 9;
          if (!v62)
          {
            continue;
          }
        }

        v5 = v79;
        if ((v83 & 1) == 0)
        {
          goto LABEL_128;
        }

        goto LABEL_141;
      }

      *&v10 = 0xAAAAAAAAAAAAAAAALL;
      *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&__re.__loop_count_ = v10;
      *&__re.__start_.__cntrl_ = v10;
      *&__re.__traits_.__loc_.__locale_ = v10;
      *&__re.__traits_.__col_ = v10;
      std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&__re, (v8 - 9), 0);
      *&v98.__suffix_.matched = 0xAAAAAAAAAAAAAA00;
      v13.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
      v13.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
      *&v98.__position_.__match_.__suffix_.matched = v13;
      *&v98.__position_.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
      *&v98.__position_.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
      *(&v98.__position_.__flags_ + 1) = -1431655766;
      memset(&v98.__position_.__match_.__prefix_, 0, 17);
      memset(&v98.__position_.__match_.__suffix_, 0, 17);
      v98.__position_.__match_.__ready_ = 0;
      memset(&v98.__position_.__match_, 0, 40);
      memset(&v98, 0, 28);
      memset(&v98.__position_.__match_.__position_start_, 0, 32);
      memset(&v98.__n_, 0, 32);
      *&__x.__n_ = v13;
      *&__x.__subs_.__end_ = v13;
      *&__x.__result_ = v13;
      *&__x.__suffix_.second.__i_ = v13;
      *&__x.__position_.__match_.__suffix_.second.__i_ = v13;
      *&__x.__position_.__match_.__ready_ = v13;
      __x.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v13;
      *&__x.__position_.__match_.__prefix_.matched = v13;
      *&__x.__position_.__match_.__matches_.__end_cap_.__value_ = v13;
      *&__x.__position_.__match_.__unmatched_.second.__i_ = v13;
      *&__x.__position_.__pregex_ = v13;
      *&__x.__position_.__match_.__matches_.__begin_ = v13;
      *&__x.__position_.__begin_.__i_ = v13;
      v14 = *(a1 + 23);
      if (v14 < 0)
      {
        v15.__i_ = *a1;
        v14 = *(a1 + 8);
      }

      else
      {
        v15.__i_ = a1;
      }

      v18.__i_ = &v15.__i_[v14];
      std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__x, v15, v18, &__re, v11, v12);
      std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
      v19 = std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v98, &__x);
      v20 = v19;
      if (v19)
      {
        v21 = *(v7 + 3264);
        v22 = 2;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          if (*(v8 - 49) < 0)
          {
            v9 = *v9;
          }

          LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
          *(__dst.__r_.__value_.__r.__words + 4) = v9;
          _os_log_debug_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEBUG, "Failed to parse out submatch with pattern %s", &__dst, 0xCu);
          v83 = 0;
          begin = __x.__subs_.__begin_;
          if (!__x.__subs_.__begin_)
          {
LABEL_41:
            if (__x.__position_.__match_.__matches_.__begin_)
            {
              __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
              operator delete(__x.__position_.__match_.__matches_.__begin_);
            }

            if (v98.__subs_.__begin_)
            {
              v98.__subs_.__end_ = v98.__subs_.__begin_;
              operator delete(v98.__subs_.__begin_);
            }

            if (v98.__position_.__match_.__matches_.__begin_)
            {
              v98.__position_.__match_.__matches_.__end_ = v98.__position_.__match_.__matches_.__begin_;
              operator delete(v98.__position_.__match_.__matches_.__begin_);
            }

            cntrl = __re.__start_.__cntrl_;
            if (__re.__start_.__cntrl_ && !atomic_fetch_add(&__re.__start_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (cntrl->__on_zero_shared)(cntrl);
              std::__shared_weak_count::__release_weak(cntrl);
              std::locale::~locale(&__re.__traits_.__loc_);
              if (v20)
              {
                goto LABEL_111;
              }
            }

            else
            {
              std::locale::~locale(&__re.__traits_.__loc_);
              if (v20)
              {
                goto LABEL_111;
              }
            }

            goto LABEL_50;
          }
        }

        else
        {
          v83 = 0;
          begin = __x.__subs_.__begin_;
          if (!__x.__subs_.__begin_)
          {
            goto LABEL_41;
          }
        }

LABEL_40:
        __x.__subs_.__end_ = begin;
        operator delete(begin);
        goto LABEL_41;
      }

      if (!__x.__result_->matched)
      {
        memset(&__dst, 0, sizeof(__dst));
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      i = __x.__result_->first.__i_;
      v24 = __x.__result_->second.__i_;
      v26 = v24 - __x.__result_->first.__i_;
      if (v26 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v26 > 0x16)
      {
        if ((v26 | 7) == 0x17)
        {
          v38 = 25;
        }

        else
        {
          v38 = (v26 | 7) + 1;
        }

        p_dst = operator new(v38);
        __dst.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
        __dst.__r_.__value_.__l.__size_ = v26;
        v7 = 0x280C05000;
        if (v24 == i)
        {
LABEL_33:
          p_dst->__r_.__value_.__s.__data_[v26] = 0;
          v3 = a2;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_39;
          }

LABEL_38:
          operator delete(__p.__r_.__value_.__l.__data_);
LABEL_39:
          v22 = 0;
          __p = __dst;
          begin = __x.__subs_.__begin_;
          if (!__x.__subs_.__begin_)
          {
            goto LABEL_41;
          }

          goto LABEL_40;
        }
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v24 - __x.__result_->first.__i_;
        p_dst = &__dst;
        if (v24 == i)
        {
          goto LABEL_33;
        }
      }

      memmove(p_dst, i, v26);
      goto LABEL_33;
    }
  }

  v66 = _MergedGlobals_0;
  if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEBUG))
  {
    v67 = a1;
    if (*(a1 + 23) < 0)
    {
      v67 = *a1;
    }

    LODWORD(v98.__position_.__begin_.__i_) = 136315138;
    *(&v98.__position_.__begin_.__i_ + 4) = v67;
    _os_log_debug_impl(&dword_23C1C4000, v66, OS_LOG_TYPE_DEBUG, "Reason string %s did not match any existing regex pattern", &v98, 0xCu);
  }

LABEL_128:
  v68 = *(v7 + 3264);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    v69 = a1;
    if (*(a1 + 23) < 0)
    {
      v69 = *a1;
    }

    LODWORD(v98.__position_.__begin_.__i_) = 136315138;
    *(&v98.__position_.__begin_.__i_ + 4) = v69;
    _os_log_impl(&dword_23C1C4000, v68, OS_LOG_TYPE_INFO, "A problem occurred trying to parse reason string %s, so attempting to send as much of the raw reason string as will fit", &v98, 0xCu);
  }

  *v3 = 12;
  if (*(v3 + 32) == 1)
  {
    if (v5 != a1)
    {
      v70 = *(a1 + 23);
      if (*(v3 + 31) < 0)
      {
        if (v70 >= 0)
        {
          v77 = a1;
        }

        else
        {
          v77 = *a1;
        }

        if (v70 >= 0)
        {
          v78 = *(a1 + 23);
        }

        else
        {
          v78 = *(a1 + 8);
        }

        std::string::__assign_no_alias<false>(v5, v77, v78);
      }

      else if ((*(a1 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v5, *a1, *(a1 + 8));
      }

      else
      {
        *&v5->__r_.__value_.__l.__data_ = *a1;
        v5->__r_.__value_.__r.__words[2] = *(a1 + 16);
      }
    }
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v5, *a1, *(a1 + 8));
    }

    else
    {
      *&v5->__r_.__value_.__l.__data_ = *a1;
      v5->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    *(v3 + 32) = 1;
  }

LABEL_141:
  v71 = v93;
  if (v93)
  {
    v72 = v94;
    v73 = v93;
    if (v94 != v93)
    {
      v74 = v94 - 40;
      do
      {
        while (1)
        {
          if (*(v72 - 8) == 1)
          {
            v76 = *(v72 - 2);
            if (v72 - 40 == v76)
            {
              (*(*v76 + 32))(v76);
            }

            else if (v76)
            {
              (*(*v76 + 40))(v76);
            }
          }

          v75 = (v72 - 72);
          if (*(v72 - 49) < 0)
          {
            break;
          }

          v74 -= 72;
          v72 -= 72;
          if (v75 == v71)
          {
            goto LABEL_152;
          }
        }

        operator delete(*v75);
        v74 -= 72;
        v72 -= 72;
      }

      while (v75 != v71);
LABEL_152:
      v73 = v93;
    }

    v94 = v71;
    operator delete(v73);
  }

  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90[0]);
  }
}

void sub_23C1ED0BC(_Unwind_Exception *a1)
{
  if (v4 < 0)
  {
    operator delete(v3);
  }

  ResetReasonEncoder::Mapping::~Mapping(&v5);
  ResetReasonEncoder::ParsedReason::~ParsedReason(v2);
  _Unwind_Resume(a1);
}

void sub_23C1ED144(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  if (a63 < 0)
  {
    operator delete(a58);
  }

  JUMPOUT(0x23C1ED194);
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this)
{
  begin = this->__position_.__match_.__matches_.__begin_;
  end = this->__position_.__match_.__matches_.__end_;
  v4 = end - begin;
  if (end == begin)
  {
    v5 = 0;
    p_suffix = &this->__suffix_;
    if (this->__result_ == &this->__suffix_)
    {
LABEL_20:
      p_unmatched = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v5 = operator new(v4);
    memcpy(v5, begin, 24 * ((v4 - 24) / 0x18uLL) + 24);
    p_suffix = &this->__suffix_;
    if (this->__result_ == &this->__suffix_)
    {
      goto LABEL_20;
    }
  }

  v7 = this->__subs_.__begin_;
  v8 = this->__n_ + 1;
  if (v8 < this->__subs_.__end_ - v7)
  {
    this->__n_ = v8;
    v9 = v7[v8];
    if (v9 != -1)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) <= v9)
      {
        p_unmatched = &this->__position_.__match_.__unmatched_;
      }

      else
      {
        p_unmatched = &begin[v9];
      }

      goto LABEL_21;
    }

LABEL_16:
    p_unmatched = &this->__position_.__match_.__prefix_;
    goto LABEL_21;
  }

  i = this->__position_.__match_.__suffix_.first.__i_;
  v12 = this->__position_.__match_.__suffix_.second.__i_;
  matched = this->__position_.__match_.__suffix_.matched;
  this->__n_ = 0;
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&this->__position_);
  v14 = this->__position_.__match_.__matches_.__begin_;
  v15 = this->__position_.__match_.__matches_.__end_;
  v16 = v15 - v14;
  if (v15 == v14)
  {
    v18 = this->__subs_.__begin_;
    v19 = this->__subs_.__end_;
    if (v18 != v19)
    {
      while (*v18 != -1)
      {
        if (++v18 == v19)
        {
          goto LABEL_20;
        }
      }
    }

    p_unmatched = 0;
    if (v18 != v19 && matched && v12 != i)
    {
      this->__suffix_.matched = 1;
      this->__suffix_.first.__i_ = i;
      this->__suffix_.second.__i_ = v12;
      p_unmatched = p_suffix;
    }
  }

  else
  {
    v17 = this->__subs_.__begin_[this->__n_];
    if (v17 == -1)
    {
      goto LABEL_16;
    }

    p_unmatched = &v14[v17];
    if (0xAAAAAAAAAAAAAAABLL * (v16 >> 3) <= v17)
    {
      p_unmatched = &this->__position_.__match_.__unmatched_;
    }
  }

LABEL_21:
  this->__result_ = p_unmatched;
  if (v5)
  {
    operator delete(v5);
  }

  return this;
}

void sub_23C1ED390(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  v2 = this->__result_;
  v3 = __x->__result_;
  if (!(v2 | v3))
  {
    return 1;
  }

  p_suffix = &this->__suffix_;
  if (v2 == &this->__suffix_ && v3 == &__x->__suffix_)
  {
    v12 = this;
    v13 = __x;
    if (!std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](&this->__suffix_, &__x->__suffix_))
    {
      return 1;
    }

    this = v12;
    v2 = v12->__result_;
    __x = v13;
    if (!v2)
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v7 = __x->__result_;
  if (v7)
  {
    if (v2 == p_suffix || v7 == &__x->__suffix_)
    {
      return 0;
    }

    begin = this->__position_.__match_.__matches_.__begin_;
    end = this->__position_.__match_.__matches_.__end_;
    v10 = __x->__position_.__match_.__matches_.__begin_;
    v11 = __x->__position_.__match_.__matches_.__end_;
    if (end == begin || v11 == v10)
    {
      if (end != begin || v11 != v10)
      {
        return 0;
      }
    }

    else
    {
      if (this->__position_.__begin_.__i_ != __x->__position_.__begin_.__i_)
      {
        return 0;
      }

      if (this->__position_.__end_.__i_ != __x->__position_.__end_.__i_)
      {
        return 0;
      }

      if (this->__position_.__pregex_ != __x->__position_.__pregex_)
      {
        return 0;
      }

      if (this->__position_.__flags_ != __x->__position_.__flags_)
      {
        return 0;
      }

      v19 = this;
      v20 = __x;
      v21 = std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](this->__position_.__match_.__matches_.__begin_, __x->__position_.__match_.__matches_.__begin_);
      __x = v20;
      v22 = v21;
      this = v19;
      if (v22)
      {
        return 0;
      }
    }

    if (this->__n_ == __x->__n_)
    {
      p_subs = &this->__subs_;
      v14 = this->__subs_.__begin_;
      v16 = p_subs->__end_ - v14;
      v18 = &__x->__subs_;
      v17 = __x->__subs_.__begin_;
      if (v16 == v18->__end_ - v17)
      {
        return memcmp(v14, v17, v16) == 0;
      }
    }
  }

  return 0;
}

void *std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void ResetReasonEncoder::ParsedReason::~ParsedReason(ResetReasonEncoder::ParsedReason *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  if (*(this + 32) == 1 && *(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

double ResetReasonEncoder::encode@<D0>(ResetReasonEncoder *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 48) = v2;
  *(a2 + 33) = v2;
  *(a2 + 17) = v2;
  *(a2 + 1) = v2;
  *a2 = 0;
  *(a2 + 64) = 0;
  memset(v28 + 2, 0, 62);
  v3 = *(this + 5);
  v4 = *(this + 6);
  v5 = v4 - v3;
  v6 = (v4 - v3) >> 2;
  LOBYTE(v28[0]) = *this;
  BYTE1(v28[0]) = v6;
  if ((v4 - v3) >= 0x3F)
  {
    v7 = _MergedGlobals_0;
    if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_ERROR))
    {
      v24 = 134218240;
      v25 = v5;
      v26 = 1024;
      v27 = 62;
      _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Failed to encode parsed reason because the size of the numeric arguments (%zu bytes) exceeds the maximum size (%d bytes) of the reset reason", &v24, 0x12u);
    }

    return result;
  }

  if (v4 != v3)
  {
    if (v6 > 0x13 && (v6 ? (v9 = (v6 - 1) >> 32 == 0) : (v9 = 0), v9 && v28 - v3 + 2 >= 0x20))
    {
      v10 = v6 & 8;
      v11 = v6 & 8;
      v20 = (v3 + 16);
      v21 = (&v28[1] + 2);
      v22 = v10;
      do
      {
        v23 = *v20;
        *(v21 - 1) = *(v20 - 1);
        *v21 = v23;
        v20 += 2;
        v21 += 2;
        v22 -= 8;
      }

      while (v22);
      if (v6 == v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v12 = v11 + 1;
    do
    {
      *(v28 + 4 * v10 + 2) = *(v3 + 4 * v10);
      v10 = v12++;
    }

    while (v6 > v10);
  }

LABEL_15:
  if (*(this + 32))
  {
    v15 = *(this + 1);
    v13 = this + 8;
    v14 = v15;
    if (v13[23] >= 0)
    {
      v16 = v13;
    }

    else
    {
      v16 = v14;
    }

    v17 = a2;
    strlcpy(v28 + v5 + 2, v16, 62 - v5);
    a2 = v17;
  }

  v18 = v28[1];
  *a2 = v28[0];
  *(a2 + 16) = v18;
  result = *&v28[2];
  v19 = v28[3];
  *(a2 + 32) = v28[2];
  *(a2 + 48) = v19;
  *(a2 + 64) = 1;
  return result;
}

void ResetReasonEncoder::encode(const std::string::value_type *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = 0x280C05000uLL;
  v5 = _MergedGlobals_0;
  if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEBUG))
  {
    if (a1[23] >= 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = *a1;
    }

    *buf = 136315138;
    *&buf[4] = v14;
    _os_log_debug_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEBUG, "Attempting to parse and encode reason string: %s", buf, 0xCu);
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 48) = v6;
  *(a2 + 33) = v6;
  *(a2 + 17) = v6;
  *(a2 + 1) = v6;
  *a2 = 0;
  *(a2 + 64) = 0;
  *__p = v6;
  v50 = v6;
  *v47 = v6;
  v48 = v6;
  if (a1[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v46, *a1, *(a1 + 1));
  }

  else
  {
    v46 = *a1;
  }

  ResetReasonEncoder::parse(&v46, v47);
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  v7 = _MergedGlobals_0;
  if (os_log_type_enabled(_MergedGlobals_0, OS_LOG_TYPE_DEBUG))
  {
    log = v7;
    v42 = a1[23];
    v41 = *a1;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    *&v15 = 0xAAAAAAAAAAAAAAAALL;
    *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63[7] = v15;
    v63[8] = v15;
    v63[5] = v15;
    v63[6] = v15;
    v63[3] = v15;
    v63[4] = v15;
    v63[1] = v15;
    v63[2] = v15;
    v62 = v15;
    v63[0] = v15;
    v60 = v15;
    v61 = v15;
    v58 = v15;
    v59 = v15;
    v56 = v15;
    v57 = v15;
    *buf = v15;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\tParsed Reason:\n", 16);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\t\tError Code:\t", 14);
    v17 = MEMORY[0x23EECDF30](v16, LOBYTE(v47[0]));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
    if (LOBYTE(__p[0]) == 1)
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\t\tFree Text:\t", 13);
      if ((__p[0] & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (v48 >= 0)
      {
        v19 = &v47[1];
      }

      else
      {
        v19 = v47[1];
      }

      if (v48 >= 0)
      {
        v20 = HIBYTE(v48);
      }

      else
      {
        v20 = v48;
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
    }

    if (v50 != __p[1])
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\t\tNumeric Arguments:\n", 21);
      v23 = __p[1];
      v22 = v50;
      if (__p[1] != v50)
      {
        v24 = 0;
        do
        {
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v56, "\t\t\t[", 4);
          v26 = MEMORY[0x23EECDF30](v25, v24);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "] ", 2);
          *(v27 + *(*v27 - 24) + 8) = *(v27 + *(*v27 - 24) + 8) & 0xFFFFFFB5 | 2;
          v28 = MEMORY[0x23EECDF40]();
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " (0x", 4);
          *(v29 + *(*v29 - 24) + 8) = *(v29 + *(*v29 - 24) + 8) & 0xFFFFFFB5 | 8;
          v30 = MEMORY[0x23EECDF40]();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ")\n", 2);
          v23 += 4;
          v24 = (v24 + 1);
        }

        while (v23 != v22);
      }
    }

    if ((BYTE8(v62) & 0x10) != 0)
    {
      v34 = v62;
      if (v62 < *(&v59 + 1))
      {
        *&v62 = *(&v59 + 1);
        v34 = *(&v59 + 1);
      }

      v35 = &v59;
    }

    else
    {
      if ((BYTE8(v62) & 8) == 0)
      {
        v31 = 0;
        HIBYTE(v45) = 0;
        v32 = __dst;
        goto LABEL_60;
      }

      v35 = &v57 + 1;
      v34 = *(&v58 + 1);
    }

    v36 = *v35;
    v31 = v34 - *v35;
    if (v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v31 >= 0x17)
    {
      if ((v31 | 7) == 0x17)
      {
        v37 = 25;
      }

      else
      {
        v37 = (v31 | 7) + 1;
      }

      v32 = operator new(v37);
      __dst[1] = v31;
      v45 = v37 | 0x8000000000000000;
      __dst[0] = v32;
    }

    else
    {
      HIBYTE(v45) = v34 - *v35;
      v32 = __dst;
      if (!v31)
      {
        goto LABEL_60;
      }
    }

    memmove(v32, v36, v31);
LABEL_60:
    v4 = 0x280C05000;
    *(v32 + v31) = 0;
    *buf = *MEMORY[0x277D82818];
    v38 = *(MEMORY[0x277D82818] + 72);
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82818] + 64);
    *&v56 = v38;
    *(&v56 + 1) = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v61) < 0)
    {
      operator delete(*(&v60 + 1));
    }

    *(&v56 + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v57);
    std::iostream::~basic_iostream();
    MEMORY[0x23EECE150](v63);
    v39 = v41;
    if (v42 >= 0)
    {
      v39 = a1;
    }

    v40 = __dst;
    if (v45 < 0)
    {
      v40 = __dst[0];
    }

    *v51 = 136315394;
    v52 = v39;
    v53 = 2080;
    v54 = v40;
    _os_log_debug_impl(&dword_23C1C4000, log, OS_LOG_TYPE_DEBUG, "Reason string %s parsed to:\n%s", v51, 0x16u);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  ResetReasonEncoder::encode(v47, buf);
  v8 = v58;
  *(a2 + 32) = v57;
  *(a2 + 48) = v8;
  v9 = v59;
  *(a2 + 64) = v59;
  v10 = v56;
  *a2 = *buf;
  *(a2 + 16) = v10;
  v11 = *(v4 + 3264);
  if (v9 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      if (a1[23] >= 0)
      {
        v12 = a1;
      }

      else
      {
        v12 = *a1;
      }

      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_debug_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEBUG, "Successfully encoded reason string: %s", buf, 0xCu);
      v13 = __p[1];
      if (!__p[1])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_16:
    v13 = __p[1];
    if (!__p[1])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_16;
  }

  if (a1[23] >= 0)
  {
    v33 = a1;
  }

  else
  {
    v33 = *a1;
  }

  *buf = 136315138;
  *&buf[4] = v33;
  _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to encode reason string: %s", buf, 0xCu);
  v13 = __p[1];
  if (!__p[1])
  {
    goto LABEL_18;
  }

LABEL_17:
  *&v50 = v13;
  operator delete(v13);
LABEL_18:
  if (LOBYTE(__p[0]) == 1 && SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }
}

void sub_23C1EDEDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ResetReasonEncoder::ParsedReason::~ParsedReason(va);
  _Unwind_Resume(a1);
}

void sub_23C1EDEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  ResetReasonEncoder::ParsedReason::~ParsedReason(va);
  _Unwind_Resume(a1);
}

void sub_23C1EDF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23C1EDF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a33, MEMORY[0x277D82818]);
  MEMORY[0x23EECE150](&a49);
  ResetReasonEncoder::ParsedReason::~ParsedReason(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::__optional_destruct_base<std::function<std::string ()(std::string,std::string)>,false>::~__optional_destruct_base[abi:ne200100](uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

void ****std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::SubmatchInfo>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
        v6 = v4 - 5;
        do
        {
          while (1)
          {
            if (*(v4 - 8) == 1)
            {
              v8 = *(v4 - 2);
              if (v4 - 5 == v8)
              {
                (*(*v8 + 4))(v8);
              }

              else if (v8)
              {
                (*(*v8 + 5))(v8);
              }
            }

            v7 = v4 - 9;
            if (*(v4 - 49) < 0)
            {
              break;
            }

            v6 -= 9;
            v4 -= 9;
            if (v7 == v3)
            {
              goto LABEL_13;
            }
          }

          operator delete(*v7);
          v6 -= 9;
          v4 -= 9;
        }

        while (v7 != v3);
LABEL_13:
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetReasonEncoder::SubmatchInfo>,ResetReasonEncoder::SubmatchInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 5;
      do
      {
        while (1)
        {
          if (*(v4 - 8) == 1)
          {
            v8 = *(v4 - 2);
            if (v4 - 5 == v8)
            {
              (*(*v8 + 4))(v8);
            }

            else if (v8)
            {
              (*(*v8 + 5))(v8);
            }
          }

          v7 = v4 - 9;
          if (*(v4 - 49) < 0)
          {
            break;
          }

          v6 -= 9;
          v4 -= 9;
          if (v7 == v5)
          {
            return a1;
          }
        }

        operator delete(*v7);
        v6 -= 9;
        v4 -= 9;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

std::string *std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__s.__data_[8] = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[2].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 64) == 1)
  {
    v6 = *(a2 + 7);
    if (v6)
    {
      if (v6 == a2 + 2)
      {
        this[2].__r_.__value_.__l.__size_ = &this[1].__r_.__value_.__l.__size_;
        (*(**(a2 + 7) + 24))(*(a2 + 7), &this[1].__r_.__value_.__l.__size_);
        goto LABEL_10;
      }

      v6 = (*(*v6 + 16))(v6);
    }

    this[2].__r_.__value_.__l.__size_ = v6;
LABEL_10:
    this[2].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_23C1EE2E4(_Unwind_Exception *a1)
{
  std::__optional_destruct_base<std::function<std::string ()(std::string,std::string)>,false>::~__optional_destruct_base[abi:ne200100](v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::__function::__func<$_0,std::allocator<$_0>,std::string ()(std::string,std::string)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_284EF96D8;
  return result;
}

void std::__function::__func<$_0,std::allocator<$_0>,std::string ()(std::string,std::string)>::operator()(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *v38 = *a1;
  v39 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *v36 = *a2;
  v37 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v59 = 0uLL;
  pregex = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57 = v4;
  v58 = v4;
  *&v55[0].__locale_ = v4;
  v56 = v4;
  v5 = std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v55, v36, 0);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAA00;
  v47[1].__end_cap_.__value_ = 0xAAAAAAAAAAAAAAAALL;
  v53 = v6;
  v48 = 0;
  v49 = 0;
  v52 = 0;
  v51 = 0;
  LOBYTE(v53) = 0;
  BYTE8(v53) = 0;
  v54 = 0;
  memset(v47, 0, 41);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  __p.__position_.__match_.__unmatched_.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  __p.__position_.__match_.__matches_.__end_ = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__prefix_.second.__i_ = v6;
  memset(&__p.__position_.__match_.__matches_.__end_cap_, 0, 17);
  memset(&__p.__position_.__match_.__unmatched_.matched, 0, 17);
  __p.__position_.__match_.__prefix_.matched = 0;
  __p.__position_.__match_.__suffix_.first.__i_ = 0;
  memset(&__p, 0, 32);
  v7 = HIBYTE(v39);
  if (v39 >= 0)
  {
    v8 = v38;
  }

  else
  {
    v8 = v38[0];
  }

  if (v39 < 0)
  {
    v7 = v38[1];
  }

  *(&__p.__position_.__flags_ + 1) = 0uLL;
  v9 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v5, v8, &v7[v8], &__p, 0);
  v10 = HIBYTE(v39);
  if (v39 >= 0)
  {
    v11 = v38;
  }

  else
  {
    v11 = v38[0];
  }

  if (v39 < 0)
  {
    v10 = v38[1];
  }

  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(v47, v11, &v10[v11], &__p, 0);
  if (__p.__position_.__begin_.__i_)
  {
    __p.__position_.__end_.__i_ = __p.__position_.__begin_.__i_;
    operator delete(__p.__position_.__begin_.__i_);
  }

  if (v9)
  {
    p_end_cap = &v47[1].__end_cap_;
    if (v47[0].__end_ != v47[0].__begin_)
    {
      p_end_cap = &v47[0].__begin_->matched;
    }

    if (*p_end_cap != 1)
    {
      memset(&__p, 0, 24);
      if (SHIBYTE(pregex) < 0)
      {
LABEL_29:
        operator delete(v59);
      }

LABEL_30:
      v59 = *&__p.__position_.__begin_.__i_;
      pregex = __p.__position_.__pregex_;
      goto LABEL_31;
    }

    if (v47[0].__end_ == v47[0].__begin_)
    {
      begin = &v47[1];
    }

    else
    {
      begin = v47[0].__begin_;
    }

    i = begin->first.__i_;
    p_i = &v47[0].__begin_->second.__i_;
    if (v47[0].__end_ == v47[0].__begin_)
    {
      p_i = &v47[1].__end_;
    }

    v16 = *p_i;
    v17 = *p_i - i;
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 > 0x16)
    {
      if ((v17 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v17 | 7) + 1;
      }

      p_p = operator new(v34);
      __p.__position_.__pregex_ = (v34 | 0x8000000000000000);
      __p.__position_.__begin_.__i_ = p_p;
      __p.__position_.__end_.__i_ = v17;
      if (v16 == i)
      {
LABEL_26:
        p_p[v17] = 0;
        if (SHIBYTE(pregex) < 0)
        {
          goto LABEL_29;
        }

        goto LABEL_30;
      }
    }

    else
    {
      HIBYTE(__p.__position_.__pregex_) = *p_i - i;
      p_p = &__p;
      if (v16 == i)
      {
        goto LABEL_26;
      }
    }

    memmove(p_p, i, v17);
    goto LABEL_26;
  }

LABEL_31:
  *&v19 = 0xAAAAAAAAAAAAAAAALL;
  *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__re.__loop_count_ = v19;
  *&__re.__start_.__cntrl_ = v19;
  *&__re.__traits_.__loc_.__locale_ = v19;
  *&__re.__traits_.__col_ = v19;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&__re, "\\s+", 0);
  v22.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v22.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&__p.__position_.__match_.__suffix_.matched = v22;
  *(&__p.__position_.__flags_ + 1) = -1431655766;
  *&__p.__suffix_.matched = 0xAAAAAAAAAAAAAA00;
  memset(&__p.__position_.__match_.__prefix_, 0, 17);
  memset(&__p.__position_.__match_.__suffix_, 0, 17);
  __p.__position_.__match_.__ready_ = 0;
  memset(&__p.__position_.__match_, 0, 41);
  memset(&__p, 0, 28);
  memset(&__p.__position_.__match_.__position_start_, 0, 32);
  memset(&__p.__n_, 0, 32);
  *&__x.__n_ = v22;
  *&__x.__subs_.__end_ = v22;
  *&__x.__result_ = v22;
  *&__x.__suffix_.second.__i_ = v22;
  *&__x.__position_.__match_.__suffix_.second.__i_ = v22;
  *&__x.__position_.__match_.__ready_ = v22;
  __x.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v22;
  *&__x.__position_.__match_.__prefix_.matched = v22;
  *&__x.__position_.__match_.__matches_.__end_cap_.__value_ = v22;
  *&__x.__position_.__match_.__unmatched_.second.__i_ = v22;
  *&__x.__position_.__pregex_ = v22;
  *&__x.__position_.__match_.__matches_.__begin_ = v22;
  v23 = HIBYTE(pregex);
  if (SHIBYTE(pregex) >= 0)
  {
    v24.__i_ = &v59;
  }

  else
  {
    v24.__i_ = v59;
  }

  if (SHIBYTE(pregex) < 0)
  {
    v23 = *(&v59 + 1);
  }

  *&__x.__position_.__begin_.__i_ = v22;
  v25.__i_ = &v24.__i_[v23];
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__x, v24, v25, &__re, v20, v21);
  v26.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v26.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v43.__n_ = v26;
  *&v43.__subs_.__end_ = v26;
  *&v43.__result_ = v26;
  *&v43.__suffix_.second.__i_ = v26;
  *&v43.__position_.__match_.__suffix_.second.__i_ = v26;
  *&v43.__position_.__match_.__ready_ = v26;
  v43.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v26;
  *&v43.__position_.__match_.__prefix_.matched = v26;
  *&v43.__position_.__match_.__matches_.__end_cap_.__value_ = v26;
  *&v43.__position_.__match_.__unmatched_.second.__i_ = v26;
  *&v43.__position_.__pregex_ = v26;
  *&v43.__position_.__match_.__matches_.__begin_ = v26;
  *&v43.__position_.__begin_.__i_ = v26;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&v43, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (v43.__subs_.__begin_)
  {
    v43.__subs_.__end_ = v43.__subs_.__begin_;
    operator delete(v43.__subs_.__begin_);
  }

  if (v43.__position_.__match_.__matches_.__begin_)
  {
    v43.__position_.__match_.__matches_.__end_ = v43.__position_.__match_.__matches_.__begin_;
    operator delete(v43.__position_.__match_.__matches_.__begin_);
  }

  v27.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v27.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v42.__n_ = v27;
  *&v42.__subs_.__end_ = v27;
  *&v42.__result_ = v27;
  *&v42.__suffix_.second.__i_ = v27;
  *&v42.__position_.__match_.__suffix_.second.__i_ = v27;
  *&v42.__position_.__match_.__ready_ = v27;
  v42.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v27;
  *&v42.__position_.__match_.__prefix_.matched = v27;
  *&v42.__position_.__match_.__matches_.__end_cap_.__value_ = v27;
  *&v42.__position_.__match_.__unmatched_.second.__i_ = v27;
  *&v42.__position_.__pregex_ = v27;
  *&v42.__position_.__match_.__matches_.__begin_ = v27;
  *&v42.__position_.__begin_.__i_ = v27;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&v42, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (v42.__subs_.__begin_)
  {
    v42.__subs_.__end_ = v42.__subs_.__begin_;
    operator delete(v42.__subs_.__begin_);
  }

  if (v42.__position_.__match_.__matches_.__begin_)
  {
    v42.__position_.__match_.__matches_.__end_ = v42.__position_.__match_.__matches_.__begin_;
    operator delete(v42.__position_.__match_.__matches_.__begin_);
  }

  if (!std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&__p, &__x))
  {
    if (!__x.__result_->matched)
    {
      __dst = 0uLL;
      v41 = 0;
      goto LABEL_52;
    }

    v28 = __x.__result_->first.__i_;
    v29 = __x.__result_->second.__i_;
    v30 = v29 - __x.__result_->first.__i_;
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v30 > 0x16)
    {
      if ((v30 | 7) == 0x17)
      {
        v35 = 25;
      }

      else
      {
        v35 = (v30 | 7) + 1;
      }

      p_dst = operator new(v35);
      *(&__dst + 1) = v30;
      v41 = v35 | 0x8000000000000000;
      *&__dst = p_dst;
      if (v29 == v28)
      {
        goto LABEL_50;
      }
    }

    else
    {
      HIBYTE(v41) = v29 - __x.__result_->first.__i_;
      p_dst = &__dst;
      if (v29 == v28)
      {
LABEL_50:
        *(p_dst + v30) = 0;
LABEL_52:
        *a3 = __dst;
        a3[2] = v41;
        goto LABEL_53;
      }
    }

    memmove(p_dst, v28, v30);
    goto LABEL_50;
  }

LABEL_53:
  if (__x.__subs_.__begin_)
  {
    __x.__subs_.__end_ = __x.__subs_.__begin_;
    operator delete(__x.__subs_.__begin_);
  }

  if (__x.__position_.__match_.__matches_.__begin_)
  {
    __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
    operator delete(__x.__position_.__match_.__matches_.__begin_);
  }

  if (__p.__subs_.__begin_)
  {
    __p.__subs_.__end_ = __p.__subs_.__begin_;
    operator delete(__p.__subs_.__begin_);
  }

  if (__p.__position_.__match_.__matches_.__begin_)
  {
    __p.__position_.__match_.__matches_.__end_ = __p.__position_.__match_.__matches_.__begin_;
    operator delete(__p.__position_.__match_.__matches_.__begin_);
  }

  cntrl = __re.__start_.__cntrl_;
  if (__re.__start_.__cntrl_ && !atomic_fetch_add(&__re.__start_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  std::locale::~locale(&__re.__traits_.__loc_);
  if (v47[0].__begin_)
  {
    v47[0].__end_ = v47[0].__begin_;
    operator delete(v47[0].__begin_);
  }

  v33 = v58;
  if (v58 && !atomic_fetch_add((v58 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
    std::locale::~locale(v55);
    if ((SHIBYTE(pregex) & 0x80000000) == 0)
    {
LABEL_69:
      if ((SHIBYTE(v37) & 0x80000000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_74;
    }
  }

  else
  {
    std::locale::~locale(v55);
    if ((SHIBYTE(pregex) & 0x80000000) == 0)
    {
      goto LABEL_69;
    }
  }

  operator delete(v59);
  if ((SHIBYTE(v37) & 0x80000000) == 0)
  {
LABEL_70:
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_75:
    operator delete(v38[0]);
    return;
  }

LABEL_74:
  operator delete(v36[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_75;
  }
}

void sub_23C1EE984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&a65);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x2C0]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&STACK[0x390]);
  v67 = STACK[0x3D0];
  if (STACK[0x3D0])
  {
    STACK[0x3D8] = v67;
    operator delete(v67);
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v65 - 160));
    if ((*(v65 - 73) & 0x80000000) == 0)
    {
LABEL_8:
      if (a14 < 0)
      {
LABEL_9:
        operator delete(a9);
        if ((a21 & 0x80000000) == 0)
        {
LABEL_10:
          _Unwind_Resume(a1);
        }

LABEL_5:
        operator delete(__p);
        _Unwind_Resume(a1);
      }

LABEL_4:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v65 - 160));
    if ((*(v65 - 73) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(*(v65 - 96));
  if (a14 < 0)
  {
    goto LABEL_9;
  }

  goto LABEL_4;
}

uint64_t std::__function::__func<$_0,std::allocator<$_0>,std::string ()(std::string,std::string)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_token_iterator<std::__wrap_iter<const char *>, char> *a2)
{
  v4 = *&a2->__position_.__begin_.__i_;
  *(&this->__position_.__end_.__i_ + 4) = *(&a2->__position_.__end_.__i_ + 4);
  this->__position_.__match_.__matches_.__begin_ = 0;
  *&this->__position_.__begin_.__i_ = v4;
  this->__position_.__match_.__matches_.__end_ = 0;
  this->__position_.__match_.__matches_.__end_cap_.__value_ = 0;
  begin = a2->__position_.__match_.__matches_.__begin_;
  end = a2->__position_.__match_.__matches_.__end_;
  v7 = end - begin;
  if (end == begin)
  {
    v8 = 0;
    v24 = 0;
  }

  else
  {
    if (0xAAAAAAAAAAAAAAABLL * (v7 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v8 = operator new(v7);
    this->__position_.__match_.__matches_.__begin_ = v8;
    this->__position_.__match_.__matches_.__end_ = v8;
    this->__position_.__match_.__matches_.__end_cap_.__value_ = (v8 + v7);
    v9 = 24 * ((v7 - 24) / 0x18uLL) + 24;
    memcpy(v8, begin, v9);
    v24 = v8 + v9;
    this->__position_.__match_.__matches_.__end_ = (v8 + v9);
  }

  v10 = a2->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *&this->__position_.__match_.__unmatched_.matched = *&a2->__position_.__match_.__unmatched_.matched;
  this->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v10;
  v11 = *&a2->__position_.__match_.__prefix_.second.__i_;
  v12 = a2->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  v13 = *&a2->__position_.__match_.__suffix_.matched;
  this->__position_.__match_.__position_start_.__i_ = a2->__position_.__match_.__position_start_.__i_;
  *&this->__position_.__match_.__suffix_.matched = v13;
  this->__position_.__match_.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v12;
  *&this->__position_.__match_.__prefix_.second.__i_ = v11;
  v14 = a2->__result_;
  this->__result_ = v14;
  v15 = a2->__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  *&this->__suffix_.matched = *&a2->__suffix_.matched;
  this->__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v15;
  n = a2->__n_;
  this->__subs_.__begin_ = 0;
  this->__n_ = n;
  this->__subs_.__end_ = 0;
  this->__subs_.__end_cap_.__value_ = 0;
  v18 = a2->__subs_.__begin_;
  v17 = a2->__subs_.__end_;
  v19 = v17 - v18;
  if (v17 == v18)
  {
    v20 = 0;
    if (a2->__result_ != &a2->__suffix_)
    {
      goto LABEL_8;
    }

LABEL_14:
    p_suffix = &this->__suffix_;
LABEL_16:
    this->__result_ = p_suffix;
    return this;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v20 = operator new(v17 - v18);
  this->__subs_.__begin_ = v20;
  this->__subs_.__end_ = v20;
  this->__subs_.__end_cap_.__value_ = (v20 + v19);
  memcpy(v20, v18, v19);
  this->__subs_.__end_ = (v20 + v19);
  if (a2->__result_ == &a2->__suffix_)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (v14)
  {
    v21 = v20[n];
    if (v21 == -1)
    {
      p_suffix = &this->__position_.__match_.__prefix_;
    }

    else if (0xAAAAAAAAAAAAAAABLL * ((v24 - v8) >> 3) <= v21)
    {
      p_suffix = &this->__position_.__match_.__unmatched_;
    }

    else
    {
      p_suffix = &v8[v21];
    }

    goto LABEL_16;
  }

  return this;
}

void sub_23C1EED20(_Unwind_Exception *exception_object)
{
  v5 = *v1;
  if (*v1)
  {
    *(v2 + 192) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<$_1,std::allocator<$_1>,std::string ()(std::string,std::string)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_284EF9768;
  return result;
}

void std::__function::__func<$_1,std::allocator<$_1>,std::string ()(std::string,std::string)>::operator()(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *&v71.__loop_count_ = *a1;
  v71.__start_.__cntrl_ = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *&v71.__traits_.__loc_.__locale_ = *a2;
  v71.__traits_.__col_ = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&__re.__loop_count_ = v4;
  *&__re.__start_.__cntrl_ = v4;
  *&__re.__traits_.__loc_.__locale_ = v4;
  *&__re.__traits_.__col_ = v4;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(&__re, &v71, 0);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v5;
  v82 = v5;
  *&v79[0].__locale_ = v5;
  v80 = v5;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v79, "\\s+", 0);
  v8.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v8.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v78.__position_.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&v78.__position_.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&v78.__position_.__match_.__suffix_.matched = v8;
  *(&v78.__position_.__flags_ + 1) = -1431655766;
  *&v78.__suffix_.matched = 0xAAAAAAAAAAAAAA00;
  memset(&v78.__position_.__match_.__prefix_, 0, 17);
  memset(&v78.__position_.__match_.__suffix_, 0, 17);
  v78.__position_.__match_.__ready_ = 0;
  memset(&v78.__position_.__match_, 0, 41);
  memset(&v78, 0, 28);
  memset(&v78.__position_.__match_.__position_start_, 0, 32);
  memset(&v78.__n_, 0, 32);
  *&__x.__n_ = v8;
  *&__x.__subs_.__end_ = v8;
  *&__x.__result_ = v8;
  *&__x.__suffix_.second.__i_ = v8;
  *&__x.__position_.__match_.__suffix_.second.__i_ = v8;
  *&__x.__position_.__match_.__ready_ = v8;
  __x.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v8;
  *&__x.__position_.__match_.__prefix_.matched = v8;
  *&__x.__position_.__match_.__matches_.__end_cap_.__value_ = v8;
  *&__x.__position_.__match_.__unmatched_.second.__i_ = v8;
  *&__x.__position_.__pregex_ = v8;
  *&__x.__position_.__match_.__matches_.__begin_ = v8;
  cntrl_high = HIBYTE(v71.__start_.__cntrl_);
  if (SHIBYTE(v71.__start_.__cntrl_) >= 0)
  {
    v10.__i_ = &v71.__loop_count_;
  }

  else
  {
    v10.__i_ = *&v71.__loop_count_;
  }

  if (SHIBYTE(v71.__start_.__cntrl_) < 0)
  {
    cntrl_high = v71.__start_.__ptr_;
  }

  *&__x.__position_.__begin_.__i_ = v8;
  v11.__i_ = &v10.__i_[cntrl_high];
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__x, v10, v11, &__re, v6, v7);
  v12.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v12.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&v76.__n_ = v12;
  *&v76.__subs_.__end_ = v12;
  *&v76.__result_ = v12;
  *&v76.__suffix_.second.__i_ = v12;
  *&v76.__position_.__match_.__suffix_.second.__i_ = v12;
  *&v76.__position_.__match_.__ready_ = v12;
  v76.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v12;
  *&v76.__position_.__match_.__prefix_.matched = v12;
  *&v76.__position_.__match_.__matches_.__end_cap_.__value_ = v12;
  *&v76.__position_.__match_.__unmatched_.second.__i_ = v12;
  *&v76.__position_.__pregex_ = v12;
  *&v76.__position_.__match_.__matches_.__begin_ = v12;
  *&v76.__position_.__begin_.__i_ = v12;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&v76, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (v76.__subs_.__begin_)
  {
    v76.__subs_.__end_ = v76.__subs_.__begin_;
    operator delete(v76.__subs_.__begin_);
  }

  if (v76.__position_.__match_.__matches_.__begin_)
  {
    v76.__position_.__match_.__matches_.__end_ = v76.__position_.__match_.__matches_.__begin_;
    operator delete(v76.__position_.__match_.__matches_.__begin_);
  }

  if (!std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v78, &__x))
  {
    if (!__x.__result_->matched)
    {
      memset(&__dst, 0, 24);
      if (*(a3 + 23) < 0)
      {
LABEL_19:
        operator delete(*a3);
      }

LABEL_20:
      *a3 = *&__dst.__position_.__begin_.__i_;
      *(a3 + 16) = __dst.__position_.__pregex_;
      goto LABEL_21;
    }

    i = __x.__result_->first.__i_;
    v14 = __x.__result_->second.__i_;
    v15 = v14 - __x.__result_->first.__i_;
    if (v15 > 0x7FFFFFFFFFFFFFF7)
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

      p_dst = operator new(v38);
      __dst.__position_.__end_.__i_ = v15;
      __dst.__position_.__pregex_ = (v38 | 0x8000000000000000);
      __dst.__position_.__begin_.__i_ = p_dst;
      if (v14 == i)
      {
LABEL_16:
        p_dst[v15] = 0;
        if (*(a3 + 23) < 0)
        {
          goto LABEL_19;
        }

        goto LABEL_20;
      }
    }

    else
    {
      HIBYTE(__dst.__position_.__pregex_) = v14 - __x.__result_->first.__i_;
      p_dst = &__dst;
      if (v14 == i)
      {
        goto LABEL_16;
      }
    }

    memmove(p_dst, i, v15);
    goto LABEL_16;
  }

LABEL_21:
  std::string::append(a3, " ", 1uLL);
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v75.__loop_count_ = v17;
  *&v75.__start_.__cntrl_ = v17;
  *&v75.__traits_.__loc_.__locale_ = v17;
  *&v75.__traits_.__col_ = v17;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v75, "TIMEOUT for message MIPC.*?Client=.*?Msg=.*?Trx=.*? ", 0);
  ptr = HIBYTE(v71.__start_.__cntrl_);
  if (SHIBYTE(v71.__start_.__cntrl_) >= 0)
  {
    v21.__i_ = &v71.__loop_count_;
  }

  else
  {
    v21.__i_ = *&v71.__loop_count_;
  }

  if (SHIBYTE(v71.__start_.__cntrl_) < 0)
  {
    ptr = v71.__start_.__ptr_;
  }

  v22.__i_ = &v21.__i_[ptr];
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__dst, v21, v22, &v75, v18, v19);
  *&__x.__position_.__begin_.__i_ = *&__dst.__position_.__begin_.__i_;
  *(&__x.__position_.__end_.__i_ + 4) = *(&__dst.__position_.__end_.__i_ + 4);
  begin = __dst.__position_.__match_.__matches_.__begin_;
  end = __dst.__position_.__match_.__matches_.__end_;
  v25 = __dst.__position_.__match_.__matches_.__end_ - __dst.__position_.__match_.__matches_.__begin_;
  value = __x.__position_.__match_.__matches_.__end_cap_.__value_;
  v27 = __x.__position_.__match_.__matches_.__begin_;
  if ((__x.__position_.__match_.__matches_.__end_cap_.__value_ - __x.__position_.__match_.__matches_.__begin_) >= (__dst.__position_.__match_.__matches_.__end_ - __dst.__position_.__match_.__matches_.__begin_))
  {
    v34 = __x.__position_.__match_.__matches_.__end_;
    if ((__x.__position_.__match_.__matches_.__end_ - __x.__position_.__match_.__matches_.__begin_) >= v25)
    {
      while (begin != end)
      {
        v27->first.__i_ = begin->first.__i_;
        v27->second.__i_ = begin->second.__i_;
        v27->matched = begin->matched;
        ++begin;
        ++v27;
      }

      __x.__position_.__match_.__matches_.__end_ = v27;
    }

    else
    {
      v35 = __dst.__position_.__match_.__matches_.__begin_ + __x.__position_.__match_.__matches_.__end_ - __x.__position_.__match_.__matches_.__begin_;
      if (__x.__position_.__match_.__matches_.__end_ != __x.__position_.__match_.__matches_.__begin_)
      {
        do
        {
          v27->first.__i_ = begin->first.__i_;
          v27->second.__i_ = begin->second.__i_;
          v27->matched = begin->matched;
          ++begin;
          ++v27;
        }

        while (begin != v35);
      }

      if (v35 == end)
      {
        __x.__position_.__match_.__matches_.__end_ = v34;
      }

      else
      {
        v36 = v34;
        do
        {
          v37 = *v35;
          *&v34->matched = *(v35 + 2);
          v34->std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v37;
          ++v34;
          v35 += 24;
          ++v36;
        }

        while (v35 != end);
        __x.__position_.__match_.__matches_.__end_ = v36;
      }
    }
  }

  else
  {
    v28 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    if (__x.__position_.__match_.__matches_.__begin_)
    {
      __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
      operator delete(__x.__position_.__match_.__matches_.__begin_);
      value = 0;
      memset(&__x.__position_.__match_, 0, 24);
    }

    if (v28 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_140;
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
    v30 = 2 * v29;
    if (2 * v29 <= v28)
    {
      v30 = 0xAAAAAAAAAAAAAAABLL * (v25 >> 3);
    }

    v31 = v29 >= 0x555555555555555 ? 0xAAAAAAAAAAAAAAALL : v30;
    if (v31 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_140:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v32 = operator new(24 * v31);
    v33 = v32;
    __x.__position_.__match_.__matches_.__begin_ = v32;
    __x.__position_.__match_.__matches_.__end_ = v32;
    __x.__position_.__match_.__matches_.__end_cap_.__value_ = &v32[v31];
    if (begin != end)
    {
      memcpy(v32, begin, 24 * ((v25 - 24) / 0x18uLL) + 24);
      v33 += (v25 - 24) / 0x18uLL + 1;
    }

    __x.__position_.__match_.__matches_.__end_ = v33;
  }

  __x.__position_.__match_.__unmatched_ = __dst.__position_.__match_.__unmatched_;
  __x.__position_.__match_.__prefix_ = __dst.__position_.__match_.__prefix_;
  __x.__position_.__match_.__suffix_ = __dst.__position_.__match_.__suffix_;
  __x.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = __dst.__suffix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>>;
  result = __dst.__result_;
  if (__dst.__result_ == &__dst.__suffix_)
  {
    result = &__x.__suffix_;
  }

  __x.__result_ = result;
  __x.__suffix_.matched = __dst.__suffix_.matched;
  v40 = __dst.__subs_.__begin_;
  __x.__n_ = __dst.__n_;
  v41 = __dst.__subs_.__end_;
  v42 = __dst.__subs_.__end_ - __dst.__subs_.__begin_;
  v43 = __x.__subs_.__end_cap_.__value_;
  v44 = __x.__subs_.__begin_;
  *&__x.__position_.__match_.__ready_ = *&__dst.__position_.__match_.__ready_;
  if ((__x.__subs_.__end_cap_.__value_ - __x.__subs_.__begin_) < (__dst.__subs_.__end_ - __dst.__subs_.__begin_))
  {
    v45 = v42 >> 2;
    if (__x.__subs_.__begin_)
    {
      __x.__subs_.__end_ = __x.__subs_.__begin_;
      operator delete(__x.__subs_.__begin_);
      v43 = 0;
      memset(&__x.__subs_, 0, sizeof(__x.__subs_));
    }

    if (v45 >> 62)
    {
      goto LABEL_141;
    }

    v46 = v43 >> 1;
    if (v43 >> 1 <= v45)
    {
      v46 = v42 >> 2;
    }

    v47 = v43 >= 0x7FFFFFFFFFFFFFFCLL ? 0x3FFFFFFFFFFFFFFFLL : v46;
    if (v47 >> 62)
    {
LABEL_141:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v48 = operator new(4 * v47);
    v49 = v48;
    __x.__subs_.__begin_ = v48;
    __x.__subs_.__end_ = v48;
    __x.__subs_.__end_cap_.__value_ = &v48[v47];
    if (v41 != v40)
    {
      memcpy(v48, v40, v42);
    }

    __x.__subs_.__end_ = (v49 + v42);
    v50 = __x.__result_;
    if (!__x.__result_)
    {
      goto LABEL_88;
    }

LABEL_81:
    if (v50 != &__x.__suffix_)
    {
      v55 = __x.__subs_.__begin_[__x.__n_];
      if (v55 == -1)
      {
        p_prefix = &__x.__position_.__match_.__prefix_;
      }

      else if (0xAAAAAAAAAAAAAAABLL * ((__x.__position_.__match_.__matches_.__end_ - __x.__position_.__match_.__matches_.__begin_) >> 3) <= v55)
      {
        p_prefix = &__x.__position_.__match_.__unmatched_;
      }

      else
      {
        p_prefix = &__x.__position_.__match_.__matches_.__begin_[v55];
      }

      __x.__result_ = p_prefix;
    }

    goto LABEL_88;
  }

  v51 = __x.__subs_.__end_;
  v52 = __x.__subs_.__end_ - __x.__subs_.__begin_;
  if ((__x.__subs_.__end_ - __x.__subs_.__begin_) >= v42)
  {
    if (__dst.__subs_.__end_ != __dst.__subs_.__begin_)
    {
      v54 = __x.__subs_.__begin_;
      memmove(__x.__subs_.__begin_, __dst.__subs_.__begin_, __dst.__subs_.__end_ - __dst.__subs_.__begin_);
      v44 = v54;
    }

    __x.__subs_.__end_ = (v44 + v42);
    v50 = __x.__result_;
    if (__x.__result_)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v53 = __dst.__subs_.__begin_ + v52;
    if (__x.__subs_.__end_ != __x.__subs_.__begin_)
    {
      memmove(__x.__subs_.__begin_, __dst.__subs_.__begin_, v52);
      v51 = __x.__subs_.__end_;
    }

    if (v41 != v53)
    {
      memmove(v51, v53, v41 - v53);
    }

    __x.__subs_.__end_ = (v51 + v41 - v53);
    v50 = __x.__result_;
    if (__x.__result_)
    {
      goto LABEL_81;
    }
  }

LABEL_88:
  if (__dst.__subs_.__begin_)
  {
    __dst.__subs_.__end_ = __dst.__subs_.__begin_;
    operator delete(__dst.__subs_.__begin_);
  }

  if (__dst.__position_.__match_.__matches_.__begin_)
  {
    __dst.__position_.__match_.__matches_.__end_ = __dst.__position_.__match_.__matches_.__begin_;
    operator delete(__dst.__position_.__match_.__matches_.__begin_);
  }

  v57.first.__i_ = 0xAAAAAAAAAAAAAAAALL;
  v57.second.__i_ = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.__position_.__begin_.__i_ = v57;
  *&__dst.__position_.__pregex_ = v57;
  *&__dst.__position_.__match_.__matches_.__begin_ = v57;
  *&__dst.__position_.__match_.__matches_.__end_cap_.__value_ = v57;
  *&__dst.__position_.__match_.__unmatched_.second.__i_ = v57;
  __dst.__position_.__match_.__prefix_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> = v57;
  *&__dst.__position_.__match_.__prefix_.matched = v57;
  *&__dst.__position_.__match_.__suffix_.second.__i_ = v57;
  *&__dst.__position_.__match_.__ready_ = v57;
  *&__dst.__result_ = v57;
  *&__dst.__suffix_.second.__i_ = v57;
  *&__dst.__n_ = v57;
  *&__dst.__subs_.__end_ = v57;
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(&__dst, &__x);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&__x);
  if (__dst.__subs_.__begin_)
  {
    __dst.__subs_.__end_ = __dst.__subs_.__begin_;
    operator delete(__dst.__subs_.__begin_);
  }

  if (__dst.__position_.__match_.__matches_.__begin_)
  {
    __dst.__position_.__match_.__matches_.__end_ = __dst.__position_.__match_.__matches_.__begin_;
    operator delete(__dst.__position_.__match_.__matches_.__begin_);
  }

  if (!std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v78, &__x))
  {
    if (!__x.__result_->matched)
    {
      v63 = 0;
      v64 = 0;
      v62 = 0;
      v71.__end_ = 0;
      v72 = 0;
      v73 = 0;
LABEL_104:
      if ((v62 & 0x80u) == 0)
      {
        p_end = &v71.__end_;
      }

      else
      {
        p_end = v64;
      }

      if ((v62 & 0x80u) == 0)
      {
        v66 = v62;
      }

      else
      {
        v66 = v63;
      }

      std::string::append(a3, p_end, v66);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v71.__end_);
      }

      goto LABEL_112;
    }

    v58 = __x.__result_->first.__i_;
    v59 = __x.__result_->second.__i_;
    v60 = v59 - __x.__result_->first.__i_;
    if (v60 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v60 > 0x16)
    {
      if ((v60 | 7) == 0x17)
      {
        v70 = 25;
      }

      else
      {
        v70 = (v60 | 7) + 1;
      }

      v61 = operator new(v70);
      v72 = v60;
      v73 = v70 | 0x8000000000000000;
      v71.__end_ = v61;
      if (v59 == v58)
      {
        goto LABEL_102;
      }
    }

    else
    {
      HIBYTE(v73) = v59 - __x.__result_->first.__i_;
      v61 = &v71.__end_;
      if (v59 == v58)
      {
LABEL_102:
        *(&v61->__vftable + v60) = 0;
        v62 = HIBYTE(v73);
        v64 = v71.__end_;
        v63 = v72;
        goto LABEL_104;
      }
    }

    memmove(v61, v58, v60);
    goto LABEL_102;
  }

LABEL_112:
  cntrl = v75.__start_.__cntrl_;
  if (v75.__start_.__cntrl_ && !atomic_fetch_add(&v75.__start_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  std::locale::~locale(&v75.__traits_.__loc_);
  if (__x.__subs_.__begin_)
  {
    __x.__subs_.__end_ = __x.__subs_.__begin_;
    operator delete(__x.__subs_.__begin_);
  }

  if (__x.__position_.__match_.__matches_.__begin_)
  {
    __x.__position_.__match_.__matches_.__end_ = __x.__position_.__match_.__matches_.__begin_;
    operator delete(__x.__position_.__match_.__matches_.__begin_);
  }

  if (v78.__subs_.__begin_)
  {
    v78.__subs_.__end_ = v78.__subs_.__begin_;
    operator delete(v78.__subs_.__begin_);
  }

  if (v78.__position_.__match_.__matches_.__begin_)
  {
    v78.__position_.__match_.__matches_.__end_ = v78.__position_.__match_.__matches_.__begin_;
    operator delete(v78.__position_.__match_.__matches_.__begin_);
  }

  v68 = v82;
  if (v82 && !atomic_fetch_add((v82 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
    std::locale::~locale(v79);
    v69 = __re.__start_.__cntrl_;
    if (!__re.__start_.__cntrl_)
    {
LABEL_127:
      std::locale::~locale(&__re.__traits_.__loc_);
      if ((SHIBYTE(v71.__traits_.__col_) & 0x80000000) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_133;
    }
  }

  else
  {
    std::locale::~locale(v79);
    v69 = __re.__start_.__cntrl_;
    if (!__re.__start_.__cntrl_)
    {
      goto LABEL_127;
    }
  }

  if (atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_127;
  }

  (v69->__on_zero_shared)(v69);
  std::__shared_weak_count::__release_weak(v69);
  std::locale::~locale(&__re.__traits_.__loc_);
  if ((SHIBYTE(v71.__traits_.__col_) & 0x80000000) == 0)
  {
LABEL_128:
    if ((SHIBYTE(v71.__start_.__cntrl_) & 0x80000000) == 0)
    {
      return;
    }

LABEL_134:
    operator delete(*&v71.__loop_count_);
    return;
  }

LABEL_133:
  operator delete(v71.__traits_.__loc_.__locale_);
  if (SHIBYTE(v71.__start_.__cntrl_) < 0)
  {
    goto LABEL_134;
  }
}

void sub_23C1EF768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::locale a51)
{
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a51);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x230]);
  std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::~regex_token_iterator(&STACK[0x300]);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v52 - 208));
  if (*(v51 + 23) < 0)
  {
    operator delete(*v51);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex((v52 - 144));
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

  operator delete(a16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<$_1,std::allocator<$_1>,std::string ()(std::string,std::string)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

std::string *std::vector<ResetReasonEncoder::SubmatchInfo>::__init_with_size[abi:ne200100]<ResetReasonEncoder::SubmatchInfo*,ResetReasonEncoder::SubmatchInfo*>(std::string *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 >= 0x38E38E38E38E38FLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v7 = result;
    result = operator new(72 * a4);
    v7->__r_.__value_.__r.__words[0] = result;
    v7->__r_.__value_.__l.__size_ = result;
    v7->__r_.__value_.__r.__words[2] = &result[3 * a4];
    for (i = result; a2 != a3; i += 3)
    {
      std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo&,ResetReasonEncoder::SubmatchInfo*>(result, a2);
      a2 = (a2 + 72);
      result = i + 3;
    }

    v7->__r_.__value_.__l.__size_ = result;
  }

  return result;
}

void sub_23C1EF9B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ResetReasonEncoder::SubmatchInfo>,ResetReasonEncoder::SubmatchInfo*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v10 + 8) = v11;
  std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::SubmatchInfo>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo&,ResetReasonEncoder::SubmatchInfo*>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 6);
  this[1].__r_.__value_.__s.__data_[8] = 0;
  LODWORD(this[1].__r_.__value_.__l.__data_) = v5;
  this[2].__r_.__value_.__s.__data_[16] = 0;
  if (*(a2 + 64) == 1)
  {
    v6 = *(a2 + 7);
    if (v6)
    {
      if (v6 == a2 + 2)
      {
        this[2].__r_.__value_.__l.__size_ = &this[1].__r_.__value_.__l.__size_;
        (*(**(a2 + 7) + 24))(*(a2 + 7), &this[1].__r_.__value_.__l.__size_);
        goto LABEL_10;
      }

      v6 = (*(*v6 + 16))(v6);
    }

    this[2].__r_.__value_.__l.__size_ = v6;
LABEL_10:
    this[2].__r_.__value_.__s.__data_[16] = 1;
  }

  return this;
}

void sub_23C1EFAC4(_Unwind_Exception *a1)
{
  std::__optional_destruct_base<std::function<std::string ()(std::string,std::string)>,false>::~__optional_destruct_base[abi:ne200100](v2);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void std::__destroy_at[abi:ne200100]<ResetReasonEncoder::Mapping,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v2)
    {
      v5 = v3 - 5;
      do
      {
        while (1)
        {
          if (*(v3 - 8) == 1)
          {
            v7 = *(v3 - 2);
            if (v3 - 5 == v7)
            {
              (*(*v7 + 4))(v7);
            }

            else if (v7)
            {
              (*(*v7 + 5))(v7);
            }
          }

          v6 = v3 - 9;
          if (*(v3 - 49) < 0)
          {
            break;
          }

          v5 -= 9;
          v3 -= 9;
          if (v6 == v2)
          {
            goto LABEL_12;
          }
        }

        operator delete(*v6);
        v5 -= 9;
        v3 -= 9;
      }

      while (v6 != v2);
LABEL_12:
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v2;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    v8 = *a1;

    operator delete(v8);
  }
}

void ***std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::Mapping>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 64;
          std::__destroy_at[abi:ne200100]<ResetReasonEncoder::Mapping,0>(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
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

void sub_23C1EFDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
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

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
  __cxa_throw(exception, MEMORY[0x277D82770], MEMORY[0x277D82618]);
}

_BYTE *std::__optional_storage_base<std::function<std::string ()(std::string,std::string)>,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::function<std::string ()(std::string,std::string)>,false> const&>(_BYTE *result, uint64_t a2)
{
  v2 = result;
  v9[3] = *MEMORY[0x277D85DE8];
  if (result[32] == *(a2 + 32))
  {
    if (!result[32])
    {
      return result;
    }

    v3 = *(a2 + 24);
    if (v3)
    {
      if (v3 == a2)
      {
        v8 = v7;
        (*(*v3 + 24))(v3, v7);
      }

      else
      {
        v8 = (*(*v3 + 16))(v3);
      }
    }

    else
    {
      v8 = 0;
    }

    if (v7 != v2)
    {
      v4 = v8;
      v5 = *(v2 + 3);
      if (v8 == v7)
      {
        if (v5 != v2)
        {
          (*(*v8 + 24))();
          (*(*v8 + 32))(v8);
          v8 = *(v2 + 3);
          v6 = v8;
          *(v2 + 3) = v2;
          result = v6;
          if (v6 == v7)
          {
            return (*(*result + 32))(result);
          }

          goto LABEL_30;
        }

        memset(v9, 170, 24);
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(v2 + 3) + 24))(*(v2 + 3), v7);
        (*(**(v2 + 3) + 32))(*(v2 + 3));
        *(v2 + 3) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, v2);
        (*(v9[0] + 32))(v9);
        *(v2 + 3) = v2;
        result = v8;
        if (v8 != v7)
        {
LABEL_30:
          if (result)
          {
            return (*(*result + 40))(result);
          }

          return result;
        }

        return (*(*result + 32))(result);
      }

      if (v5 != v2)
      {
        v8 = *(v2 + 3);
        *(v2 + 3) = v4;
        result = v5;
        if (v5 == v7)
        {
          return (*(*result + 32))(result);
        }

        goto LABEL_30;
      }

      (*(*v5 + 24))(*(v2 + 3), v7);
      (*(**(v2 + 3) + 32))(*(v2 + 3));
      *(v2 + 3) = v8;
      v8 = v7;
    }

    result = v8;
    if (v8 != v7)
    {
      goto LABEL_30;
    }

    return (*(*result + 32))(result);
  }

  if (result[32])
  {
    result = *(result + 3);
    if (result == v2)
    {
      result = (*(*result + 32))(result);
      v2[32] = 0;
    }

    else
    {
      if (result)
      {
        result = (*(*result + 40))(result);
      }

      v2[32] = 0;
    }
  }

  else
  {
    result = *(a2 + 24);
    if (result)
    {
      if (result == a2)
      {
        *(v2 + 3) = v2;
        result = (*(**(a2 + 24) + 24))(*(a2 + 24), v2);
      }

      else
      {
        result = (*(*result + 16))(result);
        *(v2 + 3) = result;
      }
    }

    else
    {
      *(v2 + 3) = 0;
    }

    v2[32] = 1;
  }

  return result;
}

void sub_23C1F02B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

std::regex_token_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_token_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_token_iterator(std::regex_token_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_token_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, int __submatch, std::regex_constants::match_flag_type __m)
{
  this->__position_.__begin_ = __a;
  this->__position_.__end_ = __b;
  this->__position_.__pregex_ = __re;
  this->__position_.__flags_ = match_default;
  *&this->__position_.__match_.__matches_.__begin_ = 0u;
  p_match = &this->__position_.__match_;
  this->__position_.__match_.__prefix_.first.__i_ = 0;
  p_prefix = &this->__position_.__match_.__prefix_;
  this->__position_.__match_.__prefix_.second.__i_ = 0;
  this->__position_.__match_.__prefix_.matched = 0;
  this->__position_.__match_.__suffix_.first.__i_ = 0;
  this->__position_.__match_.__suffix_.second.__i_ = 0;
  this->__position_.__match_.__suffix_.matched = 0;
  this->__position_.__match_.__ready_ = 0;
  this->__position_.__match_.__position_start_.__i_ = 0;
  *&this->__position_.__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__position_.__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAA00;
  v19 = v11;
  v16 = 0;
  v18 = 0uLL;
  LOBYTE(v19) = 0;
  BYTE8(v19) = 0;
  v20 = 0;
  memset(__p, 0, sizeof(__p));
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, __p, 0);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, __p, 0);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  this->__suffix_.first.__i_ = 0;
  this->__suffix_.second.__i_ = 0;
  this->__suffix_.matched = 0;
  *&this->__n_ = 0u;
  *&this->__subs_.__end_ = 0u;
  v12 = operator new(4uLL);
  this->__subs_.__begin_ = v12;
  *v12++ = -1;
  this->__subs_.__end_ = v12;
  this->__subs_.__end_cap_.__value_ = v12;
  if (this->__position_.__match_.__matches_.__end_ == this->__position_.__match_.__matches_.__begin_)
  {
    this->__suffix_.matched = 1;
    this->__suffix_.first = __a;
    this->__suffix_.second = __b;
    p_prefix = &this->__suffix_;
  }

  this->__result_ = p_prefix;
  return this;
}

void sub_23C1F0404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  v13 = *v11;
  if (!*v11)
  {
    _Unwind_Resume(exception_object);
  }

  *(v10 + 40) = v13;
  operator delete(v13);
  _Unwind_Resume(exception_object);
}

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    v3 = *a1;
    v4 = *(a1 + 8);
    v5 = v4 - *a1;
    if (v5 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v5 > 0x16)
    {
      if ((v5 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v5 | 7) + 1;
      }

      p_dst = operator new(v14);
      v30 = v5;
      v31 = v14 | 0x8000000000000000;
      __dst = p_dst;
      if (v4 == v3)
      {
LABEL_17:
        *(p_dst + v5) = 0;
        if (*(a2 + 16) != 1)
        {
          goto LABEL_18;
        }

LABEL_7:
        v7 = *a2;
        v8 = *(a2 + 8);
        v9 = v8 - *a2;
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v9 > 0x16)
        {
          if ((v9 | 7) == 0x17)
          {
            v25 = 25;
          }

          else
          {
            v25 = (v9 | 7) + 1;
          }

          v10 = operator new(v25);
          v27 = v9;
          v28 = v25 | 0x8000000000000000;
          v26 = v10;
          if (v8 == v7)
          {
            goto LABEL_11;
          }
        }

        else
        {
          HIBYTE(v28) = v9;
          v10 = &v26;
          if (v8 == v7)
          {
LABEL_11:
            *(v10 + v9) = 0;
            v11 = HIBYTE(v28);
            v13 = v26;
            v12 = v27;
            goto LABEL_19;
          }
        }

        memmove(v10, v7, v9);
        goto LABEL_11;
      }
    }

    else
    {
      HIBYTE(v31) = v4 - *a1;
      p_dst = &__dst;
      if (v4 == v3)
      {
        goto LABEL_17;
      }
    }

    memmove(p_dst, v3, v5);
    goto LABEL_17;
  }

  __dst = 0;
  v30 = 0;
  v31 = 0;
  if (*(a2 + 16) == 1)
  {
    goto LABEL_7;
  }

LABEL_18:
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
LABEL_19:
  v15 = SHIBYTE(v31);
  v16 = __dst;
  if (v31 >= 0)
  {
    v17 = HIBYTE(v31);
  }

  else
  {
    v17 = v30;
  }

  if (v31 >= 0)
  {
    v18 = &__dst;
  }

  else
  {
    v18 = __dst;
  }

  if ((v11 & 0x80u) == 0)
  {
    v19 = v11;
  }

  else
  {
    v19 = v12;
  }

  if ((v11 & 0x80u) == 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v13;
  }

  if (v19 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  v22 = memcmp(v18, v20, v21);
  if ((v11 & 0x80) != 0)
  {
    operator delete(v13);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v16);
LABEL_36:
  v23 = v19 < v17;
  if (v17 < v19)
  {
    v23 = -1;
  }

  if (v22)
  {
    return v22;
  }

  else
  {
    return v23;
  }
}

void sub_23C1F0654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
    goto LABEL_6;
  }

  v13 = this->__end_.__i_;
  if (v13 == v7)
  {
    if (!begin)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  pregex = this->__pregex_;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v21 = 0xAAAAAAAAAAAAAA00;
  v23 = v15;
  v20 = 0;
  v22 = 0uLL;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  v24 = 0;
  memset(__p, 0, sizeof(__p));
  v16 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v7, v13, __p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v13, __p, 1);
  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if ((v16 & 1) == 0)
  {
    v8 = (&v7->first + 1);
    flags = this->__flags_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    v9 = this->__pregex_;
    *&v11 = 0xAAAAAAAAAAAAAAAALL;
    *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v19 = 0xAAAAAAAAAAAAAAAALL;
    v21 = 0xAAAAAAAAAAAAAA00;
    v23 = v11;
    v20 = 0;
    v22 = 0uLL;
    LOBYTE(v23) = 0;
    BYTE8(v23) = 0;
    v24 = 0;
    memset(__p, 0, sizeof(__p));
    v12 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v9, v8, v10, __p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, __p, (flags & 0x800) != 0);
    if (*__p)
    {
      *&__p[8] = *__p;
      operator delete(*__p);
    }

    if (v12)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    if (!p_match->__matches_.__begin_)
    {
LABEL_17:
      this->__match_.__ready_ = 0;
      *&p_match->__matches_.__begin_ = 0u;
      *&p_match->__matches_.__end_cap_.__value_ = 0u;
      *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
      this->__match_.__prefix_.first.__i_ = 0;
      this->__match_.__prefix_.second.__i_ = 0;
      this->__match_.__prefix_.matched = 0;
      this->__match_.__suffix_.first.__i_ = 0;
      this->__match_.__suffix_.second.__i_ = 0;
      this->__match_.__suffix_.matched = 0;
      this->__match_.__position_start_.__i_ = 0;
      return this;
    }

LABEL_16:
    this->__match_.__matches_.__end_ = begin;
    operator delete(begin);
    p_match->__matches_.__begin_ = 0;
    p_match->__matches_.__end_ = 0;
    p_match->__matches_.__end_cap_.__value_ = 0;
    goto LABEL_17;
  }

  return this;
}

void sub_23C1F08B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_ResetReasonEncoder_cpp()
{
  v276 = *MEMORY[0x277D85DE8];
  ctu::OsLogLogger::OsLogLogger(&_MergedGlobals_0, "com.apple.telephony.abm", "ResetReasonEncoder");
  v158 = operator new(0x48uLL);
  v159 = xmmword_23C32C9B0;
  strcpy(v158, "AP forced coredump via SPMI - Please analyze reason from AP perspective");
  v160[0] = 0;
  v163[4] = 0;
  v162[1] = 0;
  v161 = 0;
  v162[0] = 0;
  v163[0] = 0;
  v164 = operator new(0x60uLL);
  v165 = xmmword_23C32C9C0;
  strcpy(v164, "ARI_CLI_ERR - All transaction IDs exhausted for msg\\(.*\\), for client\\(0[xX][0-9a-fA-F]+\\)");
  v166 = 1;
  strcpy(v147, "(msg\\(|\\), for client)");
  v147[23] = 22;
  v148 = 0;
  v149 = 0;
  v151 = 0;
  v153 = 12;
  strcpy(&v152, "for client\\(");
  v154 = 2;
  v155 = 0;
  v157 = 0;
  v168 = 0;
  v167 = 0;
  v169 = 0;
  v167 = operator new(0x90uLL);
  v168 = v167;
  v169 = v167 + 6;
  v141 = v167;
  v99 = v167;
  v105 = &v167;
  *&v106 = &v99;
  v107 = 0xAAAAAAAAAAAAAA00;
  *(&v106 + 1) = &v141;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v167, v147);
  v141 = v141 + 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v141, &v152);
  v168 = (v141 + 72);
  v170 = 0;
  v171 = 0;
  v172 = operator new(0x50uLL);
  v173 = xmmword_23C32C9D0;
  strcpy(v172, "ARI_CLI_ERR - Tracking receipt of unrecognized transaction 0[xX][0-9a-fA-F]+");
  v174 = 2;
  v141 = operator new(0x40uLL);
  v142 = xmmword_23C32C9E0;
  strcpy(v141, "ARI_CLI_ERR - Tracking receipt of unrecognized transaction ");
  v143 = 2;
  v144 = 0;
  v146 = 0;
  v177 = 0;
  v175 = 0;
  v176 = 0;
  v175 = operator new(0x48uLL);
  v176 = v175;
  v177 = v175 + 3;
  v99 = v175;
  *v94 = v175;
  v105 = &v175;
  *&v106 = v94;
  v107 = 0xAAAAAAAAAAAAAA00;
  *(&v106 + 1) = &v99;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v175, &v141);
  v176 = (v99 + 72);
  v178 = 0;
  v179 = 0;
  v180 = operator new(0xA8uLL);
  v181 = xmmword_23C32C9F0;
  strcpy(v180, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v182 = 3;
  v105 = operator new(0xB0uLL);
  v106 = xmmword_23C32CA00;
  strcpy(v105, "(ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\(([a-zA-Z]+\\.){0,}|\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*)");
  LODWORD(v107) = 0;
  v108 = 0;
  v110 = 0;
  v33 = &v111;
  v111 = operator new(0x68uLL);
  v112 = xmmword_23C32CA10;
  strcpy(v111, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\(|-[0-9a-fA-F]+\\).*");
  v113 = 1;
  v114 = 0;
  v116 = 0;
  v32 = &v117;
  v117 = operator new(0x60uLL);
  v118 = xmmword_23C32CA20;
  strcpy(v117, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-|\\).*");
  v119 = 2;
  v120 = 0;
  v122 = 0;
  v31 = &v123;
  v123 = operator new(0xA0uLL);
  v124 = xmmword_23C32CA30;
  strcpy(v123, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\(|\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v125 = 1;
  v126 = 0;
  v128 = 0;
  v30 = &v129;
  v0 = operator new(0x98uLL);
  v130 = 0x8000000000000098;
  *&v129 = v0;
  *(&v129 + 1) = 151;
  strcpy(v0, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(|\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v131 = 2;
  v132 = 0;
  v134 = 0;
  v135 = operator new(0x98uLL);
  v136 = xmmword_23C32CA40;
  strcpy(v135, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(|\\).*");
  v137 = 2;
  v138 = 0;
  v140 = 0;
  v184 = 0;
  v185 = 0;
  v183 = 0;
  *&v100 = 0xAAAAAAAAAAAAAA00;
  v99 = &v183;
  v183 = operator new(0x1B0uLL);
  v184 = v183;
  v185 = v183 + 18;
  *v94 = v183;
  v88 = v183;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v183, &v105);
  *v94 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v94, &v111);
  *v94 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v94, &v117);
  *v94 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v94, &v123);
  *v94 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v94, &v129);
  *v94 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v94, &v135);
  v184 = (*v94 + 72);
  v186 = 0;
  v187 = 0;
  v1 = operator new(0x40uLL);
  v190 = 0x8000000000000040;
  v188 = v1;
  v189 = 63;
  strcpy(v1, "Baseband got stuck in data context .* state: resetting baseband");
  v191 = 4;
  v99 = operator new(0x48uLL);
  v100 = xmmword_23C32CA50;
  strcpy(v99, "(Baseband got stuck in data context | state: resetting baseband)");
  v101 = 0;
  v102 = 0;
  v104 = 0;
  v194 = 0;
  v192 = 0;
  v193 = 0;
  *&v94[8] = 0xAAAAAAAAAAAAAA00;
  *v94 = &v192;
  v192 = operator new(0x48uLL);
  v193 = v192;
  v194 = v192 + 3;
  v88 = v192;
  v82 = v192;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v192, &v99);
  v193 = (v88 + 72);
  v195 = 0;
  v196 = 0;
  v2 = operator new(0x20uLL);
  v199 = 0x8000000000000020;
  v197 = v2;
  v198 = 27;
  strcpy(v2, "Baseband ARI engage timeout");
  v200 = 5;
  v205 = 0;
  v203 = 0;
  v201 = 0;
  v202 = 0;
  v204 = 0;
  v3 = operator new(0x38uLL);
  v206[2] = 0x8000000000000038;
  v206[0] = v3;
  v206[1] = 55;
  strcpy(v3, "Failed to open transport to communicate with baseband.*");
  v207 = 6;
  v212 = 0;
  v210 = 0;
  v208 = 0;
  v209 = 0;
  v211 = 0;
  v4 = operator new(0x20uLL);
  v215 = 0x8000000000000020;
  v213 = v4;
  v214 = 24;
  strcpy(v4, "PCI-EVENT: pci error: .*");
  v216 = 7;
  strcpy(v94, "PCI-EVENT: pci error: ");
  v94[23] = 22;
  v95 = 0;
  v96 = 0;
  v98 = 0;
  v218 = 0;
  v217 = 0;
  v219 = 0;
  *&v89 = 0xAAAAAAAAAAAAAA00;
  v88 = &v217;
  v217 = operator new(0x48uLL);
  v218 = v217;
  v219 = v217 + 3;
  v82 = v217;
  *&v76 = v217;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v217, v94);
  v218 = (v82 + 72);
  v220 = 0;
  v221 = 0;
  v5 = operator new(0x40uLL);
  v222[2] = 0x8000000000000040;
  v222[1] = 62;
  v222[0] = v5;
  strcpy(v5, "filesystem flush operation failed -- check ARI and BB state --");
  v223 = 8;
  v228 = 0;
  v29 = v229;
  v224 = 0;
  v226 = 0;
  v225 = 0;
  v227 = 0;
  v229[0] = operator new(0x20uLL);
  v229[2] = 0x8000000000000020;
  v229[1] = 28;
  strcpy(v229[0], "modem boot up failure \\[.+\\]");
  qmemcpy(v28, "p failure \\[.+\\]modem boot up fa", sizeof(v28));
  v230 = 9;
  v88 = operator new(0x19uLL);
  v89 = xmmword_23C32CA60;
  strcpy(v88, "BBUpdater error  [0-9]+");
  v90 = 1;
  v91[0] = &unk_284EF96D8;
  v92 = v91;
  v93 = 1;
  v232 = 0;
  v233 = 0;
  v231 = 0;
  *&v83 = 0xAAAAAAAAAAAAAA00;
  v82 = &v231;
  v231 = operator new(0x48uLL);
  v232 = v231;
  v233 = v231 + 3;
  *&v76 = v231;
  *&v70 = v231;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v231, &v88);
  v232 = (v76 + 72);
  v234 = 3;
  v235 = 1;
  v6 = operator new(0x20uLL);
  v236[0] = v6;
  v236[2] = 0x8000000000000020;
  v236[1] = 28;
  *v6 = v28[1];
  *(v6 + 12) = v28[0];
  v6[28] = 0;
  v237 = 9;
  v82 = operator new(0x20uLL);
  v83 = xmmword_23C32CA70;
  strcpy(v82, "modem boot up failure \\[|\\]");
  v84 = 0;
  v85 = 0;
  v87 = 0;
  v239 = 0;
  v240 = 0;
  v238 = 0;
  *(&v76 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v76 = &v238;
  v238 = operator new(0x48uLL);
  v239 = v238;
  v240 = v238 + 3;
  *&v70 = v238;
  *__p = v238;
  v46 = &v238;
  *&v47 = __p;
  *(&v47 + 1) = &v70;
  v48 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v238, &v82);
  v239 = (v70 + 72);
  v241 = 4;
  v242 = 1;
  v244 = 2574;
  strcpy(v243, "^\\[abmtool\\].*");
  v77 = 13;
  strcpy(&v76, "^\\[abmtool\\] ");
  v78 = 0;
  v79 = 0;
  v81 = 0;
  v246 = 0;
  v245 = 0u;
  *(&v70 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v70 = &v245;
  *&v245 = operator new(0x48uLL);
  *(&v245 + 1) = v245;
  v246 = v245 + 72;
  *__p = v245;
  v35 = v245;
  v46 = &v245;
  *&v47 = &v35;
  *(&v47 + 1) = __p;
  v48 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v245, &v76);
  *(&v245 + 1) = *__p + 72;
  v247 = 0;
  v248 = 0;
  v250 = 2829;
  strcpy(v249, "^\\[bbutil\\].*");
  v71 = 12;
  strcpy(&v70, "^\\[bbutil\\] ");
  v72 = 0;
  v73 = 0;
  v75 = 0;
  v252 = 0;
  v251 = 0u;
  *__p = &v251;
  *&__p[8] = 0xAAAAAAAAAAAAAA00;
  *&v251 = operator new(0x48uLL);
  *(&v251 + 1) = v251;
  v252 = v251 + 72;
  v35 = v251;
  v34[0] = v251;
  v46 = &v251;
  *&v47 = v34;
  *(&v47 + 1) = &v35;
  v48 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v251, &v70);
  *(&v251 + 1) = v35 + 9;
  v253 = 0;
  v254 = 0;
  v255 = operator new(0x20uLL);
  v257 = 0x8000000000000020;
  v256 = 28;
  strcpy(v255, "TIMEOUT for message MIPC .*?");
  v258 = 13;
  v46 = operator new(0x20uLL);
  v47 = xmmword_23C32CA80;
  strcpy(v46, "TIMEOUT for message MIPC \\[|\\]");
  LODWORD(v48) = 0;
  v49[0] = &unk_284EF9768;
  *&v28[1] = v49;
  v50 = v49;
  v51 = 1;
  v53 = 7;
  strcpy(v52, "Client=");
  v54 = 2;
  v55 = 0;
  v57 = 0;
  v59 = 4;
  strcpy(v58, "Msg=");
  v60 = 2;
  v61 = 0;
  v63 = 0;
  v65 = 4;
  strcpy(v64, "Trx=");
  v66 = 2;
  v67 = 0;
  v69 = 0;
  v260 = 0;
  v261 = 0;
  v259 = 0;
  v35 = &v259;
  v36 = 0xAAAAAAAAAAAAAA00;
  v259 = operator new(0x120uLL);
  v260 = v259;
  v261 = v259 + 12;
  v34[0] = v259;
  v40 = v259;
  *__p = &v259;
  *&__p[8] = &v40;
  *&__p[16] = v34;
  v42 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v259, &v46);
  v34[0] += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v34[0], v52);
  v34[0] += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v34[0], v58);
  v34[0] += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v34[0], v64);
  v260 = v34[0] + 3;
  v262 = 4;
  v263 = 1;
  strcpy(v264, "Resetting baseband .*?");
  v264[23] = 22;
  v264[24] = 14;
  __p[23] = 19;
  strcpy(__p, "Resetting baseband ");
  LODWORD(v42) = 0;
  v43 = 0;
  v45 = 0;
  v266 = 0;
  v265 = 0u;
  v34[0] = &v265;
  v34[1] = 0xAAAAAAAAAAAAAA00;
  *&v265 = operator new(0x48uLL);
  *(&v265 + 1) = v265;
  v266 = v265 + 72;
  v39 = v265;
  v40 = v265;
  v35 = &v265;
  v36 = &v39;
  v37 = &v40;
  v38 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v265, __p);
  *(&v265 + 1) = v40 + 3;
  v267 = 4;
  v268 = 1;
  v269[0] = operator new(0x28uLL);
  v269[2] = 0x8000000000000028;
  v269[1] = 38;
  strcpy(v269[0], "Baseband request for reset for FS Sync");
  v270 = 15;
  v271 = 0;
  v273 = 0;
  v272 = 0;
  v274 = 4;
  v275 = 1;
  qword_280C05CC8 = 0;
  qword_280C05CD0 = 0;
  qword_280C05CD8 = 0;
  v35 = &qword_280C05CC8;
  v36 = 0xAAAAAAAAAAAAAA00;
  v7 = operator new(0x400uLL);
  v8 = 0;
  *&v28[0] = &v149;
  v9 = &v276;
  qword_280C05CC8 = v7;
  qword_280C05CD0 = v7;
  qword_280C05CD8 = (v7 + 1024);
  do
  {
    v10 = &v7[v8 * 8];
    v11 = &(&v158)[v8];
    if (v160[v8 * 8 - 1] < 0)
    {
      std::string::__init_copy_ctor_external(v10, *v11, v11[1]);
    }

    else
    {
      *&v10->__r_.__value_.__l.__data_ = *v11;
      v10->__r_.__value_.__r.__words[2] = v11[2];
    }

    v12 = v160[v8 * 8];
    *&v7[v8 * 8 + 32] = 0;
    v13 = &v7[v8 * 8 + 32];
    v13[-1].__r_.__value_.__s.__data_[16] = v12;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    std::vector<ResetReasonEncoder::SubmatchInfo>::__init_with_size[abi:ne200100]<ResetReasonEncoder::SubmatchInfo*,ResetReasonEncoder::SubmatchInfo*>(v13, v162[v8 - 1], v162[v8], 0x8E38E38E38E38E39 * ((v162[v8] - v162[v8 - 1]) >> 3));
    *&v7[v8 * 8 + 56] = *&v163[v8 * 8];
    v8 += 8;
  }

  while (v8 != 128);
  qword_280C05CD0 = (v7 + 1024);
  do
  {
    v21 = *(v9 - 4);
    if (v21)
    {
      v22 = *(v9 - 3);
      v23 = *(v9 - 4);
      if (v22 != v21)
      {
        v24 = v22 - 5;
        do
        {
          while (1)
          {
            if (*(v22 - 8) == 1)
            {
              v26 = *(v22 - 2);
              if (v22 - 5 == v26)
              {
                (*(*v26 + 4))(v26);
              }

              else if (v26)
              {
                (*(*v26 + 5))(v26);
              }
            }

            v25 = v22 - 9;
            if (*(v22 - 49) < 0)
            {
              break;
            }

            v24 -= 9;
            v22 -= 9;
            if (v25 == v21)
            {
              goto LABEL_19;
            }
          }

          operator delete(*v25);
          v24 -= 9;
          v22 -= 9;
        }

        while (v25 != v21);
LABEL_19:
        v23 = *(v9 - 4);
      }

      *(v9 - 3) = v21;
      operator delete(v23);
    }

    v27 = (v9 - 8);
    if (*(v9 - 41) < 0)
    {
      operator delete(*v27);
    }

    v9 -= 8;
  }

  while (v27 != &v158);
  if (v45 != 1)
  {
LABEL_27:
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

LABEL_31:
    operator delete(*__p);
    if (v69 != 1)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v44 != &v43)
  {
    if (v44)
    {
      (*(*v44 + 40))(v44, v14, v15, v16, v17, v18, v19, v20, v269, v249, v236, v222, v206);
    }

    goto LABEL_27;
  }

  (*(*v44 + 32))(v44);
  if ((__p[23] & 0x80000000) != 0)
  {
    goto LABEL_31;
  }

LABEL_28:
  if (v69 != 1)
  {
    goto LABEL_35;
  }

LABEL_32:
  if (v68 != &v67)
  {
    if (v68)
    {
      (*(*v68 + 40))();
    }

LABEL_35:
    if ((v65 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_39:
    operator delete(v64[0]);
    if (v63 != 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  (*(*v68 + 32))(v68);
  if (v65 < 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (v63 != 1)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (v62 != &v61)
  {
    if (v62)
    {
      (*(*v62 + 40))();
    }

LABEL_43:
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_47:
    operator delete(v58[0]);
    if (v57 != 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  (*(*v62 + 32))(v62);
  if (v59 < 0)
  {
    goto LABEL_47;
  }

LABEL_44:
  if (v57 != 1)
  {
    goto LABEL_51;
  }

LABEL_48:
  if (v56 != &v55)
  {
    if (v56)
    {
      (*(*v56 + 40))();
    }

LABEL_51:
    if ((v53 & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    operator delete(v52[0]);
    if (v51 != 1)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  (*(*v56 + 32))(v56);
  if (v53 < 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  if (v51 != 1)
  {
    goto LABEL_59;
  }

LABEL_56:
  if (v50 != *&v28[1])
  {
    if (v50)
    {
      (*(*v50 + 40))();
    }

LABEL_59:
    if ((SHIBYTE(v47) & 0x80000000) == 0)
    {
      goto LABEL_60;
    }

LABEL_63:
    operator delete(v46);
    if (v75 != 1)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  (*(*v50 + 32))(v50);
  if (SHIBYTE(v47) < 0)
  {
    goto LABEL_63;
  }

LABEL_60:
  if (v75 != 1)
  {
    goto LABEL_67;
  }

LABEL_64:
  if (v74 != &v73)
  {
    if (v74)
    {
      (*(*v74 + 40))();
    }

LABEL_67:
    if ((v71 & 0x80000000) == 0)
    {
      goto LABEL_68;
    }

LABEL_71:
    operator delete(v70);
    if (v81 != 1)
    {
      goto LABEL_75;
    }

    goto LABEL_72;
  }

  (*(*v74 + 32))(v74);
  if (v71 < 0)
  {
    goto LABEL_71;
  }

LABEL_68:
  if (v81 != 1)
  {
    goto LABEL_75;
  }

LABEL_72:
  if (v80 != &v79)
  {
    if (v80)
    {
      (*(*v80 + 40))();
    }

LABEL_75:
    if ((v77 & 0x80000000) == 0)
    {
      goto LABEL_76;
    }

LABEL_79:
    operator delete(v76);
    if (v87 != 1)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  (*(*v80 + 32))(v80);
  if (v77 < 0)
  {
    goto LABEL_79;
  }

LABEL_76:
  if (v87 != 1)
  {
    goto LABEL_83;
  }

LABEL_80:
  if (v86 != &v85)
  {
    if (v86)
    {
      (*(*v86 + 40))();
    }

LABEL_83:
    if ((SHIBYTE(v83) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }

LABEL_87:
    operator delete(v82);
    if (v93 != 1)
    {
      goto LABEL_91;
    }

    goto LABEL_88;
  }

  (*(*v86 + 32))(v86);
  if (SHIBYTE(v83) < 0)
  {
    goto LABEL_87;
  }

LABEL_84:
  if (v93 != 1)
  {
    goto LABEL_91;
  }

LABEL_88:
  if (v92 != v91)
  {
    if (v92)
    {
      (*(*v92 + 40))();
    }

LABEL_91:
    if ((SHIBYTE(v89) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_95:
    operator delete(v88);
    if (v98 != 1)
    {
      goto LABEL_99;
    }

    goto LABEL_96;
  }

  (*(*v92 + 32))(v92);
  if (SHIBYTE(v89) < 0)
  {
    goto LABEL_95;
  }

LABEL_92:
  if (v98 != 1)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v97 != &v96)
  {
    if (v97)
    {
      (*(*v97 + 40))();
    }

LABEL_99:
    if ((v94[23] & 0x80000000) == 0)
    {
      goto LABEL_100;
    }

LABEL_103:
    operator delete(*v94);
    if (v104 != 1)
    {
      goto LABEL_107;
    }

    goto LABEL_104;
  }

  (*(*v97 + 32))(v97);
  if ((v94[23] & 0x80000000) != 0)
  {
    goto LABEL_103;
  }

LABEL_100:
  if (v104 != 1)
  {
    goto LABEL_107;
  }

LABEL_104:
  if (v103 != &v102)
  {
    if (v103)
    {
      (*(*v103 + 40))();
    }

LABEL_107:
    if ((SHIBYTE(v100) & 0x80000000) == 0)
    {
      goto LABEL_108;
    }

LABEL_111:
    operator delete(v99);
    if (v140 != 1)
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

  (*(*v103 + 32))(v103);
  if (SHIBYTE(v100) < 0)
  {
    goto LABEL_111;
  }

LABEL_108:
  if (v140 != 1)
  {
    goto LABEL_115;
  }

LABEL_112:
  if (v139 != &v138)
  {
    if (v139)
    {
      (*(*v139 + 40))();
    }

LABEL_115:
    if ((SHIBYTE(v136) & 0x80000000) == 0)
    {
      goto LABEL_116;
    }

LABEL_119:
    operator delete(v135);
    if (v134 != 1)
    {
      goto LABEL_123;
    }

    goto LABEL_120;
  }

  (*(*v139 + 32))(v139);
  if (SHIBYTE(v136) < 0)
  {
    goto LABEL_119;
  }

LABEL_116:
  if (v134 != 1)
  {
    goto LABEL_123;
  }

LABEL_120:
  if (v133 != &v132)
  {
    if (v133)
    {
      (*(*v133 + 40))();
    }

LABEL_123:
    if ((SHIBYTE(v130) & 0x80000000) == 0)
    {
      goto LABEL_124;
    }

LABEL_127:
    operator delete(v129);
    if (v128 != 1)
    {
      goto LABEL_131;
    }

    goto LABEL_128;
  }

  (*(*v133 + 32))(v133);
  if (SHIBYTE(v130) < 0)
  {
    goto LABEL_127;
  }

LABEL_124:
  if (v128 != 1)
  {
    goto LABEL_131;
  }

LABEL_128:
  if (v127 != &v126)
  {
    if (v127)
    {
      (*(*v127 + 40))();
    }

LABEL_131:
    if ((SHIBYTE(v124) & 0x80000000) == 0)
    {
      goto LABEL_132;
    }

LABEL_135:
    operator delete(v123);
    if (v122 != 1)
    {
      goto LABEL_139;
    }

    goto LABEL_136;
  }

  (*(*v127 + 32))(v127);
  if (SHIBYTE(v124) < 0)
  {
    goto LABEL_135;
  }

LABEL_132:
  if (v122 != 1)
  {
    goto LABEL_139;
  }

LABEL_136:
  if (v121 != &v120)
  {
    if (v121)
    {
      (*(*v121 + 40))();
    }

LABEL_139:
    if ((SHIBYTE(v118) & 0x80000000) == 0)
    {
      goto LABEL_140;
    }

LABEL_143:
    operator delete(v117);
    if (v116 != 1)
    {
      goto LABEL_147;
    }

    goto LABEL_144;
  }

  (*(*v121 + 32))(v121);
  if (SHIBYTE(v118) < 0)
  {
    goto LABEL_143;
  }

LABEL_140:
  if (v116 != 1)
  {
    goto LABEL_147;
  }

LABEL_144:
  if (v115 != &v114)
  {
    if (v115)
    {
      (*(*v115 + 40))();
    }

LABEL_147:
    if ((SHIBYTE(v112) & 0x80000000) == 0)
    {
      goto LABEL_148;
    }

LABEL_151:
    operator delete(v111);
    if (v110 != 1)
    {
      goto LABEL_155;
    }

    goto LABEL_152;
  }

  (*(*v115 + 32))(v115);
  if (SHIBYTE(v112) < 0)
  {
    goto LABEL_151;
  }

LABEL_148:
  if (v110 != 1)
  {
    goto LABEL_155;
  }

LABEL_152:
  if (v109 != &v108)
  {
    if (v109)
    {
      (*(*v109 + 40))();
    }

LABEL_155:
    if ((SHIBYTE(v106) & 0x80000000) == 0)
    {
      goto LABEL_156;
    }

LABEL_159:
    operator delete(v105);
    if (v146 != 1)
    {
      goto LABEL_163;
    }

    goto LABEL_160;
  }

  (*(*v109 + 32))(v109);
  if (SHIBYTE(v106) < 0)
  {
    goto LABEL_159;
  }

LABEL_156:
  if (v146 != 1)
  {
    goto LABEL_163;
  }

LABEL_160:
  if (v145 != &v144)
  {
    if (v145)
    {
      (*(*v145 + 40))();
    }

LABEL_163:
    if ((SHIBYTE(v142) & 0x80000000) == 0)
    {
      goto LABEL_164;
    }

LABEL_167:
    operator delete(v141);
    if (v157 != 1)
    {
      goto LABEL_171;
    }

    goto LABEL_168;
  }

  (*(*v145 + 32))(v145);
  if (SHIBYTE(v142) < 0)
  {
    goto LABEL_167;
  }

LABEL_164:
  if (v157 != 1)
  {
    goto LABEL_171;
  }

LABEL_168:
  if (v156 != &v155)
  {
    if (v156)
    {
      (*(*v156 + 40))();
    }

LABEL_171:
    if ((v153 & 0x80000000) == 0)
    {
      goto LABEL_172;
    }

LABEL_175:
    operator delete(v152);
    if (v151 != 1)
    {
      goto LABEL_179;
    }

    goto LABEL_176;
  }

  (*(*v156 + 32))(v156);
  if (v153 < 0)
  {
    goto LABEL_175;
  }

LABEL_172:
  if (v151 != 1)
  {
    goto LABEL_179;
  }

LABEL_176:
  if (v150 != *&v28[0])
  {
    if (v150)
    {
      (*(*v150 + 40))();
    }

LABEL_179:
    if ((v147[23] & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_180;
  }

  (*(*v150 + 32))(v150);
  if ((v147[23] & 0x80000000) != 0)
  {
LABEL_180:
    operator delete(*v147);
  }
}

void sub_23C1F2704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ResetReasonEncoder::Mapping *a9, ResetReasonEncoder::Mapping *a10, ResetReasonEncoder::Mapping *a11, ResetReasonEncoder::Mapping *a12, ResetReasonEncoder::Mapping *a13, ResetReasonEncoder::Mapping *a14, ResetReasonEncoder::Mapping *a15, ResetReasonEncoder::Mapping *a16, ResetReasonEncoder::Mapping *a17, ResetReasonEncoder::Mapping *a18, ResetReasonEncoder::Mapping *a19, ResetReasonEncoder::Mapping *a20, ResetReasonEncoder::Mapping *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ResetReasonEncoder::Mapping *a44, void **a45, void **a46, void **a47, void **a48, uint64_t a49, uint64_t a50, void **a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::Mapping>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a51);
  ResetReasonEncoder::Mapping::~Mapping(a9);
  ResetReasonEncoder::Mapping::~Mapping(a17);
  ResetReasonEncoder::Mapping::~Mapping(a18);
  ResetReasonEncoder::Mapping::~Mapping(a10);
  ResetReasonEncoder::Mapping::~Mapping(a19);
  ResetReasonEncoder::Mapping::~Mapping(a11);
  ResetReasonEncoder::Mapping::~Mapping(a44);
  ResetReasonEncoder::Mapping::~Mapping(a12);
  ResetReasonEncoder::Mapping::~Mapping(a20);
  ResetReasonEncoder::Mapping::~Mapping(a13);
  ResetReasonEncoder::Mapping::~Mapping(a14);
  ResetReasonEncoder::Mapping::~Mapping(a15);
  ResetReasonEncoder::Mapping::~Mapping(a21);
  ResetReasonEncoder::Mapping::~Mapping(a16);
  ResetReasonEncoder::Mapping::~Mapping(v66);
  ResetReasonEncoder::Mapping::~Mapping(&STACK[0x738]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&a57);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x2A8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x260]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x218]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&a65);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x2F0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x338]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x380]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x3C8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x410]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x460]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(v65);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a45);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a46);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a47);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a48);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x4A8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x658]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x6E8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x6A0]);
  _Unwind_Resume(a1);
}

uint64_t config::hw::iPhone(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 136))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::watch(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 152))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::iPad(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 144))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

void config::hw::product(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 48))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::deviceMaterial(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 104))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::getBootArgs(std::string *a1@<X8>)
{
  memset(v25, 170, 24);
  v2 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v3 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(__p, v2);
    v4 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v5 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_280C05AA8;
  }

  v7 = *(&off_280C05AA8 + 1);
  v25[3] = v3;
  v25[4] = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v3 + 112))(v25, v3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  HIBYTE(v24) = 9;
  strcpy(__p, "boot-args");
  v8 = v25[1];
  if (v25[1])
  {
    while (1)
    {
      v10 = v8;
      v13 = v8[4];
      v11 = v8 + 4;
      v12 = v13;
      v14 = *(v11 + 23);
      if (v14 >= 0)
      {
        v15 = v11;
      }

      else
      {
        v15 = v12;
      }

      if (v14 >= 0)
      {
        v16 = *(v11 + 23);
      }

      else
      {
        v16 = v11[1];
      }

      if (v16 >= 9)
      {
        v17 = 9;
      }

      else
      {
        v17 = v16;
      }

      v18 = memcmp(__p, v15, v17);
      if (v18)
      {
        if (v18 < 0)
        {
          goto LABEL_16;
        }

LABEL_30:
        v19 = memcmp(v15, __p, v17);
        if (v19)
        {
          if ((v19 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v16 >= 9)
        {
LABEL_41:
          v20 = v10;
          if (*(v10 + 79) < 0)
          {
            goto LABEL_42;
          }

LABEL_40:
          v22 = *(v20 + 56);
          a1->__r_.__value_.__r.__words[2] = *(v20 + 9);
          *&a1->__r_.__value_.__l.__data_ = v22;
          goto LABEL_43;
        }

        v8 = v10[1];
        if (!v8)
        {
          v9 = v10 + 1;
          goto LABEL_37;
        }
      }

      else
      {
        if (v16 <= 9)
        {
          goto LABEL_30;
        }

LABEL_16:
        v8 = *v10;
        v9 = v10;
        if (!*v10)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v9 = &v25[1];
  v10 = &v25[1];
LABEL_37:
  v20 = operator new(0x50uLL);
  *(v20 + 2) = *__p;
  v21 = v24;
  __p[1] = 0;
  v24 = 0;
  __p[0] = 0;
  *(v20 + 6) = v21;
  *(v20 + 7) = 0;
  *(v20 + 8) = 0;
  *(v20 + 9) = 0;
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = v10;
  *v9 = v20;
  if (*v25[0])
  {
    v25[0] = *v25[0];
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v25[1], v20);
  ++v25[2];
  if ((v20[79] & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  std::string::__init_copy_ctor_external(a1, *(v20 + 7), *(v20 + 8));
LABEL_43:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v25[1]);
}

void sub_23C1F38D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C1F38EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a16);
  _Unwind_Resume(a1);
}

void config::hw::regionCode(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 72))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::regionInfo(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 64))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t config::build::carrier(config::build *this)
{
  result = TelephonyUtilIsCarrierBuild();
  if (result)
  {
    return TelephonyUtilIsInternalBuild() ^ 1;
  }

  return result;
}

uint64_t config::build::internal_or_carrier(config::build *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

void config::build::version(config::build *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_280C05AA8;
  if (!off_280C05AA8)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_280C05AA8 + 1);
    off_280C05AA8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_280C05AA8;
  }

  v6 = *(&off_280C05AA8 + 1);
  if (*(&off_280C05AA8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C05AA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (**v2)(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

void DIAGTrace::DIAGTrace(DIAGTrace *this)
{
  v4 = 10;
  strcpy(__p, "trace.diag");
  ctu::OsLogContext::OsLogContext(v5, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED, v5);
  ctu::OsLogContext::~OsLogContext(v5);
  *this = &unk_284EF95A8;
  v2 = 0uLL;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v4 < 0)
  {
    operator delete(__p[0]);
    v2 = 0uLL;
  }

  *this = &unk_284EF97E8;
  *(this + 12) = 0;
  *(this + 8) = v2;
  *(this + 9) = v2;
  *(this + 10) = v2;
  *(this + 11) = v2;
  *(this + 12) = v2;
  *(this + 13) = v2;
  *(this + 16) = v2;
  *(this + 17) = v2;
  *(this + 18) = v2;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = 0;
  *(this + 42) = TelephonyBasebandCreateController();
  *(this + 344) = 0;
}

void sub_23C1F40C8(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v1 + 320);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 + 312));
  if (*(v1 + 303) < 0)
  {
    operator delete(*(v1 + 280));
    if ((*(v1 + 279) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((*(v1 + 279) & 0x80000000) == 0)
  {
LABEL_3:
    if (*(v1 + 223) < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  operator delete(*(v1 + 256));
  if (*(v1 + 223) < 0)
  {
LABEL_4:
    operator delete(*(v1 + 200));
    if ((*(v1 + 199) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  if ((*(v1 + 199) & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v1 + 175) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(*(v1 + 176));
  if (*(v1 + 175) < 0)
  {
LABEL_6:
    operator delete(*(v1 + 152));
    if ((*(v1 + 151) & 0x80000000) == 0)
    {
LABEL_14:
      Trace::~Trace(v1);
      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(*v2);
    goto LABEL_14;
  }

LABEL_12:
  if ((*(v1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_23C1F4178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
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

const void **ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void DIAGTrace::~DIAGTrace(DIAGTrace *this)
{
  *this = &unk_284EF97E8;
  v2 = *(this + 42);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 41);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = *(this + 39);
    if (!v4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  v4 = *(this + 39);
  if (v4)
  {
LABEL_6:
    CFRelease(v4);
  }

LABEL_7:
  if (*(this + 303) < 0)
  {
    operator delete(*(this + 35));
    if ((*(this + 279) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(this + 223) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }
  }

  else if ((*(this + 279) & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  operator delete(*(this + 32));
  if ((*(this + 223) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(this + 199) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(*(this + 25));
  if ((*(this + 199) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(this + 175) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(*(this + 22));
  if ((*(this + 175) & 0x80000000) == 0)
  {
LABEL_12:
    if ((*(this + 151) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(*(this + 19));
  if ((*(this + 151) & 0x80000000) == 0)
  {
LABEL_13:
    v5 = this;

    goto LABEL_15;
  }

LABEL_21:
  operator delete(*(this + 16));
  v5 = this;

LABEL_15:
  Trace::~Trace(v5);
}

{
  DIAGTrace::~DIAGTrace(this);

  operator delete(v1);
}

double DIAGTrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v2 = operator new(0x160uLL);
  DIAGTrace::DIAGTrace(v2);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<DIAGTrace>::shared_ptr[abi:ne200100]<DIAGTrace,std::shared_ptr<DIAGTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<DIAGTrace>(DIAGTrace*)::{lambda(DIAGTrace*)#1},0>(&v4, v2);
  result = *&v4;
  *a1 = v4;
  return result;
}

uint64_t DIAGTrace::init(uint64_t a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    v16 = *a2;
    v7 = a3[1];
    v14 = *a3;
    v15 = v7;
    if (!v7)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&v16, *a2, *(a2 + 8));
  v7 = a3[1];
  v14 = *a3;
  v15 = v7;
  if (v7)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v8 = *a4;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = Trace::init(a1, &v16, &v14, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if (!v9)
    {
      return v9;
    }
  }

  else if (!v9)
  {
    return v9;
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 0x40000000;
  v12[2] = ___ZN9DIAGTrace4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS0_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupE_block_invoke;
  v12[3] = &__block_descriptor_tmp_1;
  v12[4] = a1;
  v17 = v12;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_123;
  block[4] = a1 + 8;
  block[5] = &v17;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v11, block);
  }

  else
  {
    dispatch_sync(v11, block);
  }

  return v9;
}

void sub_23C1F4640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (object)
  {
    dispatch_release(object);
    v23 = a16;
    if (!a16)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v23 = a16;
    if (!a16)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v23);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t DIAGTrace::initProperty_sync(DIAGTrace *this)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = *(this + 39);
    *(this + 39) = v4;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  *(this + 245) = 0;
  HIBYTE(v61[2]) = 7;
  strcpy(v61, "Enabled");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<BOOL>(&__p, this + 244, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v61[0]);
LABEL_8:
  ctu::cf::update<char const*,BOOL>(*(this + 39), "Enabled", *(this + 244), v2, v6);
  HIBYTE(v61[2]) = 9;
  strcpy(v61, "High_Tput");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<BOOL>(&__p, this + 124, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v61[0]);
LABEL_12:
  ctu::cf::update<char const*,BOOL>(*(this + 39), "High_Tput", *(this + 124), v2, v7);
  HIBYTE(v61[2]) = 12;
  strcpy(v61, "Data_Logging");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<BOOL>(&__p, this + 125, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v61[0]);
LABEL_16:
  ctu::cf::update<char const*,BOOL>(*(this + 39), "Data_Logging", *(this + 125), v2, v8);
  DIAGTrace::initTraceMode_sync(this);
  HIBYTE(v61[2]) = 7;
  strcpy(v61, "History");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<int>(&__p, this + 56, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v61[0]);
LABEL_20:
  v10 = *(this + 56);
  v11 = v10 < 0;
  if (!v10)
  {
    v10 = 2048;
  }

  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = v10;
  }

  *(this + 56) = v12;
  ctu::cf::update<char const*,int>(*(this + 39), "History", v12, v2, v9);
  *(&__p.__r_.__value_.__s + 23) = 4;
  strcpy(&__p, "File");
  prop::bbtrace::get(&__p, this + 128);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v14 = *(this + 39);
    if ((*(this + 151) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = *(this + 39);
    if ((*(this + 151) & 0x80000000) == 0)
    {
LABEL_27:
      __p = *(this + 128);
      goto LABEL_38;
    }
  }

  v15 = v14;
  std::string::__init_copy_ctor_external(&__p, *(this + 16), *(this + 17));
  v14 = v15;
LABEL_38:
  ctu::cf::update<char const*,std::string>(v14, "File", &__p, v2, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "File_Secondary");
  prop::bbtrace::get(&__p, this + 152);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v17 = *(this + 39);
    if ((*(this + 175) & 0x80000000) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v17 = *(this + 39);
    if ((*(this + 175) & 0x80000000) == 0)
    {
LABEL_42:
      __p = *(this + 152);
      goto LABEL_45;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(this + 19), *(this + 20));
LABEL_45:
  ctu::cf::update<char const*,std::string>(v17, "File_Secondary", &__p, v2, v16);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v18 = diag::config::kExtraDMCFileKey[0];
  v19 = strlen(diag::config::kExtraDMCFileKey[0]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_166:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    p_p = operator new(v22);
    __p.__r_.__value_.__l.__size_ = v20;
    __p.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
    goto LABEL_55;
  }

  *(&__p.__r_.__value_.__s + 23) = v19;
  p_p = &__p;
  if (v19)
  {
LABEL_55:
    memmove(p_p, v18, v20);
  }

  p_p->__r_.__value_.__s.__data_[v20] = 0;
  prop::bbtrace::get(&__p, this + 176);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v24 = *(this + 39);
    v25 = diag::config::kExtraDMCFileKey[0];
    if ((*(this + 199) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v24 = *(this + 39);
    v25 = diag::config::kExtraDMCFileKey[0];
    if ((*(this + 199) & 0x80000000) == 0)
    {
LABEL_58:
      __p = *(this + 176);
      goto LABEL_61;
    }
  }

  v26 = v24;
  v27 = v25;
  std::string::__init_copy_ctor_external(&__p, *(this + 22), *(this + 23));
  v25 = v27;
  v24 = v26;
LABEL_61:
  ctu::cf::update<char const*,std::string>(v24, v25, &__p, v2, v23);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "File_Sleep");
  prop::bbtrace::get(&__p, this + 200);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v29 = *(this + 39);
    if ((*(this + 223) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v29 = *(this + 39);
    if ((*(this + 223) & 0x80000000) == 0)
    {
LABEL_65:
      __p = *(this + 200);
      goto LABEL_68;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(this + 25), *(this + 26));
LABEL_68:
  ctu::cf::update<char const*,std::string>(v29, "File_Sleep", &__p, v2, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v30 = diag::config::kEnabledDuringSleepKey[0];
  v31 = strlen(diag::config::kEnabledDuringSleepKey[0]);
  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_166;
  }

  v32 = v31;
  if (v31 >= 0x17)
  {
    if ((v31 | 7) == 0x17)
    {
      v34 = 25;
    }

    else
    {
      v34 = (v31 | 7) + 1;
    }

    v33 = operator new(v34);
    v61[1] = v32;
    v61[2] = (v34 | 0x8000000000000000);
    v61[0] = v33;
  }

  else
  {
    HIBYTE(v61[2]) = v31;
    v33 = v61;
    if (!v31)
    {
      goto LABEL_79;
    }
  }

  memmove(v33, v30, v32);
LABEL_79:
  *(v32 + v33) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    v62 = -1431655766;
    if (util::convert<int>(&__p, &v62, 0))
    {
      *(this + 30) = v62;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_84;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_84;
  }

  operator delete(v61[0]);
LABEL_84:
  ctu::cf::update<char const*,int>(*(this + 39), diag::config::kEnabledDuringSleepKey[0], *(this + 30), v2, v35);
  v36 = diag::config::kBufferingOnAPAwake[0];
  v37 = strlen(diag::config::kBufferingOnAPAwake[0]);
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_166;
  }

  v38 = v37;
  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v40 = 25;
    }

    else
    {
      v40 = (v37 | 7) + 1;
    }

    v39 = operator new(v40);
    v61[1] = v38;
    v61[2] = (v40 | 0x8000000000000000);
    v61[0] = v39;
    goto LABEL_92;
  }

  HIBYTE(v61[2]) = v37;
  v39 = v61;
  if (v37)
  {
LABEL_92:
    memmove(v39, v36, v38);
  }

  *(v38 + v39) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<BOOL>(&__p, this + 246, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_97;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_97;
  }

  operator delete(v61[0]);
LABEL_97:
  ctu::cf::update<char const*,BOOL>(*(this + 39), diag::config::kBufferingOnAPAwake[0], *(this + 246), v2, v41);
  v42 = diag::config::kStallDetectionKey[0];
  v43 = strlen(diag::config::kStallDetectionKey[0]);
  if (v43 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_166;
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
    v61[1] = v44;
    v61[2] = (v46 | 0x8000000000000000);
    v61[0] = v45;
    goto LABEL_105;
  }

  HIBYTE(v61[2]) = v43;
  v45 = v61;
  if (v43)
  {
LABEL_105:
    memmove(v45, v42, v44);
  }

  *(v44 + v45) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<BOOL>(&__p, this + 232, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_110;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_110;
  }

  operator delete(v61[0]);
LABEL_110:
  v47 = diag::config::kStallDetectionRetriesKey[0];
  v48 = strlen(diag::config::kStallDetectionRetriesKey[0]);
  if (v48 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_166;
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
    v61[1] = v49;
    v61[2] = (v51 | 0x8000000000000000);
    v61[0] = v50;
    goto LABEL_118;
  }

  HIBYTE(v61[2]) = v48;
  v50 = v61;
  if (v48)
  {
LABEL_118:
    memmove(v50, v47, v49);
  }

  *(v49 + v50) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<unsigned int>(&__p, this + 59, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_123;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

  operator delete(v61[0]);
LABEL_123:
  v52 = diag::config::kStallDetectionRecoveryKey[0];
  v53 = strlen(diag::config::kStallDetectionRecoveryKey[0]);
  if (v53 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_166;
  }

  v54 = v53;
  if (v53 >= 0x17)
  {
    if ((v53 | 7) == 0x17)
    {
      v56 = 25;
    }

    else
    {
      v56 = (v53 | 7) + 1;
    }

    v55 = operator new(v56);
    v61[1] = v54;
    v61[2] = (v56 | 0x8000000000000000);
    v61[0] = v55;
  }

  else
  {
    HIBYTE(v61[2]) = v53;
    v55 = v61;
    if (!v53)
    {
      goto LABEL_132;
    }
  }

  memmove(v55, v52, v54);
LABEL_132:
  *(v54 + v55) = 0;
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    v62 = -1431655766;
    if (util::convert<int>(&__p, &v62, 0))
    {
      *(this + 29) = v62;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_137;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_137;
  }

  operator delete(v61[0]);
LABEL_137:
  HIBYTE(v61[2]) = 18;
  strcpy(v61, "MaxMemoryFileCount");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<unsigned int>(&__p, this + 57, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_141;
  }

  operator delete(v61[0]);
LABEL_141:
  ctu::cf::update<char const*,unsigned int>(*(this + 39), "MaxMemoryFileCount", *(this + 57), v2, v57);
  HIBYTE(v61[2]) = 8;
  strcpy(v61, "FileSize");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<unsigned int>(&__p, this + 76, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_145;
    }
  }

  else if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
  {
    goto LABEL_145;
  }

  operator delete(v61[0]);
LABEL_145:
  ctu::cf::update<char const*,unsigned int>(*(this + 39), "FileSize", *(this + 76), v2, v58);
  HIBYTE(v61[2]) = 21;
  strcpy(v61, "Retain_Previous_Trace");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v61, &__p))
  {
    util::convert<BOOL>(&__p, this + 248, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v61[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

LABEL_165:
    operator delete(v61[0]);
    goto LABEL_149;
  }

  if (SHIBYTE(v61[2]) < 0)
  {
    goto LABEL_165;
  }

LABEL_149:
  result = ctu::cf::update<char const*,BOOL>(*(this + 39), "Retain_Previous_Trace", *(this + 248), v2, v59);
  *(this + 12) |= 1uLL;
  return result;
}

void sub_23C1F5250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DIAGTrace::reinitService_sync(DIAGTrace *this, int a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Service reinit requested with preserve = %d", buf, 8u);
  }

  if (a2)
  {
    v5 = *(this + 40);
    v6 = *(this + 5);
    if (v5)
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Service will be reinitialized", buf, 2u);
        v5 = *(this + 40);
      }

      diag::Service::Internal::init(*v5);
      return;
    }
  }

  else
  {
    v6 = *(this + 5);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_DEFAULT, "#I Service will be created", buf, 2u);
  }

  v7 = *(this + 2);
  if (!v7 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = operator new(0x10uLL);
  v12 = *(this + 26);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9DIAGTrace18reinitService_syncEb_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_7_2;
  aBlock[4] = this;
  aBlock[5] = v8;
  v18 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v13 = _Block_copy(aBlock);
  v14 = *(this + 3);
  if (v14)
  {
    dispatch_retain(*(this + 3));
  }

  v19 = v13;
  object = v14;
  diag::Service::Service(v11, v12, &v19);
  *buf = v11;
  v15 = operator new(0x20uLL);
  *v15 = &unk_284EF9D10;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = v11;
  v16 = *(this + 41);
  *(this + 40) = v11;
  *(this + 41) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v19)
  {
    _Block_release(v19);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  std::__shared_weak_count::__release_weak(v10);
}