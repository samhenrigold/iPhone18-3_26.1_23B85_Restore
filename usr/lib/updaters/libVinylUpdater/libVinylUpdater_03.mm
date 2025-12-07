void sub_299FB8EF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a25);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(v33);
  v36 = a26;
  if (a26)
  {
    if (!atomic_fetch_add((a26 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v36 + 16))(v36);
    }
  }

  _Block_object_dispose(&a27, 8);
  std::promise<BOOL>::~promise((v34 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z23ReverseProxyGetSettingsRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2 != 2)
  {
    v2 = a2;
    if (a2 == 1)
    {
      gBBULogMaskGet(result, a2);
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Available!\n");
      v4 = *(*(result + 32) + 8);
      v5 = 1;
      std::promise<BOOL>::set_value((v4 + 40), &v5);
    }

    else
    {
      gBBULogMaskGet(result, a2);
      _BBULog(0, 0xFFFFFFFFLL, "BBUPurpleReverseProxy", "", "Proxy Aborted? %d\n", v2);
    }
  }
}

void std::promise<BOOL>::set_value(uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  if (!v3)
  {
    std::__throw_future_error[abi:ne200100](3u);
  }

  std::__assoc_state<BOOL>::set_value<BOOL>(v3, a2);
}

uint64_t std::future<BOOL>::get(std::__assoc_sub_state **a1)
{
  v1 = *a1;
  *a1 = 0;
  std::__assoc_state<BOOL>::move(v1);
  v3 = v2;
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
  }

  return v3;
}

void sub_299FB9144(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::future<std::shared_ptr<ctu::Http::HttpResponse>>::get(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__assoc_state<BOOL>::~__assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x29EDC9580] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete(v3);
}

uint64_t *std::promise<BOOL>::~promise(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    if ((*(v2 + 136) & 1) == 0)
    {
      v9.__ptr_ = 0;
      v3 = *(v2 + 16);
      std::exception_ptr::~exception_ptr(&v9);
      v2 = *a1;
      if (!v3 && *(v2 + 8) >= 1)
      {
        v4 = std::future_category();
        MEMORY[0x29C2B8CD0](v7, 4, v4);
        std::__make_exception_ptr_explicit[abi:ne200100]<std::future_error>(v7);
        v5.__ptr_ = &v8;
        std::__assoc_sub_state::set_exception(v2, v5);
        std::exception_ptr::~exception_ptr(&v8);
        MEMORY[0x29C2B8CE0](v7);
        v2 = *a1;
      }
    }

    if (!atomic_fetch_add((v2 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v2 + 16))(v2);
    }
  }

  return a1;
}

void std::__assoc_state<BOOL>::set_value<BOOL>(uint64_t a1, _BYTE *a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  *(a1 + 140) = *a2;
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

uint64_t std::__assoc_sub_state::wait_for[abi:ne200100]<long long,std::ratio<1l,1l>>(uint64_t a1, uint64_t *a2)
{
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v5 = *a2;
  m = (a1 + 24);
  v15.__m_ = (a1 + 24);
  v15.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  v7 = *(a1 + 136);
  if ((v7 & 8) != 0)
  {
    v13 = 2;
    goto LABEL_26;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_24;
  }

  v8 = v4.__d_.__rep_ + 1000000000 * v5;
  while (std::chrono::steady_clock::now().__d_.__rep_ < v8)
  {
    if (v8 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v9.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v9.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v10.__d_.__rep_)
        {
          if (v10.__d_.__rep_ < 1)
          {
            if (v10.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_14;
            }

            v11 = 0x8000000000000000;
          }

          else
          {
            if (v10.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v11 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_15;
            }

LABEL_14:
            v11 = 1000 * v10.__d_.__rep_;
LABEL_15:
            if (v11 > (v9.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_18;
            }
          }
        }

        else
        {
          v11 = 0;
        }

        v12.__d_.__rep_ = v11 + v9.__d_.__rep_;
LABEL_18:
        std::condition_variable::__do_timed_wait((a1 + 88), &v15, v12);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v7 = *(a1 + 136);
    if ((v7 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v7 = *(a1 + 136);
LABEL_24:
  v13 = ((v7 >> 2) & 1) == 0;
  if (v15.__owns_)
  {
    m = v15.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v13;
}

void std::__assoc_state<BOOL>::move(std::__assoc_sub_state *a1)
{
  __lk.__m_ = &a1->__mut_;
  __lk.__owns_ = 1;
  std::mutex::lock(&a1->__mut_);
  std::__assoc_sub_state::__sub_wait(a1, &__lk);
  ptr = a1->__exception_.__ptr_;
  v5.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v5);
  if (ptr)
  {
    std::exception_ptr::exception_ptr(&v4, &a1->__exception_);
    v3.__ptr_ = &v4;
    std::rethrow_exception(v3);
    __break(1u);
  }

  else if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }
}

void sub_299FB9654(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a9);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(a1);
}

void getVinylTatsuTagToFileNameMap(uint64_t ***a1@<X8>)
{
  v4[4] = *MEMORY[0x29EDCA608];
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v3, &kVinylGold, "euig");
  std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(v4, &kVinylMain, "euim");
  std::map<__CFString const*,std::string>::map[abi:ne200100](a1, v3, 2);
  for (i = 0; i != -8; i -= 4)
  {
    if (SHIBYTE(v4[i + 3]) < 0)
    {
      operator delete(v4[i + 1]);
    }
  }
}

void sub_299FB9750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  v18 = v16 + 40;
  v19 = -64;
  while (1)
  {
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    v18 -= 32;
    v19 += 32;
    if (!v19)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t std::pair<__CFString const* const,std::string>::pair[abi:ne200100]<__CFString const* const&,char const(&)[5],0>(uint64_t a1, void *a2, char *__s)
{
  *a1 = *a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v5 = operator new(v8);
    *(a1 + 16) = v7;
    *(a1 + 24) = v8 | 0x8000000000000000;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 31) = v6;
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  memmove(v5, __s, v7);
LABEL_10:
  *(v5 + v7) = 0;
  return a1;
}

uint64_t ***std::map<__CFString const*,std::string>::map[abi:ne200100](uint64_t ***a1, unint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__emplace_hint_unique_key_args<__CFString const*,std::pair<__CFString const* const,std::string> const&>(uint64_t ***a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v6 = std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(a1, a4, &v8);
    std::__tree<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::__map_value_compare<ACFURestore::UpdateSteps,std::__value_type<ACFURestore::UpdateSteps,RestoreStep>,std::less<ACFURestore::UpdateSteps>,true>,std::allocator<std::__value_type<ACFURestore::UpdateSteps,RestoreStep>>>::__insert_node_at(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__find_equal<__CFString const*>(void *a1, void *a2, void *a3, void *a4, unint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void std::__tree<std::__value_type<__CFString const*,std::string>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,std::string>,std::less<__CFString const*>,true>,std::allocator<std::__value_type<__CFString const*,std::string>>>::__construct_node<std::pair<__CFString const* const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x40uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  *(v6 + 4) = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 40), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *(v6 + 40) = *(a2 + 8);
    *(v6 + 7) = *(a2 + 24);
  }

  *(a3 + 16) = 1;
}

void sub_299FB9B88(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<__CFString const*,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void VinylTransport::createTransport(uint64_t *a1@<X0>, uint64_t a2@<X1>, ACFUTransport **a3@<X8>)
{
  v6 = operator new(0x28uLL);
  ACFUTransport::ACFUTransport(v6);
  *v6 = &unk_2A2031C98;
  *a3 = v6;
  v7 = *a1;
  v8 = a1[1];
  v13[0] = v7;
  v13[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = VinylTransport::init(v6, v13, a2);
  v10 = v9;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if ((v10 & 1) == 0)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to initialize object\n", "VinylTransport", "createTransport");
    *a3 = 0;
    v12 = *(*v6 + 64);

    v12(v6);
  }
}

void sub_299FB9D20(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v1 + 64))(v1);
  _Unwind_Resume(a1);
}

uint64_t VinylTransport::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 24) = a3;
  if (*a2)
  {
    *(a1 + 32) = ACFUDiagnostics::copyDiagnosticsPath(*a2);
    AMSupportSafeRetain();
    AMSupportSafeRetain();
    v4 = *(a2 + 8);
    v7 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = ACFUTransport::init();
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    VinylTransport::init(0);
    return 0;
  }

  return v5;
}

void sub_299FB9E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t VinylTransport::getBoardParameters@<X0>(VinylTransport *this@<X0>, uint64_t a2@<X8>)
{
  LogInstance = ACFULogging::getLogInstance(this);
  result = ACFULogging::handleMessage(LogInstance, 0, "%s::%s: VinylTransport::getBoardParameters not expected to be called\n", "VinylTransport", "getBoardParameters");
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  return result;
}

uint64_t *VinylTransport::getPersoParameters@<X0>(__CFDictionary **__return_ptr a1@<X8>, const __CFDictionary **this@<X0>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (!Mutable)
  {
    result = VinylTransport::getPersoParameters(0);
LABEL_9:
    v9 = 0;
    goto LABEL_5;
  }

  v5 = VinylController::create(0, 0);
  if (!v5)
  {
    result = VinylTransport::getPersoParameters(0);
    goto LABEL_9;
  }

  v6 = v5;
  ParamUpdateOperation = VinylController::getParamUpdateOperation(v5, Mutable, this[3]);
  result = VinylControllerObjDestroy(v6);
  if (ParamUpdateOperation)
  {
    result = VinylTransport::getPersoParameters(ParamUpdateOperation);
    goto LABEL_9;
  }

  v9 = 1;
LABEL_5:
  *a1 = Mutable;
  *(a1 + 8) = v9;
  return result;
}

BOOL VinylTransport::checkVinylPresence(const __CFDictionary **this, char a2)
{
  v8 = 0;
  v4 = VinylController::create(0, 0);
  if (v4)
  {
    v5 = v4;
    VinylController::checkVinylPresence(v4, this[3], &v8, a2);
    VinylControllerObjDestroy(v5);
    return v8;
  }

  else
  {
    VinylTransport::checkVinylPresence(0);
    return 0;
  }
}

uint64_t VinylTransport::createGoldFw(VinylTransport *this, CFDictionaryRef theDict, VinylFirmware **a3)
{
  v46 = 0;
  v47 = 0;
  error = 0;
  Value = CFDictionaryGetValue(theDict, @"eUICC,Ticket");
  v6 = Value;
  if (Value && (v7 = CFGetTypeID(Value), Value = CFDataGetTypeID(), v7 == Value))
  {
    ACFULogging::getLogInstance(Value);
    std::string::basic_string[abi:ne200100]<0>(&v42, "VinylTransport");
    v8 = std::string::append(&v42, "::", 2uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v43, "createGoldFw", 0xCuLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    v12 = CFDictionaryGetValue(theDict, @"FirmwareData");
    if (v12)
    {
      v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v12, 0, 0, &error);
      v14 = v13;
      v46 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        TypeID = CFDictionaryGetTypeID();
        if (v15 == TypeID)
        {
          __p.__r_.__value_.__r.__words[0] = v14;
          v17 = ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v47, &__p.__r_.__value_.__l.__data_);
          if (v47)
          {
            ACFULogging::getLogInstance(v17);
            std::string::basic_string[abi:ne200100]<0>(&v42, "VinylTransport");
            v18 = std::string::append(&v42, "::", 2uLL);
            v19 = *&v18->__r_.__value_.__l.__data_;
            v43.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
            *&v43.__r_.__value_.__l.__data_ = v19;
            v18->__r_.__value_.__l.__size_ = 0;
            v18->__r_.__value_.__r.__words[2] = 0;
            v18->__r_.__value_.__r.__words[0] = 0;
            v20 = std::string::append(&v43, "createGoldFw", 0xCuLL);
            v21 = *&v20->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v21;
            v20->__r_.__value_.__l.__size_ = 0;
            v20->__r_.__value_.__r.__words[2] = 0;
            v20->__r_.__value_.__r.__words[0] = 0;
            ACFULogging::handleMessageCFType();
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v43.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v42.__r_.__value_.__l.__data_);
            }

            v22 = CFDictionaryGetValue(v47, @"eUICC,Im4pGold");
            v23 = v22;
            if (v22 && (v24 = CFGetTypeID(v22), v22 = CFDataGetTypeID(), v24 == v22))
            {
              v25 = CFDictionaryGetValue(v47, @"eUICC,InfoPlistDataGold");
              v26 = v25;
              if (v25 && (v27 = CFGetTypeID(v25), v25 = CFDataGetTypeID(), v27 == v25) && (v25 = CFDictionaryGetValue(v47, @"eUICC,ProfileDataGold"), (v28 = v25) != 0) && (v29 = CFGetTypeID(v25), v25 = CFDataGetTypeID(), v29 == v25))
              {
                v30 = CFDictionaryGetValue(v47, @"eUICC,Gold");
                v31 = v30;
                if (v30)
                {
                  v32 = CFGetTypeID(v30);
                  v30 = CFDataGetTypeID();
                  if (v32 == v30)
                  {
                    v33 = CFDictionaryGetValue(v47, @"eUICC,GoldRecoveryFw");
                    v34 = 0;
                    *a3 = VinylFirmwareCreate(v31, v33, v23, v26, v28, v6);
LABEL_28:
                    CFRelease(v14);
                    goto LABEL_29;
                  }
                }

                LogInstance = ACFULogging::getLogInstance(v30);
                ACFULogging::handleMessage(LogInstance, 2, "%s::%s: goldFwData not present in the input\n");
              }

              else
              {
                v36 = ACFULogging::getLogInstance(v25);
                ACFULogging::handleMessage(v36, 2, "%s::%s: goldInfoPlistData not present in the input\n");
              }
            }

            else
            {
              v38 = ACFULogging::getLogInstance(v22);
              ACFULogging::handleMessage(v38, 2, "%s::%s: goldIm4p not present in the input\n");
            }
          }

          else
          {
            v41 = ACFULogging::getLogInstance(v17);
            ACFULogging::handleMessage(v41, 2, "%s::%s: Fw data dictionary not present in the input\n");
          }
        }

        else
        {
          ACFULogging::getLogInstance(TypeID);
          std::string::basic_string[abi:ne200100]<0>(&v42, "VinylTransport");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v43, "::", &v42);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "createGoldFw", &v43);
          ACFULogging::handleMessageCFType();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v43.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v42.__r_.__value_.__l.__data_);
          }
        }

        v34 = 1;
        goto LABEL_28;
      }

      ACFULogging::getLogInstance(0);
      std::string::basic_string[abi:ne200100]<0>(&v42, "VinylTransport");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v43, "::", &v42);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "createGoldFw", &v43);
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v43.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v40 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v40, 2, "%s::%s: Failed to get Vinyl Firmware Data\n");
    }
  }

  else
  {
    v37 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v37, 2, "%s::%s: ticket not present in the input\n");
  }

  v34 = 1;
LABEL_29:
  if (v47)
  {
    CFRelease(v47);
  }

  return v34;
}

void sub_299FBA514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 96));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v30 - 88));
  _Unwind_Resume(a1);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<Q0>(std::string *__return_ptr a1@<X8>, char *__s@<X1>, std::string *a3@<X0>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a3, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

const void **ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(const void **a1, CFTypeRef *a2)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<void const,void>(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t VinylTransport::createMainFw(VinylTransport *this, CFDictionaryRef theDict, VinylFirmware **a3)
{
  v43 = 0;
  v44 = 0;
  error = 0;
  Value = CFDictionaryGetValue(theDict, @"eUICC,Ticket");
  v6 = Value;
  if (Value && (v7 = CFGetTypeID(Value), Value = CFDataGetTypeID(), v7 == Value))
  {
    ACFULogging::getLogInstance(Value);
    std::string::basic_string[abi:ne200100]<0>(&v39, "VinylTransport");
    v8 = std::string::append(&v39, "::", 2uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v40, "createMainFw", 0xCuLL);
    v11 = *&v10->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    ACFULogging::handleMessageCFType();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v12 = CFDictionaryGetValue(theDict, @"FirmwareData");
    if (v12)
    {
      v13 = CFPropertyListCreateWithData(*MEMORY[0x29EDB8ED8], v12, 0, 0, &error);
      v14 = v13;
      v43 = v13;
      if (v13)
      {
        v15 = CFGetTypeID(v13);
        TypeID = CFDictionaryGetTypeID();
        if (v15 == TypeID)
        {
          __p.__r_.__value_.__r.__words[0] = v14;
          ctu::cf::CFSharedRef<__CFDictionary const>::operator=<void const,void>(&v44, &__p.__r_.__value_.__l.__data_);
          if (v44)
          {
            v17 = CFDictionaryGetValue(v44, @"eUICC,Im4pMain");
            v18 = v17;
            if (v17 && (v19 = CFGetTypeID(v17), v17 = CFDataGetTypeID(), v19 == v17))
            {
              v20 = CFDictionaryGetValue(v44, @"eUICC,InfoPlistDataMain");
              v21 = v20;
              if (v20 && (v22 = CFGetTypeID(v20), v20 = CFDataGetTypeID(), v22 == v20))
              {
                v23 = CFDictionaryGetValue(v44, @"eUICC,ProfileDataMain");
                v24 = v23;
                if (v23 && (v25 = CFGetTypeID(v23), v23 = CFDataGetTypeID(), v25 == v23))
                {
                  v26 = CFDictionaryGetValue(v44, @"eUICC,Main");
                  v27 = v26;
                  if (v26)
                  {
                    v28 = CFGetTypeID(v26);
                    v26 = CFDataGetTypeID();
                    if (v28 == v26)
                    {
                      v29 = CFDictionaryGetValue(v44, @"eUICC,MainRecoveryFw");
                      v30 = 0;
                      *a3 = VinylFirmwareCreate(v27, v29, v18, v21, v24, v6);
LABEL_22:
                      CFRelease(v14);
                      goto LABEL_23;
                    }
                  }

                  LogInstance = ACFULogging::getLogInstance(v26);
                  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: mainFwData not present in the input\n");
                }

                else
                {
                  v35 = ACFULogging::getLogInstance(v23);
                  ACFULogging::handleMessage(v35, 2, "%s::%s: mainProfileData not present in the input\n");
                }
              }

              else
              {
                v34 = ACFULogging::getLogInstance(v20);
                ACFULogging::handleMessage(v34, 2, "%s::%s: mainInfoPlistData not present in the input\n");
              }
            }

            else
            {
              v33 = ACFULogging::getLogInstance(v17);
              ACFULogging::handleMessage(v33, 2, "%s::%s: mainIm4p not present in the input\n");
            }
          }

          else
          {
            v38 = ACFULogging::getLogInstance(0);
            ACFULogging::handleMessage(v38, 2, "%s::%s: Fw data dictionary not present in the input\n");
          }
        }

        else
        {
          ACFULogging::getLogInstance(TypeID);
          std::string::basic_string[abi:ne200100]<0>(&v39, "VinylTransport");
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v40, "::", &v39);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "createMainFw", &v40);
          ACFULogging::handleMessageCFType();
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v39.__r_.__value_.__l.__data_);
          }
        }

        v30 = 1;
        goto LABEL_22;
      }

      ACFULogging::getLogInstance(0);
      std::string::basic_string[abi:ne200100]<0>(&v39, "VinylTransport");
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v40, "::", &v39);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, "createMainFw", &v40);
      ACFULogging::handleMessageCFType();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v37 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v37, 2, "%s::%s: Failed to get Vinyl Firmware Data\n");
    }
  }

  else
  {
    v32 = ACFULogging::getLogInstance(Value);
    ACFULogging::handleMessage(v32, 2, "%s::%s: ticket not present in the input\n");
  }

  v30 = 1;
LABEL_23:
  if (v44)
  {
    CFRelease(v44);
  }

  return v30;
}

void sub_299FBAB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  ctu::cf::CFSharedRef<void const>::~CFSharedRef((v30 - 96));
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v30 - 88));
  _Unwind_Resume(a1);
}

ACFULogging *VinylTransport::updateFw(const __CFDictionary **this, const __CFDictionary *a2)
{
  v13 = 0;
  v14 = 0;
  v4 = VinylTransport::createGoldFw(this, a2, &v13);
  v5 = v4;
  if (v4 || (v6 = v13) == 0)
  {
    VinylTransport::updateFw(v4);
    return v5;
  }

  v7 = VinylTransport::createMainFw(v4, a2, &v14);
  v5 = v7;
  if (v7 || (v8 = v14) == 0)
  {
    VinylTransport::updateFw(v7);
    return v5;
  }

  v9 = VinylController::create(0, 0);
  if (!v9)
  {
    VinylTransport::updateFw(0);
    return 1;
  }

  v10 = v9;
  updated = VinylController::updateFw(v9, v6, v8, this[3]);
  VinylControllerObjDestroy(v10);
  if (updated)
  {
    VinylTransport::updateFw(updated);
    return 1;
  }

  return 0;
}

uint64_t VinylTransport::setNonce(VinylTransport *this, void *a2)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: empty implementation not expected to be called\n", "VinylTransport", "setNonce");
  return 2;
}

uint64_t VinylTransport::pushFirmware(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: empty implementation not expected to be called\n", "VinylTransport", "pushFirmware");
  return 2;
}

uint64_t VinylTransport::pingCheck(VinylTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: empty implementation not expected to be called\n", "VinylTransport", "pingCheck");
  return 2;
}

uint64_t VinylTransport::reset(VinylTransport *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: empty implementation not expected to be called\n", "VinylTransport", "reset");
  return 2;
}

uint64_t VinylTransport::getDebugInfo(const __CFString **a1, uint64_t a2, int a3)
{
  if (a3)
  {
    cf = 0;
    v3 = BBUpdaterCommon::collectCoreDump(&cf, a1[4], 1, 0);
    a1 = cf;
    if (cf)
    {
      CFRelease(cf);
    }

    if (v3)
    {
      return 0;
    }
  }

  VinylTransport::getDebugInfo(a1);
  return 1;
}

void VinylTransport::~VinylTransport(VinylTransport *this)
{
  *this = &unk_2A2031C98;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
    *(this + 4) = 0;
  }

  LogInstance = ACFULogging::getLogInstance(v3);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: VinylTransport destructor called\n", "VinylTransport", "~VinylTransport");

  MEMORY[0x2A1C5F0F8](this);
}

{
  VinylTransport::~VinylTransport(this);

  operator delete(v1);
}

uint64_t ErrnoToBBUReturn(int a1)
{
  if (a1 == 35)
  {
    return 13;
  }

  else
  {
    return 3;
  }
}

uint64_t eUICC::getSIMId(eUICC *this)
{
  if (this == 2)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t eUICC::eUICCVinylDALValve::eUICCVinylDALValve(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5)
{
  v26 = *MEMORY[0x29EDCA608];
  *(a1 + 275) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v10 = (a1 + 328);
  *a1 = &unk_2A2031D10;
  v11 = dispatch_queue_create("com.apple.VinylCommunication", 0);
  v12 = a5[1];
  v19 = *a5;
  v20 = v12;
  object = v11;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  abb::router::Client::create();
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0;
  *(a1 + 296) = a2;
  *(a1 + 292) = a3;
  *(a1 + 291) = a4;
  *(a1 + 304) = 8;
  eUICC::eUICCVinylValve::hardwareHasESIM = (*(*a1 + 144))(a1, &eUICC::eUICCVinylValve::simSKUID);
  v13 = dispatch_semaphore_create(0);
  v14 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v22 = &unk_2A2031E38;
  v23 = a1;
  v24 = v14;
  v25 = &v22;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v22);
  v22 = &unk_2A2031EC8;
  v23 = a1;
  v25 = &v22;
  abb::router::Client::regEventHandler();
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&v22);
  v22 = &unk_2A2031F48;
  v23 = a1;
  v25 = &v22;
  abb::router::Client::regIndHandlerInternal();
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](&v22);
  abb::router::Client::start(v10);
  v15 = dispatch_time(0, 7500000000);
  v16 = dispatch_semaphore_wait(v14, v15);
  if (v16)
  {
    gBBULogMaskGet(v16, v17);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for mipc client start.\n", v19);
    *(a1 + 352) = 0;
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  return a1;
}

void sub_299FBB1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, ...)
{
  va_start(va, object);
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](va);
  if (v12)
  {
    dispatch_release(v12);
  }

  v14 = *(v11 + 47);
  if (v14)
  {
    *(v11 + 48) = v14;
    operator delete(v14);
  }

  v15 = *(v11 + 45);
  if (v15)
  {
    dispatch_release(v15);
  }

  *(v11 + 41) = &unk_2A2031E08;
  v16 = *(v11 + 43);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(v11 + 40);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  eUICC::eUICCVinylValve::~eUICCVinylValve(v11);
  _Unwind_Resume(a1);
}

void abb::router::Client::~Client(abb::router::Client *this)
{
  *this = &unk_2A2031E08;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2A2031E08;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

void *eUICC::eUICCVinylDALValve::GetVinylType@<X0>(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  *(this + 2) = 0;
  *(this + 288) = 1;
  return memcpy(a2, this + 8, 0x11BuLL);
}

uint64_t eUICC::eUICCVinylDALValve::waitForeSIMBoot(eUICC::eUICCVinylDALValve *this, uint64_t a2)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 0;
  if ((*(this + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::waitForeSIMBoot(this, a2);
    v6 = 0;
    return v6 & 1;
  }

  mipc::sim::Status_Req::Status_Req();
  if (*(this + 73) == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  v24[10] = v3;
  v4 = operator new(1uLL);
  *v4 = 0;
  v5 = __p;
  __p = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = 0;
  v7 = 15;
  do
  {
    v8 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v8, v9) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v10 = __p;
      if (__p)
      {
        stringifyVal(*__p, v22);
        v11 = v22;
        if (v23 < 0)
        {
          v11 = v22[0];
        }
      }

      else
      {
        v11 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Status_Req sent: Msg=0x%x fTlv_Mode = %s\n", 1295, v11);
      if (v10 && v23 < 0)
      {
        operator delete(v22[0]);
      }
    }

    abb::router::Client::send<mipc::sim::Status_Req>(&__ns, v24, (this + 328));
    v12 = abb::router::SendProxy::timeout();
    if (v8)
    {
      dispatch_retain(v8);
    }

    v13 = operator new(0x20uLL);
    *v13 = &unk_2A2031FE8;
    v13[1] = this;
    v13[2] = &v26;
    v13[3] = v8;
    v28[3] = v13;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v12 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C2B81A0](&__ns);
    v14 = dispatch_time(0, 7500000000);
    v15 = dispatch_semaphore_wait(v8, v14);
    if (v15 && (gBBULogMaskGet(v15, v16), v15 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Status Req.\n"), !*(this + 37)))
    {
      gBBULogMaskGet(v15, v16);
      Transport = VinylDaleCommunication::createTransport();
      if (Transport)
      {
        Transport = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 210, "transport");
      }

      gBBULogMaskGet(Transport, v20);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "No transport available.. bail out\n");
      v17 = 1;
      if (v8)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v17 = 1;
      if (v26 - 20 >= 2 && v26 != 253)
      {
        gBBULogMaskGet(v15, v16);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM Status Req attempt %d failed.\n", 15 - --v7);
        __ns.__rep_ = 1000000000;
        std::this_thread::sleep_for (&__ns);
        v17 = 0;
        if (!v8)
        {
          goto LABEL_28;
        }

LABEL_27:
        dispatch_release(v8);
        goto LABEL_28;
      }

      v6 = 1;
      if (v8)
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    if (v7)
    {
      v18 = v17;
    }

    else
    {
      v18 = 1;
    }
  }

  while (v18 != 1);
  mipc::sim::Status_Req::~Status_Req(v24);
  return v6 & 1;
}

uint64_t *abb::router::Client::send<mipc::sim::Status_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::sim::Status_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::sim::Status_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void eUICC::eUICCVinylDALValve::GetData_EoS(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>)
{
  v20[4] = *MEMORY[0x29EDCA608];
  mipc::dale_vinyl::Eos_Getdata_Req::Eos_Getdata_Req();
  if (*(this + 73) == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v17[10] = v4;
  v5 = operator new(1uLL);
  *v5 = 0;
  v6 = __p;
  __p = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = dispatch_semaphore_create(0);
  if ((*(gBBULogMaskGet(v7, v8) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = __p;
    if (__p)
    {
      stringifyVal(*__p, v15);
      v10 = v16 >= 0 ? v15 : v15[0];
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "EoS_Getdata_Req sent: Msg=0x%x fTlv_Is_Num_Of_Profile_Needed = %s\n", 62467, v10);
    if (v9)
    {
      if (v16 < 0)
      {
        operator delete(v15[0]);
      }
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Eos_Getdata_Req>(v19, v17, (this + 328));
  v11 = abb::router::SendProxy::timeout();
  if (v7)
  {
    dispatch_retain(v7);
  }

  v20[0] = &unk_2A2032068;
  v20[1] = this;
  v20[2] = v7;
  v20[3] = v20;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v20, (v11 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v20);
  MEMORY[0x29C2B81A0](v19);
  v12 = dispatch_time(0, 7500000000);
  v13 = dispatch_semaphore_wait(v7, v12);
  if (v13)
  {
    gBBULogMaskGet(v13, v14);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on EoS Get Data Req.\n");
  }

  memcpy(a2, this + 8, 0x11BuLL);
  if (v7)
  {
    dispatch_release(v7);
  }

  mipc::dale_vinyl::Eos_Getdata_Req::~Eos_Getdata_Req(v17);
}

void sub_299FBBA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  mipc::dale_vinyl::Eos_Getdata_Req::~Eos_Getdata_Req(&a18);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Eos_Getdata_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Eos_Getdata_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Eos_Getdata_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

void *eUICC::eUICCVinylDALValve::GetData@<X0>(eUICC::eUICCVinylDALValve *this@<X0>, void *a2@<X8>, uint64_t a3@<X1>)
{
  v33[4] = *MEMORY[0x29EDCA608];
  v5 = (this + 8);
  if (*(this + 290) == 1)
  {
    gBBULogMaskGet(this, a3);
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylData cache is valid. Using cached data!\n");
  }

  else
  {
    *(this + 248) = 0u;
    *(this + 264) = 0u;
    *(this + 216) = 0u;
    *(this + 232) = 0u;
    *(this + 184) = 0u;
    *(this + 200) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 88) = 0u;
    *(this + 104) = 0u;
    *(this + 56) = 0u;
    *(this + 72) = 0u;
    *(this + 24) = 0u;
    *(this + 40) = 0u;
    *v5 = 0u;
    *(this + 275) = 0u;
    RadioVendor = TelephonyRadiosGetRadioVendor();
    *(this + 2) = (RadioVendor - 2) < 3;
    if (*(this + 352))
    {
      v9 = eUICC::eUICCVinylDALValve::waitForeSIMBoot(this, v8);
      if (v9)
      {
        pthread_mutex_lock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
        v11 = xmmword_2A14F5908;
        if (!xmmword_2A14F5908)
        {
          BBUCapabilities::create_default_global(v32);
          v12 = v32[0];
          v32[0] = 0uLL;
          v13 = *(&xmmword_2A14F5908 + 1);
          xmmword_2A14F5908 = v12;
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            if (*(&v32[0] + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32[0] + 1));
            }
          }

          v11 = xmmword_2A14F5908;
        }

        v14 = *(&xmmword_2A14F5908 + 1);
        if (*(&xmmword_2A14F5908 + 1))
        {
          atomic_fetch_add_explicit((*(&xmmword_2A14F5908 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        pthread_mutex_unlock(&ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance);
        v15 = BBUCapabilities::supportsEuiccViaEOS(v11);
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v15)
        {
          return (*(*this + 152))(this);
        }

        mipc::dale_vinyl::Getdata_Req::Getdata_Req();
        if (*(this + 73) == 2)
        {
          v17 = 2;
        }

        else
        {
          v17 = 1;
        }

        v30[10] = v17;
        v18 = operator new(1uLL);
        *v18 = 0;
        v19 = __p;
        __p = v18;
        if (v19)
        {
          operator delete(v19);
        }

        v20 = dispatch_semaphore_create(0);
        if ((*(gBBULogMaskGet(v20, v21) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
        {
          v22 = __p;
          if (__p)
          {
            stringifyVal(*__p, v28);
            v23 = v29 >= 0 ? v28 : v28[0];
          }

          else
          {
            v23 = "NULL";
          }

          _BBULog(22, 7, "eUICCVinylDALValve", "", "Getdata_Req sent: Msg=0x%x fTlv_Is_Num_Of_Profile_Needed = %s\n", 62466, v23);
          if (v22)
          {
            if (v29 < 0)
            {
              operator delete(v28[0]);
            }
          }
        }

        abb::router::Client::send<mipc::dale_vinyl::Getdata_Req>(v32, v30, (this + 328));
        v24 = abb::router::SendProxy::timeout();
        if (v20)
        {
          dispatch_retain(v20);
        }

        v33[0] = &unk_2A2032138;
        v33[1] = this;
        v33[2] = v20;
        v33[3] = v33;
        std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v33, (v24 + 152));
        std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v33);
        MEMORY[0x29C2B81A0](v32);
        v25 = dispatch_time(0, 7500000000);
        v26 = dispatch_semaphore_wait(v20, v25);
        if (v26)
        {
          gBBULogMaskGet(v26, v27);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Get Data Req.\n");
        }

        if (v20)
        {
          dispatch_release(v20);
        }

        mipc::dale_vinyl::Getdata_Req::~Getdata_Req(v30);
      }

      else
      {
        gBBULogMaskGet(v9, v10);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM status req failed even after several retries.\n");
      }
    }

    else
    {
      eUICC::eUICCVinylDALValve::GetData(RadioVendor, v8);
    }
  }

  if (*(this + 290) == 1)
  {
    eUICC::logEUICCData(v5, v6);
  }

  return memcpy(a2, v5, 0x11BuLL);
}

void sub_299FBBF2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  mipc::dale_vinyl::Getdata_Req::~Getdata_Req(&a18);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Getdata_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Getdata_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Getdata_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::SetCardMode(uint64_t a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x29EDCA608];
  v20 = 18;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Switch_Mode_Req::Switch_Mode_Req();
    if (*(a1 + 292) == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v18[10] = v3;
    v4 = operator new(1uLL);
    *v4 = 1;
    v5 = __p;
    __p = v4;
    if (v5)
    {
      operator delete(v5);
    }

    v6 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v6, v7) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v8 = __p;
      if (__p)
      {
        stringifyVal(*__p, v16);
        v9 = v17 >= 0 ? v16 : v16[0];
      }

      else
      {
        v9 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Switch_Mode_Req sent: Msg=0x%x fTlv_Is_Reset_Req = %s\n", 62468, v9);
      if (v8)
      {
        if (v17 < 0)
        {
          operator delete(v16[0]);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Switch_Mode_Req>(v21, v18, (a1 + 328));
    v10 = abb::router::SendProxy::timeout();
    if (v6)
    {
      dispatch_retain(v6);
    }

    v11 = operator new(0x20uLL);
    *v11 = &unk_2A20321B8;
    v11[1] = a1;
    v11[2] = &v20;
    v11[3] = v6;
    v22[3] = v11;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v22, (v10 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v22);
    MEMORY[0x29C2B81A0](v21);
    v12 = dispatch_time(0, 11500000000);
    v13 = dispatch_semaphore_wait(v6, v12);
    if (v13)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Switch Mode Req.\n");
    }

    if (v6)
    {
      dispatch_release(v6);
    }

    mipc::dale_vinyl::Switch_Mode_Req::~Switch_Mode_Req(v18);
    return v20;
  }

  else
  {
    eUICC::eUICCVinylDALValve::SetCardMode(a1, a2);
    return 18;
  }
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

void sub_299FBC308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (v30)
  {
    dispatch_release(v30);
  }

  mipc::dale_vinyl::Switch_Mode_Req::~Switch_Mode_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Switch_Mode_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Switch_Mode_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Switch_Mode_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ResetCard(eUICC::eUICCVinylDALValve *this, uint64_t a2)
{
  gBBULogMaskGet(this, a2);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylDALValve::ResetCard not supported\n");
  return 9;
}

uint64_t eUICC::eUICCVinylDALValve::DeleteProfile(eUICC::eUICCVinylDALValve *this, uint64_t a2)
{
  v40[4] = *MEMORY[0x29EDCA608];
  v36 = 18;
  if (*(this + 352))
  {
    v2 = a2;
    v35[0] = 0xBFD00402820434BFLL;
    *(v35 + 6) = 0xD80302820434BFD0;
    mipc::dale_vinyl::Cmd_Req::Cmd_Req();
    if (*(this + 73) == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v29[10] = v4;
    v5 = operator new(4uLL);
    *v5 = 16;
    v6 = __p;
    __p = v5;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = operator new(1uLL);
    *v7 = 1;
    v8 = v31;
    v31 = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(2uLL);
    *v9 = 1;
    v10 = v32;
    v32 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = operator new(2uLL);
    *v11 = 0;
    v12 = v33;
    v33 = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = &v35[v2] - v2;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v37, v13, (v13 + 7), 7uLL);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v34, &v37);
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v14 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v14, v15) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v16 = __p;
      if (__p)
      {
        stringifyVal(*__p, v27);
        if (v28 >= 0)
        {
          v17 = v27;
        }

        else
        {
          v17 = v27[0];
        }
      }

      else
      {
        v17 = "NULL";
      }

      v18 = v34;
      if (v34)
      {
        stringifyDataBuffer(*v34, v34[1] - *v34, &v26);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v26;
        }

        else
        {
          v19 = v26.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v19 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Delete Profile Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Payload = %s\n", 62465, v17, v19);
      if (v18 && SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      if (v16 && v28 < 0)
      {
        operator delete(v27[0]);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>(&v37, v29, (this + 328));
    v20 = abb::router::SendProxy::timeout();
    if (v14)
    {
      dispatch_retain(v14);
    }

    v21 = operator new(0x20uLL);
    *v21 = &unk_2A2032238;
    v21[1] = this;
    v21[2] = &v36;
    v21[3] = v14;
    v40[3] = v21;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v40, (v20 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v40);
    MEMORY[0x29C2B81A0](&v37);
    v22 = dispatch_time(0, 7500000000);
    v23 = dispatch_semaphore_wait(v14, v22);
    if (v23)
    {
      gBBULogMaskGet(v23, v24);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Cmd Req Delete Profile.\n");
    }

    if (v14)
    {
      dispatch_release(v14);
    }

    MEMORY[0x29C2B8650](v29);
    return v36;
  }

  else
  {
    eUICC::eUICCVinylDALValve::DeleteProfile(this, a2);
    return 18;
  }
}

void sub_299FBC81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44)
{
  if (v45 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v44)
  {
    dispatch_release(v44);
  }

  MEMORY[0x29C2B8650](&a24, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  *v4 = *a2;
  v4[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Cmd_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Cmd_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::StoreData(uint64_t a1, char **a2, uint64_t a3, uint64_t a4)
{
  v45[4] = *MEMORY[0x29EDCA608];
  v41 = 18;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Cmd_Req::Cmd_Req();
    if (*(a1 + 292) == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v35[10] = v8;
    v9 = operator new(4uLL);
    *v9 = 5;
    v10 = __p;
    __p = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = operator new(1uLL);
    *v11 = 1;
    v12 = v37;
    v37 = v11;
    if (v12)
    {
      operator delete(v12);
    }

    v13 = operator new(2uLL);
    *v13 = 1;
    v14 = v38;
    v38 = v13;
    if (v14)
    {
      operator delete(v14);
    }

    v15 = operator new(2uLL);
    *v15 = 0;
    v16 = v39;
    v39 = v15;
    if (v16)
    {
      operator delete(v16);
    }

    v17 = *a2;
    v18 = a2[1];
    v19 = v18 - *a2;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v42, v17, v18, v19);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v40, &v42);
    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    v20 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v20, v21) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v22 = __p;
      if (__p)
      {
        stringifyVal(*__p, v33);
        if (v34 >= 0)
        {
          v23 = v33;
        }

        else
        {
          v23 = v33[0];
        }
      }

      else
      {
        v23 = "NULL";
      }

      v24 = v40;
      if (v40)
      {
        stringifyDataBuffer(*v40, v40[1] - *v40, &v32);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &v32;
        }

        else
        {
          v25 = v32.__r_.__value_.__r.__words[0];
        }
      }

      else
      {
        v25 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Store data Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Payload = %s\n", 62465, v23, v25);
      if (v24 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v22 && v34 < 0)
      {
        operator delete(v33[0]);
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Cmd_Req>(&v42, v35, (a1 + 328));
    v26 = abb::router::SendProxy::timeout();
    if (v20)
    {
      dispatch_retain(v20);
    }

    v27 = operator new(0x30uLL);
    *v27 = &unk_2A20322B8;
    v27[1] = a1;
    v27[2] = a3;
    v27[3] = &v41;
    v27[4] = a4;
    v27[5] = v20;
    v45[3] = v27;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v45, (v26 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v45);
    MEMORY[0x29C2B81A0](&v42);
    v28 = dispatch_time(0, 7500000000);
    v29 = dispatch_semaphore_wait(v20, v28);
    if (v29)
    {
      gBBULogMaskGet(v29, v30);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indications on Cmd Req store data.\n");
    }

    if (v20)
    {
      dispatch_release(v20);
    }

    MEMORY[0x29C2B8650](v35);
    return v41;
  }

  else
  {
    eUICC::eUICCVinylDALValve::StoreData(a1, a2);
    return 18;
  }
}

void sub_299FBCD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42)
{
  if (v43 && a23 < 0)
  {
    operator delete(__p);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  MEMORY[0x29C2B8650](&a24, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t eUICC::eUICCVinylDALValve::InstallTicket(_DWORD *a1, CFDataRef *a2)
{
  v38[4] = *MEMORY[0x29EDCA608];
  v36 = 1;
  BytePtr = CFDataGetBytePtr(*a2);
  Length = CFDataGetLength(*a2);
  if (!*a2)
  {
    gBBULogMaskGet(Length, v6);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", "installTicket");
    return 2;
  }

  if ((a1[88] & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::InstallTicket(Length, v6);
    return 1;
  }

  v7 = Length;
  gBBULogMaskGet(Length, v6);
  if (v7 >= 3585)
  {
    _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Ticket provided is larger than spec. [ %ld (lenth) > %d (spec max) ] \n");
    return 2;
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "eUICCVinylDALValve::InstallTicket\n");
  (*(*a1 + 8))(__src, a1);
  memcpy(a1 + 2, __src, 0x11BuLL);
  RadioVendor = TelephonyRadiosGetRadioVendor();
  if (a1[2] != (RadioVendor - 5) < 0xFFFFFFFD)
  {
    gBBULogMaskGet(RadioVendor, v11);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", "outData.Valid()", "", "", 581);
    return 1;
  }

  if (*(a1 + 31) && (v12 = (*(*a1 + 16))(a1, 0, 0), v8 = v12, (v36 = v12) != 0))
  {
    gBBULogMaskGet(v12, v13);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", "kBBUReturnSuccess == ret", "", "", 587);
  }

  else
  {
    mipc::dale_vinyl::Install_Vad_Req::Install_Vad_Req();
    if (a1[73] == 2)
    {
      v14 = 2;
    }

    else
    {
      v14 = 1;
    }

    v32[10] = v14;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(&v29, BytePtr, &BytePtr[v7], v7);
    memset(__src, 0, 24);
    std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__src, v29, v30, v30 - v29);
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v35, __src);
    if (__src[0])
    {
      __src[1] = __src[0];
      operator delete(__src[0]);
    }

    v15 = operator new(2uLL);
    *v15 = 1;
    v16 = __p;
    __p = v15;
    if (v16)
    {
      operator delete(v16);
    }

    v17 = operator new(2uLL);
    *v17 = 0;
    v18 = v34;
    v34 = v17;
    if (v18)
    {
      operator delete(v18);
    }

    v19 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v19, v20) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v21 = v35;
      if (v35)
      {
        stringifyDataBuffer(*v35, v35[1] - *v35, &v28);
        v22 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
      }

      else
      {
        v22 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Vad_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62469, v22);
      if (v21)
      {
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Install_Vad_Req>(__src, v32, (a1 + 82));
    v23 = abb::router::SendProxy::timeout();
    if (v19)
    {
      dispatch_retain(v19);
    }

    v24 = operator new(0x20uLL);
    *v24 = &unk_2A2032338;
    v24[1] = a1;
    v24[2] = &v36;
    v24[3] = v19;
    v38[3] = v24;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v38, (v23 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v38);
    MEMORY[0x29C2B81A0](__src);
    v25 = dispatch_time(0, 7500000000);
    v26 = dispatch_semaphore_wait(v19, v25);
    if (v26)
    {
      gBBULogMaskGet(v26, v27);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on install vad req.\n");
    }

    if (v19)
    {
      dispatch_release(v19);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    mipc::dale_vinyl::Install_Vad_Req::~Install_Vad_Req(v32);
    return v36;
  }

  return v8;
}

void sub_299FBD2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  if (v38)
  {
    dispatch_release(v38);
  }

  if (__p)
  {
    operator delete(__p);
  }

  mipc::dale_vinyl::Install_Vad_Req::~Install_Vad_Req(&a22);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Install_Vad_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Install_Vad_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Install_Vad_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::StreamFirmware(eUICC::eUICCVinylDALValve *this, __CFData *a2)
{
  v70[4] = *MEMORY[0x29EDCA608];
  v68 = 18;
  VinylFirmware::getFirmwareAPDUs(a2, &v66);
  v4 = v66;
  v3 = v67;
  v5 = mipc::dale_vinyl::Install_Fw_Req::Install_Fw_Req();
  v58 = 0;
  v59 = 0;
  v60 = 0;
  if (*(this + 352))
  {
    (*(*this + 8))(v69, this);
    memcpy(this + 8, v69, 0x11BuLL);
    RadioVendor = TelephonyRadiosGetRadioVendor();
    if (*(this + 2) != (RadioVendor - 5) < 0xFFFFFFFD)
    {
      gBBULogMaskGet(RadioVendor, v8);
      v9 = 658;
      v10 = "outData.Valid()";
      goto LABEL_7;
    }

    if (*(this + 31) != 1)
    {
      RadioVendor = (*(*this + 16))(this, 1, 0);
      v68 = RadioVendor;
      if (RadioVendor)
      {
        gBBULogMaskGet(RadioVendor, v8);
        v9 = 664;
        v10 = "kBBUReturnSuccess == ret";
LABEL_7:
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", v10, "", "", v9);
        goto LABEL_56;
      }
    }

    v11 = (v3 - v4) >> 5;
    v12 = *(this + 304);
    v54 = v11;
    if (v11 % v12)
    {
      v13 = v11 / v12 + 1;
    }

    else
    {
      v13 = v11 / v12;
    }

    if (v13)
    {
      v55 = 0;
      v56 = 0;
      v14 = 0;
      if (*(this + 73) == 2)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      v61[10] = v15;
      v53[0] = v13;
      while (1)
      {
        v53[1] = v53;
        v16 = *(this + 304);
        v17 = v54 - v14 * v16 >= v16 ? *(this + 304) : v54 - v14 * v16;
        MEMORY[0x2A1C7C4A8](RadioVendor);
        v19 = v53 - v18;
        bzero(v53 - v18, v20);
        v23 = v19;
        if (v17)
        {
          break;
        }

LABEL_26:
        v30 = v14 + 1;
        v31 = v53[0];
        if (!v14 || v53[0] == v30)
        {
          gBBULogMaskGet(v21, v22);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "StreamFirmware set %d/%zu adpusThisSet %zu\n", v14 + 1, v31, v17);
        }

        v32 = operator new(2uLL);
        *v32 = v31;
        v33 = v62;
        v62 = v32;
        if (v33)
        {
          operator delete(v33);
        }

        v34 = operator new(2uLL);
        *v34 = v14;
        v35 = v63;
        v63 = v34;
        if (v35)
        {
          operator delete(v35);
        }

        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v58, v19, v23, v23 - v19);
        mipc::tlv<mipc::mipc_byte_array_t<3930ul,false>,true>::operator=<std::vector<unsigned char> &>(&v65, &v58);
        v36 = operator new(2uLL);
        *v36 = v17;
        v37 = v64;
        v64 = v36;
        if (v37)
        {
          operator delete(v37);
        }

        v38 = dispatch_semaphore_create(0);
        if ((*(gBBULogMaskGet(v38, v39) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
        {
          v40 = v65;
          if (v65)
          {
            stringifyDataBuffer(*v65, v65[1] - *v65, &v57);
            v41 = &v57;
            if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v41 = v57.__r_.__value_.__r.__words[0];
            }
          }

          else
          {
            v41 = "NULL";
          }

          _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Fw_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62470, v41);
          if (v40 && SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v57.__r_.__value_.__l.__data_);
          }
        }

        abb::router::Client::send<mipc::dale_vinyl::Install_Fw_Req>(v69, v61, (this + 328));
        v42 = abb::router::SendProxy::timeout();
        if (v38)
        {
          dispatch_retain(v38);
        }

        v43 = operator new(0x20uLL);
        *v43 = &unk_2A20323B8;
        v43[1] = this;
        v43[2] = &v68;
        v43[3] = v38;
        v70[3] = v43;
        std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v70, (v42 + 152));
        std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v70);
        MEMORY[0x29C2B81A0](v69);
        v44 = dispatch_time(0, 7500000000);
        RadioVendor = dispatch_semaphore_wait(v38, v44);
        if (RadioVendor)
        {
          gBBULogMaskGet(RadioVendor, v45);
          RadioVendor = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on install fw req.\n");
        }

        v46 = v68;
        if (v38)
        {
          dispatch_release(v38);
        }

        if (!v46)
        {
          --v55;
          v56 += 32;
          ++v14;
          if (v31 > v30)
          {
            continue;
          }
        }

        goto LABEL_56;
      }

      v24 = &v66[v56 * *(this + 304) + 24];
      if (v54 + v55 * v16 < v16)
      {
        v16 = v54 + v55 * v16;
      }

      v23 = v19;
      while (1)
      {
        v25 = *(v24 - 2);
        if (v25 > 5 || *v24 >= 0x100)
        {
          break;
        }

        v26 = &v23[v25 + *v24];
        *v23 = v25;
        memcpy(v23 + 1, *(v24 - 3), *(v24 - 2));
        v23[*(v24 - 2) + 1] = *v24;
        v27 = *(v24 - 1);
        v28 = &v23[*(v24 - 2)];
        v29 = *v24;
        v24 += 4;
        v21 = memcpy(v28 + 2, v27, v29);
        v23 = v26 + 2;
        if (!--v16)
        {
          goto LABEL_26;
        }
      }

      gBBULogMaskGet(v21, v22);
      v47 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", "f.header.length <= 5 && f.data.length <= 255", "", "", 690);
      gBBULogMaskGet(v47, v48);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Firmware APDU not within expected bounds : received (header - 5 : %zu data- 255 : %zu\n", *(v24 - 2), *v24);
    }

    else
    {
      gBBULogMaskGet(RadioVendor, v8);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Condition <<%s>> failed %s %s/%d\n", "apduSetCount", "", "", 668);
      v68 = 15;
    }
  }

  else
  {
    gBBULogMaskGet(v5, v6);
    Transport = VinylDaleCommunication::createTransport();
    if (Transport)
    {
      Transport = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 651, "mipc_client_started");
    }

    gBBULogMaskGet(Transport, v52);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "No transport available.. bail out\n");
  }

LABEL_56:
  v49 = v68;
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  MEMORY[0x29C2B8440](v61);
  if (v66)
  {
    v67 = v66;
    operator delete(v66);
  }

  return v49;
}

void sub_299FBDB70(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  v4 = v1[8];
  if (v4)
  {
    v1[9] = v4;
    operator delete(v4);
  }

  MEMORY[0x29C2B8440](v1 + 11);
  v5 = v1[26];
  if (v5)
  {
    v1[27] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3930ul,false>,true>::operator=<std::vector<unsigned char> &>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Install_Fw_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Install_Fw_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Install_Fw_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::InitPerso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Init_Perso_Req::Init_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v22[10] = v6;
    v7 = operator new(1uLL);
    *v7 = 0;
    v8 = __p;
    __p = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(1uLL);
    *v9 = 0;
    v10 = v24;
    v24 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v25, a2);
    v11 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v11, v12) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v13 = v25;
      if (v25)
      {
        stringifyDataBuffer(*v25, *(v25 + 8) - *v25, &v21);
        v14 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        v14 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Init_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62471, v14);
      if (v13)
      {
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Init_Perso_Req>(v27, v22, (a1 + 328));
    v15 = abb::router::SendProxy::timeout();
    if (v11)
    {
      dispatch_retain(v11);
    }

    v16 = operator new(0x28uLL);
    *v16 = &unk_2A2032438;
    v16[1] = a1;
    v16[2] = a3;
    v16[3] = &v26;
    v16[4] = v11;
    v28[3] = v16;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v15 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C2B81A0](v27);
    v17 = dispatch_time(0, 7500000000);
    v18 = dispatch_semaphore_wait(v11, v17);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Init Perso Req.\n");
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    mipc::dale_vinyl::Init_Perso_Req::~Init_Perso_Req(v22);
    return v26;
  }

  else
  {
    eUICC::eUICCVinylDALValve::InitPerso(a1, a2);
    return 1;
  }
}

void sub_299FBE010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Init_Perso_Req::~Init_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Init_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Init_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Init_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::AuthPerso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Auth_Perso_Req::Auth_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v22[10] = v6;
    v7 = operator new(1uLL);
    *v7 = 0;
    v8 = __p;
    __p = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(1uLL);
    *v9 = 0;
    v10 = v24;
    v24 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v25, a2);
    v11 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v11, v12) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v13 = v25;
      if (v25)
      {
        stringifyDataBuffer(*v25, v25[1] - *v25, &v21);
        v14 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        v14 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Auth_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62472, v14);
      if (v13)
      {
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Auth_Perso_Req>(v27, v22, (a1 + 328));
    v15 = abb::router::SendProxy::timeout();
    if (v11)
    {
      dispatch_retain(v11);
    }

    v16 = operator new(0x28uLL);
    *v16 = &unk_2A20324B8;
    v16[1] = a1;
    v16[2] = a3;
    v16[3] = &v26;
    v16[4] = v11;
    v28[3] = v16;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v15 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C2B81A0](v27);
    v17 = dispatch_time(0, 7500000000);
    v18 = dispatch_semaphore_wait(v11, v17);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Auth Perso Req.\n");
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    mipc::dale_vinyl::Auth_Perso_Req::~Auth_Perso_Req(v22);
    return v26;
  }

  else
  {
    eUICC::eUICCVinylDALValve::AuthPerso(a1, a2);
    return 1;
  }
}

void sub_299FBE480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Auth_Perso_Req::~Auth_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Auth_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Auth_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Auth_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::FinalizePerso(uint64_t a1, uint64_t a2)
{
  v26[4] = *MEMORY[0x29EDCA608];
  v24 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Finalize_Perso_Req::Finalize_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    v20[10] = v4;
    v5 = operator new(1uLL);
    *v5 = 0;
    v6 = __p;
    __p = v5;
    if (v6)
    {
      operator delete(v6);
    }

    v7 = operator new(1uLL);
    *v7 = 0;
    v8 = v22;
    v22 = v7;
    if (v8)
    {
      operator delete(v8);
    }

    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v23, a2);
    v9 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v9, v10) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v11 = v23;
      if (v23)
      {
        stringifyDataBuffer(*v23, v23[1] - *v23, &v19);
        v12 = (v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v19 : v19.__r_.__value_.__r.__words[0];
      }

      else
      {
        v12 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Finalize_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62473, v12);
      if (v11)
      {
        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Finalize_Perso_Req>(v25, v20, (a1 + 328));
    v13 = abb::router::SendProxy::timeout();
    if (v9)
    {
      dispatch_retain(v9);
    }

    v14 = operator new(0x20uLL);
    *v14 = &unk_2A2032538;
    v14[1] = a1;
    v14[2] = &v24;
    v14[3] = v9;
    v26[3] = v14;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v26, (v13 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v26);
    MEMORY[0x29C2B81A0](v25);
    v15 = dispatch_time(0, 7500000000);
    v16 = dispatch_semaphore_wait(v9, v15);
    if (v16)
    {
      gBBULogMaskGet(v16, v17);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Finalize Perso Req.\n");
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    mipc::dale_vinyl::Finalize_Perso_Req::~Finalize_Perso_Req(v20);
    return v24;
  }

  else
  {
    eUICC::eUICCVinylDALValve::FinalizePerso(a1, a2);
    return 1;
  }
}

{
  v2 = gBBULogMaskGet(a1, a2);
  if ((*v2 & 2) != 0 && gBBULogVerbosity >= 6)
  {
    v2 = OUTLINED_FUNCTION_0_0(v2, v3, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n");
  }

  gBBULogMaskGet(v2, v3);
  v4 = OUTLINED_FUNCTION_2();

  return _BBULog(v4, v5, v6, v7, v8);
}

void sub_299FBE870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Finalize_Perso_Req::~Finalize_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Finalize_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Finalize_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Finalize_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ValidatePerso(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[4] = *MEMORY[0x29EDCA608];
  v26 = 1;
  if (*(a1 + 352))
  {
    mipc::dale_vinyl::Validate_Perso_Req::Validate_Perso_Req();
    if (*(a1 + 292) == 2)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v22[10] = v6;
    mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char> const&>(&v25, a2);
    v7 = operator new(2uLL);
    *v7 = 1;
    v8 = __p;
    __p = v7;
    if (v8)
    {
      operator delete(v8);
    }

    v9 = operator new(2uLL);
    *v9 = 0;
    v10 = v24;
    v24 = v9;
    if (v10)
    {
      operator delete(v10);
    }

    v11 = dispatch_semaphore_create(0);
    if ((*(gBBULogMaskGet(v11, v12) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
    {
      v13 = v25;
      if (v25)
      {
        stringifyDataBuffer(*v25, v25[1] - *v25, &v21);
        v14 = (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v21 : v21.__r_.__value_.__r.__words[0];
      }

      else
      {
        v14 = "NULL";
      }

      _BBULog(22, 7, "eUICCVinylDALValve", "", "Validate_Perso_Req sent: Msg=0x%x fTlv_Payload = %s\n", 62474, v14);
      if (v13)
      {
        if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v21.__r_.__value_.__l.__data_);
        }
      }
    }

    abb::router::Client::send<mipc::dale_vinyl::Validate_Perso_Req>(v27, v22, (a1 + 328));
    v15 = abb::router::SendProxy::timeout();
    if (v11)
    {
      dispatch_retain(v11);
    }

    v16 = operator new(0x28uLL);
    *v16 = &unk_2A20325B8;
    v16[1] = a1;
    v16[2] = a3;
    v16[3] = &v26;
    v16[4] = v11;
    v28[3] = v16;
    std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v28, (v15 + 152));
    std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v28);
    MEMORY[0x29C2B81A0](v27);
    v17 = dispatch_time(0, 7500000000);
    v18 = dispatch_semaphore_wait(v11, v17);
    if (v18)
    {
      gBBULogMaskGet(v18, v19);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for confirmation on Validate Perso Req.\n");
    }

    if (v11)
    {
      dispatch_release(v11);
    }

    mipc::dale_vinyl::Validate_Perso_Req::~Validate_Perso_Req(v22);
    return v26;
  }

  else
  {
    eUICC::eUICCVinylDALValve::ValidatePerso(a1, a2);
    return 1;
  }
}

void sub_299FBEC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  if (v32)
  {
    dispatch_release(v32);
  }

  mipc::dale_vinyl::Validate_Perso_Req::~Validate_Perso_Req(&a17);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Validate_Perso_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Validate_Perso_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Validate_Perso_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::InstallPairingMSM(uint64_t a1, char **a2)
{
  v42[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v4 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In InstallPairingMSM...\n");
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::InstallPairingMSM(v4, v5);
    return 1;
  }

  *(a1 + 368) = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = *(a1 + 360);
  *(a1 + 360) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v38 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v35[10] = v8;
  v9 = operator new(4uLL);
  *v9 = 2;
  v10 = __p;
  __p = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *a2;
  v12 = a2[1];
  v13 = v12 - *a2;
  if (v13 >= 0xE01)
  {
    gBBULogMaskGet(v9, v11);
    Transport = VinylDaleCommunication::createTransport();
    if (Transport)
    {
      Transport = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 982, "payload.size() <= MAX_MSM_SZ");
    }

    gBBULogMaskGet(Transport, v27);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input signed auth size = %zu, should < %d\n", a2[1] - *a2, 3584);
    goto LABEL_47;
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v39, v11, v12, v13);
  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v37, &v39);
  v15 = v39;
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if ((*(gBBULogMaskGet(v15, v14) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v16 = __p;
    if (__p)
    {
      stringifyVal(*__p, v33);
      if (v34 >= 0)
      {
        v17 = v33;
      }

      else
      {
        v17 = v33[0];
      }
    }

    else
    {
      v17 = "NULL";
    }

    v18 = v37;
    if (v37)
    {
      stringifyDataBuffer(*v37, v37[1] - *v37, &v32);
      if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v32;
      }

      else
      {
        v19 = v32.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v19 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Msm = %s\n", 62480, v17, v19);
    if (v18 && SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (v16 && v34 < 0)
    {
      operator delete(v33[0]);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(&v39, v35, (a1 + 328));
  v20 = abb::router::SendProxy::timeout();
  v42[0] = &unk_2A2032638;
  v42[1] = a1;
  v42[2] = &v38;
  v42[3] = v42;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v42, (v20 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v42);
  MEMORY[0x29C2B81A0](&v39);
  v21 = dispatch_time(0, 7500000000);
  v22 = dispatch_semaphore_wait(*(a1 + 360), v21);
  if (v22)
  {
    gBBULogMaskGet(v22, v23);
    v22 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on InstallPairingMSM Sep_Cmd_Req\n");
  }

  if ((v38 & 1) == 0)
  {
    gBBULogMaskGet(v22, v23);
    v28 = VinylDaleCommunication::createTransport();
    if (v28)
    {
      v28 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1012, "successCnf");
    }

    gBBULogMaskGet(v28, v29);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf fail\n");
    goto LABEL_47;
  }

  if ((*(a1 + 368) & 1) == 0)
  {
    gBBULogMaskGet(v22, v23);
    v30 = VinylDaleCommunication::createTransport();
    if (v30)
    {
      v30 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1013, "sepIndSuccess_");
    }

    gBBULogMaskGet(v30, v31);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Ind Fail\n");
LABEL_47:
    v24 = 1;
    goto LABEL_35;
  }

  gBBULogMaskGet(v22, v23);
  _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM succeed\n");
  v24 = 0;
LABEL_35:
  MEMORY[0x29C2B8350](v35);
  return v24;
}

void sub_299FBF270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  if (v42)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2B8350](&a25, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t *abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>@<X0>(abb::router::SendProxy *__return_ptr a1@<X8>, mipc::dale_vinyl::Sep_Cmd_Req *this@<X1>, const abb::router::Client *a3@<X0>)
{
  mipc::dale_vinyl::Sep_Cmd_Req::serialize(v8, this);
  if (v9)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29F2931D0, MEMORY[0x29EDC9360]);
  }

  MEMORY[0x29C2B8170](v7, v8);
  abb::router::SendProxy::SendProxy(a1, a3, v7);
  MEMORY[0x29C2B8180](v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v8);
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingGetNonce(uint64_t a1, void **a2)
{
  v30[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v4 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In ManagePairingGetNonce...\n");
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::ManagePairingGetNonce(v4, v5);
    return 1;
  }

  *(a1 + 384) = *(a1 + 376);
  *(a1 + 368) = 0;
  v6 = dispatch_semaphore_create(0);
  v7 = *(a1 + 360);
  *(a1 + 360) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v28 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v26[10] = v8;
  v9 = operator new(4uLL);
  *v9 = 0;
  v11 = __p;
  __p = v9;
  if (v11)
  {
    operator delete(v11);
  }

  if ((*(gBBULogMaskGet(v9, v10) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v12 = __p;
    if (__p)
    {
      stringifyVal(*__p, v24);
      v13 = v25 >= 0 ? v24 : v24[0];
    }

    else
    {
      v13 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s\n", 62480, v13);
    if (v12)
    {
      if (v25 < 0)
      {
        operator delete(v24[0]);
      }
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(v29, v26, (a1 + 328));
  v14 = abb::router::SendProxy::timeout();
  v30[0] = &unk_2A20326B8;
  v30[1] = a1;
  v30[2] = &v28;
  v30[3] = v30;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v30, (v14 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v30);
  MEMORY[0x29C2B81A0](v29);
  v15 = dispatch_time(0, 7500000000);
  v16 = dispatch_semaphore_wait(*(a1 + 360), v15);
  if (v16)
  {
    gBBULogMaskGet(v16, v17);
    v16 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on ManagePairingGetNonce Sep_Cmd_Req\n");
  }

  if (v28)
  {
    if (*(a1 + 368))
    {
      if ((a1 + 376) != a2)
      {
        v16 = std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a2, *(a1 + 376), *(a1 + 384), *(a1 + 384) - *(a1 + 376));
      }

      gBBULogMaskGet(v16, v17);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce succeed\n");
      v18 = 0;
      goto LABEL_26;
    }

    gBBULogMaskGet(v16, v17);
    Transport = VinylDaleCommunication::createTransport();
    if (Transport)
    {
      Transport = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1069, "sepIndSuccess_");
    }

    gBBULogMaskGet(Transport, v23);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Ind fail\n");
  }

  else
  {
    gBBULogMaskGet(v16, v17);
    v20 = VinylDaleCommunication::createTransport();
    if (v20)
    {
      v20 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1068, "successCnf");
    }

    gBBULogMaskGet(v20, v21);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf fail\n");
  }

  v18 = 1;
LABEL_26:
  MEMORY[0x29C2B8350](v26);
  return v18;
}

uint64_t eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(uint64_t a1, char **a2, void *a3)
{
  v56[4] = *MEMORY[0x29EDCA608];
  gBBULogMaskGet(a1, a2);
  v6 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "In ManagePairingAuthenticate...\n");
  if ((*(a1 + 352) & 1) == 0)
  {
    eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(v6, v7);
    return 1;
  }

  *(a1 + 368) = 0;
  v8 = dispatch_semaphore_create(0);
  v9 = *(a1 + 360);
  *(a1 + 360) = v8;
  if (v9)
  {
    dispatch_release(v9);
  }

  v52 = 0;
  mipc::dale_vinyl::Sep_Cmd_Req::Sep_Cmd_Req();
  if (*(a1 + 292) == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v48[10] = v10;
  v11 = operator new(4uLL);
  *v11 = 1;
  v12 = __p;
  __p = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *a2;
  v14 = a2[1];
  v15 = v14 - *a2;
  if (v15 >= 0x49)
  {
    gBBULogMaskGet(v11, v13);
    Transport = VinylDaleCommunication::createTransport();
    if (Transport)
    {
      Transport = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1100, "payload.size() <= MAX_SEP_SIGNED_AUTH_SZ");
    }

    gBBULogMaskGet(Transport, v35);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input signed auth size = %zu, should < %d\n");
    goto LABEL_66;
  }

  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v53, v13, v14, v15);
  mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,true>::operator=<std::vector<unsigned char>>(&v50, &v53);
  v17 = v53;
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  v18 = a3[1];
  if (*a3 == v18)
  {
    gBBULogMaskGet(v17, v16);
    v36 = VinylDaleCommunication::createTransport();
    if (v36)
    {
      v36 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1102, "!nonce.empty()");
    }

    gBBULogMaskGet(v36, v37);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input nonce is empty\n");
    goto LABEL_66;
  }

  if (v18 - *a3 != 16)
  {
    gBBULogMaskGet(v17, v16);
    v38 = VinylDaleCommunication::createTransport();
    if (v38)
    {
      v38 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1104, "nonce.size() == SEP_NONCE_SZ");
    }

    gBBULogMaskGet(v38, v39);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate input nonce size = %zu, should be %d\n");
    goto LABEL_66;
  }

  v19 = mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,false>::operator=<std::vector<unsigned char> const&>(&v51, a3);
  if ((*(gBBULogMaskGet(v19, v20) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v21 = __p;
    if (__p)
    {
      stringifyVal(*__p, v46);
      if (v47 >= 0)
      {
        v22 = v46;
      }

      else
      {
        v22 = v46[0];
      }
    }

    else
    {
      v22 = "NULL";
    }

    v23 = v50;
    if (v50)
    {
      stringifyDataBuffer(*v50, v50[1] - *v50, &v45);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v45;
      }

      else
      {
        v24 = v45.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v24 = "NULL";
    }

    v25 = v51;
    if (v51)
    {
      stringifyDataBuffer(*v51, *(v51 + 8) - *v51, &v44);
      if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v44;
      }

      else
      {
        v26 = v44.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v26 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Req sent: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Signed_Auth = %s fTlv_Nonce = %s\n", 62480, v22, v24, v26);
    if (v25 && SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (v23 && SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v21 && v47 < 0)
    {
      operator delete(v46[0]);
    }
  }

  abb::router::Client::send<mipc::dale_vinyl::Sep_Cmd_Req>(&v53, v48, (a1 + 328));
  v27 = abb::router::SendProxy::timeout();
  v28 = operator new(0x20uLL);
  *v28 = &unk_2A2032738;
  v28[1] = a1;
  v28[2] = &v52 + 1;
  v28[3] = &v52;
  v56[3] = v28;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v56, (v27 + 152));
  std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](v56);
  MEMORY[0x29C2B81A0](&v53);
  v29 = dispatch_time(0, 7500000000);
  v30 = dispatch_semaphore_wait(*(a1 + 360), v29);
  if (!v30)
  {
LABEL_44:
    if ((v52 & 0x100) != 0)
    {
      if (*(a1 + 368))
      {
        gBBULogMaskGet(v30, v31);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate succeed\n");
        v32 = 0;
LABEL_47:
        MEMORY[0x29C2B8350](v48);
        return v32;
      }

      gBBULogMaskGet(v30, v31);
      v42 = VinylDaleCommunication::createTransport();
      if (v42)
      {
        v42 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1145, "sepIndSuccess_");
      }

      gBBULogMaskGet(v42, v43);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Ind Sep_Cmd_Cnf\n");
    }

    else
    {
      gBBULogMaskGet(v30, v31);
      v40 = VinylDaleCommunication::createTransport();
      if (v40)
      {
        v40 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 1144, "successCnf");
      }

      gBBULogMaskGet(v40, v41);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf fail\n");
    }

LABEL_66:
    v32 = 1;
    goto LABEL_47;
  }

  if ((v52 & 1) == 0)
  {
    gBBULogMaskGet(v30, v31);
    v30 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Timeout waiting for indication on ManagePairingAuthenticate Sep_Cmd_Req\n");
    goto LABEL_44;
  }

  MEMORY[0x29C2B8350](v48);
  return 0;
}

void sub_299FBFDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (v50 && a25 < 0)
  {
    operator delete(__p);
  }

  if (v49)
  {
    if (a31 < 0)
    {
      operator delete(a26);
    }
  }

  MEMORY[0x29C2B8350](&a32, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

void ***mipc::tlv<mipc::mipc_byte_array_t<3584ul,false>,false>::operator=<std::vector<unsigned char> const&>(void ***a1, uint64_t a2)
{
  v4 = operator new(0x18uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](a1, v5);
  }

  return a1;
}

void eUICC::eUICCVinylDALValve::~eUICCVinylDALValve(eUICC::eUICCVinylDALValve *this)
{
  *this = &unk_2A2031D10;
  if (*(this + 352) == 1)
  {
    abb::router::Client::stop((this + 328));
  }

  v2 = *(this + 47);
  if (v2)
  {
    *(this + 48) = v2;
    operator delete(v2);
  }

  v3 = *(this + 45);
  if (v3)
  {
    dispatch_release(v3);
  }

  *(this + 41) = &unk_2A2031E08;
  v4 = *(this + 43);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  eUICC::eUICCVinylValve::~eUICCVinylValve(this);
}

{
  eUICC::eUICCVinylDALValve::~eUICCVinylDALValve(this);

  operator delete(v1);
}

char *std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = std::vector<unsigned char>::__vallocate[abi:ne200100](result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_299FC0088(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_2A2031E38;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::~__func(void *__p)
{
  *__p = &unk_2A2031E38;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A2031E38;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A2031E38;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  *(v2 + 352) = 1;
  return dispatch_semaphore_signal(v1);
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2031EC8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031EC8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1,std::allocator<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_1>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A2031F48;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A2031F48;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::operator()(uint64_t a1, abb::router::Message *this)
{
  abb::router::Message::getRawMsg(&v52, this);
  v4 = *v52;
  abb::router::Message::getRawMsg(&v49, this);
  MEMORY[0x29C2B8320](v39, v4, *(v49 + 1) - *v49);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  v6 = v53;
  if (v53)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
  }

  v7 = *(a1 + 8);
  v8 = gBBULogMaskGet(v6, v5);
  if ((*(v8 + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v41;
    if (v41)
    {
      stringifyVal(*v41, &v52);
      if (v54 >= 0)
      {
        v11 = &v52;
      }

      else
      {
        v11 = v52;
      }
    }

    else
    {
      v11 = "NULL";
    }

    v12 = v42;
    if (v42)
    {
      stringifyVal(*v42, &v49);
      if (v51 >= 0)
      {
        v13 = &v49;
      }

      else
      {
        v13 = v49;
      }
    }

    else
    {
      v13 = "NULL";
    }

    v14 = v43;
    if (v43)
    {
      stringifyVal(*v43, v47);
      if (v48 >= 0)
      {
        v15 = v47;
      }

      else
      {
        v15 = v47[0];
      }
    }

    else
    {
      v15 = "NULL";
    }

    v16 = v44;
    if (v44)
    {
      stringifyDataBuffer(*v44, *(v44 + 8) - *v44, &v46);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v46;
      }

      else
      {
        v17 = v46.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v17 = "NULL";
    }

    v8 = _BBULog(22, 7, "eUICCVinylDALValve", "", "Sep_Cmd_Ind received: Msg=%04x fTlv_Cmd_Id = %s fTlv_Result = %s fTlv_Sw = %s fTlv_Nonce = %s\n", 62595, v11, v13, v15, v17);
    if (v16 && SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v14 && v48 < 0)
    {
      operator delete(v47[0]);
    }

    if (v12 && v51 < 0)
    {
      operator delete(v49);
    }

    if (v10 && v54 < 0)
    {
      operator delete(v52);
    }
  }

  if (v41)
  {
    v18 = *v41;
    if (*v41 >= 3)
    {
      gBBULogMaskGet(v8, v9);
      Transport = VinylDaleCommunication::createTransport();
      if (Transport)
      {
        Transport = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 125, "cmdId == mipc::MIPC_DALE_VINYL_SEP_CMD_GET_NONCE || cmdId == mipc::MIPC_DALE_VINYL_SEP_CMD_AUTHENTICATE || cmdId == mipc::MIPC_DALE_VINYL_SEP_CMD_INSTALL");
      }

      gBBULogMaskGet(Transport, v31);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind Cmd_Id %u not supported\n");
    }

    else
    {
      v19 = mipc::operator==();
      if (v19)
      {
        if (!v42 || *v42)
        {
          gBBULogMaskGet(v19, v20);
          v24 = VinylDaleCommunication::createTransport();
          if (v24)
          {
            v24 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 130, "ind.fTlv_Result && *ind.fTlv_Result == mipc::MIPC_DALE_VINYL_CMD_RESULT_SUCCESS");
          }

          gBBULogMaskGet(v24, v25);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind failed, result 0x%x\n");
        }

        else if (v43 && *v43 == -28672)
        {
          if (v18 > 1)
          {
LABEL_50:
            *(v7 + 368) = 1;
            goto LABEL_51;
          }

          if (v44)
          {
            v21 = *v44;
            if (*(v44 + 8) - *v44 == 16)
            {
              std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>((v7 + 376), v21, v21 + 16, 0x10uLL);
              goto LABEL_50;
            }

            gBBULogMaskGet(v19, v21);
            v36 = VinylDaleCommunication::createTransport();
            if (v36)
            {
              v36 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 139, "ind.fTlv_Nonce.get()->size() == SEP_NONCE_SZ");
            }

            gBBULogMaskGet(v36, v37);
            _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind nonce size = %zu, should be %d\n", *(v44 + 8) - *v44, 16);
          }

          else
          {
            gBBULogMaskGet(v19, v20);
            v34 = VinylDaleCommunication::createTransport();
            if (v34)
            {
              v34 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 137, "ind.fTlv_Nonce.get()");
            }

            gBBULogMaskGet(v34, v35);
            _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind Cmd_id %u should have fTlv_Nonce\n");
          }
        }

        else
        {
          gBBULogMaskGet(v19, v20);
          v26 = VinylDaleCommunication::createTransport();
          if (v26)
          {
            v26 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 132, "ind.fTlv_Sw && *ind.fTlv_Sw == 0x9000");
          }

          gBBULogMaskGet(v26, v27);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind failed, status word from UICC sw 0x%hx\n");
        }
      }

      else
      {
        gBBULogMaskGet(v19, v20);
        v32 = VinylDaleCommunication::createTransport();
        if (v32)
        {
          v32 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 128, "!ind.isError()");
        }

        gBBULogMaskGet(v32, v33);
        if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v45, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
        }

        else
        {
          v45 = v40;
        }

        v38 = &v45;
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v45.__r_.__value_.__r.__words[0];
        }

        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind returned error[%s].\n", v38);
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  else
  {
    gBBULogMaskGet(v8, v9);
    v28 = VinylDaleCommunication::createTransport();
    if (v28)
    {
      v28 = _BBULog(1, 6, "eUICCVinylDALValve", "", "check failed: %s, %d, assertion: %s\n", "/Library/Caches/com.apple.xbs/Sources/VinylRestore/CommandDrivers/eUICCVinylDALValve.cpp", 119, "ind.fTlv_Cmd_Id");
    }

    gBBULogMaskGet(v28, v29);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind doesn't have fTlv_Cmd_Id\n");
  }

LABEL_51:
  v22 = *(v7 + 360);
  if (v22)
  {
    dispatch_semaphore_signal(v22);
  }

  else
  {
    gBBULogMaskGet(0, v20);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Sep_Cmd_Ind sepIndSem_ is NULL because of an unexpected baseband indication but that's fine\n");
  }

  return MEMORY[0x29C2B8330](v39);
}

void sub_299FC0AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2B8330](&a14, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<void abb::router::Client::regIndHandler<eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2>(unsigned int,eUICC::eUICCVinylDALValve::eUICCVinylDALValve(void *,int,BOOL,std::shared_ptr<void>)::$_2 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const&>,void ()(abb::router::Message const)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(abb::router::Message const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<std::vector<unsigned char>,mipc::Error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 48);
  if (v2 != -1)
  {
    result = (off_2A2031FC8[v2])(&v3, result);
  }

  *(v1 + 48) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(a2 + 31) < 0)
  {
    v4 = *(a2 + 8);

    operator delete(v4);
  }
}

void mipc::Error::~Error(mipc::Error *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2031FE8;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2031FE8;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2031FE8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2031FE8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v25.__val_, this);
    if ((v26 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v31 = v25;
    v5 = mipc::toErrorCode(v25.__val_, v4);
    std::error_code::message(&v27.__r_.__value_.__r.__words[1], &v31);
    v29 = 0;
    v30 = 0;
    v27.__r_.__value_.__r.__words[0] = v5;
    MEMORY[0x29C2B8670](v19, &v27, 1);
    size = v30;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if (v28 < 0)
    {
      operator delete(v27.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v27, this);
    v8 = *v27.__r_.__value_.__l.__data_;
    abb::router::Message::getRawMsg(&v25.__val_, this);
    MEMORY[0x29C2B8680](v19, v8, *(*&v25.__val_ + 8) - **&v25.__val_);
    if (v25.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v25.__cat_);
    }

    size = v27.__r_.__value_.__l.__size_;
    if (v27.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27.__r_.__value_.__l.__size_);
    }
  }

  if ((*(gBBULogMaskGet(size, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v22;
    if (v22)
    {
      if (*(v22 + 23) < 0)
      {
        v9 = *v22;
      }
    }

    else
    {
      v9 = "NULL";
    }

    v10 = v23;
    if (v23)
    {
      if (*(v23 + 23) < 0)
      {
        v10 = *v23;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v24;
    if (v24)
    {
      if (*(v24 + 23) < 0)
      {
        v11 = *v24;
      }
    }

    else
    {
      v11 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Status_Cnf received: Msg=0x%x fTlv_Eid = %s fTlv_Iccid = %s fTlv_Atr = %s\n", 1296, v9, v10, v11);
  }

  v12 = mipc::operator==();
  v13 = v12;
  gBBULogMaskGet(v12, v14);
  if (v13)
  {
    v15 = *v21;
    if ((v15 + 4) > 0x19u)
    {
      v16 = "Unknown sim status";
    }

    else
    {
      v16 = off_29F293A08[(v15 + 4)];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "SIM status: %s(%d).\n", v16, v15);
    **(a1 + 16) = *v21;
  }

  else
  {
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v27, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v20;
    }

    v17 = &v27;
    if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v27.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Status_Cnf returned error[%s].\n", v17);
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  return MEMORY[0x29C2B8690](v19);
}

void sub_299FC11AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v11 - 89) < 0)
  {
    operator delete(*(v11 - 112));
  }

  MEMORY[0x29C2B8690](va, a2, a3, a4, a5, a6);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0>(eUICC::eUICCVinylDALValve::waitForeSIMBoot(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9600] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9480], MEMORY[0x29EDC9368]);
}

void *std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x29EDCA608];
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

void sub_299FC1500(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032068;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032068;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A2032068;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A2032068;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v50.__val_, this);
    if ((v51 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v48 = v50;
    v5 = mipc::toErrorCode(v50.__val_, v4);
    std::error_code::message(&__p, &v48);
    v42 = 0;
    v43 = 0;
    v40 = v5;
    MEMORY[0x29C2B8450](v31, &v40, 1);
    v7 = v43;
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v40, this);
    v8 = *v40;
    abb::router::Message::getRawMsg(&v50.__val_, this);
    MEMORY[0x29C2B8460](v31, v8, *(*&v50.__val_ + 8) - **&v50.__val_);
    if (v50.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50.__cat_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a1 + 8);
  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v33;
    if (v33)
    {
      stringifyVal(*v33, &v40);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v11 = &v40;
      }

      else
      {
        v11 = v40;
      }
    }

    else
    {
      v11 = "NULL";
    }

    v30 = v34;
    if (v34)
    {
      stringifyVal(*v34, &v50);
      if (v52 >= 0)
      {
        v12 = &v50;
      }

      else
      {
        v12 = *&v50.__val_;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v35;
    if (v35)
    {
      stringifyVal(*v35, &v48);
      if (v49 >= 0)
      {
        v14 = &v48;
      }

      else
      {
        v14 = *&v48.__val_;
      }
    }

    else
    {
      v14 = "NULL";
    }

    v15 = v39;
    if (v39)
    {
      v16 = v46;
      stringifyVal(*v39, v46);
      if (v47 < 0)
      {
        v16 = v46[0];
      }
    }

    else
    {
      v16 = "NULL";
    }

    v17 = v36;
    if (v36)
    {
      stringifyDataBuffer(*v36, v36[1] - *v36, &v45);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v45;
      }

      else
      {
        v18 = v45.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v18 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Is_Not_Personalized = %s fTlv_Sw = %s fTlv_Chip_Id = %s fTlv_Eid = %s\n", 62467, v11, v12, v14, v16, v18);
    if (v17 && SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v15 && v47 < 0)
    {
      operator delete(v46[0]);
    }

    if (v13 && v49 < 0)
    {
      operator delete(*&v48.__val_);
    }

    if (v30 && v52 < 0)
    {
      operator delete(*&v50.__val_);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v40);
    }
  }

  v19 = mipc::operator==();
  if (v19)
  {
    if (*v33)
    {
      gBBULogMaskGet(v19, v20);
      v21 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf not successful, result 0x%x ", *v33);
      v22 = v35;
      gBBULogMaskGet(v21, v23);
      if (v22)
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "sw1_sw2 0x%hx\n", *v35);
      }

      else
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "\n");
      }
    }

    else
    {
      *(v9 + 8) = 0;
      if (v35)
      {
        *(v9 + 13) = *v35;
      }

      if (v36)
      {
        *(v9 + 15) = **v36;
      }

      if (v37)
      {
        v24 = (*v37)[1];
        *(v9 + 32) = **v37;
        *(v9 + 48) = v24;
      }

      if (v38)
      {
        mipc::getBuf<3ul,true>(v38, &v44);
        size = v44.__r_.__value_.__l.__size_;
        v26 = *(*v44.__r_.__value_.__l.__data_ + 2);
        *(v9 + 248) = **v44.__r_.__value_.__l.__data_;
        *(v9 + 250) = v26;
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      if (v34)
      {
        *(v9 + 12) = *v34;
      }

      if (v39)
      {
        *(v9 + 283) = *v39;
      }

      v27 = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 286) = eUICC::eUICCVinylValve::simSKUID;
      *(v9 + 287) = v27 ^ 1;
      *(v9 + 290) = 1;
      eUICC::logEUICCData((v9 + 8), v20);
    }
  }

  else
  {
    gBBULogMaskGet(v19, v20);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
    }

    else
    {
      v44 = v32;
    }

    v28 = &v44;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v44.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "EoS_Getdata_Cnf returned error[%s].\n", v28);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 16));
  return MEMORY[0x29C2B8470](v31);
}

void sub_299FC1B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v43 && *(v44 - 145) < 0)
  {
    operator delete(*(v44 - 168));
  }

  if (v42 && *(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (a16 && *(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (a15)
  {
    if (a42 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2B8470](&a17, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0>(eUICC::eUICCVinylDALValve::GetData_EoS(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mipc::getBuf<3ul,true>@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  v5 = result[1];
  if (*result == v5)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v7[2] = v2;
    v7[3] = v3;
    v6 = v5;
    v7[0] = v4;
    return std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>(v7, &v6, a2);
  }

  return result;
}

uint64_t std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,0>@<X0>(char **a1@<X1>, char **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,std::allocator<std::vector<unsigned char>>,0>(v6, a1, a2);
  *a3 = v6 + 24;
  a3[1] = v6;
  return result;
}

uint64_t std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>,std::allocator<std::vector<unsigned char>>,0>(uint64_t a1, char **a2, char **a3)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_2A20320D8;
  v4 = *a2;
  v5 = *a3;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0u;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>((a1 + 24), v4, v5, v5 - v4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A20320D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032138;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032138;
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A2032138;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2A2032138;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v68.__val_, this);
    if ((v69 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v66 = v68;
    v5 = mipc::toErrorCode(v68.__val_, v4);
    std::error_code::message(&__p, &v66);
    v60 = 0;
    v61 = 0;
    v58 = v5;
    MEMORY[0x29C2B82A0](v43, &v58, 1);
    v7 = v61;
    if (v61)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v61);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v58, this);
    v8 = *v58;
    abb::router::Message::getRawMsg(&v68.__val_, this);
    MEMORY[0x29C2B82B0](v43, v8, *(*&v68.__val_ + 8) - **&v68.__val_);
    if (v68.__cat_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v68.__cat_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a1 + 8);
  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v10 = v45;
    if (v45)
    {
      stringifyVal(*v45, &v58);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v11 = &v58;
      }

      else
      {
        v11 = v58;
      }
    }

    else
    {
      v11 = "NULL";
    }

    v42 = v46;
    if (v46)
    {
      stringifyVal(*v46, &v68);
      if (v70 >= 0)
      {
        v12 = &v68;
      }

      else
      {
        v12 = *&v68.__val_;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v47;
    if (v47)
    {
      stringifyVal(*v47, &v66);
      if (v67 >= 0)
      {
        v14 = &v66;
      }

      else
      {
        v14 = *&v66.__val_;
      }
    }

    else
    {
      v14 = "NULL";
    }

    v15 = v56;
    if (v56)
    {
      v16 = v64;
      stringifyVal(*v56, v64);
      if (v65 < 0)
      {
        v16 = v64[0];
      }
    }

    else
    {
      v16 = "NULL";
    }

    v17 = v48;
    if (v48)
    {
      stringifyDataBuffer(*v48, v48[1] - *v48, &v63);
      if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v63;
      }

      else
      {
        v18 = v63.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v18 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Getdata_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Is_Not_Personalized = %s fTlv_Sw = %s fTlv_Chip_Id = %s fTlv_Eid = %s\n", 62466, v11, v12, v14, v16, v18);
    if (v17 && SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (v15 && v65 < 0)
    {
      operator delete(v64[0]);
    }

    if (v13 && v67 < 0)
    {
      operator delete(*&v66.__val_);
    }

    if (v42 && v70 < 0)
    {
      operator delete(*&v68.__val_);
    }

    if (v10 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v58);
    }
  }

  v19 = mipc::operator==();
  if (v19)
  {
    if (*v45)
    {
      gBBULogMaskGet(v19, v20);
      v21 = _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Getdata_Cnf not successful, result 0x%x ", *v45);
      v22 = v47;
      gBBULogMaskGet(v21, v23);
      if (v22)
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "sw1_sw2 0x%hx\n", *v47);
      }

      else
      {
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "\n");
      }
    }

    else
    {
      *(v9 + 8) = 0;
      if (v47)
      {
        *(v9 + 13) = *v47;
      }

      if (v48)
      {
        *(v9 + 15) = **v48;
      }

      if (v49)
      {
        *(v9 + 31) = *v49;
      }

      if (v52)
      {
        v24 = (*v52)[1];
        *(v9 + 32) = **v52;
        *(v9 + 48) = v24;
      }

      if (v50)
      {
        *(v9 + 64) = **v50;
      }

      if (v51)
      {
        *(v9 + 72) = **v51;
      }

      if (v53)
      {
        mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf(&v53, &v62);
        size = v62.__r_.__value_.__l.__size_;
        v26 = *v62.__r_.__value_.__l.__data_;
        *(v9 + 80) = **v62.__r_.__value_.__l.__data_;
        v28 = v26[2];
        v27 = v26[3];
        v29 = v26[1];
        *(v9 + 139) = *(v26 + 59);
        *(v9 + 112) = v28;
        *(v9 + 128) = v27;
        *(v9 + 96) = v29;
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }
      }

      if (v54)
      {
        mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf(&v54, &v62);
        v30 = v62.__r_.__value_.__l.__size_;
        v31 = *v62.__r_.__value_.__l.__data_;
        *(v9 + 155) = **v62.__r_.__value_.__l.__data_;
        v33 = v31[2];
        v32 = v31[3];
        v34 = *(v31 + 59);
        *(v9 + 171) = v31[1];
        *(v9 + 214) = v34;
        *(v9 + 203) = v32;
        *(v9 + 187) = v33;
        if (v30)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }
      }

      if (v55)
      {
        mipc::getBuf<3ul,true>(v55, &v62);
        v35 = v62.__r_.__value_.__l.__size_;
        v36 = *(*v62.__r_.__value_.__l.__data_ + 2);
        *(v9 + 248) = **v62.__r_.__value_.__l.__data_;
        *(v9 + 250) = v36;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }
      }

      if (v57)
      {
        mipc::getBuf<3ul,true>(v57, &v62);
        v37 = v62.__r_.__value_.__l.__size_;
        v38 = *(*v62.__r_.__value_.__l.__data_ + 16);
        *(v9 + 251) = **v62.__r_.__value_.__l.__data_;
        *(v9 + 267) = v38;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }
      }

      if (v46)
      {
        *(v9 + 12) = *v46;
      }

      if (v56)
      {
        *(v9 + 283) = *v56;
      }

      v39 = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 289) = eUICC::eUICCVinylValve::hardwareHasESIM;
      *(v9 + 286) = eUICC::eUICCVinylValve::simSKUID;
      *(v9 + 287) = v39 ^ 1;
      *(v9 + 290) = 1;
    }
  }

  else
  {
    gBBULogMaskGet(v19, v20);
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v62, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      v62 = v44;
    }

    v40 = &v62;
    if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v40 = v62.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Getdata_Cnf returned error[%s].\n", v40);
    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 16));
  return MEMORY[0x29C2B82C0](v43);
}

void sub_299FC25EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (v51 && *(v52 - 161) < 0)
  {
    operator delete(*(v52 - 184));
  }

  if (v50 && *(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  if (a17 && *(v52 - 105) < 0)
  {
    operator delete(*(v52 - 128));
  }

  if (a16)
  {
    if (a50 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2B82C0](&a18, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::GetData(void)::$_0>(eUICC::eUICCVinylDALValve::GetData(void)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *mipc::tlv<mipc::mipc_policy_ctrl_func_struct4,false>::getBuf@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v8 = 69;
    result = std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>(&v8, a2);
    v4 = **a2;
    v6 = *(v3 + 32);
    v5 = *(v3 + 48);
    v7 = *(v3 + 16);
    *(v4 + 61) = *(v3 + 61);
    *(v4 + 32) = v6;
    *(v4 + 48) = v5;
    *(v4 + 16) = v7;
    *v4 = *v3;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void *std::allocate_shared[abi:ne200100]<std::vector<unsigned char>,std::allocator<std::vector<unsigned char>>,unsigned long,0>@<X0>(size_t *a1@<X1>, void *a2@<X8>)
{
  v4 = operator new(0x30uLL);
  result = std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<unsigned char>>,0>(v4, a1);
  *a2 = v4 + 3;
  a2[1] = v4;
  return result;
}

void *std::__shared_ptr_emplace<std::vector<unsigned char>>::__shared_ptr_emplace[abi:ne200100]<unsigned long,std::allocator<std::vector<unsigned char>>,0>(void *a1, size_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2A20320D8;
  std::vector<unsigned char>::vector[abi:ne200100](a1 + 3, *a2);
  return a1;
}

void *std::vector<unsigned char>::vector[abi:ne200100](void *a1, size_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
    v4 = a1[1];
    v5 = v4 + a2;
    bzero(v4, a2);
    a1[1] = v5;
  }

  return a1;
}

void sub_299FC28C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20321B8;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20321B8;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20321B8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20321B8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v25, this);
    if ((v26 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v24.__r_.__value_.__l.__data_ = v25;
    v5 = mipc::toErrorCode(v25, v4);
    std::error_code::message(&__p, &v24);
    v22 = 0;
    v23 = 0;
    v20 = v5;
    MEMORY[0x29C2B84F0](v16, &v20, 1);
    v7 = v23;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v20, this);
    v8 = *v20;
    abb::router::Message::getRawMsg(&v25, this);
    MEMORY[0x29C2B8500](v16, v8, *(v25 + 8) - *v25);
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v18;
    if (v18)
    {
      stringifyVal(*v18, &v20);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v19;
    if (v19)
    {
      stringifyVal(*v19, &v25);
      if (v27 >= 0)
      {
        v12 = &v25;
      }

      else
      {
        v12 = v25;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Switch_Mode_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", 62468, v10, v12);
    if (v11 && v27 < 0)
    {
      operator delete(v25);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v20);
    }
  }

  v13 = mipc::operator==();
  if (v13)
  {
    if (*v18)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Switch_Mode_Cnf not successful, result 0x%x sw1_sw2 0x%hx\n", *v18, *v19);
    }

    else
    {
      **(a1 + 16) = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v17;
    }

    v15 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v24.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Switch_Mode_Req returned error[%s].\n", v15);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Switch_Mode_Cnf::~Switch_Mode_Cnf(v16);
}

void sub_299FC2D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Switch_Mode_Cnf::~Switch_Mode_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0>(eUICC::eUICCVinylDALValve::SetCardMode(eUICC::VinylOpMode,BOOL)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<mipc::mipc_byte_array_t<3584ul,false>>::operator()[abi:ne200100](int a1, void **__p)
{
  if (__p)
  {
    v3 = *__p;
    if (*__p)
    {
      __p[1] = v3;
      operator delete(v3);
    }

    operator delete(__p);
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032238;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032238;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2032238;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032238;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v25, this);
    if ((v26 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v24.__r_.__value_.__l.__data_ = v25;
    v5 = mipc::toErrorCode(v25, v4);
    std::error_code::message(&__p, &v24);
    v22 = 0;
    v23 = 0;
    v20 = v5;
    MEMORY[0x29C2B85E0](v16, &v20, 1);
    v7 = v23;
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v20, this);
    v8 = *v20;
    abb::router::Message::getRawMsg(&v25, this);
    MEMORY[0x29C2B85F0](v16, v8, *(v25 + 8) - *v25);
    if (*(&v25 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v18;
    if (v18)
    {
      stringifyVal(*v18, &v20);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v19;
    if (v19)
    {
      stringifyVal(*v19, &v25);
      if (v27 >= 0)
      {
        v12 = &v25;
      }

      else
      {
        v12 = v25;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Delete Profile Cmd_Cnf received: Msg=0x%x fTlv_Cmd_Id = %s fTlv_Result = %s\n", 62465, v10, v12);
    if (v11 && v27 < 0)
    {
      operator delete(v25);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v20);
    }
  }

  v13 = mipc::operator==();
  if (v13)
  {
    if (*v19)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Delete Profile Cmd_Cnf not successful, result 0x%x\n", *v19);
    }

    else
    {
      **(a1 + 16) = 0;
    }
  }

  else
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v17;
    }

    v15 = &v24;
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v15 = v24.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Delete Profile Cmd_Req returned error[%s].\n", v15);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Cmd_Cnf::~Cmd_Cnf(v16);
}

void sub_299FC3310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Cmd_Cnf::~Cmd_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0>(eUICC::eUICCVinylDALValve::DeleteProfile(unsigned char)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20322B8;
  v2 = a1[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20322B8;
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x30uLL);
  *v2 = &unk_2A20322B8;
  *(v2 + 8) = *(a1 + 8);
  *(v2 + 24) = *(a1 + 24);
  v3 = *(a1 + 40);
  *(v2 + 5) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20322B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 40);
  *(a2 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v32, this);
    if ((v33 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v31.__r_.__value_.__l.__data_ = v32;
    v5 = mipc::toErrorCode(v32, v4);
    std::error_code::message(&__p, &v31);
    v28 = 0;
    v29 = 0;
    v26 = v5;
    MEMORY[0x29C2B8610](v19, &v26, 1);
    v7 = v29;
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v26, this);
    v8 = *v26;
    abb::router::Message::getRawMsg(&v32, this);
    MEMORY[0x29C2B8620](v19, v8, *(v32 + 8) - *v32);
    if (*(&v32 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v32 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(*v21, &v26);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v26;
      }

      else
      {
        v10 = v26;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v32);
      if (v34 >= 0)
      {
        v12 = &v32;
      }

      else
      {
        v12 = v32;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v25;
    if (v25)
    {
      stringifyDataBuffer(*v25, *(v25 + 8) - *v25, &v31);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v31;
      }

      else
      {
        v14 = v31.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Store data Cmd_Ind received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62592, v10, v12, v14);
    if (v13 && SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (v11 && v34 < 0)
    {
      operator delete(v32);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v26);
    }
  }

  v15 = mipc::operator==();
  if (v15)
  {
    if (*v21)
    {
      gBBULogMaskGet(v15, v16);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Store data Cmd_Ind not successful, result 0x%x\n", *v21);
    }

    else if (*v23 < 2u)
    {
      **(a1 + 32) = *v22;
      std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v25, *(v25 + 8), *(v25 + 8) - *v25);
      **(a1 + 24) = 0;
    }

    else
    {
      gBBULogMaskGet(v15, v16);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Not support for concatenated indications currently, segment 0x%x/0x%x\n", *v24, *v23);
    }
  }

  else
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v30 = v20;
    }

    v17 = &v30;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = v30.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Store data Cmd_Req returned error[%s].\n", v17);
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
  return MEMORY[0x29C2B8630](v19);
}

void sub_299FC3944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (v37 && *(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (v36)
  {
    if (a36 < 0)
    {
      operator delete(__p);
    }
  }

  MEMORY[0x29C2B8630](&a14, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0>(eUICC::eUICCVinylDALValve::StoreData(std::vector<unsigned char> const&,std::vector<unsigned char>&,unsigned short &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032338;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032338;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2032338;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032338;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v26, this);
    if ((v27 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v25.__r_.__value_.__l.__data_ = v26;
    v5 = mipc::toErrorCode(v26, v4);
    std::error_code::message(&__p, &v25);
    v23 = 0;
    v24 = 0;
    v21 = v5;
    MEMORY[0x29C2B84A0](v17, &v21, 1);
    v7 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v21, this);
    v8 = *v21;
    abb::router::Message::getRawMsg(&v26, this);
    MEMORY[0x29C2B84B0](v17, v8, *(v26 + 8) - *v26);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v19;
    if (v19)
    {
      stringifyVal(*v19, &v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v21;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v20;
    if (v20)
    {
      stringifyVal(*v20, &v26);
      if (v28 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Vad_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", 62469, v10, v12);
    if (v11 && v28 < 0)
    {
      operator delete(v26);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v21);
    }
  }

  v13 = mipc::operator==();
  if (v13)
  {
    v15 = *v19;
    if (*v19)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallTicket result 0x%x sw1_sw2 0x%hx\n", *v19, *v20);
      v15 = 16;
    }
  }

  else
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v18;
    }

    v16 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v25.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Install_Vad_Req returned error[%s].\n", v16);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v15 = 11;
  }

  **(a1 + 16) = v15;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Install_Vad_Cnf::~Install_Vad_Cnf(v17);
}

void sub_299FC3EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Install_Vad_Cnf::~Install_Vad_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0>(eUICC::eUICCVinylDALValve::InstallTicket(ctu::cf::CFSharedRef<__CFData const>)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20323B8;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20323B8;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A20323B8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20323B8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v26, this);
    if ((v27 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v25.__r_.__value_.__l.__data_ = v26;
    v5 = mipc::toErrorCode(v26, v4);
    std::error_code::message(&__p, &v25);
    v23 = 0;
    v24 = 0;
    v21 = v5;
    MEMORY[0x29C2B8400](v17, &v21, 1);
    v7 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v21, this);
    v8 = *v21;
    abb::router::Message::getRawMsg(&v26, this);
    MEMORY[0x29C2B8410](v17, v8, *(v26 + 8) - *v26);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v19;
    if (v19)
    {
      stringifyVal(*v19, &v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v21;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v20;
    if (v20)
    {
      stringifyVal(*v20, &v26);
      if (v28 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Install_Fw_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", 62470, v10, v12);
    if (v11 && v28 < 0)
    {
      operator delete(v26);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v21);
    }
  }

  v13 = mipc::operator==();
  if (v13)
  {
    v15 = *v19;
    if (*v19)
    {
      gBBULogMaskGet(v13, v14);
      _BBULog(22, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Install_Fw_Cnf result 0x%x sw1_sw2 0x%hx\n", *v19, *v20);
      v15 = 16;
    }
  }

  else
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v18;
    }

    v16 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v25.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Install_Fw_Req returned error[%s].\n", v16);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    v15 = 11;
  }

  **(a1 + 16) = v15;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Install_Fw_Cnf::~Install_Fw_Cnf(v17);
}

void sub_299FC4430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Install_Fw_Cnf::~Install_Fw_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0>(eUICC::eUICCVinylDALValve::StreamFirmware(__CFData *)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032438;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032438;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A2032438;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032438;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C2B83B0](v19, &v24, 1);
    v7 = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v8 = *v24;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C2B83C0](v19, v8, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(*v21, &v24);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v30);
      if (v32 >= 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v23;
    if (v23)
    {
      stringifyDataBuffer(*v23, *(v23 + 8) - *v23, &v29);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v29;
      }

      else
      {
        v14 = v29.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Init_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62471, v10, v12, v14);
    if (v13 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  v15 = mipc::operator==();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v20;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Init_Perso_Cnf returned error[%s].\n", v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  if (*v21)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Init_Perso_Req not successful, result 0x%x", *v21);
LABEL_48:
    v17 = 1;
    goto LABEL_49;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v23, *(v23 + 8), *(v23 + 8) - *v23);
  v17 = 0;
LABEL_49:
  **(a1 + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Init_Perso_Cnf::~Init_Perso_Cnf(v19);
}

void sub_299FC49FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Init_Perso_Cnf::~Init_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::InitPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20324B8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20324B8;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A20324B8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20324B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C2B8360](v19, &v24, 1);
    v7 = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v8 = *v24;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C2B8370](v19, v8, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(*v21, &v24);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v30);
      if (v32 >= 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v23;
    if (v23)
    {
      stringifyDataBuffer(*v23, *(v23 + 8) - *v23, &v29);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v29;
      }

      else
      {
        v14 = v29.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Auth_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62472, v10, v12, v14);
    if (v13 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  v15 = mipc::operator==();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v20;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Auth_Perso_Cnf returned error[%s].\n", v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  if (*v21)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Auth_Perso_Req not successful, result 0x%x", *v21);
LABEL_48:
    v17 = 1;
    goto LABEL_49;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v23, *(v23 + 8), *(v23 + 8) - *v23);
  v17 = 0;
LABEL_49:
  **(a1 + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Auth_Perso_Cnf::~Auth_Perso_Cnf(v19);
}

void sub_299FC4FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Auth_Perso_Cnf::~Auth_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::AuthPerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A2032538;
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A2032538;
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2032538;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032538;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v26, this);
    if ((v27 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v25.__r_.__value_.__l.__data_ = v26;
    v5 = mipc::toErrorCode(v26, v4);
    std::error_code::message(&__p, &v25);
    v23 = 0;
    v24 = 0;
    v21 = v5;
    MEMORY[0x29C2B8540](v17, &v21, 1);
    v7 = v24;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v21, this);
    v8 = *v21;
    abb::router::Message::getRawMsg(&v26, this);
    MEMORY[0x29C2B8550](v17, v8, *(v26 + 8) - *v26);
    if (*(&v26 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v26 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v19;
    if (v19)
    {
      stringifyVal(*v19, &v21);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v21;
      }

      else
      {
        v10 = v21;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v20;
    if (v20)
    {
      stringifyVal(*v20, &v26);
      if (v28 >= 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26;
      }
    }

    else
    {
      v12 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Finalize_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s\n", 62473, v10, v12);
    if (v11 && v28 < 0)
    {
      operator delete(v26);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v21);
    }
  }

  v13 = mipc::operator==();
  if ((v13 & 1) == 0)
  {
    gBBULogMaskGet(v13, v14);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v25 = v18;
    }

    v16 = &v25;
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v25.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Finalize_Perso_Cnf returned error[%s].\n", v16);
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    goto LABEL_42;
  }

  if (*v19)
  {
    gBBULogMaskGet(v13, v14);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Finalize_Perso_Req not successful, result 0x%x", *v19);
LABEL_42:
    v15 = 1;
    goto LABEL_43;
  }

  if (*v20 != 36864)
  {
    printf("Finalize perso failed with sw = %02X.\n", *v20);
    goto LABEL_42;
  }

  v15 = 0;
LABEL_43:
  **(a1 + 16) = v15;
  dispatch_semaphore_signal(*(a1 + 24));
  mipc::dale_vinyl::Finalize_Perso_Cnf::~Finalize_Perso_Cnf(v17);
}

void sub_299FC558C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (v30)
  {
    if (a30 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Finalize_Perso_Cnf::~Finalize_Perso_Cnf(&a12);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::FinalizePerso(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A20325B8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A20325B8;
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2A20325B8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 32);
  *(v2 + 3) = *(a1 + 24);
  *(v2 + 4) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20325B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  v3 = *(a1 + 32);
  *(a2 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v30, this);
    if ((v31 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *&v29.__r_.__value_.__l.__data_ = v30;
    v5 = mipc::toErrorCode(v30, v4);
    std::error_code::message(&__p, &v29);
    v26 = 0;
    v27 = 0;
    v24 = v5;
    MEMORY[0x29C2B8590](v19, &v24, 1);
    v7 = v27;
    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v24, this);
    v8 = *v24;
    abb::router::Message::getRawMsg(&v30, this);
    MEMORY[0x29C2B85A0](v19, v8, *(v30 + 8) - *v30);
    if (*(&v30 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v21;
    if (v21)
    {
      stringifyVal(*v21, &v24);
      if (__p.__r_.__value_.__s.__data_[15] >= 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24;
      }
    }

    else
    {
      v10 = "NULL";
    }

    v11 = v22;
    if (v22)
    {
      stringifyVal(*v22, &v30);
      if (v32 >= 0)
      {
        v12 = &v30;
      }

      else
      {
        v12 = v30;
      }
    }

    else
    {
      v12 = "NULL";
    }

    v13 = v23;
    if (v23)
    {
      stringifyDataBuffer(*v23, *(v23 + 8) - *v23, &v29);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &v29;
      }

      else
      {
        v14 = v29.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      v14 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "Validate_Perso_Cnf received: Msg=0x%x fTlv_Result = %s fTlv_Sw = %s fTlv_Payload = %s\n", 62474, v10, v12, v14);
    if (v13 && SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (v11 && v32 < 0)
    {
      operator delete(v30);
    }

    if (v9 && __p.__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(v24);
    }
  }

  v15 = mipc::operator==();
  if ((v15 & 1) == 0)
  {
    gBBULogMaskGet(v15, v16);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = v20;
    }

    v18 = &v28;
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v18 = v28.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Validate_Perso_Cnf returned error[%s].\n", v18);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  if (*v21)
  {
    gBBULogMaskGet(v15, v16);
    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "Validate_Perso_Req not successful, result 0x%x\n", *v21);
LABEL_48:
    v17 = 1;
    goto LABEL_49;
  }

  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(*(a1 + 16), *v23, *(v23 + 8), *(v23 + 8) - *v23);
  v17 = 0;
LABEL_49:
  **(a1 + 24) = v17;
  dispatch_semaphore_signal(*(a1 + 32));
  mipc::dale_vinyl::Validate_Perso_Cnf::~Validate_Perso_Cnf(v19);
}

void sub_299FC5B58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (v33 && *(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  if (v32)
  {
    if (a32 < 0)
    {
      operator delete(__p);
    }
  }

  mipc::dale_vinyl::Validate_Perso_Cnf::~Validate_Perso_Cnf(&a13);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0>(eUICC::eUICCVinylDALValve::ValidatePerso(std::vector<unsigned char> const&,std::vector<unsigned char>&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A2032638;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032638;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v22, this);
    if ((v22.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v21 = *&v22.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v22.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v21);
    v19 = 0;
    v20 = 0;
    v17 = v5;
    MEMORY[0x29C2B82F0](v14, &v17, 1);
    v7 = v20;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v17, this);
    v8 = *v17;
    abb::router::Message::getRawMsg(&v22, this);
    MEMORY[0x29C2B8300](v14, v8, *(v22.__r_.__value_.__r.__words[0] + 8) - *v22.__r_.__value_.__l.__data_);
    if (v22.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v16;
    if (v16)
    {
      stringifyVal(*v16, &v17);
      v10 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v17 : v17;
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", 62480, v10);
    if (v9)
    {
      if (__p.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v17);
      }
    }
  }

  v11 = mipc::operator==();
  if (v11)
  {
    if (v16)
    {
      if (*v16)
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf failed, result 0x%x\n", *v16);
      }

      else
      {
        **(a1 + 16) = 1;
      }
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf has no fTlv_Result\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v15;
    }

    v13 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v22.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "InstallPairingMSM Sep_Cmd_Cnf returned error[%s]\n", v13);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v14);
}

void sub_299FC5F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::InstallPairingMSM(std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x18uLL);
  *v2 = &unk_2A20326B8;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A20326B8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v22, this);
    if ((v22.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v21 = *&v22.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v22.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v21);
    v19 = 0;
    v20 = 0;
    v17 = v5;
    MEMORY[0x29C2B82F0](v14, &v17, 1);
    v7 = v20;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v17, this);
    v8 = *v17;
    abb::router::Message::getRawMsg(&v22, this);
    MEMORY[0x29C2B8300](v14, v8, *(v22.__r_.__value_.__r.__words[0] + 8) - *v22.__r_.__value_.__l.__data_);
    if (v22.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22.__r_.__value_.__l.__size_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v16;
    if (v16)
    {
      stringifyVal(*v16, &v17);
      v10 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v17 : v17;
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", 62480, v10);
    if (v9)
    {
      if (__p.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v17);
      }
    }
  }

  v11 = mipc::operator==();
  if (v11)
  {
    if (v16)
    {
      if (*v16)
      {
        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf failed, result 0x%x\n", *v16);
      }

      else
      {
        **(a1 + 16) = 1;
      }
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf has no fTlv_Result\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v15;
    }

    v13 = &v22;
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = v22.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingGetNonce Sep_Cmd_Cnf returned error[%s]\n", v13);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v14);
}

void sub_299FC638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingGetNonce(std::vector<unsigned char> &)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x20uLL);
  *v2 = &unk_2A2032738;
  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 3) = *(a1 + 24);
  return result;
}

__n128 std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2A2032738;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v23, this);
    if ((v23.__r_.__value_.__s.__data_[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v22 = *&v23.__r_.__value_.__l.__data_;
    v5 = mipc::toErrorCode(LODWORD(v23.__r_.__value_.__l.__data_), v4);
    std::error_code::message(&__p, &v22);
    v20 = 0;
    v21 = 0;
    v18 = v5;
    MEMORY[0x29C2B82F0](v15, &v18, 1);
    v7 = v21;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&v18, this);
    v8 = *v18;
    abb::router::Message::getRawMsg(&v23, this);
    MEMORY[0x29C2B8300](v15, v8, *(v23.__r_.__value_.__r.__words[0] + 8) - *v23.__r_.__value_.__l.__data_);
    if (v23.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23.__r_.__value_.__l.__size_);
    }

    v7 = __p.__r_.__value_.__r.__words[0];
    if (__p.__r_.__value_.__r.__words[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__data_);
    }
  }

  if ((*(gBBULogMaskGet(v7, v6) + 2) & 0x40) != 0 && gBBULogVerbosity >= 7)
  {
    v9 = v17;
    if (v17)
    {
      stringifyVal(*v17, &v18);
      v10 = __p.__r_.__value_.__s.__data_[15] >= 0 ? &v18 : v18;
    }

    else
    {
      v10 = "NULL";
    }

    _BBULog(22, 7, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf received: Msg=0x%x fTlv_Result = %s\n", 62480, v10);
    if (v9)
    {
      if (__p.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v18);
      }
    }
  }

  v11 = mipc::operator==();
  if (v11)
  {
    if (v17)
    {
      if (*v17)
      {
        if (*v17 != 8)
        {
          gBBULogMaskGet(v11, v12);
          _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf failed, result 0x%x\n", *v17);
          goto LABEL_37;
        }

        gBBULogMaskGet(v11, v12);
        _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate has cached succeed result, no following indication\n");
        **(a1 + 16) = 1;
        v13 = *(a1 + 24);
      }

      else
      {
        v13 = *(a1 + 16);
      }

      *v13 = 1;
    }

    else
    {
      gBBULogMaskGet(v11, v12);
      _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf has no fTlv_Result\n");
    }
  }

  else
  {
    gBBULogMaskGet(v11, v12);
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v23, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
    }

    else
    {
      v23 = v16;
    }

    v14 = &v23;
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v23.__r_.__value_.__r.__words[0];
    }

    _BBULog(0, 0xFFFFFFFFLL, "eUICCVinylDALValve", "", "ManagePairingAuthenticate Sep_Cmd_Cnf returned error[%s]\n", v14);
    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

LABEL_37:
  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(v15);
}

void sub_299FC67DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (*(v5 - 41) < 0)
  {
    operator delete(*(v5 - 64));
  }

  mipc::dale_vinyl::Sep_Cmd_Cnf::~Sep_Cmd_Cnf(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0>(eUICC::eUICCVinylDALValve::ManagePairingAuthenticate(std::vector<unsigned char> const&,std::vector<unsigned char> const&)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_299F8C000);
  }

  return result;
}

uint64_t __cxx_global_var_init_75()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUCapabilities>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUCapabilities,BBUCapabilities,ctu::PthreadMutexGuardPolicy<BBUCapabilities>>::sInstance, &dword_299F8C000);
  }

  return result;
}

void *vinyl_zipOpen2(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v4 = v3;
  v6 = v5;
  v7 = v1;
  v67 = *MEMORY[0x29EDCA608];
  memset(__src, 0, 512);
  if (v2)
  {
    v8 = v2[1];
    __src[0] = *v2;
    __src[1] = v8;
    v9 = v2[3];
    __src[2] = v2[2];
    __src[3] = v9;
  }

  else
  {
    vinyl_fill_fopen_filefunc(__src);
  }

  if (v6)
  {
    v10 = 7;
  }

  else
  {
    v10 = 11;
  }

  v11 = (*&__src[0])(*(&__src[3] + 1), v7, v10, 1000);
  *&__src[4] = v11;
  if (!v11)
  {
    return 0;
  }

  *&__src[1044] = (*(&__src[1] + 1))(*(&__src[3] + 1), v11);
  LODWORD(__src[13]) = 0;
  v12 = malloc(0x4160uLL);
  *(&__src[4] + 8) = 0u;
  DWORD2(__src[5]) = 0;
  *(&__src[1044] + 8) = 0u;
  if (v12)
  {
    *(&__src[1045] + 1) = 0;
    if (v6 == 2)
    {
      v64 = 0;
      v65 = 0;
      v61 = 0;
      v62 = 0;
      v59 = 0;
      v60 = 0;
      v58 = 0;
      v13 = *&__src[4];
      v52 = v4;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], 0, 2) || ((v16 = (*(&__src[1] + 1))(*(&__src[3] + 1), v13), v17 = v16, v16 >= 0xFFFF) ? (v18 = 0xFFFFLL) : (v18 = v16), (v19 = malloc(0x404uLL)) == 0))
      {
        v14 = 0;
        v56 = 0;
      }

      else
      {
        v20 = v19;
        if (v17 >= 5)
        {
          v21 = 4;
          while (2)
          {
            v22 = v21 + 1024;
            if (v21 + 1024 >= v18)
            {
              v21 = v18;
            }

            else
            {
              v21 += 1024;
            }

            v23 = v21 >= 0x404 ? 1028 : v21;
            if (!(*&__src[2])(*(&__src[3] + 1), v13, v17 - v21, 0) && (*(&__src[0] + 1))(*(&__src[3] + 1), v13, v20, v23) == v23)
            {
              v24 = (v23 - 4);
              v25 = v21 - v17 - v24;
              v26 = v23 - 3;
              v27 = &v20[v24 + 1];
              while (*(v27 - 1) != 80 || *v27 != 75 || v27[1] != 5 || v27[2] != 6)
              {
                ++v25;
                --v27;
                v28 = __OFSUB__(v26--, 1);
                if ((v26 < 0) ^ v28 | (v26 == 0))
                {
                  goto LABEL_40;
                }
              }

              if (v25)
              {
                v14 = -v25;
                v56 = 1;
                goto LABEL_45;
              }

LABEL_40:
              if (v22 < v18)
              {
                continue;
              }
            }

            break;
          }
        }

        v14 = 0;
        v56 = 0;
LABEL_45:
        free(v20);
      }

      v53 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v14, 0);
      HIDWORD(v54) = unzlocal_getLong(__src, *&__src[4], &v63);
      LODWORD(v54) = unzlocal_getShort(__src, *&__src[4], &v62);
      Short = unzlocal_getShort(__src, *&__src[4], &v61);
      v29 = unzlocal_getShort(__src, *&__src[4], &v60);
      v30 = unzlocal_getShort(__src, *&__src[4], &v59);
      v31 = v60;
      v57 = v59;
      v32 = v61;
      v33 = v62;
      Long = unzlocal_getLong(__src, *&__src[4], &v65);
      v35 = unzlocal_getLong(__src, *&__src[4], &v64);
      v36 = unzlocal_getShort(__src, *&__src[4], &v58);
      v37 = v65;
      v51 = v64;
      v38 = v14 >= v65 + v64;
      v39 = v14 - (v65 + v64);
      if (!v38 || v35 | Long | v36 || v57 != v31 || v32 || v33 || !v56 || v30 || v29 || Short || v54 || v53)
      {
        (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
LABEL_74:
        free(v12);
        return 0;
      }

      v40 = v58;
      if (v58)
      {
        v41 = malloc(v58 + 1);
        *(&__src[1045] + 1) = v41;
        if (v41)
        {
          v42 = (*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v41, v40);
          *(*(&__src[1045] + 1) + v42) = 0;
        }
      }

      *(&__src[1044] + 1) = v39;
      v43 = malloc(0xFF0uLL);
      v44 = v39;
      v45 = (*&__src[2])(*(&__src[3] + 1), *&__src[4], v39 + v51, 0);
      if (v45)
      {
        v46 = -1;
      }

      else
      {
        v46 = 0;
      }

      if (v37 && !v45)
      {
        while (1)
        {
          v47 = v37 >= 0xFF0 ? 4080 : v37;
          if ((*(&__src[0] + 1))(*(&__src[3] + 1), *&__src[4], v43, v47) != v47)
          {
            break;
          }

          v48 = add_data_in_datablock(&__src[4] + 1, v43, v47);
          v46 = v48;
          v37 -= v47;
          if (!v37 || v48)
          {
            goto LABEL_78;
          }
        }

        v46 = -1;
      }

LABEL_78:
      if (v43)
      {
        free(v43);
      }

      *&__src[1044] = v44;
      *&__src[1045] = v57;
      if ((*&__src[2])(*(&__src[3] + 1), *&__src[4], v44 + v51, 0))
      {
        v50 = 0;
      }

      else
      {
        v50 = v46 == 0;
      }

      v15 = v50;
      v4 = v52;
      if (!v52)
      {
LABEL_15:
        if (v15)
        {
          memcpy(v12, __src, 0x4160uLL);
          return v12;
        }

        if (*(&__src[1045] + 1))
        {
          free(*(&__src[1045] + 1));
        }

        goto LABEL_74;
      }
    }

    else
    {
      v15 = 1;
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    *v4 = *(&__src[1045] + 1);
    goto LABEL_15;
  }

  (*(&__src[2] + 1))(*(&__src[3] + 1), *&__src[4]);
  return v12;
}

uint64_t add_data_in_datablock(void *a1, char *a2, unint64_t a3)
{
  if (!a1)
  {
    return 4294967192;
  }

  v3 = a3;
  v6 = a1[1];
  if (v6)
  {
    if (!a3)
    {
      return 0;
    }

    goto LABEL_8;
  }

  v8 = malloc(0x1010uLL);
  if (v8)
  {
    v6 = v8;
    *v8 = 0;
    *(v8 + 8) = xmmword_299FE49D0;
    *a1 = v8;
    a1[1] = v8;
    if (!v3)
    {
      return 0;
    }

LABEL_8:
    v9 = v6[1];
    while (1)
    {
      if (v9)
      {
        v10 = v6[2];
      }

      else
      {
        v11 = malloc(0x1010uLL);
        if (!v11)
        {
          *v6 = 0;
          return 4294967192;
        }

        v10 = 0;
        *v11 = 0;
        *(v11 + 8) = xmmword_299FE49D0;
        *v6 = v11;
        v9 = 4080;
        v6 = v11;
        a1[1] = v11;
      }

      if (v9 >= v3)
      {
        v12 = v3;
      }

      else
      {
        v12 = v9;
      }

      if (v12)
      {
        v13 = v6 + v10 + 32;
        v14 = v12;
        v15 = a2;
        do
        {
          v16 = *v15++;
          *v13++ = v16;
          --v14;
        }

        while (v14);
        v9 = v6[1];
        v10 = v6[2];
      }

      v9 -= v12;
      v6[1] = v9;
      v6[2] = v10 + v12;
      a2 += v12;
      v3 -= v12;
      if (!v3)
      {
        return 0;
      }
    }
  }

  *a1 = 0;
  a1[1] = 0;
  return 4294967192;
}

uint64_t vinyl_zipOpenNewFileInZip3(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5, char *a6, unsigned int a7, char *__s, int a9, int a10, int a11, int a12, int a13, int a14, char *a15, uint64_t a16)
{
  v100 = *MEMORY[0x29EDCA608];
  result = 4294967194;
  if (!a1)
  {
    return result;
  }

  if ((a9 & 0xFFFFFFF7) != 0)
  {
    return result;
  }

  if (*(a1 + 88) == 1)
  {
    result = vinyl_zipCloseFileInZipRaw(a1, 0, 0);
    if (result)
    {
      return result;
    }
  }

  v94 = a4;
  if (a2)
  {
    v25 = a2;
  }

  else
  {
    v25 = "-";
  }

  v95 = a5;
  if (__s)
  {
    v26 = strlen(__s);
  }

  else
  {
    v26 = 0;
  }

  v27 = strlen(v25);
  if (a3)
  {
    v28 = *(a3 + 24);
    if (!v28)
    {
      v29 = *(a3 + 20);
      v30 = v29 - 80;
      if (v29 <= 0x50)
      {
        v30 = *(a3 + 20);
      }

      if (v29 <= 0x7BC)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29 - 1980;
      }

      v28 = ((32 * *(a3 + 4) + (*a3 >> 1)) + (*(a3 + 8) << 11)) | (((*(a3 + 12) + 32 * *(a3 + 16) + 32) << 16) + (v31 << 25));
    }
  }

  else
  {
    v28 = 0;
  }

  *(a1 + 16640) = v28;
  v32 = 2 * ((a10 & 0xFFFFFFFE) == 8);
  *(a1 + 240) = v32;
  if (a10 == 2)
  {
    v32 = 4;
  }

  else
  {
    if (a10 != 1)
    {
      goto LABEL_25;
    }

    v32 = 6;
  }

  *(a1 + 240) = v32;
LABEL_25:
  if (a15)
  {
    *(a1 + 240) = v32 | 1;
  }

  *(a1 + 16648) = 0;
  *(a1 + 16656) = 0;
  *(a1 + 208) = 0;
  *(a1 + 248) = a9;
  *(a1 + 252) = a11;
  v33 = (*(a1 + 24))(*(a1 + 56), *(a1 + 64));
  *(a1 + 216) = v33;
  v34 = a7 + v26 + v27 + 46;
  *(a1 + 232) = v34;
  v35 = malloc(v34);
  *(a1 + 224) = v35;
  *v35 = 33639248;
  v35[1] = 1310720;
  v36 = *(a1 + 240);
  *(v35 + 4) = v36;
  if (v36 >= 0x10000)
  {
    *(v35 + 4) = -1;
  }

  v37 = *(a1 + 248);
  *(v35 + 5) = v37;
  if (v37 >= 0x10000)
  {
    *(v35 + 5) = -1;
  }

  v38 = 0;
  v39 = v35 + 3;
  v40 = *(a1 + 16640);
  do
  {
    v41 = v40;
    *(v39 + v38) = v40;
    v40 >>= 8;
    ++v38;
  }

  while (v38 != 4);
  if (v41 >= 0x100)
  {
    *v39 = -1;
  }

  *(v35 + 2) = 0;
  v35[6] = 0;
  *(v35 + 14) = v27;
  if (v27 >= 0x10000uLL)
  {
    *(v35 + 14) = -1;
  }

  *(v35 + 15) = a7;
  if (a7 >= 0x10000)
  {
    *(v35 + 15) = -1;
  }

  *(v35 + 16) = v26;
  if (v26 >= 0x10000)
  {
    *(v35 + 16) = -1;
  }

  *(v35 + 17) = 0;
  v42 = v26;
  if (a3)
  {
    v43 = *(a3 + 32);
    *(v35 + 18) = v43;
    if (v43 >= 0x10000)
    {
      *(v35 + 18) = -1;
    }

    v44 = 0;
    v45 = (v35 + 38);
    v46 = *(a3 + 40);
    do
    {
      v47 = v46;
      *(v45 + v44) = v46;
      v46 >>= 8;
      ++v44;
    }

    while (v44 != 4);
    if (v47 >= 0x100)
    {
      *v45 = -1;
    }
  }

  else
  {
    *(v35 + 18) = 0;
    *(v35 + 38) = 0;
  }

  v48 = 0;
  v49 = (v35 + 42);
  v50 = v33 - *(a1 + 16712);
  do
  {
    v51 = v50;
    *(v49 + v48) = v50;
    v50 >>= 8;
    ++v48;
  }

  while (v48 != 4);
  if (v51 >= 0x100)
  {
    *v49 = -1;
  }

  if (v27)
  {
    for (i = 0; i != v27; ++i)
    {
      *(*(a1 + 224) + i + 46) = v25[i];
    }
  }

  if (a7)
  {
    v53 = v27 + 46;
    v54 = a7;
    do
    {
      v55 = *a6++;
      *(*(a1 + 224) + v53++) = v55;
      --v54;
    }

    while (v54);
  }

  if (v26)
  {
    v56 = a7 + v27 + 46;
    do
    {
      v57 = *__s++;
      *(*(a1 + 224) + v56++) = v57;
      --v42;
    }

    while (v42);
  }

  if (!*(a1 + 224))
  {
    return 4294967192;
  }

  v96[0] = 67324752;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  LOWORD(v96[0]) = 20;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v58 = *(a1 + 64);
  v59 = *(a1 + 240);
  LOWORD(v96[0]) = v59;
  if (v59 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v58, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v60 = *(a1 + 64);
  v61 = *(a1 + 248);
  LOWORD(v96[0]) = v61;
  if (v61 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v60, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v62 = 0;
  v63 = *(a1 + 64);
  v64 = *(a1 + 16640);
  do
  {
    v65 = v64;
    *(v96 + v62) = v64;
    v64 >>= 8;
    ++v62;
  }

  while (v62 != 4);
  if (v65 >= 0x100)
  {
    v96[0] = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v63, v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v96[0] = 0;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 4) != 4)
  {
    goto LABEL_91;
  }

  v66 = *(a1 + 64);
  LOWORD(v96[0]) = v27;
  if (v27 >= 0x10000uLL)
  {
    LOWORD(v96[0]) = -1;
  }

  if ((*(a1 + 16))(*(a1 + 56), v66, v96, 2) != 2)
  {
    goto LABEL_91;
  }

  v67 = *(a1 + 64);
  LOWORD(v96[0]) = v95;
  if (v95 >= 0x10000)
  {
    LOWORD(v96[0]) = -1;
  }

  v68 = (*(a1 + 16))(*(a1 + 56), v67, v96, 2);
  v69 = v68 != 2;
  if (v68 == 2 && v27)
  {
    v69 = (*(a1 + 16))(*(a1 + 56), *(a1 + 64), v25, v27) != v27;
  }

  v70 = v95;
  if (v95 && !v69)
  {
    if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v94, v95) == v70)
    {
      *(a1 + 104) = 0;
      *(a1 + 128) = 0x4000;
      *(a1 + 112) = 0;
      *(a1 + 120) = a1 + 256;
      *(a1 + 136) = 0;
      v71 = a1 + 0x4000;
      v72 = a15;
      goto LABEL_97;
    }

LABEL_91:
    *(a1 + 104) = 0;
    *(a1 + 128) = 0x4000;
    *(a1 + 112) = 0;
    *(a1 + 120) = a1 + 256;
    result = 0xFFFFFFFFLL;
    *(a1 + 136) = 0;
    v71 = a1 + 0x4000;
    goto LABEL_92;
  }

  *(a1 + 104) = 0;
  *(a1 + 128) = 0x4000;
  *(a1 + 112) = 0;
  *(a1 + 120) = a1 + 256;
  *(a1 + 136) = 0;
  v71 = a1 + 0x4000;
  v72 = a15;
  if (v69)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_92;
  }

LABEL_97:
  if (*(a1 + 248) != 8 || *(a1 + 252))
  {
    goto LABEL_99;
  }

  if (a12 < 0)
  {
    v93 = a12;
  }

  else
  {
    v93 = -a12;
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  result = deflateInit2_((a1 + 96), a10, 8, v93, a13, a14, "1.2.12", 112);
  if (result)
  {
LABEL_92:
    *(v71 + 312) = 0;
    return result;
  }

  *(a1 + 208) = 1;
  v72 = a15;
LABEL_99:
  *(v71 + 312) = 0;
  if (!v72)
  {
    goto LABEL_107;
  }

  *(v71 + 272) = 1;
  crc_table = get_crc_table();
  *(a1 + 16688) = crc_table;
  if (!crypthead_calls++)
  {
    v75 = time(0);
    srand(v75 ^ 0xBB40E64E);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  for (j = 0; j != 10; v99[j++] = (((v78 & 0xFFFD ^ 3) * (v78 | 2)) >> 8) ^ (v77 >> 7))
  {
    v77 = rand();
    v78 = *(a1 + 16680);
    v79 = crc_table[(*(a1 + 16664) ^ (v77 >> 7))] ^ (*(a1 + 16664) >> 8);
    *(a1 + 16664) = v79;
    v80 = 134775813 * (*(a1 + 16672) + v79) + 1;
    *(a1 + 16672) = v80;
    *(a1 + 16680) = crc_table[(v78 ^ BYTE3(v80))] ^ (v78 >> 8);
  }

  init_keys(a15, (a1 + 16664), crc_table);
  v81 = 0;
  v82 = *(a1 + 16680);
  v83 = *(a1 + 16664);
  v84 = *(a1 + 16672);
  do
  {
    v85 = (v82 & 0xFFFD ^ 3) * (v82 | 2);
    v86 = v99[v81];
    v83 = crc_table[(v86 ^ v83)] ^ (v83 >> 8);
    *(a1 + 16664) = v83;
    v84 = 134775813 * (v84 + v83) + 1;
    *(a1 + 16672) = v84;
    v82 = crc_table[(v82 ^ BYTE3(v84))] ^ (v82 >> 8);
    *(a1 + 16680) = v82;
    *(v96 + v81++) = v86 ^ HIBYTE(v85);
  }

  while (v81 != 10);
  v87 = ((v82 & 0xFFFFFFFD ^ 3) * (v82 | 2)) >> 8;
  v88 = crc_table[(v83 ^ BYTE2(a16))] ^ (v83 >> 8);
  *(a1 + 16664) = v88;
  v89 = 134775813 * (v84 + v88) + 1;
  *(a1 + 16672) = v89;
  v90 = crc_table[(v82 ^ BYTE3(v89))] ^ (v82 >> 8);
  *(a1 + 16680) = v90;
  v97 = v87 ^ BYTE2(a16);
  v91 = crc_table[v88 ^ BYTE3(a16)] ^ (v88 >> 8);
  *(a1 + 16664) = v91;
  v92 = 134775813 * (v89 + v91) + 1;
  *(a1 + 16672) = v92;
  *(a1 + 16680) = crc_table[(v90 ^ BYTE3(v92))] ^ (v90 >> 8);
  v98 = (((v90 & 0xFFFD ^ 3) * (v90 | 2)) >> 8) ^ BYTE3(a16);
  *(a1 + 16696) = 12;
  if ((*(a1 + 16))(*(a1 + 56), *(a1 + 64), v96, 12) != 12)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_107:
  result = 0;
  *(a1 + 88) = 1;
  return result;
}