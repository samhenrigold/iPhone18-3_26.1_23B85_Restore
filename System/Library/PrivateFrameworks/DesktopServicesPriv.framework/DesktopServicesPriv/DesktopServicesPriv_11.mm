void sub_1E5737308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t NodeGetStatus(TNodeOperationTask *this, OpaqueOperationRef *a2)
{
  result = 4294959224;
  if (this && a2)
  {
    *a2 = 0;
    TNodeOperationTask::TaskFromOperationRef(&v8, this);
    if (v9)
    {
      v5 = std::__shared_weak_count::lock(v9);
      if (v5)
      {
        v6 = v8;
      }

      else
      {
        v6 = 0;
      }

      if (v9)
      {
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v6)
      {
        os_unfair_lock_lock(v6 + 2);
        v7 = *(v6 + 2);
        v8 = v7;
        if (v7)
        {
          TOperation::AddPtrReference(v7);
        }

        os_unfair_lock_unlock(v6 + 2);
        if (v8 && *(v8 + 16) && TOperation::CancelRequested(v8))
        {
          *a2 = -128;
        }

        TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&v8);
        if (!v5)
        {
          return 0;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v5 = 0;
    }

    *a2 = -8080;
    if (!v5)
    {
      return 0;
    }

LABEL_20:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    return 0;
  }

  return result;
}

void sub_1E573742C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, TOperation *a9)
{
  TRef<TOperation *,TRetainReleasePolicy<TOperation *>>::~TRef(&a9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void ISignpostInterval::~ISignpostInterval(id *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table((this + 9));

  std::mutex::~mutex(this);
}

void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(a1);
  v4 = *(a1 + 112);
  v5[0] = &unk_1F5F3FBC0;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = v5;
  ISignpostInterval::EventPriv(a1, v4, v5);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v5);
  std::mutex::unlock(a1);
}

void sub_1E5737540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  std::mutex::unlock(v3);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F3FBC0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AutoSignpostInterval_General_NodeContextCloseAsync::Event<char [47]>(char [47] const&)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}::operator()(uint64_t *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *a1;
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v10[0] = a1[1];
    v10[1] = strlen(v10[0]);
    FormatDetails(v10, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v12 = p_p;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_EVENT, v7, "NodeContextCloseAsync", "%{public}s", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::__unordered_map_hasher<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::hash<OpaqueEventNotifier *>,std::equal_to<OpaqueEventNotifier *>,true>,std::__unordered_map_equal<OpaqueEventNotifier *,std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>,std::equal_to<OpaqueEventNotifier *>,std::hash<OpaqueEventNotifier *>,true>,std::allocator<std::__hash_value_type<OpaqueEventNotifier *,std::shared_ptr<TClientChangeNotifier>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void TOperationSizer::TOperationSizerParams::~TOperationSizerParams(id *this)
{
  v2 = this[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[1];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<TString,NSObject  {objcproto9OS_os_log}* {__strong}>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a2 + 16));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1,std::allocator<_NodeContextOpenExtended::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FD20;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FDB0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<_NodeContextOpenExtended::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextOpen::$_1,std::allocator<NodeContextOpen::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FEA0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F3FF30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextOpen::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextClose::$_1,std::allocator<NodeContextClose::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v5 = *a3;
  v6[0] = &unk_1F5F40020;
  v6[1] = &v5;
  v6[3] = v6;
  ISignpostInterval::EndPriv(v3, v5, v6);
  return std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v6);
}

void sub_1E5737ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<NodeContextClose::$_1,std::allocator<NodeContextClose::$_1>,void ()(StSignpostMacroHelper *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40020;
  a2[1] = v2;
  return result;
}

void std::__function::__func<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Close", "End", v6, 2u);
  }
}

uint64_t std::__function::__func<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_1::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F400B0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  v5 = **(a1 + 8);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v6 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Close", "Begin", v6, 2u);
  }
}

uint64_t std::__function::__func<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<NodeContextClose::$_0::operator() const(StSignpostMacroHelper *,unsigned long long)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__120__shared_ptr_emplaceI50AutoSignpostInterval_General_NodeContextCloseAsyncNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40130;
  AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync((a1 + 3), 0);
  return a1;
}

void std::__shared_ptr_emplace<AutoSignpostInterval_General_NodeContextCloseAsync>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40130;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

void AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(AutoSignpostInterval_General_NodeContextCloseAsync *this, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = LogObj(5);
  TString::TString(&v6, "NodeContextCloseAsync");
  ISignpostInterval::ISignpostInterval(this, v4);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v6.fString.fRef);

  *(this + 14) = ISignpostInterval::MakeSignpostID(this, a2);
  std::mutex::lock(this);
  v5 = *(this + 14);
  v6.fString.fRef = &unk_1F5F40180;
  v7 = this;
  v8 = &v6;
  ISignpostInterval::BeginPriv(this, v5, &v6);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](&v6);
  std::mutex::unlock(this);
}

void sub_1E5738460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](va);
  std::mutex::unlock(v3);
  ISignpostInterval::~ISignpostInterval(v3);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40180;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v7, "NodeContextCloseAsync", "Begin", v8, 2u);
  }
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::AutoSignpostInterval_General_NodeContextCloseAsync(void *)::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync(AutoSignpostInterval_General_NodeContextCloseAsync *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  std::mutex::lock(this);
  v3[0] = *(this + 14);
  if (std::__hash_table<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::shared_ptr<TBlockingEventQueue>>>>::find<unsigned long long>(this + 9, v3))
  {
    v2 = *(this + 14);
    v3[0] = &unk_1F5F40200;
    v3[1] = this;
    v3[3] = v3;
    ISignpostInterval::EndPriv(this, v2, v3);
    std::__function::__value_func<void ()(NSObject  {objcproto9OS_os_log}*)>::~__value_func[abi:ne200100](v3);
  }

  std::mutex::unlock(this);
  std::__hash_table<std::__hash_value_type<unsigned long long,TRecordProgress>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,TRecordProgress>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,TRecordProgress>>>::~__hash_table(this + 72);

  std::mutex::~mutex(this);
}

void sub_1E5738704(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5F40200;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = v3;
  v6 = v5;
  v7 = *(v4 + 112);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1E5674000, v6, OS_SIGNPOST_INTERVAL_END, v7, "NodeContextCloseAsync", "End", v8, 2u);
  }
}

uint64_t std::__function::__func<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1},std::allocator<AutoSignpostInterval_General_NodeContextCloseAsync::~AutoSignpostInterval_General_NodeContextCloseAsync()::{lambda(NSObject  {objcproto9OS_os_log}*)#1}>,void ()(NSObject  {objcproto9OS_os_log}*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<TNodeTask>::__shared_ptr_emplace[abi:ne200100]<TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,std::allocator<TNodeTask>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F5F40280;
  TNodeTask::TNodeTask();
  return a1;
}

void std::__shared_ptr_emplace<TNodeTask>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F40280;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E692CD30);
}

uint64_t TPropertyValue::TPropertyValue<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(uint64_t a1, const void **a2)
{
  *(a1 + 16) = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<16ul,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>> const&>(a1, a1, a2);
  return a1;
}

uint64_t TPropertyValue::TPropertyValue<TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>>(uint64_t a1, const void **a2)
{
  *(a1 + 16) = 0;
  std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>>::__assign_alt[abi:ne200100]<14ul,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>> const&>(a1, a1, a2);
  return a1;
}

id CopyDeep(NSArray *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 0);
    v4 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CopyDeepCommon(NSArray *a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v3;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = CopyDeepHelper(*(*(&v11 + 1) + 8 * i), a2);
        [v4 addObject:{v9, v11}];
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

id MutableCopyDeep(NSArray *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = CopyDeepCommon(v1, 1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ISignpostInterval::EventPriv(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 64);
  v6 = os_signpost_enabled(v5);
  if (a2 && v6)
  {

    std::function<void ()(NSObject  {objcproto9OS_os_log}*)>::operator()(a3, v5);
  }
}

__n128 __copy_helper_block_ea8_32c37_ZTSKZN12TGlobalNodes8BootNodeEvE3__0(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

uint64_t *TGlobalNodes::DataSeparatedICloudLibrariesContainerNode@<X0>(uint64_t *__return_ptr a1@<X8>)
{
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v2 = TGlobalNodes::gGlobalNodes;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN12TGlobalNodes41DataSeparatedICloudLibrariesContainerNodeEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(void)::onceToken != -1)
  {
    dispatch_once(&TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(void)::onceToken, block);
  }

  result = *(v2 + 88);
  *a1 = result;
  return result;
}

void ___ZN12TGlobalNodes41DataSeparatedICloudLibrariesContainerNodeEv_block_invoke(uint64_t a1)
{
  TFSVolumeInfo::GetVolumeInfoFor(25, &v9);
  TNodePtr::TNodePtr(&v7, 0);
  v2 = *(v9 + 64);
  v5 = *(v9 + 56);
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = 0;
  v4 = 0;
  TNode::CreateNode(&v7.fFINode, &v5, &v3, &obj);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  objc_storeStrong((*(a1 + 32) + 88), obj);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1E5738EEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void TGlobalNodes::NetworkNearbyNode(uint64_t *__return_ptr a1@<X8>)
{
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v2 = (TGlobalNodes::gGlobalNodes + 56);
  if (!TNodeFromFINode(*(TGlobalNodes::gGlobalNodes + 56)))
  {
    TFSVolumeInfo::GetVolumeInfoFor(32, &v10);
    TNodePtr::TNodePtr(&v8, 0);
    v3 = *(v10 + 64);
    v6 = *(v10 + 56);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = 0;
    v5 = 0;
    TNode::CreateNode(&v8, &v6, &v4, &obj);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    objc_storeStrong(v2, obj);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  *a1 = *v2;
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E5739030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

void TGlobalNodes::AirDropNode(uint64_t *__return_ptr a1@<X8>)
{
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v2 = (TGlobalNodes::gGlobalNodes + 64);
  if (!TNodeFromFINode(*(TGlobalNodes::gGlobalNodes + 64)))
  {
    TFSVolumeInfo::GetVolumeInfoFor(34, &v10);
    TNodePtr::TNodePtr(&v8, 0);
    v3 = *(v10 + 64);
    v6 = *(v10 + 56);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = 0;
    v5 = 0;
    TNode::CreateNode(&v8, &v6, &v4, &obj);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    objc_storeStrong(v2, obj);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  *a1 = *v2;
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E573918C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

void TGlobalNodes::NetworkSidebarNode(uint64_t *__return_ptr a1@<X8>)
{
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v2 = (TGlobalNodes::gGlobalNodes + 72);
  if (!TNodeFromFINode(*(TGlobalNodes::gGlobalNodes + 72)))
  {
    TFSVolumeInfo::GetVolumeInfoFor(33, &v10);
    TNodePtr::TNodePtr(&v8, 0);
    v3 = *(v10 + 64);
    v6 = *(v10 + 56);
    v7 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = 0;
    v5 = 0;
    TNode::CreateNode(&v8, &v6, &v4, &obj);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    objc_storeStrong(v2, obj);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  *a1 = *v2;
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E57392E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, void *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  v15 = *(v13 - 24);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

BOOL TGlobalNodes::IsNetworkNode(TGlobalNodes *this, FINode **a2, const TNodePtr *a3)
{
  v4 = this;
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::GlobalNodes(void)::gGlobalNodesOnce != -1)
  {
    TGlobalNodes::RootNode();
  }

  v5 = TGlobalNodes::gGlobalNodes;
  if (TGlobalNodes::gGlobalNodes && TNodeFromFINode(*a2))
  {
    switch(v4)
    {
      case 1836348013:
        v6 = TNodeFromFINode(v5[8]);
        v7 = TNodeFromFINode(*a2);
        goto LABEL_12;
      case 1853125474:
        v6 = TNodeFromFINode(v5[9]);
        v7 = TNodeFromFINode(*a2);
        goto LABEL_12;
      case 1853126507:
        v6 = TNodeFromFINode(v5[7]);
        v7 = TNodeFromFINode(*a2);
LABEL_12:
        v8 = v6 == v7;
        goto LABEL_13;
    }
  }

  v8 = 0;
LABEL_13:
  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  return v8;
}

void TGlobalNodes::FinalizeGlobalNode(FINode **this, const TNodePtr *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = TNodeFromFINode(*this);
  TNode::UnRegisterForInternalNotifications(v4, this, 3);
  v5 = TNodeFromFINode(*this);
  TNode::RemoveAllChildren(v5, 0, 0);
  v6 = TNodeFromFINode(*this);
  TNode::RemoveSelf(v6, 0);

  objc_autoreleasePoolPop(v3);
}

void TGlobalNodes::FinalizeNodes(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  std::mutex::lock(&GlobalNodesMutex(void)::globalNodesMutex);
  if (TGlobalNodes::gGlobalNodes)
  {
    v2 = v1;
    v20 = v2;
    TGlobalNodes::FinalizeNodes(NSObject  {objcproto17OS_dispatch_group}*)::$_3::operator()(&v20, TGlobalNodes::gGlobalNodes, 3, 0, 1);
    v25.fFINode = *(TGlobalNodes::gGlobalNodes + 88);
    v3 = 0;
    v26 = *(TGlobalNodes::gGlobalNodes + 80);
    do
    {
      if (TNodeFromFINode((&v25.fFINode)[v3]))
      {
        v4 = TNodeFromFINode((&v25.fFINode)[v3]);
        TNode::UnRegisterForUbiquityAttributes(v4);
        atomic_store(0, (TNodeFromFINode((&v25.fFINode)[v3]) + 88));
        v5 = TNodeFromFINode((&v25.fFINode)[v3]);
        TNode::GetVolumeInfo(&v17, v5);
        TFSVolumeInfo::GetVolumeSyncThread(&v21, v17);
        v6 = TString::operator NSString *(&v21->super.isa);
        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        TGlobalNodes::FinalizeNodes(NSObject  {objcproto17OS_dispatch_group}*)::$_3::operator()(&v20, &(&v25.fFINode)[v3], 0, v6, 0);
      }

      ++v3;
    }

    while (v3 != 2);
    for (i = 1; i != -1; --i)
    {
    }

    v25.fFINode = (TGlobalNodes::gGlobalNodes + 56);
    v21 = MEMORY[0x1E69E9820];
    v22 = 3321888768;
    v23 = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__0cvU13block_pointerFvvEEv_block_invoke;
    v24 = &__block_descriptor_33_ea8_32c83_ZTSKZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectE3__0_e5_v8__0l;
    v8 = MEMORY[0x1E692D6D0](&v21);
    v26 = MEMORY[0x1E692D6D0](v8);
    v27 = TGlobalNodes::gGlobalNodes + 64;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3321888768;
    v23 = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__1cvU13block_pointerFvvEEv_block_invoke;
    v24 = &__block_descriptor_33_ea8_32c83_ZTSKZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectE3__1_e5_v8__0l;
    v9 = MEMORY[0x1E692D6D0](&v21);
    v28 = MEMORY[0x1E692D6D0](v9);
    v29 = TGlobalNodes::gGlobalNodes + 72;
    v21 = MEMORY[0x1E69E9820];
    v22 = 3321888768;
    v23 = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__2cvU13block_pointerFvvEEv_block_invoke;
    v24 = &__block_descriptor_33_ea8_32c83_ZTSKZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectE3__2_e5_v8__0l;
    v10 = MEMORY[0x1E692D6D0](&v21);
    v30 = MEMORY[0x1E692D6D0](v10);
    v18 = 0;
    v19 = 0;
    v17 = 0;
    std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*,std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*>(&v17, &v25, &v31, 3uLL);
    for (j = 5; j != -1; j -= 2)
    {
    }

    v13 = v17;
    v14 = v18;
    while (v13 != v14)
    {
      v15 = *v13;
      v12 = TNodeFromFINode(**v13);
      if (v12)
      {
        (*(*(v13 + 1) + 16))();
        TNodePtr::TNodePtr(&v21, v15);
        TNodePtr::TNodePtr(&v25, 0);
        TNodePtr::operator=(v15, &v25.fFINode);

        TGlobalNodes::FinalizeGlobalNode(&v21, v16);
      }

      v13 = (v13 + 16);
    }

    TFSVolumeInfo::GarbageCollect(v12);
    v25.fFINode = &v17;
    std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
}

void sub_1E5739844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20)
{
  a20 = &a11;
  std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&a20);

  std::mutex::unlock(&GlobalNodesMutex(void)::globalNodesMutex);
  _Unwind_Resume(a1);
}

void TGlobalNodes::FinalizeNodes(NSObject  {objcproto17OS_dispatch_group}*)::$_3::operator()(NSObject **a1, id *a2, int a3, void *a4, char a5)
{
  v9 = a4;
  if (TNodeFromFINode(*a2))
  {
    if (!v9)
    {
      v9 = dispatch_get_global_queue(0, 0);
    }

    v10 = *a1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_b_block_invoke;
    v12[3] = &__block_descriptor_48_ea8_32c168_ZTSKZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bEUlvE__e5_v8__0l;
    v13 = *a2;
    v14 = a3;
    v15 = a5;
    v11 = v13;
    dispatch_group_async(v10, v9, v12);
  }
}

void ___ZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_b_block_invoke(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEv_block_invoke;
  v6[3] = &__block_descriptor_48_ea8_32c181_ZTSKZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEvEUlvE__e5_v8__0l;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = v2;
  v7 = v5;
  v8 = v3;
  v9 = v4;
  ExceptionSafeBlock(v6);
}

id __copy_helper_block_ea8_32c168_ZTSKZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  v5 = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = v5;
  return result;
}

void ___ZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  TNode::StPopulating::StPopulating(v10, (a1 + 32), 0);
  v2 = TNodeFromFINode(*(a1 + 32));
  v3 = TNode::ChildRegistrationCount(v2);
  v4 = *(TNodeFromFINode(*(a1 + 32)) + 56);
  if (v4)
  {
    v5 = (v4 + 64);
  }

  else
  {
    v5 = &TNode::GetChildren(void)const::sEmptyList;
  }

  if (&v11 != v5)
  {
    std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&v11, *v5, v5[1], v5[1] - *v5);
  }

  v6 = TNodeFromFINode(*(a1 + 32));
  TChildrenList::Clear(*(v6 + 56));
  TNode::StPopulating::~StPopulating(v10);
  if (*(a1 + 44) == 1)
  {
    v7 = v11;
    v8 = v12;
    while (v7 != v8)
    {
      v9 = TNodeFromFINode(*v7);
      TNode::RemoveAllChildren(v9, 3, 0);
      ++v7;
    }
  }

  else
  {
    TNode::RemoveChildrenDeep(&v11, *(a1 + 40), v3 == 0, 0);
  }

  v10[0] = &v11;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](v10);
}

void sub_1E5739C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c181_ZTSKZZZN12TGlobalNodes13FinalizeNodesEPU28objcproto17OS_dispatch_group8NSObjectENK3__3clERK8TNodePtr24RemoveAllChildrenOptionsPU28objcproto17OS_dispatch_queueS0_bENKUlvE_clEvEUlvE_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  v5 = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = v5;
  return result;
}

uint64_t *std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__init_with_size[abi:ne200100]<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*,std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)> const*>(uint64_t *result, void *a2, void *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::pair<TNodePtr,TNodePtr>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<std::reference_wrapper<TNodePtr>,void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 2;

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *NoFollowPrefix(void)
{
  {
    TString::TString(&NoFollowPrefix(void)::sNoFollowPrefix, @"/.nofollow/");
  }

  return &NoFollowPrefix(void)::sNoFollowPrefix;
}

uint64_t *NoFollowPrefixWithoutSlash(void)
{
  {
    TString::TString(&NoFollowPrefixWithoutSlash(void)::sNoFollowPrefixWithoutSlash, @"/.nofollow");
  }

  return &NoFollowPrefixWithoutSlash(void)::sNoFollowPrefixWithoutSlash;
}

void MakeNoFollowPath(TString *a1@<X0>, TString *a2@<X8>)
{
  v13 = *MEMORY[0x1E69E9840];
  TString::TString(&v11, "/");
  v4 = TString::BeginsWith(a1, &v11);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11);
  if (v4)
  {
    NoFollowPrefix();
    if (TString::BeginsWith(a1, &NoFollowPrefix(void)::sNoFollowPrefix))
    {
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(a2, a1->fString.fRef);
    }

    else
    {
      NoFollowPrefixWithoutSlash();
      v9 = NoFollowPrefixWithoutSlash(void)::sNoFollowPrefixWithoutSlash;
      a2->fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v9);
      CFRelease(&stru_1F5F42870);
      a2->fString.fRef = MutableCopy;
      TString::Append(a2, a1);
    }
  }

  else
  {
    v5 = LogObj(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = SanitizedPath(a1);
      v11 = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1E5674000, v5, OS_LOG_TYPE_ERROR, "Path does not begin with a '/' : %{public}@", &v11, 0xCu);
    }

    NoFollowPrefix();
    v7 = NoFollowPrefix(void)::sNoFollowPrefix;
    a2->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    v8 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v7);
    CFRelease(&stru_1F5F42870);
    a2->fString.fRef = v8;
    TString::Append(a2, a1);
  }
}

uint64_t *AppNapNodeSet(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1ECFF44A0, memory_order_acquire) & 1) == 0)
  {
    AppNapNodeSet();
  }

  return &qword_1ECFF4508;
}

__int128 *TNode::FirmlinkParents(TNode *this)
{
  if ((atomic_load_explicit(byte_1ECFF44A8, memory_order_acquire) & 1) == 0)
  {
    TNode::FirmlinkParents();
  }

  return &xmmword_1ECFF4538;
}

void TNode::AddToAppNapCache(TNode *this, uint64_t a2)
{
  AppNapNodeSet(this, a2);
  TNodePtr::TNodePtr(&v3, this);
  std::__tree<TNodePtr>::__emplace_unique_key_args<TNodePtr,TNodePtr>(&qword_1ECFF4508, &v3.fFINode, &v3);
}

uint64_t TNode::IsVolume(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 8) & 1;
}

uint64_t TChildCreator::TChildCreator(uint64_t a1, TString *a2, const TUniqueNamer *a3, uint64_t a4, uint64_t a5, int a6, uint64_t *a7)
{
  v17.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable(&v17, a2);
  SlashesToColons(a1, &v17);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
  if (a3)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = a4;
  v15 = *a7;
  v14 = a7[1];
  *(a1 + 24) = a5;
  *(a1 + 32) = v15;
  *(a1 + 40) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = a6;
  return a1;
}

void sub_1E573A410(_Unwind_Exception *a1)
{
  MEMORY[0x1E692CD30](v2, 0x10E0C40C528182ELL);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v1);
  _Unwind_Resume(a1);
}

id TNode::CopyInlineProgress(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  v9.fFINode = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17[0] = 0;
  *(v17 + 7) = 0;
  v18 = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v19 = 0u;
  v20 = 0u;
  TNodePtr::TNodePtr(&v8, this);
  Progress = TProgressMap::GetProgress(&v8, &v9, v4);

  if (Progress)
  {
    ProgressDictionary = TProgressInfo::CreateProgressDictionary(&v9);
  }

  else
  {
    ProgressDictionary = 0;
  }

  if (*(&v19 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return ProgressDictionary;
}

void sub_1E573A564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TProgressInfo::~TProgressInfo(va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t TempProperties(void)
{
  {
    operator new();
  }

  return TempProperties(void)::sTempProperties;
}

void TNode::AddTemporaryProperties(TNode *this, TNodePtr a2)
{
  TempPropertiesLock(this, a2.fFINode);
  os_unfair_lock_lock(&dword_1ECFF4494);
  v9 = a2.fFINode->super.isa;
  v4.fFINode = &v9;
  TTempProperties::TTempProperties(&v10, v4);

  v5 = TempProperties();
  v8 = this;
  v14 = &v8;
  v6 = std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__emplace_unique_key_args<TNode *,std::piecewise_construct_t const&,std::tuple<TNode *&&>,std::tuple<>>(v5, &v8);
  v7 = v6;
  *(v6 + 3) = v10;
  v6[5] = v11;
  if (v6 + 3 != &v10)
  {
    TString::SetStringRefAsImmutable(v6 + 6, v12);
  }

  objc_storeStrong(v7 + 7, obj);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12);
  os_unfair_lock_unlock(&dword_1ECFF4494);
}

void sub_1E573A714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, id a16)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a15);
  os_unfair_lock_unlock(&dword_1ECFF4494);
  _Unwind_Resume(a1);
}

void TempPropertiesLock(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(byte_1ECFF44F8, memory_order_acquire) & 1) == 0)
  {
    TempPropertiesLock();
  }
}

void TNode::RemoveTemporaryProperties(TNode *this, uint64_t a2)
{
  TempPropertiesLock(this, a2);
  os_unfair_lock_lock(&dword_1ECFF4494);
  v3 = TempProperties();
  v4 = this;
  std::__hash_table<std::__hash_value_type<TNode *,TTempProperties>,std::__unordered_map_hasher<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::hash<TNode *>,std::equal_to<TNode *>,true>,std::__unordered_map_equal<TNode *,std::__hash_value_type<TNode *,TTempProperties>,std::equal_to<TNode *>,std::hash<TNode *>,true>,std::allocator<std::__hash_value_type<TNode *,TTempProperties>>>::__erase_unique<TNode *>(v3, &v4);
  os_unfair_lock_unlock(&dword_1ECFF4494);
}

uint64_t TNode::IsVisible(TNode *this)
{
  v1 = this;
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_21;
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(v1 + 2);
  v8 = *(v1 + 3);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  IsRootItem = TFSInfo::IsRootItem(v9);
  v11 = IsRootItem;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if ((v11 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (!IsRootItem)
  {
LABEL_21:
    LOBYTE(v1) = v5;
    return v1 & 1;
  }

  TNode::GetVolumeInfo(&v19, v1);
  v13 = v19;
  if (v19)
  {
    v14 = TNode::InfoLock(v12);
    os_unfair_lock_lock(v14);
    v16 = *(v1 + 2);
    v15 = *(v1 + 3);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v14);
    TFSInfo::Name(v16, &v18);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    LOBYTE(v1) = !TFSVolumeInfo::IsHiddenFile(v13, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (!v13)
  {
    goto LABEL_21;
  }

  return v1 & 1;
}

void sub_1E573A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t TPropertyReference::SetAs<DSBladeRunnerFlags>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  switch(v2)
  {
    case 1:
      if (v2 != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 2:
      if (v2 != 2)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_50;
      }

      result = 0;
      **a1 = *a2;
      break;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 8:
      if (v2 != 8)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 9:
      if (v2 != 9)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 10:
      if (v2 != 10)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 11:
      if (v2 != 11)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 12:
      if (v2 != 12)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 13:
      if (v2 != 13)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 14:
      if (v2 != 14)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 15:
      if (v2 != 15)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 16:
      if (v2 != 16)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 17:
      if (v2 != 17)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 18:
      if (v2 != 18)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 19:
      if (v2 != 19)
      {
        goto LABEL_50;
      }

      v5 = *a1;

      result = TPropertyValue::SetAs<DSBladeRunnerFlags>(v5, a2);
      break;
    case 20:
      if (v2 == 20)
      {
        goto LABEL_49;
      }

      goto LABEL_50;
    case 21:
      if (v2 != 21)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    case 22:
      if (v2 != 22)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    case 23:
      if (v2 != 23)
      {
LABEL_50:
        std::__throw_bad_variant_access[abi:ne200100]();
      }

LABEL_47:
      result = 0;
      **a1 = *a2;
      break;
    default:
LABEL_49:
      result = 4294959246;
      break;
  }

  return result;
}

BOOL TNode::IsVirtual(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
  }

  return v5 != 0;
}

uint64_t TFSInfo::AliasIsContainer(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 17) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

BOOL TNode::AliasResolved(TNode *this)
{
  TNode::GetAliasTarget(&v16, this);
  v2 = v16;
  if (TNodeFromFINode(v16))
  {
    TNode::GetAliasTarget(&v15, this);
    v3 = v15;
    v4 = TNodeFromFINode(v15);
    v5 = TNode::InfoLock(v4);
    os_unfair_lock_lock(v5);
    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v5);
      v8 = *(v7 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      os_unfair_lock_unlock(v5);
      v8 = *(v7 + 120);
    }

    if (v8 == 16)
    {
      v9 = 0;
    }

    else
    {
      TNode::GetAliasTarget(&v14, this);
      v10 = v14;
      v11 = TNodeFromFINode(v14);
      v9 = TNode::Validate(v11, v12) == 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void TPropertyReference::As<ISIcon * {__strong}>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  TPropertyReference::As<ISIcon * {__strong}>(a1, &v2, a2);
}

uint64_t TNode::HasVisibleChildren(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v7);
    v10 = *(v9 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    os_unfair_lock_unlock(v7);
    v10 = *(v9 + 120);
  }

  if (v10 == 5)
  {
    TNode::GetAliasTarget(&v19, this);
  }

  else
  {
    TNodePtr::TNodePtr(&v19, this);
  }

  if (!TNodeFromFINode(v19.fFINode) || !*(TNodeFromFINode(v19.fFINode) + 56))
  {
LABEL_22:

LABEL_23:
    v16 = 0;
    return v16 | (v16 << 8);
  }

  TNode::StPopulating::StPopulating(v18, &v19.fFINode, 0);
  v11 = *(TNodeFromFINode(v19.fFINode) + 56);
  if (v11)
  {
    v12 = (v11 + 64);
  }

  else
  {
    v12 = &TNode::GetChildren(void)const::sEmptyList;
  }

  v13 = v12[1];
  for (i = *v12; ; ++i)
  {
    if (i == v13)
    {
      TNode::StPopulating::~StPopulating(v18);
      goto LABEL_22;
    }

    v15 = TNodeFromFINode(*i);
    if (TNode::IsVisible(v15))
    {
      break;
    }
  }

  TNode::StPopulating::~StPopulating(v18);

  v16 = 1;
  return v16 | (v16 << 8);
}

void sub_1E573AEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TNode::StPopulating::~StPopulating(&a9);

  _Unwind_Resume(a1);
}

void TNode::SetVolumeInfo(uint64_t a1, uint64_t *a2)
{
  v4 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v4);
  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  os_unfair_lock_unlock(v4);
}

BOOL TNode::BeingOperatedOn(TNode *this, int a2)
{
  v4 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v4);
  v5 = *(this + 5);
  if (v5)
  {
    os_unfair_lock_lock(v5);
    if (v5[1]._os_unfair_lock_opaque || v5[4]._os_unfair_lock_opaque)
    {
      v6 = 1;
    }

    else
    {
      os_unfair_lock_opaque = v5[3]._os_unfair_lock_opaque;
      v6 = os_unfair_lock_opaque != 0;
      if (os_unfair_lock_opaque)
      {
        v9 = 1;
      }

      else
      {
        v9 = a2 == 0;
      }

      if (!v9)
      {
        v6 = v5[2]._os_unfair_lock_opaque != 0;
      }
    }

    os_unfair_lock_unlock(v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v4);
  return v6;
}

void TNode::SuspendSynching(TNode *this)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  ++OperationLock[5]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(OperationLock);
}

_OWORD *TNode::GetOperationLock(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (!v3)
  {
    operator new();
  }

  os_unfair_lock_unlock(v2);
  return v3;
}

void TNode::ResumeSynching(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    os_unfair_lock_lock(v3);
    --v3[5]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(v3);
  }

  os_unfair_lock_unlock(v2);
}

BOOL TNode::SynchingSuspended(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    os_unfair_lock_lock(*(this + 5));
    v4 = v3[5]._os_unfair_lock_opaque != 0;
    os_unfair_lock_unlock(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::SetComputerName(TNode *this, const TString *a2)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  SlashesToColons(&v9, a2);
  TFSInfo::Rename(v6, &v9, 0, &v10);
  v7 = v11;
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fFINode);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v9.fString.fRef);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TNodePtr::TNodePtr(&v10, this);
  TNode::SendNotification(this, 2, &v10.fFINode, 1886282093, 0);

  return v7;
}

uint64_t TNode::SetNameAndExtension(TNode *this, TString *a2, uint64_t a3, _BOOL8 a4, TDesktopServicesHelperNewFileSystemObjectOperation *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = TNode::InfoLock(this);
  os_unfair_lock_lock(v10);
  v12 = *(this + 2);
  v11 = *(this + 3);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v10);
    v13 = *(v12 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (v13 == 35)
    {
LABEL_3:
      v15 = TNode::InfoLock(v14);
      os_unfair_lock_lock(v15);
      v17 = *(this + 2);
      v16 = *(this + 3);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v15);
      TFSInfo::Rename(v17, a2, 0, __s);
      v18 = v54;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(__s);
      if (!v16)
      {
        return v18;
      }

      v19 = v16;
      goto LABEL_60;
    }
  }

  else
  {
    os_unfair_lock_unlock(v10);
    if (*(v12 + 120) == 35)
    {
      goto LABEL_3;
    }
  }

  v20 = TNode::InfoLock(v14);
  os_unfair_lock_lock(v20);
  v22 = *(this + 2);
  v21 = *(this + 3);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v20);
    v23 = *(v22 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  else
  {
    os_unfair_lock_unlock(v20);
    v23 = *(v22 + 120);
  }

  if (v23 != 1)
  {
    v26 = TNode::InfoLock(v24);
    os_unfair_lock_lock(v26);
    v27 = *(this + 3);
    v48 = *(this + 2);
    v49 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v26);
    if (a5)
    {
      v28 = *(a5 + 658);
    }

    else
    {
      v28 = 0;
    }

    TFileCoordinationRecord::TFileCoordinationRecord(v47, v28);
    IsBootVolume = TFSInfo::IsBootVolume(v48);
    if (!IsBootVolume)
    {
      *__s = 0;
      v54 = 0;
      v18 = TFileCoordinationRecord::CoordinateWriting(v47, &v48, 2, __s);
      if (v18)
      {
        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

LABEL_59:
        TFileCoordinationRecord::~TFileCoordinationRecord(v47, v32);
        v19 = v49;
        if (!v49)
        {
          return v18;
        }

LABEL_60:
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        return v18;
      }

      if ((TFSInfo::Equal(*__s, &v48) & 1) == 0)
      {
        TNode::SetFSInfo(this, __s, 1);
        v35 = *__s;
        v34 = v54;
        if (v54)
        {
          atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v36 = v49;
        v48 = v35;
        v49 = v34;
        if (v36)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }
      }

      if (v54)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v54);
      }
    }

    TFSInfo::CopyPathToCBuffer(v48, __s, 1024);
    v30 = strlen(__s);
    v46 = CFURLCreateFromFileSystemRepresentation(0, __s, v30, 0);
    v45 = 0uLL;
    SlashesToColons(&v44, a2);
    theString = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TFSInfo::Rename(v48, &v44, a3, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&theString, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    *&cf = &stru_1F5F42870;
    v18 = DWORD2(cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v18 != -5000 && v18 != -54)
    {
      if (!v18)
      {
        if (!CFStringGetLength(theString))
        {
          TString::SetStringRefAsImmutable(&theString, 0);
          v31 = strlen(__s);
          TString::SetFromUTF8(&theString, __s, v31);
        }

        _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
      }

      goto LABEL_50;
    }

    if (a5)
    {
      TNodePtr::TNodePtr(&cf, this);
      v18 = (*(*a5 + 288))(a5, &cf, &v44, a3, a4);

      if (v18)
      {
LABEL_50:
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&theString);
        cf = 0uLL;
        v52 = 0;
        if (v18)
        {
          TNodePtr::TNodePtr(&theString, this);
          v50.fFINode = 0x646E616D706E616DLL;
          std::set<Property>::set[abi:ne200100](v42, &v50, 2);
          TNodeEventPtrs::AddPropertyChanges(&cf, &theString, v42);
          std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(v42, v42[1]);
        }

        else
        {
          if (v45)
          {
            TNode::ReconcileInternalProperties(this, &v45, &cf, 1);
          }

          if (!IsBootVolume)
          {
            v41 = v46;
            TNode::CFURL(v42, this);
            TFileCoordinationRecord::DidMove(v47, v41, v42[0]);
            TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(v42);
          }
        }

        TNodeEventPtrs::SendNotifications(&cf);
        v42[0] = &cf;
        std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](v42);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v44.fString.fRef);
        if (*(&v45 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v45 + 1));
        }

        TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&v46);
        goto LABEL_59;
      }
    }

    else
    {
      TDSHelperContext::TDSHelperContext(&cf, 4096, 0);
      v18 = TDSHelperContext::LaunchDesktopServicesHelper(&cf, 1);
      if (!v18)
      {
        v18 = TDSHelperContext::RenamePath(&cf, __s, &v44, a3, a4);
      }

      TDSHelperContext::~TDSHelperContext(&cf);
      if (v18)
      {
        goto LABEL_50;
      }
    }

    v37 = TNode::ParentLock(v33);
    os_unfair_lock_lock(v37);
    TNodePtr::TNodePtr(&v50, *(this + 6));
    os_unfair_lock_unlock(v37);
    if (TNodeFromFINode(v50.fFINode))
    {
      v38 = TNodeFromFINode(v50.fFINode);
      v39 = TNode::InfoLock(v38);
      os_unfair_lock_lock(v39);
      v40 = *(v38 + 24);
      *&cf = *(v38 + 16);
      *(&cf + 1) = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v39);
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v18 = 0;
    goto LABEL_50;
  }

  return TNode::SetComputerName(this, a2);
}

void sub_1E573B94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, const void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, id a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a13);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a14);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  TAutoRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TAutoRef(&a18);
  TFileCoordinationRecord::~TFileCoordinationRecord(&a19, v31);
  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  _Unwind_Resume(a1);
}

void TNode::Finalize(void *a1)
{
  v5 = a1;
  AppNapNodeSet(v5, v1);
  std::__tree<TNodePtr>::destroy(&qword_1ECFF4508, qword_1ECFF4510);
  qword_1ECFF4508 = &qword_1ECFF4510;
  qword_1ECFF4518 = 0;
  qword_1ECFF4510 = 0;
  TGlobalNodes::FinalizeNodes(v5);
  v2 = +[FIPresentationNodeMap finalize];
  TNode::FinalizeNWMaps(v2, v3);
  TFSInfo::Finalize(v4);
}

void TNode::FinalizeNWMaps(TNode *this, uint64_t a2)
{
  NWMapSpinlock(this, a2);
  os_unfair_lock_lock(&_MergedGlobals_3);
  if (gNWSidebarNodeMap)
  {
    v2 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::~__hash_table(gNWSidebarNodeMap);
    MEMORY[0x1E692CD30](v2, 0x10A0C408EF24B1CLL);
  }

  gNWSidebarNodeMap = 0;
  if (gAirDropNodeMap)
  {
    v3 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::~__hash_table(gAirDropNodeMap);
    MEMORY[0x1E692CD30](v3, 0x10A0C408EF24B1CLL);
  }

  gAirDropNodeMap = 0;

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

BOOL TNode::IsNetworkNode(TNode *this, TGlobalNodes *a2)
{
  TNodePtr::TNodePtr(&v6, this);
  IsNetworkNode = TGlobalNodes::IsNetworkNode(a2, &v6.fFINode, v3);

  return IsNetworkNode;
}

void TNode::GetNetworkNode(void **__return_ptr a1@<X8>, TNode *this@<X0>)
{
  *a1 = 0;
  switch(this)
  {
    case 0x6D74726D:
      TGlobalNodes::AirDropNode(&v3);
      break;
    case 0x6E747362:
      TGlobalNodes::NetworkSidebarNode(&v3);
      break;
    case 0x6E74776B:
      TGlobalNodes::NetworkNearbyNode(&v3);
      break;
    default:
      return;
  }

  TNodePtr::operator=(a1, &v3);
}

void TNode::ComputerNameChangedCallback(TNode *this, const __SCDynamicStore *a2, const __CFArray *a3, void *a4)
{
  TGlobalNodes::RootNode(&v6);
  v4 = TNodeFromFINode(v6);
  memset(v5, 0, sizeof(v5));
  TNode::RequestInternalTask(v4, 1023, v5, 0);
}

void sub_1E573BD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TPropertyValue::~TPropertyValue(&a9);

  _Unwind_Resume(a1);
}

void TNode::HandleSyncComputerName(TNode *this)
{
  TGlobalNodes::RootNode(&v9, this);
  TGlobalNodes::ComputerName(&v8);
  v1 = TNodeFromFINode(v9);
  v2 = TNode::InfoLock(v1);
  os_unfair_lock_lock(v2);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  TFSInfo::Name(v4, &v7);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = CFEqual(v7.fString.fRef, v8.fString.fRef);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v7.fString.fRef);
  if (!v5)
  {
    v6 = TNodeFromFINode(v9);
    TNode::SetComputerName(v6, &v8);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
}

void sub_1E573BE30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, id a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);

  _Unwind_Resume(a1);
}

uint64_t TNode::VolumeHasNoVolumeSizes(TNode *this)
{
  TNode::GetVolumeInfo(&v3, this);
  v1 = *(v3 + 115);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t TNode::VolumeIsReadOnly(TNode *this)
{
  TNode::GetVolumeInfo(&v3, this);
  v1 = *(v3 + 104);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t TNode::VolumeSupportsACLs(TNode *this)
{
  TNode::GetVolumeInfo(&v3, this);
  v1 = *(v3 + 118);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t TPropertyValue::TPropertyValue<__CFURL const*>(uint64_t a1, const void **a2)
{
  v3 = *a2;
  v5 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  TPropertyValue::TPropertyValue<TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>>(a1, &v5);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v5);
  return a1;
}

void sub_1E573BF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::GetVolume(TNode *this@<X0>, TNodePtr *a2@<X8>)
{
  TGlobalNodes::RootNode(&v5, this);
  v4 = TNodeFromFINode(v5);
  TChildrenList::FindDisplayName(*(v4 + 56), this, a2);
}

void TNode::FindFPv2Child(TNodePtr *__return_ptr a1@<X8>, TNode *this@<X0>, FPItem *a3@<X1>)
{
  v5 = a3;
  v6 = TNode::InfoLock(v5);
  os_unfair_lock_lock(v6);
  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  os_unfair_lock_lock((v8 + 108));
  v9 = *(v8 + 123);
  os_unfair_lock_unlock((v8 + 108));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!v5 || (v9 & 0x20) == 0)
  {
    goto LABEL_16;
  }

  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v13 = *(this + 2);
  v12 = *(this + 3);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v11);
  IsFPv2 = TFSInfo::IsFPv2(v13, 1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (IsFPv2)
  {
    a1->fFINode = 0;
    TNodePtr::TNodePtr(&v16, this);
    TNode::StPopulating::StPopulating(&v17, &v16.fFINode, 0);

    v15 = *(this + 7);
    if (v15)
    {
      TChildrenList::FindByFPItem(&v16, v15, v5);
      TNodePtr::operator=(&a1->fFINode, &v16.fFINode);
    }

    TNode::StPopulating::~StPopulating(&v17);
    if (!TNodeFromFINode(a1->fFINode))
    {
      _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  else
  {
LABEL_16:
    TNodePtr::TNodePtr(a1, 0);
  }
}

void sub_1E573C1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(a1);
}

void TNode::FindChildButDontSynchronize(TNode *this@<X0>, TNode *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  TGlobalNodes::RootNode(v14, this);
  v6 = TNodeFromFINode(v14[0]);

  if (v6 == this)
  {
    TNode::GetVolume(a2, v14);
    TNodePtr::operator=(a3, v14);
  }

  else
  {
    v8 = TNode::InfoLock(v7);
    os_unfair_lock_lock(v8);
    v10 = *(this + 2);
    v9 = *(this + 3);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock((v10 + 108));
    v11 = *(v10 + 123);
    os_unfair_lock_unlock((v10 + 108));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if ((v11 & 0x20) != 0 && CFStringGetLength(*a2) >= 1)
    {
      TNodePtr::TNodePtr(&v13, this);
      TNode::StPopulating::StPopulating(v14, &v13.fFINode, 0);

      v12 = *(this + 7);
      if (v12)
      {
        TChildrenList::Find(&v13, v12, a2);
        TNodePtr::operator=(a3, &v13.fFINode);
      }

      TNode::StPopulating::~StPopulating(v14);
    }
  }
}

void sub_1E573C398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TNode::StPopulating::~StPopulating(va);

  _Unwind_Resume(a1);
}

uint64_t TNode::CopyPathToCBuffer(TNode *this, char *a2, CFIndex a3)
{
  TNode::GetPath(&cf, this);
  v5 = v11;
  if (!v11)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFRetain(cf);
      v6 = static_cf_cast<__CFString const*,void const*>(v7);
      if (v6)
      {
        v8 = CFAutorelease(v6);
        v6 = static_cf_cast<__CFString const*,void const*>(v8);
      }
    }

    if (CFStringGetCString(v6, a2, a3, 0x8000100u))
    {
      v5 = v11;
    }

    else
    {
      v5 = 4294959236;
    }
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  return v5;
}

void TNode::DisplayName(TString *__return_ptr a1@<X8>, TNode *this@<X0>)
{
  v4 = TNode::InfoLock(this);
  os_unfair_lock_lock(v4);
  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  TFSInfo::DisplayName(a1, v6);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E573C510(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void TNode::ProviderNodeForProviderDomainID(TNode *this@<X0>, void *a2@<X8>)
{
  v3 = this;
  TGlobalNodes::AllProvidersNode(&v13);
  v4 = TNodeFromFINode(v13);
  TNode::CopyChildren(v4, &v11);
  v5 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    while (1)
    {
      v7 = TNodeFromFINode(*v5);
      v8 = TNode::GetFIProvider(v7);
      v9 = [v8 identifier];
      v10 = [(TNode *)v3 isEqual:v9];

      if (v10)
      {
        break;
      }

      if (++v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = v12;
  }

  if (v5 == v6)
  {
    *a2 = 0;
  }

  else
  {
    v14 = *v5;
    v15 = 1;
    TNodePtr::TNodePtr(a2, &v14);
    if (v15)
    {
    }
  }

  v14 = &v11;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v14);
}

void TNode::ProviderNodeForProviderDomain(void *a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  if ((atomic_load_explicit(byte_1ECFF44B0, memory_order_acquire) & 1) == 0)
  {
    TNode::ProviderNodeForProviderDomain();
  }

  v6 = [v5 identifier];
  TNode::ProviderNodeForProviderDomainID(v6, a3);

  v7 = TNodeFromFINode(*a3);
  if ((a2 & 0x80) == 0 && !v7)
  {
    v8 = [v5 identifier];
    location = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&location, v8);

    std::mutex::lock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
    p_location = &location;
    v9 = std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::__emplace_unique_key_args<TString,std::piecewise_construct_t const&,std::tuple<TString const&>,std::tuple<>>(&xmmword_1ECFF4560, &location, &std::piecewise_construct, &p_location, &v21);
    p_location = pthread_self();
    std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::__emplace_unique_key_args<_opaque_pthread_t *,_opaque_pthread_t *>(v9 + 3, &p_location, &p_location);
    LOBYTE(v9) = v10;
    std::mutex::unlock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
    if (v9)
    {
      p_location = &location;
      TGlobalNodes::AllProvidersNode(&v21);
      v11 = TNodeFromFINode(v21);
      TNode::HandleSync(v11, 256);

      v12 = [v5 identifier];
      TNode::ProviderNodeForProviderDomainID(v12, &v21);
      TNodePtr::operator=(a3, &v21);

      StDefer<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_0>::~StDefer(&p_location);
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&location);
  }

  if (TNodeFromFINode(*a3))
  {
    v13 = TNodeFromFINode(*a3);
    v14 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v14);
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v14);
    v17 = TFSInfo::GetFPItem(v16);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v17)
    {
      goto LABEL_20;
    }

    if ([v5 expectFPItems])
    {
      v17 = [v5 domain];
      if (!v17)
      {
        v17 = [v5 asyncFetchedDomain];
      }

      objc_initWeak(&location, *a3);
      v18 = 1000.0;
      if ((a2 & 0x40000) == 0)
      {
        v18 = 5.0;
      }

      v21 = *&v18;
      objc_copyWeak(&v19, &location);
      p_p_location = 0;
      p_location = &unk_1F5F409B8;
      objc_moveWeak(&v24, &v19);
      p_p_location = &p_location;
      objc_destroyWeak(&v19);
      TNode::RootFPItemForDomainWithTimeout(v17, &p_location, v20);

      std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](&p_location);
      objc_destroyWeak(&location);
LABEL_20:
    }
  }
}

TString **StDefer<TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::$_0>::~StDefer(TString **a1)
{
  std::mutex::lock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
  v2 = std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::find<TString>(&xmmword_1ECFF4560, *a1);
  if (v2)
  {
    v4 = pthread_self();
    std::__hash_table<_opaque_pthread_t *,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,std::allocator<_opaque_pthread_t *>>::__erase_unique<_opaque_pthread_t *>(v2 + 3, &v4);
    if (!v2[6])
    {
      std::__hash_table<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,std::unordered_set<_opaque_pthread_t *>>>>::erase(&xmmword_1ECFF4560, v2);
    }
  }

  std::mutex::unlock(&TNode::ProviderNodeForProviderDomain(FIProviderDomain *,NodeRequestOptions)::gReentranceGuardLock);
  return a1;
}

void TNode::RootFPItemForDomainWithTimeout(void *a1@<X0>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = a1;
  if (v6)
  {
    v9[0] = v6;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    objc_claimAutoreleasedReturnValue();
    std::__function::__value_func<void ()(FPItem *,NSError *)>::__value_func[abi:ne200100](v7, a3);
    v8 = 0;
    operator new();
  }

  std::function<void ()(FPItem *,NSError *)>::operator()(a3, 0, 0);
  *a4 = 0;
  a4[1] = 0;
}

void TNode::ClearAliasTarget(TNode *this, int a2)
{
  TNodePtr::TNodePtr(&v4, 0);
  TNode::SetAliasTarget(this, &v4, a2);
}

void TNode::SetUnresolvedTarget(TNode *this)
{
  TNode::GetAliasTarget(&v12, this);
  fRef = v12.fString.fRef;
  v3 = TNodeFromFINode(v12.fString.fRef);

  if (!v3)
  {
    *v11 = 0;
    v12.fString.fRef = &stru_1F5F42870;
    v4 = CFRetain(&stru_1F5F42870);
    v5 = TNode::InfoLock(v4);
    os_unfair_lock_lock(v5);
    v7 = *(this + 2);
    v6 = *(this + 3);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v5);
    v8 = *(v7 + 120);
    if (v8 > 0x24)
    {
      goto LABEL_10;
    }

    if (((1 << v8) & 0x10000C0001) != 0)
    {
      TFSInfo::GetAliasInfoFrom(v7, &v11[1], v11, 0, &v12);
      goto LABEL_13;
    }

    if (v8 == 7)
    {
      TNode::DisplayName(&cf, this);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v12.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      v9 = cf;
      if (cf)
      {
        goto LABEL_11;
      }
    }

    else
    {
LABEL_10:
      TNode::DisplayName(&cf, this);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v12.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      v9 = cf;
      if (cf)
      {
LABEL_11:
        CFRelease(v9);
      }
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
LABEL_13:
    TNode::AliasIsContainer(this);
    TNode::GetUnresolvedNode();
  }
}

void sub_1E573CF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::RequestTask(uint64_t a1, int a2, int a3, TPropertyValue *a4, void *a5, int a6)
{
  if (a2 == 1)
  {
    v8 = TNode::InfoLock(a1);
    os_unfair_lock_lock(v8);
    v10 = *(a1 + 16);
    v9 = *(a1 + 24);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v8);
    os_unfair_lock_lock(v10 + 27);
    os_unfair_lock_unlock(v10 + 27);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v11 = *(*a5 + 24);
  if (v11)
  {
    TDSNotifier::AddPtrReference(v11);
  }

  std::allocate_shared[abi:ne200100]<TNodeTask,std::allocator<TNodeTask>,TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>,0>();
}

void sub_1E573D10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

void sub_1E573D1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::OpenScreenShareSync(uint64_t a1)
{
  v2 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(a1 + 24);
  if (!v6)
  {
    os_unfair_lock_unlock(v5);
    if (!v3)
    {
      return 4294959224;
    }

    goto LABEL_5;
  }

  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock(v5);
  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  if (v3)
  {
LABEL_5:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return 4294959224;
}

void sub_1E573D2A8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::IsNetworkNeighborhood(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
  }

  return 0;
}

uint64_t TNode::OpenServerSync(uint64_t a1)
{
  v2 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
  }

  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v6 = *(a1 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v5);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    os_unfair_lock_unlock(v5);
  }

  return 4294959224;
}

void TNode::CloseNodeBrowserIfNecessary(TNode *this, int a2)
{
  NotifierList = TNode::GetNotifierList(this);
  v6 = *(NotifierList + 24);
  v5 = *(NotifierList + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock(v6);
  v7 = *(v6 + 5);
  os_unfair_lock_unlock(v6);
  if (v7 == 1)
  {
    v9 = TNode::InfoLock(v8);
    os_unfair_lock_lock(v9);
    v10 = *(this + 3);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v9);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      os_unfair_lock_unlock(v9);
    }

    v16 = 0;
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    v15[0] = TFSInfo::CopySFBrowserRef(v14);
    TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::operator=<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>(&v16, v15);
    TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(v15);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    LOBYTE(v15[0]) = 0;
    TFSInfo::BrowserCloseNode(v16, 0, v15);
    os_unfair_lock_lock(v6);
    *(v6 + 5) = 0;
    os_unfair_lock_unlock(v6);
    atomic_fetch_and(this + 44, 0xFFF7u);
    atomic_fetch_and(this + 44, 0xFFEFu);
    if (a2)
    {
      memset(v15, 0, sizeof(v15));
      TNode::RemoveAllChildren(this, 0, v15);
      TNodeEventPtrs::SendNotifications(v15);
      v17 = v15;
      std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    else
    {
      TNode::RemoveAllChildren(this, 0, 0);
    }

    TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v16);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E573D56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(va);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  _Unwind_Resume(a1);
}

void sub_1E573D5BC()
{
  if (!v0)
  {
    JUMPOUT(0x1E573D5B4);
  }

  JUMPOUT(0x1E573D5ACLL);
}

const void **TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::operator=<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      CFRelease(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

BOOL TNode::RemoveAllChildren(TNode *a1, uint64_t a2, TNodeEventPtrs *a3)
{
  v3 = atomic_load(a1 + 44);
  if ((v3 & 2) != 0)
  {
    return 0;
  }

  TNodePtr::TNodePtr(&v14, a1);
  TNode::StPopulating::StPopulating(v17, &v14.fFINode, 0);

  v7 = TNode::ChildRegistrationCount(a1);
  v8 = *(a1 + 7);
  if (v8)
  {
    v9 = (v8 + 64);
  }

  else
  {
    v9 = &TNode::GetChildren(void)const::sEmptyList;
  }

  v15 = 0;
  v16 = 0;
  v14.fFINode = 0;
  std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&v14, *v9, v9[1], v9[1] - *v9);
  TNode::RemoveChildrenDeep(&v14, a2, v7 == 0, a3);
  v10 = *(a1 + 7);
  if (v10)
  {
    v11 = (v10 + 64);
  }

  else
  {
    v11 = &TNode::GetChildren(void)const::sEmptyList;
  }

  v12 = *v11 == v11[1];
  v18 = &v14;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v18);
  TNode::StPopulating::~StPopulating(v17);
  return v12;
}

void sub_1E573D71C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, FINode *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](va1);
  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

void TNode::AddNWNode(uint64_t a1, uint64_t a2, FINode **a3)
{
  v4 = a1;
  v10 = a2;
  NWMapSpinlock(a1, a2);
  os_unfair_lock_lock(&_MergedGlobals_3);
  TNode::GetNWNodeMap(v4);
  v6 = v5;
  if (!std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::find<__SFNode *>(v5, &v10))
  {
    TNode::GetNetworkNode(&v9, 0x6E74776B);
    v7 = TNodeFromFINode(*a3);
    if (v7 != TNodeFromFINode(v9))
    {
      v11 = &v10;
      v8 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::__emplace_unique_key_args<__SFNode *,std::piecewise_construct_t const&,std::tuple<__SFNode * const&>,std::tuple<>>(v6, &v10, &std::piecewise_construct, &v11);
      objc_storeStrong(v8 + 3, *a3);
    }
  }

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

uint64_t TNode::AddServerToSidebarSync(uint64_t a1)
{
  v2 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v2);
  v3 = *(a1 + 24);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
  }

  return 4294959224;
}

uint64_t TNode::CopyEnumeratorError(uint64_t a1, void **a2)
{
  v4 = TNode::VirtualType(a1);
  if (v4 != 28 && v4)
  {
    return 4294959224;
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    return 4294959224;
  }

  v6 = TChildrenList::GetCollectionStatusObserver(v5);
  v7 = [v6 fpError];
  v8 = *a2;
  *a2 = v7;

  return 0;
}

uint64_t TNode::GetChildrenCount(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) == 0)
  {
    return 0;
  }

  v8 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v8);
    v11 = *(v10 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  else
  {
    os_unfair_lock_unlock(v8);
    v11 = *(v10 + 120);
  }

  if (v11 == 5)
  {
    TNode::GetAliasTarget(&v16, this);
  }

  else
  {
    TNodePtr::TNodePtr(&v16, this);
  }

  if (TNodeFromFINode(v16.fFINode) && *(TNodeFromFINode(v16.fFINode) + 56))
  {
    TNode::StPopulating::StPopulating(v15, &v16.fFINode, 0);
    v12 = *(TNodeFromFINode(v16.fFINode) + 56);
    if (v12)
    {
      v13 = (v12 + 64);
    }

    else
    {
      v13 = &TNode::GetChildren(void)const::sEmptyList;
    }

    v7 = (v13[1] - *v13) >> 3;
    TNode::StPopulating::~StPopulating(v15);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1E573DA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  TNode::StPopulating::~StPopulating(&a9);

  _Unwind_Resume(a1);
}

uint64_t TNode::SetProperty(TNode *a1, uint64_t a2, const TPropertyReference *a3, __CFString **a4, uint64_t a5, uint64_t a6)
{
  v7 = a2;
  v9 = *a4;
  if (*a4)
  {
    v34.fString.fRef = *a4;
    TOperationErrorRecord::AddPtrReference(v9);
    TPropertyValue::TPropertyValue(&v36, a3);
    TNode::RequestTask(a1, 2, v7, &v36, &v34, 0);
  }

  TNodePtr::TNodePtr(&v34, a1);
  TNodePropertySetterContext::TNodePropertySetterContext(&v36, &v34.fString.fRef, v7, a3);

  if (v7 <= 1869769062)
  {
    if (v7 == 1718903156 || v7 == 1718904684)
    {
      v12 = TNode::InfoLock(v11);
      os_unfair_lock_lock(v12);
      v14 = *(a1 + 2);
      v13 = *(a1 + 3);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

LABEL_16:
      os_unfair_lock_unlock(v12);
      TNode::GetVolumeInfo(&v34, a1);
      v19 = TFSInfo::SetProperty(v14, v7, a3, &v34, 0x10000000);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

LABEL_24:
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      goto LABEL_26;
    }

LABEL_14:
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(a1 + 2);
    v13 = *(a1 + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    goto LABEL_16;
  }

  if (v7 == 1869769063)
  {
    v20 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v20);
    v21 = *(a1 + 2);
    v13 = *(a1 + 3);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v20);
    TNode::GetVolumeInfo(&v34, a1);
    v19 = TFSInfo::SetProperty(v21, 0x6F726967u, a3, &v34, a6);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    if (!v19)
    {
      TNodePtr::TNodePtr(&v34, a1);
      TNode::SendNotification(a1, 2, &v34.fString.fRef, 1869769063, 0);
    }

    goto LABEL_24;
  }

  if (v7 != 1886282093)
  {
    goto LABEL_14;
  }

  v15 = TNode::InfoLock(v11);
  os_unfair_lock_lock(v15);
  v17 = *(a1 + 2);
  v16 = *(a1 + 3);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v15);
    v18 = *(v17 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    if (!v18)
    {
LABEL_35:
      if (TNode::BeingOperatedOn(a1, 1))
      {
        v19 = -8065;
      }

      else
      {
        v34.fString.fRef = 0;
        v28 = TPropertyReference::As<__CFString const*>(a3, &v34);
        v19 = v29;
        if (!v29)
        {
          TString::TString(&v34, v28);
          v19 = TNode::SetNameAndExtension(a1, &v34, 0, 0, 0);
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v34.fString.fRef);
        }
      }

      goto LABEL_26;
    }
  }

  else
  {
    os_unfair_lock_unlock(v15);
    if (!*(v17 + 120))
    {
      goto LABEL_35;
    }
  }

  v24 = FIDSNodeFromTNode(a1);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_35;
  }

  v34.fString.fRef = 0;
  v26 = TPropertyReference::As<__CFString const*>(a3, &v34);
  if (v27)
  {
    v19 = -50;
  }

  else
  {
    v30 = v26;
    TNode::GetFSInfo(&v34, a1);
    fRef = v34.fString.fRef;
    TString::TString(&v33, v30);
    TFSInfo::SetItemName(fRef, &v33);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v33.fString.fRef);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    TNode::GetFSInfo(&v34, a1);
    v32 = v34.fString.fRef;
    TString::TString(&v33, v30);
    TFSInfo::SetDisplayName(v32, &v33);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v33.fString.fRef);
    if (v35)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
    }

    v19 = 0;
  }

LABEL_26:
  v37 = v19;
  TNodePropertySetterContext::~TNodePropertySetterContext(&v36);
  if (v7 == 1634758244)
  {
    TNode::AddToAppNapCache(a1, v22);
  }

  if (v19 == -8057)
  {
    return 0;
  }

  else
  {
    return v19;
  }
}

void sub_1E573DED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TPropertyValue *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  TNodePropertySetterContext::~TNodePropertySetterContext(&a12);
  _Unwind_Resume(a1);
}

uint64_t TNode::CreateNewChildLockItem(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, const TString *a4, id *a5, uint64_t a6, TNodePtr *a7)
{
  TNodePtr::TNodePtr((&v27.isa + 1), 0);
  TNodePtr::operator=(&a7->fFINode, (&v27.isa + 1));

  Length = CFStringGetLength(a4->fString.fRef);
  if (!Length)
  {
    return 4294959227;
  }

  v14 = TNode::InfoLock(Length);
  os_unfair_lock_lock(v14);
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v14);
  os_unfair_lock_lock((v16 + 108));
  v17 = *(v16 + 123);
  os_unfair_lock_unlock((v16 + 108));
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if ((v17 & 0x20) == 0 && !TNode::AliasIsContainer(a1))
  {
    return 4294959241;
  }

  v18 = *(a3 + 8);
  *(&v27.isa + 1) = *a3;
  *(&v27.info + 1) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  IsMigration = TOperation::IsMigration(a2, (&v27.isa + 1));
  if (*(&v27.info + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v27.info + 1));
  }

  if (IsMigration)
  {
    TDSOperationRecord::SetNeedsAuthentication(*a3, 1);
  }

  LOBYTE(v27.isa) = 0;
  SlashesToColons((&v27.isa + 1), a4);
  TNodePtr::TNodePtr(&v26, a1);
  v20 = TDesktopServicesHelperCopyMoveOperation::CreateNewLockItem(a2, a3, (&v27.isa + 1), &v26.fFINode, &a7->fFINode, &v27);

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((&v27.isa + 1));
  if (!v20)
  {
    TNode::AddChild(a1, a7);
    if (LOBYTE(v27.isa) == 1)
    {
      TOperation::UpdateStatusThroughput(a2, 0, 1);
      TOperation::ReportStatus(a2, 0);
    }

    else
    {
      v21 = TNodeFromFINode(a7->fFINode);
      v22 = *a5;
      v25 = v22;
      v23.fFINode = &v25;
      TNode::AddTemporaryProperties(v21, v23);
    }
  }

  return v20;
}

int64_t TNode::DeleteChildLockItem(uint64_t a1, void ***a2, uint64_t a3, FINode **a4, int a5)
{
  v10 = TNodeFromFINode(*a4);
  v11 = TNode::InfoLock(v10);
  os_unfair_lock_lock(v11);
  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v11);
    v14 = *(v13 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    if (v14)
    {
LABEL_3:
      v15 = 4294959238;
      goto LABEL_31;
    }
  }

  else
  {
    os_unfair_lock_unlock(v11);
    if (*(v13 + 120))
    {
      goto LABEL_3;
    }
  }

  if (a5)
  {
    v16 = TNodeFromFINode(*a4);
    IsLockFile = TNode::LowLevelIsLockFile(v16);
    if (IsLockFile)
    {
      goto LABEL_12;
    }
  }

  v18 = TNodeFromFINode(*a4);
  v19 = TNode::InfoLock(v18);
  os_unfair_lock_lock(v19);
  v21 = *(v18 + 16);
  v20 = *(v18 + 24);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v19);
  IsLockFile = TFSInfo::GetType(v21);
  v22 = IsLockFile;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v22 == 1651666795)
  {
LABEL_12:
    v23 = TNode::InfoLock(IsLockFile);
    os_unfair_lock_lock(v23);
    v25 = *(a1 + 16);
    v24 = *(a1 + 24);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v23);
    os_unfair_lock_lock((v25 + 108));
    v26 = *(v25 + 123);
    os_unfair_lock_unlock((v25 + 108));
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v26 & 0x20) != 0 || (TNode::AliasIsContainer(a1))
    {
      v27 = *(a3 + 8);
      v35 = *a3;
      v36 = v27;
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IsMigration = TOperation::IsMigration(a2, &v35);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (IsMigration)
      {
        TDSOperationRecord::SetNeedsAuthentication(*a3, 1);
      }

      v29 = *a3;
      v30 = *(a3 + 8);
      v35 = v29;
      v36 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      TNodePtr::TNodePtr(&v38, a1);
      v15 = TDesktopServicesHelperCopyMoveOperation::DeleteLockItem(a2, &v35, &v38.fFINode, a4);

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }
    }

    else
    {
      v15 = 4294959241;
    }
  }

  else
  {
    v15 = 4294959238;
  }

LABEL_31:
  v31 = TNodeFromFINode(*a4);
  TNode::RemoveTemporaryProperties(v31, v32);
  if (!v15)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v33 = TNodeFromFINode(*a4);
    TNode::RemoveSelf(v33, &v35);
    TNodeEventPtrs::SendNotifications(&v35);
    v38.fFINode = &v35;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v38);
  }

  return v15;
}

void sub_1E573E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, void *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void TNode::RemoveSelf(TNode *this, TNodeEventPtrs *a2)
{
  v4 = TNode::ParentLock(this);
  os_unfair_lock_lock(v4);
  TNodePtr::TNodePtr(&v43, *(this + 6));
  os_unfair_lock_unlock(v4);
  v5 = TNode::StPopulating::StPopulating(v42, &v43.fFINode, 0);
  v6 = TNode::InfoLock(v5);
  os_unfair_lock_lock(v6);
  v8 = *(this + 2);
  v7 = *(this + 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  os_unfair_lock_lock((v8 + 108));
  v9 = *(v8 + 123);
  os_unfair_lock_unlock((v8 + 108));
  if ((v9 & 0x80000000) == 0)
  {
    TNodePtr::TNodePtr(&v41, this);

    v11 = TNode::InfoLock(v10);
    os_unfair_lock_lock(v11);
    v13 = *(this + 2);
    v12 = *(this + 3);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v11);
    IsAlias = TFSInfo::IsAlias(v13);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    if (IsAlias)
    {
      TNode::ClearAliasTarget(this, 0);
    }

    TNodePtr::TNodePtr(&v41, 0);
    v16 = TNode::ParentLock(v15);
    os_unfair_lock_lock(v16);
    *(this + 6) = TNodeFromFINode(v41.fFINode);
    os_unfair_lock_unlock(v16);

    os_unfair_lock_lock((v8 + 108));
    LODWORD(v16) = *(v8 + 123);
    os_unfair_lock_unlock((v8 + 108));
    if ((v16 & 4) != 0)
    {
      TDeviceManagementMonitor::UnRegisterApp(this, v18);
    }

    v19 = TNode::InfoLock(v17);
    os_unfair_lock_lock(v19);
    v21 = *(this + 2);
    v20 = *(this + 3);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v19);
    if (!*(v21 + 120))
    {
      os_unfair_lock_lock((v21 + 108));
      *(v21 + 123) |= 0x80000000;
      os_unfair_lock_unlock((v21 + 108));
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (TNodeFromFINode(v43.fFINode))
    {
      TNodePtr::TNodePtr(&v41, this);
      v22 = +[FIPresentationNodeMap shared];
      v23 = FINodeFromTNode(this);
      [v22 unregisterAllForPresentationNode:v23];

      v25 = TGlobalNodes::RootNode(&v40, v24);
      v26 = TNode::InfoLock(v25);
      os_unfair_lock_lock(v26);
      v28 = *(this + 2);
      v27 = *(this + 3);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v26);
      os_unfair_lock_lock((v28 + 108));
      v29 = *(v28 + 123);
      os_unfair_lock_unlock((v28 + 108));
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if ((v29 & 0x100) != 0)
      {
        v30 = TNodeFromFINode(v43.fFINode);
        if (v30 != TNodeFromFINode(v40))
        {
          if ((atomic_load_explicit(byte_1ECFF44C0, memory_order_acquire) & 1) == 0)
          {
            TNode::RemoveSelf();
          }

          TNodePtr::TNodePtr(&v39, this);
          v31 = qword_1ECFF44B8;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3321888768;
          block[2] = ___ZN5TNode10RemoveSelfEP14TNodeEventPtrs_block_invoke;
          block[3] = &__block_descriptor_48_ea8_32c48_ZTSKZN5TNode10RemoveSelfEP14TNodeEventPtrsE3__0_e5_v8__0l;
          v37 = v39.fFINode;
          v38 = a2 != 0;
          v32 = v37;
          dispatch_async(v31, block);
        }
      }

      v33 = TNodeFromFINode(v43.fFINode);
      TNodePtr::TNodePtr(&v39, this);
      LOBYTE(v33) = TChildrenList::RemoveChild(*(v33 + 56), &v39);

      if (((a2 != 0) & v33) == 1)
      {
        TNodePtr::TNodePtr(&v35, this);
        TNodeEvent::CreateNodeEvent(4, &v35.fFINode, 0, &v39);
        TNodeEventPtrs::AddEvent(a2, &v43, &v39.fFINode);
        TNodeEventPtr::~TNodeEventPtr(&v39.fFINode);

        TNodePtr::TNodePtr(&v39, this);
        TNodePtr::TNodePtr(&v34, this);
        TNodeEvent::CreateNodeEvent(1, &v34.fFINode, 0, &v35);
        TNodeEventPtrs::AddEvent(a2, &v39, &v35.fFINode);
        TNodeEventPtr::~TNodeEventPtr(&v35.fFINode);
      }
    }
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  TNode::StPopulating::~StPopulating(v42);
}

void sub_1E573E908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, ...)
{
  va_start(va, a20);

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  TNode::StPopulating::~StPopulating(va);

  _Unwind_Resume(a1);
}

void TNode::PostFolderSizingTaskRequest(uint64_t a1, uint64_t a2, int a3)
{
  IsContextOpen = TNode::IsContextOpen(a1);
  if (IsContextOpen)
  {
    v7 = TNode::InfoLock(IsContextOpen);
    os_unfair_lock_lock(v7);
    v9 = *(a1 + 16);
    v8 = *(a1 + 24);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v10 = *(v9 + 123);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v10 & 0x20) != 0)
    {
      goto LABEL_12;
    }

    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    IsAlias = TFSInfo::IsAlias(v14);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    if (IsAlias)
    {
LABEL_12:
      TNode::GetVolumeInfo(&v18, a1);
      if (v18 && ((atomic_fetch_or((a1 + 88), 0x40u) & 0x40) == 0 || a3))
      {
        TFSVolumeInfo::GetFolderSizingThread(&v16, v18);
        if (v16)
        {
          TFolderSizingThread::PostFolderSizingTaskRequest(&v16, a2);
        }

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }
      }

      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }
    }
  }
}

void sub_1E573EB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::IsSymlink(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 6) & 1;
}

void ___ZNK5TNode16AliasIsContainerEv_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ___ZNK5TNode16AliasIsContainerEv_block_invoke_2;
  v1[3] = &unk_1E877ED90;
  v2 = *(a1 + 32);
  ExceptionSafeBlock(v1);
}

void ___ZNK5TNode16AliasIsContainerEv_block_invoke_2(uint64_t a1)
{
  TNodeFromFINode(*(a1 + 32));
  v1 = 0;
  v2 = 0;
  TNodeRequest::Make();
}

void sub_1E573ED2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, TNodeRequest *a12)
{
  TPropertyValue::~TPropertyValue(&a9);
  TRef<TNodeRequest *,TRetainReleasePolicy<TNodeRequest *>>::~TRef(&a12);
  _Unwind_Resume(a1);
}

uint64_t TNode::UpdateSizeInfo(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) != 0)
  {
    v11 = this;
    v7 = TNode::ParentLock(v6);
    os_unfair_lock_lock(v7);
    TNodePtr::TNodePtr(&v10, *(this + 6));
    os_unfair_lock_unlock(v7);
    v9 = 0;
    std::allocate_shared[abi:ne200100]<TFSInfoSizer,std::allocator<TFSInfoSizer>,TNode *,TNodePtr,decltype(nullptr),0>();
  }

  return 0;
}

void sub_1E573EE6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::UpdatePropertySynchronous(TNode *this, int a2, char a3, int a4)
{
  v55 = a2;
  v53 = 0;
  v54 = 0;
  v52 = &v53;
  if (a2 > 1819240306)
  {
    if (a2 <= 1886613603)
    {
      if (a2 <= 1870098033)
      {
        if (a2 <= 1836016739)
        {
          if (a2 != 1819240307)
          {
            if (a2 == 1819632756)
            {
              v51 = 0;
              LODWORD(v46) = 7;
              v45 = &v51;
              v50 = 0;
              v6 = TNode::InfoLock(this);
              os_unfair_lock_lock(v6);
              v8 = *(this + 2);
              v7 = *(this + 3);
              if (v7)
              {
                atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              os_unfair_lock_unlock(v6);
              v48.fFINode = 0;
              v49 = 0;
              LastUsedDate = TFSInfo::GetLastUsedDate(v8, &v45, &v48, a3 & 0x7D, &v50);
              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              if (v50 == 1)
              {
                std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v52, &v55, &v55);
              }

              if (v7)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v7);
              }

              goto LABEL_119;
            }

LABEL_93:
            LastUsedDate = 4294959245;
            goto LABEL_119;
          }

          goto LABEL_85;
        }

        if (a2 != 1836016740)
        {
          if (a2 != 1869769063)
          {
            goto LABEL_93;
          }

          v51 = 0;
          LODWORD(v46) = 10;
          v45 = &v51;
          v50 = 0;
          v20 = TNode::InfoLock(this);
          os_unfair_lock_lock(v20);
          v22 = *(this + 2);
          v21 = *(this + 3);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v20);
          v48.fFINode = 0;
          v49 = 0;
          LastUsedDate = TFSInfo::GetOriginatorInfo(v22, &v45, &v48, a3 & 0x7D, &v50);
          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          if (v50 == 1)
          {
            LODWORD(v48.fFINode) = 1869769063;
            std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v52, &v48, &v48);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v19 = v51;
LABEL_65:

          goto LABEL_119;
        }

        goto LABEL_82;
      }

      if (a2 > 1885895026)
      {
        if (a2 == 1885895027)
        {
LABEL_85:
          v26 = TNode::InfoLock(this);
          os_unfair_lock_lock(v26);
          v28 = *(this + 2);
          v27 = *(this + 3);
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v26);
          os_unfair_lock_lock((v28 + 108));
          v29 = *(v28 + 123);
          os_unfair_lock_unlock((v28 + 108));
          if ((v29 & 0x2000000) != 0)
          {
            IsLockFile = TNode::LowLevelIsLockFile(this);
            v39 = IsLockFile;
            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }

            if ((v39 & 1) == 0)
            {
              IsLockFile = TNode::HandleSync(this, 268959744);
            }
          }

          else if (v27)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          v40 = TNode::InfoLock(IsLockFile);
          os_unfair_lock_lock(v40);
          v42 = *(this + 2);
          v41 = *(this + 3);
          if (v41)
          {
            atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v40);
          os_unfair_lock_lock((v42 + 108));
          v43 = *(v42 + 123);
          os_unfair_lock_unlock((v42 + 108));
          if (v41)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v41);
          }

          if ((v43 & 0x20) != 0)
          {
            TNode::UpdateSizeInfo(this);
          }

          goto LABEL_118;
        }

        v12 = 1886549619;
        goto LABEL_81;
      }

      if (a2 != 1870098034)
      {
        v12 = 1883333732;
        goto LABEL_81;
      }

LABEL_82:
      if ((TNode::LowLevelIsLockFile(this) & 1) == 0)
      {
        TNode::HandleSync(this, 268959744);
      }

      LastUsedDate = 4294959239;
      goto LABEL_119;
    }

    if (a2 <= 1970497393)
    {
      if (a2 <= 1937340017)
      {
        if (a2 == 1886613604)
        {
          goto LABEL_82;
        }

        v11 = 1936225906;
        goto LABEL_73;
      }

      if (a2 == 1937340018)
      {
        goto LABEL_74;
      }

      if (a2 != 1969385844)
      {
        goto LABEL_93;
      }

LABEL_118:
      LastUsedDate = 0;
      goto LABEL_119;
    }

    if (a2 <= 1970566255)
    {
      if (a2 == 1970497394)
      {
        goto LABEL_82;
      }

      if (a2 != 1970563428)
      {
        goto LABEL_93;
      }

LABEL_90:
      v31 = MEMORY[0x1E695EC28];
      if (a2 != 1970563428)
      {
        v31 = MEMORY[0x1E695EBD0];
      }

LABEL_101:
      v35 = *v31;
      v36 = TNode::InfoLock(this);
      os_unfair_lock_lock(v36);
      v38 = *(this + 2);
      v37 = *(this + 3);
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v36);
      LastUsedDate = TFSInfo::RefreshUTTypeProperty(v38, v35);
      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (LastUsedDate)
      {
        std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v52, &v55, &v55);
        goto LABEL_118;
      }

      goto LABEL_119;
    }

    if (a2 == 1970566256)
    {
      v31 = MEMORY[0x1E695DAA0];
      goto LABEL_101;
    }

    v11 = 1986359923;
LABEL_73:
    if (a2 != v11)
    {
      goto LABEL_93;
    }

LABEL_74:
    v23 = TNode::InfoLock(this);
    os_unfair_lock_lock(v23);
    v25 = *(this + 2);
    v24 = *(this + 3);
    if (v24)
    {
      atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v23);
    TFSInfo::CopyFSInfo(v25);
  }

  if (a2 > 1717793395)
  {
    if (a2 > 1752392561)
    {
      if (a2 <= 1802072171)
      {
        if (a2 == 1752392562)
        {
          goto LABEL_82;
        }

        if (a2 != 1769170540)
        {
          goto LABEL_93;
        }

        v13 = TNode::InfoLock(this);
        os_unfair_lock_lock(v13);
        v15 = *(this + 2);
        v14 = *(this + 3);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v13);
        os_unfair_lock_lock((v15 + 108));
        v16 = *(v15 + 123);
        os_unfair_lock_unlock((v15 + 108));
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if ((v16 & 0x40) != 0)
        {
          TNode::GetAliasTarget(&v45, this);
          v17 = v45;
          v18 = TNodeFromFINode(v45);

          if (!v18)
          {
            v45 = 0;
            v48.fFINode = 0;
            LastUsedDate = TNode::FollowAlias(this, &v45, &v48, 8);
            if (!LastUsedDate)
            {
              std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v52, &v55, &v55);
            }

            v19 = v45;
            goto LABEL_65;
          }
        }

        goto LABEL_118;
      }

      if (a2 == 1802072172)
      {
        goto LABEL_90;
      }

      v12 = 1818321516;
    }

    else
    {
      if (a2 <= 1718903155)
      {
        if (a2 == 1717793396)
        {
          goto LABEL_82;
        }

        v10 = 1718776688;
        goto LABEL_50;
      }

      if (a2 == 1718903156)
      {
        v48.fFINode = 0;
        LODWORD(v46) = 17;
        v45 = &v48;
        LastUsedDate = TNode::GetProperty(this, 1718903156, &v45, 0);
        TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TRef(&v48.fFINode);
        goto LABEL_119;
      }

      v12 = 1751480436;
    }

LABEL_81:
    if (a2 != v12)
    {
      goto LABEL_93;
    }

    goto LABEL_82;
  }

  if (a2 <= 1667851117)
  {
    if (a2 == 1634952036 || a2 == 1634956409)
    {
      goto LABEL_82;
    }

    v10 = 1667330145;
LABEL_50:
    if (a2 != v10)
    {
      goto LABEL_93;
    }

    TNode::RecalculateFreeSpaceAndCapacity(this, 1);
    goto LABEL_118;
  }

  if (a2 <= 1684893816)
  {
    if (a2 == 1667851118)
    {
      goto LABEL_82;
    }

    v11 = 1668313715;
    goto LABEL_73;
  }

  if (a2 != 1684893817)
  {
    v12 = 1684955501;
    goto LABEL_81;
  }

  v32 = TNode::InfoLock(this);
  os_unfair_lock_lock(v32);
  v33 = *(this + 2);
  LastUsedDate = *(this + 3);
  if (LastUsedDate)
  {
    atomic_fetch_add_explicit((LastUsedDate + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v32);
  v34 = TFSInfo::ApplicationDMFPolicy(v33);
  if (v34 != TFSInfo::FetchApplicationDMFPolicy(v33))
  {
    LODWORD(v45) = 1684893817;
    std::__tree<Property>::__emplace_unique_key_args<Property,Property>(&v52, &v45, &v45);
  }

  if (LastUsedDate)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](LastUsedDate);
    goto LABEL_118;
  }

LABEL_119:
  if (v54)
  {
    v45 = 0;
    v46 = 0;
    v47 = 0;
    TNodePtr::TNodePtr(&v48, this);
    TNodeEventPtrs::AddPropertyChanges(&v45, &v48, &v52);

    TNodeEventPtrs::SendNotifications(&v45);
    v48.fFINode = &v45;
    std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](&v48);
  }

  std::__tree<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::__map_value_compare<std::pair<__SFBrowser *,__SFNode *>,std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>,std::less<std::pair<__SFBrowser *,__SFNode *>>,true>,std::allocator<std::__value_type<std::pair<__SFBrowser *,__SFNode *>,int>>>::destroy(&v52, v53);
  return LastUsedDate;
}

void TNode::RecalculateFreeSpaceAndCapacity(TNode *this, int a2)
{
  TNode::GetVolumeInfo(&v4, this);
  if (v4)
  {
    TFSVolumeInfo::RecalculateFreeSpaceAndCapacity(v4, a2);
  }

  v3 = v5;
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1E573F8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNodePropertySetterContext::TNodePropertySetterContext(uint64_t a1, id *a2, int a3, uint64_t a4)
{
  *a1 = *a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 32) = 0;
  v8 = a1 + 32;
  *(a1 + 24) = a1 + 32;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v9 = *a2;
  v10 = v9;
  if (a3 == 1718904684 || a3 == 1718903156)
  {
    v11 = TNodeFromFINode(v9);
    v12 = TNode::InfoLock(v11);
    os_unfair_lock_lock(v12);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v12);
    v18 = TFSInfo::CopyTagsAndAttributes(v14, 1);
    TCFURLInfo::TagsFromAttributes(v18, &v19);
    std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(a1 + 24, *(a1 + 32));
    v15 = v20;
    *(a1 + 24) = v19;
    *(a1 + 32) = v15;
    v16 = v21;
    *(a1 + 40) = v21;
    if (v16)
    {
      *(v15 + 16) = v8;
      v19 = &v20;
      v20 = 0;
      v21 = 0;
      v15 = 0;
    }

    else
    {
      *(a1 + 24) = v8;
    }

    std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(&v19, v15);
    TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&v18);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  return a1;
}

void sub_1E573FA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  TAutoRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>::~TAutoRef(&a9);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(v11, *(v9 + 32));
  _Unwind_Resume(a1);
}

void TNodePropertySetterContext::~TNodePropertySetterContext(TNodePropertySetterContext *this)
{
  if (!*(this + 12))
  {
    v15 = 0;
    v2 = TNodeFromFINode(*this);
    v3 = TNode::InfoLock(v2);
    os_unfair_lock_lock(v3);
    v5 = *(v2 + 16);
    v4 = *(v2 + 24);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v3);
      v6 = *(v5 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      os_unfair_lock_unlock(v3);
      v6 = *(v5 + 120);
    }

    if (v6 != 7)
    {
      v7 = TNodeFromFINode(*this);
      TNode::HandleSync(v7, 268959744);
    }

    v8 = *(this + 2);
    if (v8 == 1718904684 || v8 == 1718903156)
    {
      v9 = TNodeFromFINode(*this);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        os_unfair_lock_unlock(v10);
        v13 = *(v12 + 120);
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        os_unfair_lock_unlock(v10);
        v13 = *(v12 + 120);
      }

      if (v13 == 7)
      {
        v14 = TNodeFromFINode(*this);
        TNode::SendNotification(v14, 2, this, 1718903156, 0);
      }
    }

    TAutoRef<void const*,TRetainReleasePolicy<void const*>>::~TAutoRef(&v15);
  }

  std::__tree<TString,TTagCompare,std::allocator<TString>>::destroy(this + 24, *(this + 4));
}

uint64_t TNode::VolumeIs(uint64_t a1, int *a2)
{
  v4 = TNode::VirtualType(a1);
  if (v4 > 27)
  {
    if ((v4 - 28) < 2)
    {
      v5 = 0;
      v6 = *a2;
      v7 = 9;
      goto LABEL_6;
    }

    if (v4 == 30)
    {
LABEL_8:
      v5 = 0;
      v8 = *a2 & 0x18;
      goto LABEL_20;
    }
  }

  else
  {
    if ((v4 - 24) < 3)
    {
      v5 = 0;
      v6 = *a2;
      v7 = 25;
LABEL_6:
      v8 = v6 & v7;
      goto LABEL_20;
    }

    if (v4 == 27)
    {
      goto LABEL_8;
    }
  }

  v9 = *a2;
  v10 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v10);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v10);
    v13 = *(v12 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    os_unfair_lock_unlock(v10);
    if (!*(v12 + 120))
    {
      goto LABEL_15;
    }
  }

  if ((v9 & 0xB9) != 0)
  {
LABEL_19:
    v8 = 0;
    v5 = 4294959224;
    goto LABEL_20;
  }

LABEL_15:
  v15 = TNode::InfoLock(v14);
  os_unfair_lock_lock(v15);
  v17 = *(a1 + 16);
  v16 = *(a1 + 24);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v15);
    v18 = *(v17 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  else
  {
    os_unfair_lock_unlock(v15);
    v18 = *(v17 + 120);
  }

  if (v18 == 16)
  {
    goto LABEL_19;
  }

  v21 = *a2;
  if (*a2)
  {
    IsLocalVolume = TNode::IsLocalVolume(a1);
    v8 = IsLocalVolume;
    v21 = *a2;
  }

  else
  {
    v8 = 0;
  }

  if ((v21 & 2) != 0)
  {
    IsLocalVolume = TNode::IsEjectable(a1);
    if (IsLocalVolume)
    {
      v8 |= 2u;
    }

    v21 = *a2;
    if ((*a2 & 8) == 0)
    {
LABEL_27:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }
  }

  else if ((v21 & 8) == 0)
  {
    goto LABEL_27;
  }

  IsLocalVolume = TNode::VolumeHasNoVolumeSizes(a1);
  if (IsLocalVolume)
  {
    v8 |= 8u;
  }

  v21 = *a2;
  if ((*a2 & 0x10) == 0)
  {
LABEL_28:
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_40:
    IsLocalVolume = TNode::VolumeSupportsACLs(a1);
    if (IsLocalVolume)
    {
      v8 |= 0x20u;
    }

    if ((*a2 & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_37:
  IsLocalVolume = TNode::VolumeIsReadOnly(a1);
  if (IsLocalVolume)
  {
    v8 |= 0x10u;
  }

  v21 = *a2;
  if ((*a2 & 0x20) != 0)
  {
    goto LABEL_40;
  }

LABEL_29:
  if ((v21 & 0x400) == 0)
  {
    goto LABEL_48;
  }

LABEL_43:
  v22 = TNode::InfoLock(IsLocalVolume);
  os_unfair_lock_lock(v22);
  v24 = *(a1 + 16);
  v23 = *(a1 + 24);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v22);
  IsBootVolume = TFSInfo::IsBootVolume(v24);
  v26 = IsBootVolume;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    if (!v26)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (IsBootVolume)
  {
LABEL_47:
    v8 |= 0x400u;
  }

LABEL_48:
  TNode::GetVolumeInfo(&v31, a1);
  v27 = v31;
  v28 = *a2;
  v29 = (*a2 & 0x3BDB80) != 0 && v31 == 0;
  v30 = !v29;
  if (v29)
  {
    v5 = 0;
    goto LABEL_104;
  }

  if ((v28 & 0x80) != 0 && ((*(v31 + 125) & 1) != 0 || *(v31 + 107) == 1 && (*(v31 + 128) & 1) == 0))
  {
    v8 |= 0x80u;
  }

  if ((v28 & 0x100) == 0)
  {
    if ((v28 & 0x200) == 0)
    {
      goto LABEL_65;
    }

LABEL_70:
    if (!*(v31 + 117))
    {
      v8 |= 0x200u;
    }

    if ((v28 & 0x4000) == 0)
    {
      goto LABEL_66;
    }

LABEL_73:
    if (*(v31 + 119))
    {
      v5 = 0;
    }

    else
    {
      v5 = 4294959224;
    }

    if (*(v31 + 129))
    {
      v8 |= 0x4000u;
    }

    goto LABEL_78;
  }

  if (!*(v31 + 114))
  {
    v8 |= 0x100u;
  }

  if ((v28 & 0x200) != 0)
  {
    goto LABEL_70;
  }

LABEL_65:
  if ((v28 & 0x4000) != 0)
  {
    goto LABEL_73;
  }

LABEL_66:
  v5 = 0;
LABEL_78:
  if ((v28 & 0x200000) != 0)
  {
    if (IsRunningInFinder())
    {
      v8 |= 0x200000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x400000) != 0 && *(v27 + 119))
  {
    v8 |= 0x400000u;
  }

  if ((v28 & 0x8000) != 0)
  {
    if (TFSVolumeInfo::VolumeSupportsUNIXPermissions(v27))
    {
      v8 |= 0x8000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x10000) != 0)
  {
    if (TFSVolumeInfo::VolumeSupportsAFPPermissions(v27))
    {
      v8 |= 0x10000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x20000) != 0)
  {
    if (TFSVolumeInfo::VolumeSupportsIgnoreOwnership(v27))
    {
      v8 |= 0x20000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x80000) != 0)
  {
    if (TFSVolumeInfo::VolumeShouldShowCapacity(v27))
    {
      v8 |= 0x80000u;
    }

    v28 = *a2;
  }

  if ((v28 & 0x100000) != 0 && TFSVolumeInfo::VolumeAllowPermissionChanges(v27))
  {
    v8 |= 0x100000u;
  }

LABEL_104:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  if (!v30)
  {
    return 4294959224;
  }

LABEL_20:
  *a2 = v8;
  return v5;
}

void sub_1E573FFC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::IsEjectable(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  TNode::GetVolumeInfo(&v6, this);
  v4 = IsRunningInFinder();
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return v4;
}

void sub_1E5740080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNode::NodesOnSameVolume(TNode *this, const TNodePtr *a2, const TNodePtr *a3)
{
  v4 = TNodeFromFINode(*this);
  v5 = TNode::InfoLock(v4);
  os_unfair_lock_lock(v5);
  v7 = *(v4 + 16);
  v6 = *(v4 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v5);
  TFSInfo::GetVolumeID(&v14 + 1, v7);
  v8 = TNodeFromFINode(a2->fFINode);
  v9 = TNode::InfoLock(v8);
  os_unfair_lock_lock(v9);
  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v9);
  TFSInfo::GetVolumeID(&v14, v11);
  v12 = v14 == 0;
  if (*(&v14 + 1) && v14)
  {
    v12 = CFEqual(*(&v14 + 1), v14) != 0;
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v14);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&v14 + 1);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v12;
}

void sub_1E57401AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a9);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>::~TRef(&a10);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::ChildRegistrationCount(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 9);
  if (v3)
  {
    v4 = atomic_load(v3);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::UnregisterChangeNotification(uint64_t a1, uint64_t a2, FINode **a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  StRegistrationLock::StRegistrationLock(&v50);
  if ((a4 & 0x40) != 0 && atomic_fetch_add((TNode::GetNotifierList(a1) + 16), 0xFFFFFFFF) == 1)
  {
    memset(&buf, 0, sizeof(buf));
    TNode::RequestInternalTask(a1, 1020, &buf, 0);
    TPropertyValue::~TPropertyValue(&buf);
  }

  TNode::FindRegistration(a1, a2, a3, &v49);
  if (v49)
  {
    if ((a4 & 2) != 0)
    {
      v8 = atomic_load(v49 + 11);
      if (v8 < 1)
      {
        a4 = a4 & 0xFFFFFFFD;
      }

      else
      {
        atomic_fetch_add(v49 + 11, 0xFFFFFFFF);
        add = atomic_fetch_add(TNode::GetNotifierList(a1), 0xFFFFFFFF);
        v10 = add - 1;
        if (add <= 0)
        {
          v11 = LogObj(5);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v10;
            _os_log_impl(&dword_1E5674000, v11, OS_LOG_TYPE_ERROR, "Incorrect childRegistrations when decrementing: %d", &buf, 8u);
          }
        }

        else if (add == 1)
        {
          memset(&buf, 0, sizeof(buf));
          TNode::RequestInternalTask(a1, 1019, &buf, 0);
          TPropertyValue::~TPropertyValue(&buf);
        }
      }
    }

    if ((a4 & 4) != 0)
    {
      --*(v49 + 12);
      v12 = atomic_fetch_add((TNode::GetNotifierList(a1) + 4), 0xFFFFFFFF);
      v13 = v12 - 1;
      if (v12 <= 0)
      {
        v25 = LogObj(5);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
          buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v13;
          _os_log_impl(&dword_1E5674000, v25, OS_LOG_TYPE_ERROR, "Incorrect deepChildRegistrations when decrementing: %d", &buf, 8u);
        }
      }

      else if (v12 == 1)
      {
        Path = TNode::GetPath(a1, 1, &buf);
        v15 = TString::KEmptyString(Path);
        v48.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v48, *v15);
        fstd::optional_err<TString,int>::value_or<TString>(&v46, &buf, &v48.fString.fRef);
        TSystemNotificationTask::StopObservingDirectory(&v46, 1);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v46);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v48.fString.fRef);
        TNode::GetVolumeInfo(&v46, a1);
        TNodePtr::TNodePtr(&v48, a1);
        v16 = TFSVolumeInfo::GetSynchingGCDQueue(v46);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptions_block_invoke;
        block[3] = &__block_descriptor_40_ea8_32c132_ZTSKZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsE3__0_e5_v8__0l;
        v17 = v48.fString.fRef;
        v45 = v17;
        dispatch_async(v16, block);

        v19 = TNode::ParentLock(v18);
        os_unfair_lock_lock(v19);
        TNodePtr::TNodePtr(&v43, *(a1 + 48));
        os_unfair_lock_unlock(v19);
        v20 = TNodeFromFINode(v43.fFINode);
        if (v20)
        {
          v21 = TNode::ParentLock(v20);
          os_unfair_lock_lock(v21);
          TNodePtr::TNodePtr(&v42, *(a1 + 48));
          os_unfair_lock_unlock(v21);
          v22 = TNodeFromFINode(v42);
          v23 = atomic_load((TNode::GetNotifierList(v22) + 4));
          LODWORD(v21) = v23 > 0;

          if (!v21)
          {
            goto LABEL_48;
          }
        }

        else
        {
        }

        v39 = TNode::InfoLock(v24);
        os_unfair_lock_lock(v39);
        v41 = *(a1 + 16);
        v40 = *(a1 + 24);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v39);
          os_unfair_lock_lock((v41 + 108));
          *(v41 + 123) &= ~0x4000000u;
          os_unfair_lock_unlock((v41 + 108));
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        else
        {
          os_unfair_lock_unlock(v39);
          os_unfair_lock_lock((v41 + 108));
          *(v41 + 123) &= ~0x4000000u;
          os_unfair_lock_unlock((v41 + 108));
        }

LABEL_48:

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&buf);
        if ((a4 & 8) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }
    }

    if ((a4 & 8) == 0)
    {
LABEL_29:
      if ((a4 & 0x10) != 0)
      {
        --*(v49 + 14);
        v28 = atomic_fetch_add((TNode::GetNotifierList(a1) + 12), 0xFFFFFFFF);
        v29 = v28 - 1;
        if (v28 <= 0)
        {
          v30 = LogObj(4);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
            buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v29;
            _os_log_impl(&dword_1E5674000, v30, OS_LOG_TYPE_ERROR, "Incorrect ubiquityRegistrations when decrementing: %d", &buf, 8u);
          }
        }

        else if (v28 == 1)
        {
          TNode::SetShouldSyncUbiquityAttributes(a1, 0);
        }
      }

      v31 = v49;
      if (a4)
      {
        v32 = *(v49 + 2);
        v33 = TNodeFromFINode(v32);
        v34 = TNode::ParentLock(v33);
        os_unfair_lock_lock(v34);
        TNodePtr::TNodePtr(&buf, *(v33 + 48));
        os_unfair_lock_unlock(v34);

        if (TNodeFromFINode(buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value))
        {
          v35 = *(TNodeFromFINode(buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__head.__value) + 56);
          if (v35)
          {
            TChildrenList::DecrementRegisteredChildrenCount(v35);
          }
        }

        v31 = v49;
      }

      v36 = TDSNotifier::DecrementRegistrationCountForOptions(v31, a4);
      TNodePtr::TNodePtr(&buf, a1);

      if (v36)
      {
        NotifierList = TNode::GetNotifierList(a1);
        TNotifierList::RemoveNotifier(NotifierList, &v49);
      }

      goto LABEL_43;
    }

LABEL_24:
    v26 = atomic_fetch_add((TNode::GetNotifierList(a1) + 8), 0xFFFFFFFF);
    if (v26 <= 0)
    {
      v27 = LogObj(5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__head.__value = 67109120;
        buf.fData.__impl_.__data.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__tail.__head.__value.length = v26 - 1;
        _os_log_impl(&dword_1E5674000, v27, OS_LOG_TYPE_ERROR, "Incorrect spotlightRegistrations when decrementing: %d", &buf, 8u);
      }
    }

    --*(v49 + 13);
    atomic_load((TNode::GetNotifierList(a1) + 8));
    goto LABEL_29;
  }

LABEL_43:
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&v49);
  StRegistrationLock::~StRegistrationLock(&v50);
  return 0;
}

void sub_1E5740874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, char a16, std::__shared_weak_count *a17, void *a18, TDSNotifier *a19)
{
  os_unfair_lock_unlock(v19);

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v20 - 80));
  TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(&a19);
  StRegistrationLock::~StRegistrationLock((v20 - 81));
  _Unwind_Resume(a1);
}

void fstd::optional_err<TString,int>::value_or<TString>(TString *__return_ptr a1@<X8>, uint64_t a2@<X0>, CFTypeRef *a3@<X1>)
{
  if (*(a2 + 8))
  {
    a1->fString.fRef = *a3;
    *a3 = 0;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=(a3, &stru_1F5F42870);
  }

  else
  {
    a1->fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(a1, *a2);
  }
}

void ___ZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptions_block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3321888768;
  v1[2] = ___ZZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsENK3__0clEv_block_invoke;
  v1[3] = &__block_descriptor_40_ea8_32c13_ZTS8TNodePtr_e5_v8__0l;
  v2 = *(a1 + 32);
  ExceptionSafeBlock(v1);
}

id __copy_helper_block_ea8_32c132_ZTSKZN5TNode28UnregisterChangeNotificationERKNSt3__110shared_ptrI21TClientChangeNotifierEERK8TNodePtr23NodeNotificationOptionsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void TNotifierList::RemoveNotifier(uint64_t a1, TDSNotifier **a2)
{
  os_unfair_lock_lock((a1 + 64));
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v5 != v4)
  {
    while (*v5 != *a2)
    {
      if (++v5 == v4)
      {
        v5 = *(a1 + 48);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    if (v5 + 1 != v4)
    {
      do
      {
        v6 = v5 + 1;
        TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::operator=<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>(v5, v5 + 1);
        v7 = v5 + 2;
        ++v5;
      }

      while (v7 != v4);
      v4 = *(a1 + 48);
      v5 = v6;
    }

    while (v4 != v5)
    {
      TRef<TDSNotifier *,TRetainReleasePolicy<TDSNotifier *>>::~TRef(--v4);
    }

    *(a1 + 48) = v5;
  }

  os_unfair_lock_unlock((a1 + 64));
}

BOOL RemovePrefix(const TString *a1, TString *this)
{
  v4 = TString::BeginsWith(this, a1);
  if (v4)
  {
    Length = CFStringGetLength(a1->fString.fRef);
    TString::SubStringFrom(&cf, this, Length);
    if (&cf != this)
    {
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&this->fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  }

  return v4;
}

uint64_t MatchesEDSContainerPattern(const TString *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:a1->fString.fRef];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 fp_matchesEDSLocation];
  }

  else
  {
    v18.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v18, a1->fString.fRef);
    v4 = *MEMORY[0x1E695E480];
    v5 = *MEMORY[0x1E695E498];
    v6 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], "/private", 8, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    cf = v6;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v6);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    RemovePrefix(&v17, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    v7 = CFStringCreateWithBytesNoCopy(v4, "/var/PersonaVolumes/", 20, 0x8000100u, 0, v5);
    cf = v7;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v7);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    v8 = RemovePrefix(&v17, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    if (!v8)
    {
      goto LABEL_13;
    }

    TString::TString(&cf, "/");
    v9 = TString::IndexOf(&v18, &cf);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v9 < 1)
    {
      goto LABEL_13;
    }

    TString::SubStringFrom(&cf, &v18, v9);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v18.fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    v10 = CFStringCreateWithBytesNoCopy(v4, "/Containers/Data/InternalDaemon/", 32, 0x8000100u, 0, v5);
    cf = v10;
    v17.fString.fRef = &stru_1F5F42870;
    CFRetain(&stru_1F5F42870);
    TString::SetStringRefAsImmutable(&v17, v10);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    v11 = RemovePrefix(&v17, &v18);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    if (v11 && (TString::TString(&cf, "/"), v12 = TString::IndexOf(&v18, &cf), TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf), v12 >= 1))
    {
      TString::SubStringFrom(&cf, &v18, v12);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v18.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      v13 = CFStringCreateWithBytesNoCopy(v4, "/Library/Mobile Documents", 25, 0x8000100u, 0, v5);
      cf = v13;
      v17.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v17, v13);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
      if (RemovePrefix(&v17, &v18))
      {
        v3 = 1;
      }

      else
      {
        v15 = CFStringCreateWithBytesNoCopy(v4, "/Library/CloudStorage", 21, 0x8000100u, 0, v5);
        cf = v15;
        v16.fString.fRef = &stru_1F5F42870;
        CFRetain(&stru_1F5F42870);
        TString::SetStringRefAsImmutable(&v16, v15);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
        v3 = RemovePrefix(&v16, &v18);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v16.fString.fRef);
      }

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v17.fString.fRef);
    }

    else
    {
LABEL_13:
      v3 = 0;
    }

    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v18.fString.fRef);
  }

  return v3;
}

void sub_1E574101C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, const void *a11)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a9);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a11);

  _Unwind_Resume(a1);
}

uint64_t TNode::HandleChange(const TString *a1, int a2)
{
  result = PathEligibleForSynching(a1);
  if (result)
  {
    TPathName::TPathName(&v59, a1, TPathName::kPOSIXPathNameSeparator);
    TGlobalNodes::BootNode(&v58, v5);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    if (v61 != v60)
    {
      v6 = (v60 + 8 * (v62 >> 9));
      v7 = (*v6 + 8 * (v62 & 0x1FF));
      v8 = *(v60 + (((v63 + v62) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v63 + v62) & 0x1FF);
      while (v7 != v8)
      {
        if (!TNodeFromFINode(v58))
        {
          break;
        }

        v9 = TNodeFromFINode(v58);
        v10 = TNode::InfoLock(v9);
        os_unfair_lock_lock(v10);
        v12 = *(v9 + 16);
        v11 = *(v9 + 24);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        os_unfair_lock_unlock(v10);
        os_unfair_lock_lock((v12 + 108));
        v13 = *(v12 + 123);
        os_unfair_lock_unlock((v12 + 108));
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if ((v13 & 0x20) != 0)
        {
          std::vector<TNodePtr>::push_back[abi:ne200100](&v55, &v58);
          v14 = TNodeFromFINode(v58);
          v15 = TNode::ParentLock(v14);
          os_unfair_lock_lock(v15);
          TNodePtr::TNodePtr(&v64, *(v14 + 48));
          os_unfair_lock_unlock(v15);
          v16 = TNodeFromFINode(v64.fFINode);
          TGlobalNodes::BootNode(&cf2, v16);
          v17 = TNodeFromFINode(cf2);

          if (v16 == v17)
          {
            v27 = TNodeFromFINode(v58);
            v28 = TNode::InfoLock(v27);
            os_unfair_lock_lock(v28);
            v30 = *(v27 + 16);
            v29 = *(v27 + 24);
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            os_unfair_lock_unlock(v28);
            TFSInfo::Name(v30, &v64);
            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            TPathName::UsersDirectory(&cf2);
            if (CFEqual(v64.fFINode, cf2))
            {
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
              TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v64.fFINode);
LABEL_37:
              if ((a2 & 0x200) != 0)
              {
                v37 = TNodeFromFINode(v58);
                TNode::HandleSync(v37, 0x1000000);
              }

              v38 = TNodeFromFINode(v58);
              TNode::FindChild(&v64.fFINode, v38, v7, 0, 0);
              goto LABEL_12;
            }

            v32 = TNodeFromFINode(v58);
            v33 = TNode::InfoLock(v32);
            os_unfair_lock_lock(v33);
            v35 = *(v32 + 16);
            v34 = *(v32 + 24);
            if (v34)
            {
              atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            os_unfair_lock_unlock(v33);
            TFSInfo::Name(v35, &v53);
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }

            TPathName::VolumesDirectory(&v52);
            v36 = CFEqual(v53.fString.fRef, v52.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v52.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v53.fString.fRef);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf2);
            TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v64.fFINode);
            if (v36)
            {
              goto LABEL_37;
            }
          }
        }

        v18 = TNodeFromFINode(v58);
        TNode::FindChildButDontSynchronize(v18, v7, &v64.fFINode);
LABEL_12:
        TNodePtr::operator=(&v58, &v64.fFINode);

        v19 = TNodeFromFINode(v58);
        if (v19 != TNodeFromFINode(0))
        {
          v20 = TNodeFromFINode(v58);
          v21 = TNode::InfoLock(v20);
          os_unfair_lock_lock(v21);
          v23 = *(v20 + 16);
          v22 = *(v20 + 24);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v21);
          os_unfair_lock_lock((v23 + 108));
          v24 = *(v23 + 123);
          os_unfair_lock_unlock((v23 + 108));
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          if ((v24 & 0x40) != 0)
          {
            v64.fFINode = 0;
            v25 = TNodeFromFINode(v58);
            cf2 = 0;
            if (TNode::FollowAlias(v25, &v64, &cf2, 8))
            {
              v26 = 0;
            }

            else
            {
              v26 = v64.fFINode;
            }

            cf2 = v26;
            TNodePtr::operator=(&v58, &cf2);
          }
        }

        v7 = (v7 + 8);
        if ((v7 - *v6) == 4096)
        {
          v31 = v6[1];
          ++v6;
          v7 = v31;
        }
      }
    }

    if (TNodeFromFINode(v58))
    {
      v39 = TNodeFromFINode(v58);
      v40 = TNode::InfoLock(v39);
      os_unfair_lock_lock(v40);
      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v40);
      os_unfair_lock_lock((v42 + 108));
      v43 = *(v42 + 123);
      os_unfair_lock_unlock((v42 + 108));
      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if ((v43 & 0x20) != 0)
      {
        std::vector<TNodePtr>::push_back[abi:ne200100](&v55, &v58);
      }

      if ((a2 & 0x200) != 0)
      {
        v45 = TNodeFromFINode(v58);
        v46 = TNode::ParentLock(v45);
        os_unfair_lock_lock(v46);
        TNodePtr::TNodePtr(&v64, *(v45 + 48));
        os_unfair_lock_unlock(v46);
        if (TNodeFromFINode(v64.fFINode))
        {
          v47 = TNodeFromFINode(v64.fFINode);
          TNode::RequestSynchronize(v47, 0x1000000);
        }
      }

      else
      {
        v44 = TNodeFromFINode(v58);
        TNode::HandleListeners(v44, a2);
      }
    }

    v49 = v55;
    for (i = v56; i != v49; i -= 8)
    {
      v50 = *(i - 8);
      v51 = TNodeFromFINode(v50);
      TNode::HandleRecursiveListeners(v51);
    }

    v64.fFINode = &v55;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v64);

    return std::deque<TString>::~deque[abi:ne200100](&v59);
  }

  return result;
}

void sub_1E57415C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  os_unfair_lock_unlock(v16);
  *(v17 - 72) = &a12;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100]((v17 - 72));

  std::deque<TString>::~deque[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void TNode::RecursiveChildrenAndSelf(uint64_t *__return_ptr a1@<X8>)
{
  v3 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1E574179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(TNode const*)>::~__value_func[abi:ne200100](va);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(TNode const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1E5741890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void TNode::SubscribeForFSNotification(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = *(this + 7);

    TChildrenList::SubscribeWithKQueue(v6);
  }
}

atomic_ushort *___ZN5TNode22DoExternalRegistrationERK4TRefIP11TDSNotifier20TRetainReleasePolicyIS2_EEb_block_invoke(uint64_t a1)
{
  result = TNodeFromFINode(*(a1 + 32));
  if ((atomic_fetch_and(result + 44, 0xFFDFu) & 0x20) != 0)
  {
    v3 = TNodeFromFINode(*(a1 + 32));

    return TNode::HandleSync(v3, 20971520);
  }

  return result;
}

id __copy_helper_block_ea8_32c94_ZTSKZN5TNode22DoExternalRegistrationERK4TRefIP11TDSNotifier20TRetainReleasePolicyIS2_EEbE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

const void **TNode::ExternalUnRegistrationProper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v6);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v6);
  v9 = TFSInfo::CopySFBrowserRef(v8);
  v14 = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    TNode::CloseNodeBrowserIfNecessary(a1, 1);
    v11 = TNode::InfoLock(v10);
    os_unfair_lock_lock(v11);
    v12 = *(a1 + 24);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v11);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      os_unfair_lock_unlock(v11);
    }

    TNode::RemoveNWNode(a2, a3);
  }

  return TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(&v14);
}

void sub_1E5741AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TRef(va);
  _Unwind_Resume(a1);
}

void TNode::RemoveNWNode(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v6 = a2;
  NWMapSpinlock(a1, a2);
  os_unfair_lock_lock(&_MergedGlobals_3);
  TNode::GetNWNodeMap(v2);
  v4 = v3;
  v5 = std::__hash_table<std::__hash_value_type<__SFNode *,TNodePtr>,std::__unordered_map_hasher<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,TNWNodeHasher,std::equal_to<__SFNode *>,true>,std::__unordered_map_equal<__SFNode *,std::__hash_value_type<__SFNode *,TNodePtr>,std::equal_to<__SFNode *>,TNWNodeHasher,true>,std::allocator<std::__hash_value_type<__SFNode *,TNodePtr>>>::find<__SFNode *>(v3, &v6);
  if (v5)
  {
    std::__hash_table<std::__hash_value_type<TString,TProgressInfo>,std::__unordered_map_hasher<TString,std::__hash_value_type<TString,TProgressInfo>,std::hash<TString>,std::equal_to<TString>,true>,std::__unordered_map_equal<TString,std::__hash_value_type<TString,TProgressInfo>,std::equal_to<TString>,std::hash<TString>,true>,std::allocator<std::__hash_value_type<TString,TProgressInfo>>>::remove(v4, v5, v7);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<__SFNode *,TNodePtr>,void *>>>>::~unique_ptr[abi:ne200100](v7);
  }

  os_unfair_lock_unlock(&_MergedGlobals_3);
}

void TNode::DoExternalUnRegistration(TNode *this)
{
  NotifierList = TNode::GetNotifierList(this);
  v4 = *(NotifierList + 24);
  v3 = *(NotifierList + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock(v4);
  v5 = *(v4 + 4);
  os_unfair_lock_unlock(v4);
  if (v5 == 1)
  {
    TNode::UnsubscribeForFSNotification(this);
    os_unfair_lock_lock(v4);
    *(v4 + 4) = 0;
    os_unfair_lock_unlock(v4);
  }

  v6 = TNode::VirtualType(this);
  os_unfair_lock_lock(v4);
  v7 = *(v4 + 5);
  os_unfair_lock_unlock(v4);
  if (v7 == 1)
  {
    v30.fFINode = 0;
    if (TNode::IsNetworkNode(this, 0x6E747362))
    {
      TGlobalNodes::NetworkSidebarNode(&v29);

      v9 = TFSInfo::CopyNetworkSidebarBrowserRef(v8);
    }

    else if (TNode::IsNetworkNode(this, 0x6E74776B))
    {
      TGlobalNodes::NetworkNearbyNode(&v28);

      v9 = TFSInfo::CopyNetworkNearbyBrowserRef(v12);
    }

    else
    {
      IsNetworkNode = TNode::IsNetworkNode(this, 0x6D74726D);
      if (!IsNetworkNode)
      {
        v18 = TNode::InfoLock(IsNetworkNode);
        os_unfair_lock_lock(v18);
        v19 = *(this + 3);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          os_unfair_lock_unlock(v18);
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        else
        {
          os_unfair_lock_unlock(v18);
        }

        IsNetworkNeighborhood = TNode::IsNetworkNeighborhood(this);
        if (IsNetworkNeighborhood)
        {
          v21 = TNode::InfoLock(IsNetworkNeighborhood);
          os_unfair_lock_lock(v21);
          v23 = *(this + 2);
          v22 = *(this + 3);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          os_unfair_lock_unlock(v21);
          v24 = TFSInfo::CopySFBrowserRef(v23);
          v30.fFINode = v24;
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v25 = TNode::InfoLock(v24);
          os_unfair_lock_lock(v25);
          v26 = *(this + 3);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            os_unfair_lock_unlock(v25);
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          else
          {
            os_unfair_lock_unlock(v25);
          }
        }

        RootNode = 0;
        goto LABEL_24;
      }

      TGlobalNodes::AirDropNode(&v27);

      v9 = TFSInfo::CopyAirDropBrowserRef(v14);
    }

    v30.fFINode = v9;
    if (!v9)
    {
LABEL_26:
      TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(&v30.fFINode);
      goto LABEL_27;
    }

    RootNode = SFBrowserGetRootNode();
LABEL_24:
    if (v30.fFINode)
    {
      v16 = TNode::VirtualType(this);
      TNode::ExternalUnRegistrationProper(this, v16, RootNode);
    }

    goto LABEL_26;
  }

  if (v6 != 27)
  {
    if (!TNode::IsFPv2(this, 1))
    {
      if ((v6 & 0xFE) != 0x18)
      {
        TNodePtr::TNodePtr(&v30, this);
        TProgressMap::RemoveSubscriberForExternalProgress(&v30, v17);

        if (!v3)
        {
          return;
        }

LABEL_28:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        return;
      }

      if (!ICloudDriveFPFSEnabled())
      {
LABEL_27:
        if (!v3)
        {
          return;
        }

        goto LABEL_28;
      }
    }

    TChildrenList::StopCollectionStatusObserver(*(this + 7));
    goto LABEL_27;
  }

  os_unfair_lock_lock(v4);
  v10 = *(v4 + 8);
  os_unfair_lock_unlock(v4);
  if (v10)
  {
    [v10 stopObserving];
    os_unfair_lock_lock(v4);
    v11 = *(v4 + 8);
    *(v4 + 8) = 0;

    os_unfair_lock_unlock(v4);
  }

  if (v3)
  {
    goto LABEL_28;
  }
}

void sub_1E5741EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  TAutoRef<__SFBrowser *,TRetainReleasePolicy<__SFBrowser *>>::~TAutoRef(va);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  _Unwind_Resume(a1);
}

void TNode::UnsubscribeForFSNotification(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = *(this + 7);

    TChildrenList::UnsubscribeWithKQueue(v6);
  }
}

void ___ZN5TNode10RemoveSelfEP14TNodeEventPtrs_block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3321888768;
  v2[2] = ___ZZN5TNode10RemoveSelfEP14TNodeEventPtrsENK3__0clEv_block_invoke;
  v2[3] = &__block_descriptor_41_ea8_32c13_ZTS8TNodePtr_e5_v8__0l;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  ExceptionSafeBlock(v2);
}

id __copy_helper_block_ea8_32c48_ZTSKZN5TNode10RemoveSelfEP14TNodeEventPtrsE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = *(a2 + 40);
  return result;
}

void TNode::SendNotifications(TNode *a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v5 = *(v3 + 7);
      TNodePtr::TNodePtr(&v9, a1);
      TNode::SendNotification(a1, 2, &v9.fFINode, v5, 0);

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v2);
  }
}

uint64_t TNode::Operate(TOperation **a1, void *a2)
{
  *a2 = 0;
  v2 = *a1;
  if (v2)
  {
    RequestedOperation = TOperation::GetRequestedOperation(v2);
    if (RequestedOperation <= 0xF && ((1 << RequestedOperation) & 0x8C00) != 0)
    {
      operator new();
    }

    operator new();
  }

  return 4294959224;
}

uint64_t TNode::Move(TNode *this, const TNodePtr *a2, TDSOperationRecord *a3, TOperation *a4, TNodeEventPtrs *a5, const TString *a6)
{
  cf[129] = *MEMORY[0x1E69E9840];
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v12 = TNode::ParentLock(this);
  os_unfair_lock_lock(v12);
  TNodePtr::TNodePtr(cf, *(this + 6));
  os_unfair_lock_unlock(v12);
  v13 = TNodeFromFINode(cf[0]);
  LOBYTE(v13) = v13 == TNodeFromFINode(a2->fFINode);

  if (v13)
  {
    goto LABEL_17;
  }

  TNodePtr::TNodePtr(cf, this);
  v15 = TNode::NodesOnSameVolume(cf, a2, v14);

  if (!v15)
  {
    *(v64 + 6) = -8062;
LABEL_17:
    v20 = *(v64 + 6);
    goto LABEL_18;
  }

  v62 = &stru_1F5F42870;
  v16 = CFRetain(&stru_1F5F42870);
  if (!a6)
  {
    v17 = TNode::InfoLock(v16);
    os_unfair_lock_lock(v17);
    v19 = *(this + 2);
    v18 = *(this + 3);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v17);
    TFSInfo::LogicalName(v19);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v62, cf);
    CFRetain(&stru_1F5F42870);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    cf[0] = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    a6 = &v62;
  }

  v20 = TNode::CopyPathToCBuffer(this, cf, 1024);
  *(v64 + 6) = v20;
  if (v20)
  {
    goto LABEL_15;
  }

  v21 = TNodeFromFINode(a2->fFINode);
  v20 = TNode::CopyPathToCBuffer(v21, __dst, 1024);
  *(v64 + 6) = v20;
  if (v20)
  {
    goto LABEL_15;
  }

  if (strlcat(__dst, "/", 0x400uLL) <= 0x3FF)
  {
    theString[0] = 0;
    TNode::CopyURL(this, theString);
    v61 = theString[0];
    v23 = strlen(__dst);
    v60 = CFURLCreateFromFileSystemRepresentation(0, __dst, v23, 1u);
    if (TDSOperationRecord::GetResolution(a3) == 3 || (TDSOperationRecord::TargetName(a3, theString), Length = CFStringGetLength(theString[0]), TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(theString), Length >= 1))
    {
      operator new();
    }

    TFileCoordinationRecord::TFileCoordinationRecord(theString, *(a4 + 658));
    v25 = theString[3];
    v26 = v25;
    if (!*(v64 + 6))
    {
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = ___ZN5TNode4MoveERK8TNodePtrR18TDSOperationRecordR10TOperationR14TNodeEventPtrsPK7TString_block_invoke;
      v44[3] = &unk_1E877F300;
      v46 = &v55;
      v47 = &v63;
      v48 = this;
      v49 = a5;
      v27 = v25;
      v45 = v27;
      v50 = a4;
      v51 = a2;
      v52 = 0;
      v53 = a3;
      v54 = a6;
      v28 = MEMORY[0x1E692D6D0](v44);
      v29 = TString::operator NSString *(&v60);
      v30 = as_ns<TString>(&a6->fString.fRef);
      v31 = v30;
      v32 = [v29 URLByAppendingPathComponent:v30];

      v33 = TString::operator NSString *(&v61);
      v43 = 0;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = ___ZN5TNode4MoveERK8TNodePtrR18TDSOperationRecordR10TOperationR14TNodeEventPtrsPK7TString_block_invoke_2;
      v41[3] = &unk_1E877F328;
      v34 = v28;
      v42 = v34;
      [(__CFString *)v27 coordinateWritingItemAtURL:v33 options:2 writingItemAtURL:v32 options:0 error:&v43 byAccessor:v41];
      v35 = v43;

      if (!*(v64 + 6))
      {
        v37 = TCFURLInfo::TranslateCFError(v35, v36);
        *(v64 + 6) = v37;
      }

      if ((v56[3] & 1) == 0)
      {
        v38 = LogObj(2);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = *(v64 + 6);
          *buf = 67109378;
          v68 = v39;
          v69 = 2114;
          v70 = v35;
          _os_log_impl(&dword_1E5674000, v38, OS_LOG_TYPE_ERROR, "TNode::Move coordination failed to call block. status = %d, error: %{public}@", buf, 0x12u);
        }
      }

      _Block_object_dispose(&v55, 8);
    }

    TFileCoordinationRecord::~TFileCoordinationRecord(theString, v40);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v60);
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v61);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62);
    goto LABEL_17;
  }

  v20 = 4294965186;
LABEL_15:
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v62);
LABEL_18:
  _Block_object_dispose(&v63, 8);
  return v20;
}

void sub_1E57427B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, const void *a40, const void *a41, const void *a42, char a43)
{
  _Block_object_dispose(&a30, 8);

  TFileCoordinationRecord::~TFileCoordinationRecord(&a34, v48);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a40);
  TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&a41);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&a42);
  _Block_object_dispose(&a43, 8);
  _Unwind_Resume(a1);
}

void ___ZN5TNode4MoveERK8TNodePtrR18TDSOperationRecordR10TOperationR14TNodeEventPtrsPK7TString_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  _ZNSt3__115allocate_sharedB8ne200100I7TFSInfoNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1E57430D0(_Unwind_Exception *a1, TPropertyValue *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v27 - 128));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v27 - 120));
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v27 - 144));

  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((v27 - 104));
  v29 = *(v27 - 88);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(a1);
}

uint64_t TNode::MoveToParent(TNode *this, const TNodePtr *a2, const TString *a3)
{
  v5 = TNode::ParentLock(this);
  os_unfair_lock_lock(v5);
  TNodePtr::TNodePtr(&v46, *(this + 6));
  os_unfair_lock_unlock(v5);
  v6 = TNode::GetFIProvider(this);
  TNode::StPopulating::StPopulating(&v45, &v46.fFINode, 0);
  TNode::StPopulating::StPopulating(v44, &a2->fFINode, 0);
  if (TNodeFromFINode(v46.fFINode))
  {
    v43.fFINode = v46.fFINode;
    v7 = TOperation::OperationLock(v43.fFINode);
    std::mutex::lock(v7);
    v8 = TNode::Readers(this);
    v9 = TNode::Writers(this);
    v10 = TNode::ChildWriters(this);
    v11 = v9 + v8 + v10 + TNode::ReadersBelow(this);
    while (TNodeFromFINode(v43.fFINode) && v11 != 0)
    {
      v13 = TNodeFromFINode(v43.fFINode);
      TNode::DecrementReadersBelowBy(v13, v11);
      v14 = TNodeFromFINode(v43.fFINode);
      v15 = TNode::ParentLock(v14);
      os_unfair_lock_lock(v15);
      TNodePtr::TNodePtr(&v42, *(v14 + 48));
      os_unfair_lock_unlock(v15);
      TNodePtr::operator=(&v43.fFINode, &v42.fFINode);
    }

    std::mutex::unlock(v7);
    v16 = TNodeFromFINode(v46.fFINode);
    TNodePtr::TNodePtr(&v42, this);
    TChildrenList::RemoveChild(*(v16 + 56), &v42);
  }

  else
  {
    v11 = 0;
  }

  v41 = 0;
  v17 = TNodeFromFINode(a2->fFINode);
  TNodePtr::TNodePtr(&v43, this);
  TNode::AddNewChild(&v40, v17, &v43, &v41, 1);

  v19 = TNode::ParentLock(v18);
  os_unfair_lock_lock(v19);
  TNodePtr::TNodePtr(&v43, *(this + 6));
  os_unfair_lock_unlock(v19);
  v21 = TOperation::OperationLock(v20);
  std::mutex::lock(v21);
  while (TNodeFromFINode(v43.fFINode) && v11 != 0)
  {
    v23 = TNodeFromFINode(v43.fFINode);
    TNode::IncrementReadersBelowBy(v23, v11);
    v24 = TNodeFromFINode(v43.fFINode);
    v25 = TNode::ParentLock(v24);
    os_unfair_lock_lock(v25);
    TNodePtr::TNodePtr(&v42, *(v24 + 48));
    os_unfair_lock_unlock(v25);
    TNodePtr::operator=(&v43.fFINode, &v42.fFINode);
  }

  std::mutex::unlock(v21);

  TNode::StPopulating::~StPopulating(v44);
  TNode::StPopulating::~StPopulating(&v45.fFINode);
  v26 = UseFileProviderFramework();
  if (v26)
  {
    v27 = TNode::InfoLock(v26);
    os_unfair_lock_lock(v27);
    v29 = *(this + 2);
    v28 = *(this + 3);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v27);
    os_unfair_lock_lock((v29 + 108));
    v30 = *(v29 + 123);
    os_unfair_lock_unlock((v29 + 108));
    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if ((v30 & 0x20) != 0)
    {
      v32 = TNode::GetFIProvider(this);
      v33 = v32;
      v34 = 0;
      v35 = v32 != 0;
      if (v6 && v32)
      {
        v36 = [v32 identifier];
        v37 = [v6 identifier];
        v34 = [v36 isEqualToString:v37] ^ 1;
      }

      v31 = (v6 != 0) ^ v35 | v34;
    }

    else
    {
      v31 = 0;
    }

    TNodePtr::TNodePtr(&v45, this);
    v44[0] = 0x4014000000000000;
    TNode::UpdateFPItemIfNeeded(&v45.fFINode, v44, 1, 1u, 1, v39);

    if (v31)
    {
      TNode::RestartCollections(this, 1);
      TNode::RecursiveSyncOfObserveNodes(this);
    }
  }

  return 0;
}

uint64_t TNode::Readers(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 4);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::Writers(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 12);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::ChildWriters(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

uint64_t TNode::ReadersBelow(TNode *this)
{
  v2 = TNode::OperationLockLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 5);
  if (v3)
  {
    v4 = *(v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(v2);
  return v4;
}

void TNode::DecrementReadersBelowBy(TNode *this, int a2)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  OperationLock[2]._os_unfair_lock_opaque -= a2;
  os_unfair_lock_unlock(OperationLock);

  TNode::ReleaseOperationLockWhenDone(this);
}

void TNode::IncrementReadersBelowBy(TNode *this, int a2)
{
  OperationLock = TNode::GetOperationLock(this);
  os_unfair_lock_lock(OperationLock);
  OperationLock[2]._os_unfair_lock_opaque += a2;

  os_unfair_lock_unlock(OperationLock);
}

void TNode::RestartCollections(TNode *this, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = LogObj(4);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      TNode::GetPath(this, 1, &v8);
      v6 = SanitizedPath(&v8);
      *buf = 138543362;
      *&buf[4] = v6;
      _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_DEFAULT, "Recursively restarting collections for %{public}@", buf, 0xCu);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
    }

    TNode::RecursiveChildrenAndSelf(&v8);
  }

  if (v5)
  {
    TNode::GetPath(this, 1, &v8);
    v7 = SanitizedPath(&v8);
    *buf = 138543362;
    *&buf[4] = v7;
    _os_log_impl(&dword_1E5674000, v4, OS_LOG_TYPE_DEFAULT, "Restarting collection for %{public}@", buf, 0xCu);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v8.fString.fRef);
  }

  TNode::RestartObservingCollection(this);
}

void sub_1E5743BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

uint64_t TNode::RequestSuboperation(TNodeOperationTask *a1, int a2)
{
  v3 = a2;
  if (a1)
  {
    std::allocate_shared[abi:ne200100]<TSuboperationRequest,std::allocator<TSuboperationRequest>,NodeSuboperation &,0>();
  }

  return 4294959224;
}

void sub_1E5743D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::RequestSuboperation(TNodeOperationTask *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, FINode **a6, uint64_t a7)
{
  if (!a1)
  {
    return 4294959224;
  }

  v10 = TNodeFromFINode(*a6);
  switch(a2)
  {
    case -1:
      if (v10)
      {
        return 4294959224;
      }

      goto LABEL_13;
    case 20:
      if (v10 | a4)
      {
        return 4294959224;
      }

LABEL_13:
      std::allocate_shared[abi:ne200100]<TSuboperationRequest,std::allocator<TSuboperationRequest>,NodeSuboperation &,__CFString const*&,int (*&)(__CFString const*,__CFString const*,NodeClientContext *,__CFString const**),NodeClientContext *&,TNodePtr &,OpaquePropertyListRef *&,0>();
    case 22:
      if (!v10)
      {
        return 4294959224;
      }

      break;
    default:
      if (v10)
      {
        return 4294959224;
      }

      break;
  }

  if (a3)
  {
    goto LABEL_13;
  }

  return 4294959224;
}

void sub_1E5743E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::RemoveUnmarkedChildren(TNode *this, TNodeEventPtrs *a2)
{
  TNodePtr::TNodePtr(&v26, this);
  TNode::StPopulating::StPopulating(v25, &v26.fFINode, 0);

  v4 = *(this + 7);
  if (!v4 || (v6 = *(v4 + 64), v5 = *(v4 + 72), v5 == v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *--v5;
      v9 = TNodeFromFINode(v8);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      os_unfair_lock_lock((v12 + 108));
      v13 = *(v12 + 123);
      os_unfair_lock_unlock((v12 + 108));
      if ((v13 & 0x80000000) == 0)
      {
        v14 = atomic_load((TNodeFromFINode(*v5) + 88));
        if ((v14 & 0x100) == 0)
        {
          if (*(v12 + 120) == 28)
          {
            os_unfair_lock_lock((v12 + 104));
            v15 = *(v12 + 80);
            if (v15)
            {
              os_unfair_lock_lock(v15 + 18);
              v16 = v15[76];
              os_unfair_lock_unlock(v15 + 18);
              if (v16 == 1)
              {
                v15 = *(v15 + 3);
              }

              else
              {
                v15 = 0;
              }
            }

            os_unfair_lock_unlock((v12 + 104));
            v24 = 0;
            v17 = [v15 rootURL];
            v18 = v17;
            if (v17)
            {
              v26.fFINode = v17;
              TNode::GetNodeFromURL(&v26, &v24, 0x80u);
            }

            if (TNodeFromFINode(v24))
            {
              v19 = TNodeFromFINode(v24);
              TNode::DetachFPItemsMetadata(v19);
            }

            if ([v15 isiCloudDriveProvider])
            {
              if ([v15 isDataSeparatedDomain])
              {
                TGlobalNodes::DataSeparatedICloudLibrariesContainerNode(&v26);
              }

              else
              {
                TGlobalNodes::iCloudLibrariesContainerNode(&v26);
              }

              if (TNodeFromFINode(v26.fFINode))
              {
                v20 = TNodeFromFINode(v26.fFINode);
                TNode::RemoveAllChildren(v20, 0, 0);
                atomic_fetch_and((TNodeFromFINode(v26.fFINode) + 88), 0xFFF7u);
                atomic_fetch_and((TNodeFromFINode(v26.fFINode) + 88), 0xFFEFu);
              }
            }
          }

          v21 = TNodeFromFINode(*v5);
          TNode::CloseNodeBrowserIfNecessary(v21, 0);
          v22 = TNodeFromFINode(*v5);
          TNode::Remove(v22, 0, a2);
          v7 = 1;
        }
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    while (v5 != v6);
  }

  TNode::StPopulating::~StPopulating(v25);
  return v7 & 1;
}

void sub_1E57441C4(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, ...)
{
  va_start(va, a5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

void TNode::DetachFPItemsMetadata(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  TFSInfo::UpdateFileProvider(v4, 0);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  TNode::RecursiveChildrenAndSelf(&v5);
}

void sub_1E5744318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void TNode::Remove(TNode *this, uint64_t a2, TNodeEventPtrs *a3)
{
  v6 = TNode::ParentLock(this);
  os_unfair_lock_lock(v6);
  TNodePtr::TNodePtr(&v7, *(this + 6));
  os_unfair_lock_unlock(v6);
  TNode::StPopulating::StPopulating(v8, &v7.fFINode, 0);

  if (*(this + 7))
  {
    TNode::RemoveAllChildren(this, a2, a3);
  }

  TNode::RemoveSelf(this, a3);
  TNode::StPopulating::~StPopulating(v8);
}

void sub_1E57443E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  TNode::StPopulating::~StPopulating(va);
  _Unwind_Resume(a1);
}

TNode *TNode::UnmarkChildren(TNode *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    v2 = *(v1 + 64);
    v3 = *(v1 + 72);
    while (v2 != v3)
    {
      v4 = *v2++;
      this = TNodeFromFINode(v4);
      atomic_fetch_and(this + 44, 0xFEFFu);
    }
  }

  return this;
}

void TNode::RestartObservingCollection(TNode *this)
{
  TNode::GetVolumeInfo(&v4, this);
  v2 = TFSVolumeInfo::GetSynchingGCDQueue(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN5TNode26RestartObservingCollectionEv_block_invoke;
  block[3] = &__block_descriptor_40_ea8_32c48_ZTSKZN5TNode26RestartObservingCollectionEvE3__0_e5_v8__0l;
  block[4] = this;
  dispatch_sync(v2, block);

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1E5744518(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN5TNode26RestartObservingCollectionEv_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (TChildrenList::StopCollectionStatusObserver(*(v1 + 56)))
  {
    TNodePtr::TNodePtr(buf, v1);
    v9 = 0x4014000000000000;
    TNode::UpdateFPItemIfNeeded(buf, &v9, 1, 1u, 1, &v10);
    if (v11)
    {
      fRef = v10.fString.fRef;
    }

    else
    {
      fRef = 0;
    }

    if (v11)
    {
      v3 = 0;
    }

    else
    {
      v3 = v10.fString.fRef;
    }

    if (v3)
    {
      TNode::FPItemsCollection(v1, v3);
    }

    else
    {
      TNode::FPItemsCollectionFromURL(v1);
    }
    v4 = ;
    if (v4)
    {
      v5 = *(v1 + 56);
      TNodePtr::TNodePtr(buf, v1);
      TNode::GetVolumeInfo(&v10, v1);
      v6 = TFSVolumeInfo::GetSynchingGCDQueue(v10.fString.fRef);
      TChildrenList::StartCollectionStatusObserver(v5, v4, buf, v6, 1);

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }
    }

    else
    {
      v7 = LogObj(4);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        TNode::GetPath(v1, 1, &v10);
        v8 = SanitizedPath(&v10);
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(&dword_1E5674000, v7, OS_LOG_TYPE_ERROR, "Restart observing failed, no collection found for node %{public}@", buf, 0xCu);
        TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v10.fString.fRef);
      }
    }
  }
}

void sub_1E5744700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void TNode::ClearFPItems(TNode *this)
{
  if (!TNode::IsFPv2(this, 1))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    TNode::CopyChildren(this, v8);
    v2 = v8[0];
    v3 = v8[1];
    while (v2 != v3)
    {
      v4 = *v2;
      v12 = v4;
      v13 = 0;
      if (v10 >= v11)
      {
        v7 = std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__emplace_back_slow_path<std::pair<TNodePtr,FPItem * {__strong}>>(&v9, &v12);
      }

      else
      {
        v5 = TNodePtr::TNodePtr(v10, &v12);
        v6 = v13;
        v13 = 0;
        v5[1] = v6;
        v7 = v5 + 2;
      }

      v10 = v7;

      ++v2;
    }

    v12 = v8;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v12);
    TNode::AttachFPItemsMetadata(&v9, 0, 1);
    TChildrenList::StopCollectionStatusObserver(*(this + 7));
    v8[0] = &v9;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](v8);
  }
}

void sub_1E5744894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, char a12)
{
  a9 = &a12;
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void TNode::UpdateFPItemsMetadata(uint64_t a1, void ***a2)
{
  if (*a2 != a2[1])
  {
    v4 = TNode::InfoLock(a1);
    os_unfair_lock_lock(v4);
    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock(v4);
      v7 = *(v6 + 120);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      if (v7)
      {
        return;
      }
    }

    else
    {
      os_unfair_lock_unlock(v4);
      if (*(v6 + 120))
      {
        return;
      }
    }

    if (FPProviderDomainClass() && UseFileProviderFramework())
    {
      v8 = TChildrenList::GetCollectionStatusObserver(*(a1 + 56));
      if (v8 || (TNode::GetFIProvider(a1), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
      {
        TNode::GetVolumeInfo(&v18, a1);
        v10 = TFSVolumeInfo::GetSynchingGCDQueue(v18);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEE_block_invoke;
        block[3] = &__block_descriptor_64_ea8_32c90_ZTSKZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEEE3__0_e5_v8__0l;
        v11 = v8;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&v12, *a2, a2[1], a2[1] - *a2);
        v16 = v11;
        memset(v17, 0, sizeof(v17));
        std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(v17, v12, v13, v13 - v12);
        dispatch_async(v10, block);
        v20 = &v12;
        std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v20);

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        v11 = v17;
        std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v11);
      }
    }
  }
}

void ___ZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEE_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = a1 + 40;
    v4 = *(a1 + 32);

    [v4 updateNodesFPItemsFromCollection:v3];
  }

  else
  {
    v7[3] = v1;
    v7[4] = v2;
    v5 = 0x4024000000000000;
    TNode::UpdateFPItemsIfNeeded((a1 + 40), &v5, 1, 1u, 1, v6);
    v7[0] = v6;
    std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](v7);
  }
}

uint64_t *__copy_helper_block_ea8_32c90_ZTSKZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEEE3__0(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  a1[5] = 0;
  a1[4] = v4;
  a1[6] = 0;
  a1[7] = 0;
  return std::vector<TNodePtr>::__init_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(a1 + 5, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void __destroy_helper_block_ea8_32c90_ZTSKZN5TNode21UpdateFPItemsMetadataERKNSt3__16vectorI8TNodePtrNS0_9allocatorIS2_EEEEE3__0(uint64_t a1)
{
  v2 = (a1 + 40);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v2);
}

id *TNode::UpdateFPItemsMetadata(std::vector<TNodePtr> const&)::$_0::~$_0(id *a1)
{
  v3 = a1 + 1;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v3);

  return a1;
}

void TNode::Synchronize(std::__shared_weak_count **a1, void *a2, int a3)
{
  if ((a3 & 0x10000) != 0)
  {
    v4 = 268959744;
  }

  else
  {
    v4 = 285212672;
  }

  if (*a2)
  {
LABEL_7:

    TNode::RequestSynchronize(a1, 0);
    return;
  }

  v5 = TNode::InfoLock(a1);
  os_unfair_lock_lock(v5);
  v7 = a1[2];
  v6 = a1[3];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v5);
    v8 = LOBYTE(v7[5].__vftable);
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    os_unfair_lock_unlock(v5);
    if (LOBYTE(v7[5].__vftable))
    {
      goto LABEL_7;
    }
  }

  TNode::HandleSync(a1, v4);
}

void TNode::FPItemFromURLWithTimeout(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v6 = FPItemManagerInstance();

    if (v6)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, a1);
      std::__function::__value_func<void ()(FPItem *,NSError *)>::__value_func[abi:ne200100](v8, a2);
      v9 = 0;
      operator new();
    }
  }

  if (*(a2 + 24))
  {
    std::function<void ()(FPItem *,NSError *)>::operator()(a2, 0, 0);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_1E5744EB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  std::__function::__value_func<void ()(__CFURL const*,FPItem *,NSError *)>::~__value_func[abi:ne200100](va2);
  std::__function::__value_func<void ()(FPItem *,NSError *)>::~__value_func[abi:ne200100](va1);
  TAutoRef<__CFArray *,TRetainReleasePolicy<__CFArray *>>::~TAutoRef(va);
  _Unwind_Resume(a1);
}

void std::function<void ()(FPItem *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &v7, &v6);
}

uint64_t TNode::FPItemsFromURLsWithTimeout(__CFArray const*,std::chrono::duration<double,std::ratio<1l,1l>>,std::function<void ()(__CFURL const*,FPItem *,NSError *)> const&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void std::function<void ()(FPProviderDomain *,FPItem *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = *(a1 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(v7, &v10, &v9, &v8);
}

uint64_t TNode::RootFPItemsForDomainsWithTimeout(NSArray<FPProviderDomain *> *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPProviderDomain *,FPItem *,NSError *)> const&)::$_1::~$_1(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__function::__value_func<void ()(FPProviderDomain *,FPItem *,NSError *)>::~__value_func[abi:ne200100](a1 + 16);

  return a1;
}

uint64_t TNode::RootFPItemsForDomainsWithTimeout(NSArray<FPProviderDomain *> *,std::chrono::duration<double,std::ratio<1l,1l>> const&,std::function<void ()(FPProviderDomain *,FPItem *,NSError *)> const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

void TNode::RootNodeForFPDomain(TNode *this@<X0>, const TString *a2@<X1>, TNodePtr *a3@<X8>)
{
  v3 = a2;
  v55 = *MEMORY[0x1E69E9840];
  if ((UseFileProviderFramework() & 1) != 0 && FPProviderDomainClass())
  {
    Length = CFStringGetLength(*this);
    TGlobalNodes::AllProvidersNode(&v48);
    v6 = TNodeFromFINode(v48);
    if ((TNode::IsPopulated(v6) & 1) == 0)
    {
      if (Length)
      {
        v7 = LogObj(4);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        LOWORD(buf) = 0;
        v8 = "Providers not yet loaded perform manual lookup for other";
        v9 = v7;
        v10 = 2;
      }

      else
      {
        v7 = LogObj(4);
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        v11 = "Main";
        if (v3)
        {
          v11 = "DataSeparated";
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v11;
        v8 = "Providers not loaded perform manual lookup for %{public}s iCloud";
        v9 = v7;
        v10 = 12;
      }

      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_INFO, v8, &buf, v10);
LABEL_15:

      operator new();
    }

    buf = 0uLL;
    v54 = 0;
    TNode::StPopulating::StPopulating(cf1, &v48, 0);
    v12 = *(TNodeFromFINode(v48) + 56);
    if (v12)
    {
      v13 = (v12 + 64);
    }

    else
    {
      v13 = &TNode::GetChildren(void)const::sEmptyList;
    }

    if (&buf != v13)
    {
      std::vector<TNodePtr>::__assign_with_size[abi:ne200100]<TNodePtr*,TNodePtr*>(&buf, *v13, v13[1], v13[1] - *v13);
    }

    TNode::StPopulating::~StPopulating(cf1);
    v14 = *(&buf + 1);
    v15 = buf;
    if (buf != *(&buf + 1))
    {
      do
      {
        v16 = TNodeFromFINode(*v15);
        v17 = TNode::GetFIProvider(v16);
        v18 = [v17 domain];
        if (v18 && ([v17 domain], v19 = objc_claimAutoreleasedReturnValue(), v20 = IsDefaultFPDomain(v19), v19, v18, v20))
        {
        }

        else if (Length)
        {
          v21 = [v17 identifier];
          *cf1 = &stru_1F5F42870;
          CFRetain(&stru_1F5F42870);
          TString::SetStringRefAsImmutable(cf1, v21);

          v22 = CFEqual(*cf1, *this) == 0;
          TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(cf1);

          if (!v22)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v3)
          {
            v23 = [v17 isDataSeparatedDomain];
          }

          else
          {
            v23 = [v17 isMainiCloudDriveDomain];
          }

          v24 = v23;

          if (v24)
          {
            goto LABEL_34;
          }
        }

        ++v15;
      }

      while (v15 != v14);
      v15 = v14;
LABEL_34:
      v14 = *(&buf + 1);
    }

    if (v15 == v14)
    {
      TNodePtr::TNodePtr(v52, 0);
    }

    else
    {
      *cf1 = *v15;
      cf1[8] = 1;
      TNodePtr::TNodePtr(v52, cf1);
      if (cf1[8])
      {
      }
    }

    if (!Length && TNodeFromFINode(*v52))
    {
      v25 = LogObj(4);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        if (v3)
        {
          v26 = "Enterprise";
        }

        else
        {
          v26 = "";
        }

        v27 = TNodeFromFINode(*v52);
        v28 = TNode::GetFIProvider(v27);
        v29 = [v28 identifier];
        *cf1 = 136446466;
        *&cf1[4] = v26;
        v50 = 2114;
        v51 = v29;
        _os_log_impl(&dword_1E5674000, v25, OS_LOG_TYPE_INFO, "FPProvider for %{public}s iCloud Drive is %{public}@", cf1, 0x16u);
      }
    }

    if (TNodeFromFINode(*v52))
    {
      v30 = TNodeFromFINode(*v52);
      v31 = TNode::GetFIProvider(v30);
      v32 = [v31 supportsEnumeration];

      if (v32)
      {
        v33 = TNodeFromFINode(*v52);
        v34 = TNode::GetFIProvider(v33);
        v35 = [v34 domain];
        v36 = [v35 isEnabled];

        if (v36)
        {
          TNodePtr::TNodePtr(a3, v52);
        }

        else
        {
          v47.fFINode = 0;
          v41 = [v34 rootURL];
          if (v41)
          {
            if ([v34 isiCloudDriveProvider])
            {
              v42 = [v41 URLByAppendingPathComponent:@"com~apple~CloudDocs" isDirectory:1];

              v41 = v42;
            }

            *cf1 = v41;
            TNode::GetNodeFromURL(cf1, &v47, 0);
            TNodePtr::TNodePtr(a3, &v47);
          }

          else
          {
            v43 = LogObj(4);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v44 = TNodeFromFINode(*v52);
              v45 = TNode::GetFIProvider(v44);
              *cf1 = 138543362;
              *&cf1[4] = v45;
              _os_log_impl(&dword_1E5674000, v43, OS_LOG_TYPE_ERROR, "FPProvider storageURLs is empty for %{public}@", cf1, 0xCu);
            }

            TNodePtr::TNodePtr(a3, 0);
          }
        }

        goto LABEL_70;
      }
    }

    if (Length)
    {
      v37 = LogObj(4);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = *this;
        *cf1 = 138543362;
        *&cf1[4] = v38;
        v39 = v38;
        _os_log_impl(&dword_1E5674000, v37, OS_LOG_TYPE_INFO, "Could not find a provider for %{public}@ ", cf1, 0xCu);
      }

      goto LABEL_64;
    }

    if (v3)
    {
      v37 = LogObj(4);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *cf1 = 0;
        v40 = "Could not find a provider which is isDataSeparatedDomain";
LABEL_63:
        _os_log_impl(&dword_1E5674000, v37, OS_LOG_TYPE_INFO, v40, cf1, 2u);
      }
    }

    else
    {
      v37 = LogObj(4);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *cf1 = 0;
        v40 = "Could not find a provider which is isMainiCloudDriveDomain";
        goto LABEL_63;
      }
    }

LABEL_64:

    TNodePtr::TNodePtr(a3, 0);
LABEL_70:

    *cf1 = &buf;
    std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](cf1);

    return;
  }

  TNodePtr::TNodePtr(a3, 0);
}

void sub_1E5745B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void **a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  a25 = (v31 - 144);
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a25);

  _Unwind_Resume(a1);
}

void ___ZN5TNode19RootNodeForFPDomainERK7TStringb_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v8)
  {
    v9 = LogObj(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v29 = v8;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "Failed to begin local provider lookup with error %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (CFStringGetLength(*(a1 + 56)))
  {
    v10 = *(a1 + 56);
    v11 = [v7 objectForKeyedSubscript:v10];
    v12 = *(a1 + 32);
    v13 = *v12;
    *v12 = v11;

    goto LABEL_24;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v7 allValues];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:buf count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = *v23;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v23 != v16)
      {
        objc_enumerationMutation(v14);
      }

      v18 = *(*(&v22 + 1) + 8 * i);
      if (*(a1 + 64) == 1)
      {
        if ([*(*(&v22 + 1) + 8 * i) isDataSeparatedDomain])
        {
          objc_storeStrong(*(a1 + 32), v18);
          v19 = LogObj(4);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v21 = [v18 identifier];
            *v26 = 138543362;
            v27 = v21;
            _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_INFO, "FPProvider for Enterprise iCloud Drive is %{public}@", v26, 0xCu);
          }

          goto LABEL_23;
        }

        if (*(a1 + 64))
        {
          continue;
        }
      }

      if ([v18 isMainiCloudDriveDomain])
      {
        objc_storeStrong(*(a1 + 32), v18);
        v19 = LogObj(4);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = [v18 identifier];
          *v26 = 138543362;
          v27 = v20;
          _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_INFO, "FPProvider for iCloud Drive is %{public}@", v26, 0xCu);
        }

LABEL_23:

        goto LABEL_24;
      }
    }

    v15 = [v14 countByEnumeratingWithState:&v22 objects:buf count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_18:

LABEL_24:
  dispatch_semaphore_signal(*(a1 + 48));
}

void __copy_helper_block_ea8_32c51_ZTSKZN5TNode19RootNodeForFPDomainERK7TStringbE3__1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 48);
  *(a1 + 56) = &stru_1F5F42870;
  *(a1 + 48) = v5;
  CFRetain(&stru_1F5F42870);
  TString::SetStringRefAsImmutable((a1 + 56), *(a2 + 56));
  *(a1 + 64) = *(a2 + 64);
}

void sub_1E57461AC(_Unwind_Exception *a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(v2);

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c51_ZTSKZN5TNode19RootNodeForFPDomainERK7TStringbE3__1(uint64_t a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 56));

  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t TNode::RootNodeForFPDomain(TString const&,BOOL)::$_1::~$_1(uint64_t a1)
{
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef((a1 + 24));

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void TNode::NodeForDomainAndItemID(TNode *this@<X0>, const TString *a2@<X1>, TNodePtr *a3@<X8>)
{
  TNode::RootNodeForFPDomain(this, 0, &v18);
  if (CFStringGetLength(a2->fString.fRef) && TNodeFromFINode(v18) && (NS_FileProviderRootContainerItemIdentifier(), v5 = objc_claimAutoreleasedReturnValue(), v6 = operator==(&a2->fString.fRef, v5), v5, !v6))
  {
    v7 = TNodeFromFINode(v18);
    v8 = TNode::GetFIProvider(v7);
    v9 = [v8 domain];
    v10 = [v9 isEnabled];

    if (v10)
    {
      v11 = v18;
      v12 = TNodeFromFINode(v11);
      v13 = TNode::GetFIProvider(v12);
      v14 = [v13 identifier];
      v19.fString.fRef = &stru_1F5F42870;
      CFRetain(&stru_1F5F42870);
      TString::SetStringRefAsImmutable(&v19, v14);

      v15 = FPItemManagerInstance();

      if (v15)
      {
        dispatch_semaphore_create(0);
        operator new();
      }

      v16 = v11;
      v20 = v16;
      v17.fFINode = &v20;
      NodeForProviderWithFPItem(v17, 0, a3);

      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v19.fString.fRef);
    }

    else
    {
      TNodePtr::TNodePtr(a3, 0);
    }
  }

  else
  {
    TNodePtr::TNodePtr(a3, &v18);
  }
}

void sub_1E5746548(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v14 = va_arg(va1, const void *);
  FPItemForProviderWithID(TString const&,TString const&)::$_0::~$_0(v12 + 32);
  FPItemForProviderWithID(TString const&,TString const&)::$_0::~$_0(va1);

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);

  _Unwind_Resume(a1);
}

void NodeForProviderWithFPItem(TNodePtr a1@<0:X0>, FPItem *a2@<X1>, TNodePtr *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5 && TNodeFromFINode(a1.fFINode->super.isa) && (FPItemManagerInstance(), v6 = objc_claimAutoreleasedReturnValue(), v6, v6) && ([(FPItem *)v5 fileURL], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    a3->fFINode = 0;
    v8 = [(FPItem *)v5 fileURL];
    v14[0] = v8;
    TNode::GetNodeFromURL(v14, a3, 0);

    if (TNodeFromFINode(a3->fFINode))
    {
      v9 = TNodeFromFINode(a3->fFINode);
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      v13 = TFSInfo::GetFPItem(v12);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      if (!v13)
      {
        v16 = a3->fFINode;
        v17 = v5;
        memset(v14, 0, sizeof(v14));
        std::vector<std::pair<TNodePtr,FPItem * {__strong}>>::__init_with_size[abi:ne200100]<std::pair<TNodePtr,FPItem * {__strong}> const*,std::pair<TNodePtr,FPItem * {__strong}> const*>(v14, &v16, &v18, 1uLL);
        TNode::AttachFPItemsMetadata(v14, 1, 1);
        v15 = v14;
        std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&v15);
      }
    }
  }

  else
  {
    TNodePtr::TNodePtr(a3, 0);
  }
}

void sub_1E57467E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, id a14, id a15)
{
  std::vector<std::pair<TNodePtr,TNodePtr>>::__destroy_vector::operator()[abi:ne200100](&a13);

  _Unwind_Resume(a1);
}

const void **TNode::FPItemNodeFromObjectID@<X0>(TNodePtr *__return_ptr a1@<X8>, TString *this@<X0>)
{
  v12.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  v11.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  TString::TString(&cf, "/");
  v4 = TString::IndexOf(this, &cf, 0);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
  if (v4 < 0)
  {
    if (&v12 != this)
    {
      TString::SetStringRefAsImmutable(&v12, this->fString.fRef);
    }
  }

  else if (v4)
  {
    TString::SubString(&cf, this, 0, v4);
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v12.fString.fRef, &cf);
    CFRetain(&stru_1F5F42870);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = &stru_1F5F42870;
    TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    if (v4 < CFStringGetLength(this->fString.fRef) - 1)
    {
      TString::SubStringFrom(&cf, this, v4 + 1);
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::operator=<__CFString const*,TRetainReleasePolicy<__CFString const*>>(&v11.fString.fRef, &cf);
      CFRetain(&stru_1F5F42870);
      if (cf)
      {
        CFRelease(cf);
      }

      cf = &stru_1F5F42870;
      TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&cf);
    }
  }

  v5 = v12.fString.fRef;
  v6 = [(__CFString *)v5 stringByRemovingPercentEncoding];
  if (v12.fString.fRef != v6)
  {
    TString::SetStringRefAsImmutable(&v12, v6);
  }

  v7 = v11.fString.fRef;
  v8 = [(__CFString *)v7 stringByRemovingPercentEncoding];
  if (v11.fString.fRef != v8)
  {
    TString::SetStringRefAsImmutable(&v11, v8);
  }

  TNode::NodeForDomainAndItemID(&v12, &v11, a1);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v11.fString.fRef);
  return TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(&v12.fString.fRef);
}

void sub_1E5746A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va);
  TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>::~TRef(va1);
  _Unwind_Resume(a1);
}

void TNode::ResolveBRContainer(TNode *this)
{
  if (ICloudDriveFPFSEnabled())
  {
    TNode::CFURL(&v14, this);
    v2 = v14.fFINode;
    TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>::~TRef(&v14.fFINode);
  }

  else
  {
    v2 = 0;
  }

  TNodePtr::TNodePtr(&v14, this);
  fFINode = v14.fFINode;
  if (v2)
  {
    v13.fFINode = v2;
    v14.fFINode = 0;
    TNode::GetNodeFromURL(&v13, &v14, 0);
    if (TNodeFromFINode(v14.fFINode))
    {
      v4 = +[FIPresentationNodeMap shared];
      v5 = [v4 presentationNodeForKeyNode:v14.fFINode];
      v6 = objc_cast<FIDSNode,FINode * {__strong}>(v5);

      if (v6 && v6 != fFINode)
      {

        v7 = 1;
        goto LABEL_13;
      }

      if (v6)
      {
LABEL_17:

        goto LABEL_18;
      }
    }

    v7 = 0;
LABEL_13:
    TNode::SetAliasTarget(this, &v14, 0);
    if (fFINode && TNodeFromFINode(v14.fFINode))
    {
      v9 = +[FIPresentationNodeMap shared];
      [v9 registerPresentationNode:fFINode forNode:v14.fFINode clearOlderKeyNodes:v7];

      v10 = TNodeFromFINode(v14.fFINode);
      v11 = TNode::ParentLock(v10);
      os_unfair_lock_lock(v11);
      TNodePtr::TNodePtr(&v13, *(v10 + 48));
      os_unfair_lock_unlock(v11);
      v12 = +[FIPresentationNodeMap shared];
      [v12 registerPresentationNode:fFINode forNode:v13.fFINode];
    }

    v6 = 0;
    goto LABEL_17;
  }

  TNode::ClearAliasTarget(this, 0);
  if (fFINode)
  {
    v8 = +[FIPresentationNodeMap shared];
    [v8 unregisterAllForPresentationNode:fFINode];
  }

LABEL_18:
}

uint64_t TNode::AddNewChildren(uint64_t a1, TNodePtr **a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v5 = TChildrenList::AddNewChildren(*(a1 + 56), a2, a3, a4, &v10, a5);
  v6 = v10;
  v7 = v11;
  while (v6 != v7)
  {
    v8 = TNodeFromFINode(*v6);
    TNode::RemoveSelf(v8, 0);
    ++v6;
  }

  v13 = &v10;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&v13);
  return v5;
}

void sub_1E5746DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<TNodePtr>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void ___ZN5TNode11AddNewChildERK8TNodePtrRbbb_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = TNodeFromFINode(*(a1 + 32));
  TNode::AttachCreateFPItemIfNeeded(v2, 1);
  v3 = TNodeFromFINode(*(a1 + 32));
  v4 = TNode::InfoLock(v3);
  os_unfair_lock_lock(v4);
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v4);
  v7 = TFSInfo::GetFPItem(v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7)
  {
    v8 = LogObj(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = TNodeFromFINode(*(a1 + 32));
      v10 = TNode::InfoLock(v9);
      os_unfair_lock_lock(v10);
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v10);
      v13 = TFSInfo::GetFPItem(v12);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      v14 = 138543362;
      v15 = v13;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_DEFAULT, "FPItem found asynchronously %{public}@", &v14, 0xCu);
    }
  }
}

void sub_1E5746F30(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c47_ZTSKZN5TNode11AddNewChildERK8TNodePtrRbbbE3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void TNode::UnRegisterForUbiquityAttributes(TNode *this)
{
  v1 = *(this + 7);
  if (v1)
  {
    TChildrenList::ClearCollectionStatusObserver(v1);
  }
}

uint64_t TNode::SetPrefetchPropertiesOnSync(TNode *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_12;
  }

  StRegistrationLock::StRegistrationLock(&v8);
  v4 = TFSVolumeInfo::ShouldUseReadDir(v3) && TNode::ShouldUseReadDir(this);
  atomic_fetch_or(this + 44, 0x800u);
  Dir = TFSVolumeInfo::ShouldUseReadDir(v3);
  if (Dir)
  {
    Dir = TNode::ShouldUseReadDir(this);
  }

  v5 = v4 ^ Dir;
  StRegistrationLock::~StRegistrationLock(&v8);
  if (v2)
  {
LABEL_12:
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return v5;
}

void sub_1E574706C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

BOOL TNode::ShouldUseReadDir(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v5)
    {
      return 0;
    }
  }

  else
  {
    os_unfair_lock_unlock(v2);
    if (*(v4 + 120))
    {
      return 0;
    }
  }

  v6 = atomic_load(this + 44);
  if ((v6 & 0x800) == 0)
  {
    IsLocalVolume = TNode::IsLocalVolume(this);
    if ((IsLocalVolume & 1) == 0)
    {
      TGlobalNodes::BootNode(&v10, IsLocalVolume);
      v8 = TNodeFromFINode(v10) != this;

      return v8;
    }
  }

  return 0;
}

void *std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>::__emplace_back_slow_path<std::pair<TNodePtr,std::shared_ptr<TFSInfo>>>(a1, a2);
  }

  else
  {
    v5 = TNodePtr::TNodePtr(v4, a2);
    *(v5 + 1) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = v5 + 3;
  }

  a1[1] = result;
  return result;
}

uint64_t std::pair<TNodePtr,std::shared_ptr<TFSInfo>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *std::vector<TNodePtr>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<TNodePtr>::__emplace_back_slow_path<TNodePtr>(a1, a2);
  }

  else
  {
    result = TNodePtr::TNodePtr(v3, a2) + 1;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t TNode::ScheduleFPOperation(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v13 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = FPItemManagerInstance();

  if (v7)
  {
    TFPOperationRegistry::Register(v5, v3);
    v8 = LogObj(4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1E5674000, v8, OS_LOG_TYPE_DEFAULT, "Scheduling FPOperation: %{public}@", &v11, 0xCu);
    }

    v9 = FPItemManagerInstance();
    [v9 scheduleAction:v5];

    if (dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = 0;
    }

    else
    {
      v7 = [v5 isCancelled] ^ 1;
    }

    TFPOperationRegistry::UnRegister(v5);
  }

  return v7;
}

void TFPOperationRegistry::Register(void *a1, int a2)
{
  v6 = a1;
  v3 = TFPOperationRegistry::Lock(v6);
  os_unfair_lock_lock(v3);
  FPOperationRegistry = TFPOperationRegistry::GetFPOperationRegistry(v4);
  v7 = &v6;
  *(std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::__emplace_unique_key_args<FPActionOperation * {__strong},std::piecewise_construct_t const&,std::tuple<FPActionOperation * const {__strong}&>,std::tuple<>>(FPOperationRegistry, &v6, &std::piecewise_construct, &v7) + 6) = a2;
  os_unfair_lock_unlock(v3);
}

void TFPOperationRegistry::UnRegister(void *a1)
{
  v4 = a1;
  v1 = TFPOperationRegistry::Lock(v4);
  os_unfair_lock_lock(v1);
  FPOperationRegistry = TFPOperationRegistry::GetFPOperationRegistry(v2);
  std::__hash_table<std::__hash_value_type<FPActionOperation * {__strong},int>,std::__unordered_map_hasher<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::hash<FPActionOperation * {__strong}>,std::equal_to<FPActionOperation * {__strong}>,true>,std::__unordered_map_equal<FPActionOperation * {__strong},std::__hash_value_type<FPActionOperation * {__strong},int>,std::equal_to<FPActionOperation * {__strong}>,std::hash<FPActionOperation * {__strong}>,true>,std::allocator<std::__hash_value_type<FPActionOperation * {__strong},int>>>::__erase_unique<FPActionOperation * {__strong}>(FPOperationRegistry, &v4);
  os_unfair_lock_unlock(v1);
}

void TFPOperationRegistry::CancelOperations(TFPOperationRegistry *this)
{
  v1 = this;
  v2 = TFPOperationRegistry::Lock(this);
  os_unfair_lock_lock(v2);
  for (i = *(TFPOperationRegistry::GetFPOperationRegistry(v3) + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = v5;
    if (!v1 || *(i + 6) == v1)
    {
      [v5 cancel];
    }
  }

  os_unfair_lock_unlock(v2);
}

uint64_t TNode::Delete(uint64_t a1, NSObject ***a2, TDSOperationRecord **a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9)
{
  v16 = a9;
  v17 = TNode::ParentLock(v16);
  os_unfair_lock_lock(v17);
  TNodePtr::TNodePtr(&v47, *(a1 + 48));
  os_unfair_lock_unlock(v17);
  v46 = 0;
  if (!TNodeFromFINode(v47.fFINode))
  {
    v19 = 4294959238;
LABEL_30:
    if (v46)
    {
      if (*a2)
      {
        v19 = TOperation::ReportError(*a2, &v46);
      }

      else
      {
        v19 = *(v46 + 2);
      }
    }

    goto LABEL_34;
  }

  if (*a2)
  {
    v18 = *(*a2 + 658);
  }

  else
  {
    v18 = 0;
  }

  TFileCoordinationRecord::TFileCoordinationRecord(v45, v18);
  v43 = 0;
  v44 = 0;
  if (a7)
  {
    v21 = TNode::InfoLock(v20);
    os_unfair_lock_lock(v21);
    v22 = *(a1 + 24);
    v38 = *(a1 + 16);
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v21);
    v19 = TFileCoordinationRecord::CoordinateWriting(v45, &v38, 1, &v43);
    v24 = v39;
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v19)
    {
      v25 = 0;
      goto LABEL_27;
    }

    v26 = v43;
    v27 = TNode::InfoLock(v24);
    os_unfair_lock_lock(v27);
    v28 = *(a1 + 24);
    v38 = *(a1 + 16);
    v39 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v27);
    v29 = TFSInfo::Equal(v26, &v38);
    v20 = v39;
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if ((v29 & 1) == 0)
    {
      TNode::SetFSInfo(a1, &v43, 1);
    }
  }

  v30 = TNode::InfoLock(v20);
  os_unfair_lock_lock(v30);
  v31 = *(a1 + 24);
  v41 = *(a1 + 16);
  v42 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v30);
  if (!LOBYTE(v41[30]._os_unfair_lock_opaque))
  {
    if (IsRunningInFinder())
    {
      v19 = 4294967249;
      goto LABEL_24;
    }

    TNode::GetVolumeInfo(&v38, a1);
    if (*a2)
    {
      CanAuthenticate = TOperation::CanAuthenticate(*a2, a3);
      v34 = *a2;
      LODWORD(v37[0]) = 0;
      if (v34)
      {
        Resolution = TDSOperationRecord::GetResolution(*a3);
        v36 = ((*v34)[34].isa)(v34, &v41, Resolution, a5, a6, v16);
        goto LABEL_42;
      }
    }

    else
    {
      CanAuthenticate = 0;
      LODWORD(v37[0]) = 0;
    }

    v36 = TNode::Deleting(&v41, CanAuthenticate, v37, a5, a6, &v46);
LABEL_42:
    v19 = v36;
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (v19 != 0 && v19 < 0xFFFFFFD5 || ((1 << (v19 + 43)) & 0x80000000101) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v19 = 0;
LABEL_23:
  v38 = 0;
  v39 = 0;
  v40 = 0;
  TNode::StPopulating::StPopulating(v37, &v47.fFINode, 0);
  TNode::Remove(a1, a4, &v38);
  TNode::StPopulating::~StPopulating(v37);
  TNodeEventPtrs::SendNotifications(&v38);
  v37[0] = &v38;
  std::vector<std::pair<TNodePtr,TNodeEventPtr>>::__destroy_vector::operator()[abi:ne200100](v37);
LABEL_24:
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  v25 = 1;
LABEL_27:
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  TFileCoordinationRecord::~TFileCoordinationRecord(v45, v23);
  if (v25)
  {
    goto LABEL_30;
  }

LABEL_34:
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef(&v46);

  return v19;
}

void sub_1E57478D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, ...)
{
  va_start(va, a18);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  TFileCoordinationRecord::~TFileCoordinationRecord(va, a2);
  TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::~TRef((v19 - 96));

  _Unwind_Resume(a1);
}

uint64_t TNode::Deleting(os_unfair_lock_s **a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4;
  v9 = *a1;
  os_unfair_lock_lock(*a1 + 27);
  v10 = *(&v9[30]._os_unfair_lock_opaque + 3);
  os_unfair_lock_unlock(v9 + 27);
  if ((v10 & 0x20) != 0)
  {
    v13 = *a1;
    os_unfair_lock_lock(*a1 + 27);
    v14 = *(&v13[30]._os_unfair_lock_opaque + 3);
    os_unfair_lock_unlock(v13 + 27);
    v15 = *a1;
    os_unfair_lock_lock(*a1 + 27);
    v16 = *(&v15[30]._os_unfair_lock_opaque + 3);
    os_unfair_lock_unlock(v15 + 27);
    if ((v16 & 0x20) != 0)
    {
      v17 = (v14 >> 1) & 1;
    }

    else
    {
      v17 = 1;
    }

    if (v17 == 1)
    {
      if ((v14 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v18 = *a1;
      os_unfair_lock_lock(*a1 + 27);
      v19 = *(&v18[30]._os_unfair_lock_opaque + 3);
      os_unfair_lock_unlock(v18 + 27);
      if (v19)
      {
LABEL_15:
        v20 = *a1;
        os_unfair_lock_lock(*a1 + 27);
        v21 = *&v20[4]._os_unfair_lock_opaque;
        if (v21)
        {
          CFRetain(v21);
        }

        os_unfair_lock_unlock(v20 + 27);
        TCFURLInfo::GetBasicInfoPropertyKeys(v22);
        operator new();
      }
    }

    ++*a3;
    goto LABEL_15;
  }

  v11 = TFSInfo::Delete(*a1, 0, v6);
  if (v11 == -43)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == -128)
  {
    TOperationErrorRecord::Make(5, 4294967168, 0, a1, 1, 0);
  }

  return v12;
}

TOperationErrorRecord **TRef<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>::operator=<TOperationErrorRecord *,TRetainReleasePolicy<TOperationErrorRecord *>>(TOperationErrorRecord **a1, TOperationErrorRecord **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    if (*a1)
    {
      TOperationErrorRecord::RemovePtrReference(v4);
    }

    *a1 = *a2;
    *a2 = 0;
  }

  return a1;
}

void TNode::RemoveChildrenDeep(FINode ***a1, uint64_t a2, int a3, TNodeEventPtrs *a4)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 != *a1)
  {
    if ((a2 & 2) == 0)
    {
      a3 = 1;
    }

    do
    {
      v9 = *--v4;
      v10 = TNodeFromFINode(v9);
      v11 = TNode::InfoLock(v10);
      os_unfair_lock_lock(v11);
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v11);
      os_unfair_lock_lock((v13 + 108));
      v14 = *(v13 + 123);
      os_unfair_lock_unlock((v13 + 108));
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      if (v14 < 0)
      {
        continue;
      }

      v15 = TNodeFromFINode(*v4);
      v16 = TNode::InfoLock(v15);
      os_unfair_lock_lock(v16);
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v16);
      os_unfair_lock_lock((v18 + 108));
      v19 = *(v18 + 123);
      os_unfair_lock_unlock((v18 + 108));
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if ((v19 & 4) != 0)
      {
        v20 = TNodeFromFINode(*v4);
        TDeviceManagementMonitor::UnRegisterApp(v20, v21);
      }

      v22 = TNodeFromFINode(*v4);
      v23 = TNode::InfoLock(v22);
      os_unfair_lock_lock(v23);
      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      os_unfair_lock_unlock(v23);
      os_unfair_lock_lock((v25 + 108));
      v26 = *(v25 + 123);
      os_unfair_lock_unlock((v25 + 108));
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if ((v26 & 0x20) != 0)
      {
        v27 = TNodeFromFINode(*v4);
        if ((a3 & TNode::RemoveAllChildren(v27, a2, a4)) == 1)
        {
LABEL_24:
          if (a2)
          {
            TNodeFromFINode(*v4);
          }

          v28 = TNodeFromFINode(*v4);
          TNode::RemoveSelf(v28, a4);
        }
      }

      else if (a3)
      {
        goto LABEL_24;
      }
    }

    while (v4 != v5);
  }
}

uint64_t TNode::UserCanRead(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return (v5 >> 12) & 1;
}

uint64_t TFSInfo::UserCanWrite(TFSInfo *this)
{
  os_unfair_lock_lock(this + 27);
  v2 = (*(this + 123) >> 13) & 1;
  os_unfair_lock_unlock(this + 27);
  return v2;
}

uint64_t TNode::IsSticky(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  os_unfair_lock_lock((v4 + 108));
  v5 = *(v4 + 123);
  os_unfair_lock_unlock((v4 + 108));
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if ((v5 & 0x20) == 0)
  {
    return 0;
  }

  v8 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  v7 = (TFSInfo::GetMode(v10) >> 9) & 1;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return v7;
}

void sub_1E5748048(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::UserCanChangePermissions(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v2);
  IsRoot = TFSInfo::UserIsRoot(v4);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  IsOwner = TNode::UserIsOwner(this);
  if (!IsRoot)
  {
    return IsOwner;
  }

  TNode::GetVolumeInfo(&v9, this);
  v7 = *(v9 + 107);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return v7;
}

void sub_1E5748100(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::UserIsOwner(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (v5)
    {
      return 1;
    }
  }

  else
  {
    os_unfair_lock_unlock(v2);
    if (*(v4 + 120))
    {
      return 1;
    }
  }

  v8 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v8);
  v10 = *(this + 2);
  v9 = *(this + 3);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v8);
  IsOwner = TFSInfo::UserIsOwner(v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return IsOwner;
}

void sub_1E57481D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TNode::UserCanListContent(TNode *this)
{
  v2 = TNode::InfoLock(this);
  os_unfair_lock_lock(v2);
  v4 = *(this + 2);
  v3 = *(this + 3);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  else
  {
    os_unfair_lock_unlock(v2);
    v5 = *(v4 + 120);
  }

  v7 = TNode::InfoLock(v6);
  os_unfair_lock_lock(v7);
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (!v5)
  {
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v7);
    os_unfair_lock_lock((v9 + 108));
    v12 = *(v9 + 123);
    os_unfair_lock_unlock((v9 + 108));
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if ((v12 & 0x20) == 0)
    {
      return 0;
    }

    v15 = TNode::InfoLock(v13);
    os_unfair_lock_lock(v15);
    v17 = *(this + 2);
    v16 = *(this + 3);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock(v15);
    os_unfair_lock_lock((v17 + 108));
    v14 = (*(v17 + 123) >> 14) & 1;
    os_unfair_lock_unlock((v17 + 108));
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    return v14;
  }

  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v7);
  os_unfair_lock_lock((v9 + 108));
  v10 = *(v9 + 123);
  os_unfair_lock_unlock((v9 + 108));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 0x20) != 0)
  {
    return 1;
  }

  return TNode::AliasIsContainer(this);
}

uint64_t TNode::UserCanDelete(TNode *this)
{
  ExtendedUserAccess = TNode::FetchExtendedUserAccess(this);
  if (!ExtendedUserAccess)
  {
    return 1;
  }

  v3 = TNode::InfoLock(ExtendedUserAccess);
  os_unfair_lock_lock(v3);
  v5 = *(this + 2);
  v4 = *(this + 3);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock(v3);
  os_unfair_lock_lock((v5 + 108));
  v6 = (*(v5 + 123) >> 22) & 1;
  os_unfair_lock_unlock((v5 + 108));
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v6;
}