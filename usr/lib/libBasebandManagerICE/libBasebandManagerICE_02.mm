void sub_29748FE34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_29748FE74(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    JUMPOUT(0x29748FE80);
  }

  _Unwind_Resume(a1);
}

void sub_29748FE90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    boost::checked_delete<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_29748FEB0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    boost::detail::shared_count::~shared_count(v3);
    boost::signals2::detail::connection_body_base::~connection_body_base(v2);
    operator delete(v4);
    JUMPOUT(0x297490350);
  }

  _Unwind_Resume(a1);
}

void sub_29748FECC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FED4);
  }

  _Unwind_Resume(a1);
}

void sub_29748FEE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FEE8);
  }

  _Unwind_Resume(a1);
}

void sub_29748FEF8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(&STACK[0x6A0]);
    boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748FF20(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FF28);
  }

  _Unwind_Resume(a1);
}

void sub_29748FF54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x29748FF5CLL);
  }

  _Unwind_Resume(a1);
}

void sub_29748FFE0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29748FFFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_297490004(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29749000C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(&STACK[0x690]);
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
    boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_297490020(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::~shared_ptr(&STACK[0x690]);
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
    boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_297490034(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
    boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~slot(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_297490040(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
  boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(&STACK[0x620]);
  ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x610]);
  __clang_call_terminate(a1);
}

void sub_29749004C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::~function2(&STACK[0x6A0]);
    boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>::~function(&STACK[0x670]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(&STACK[0x690]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(&STACK[0x660]);
    boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>::~function((v2 + 24));
    boost::signals2::slot_base::~slot_base(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_297490094(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::function1<void,coex::SubId>::~function1(&STACK[0x6A0]);
    boost::function<void ()(coex::SubId)>::~function(&STACK[0x670]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>::~DispatchSlot(&STACK[0x690]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>::~DispatchSlot(&STACK[0x660]);
    boost::function<void ()(coex::SubId)>::~function((v2 + 24));
    boost::signals2::slot_base::~slot_base(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2974900DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2974900EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_297490104(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x297490108);
  }

  _Unwind_Resume(a1);
}

void sub_29749010C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x297490110);
  }

  __clang_call_terminate(a1);
}

void sub_297490114(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::~function2(&STACK[0x6A0]);
    boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>::~function(&STACK[0x670]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x690]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x660]);
    boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>::~function((v2 + 24));
    boost::signals2::slot_base::~slot_base(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_29749015C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    boost::function0<void>::~function0(&STACK[0x6A0]);
    boost::function<void ()(void)>::~function(&STACK[0x670]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x690]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x660]);
    boost::function<void ()(void)>::~function((v2 + 24));
    boost::signals2::slot_base::~slot_base(&STACK[0x620]);
    ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x610]);
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2974901AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v3);
    std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::~list(v2);
    operator delete(v2);
    JUMPOUT(0x297490250);
  }

  _Unwind_Resume(a1);
}

void sub_2974901C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v3);
    std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::~list(v2);
    operator delete(v2);
    JUMPOUT(0x297490274);
  }

  _Unwind_Resume(a1);
}

void sub_2974901E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2974901F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974901F8);
  }

  _Unwind_Resume(a1);
}

void sub_297490200(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v3);
    std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~list(v2);
    operator delete(v2);
    JUMPOUT(0x297490298);
  }

  _Unwind_Resume(a1);
}

void sub_29749021C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v3);
    std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~list(v2);
    operator delete(v2);
    JUMPOUT(0x2974902BCLL);
  }

  _Unwind_Resume(a1);
}

void sub_297490238(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::clear(v2);
    JUMPOUT(0x297490248);
  }

  _Unwind_Resume(a1);
}

void sub_29749025C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::clear(v2);
    JUMPOUT(0x29749026CLL);
  }

  _Unwind_Resume(a1);
}

void sub_297490280(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::clear(v2);
    JUMPOUT(0x297490290);
  }

  _Unwind_Resume(a1);
}

void sub_2974902A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::clear(v2);
    JUMPOUT(0x2974902B4);
  }

  _Unwind_Resume(a1);
}

void sub_2974902C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974902D0);
  }

  _Unwind_Resume(a1);
}

void sub_2974902F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2974902F8);
  }

  _Unwind_Resume(a1);
}

void sub_297490318(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x297490320);
  }

  _Unwind_Resume(a1);
}

void sub_297490340(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x297490348);
  }

  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&STACK[0x6A0]);
  boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(&STACK[0x620]);
  ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(&STACK[0x610]);
  __clang_call_terminate(a1);
}

uint64_t coex::Module::State::State(uint64_t a1, void *a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v31, "com.apple.telephony.abm", "coex.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v7 = dispatch_queue_create_with_target_V2("coex.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v7, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v7);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    *(a1 + 24) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 32, &v30);
  MEMORY[0x29C270D60](&v30);
  ctu::OsLogContext::~OsLogContext(&v31);
  *(a1 + 40) = *a2;
  v8 = a2[1];
  *(a1 + 48) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = 0;
  LOBYTE(v31) = 0;
  coex::XpcClient::create(&v31, (a1 + 56));
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 108) = 8;
  v9 = *MEMORY[0x29EDBEFC0];
  v10 = strlen(*MEMORY[0x29EDBEFC0]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
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
    *(a1 + 120) = v11;
    *(a1 + 128) = v13 | 0x8000000000000000;
    *(a1 + 112) = v12;
    goto LABEL_14;
  }

  *(a1 + 135) = v10;
  v12 = (a1 + 112);
  if (v10)
  {
LABEL_14:
    v10 = memmove(v12, v9, v11);
  }

  *(v12 + v11) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = 2;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 160;
  *(a1 + 168) = a1 + 160;
  *(a1 + 176) = 0;
  *(a1 + 184) = *a3;
  v14 = a3[1];
  *(a1 + 192) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  if (capabilities::abs::supportsDesense(v10))
  {
    v15 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    v16 = off_2A18CADD8;
    if (!off_2A18CADD8)
    {
      CommandDriverFactory::create_default_global(&v31, v15);
      v17 = v31;
      v31 = 0uLL;
      v18 = *(&off_2A18CADD8 + 1);
      off_2A18CADD8 = v17;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      v19 = *(&v31 + 1);
      if (*(&v31 + 1) && !atomic_fetch_add((*(&v31 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v16 = off_2A18CADD8;
    }

    v29 = *(&off_2A18CADD8 + 1);
    if (*(&off_2A18CADD8 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
    (*(*v16 + 136))(&v30, v16);
    v20 = v30;
    v30 = 0uLL;
    v21 = *(a1 + 152);
    *(a1 + 144) = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = *(&v30 + 1);
    if (*(&v30 + 1) && !atomic_fetch_add((*(&v30 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  coex::CoexCache::initProperty((a1 + 72));
  v23 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v25 = *(a1 + 80);
    *(a1 + 80) = Mutable;
    if (v25)
    {
      CFRelease(v25);
    }
  }

  v26 = CFDictionaryCreateMutable(v23, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v26)
  {
    v27 = *(a1 + 96);
    *(a1 + 96) = v26;
    if (v27)
    {
      CFRelease(v27);
    }
  }

  return a1;
}

void sub_2974907EC(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = *(v1 + 192);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  std::list<boost::signals2::connection>::~list(v5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  if (*(v1 + 135) < 0)
  {
    operator delete(*v6);
  }

  coex::CoexCache::~CoexCache(v3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1 + 56);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v2);
  MEMORY[0x29C270D60](v1 + 32);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void coex::CoexCache::initProperty(coex::CoexCache *this)
{
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = *this;
    *this = v4;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (v6)
  {
    v7 = v6;
    v8 = *(this + 2);
    *(this + 2) = v7;
    if (v8)
    {
      CFRelease(v8);
    }
  }
}

void coex::Module::State::~State(coex::Module::State *this)
{
  v2 = this + 32;
  v3 = *(this + 4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v17, 2u);
  }

  v4 = *(this + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  if (*(this + 22))
  {
    v5 = *(this + 21);
    v6 = *(*(this + 20) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 22) = 0;
    if (v5 != (this + 160))
    {
      do
      {
        v8 = *(v5 + 1);
        v9 = *(v5 + 3);
        if (v9 && atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
        {
          v10 = v5;
          (*(*v9 + 24))(v9);
          v5 = v10;
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8 != (this + 160));
    }
  }

  v11 = *(this + 19);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if ((*(this + 135) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (*(this + 135) < 0)
  {
LABEL_15:
    operator delete(*(this + 14));
  }

LABEL_16:
  coex::CoexCache::~CoexCache((this + 72));
  v12 = *(this + 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 6);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  MEMORY[0x29C270D60](v2);
  v14 = *(this + 3);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 2);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 1);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke(void *a1, uint64_t a2, int a3)
{
  v5 = a1[4];
  v19 = 0;
  v6 = a1[6];
  if (v6 && (v19 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v7 = a1[5];
    v18 = 0;
    v8 = *(v5 + 192);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    v18 = 0;
    v8 = *(v5 + 192);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v18 = std::__shared_weak_count::lock(v8);
  if (!v18)
  {
    goto LABEL_16;
  }

  v9 = *(v5 + 184);
  if (v7 && v9 && ((*(*v9 + 32))(v9) & 1) == 0)
  {
    v10 = v7[1];
    if (!v10 || (v11 = *v7, (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    v14 = operator new(0x10uLL);
    *v14 = v5;
    v14[2] = a3;
    v15 = v7[2];
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = operator new(0x18uLL);
    *v16 = v14;
    v16[1] = v11;
    v16[2] = v13;
    dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_14:
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v17 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  v17 = v19;
  if (!v19)
  {
    return;
  }

LABEL_17:
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);

    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_297490DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrIN4coex6Module5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__18weak_ptrIN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_21(void *a1, uint64_t a2, int a3)
{
  v5 = a1[4];
  v19 = 0;
  v6 = a1[6];
  if (v6 && (v19 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v7 = a1[5];
    v18 = 0;
    v8 = *(v5 + 192);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    v18 = 0;
    v8 = *(v5 + 192);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v18 = std::__shared_weak_count::lock(v8);
  if (!v18)
  {
    goto LABEL_16;
  }

  v9 = *(v5 + 184);
  if (v7 && v9 && ((*(*v9 + 32))(v9) & 1) == 0)
  {
    v10 = v7[1];
    if (!v10 || (v11 = *v7, (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    v14 = operator new(0x10uLL);
    *v14 = v5;
    v14[2] = a3;
    v15 = v7[2];
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = operator new(0x18uLL);
    *v16 = v14;
    v16[1] = v11;
    v16[2] = v13;
    dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb0_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_14:
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v17 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  v17 = v19;
  if (!v19)
  {
    return;
  }

LABEL_17:
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);

    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_29749107C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_25(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_297491328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_29(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_2974915D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_33(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb3_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_297491880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_37(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb4_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_297491B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_41(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb5_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_297491DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_45(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb6_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_297492084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_49(void *a1, xpc_object_t *a2, int a3)
{
  v6 = a1[4];
  v26 = 0;
  v7 = a1[6];
  if (v7 && (v26 = std::__shared_weak_count::lock(v7)) != 0)
  {
    v8 = a1[5];
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = 0;
    v9 = *(v6 + 192);
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  v10 = std::__shared_weak_count::lock(v9);
  v25 = v10;
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = *(v6 + 184);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (!v11)
  {
    goto LABEL_18;
  }

  v12 = v10;
  v13 = (*(*v11 + 32))(v11);
  v10 = v12;
  if (v13)
  {
    goto LABEL_18;
  }

  v14 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v15 = v8[1];
    if (!v15)
    {
LABEL_27:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = v8[1];
    if (!v15)
    {
      goto LABEL_27;
    }
  }

  v16 = *v8;
  v17 = std::__shared_weak_count::lock(v15);
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = operator new(0x18uLL);
  *v19 = v6;
  v19[1] = v14;
  v20 = xpc_null_create();
  *(v19 + 4) = a3;
  v21 = v8[2];
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = operator new(0x18uLL);
  *v22 = v19;
  v22[1] = v16;
  v22[2] = v18;
  dispatch_async_f(v21, v22, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb7_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  xpc_release(v20);
  v10 = v25;
  if (v25)
  {
LABEL_18:
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v24 = v10;
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v24);
      v23 = v26;
      if (!v26)
      {
        return;
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v23 = v26;
  if (!v26)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);

    std::__shared_weak_count::__release_weak(v23);
  }
}

void sub_297492330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_53(void *a1, uint64_t a2, int a3)
{
  v5 = a1[4];
  v19 = 0;
  v6 = a1[6];
  if (v6 && (v19 = std::__shared_weak_count::lock(v6)) != 0)
  {
    v7 = a1[5];
    v18 = 0;
    v8 = *(v5 + 192);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    v18 = 0;
    v8 = *(v5 + 192);
    if (!v8)
    {
      goto LABEL_14;
    }
  }

  v18 = std::__shared_weak_count::lock(v8);
  if (!v18)
  {
    goto LABEL_16;
  }

  v9 = *(v5 + 184);
  if (v7 && v9 && ((*(*v9 + 32))(v9) & 1) == 0)
  {
    v10 = v7[1];
    if (!v10 || (v11 = *v7, (v12 = std::__shared_weak_count::lock(v10)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v13 = v12;
    v14 = operator new(0x10uLL);
    *v14 = v5;
    v14[2] = a3;
    v15 = v7[2];
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    v16 = operator new(0x18uLL);
    *v16 = v14;
    v16[1] = v11;
    v16[2] = v13;
    dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb8_E4__10EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_14:
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v17 = v19;
    if (!v19)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_16:
  v17 = v19;
  if (!v19)
  {
    return;
  }

LABEL_17:
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);

    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_297492584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State4initEv_block_invoke_57(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb9_E4__11EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_61(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb10_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_65(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb11_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_69(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb12_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_73(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb13_E4__15EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_77(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb14_E4__16EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_81(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb15_E4__17EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_85(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb16_E4__18EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_89(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb17_E4__19EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_93(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb18_E4__20EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_97(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb19_E4__21EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_101(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb20_E4__22EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_105(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb21_E4__23EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_109(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb22_E4__24EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void ___ZN4coex6Module5State4initEv_block_invoke_113(void *a1, xpc_object_t *a2, int a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      v10 = a1[5];
      if (v10)
      {
        v11 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          v12 = v10[1];
          if (!v12)
          {
LABEL_17:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v11 = xpc_null_create();
          v12 = v10[1];
          if (!v12)
          {
            goto LABEL_17;
          }
        }

        v13 = *v10;
        v14 = std::__shared_weak_count::lock(v12);
        if (!v14)
        {
          goto LABEL_17;
        }

        v15 = v14;
        v16 = operator new(0x18uLL);
        *v16 = v7;
        v16[1] = v11;
        v17 = xpc_null_create();
        *(v16 + 4) = a3;
        v18 = v10[2];
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v19 = operator new(0x18uLL);
        *v19 = v16;
        v19[1] = v13;
        v19[2] = v15;
        dispatch_async_f(v18, v19, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb23_E4__25EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_);
        if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        xpc_release(v17);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

void coex::Module::State::handleCommandDriverStateUpdate_sync(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v4 = *a2;
  if (v4)
  {
    memset(buf, 170, 16);
    v6 = ctu::cf::dict_adapter::dict_adapter(buf, v4);
    v173 = 0;
    v7 = ctu::cf::map_adapter::copyCFDictionaryRef(v6, *MEMORY[0x29EDC8728]);
    v173 = v7;
    v8 = MEMORY[0x29EDB8ED8];
    if (v7 || (v7 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8790]), (v173 = v7) != 0))
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v171, v7);
      Mutable = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v10 = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      v12 = *MEMORY[0x29EDC87E8];
      v13 = (*v171)(&v171, *MEMORY[0x29EDC87E8]);
      v14 = v13;
      if (v13)
      {
        CFRelease(v13);
        ctu::cf::update<__CFString const*,void const*>(v10, v12, v14);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v15 = *MEMORY[0x29EDC87D0];
      v16 = (*v171)(&v171, *MEMORY[0x29EDC87D0]);
      v17 = v16;
      if (v16)
      {
        CFRelease(v16);
        ctu::cf::update<__CFString const*,void const*>(v10, v15, v17);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v18 = *MEMORY[0x29EDC86F0];
      v19 = (*v171)(&v171, *MEMORY[0x29EDC86F0]);
      v20 = v19;
      if (v19)
      {
        CFRelease(v19);
        ctu::cf::update<__CFString const*,void const*>(v10, v18, v20);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v21 = *MEMORY[0x29EDC88D0];
      v22 = (*v171)(&v171, *MEMORY[0x29EDC88D0]);
      v23 = v22;
      if (v22)
      {
        CFRelease(v22);
        ctu::cf::update<__CFString const*,void const*>(v10, v21, v23);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v24 = *MEMORY[0x29EDC89D8];
      v25 = (*v171)(&v171, *MEMORY[0x29EDC89D8]);
      v26 = v25;
      if (v25)
      {
        CFRelease(v25);
        ctu::cf::update<__CFString const*,void const*>(v10, v24, v26);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v27 = *MEMORY[0x29EDC88B0];
      v28 = (*v171)(&v171, *MEMORY[0x29EDC88B0]);
      v29 = v28;
      if (v28)
      {
        CFRelease(v28);
        ctu::cf::update<__CFString const*,void const*>(v10, v27, v29);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v30 = *MEMORY[0x29EDC8910];
      v31 = (*v171)(&v171, *MEMORY[0x29EDC8910]);
      v32 = v31;
      if (v31)
      {
        CFRelease(v31);
        ctu::cf::update<__CFString const*,void const*>(v10, v30, v32);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v33 = *MEMORY[0x29EDC88C0];
      v34 = (*v171)(&v171, *MEMORY[0x29EDC88C0]);
      v35 = v34;
      if (v34)
      {
        CFRelease(v34);
        ctu::cf::update<__CFString const*,void const*>(v10, v33, v35);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v36 = *MEMORY[0x29EDC8968];
      v37 = (*v171)(&v171, *MEMORY[0x29EDC8968]);
      v38 = v37;
      if (v37)
      {
        CFRelease(v37);
        ctu::cf::update<__CFString const*,void const*>(v10, v36, v38);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v39 = *MEMORY[0x29EDC8988];
      v40 = (*v171)(&v171, *MEMORY[0x29EDC8988]);
      v41 = v40;
      if (v40)
      {
        CFRelease(v40);
        ctu::cf::update<__CFString const*,void const*>(v10, v39, v41);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v42 = *MEMORY[0x29EDC88E0];
      v43 = (*v171)(&v171, *MEMORY[0x29EDC88E0]);
      v44 = v43;
      if (v43)
      {
        CFRelease(v43);
        ctu::cf::update<__CFString const*,void const*>(v10, v42, v44);
      }

      if (v10)
      {
        CFRelease(v10);
        CFRetain(v10);
      }

      v45 = *MEMORY[0x29EDC8990];
      v46 = (*v171)(&v171, *MEMORY[0x29EDC8990]);
      v47 = v46;
      if (v46)
      {
        CFRelease(v46);
        ctu::cf::update<__CFString const*,void const*>(v10, v45, v47);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      v48 = *(a1 + 16 * (a3 != 0) + 72);
      if (v48)
      {
        CFRetain(v48);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v48, coex::kKeyWWANState, v10);
      if (v48)
      {
        CFRelease(v48);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      MEMORY[0x29C270ED0](&v171);
      v168 = 0;
    }

    else
    {
      v168 = 1;
    }

    v49 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8780]);
    v173 = v49;
    if (v7)
    {
      CFRelease(v7);
    }

    v169 = v49 != 0;
    if (v49)
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v171, v49);
      v50 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v51 = v50;
      if (v50)
      {
        CFRetain(v50);
      }

      v52 = *MEMORY[0x29EDC8AE8];
      v53 = (*v171)(&v171, *MEMORY[0x29EDC8AE8]);
      v54 = v53;
      if (v53)
      {
        CFRelease(v53);
        ctu::cf::update<__CFString const*,void const*>(v51, v52, v54);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      v55 = *(a1 + 16 * (a3 != 0) + 72);
      if (v55)
      {
        CFRetain(v55);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v55, coex::kKeyLinkQuality, v51);
      if (v55)
      {
        CFRelease(v55);
      }

      if (v51)
      {
        CFRelease(v51);
      }

      MEMORY[0x29C270ED0](&v171);
    }

    v56 = *MEMORY[0x29EDC87D8];
    v57 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC87D8]);
    v170 = a1;
    v58 = v173;
    v173 = v57;
    if (v58)
    {
      CFRelease(v58);
    }

    v59 = MEMORY[0x29EDC8718];
    if (v57)
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v171, v57);
      v60 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v61 = v60;
      if (v60)
      {
        CFRetain(v60);
      }

      v62 = *MEMORY[0x29EDC86C0];
      v63 = (*v171)(&v171, *MEMORY[0x29EDC86C0]);
      v64 = v63;
      if (v63)
      {
        CFRelease(v63);
        ctu::cf::update<__CFString const*,void const*>(v61, v62, v64);
      }

      if (v61)
      {
        CFRelease(v61);
        CFRetain(v61);
      }

      v65 = *v59;
      v66 = (*v171)(&v171, *v59);
      v67 = v66;
      if (v66)
      {
        CFRelease(v66);
        ctu::cf::update<__CFString const*,void const*>(v61, v65, v67);
      }

      if (v61)
      {
        CFRelease(v61);
        CFRetain(v61);
      }

      v68 = *MEMORY[0x29EDC8748];
      v69 = (*v171)(&v171, *MEMORY[0x29EDC8748]);
      v70 = v69;
      if (v69)
      {
        CFRelease(v69);
        ctu::cf::update<__CFString const*,void const*>(v61, v68, v70);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      v71 = *(v170 + 16 * (a3 != 0) + 72);
      if (v71)
      {
        CFRetain(v71);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v71, coex::kKeyWLANScanState, v61);
      if (v71)
      {
        CFRelease(v71);
      }

      if (v61)
      {
        CFRelease(v61);
      }

      MEMORY[0x29C270ED0](&v171);
    }

    v72 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, v56);
    v173 = v72;
    if (v57)
    {
      CFRelease(v57);
    }

    if (v72)
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v171, v72);
      v73 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v74 = v73;
      if (v73)
      {
        CFRetain(v73);
      }

      v75 = *MEMORY[0x29EDC8890];
      v76 = (*v171)(&v171, *MEMORY[0x29EDC8890]);
      v77 = v76;
      if (v76)
      {
        CFRelease(v76);
        ctu::cf::update<__CFString const*,void const*>(v74, v75, v77);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v78 = *v59;
      v79 = (*v171)(&v171, *v59);
      v80 = v79;
      if (v79)
      {
        CFRelease(v79);
        ctu::cf::update<__CFString const*,void const*>(v74, v78, v80);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v81 = *MEMORY[0x29EDC8858];
      v82 = (*v171)(&v171, *MEMORY[0x29EDC8858]);
      v83 = v82;
      if (v82)
      {
        CFRelease(v82);
        ctu::cf::update<__CFString const*,void const*>(v74, v81, v83);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v84 = *MEMORY[0x29EDC8860];
      v85 = (*v171)(&v171, *MEMORY[0x29EDC8860]);
      v86 = v85;
      if (v85)
      {
        CFRelease(v85);
        ctu::cf::update<__CFString const*,void const*>(v74, v84, v86);
      }

      if (v74)
      {
        CFRelease(v74);
        CFRetain(v74);
      }

      v87 = *MEMORY[0x29EDC8810];
      v88 = (*v171)(&v171, *MEMORY[0x29EDC8810]);
      v89 = v88;
      if (v88)
      {
        CFRelease(v88);
        ctu::cf::update<__CFString const*,void const*>(v74, v87, v89);
      }

      if (v74)
      {
        CFRelease(v74);
      }

      v90 = *(v170 + 16 * (a3 != 0) + 72);
      if (v90)
      {
        CFRetain(v90);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v90, coex::kKeyWLANConnState, v74);
      if (v90)
      {
        CFRelease(v90);
      }

      if (v74)
      {
        CFRelease(v74);
      }

      MEMORY[0x29C270ED0](&v171);
    }

    v91 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8788]);
    v173 = v91;
    if (v72)
    {
      CFRelease(v72);
    }

    v92 = v170;
    if (v91)
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v171, v91);
      v93 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v94 = v93;
      if (v93)
      {
        CFRetain(v93);
      }

      v95 = *MEMORY[0x29EDC8698];
      v96 = (*v171)(&v171, *MEMORY[0x29EDC8698]);
      v97 = v96;
      if (v96)
      {
        CFRelease(v96);
        ctu::cf::update<__CFString const*,void const*>(v94, v95, v97);
      }

      if (v94)
      {
        CFRelease(v94);
        CFRetain(v94);
      }

      v98 = *MEMORY[0x29EDC8980];
      v99 = (*v171)(&v171, *MEMORY[0x29EDC8980]);
      v100 = v99;
      if (v99)
      {
        CFRelease(v99);
        ctu::cf::update<__CFString const*,void const*>(v94, v98, v100);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      v101 = *(v170 + 16 * (a3 != 0) + 72);
      if (v101)
      {
        CFRetain(v101);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v101, coex::kKeyLinkQuality, v94);
      if (v101)
      {
        CFRelease(v101);
      }

      if (v94)
      {
        CFRelease(v94);
      }

      MEMORY[0x29C270ED0](&v171);
      v169 = 1;
    }

    v102 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC8840]);
    v173 = v102;
    if (v91)
    {
      CFRelease(v91);
    }

    if (v102)
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v171, v102);
      v103 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v104 = v103;
      if (v103)
      {
        CFRetain(v103);
      }

      v105 = *MEMORY[0x29EDC8AA8];
      v106 = (*v171)(&v171, *MEMORY[0x29EDC8AA8]);
      v107 = v106;
      if (v106)
      {
        CFRelease(v106);
        ctu::cf::update<__CFString const*,void const*>(v104, v105, v107);
      }

      if (v104)
      {
        CFRelease(v104);
        CFRetain(v104);
      }

      v108 = *MEMORY[0x29EDC8918];
      v109 = (*v171)(&v171, *MEMORY[0x29EDC8918]);
      v110 = v109;
      if (v109)
      {
        CFRelease(v109);
        ctu::cf::update<__CFString const*,void const*>(v104, v108, v110);
      }

      if (v104)
      {
        CFRelease(v104);
        CFRetain(v104);
      }

      v111 = *MEMORY[0x29EDC8970];
      v112 = (*v171)(&v171, *MEMORY[0x29EDC8970]);
      v113 = v112;
      if (v112)
      {
        CFRelease(v112);
        ctu::cf::update<__CFString const*,void const*>(v104, v111, v113);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      v114 = *(v170 + 16 * (a3 != 0) + 72);
      if (v114)
      {
        CFRetain(v114);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v114, coex::kKeyFailCondition, v104);
      if (v114)
      {
        CFRelease(v114);
      }

      if (v104)
      {
        CFRelease(v104);
      }

      MEMORY[0x29C270ED0](&v171);
    }

    v115 = ctu::cf::map_adapter::copyCFDictionaryRef(buf, *MEMORY[0x29EDC86B8]);
    v173 = v115;
    if (v102)
    {
      CFRelease(v102);
    }

    if (v115)
    {
      v171 = 0xAAAAAAAAAAAAAAAALL;
      v172 = 0xAAAAAAAAAAAAAAAALL;
      v116 = 24;
      if (!a3)
      {
        v116 = 8;
      }

      v167 = v170 + 72;
      v117 = *(v170 + 72 + v116);
      if (v117)
      {
        CFRetain(v117);
      }

      ctu::cf::dict_adapter::dict_adapter(&v171, v117);
      if (v117)
      {
        CFRelease(v117);
      }

      v118 = *v8;
      v119 = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v120 = v119;
      if (v119)
      {
        CFRetain(v119);
      }

      v121 = *MEMORY[0x29EDC8600];
      v122 = (*v171)(&v171, *MEMORY[0x29EDC8600]);
      v123 = v122;
      if (v122)
      {
        CFRelease(v122);
        ctu::cf::update<__CFString const*,void const*>(v120, v121, v123);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v124 = *MEMORY[0x29EDC8750];
      v125 = (*v171)(&v171, *MEMORY[0x29EDC8750]);
      v126 = v125;
      if (v125)
      {
        CFRelease(v125);
        ctu::cf::update<__CFString const*,void const*>(v120, v124, v126);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v127 = *MEMORY[0x29EDC8AD0];
      v128 = (*v171)(&v171, *MEMORY[0x29EDC8AD0]);
      v129 = v128;
      if (v128)
      {
        CFRelease(v128);
        ctu::cf::update<__CFString const*,void const*>(v120, v127, v129);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v130 = *MEMORY[0x29EDC88F8];
      v131 = (*v171)(&v171, *MEMORY[0x29EDC88F8]);
      v132 = v131;
      if (v131)
      {
        CFRelease(v131);
        ctu::cf::update<__CFString const*,void const*>(v120, v130, v132);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v133 = *MEMORY[0x29EDC89A0];
      v134 = (*v171)(&v171, *MEMORY[0x29EDC89A0]);
      v135 = v134;
      if (v134)
      {
        CFRelease(v134);
        ctu::cf::update<__CFString const*,void const*>(v120, v133, v135);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v136 = *MEMORY[0x29EDC8A98];
      v137 = (*v171)(&v171, *MEMORY[0x29EDC8A98]);
      v138 = v137;
      if (v137)
      {
        CFRelease(v137);
        ctu::cf::update<__CFString const*,void const*>(v120, v136, v138);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v139 = *MEMORY[0x29EDC89C8];
      v140 = (*v171)(&v171, *MEMORY[0x29EDC89C8]);
      v141 = v140;
      if (v140)
      {
        CFRelease(v140);
        ctu::cf::update<__CFString const*,void const*>(v120, v139, v141);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v142 = *MEMORY[0x29EDC86D8];
      v143 = (*v171)(&v171, *MEMORY[0x29EDC86D8]);
      v144 = v143;
      if (v143)
      {
        CFRelease(v143);
        ctu::cf::update<__CFString const*,void const*>(v120, v142, v144);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v145 = *MEMORY[0x29EDC8710];
      v146 = (*v171)(&v171, *MEMORY[0x29EDC8710]);
      v147 = v146;
      if (v146)
      {
        CFRelease(v146);
        ctu::cf::update<__CFString const*,void const*>(v120, v145, v147);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v148 = *MEMORY[0x29EDC8638];
      v149 = (*v171)(&v171, *MEMORY[0x29EDC8638]);
      v150 = v149;
      if (v149)
      {
        CFRelease(v149);
        ctu::cf::update<__CFString const*,void const*>(v120, v148, v150);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v151 = *MEMORY[0x29EDC8AD8];
      v152 = (*v171)(&v171, *MEMORY[0x29EDC8AD8]);
      v153 = v152;
      if (v152)
      {
        CFRelease(v152);
        ctu::cf::update<__CFString const*,void const*>(v120, v151, v153);
      }

      if (v120)
      {
        CFRelease(v120);
        CFRetain(v120);
      }

      v154 = *MEMORY[0x29EDC8A38];
      v155 = (*v171)(&v171, *MEMORY[0x29EDC8A38]);
      v156 = v155;
      if (v155)
      {
        CFRelease(v155);
        ctu::cf::update<__CFString const*,void const*>(v120, v154, v156);
      }

      if (v120)
      {
        CFRelease(v120);
      }

      v157 = a3;
      v158 = 16 * (a3 != 0);
      v159 = *(v167 + v158);
      if (v159)
      {
        CFRetain(v159);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v159, coex::kKeyPolicy, v120);
      if (v159)
      {
        CFRelease(v159);
      }

      v160 = CFDictionaryCreateMutable(v118, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v161 = v160;
      if (v160)
      {
        CFRetain(v160);
      }

      v162 = (*v171)(&v171, v127);
      v163 = v162;
      if (v162)
      {
        CFRelease(v162);
        ctu::cf::update<__CFString const*,void const*>(v161, v127, v163);
      }

      if (v161)
      {
        CFRelease(v161);
        CFRetain(v161);
      }

      v164 = (*v171)(&v171, v130);
      v165 = v164;
      if (v164)
      {
        CFRelease(v164);
        ctu::cf::update<__CFString const*,void const*>(v161, v130, v165);
      }

      if (v161)
      {
        CFRelease(v161);
      }

      v166 = *(v167 + v158);
      if (v166)
      {
        CFRetain(v166);
      }

      ctu::cf::update<__CFString const*,__CFData const*>(v166, coex::kKeyFailCondition, v161);
      a3 = v157;
      v92 = v170;
      if (v166)
      {
        CFRelease(v166);
      }

      if (v161)
      {
        CFRelease(v161);
      }

      if (v120)
      {
        CFRelease(v120);
      }

      MEMORY[0x29C270ED0](&v171);
    }

    if ((v168 & 1) == 0)
    {
      coex::Module::State::sendWWANState_sync(v92, a3);
    }

    if (v169)
    {
      coex::Module::State::sendLinkQuality_sync(v92, a3);
    }

    if (v102)
    {
      coex::Module::State::sendFailCondition_sync(v92, a3);
    }

    if (v115)
    {
      CFRelease(v115);
    }

    MEMORY[0x29C270ED0](buf);
  }

  else
  {
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v11, OS_LOG_TYPE_DEBUG, "#D Empty update passed; ignoring it", buf, 2u);
    }
  }
}

void sub_297495AA4(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v1 - 120));
  MEMORY[0x29C270ED0](v1 - 112);
  _Unwind_Resume(a1);
}

uint64_t coex::Module::State::handleDesenseCommandDriverStarted_sync(uint64_t a1)
{
  result = *(a1 + 144);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void coex::Module::State::handleDesenseFrequencyReport_sync(uint64_t a1, void *a2, int a3)
{
  v165 = *MEMORY[0x29EDCA608];
  if (a2[2])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    v7 = v6;
    v8 = MEMORY[0x29EDCAA00];
    if (v6)
    {
      v162 = v6;
    }

    else
    {
      v7 = xpc_null_create();
      v162 = v7;
      if (!v7)
      {
        v10 = xpc_null_create();
        v7 = 0;
        goto LABEL_11;
      }
    }

    if (MEMORY[0x29C272BA0](v7) == v8)
    {
      xpc_retain(v7);
      goto LABEL_12;
    }

    v10 = xpc_null_create();
LABEL_11:
    v162 = v10;
LABEL_12:
    v146 = a3;
    xpc_release(v7);
    v11 = a2 + 1;
    v12 = *a2;
    v151 = v11;
    if (v12 != v11)
    {
      __s = *MEMORY[0x29EDC9118];
      v152 = *MEMORY[0x29EDC9110];
      v149 = *MEMORY[0x29EDC9130];
      v150 = *MEMORY[0x29EDC9120];
      v147 = *MEMORY[0x29EDC9128];
      v148 = *MEMORY[0x29EDC9108];
      while (1)
      {
        v159 = &v159;
        v160 = &v159;
        v161 = 0;
        v13 = v12[6];
        if (v13 != v12 + 5)
        {
          v14 = &v159;
          v15 = 1;
          do
          {
            v16 = operator new(0x20uLL);
            v16[1] = *(v13 + 16);
            *v16 = v14;
            *(v16 + 1) = &v159;
            v14[1] = v16;
            v159 = v16;
            v161 = v15;
            v13 = *(v13 + 8);
            ++v15;
            v14 = v16;
          }

          while (v13 != v12 + 5);
        }

        v17 = xpc_array_create(0, 0);
        if (v17 || (v17 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v17) == MEMORY[0x29EDCA9E0])
          {
            xpc_retain(v17);
            v18 = v17;
          }

          else
          {
            v18 = xpc_null_create();
          }
        }

        else
        {
          v18 = xpc_null_create();
          v17 = 0;
        }

        xpc_release(v17);
        for (i = v160; i != &v159; i = i[1])
        {
          v20 = xpc_dictionary_create(0, 0, 0);
          if (v20 || (v20 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v20) == v8)
            {
              xpc_retain(v20);
              v21 = v20;
            }

            else
            {
              v21 = xpc_null_create();
            }
          }

          else
          {
            v21 = xpc_null_create();
            v20 = 0;
          }

          xpc_release(v20);
          v22 = xpc_uint64_create(i[2]);
          if (!v22)
          {
            v22 = xpc_null_create();
          }

          xpc_dictionary_set_value(v21, "kWCMCellular_DesenseNetworkConfiguration_CenterFreq", v22);
          v23 = xpc_null_create();
          xpc_release(v22);
          xpc_release(v23);
          v24 = xpc_int64_create(*(i + 6));
          if (!v24)
          {
            v24 = xpc_null_create();
          }

          xpc_dictionary_set_value(v21, "kWCMCellular_DesenseNetworkConfiguration_Bandwidth", v24);
          v25 = xpc_null_create();
          xpc_release(v24);
          xpc_release(v25);
          xpc_array_append_value(v18, v21);
          xpc_release(v21);
        }

        if (MEMORY[0x29C272BA0](v18) == MEMORY[0x29EDCA9E0] && xpc_array_get_count(v18))
        {
          object = v18;
          v18 = xpc_null_create();
        }

        else
        {
          object = xpc_null_create();
        }

        xpc_release(v18);
        if (v161)
        {
          v26 = v160;
          v27 = *(v159 + 1);
          v28 = *v160;
          *(v28 + 8) = v27;
          *v27 = v28;
          v161 = 0;
          if (v26 != &v159)
          {
            do
            {
              v29 = v26[1];
              operator delete(v26);
              v26 = v29;
            }

            while (v29 != &v159);
          }
        }

        v30 = v12[4];
        v31 = strlen(v30);
        if (v31 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v32 = v31;
        if (v31 >= 0x17)
        {
          break;
        }

        HIBYTE(v158) = v31;
        v33 = buf;
        if (v31)
        {
          goto LABEL_51;
        }

LABEL_52:
        v33[v32] = 0;
        v35 = strlen(__s);
        if (v35 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v36 = v35;
        if (v35 >= 0x17)
        {
          if ((v35 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v35 | 7) + 1;
          }

          p_dst = operator new(v38);
          *(&__dst + 1) = v36;
          v164 = v38 | 0x8000000000000000;
          *&__dst = p_dst;
LABEL_60:
          memmove(p_dst, __s, v36);
          goto LABEL_61;
        }

        HIBYTE(v164) = v35;
        p_dst = &__dst;
        if (v35)
        {
          goto LABEL_60;
        }

LABEL_61:
        *(p_dst + v36) = 0;
        v39 = SHIBYTE(v158);
        v40 = *buf;
        if (v158 >= 0)
        {
          v41 = buf;
        }

        else
        {
          v41 = *buf;
        }

        v42 = SHIBYTE(v164);
        v43 = __dst;
        if (v164 >= 0)
        {
          v44 = &__dst;
        }

        else
        {
          v44 = __dst;
        }

        v45 = strcasecmp(v41, v44);
        if (v42 < 0)
        {
          operator delete(v43);
          if ((v39 & 0x80000000) == 0)
          {
LABEL_69:
            if (!v45)
            {
              goto LABEL_76;
            }

            goto LABEL_70;
          }
        }

        else if ((v39 & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

        operator delete(v40);
        if (!v45)
        {
LABEL_76:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v51 = object;
          }

          else
          {
            v51 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_UplinkFrequency", v51);
          v86 = xpc_null_create();
          xpc_release(v51);
          xpc_release(v86);
          goto LABEL_242;
        }

LABEL_70:
        v46 = v12[4];
        v47 = strlen(v46);
        if (v47 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v48 = v47;
        if (v47 >= 0x17)
        {
          if ((v47 | 7) == 0x17)
          {
            v52 = 25;
          }

          else
          {
            v52 = (v47 | 7) + 1;
          }

          v49 = operator new(v52);
          v157 = v48;
          v158 = v52 | 0x8000000000000000;
          *buf = v49;
LABEL_82:
          memmove(v49, v46, v48);
          goto LABEL_83;
        }

        HIBYTE(v158) = v47;
        v49 = buf;
        if (v47)
        {
          goto LABEL_82;
        }

LABEL_83:
        *(v49 + v48) = 0;
        v53 = strlen(v152);
        if (v53 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
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
          *(&__dst + 1) = v54;
          v164 = v56 | 0x8000000000000000;
          *&__dst = v55;
LABEL_91:
          memmove(v55, v152, v54);
          goto LABEL_92;
        }

        HIBYTE(v164) = v53;
        v55 = &__dst;
        if (v53)
        {
          goto LABEL_91;
        }

LABEL_92:
        *(v55 + v54) = 0;
        v57 = SHIBYTE(v158);
        v58 = *buf;
        if (v158 >= 0)
        {
          v59 = buf;
        }

        else
        {
          v59 = *buf;
        }

        v60 = SHIBYTE(v164);
        v61 = __dst;
        if (v164 >= 0)
        {
          v62 = &__dst;
        }

        else
        {
          v62 = __dst;
        }

        v63 = strcasecmp(v59, v62);
        if (v60 < 0)
        {
          operator delete(v61);
          if ((v57 & 0x80000000) == 0)
          {
LABEL_100:
            if (!v63)
            {
              goto LABEL_107;
            }

            goto LABEL_101;
          }
        }

        else if ((v57 & 0x80000000) == 0)
        {
          goto LABEL_100;
        }

        operator delete(v58);
        if (!v63)
        {
LABEL_107:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v68 = object;
          }

          else
          {
            v68 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_SearchFrequency", v68);
          v104 = xpc_null_create();
          xpc_release(v68);
          xpc_release(v104);
          goto LABEL_242;
        }

LABEL_101:
        v64 = v12[4];
        v65 = strlen(v64);
        if (v65 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v66 = v65;
        if (v65 >= 0x17)
        {
          if ((v65 | 7) == 0x17)
          {
            v69 = 25;
          }

          else
          {
            v69 = (v65 | 7) + 1;
          }

          v67 = operator new(v69);
          v157 = v66;
          v158 = v69 | 0x8000000000000000;
          *buf = v67;
LABEL_113:
          memmove(v67, v64, v66);
          goto LABEL_114;
        }

        HIBYTE(v158) = v65;
        v67 = buf;
        if (v65)
        {
          goto LABEL_113;
        }

LABEL_114:
        *(v67 + v66) = 0;
        v70 = strlen(v150);
        if (v70 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v71 = v70;
        if (v70 >= 0x17)
        {
          if ((v70 | 7) == 0x17)
          {
            v73 = 25;
          }

          else
          {
            v73 = (v70 | 7) + 1;
          }

          v72 = operator new(v73);
          *(&__dst + 1) = v71;
          v164 = v73 | 0x8000000000000000;
          *&__dst = v72;
LABEL_122:
          memmove(v72, v150, v71);
          goto LABEL_123;
        }

        HIBYTE(v164) = v70;
        v72 = &__dst;
        if (v70)
        {
          goto LABEL_122;
        }

LABEL_123:
        *(v72 + v71) = 0;
        v74 = SHIBYTE(v158);
        v75 = *buf;
        if (v158 >= 0)
        {
          v76 = buf;
        }

        else
        {
          v76 = *buf;
        }

        v77 = SHIBYTE(v164);
        v78 = __dst;
        if (v164 >= 0)
        {
          v79 = &__dst;
        }

        else
        {
          v79 = __dst;
        }

        v80 = strcasecmp(v76, v79);
        if (v77 < 0)
        {
          operator delete(v78);
          if ((v74 & 0x80000000) == 0)
          {
LABEL_131:
            if (!v80)
            {
              goto LABEL_138;
            }

            goto LABEL_132;
          }
        }

        else if ((v74 & 0x80000000) == 0)
        {
          goto LABEL_131;
        }

        operator delete(v75);
        if (!v80)
        {
LABEL_138:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v85 = object;
          }

          else
          {
            v85 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_HoppingFrequency", v85);
          v122 = xpc_null_create();
          xpc_release(v85);
          xpc_release(v122);
          goto LABEL_242;
        }

LABEL_132:
        v81 = v12[4];
        v82 = strlen(v81);
        if (v82 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v83 = v82;
        if (v82 >= 0x17)
        {
          if ((v82 | 7) == 0x17)
          {
            v87 = 25;
          }

          else
          {
            v87 = (v82 | 7) + 1;
          }

          v84 = operator new(v87);
          v157 = v83;
          v158 = v87 | 0x8000000000000000;
          *buf = v84;
LABEL_146:
          memmove(v84, v81, v83);
          goto LABEL_147;
        }

        HIBYTE(v158) = v82;
        v84 = buf;
        if (v82)
        {
          goto LABEL_146;
        }

LABEL_147:
        *(v84 + v83) = 0;
        v88 = strlen(v149);
        if (v88 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v89 = v88;
        if (v88 >= 0x17)
        {
          if ((v88 | 7) == 0x17)
          {
            v91 = 25;
          }

          else
          {
            v91 = (v88 | 7) + 1;
          }

          v90 = operator new(v91);
          *(&__dst + 1) = v89;
          v164 = v91 | 0x8000000000000000;
          *&__dst = v90;
LABEL_155:
          memmove(v90, v149, v89);
          goto LABEL_156;
        }

        HIBYTE(v164) = v88;
        v90 = &__dst;
        if (v88)
        {
          goto LABEL_155;
        }

LABEL_156:
        *(v90 + v89) = 0;
        v92 = SHIBYTE(v158);
        v93 = *buf;
        if (v158 >= 0)
        {
          v94 = buf;
        }

        else
        {
          v94 = *buf;
        }

        v95 = SHIBYTE(v164);
        v96 = __dst;
        if (v164 >= 0)
        {
          v97 = &__dst;
        }

        else
        {
          v97 = __dst;
        }

        v98 = strcasecmp(v94, v97);
        if (v95 < 0)
        {
          operator delete(v96);
          if ((v92 & 0x80000000) == 0)
          {
LABEL_164:
            if (!v98)
            {
              goto LABEL_171;
            }

            goto LABEL_165;
          }
        }

        else if ((v92 & 0x80000000) == 0)
        {
          goto LABEL_164;
        }

        operator delete(v93);
        if (!v98)
        {
LABEL_171:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v103 = object;
          }

          else
          {
            v103 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_NeighborFrequency", v103);
          v136 = xpc_null_create();
          xpc_release(v103);
          xpc_release(v136);
          goto LABEL_242;
        }

LABEL_165:
        v99 = v12[4];
        v100 = strlen(v99);
        if (v100 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v101 = v100;
        if (v100 >= 0x17)
        {
          if ((v100 | 7) == 0x17)
          {
            v105 = 25;
          }

          else
          {
            v105 = (v100 | 7) + 1;
          }

          v102 = operator new(v105);
          v157 = v101;
          v158 = v105 | 0x8000000000000000;
          *buf = v102;
LABEL_179:
          memmove(v102, v99, v101);
          goto LABEL_180;
        }

        HIBYTE(v158) = v100;
        v102 = buf;
        if (v100)
        {
          goto LABEL_179;
        }

LABEL_180:
        *(v102 + v101) = 0;
        v106 = strlen(v148);
        if (v106 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v107 = v106;
        if (v106 >= 0x17)
        {
          if ((v106 | 7) == 0x17)
          {
            v109 = 25;
          }

          else
          {
            v109 = (v106 | 7) + 1;
          }

          v108 = operator new(v109);
          *(&__dst + 1) = v107;
          v164 = v109 | 0x8000000000000000;
          *&__dst = v108;
LABEL_188:
          memmove(v108, v148, v107);
          goto LABEL_189;
        }

        HIBYTE(v164) = v106;
        v108 = &__dst;
        if (v106)
        {
          goto LABEL_188;
        }

LABEL_189:
        *(v108 + v107) = 0;
        v110 = SHIBYTE(v158);
        v111 = *buf;
        if (v158 >= 0)
        {
          v112 = buf;
        }

        else
        {
          v112 = *buf;
        }

        v113 = SHIBYTE(v164);
        v114 = __dst;
        if (v164 >= 0)
        {
          v115 = &__dst;
        }

        else
        {
          v115 = __dst;
        }

        v116 = strcasecmp(v112, v115);
        if (v113 < 0)
        {
          operator delete(v114);
          if ((v110 & 0x80000000) == 0)
          {
LABEL_197:
            if (!v116)
            {
              goto LABEL_204;
            }

            goto LABEL_198;
          }
        }

        else if ((v110 & 0x80000000) == 0)
        {
          goto LABEL_197;
        }

        operator delete(v111);
        if (!v116)
        {
LABEL_204:
          v50 = object;
          if (object)
          {
            xpc_retain(object);
            v121 = object;
          }

          else
          {
            v121 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_RplmnFrequency", v121);
          v137 = xpc_null_create();
          xpc_release(v121);
          xpc_release(v137);
          goto LABEL_242;
        }

LABEL_198:
        v117 = v12[4];
        v118 = strlen(v117);
        if (v118 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v119 = v118;
        if (v118 >= 0x17)
        {
          if ((v118 | 7) == 0x17)
          {
            v123 = 25;
          }

          else
          {
            v123 = (v118 | 7) + 1;
          }

          v120 = operator new(v123);
          v157 = v119;
          v158 = v123 | 0x8000000000000000;
          *buf = v120;
LABEL_212:
          memmove(v120, v117, v119);
          goto LABEL_213;
        }

        HIBYTE(v158) = v118;
        v120 = buf;
        if (v118)
        {
          goto LABEL_212;
        }

LABEL_213:
        *(v120 + v119) = 0;
        v124 = strlen(v147);
        if (v124 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v125 = v124;
        if (v124 >= 0x17)
        {
          if ((v124 | 7) == 0x17)
          {
            v127 = 25;
          }

          else
          {
            v127 = (v124 | 7) + 1;
          }

          v126 = operator new(v127);
          *(&__dst + 1) = v125;
          v164 = v127 | 0x8000000000000000;
          *&__dst = v126;
LABEL_221:
          memmove(v126, v147, v125);
          goto LABEL_222;
        }

        HIBYTE(v164) = v124;
        v126 = &__dst;
        if (v124)
        {
          goto LABEL_221;
        }

LABEL_222:
        *(v126 + v125) = 0;
        v128 = SHIBYTE(v158);
        v129 = *buf;
        if (v158 >= 0)
        {
          v130 = buf;
        }

        else
        {
          v130 = *buf;
        }

        v131 = SHIBYTE(v164);
        v132 = __dst;
        if (v164 >= 0)
        {
          v133 = &__dst;
        }

        else
        {
          v133 = __dst;
        }

        v134 = strcasecmp(v130, v133);
        if (v131 < 0)
        {
          operator delete(v132);
          if ((v128 & 0x80000000) == 0)
          {
LABEL_230:
            v50 = object;
            if (!v134)
            {
              goto LABEL_234;
            }

            goto LABEL_242;
          }
        }

        else if ((v128 & 0x80000000) == 0)
        {
          goto LABEL_230;
        }

        operator delete(v129);
        v50 = object;
        if (!v134)
        {
LABEL_234:
          if (v50)
          {
            xpc_retain(v50);
            v135 = v50;
          }

          else
          {
            v135 = xpc_null_create();
          }

          xpc_dictionary_set_value(v162, "kWCMCellular_DesenseFreqReport_DownlinkFrequency", v135);
          v138 = xpc_null_create();
          xpc_release(v135);
          xpc_release(v138);
        }

LABEL_242:
        xpc_release(v50);
        v139 = v12[1];
        if (v139)
        {
          do
          {
            v140 = v139;
            v139 = *v139;
          }

          while (v139);
        }

        else
        {
          do
          {
            v140 = v12[2];
            v141 = *v140 == v12;
            v12 = v140;
          }

          while (!v141);
        }

        v12 = v140;
        if (v140 == v151)
        {
          goto LABEL_248;
        }
      }

      if ((v31 | 7) == 0x17)
      {
        v34 = 25;
      }

      else
      {
        v34 = (v31 | 7) + 1;
      }

      v33 = operator new(v34);
      v157 = v32;
      v158 = v34 | 0x8000000000000000;
      *buf = v33;
LABEL_51:
      memmove(v33, v30, v32);
      goto LABEL_52;
    }

LABEL_248:
    v142 = *(a1 + 32);
    if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT) && ((xpc::object::to_string(buf, &v162), v158 >= 0) ? (v143 = buf) : (v143 = *buf), LODWORD(__dst) = 136315138, *(&__dst + 4) = v143, _os_log_impl(&dword_297476000, v142, OS_LOG_TYPE_DEFAULT, "#I Desense frequency report -> %s", &__dst, 0xCu), SHIBYTE(v158) < 0))
    {
      operator delete(*buf);
      v144 = *(a1 + 56);
      if (v144)
      {
        goto LABEL_254;
      }
    }

    else
    {
      v144 = *(a1 + 56);
      if (v144)
      {
LABEL_254:
        v145 = v162;
        v155 = v162;
        if (v162)
        {
          xpc_retain(v162);
        }

        else
        {
          v145 = xpc_null_create();
          v155 = v145;
        }

        coex::XpcClient::sendMessage(v144, 399, &v155, v146);
        xpc_release(v145);
        v155 = 0;
      }
    }

    xpc_release(v162);
    return;
  }

  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Empty report passed; ignoring it", buf, 2u);
  }
}

void sub_297496E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void coex::Module::State::setIndications_sync(coex::Module::State *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v19 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    v19 = Mutable;
  }

  v8 = *MEMORY[0x29EDB8F00];
  ctu::cf::insert<__CFString const*,__CFBoolean const*>(Mutable, *MEMORY[0x29EDC8790], *MEMORY[0x29EDB8F00]);
  ctu::cf::insert<__CFString const*,__CFBoolean const*>(v7, *MEMORY[0x29EDC8788], v8);
  ctu::cf::insert<__CFString const*,__CFBoolean const*>(v7, *MEMORY[0x29EDC8840], v8);
  if (capabilities::abs::supportsCoexEur5G(v9))
  {
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v7, *MEMORY[0x29EDC8878], *MEMORY[0x29EDB8EF8]);
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v7, *MEMORY[0x29EDC8738], v8);
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v7, *MEMORY[0x29EDC87F0], v8);
  }

  v10 = *(this + 5);
  if (v7 && (v11 = CFGetTypeID(v7), v11 == CFDictionaryGetTypeID()))
  {
    v18 = v7;
    CFRetain(v7);
  }

  else
  {
    v18 = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State19setIndications_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_123;
  aBlock[4] = this;
  aBlock[5] = v3;
  v15 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v13 = *(this + 2);
  if (v13)
  {
    dispatch_retain(v13);
  }

  if (v12)
  {
    v16 = _Block_copy(v12);
    object = v13;
    if (!v13)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = 0;
  object = v13;
  if (v13)
  {
LABEL_17:
    dispatch_retain(v13);
  }

LABEL_18:
  (*(*v10 + 32))(v10, &v18, &v16);
  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  std::__shared_weak_count::__release_weak(v5);
}

void sub_297497424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, ...)
{
  va_start(va, a16);
  coex::CommandDriver::Callback::~Callback(va);
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v18)
  {
    _Block_release(v18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v19 - 64));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v19 - 56));
  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void sub_29749747C(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 - 56));
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State8shutdownE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1 + 20;
  v3 = v1[21];
  if (v3 != v1 + 20)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 2));
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (v1[22])
  {
    v4 = v1[21];
    v5 = *(v1[20] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    v1[22] = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[3];
        if (v8 && atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
        {
          v9 = v4;
          (*(*v8 + 24))(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }

  v10 = v1[8];
  v1[7] = 0;
  v1[8] = 0;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v1[6];
    v1[5] = 0;
    v1[6] = 0;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v11 = v1[6];
    v1[5] = 0;
    v1[6] = 0;
    if (!v11)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
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

void coex::Module::State::evaluateCurrentCoexBootState_sync(coex::Module::State *this)
{
  v23 = *MEMORY[0x29EDCA608];
  v2 = *(this + 108);
  v3 = (this + 112);
  memset(&v18, 170, sizeof(v18));
  if (*(this + 135) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(this + 14), *(this + 15));
  }

  else
  {
    *&v18.__r_.__value_.__l.__data_ = *v3;
    v18.__r_.__value_.__r.__words[2] = *(this + 16);
  }

  if (v2 > 7)
  {
    v4 = 2;
  }

  else
  {
    v4 = dword_29769C454[v2];
  }

  v5 = strlen(*MEMORY[0x29EDBEFB8]);
  v6 = *(this + 135);
  if (v6 < 0)
  {
    if (v5 != *(this + 15))
    {
      goto LABEL_18;
    }

    if (v5 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v3 = *v3;
LABEL_13:
    if (!memcmp(v3, *MEMORY[0x29EDBEFB8], v5))
    {
      v7 = v4;
    }

    else
    {
      v7 = 2;
    }

    v8 = *(this + 34);
    if (v7 == v8)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  if (v5 == v6)
  {
    goto LABEL_13;
  }

LABEL_18:
  v7 = 2;
  v8 = *(this + 34);
  if (v8 == 2)
  {
    goto LABEL_36;
  }

LABEL_19:
  v9 = *(this + 4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v20 = v8;
    v21 = 1024;
    v22 = v7;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Coex boot state changing from %d -> %d", buf, 0xEu);
  }

  *(this + 34) = v7;
  if (*(this + 7))
  {
    v10 = xpc_dictionary_create(0, 0, 0);
    if (v10 || (v10 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v10) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v10);
        v11 = v10;
      }

      else
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      v11 = xpc_null_create();
      v10 = 0;
    }

    xpc_release(v10);
    v12 = xpc_int64_create(*(this + 34));
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v11, "kWCMCellular_BBState", v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    v14 = *(this + 7);
    v17 = v11;
    if (v11)
    {
      xpc_retain(v11);
      v15 = v17;
    }

    else
    {
      v15 = xpc_null_create();
      v17 = v15;
    }

    coex::XpcClient::sendMessage(v14, 388, &v17, 0);
    xpc_release(v15);
    v17 = 0;
    v16 = *(this + 4);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Notified CXM with baseband state", buf, 2u);
    }

    xpc_release(v11);
  }

LABEL_36:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_2974979D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State19setIndications_syncEv_block_invoke(void *a1, uint64_t *a2)
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (!a1[5])
      {
        goto LABEL_10;
      }

      v8 = *a2;
      v9 = *(v5 + 32);
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (!v10)
        {
          goto LABEL_10;
        }

        v14 = 138412290;
        v15 = v8;
        v11 = "#I Failed to  set indications:\n%@";
        v12 = v9;
        v13 = 12;
      }

      else
      {
        if (!v10)
        {
          goto LABEL_10;
        }

        LOWORD(v14) = 0;
        v11 = "#I Indications set successfully";
        v12 = v9;
        v13 = 2;
      }

      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
LABEL_10:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
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

void coex::Module::State::handleSetNetworkConfigOfInterest_sync(uint64_t *a1, xpc_object_t *a2, unsigned int a3)
{
  v4 = a2;
  v92 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCA9E0])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Invalid XPC array", buf, 2u);
    }

    return;
  }

  v66 = a1;
  v85 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    v85 = Mutable;
  }

  memset(buf, 170, 16);
  v9 = *v4;
  if (*v4)
  {
    xpc_retain(*v4);
    *buf = v9;
  }

  else
  {
    v9 = xpc_null_create();
    *buf = v9;
    if (!v9)
    {
      v9 = 0;
      *buf = xpc_null_create();
      goto LABEL_10;
    }
  }

  xpc_retain(v9);
LABEL_10:
  *&buf[8] = 0;
  xpc_release(v9);
  v65 = a3;
  v71 = *MEMORY[0x29EDC8778];
  v69 = *MEMORY[0x29EDC8608];
  v70 = *MEMORY[0x29EDC8658];
  v67 = v4;
  v68 = *MEMORY[0x29EDC8648];
  cf = *MEMORY[0x29EDC8630];
  while (1)
  {
    v10 = *v4;
    if (*v4)
    {
      xpc_retain(*v4);
    }

    else
    {
      v10 = xpc_null_create();
    }

    if (MEMORY[0x29C272BA0](*v4) == MEMORY[0x29EDCA9E0])
    {
      count = xpc_array_get_count(*v4);
      if (!v10)
      {
LABEL_20:
        v12 = xpc_null_create();
        goto LABEL_21;
      }
    }

    else
    {
      count = 0;
      if (!v10)
      {
        goto LABEL_20;
      }
    }

    xpc_retain(v10);
    v12 = v10;
LABEL_21:
    xpc_release(v10);
    v13 = *buf;
    v14 = *&buf[8];
    xpc_release(v12);
    if (v14 == count && v13 == v12)
    {
      break;
    }

    xdict = 0xAAAAAAAAAAAAAAAALL;
    *&keys = buf;
    *(&keys + 1) = *&buf[8];
    xpc::array::object_proxy::operator xpc::dict(&keys, &xdict);
    v83 = 0xAAAAAAAAAAAAAAAALL;
    value = xpc_dictionary_get_value(xdict, "kWCMCellularSetNetworkConfigOfInterest_ULCenterFreq");
    values[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      values[0] = xpc_null_create();
    }

    xpc::bridge(&keys, values, v16);
    v17 = keys;
    if (!keys || (v18 = CFGetTypeID(keys), v18 != CFNumberGetTypeID()))
    {
      v17 = 0;
      v83 = 0;
      v19 = keys;
      if (!keys)
      {
        goto LABEL_32;
      }

LABEL_31:
      CFRelease(v19);
      goto LABEL_32;
    }

    v83 = v17;
    CFRetain(v17);
    v19 = keys;
    if (keys)
    {
      goto LABEL_31;
    }

LABEL_32:
    xpc_release(values[0]);
    v82 = 0xAAAAAAAAAAAAAAAALL;
    v20 = xpc_dictionary_get_value(xdict, "kWCMCellularSetNetworkConfigOfInterest_ULBandwidth");
    values[0] = v20;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      values[0] = xpc_null_create();
    }

    xpc::bridge(&keys, values, v21);
    v22 = keys;
    if (!keys || (v23 = CFGetTypeID(keys), v23 != CFNumberGetTypeID()))
    {
      v22 = 0;
      v82 = 0;
      v24 = keys;
      if (!keys)
      {
        goto LABEL_41;
      }

LABEL_40:
      CFRelease(v24);
      goto LABEL_41;
    }

    v82 = v22;
    CFRetain(v22);
    v24 = keys;
    if (keys)
    {
      goto LABEL_40;
    }

LABEL_41:
    xpc_release(values[0]);
    v81 = 0xAAAAAAAAAAAAAAAALL;
    v25 = xpc_dictionary_get_value(xdict, "kWCMCellularSetNetworkConfigOfInterest_DLCenterFreq");
    values[0] = v25;
    if (v25)
    {
      xpc_retain(v25);
    }

    else
    {
      values[0] = xpc_null_create();
    }

    xpc::bridge(&keys, values, v26);
    v27 = keys;
    if (!keys || (v28 = CFGetTypeID(keys), v28 != CFNumberGetTypeID()))
    {
      v27 = 0;
      v81 = 0;
      v29 = keys;
      if (!keys)
      {
        goto LABEL_50;
      }

LABEL_49:
      CFRelease(v29);
      goto LABEL_50;
    }

    v81 = v27;
    CFRetain(v27);
    v29 = keys;
    if (keys)
    {
      goto LABEL_49;
    }

LABEL_50:
    xpc_release(values[0]);
    v80 = 0xAAAAAAAAAAAAAAAALL;
    v30 = xpc_dictionary_get_value(xdict, "kWCMCellularSetNetworkConfigOfInterest_DLBandwidth");
    values[0] = v30;
    if (v30)
    {
      xpc_retain(v30);
    }

    else
    {
      values[0] = xpc_null_create();
    }

    xpc::bridge(&keys, values, v31);
    v32 = keys;
    if (!keys || (v33 = CFGetTypeID(keys), v33 != CFNumberGetTypeID()))
    {
      v32 = 0;
      v80 = 0;
      v34 = keys;
      if (!keys)
      {
        goto LABEL_59;
      }

LABEL_58:
      CFRelease(v34);
      goto LABEL_59;
    }

    v80 = v32;
    CFRetain(v32);
    v34 = keys;
    if (keys)
    {
      goto LABEL_58;
    }

LABEL_59:
    xpc_release(values[0]);
    v35 = xpc_dictionary_get_value(xdict, "kWCMCellularSetNetworkConfigOfInterest_BandMask");
    *&keys = v35;
    if (v35)
    {
      xpc_retain(v35);
    }

    else
    {
      *&keys = xpc_null_create();
    }

    v36 = xpc::dyn_cast_or_default(&keys, 0);
    xpc_release(keys);
    if (!v17 || !v22 || !v27)
    {
      if (v32)
      {
        goto LABEL_91;
      }

      goto LABEL_92;
    }

    if (v32)
    {
      v78 = 0;
      v79 = 0;
      *&keys = v71;
      *(&keys + 1) = v70;
      values[0] = v17;
      values[1] = v22;
      v89[0] = v27;
      v89[1] = v32;
      v37 = CFDictionaryCreate(v7, &keys, values, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v38 = v37;
      if (v37)
      {
        v79 = v37;
      }

      v39 = CFDictionaryCreate(v7, &keys, v89, 2, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v40 = v39;
      if (v39)
      {
        v78 = v39;
      }

      v89[0] = 0;
      v41 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v42 = v41;
      if (v41)
      {
        v89[0] = v41;
      }

      ctu::cf::insert<__CFString const*,__CFDictionary const*>(v41, v69, v38);
      ctu::cf::insert<__CFString const*,__CFDictionary const*>(v42, v68, v40);
      *bytes = v36;
      v43 = CFDataCreate(v7, bytes, 8);
      v77[1] = v43;
      *&keys = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      values[0] = v43;
      if (v43)
      {
        CFRetain(v43);
        if (cf)
        {
          CFDictionaryAddValue(v42, cf, v43);
        }

        CFRelease(v43);
      }

      v44 = v7;
      if (cf)
      {
        CFRelease(cf);
      }

      v45 = v85;
      *&keys = v42;
      if (v42)
      {
        CFRetain(v42);
        CFArrayAppendValue(v45, v42);
        CFRelease(v42);
      }

      if (v43)
      {
        CFRelease(v43);
      }

      v7 = v44;
      if (v42)
      {
        CFRelease(v42);
      }

      v4 = v67;
      if (v40)
      {
        CFRelease(v40);
      }

      if (v38)
      {
        CFRelease(v38);
      }

LABEL_91:
      CFRelease(v32);
LABEL_92:
      if (!v27)
      {
        goto LABEL_94;
      }
    }

    CFRelease(v27);
LABEL_94:
    if (v22)
    {
      CFRelease(v22);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    xpc_release(xdict);
    v46 = *buf;
    if (*buf)
    {
      xpc_retain(*buf);
    }

    else
    {
      v46 = xpc_null_create();
    }

    ++*&buf[8];
    xpc_release(v46);
  }

  xpc_release(*buf);
  v47 = v85;
  if (!CFArrayGetCount(v85))
  {
    v63 = v66[4];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(buf, v4);
      if (v87 >= 0)
      {
        v64 = buf;
      }

      else
      {
        v64 = *buf;
      }

      LODWORD(keys) = 136315138;
      *(&keys + 4) = v64;
      _os_log_error_impl(&dword_297476000, v63, OS_LOG_TYPE_ERROR, "XPC array is: %s", &keys, 0xCu);
      if (v87 < 0)
      {
        operator delete(*buf);
      }

      v63 = v66[4];
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
LABEL_138:
        if (!v47)
        {
          return;
        }

        goto LABEL_139;
      }
    }

    else if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_138;
    }

    *buf = 138412290;
    *&buf[4] = v47;
    _os_log_error_impl(&dword_297476000, v63, OS_LOG_TYPE_ERROR, "Band filter array is: %@", buf, 0xCu);
    if (!v47)
    {
      return;
    }

LABEL_139:
    CFRelease(v47);
    return;
  }

  *&keys = 0;
  *buf = *MEMORY[0x29EDC86C8];
  values[0] = v47;
  v48 = CFDictionaryCreate(v7, buf, values, 1, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v49 = v48;
  if (v48)
  {
    *&keys = v48;
  }

  values[0] = 0;
  v50 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v51 = v50;
  if (v50)
  {
    values[0] = v50;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary const*>(v50, *MEMORY[0x29EDC8760], v49);
  v53 = *v66;
  v52 = v66[1];
  *buf = *v66;
  if (!v52 || (v54 = std::__shared_weak_count::lock(v52), (*&buf[8] = v54) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v55 = v54;
  v56 = v66[5];
  if (v51 && (v57 = CFGetTypeID(v51), v57 == CFDictionaryGetTypeID()))
  {
    v77[0] = v51;
    CFRetain(v51);
  }

  else
  {
    v77[0] = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State37handleSetNetworkConfigOfInterest_syncEN3xpc5arrayENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_129;
  aBlock[4] = v66;
  aBlock[5] = v53;
  v74 = v55;
  atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  v58 = _Block_copy(aBlock);
  v59 = v66[2];
  if (v59)
  {
    dispatch_retain(v66[2]);
  }

  if (v58)
  {
    v75 = _Block_copy(v58);
    object = v59;
    if (v59)
    {
      goto LABEL_115;
    }
  }

  else
  {
    v75 = 0;
    object = v59;
    if (v59)
    {
LABEL_115:
      dispatch_retain(v59);
    }
  }

  (*(*v56 + 16))(v56, v77, v65, &v75);
  if (object)
  {
    dispatch_release(object);
  }

  if (v75)
  {
    _Block_release(v75);
  }

  if (v59)
  {
    dispatch_release(v59);
  }

  if (v58)
  {
    _Block_release(v58);
  }

  if (v77[0])
  {
    CFRelease(v77[0]);
  }

  v60 = v74;
  if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
    v61 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_130;
    }

LABEL_129:
    if (atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_130;
    }

    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
    v62 = values[0];
    if (values[0])
    {
LABEL_131:
      CFRelease(v62);
    }
  }

  else
  {
    v61 = *&buf[8];
    if (*&buf[8])
    {
      goto LABEL_129;
    }

LABEL_130:
    v62 = values[0];
    if (values[0])
    {
      goto LABEL_131;
    }
  }

  if (keys)
  {
    CFRelease(keys);
  }

  v47 = v85;
  if (v85)
  {
    goto LABEL_139;
  }
}

void sub_2974986CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, int a28, __int16 a29, char a30, char a31, int a32, __int16 a33, char a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43, int a44, __int16 a45, char a46, char a47, int a48, __int16 a49, char a50, char a51, int a52, __int16 a53, char a54, char a55, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::array::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  if (value)
  {
    v4 = value;
    xpc_retain(value);
    *a2 = v4;
  }

  else
  {
    v4 = xpc_null_create();
    *a2 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v4) != MEMORY[0x29EDCAA00])
  {
    v5 = xpc_null_create();
LABEL_8:
    *a2 = v5;
    goto LABEL_9;
  }

  xpc_retain(v4);
LABEL_9:
  xpc_release(v4);
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

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
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

void ___ZN4coex6Module5State37handleSetNetworkConfigOfInterest_syncEN3xpc5arrayENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Failed to set: %@", &v4, 0xCu);
    }
  }
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

const void **ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(const void **a1)
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

void coex::Module::State::handleSetTxPowerLimit_sync(uint64_t *a1, xpc *this, uint64_t a3)
{
  v5 = xpc::dyn_cast_or_default(this, 0);
  v6 = 3;
  if (!a3)
  {
    v6 = 1;
  }

  v7 = a1[v6 + 9];
  theDict = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  ctu::cf::update<__CFString const*,long long>(v7, *MEMORY[0x29EDC88F8], v5, *MEMORY[0x29EDB8ED8]);
  if (v7)
  {
    CFRelease(v7);
  }

  theDict = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyFailCondition, a3, 0, &theDict);
  if (theDict)
  {
    CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC8918]);
    CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC8848]);
  }

  coex::Module::State::setPolicy_sync(a1, a3);
  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_297498D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_297498DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t coex::Module::State::getSubProperty@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, CFMutableDictionaryRef *a5@<X8>)
{
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 16 * (a3 != 0) + 72);
  if (v8)
  {
    CFRetain(v8);
  }

  ctu::cf::dict_adapter::dict_adapter(v14, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = (*v14[0])(v14, a2);
  Mutable = v9;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    TypeID = CFDictionaryGetTypeID();
    CFRelease(Mutable);
    *a5 = 0;
    if (v11 == TypeID)
    {
      CFRetain(Mutable);
LABEL_11:
      *a5 = Mutable;
      return MEMORY[0x29C270ED0](v14);
    }
  }

  else
  {
    *a5 = 0;
  }

  if (a4)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      goto LABEL_11;
    }
  }

  return MEMORY[0x29C270ED0](v14);
}

void sub_297498EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v5);
  MEMORY[0x29C270ED0](va);
  _Unwind_Resume(a1);
}

void sub_297498F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void coex::Module::State::setPolicy_sync(uint64_t *a1, uint64_t a2)
{
  v169 = *MEMORY[0x29EDCA608];
  if (a1[5])
  {
    v167 = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v6 = Mutable;
    if (Mutable)
    {
      v167 = Mutable;
    }

    memset(buf, 170, 16);
    v7 = 3;
    if (!a2)
    {
      v7 = 1;
    }

    v8 = a1[v7 + 9];
    *&v168 = v8;
    if (v8)
    {
      CFRetain(v8);
    }

    ctu::cf::dict_adapter::dict_adapter(buf, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v165 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    v9 = *MEMORY[0x29EDC8750];
    v10 = (**buf)(buf, *MEMORY[0x29EDC8750]);
    v11 = v10;
    if (v10)
    {
      CFRelease(v10);
      ctu::cf::update<__CFString const*,void const*>(v6, v9, v11);
    }

    if (v6)
    {
      CFRelease(v6);
      v164 = v6;
      CFRetain(v6);
    }

    else
    {
      v164 = 0;
    }

    v13 = *MEMORY[0x29EDC87B8];
    v14 = (**buf)(buf, *MEMORY[0x29EDC87B8]);
    v15 = v14;
    if (v14)
    {
      CFRelease(v14);
      ctu::cf::update<__CFString const*,void const*>(v6, v13, v15);
    }

    if (v6)
    {
      CFRelease(v6);
      v163 = v6;
      CFRetain(v6);
    }

    else
    {
      v163 = 0;
    }

    v16 = *MEMORY[0x29EDC88F8];
    v17 = (**buf)(buf, *MEMORY[0x29EDC88F8]);
    v18 = v17;
    if (v17)
    {
      CFRelease(v17);
      ctu::cf::update<__CFString const*,void const*>(v6, v16, v18);
    }

    if (v6)
    {
      CFRelease(v6);
      v162 = v6;
      CFRetain(v6);
    }

    else
    {
      v162 = 0;
    }

    v19 = *MEMORY[0x29EDC8600];
    v20 = (**buf)(buf, *MEMORY[0x29EDC8600]);
    v21 = v20;
    if (v20)
    {
      CFRelease(v20);
      ctu::cf::update<__CFString const*,void const*>(v6, v19, v21);
    }

    if (v6)
    {
      CFRelease(v6);
      v161 = v6;
      CFRetain(v6);
    }

    else
    {
      v161 = 0;
    }

    v22 = *MEMORY[0x29EDC86E0];
    v23 = (**buf)(buf, *MEMORY[0x29EDC86E0]);
    v24 = v23;
    if (v23)
    {
      CFRelease(v23);
      ctu::cf::update<__CFString const*,void const*>(v6, v22, v24);
    }

    if (v6)
    {
      CFRelease(v6);
      v160 = v6;
      CFRetain(v6);
    }

    else
    {
      v160 = 0;
    }

    v25 = *MEMORY[0x29EDC8AD0];
    v26 = (**buf)(buf, *MEMORY[0x29EDC8AD0]);
    v27 = v26;
    if (v26)
    {
      CFRelease(v26);
      ctu::cf::update<__CFString const*,void const*>(v6, v25, v27);
    }

    if (v6)
    {
      CFRelease(v6);
      v159 = v6;
      CFRetain(v6);
    }

    else
    {
      v159 = 0;
    }

    v28 = *MEMORY[0x29EDC8628];
    v29 = (**buf)(buf, *MEMORY[0x29EDC8628]);
    v30 = v29;
    if (v29)
    {
      CFRelease(v29);
      ctu::cf::update<__CFString const*,void const*>(v6, v28, v30);
    }

    if (v6)
    {
      CFRelease(v6);
      v158 = v6;
      CFRetain(v6);
    }

    else
    {
      v158 = 0;
    }

    v31 = *MEMORY[0x29EDC88D8];
    v32 = (**buf)(buf, *MEMORY[0x29EDC88D8]);
    v33 = v32;
    if (v32)
    {
      CFRelease(v32);
      ctu::cf::update<__CFString const*,void const*>(v6, v31, v33);
    }

    if (v6)
    {
      CFRelease(v6);
      v157 = v6;
      CFRetain(v6);
    }

    else
    {
      v157 = 0;
    }

    v34 = *MEMORY[0x29EDC8730];
    v35 = (**buf)(buf, *MEMORY[0x29EDC8730]);
    v36 = v35;
    if (v35)
    {
      CFRelease(v35);
      ctu::cf::update<__CFString const*,void const*>(v6, v34, v36);
    }

    if (v6)
    {
      CFRelease(v6);
      v156 = v6;
      CFRetain(v6);
    }

    else
    {
      v156 = 0;
    }

    v37 = *MEMORY[0x29EDC8830];
    v38 = (**buf)(buf, *MEMORY[0x29EDC8830]);
    v39 = v38;
    if (v38)
    {
      CFRelease(v38);
      ctu::cf::update<__CFString const*,void const*>(v6, v37, v39);
    }

    if (v6)
    {
      CFRelease(v6);
      v155 = v6;
      CFRetain(v6);
    }

    else
    {
      v155 = 0;
    }

    v40 = *MEMORY[0x29EDC8A70];
    v41 = (**buf)(buf, *MEMORY[0x29EDC8A70]);
    v42 = v41;
    if (v41)
    {
      CFRelease(v41);
      ctu::cf::update<__CFString const*,void const*>(v6, v40, v42);
    }

    if (v6)
    {
      CFRelease(v6);
      v154 = v6;
      CFRetain(v6);
    }

    else
    {
      v154 = 0;
    }

    v43 = *MEMORY[0x29EDC8978];
    v44 = (**buf)(buf, *MEMORY[0x29EDC8978]);
    v45 = v44;
    if (v44)
    {
      CFRelease(v44);
      ctu::cf::update<__CFString const*,void const*>(v6, v43, v45);
    }

    if (v6)
    {
      CFRelease(v6);
      v153 = v6;
      CFRetain(v6);
    }

    else
    {
      v153 = 0;
    }

    v46 = *MEMORY[0x29EDC89A0];
    v47 = (**buf)(buf, *MEMORY[0x29EDC89A0]);
    v48 = v47;
    if (v47)
    {
      CFRelease(v47);
      ctu::cf::update<__CFString const*,void const*>(v6, v46, v48);
    }

    if (v6)
    {
      CFRelease(v6);
      v152 = v6;
      CFRetain(v6);
    }

    else
    {
      v152 = 0;
    }

    v49 = *MEMORY[0x29EDC8A98];
    v50 = (**buf)(buf, *MEMORY[0x29EDC8A98]);
    v51 = v50;
    if (v50)
    {
      CFRelease(v50);
      ctu::cf::update<__CFString const*,void const*>(v6, v49, v51);
    }

    if (v6)
    {
      CFRelease(v6);
      v151 = v6;
      CFRetain(v6);
    }

    else
    {
      v151 = 0;
    }

    v52 = *MEMORY[0x29EDC89C8];
    v53 = (**buf)(buf, *MEMORY[0x29EDC89C8]);
    v54 = v53;
    if (v53)
    {
      CFRelease(v53);
      ctu::cf::update<__CFString const*,void const*>(v6, v52, v54);
    }

    if (v6)
    {
      CFRelease(v6);
      v150 = v6;
      CFRetain(v6);
    }

    else
    {
      v150 = 0;
    }

    v55 = *MEMORY[0x29EDC88A0];
    v56 = (**buf)(buf, *MEMORY[0x29EDC88A0]);
    v57 = v56;
    if (v56)
    {
      CFRelease(v56);
      ctu::cf::update<__CFString const*,void const*>(v6, v55, v57);
    }

    if (v6)
    {
      CFRelease(v6);
      v149 = v6;
      CFRetain(v6);
    }

    else
    {
      v149 = 0;
    }

    v58 = *MEMORY[0x29EDC8900];
    v59 = (**buf)(buf, *MEMORY[0x29EDC8900]);
    v60 = v59;
    if (v59)
    {
      CFRelease(v59);
      ctu::cf::update<__CFString const*,void const*>(v6, v58, v60);
    }

    if (v6)
    {
      CFRelease(v6);
      v148 = v6;
      CFRetain(v6);
    }

    else
    {
      v148 = 0;
    }

    v61 = *MEMORY[0x29EDC8A68];
    v62 = (**buf)(buf, *MEMORY[0x29EDC8A68]);
    v63 = v62;
    if (v62)
    {
      CFRelease(v62);
      ctu::cf::update<__CFString const*,void const*>(v6, v61, v63);
    }

    if (v6)
    {
      CFRelease(v6);
      v147 = v6;
      CFRetain(v6);
    }

    else
    {
      v147 = 0;
    }

    v64 = *MEMORY[0x29EDC8940];
    v65 = (**buf)(buf, *MEMORY[0x29EDC8940]);
    v66 = v65;
    if (v65)
    {
      CFRelease(v65);
      ctu::cf::update<__CFString const*,void const*>(v6, v64, v66);
    }

    if (v6)
    {
      CFRelease(v6);
      v146 = v6;
      CFRetain(v6);
    }

    else
    {
      v146 = 0;
    }

    v67 = *MEMORY[0x29EDC88A8];
    v68 = (**buf)(buf, *MEMORY[0x29EDC88A8]);
    v69 = v68;
    if (v68)
    {
      CFRelease(v68);
      ctu::cf::update<__CFString const*,void const*>(v6, v67, v69);
    }

    if (v6)
    {
      CFRelease(v6);
      v145 = v6;
      CFRetain(v6);
    }

    else
    {
      v145 = 0;
    }

    v70 = *MEMORY[0x29EDC8828];
    v71 = (**buf)(buf, *MEMORY[0x29EDC8828]);
    v72 = v71;
    if (v71)
    {
      CFRelease(v71);
      ctu::cf::update<__CFString const*,void const*>(v6, v70, v72);
    }

    if (v6)
    {
      CFRelease(v6);
      v144 = v6;
      CFRetain(v6);
    }

    else
    {
      v144 = 0;
    }

    v73 = *MEMORY[0x29EDC87A0];
    v74 = (**buf)(buf, *MEMORY[0x29EDC87A0]);
    v75 = v74;
    if (v74)
    {
      CFRelease(v74);
      ctu::cf::update<__CFString const*,void const*>(v6, v73, v75);
    }

    if (v6)
    {
      CFRelease(v6);
      v143 = v6;
      CFRetain(v6);
    }

    else
    {
      v143 = 0;
    }

    v76 = *MEMORY[0x29EDC8A78];
    v77 = (**buf)(buf, *MEMORY[0x29EDC8A78]);
    v78 = v77;
    if (v77)
    {
      CFRelease(v77);
      ctu::cf::update<__CFString const*,void const*>(v6, v76, v78);
    }

    if (v6)
    {
      CFRelease(v6);
      v142 = v6;
      CFRetain(v6);
    }

    else
    {
      v142 = 0;
    }

    v79 = *MEMORY[0x29EDC8A88];
    v80 = (**buf)(buf, *MEMORY[0x29EDC8A88]);
    v81 = v80;
    if (v80)
    {
      CFRelease(v80);
      ctu::cf::update<__CFString const*,void const*>(v6, v79, v81);
    }

    if (v6)
    {
      CFRelease(v6);
      v141 = v6;
      CFRetain(v6);
    }

    else
    {
      v141 = 0;
    }

    v82 = *MEMORY[0x29EDC8A90];
    v83 = (**buf)(buf, *MEMORY[0x29EDC8A90]);
    v84 = v83;
    if (v83)
    {
      CFRelease(v83);
      ctu::cf::update<__CFString const*,void const*>(v6, v82, v84);
    }

    if (v6)
    {
      CFRelease(v6);
      v140 = v6;
      CFRetain(v6);
    }

    else
    {
      v140 = 0;
    }

    v85 = *MEMORY[0x29EDC8A30];
    v86 = (**buf)(buf, *MEMORY[0x29EDC8A30]);
    v87 = v86;
    if (v86)
    {
      CFRelease(v86);
      ctu::cf::update<__CFString const*,void const*>(v6, v85, v87);
    }

    if (v6)
    {
      CFRelease(v6);
      v139 = v6;
      CFRetain(v6);
    }

    else
    {
      v139 = 0;
    }

    v88 = *MEMORY[0x29EDC8A80];
    v89 = (**buf)(buf, *MEMORY[0x29EDC8A80]);
    v90 = v89;
    if (v89)
    {
      CFRelease(v89);
      ctu::cf::update<__CFString const*,void const*>(v6, v88, v90);
    }

    if (v6)
    {
      CFRelease(v6);
      v138 = v6;
      CFRetain(v6);
    }

    else
    {
      v138 = 0;
    }

    v91 = *MEMORY[0x29EDC8A28];
    v92 = (**buf)(buf, *MEMORY[0x29EDC8A28]);
    v93 = v92;
    if (v92)
    {
      CFRelease(v92);
      ctu::cf::update<__CFString const*,void const*>(v6, v91, v93);
    }

    if (v6)
    {
      CFRelease(v6);
      v137 = v6;
      CFRetain(v6);
    }

    else
    {
      v137 = 0;
    }

    v94 = *MEMORY[0x29EDC86D8];
    v95 = (**buf)(buf, *MEMORY[0x29EDC86D8]);
    v96 = v95;
    if (v95)
    {
      CFRelease(v95);
      ctu::cf::update<__CFString const*,void const*>(v6, v94, v96);
    }

    if (v6)
    {
      CFRelease(v6);
      v136 = v6;
      CFRetain(v6);
    }

    else
    {
      v136 = 0;
    }

    v97 = *MEMORY[0x29EDC8710];
    v98 = (**buf)(buf, *MEMORY[0x29EDC8710]);
    v99 = v98;
    if (v98)
    {
      CFRelease(v98);
      ctu::cf::update<__CFString const*,void const*>(v6, v97, v99);
    }

    if (v6)
    {
      CFRelease(v6);
      v135 = v6;
      CFRetain(v6);
    }

    else
    {
      v135 = 0;
    }

    v100 = *MEMORY[0x29EDC8638];
    v101 = (**buf)(buf, *MEMORY[0x29EDC8638]);
    v102 = v101;
    if (v101)
    {
      CFRelease(v101);
      ctu::cf::update<__CFString const*,void const*>(v6, v100, v102);
    }

    if (v6)
    {
      CFRelease(v6);
      v134 = v6;
      CFRetain(v6);
    }

    else
    {
      v134 = 0;
    }

    v103 = *MEMORY[0x29EDC8AD8];
    v104 = (**buf)(buf, *MEMORY[0x29EDC8AD8]);
    v105 = v104;
    if (v104)
    {
      CFRelease(v104);
      ctu::cf::update<__CFString const*,void const*>(v6, v103, v105);
    }

    if (v6)
    {
      CFRelease(v6);
      v133 = v6;
      CFRetain(v6);
    }

    else
    {
      v133 = 0;
    }

    v106 = *MEMORY[0x29EDC8A38];
    v107 = (**buf)(buf, *MEMORY[0x29EDC8A38]);
    v108 = v107;
    if (v107)
    {
      CFRelease(v107);
      ctu::cf::update<__CFString const*,void const*>(v6, v106, v108);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    v109 = capabilities::abs::supportsCoexGPSReporting(v107);
    ctu::cf::update<__CFString const*,BOOL>(v6, *MEMORY[0x29EDC89F8], v109);
    if (!CFDictionaryGetCount(v6))
    {
      v124 = a1[4];
      if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v168) = 0;
        _os_log_impl(&dword_297476000, v124, OS_LOG_TYPE_DEFAULT, "#I Nothing in policy yet, bail\n", &v168, 2u);
      }

      goto LABEL_217;
    }

    v132 = 0;
    v110 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v111 = v110;
    if (v110)
    {
      v132 = v110;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v110, *MEMORY[0x29EDC8688], v6);
    theDict = 0xAAAAAAAAAAAAAAAALL;
    coex::Module::State::getSubProperty(a1, coex::kKeyFailCondition, 0, 0, &theDict);
    if (theDict)
    {
      CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC8AA8]);
    }

    v112 = a1[4];
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v168) = 138412290;
      *(&v168 + 4) = v111;
      _os_log_impl(&dword_297476000, v112, OS_LOG_TYPE_DEFAULT, "#I Setting policy with: %@", &v168, 0xCu);
    }

    v114 = *a1;
    v113 = a1[1];
    *&v168 = *a1;
    if (!v113 || (v115 = std::__shared_weak_count::lock(v113), (*(&v168 + 1) = v115) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v116 = v115;
    v117 = a1[5];
    if (v111 && (v118 = CFGetTypeID(v111), v118 == CFDictionaryGetTypeID()))
    {
      cf = v111;
      CFRetain(v111);
    }

    else
    {
      cf = 0;
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_320;
    aBlock[4] = a1;
    aBlock[5] = v114;
    v126 = v116;
    atomic_fetch_add_explicit(&v116->__shared_owners_, 1uLL, memory_order_relaxed);
    ctu::cf::dict_adapter::dict_adapter(v127, buf);
    v119 = _Block_copy(aBlock);
    v120 = a1[2];
    if (v120)
    {
      dispatch_retain(v120);
    }

    if (v119)
    {
      v128 = _Block_copy(v119);
      object = v120;
      if (!v120)
      {
        goto LABEL_196;
      }
    }

    else
    {
      v128 = 0;
      object = v120;
      if (!v120)
      {
LABEL_196:
        (*(*v117 + 16))(v117, &cf, a2, &v128);
        if (object)
        {
          dispatch_release(object);
        }

        if (v128)
        {
          _Block_release(v128);
        }

        if (v120)
        {
          dispatch_release(v120);
        }

        if (v119)
        {
          _Block_release(v119);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        MEMORY[0x29C270ED0](v127);
        v121 = v126;
        if (v126 && !atomic_fetch_add(&v126->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
          v122 = *(&v168 + 1);
          if (!*(&v168 + 1))
          {
            goto LABEL_210;
          }
        }

        else
        {
          v122 = *(&v168 + 1);
          if (!*(&v168 + 1))
          {
            goto LABEL_210;
          }
        }

        if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v122->__on_zero_shared)(v122);
          std::__shared_weak_count::__release_weak(v122);
          v123 = theDict;
          if (!theDict)
          {
            goto LABEL_212;
          }

          goto LABEL_211;
        }

LABEL_210:
        v123 = theDict;
        if (!theDict)
        {
LABEL_212:
          if (v132)
          {
            CFRelease(v132);
          }

          v6 = v167;
LABEL_217:
          MEMORY[0x29C270ED0](buf);
          if (v6)
          {
            CFRelease(v6);
          }

          return;
        }

LABEL_211:
        CFRelease(v123);
        goto LABEL_212;
      }
    }

    dispatch_retain(v120);
    goto LABEL_196;
  }

  v12 = a1[4];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Invalid driver", buf, 2u);
  }
}

void sub_29749A3F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void coex::Module::State::handleSetWCI2TxPowerLimit_sync(uint64_t *a1, xpc *this, uint64_t a3)
{
  v5 = xpc::dyn_cast_or_default(this, 0);
  v6 = 3;
  if (!a3)
  {
    v6 = 1;
  }

  v7 = a1[v6 + 9];
  theDict = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  ctu::cf::update<__CFString const*,long long>(v7, *MEMORY[0x29EDC87B8], v5, *MEMORY[0x29EDB8ED8]);
  if (v7)
  {
    CFRelease(v7);
  }

  theDict = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyFailCondition, a3, 0, &theDict);
  if (theDict)
  {
    CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC8918]);
    CFDictionaryRemoveValue(theDict, *MEMORY[0x29EDC8848]);
  }

  coex::Module::State::setPolicy_sync(a1, a3);
  if (theDict)
  {
    CFRelease(theDict);
  }
}

void sub_29749A88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29749A8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void coex::Module::State::handleSetWCI2CalibrationInfo_sync(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_297476000, v1, OS_LOG_TYPE_ERROR, "WCMCellularSetWCI2CalibrationInfo not supported", v2, 2u);
  }
}

void coex::Module::State::handleSetWCI2Mode_sync(uint64_t *a1, xpc_object_t *a2, unsigned int a3)
{
  value = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Policy");
  v156 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  *bytes = v7;
  v8 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_PowerThreshold");
  v156 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v140 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v9 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_RB_Threshold");
  v156 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v10 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v11 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_LTE_TxDenialThreshold");
  v156 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v13 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_APTTable");
  v156 = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v14 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v15 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimit");
  v156 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v17 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_WCI2PowerLimit");
  v156 = v17;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v139 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v18 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_LinkPathLossThreshold");
  v156 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v138 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v19 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_RBFilterAlpha");
  v156 = v19;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    v156 = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v156, v20, 0.0);
  v22 = v21;
  xpc_release(v156);
  v23 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_FilterRBThreshold");
  v156 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v137 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v24 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_ControllerTxPowerLimitTO");
  v156 = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v136 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v25 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_WCI2PowerLimitTO");
  v156 = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v135 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v26 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_MaxAllowedFrameDenials");
  v156 = v26;
  if (v26)
  {
    xpc_retain(v26);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v27 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v28 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_FrameDenialWindow");
  v156 = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v145 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v29 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_TxPowerThresholdForAdvTxNotice");
  v156 = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v134 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v30 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_RbThresholdForAdvTxNotice");
  v156 = v30;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v132 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v31 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Controller_RB_Threshold");
  v156 = v31;
  if (v31)
  {
    xpc_retain(v31);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v131 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v32 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Harq_nack_ratio_Threshold");
  v156 = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v130 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v33 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Controller_PowerLimiting_Enable");
  v156 = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v129 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v34 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_enabled");
  v156 = v34;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v128 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v35 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_critical_ul_ca_bitmap");
  v156 = v35;
  if (v35)
  {
    xpc_retain(v35);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v127 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v36 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_tx_denial_ca_bitmap");
  v156 = v36;
  if (v36)
  {
    xpc_retain(v36);
  }

  else
  {
    v156 = xpc_null_create();
  }

  v126 = xpc::dyn_cast_or_default(&v156, 0);
  xpc_release(v156);
  v156 = 0xAAAAAAAAAAAAAAAALL;
  v37 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_ca_grp_bitmap");
  v154 = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v154 = xpc_null_create();
  }

  v133 = v16;
  xpc::bridge(&v155, &v154, v38);
  v39 = v155;
  if (!v155 || (v40 = CFGetTypeID(v155), v40 != CFArrayGetTypeID()))
  {
    v156 = 0;
    v41 = v155;
    if (!v155)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v156 = v39;
  CFRetain(v39);
  v41 = v155;
  if (v155)
  {
LABEL_75:
    CFRelease(v41);
  }

LABEL_76:
  xpc_release(v154);
  v155 = 0xAAAAAAAAAAAAAAAALL;
  v42 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_consecutive_denial_threshold");
  v153 = v42;
  if (v42)
  {
    xpc_retain(v42);
  }

  else
  {
    v153 = xpc_null_create();
  }

  xpc::bridge(&v154, &v153, v43);
  if (!v154 || (cf = v154, v44 = CFGetTypeID(v154), v44 != CFArrayGetTypeID()))
  {
    cf = 0;
    v155 = 0;
    v45 = v154;
    if (!v154)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v155 = cf;
  CFRetain(cf);
  v45 = v154;
  if (v154)
  {
LABEL_84:
    CFRelease(v45);
  }

LABEL_85:
  xpc_release(v153);
  v154 = 0xAAAAAAAAAAAAAAAALL;
  v46 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_duty_cycle_numerator_rx_prio_req");
  v152 = v46;
  if (v46)
  {
    xpc_retain(v46);
  }

  else
  {
    v152 = xpc_null_create();
  }

  xpc::bridge(&v153, &v152, v47);
  if (!v153 || (v143 = v153, v48 = CFGetTypeID(v153), v48 != CFArrayGetTypeID()))
  {
    v143 = 0;
    v154 = 0;
    v49 = v153;
    if (!v153)
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  v154 = v143;
  CFRetain(v143);
  v49 = v153;
  if (v153)
  {
LABEL_93:
    CFRelease(v49);
  }

LABEL_94:
  xpc_release(v152);
  v153 = 0xAAAAAAAAAAAAAAAALL;
  v50 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_power_limiting_power_threshold");
  v151 = v50;
  if (v50)
  {
    xpc_retain(v50);
  }

  else
  {
    v151 = xpc_null_create();
  }

  xpc::bridge(&v152, &v151, v51);
  if (!v152 || (v142 = v152, v52 = CFGetTypeID(v152), v52 != CFArrayGetTypeID()))
  {
    v142 = 0;
    v153 = 0;
    v53 = v152;
    if (!v152)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  v153 = v142;
  CFRetain(v142);
  v53 = v152;
  if (v152)
  {
LABEL_102:
    CFRelease(v53);
  }

LABEL_103:
  xpc_release(v151);
  v152 = 0xAAAAAAAAAAAAAAAALL;
  v54 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_power_limiting_RB_threshold");
  v150 = v54;
  if (v54)
  {
    xpc_retain(v54);
  }

  else
  {
    v150 = xpc_null_create();
  }

  xpc::bridge(&v151, &v150, v55);
  if (!v151 || (v141 = v151, v56 = CFGetTypeID(v151), v56 != CFArrayGetTypeID()))
  {
    v141 = 0;
    v152 = 0;
    v57 = v151;
    if (!v151)
    {
      goto LABEL_112;
    }

    goto LABEL_111;
  }

  v152 = v141;
  CFRetain(v141);
  v57 = v151;
  if (v151)
  {
LABEL_111:
    CFRelease(v57);
  }

LABEL_112:
  xpc_release(v150);
  v151 = 0xAAAAAAAAAAAAAAAALL;
  v58 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_advance_notice_power_threshold");
  v149 = v58;
  if (v58)
  {
    xpc_retain(v58);
  }

  else
  {
    v149 = xpc_null_create();
  }

  xpc::bridge(&v150, &v149, v59);
  v60 = v150;
  if (!v150 || (v61 = CFGetTypeID(v150), v61 != CFArrayGetTypeID()))
  {
    v60 = 0;
    v151 = 0;
    v62 = v150;
    if (!v150)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

  v151 = v60;
  CFRetain(v60);
  v62 = v150;
  if (v150)
  {
LABEL_120:
    CFRelease(v62);
  }

LABEL_121:
  xpc_release(v149);
  v150 = 0xAAAAAAAAAAAAAAAALL;
  v63 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_Ext_power_limiting_RB_threshold");
  v148 = v63;
  if (v63)
  {
    xpc_retain(v63);
  }

  else
  {
    v148 = xpc_null_create();
  }

  xpc::bridge(&v149, &v148, v64);
  if (!v149 || (v65 = v149, v66 = CFGetTypeID(v149), v66 != CFArrayGetTypeID()))
  {
    v65 = 0;
    v150 = 0;
    v124 = v60;
    v125 = v14;
    v67 = v149;
    if (!v149)
    {
      goto LABEL_130;
    }

    goto LABEL_129;
  }

  v150 = v65;
  CFRetain(v65);
  v124 = v60;
  v125 = v14;
  v67 = v149;
  if (v149)
  {
LABEL_129:
    CFRelease(v67);
  }

LABEL_130:
  v123 = v65;
  v68 = v12;
  xpc_release(v148);
  v149 = 0;
  v69 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v71 = Mutable;
  if (Mutable)
  {
    v149 = Mutable;
  }

  v121 = *MEMORY[0x29EDC86B0];
  ctu::cf::insert<__CFString const*,long long>(Mutable, *MEMORY[0x29EDC86B0], v27, v69);
  v120 = *MEMORY[0x29EDC8610];
  ctu::cf::insert<__CFString const*,long long>(v71, *MEMORY[0x29EDC8610], v145, v69);
  v72 = CFDataCreate(v69, bytes, 8);
  v148 = v72;
  v122 = a1;
  v73 = a1 + 9;
  v146 = a3;
  if (a3)
  {
    v74 = 3;
  }

  else
  {
    v74 = 1;
  }

  v75 = v73[v74];
  object = v75;
  if (v75)
  {
    CFRetain(v75);
  }

  ctu::cf::update<__CFString const*,__CFData const*>(v75, *MEMORY[0x29EDC8600], v72);
  if (v75)
  {
    CFRelease(v75);
  }

  v76 = v73[v74];
  object = v76;
  if (v76)
  {
    CFRetain(v76);
  }

  ctu::cf::update<__CFString const*,long long>(v76, *MEMORY[0x29EDC8750], v140, v69);
  if (v76)
  {
    CFRelease(v76);
  }

  v77 = v73[v74];
  object = v77;
  if (v77)
  {
    CFRetain(v77);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v77, *MEMORY[0x29EDC86E0], v10, v69);
  if (v77)
  {
    CFRelease(v77);
  }

  v78 = v73[v74];
  object = v78;
  if (v78)
  {
    CFRetain(v78);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v78, *MEMORY[0x29EDC8AD0], v68, v69);
  if (v78)
  {
    CFRelease(v78);
  }

  v79 = v73[v74];
  object = v79;
  if (v79)
  {
    CFRetain(v79);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v79, *MEMORY[0x29EDC8628], v125, v69);
  if (v79)
  {
    CFRelease(v79);
  }

  v80 = v73[v74];
  object = v80;
  if (v80)
  {
    CFRetain(v80);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v80, *MEMORY[0x29EDC88F8], v133, v69);
  if (v80)
  {
    CFRelease(v80);
  }

  v81 = v73[v74];
  object = v81;
  if (v81)
  {
    CFRetain(v81);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v81, *MEMORY[0x29EDC87B8], v139, v69);
  if (v81)
  {
    CFRelease(v81);
  }

  v82 = v73[v74];
  object = v82;
  if (v82)
  {
    CFRetain(v82);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v82, *MEMORY[0x29EDC88D8], v138, v69);
  if (v82)
  {
    CFRelease(v82);
  }

  v83 = v73[v74];
  object = v83;
  if (v83)
  {
    CFRetain(v83);
  }

  ctu::cf::update<__CFString const*,double>(v83, *MEMORY[0x29EDC8730], v69, v22);
  if (v83)
  {
    CFRelease(v83);
  }

  v84 = v73[v74];
  object = v84;
  if (v84)
  {
    CFRetain(v84);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v84, *MEMORY[0x29EDC8830], v137, v69);
  if (v84)
  {
    CFRelease(v84);
  }

  v85 = v73[v74];
  object = v85;
  if (v85)
  {
    CFRetain(v85);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v85, *MEMORY[0x29EDC8A70], v136, v69);
  if (v85)
  {
    CFRelease(v85);
  }

  v86 = v73[v74];
  object = v86;
  if (v86)
  {
    CFRetain(v86);
  }

  ctu::cf::update<__CFString const*,unsigned int>(v86, *MEMORY[0x29EDC8978], v135, v69);
  if (v86)
  {
    CFRelease(v86);
  }

  v87 = v73[v74];
  object = v87;
  if (v87)
  {
    CFRetain(v87);
  }

  ctu::cf::update<__CFString const*,__CFData const*>(v87, *MEMORY[0x29EDC89A0], v71);
  if (v87)
  {
    CFRelease(v87);
  }

  v88 = v73[v74];
  object = v88;
  if (v88)
  {
    CFRetain(v88);
  }

  ctu::cf::update<__CFString const*,long long>(v88, *MEMORY[0x29EDC8A98], v134, v69);
  if (v88)
  {
    CFRelease(v88);
  }

  v89 = v73[v74];
  object = v89;
  if (v89)
  {
    CFRetain(v89);
  }

  ctu::cf::update<__CFString const*,long long>(v89, *MEMORY[0x29EDC89C8], v132, v69);
  if (v89)
  {
    CFRelease(v89);
  }

  v90 = v73[v74];
  object = v90;
  if (v90)
  {
    CFRetain(v90);
  }

  ctu::cf::update<__CFString const*,long long>(v90, *MEMORY[0x29EDC88A0], v131, v69);
  if (v90)
  {
    CFRelease(v90);
  }

  v91 = v73[v74];
  object = v91;
  if (v91)
  {
    CFRetain(v91);
  }

  ctu::cf::update<__CFString const*,long long>(v91, *MEMORY[0x29EDC8900], v130, v69);
  if (v91)
  {
    CFRelease(v91);
  }

  v92 = v73[v74];
  object = v92;
  if (v92)
  {
    CFRetain(v92);
  }

  ctu::cf::update<__CFString const*,BOOL>(v92, *MEMORY[0x29EDC8A68], v129);
  if (v92)
  {
    CFRelease(v92);
  }

  v93 = v73[v74];
  object = v93;
  if (v93)
  {
    CFRetain(v93);
  }

  ctu::cf::update<__CFString const*,BOOL>(v93, *MEMORY[0x29EDC8940], v128);
  if (v93)
  {
    CFRelease(v93);
  }

  v94 = v73[v74];
  object = v94;
  if (v94)
  {
    CFRetain(v94);
  }

  ctu::cf::update<__CFString const*,long long>(v94, *MEMORY[0x29EDC88A8], v127, v69);
  if (v94)
  {
    CFRelease(v94);
  }

  v95 = v73[v74];
  object = v95;
  if (v95)
  {
    CFRetain(v95);
  }

  ctu::cf::update<__CFString const*,long long>(v95, *MEMORY[0x29EDC8828], v126, v69);
  if (v95)
  {
    CFRelease(v95);
  }

  v96 = v73[v74];
  object = v96;
  if (v96)
  {
    CFRetain(v96);
  }

  v97 = v156;
  ctu::cf::update<__CFString const*,__CFArray const*>(v96, *MEMORY[0x29EDC87A0], v156);
  if (v96)
  {
    CFRelease(v96);
  }

  v98 = v73[v74];
  object = v98;
  if (v98)
  {
    CFRetain(v98);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v98, *MEMORY[0x29EDC8A78], cf);
  if (v98)
  {
    CFRelease(v98);
  }

  v99 = v73[v74];
  object = v99;
  if (v99)
  {
    CFRetain(v99);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v99, *MEMORY[0x29EDC8A88], v143);
  if (v99)
  {
    CFRelease(v99);
  }

  v100 = v73[v74];
  object = v100;
  if (v100)
  {
    CFRetain(v100);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v100, *MEMORY[0x29EDC8A90], v142);
  if (v100)
  {
    CFRelease(v100);
  }

  v101 = v73[v74];
  object = v101;
  if (v101)
  {
    CFRetain(v101);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v101, *MEMORY[0x29EDC8A30], v141);
  if (v101)
  {
    CFRelease(v101);
  }

  v102 = v73[v74];
  object = v102;
  if (v102)
  {
    CFRetain(v102);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v102, *MEMORY[0x29EDC8A80], v124);
  if (v102)
  {
    CFRelease(v102);
  }

  v103 = v73[v74];
  object = v103;
  if (v103)
  {
    CFRetain(v103);
  }

  ctu::cf::update<__CFString const*,__CFArray const*>(v103, *MEMORY[0x29EDC8A28], v123);
  if (v103)
  {
    CFRelease(v103);
  }

  if (capabilities::abs::supportsCoexEur5G(v104))
  {
    v105 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_CoexTech");
    object = v105;
    if (v105)
    {
      xpc_retain(v105);
    }

    else
    {
      object = xpc_null_create();
    }

    v106 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v107 = v73[v74];
    object = v107;
    if (v107)
    {
      CFRetain(v107);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v107, *MEMORY[0x29EDC86D8], v146, v69);
    if (v107)
    {
      CFRelease(v107);
    }

    v108 = v73[v74];
    object = v108;
    if (v108)
    {
      CFRetain(v108);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v108, *MEMORY[0x29EDC8710], v146, v69);
    if (v108)
    {
      CFRelease(v108);
    }

    v109 = v73[v74];
    object = v109;
    if (v109)
    {
      CFRetain(v109);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v109, *MEMORY[0x29EDC8638], v106, v69);
    if (v109)
    {
      CFRelease(v109);
    }

    v110 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_NGC_TxDenialThresholdSlots");
    object = v110;
    if (v110)
    {
      xpc_retain(v110);
    }

    else
    {
      object = xpc_null_create();
    }

    v111 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v112 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_NGC_MaxAllowedSlotDenials");
    object = v112;
    if (v112)
    {
      xpc_retain(v112);
    }

    else
    {
      object = xpc_null_create();
    }

    v113 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v114 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Mode_NGC_SlotsDenialWindow");
    object = v114;
    if (v114)
    {
      xpc_retain(v114);
    }

    else
    {
      object = xpc_null_create();
    }

    v115 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    object = 0;
    v116 = CFDictionaryCreateMutable(v69, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v117 = v116;
    if (v116)
    {
      object = v116;
    }

    ctu::cf::insert<__CFString const*,long long>(v116, v121, v113, v69);
    ctu::cf::insert<__CFString const*,long long>(v117, v120, v115, v69);
    v118 = v73[v74];
    if (v118)
    {
      CFRetain(v118);
    }

    ctu::cf::update<__CFString const*,unsigned int>(v118, *MEMORY[0x29EDC8AD8], v111, v69);
    if (v118)
    {
      CFRelease(v118);
    }

    v119 = v73[v74];
    if (v119)
    {
      CFRetain(v119);
    }

    ctu::cf::update<__CFString const*,__CFData const*>(v119, *MEMORY[0x29EDC8A38], v117);
    if (v119)
    {
      CFRelease(v119);
    }

    if (v117)
    {
      CFRelease(v117);
    }
  }

  object = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(v122, coex::kKeyFailCondition, 0, 0, &object);
  if (object)
  {
    CFDictionaryRemoveValue(object, *MEMORY[0x29EDC8970]);
    CFDictionaryRemoveValue(object, *MEMORY[0x29EDC8848]);
  }

  coex::Module::State::setPolicy_sync(v122, v146);
  if (object)
  {
    CFRelease(object);
  }

  if (v148)
  {
    CFRelease(v148);
  }

  if (v149)
  {
    CFRelease(v149);
  }

  if (v150)
  {
    CFRelease(v150);
  }

  if (v151)
  {
    CFRelease(v151);
  }

  if (v152)
  {
    CFRelease(v152);
  }

  if (v153)
  {
    CFRelease(v153);
  }

  if (v154)
  {
    CFRelease(v154);
  }

  if (v155)
  {
    CFRelease(v155);
  }

  if (v97)
  {
    CFRelease(v97);
  }
}

void sub_29749BDF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, const void *a32, xpc_object_t object)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a32);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&object);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v33 - 184));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v33 - 176));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 168));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 160));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 152));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 144));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 136));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 128));
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v33 - 120));
  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(const void **a1)
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

void coex::Module::State::handleSetLinkQualityMode_sync(uint64_t a1, xpc_object_t *a2, uint64_t a3)
{
  object[1] = *MEMORY[0x29EDCA608];
  value = xpc_dictionary_get_value(*a2, "kWCMBTSetLinkQuality_Mode");
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v7 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  v8 = xpc_dictionary_get_value(*a2, "kWCMBTSetLinkQuality_EventType");
  object[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  v9 = xpc::dyn_cast_or_default(object, 0);
  xpc_release(object[0]);
  if (!v7)
  {
    goto LABEL_15;
  }

  if (v9 == 1)
  {
    v10 = 0;
    v11 = *(a1 + 104);
    if (v11 == 1)
    {
      return;
    }

    goto LABEL_16;
  }

  if (v9 == 2)
  {
    v10 = 1;
    v11 = *(a1 + 104);
    if (v11 == 2)
    {
      return;
    }

    goto LABEL_16;
  }

  v12 = *(a1 + 32);
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
LABEL_15:
    v10 = 0;
    v9 = 0;
    v11 = *(a1 + 104);
    if (!v11)
    {
      return;
    }

    goto LABEL_16;
  }

  LODWORD(object[0]) = 67109120;
  HIDWORD(object[0]) = v9;
  _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "Unrecognized event type: %d", object, 8u);
  v10 = 0;
  v9 = 0;
  v11 = *(a1 + 104);
  if (!v11)
  {
    return;
  }

LABEL_16:
  object[0] = 0xAAAAAAAAAAAAAAAALL;
  v13 = *MEMORY[0x29EDC8708];
  coex::Module::State::getSubProperty(a1, *MEMORY[0x29EDC8708], a3, 1, object);
  cf = 0xAAAAAAAAAAAAAAAALL;
  v14 = *MEMORY[0x29EDC86F8];
  coex::Module::State::getSubProperty(a1, *MEMORY[0x29EDC86F8], a3, 1, &cf);
  v15 = v11 ^ v9;
  v16 = MEMORY[0x29EDB8ED8];
  if (v15)
  {
    ctu::cf::update<__CFString const*,BOOL>(object[0], *MEMORY[0x29EDC8AE0], v9 & 1);
    if (v9)
    {
      ctu::cf::update<__CFString const*,double>(object[0], *MEMORY[0x29EDC8AF0], *v16, 1.0);
    }
  }

  if ((v15 & 2) != 0)
  {
    ctu::cf::update<__CFString const*,BOOL>(cf, *MEMORY[0x29EDC8AE0], v10);
    if (v10)
    {
      v17 = xpc_dictionary_get_value(*a2, "kWCMCellularSetLinkQuality_BLERBlockCount");
      v24 = v17;
      if (v17)
      {
        xpc_retain(v17);
      }

      else
      {
        v24 = xpc_null_create();
      }

      v18 = xpc::dyn_cast_or_default(&v24, 0);
      v19 = *v16;
      ctu::cf::update<__CFString const*,long long>(cf, *MEMORY[0x29EDC8698], v18, *v16);
      xpc_release(v24);
      v20 = xpc_dictionary_get_value(*a2, "kWCMCellularSetLinkQuality_BLERThreshold");
      v24 = v20;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        v24 = xpc_null_create();
      }

      v21 = xpc::dyn_cast_or_default(&v24, 0);
      ctu::cf::update<__CFString const*,long long>(cf, *MEMORY[0x29EDC8980], v21, v19);
      xpc_release(v24);
    }
  }

  v22 = *(a1 + 72 + 16 * (a3 != 0));
  v24 = v22;
  if (v22)
  {
    CFRetain(v22);
  }

  ctu::cf::update<__CFString const*,__CFData const*>(v22, v13, object[0]);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 72 + 16 * (a3 != 0));
  v24 = v23;
  if (v23)
  {
    CFRetain(v23);
  }

  ctu::cf::update<__CFString const*,__CFData const*>(v23, v14, cf);
  if (v23)
  {
    CFRelease(v23);
  }

  coex::Module::State::setLinkQualityMode_sync(a1, v9, a3);
  if (cf)
  {
    CFRelease(cf);
  }

  if (object[0])
  {
    CFRelease(object[0]);
  }
}

void sub_29749C860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, xpc_object_t a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void coex::Module::State::setLinkQualityMode_sync(uint64_t a1, int a2, uint64_t a3)
{
  v38 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v7 = Mutable;
  if (Mutable)
  {
    v38 = Mutable;
  }

  v37[0] = 0xAAAAAAAAAAAAAAAALL;
  v37[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 16 * (a3 != 0) + 72);
  v33 = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  ctu::cf::dict_adapter::dict_adapter(v37, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 104) ^ a2;
  if (v9)
  {
    v36 = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    v10 = *MEMORY[0x29EDC8708];
    v11 = (*v37[0])(v37, *MEMORY[0x29EDC8708]);
    v12 = v11;
    if (v11)
    {
      CFRelease(v11);
      ctu::cf::update<__CFString const*,void const*>(v7, v10, v12);
    }

    if (!v7)
    {
      if ((v9 & 2) == 0)
      {
        goto LABEL_26;
      }

      v35 = 0;
LABEL_21:
      v13 = 1;
      goto LABEL_22;
    }

    CFRelease(v7);
    if ((v9 & 2) == 0)
    {
      goto LABEL_26;
    }

    v35 = v7;
  }

  else
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_26;
    }

    v35 = v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  CFRetain(v7);
  v13 = 0;
LABEL_22:
  v14 = *MEMORY[0x29EDC86F8];
  v15 = (*v37[0])(v37, *MEMORY[0x29EDC86F8]);
  v16 = v15;
  if (v15)
  {
    CFRelease(v15);
    ctu::cf::update<__CFString const*,void const*>(v7, v14, v16);
  }

  if ((v13 & 1) == 0)
  {
    CFRelease(v7);
  }

LABEL_26:
  v18 = *a1;
  v17 = *(a1 + 8);
  v33 = *a1;
  if (!v17 || (v19 = std::__shared_weak_count::lock(v17), (v34 = v19) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  v21 = *(a1 + 40);
  if (v7 && (v22 = CFGetTypeID(v7), v22 == CFDictionaryGetTypeID()))
  {
    cf = v7;
    CFRetain(v7);
  }

  else
  {
    cf = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State23setLinkQualityMode_syncEjNS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_323;
  aBlock[4] = a1;
  aBlock[5] = v18;
  v29 = v20;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = _Block_copy(aBlock);
  v24 = *(a1 + 16);
  if (v24)
  {
    dispatch_retain(v24);
  }

  if (v23)
  {
    v30 = _Block_copy(v23);
    object = v24;
    if (!v24)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  v30 = 0;
  object = v24;
  if (v24)
  {
LABEL_36:
    dispatch_retain(v24);
  }

LABEL_37:
  (*(*v21 + 16))(v21, &cf, a3, &v30);
  if (object)
  {
    dispatch_release(object);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = v29;
  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    v26 = v34;
    if (!v34)
    {
LABEL_51:
      MEMORY[0x29C270ED0](v37);
      v27 = v38;
      if (!v38)
      {
        return;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v26 = v34;
    if (!v34)
    {
      goto LABEL_51;
    }
  }

  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_51;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  MEMORY[0x29C270ED0](v37);
  v27 = v38;
  if (v38)
  {
LABEL_52:
    CFRelease(v27);
  }
}

void sub_29749CDA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  va_copy(va2, va1);
  v24 = va_arg(va2, const void *);
  coex::CommandDriver::Callback::~Callback(va);
  if (v16)
  {
    dispatch_release(v16);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v18 + 40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va2);
  MEMORY[0x29C270ED0](v19 - 88);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v19 - 72));
  _Unwind_Resume(a1);
}

void coex::Module::State::handleSetScanFreqBandFilter_sync(uint64_t *a1, xpc_object_t *a2, unsigned int a3)
{
  v61 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29C272BA0](*a2);
  v7 = MEMORY[0x29EDCA9E0];
  if (v6 != MEMORY[0x29EDCA9E0])
  {
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Invalid XPC array", buf, 2u);
    }

    return;
  }

  v46 = a3;
  theArray = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    theArray = Mutable;
  }

  memset(buf, 170, 16);
  v11 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    *buf = v11;
  }

  else
  {
    v11 = xpc_null_create();
    *buf = v11;
    if (!v11)
    {
      v11 = 0;
      *buf = xpc_null_create();
      goto LABEL_10;
    }
  }

  xpc_retain(v11);
LABEL_10:
  *&buf[8] = 0;
  xpc_release(v11);
  v47 = a1;
  v49 = *MEMORY[0x29EDC8778];
  v48 = *MEMORY[0x29EDC8658];
  v12 = MEMORY[0x29EDB9010];
  v13 = MEMORY[0x29EDB9020];
  v14 = MEMORY[0x29EDCAA00];
  while (1)
  {
    v15 = *a2;
    if (*a2)
    {
      xpc_retain(*a2);
    }

    else
    {
      v15 = xpc_null_create();
    }

    if (MEMORY[0x29C272BA0](*a2) == v7)
    {
      count = xpc_array_get_count(*a2);
      if (!v15)
      {
LABEL_20:
        v17 = xpc_null_create();
        goto LABEL_21;
      }
    }

    else
    {
      count = 0;
      if (!v15)
      {
        goto LABEL_20;
      }
    }

    xpc_retain(v15);
    v17 = v15;
LABEL_21:
    xpc_release(v15);
    v19 = *buf;
    v18 = *&buf[8];
    xpc_release(v17);
    if (v18 == count && v19 == v17)
    {
      break;
    }

    v56 = 0;
    v20 = CFDictionaryCreateMutable(v9, 0, v12, v13);
    v21 = v20;
    if (v20)
    {
      v56 = v20;
    }

    xdict = 0xAAAAAAAAAAAAAAAALL;
    *&v60 = buf;
    *(&v60 + 1) = *&buf[8];
    xpc::array::object_proxy::operator xpc::dict(&v60, &xdict);
    if (MEMORY[0x29C272BA0](xdict) == v14)
    {
      value = xpc_dictionary_get_value(xdict, "kWCMCellularScanFreqBandFilter_CenterFreq");
      *&v60 = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *&v60 = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&v60, 0);
      xpc_release(v60);
      v24 = xpc_dictionary_get_value(xdict, "kWCMCellularScanFreqBandFilter_Bandwidth");
      *&v60 = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        *&v60 = xpc_null_create();
      }

      v25 = xpc::dyn_cast_or_default(&v60, 0);
      xpc_release(v60);
      ctu::cf::insert<__CFString const*,long long>(v21, v49, v23, v9);
      ctu::cf::insert<__CFString const*,long long>(v21, v48, v25, v9);
    }

    v26 = theArray;
    *&v60 = v21;
    if (v21)
    {
      CFRetain(v21);
      CFArrayAppendValue(v26, v21);
      CFRelease(v21);
    }

    xpc_release(xdict);
    if (v21)
    {
      CFRelease(v21);
    }

    v27 = *buf;
    if (*buf)
    {
      xpc_retain(*buf);
    }

    else
    {
      v27 = xpc_null_create();
    }

    ++*&buf[8];
    xpc_release(v27);
  }

  xpc_release(*buf);
  v28 = theArray;
  if (!CFArrayGetCount(theArray))
  {
    v44 = v47[4];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(buf, a2);
      if (v59 >= 0)
      {
        v45 = buf;
      }

      else
      {
        v45 = *buf;
      }

      LODWORD(v60) = 136315138;
      *(&v60 + 4) = v45;
      _os_log_error_impl(&dword_297476000, v44, OS_LOG_TYPE_ERROR, "XPC array is: %s", &v60, 0xCu);
      if (v59 < 0)
      {
        operator delete(*buf);
      }

      v44 = v47[4];
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
LABEL_78:
        if (!v28)
        {
          return;
        }

        goto LABEL_79;
      }
    }

    else if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_78;
    }

    *buf = 138412290;
    *&buf[4] = v28;
    _os_log_error_impl(&dword_297476000, v44, OS_LOG_TYPE_ERROR, "Scan frequency band filter array is: %@", buf, 0xCu);
    if (!v28)
    {
      return;
    }

LABEL_79:
    CFRelease(v28);
    return;
  }

  *&v60 = 0;
  v29 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v30 = v29;
  if (v29)
  {
    *&v60 = v29;
  }

  ctu::cf::insert<__CFString const*,__CFArray *>(v29, *MEMORY[0x29EDC87F8], v28);
  v56 = 0;
  v31 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v32 = v31;
  if (v31)
  {
    v56 = v31;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v31, *MEMORY[0x29EDC88F0], v30);
  v34 = *v47;
  v33 = v47[1];
  *buf = *v47;
  if (!v33 || (v35 = std::__shared_weak_count::lock(v33), (*&buf[8] = v35) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v36 = v35;
  v37 = v47[5];
  if (v32 && (v38 = CFGetTypeID(v32), v38 == CFDictionaryGetTypeID()))
  {
    cf = v32;
    CFRetain(v32);
  }

  else
  {
    cf = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State32handleSetScanFreqBandFilter_syncEN3xpc5arrayENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_170;
  aBlock[4] = v47;
  aBlock[5] = v34;
  v51 = v36;
  atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
  v39 = _Block_copy(aBlock);
  v40 = v47[2];
  if (v40)
  {
    dispatch_retain(v47[2]);
  }

  if (v39)
  {
    v52 = _Block_copy(v39);
    object = v40;
    if (v40)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v52 = 0;
    object = v40;
    if (v40)
    {
LABEL_54:
      dispatch_retain(v40);
    }
  }

  (*(*v37 + 16))(v37, &cf, v46, &v52);
  if (object)
  {
    dispatch_release(object);
  }

  if (v52)
  {
    _Block_release(v52);
  }

  if (v40)
  {
    dispatch_release(v40);
  }

  if (v39)
  {
    _Block_release(v39);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v41 = v51;
  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  v42 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
    v43 = v56;
    if (v56)
    {
LABEL_71:
      CFRelease(v43);
    }
  }

  else
  {
    v43 = v56;
    if (v56)
    {
      goto LABEL_71;
    }
  }

  if (v60)
  {
    CFRelease(v60);
  }

  v28 = theArray;
  if (theArray)
  {
    goto LABEL_79;
  }
}

void sub_29749D5B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, xpc_object_t object, char a25, int a26, __int16 a27, char a28, char a29, xpc_object_t a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State32handleSetScanFreqBandFilter_syncEN3xpc5arrayENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Failed to set: %@", &v4, 0xCu);
    }
  }
}

void coex::Module::State::handleSetWiFiStatus_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v38 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    return;
  }

  value = xpc_dictionary_get_value(*a2, "WCMCellularSetWiFiStatus_CenterFrequency");
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  v9 = xpc_dictionary_get_value(*a2, "WCMCellularSetWiFiStatus_ChannelBandwidth");
  *&buf = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v10 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  v11 = xpc_dictionary_get_value(*a2, "WCMCellularSetWiFiStatus_TxPower");
  *&buf = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  v36 = 0;
  v13 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v15 = Mutable;
  if (Mutable)
  {
    v36 = Mutable;
  }

  ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8778], v8, v13);
  ctu::cf::insert<__CFString const*,int>(v15, *MEMORY[0x29EDC8658], v10, v13);
  ctu::cf::insert<__CFString const*,int>(v15, *MEMORY[0x29EDC8620], v12, v13);
  v35 = 0;
  v16 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v17 = v16;
  if (v16)
  {
    v35 = v16;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v16, *MEMORY[0x29EDC8740], v15);
  v18 = a1[4];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Setting WiFi status with: %@", &buf, 0xCu);
  }

  v20 = *a1;
  v19 = a1[1];
  *&buf = *a1;
  if (!v19 || (v21 = std::__shared_weak_count::lock(v19), (*(&buf + 1) = v21) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  v23 = a1[5];
  if (v17 && (v24 = CFGetTypeID(v17), v24 == CFDictionaryGetTypeID()))
  {
    cf = v17;
    CFRetain(v17);
  }

  else
  {
    cf = 0;
  }

  v30[0] = MEMORY[0x29EDCA5F8];
  v30[1] = 1174405120;
  v30[2] = ___ZN4coex6Module5State24handleSetWiFiStatus_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v30[3] = &__block_descriptor_tmp_176;
  v30[4] = a1;
  v30[5] = v20;
  v31 = v22;
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = _Block_copy(v30);
  v26 = a1[2];
  if (v26)
  {
    dispatch_retain(v26);
  }

  if (v25)
  {
    aBlock = _Block_copy(v25);
    object = v26;
    if (!v26)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  aBlock = 0;
  object = v26;
  if (v26)
  {
LABEL_29:
    dispatch_retain(v26);
  }

LABEL_30:
  (*(*v23 + 16))(v23, &cf, a3, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v27 = v31;
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&buf + 1);
  if (!*(&buf + 1) || atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v35;
    if (!v35)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  v29 = v35;
  if (v35)
  {
LABEL_46:
    CFRelease(v29);
  }

LABEL_47:
  if (v36)
  {
    CFRelease(v36);
  }
}