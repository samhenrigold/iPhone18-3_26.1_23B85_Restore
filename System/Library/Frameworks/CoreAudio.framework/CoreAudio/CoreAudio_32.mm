void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = v5[3];
  v5[3] = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator=(v5, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE4521B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void *std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1DE4524AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596FFA8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE452664(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FFA8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FFA8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_6,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_6>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_5,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_5>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_4,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_4>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_3,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_3>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[319];
}

uint64_t std::__function::__value_func<std::function<void ()(void)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<std::function<void ()(void)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(void)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()(void)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()(void)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()(void)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(void)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(void)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE4530A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596FD08;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE453188(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FD08;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(void)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FD08;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[301];
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(void)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(void)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(void)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()(void)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()(void)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(void)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(void)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvvEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](v5);
  std::function<void ()(void)>::operator=(v6, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE4537D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596FC78;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE4539B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FC78;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(void)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(void)> const&)#1}>,void ()(std::function<void ()(void)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FC78;
  std::__function::__value_func<std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_2,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_2>,std::function<void ()(void)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[305];
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE454168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1}>,void ()(std::function<void ()>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596FB58;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE45424C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FB58;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FB58;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int)>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjEEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSC_4NodeEEENS3_IFRT_RNSC_9Node_ProcEEEEEUlRKS5_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = std::__function::__value_func<void ()>::operator=[abi:ne200100](v5);
  std::function<void ()>::operator=(v6, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE454828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()> const&)#1}>,void ()(std::function<void ()>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596FAC8;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE454984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FAC8;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int)> const&)#1}>,void ()(std::function<void ()(unsigned int)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596FAC8;
  std::__function::__value_func<std::function<void ()> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_1,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_1>,std::function<void ()(unsigned int)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[303];
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEmPNS_11Proc_StreamEmS8_EEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSH_4NodeEEENS3_IFRT_RNSH_9Node_ProcEEEEEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::operator()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(a1 + 64) + 16))(&v6);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v6);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE45513C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596F9A8;
  v4 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    a2[3] = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  result = std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100]((a2 + 4), a1 + 32);
  a2[8] = *(a1 + 64);
  return result;
}

void sub_1DE455220(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F9A8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(void)#1}>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F9A8;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core10setup_procINSt3__18functionIFvjRKNS_15Proc_Cycle_InfoEmPNS_11Proc_StreamEmS8_EEEEEvRNS_4Core13Operation_SetERKNS_7AddressEPNS_5Graph15Node_Proc_OwnerERKNS2_10shared_ptrINSH_4NodeEEENS3_IFRT_RNSH_9Node_ProcEEEEEUlRKSA_E_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  (*(**(a1 + 64) + 16))(&v9);
  v4 = *(a1 + 56);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v5 = (*(*v4 + 48))(v4, v9);
  v6 = std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](v5);
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=(v6, a2);
  v7 = *(a1 + 72);
  if (v7 == 1852074351)
  {
    v8 = *(v9 + 576);
    if (v8)
    {
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__value_func[abi:ne200100](v11, v9 + 224);
      AMCP::Graph::Call_Audio_IO_Proc::update_proc(v8, v11);
      std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](v11);
    }
  }

  else if (v7 == 1919247212)
  {
    std::function<void ()>::operator()(*(v9 + 152), 0);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE4557FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::destroy[abi:ne200100](uint64_t a1)
{
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

double std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F596F918;
  v4 = (a2 + 8);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v5 = *(a1 + 8);
    *(a2 + 24) = *(a1 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::__value_func[abi:ne200100](a2 + 32, a1 + 32);
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 72);
  *(a2 + 72) = result;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

void sub_1DE455958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F918;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1},std::allocator<void AMCP::IO_Core::setup_proc<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>>(AMCP::Core::Operation_Set &,AMCP::Address const&,AMCP::Graph::Node_Proc_Owner *,std::shared_ptr<AMCP::Graph::Node> const&,std::function<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>)::{lambda(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> const&)#1}>,void ()(std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F918;
  std::__function::__value_func<std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::~__value_func[abi:ne200100](a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_0,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_0>,std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)> & ()(AMCP::Graph::Node_Proc &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7IO_Core4Node11update_coreERNS_4Core13Operation_SetEE4$_12"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

CFStringRef std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::operator()@<X0>(CFStringRef result@<X0>, CFStringRef *a2@<X8>)
{
  length_high = SHIBYTE(result->length);
  if (length_high < 0)
  {
    info = result->info;
    if (!info)
    {
      *a2 = 0;
      return result;
    }

    length_high = result->data;
  }

  else
  {
    info = &result->info;
  }

  result = CFStringCreateWithBytes(0, info, length_high, 0x8000100u, 0);
  *a2 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::destroy_deallocate(void **__p)
{
  if (*(__p + 31) < 0)
  {
    operator delete(__p[1]);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::destroy(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F596F898;
  v2 = (a2 + 1);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v3 = *(a1 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a1 + 24);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

void std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F898;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12,std::allocator<AMCP::IO_Core::Node::update_core(AMCP::Core::Operation_Set &)::$_12>,applesauce::CF::StringRef ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F596F898;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void AMCP::IO_Core::Node::~Node(AMCP::IO_Core::Node *this)
{
  *this = &unk_1F596F7D8;
  v2 = (*(**(this + 4) + 16))(*(this + 4));
  AMCP::Core::Broker::destroy_core(v2, *(this + 2));
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void AMCP::IO_Core::Node::build_core(AMCP::IO_Core::Node *this)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 4) + 16))(*(this + 4));
  *(this + 2) = AMCP::Core::Broker::reserve_id(v2);
  *__p = 0u;
  *v13 = 0u;
  v14 = 1065353216;
  (*(*this + 32))(this, __p);
  v3 = (*(**(this + 4) + 16))(*(this + 4));
  AMCP::Core::Broker::make_core(&v10, v3, __p, *(this + 2));
  if (!v10)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "Node.cpp";
      v17 = 1024;
      v18 = 74;
      v19 = 2080;
      v20 = "core_ptr.operator BOOL() == true";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s failed to allocate the Core", buf, 0x1Cu);
    }

    abort();
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__deallocate_node(v13[0]);
  v5 = __p[0];
  __p[0] = 0;
  if (v5)
  {
    operator delete(v5);
  }
}

void sub_1DE456240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_1DE456AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, __int128 buf)
{
  if (a2)
  {
    if (a18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a18);
    }

    v30 = __cxa_begin_catch(exception_object);
    v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v31 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v30);
    }

    v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v34 = *v32;
      AMCP::Log::Scope::get_os_log_t(*v32);
      objc_claimAutoreleasedReturnValue();
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v34 = *v32;
      AMCP::Log::Scope::get_os_log_t(*v32);
      objc_claimAutoreleasedReturnValue();
    }

    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315394;
      *(&buf + 4) = "Core_Audio_Driver_Host.mm";
      WORD6(buf) = 1024;
      *(&buf + 14) = 655;
      _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Failed to get property data!", &buf, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE456AACLL);
  }

  _Unwind_Resume(exception_object);
}

__n128 __copy_helper_block_ea8_32c127_ZTSKZ112__Core_Audio_Driver_Host_get_property_data_qualifier_data_size_qualifier_data_data_size_out_data_size_out_data__E4__41(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c107_ZTSKZ93__Core_Audio_Driver_Host_get_property_data_size_qualifier_data_size_qualifier_data_out_size__E4__39(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

__n128 __copy_helper_block_ea8_32c74_ZTSKZ60__Core_Audio_Driver_Host_is_property_settable_out_settable__E4__37(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1DE458EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c80_ZTSKZ66__Core_Audio_Driver_Host_create_device_client_info_out_object_id__E4__15(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void sub_1DE45A440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1DE45B0F4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = Core_Audio_Driver_Host;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<Property_Type_Info>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      do
      {
        v5 = v3 - 48;
        std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(v3 - 40);
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<Property_Type_Info>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5986C90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Feature_Flags::access_run_new_hal(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 224;
        v11 = "%32s:%-5d MCP Engaged";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 228;
    v11 = "%32s:%-5d MCP Disengaged";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_run_new_hal(BOOL const*)::s_run_new_hal)
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_New_HAL_State", "AMCP Turned on: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::run_hybrid_hal(AMCP::Feature_Flags *this, const BOOL *a2)
{
  result = AMCP::Feature_Flags::access_run_hybrid_hal(0, a2);
  if (result)
  {
    return AMCP::Feature_Flags::access_run_new_hal(0, v3) ^ 1;
  }

  return result;
}

uint64_t AMCP::Feature_Flags::access_run_hybrid_hal(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 188;
        v11 = "%32s:%-5d Hybrid HAL Engaged";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 196;
    v11 = "%32s:%-5d Vintage HAL Engaged";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_run_hybrid_hal(BOOL const*)::s_run_hybrid_hal)
    {
      v20 = "true";
    }

    else
    {
      v20 = "false";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_Hybrid_HAL_State", "Hybrid HAL turned on: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::access_host_asp_oop(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 287;
        v11 = "%32s:%-5d Hosting ASPs Out of Process";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 291;
    v11 = "%32s:%-5d Loading ASPs directly";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_host_asp_oop(BOOL const*)::s_host_asp_oop)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Host_ASP_OoP_State", "Hosting ASPs Out of Process: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::access_internal_drivers_oop(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 256;
        v11 = "%32s:%-5d Forcing Internal Drivers Out of Process";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 260;
    v11 = "%32s:%-5d Internal Drivers will be loaded on the Server";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_internal_drivers_oop(BOOL const*)::s_force_internal_drivers_oop)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Load_Internal_Drivers_OoP", "Forcing Internal Drivers Out of Process: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 318;
        v11 = "%32s:%-5d MCP and HAL Can Coexist in coreaudiod";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 322;
    v11 = "%32s:%-5d MCP and HAL Cannot Coexist in coreaudiod";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_allow_mcp_and_hal_coex(BOOL const*)::s_allow_mcp_and_hal_coex)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_MCP_HAL_Coex", "MCP and HAL Can Coexist in coreaudiod: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::access_event_link_oop_io(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 350;
        v11 = "%32s:%-5d Using EventLink for OoP I/O.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 354;
    v11 = "%32s:%-5d Using Mach Semaphores for OoP I/O.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_event_link_oop_io(BOOL const*)::s_event_link_oop_io)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Event_Link_OoP_IO", "Use EventLink for OoP I/O: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::access_collect_io_perfdata(AMCP::Feature_Flags *this, const BOOL *a2)
{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 383;
        v11 = "%32s:%-5d Collecting perfdata for OoP I/O.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 387;
    v11 = "%32s:%-5d Not collecting perfdata for OoP I/O.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::access_collect_io_perfdata(BOOL const*)::s_collect_io_perfdata)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Collect_IO_perfdata", "Collect IO perfdata: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::allow_adm_dsp_spatial(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::allow_adm_dsp_spatial(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 416;
        v11 = "%32s:%-5d Allow ADM DSP Spatial.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 420;
    v11 = "%32s:%-5d Do not allow ADM DSP Spatial.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::allow_adm_dsp_spatial(BOOL const*)::s_allow_adm_dsp_spatial)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_ADM_DSP_Spatial", "Allow ADM DSP Spatial: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::force_mock_dsp_type(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::force_mock_dsp_type(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::$_0 &&>>(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type = v2;
    if (v2 != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type = a1;
    if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *v5;
  }

  a1 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (a1)
  {
    v15 = 136315394;
    v16 = "Configuration.cpp";
    v17 = 1024;
    v18 = 449;
    _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, "%32s:%-5d Use MOCK DSP on Hosted DSP construction (testing only) - this will override ADM loading option.", &v15, 0x12u);
  }

LABEL_12:
  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v10 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v10 = *v9;
  }

  v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v11 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v8);
  }

  v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = os_signpost_id_generate(*v12);
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v14 = os_signpost_id_generate(*v12);
  }

  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v15 = 67109120;
    LODWORD(v16) = AMCP::Feature_Flags::force_mock_dsp_type(BOOL const*)::s_force_mock_dsp_type;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v10, OS_SIGNPOST_EVENT, v14, "AMCP_Force_Mock_DSP_Type", "Force Using Mock DSP: %d", &v15, 8u);
  }
}

uint64_t AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(AMCP::Log::AMCP_Scope_Registry *a1, std::__shared_weak_count *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = a1;
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (a2 && (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable & 1) != 0)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Configuration.cpp";
        v19 = 1024;
        v20 = 467;
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, "%32s:%-5d WARNING: Feature Flag 'Use_AHAL_DSP_Hosting_Lib' is initialized as runtime configurable (development only).", buf, 0x12u);
      }
    }

    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable != 1)
    {
      break;
    }

    v7 = v16;
    v8 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib;
    if (!v16 || *v16 == AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib)
    {
      return v8 & 1;
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    a2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (a2)
    {
      atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v10 = *(v9 + 8);
      v11 = (*v16 << 32) | 0x1DA;
      v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v12 + 16) = 0;
      *(v12 + 20) = 0;
      *(v12 + 24) = "Configuration.cpp";
      *(v12 + 32) = v11;
      *v12 = &unk_1F5971348;
      *(v12 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v10, v12);
      if (a2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a2);
      }

      v8 = *v7;
      AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib = *v7;
      return v8 & 1;
    }

    __break(1u);
LABEL_25:
    if (a1)
    {
      if (a2)
      {
        v14 = a2->__vftable;
      }

      else
      {
        v14 = 0;
      }

      AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable = v14 & 1;
    }
  }

  v15 = &v16;
  if (atomic_load_explicit(&AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, memory_order_acquire) != -1)
  {
    *buf = &v15;
    v17 = buf;
    std::__call_once(&AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, &v17, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>);
  }

  v8 = AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib;
  return v8 & 1;
}

void sub_1DE45D4CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 500;
        v11 = "%32s:%-5d Use AHAL DSP Hosting Lib.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 504;
    v11 = "%32s:%-5d Do not use AHAL DSP Hosting Lib.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_ahal_dsp_hosting_lib)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_AHAL_DSP_Hosting_Lib", "Use AHAL DSP Hosting Lib: %s", &v21, 0xCu);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d WARNING: Feature Flag 'Use_AHAL_DSP_Hosting_Lib' is runtime configurable (development only).  Changing setting to %d.", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_ahal_dsp_hosting_lib(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Feature_Flags::allow_smart_routing_macos(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::allow_smart_routing_macos(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v20 = 136315394;
        v21 = "Configuration.cpp";
        v22 = 1024;
        v23 = 533;
        v11 = "%32s:%-5d Allow Smart Routing on macOS";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v20, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v20 = 136315394;
    v21 = "Configuration.cpp";
    v22 = 1024;
    v23 = 537;
    v11 = "%32s:%-5d Do not allow Smart Routing on macOS";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v20 = 67109120;
    LODWORD(v21) = AMCP::Feature_Flags::allow_smart_routing_macos(BOOL const*)::s_allow_smart_routing_macos;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Smart_Routing_macOS", "Allow Smart Routing: %d", &v20, 8u);
  }
}

uint64_t AMCP::Feature_Flags::allow_client_io_timeout_macos(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::allow_client_io_timeout_macos(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v20 = 136315394;
        v21 = "Configuration.cpp";
        v22 = 1024;
        v23 = 566;
        v11 = "%32s:%-5d Allow Client IO Timeout on macOS";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v20, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v20 = 136315394;
    v21 = "Configuration.cpp";
    v22 = 1024;
    v23 = 570;
    v11 = "%32s:%-5d Do not allow Client IO Timeout on macOS";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v20 = 67109120;
    LODWORD(v21) = AMCP::Feature_Flags::allow_client_io_timeout_macos(BOOL const*)::s_allow_client_io_timeout_macos;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Allow_Client_IO_Timeout_macOS", "Allow Client IO Timeout: %d", &v20, 8u);
  }
}

uint64_t AMCP::Feature_Flags::allow_unified_device_engine_replacer(AMCP::Feature_Flags *this)
{
  v2 = &v3;
  v3 = 0;
  if (atomic_load_explicit(&AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
    std::__call_once(&AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v20 = 136315394;
        v21 = "Configuration.cpp";
        v22 = 1024;
        v23 = 599;
        v11 = "%32s:%-5d Allow unified device engine replacer";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v20, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v20 = 136315394;
    v21 = "Configuration.cpp";
    v22 = 1024;
    v23 = 603;
    v11 = "%32s:%-5d Disallow unified device engine replacer";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v20 = 67109120;
    LODWORD(v21) = AMCP::Feature_Flags::allow_unified_device_engine_replacer(BOOL const*)::s_allow_unified_device_engine_replacer;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "Unified Device Engine Replacer", "Allow unified device engine replacer: %d", &v20, 8u);
  }
}

uint64_t AMCP::Feature_Flags::allow_high_quality_local_recording(AMCP::Feature_Flags *this)
{
  only_ios_high_quality_recording = AMCP::Feature_Flags::va_read_only_ios_high_quality_recording(this);
  if (only_ios_high_quality_recording)
  {
    return 1;
  }

  return AMCP::Feature_Flags::dsp_read_only_macos_high_quality_local_recording(only_ios_high_quality_recording);
}

uint64_t AMCP::Feature_Flags::use_graph_based_io_processor(AMCP::Log::AMCP_Scope_Registry *a1, std::__shared_weak_count *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = a1;
  {
    goto LABEL_25;
  }

  while (1)
  {
    if (a2 && (AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable & 1) != 0)
    {
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Configuration.cpp";
        v19 = 1024;
        v20 = 621;
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEFAULT, "%32s:%-5d WARNING: Feature Flag 'Use_Graph_Based_IO_Processor' is initialized as runtime configurable (development only).", buf, 0x12u);
      }
    }

    if (AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable != 1)
    {
      break;
    }

    v7 = v16;
    v8 = AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor;
    if (!v16 || *v16 == AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor)
    {
      return v8 & 1;
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    a2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (a2)
    {
      atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*MEMORY[0x1E69E3C08])
    {
      v10 = *(v9 + 8);
      v11 = (*v16 << 32) | 0x274;
      v12 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v12 + 16) = 0;
      *(v12 + 20) = 0;
      *(v12 + 24) = "Configuration.cpp";
      *(v12 + 32) = v11;
      *v12 = &unk_1F59713A0;
      *(v12 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v10, v12);
      if (a2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a2);
      }

      v8 = *v7;
      AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor = *v7;
      return v8 & 1;
    }

    __break(1u);
LABEL_25:
    if (a1)
    {
      if (a2)
      {
        v14 = a2->__vftable;
      }

      else
      {
        v14 = 0;
      }

      AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_runtime_configurable = v14 & 1;
    }
  }

  v15 = &v16;
  if (atomic_load_explicit(&AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, memory_order_acquire) != -1)
  {
    *buf = &v15;
    v17 = buf;
    std::__call_once(&AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::once, &v17, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>);
  }

  v8 = AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor;
  return v8 & 1;
}

void sub_1DE45E698(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_1 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 654;
        v11 = "%32s:%-5d Use Graph Based IO Procesor.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 658;
    v11 = "%32s:%-5d Do not use Graph Based IO Procesor.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::s_use_graph_based_io_processor)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_Graph_Based_IO_Processor", "Use Graph Based IO Processor: %s", &v21, 0xCu);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d WARNING: Feature Flag 'Use_Graph_Based_IO_Processor' is runtime configurable (development only).  Changing setting to %d.", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<AMCP::Feature_Flags::use_graph_based_io_processor(BOOL const*,AMCP::Feature_Flags::RuntimeConfigurableFlag *)::$_0,std::tuple<char const*,int,BOOL>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Feature_Flags::report_real_system_health_to_watchdog(AMCP::Feature_Flags *this)
{
  v2 = &v3;
  v3 = 0;
  if (atomic_load_explicit(&AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v5 = &v2;
    v4 = &v5;
    std::__call_once(&AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::once, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v21 = 136315394;
        v22 = "Configuration.cpp";
        v23 = 1024;
        v24 = 720;
        v11 = "%32s:%-5d Report real system health to watchdog.";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v21, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v21 = 136315394;
    v22 = "Configuration.cpp";
    v23 = 1024;
    v24 = 724;
    v11 = "%32s:%-5d Always report 'healthy' to watchdog.";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    if (AMCP::Feature_Flags::report_real_system_health_to_watchdog(BOOL const*)::s_report_real_system_health_to_watchdog)
    {
      v20 = "yes";
    }

    else
    {
      v20 = "no";
    }

    v21 = 136315138;
    v22 = v20;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "Report_Real_System_Health_To_Watchdog", "Report real system health to watchdog: %s", &v21, 0xCu);
  }
}

uint64_t AMCP::Feature_Flags::use_isolated_muted_talker_detection(AMCP::Feature_Flags *this, const BOOL *a2)
{
  return AMCP::Feature_Flags::use_isolated_muted_talker_detection(0, a2);
}

{
  v3 = &v4;
  v4 = this;
  if (atomic_load_explicit(&AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::once, memory_order_acquire) != -1)
  {
    v6 = &v3;
    v5 = &v6;
    std::__call_once(&AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::$_0 &&>>);
  }

  return AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::$_0 &&>>(AMCP::Log::AMCP_Scope_Registry *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = ****a1;
  if (v1)
  {
    v2 = *v1;
    AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection = v2;
    if (v2 == 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    a1 = _os_feature_enabled_simple_impl();
    AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection = a1;
    if (a1)
    {
LABEL_3:
      v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v3 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
      }

      v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v6 = *v5;
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      else
      {
        v6 = *v5;
      }

      v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (v10)
      {
        v20 = 136315394;
        v21 = "Configuration.cpp";
        v22 = 1024;
        v23 = 687;
        v11 = "%32s:%-5d Allow Isolated Muted Talker Detection";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_INFO, v11, &v20, 0x12u);
        goto LABEL_19;
      }

      goto LABEL_19;
    }
  }

  v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v7 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v9;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v6 = *v9;
  }

  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v10)
  {
    v20 = 136315394;
    v21 = "Configuration.cpp";
    v22 = 1024;
    v23 = 691;
    v11 = "%32s:%-5d Do not allow Isolated Muted Talker Detection";
    goto LABEL_18;
  }

LABEL_19:
  v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v12 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v10);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = *v14;
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  else
  {
    v15 = *v14;
  }

  v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v16 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v13);
  }

  v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v19 = os_signpost_id_generate(*v17);
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v19 = os_signpost_id_generate(*v17);
  }

  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    v20 = 67109120;
    LODWORD(v21) = AMCP::Feature_Flags::use_isolated_muted_talker_detection(BOOL const*)::s_use_isolated_muted_talker_detection;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v15, OS_SIGNPOST_EVENT, v19, "AMCP_Use_Isolated_Muted_Talker_Detection", "Allow Isolated Muted Talker Detection: %d", &v20, 8u);
  }
}

void ADS::Control::GetPropertyData(ADS::Control *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6, unsigned int a7, unsigned int *a8, char *a9)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a4->mSelector == 1667591277)
  {
    if (a7 > 3)
    {
      *a9 = 0;
      goto LABEL_7;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ADS_Control.cpp";
      v14 = 1024;
      v15 = 92;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  ADS::Control::GetPropertyData: not enough space for the return value of kAudioControlPropertyElement for the volume control";
      goto LABEL_15;
    }

LABEL_16:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 561211770;
  }

  if (a4->mSelector == 1668506480)
  {
    if (a7 > 3)
    {
      *a9 = *(this + 29);
LABEL_7:
      *a8 = 4;
      return;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "ADS_Control.cpp";
      v14 = 1024;
      v15 = 85;
      v9 = MEMORY[0x1E69E9C10];
      v10 = "%25s:%-5d  ADS::Control::GetPropertyData: not enough space for the return value of kAudioControlPropertyScope for the volume control";
LABEL_15:
      _os_log_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, v10, &v12, 0x12u);
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  ADS::BaseObject::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ADS::Control::GetPropertyDataSize(ADS::Control *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4, unsigned int a5, const void *a6)
{
  if (a4->mSelector == 1667591277 || a4->mSelector == 1668506480)
  {
    return 4;
  }

  else
  {
    return ADS::BaseObject::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }
}

uint64_t ADS::Control::IsPropertySettable(ADS::Control *this, unsigned int a2, int a3, const AudioObjectPropertyAddress *a4)
{
  if (a4->mSelector == 1667591277 || a4->mSelector == 1668506480)
  {
    return 0;
  }

  else
  {
    return ADS::BaseObject::IsPropertySettable(this, a2, a3, a4);
  }
}

ADS::Control *ADS::Control::Control(ADS::Control *this, int a2, int a3, int a4, int a5, int a6)
{
  *(this + 2) = a2;
  *(this + 3) = a5;
  *(this + 4) = a6;
  *(this + 5) = a3;
  *(this + 3) = 850045863;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 112) = 0;
  *this = &unk_1F5984F18;
  *(this + 29) = a4;
  CADeprecated::CAMutex::CAMutex((this + 120), "Control State");
  return this;
}

void AMCP::DAL::Fixed_Buffer::get_direct_write_ranges(AMCP::DAL::Fixed_Buffer *this@<X0>, const AMCP::DAL::DAL_Time_Range *a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(this + 8, a2);
  if (!v6)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 218;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_time_range.encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "", v25);
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    v43 = "virtual rt_safe_vector<std::pair<Buffer_Time_Translator::Translation_Range, Container>> AMCP::DAL::Fixed_Buffer::get_direct_write_ranges(const DAL_Time_Range &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v45 = 218;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  v8 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 40));
  v9 = AMCP::DAL::DAL_Time::get_sample_time((this + 8));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v35 = *a2;
  v36 = *(a2 + 2);
  v10 = *(a2 + 24);
  v28 = v10;
  if (*(&v10 + 1))
  {
    atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v31 = *(a2 + 40);
  v32 = *(a2 + 7);
  v11 = *(a2 + 4);
  v27 = v11;
  if (*(&v11 + 1))
  {
    atomic_fetch_add_explicit((*(&v11 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(this + 88);
  v26 = v12;
  if (*(&v12 + 1))
  {
    atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v13 = v8 - v9;
  v14 = sample_time - v9;
  v43 = a3;
  v15 = std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>(1);
  *buf = v15;
  *&buf[8] = v15;
  *&buf[24] = v15 + 112 * v16;
  *v15 = v14;
  *(v15 + 1) = v13;
  *(v15 + 4) = v36;
  *(v15 + 1) = v35;
  *(v15 + 40) = v28;
  *(v15 + 56) = v31;
  *(v15 + 9) = v32;
  *(v15 + 5) = v27;
  *(v15 + 6) = v26;
  *&buf[16] = v15 + 112;
  v17 = a3[1];
  v18 = v15 + *a3 - v17;
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>,std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>*>(a3, *a3, v17, v18);
  v19 = *a3;
  *a3 = v18;
  v20 = a3[2];
  v29 = *&buf[16];
  *(a3 + 1) = *&buf[16];
  *&buf[16] = v19;
  *&buf[24] = v20;
  *buf = v19;
  *&buf[8] = v19;
  std::__split_buffer<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>> &>::~__split_buffer(buf);
  a3[1] = v29;
}

void sub_1DE45F954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v33 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a32);
  MEMORY[0x1E12C0F00](&a30);
  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a13)
  {
    __cxa_free_exception(v32);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v33 - 129));
  _Unwind_Resume(a1);
}

BOOL caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(uint64_t a1, uint64_t a2)
{
  result = AMCP::DAL::DAL_Time::operator<(a1, (a1 + 40));
  if (result)
  {
    if (AMCP::DAL::DAL_Time::operator<(a2, (a2 + 40)))
    {
      return !AMCP::DAL::DAL_Time::operator<(a2, a1) && !AMCP::DAL::DAL_Time::operator<((a1 + 40), (a2 + 40));
    }

    else
    {
      return 1;
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x24924924924924ALL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>,std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 16) = v7;
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v8 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v8;
      *(a4 + 80) = *(v6 + 80);
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      *(a4 + 96) = *(v6 + 96);
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      v6 += 112;
      a4 += 112;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(v5);
      v5 += 14;
    }

    while (v5 != a3);
  }
}

void std::__split_buffer<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v2 = *(result + 1);
  while (1)
  {
    v3 = *(result + 2);
    if (v3 == v2)
    {
      break;
    }

    *(result + 2) = v3 - 112;
    std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>((v3 - 112));
  }

  v4 = *result;
  if (*result)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((*(result + 3) - v4) >> 4)) < 0x24924924924924ALL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::allocator_traits<caulk::rt_allocator<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>>>::destroy[abi:ne200100]<std::pair<AMCP::DAL::Buffer_Time_Translator::Translation_Range,AMCP::DAL::Container>,void,0>(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[11];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void AMCP::DAL::Fixed_Buffer::create_writable_range(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = *MEMORY[0x1E69E9840];
  *buf = *(a1 + 8);
  v6 = *(a1 + 32);
  *&buf[16] = *(a1 + 24);
  *&buf[24] = v6;
  v7 = *(a1 + 40);
  v41 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v42 = *(a1 + 48);
  v8 = *(a1 + 72);
  v43 = *(a1 + 64);
  v44 = v8;
  v9 = *(a1 + 80);
  v45 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(buf, a2);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  v11 = v41;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  if (!v10)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 164;
      *&buf[18] = 2080;
      *&buf[20] = "not (get_time_range().encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v31, "", v21);
    std::logic_error::logic_error(&v32, &v31);
    v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v33, &v32);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = -1;
    v33.__vftable = &unk_1F5991430;
    v34 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v33);
    v41 = "virtual Writable_Range AMCP::DAL::Fixed_Buffer::create_writable_range(DAL_Time_Range) const";
    *&v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v42) = 164;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v30);
  }

  v22 = *a2;
  v12 = *(a2 + 24);
  v23 = *(a2 + 16);
  v24 = v12;
  v13 = *(a2 + 32);
  v25 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = *(a2 + 40);
  v14 = *(a2 + 64);
  v27 = *(a2 + 56);
  v28 = v14;
  v15 = *(a2 + 72);
  v29 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(a3, &v22, a1);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  v16 = v25;
  if (v25)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void AMCP::DAL::Fixed_Buffer::create_writable_range(AMCP::DAL::Fixed_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  v7 = *(this + 8);
  v2 = *(this + 4);
  v8 = *(this + 3);
  v9 = v2;
  v3 = *(this + 5);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 3);
  v4 = *(this + 9);
  v12 = *(this + 8);
  v13 = v4;
  v5 = *(this + 10);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Fixed_Buffer::create_writable_range(this, &v7, a2);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v6 = v10;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void AMCP::DAL::Fixed_Buffer::create_readable_range(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = *MEMORY[0x1E69E9840];
  v72 = *(a1 + 8);
  v6 = *(a1 + 32);
  v73 = *(a1 + 24);
  v74 = v6;
  v7 = *(a1 + 40);
  v75 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v76 = *(a1 + 48);
  v8 = *(a1 + 72);
  v77 = *(a1 + 64);
  v78 = v8;
  v9 = *(a1 + 80);
  v79 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(&v72, a2);
  if (v79)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v79);
  }

  v11 = v75;
  if (v75)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v75);
  }

  if (!v10)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v11);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v72 = *(a1 + 8);
      v21 = *(a1 + 32);
      v73 = *(a1 + 24);
      v74 = v21;
      v22 = *(a1 + 40);
      v75 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v76 = *(a1 + 48);
      v23 = *(a1 + 72);
      v77 = *(a1 + 64);
      v78 = v23;
      v24 = *(a1 + 80);
      v79 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v72);
      v64 = *(a1 + 8);
      v26 = *(a1 + 32);
      v65 = *(a1 + 24);
      v66 = v26;
      v27 = *(a1 + 40);
      v67 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v68 = *(a1 + 48);
      v28 = *(a1 + 72);
      v69 = *(a1 + 64);
      v70 = v28;
      v29 = *(a1 + 80);
      v71 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = AMCP::DAL::DAL_Time::get_sample_time(&v68);
      v31 = AMCP::DAL::DAL_Time::get_sample_time(a2);
      v32 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 5));
      *buf = 136316674;
      v81 = "Fixed_Buffer.cpp";
      v82 = 1024;
      v83 = 146;
      v84 = 2080;
      v85 = "not (get_time_range().encompasses(range))";
      v86 = 2048;
      *v87 = vcvtmd_s64_f64(sample_time);
      *&v87[8] = 2048;
      v88 = vcvtmd_s64_f64(v30);
      *v89 = 2048;
      *&v89[2] = vcvtmd_s64_f64(v31);
      v90 = 2048;
      v91 = vcvtmd_s64_f64(v32);
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s create_readable_range: [%lld  %lld]  range:[%lld  %lld]", buf, 0x44u);
      AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&v64);
      AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&v72);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v63);
    __cxa_allocate_exception(0x40uLL);
    v72 = *(a1 + 8);
    v33 = *(a1 + 32);
    v73 = *(a1 + 24);
    v74 = v33;
    v34 = *(a1 + 40);
    v75 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v76 = *(a1 + 48);
    v35 = *(a1 + 72);
    v77 = *(a1 + 64);
    v78 = v35;
    v36 = *(a1 + 80);
    v79 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = AMCP::DAL::DAL_Time::get_sample_time(&v72);
    v64 = *(a1 + 8);
    v38 = *(a1 + 32);
    v65 = *(a1 + 24);
    v66 = v38;
    v39 = *(a1 + 40);
    v67 = v39;
    if (v39)
    {
      atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
    }

    v68 = *(a1 + 48);
    v40 = *(a1 + 72);
    v69 = *(a1 + 64);
    v70 = v40;
    v41 = *(a1 + 80);
    v71 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
    }

    v42 = AMCP::DAL::DAL_Time::get_sample_time(&v68);
    v43 = AMCP::DAL::DAL_Time::get_sample_time(a2);
    v44 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 5));
    caulk::make_string(&v55, "create_readable_range: [%lld  %lld]  range:[%lld  %lld]", v45, vcvtmd_s64_f64(v37), vcvtmd_s64_f64(v42), vcvtmd_s64_f64(v43), vcvtmd_s64_f64(v44));
    std::logic_error::logic_error(&v56, &v55);
    v56.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v57, &v56);
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = -1;
    v57.__vftable = &unk_1F5991430;
    v58 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v57);
    *&v87[2] = "virtual Readable_Range AMCP::DAL::Fixed_Buffer::create_readable_range(DAL_Time_Range) const";
    v88 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    *v89 = 146;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v54);
  }

  v46 = *a2;
  v12 = a2[3];
  v47 = a2[2];
  v48 = v12;
  v13 = a2[4];
  v49 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v50 = *(a2 + 5);
  v14 = a2[8];
  v51 = a2[7];
  v52 = v14;
  v15 = a2[9];
  v53 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Readable_Range::Readable_Range(a3, &v46, a1);
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v16 = v49;
  if (v49)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1DE460724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, char a49)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a49);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range((v49 - 240));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Fixed_Buffer::create_readable_range(uint64_t *__return_ptr a1@<X8>, AMCP::DAL::Fixed_Buffer *this@<X0>)
{
  v7 = *(this + 8);
  v2 = *(this + 4);
  v8 = *(this + 3);
  v9 = v2;
  v3 = *(this + 5);
  v10 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 3);
  v4 = *(this + 9);
  v12 = *(this + 8);
  v13 = v4;
  v5 = *(this + 10);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Fixed_Buffer::create_readable_range(this, &v7, a1);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v6 = v10;
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void AMCP::DAL::Fixed_Buffer::advance_to_time(AMCP::DAL::Fixed_Buffer *this, std::__shared_weak_count **a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = AMCP::DAL::DAL_Time::operator<(a2, (this + 8));
  if (v4)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 97;
      *&buf[18] = 2080;
      *&buf[20] = "not (time >= m_time_range.start())";
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "", v27);
    std::logic_error::logic_error(&v34, &v28);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0uLL;
    v38 = 0;
    v39 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    *&buf[32] = "virtual void AMCP::DAL::Fixed_Buffer::advance_to_time(const DAL_Time &)";
    *&v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v42) = 97;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v33);
  }

  v35 = *a2;
  v5 = a2[3];
  v36 = a2[2];
  *&v37 = v5;
  v6 = a2[4];
  *(&v37 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Buffer::get_timebase(buf, this);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = (*buf | v5) == 0;
  if (!*buf || !v5)
  {
LABEL_21:
    if (!v6)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v8 = (*(**buf + 16))(*buf);
  v9 = (v5->__on_zero_shared)(v5);
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = *(v9 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(v9 + 8);
  }

  if (v11 == v12)
  {
    if (v10 >= 0)
    {
      v14 = v8;
    }

    else
    {
      v14 = *v8;
    }

    if (v13 >= 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = *v9;
    }

    v7 = memcmp(v14, v15, v11) == 0;
    goto LABEL_21;
  }

  v7 = 0;
  if (v6)
  {
LABEL_22:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

LABEL_23:
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!v7)
  {
    host_time = AMCP::DAL::DAL_Time::get_host_time(&v35);
    AMCP::DAL::DAL_Buffer::get_timebase(&v32, this);
    v17 = v32;
    v32 = 0uLL;
    LODWORD(v35.__vftable) = 1;
    v35.__imp_.__imp_ = 0;
    v36 = host_time;
    v18 = *(&v37 + 1);
    v37 = v17;
    v6 = *(&v17 + 1);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  AMCP::DAL::DAL_Time::operator-(&v28, (this + 48), (this + 8));
  boost::operators_impl::operator+(&v30, &v35, &v28);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v35, &v30);
  *(this + 8) = *buf;
  *(this + 3) = *&buf[16];
  v19 = *&buf[24];
  *&buf[24] = 0;
  *&buf[32] = 0;
  v20 = *(this + 5);
  *(this + 2) = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  *(this + 3) = v42;
  *(this + 8) = v43;
  v21 = v44;
  v44 = 0uLL;
  v22 = *(this + 10);
  *(this + 72) = v21;
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    if (*(&v44 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
    }
  }

  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE460D88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Fixed_Buffer::increment_time_range(uint64_t a1, __int128 *a2)
{
  v20 = *a2;
  v3 = *(a2 + 3);
  v21 = *(a2 + 2);
  *&v22 = v3;
  v4 = *(a2 + 4);
  *(&v22 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::DAL_Buffer::get_timebase(&v18, a1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = (v18 | v3) == 0;
  if (!v18 || !v3)
  {
LABEL_20:
    if (!v4)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v6 = (*(*v18 + 16))();
  v7 = (*(*v3 + 16))(v3);
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = *(v6 + 23);
  }

  else
  {
    v9 = *(v6 + 8);
  }

  v10 = *(v7 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(v7 + 8);
  }

  if (v9 == v10)
  {
    if (v8 >= 0)
    {
      v12 = v6;
    }

    else
    {
      v12 = *v6;
    }

    if (v11 >= 0)
    {
      v13 = v7;
    }

    else
    {
      v13 = *v7;
    }

    v5 = memcmp(v12, v13, v9) == 0;
    goto LABEL_20;
  }

  v5 = 0;
  if (v4)
  {
LABEL_21:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_22:
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (!v5)
  {
    if ((v20 & 1) == 0)
    {
      AMCP::DAL::DAL_Time_Delta::validate(&v20);
    }

    v14 = v21;
    AMCP::DAL::DAL_Buffer::get_timebase(&v17, a1);
    LODWORD(v20) = 1;
    *(&v20 + 1) = 0;
    v21 = v14;
    v15 = *(&v22 + 1);
    v22 = v17;
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  AMCP::DAL::DAL_Time::operator+=((a1 + 8), &v20);
  AMCP::DAL::DAL_Time::operator+=((a1 + 48), &v20);
  v16 = *(&v22 + 1);
  if (*(&v22 + 1))
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1DE46105C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Fixed_Buffer::set_range(AMCP::DAL::Fixed_Buffer *this, const AMCP::DAL::DAL_Time_Range *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v4 = round(*&buf[8]);
  v5 = *&buf[32];
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v4 < 0.0)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 180;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length().get_sample_delta() >= 0_S)";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "", v29);
    std::logic_error::logic_error(&v36, &v35);
    v36.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5991430;
    v38 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v37);
    *&buf[32] = "void AMCP::DAL::Fixed_Buffer::set_range(const DAL_Time_Range &)";
    *&v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v45) = 180;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v6.n128_f64[0] = AMCP::DAL::DAL_Time::operator-(buf, (a2 + 40), a2);
  if ((buf[0] & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(buf);
  }

  v7 = *&buf[8];
  v8 = *(this + 11);
  if (v8)
  {
    (*(*v8 + 48))(v8, v6);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = round(v9);
  v11 = round(v7);
  v12 = *&buf[32];
  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v10 < v11)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 181;
      *&buf[18] = 2080;
      *&buf[20] = "not (range.length().get_sample_delta() <= m_container.get_length_in_frames())";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v43);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v35, "", v30);
    std::logic_error::logic_error(&v36, &v35);
    v36.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v37, &v36);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
    v37.__vftable = &unk_1F5991430;
    v38 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v37);
    *&buf[32] = "void AMCP::DAL::Fixed_Buffer::set_range(const DAL_Time_Range &)";
    *&v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    DWORD2(v45) = 181;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v34);
  }

  v13 = *(this + 11);
  if (v13)
  {
    (*(*v13 + 48))(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a2 + 24);
  v16 = *(a2 + 4);
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  LODWORD(v31) = 2;
  v32 = v14;
  v33 = v15;
  boost::operators_impl::operator+(&v37, a2, &v31);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, a2, &v37);
  *(this + 8) = *buf;
  *(this + 3) = *&buf[16];
  v17 = *&buf[24];
  *&buf[24] = 0;
  *&buf[32] = 0;
  v18 = *(this + 5);
  *(this + 2) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  *(this + 3) = v45;
  *(this + 8) = v46;
  v19 = v47;
  v47 = 0uLL;
  v20 = *(this + 10);
  *(this + 72) = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    if (*(&v47 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v47 + 1));
    }
  }

  if (*&buf[32])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v33 + 1));
  }
}

void sub_1DE461700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v33 = *(v31 - 112);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::DAL::Fixed_Buffer::reuse(AMCP::DAL::Fixed_Buffer *this)
{
  result = *(this + 11);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

double AMCP::DAL::Fixed_Buffer::get_format@<D0>(AMCP::DAL::Fixed_Buffer *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 11);
  if (v2)
  {
    v3 = *(v2 + 8);
    v4 = *(v2 + 24);
    *a2 = v3;
    *(a2 + 16) = v4;
    *(a2 + 32) = *(v2 + 40);
  }

  else
  {
    *(a2 + 32) = 0;
    *&v3 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v3;
}

uint64_t AMCP::DAL::Fixed_Buffer::get_allowed_read_range@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 8);
  v2 = *(this + 32);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = v2;
  v3 = *(this + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 48);
  v4 = *(this + 72);
  *(a2 + 56) = *(this + 64);
  *(a2 + 64) = v4;
  v5 = *(this + 80);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AMCP::DAL::Fixed_Buffer::get_time_range@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 8);
  v2 = *(this + 32);
  *(a2 + 16) = *(this + 24);
  *(a2 + 24) = v2;
  v3 = *(this + 40);
  *(a2 + 32) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 40) = *(this + 48);
  v4 = *(this + 72);
  *(a2 + 56) = *(this + 64);
  *(a2 + 64) = v4;
  v5 = *(this + 80);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t AMCP::DAL::Fixed_Buffer::get_container@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 96);
  *a2 = *(this + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void AMCP::DAL::Fixed_Buffer::receive_zeros(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v11 = *a3;
  v4 = *(a3 + 3);
  v12 = *(a3 + 2);
  v13 = v4;
  v5 = *(a3 + 4);
  v14 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a3 + 40);
  v6 = *(a3 + 8);
  v16 = *(a3 + 7);
  v17 = v6;
  v7 = *(a3 + 9);
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::DAL::Fixed_Buffer::create_writable_range(a1, &v11, v19);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(v10, v22, v19);
  v8 = v10[0];
  v9 = v10[1];
  while (v8 != v9)
  {
    AMCP::DAL::Container::erase_range(*(a1 + 88));
    v8 += 12;
  }

  v23 = v10;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v23);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1DE461A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(va);
  _Unwind_Resume(a1);
}

void AMCP::DAL::Fixed_Buffer::receive_data_at_range(uint64_t a1, uint64_t a2, const AMCP::DAL::DAL_Time_Range **a3, void *a4)
{
  v68 = *MEMORY[0x1E69E9840];
  v7 = AMCP::DAL::DAL_Time::operator<((a3 + 5), a3);
  if (v7)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 44;
      v61 = 2080;
      v62 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v59);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v51, "Fixed_Buffer::receive_data_at_range: Bad time range", v37);
    std::logic_error::logic_error(&v52, &v51);
    v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v53, &v52);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = -1;
    v53.__vftable = &unk_1F5991430;
    v54 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
    v63 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v65 = 44;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  AMCP::DAL::DAL_Time::operator-(buf, (a4 + 5), a4);
  AMCP::DAL::DAL_Time::operator-(&v53, (a3 + 5), a3);
  v8 = AMCP::DAL::DAL_Time_Delta::operator==(buf, &v53);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  v9 = v63;
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  if (!v8)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 45;
      v61 = 2080;
      v62 = "not (write_range.length() == new_audio.get_time_range().length())";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: source audio range length must eaqual write range length", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v59);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v51, "Fixed_Buffer::receive_data_at_range: source audio range length must eaqual write range length", v38);
    std::logic_error::logic_error(&v52, &v51);
    v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v53, &v52);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = -1;
    v53.__vftable = &unk_1F5991430;
    v54 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
    v63 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v65 = 45;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  v10 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(a1 + 8, a4);
  if (!v10)
  {
    v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v29 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
    }

    v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v32 = *v31;
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    else
    {
      v32 = *v31;
    }

    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 46;
      v61 = 2080;
      v62 = "not (m_time_range.encompasses(write_range))";
      _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: range to write to must encompass the audio buffer range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v59);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v51, "Fixed_Buffer::receive_data_at_range: range to write to must encompass the audio buffer range", v39);
    std::logic_error::logic_error(&v52, &v51);
    v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v53, &v52);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = -1;
    v53.__vftable = &unk_1F5991430;
    v54 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
    v63 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v65 = 46;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  (*(*a3[10] + 56))(buf);
  is_compatible = AMCP::DAL::Container::container_is_compatible(*(a1 + 88), *buf);
  v12 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!is_compatible)
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v12);
    }

    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v36 = *v35;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 47;
      v61 = 2080;
      v62 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::receive_data_at_range: Containers Are Not Compatible", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v59);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v51, "Fixed_Buffer::receive_data_at_range: Containers Are Not Compatible", v40);
    std::logic_error::logic_error(&v52, &v51);
    v52.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v53, &v52);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = -1;
    v53.__vftable = &unk_1F5991430;
    v54 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v53);
    v63 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data_at_range(const Source_ID &, const Readable_Range &, const DAL_Time_Range &)";
    v64 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v65 = 47;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v53, a3[10], a3);
  v13 = v53.__vftable;
  for (i = v53.__imp_.__imp_; v13 != i; v13 += 4)
  {
    v41 = *a4;
    v15 = a4[3];
    v42 = a4[2];
    v43 = v15;
    v16 = a4[4];
    v44 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = *(a4 + 5);
    v17 = a4[8];
    v46 = a4[7];
    v18 = a4[9];
    v47 = v17;
    v48 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Fixed_Buffer::create_writable_range(a1, &v41, buf);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
    }

    if (v44)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v44);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(v50, v67, buf);
    v19 = v50[0];
    v20 = v50[1];
    while (v19 != v20)
    {
      (*(*a3[10] + 56))(&v51);
      AMCP::DAL::Container::copy_from_this_container(&v51, v13, (a1 + 88), v19);
      if (v51.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51.__r_.__value_.__l.__size_);
      }

      v19 += 12;
    }

    v51.__r_.__value_.__r.__words[0] = v50;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v51);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    if (v63)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v63);
    }
  }

  *buf = &v53;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE4624EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  v40 = *(v38 - 160);
  if (v40)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v40);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Fixed_Buffer::receive_data(uint64_t a1, uint64_t a2, const AMCP::DAL::DAL_Time_Range **a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = AMCP::DAL::DAL_Time::operator<((a3 + 5), a3);
  if (v5)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 23;
      v52 = 2080;
      v53 = "not (new_audio.get_time_range().end() >= new_audio.get_time_range().start())";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::RecieveData: Bad time range", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Fixed_Buffer::RecieveData: Bad time range", v29);
    std::logic_error::logic_error(&v43, &v42);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5991430;
    v45 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v44);
    v54 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v56 = 23;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(a1 + 8, a3);
  if (!v6)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 24;
      v52 = 2080;
      v53 = "not (m_time_range.encompasses(new_audio.get_time_range()))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "", v30);
    std::logic_error::logic_error(&v43, &v42);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5991430;
    v45 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v44);
    v54 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v56 = 24;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  (*(*a3[10] + 56))(buf);
  is_compatible = AMCP::DAL::Container::container_is_compatible(*(a1 + 88), *buf);
  v8 = *&buf[8];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (!is_compatible)
  {
    v25 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v25 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      v28 = *v27;
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    else
    {
      v28 = *v27;
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 25;
      v52 = 2080;
      v53 = "not (m_container.container_is_compatible(new_audio.get_container()))";
      _os_log_error_impl(&dword_1DE1F9000, v28, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Fixed_Buffer::WriteTo: Containers Are Not Compatible", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "Fixed_Buffer::WriteTo: Containers Are Not Compatible", v31);
    std::logic_error::logic_error(&v43, &v42);
    v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v44, &v43);
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = -1;
    v44.__vftable = &unk_1F5991430;
    v45 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v44);
    v54 = "virtual void AMCP::DAL::Fixed_Buffer::receive_data(const Source_ID &, const Readable_Range &)";
    v55 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    v56 = 25;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v40);
  }

  AMCP::DAL::DAL_Timed_Segment::translate_range(&v44, a3[10], a3);
  v9 = v44.__vftable;
  for (i = v44.__imp_.__imp_; v9 != i; v9 += 4)
  {
    v32 = *&v9->what;
    what = v9[1].what;
    v33 = v9[1].~logic_error_0;
    v34 = what;
    v12 = v9[2].~logic_error;
    v35 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = *&v9[2].~logic_error_0;
    v13 = v9[3].~logic_error_0;
    v37 = v9[3].~logic_error;
    v14 = v9[3].what;
    v38 = v13;
    v39 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::Fixed_Buffer::create_writable_range(a1, &v32, buf);
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    AMCP::DAL::DAL_Timed_Segment::translate_range(v41, v58, buf);
    v15 = v41[0];
    v16 = v41[1];
    while (v15 != v16)
    {
      (*(*a3[10] + 56))(&v42);
      AMCP::DAL::Container::copy_from_this_container(&v42, v9, (a1 + 88), v15);
      if (v42.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42.__r_.__value_.__l.__size_);
      }

      v15 += 12;
    }

    v42.__r_.__value_.__r.__words[0] = v41;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](&v42);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }
  }

  *buf = &v44;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE462E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a9);
  *(v34 - 176) = &a34;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100]((v34 - 176));
  _Unwind_Resume(a1);
}

void AMCP::DAL::Fixed_Buffer::translate_range(AMCP::DAL::Fixed_Buffer *this@<X0>, const char **a2@<X1>, unint64_t *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(this + 8, a2);
  if (!v6)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Fixed_Buffer.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 110;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_time_range.encompasses(range))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v31);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v23, "", v21);
    std::logic_error::logic_error(&v24, &v23);
    v24.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v25, &v24);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = -1;
    v25.__vftable = &unk_1F5991430;
    v26 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v25);
    v33 = "virtual rt_safe_vector<Buffer_Time_Translator::Translation_Range> AMCP::DAL::Fixed_Buffer::translate_range(const DAL_Time_Range &) const";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
    LODWORD(v35) = 110;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v22);
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(a2);
  v8 = AMCP::DAL::DAL_Time::get_sample_time((a2 + 5));
  v9 = AMCP::DAL::DAL_Time::get_sample_time((this + 8));
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  *buf = sample_time - v9;
  *&buf[8] = v8 - v9;
  *&buf[16] = *a2;
  v10 = a2[3];
  v33 = a2[2];
  v34 = v10;
  v11 = a2[4];
  v35 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v36 = *(a2 + 5);
  v12 = a2[8];
  v37 = a2[7];
  v38 = v12;
  v13 = a2[9];
  v39 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(a3, buf);
  v15 = v39;
  a3[1] = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = v35;
  if (v35)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }
}

void sub_1DE4632F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__emplace_back_slow_path<AMCP::DAL::Buffer_Time_Translator::Translation_Range>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    v6 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = (v6 + 96 * v2);
  *(&v18 + 1) = v6 + 96 * v7;
  *v8 = *a2;
  v9 = *(a2 + 16);
  *(v8 + 4) = *(a2 + 32);
  *(v8 + 1) = v9;
  *(v8 + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v10 = *(a2 + 56);
  *(v8 + 9) = *(a2 + 72);
  *(v8 + 56) = v10;
  *(v8 + 5) = *(a2 + 80);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *&v18 = v8 + 96;
  v11 = a1[1];
  v12 = &v8[*a1 - v11];
  std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>,AMCP::DAL::Buffer_Time_Translator::Translation_Range*>(*a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v18;
  *(a1 + 1) = v18;
  *&v18 = v13;
  *(&v18 + 1) = v14;
  v17[0] = v13;
  v17[1] = v13;
  std::__split_buffer<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range> &>::~__split_buffer(v17);
  return v16;
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x2AAAAAAAAAAAAABLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>,AMCP::DAL::Buffer_Time_Translator::Translation_Range*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      v6 = *(v5 + 16);
      *(a3 + 32) = *(v5 + 32);
      *(a3 + 16) = v6;
      *(a3 + 40) = *(v5 + 40);
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      v7 = *(v5 + 56);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 56) = v7;
      *(a3 + 80) = *(v5 + 80);
      *(v5 + 80) = 0;
      *(v5 + 88) = 0;
      v5 += 96;
      a3 += 96;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<AMCP::DAL::Buffer_Time_Translator::Translation_Range,0>(v4);
      v4 += 96;
    }

    while (v4 != a2);
  }
}

void std::__split_buffer<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    std::__destroy_at[abi:ne200100]<AMCP::DAL::Buffer_Time_Translator::Translation_Range,0>(i - 96);
  }

  v4 = *a1;
  if (*a1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v4) >> 5) < 0x2AAAAAAAAAAAAABLL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

__n128 caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(unsigned int *a1, __n128 *a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &a1[16 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  result = *a2;
  *(v8 + 17) = *a2;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, a1);
  return result;
}

uint64_t caulk::concurrent::details::spinloop::spin(uint64_t this)
{
  v1 = *this + 1;
  *this = v1;
  if (v1 == 100)
  {
    v2 = this;
    this = sched_yield();
    *v2 = 0;
  }

  return this;
}

void AMCP::IO_Core::Thread_Control_State::set_state(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(a1) != a2)
  {
    *buf = a2;
    LOBYTE(v17) = caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(a1) != 0;
    BYTE1(v17) = 0;
    HIDWORD(v17) = 4;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(a1);
    LOBYTE(v18) = v4 & 1;
    caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::store(a1, buf);
    v5 = pthread_cond_broadcast((a1 + 192));
    v6 = v5;
    AMCP::Utility::Kernel_Error_Category::get(v5);
    if (v6)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = *v10;
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      else
      {
        v11 = *v10;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "Thread_Control_State.cpp";
        v18 = 1024;
        v19 = 79;
        v20 = 2080;
        v21 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to set the signaling the condition variable", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v15);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](v13, v6, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(v14, v13);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, v14);
      v22 = "void AMCP::IO_Core::Thread_Control_State::set_state(Transport_State)";
      v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v24 = 79;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v12);
    }
  }
}

void sub_1DE463A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v21 - 144);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v21 - 145));
  _Unwind_Resume(a1);
}

unint64_t caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(unsigned int *a1)
{
  v13 = 0;
  v2 = atomic_load(a1);
  if ((v2 & 2) != 0)
  {
    v7 = a1 + 16;
    while (1)
    {
      v8 = (v2 >> 2) & 1;
      v9 = &v7[16 * ((v2 & 4) == 0)];
      explicit = atomic_load_explicit(v9, memory_order_acquire);
      if ((explicit & 1) == 0 || (v9 = &v7[16 * v8], explicit = atomic_load_explicit(v9, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v11 = *(v9 + 1);
        v1 = HIWORD(v11);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v9, memory_order_acquire))
        {
          break;
        }
      }

      caulk::concurrent::details::spinloop::spin(&v13);
      v2 = atomic_load(a1);
      if ((v2 & 2) == 0)
      {
        v3 = 0;
        v4 = 0;
        v5 = 0;
        return v5 | (v1 << 48) | v4 | v3;
      }
    }

    v5 = v11 & 0xFF0000000000;
    v4 = v11 & 0xFF00000000;
    v3 = v11;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
  }

  return v5 | (v1 << 48) | v4 | v3;
}

void AMCP::IO_Core::Thread_Control_State::sleep_until_time(AMCP::IO_Core::Thread_Control_State *this, uint64_t a2)
{
  v55 = *MEMORY[0x1E69E9840];
  if (a2 > mach_absolute_time() && caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) && (caulk::concurrent::atomic_value<AMCP::IO_Core::Thread_Control_State::State,2,6>::load(this) & 0x10000000000) == 0)
  {
    v3 = __udivti3();
    if (v3 >= 0x3B9ACA00)
    {
      v4 = v3 / 0x3B9ACA00;
      v3 %= 0x3B9ACA00uLL;
    }

    else
    {
      v4 = 0;
    }

    v34.tv_sec = v4;
    v34.tv_nsec = v3;
    v5 = pthread_mutex_lock((this + 240));
    v6 = v5;
    AMCP::Utility::Kernel_Error_Category::get(v5);
    if (v6 >= 2)
    {
      v19 = v6;
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = *v22;
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      else
      {
        v23 = *v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 51;
        v48 = 2080;
        v49 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to lock the mutex", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v37, v19, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v38, &v37);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v38);
      v52 = "BOOL AMCP::IO_Core::Thread_Control_State::lock()";
      v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v54 = 51;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }

    if (v6 == 1)
    {
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v7);
      }

      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v16;
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 155;
        v48 = 2080;
        v49 = "not (success)";
        _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v33);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v36, "", v18);
      std::logic_error::logic_error(&v32, &v36);
      v32.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v38, &v32);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = -1;
      v38.__vftable = &unk_1F5991430;
      v39 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v38);
      v50 = "BOOL AMCP::IO_Core::Thread_Control_State::sleep_until_time(uint64_t)";
      v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      LODWORD(v52) = 155;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }

    v8 = pthread_cond_timedwait_relative_np(this + 4, (this + 240), &v34);
    v9 = v8;
    AMCP::Utility::Kernel_Error_Category::get(v8);
    if (v9 && v9 != 60)
    {
      v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v28 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        v31 = *v30;
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      else
      {
        v31 = *v30;
      }

      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 161;
        v48 = 2080;
        v49 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v31, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failure waiting for the condition variable", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v37, v9, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v38, &v37);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v38);
      v52 = "BOOL AMCP::IO_Core::Thread_Control_State::sleep_until_time(uint64_t)";
      v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v54 = 161;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }

    v11 = pthread_mutex_unlock((this + 240));
    v12 = v11;
    AMCP::Utility::Kernel_Error_Category::get(v11);
    if (v12 >= 2)
    {
      v24 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v24 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v13);
      }

      v26 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v25 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = *v26;
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      else
      {
        v27 = *v26;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v45 = "Thread_Control_State.cpp";
        v46 = 1024;
        v47 = 64;
        v48 = 2080;
        v49 = "kernel_error.operator BOOL()";
        _os_log_error_impl(&dword_1DE1F9000, v27, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s failed to unlock the mutex", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v32);
      __cxa_allocate_exception(0x50uLL);
      MEMORY[0x1E12C10B0](&v37, v12, &AMCP::Utility::Kernel_Error_Category::get(void)::s_category);
      boost::enable_error_info<std::system_error>(&v38, &v37);
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::clone_impl(buf, &v38);
      v52 = "BOOL AMCP::IO_Core::Thread_Control_State::unlock()";
      v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Thread_Control_State.cpp";
      v54 = 64;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v35);
    }
  }
}

void sub_1DE4643F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *__p, uint64_t a23, uint64_t a24, std::runtime_error a25, uint64_t a26, uint64_t a27, char a28)
{
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::system_error>>::~clone_impl(v30 - 144);
  boost::exception_detail::error_info_injector<std::system_error>::~error_info_injector(&a28);
  std::runtime_error::~runtime_error(&a25);
  if (v29)
  {
    __cxa_free_exception(v28);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a10);
  _Unwind_Resume(a1);
}

void HALS_DSPHostAudioStream::modifiers(HALS_DSPHostAudioStream *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 17);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = *(this + 16);
    if (v6 && (v7 = *(v6 + 8)) != 0)
    {
      v8 = *(v6 + 16);
      *a2 = v7;
      a2[1] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void HALS_DSPHostAudioStream::downstream_format(AudioStreamBasicDescription *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *&this[2].mSampleRate;
  if (HIDWORD(this[1].mSampleRate) == 1768845428)
  {
    v4[0] = *&this[1].mBytesPerFrame;
    v4[1] = v3;
    v5 = *&this[2].mBytesPerPacket;
    HALS_DSPHostAudioStream::format_with_channel_modifier(a2, this, v4);
  }

  else
  {
    *a2 = *&this[1].mBytesPerFrame;
    *(a2 + 16) = v3;
    *(a2 + 32) = *&this[2].mBytesPerPacket;
  }

  *(a2 + 40) = 1;
}

void HALS_DSPHostAudioStream::format_with_channel_modifier(HALS_DSPHostAudioStream *this, AudioStreamBasicDescription *a2, uint64_t a3)
{
  HALS_DSPHostAudioStream::modifiers(a2, &v10);
  if (v10)
  {
    HALS_DSPHostAudioStream::modifiers(a2, &v8);
    AHAL_DSP::IHostModifiers::find_as<AHAL_DSP::IHostModifier_StreamClientFacingChannelCount>(&v12, v8);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v12)
  {
    (*(*v12 + 56))(v12);
  }

  v6 = *(a3 + 16);
  *this = *a3;
  *(this + 1) = v6;
  *(this + 4) = *(a3 + 32);
  v7 = v13;
  if (v13)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE464704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostAudioStream::upstream_format(AudioStreamBasicDescription *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *&this[2].mSampleRate;
  if (HIDWORD(this[1].mSampleRate) == 1869968496)
  {
    v4[0] = *&this[1].mBytesPerFrame;
    v4[1] = v3;
    v5 = *&this[2].mBytesPerPacket;
    HALS_DSPHostAudioStream::format_with_channel_modifier(a2, this, v4);
  }

  else
  {
    *a2 = *&this[1].mBytesPerFrame;
    *(a2 + 16) = v3;
    *(a2 + 32) = *&this[2].mBytesPerPacket;
  }

  *(a2 + 40) = 1;
}

uint64_t HALS_DSPHostAudioStream::owning_device@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = *(this + 32);
    *a2 = v2;
    a2[1] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return this;
}

void HALS_DSPHostAudioStream::~HALS_DSPHostAudioStream(HALS_DSPHostAudioStream *this)
{

  JUMPOUT(0x1E12C1730);
}

{
}

void HALS_DSPHostAudioStream::~HALS_DSPHostAudioStream(HALS_DSPHostAudioStream *this, uint64_t *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 40)) = a2[3];
  v4 = *(this + 17);
  if (v4)
  {
    v5 = std::__shared_weak_count::lock(v4);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 16);
      if (v7)
      {
        HALS_DSPHostModifiers_StreamProxy::release(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v8 = *(this + 17);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  v9 = *(this + 14);
  if (v9)
  {
    v10 = (*(*v9 + 16))(v9);
    if (v10)
    {
      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v18 = 0;
        v19 = 0;
        v20 = 47;
        do
        {
          v21 = &aLibraryCachesC_37[v18];
          if (v20 == 47)
          {
            v19 = &aLibraryCachesC_37[v18];
          }

          v20 = v21[1];
          if (!v21[1])
          {
            break;
          }
        }

        while (v18++ < 0xFFF);
        if (v19)
        {
          v23 = v19 + 1;
        }

        else
        {
          v23 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostAudioStream_IOBufferReference.cpp";
        }

        v24 = 136315394;
        v25 = v23;
        v26 = 1024;
        v27 = 22;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Buffer reference destroyed without unlocking first.", &v24, 0x12u);
      }
    }
  }

  v15 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    v16 = *(this + 15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  v17 = *(this + 4);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1DE464A88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALS_DSPHostModifiers_StreamProxy::release(AMCP::Log::AMCP_Scope_Registry *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 1))
  {
    v1 = this;
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = 0;
      v7 = 0;
      v8 = 47;
      do
      {
        v9 = &aLibraryCachesC_98[v6];
        if (v8 == 47)
        {
          v7 = &aLibraryCachesC_98[v6];
        }

        v8 = v9[1];
        if (!v9[1])
        {
          break;
        }
      }

      while (v6++ < 0xFFF);
      if (v7)
      {
        v11 = v7 + 1;
      }

      else
      {
        v11 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostModifiers_StreamProxy.h";
      }

      if (*(v1 + 4) == 1)
      {
        v12 = *v1;
      }

      else
      {
        v12 = 0;
      }

      v13 = 136315650;
      v14 = v11;
      v15 = 1024;
      v16 = 56;
      v17 = 1024;
      v18 = v12;
      _os_log_debug_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] Stream modifiers being reverted (Stream ID: %d)", &v13, 0x18u);
    }

    return (*(**(v1 + 1) + 40))(*(v1 + 1), 0);
  }

  return this;
}

void HALS_DSPHostAudioStream::acquire_modifiers(HALS_DSPHostAudioStream *this, HALS_Stream *a2, unsigned int a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *(this + 17);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_30;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (v7)
  {
    v8 = *(this + 16);
    if (v8)
    {
      HALS_DSPHostPerClientStreamEdits::get_modifiers_for_client(buf, *(a2 + 8), a3, 0);
      v10 = *buf;
      v11 = *&buf[8];
      if (*buf)
      {
        if (*&buf[8])
        {
          v12 = *(*&buf[8] + 8);
          if (v12 >= 3)
          {
            v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v13 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v9);
            }

            v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
              v16 = *v15;
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            else
            {
              v16 = *v15;
            }

            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315906;
              *&buf[4] = "HALS_Stream.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 589;
              v35 = 1024;
              v36 = a3;
              v37 = 1024;
              v38 = v12;
              _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] (Client ID: %d) Multiple external references to the HALS_Stream DSP modifier list is not recommended (%d).", buf, 0x1Eu);
            }
          }
        }

        v32 = v10;
        v33 = v11;
      }

      else
      {
        HALS_DSPHostPerClientStreamEdits::get_modifiers_for_client(&v32, *(a2 + 8), a3, 1);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v10 = v32;
      }

      if (v10 == *(v8 + 8))
      {
        goto LABEL_28;
      }

      HALS_DSPHostModifiers_StreamProxy::release(v8);
      *v8 = *(a2 + 4);
      *(v8 + 4) = 1;
      if (v10)
      {
        if (v17)
        {
          v18 = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          goto LABEL_26;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = 0;
LABEL_26:
      v19 = *(v8 + 16);
      *(v8 + 8) = v17;
      *(v8 + 16) = v18;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

LABEL_28:
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }
    }
  }

LABEL_30:
  HALS_DSPHostAudioStream::modifiers(this, &v32);
  if (!v32)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v20);
    }

    v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = 0;
      v26 = 0;
      v27 = 47;
      do
      {
        v28 = &aLibraryCachesC_97[v25];
        if (v27 == 47)
        {
          v26 = &aLibraryCachesC_97[v25];
        }

        v27 = v28[1];
        if (!v28[1])
        {
          break;
        }
      }

      while (v25++ < 0xFFF);
      if (v26)
      {
        v30 = v26 + 1;
      }

      else
      {
        v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostAudioStream.cpp";
      }

      if (a2)
      {
        v31 = *(a2 + 4);
      }

      else
      {
        v31 = 0;
      }

      *buf = 136315650;
      *&buf[4] = v30;
      *&buf[12] = 1024;
      *&buf[14] = 83;
      v35 = 1024;
      v36 = v31;
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] Unable to access modifiers (Stream ID: %d)", buf, 0x18u);
    }
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1DE464FA4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::get_private_transport_state(AMCP::IO_Core::Device_Timebase *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *(this + 4)) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "Device_Timebase.cpp";
      v23 = 1024;
      v24 = 432;
      v25 = 2080;
      v26 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "", v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "virtual Transport_State AMCP::IO_Core::Device_Timebase::get_private_transport_state() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v29 = 432;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v4 = (v2->__vftable[3].__on_zero_shared)(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  return v4;
}

void sub_1DE4652C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 128);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v26)
  {
    __cxa_free_exception(v25);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 129));
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

void AMCP::IO_Core::Device_Timebase::release_power_assertions(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2)) == 0 || (v3 = v2, (v2 = *(this + 4)) == 0))
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 452;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "virtual void AMCP::IO_Core::Device_Timebase::release_power_assertions()";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 452;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[9].__on_zero_shared)(v2);

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE46561C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IO_Core::Device_Timebase::take_power_assertions(AMCP::IO_Core::Device_Timebase *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2)) == 0 || (v3 = v2, (v2 = *(this + 4)) == 0))
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "Device_Timebase.cpp";
      v21 = 1024;
      v22 = 442;
      v23 = 2080;
      v24 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "virtual void AMCP::IO_Core::Device_Timebase::take_power_assertions()";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v27 = 442;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  (v2->__vftable[9].~__shared_weak_count_0)(v2);

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
}

void sub_1DE4658E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

double AMCP::IO_Core::Device_Timebase::get_max_io_buffer_frame_size(AMCP::IO_Core::Device_Timebase *this)
{
  v2 = *(this + 5);
  if (!v2)
  {
    return 4096.0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 4096.0;
  }

  v4 = v3;
  v5 = *(this + 4);
  if (v5)
  {
    v6 = (*(*v5 + 32))(v5);
  }

  else
  {
    v6 = 4096.0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void AMCP::IO_Core::Device_Timebase::reset_clock_anchor_time(os_unfair_lock_s *this)
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 16);
  v2 = *&this[10]._os_unfair_lock_opaque;
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *&this[8]._os_unfair_lock_opaque) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Device_Timebase.cpp";
      v29 = 1024;
      v30 = 322;
      v31 = 2080;
      v32 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::IO_Core::Device_Timebase::reset_clock_anchor_time()";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v35 = 322;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v4 = (v2->__vftable[8].~__shared_weak_count_0)(v2);
  if ((v4 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Device_Timebase.cpp";
      v29 = 1024;
      v30 = 323;
      v31 = 2080;
      v32 = "not (engine->has_time())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v11);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::IO_Core::Device_Timebase::reset_clock_anchor_time()";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v35 = 323;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  if (this[22]._os_unfair_lock_opaque)
  {
    v5 = mach_absolute_time();
    v6 = AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(this, v5);
    if ((this[26]._os_unfair_lock_opaque & 1) == 0)
    {
      LOBYTE(this[26]._os_unfair_lock_opaque) = 1;
    }

    *&this[24]._os_unfair_lock_opaque = v6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);

  os_unfair_lock_unlock(this + 16);
}

void sub_1DE465EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 145));
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  os_unfair_lock_unlock(v24 + 16);
  _Unwind_Resume(a1);
}

double AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(AMCP::IO_Core::Device_Timebase *this, uint64_t a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3), (v5 = v3) == 0) || (v6 = *(this + 4)) == 0)
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = *v21;
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    else
    {
      v22 = *v21;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "Device_Timebase.cpp";
      v40 = 1024;
      v41 = 73;
      v42 = 2080;
      v43 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v31, "", v23);
    std::logic_error::logic_error(&v24, &v31);
    v24.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v24);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v45[2] = "virtual double AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(uint64_t) const";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v47 = 73;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  v7 = (*(*v6 + 328))(v6);
  if ((v7 & 1) == 0)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      (*(*v6 + 16))(&v30, v6);
      v14 = applesauce::CF::StringRef::operator->(&v30);
      applesauce::CF::convert_to<std::string,0>(&__p, *v14);
      if (SHIBYTE(v33) >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__vftable;
      }

      *buf = 136315906;
      v39 = "Device_Timebase.cpp";
      v40 = 1024;
      v41 = 74;
      v42 = 2080;
      v43 = "not (engine->has_time())";
      v44 = 2080;
      *v45 = p_p;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s The engine (%s) must be running in order to translate time", buf, 0x26u);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p.__vftable);
      }

      applesauce::CF::StringRef::~StringRef(&v30);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    (*(*v6 + 16))(&v25, v6);
    v16 = applesauce::CF::StringRef::operator->(&v25);
    applesauce::CF::convert_to<std::string,0>(&v28, *v16);
    if (v29 >= 0)
    {
      v18 = &v28;
    }

    else
    {
      v18 = v28;
    }

    caulk::make_string(&v31, "The engine (%s) must be running in order to translate time", v17, v18);
    std::logic_error::logic_error(&v26, &v31);
    v26.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&__p, &v26);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = -1;
    __p.__vftable = &unk_1F5991430;
    v33 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
    *&v45[2] = "virtual double AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(uint64_t) const";
    v46 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v47 = 74;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
  }

  v8 = (*(*v6 + 360))(v6, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v8;
}

void AMCP::IO_Core::Device_Timebase::set_clock_anchor_time(os_unfair_lock_s *this)
{
  v36 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this + 16);
  v2 = *&this[10]._os_unfair_lock_opaque;
  if (!v2 || (v2 = std::__shared_weak_count::lock(v2), (v3 = v2) == 0) || (v2 = *&this[8]._os_unfair_lock_opaque) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Device_Timebase.cpp";
      v29 = 1024;
      v30 = 307;
      v31 = 2080;
      v32 = "not (engine.operator BOOL())";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v16);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::IO_Core::Device_Timebase::set_clock_anchor_time()";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v35 = 307;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v4 = (v2->__vftable[8].~__shared_weak_count_0)(v2);
  if ((v4 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "Device_Timebase.cpp";
      v29 = 1024;
      v30 = 308;
      v31 = 2080;
      v32 = "not (engine->has_time())";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "", v11);
    std::logic_error::logic_error(&v19, &v18);
    v19.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5991430;
    v21 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v20);
    v33 = "virtual void AMCP::IO_Core::Device_Timebase::set_clock_anchor_time()";
    v34 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Timebase.cpp";
    v35 = 308;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  if (this[22]._os_unfair_lock_opaque && (this[26]._os_unfair_lock_opaque & 1) == 0)
  {
    v5 = mach_absolute_time();
    v6 = AMCP::IO_Core::Device_Timebase::convert_host_to_sample_time(this, v5);
    if ((this[26]._os_unfair_lock_opaque & 1) == 0)
    {
      LOBYTE(this[26]._os_unfair_lock_opaque) = 1;
    }

    *&this[24]._os_unfair_lock_opaque = v6;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);

  os_unfair_lock_unlock(this + 16);
}

void sub_1DE466C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v27)
  {
    __cxa_free_exception(v26);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 145));
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  os_unfair_lock_unlock(v24 + 16);
  _Unwind_Resume(a1);
}

uint64_t AMCP::IO_Core::Device_Timebase::wait_for_time_to_start(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, unsigned int *a3)
{
  v3 = a3;
  v4 = a2;
  v115 = *MEMORY[0x1E69E9840];
  *__p = 0u;
  v97 = 0u;
  v98 = 1065353216;
  v5 = *(a2 + 16);
  if (v5)
  {
LABEL_2:
    (*(*v5[2] + 192))(buf);
    v6 = 0x9DDFEA08EB382D69 * ((8 * (*buf & 0x1FFFFFFF) + 8) ^ *&buf[4]);
    v7 = 0x9DDFEA08EB382D69 * (*&buf[4] ^ (v6 >> 47) ^ v6);
    v8 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
    if (!__p[1])
    {
      goto LABEL_18;
    }

    v9 = vcnt_s8(__p[1]);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = 0x9DDFEA08EB382D69 * (v7 ^ (v7 >> 47));
      if (v8 >= __p[1])
      {
        v10 = v8 % __p[1];
      }
    }

    else
    {
      v10 = v8 & (__p[1] - 1);
    }

    v11 = *(__p[0] + v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v8)
      {
        if (v12[2] == *buf)
        {
          a1 = *&buf[8];
          if (*&buf[8])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
          }

          v5 = *v5;
          if (!v5)
          {
            v14 = __p[1];
            v3 = a3;
            v4 = a2;
            v15 = vcnt_s8(__p[1]);
            v15.i16[0] = vaddlv_u8(v15);
            if (v15.u32[0] > 1uLL)
            {
              v16 = 0xD7C06285B9DE677ALL;
              if (__p[1] <= 0xD7C06285B9DE677ALL)
              {
                v16 = 0xD7C06285B9DE677ALL % __p[1];
              }
            }

            else
            {
              v16 = (__p[1] - 1) & 0xD7C06285B9DE677ALL;
            }

            v17 = *(__p[0] + v16);
            if (!v17)
            {
              break;
            }

            v18 = *v17;
            if (!*v17)
            {
              break;
            }

            v19 = __p[1] - 1;
            while (1)
            {
              v20 = *(v18 + 1);
              if (v20 == 0xD7C06285B9DE677ALL)
              {
                if (!*(v18 + 2))
                {
                  v21 = *(v18 + 1);
                  if (v15.u32[0] > 1uLL)
                  {
                    if (v21 >= __p[1])
                    {
                      v21 %= __p[1];
                    }
                  }

                  else
                  {
                    v21 &= v19;
                  }

                  v22 = *(__p[0] + v21);
                  do
                  {
                    v23 = v22;
                    v22 = *v22;
                  }

                  while (v22 != v18);
                  if (v23 == &v97)
                  {
                    goto LABEL_56;
                  }

                  v24 = *(v23 + 1);
                  if (v15.u32[0] > 1uLL)
                  {
                    if (v24 >= __p[1])
                    {
                      v24 %= __p[1];
                    }
                  }

                  else
                  {
                    v24 &= v19;
                  }

                  if (v24 != v21)
                  {
LABEL_56:
                    if (!*v18)
                    {
                      goto LABEL_57;
                    }

                    v25 = *(*v18 + 8);
                    if (v15.u32[0] > 1uLL)
                    {
                      if (v25 >= __p[1])
                      {
                        v25 %= __p[1];
                      }
                    }

                    else
                    {
                      v25 &= v19;
                    }

                    if (v25 != v21)
                    {
LABEL_57:
                      *(__p[0] + v21) = 0;
                    }
                  }

                  v26 = *v18;
                  if (*v18)
                  {
                    v27 = *(v26 + 8);
                    if (v15.u32[0] > 1uLL)
                    {
                      if (v27 >= v14)
                      {
                        v27 %= v14;
                      }
                    }

                    else
                    {
                      v27 &= v19;
                    }

                    if (v27 != v21)
                    {
                      *(__p[0] + v27) = v23;
                      v26 = *v18;
                    }
                  }

                  *v23 = v26;
                  *v18 = 0;
                  --*(&v97 + 1);
                  std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<AMCP::Graph::Timebase>,void *>>>::operator()[abi:ne200100](1, v18);
                  goto LABEL_66;
                }
              }

              else
              {
                if (v15.u32[0] > 1uLL)
                {
                  if (v20 >= __p[1])
                  {
                    v20 %= __p[1];
                  }
                }

                else
                {
                  v20 &= v19;
                }

                if (v20 != v16)
                {
                  goto LABEL_66;
                }
              }

              v18 = *v18;
              if (!v18)
              {
                goto LABEL_66;
              }
            }
          }

          goto LABEL_2;
        }
      }

      else
      {
        if (v9.u32[0] > 1uLL)
        {
          if (v13 >= __p[1])
          {
            v13 %= __p[1];
          }
        }

        else
        {
          v13 &= __p[1] - 1;
        }

        if (v13 != v10)
        {
          goto LABEL_18;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }
  }

LABEL_66:
  if (!*(&v97 + 1))
  {
    v82 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v82 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v84 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v83 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v83)
    {
      atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
      v85 = *v84;
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
    }

    else
    {
      v85 = *v84;
    }

    if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Engine.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 73;
      *&buf[18] = 2080;
      *&buf[20] = "not (!in_engine_list.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v85, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Cannot wait for no engines", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v100);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v104, "Cannot wait for no engines", v86);
    std::logic_error::logic_error(&v99, &v104);
    v99.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v105, &v99);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = -1;
    v105.__vftable = &unk_1F5991430;
    v106 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v105);
    v112 = "static std::vector<Engine_Ptr> AMCP::Core::Engine::wait_for_time_to_start(const std::unordered_set<Engine_Ptr> &, const std::atomic_uint32_t &)";
    v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
    v114 = 73;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v102);
  }

  v93 = 0;
  v94 = 0;
  v95 = 0;
  memset(&v104, 0, sizeof(v104));
  v28 = &v97;
  v29 = &v97;
  while (1)
  {
    v29 = *v29;
    if (!v29)
    {
      break;
    }

    if (!(*(**(v29 + 2) + 136))(*(v29 + 2)))
    {
      goto LABEL_169;
    }
  }

  for (i = v97; i; i = *i)
  {
    if (((*(**(i + 2) + 328))(*(i + 2)) & 1) == 0)
    {
      std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v104, i + 1);
    }
  }

  kdebug_trace();
  AMCP::Core::update_time_for_all(v102, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
  v32 = v102[0];
  v31 = v102[1];
  while (v32 != v31)
  {
    std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v93, v32++);
  }

  size = v104.__r_.__value_.__l.__size_;
  v33 = v104.__r_.__value_.__r.__words[0];
  if (v104.__r_.__value_.__r.__words[0] == v104.__r_.__value_.__l.__size_)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v35 = v102[0];
    if (v102[0] != v102[1])
    {
      v35 = v102[0];
      while (*v35 != *v33)
      {
        v35 += 2;
        if (v35 == v102[1])
        {
          goto LABEL_85;
        }
      }
    }

    if (v35 != v102[1])
    {
      break;
    }

LABEL_85:
    v33 += 2;
    if (v33 == v104.__r_.__value_.__l.__size_)
    {
      v36 = v104.__r_.__value_.__l.__size_;
      goto LABEL_103;
    }
  }

  if (v33 == v104.__r_.__value_.__l.__size_ || (v37 = v33 + 2, v33 + 2 == v104.__r_.__value_.__l.__size_))
  {
LABEL_102:
    v36 = v33;
  }

  else
  {
    v36 = v33;
    do
    {
      v38 = v37;
      v39 = v102[0];
      if (v102[0] != v102[1])
      {
        v40 = *v38;
        while (*v39 != v40)
        {
          v39 += 2;
          if (v39 == v102[1])
          {
            goto LABEL_97;
          }
        }
      }

      if (v39 == v102[1])
      {
        v40 = *v38;
LABEL_97:
        v41 = v33[3];
        *v38 = 0;
        v38[1] = 0;
        v42 = v36[1];
        *v36 = v40;
        v36[1] = v41;
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }

        v36 += 2;
      }

      v37 = v38 + 2;
      v33 = v38;
    }

    while (v38 + 2 != size);
    size = v104.__r_.__value_.__l.__size_;
  }

LABEL_103:
  std::vector<std::shared_ptr<AMCP::Core::Engine>>::erase(&v104, v36, size);
  v43 = 0;
LABEL_104:
  v44 = &v97;
  while (1)
  {
    v44 = *v44;
    if (!v44)
    {
      break;
    }

    if (!(*(**(v44 + 2) + 136))(*(v44 + 2)))
    {
      goto LABEL_150;
    }
  }

  v45 = &v97;
  while (1)
  {
    v45 = *v45;
    if (!v45)
    {
      break;
    }

    if (((*(**(v45 + 2) + 328))(*(v45 + 2)) & 1) == 0)
    {
      if (v104.__r_.__value_.__r.__words[0] == v104.__r_.__value_.__l.__size_)
      {
        break;
      }

      if (v43 > 0xF9)
      {
        break;
      }

      if (atomic_load(v3))
      {
        break;
      }

      v47 = mach_absolute_time();
      mach_wait_until(v47 + 480000);
      AMCP::Core::update_time_for_all(buf, v104.__r_.__value_.__l.__data_, v104.__r_.__value_.__l.__size_);
      v48 = v102[0];
      if (v102[0])
      {
        v49 = v102[1];
        v50 = v102[0];
        if (v102[1] != v102[0])
        {
          do
          {
            v51 = *(v49 - 1);
            if (v51)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v51);
            }

            v49 -= 16;
          }

          while (v49 != v48);
          v50 = v102[0];
        }

        v102[1] = v48;
        operator delete(v50);
      }

      *v102 = *buf;
      v103 = *&buf[16];
      memset(buf, 0, 24);
      v105.__vftable = buf;
      std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](&v105);
      v52 = v102[0];
      v53 = v102[1];
      while (v52 != v53)
      {
        std::vector<std::shared_ptr<AMCP::Meta::Stream>>::push_back[abi:ne200100](&v93, v52++);
      }

      v55 = v104.__r_.__value_.__l.__size_;
      v54 = v104.__r_.__value_.__r.__words[0];
      if (v104.__r_.__value_.__r.__words[0] == v104.__r_.__value_.__l.__size_)
      {
        goto LABEL_148;
      }

      while (1)
      {
        v56 = v102[0];
        if (v102[0] != v102[1])
        {
          v56 = v102[0];
          while (*v56 != *v54)
          {
            v56 += 2;
            if (v56 == v102[1])
            {
              goto LABEL_131;
            }
          }
        }

        if (v56 != v102[1])
        {
          break;
        }

LABEL_131:
        v54 += 2;
        if (v54 == v104.__r_.__value_.__l.__size_)
        {
          v57 = v104.__r_.__value_.__l.__size_;
          goto LABEL_149;
        }
      }

      if (v54 == v104.__r_.__value_.__l.__size_ || (v58 = v54 + 2, v54 + 2 == v104.__r_.__value_.__l.__size_))
      {
LABEL_148:
        v57 = v54;
      }

      else
      {
        v57 = v54;
        do
        {
          v59 = v58;
          v60 = v102[0];
          if (v102[0] != v102[1])
          {
            v61 = *v59;
            while (*v60 != v61)
            {
              v60 += 2;
              if (v60 == v102[1])
              {
                goto LABEL_143;
              }
            }
          }

          if (v60 == v102[1])
          {
            v61 = *v59;
LABEL_143:
            v62 = v54[3];
            *v59 = 0;
            v59[1] = 0;
            v63 = v57[1];
            *v57 = v61;
            v57[1] = v62;
            if (v63)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v63);
            }

            v57 += 2;
          }

          v58 = v59 + 2;
          v54 = v59;
        }

        while (v59 + 2 != v55);
        v55 = v104.__r_.__value_.__l.__size_;
      }

LABEL_149:
      ++v43;
      std::vector<std::shared_ptr<AMCP::Core::Engine>>::erase(&v104, v57, v55);
      goto LABEL_104;
    }
  }

LABEL_150:
  v64 = kdebug_trace();
  v65 = atomic_load(v3);
  v66 = &v97;
  if (v65)
  {
    v67 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v67 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v64);
    }

    v69 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v68 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
      v70 = *v69;
      std::__shared_weak_count::__release_shared[abi:ne200100](v68);
    }

    else
    {
      v70 = *v69;
    }

    v66 = &v97;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "Engine.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 120;
      _os_log_debug_impl(&dword_1DE1F9000, v70, OS_LOG_TYPE_DEBUG, "%32s:%-5d Engine start interrupted", buf, 0x12u);
      v66 = &v97;
    }
  }

  while (1)
  {
    v66 = *v66;
    if (!v66)
    {
      break;
    }

    v71 = (*(**(v66 + 2) + 136))(*(v66 + 2));
    if (!v71)
    {
      v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v72 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v71);
      }

      v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v73 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v73)
      {
        atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
        v75 = *v74;
        std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      }

      else
      {
        v75 = *v74;
      }

      if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Engine.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 123;
        *&buf[18] = 2080;
        *&buf[20] = "(are_all_running(in_engine_list)) == false";
        _os_log_error_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Engine start failed", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v101);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v100, "Engine start failed");
      std::runtime_error::runtime_error(&v105, &v100);
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = -1;
      v105.__vftable = &unk_1F5992170;
      v106 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v105);
      v112 = "static std::vector<Engine_Ptr> AMCP::Core::Engine::wait_for_time_to_start(const std::unordered_set<Engine_Ptr> &, const std::atomic_uint32_t &)";
      v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
      v114 = 123;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
    }
  }

  while (1)
  {
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v76 = (*(**(v28 + 2) + 328))(*(v28 + 2));
    if ((v76 & 1) == 0)
    {
      if (!atomic_load(v3))
      {
        v87 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v87 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v76);
        }

        v89 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v88 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v88)
        {
          atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          v90 = *v89;
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        else
        {
          v90 = *v89;
        }

        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "Engine.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 127;
          _os_log_error_impl(&dword_1DE1F9000, v90, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Engine start timed out", buf, 0x12u);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v101);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v100, "Engine start timed out");
        std::runtime_error::runtime_error(&v105, &v100);
        v107 = 0;
        v108 = 0;
        v109 = 0;
        v110 = -1;
        v105.__vftable = &unk_1F5992170;
        v106 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v105);
        v112 = "static std::vector<Engine_Ptr> AMCP::Core::Engine::wait_for_time_to_start(const std::unordered_set<Engine_Ptr> &, const std::atomic_uint32_t &)";
        v113 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Engine.cpp";
        v114 = 127;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v99);
      }

      break;
    }
  }

  *buf = v102;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_169:
  *buf = &v104;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (atomic_load(v3))
  {
    j = 2;
  }

  else
  {
    for (j = *(v4 + 16); j; j = *j)
    {
      (*(**(j + 16) + 192))(buf);
      v80 = v93;
      if (v93 != v94)
      {
        while (*v80 != *buf)
        {
          v80 += 2;
          if (v80 == v94)
          {
            goto LABEL_178;
          }
        }
      }

      if (v80 != v94)
      {
        (*(**(j + 16) + 208))(*(j + 16));
      }

LABEL_178:
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }
  }

  *buf = &v93;
  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(__p);
  return j;
}