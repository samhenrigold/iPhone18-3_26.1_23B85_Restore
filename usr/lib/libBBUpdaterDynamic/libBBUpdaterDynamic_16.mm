void sub_1E5310E8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29)
  {
    dispatch_release(v29);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t DaleController::ping(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: ping check not supported on this device\n", "DaleController", "ping");
  return 0;
}

uint64_t DaleController::reset(DaleController *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: cold-resetting baseband...\n", "DaleController", "reset");
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v3 = TelephonyBasebandPowercycleModem();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v7 = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(v7, 2, "%s::%s: failed to cold-reset baseband\n", "DaleController", "reset");
      v4 = 1;
    }

    CFRelease(Controller);
    return v4;
  }

  else
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to create libtu controller\n", "DaleController", "reset");
    return 1;
  }
}

void sub_1E53110F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531110C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DaleController::warmReset(DaleController *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: warm-resetting baseband...\n", "DaleController", "warmReset");
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v3 = TelephonyBasebandResetModem();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v7 = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(v7, 2, "%s::%s: failed to warm-reset baseband\n", "DaleController", "warmReset");
      v4 = 1;
    }

    CFRelease(Controller);
    return v4;
  }

  else
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to create libtu controller\n", "DaleController", "warmReset");
    return 1;
  }
}

void sub_1E5311208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531121C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DaleController::warmResetForce(DaleController *this)
{
  LogInstance = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: force-warm-resetting baseband...\n", "DaleController", "warmResetForce");
  Controller = TelephonyBasebandCreateController();
  if (Controller)
  {
    v3 = TelephonyBasebandForceResetModem();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v7 = ACFULogging::getLogInstance(v3);
      ACFULogging::handleMessage(v7, 2, "%s::%s: failed to force-warm-reset baseband\n", "DaleController", "warmResetForce");
      v4 = 1;
    }

    CFRelease(Controller);
    return v4;
  }

  else
  {
    v6 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v6, 2, "%s::%s: failed to create libtu controller\n", "DaleController", "warmResetForce");
    return 1;
  }
}

void sub_1E5311318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t DaleController::getDebugInfo(ACFULogging *a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: unsupported operation\n", "DaleController", "getDebugInfo");
  return 2;
}

void DaleController::~DaleController(DaleController *this)
{
  *this = &unk_1F5F03E50;
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  ACFUTransport::~ACFUTransport(this);
}

{
  *this = &unk_1F5F03E50;
  v1 = *(this + 5);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    ACFUTransport::~ACFUTransport(this);
  }

  else
  {
    ACFUTransport::~ACFUTransport(this);
  }

  operator delete(v2);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(float *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v39, a2, v7);
  v9 = v8;
  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v4 + 23);
        if (v15 >= 0)
        {
          v16 = *(v4 + 23);
        }

        else
        {
          v16 = v4[1];
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? v14 + 2 : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return v14;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? v14 + 2 : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return v14;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  memset(v39, 170, sizeof(v39));
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>(a1, v9, a3, v39);
  v25 = (*(a1 + 3) + 1);
  v26 = a1[8];
  if (!v10 || (v26 * v10) < v25)
  {
    v30 = 1;
    if (v10 >= 3)
    {
      v30 = (v10 & (v10 - 1)) != 0;
    }

    v31 = v30 | (2 * v10);
    v32 = vcvtps_u32_f32(v25 / v26);
    if (v31 <= v32)
    {
      prime = v32;
    }

    else
    {
      prime = v31;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v34 = *(a1 + 2);
    if (prime > *&v34)
    {
      goto LABEL_59;
    }

    if (prime < *&v34)
    {
      v35 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (*&v34 < 3uLL || (v36 = vcnt_s8(v34), v36.i16[0] = vaddlv_u8(v36), v36.u32[0] > 1uLL))
      {
        v35 = std::__next_prime(v35);
      }

      else
      {
        v37 = 1 << -__clz(v35 - 1);
        if (v35 >= 2)
        {
          v35 = v37;
        }
      }

      if (prime <= v35)
      {
        prime = v35;
      }

      if (prime < *&v34)
      {
LABEL_59:
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(a1, prime);
      }
    }

    v10 = *(a1 + 1);
    if ((v10 & (v10 - 1)) != 0)
    {
      if (v9 >= v10)
      {
        v12 = v9 % v10;
        v27 = *a1;
        v28 = *(*a1 + 8 * (v9 % v10));
        if (v28)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v12 = v9;
        v27 = *a1;
        v28 = *(*a1 + 8 * v9);
        if (v28)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v12 = (v10 - 1) & v9;
      v27 = *a1;
      v28 = *(*a1 + 8 * v12);
      if (v28)
      {
        goto LABEL_46;
      }
    }

LABEL_72:
    v14 = v39[0];
    *v39[0] = *(a1 + 2);
    *(a1 + 2) = v14;
    *(v27 + 8 * v12) = a1 + 4;
    if (*v14)
    {
      v38 = *(*v14 + 8);
      if ((v10 & (v10 - 1)) != 0)
      {
        if (v38 >= v10)
        {
          v38 %= v10;
        }

        *(v27 + 8 * v38) = v14;
      }

      else
      {
        *(v27 + 8 * (v38 & (v10 - 1))) = v14;
      }
    }

    goto LABEL_47;
  }

  v27 = *a1;
  v28 = *(*a1 + 8 * v12);
  if (!v28)
  {
    goto LABEL_72;
  }

LABEL_46:
  v14 = v39[0];
  *v39[0] = *v28;
  *v28 = v14;
LABEL_47:
  ++*(a1 + 3);
  return v14;
}

void sub_1E53118BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__construct_node_hash<std::pair<std::string const,std::string> const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = operator new(0x40uLL);
  v9 = v8;
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  *(v8 + 1) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v8 + 16), *a3, *(a3 + 8));
  }

  else
  {
    *(v8 + 1) = *a3;
    *(v8 + 4) = *(a3 + 16);
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 40), *(a3 + 24), *(a3 + 32));
  }

  else
  {
    *(v9 + 40) = *(a3 + 24);
    *(v9 + 7) = *(a3 + 40);
  }

  *(a4 + 16) = 1;
}

void sub_1E5311980(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
    std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::shared_ptr<BasebandBootLogger>>::~optional(uint64_t result)
{
  if (*(result + 16) == 1)
  {
    v1 = *(result + 8);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = result;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        return v2;
      }
    }
  }

  return result;
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

uint64_t __cxx_global_var_init_26()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
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

void sub_1E5311EB8(_Unwind_Exception *exception_object)
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

double ResetReasonEncoder::encode@<D0>(ResetReasonEncoder *this@<X0>, uint64_t a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
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
    v7 = _MergedGlobals_5;
    if (os_log_type_enabled(_MergedGlobals_5, OS_LOG_TYPE_ERROR))
    {
      v24 = 134218240;
      v25 = v5;
      v26 = 1024;
      v27 = 62;
      _os_log_error_impl(&dword_1E5234000, v7, OS_LOG_TYPE_ERROR, "Failed to encode parsed reason because the size of the numeric arguments (%zu bytes) exceeds the maximum size (%d bytes) of the reset reason", &v24, 0x12u);
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

void sub_1E5312654(_Unwind_Exception *a1)
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
  *result = &unk_1F5F03ED0;
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

void sub_1E5312CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

void sub_1E5313090(_Unwind_Exception *exception_object)
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
  *result = &unk_1F5F03F60;
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

void sub_1E5313AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::locale a51)
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

void sub_1E5313F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
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

void sub_1E5314168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_ResetReasonEncoder_cpp()
{
  v286 = *MEMORY[0x1E69E9840];
  ctu::OsLogLogger::OsLogLogger(&_MergedGlobals_5, "com.apple.telephony.abm", "ResetReasonEncoder");
  v156 = operator new(0x48uLL);
  v157 = xmmword_1E5393790;
  strcpy(v156, "AP forced coredump via SPMI - Please analyze reason from AP perspective");
  v158 = 0;
  v163 = 0;
  v161 = 0;
  v159 = 0;
  v160 = 0;
  v162 = 0;
  v164 = operator new(0x60uLL);
  v165 = xmmword_1E53937A0;
  strcpy(v164, "ARI_CLI_ERR - All transaction IDs exhausted for msg\\(.*\\), for client\\(0[xX][0-9a-fA-F]+\\)");
  v166 = 1;
  strcpy(v145, "(msg\\(|\\), for client)");
  v145[23] = 22;
  v146 = 0;
  v147 = 0;
  v149 = 0;
  v151 = 12;
  strcpy(&v150, "for client\\(");
  v152 = 2;
  v153 = 0;
  v155 = 0;
  v168 = 0;
  v167 = 0;
  v169 = 0;
  v167 = operator new(0x90uLL);
  v168 = v167;
  v169 = v167 + 6;
  v139 = v167;
  v97 = v167;
  v103 = &v167;
  *&v104 = &v97;
  v105 = 0xAAAAAAAAAAAAAA00;
  *(&v104 + 1) = &v139;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v167, v145);
  v139 = v139 + 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v139, &v150);
  v168 = (v139 + 72);
  v170 = 0;
  v171 = 0;
  v172 = operator new(0x50uLL);
  v173 = xmmword_1E53937B0;
  strcpy(v172, "ARI_CLI_ERR - Tracking receipt of unrecognized transaction 0[xX][0-9a-fA-F]+");
  v174 = 2;
  v139 = operator new(0x40uLL);
  v140 = xmmword_1E53937C0;
  strcpy(v139, "ARI_CLI_ERR - Tracking receipt of unrecognized transaction ");
  v141 = 2;
  v142 = 0;
  v144 = 0;
  v177 = 0;
  v175 = 0;
  v176 = 0;
  v175 = operator new(0x48uLL);
  v176 = v175;
  v177 = v175 + 3;
  v97 = v175;
  *v92 = v175;
  v103 = &v175;
  *&v104 = v92;
  v105 = 0xAAAAAAAAAAAAAA00;
  *(&v104 + 1) = &v97;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v175, &v139);
  v176 = (v97 + 72);
  v178 = 0;
  v179 = 0;
  v180 = operator new(0xA8uLL);
  v181 = xmmword_1E53937D0;
  strcpy(v180, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v182 = 3;
  v103 = operator new(0xB0uLL);
  v104 = xmmword_1E53937E0;
  strcpy(v103, "(ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\(([a-zA-Z]+\\.){0,}|\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*)");
  LODWORD(v105) = 0;
  v106 = 0;
  v108 = 0;
  v109 = operator new(0x68uLL);
  v110 = xmmword_1E53937F0;
  strcpy(v109, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\(|-[0-9a-fA-F]+\\).*");
  v111 = 1;
  v112 = 0;
  v114 = 0;
  v115 = operator new(0x60uLL);
  v116 = xmmword_1E5393800;
  strcpy(v115, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-|\\).*");
  v117 = 2;
  v118 = 0;
  v120 = 0;
  v121 = operator new(0xA0uLL);
  v122 = xmmword_1E5393810;
  strcpy(v121, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\(|\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v123 = 1;
  v124 = 0;
  v126 = 0;
  v0 = operator new(0x98uLL);
  v128 = 0x8000000000000098;
  *&v127 = v0;
  *(&v127 + 1) = 151;
  strcpy(v0, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(|\\) AP\\.SEQ\\(0x[0-9a-f]+\\).*");
  v129 = 2;
  v130 = 0;
  v132 = 0;
  v133 = operator new(0x98uLL);
  v134 = xmmword_1E5393820;
  strcpy(v133, "ARI_TIMEOUT - [0-9a-zA-Z]+, client [<>=]{1,2} (AP|BB)\\([a-zA-Z\\.]+\\) [0-9a-zA-Z]+\\([0-9]+-[0-9a-fA-F]+\\) SZ\\([0-9]+\\) TRX\\(0x[0-9a-f]+\\) AP\\.SEQ\\(|\\).*");
  v135 = 2;
  v136 = 0;
  v138 = 0;
  v184 = 0;
  v185 = 0;
  v183 = 0;
  *&v98 = 0xAAAAAAAAAAAAAA00;
  v97 = &v183;
  v183 = operator new(0x1B0uLL);
  v184 = v183;
  v185 = v183 + 18;
  *v92 = v183;
  v86 = v183;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v183, &v103);
  *v92 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v92, &v109);
  *v92 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v92, &v115);
  *v92 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v92, &v121);
  *v92 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v92, &v127);
  *v92 += 72;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(*v92, &v133);
  v184 = (*v92 + 72);
  v186 = 0;
  v187 = 0;
  v1 = operator new(0x40uLL);
  v190 = 0x8000000000000040;
  v188 = v1;
  v189 = 63;
  strcpy(v1, "Baseband got stuck in data context .* state: resetting baseband");
  v191 = 4;
  v97 = operator new(0x48uLL);
  v98 = xmmword_1E5391000;
  strcpy(v97, "(Baseband got stuck in data context | state: resetting baseband)");
  v99 = 0;
  v100 = 0;
  v102 = 0;
  v194 = 0;
  v192 = 0;
  v193 = 0;
  *&v92[8] = 0xAAAAAAAAAAAAAA00;
  *v92 = &v192;
  v192 = operator new(0x48uLL);
  v193 = v192;
  v194 = v192 + 3;
  v86 = v192;
  v80 = v192;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v192, &v97);
  v193 = (v86 + 72);
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
  v208 = 0x8000000000000038;
  v206 = v3;
  v207 = 55;
  strcpy(v3, "Failed to open transport to communicate with baseband.*");
  v209 = 6;
  v214 = 0;
  v212 = 0;
  v210 = 0;
  v211 = 0;
  v213 = 0;
  v4 = operator new(0x20uLL);
  v217 = 0x8000000000000020;
  v215 = v4;
  v216 = 24;
  strcpy(v4, "PCI-EVENT: pci error: .*");
  v218 = 7;
  strcpy(v92, "PCI-EVENT: pci error: ");
  v92[23] = 22;
  v93 = 0;
  v94 = 0;
  v96 = 0;
  v220 = 0;
  v219 = 0;
  v221 = 0;
  *&v87 = 0xAAAAAAAAAAAAAA00;
  v86 = &v219;
  v219 = operator new(0x48uLL);
  v220 = v219;
  v221 = v219 + 3;
  v80 = v219;
  *&v74 = v219;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v219, v92);
  v220 = (v80 + 72);
  v222 = 0;
  v223 = 0;
  v5 = operator new(0x40uLL);
  v226 = 0x8000000000000040;
  v225 = 62;
  v224 = v5;
  strcpy(v5, "filesystem flush operation failed -- check ARI and BB state --");
  v227 = 8;
  v232 = 0;
  v228 = 0;
  v230 = 0;
  v229 = 0;
  v231 = 0;
  v233 = operator new(0x20uLL);
  v235 = 0x8000000000000020;
  v234 = 28;
  strcpy(v233, "modem boot up failure \\[.+\\]");
  v236 = 9;
  v86 = operator new(0x19uLL);
  v87 = xmmword_1E538EBD0;
  strcpy(v86, "BBUpdater error  [0-9]+");
  v88 = 1;
  v89[0] = &unk_1F5F03ED0;
  v90 = v89;
  v91 = 1;
  v238 = 0;
  v239 = 0;
  v237 = 0;
  *&v81 = 0xAAAAAAAAAAAAAA00;
  v80 = &v237;
  v237 = operator new(0x48uLL);
  v238 = v237;
  v239 = v237 + 3;
  *&v74 = v237;
  *&v68 = v237;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v237, &v86);
  v238 = (v74 + 72);
  v240 = 3;
  v241 = 1;
  v242 = operator new(0x20uLL);
  v244 = 0x8000000000000020;
  v243 = 28;
  strcpy(v242, "modem boot up failure \\[.+\\]");
  v245 = 9;
  v80 = operator new(0x20uLL);
  v81 = xmmword_1E5391A60;
  strcpy(v80, "modem boot up failure \\[|\\]");
  v82 = 0;
  v83 = 0;
  v85 = 0;
  v247 = 0;
  v248 = 0;
  v246 = 0;
  *(&v74 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v74 = &v246;
  v246 = operator new(0x48uLL);
  v247 = v246;
  v248 = v246 + 3;
  *&v68 = v246;
  *__p = v246;
  v44 = &v246;
  *&v45 = __p;
  v46 = 0xAAAAAAAAAAAAAA00;
  *(&v45 + 1) = &v68;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v246, &v80);
  v247 = (v68 + 72);
  v249 = 4;
  v250 = 1;
  v252 = 2574;
  strcpy(v251, "^\\[abmtool\\].*");
  v75 = 13;
  strcpy(&v74, "^\\[abmtool\\] ");
  v76 = 0;
  v77 = 0;
  v79 = 0;
  v254 = 0;
  v253 = 0u;
  *(&v68 + 1) = 0xAAAAAAAAAAAAAA00;
  *&v68 = &v253;
  *&v253 = operator new(0x48uLL);
  *(&v253 + 1) = v253;
  v254 = v253 + 72;
  *__p = v253;
  v33 = v253;
  v44 = &v253;
  *&v45 = &v33;
  v46 = 0xAAAAAAAAAAAAAA00;
  *(&v45 + 1) = __p;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v253, &v74);
  *(&v253 + 1) = *__p + 72;
  v255 = 0;
  v256 = 0;
  v258 = 2829;
  strcpy(v257, "^\\[bbutil\\].*");
  v69 = 12;
  strcpy(&v68, "^\\[bbutil\\] ");
  v70 = 0;
  v71 = 0;
  v73 = 0;
  v260 = 0;
  v259 = 0u;
  *__p = &v259;
  *&__p[8] = 0xAAAAAAAAAAAAAA00;
  *&v259 = operator new(0x48uLL);
  *(&v259 + 1) = v259;
  v260 = v259 + 72;
  v33 = v259;
  v31 = v259;
  v44 = &v259;
  *&v45 = &v31;
  v46 = 0xAAAAAAAAAAAAAA00;
  *(&v45 + 1) = &v33;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v259, &v68);
  *(&v259 + 1) = v33 + 9;
  v261 = 0;
  v262 = 0;
  v263 = operator new(0x20uLL);
  v265 = 0x8000000000000020;
  v264 = 28;
  strcpy(v263, "TIMEOUT for message MIPC .*?");
  v266 = 13;
  v44 = operator new(0x20uLL);
  v45 = xmmword_1E5390FF0;
  strcpy(v44, "TIMEOUT for message MIPC \\[|\\]");
  LODWORD(v46) = 0;
  v47[0] = &unk_1F5F03F60;
  v48 = v47;
  v49 = 1;
  v51 = 7;
  strcpy(v50, "Client=");
  v52 = 2;
  v53 = 0;
  v55 = 0;
  v57 = 4;
  strcpy(v56, "Msg=");
  v58 = 2;
  v59 = 0;
  v61 = 0;
  v63 = 4;
  strcpy(v62, "Trx=");
  v64 = 2;
  v65 = 0;
  v67 = 0;
  v268 = 0;
  v269 = 0;
  v267 = 0;
  v33 = &v267;
  v34 = 0xAAAAAAAAAAAAAA00;
  v267 = operator new(0x120uLL);
  v268 = v267;
  v269 = v267 + 12;
  v31 = v267;
  v30[0] = v267;
  *__p = &v267;
  *&__p[8] = v30;
  *&__p[16] = &v31;
  v40 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v267, &v44);
  v31 += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v31, v50);
  v31 += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v31, v56);
  v31 += 3;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v31, v62);
  v268 = v31 + 3;
  v270 = 4;
  v271 = 1;
  strcpy(v272, "Resetting baseband .*?");
  v272[23] = 22;
  v272[24] = 14;
  __p[23] = 19;
  strcpy(__p, "Resetting baseband ");
  LODWORD(v40) = 0;
  v41 = 0;
  v43 = 0;
  v274 = 0;
  v273 = 0u;
  v31 = &v273;
  v32 = 0xAAAAAAAAAAAAAA00;
  *&v273 = operator new(0x48uLL);
  *(&v273 + 1) = v273;
  v274 = v273 + 72;
  v30[0] = v273;
  v38 = v273;
  v33 = &v273;
  v34 = &v38;
  v35 = v30;
  v36 = 0xAAAAAAAAAAAAAA00;
  std::construct_at[abi:ne200100]<ResetReasonEncoder::SubmatchInfo,ResetReasonEncoder::SubmatchInfo const&,ResetReasonEncoder::SubmatchInfo*>(v273, __p);
  *(&v273 + 1) = v30[0] + 72;
  v275 = 4;
  v276 = 1;
  v277 = operator new(0x28uLL);
  v279 = 0x8000000000000028;
  v278 = 38;
  strcpy(v277, "Baseband request for reset for FS Sync");
  v280 = 15;
  v281 = 0;
  v283 = 0;
  v282 = 0;
  v284 = 4;
  v285 = 1;
  qword_1ED948F50 = 0;
  qword_1ED948F58 = 0;
  qword_1ED948F60 = 0;
  v30[0] = &qword_1ED948F50;
  v30[1] = 0xAAAAAAAAAAAAAA00;
  v6 = operator new(0x400uLL);
  v7 = 0;
  v8 = 0;
  qword_1ED948F50 = v6;
  qword_1ED948F58 = v6;
  qword_1ED948F60 = (v6 + 1024);
  v9 = v6 - 64;
  v10 = v6;
  do
  {
    v11 = &v156 + v8;
    v29 = v8;
    if (*(&v157 + v8 + 15) < 0)
    {
      std::string::__init_copy_ctor_external(v10, *v11, *(v11 + 1));
    }

    else
    {
      *v10 = *v11;
      *(v10 + 16) = *(v11 + 2);
    }

    v12 = v11[24];
    *(v10 + 32) = 0;
    *(v10 + 24) = v12;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    v14 = *(v11 + 4);
    v13 = *(v11 + 5);
    v31 = (v10 + 32);
    v32 = 0xAAAAAAAAAAAAAA00;
    v15 = v13 - v14;
    if (v13 != v14)
    {
      if (0x8E38E38E38E38E39 * (v15 >> 3) >= 0x38E38E38E38E38FLL)
      {
        std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
      }

      v16 = operator new(v13 - v14);
      *(v10 + 32) = v16;
      *(v10 + 40) = v16;
      *(v10 + 48) = v16 + v15;
      v37 = v16;
      v38 = v16;
      v33 = (v10 + 32);
      v34 = &v37;
      v17 = v16;
      v36 = 0xAAAAAAAAAAAAAA00;
      v35 = &v38;
      while (1)
      {
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(v17, *v14, *(v14 + 1));
        }

        else
        {
          v19 = *v14;
          v17->__r_.__value_.__r.__words[2] = *(v14 + 2);
          *&v17->__r_.__value_.__l.__data_ = v19;
        }

        v20 = *(v14 + 6);
        v17[1].__r_.__value_.__s.__data_[8] = 0;
        LODWORD(v17[1].__r_.__value_.__l.__data_) = v20;
        v17[2].__r_.__value_.__s.__data_[16] = 0;
        if (*(v14 + 64) != 1)
        {
          goto LABEL_13;
        }

        v18 = *(v14 + 7);
        if (v18)
        {
          if (v14 + 2 == v18)
          {
            v17[2].__r_.__value_.__l.__size_ = &v17[1].__r_.__value_.__l.__size_;
            (*(**(v14 + 7) + 24))(*(v14 + 7), &v17[1].__r_.__value_.__s.__data_[8]);
            goto LABEL_12;
          }

          v18 = (*(*v18 + 16))(v18);
        }

        v17[2].__r_.__value_.__l.__size_ = v18;
LABEL_12:
        v17[2].__r_.__value_.__s.__data_[16] = 1;
LABEL_13:
        v14 = (v14 + 72);
        v17 = v38 + 3;
        v38 += 3;
        if (v14 == v13)
        {
          *(v10 + 40) = v17;
          break;
        }
      }
    }

    v8 = v29 + 64;
    *(v10 + 56) = *(v11 + 7);
    v10 += 64;
    v7 -= 64;
    v9 += 64;
  }

  while (v29 != 960);
  qword_1ED948F58 = v10;
  v21 = &v286;
  do
  {
    v22 = *(v21 - 4);
    if (v22)
    {
      v23 = *(v21 - 3);
      v24 = *(v21 - 4);
      if (v23 != v22)
      {
        v25 = v23 - 5;
        do
        {
          while (1)
          {
            if (*(v23 - 8) == 1)
            {
              v27 = *(v23 - 2);
              if (v23 - 5 == v27)
              {
                (*(*v27 + 4))(v27);
              }

              else if (v27)
              {
                (*(*v27 + 5))(v27);
              }
            }

            v26 = v23 - 9;
            if (*(v23 - 49) < 0)
            {
              break;
            }

            v25 -= 9;
            v23 -= 9;
            if (v26 == v22)
            {
              goto LABEL_34;
            }
          }

          operator delete(*v26);
          v25 -= 9;
          v23 -= 9;
        }

        while (v26 != v22);
LABEL_34:
        v24 = *(v21 - 4);
      }

      *(v21 - 3) = v22;
      operator delete(v24);
    }

    v28 = (v21 - 8);
    if (*(v21 - 41) < 0)
    {
      operator delete(*v28);
    }

    v21 -= 8;
  }

  while (v28 != &v156);
  if (v43 != 1)
  {
LABEL_42:
    if ((__p[23] & 0x80000000) != 0)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v67 == 1)
    {
      goto LABEL_47;
    }

LABEL_50:
    if (v63 < 0)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (v61 == 1)
    {
      goto LABEL_55;
    }

LABEL_58:
    if (v57 < 0)
    {
      goto LABEL_62;
    }

LABEL_59:
    if (v55 == 1)
    {
      goto LABEL_63;
    }

LABEL_66:
    if (v51 < 0)
    {
      goto LABEL_70;
    }

LABEL_67:
    if (v49 == 1)
    {
      goto LABEL_71;
    }

LABEL_74:
    if (SHIBYTE(v45) < 0)
    {
      goto LABEL_78;
    }

LABEL_75:
    if (v73 == 1)
    {
      goto LABEL_79;
    }

LABEL_82:
    if (v69 < 0)
    {
      goto LABEL_86;
    }

LABEL_83:
    if (v79 == 1)
    {
      goto LABEL_87;
    }

LABEL_90:
    if (v75 < 0)
    {
      goto LABEL_94;
    }

LABEL_91:
    if (v85 == 1)
    {
      goto LABEL_95;
    }

LABEL_98:
    if (SHIBYTE(v81) < 0)
    {
      goto LABEL_102;
    }

LABEL_99:
    if (v91 == 1)
    {
      goto LABEL_103;
    }

LABEL_106:
    if (SHIBYTE(v87) < 0)
    {
      goto LABEL_110;
    }

LABEL_107:
    if (v96 == 1)
    {
      goto LABEL_111;
    }

LABEL_114:
    if ((v92[23] & 0x80000000) != 0)
    {
      goto LABEL_118;
    }

LABEL_115:
    if (v102 == 1)
    {
      goto LABEL_119;
    }

LABEL_122:
    if (SHIBYTE(v98) < 0)
    {
      goto LABEL_126;
    }

LABEL_123:
    if (v138 == 1)
    {
      goto LABEL_127;
    }

LABEL_130:
    if (SHIBYTE(v134) < 0)
    {
      goto LABEL_134;
    }

LABEL_131:
    if (v132 == 1)
    {
      goto LABEL_135;
    }

LABEL_138:
    if (SHIBYTE(v128) < 0)
    {
      goto LABEL_142;
    }

LABEL_139:
    if (v126 == 1)
    {
      goto LABEL_143;
    }

LABEL_146:
    if (SHIBYTE(v122) < 0)
    {
      goto LABEL_150;
    }

LABEL_147:
    if (v120 == 1)
    {
      goto LABEL_151;
    }

LABEL_154:
    if (SHIBYTE(v116) < 0)
    {
      goto LABEL_158;
    }

LABEL_155:
    if (v114 == 1)
    {
      goto LABEL_159;
    }

LABEL_162:
    if (SHIBYTE(v110) < 0)
    {
      goto LABEL_166;
    }

LABEL_163:
    if (v108 == 1)
    {
      goto LABEL_167;
    }

LABEL_170:
    if (SHIBYTE(v104) < 0)
    {
      goto LABEL_174;
    }

LABEL_171:
    if (v144 == 1)
    {
      goto LABEL_175;
    }

LABEL_178:
    if (SHIBYTE(v140) < 0)
    {
      goto LABEL_182;
    }

LABEL_179:
    if (v155 == 1)
    {
      goto LABEL_183;
    }

LABEL_186:
    if (v151 < 0)
    {
      goto LABEL_190;
    }

LABEL_187:
    if (v149 == 1)
    {
      goto LABEL_191;
    }

LABEL_194:
    if ((v145[23] & 0x80000000) != 0)
    {
      goto LABEL_195;
    }

    return;
  }

  if (v42 != &v41)
  {
    if (v42)
    {
      (*(*v42 + 40))();
    }

    goto LABEL_42;
  }

  (*(*v42 + 32))(v42);
  if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

LABEL_46:
  operator delete(*__p);
  if (v67 != 1)
  {
    goto LABEL_50;
  }

LABEL_47:
  if (v66 != &v65)
  {
    if (v66)
    {
      (*(*v66 + 40))();
    }

    goto LABEL_50;
  }

  (*(*v66 + 32))(v66);
  if ((v63 & 0x80000000) == 0)
  {
    goto LABEL_51;
  }

LABEL_54:
  operator delete(v62[0]);
  if (v61 != 1)
  {
    goto LABEL_58;
  }

LABEL_55:
  if (v60 != &v59)
  {
    if (v60)
    {
      (*(*v60 + 40))();
    }

    goto LABEL_58;
  }

  (*(*v60 + 32))(v60);
  if ((v57 & 0x80000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_62:
  operator delete(v56[0]);
  if (v55 != 1)
  {
    goto LABEL_66;
  }

LABEL_63:
  if (v54 != &v53)
  {
    if (v54)
    {
      (*(*v54 + 40))();
    }

    goto LABEL_66;
  }

  (*(*v54 + 32))(v54);
  if ((v51 & 0x80000000) == 0)
  {
    goto LABEL_67;
  }

LABEL_70:
  operator delete(v50[0]);
  if (v49 != 1)
  {
    goto LABEL_74;
  }

LABEL_71:
  if (v48 != v47)
  {
    if (v48)
    {
      (*(*v48 + 40))();
    }

    goto LABEL_74;
  }

  (*(*v48 + 32))(v48);
  if ((SHIBYTE(v45) & 0x80000000) == 0)
  {
    goto LABEL_75;
  }

LABEL_78:
  operator delete(v44);
  if (v73 != 1)
  {
    goto LABEL_82;
  }

LABEL_79:
  if (v72 != &v71)
  {
    if (v72)
    {
      (*(*v72 + 40))();
    }

    goto LABEL_82;
  }

  (*(*v72 + 32))(v72);
  if ((v69 & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

LABEL_86:
  operator delete(v68);
  if (v79 != 1)
  {
    goto LABEL_90;
  }

LABEL_87:
  if (v78 != &v77)
  {
    if (v78)
    {
      (*(*v78 + 40))();
    }

    goto LABEL_90;
  }

  (*(*v78 + 32))(v78);
  if ((v75 & 0x80000000) == 0)
  {
    goto LABEL_91;
  }

LABEL_94:
  operator delete(v74);
  if (v85 != 1)
  {
    goto LABEL_98;
  }

LABEL_95:
  if (v84 != &v83)
  {
    if (v84)
    {
      (*(*v84 + 40))();
    }

    goto LABEL_98;
  }

  (*(*v84 + 32))(v84);
  if ((SHIBYTE(v81) & 0x80000000) == 0)
  {
    goto LABEL_99;
  }

LABEL_102:
  operator delete(v80);
  if (v91 != 1)
  {
    goto LABEL_106;
  }

LABEL_103:
  if (v90 != v89)
  {
    if (v90)
    {
      (*(*v90 + 40))();
    }

    goto LABEL_106;
  }

  (*(*v90 + 32))(v90);
  if ((SHIBYTE(v87) & 0x80000000) == 0)
  {
    goto LABEL_107;
  }

LABEL_110:
  operator delete(v86);
  if (v96 != 1)
  {
    goto LABEL_114;
  }

LABEL_111:
  if (v95 != &v94)
  {
    if (v95)
    {
      (*(*v95 + 40))();
    }

    goto LABEL_114;
  }

  (*(*v95 + 32))(v95);
  if ((v92[23] & 0x80000000) == 0)
  {
    goto LABEL_115;
  }

LABEL_118:
  operator delete(*v92);
  if (v102 != 1)
  {
    goto LABEL_122;
  }

LABEL_119:
  if (v101 != &v100)
  {
    if (v101)
    {
      (*(*v101 + 40))();
    }

    goto LABEL_122;
  }

  (*(*v101 + 32))(v101);
  if ((SHIBYTE(v98) & 0x80000000) == 0)
  {
    goto LABEL_123;
  }

LABEL_126:
  operator delete(v97);
  if (v138 != 1)
  {
    goto LABEL_130;
  }

LABEL_127:
  if (v137 != &v136)
  {
    if (v137)
    {
      (*(*v137 + 40))();
    }

    goto LABEL_130;
  }

  (*(*v137 + 32))(v137);
  if ((SHIBYTE(v134) & 0x80000000) == 0)
  {
    goto LABEL_131;
  }

LABEL_134:
  operator delete(v133);
  if (v132 != 1)
  {
    goto LABEL_138;
  }

LABEL_135:
  if (v131 != &v130)
  {
    if (v131)
    {
      (*(*v131 + 40))();
    }

    goto LABEL_138;
  }

  (*(*v131 + 32))(v131);
  if ((SHIBYTE(v128) & 0x80000000) == 0)
  {
    goto LABEL_139;
  }

LABEL_142:
  operator delete(v127);
  if (v126 != 1)
  {
    goto LABEL_146;
  }

LABEL_143:
  if (v125 != &v124)
  {
    if (v125)
    {
      (*(*v125 + 40))();
    }

    goto LABEL_146;
  }

  (*(*v125 + 32))(v125);
  if ((SHIBYTE(v122) & 0x80000000) == 0)
  {
    goto LABEL_147;
  }

LABEL_150:
  operator delete(v121);
  if (v120 != 1)
  {
    goto LABEL_154;
  }

LABEL_151:
  if (v119 != &v118)
  {
    if (v119)
    {
      (*(*v119 + 40))();
    }

    goto LABEL_154;
  }

  (*(*v119 + 32))(v119);
  if ((SHIBYTE(v116) & 0x80000000) == 0)
  {
    goto LABEL_155;
  }

LABEL_158:
  operator delete(v115);
  if (v114 != 1)
  {
    goto LABEL_162;
  }

LABEL_159:
  if (v113 != &v112)
  {
    if (v113)
    {
      (*(*v113 + 40))();
    }

    goto LABEL_162;
  }

  (*(*v113 + 32))(v113);
  if ((SHIBYTE(v110) & 0x80000000) == 0)
  {
    goto LABEL_163;
  }

LABEL_166:
  operator delete(v109);
  if (v108 != 1)
  {
    goto LABEL_170;
  }

LABEL_167:
  if (v107 != &v106)
  {
    if (v107)
    {
      (*(*v107 + 40))();
    }

    goto LABEL_170;
  }

  (*(*v107 + 32))(v107);
  if ((SHIBYTE(v104) & 0x80000000) == 0)
  {
    goto LABEL_171;
  }

LABEL_174:
  operator delete(v103);
  if (v144 != 1)
  {
    goto LABEL_178;
  }

LABEL_175:
  if (v143 != &v142)
  {
    if (v143)
    {
      (*(*v143 + 40))();
    }

    goto LABEL_178;
  }

  (*(*v143 + 32))(v143);
  if ((SHIBYTE(v140) & 0x80000000) == 0)
  {
    goto LABEL_179;
  }

LABEL_182:
  operator delete(v139);
  if (v155 != 1)
  {
    goto LABEL_186;
  }

LABEL_183:
  if (v154 != &v153)
  {
    if (v154)
    {
      (*(*v154 + 40))();
    }

    goto LABEL_186;
  }

  (*(*v154 + 32))(v154);
  if ((v151 & 0x80000000) == 0)
  {
    goto LABEL_187;
  }

LABEL_190:
  operator delete(v150);
  if (v149 != 1)
  {
    goto LABEL_194;
  }

LABEL_191:
  if (v148 != &v147)
  {
    if (v148)
    {
      (*(*v148 + 40))();
    }

    goto LABEL_194;
  }

  (*(*v148 + 32))(v148);
  if ((v145[23] & 0x80000000) != 0)
  {
LABEL_195:
    operator delete(*v145);
  }
}

void sub_1E531618C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ResetReasonEncoder::Mapping *a11, ResetReasonEncoder::Mapping *a12, ResetReasonEncoder::Mapping *a13, ResetReasonEncoder::Mapping *a14, ResetReasonEncoder::Mapping *a15, ResetReasonEncoder::Mapping *a16, ResetReasonEncoder::Mapping *a17, ResetReasonEncoder::Mapping *a18, ResetReasonEncoder::Mapping *a19, ResetReasonEncoder::Mapping *a20, ResetReasonEncoder::Mapping *a21, ResetReasonEncoder::Mapping *a22, ResetReasonEncoder::Mapping *a23, ResetReasonEncoder::Mapping *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void **a48, void **a49, void **a50, void **a51, void **a52, uint64_t a53, uint64_t a54, void **a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__exception_guard_exceptions<std::vector<ResetReasonEncoder::Mapping>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a55);
  ResetReasonEncoder::Mapping::~Mapping(a12);
  ResetReasonEncoder::Mapping::~Mapping(a13);
  ResetReasonEncoder::Mapping::~Mapping(a15);
  ResetReasonEncoder::Mapping::~Mapping(a11);
  ResetReasonEncoder::Mapping::~Mapping(a14);
  ResetReasonEncoder::Mapping::~Mapping(a16);
  ResetReasonEncoder::Mapping::~Mapping(a18);
  ResetReasonEncoder::Mapping::~Mapping(a17);
  ResetReasonEncoder::Mapping::~Mapping(a20);
  ResetReasonEncoder::Mapping::~Mapping(a19);
  ResetReasonEncoder::Mapping::~Mapping(a21);
  ResetReasonEncoder::Mapping::~Mapping(a22);
  ResetReasonEncoder::Mapping::~Mapping(a24);
  ResetReasonEncoder::Mapping::~Mapping(a23);
  ResetReasonEncoder::Mapping::~Mapping(v65);
  ResetReasonEncoder::Mapping::~Mapping(&STACK[0x778]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&a65);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x2E8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x2A0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x258]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x210]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x330]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x378]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x3C0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x408]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x450]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x4A0]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a48);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a49);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a50);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a51);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(a52);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x4E8]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x698]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x728]);
  ResetReasonEncoder::SubmatchInfo::~SubmatchInfo(&STACK[0x6E0]);
  _Unwind_Resume(a1);
}

BBUEUR16FirmwareVersion *BBUFirmwareVersion::createFromVersionString(capabilities::updater *a1)
{
  FirmwareVersion = capabilities::updater::getFirmwareVersion(a1);
  if (FirmwareVersion != 2)
  {
    if (FirmwareVersion < 2 || FirmwareVersion == 3)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/FirmwareVersion/Common/BBUFirmwareVersion.cpp", 0x17u, "Assertion failure(false && Unrecognized radio type.)");
    }

    return 0;
  }

  v4 = operator new(0x60uLL);
  BBUEUR16FirmwareVersion::BBUEUR16FirmwareVersion(v4);
  if (((*(*v4 + 56))(v4, a1) & 1) == 0)
  {
    (*(*v4 + 8))(v4);
    return 0;
  }

  return v4;
}

uint64_t BBUFDRUtilities::connect(uint64_t *a1, __CFDictionary **a2)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v4 = off_1ED944170;
  if (!off_1ED944170)
  {
    v5 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v5);
    v20.__r_.__value_.__r.__words[0] = v5;
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F05A00;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v5;
    v7 = off_1ED944178;
    off_1ED944170 = v5;
    off_1ED944178 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_1ED944170;
  }

  v8 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFDRCacheLocation(&__p, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = __p;
  }

  v17 = 0;
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v19 = v18;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v19;
  }

  v9 = *MEMORY[0x1E695E480];
  v21 = 0xAAAAAAAAAAAAAAAALL;
  if (ctu::cf::convert_copy())
  {
    v10 = CFURLCreateWithString(v9, v21, 0);
    CFRelease(v21);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_20:
    value = v10;
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v19.__r_.__value_.__l.__data_);
  value = v10;
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

LABEL_28:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v8)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

LABEL_27:
  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  if (!v8)
  {
LABEL_30:
    v11 = value;
    v12 = *a2;
    if (!value)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_29:
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_30;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v11 = value;
  v12 = *a2;
  if (value)
  {
LABEL_31:
    CFDictionaryAddValue(v12, @"DataDirectory", v11);
    v12 = *a2;
  }

LABEL_32:
  CFDictionaryAddValue(v12, @"SignData", *MEMORY[0x1E695E4C0]);
  if (v11)
  {
    CFRelease(v11);
  }

  v13 = AMFDRCreateWithOptions(v9, *a2);
  *a1 = v13;
  if (v13)
  {
    return 0;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    result = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    result = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      return result;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "failed creating reference to fdr\n");
    return 11;
  }

  return result;
}

void sub_1E5316CF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, int a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a20);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a17 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a20);
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a21);
  if ((a17 & 0x80000000) == 0)
  {
LABEL_4:
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t BBUFDRUtilities::copy(CFStringRef *a1, CFStringRef *a2, const void **a3, __CFDictionary **a4)
{
  v7 = *a1;
  if (!v7 || !*a2 || !*a4)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return 2;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return 2;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "invalid arguments:  dataClass = %p, serial = %p, options = %p");
    }

    return 2;
  }

  if (!CFStringGetLength(v7) || !CFStringGetLength(*a2))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_31:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          CFStringGetLength(*a1);
          CFStringGetLength(*a2);
          _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "invalid field length:  dataClass = %li, serial = %li\n");
        }
      }
    }

    return 2;
  }

  v29 = 0;
  v9 = *a1;
  v28[2] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  v10 = *a2;
  v28[1] = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  v11 = *a4;
  v28[0] = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = BBUFDRUtilities::connect(&v29, v28);
  v13 = v12;
  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (!v13)
  {
    cf = 0;
    v15 = *a2;
    v16 = *MEMORY[0x1E695E480];
    v17 = capabilities::radio::chipID(v12);
    v18 = CFStringCreateWithFormat(v16, 0, @"%08X-%@", v17, v15);
    v19 = AMFDRDataCopy(v29, *a1, v18, &cf);
    if (v18 && v19)
    {
      v21 = cf;
      v22 = *a3;
      *a3 = v19;
      if (v22)
      {
        CFRelease(v22);
      }

      if (!v21)
      {
        v13 = 0;
LABEL_52:
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (v18)
        {
          CFRelease(v18);
        }

        goto LABEL_56;
      }
    }

    else
    {
      v23 = *a3;
      *a3 = v19;
      if (v23)
      {
        CFRelease(v23);
      }
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_45;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "failed copying data from FDR\n");
      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        v13 = 11;
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_46;
      }
    }

LABEL_45:
    v13 = 11;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_52;
    }

LABEL_46:
    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      ctu::cf::show(__p, cf, v20);
      v24 = v26 >= 0 ? __p : __p[0];
      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "%s\n", v24);
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_52;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
    {
LABEL_21:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "failed establish connection to FDR\n");
      }
    }
  }

LABEL_56:
  if (v29)
  {
    CFRelease(v29);
  }

  return v13;
}

void sub_1E531729C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUFDRUtilities::validateAndCopy(capabilities::radio *a1, const void **a2, const void **a3, uint64_t *a4, ctu::cf **a5, char a6)
{
  v11 = *a2;
  v12 = *MEMORY[0x1E695E480];
  v13 = capabilities::radio::chipID(a1);
  v15 = CFStringCreateWithFormat(v12, 0, @"%08X-%@", v13, v11);
  if (*a1 && *a2 && *a4)
  {
    v37 = 0;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_16;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      ctu::cf::show(v38, *a1, v14);
      v16 = v39;
      v17 = v38[0];
      ctu::cf::show(__p, v15, v18);
      v19 = v38;
      if (v16 < 0)
      {
        v19 = v17;
      }

      if (v36 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "DataClass: %s, DataInstance: %s\n", v19, v20);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      if (v39 < 0)
      {
        operator delete(v38[0]);
      }
    }

LABEL_16:
    if (!AMFDRIsSupported())
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 109, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUFDRUtilities.cpp", 0x101u, "Assertion failure(( AMFDRIsSupported() == true) && AMFDR calls are made but dyn libFDR is NOT linked)");
    }

    if (a6)
    {
LABEL_23:
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_27;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "Calling AMFDRSealingMapCopyLocalData which does the unsealing/validation.\n");
      }

LABEL_27:
      v22 = AMFDRSealingMapCopyLocalData(*a1, v15, *a4, &v37);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_35;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        ctu::cf::show(v38, v37, v21);
        v23 = v39 >= 0 ? v38 : v38[0];
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData error: %s\n", v23);
        if (v39 < 0)
        {
          operator delete(v38[0]);
        }
      }

LABEL_35:
      if (v22)
      {
        goto LABEL_40;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_40;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData returned NULL data \n");
      }

LABEL_40:
      if (v37)
      {
        goto LABEL_45;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_45;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_45;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData returned NULL error \n");
      }

LABEL_45:
      v24 = v37;
      *a5 = v37;
      if (v22)
      {
        v25 = v24 == 0;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      v27 = *a3;
      *a3 = v22;
      if (v27)
      {
        CFRelease(v27);
      }

      if (v26)
      {
        result = 0;
        goto LABEL_87;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_79;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
        {
          goto LABEL_79;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "hit an error while copying data from FDR\n");
        if (gBBULogMaskGet(void)::once != -1)
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          result = 11;
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
          {
LABEL_80:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              ctu::cf::show(v38, v37, v21);
              if (v39 >= 0)
              {
                v31 = v38;
              }

              else
              {
                v31 = v38[0];
              }

              _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "%s\n", v31);
              if (v39 < 0)
              {
                operator delete(v38[0]);
              }

              result = 11;
            }
          }

LABEL_87:
          if (v15)
          {
            v32 = result;
            CFRelease(v15);
            return v32;
          }

          return result;
        }
      }

LABEL_79:
      result = 11;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_80;
      }

      goto LABEL_87;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
      {
LABEL_20:
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "Setting AMFDR Log Handler\n");
        }
      }
    }

    AMFDRLogSetHandler(BBUFDRLogHandler);
    goto LABEL_23;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_59;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "invalid arguments:  dataClass = %p, serial = %p\n, options = %p", *a1, *a2, *a4);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_60;
    }
  }

LABEL_59:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
  {
    goto LABEL_67;
  }

LABEL_60:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(v38, *a1, v14);
    if (v39 >= 0)
    {
      v29 = v38;
    }

    else
    {
      v29 = v38[0];
    }

    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "DataClass: %s\n", v29);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      result = 2;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_68;
    }
  }

LABEL_67:
  result = 2;
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
  {
    return result;
  }

LABEL_68:
  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    ctu::cf::show(v38, v15, v14);
    if (v39 >= 0)
    {
      v30 = v38;
    }

    else
    {
      v30 = v38[0];
    }

    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "DataInstance: %s\n", v30);
    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    return 2;
  }

  return result;
}

void sub_1E5317A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL BBUFDRUtilities::isTrustErrorAcceptable(BBUFDRUtilities *this, __CFError *a2)
{
  v2 = AMFDRGetTrustError(this);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "FDR TrustError: %llu\n", v2);
  }

LABEL_5:
  if (!v2)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v4 = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return v4;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v4 = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
      {
        return v4;
      }
    }

    if (gBBULogVerbosity < 0)
    {
      return v4;
    }

    v5 = "Fatal error in FDR data validation/decode \n";
LABEL_18:
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, v5);
    return v4;
  }

  v3 = v2 & 0xFFFD9FFFFFFFFEFFLL;
  v4 = (v2 & 0xFFFD9FFFFFFFFEFFLL) == 0;
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  if (v3)
  {
    v5 = "Fatal error in FDR data validation/decode \n";
  }

  else
  {
    v5 = "We only have acceptable errors, so we can ignore these errors \n";
  }

  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  return v4;
}

BOOL BBUFDRUtilities::isErrorImageNotFound(_BOOL8 this, __CFError *a2)
{
  if (!this)
  {
    return this;
  }

  v2 = CFErrorCopyUserInfo(this);
  if (v2)
  {
    v3 = v2;
    v4 = *MEMORY[0x1E695E670];
    Value = CFDictionaryGetValue(v2, *MEMORY[0x1E695E670]);
    if (Value)
    {
      v7 = Value;
      while (1)
      {
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
          {
            goto LABEL_12;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          ctu::cf::show(__p, v7, v6);
          v8 = __p;
          if (v14 < 0)
          {
            v8 = __p[0];
          }

          _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "AMFDRSealingMapCopyLocalData error: %s\n", v8);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

LABEL_12:
        Code = CFErrorGetCode(v7);
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
          {
            goto LABEL_14;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0)
          {
LABEL_14:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "ErrorCode from isErrorImageNotFound: 0x%lx\n", Code);
            }
          }
        }

        CFRelease(v3);
        v10 = CFErrorCopyUserInfo(v7);
        if (!v10)
        {
          goto LABEL_26;
        }

        v3 = v10;
        v7 = CFDictionaryGetValue(v10, v4);
        if (!v7)
        {
          goto LABEL_25;
        }
      }
    }

    Code = 0;
LABEL_25:
    CFRelease(v3);
  }

  else
  {
    Code = 0;
  }

LABEL_26:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, "ErrorCode from isErrorImageNotFound: 0x%lx\n", Code);
    this = Code == 4;
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      this = Code == 4;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = Code == 4;
LABEL_33:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x80) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    if (this)
    {
      v11 = "The root cause of the AMFDR failure IS missing bbxx file \n";
    }

    else
    {
      v11 = "The root cause of the AMFDR failure is NOT missing bbxx file \n";
    }

    v12 = this;
    _BBULog(15, 0, "BBUFDRUtilities", &str_7_3, v11);
    return v12;
  }

  return this;
}

void sub_1E5317F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_27()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t BBUICEProvisioner::determineSupport(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Assuming mature provisioning supported.");
    *(a1 + 16) = 1;
    (*(**(a1 + 8) + 24))(*(a1 + 8), 0);
  }

  return 0;
}

uint64_t BBUICEProvisioner::handleBeginMature(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  v30[3] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 56, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUICEProvisioner.cpp", 0x32u, "Assertion failure(d.get() && Error: Unable retrieve public key to start provisioning.)");
  }

  CFRetain(v3);
  v6 = operator new(0xFA0uLL);
  bzero(v6, 0xFA0uLL);
  v7 = operator new(0x4C4uLL);
  bzero(v7, 0x4C4uLL);
  Length = CFDataGetLength(v3);
  *v6 = Length;
  if (Length <= 0xF9Eu)
  {
    v33.length = CFDataGetLength(v3);
    v33.location = 0;
    CFDataGetBytes(v3, v33, v6 + 2);
    BBUFeedback::handleComment(*(a1 + 8), "Start provisioning by sending pubkey, size %d", *v6);
    IceAriGetContext();
    if (!KTLStartProvision())
    {
      BBUFeedback::handleComment(*(a1 + 8), "Failed to retrieve mature provisioning parameters.");
      v9 = 56;
      goto LABEL_49;
    }

    bzero(__dst, 0x400uLL);
    if (v7[14] >= 0x400u)
    {
      v10 = 1024;
    }

    else
    {
      v10 = v7[14];
    }

    memcpy(__dst, v7 + 15, v10);
    memset(v30, 170, 24);
    ctu::hex(v30, __dst, v10);
    valid = KTLIsValidIMEIString();
    if (valid)
    {
      v12 = operator new(0x18uLL);
      v13 = v12;
      if (SHIBYTE(v30[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v12, v30[0], v30[1]);
      }

      else
      {
        *&v12->__r_.__value_.__l.__data_ = *v30;
        v12->__r_.__value_.__r.__words[2] = v30[2];
      }

      valid = *a3;
      if (*a3)
      {
        if (*(valid + 23) < 0)
        {
          v14 = *a3;
          operator delete(*valid);
          valid = v14;
        }

        operator delete(valid);
      }

      *a3 = v13;
    }

    if (capabilities::updater::supportsDualIMEIProvision(valid))
    {
      memcpy(__dst, v7 + 554, v10);
      memset(__p, 170, sizeof(__p));
      ctu::hex(__p, __dst, v10);
      if (KTLIsValidIMEIString())
      {
        BBUFeedback::handleComment(*(a1 + 8), "IMEI2 is valid. Populating provisioning params!");
        v15 = operator new(0x18uLL);
        v16 = v15;
        if (SHIBYTE(__p[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v15, __p[0], __p[1]);
        }

        else
        {
          *&v15->__r_.__value_.__l.__data_ = *__p;
          v15->__r_.__value_.__r.__words[2] = __p[2];
        }

        v17 = a3[1];
        if (v17)
        {
          if (*(v17 + 23) < 0)
          {
            v18 = a3[1];
            operator delete(*v17);
            v17 = v18;
          }

          operator delete(v17);
        }

        a3[1] = v16;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v7[536] >= 0x400u)
    {
      v19 = 1024;
    }

    else
    {
      v19 = v7[536];
    }

    memcpy(__dst, v7 + 537, v19);
    memset(__p, 170, sizeof(__p));
    ctu::hex(__p, __dst, v19);
    if (KTLIsValidMEIDString())
    {
      BBUFeedback::handleComment(*(a1 + 8), "MEID is valid. Populating provisioning params!");
      v20 = operator new(0x18uLL);
      v21 = v20;
      if (SHIBYTE(__p[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v20, __p[0], __p[1]);
      }

      else
      {
        *&v20->__r_.__value_.__l.__data_ = *__p;
        v20->__r_.__value_.__r.__words[2] = __p[2];
      }

      v22 = a3[2];
      if (v22)
      {
        if (*(v22 + 23) < 0)
        {
          operator delete(*v22);
        }

        operator delete(v22);
      }

      a3[2] = v21;
    }

    v23 = operator new(0x10uLL);
    v24 = v7[23];
    v23[2] = v24;
    v25 = operator new[](v24);
    *v23 = v25;
    memcpy(v25, v7 + 24, v24);
    v26 = a3[4];
    if (v26)
    {
      if (*v26)
      {
        operator delete(*v26);
      }

      operator delete(v26);
    }

    a3[4] = v23;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v30[2]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    else if ((SHIBYTE(v30[2]) & 0x80000000) == 0)
    {
LABEL_48:
      v9 = 0;
      goto LABEL_49;
    }

    operator delete(v30[0]);
    goto LABEL_48;
  }

  v9 = 19;
LABEL_49:
  operator delete(v7);
  operator delete(v6);
  CFRelease(v3);
  return v9;
}

void sub_1E53184A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, const void *a23)
{
  operator delete(v25);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  operator delete(v24);
  operator delete(v23);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a23);
  _Unwind_Resume(a1);
}

uint64_t BBUICEProvisioner::handleFinishMature(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 57, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUICEProvisioner.cpp", 0x83u, "Assertion failure(d.get() && Error: Unable retrieve public key to finish provisioning.)");
  }

  CFRetain(v2);
  v4 = operator new(0xC02uLL);
  v5 = operator new(0xACuLL);
  bzero(v4, 0xC02uLL);
  *(v5 + 156) = 0u;
  v5[8] = 0u;
  v5[9] = 0u;
  v5[6] = 0u;
  v5[7] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  *v5 = 0u;
  v5[1] = 0u;
  Length = CFDataGetLength(v2);
  *v4 = Length;
  if (Length <= 0xC00u)
  {
    v10.length = CFDataGetLength(v2);
    v10.location = 0;
    CFDataGetBytes(v2, v10, v4 + 2);
    BBUFeedback::handleComment(*(a1 + 8), "Sending manifest, size %d", *v4);
    IceAriGetContext();
    if (KTLFinishProvision())
    {
      v7 = 0;
    }

    else
    {
      BBUFeedback::handleComment(*(a1 + 8), "Finish provision failed, rsp status: 0x%x", *(v5 + 5));
      v7 = 57;
    }
  }

  else
  {
    v7 = 19;
  }

  operator delete(v5);
  operator delete(v4);
  CFRelease(v2);
  return v7;
}

void sub_1E53186F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531870C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_1E531872C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void sub_1E5318748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E5318760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  operator delete(v11);
  operator delete(v10);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_28()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ICEARIContext>::~PthreadMutexGuardPolicy, &ctu::Singleton<ICEARIContext,ICEARIContext,ctu::PthreadMutexGuardPolicy<ICEARIContext>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void *BasebandUpdaterCreate(const __CFDictionary *a1, void (*a2)(void *, const char *), void *a3, void *a4)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v49 = v8;
  v50 = v8;
  LOBYTE(v49) = 0;
  DWORD1(v49) = 0;
  WORD4(v49) = 0;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v53 = 0xAAAAAAAAAAAA0202;
  __p[1] = 0;
  v52 = 0uLL;
  __p[0] = 0xAAAA000000000000;
  v48[0] = 0xAAAAAAAAAAAAAAAALL;
  v48[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x1E6926D60](v48, @"BasebandUpdaterCreate");
  inited = ParseUpdaterDebugArgs(a1, &v49);
  v56 = 0;
  if (!a1)
  {
    v10 = 0;
LABEL_14:
    LogInstance = ACFULogging::getLogInstance(inited);
    inited = ACFULogging::initLog(LogInstance, v10, a2, a3);
    v21 = inited;
    v14 = v56;
    if (!v56)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v10 = a1;
  if (!DWORD1(v49))
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x1E695E480];
  v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"logLevel=%d", DWORD1(v49));
  v55 = v12;
  if (!v12)
  {
    v36 = ACFULogging::getLogInstance(0);
    inited = ACFULogging::handleMessage(v36, 2, "%s::%s: Failed to create debug value\n", "BasebandUpdater", "initACFULog");
LABEL_44:
    v37 = ACFULogging::getLogInstance(inited);
    ACFULogging::handleMessage(v37, 2, "%s::%s: Failed to init logging\n", "BasebandUpdater", "BasebandUpdaterCreate");
    std::string::basic_string[abi:ne200100]<0>(v46, "Failed to init logging");
    v32 = ACFUError::addError();
    v24 = 0;
    if (v47 < 0)
    {
      v31 = v46;
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, a1);
  v14 = MutableCopy;
  v56 = MutableCopy;
  if (MutableCopy)
  {
    Value = CFDictionaryGetValue(MutableCopy, @"Options");
    v16 = Value;
    if (!Value)
    {
      goto LABEL_9;
    }

    v17 = CFGetTypeID(Value);
    if (v17 != CFDictionaryGetTypeID())
    {
      goto LABEL_9;
    }

    v54 = 0;
    v18 = CFDictionaryCreateMutableCopy(v11, 0, v16);
    v19 = v18;
    v54 = v18;
    if (v18)
    {
      CFDictionaryAddValue(v18, @"ACFUDebugArgs", v12);
      CFDictionaryReplaceValue(v14, @"Options", v19);
      CFRelease(v19);
LABEL_9:
      v20 = 1;
      v10 = v14;
      goto LABEL_10;
    }

    v39 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v39, 2, "%s::%s: Failed to create updater options dictionary\n", "BasebandUpdater", "initACFULog");
  }

  else
  {
    v38 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v38, 2, "%s::%s: Failed to create options dictionary\n", "BasebandUpdater", "initACFULog");
  }

  v10 = 0;
  v20 = 0;
LABEL_10:
  CFRelease(v12);
  if (v20)
  {
    goto LABEL_14;
  }

  v21 = 1;
  if (v14)
  {
LABEL_15:
    CFRelease(v14);
  }

LABEL_16:
  if (v21)
  {
    goto LABEL_44;
  }

  if (a2)
  {
    sLogSink = a2;
    sLogContext = a3;
  }

  if (_MergedGlobals_6 == -1)
  {
    if (qword_1ED948F70)
    {
      goto LABEL_21;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_6, &__block_literal_global_4);
    if (qword_1ED948F70)
    {
LABEL_21:
      Instance = _CFRuntimeCreateInstance();
      v24 = Instance;
      if (Instance)
      {
        if (!a1)
        {
LABEL_26:
          v28 = ACFULogging::getLogInstance(Instance);
          ACFULogging::handleMessage(v28, 3, "%s::%s: Baseband updater object created successfully\n", "BasebandUpdater", "BasebandUpdaterCreate");
          goto LABEL_27;
        }

        v25 = operator new(0x20uLL);
        BasebandUpdater::BasebandUpdater(v25, v24, a1);
        v24[2] = v25;
        v27 = Instance[2];
        v26 = Instance[3];
        if (v26 && (atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
          if (v27)
          {
            goto LABEL_26;
          }
        }

        else if (v27)
        {
          goto LABEL_26;
        }

        v30 = ACFULogging::getLogInstance(Instance);
        ACFULogging::handleMessage(v30, 2, "%s::%s: Failed to create BasebandUpdater instance\n", "BasebandUpdater", "BasebandUpdaterCreate");
        v40 = operator new(0x30uLL);
        v41 = xmmword_1E5391A00;
        strcpy(v40, "Failed to create BasebandUpdater instance");
        ACFUError::addError();
        v31 = &v40;
        goto LABEL_32;
      }

      v35 = ACFULogging::getLogInstance(0);
      ACFULogging::handleMessage(v35, 2, "%s::%s: Failed to create BasebandUpdater CFRuntime object\n", "BasebandUpdater", "BasebandUpdaterCreate");
      std::string::basic_string[abi:ne200100]<0>(v42, "Failed to create BasebandUpdater CFRuntime object");
      v32 = ACFUError::addError();
      v24 = 0;
      if (v43 < 0)
      {
        v31 = v42;
        goto LABEL_32;
      }

      goto LABEL_33;
    }
  }

  v34 = ACFULogging::getLogInstance(inited);
  ACFULogging::handleMessage(v34, 2, "%s::%s: Failed to register BasebandUpdater CFRuntimeClass\n", "BasebandUpdater", "BasebandUpdaterCreate");
  std::string::basic_string[abi:ne200100]<0>(v44, "Failed to register BasebandUpdater CFRuntimeClass");
  v32 = ACFUError::addError();
  v24 = 0;
  if (v45 < 0)
  {
    v31 = v44;
LABEL_32:
    operator delete(*v31);
  }

LABEL_33:
  v33 = ACFULogging::getLogInstance(v32);
  ACFULogging::handleMessage(v33, 2, "%s::%s: Failed to create Baseband updater object\n", "BasebandUpdater", "BasebandUpdaterCreate");
  if (a4 && ACFUError::hasError(v48))
  {
    *a4 = ACFUError::getCFError(v48);
  }

  if (v24)
  {
    CFRelease(v24);
    v24 = 0;
  }

LABEL_27:
  MEMORY[0x1E6926D70](v48);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[1]);
  }

  return v24;
}

void sub_1E5318D98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E6926D70](&a35, a2, a3, a4, a5, a6, a7, a8);
  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

uint64_t __BasebandUpdaterCreate_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  qword_1ED948F70 = result;
  return result;
}

void *BasebandUpdaterObjDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      v2 = (*(*result + 8))(result);
      LogInstance = ACFULogging::getLogInstance(v2);
      result = ACFULogging::handleMessage(LogInstance, 3, "%s::%s: Cleaning up BasebandUpdater object\n", "BasebandUpdater", "BasebandUpdaterObjDestroy");
      v1[2] = 0;
    }
  }

  return result;
}

CFStringRef BasebandUpdaterObjDescribe(CFStringRef result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    v3 = CFGetAllocator(v1);
    return CFStringCreateWithFormat(v2, 0, @"<BasebandUpdater %p [%p]>{}", v1, v3);
  }

  return result;
}

uint64_t BasebandUpdaterExecCommand(uint64_t a1, ACFURestore *a2, uint64_t a3, const __CFDictionary **a4, uint64_t *a5)
{
  v87[0] = 0xAAAAAAAAAAAAAAAALL;
  v87[1] = 0xAAAAAAAAAAAAAAAALL;
  v9 = MEMORY[0x1E6926D60](v87, @"BasebandUpdaterExecCommand");
  if (!a1)
  {
    LogInstance = ACFULogging::getLogInstance(v9);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: NULL updater argument\n", "BasebandUpdater", "BasebandUpdaterExecCommand");
    v86[23] = 21;
    strcpy(v86, "NULL updater argument");
    ACFUError::addError();
    if (!a5)
    {
      goto LABEL_115;
    }

    goto LABEL_15;
  }

  v10 = *(a1 + 16);
  {
    v16 = ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage(v16, 2, "%s::%s: NULL BasebandUpdater object\n", "BasebandUpdater", "BasebandUpdaterExecCommand");
    v84 = operator new(0x20uLL);
    v85 = xmmword_1E5391A60;
    strcpy(v84, "NULL BasebandUpdater object");
    ACFUError::addError();
    operator delete(v84);
    if (!a5)
    {
      goto LABEL_115;
    }

LABEL_15:
    CFError = ACFUError::getCFError(v87);
    goto LABEL_16;
  }

  v12 = v10;
  v13 = ACFURestore::restoreCommand(a2, v11);
  if (v13 != -1)
  {
    v14 = *(v12 + 3);
    v82.__r_.__value_.__r.__words[0] = *(v12 + 2);
    v82.__r_.__value_.__l.__size_ = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = ACFURestore::executeCommand();
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v25 = v15;
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v15 = v25;
      if (v25)
      {
LABEL_68:
        v19 = 1;
        goto LABEL_116;
      }
    }

    else if (v15)
    {
      goto LABEL_68;
    }

LABEL_65:
    v53 = *(v12 + 2);
    v54 = *(v12 + 3);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v55 = *(v53 + 400);
      if (atomic_fetch_add(&v54->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (v55)
        {
          goto LABEL_68;
        }
      }

      else
      {
        (v54->__on_zero_shared)(v54);
        std::__shared_weak_count::__release_weak(v54);
        if (v55)
        {
          goto LABEL_68;
        }
      }
    }

    else if (*(v53 + 400))
    {
      goto LABEL_68;
    }

    v56 = ACFULogging::getLogInstance(v15);
    CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
    ACFULogging::handleMessage(v56, 2, "%s::%s: Failed to execute command: %s\n", "BasebandUpdater", "BasebandUpdaterExecCommand", CStringPtr);
    if (!a5)
    {
      goto LABEL_115;
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_73;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_73:
        if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
        {
          goto LABEL_75;
        }

LABEL_74:
        if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
        {
          goto LABEL_75;
        }

LABEL_115:
        v19 = 0;
        goto LABEL_116;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
LABEL_75:
      v79 = 0xAAAAAAAAAAAAAAAALL;
      v80 = 0xAAAAAAAAAAAAAAAALL;
      v58 = *(v12 + 2);
      v59 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v58;
      v82.__r_.__value_.__l.__size_ = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ACFURestore::getErrorHandle(&v79, v58);
      if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v59->__on_zero_shared)(v59);
        std::__shared_weak_count::__release_weak(v59);
      }

      memset(&v82, 0, sizeof(v82));
      v78 = 0;
      v60 = *(v12 + 2);
      v61 = *(v12 + 3);
      v76 = v60;
      v77 = v61;
      if (v61)
      {
        atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v62 = (*(*v60 + 96))(v60, &v82, &v78);
      if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v63 = v62;
        (v61->__on_zero_shared)(v61);
        std::__shared_weak_count::__release_weak(v61);
        v62 = v63;
      }

      if (v62)
      {
        if (v78 == 1)
        {
          ACFUError::clearError(v79);
          std::string::basic_string[abi:ne200100]<0>(&__p, "Emergency coredump detected; route this failure to the baseband firmware team for analysis");
          ACFUError::addError();
          if (v75 < 0)
          {
            operator delete(__p);
          }

          v64 = ACFUError::getCFError(v79);
        }

        else
        {
          ACFUError::clearError(v79);
          std::operator+<char>();
          ACFUError::addError();
          if (v73 < 0)
          {
            operator delete(v72);
          }

          v64 = ACFUError::getCFError(v79);
        }

        *a5 = v64;
LABEL_110:
        if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v82.__r_.__value_.__l.__data_);
        }

        v70 = v80;
        if (v80 && !atomic_fetch_add((v80 + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v70->__on_zero_shared)(v70);
          std::__shared_weak_count::__release_weak(v70);
        }

        goto LABEL_115;
      }

      v65 = *(v12 + 2);
      v66 = *(v12 + 3);
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v68 = *(v65 + 376);
      v67 = *(v65 + 384);
      v76 = v68;
      v77 = v67;
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v66->__on_zero_shared)(v66);
        std::__shared_weak_count::__release_weak(v66);
      }

      v69 = v76;
      if ((ACFUError::hasError(v76) & 1) == 0)
      {
        if (!ACFUError::hasError(v79))
        {
LABEL_103:
          if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v77->__on_zero_shared)(v77);
            std::__shared_weak_count::__release_weak(v77);
          }

          goto LABEL_110;
        }

        v69 = v79;
      }

      *a5 = ACFUError::getCFError(v69);
      goto LABEL_103;
    }

    goto LABEL_74;
  }

  v20 = BasebandRestore::basebandRestoreCommand(a2, v13);
  v21 = v20;
  switch(v20)
  {
    case -1:
      v22 = ACFULogging::getLogInstance(v20);
      v23 = CFStringGetCStringPtr(a2, 0x8000100u);
      ACFULogging::handleMessage(v22, 2, "%s::%s: BasebandUpdater unsupported command: %s\n", "BasebandUpdater", "BasebandUpdaterExecCommand", v23);
      v24 = CFStringGetCStringPtr(a2, 0x8000100u);
      std::string::basic_string[abi:ne200100]<0>(&v82, v24);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("BasebandUpdater unsupported command: ", &v82, &v81);
      ACFUError::addError();
      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_20:
          if (!a5)
          {
            goto LABEL_115;
          }

LABEL_122:
          CFError = ACFUError::getCFError(v87);
          break;
        }
      }

      else if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(v82.__r_.__value_.__l.__data_);
      if (!a5)
      {
        goto LABEL_115;
      }

      goto LABEL_122;
    case 0:
      v41 = *(v12 + 2);
      v42 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v41;
      v82.__r_.__value_.__l.__size_ = v42;
      if (v42)
      {
        atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v41 + 48))(v41);
      goto LABEL_64;
    case 1:
      v35 = *(v12 + 2);
      v36 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v35;
      v82.__r_.__value_.__l.__size_ = v36;
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v35 + 56))(v35);
      goto LABEL_64;
    case 2:
      v37 = *(v12 + 2);
      v38 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v37;
      v82.__r_.__value_.__l.__size_ = v38;
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v37 + 64))(v37, a4);
      goto LABEL_64;
    case 3:
      v29 = *(v12 + 2);
      v30 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v29;
      v82.__r_.__value_.__l.__size_ = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = BasebandRestore::copyBasebandMigrationDataCmd(v29, a4);
      goto LABEL_64;
    case 4:
      v43 = *(v12 + 2);
      v44 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v43;
      v82.__r_.__value_.__l.__size_ = v44;
      if (v44)
      {
        atomic_fetch_add_explicit((v44 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = BasebandRestore::restoreBasebandMigrationDataCmd(v43, a4);
      goto LABEL_64;
    case 5:
      v46 = *(v12 + 2);
      v47 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v46;
      v82.__r_.__value_.__l.__size_ = v47;
      if (v47)
      {
        atomic_fetch_add_explicit((v47 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = BasebandRestore::pingCmd(v46, a4);
      goto LABEL_64;
    case 6:
      v39 = *(v12 + 2);
      v40 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v39;
      v82.__r_.__value_.__l.__size_ = v40;
      if (v40)
      {
        atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v39 + 72))(v39, a4);
      goto LABEL_64;
    case 7:
      v50 = *(v12 + 2);
      v51 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v50;
      v82.__r_.__value_.__l.__size_ = v51;
      if (v51)
      {
        atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v50 + 80))(v50);
      goto LABEL_64;
    case 8:
      v33 = *(v12 + 2);
      v34 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v33;
      v82.__r_.__value_.__l.__size_ = v34;
      if (v34)
      {
        atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = BasebandRestore::provisionCmd(v33, a4);
      goto LABEL_64;
    case 9:
      v48 = *(v12 + 2);
      v49 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v48;
      v82.__r_.__value_.__l.__size_ = v49;
      if (v49)
      {
        atomic_fetch_add_explicit((v49 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v48 + 104))(v48, a4);
      goto LABEL_64;
    case 10:
      v26 = *(v12 + 2);
      v27 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v26;
      v82.__r_.__value_.__l.__size_ = v27;
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v26 + 112))(v26, a4);
      goto LABEL_64;
    case 11:
      v31 = *(v12 + 2);
      v32 = *(v12 + 3);
      v82.__r_.__value_.__r.__words[0] = v31;
      v82.__r_.__value_.__l.__size_ = v32;
      if (v32)
      {
        atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = (*(*v31 + 120))(v31);
LABEL_64:
      v52 = v28;
      v15 = std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v82);
      if ((v52 & 1) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_68;
    default:
      v45 = ACFULogging::getLogInstance(v20);
      ACFULogging::handleMessage(v45, 2, "%s::%s: Logic error: invalid BasebandUpdater command: %d\n", "BasebandUpdater", "BasebandUpdaterExecCommand", v21);
      std::to_string(&v82, v21);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Logic error: invalid BasebandUpdater command: ", &v82, &v83);
      ACFUError::addError();
      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_53:
          if (!a5)
          {
            goto LABEL_115;
          }

          goto LABEL_119;
        }
      }

      else if ((SHIBYTE(v82.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_53;
      }

      operator delete(v82.__r_.__value_.__l.__data_);
      if (!a5)
      {
        goto LABEL_115;
      }

LABEL_119:
      CFError = ACFUError::getCFError(v87);
      break;
  }

LABEL_16:
  v19 = 0;
  *a5 = CFError;
LABEL_116:
  MEMORY[0x1E6926D70](v87);
  return v19;
}

void sub_1E5319A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a27);
  MEMORY[0x1E6926D70](v46 - 80);
  _Unwind_Resume(a1);
}

void sub_1E5319BAC(_Unwind_Exception *a1)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
    MEMORY[0x1E6926D70](v1 - 80);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E5319BF8);
}

void sub_1E5319BD0(_Unwind_Exception *a1)
{
  if (*(v1 - 113) < 0)
  {
    operator delete(*(v1 - 136));
    MEMORY[0x1E6926D70](v1 - 80);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E5319BF8);
}

uint64_t BasebandUpdaterIsDone(uint64_t a1, void *a2)
{
  v21[0] = 0xAAAAAAAAAAAAAAAALL;
  v21[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x1E6926D60](v21, @"BasebandUpdaterIsDone");
  if (!a1)
  {
    goto LABEL_24;
  }

  v4 = *(a1 + 16);
  {
    LogInstance = ACFULogging::getLogInstance(v4);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: NULL BasebandUpdater object\n", "BasebandUpdater", "BasebandUpdaterIsDone");
    __p = operator new(0x20uLL);
    v20 = xmmword_1E5391A60;
    strcpy(__p, "NULL BasebandUpdater object");
    ACFUError::addError();
    operator delete(__p);
    if (a2)
    {
      *a2 = ACFUError::getCFError(v21);
    }

    goto LABEL_22;
  }

  v5 = v4;
  v6 = *(v4 + 2);
  v7 = *(v5 + 3);
  v17 = v6;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  isRestoreComplete = ACFURestore::isRestoreComplete(v6);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = isRestoreComplete;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    isRestoreComplete = v15;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_24:
    v14 = 0;
    goto LABEL_25;
  }

  if (!isRestoreComplete)
  {
    goto LABEL_24;
  }

LABEL_9:
  v9 = ACFULogging::getLogInstance(isRestoreComplete);
  ACFULogging::handleMessage(v9, 0, "%s::%s: Baseband Update is complete!\n", "BasebandUpdater", "BasebandUpdaterIsDone");
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v10 = *(v5 + 2);
  v11 = *(v5 + 3);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ACFURestore::getErrorHandle(&v17, v10);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (a2 && ACFUError::hasError(v17))
  {
    *a2 = ACFUError::getCFError(v17);
  }

  v12 = v18;
  if (v18 && !atomic_fetch_add((v18 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_22:
  v14 = 1;
LABEL_25:
  MEMORY[0x1E6926D70](v21);
  return v14;
}

void sub_1E5319EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x1E6926D70](v11 - 48);
  _Unwind_Resume(a1);
}

void sub_1E5319EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x1E6926D70](v7 - 48);
  _Unwind_Resume(a1);
}

void sub_1E5319F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x1E6926D70](v11 - 48);
  _Unwind_Resume(a1);
}

void sub_1E5319F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    MEMORY[0x1E6926D70](v21 - 48);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E6926D70](v21 - 48, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t BasebandUpdaterSetOptions(void *a1, const __CFDictionary *a2, void *a3)
{
  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = MEMORY[0x1E6926D60](v32, @"BasebandUpdaterSetOptions");
  if (a1 && a2)
  {
    v7 = a1[2];
    if (v7)
    {
      v10 = *(v8 + 2);
      v9 = *(v8 + 3);
      v26 = v10;
      v27 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v10[15];
      if (v11)
      {
        CFRelease(v11);
      }

      v10[15] = a2;
      AMSupportSafeRetain();
      v12 = (*(*v10 + 136))(v10);
      v13 = v12;
      if (v12)
      {
        LogInstance = ACFULogging::getLogInstance(v12);
        v12 = ACFULogging::handleMessage(LogInstance, 2, "%s::%s: Failed to initialize BBUCapabilities\n", "BasebandRestore", "setOptions");
      }

      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }

      if (v13)
      {
        v15 = ACFULogging::getLogInstance(v12);
        ACFULogging::handleMessage(v15, 2, "%s::%s: Failed to setOptions on BasebandUpdater obj\n", "BasebandUpdater", "BasebandUpdaterSetOptions");
        std::string::basic_string[abi:ne200100]<0>(v24, "Failed to setOptions on BasebandUpdater obj");
        ACFUError::addError();
        if (v25 < 0)
        {
          v16 = v24;
LABEL_24:
          operator delete(*v16);
          goto LABEL_25;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v17 = ACFULogging::getLogInstance(0);
      inited = ACFULogging::initLog(v17, a2, sLogSink, sLogContext);
      if (inited)
      {
        v23 = ACFULogging::getLogInstance(inited);
        ACFULogging::handleMessage(v23, 2, "%s::%s: Failed to init logging\n", "BasebandUpdater", "BasebandUpdaterSetOptions");
        std::string::basic_string[abi:ne200100]<0>(v28, "Failed to init logging");
        ACFUError::addError();
        if (v29 < 0)
        {
          v16 = v28;
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v19 = operator new(0x20uLL);
      BasebandUpdater::BasebandUpdater(v19, a1, a2);
      a1[2] = v19;
    }

    v20 = 1;
    goto LABEL_19;
  }

  v22 = ACFULogging::getLogInstance(v6);
  ACFULogging::handleMessage(v22, 2, "%s::%s: NULL updater and/or options arguments\n", "BasebandUpdater", "BasebandUpdaterSetOptions");
  std::string::basic_string[abi:ne200100]<0>(v30, "NULL updater and/or options arguments");
  ACFUError::addError();
  if (v31 < 0)
  {
    v16 = v30;
    goto LABEL_24;
  }

LABEL_25:
  if (a3 && ACFUError::hasError(v32))
  {
    v20 = 0;
    *a3 = ACFUError::getCFError(v32);
  }

  else
  {
    v20 = 0;
  }

LABEL_19:
  MEMORY[0x1E6926D70](v32);
  return v20;
}

void sub_1E531A258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
    MEMORY[0x1E6926D70](v25 - 48);
    _Unwind_Resume(a1);
  }

  MEMORY[0x1E6926D70](v25 - 48, a2, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

ACFULogging *BasebandUpdaterRegisterLogSink(uint64_t a1, void *a2, void (*a3)(void *, const char *))
{
  if (!a1)
  {
    LogInstance = ACFULogging::getLogInstance(0);
    return ACFULogging::handleMessage(LogInstance, 2, "%s::%s: NULL updater argument\n");
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v5[2];
    v7 = v5[3];
    if (!v7)
    {
      v15 = *(v6 + 120);
      v16 = ACFULogging::getLogInstance(v5);
      result = ACFULogging::initLog(v16, v15, a3, a2);
      if (result)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(v6 + 120);
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v10 = ACFULogging::getLogInstance(v9);
      result = ACFULogging::initLog(v10, v8, a3, a2);
      if (!result)
      {
        goto LABEL_12;
      }

LABEL_10:
      v14 = ACFULogging::getLogInstance(result);
      return ACFULogging::handleMessage(v14, 2, "%s::%s: Failed to init logging\n");
    }
  }

  else
  {
    v8 = 0;
  }

  v13 = ACFULogging::getLogInstance(v5);
  result = ACFULogging::initLog(v13, v8, a3, a2);
  if (result)
  {
    goto LABEL_10;
  }

LABEL_12:
  sLogSink = a3;
  sLogContext = a2;
  return result;
}

double BBUPersonalizationParameters::create(BBUPersonalizationParameters *this)
{
  PersonalizationParameters = capabilities::updater::getPersonalizationParameters(this);
  if (PersonalizationParameters)
  {
    if (PersonalizationParameters == 1)
    {
      v3 = operator new(0x60uLL);
      result = 0.0;
      *(v3 + 8) = 0u;
      *(v3 + 24) = 0u;
      *(v3 + 40) = 0u;
      *(v3 + 56) = 0u;
      *(v3 + 72) = 0u;
      *(v3 + 22) = 0;
      *v3 = &unk_1F5F03DE8;
    }

    else if (PersonalizationParameters == 2)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Common/BBUPersonalizationParameters.cpp", 0x15u, "Assertion failure(false && Unrecognized radio type.)");
    }
  }

  else
  {
    v4 = operator new(0x60uLL);
    result = 0.0;
    *(v4 + 8) = 0u;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0u;
    *(v4 + 72) = 0u;
    *(v4 + 22) = 0;
    *v4 = &unk_1F5F05C90;
  }

  return result;
}

void BBUPersonalizationParameters::~BBUPersonalizationParameters(BBUPersonalizationParameters *this)
{
  *this = &unk_1F5F040D8;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }
}

uint64_t BBUPersonalizationParameters::setPublicKeyHash(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t DaleBooter::create@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  *a2 = 0;
  v4 = operator new(0xB8uLL);
  v8 = v4;
  v24 = &unk_1F5F01F98;
  LOBYTE(v25) = 0;
  v27 = 0;
  v9 = *(a1 + 32);
  if (v9 == 1)
  {
    v7 = *(a1 + 8);
    v25 = v7;
    v26 = *(a1 + 24);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v5 = 1;
    v27 = 1;
    LOBYTE(v28) = 0;
    v30 = 0;
    v10 = *(a1 + 64);
    if (v10 != 1)
    {
LABEL_3:
      LOBYTE(v31) = 0;
      v33 = 0;
      v11 = *(a1 + 96);
      if (v11 != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
    v30 = 0;
    v10 = *(a1 + 64);
    if (v10 != 1)
    {
      goto LABEL_3;
    }
  }

  v7 = *(a1 + 40);
  v28 = v7;
  v29 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  v5 = 1;
  v30 = 1;
  LOBYTE(v31) = 0;
  v33 = 0;
  v11 = *(a1 + 96);
  if (v11 != 1)
  {
LABEL_4:
    LOBYTE(v34) = 0;
    v39 = 0;
    v12 = *(a1 + 144);
    if (v12 == 1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = *(a1 + 72);
  v31 = v7;
  v32 = *(a1 + 88);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v5 = 1;
  v33 = 1;
  LOBYTE(v34) = 0;
  v39 = 0;
  v12 = *(a1 + 144);
  if (v12 == 1)
  {
LABEL_5:
    v13 = *(a1 + 120);
    v14 = *(a1 + 104);
    v5 = *(a1 + 112);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    v34 = v14;
    v35 = v5;
    v6 = *(a1 + 128);
    v36 = v13;
    v37 = v6;
    LODWORD(v7) = *(a1 + 136);
    v38 = v7;
    if (v6)
    {
      v4 = &v36;
      v15 = *(v13 + 8);
      if ((v5 & (v5 - 1)) != 0)
      {
        if (v15 >= v5)
        {
          v15 %= v5;
        }
      }

      else
      {
        v15 &= v5 - 1;
      }

      *(v14 + 8 * v15) = &v36;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0;
    }

    v39 = 1;
    LOBYTE(v40) = 0;
    v42 = 0;
    v16 = *(a1 + 168);
    if (v16 == 1)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_11:
  LOBYTE(v40) = 0;
  v42 = 0;
  v16 = *(a1 + 168);
  if (v16 == 1)
  {
LABEL_17:
    v4 = *(a1 + 160);
    v40 = *(a1 + 152);
    v41 = v4;
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    v42 = 1;
  }

LABEL_18:
  *v8 = &unk_1F5F04120;
  v8[1] = &unk_1F5F01F98;
  *(v8 + 16) = 0;
  *(v8 + 40) = 0;
  if (v9)
  {
    *(v8 + 1) = v25;
    v8[4] = v26;
    v26 = 0;
    v25 = 0uLL;
    *(v8 + 40) = 1;
    *(v8 + 48) = 0;
    v17 = v8 + 6;
    *(v8 + 72) = 0;
    if (!v10)
    {
LABEL_20:
      *(v8 + 80) = 0;
      v18 = v8 + 10;
      *(v8 + 104) = 0;
      if (!v11)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }
  }

  else
  {
    *(v8 + 48) = 0;
    v17 = v8 + 6;
    *(v8 + 72) = 0;
    if (!v10)
    {
      goto LABEL_20;
    }
  }

  *v17 = v28;
  v17[2] = v29;
  v29 = 0;
  v28 = 0uLL;
  *(v8 + 72) = 1;
  *(v8 + 80) = 0;
  v18 = v8 + 10;
  *(v8 + 104) = 0;
  if (!v11)
  {
LABEL_21:
    *(v8 + 112) = 0;
    *(v8 + 152) = 0;
    if (!v12)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_28:
  *v18 = v31;
  v18[2] = v32;
  v32 = 0;
  v31 = 0uLL;
  *(v8 + 104) = 1;
  *(v8 + 112) = 0;
  *(v8 + 152) = 0;
  if (!v12)
  {
LABEL_22:
    *(v8 + 160) = 0;
    *(v8 + 176) = 0;
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_29:
  v20 = v34;
  v21 = v36;
  v34 = 0;
  v35 = 0;
  v8[16] = v36;
  v8[14] = v20;
  v8[15] = v5;
  v8[17] = v6;
  *(v8 + 36) = v7;
  if (v6)
  {
    v22 = *(v21 + 8);
    if ((v5 & (v5 - 1)) != 0)
    {
      if (v22 >= v5)
      {
        v22 %= v5;
      }
    }

    else
    {
      v22 &= v5 - 1;
    }

    *(v20 + 8 * v22) = v8 + 16;
    v36 = 0;
    v37 = 0;
  }

  *(v8 + 152) = 1;
  *(v8 + 160) = 0;
  *(v8 + 176) = 0;
  if (v16)
  {
LABEL_23:
    v8[20] = v40;
    v8[21] = v4;
    v40 = 0;
    v41 = 0;
    *(v8 + 176) = 1;
  }

LABEL_24:
  BasebandBooterParams::~BasebandBooterParams(&v24);
  result = (*(*v8 + 32))(v8);
  if (result)
  {
    *a2 = v8;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init booter object\n", "DaleBooter", "create");
    return (*(*v8 + 8))(v8);
  }

  return result;
}

void sub_1E531ABF8(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleBooter::boot(uint64_t a1, _DWORD *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 0, "%s::%s: booting baseband...\n", "DaleBooter", "boot");
  *a2 = 1;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v71 = 0;
  memset(v89.__m_.__opaque, 0, sizeof(v89.__m_.__opaque));
  v89.__m_.__sig = 850045863;
  memset(v88.__cv_.__opaque, 0, sizeof(v88.__cv_.__opaque));
  v88.__cv_.__sig = 1018212795;
  v70 = 0;
  v5 = ACFUDiagnostics::create(&block, 0, 1);
  v6 = block;
  if (!block)
  {
    v74 = 0;
    v75 = 0;
    v8 = ACFULogging::getLogInstance(v5);
    ACFULogging::handleMessage(v8, 2, "%s::%s: failed to create diagnostics object\n");
    goto LABEL_6;
  }

  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_1F5F03AE8;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v6;
  v74 = v6;
  v75 = v7;
  v64.__r_.__value_.__s.__data_[0] = 0;
  v65 = 0;
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, *(a1 + 16), *(a1 + 24));
    }

    else
    {
      v64 = *(a1 + 16);
    }

    v65 = 1;
  }

  v66.__r_.__value_.__s.__data_[0] = 0;
  v67 = 0;
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v66, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v66 = *(a1 + 48);
    }

    v67 = 1;
  }

  __p.__r_.__value_.__s.__data_[0] = 0;
  v69 = 0;
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 80), *(a1 + 88));
    }

    else
    {
      __p = *(a1 + 80);
    }

    v69 = 1;
  }

  DaleFirmware_Boot::create(&v64, &block);
  v11 = block;
  if (block)
  {
    v12 = operator new(0x20uLL);
    *v12 = &unk_1F5F04170;
    *(v12 + 1) = 0;
    *(v12 + 2) = 0;
    *(v12 + 3) = v11;
    v71 = v11;
    v72 = v12;
    block = 0;
    if ((v69 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
    v71 = 0;
    v72 = 0;
    block = 0;
    if ((v69 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_26:
  if (v67 == 1 && SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v66.__r_.__value_.__l.__data_);
  }

  if (v65 == 1 && SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (!v11)
  {
    v44 = ACFULogging::getLogInstance(v12);
    ACFULogging::handleMessage(v44, 2, "%s::%s: failed to create firmware object\n");
    goto LABEL_6;
  }

  v62 = v6;
  v63 = v7;
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v60 = 0;
  v61 = 0;
  DaleController::create(&v62, &v60, &block);
  v13 = block;
  block = 0;
  v14 = v73;
  v73 = v13;
  if (v14)
  {
    (*(*v14 + 64))(v14);
    v15 = block;
    block = 0;
    if (v15)
    {
      (*(*v15 + 64))(v15);
    }
  }

  v16 = v61;
  if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  if (!v73)
  {
    v45 = ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage(v45, 2, "%s::%s: failed to create controller object\n");
    goto LABEL_6;
  }

  v18 = (*(*v73 + 32))(v73);
  *a2 = v18;
  if (v18)
  {
    v46 = ACFULogging::getLogInstance(v18);
    ACFULogging::handleMessage(v46, 2, "%s::%s: failed to cold-reset baseband (ACFU error code = %d)\n", "DaleBooter", "boot", *a2);
LABEL_6:
    v9 = 0;
    std::condition_variable::~condition_variable(&v88);
    std::mutex::~mutex(&v89);
    v10 = v72;
    if (!v72)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v59 = 6;
  strcpy(v58, "booter");
  v87 = 0;
  v19 = operator new(0x28uLL);
  *v19 = &unk_1F5F041C0;
  *(v19 + 1) = &v73;
  *(v19 + 2) = &v89;
  *(v19 + 3) = &v88;
  *(v19 + 4) = &v70;
  v87 = v19;
  support::misc::safe_timer::create(v58, 60000, v86, 17, &block);
  v20 = block;
  block = 0;
  v21 = v87;
  if (v87 == v86)
  {
    v21 = (*(*v87 + 32))(v87);
    if ((v59 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    if (v87)
    {
      v21 = (*(*v87 + 40))(v87);
    }

    if ((v59 & 0x80000000) == 0)
    {
LABEL_48:
      if (v20)
      {
        goto LABEL_49;
      }

      goto LABEL_53;
    }
  }

  operator delete(v58[0]);
  if (!v20)
  {
LABEL_53:
    v23 = ACFULogging::getLogInstance(v21);
    ACFULogging::handleMessage(v23, 2, "%s::%s: failed to create boot timer\n");
    goto LABEL_6;
  }

LABEL_49:
  v22 = *(v20 + 23);
  if (v22 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v20);
  }

  else
  {
    block = MEMORY[0x1E69E9820];
    v77 = 0x40000000;
    v78 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v79 = &__block_descriptor_tmp_8_0;
    v80 = v20;
    dispatch_sync(v22, &block);
  }

  v24 = v73;
  v56 = v71;
  v57 = v72;
  if (v72)
  {
    atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v52[0]) = 0;
  v55 = 0;
  if (*(a1 + 152) == 1)
  {
    *v52 = 0u;
    v53 = 0u;
    v54 = *(a1 + 144);
    prime = *(a1 + 120);
    if (prime == 1)
    {
      prime = 2;
LABEL_60:
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__do_rehash<true>(v52, prime);
LABEL_61:
      for (i = *(a1 + 128); i; i = *i)
      {
        std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(v52, i + 2, (i + 2));
      }

      v55 = 1;
      goto LABEL_64;
    }

    if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(*(a1 + 120));
      v39 = v52[1];
      v40 = prime >= v52[1];
      if (prime > v52[1])
      {
        goto LABEL_60;
      }
    }

    else
    {
      v39 = 0;
      v40 = 1;
      if (prime)
      {
        goto LABEL_60;
      }
    }

    if (v40)
    {
      goto LABEL_61;
    }

    v41 = vcvtps_u32_f32(*(&v53 + 1) / v54);
    if (v39 < 3 || (v42 = vcnt_s8(v39), v42.i16[0] = vaddlv_u8(v42), v42.u32[0] > 1uLL))
    {
      v41 = std::__next_prime(v41);
    }

    else
    {
      v43 = 1 << -__clz(v41 - 1);
      if (v41 >= 2)
      {
        v41 = v43;
      }
    }

    if (prime <= v41)
    {
      prime = v41;
    }

    if (prime >= v39)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

LABEL_64:
  LOBYTE(v49) = 0;
  v51 = 0;
  if (*(a1 + 176) == 1)
  {
    v27 = *(a1 + 168);
    v49 = *(a1 + 160);
    v50 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v51 = 1;
  }

  *a2 = DaleController::pushFirmware(v24, &v56, v52, &v49);
  if (v51 == 1)
  {
    v28 = v50;
    if (v50)
    {
      if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v28->__on_zero_shared)(v28);
        std::__shared_weak_count::__release_weak(v28);
      }
    }
  }

  if (v55 == 1)
  {
    v29 = v53;
    if (!v53)
    {
LABEL_80:
      v31 = v52[0];
      v52[0] = 0;
      if (v31)
      {
        operator delete(v31);
      }

      goto LABEL_82;
    }

    while (1)
    {
      v30 = *v29;
      if (v29[63] < 0)
      {
        operator delete(*(v29 + 5));
        if ((v29[39] & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

LABEL_79:
        operator delete(*(v29 + 2));
        operator delete(v29);
        v29 = v30;
        if (!v30)
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (v29[39] < 0)
        {
          goto LABEL_79;
        }

LABEL_76:
        operator delete(v29);
        v29 = v30;
        if (!v30)
        {
          goto LABEL_80;
        }
      }
    }
  }

LABEL_82:
  v32 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  std::mutex::lock(&v89);
  v70 = 1;
  std::mutex::unlock(&v89);
  std::condition_variable::notify_one(&v88);
  support::misc::safe_timer::stop(v20);
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 0;
  v33 = *(v20 + 23);
  block = MEMORY[0x1E69E9820];
  v77 = 1107296256;
  v78 = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v79 = &__block_descriptor_tmp_12_0;
  v80 = &v82;
  v81 = v20;
  dispatch_sync(v33, &block);
  v34 = *(v83 + 24);
  _Block_object_dispose(&v82, 8);
  if (v34 == 1)
  {
    v47 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v47, 2, "%s::%s: failed to boot baseband (timeout)\n", "DaleBooter", "boot");
  }

  else
  {
    if (!*a2)
    {
      v9 = 1;
      goto LABEL_88;
    }

    v48 = ACFULogging::getLogInstance(v35);
    ACFULogging::handleMessage(v48, 2, "%s::%s: failed to boot baseband (ACFU error code = %d)\n", "DaleBooter", "boot", *a2);
  }

  v9 = 0;
LABEL_88:
  (*(*v20 + 8))(v20);
  std::condition_variable::~condition_variable(&v88);
  std::mutex::~mutex(&v89);
  v10 = v72;
  if (!v72)
  {
    goto LABEL_91;
  }

LABEL_89:
  if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_91:
  v36 = v73;
  v73 = 0;
  if (v36)
  {
    (*(*v36 + 64))(v36);
  }

  v37 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

  return v9;
}

void sub_1E531B6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  if (a54 == 1 && a53 < 0)
  {
    operator delete(__p);
  }

  if (a47 == 1 && a46 < 0)
  {
    operator delete(a41);
  }

  if (a40 == 1 && a39 < 0)
  {
    operator delete(a34);
  }

  std::condition_variable::~condition_variable((v62 - 200));
  std::mutex::~mutex((v62 - 152));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a57);
  v64 = a59;
  a59 = 0;
  if (v64)
  {
    (*(*v64 + 64))(v64);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a60);
  _Unwind_Resume(a1);
}

void DaleBooter::~DaleBooter(DaleBooter *this)
{
  *this = &unk_1F5F04120;
  BasebandBooterParams::~BasebandBooterParams((this + 8));
}

{
  *this = &unk_1F5F04120;
  BasebandBooterParams::~BasebandBooterParams((this + 8));

  operator delete(this);
}

void std::__shared_ptr_pointer<DaleFirmware_Boot  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Boot  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 56))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DaleFirmware_Boot  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393A2CLL)
  {
    if (((v2 & 0x80000001E5393A2CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393A2CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393A2CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

__n128 std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_1F5F041C0;
  *(v2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(v2 + 24) = result;
  return result;
}

__n128 std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5F041C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  LogInstance = ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage(LogInstance, 2, "%s::%s: boot timeout, aborting via force-warm-reset\n", "DaleBooter", "operator()");
  v3 = DaleController::warmResetForce(**(a1 + 8));
  if (v3)
  {
    v4 = ACFULogging::getLogInstance(v3);
    ACFULogging::handleMessage(v4, 2, "%s::%s: failed to force-warm-reset (ACFU error code = %d), aborting via cold-reset\n");
LABEL_24:
    v15 = (*(***(a1 + 8) + 32))(**(a1 + 8));
    if (v15)
    {
      v16 = v15;
      v17 = ACFULogging::getLogInstance(v15);
      ACFULogging::handleMessage(v17, 2, "%s::%s: failed to cold-reset (ACFU error code = %d)\n", "DaleBooter", "operator()", v16);
    }

    return;
  }

  __lk.__m_ = *(a1 + 16);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock(__lk.__m_);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = v7.__d_.__rep_ + 10000000000;
  while ((*v6 & 1) == 0)
  {
    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (v8 <= v7.__d_.__rep_)
    {
LABEL_20:
      v13 = *v6;
      if (!__lk.__owns_)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v10.__d_.__rep_ = v8 - std::chrono::steady_clock::now().__d_.__rep_;
    if (v10.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v11.__d_.__rep_)
      {
        v12 = 0;
        goto LABEL_19;
      }

      if (v11.__d_.__rep_ < 1)
      {
        if (v11.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v9.__d_.__rep_ = v10.__d_.__rep_ + 0x8000000000000000;
          goto LABEL_5;
        }
      }

      else if (v11.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        if ((v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFFFLL)
        {
LABEL_19:
          v9.__d_.__rep_ = v12 + v10.__d_.__rep_;
          goto LABEL_5;
        }

LABEL_4:
        v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_5:
        std::condition_variable::__do_timed_wait(v5, &__lk, v9);
        std::chrono::steady_clock::now();
        goto LABEL_6;
      }

      v12 = 1000 * v11.__d_.__rep_;
      if (1000 * v11.__d_.__rep_ <= (v10.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        goto LABEL_19;
      }

      goto LABEL_4;
    }

LABEL_6:
    v7.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (v7.__d_.__rep_ >= v8)
    {
      goto LABEL_20;
    }
  }

  v13 = 1;
  if (__lk.__owns_)
  {
LABEL_21:
    std::mutex::unlock(__lk.__m_);
  }

LABEL_22:
  if ((v13 & 1) == 0)
  {
    v14 = ACFULogging::getLogInstance(v7.__d_.__rep_);
    ACFULogging::handleMessage(v14, 2, "%s::%s: failed to abort with force-warm-reset, aborting via cold-reset\n");
    goto LABEL_24;
  }
}

uint64_t std::__function::__func<DaleBooter::boot(ACFUErrorCode &)::$_0,std::allocator<DaleBooter::boot(ACFUErrorCode &)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10DaleBooter4bootER13ACFUErrorCodeE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t __cxx_global_var_init_29()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

const char *DaleImage::sImageTypeToString(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_1E876E8F0[a1];
  }
}

uint64_t DaleImage::create@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  *a2 = 0;
  v5 = operator new(0x40uLL);
  v11 = *a1;
  v12 = *(a1 + 4);
  v13[0] = 0;
  v15 = 0;
  v6 = *(a1 + 40);
  if (v6 == 1)
  {
    v14 = -1;
    v2 = *(a1 + 32);
    if (v2 != -1)
    {
      v16 = v13;
      v17 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_;
      v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_;
      (*(&v17 + v2))(&v16, a1 + 8);
      v14 = v2;
    }

    v15 = 1;
  }

  *v5 = &unk_1F5F04240;
  *(v5 + 2) = v11;
  v5[12] = v12;
  v5[16] = 0;
  v5[48] = 0;
  if (v6)
  {
    *(v5 + 10) = -1;
    if (v2 == -1)
    {
      v5[48] = 1;
      *(v5 + 7) = 0;
    }

    else
    {
      v16 = v5 + 16;
      v17 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      v18 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      (*(&v17 + v2))(&v16, v13);
      *(v5 + 10) = v2;
      v7 = v15;
      v5[48] = 1;
      *(v5 + 7) = 0;
      if ((v7 & 1) == 0)
      {
        goto LABEL_14;
      }

      if (v14 != -1)
      {
        v17 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
        v18 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
        (*(&v17 + v14))(&v16, v13);
      }
    }

    v14 = -1;
  }

  else
  {
    *(v5 + 7) = 0;
  }

LABEL_14:
  result = (*(*v5 + 16))(v5);
  if (result)
  {
    *a2 = v5;
  }

  else
  {
    LogInstance = ACFULogging::getLogInstance(result);
    v10 = DaleImage::sImageTypeToString(*a1);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: failed to init image object for %s\n", "DaleImage", "create", v10);
    return (*(*v5 + 8))(v5);
  }

  return result;
}

void sub_1E531C040(_Unwind_Exception *a1)
{
  v5 = std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>::~__move_constructor[abi:ne200100](v3);
  std::__optional_destruct_base<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,false>::~__optional_destruct_base[abi:ne200100](v5);
  operator delete(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

void sub_1E531C06C(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  *v1 = 0;
  _Unwind_Resume(a1);
}

uint64_t DaleImage::DaleImage(uint64_t result, int *a2)
{
  *result = &unk_1F5F04240;
  v2 = *(a2 + 4);
  v3 = *a2;
  *(result + 16) = 0;
  *(result + 8) = v3;
  *(result + 12) = v2;
  *(result + 48) = 0;
  if (*(a2 + 40) == 1)
  {
    *(result + 40) = -1;
    v4 = a2[8];
    if (v4 != -1)
    {
      v5 = result;
      v6 = result + 16;
      v7[0] = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      v7[1] = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
      (v7[v4])(&v6, a2 + 2);
      result = v5;
      *(v5 + 40) = v4;
    }

    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  return result;
}

BOOL DaleImage::load(DaleImage *this)
{
  if (!*(this + 2))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid image type\n");
    return 0;
  }

  if (*(this + 48) == 1)
  {
    v2 = this + 16;
    v3 = *(this + 7);
    *(this + 7) = 0;
    if (v3)
    {
      v4 = MEMORY[0x1E6926300]();
      operator delete(v4);
    }

    v5 = *(this + 10);
    v6 = ACFULogging::getLogInstance(v3);
    v7 = *(this + 2);
    if (v5)
    {
      if (v7 > 0xA)
      {
        v8 = "???";
      }

      else
      {
        v8 = off_1E876E8F0[v7];
      }

      v11 = ACFULogging::handleMessage(v6, 4, "%s::%s: using data source for image %s\n", "DaleImage", "load", v8);
      if (*(this + 10) == 1)
      {
        if (!*v2 && (*(this + 12) & 1) == 0)
        {
          v12 = ACFULogging::getLogInstance(v11);
          DaleImage::sImageTypeToString(*(this + 2));
          ACFULogging::handleMessage(v12, 2, "%s::%s: invalid image data for %s\n");
          return 0;
        }

        return 1;
      }

LABEL_60:
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    if (v7 > 0xA)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_1E876E8F0[v7];
    }

    ACFULogging::handleMessage(v6, 4, "%s::%s: using file source for image %s\n", "DaleImage", "load", v10);
    if (*(this + 10))
    {
      goto LABEL_60;
    }

    v13 = this + 16;
    if (*(this + 39) < 0)
    {
      v13 = *v2;
    }

    v14 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v13, 0x8000100u);
    v15 = v14;
    v39 = v14;
    if ((*(this + 39) & 0x8000000000000000) != 0)
    {
      if (*(this + 3))
      {
LABEL_23:
        if (!v14)
        {
          v32 = ACFULogging::getLogInstance(0);
          v33 = DaleImage::sImageTypeToString(*(this + 2));
          ACFULogging::handleMessage(v32, 2, "%s::%s: failed to create cf file path for %s\n", "DaleImage", "load", v33);
          return 0;
        }

        v16 = ctu::fs::file_exists();
        if ((v16 & 1) == 0)
        {
          if (*(this + 12))
          {
LABEL_29:
            v19 = 1;
            goto LABEL_30;
          }

          v34 = ACFULogging::getLogInstance(v16);
          v35 = DaleImage::sImageTypeToString(*(this + 2));
          if (*(this + 39) < 0)
          {
            v2 = *v2;
          }

          ACFULogging::handleMessage(v34, 2, "%s::%s: image file does not exist for %s (%s)\n", "DaleImage", "load", v35, v2);
LABEL_47:
          v19 = 0;
LABEL_30:
          CFRelease(v15);
          return (v19 & 1) != 0;
        }

        v38 = 0;
        is_directory = ctu::fs::is_directory();
        if (is_directory)
        {
          v36 = ACFULogging::getLogInstance(is_directory);
          v28 = DaleImage::sImageTypeToString(*(this + 2));
          v26 = v36;
          v30 = "%s::%s: image source for %s is not a file (%s)\n";
          if ((*(this + 39) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          file_size = ctu::fs::get_file_size();
          if (file_size)
          {
            if (*(this + 12) == 1)
            {
              v23 = ACFULogging::getLogInstance(file_size);
              v24 = *(this + 2);
              if (v24 > 0xA)
              {
                v25 = "???";
              }

              else
              {
                v25 = off_1E876E8F0[v24];
              }

              if (*(this + 39) < 0)
              {
                v29 = *v2;
              }

              else
              {
                v29 = this + 16;
              }

              ACFULogging::handleMessage(v23, 3, "%s::%s: warning: file exists but invalid size for %s (%s); deleting...\n", "DaleImage", "load", v25, v29);
              ctu::fs::remove_file();
              goto LABEL_29;
            }

            v26 = ACFULogging::getLogInstance(file_size);
            v27 = *(this + 2);
            if (v27 > 0xA)
            {
              v28 = "???";
            }

            else
            {
              v28 = off_1E876E8F0[v27];
            }

            v30 = "%s::%s: required file %s (%s) has 0 bytes of size\n";
            if ((*(this + 39) & 0x80000000) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v37 = ACFULogging::getLogInstance(file_size);
            v28 = DaleImage::sImageTypeToString(*(this + 2));
            v26 = v37;
            v30 = "%s::%s: failed to get image size for %s (%s)\n";
            if ((*(this + 39) & 0x80000000) == 0)
            {
              goto LABEL_46;
            }
          }
        }

        v2 = *v2;
LABEL_46:
        ACFULogging::handleMessage(v26, 2, v30, "DaleImage", "load", v28, v2);
        goto LABEL_47;
      }
    }

    else if (*(this + 39))
    {
      goto LABEL_23;
    }

    v21 = ACFULogging::getLogInstance(v14);
    v22 = DaleImage::sImageTypeToString(*(this + 2));
    ACFULogging::handleMessage(v21, 2, "%s::%s: invalid image path for %s\n", "DaleImage", "load", v22);
    if (!v15)
    {
      return 0;
    }

    goto LABEL_47;
  }

  if (*(this + 12))
  {
    return 1;
  }

  v9 = ACFULogging::getLogInstance(this);
  ACFULogging::handleMessage(v9, 2, "%s::%s: invalid image configuration; source not provided but image is not optional\n");
  return 0;
}

void sub_1E531C64C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531C664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E531C678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>>::operator=[abi:ne200100]<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    v4 = *(a2 + 24);
    if (v3 == -1)
    {
      if (v4 == -1)
      {
        return a1;
      }
    }

    else if (v4 == -1)
    {
      v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (*(&v8 + v3))(&v7, a1, a2);
      *(a1 + 24) = -1;
      return a1;
    }

    v7 = a1;
    v8 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_;
    v9 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_;
    (*(&v8 + v4))(&v7, a1, a2);
    return a1;
  }

  *a1 = 0;
  *(a1 + 24) = -1;
  v6 = *(a2 + 24);
  if (v6 != -1)
  {
    v7 = a1;
    v8 = std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
    v9 = std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>;
    (*(&v8 + v6))(&v7, a2);
    *(a1 + 24) = v6;
  }

  *(a1 + 32) = 1;
  return a1;
}

void DaleImage::getData(CFTypeRef *__return_ptr a1@<X8>, DaleImage *this@<X0>, uint64_t a3@<X1>, unint64_t a4@<X2>)
{
  v6 = this;
  *a1 = 0;
  v33 = 0;
  if (!a4 || (this = DaleImage::getSize(this), a4 + a3 > this))
  {
    LogInstance = ACFULogging::getLogInstance(this);
    v26 = DaleImage::sImageTypeToString(*(v6 + 2));
    ACFULogging::handleMessage(LogInstance, 2, "%s::%s: invalid arguments (offset: %zu, length: %zu) for image %s\n", "DaleImage", "getData", a3, a4, v26);
    return;
  }

  if ((*(v6 + 48) & 1) == 0)
  {
    v28 = ACFULogging::getLogInstance(this);
    v29 = "%s::%s: invalid (missing) image source for %s\n";
    goto LABEL_39;
  }

  v8 = *(v6 + 10);
  if (!v8)
  {
    v22 = *(v6 + 7);
    if (v22)
    {
LABEL_27:
      ACFUDataContainer::copyDirectData(&cf, v22);
      *a1 = cf;
      return;
    }

    v23 = DaleImage::load(v6);
    if (v23)
    {
      v22 = *(v6 + 7);
      if (v22)
      {
        goto LABEL_27;
      }

      v28 = ACFULogging::getLogInstance(0);
      v29 = "%s::%s: invalid image file container for %s\n";
    }

    else
    {
      v28 = ACFULogging::getLogInstance(v23);
      v29 = "%s::%s: failed to load image from file for %s\n";
    }

LABEL_39:
    v31 = DaleImage::sImageTypeToString(*(v6 + 2));
    ACFULogging::handleMessage(v28, 2, v29, "DaleImage", "getData", v31);
    return;
  }

  cf = 0xAAAAAAAAAAAAAAAALL;
  if (v8 != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v9 = (v6 + 16);
  v10 = *(v6 + 2);
  cf = v10;
  if (v10)
  {
    CFRetain(v10);
    v11 = cf;
    goto LABEL_17;
  }

  v12 = DaleImage::load(v6);
  if (!v12)
  {
    v30 = ACFULogging::getLogInstance(v12);
    DaleImage::sImageTypeToString(*(v6 + 2));
    ACFULogging::handleMessage(v30, 2, "%s::%s: failed to load image from data for %s\n");
    goto LABEL_35;
  }

  if (*(v6 + 10) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  if (&cf != v9)
  {
    v11 = *v9;
    if (*v9)
    {
      v13 = *v9;
      CFRetain(v11);
      v11 = v13;
    }

    v14 = cf;
    cf = v11;
    if (!v14)
    {
      goto LABEL_16;
    }

    CFRelease(v14);
  }

  v11 = cf;
LABEL_16:
  if (v11)
  {
LABEL_17:
    BytePtr = CFDataGetBytePtr(v11);
    v16 = operator new(0x18uLL);
    ACFUDataContainer::DirectDataRef::DirectDataRef(v16, BytePtr);
    v17 = v33;
    v33 = v16;
    if (v17)
    {
      v18 = MEMORY[0x1E69262B0]();
      operator delete(v18);
    }

    v19 = 1;
    v20 = cf;
    if (cf)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v27 = ACFULogging::getLogInstance(0);
  DaleImage::sImageTypeToString(*(v6 + 2));
  ACFULogging::handleMessage(v27, 2, "%s::%s: invalid image data for %s\n");
LABEL_35:
  v16 = 0;
  v19 = 0;
  v20 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v20);
  }

LABEL_21:
  if (v19)
  {
    v21 = *a1;
    *a1 = v16;
    if (!v21)
    {
      return;
    }

LABEL_30:
    v24 = MEMORY[0x1E69262B0](v21);
    operator delete(v24);
    return;
  }

  if (v16)
  {
    v21 = v16;
    goto LABEL_30;
  }
}

void sub_1E531CAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<ACFUDataContainer::DirectDataRef>::~unique_ptr[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

CFIndex DaleImage::getSize(DaleImage *this)
{
  if (*(this + 48) != 1)
  {
    return 0;
  }

  v1 = *(this + 10);
  if (v1)
  {
    if (v1 != 1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v2 = *(this + 2);
    if (v2)
    {
      CFRetain(v2);
      Length = CFDataGetLength(v2);
      CFRelease(v2);
      return Length;
    }

    return 0;
  }

  v5 = *(this + 7);
  if (!v5)
  {
    DaleImage::load(this);
    v5 = *(this + 7);
    if (!v5)
    {
      return 0;
    }
  }

  return MEMORY[0x1EEDED3C0](v5);
}

void sub_1E531CBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void DaleImage::~DaleImage(DaleImage *this)
{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }

    *(this + 10) = -1;
  }
}

{
  *this = &unk_1F5F04240;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    v3 = MEMORY[0x1E6926300]();
    operator delete(v3);
  }

  if (*(this + 48) == 1)
  {
    v4 = *(this + 10);
    if (v4 != -1)
    {
      v6[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v6[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (v6[v4])(&v5, this + 16);
    }
  }

  operator delete(this);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_(std::string **a1, __int128 *a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    v2->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

CFTypeRef _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__ctorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE19__generic_constructB8ne200100IRKNS0_18__copy_constructorISK_LNS0_6_TraitE1EEEEEvRSL_OT_EUlSU_E_JRKNS0_6__baseILSO_1EJSD_SJ_EEEEEEDcST_DpT0_(CFTypeRef **a1, CFTypeRef *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = *a2;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>::~__move_constructor[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t std::__optional_destruct_base<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,false>::~__optional_destruct_base[abi:ne200100](uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 != -1)
    {
      v4[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v4[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = result;
      (v4[v1])(&v3);
      result = v2;
    }

    *(result + 24) = -1;
  }

  return result;
}

__n128 std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>(__n128 **a1, __n128 *a2)
{
  v2 = *a1;
  result = *a2;
  v2[1].n128_u64[0] = a2[1].n128_u64[0];
  *v2 = result;
  *(a2 + 8) = 0uLL;
  a2->n128_u64[0] = 0;
  return result;
}

void **std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<void std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1>>(std::__variant_detail::__ctor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>>&,std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &&)::{lambda(std::__variant_detail::__move_constructor<std::__variant_detail::__traits<std::string,ctu::cf::CFSharedRef<__CFData const>>,(std::__variant_detail::_Trait)1> &)#1} &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,std::string,ctu::cf::CFSharedRef<__CFData const>> &&>(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  *v2 = *a2;
  *a2 = 0;
  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_(__n128 **a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  v5 = (*a1)[1].n128_u32[2];
  if (v5 == -1)
  {
    goto LABEL_7;
  }

  if (v5)
  {
    v9[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v9[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v9[v5])(&v8, v4);
LABEL_7:
    v4[1].n128_u32[2] = -1;
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    a3->n128_u64[0] = 0;
    v4[1].n128_u32[2] = 0;
    return result;
  }

  if (*(a2 + 23) < 0)
  {
    v6 = a2;
    operator delete(*a2);
    a2 = v6;
  }

  result = *a3;
  *(a2 + 16) = a3[1].n128_u64[0];
  *a2 = result;
  a3[1].n128_u8[7] = 0;
  a3->n128_u8[0] = 0;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISK_LNS0_6_TraitE1EEEEEvOT_EUlRSQ_OT0_E_JRNS0_6__baseILSO_1EJSD_SJ_EEEOSY_EEEDcSQ_DpT0_(uint64_t *a1, const void **a2, const void **a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_8;
  }

  if (v4 != 1)
  {
    v6 = a3;
    v8[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v8[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v8[v4])(&v7, v3);
    a3 = v6;
LABEL_8:
    *v3 = 0;
    *v3 = *a3;
    *a3 = 0;
    *(v3 + 24) = 1;
    return;
  }

  if (a2 != a3)
  {
    v5 = *a2;
    *a2 = 0;
    *a2 = *a3;
    *a3 = 0;
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t BBUEUR2Programmer::EUR2Item::EUR2Item(uint64_t a1, int a2, void *lpsrc)
{
  *(a1 + 8) = a2;
  *a1 = &unk_1F5F04278;
  *(a1 + 16) = 0;
  if (a2 != 8193)
  {
    if (a2 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x39u, "Assertion failure(false && Invalid BBU Programmer item type.)");
LABEL_11:
    }

    if (lpsrc)
    {
      goto LABEL_7;
    }

LABEL_9:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x3Cu, "Assertion failure(fImage && BBU Programmer item creation failed.)");
    goto LABEL_11;
  }

  if (!lpsrc)
  {
    goto LABEL_9;
  }

LABEL_7:
  *(a1 + 16) = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  return a1;
}

uint64_t BBUEUR2Programmer::BBUEUR2Programmer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = BBUProgrammer::BBUProgrammer(a1, a2, a3, a4);
  *v5 = &unk_1F5F036B8;
  v6 = capabilities::programmer::connectAttemptCount(v5);
  *(a1 + 68) = v6;
  v7 = capabilities::programmer::connectTimeout(v6);
  *(a1 + 72) = v7;
  *(a1 + 76) = capabilities::programmer::commandTimeout(v7);
  *(a1 + 65) = 0;
  *(a1 + 80) = 0;
  *a1 = &unk_1F5F042B0;
  v8 = pthread_mutex_init((a1 + 88), 0);
  *(a1 + 4284) = 0;
  *(a1 + 4292) = 0;
  if (capabilities::coredump::getPersonality(v8) == 3)
  {
    v9 = 0x100000;
  }

  else
  {
    v9 = 0x40000;
  }

  *(a1 + 4288) = v9;
  if ((TelephonyUtilRingBufferInitialize() & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 95, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x68u, "Assertion failure(success && Failed to initialize ring buffer.)");
  }

  return a1;
}

void sub_1E531D318(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  pthread_mutex_destroy((v1 + 88));
  BBUICEProgrammer::~BBUICEProgrammer(v1);
  _Unwind_Resume(a1);
}

void BBUEUR2Programmer::~BBUEUR2Programmer(BBUEUR2Programmer *this)
{
  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

{
  *this = &unk_1F5F042B0;
  pthread_mutex_destroy((this + 88));
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }

  operator delete(this);
}

uint64_t BBUEUR2Programmer::connectForImage_nl(uint64_t a1, int *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  BBUFeedback::handleBeginQuickStep(*(a1 + 8), "Waiting for Hello");
  v20 = -1431655766;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v4 = -8;
  do
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27 = v6;
    v28 = v6;
    v25 = v6;
    v26 = v6;
    v23 = v6;
    v24 = v6;
    v21 = v6;
    v22 = v6;
    if (ETLSAHCommandReceive() && ETLSAHCommandParseHello())
    {
      if (v20 != 256 && *(a1 + 4284) == 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v20;
      }

      *a2 = v8;
      if ((ETLSAHCommandCreateHelloResponse() & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0xAFu, "Assertion failure(success)");
      }

      if (ETLSAHCommandSend())
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_15;
      }
    }
  }

  while (!__CFADD__(v4++, 1));
  v10 = 3;
  v9 = 1;
LABEL_15:
  (*(**(a1 + 8) + 24))(*(a1 + 8), v10);
  if (v9)
  {
    goto LABEL_32;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_20;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    v11 = ETLSAHModeAsString();
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Hello received boot mode:  %s\n", v11);
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
    }
  }

LABEL_20:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (gBBULogVerbosity >= 1)
  {
    v12 = ETLSAHModeAsString();
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Hello response boot mode:  %s\n", v12);
  }

LABEL_23:
  v13 = HIBYTE(v19);
  if (v19 < 0)
  {
    v13 = v18;
  }

  if (v13)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        goto LABEL_32;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      p_p = &__p;
      if (v19 < 0)
      {
        p_p = __p;
      }

      _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Hello reserved fields:  %s\n", p_p);
    }
  }

LABEL_32:
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  return v10;
}

void sub_1E531D9A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR2Programmer::disconnect(BBUEUR2Programmer *this)
{
  result = BBUProgrammer::disconnect(this);
  if (!result && *(this + 65) == 1)
  {
    *(this + 65) = 0;
  }

  return result;
}

uint64_t BBUEUR2Programmer::disconnectForImage_nl(BBUFeedback **this)
{
  BBUFeedback::handleBeginQuickStep(this[1], "Disconnecting");
  if (ETLSAHCommandCreateDone())
  {
    ETLSAHCommandSend();
  }

  if (!ETLSAHCommandReceive() || !ETLSAHCommandParseDoneResponse())
  {
    v2 = 3;
    goto LABEL_10;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v2 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v2 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_10;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(13, 0, "BBUProgrammer", &str_8_3, "Status was %u\n", -1431655766);
    v2 = 0;
  }

LABEL_10:
  (*(*this[1] + 24))(this[1], v2);
  return v2;
}

uint64_t BBUEUR2Programmer::gatherPersonalizationParameters(unsigned int (***this)(BBUFeedback **, int *), uint64_t a2, char a3, unsigned int *a4, BBUPersonalizationParameters *a5)
{
  if (a3)
  {
    v30 = -1431655766;
    BBUFeedback::handleBeginPhase(this[1], "Gathering Personalization parameters...");
    if ((*this)[23](this, &v30))
    {
      Nonce_nl = 48;
    }

    else if (v30 == 2)
    {
      Nonce_nl = 28;
    }

    else if (v30 == 256)
    {
      v11 = operator new(0x20uLL);
      Nonce_nl = BBUEUR2Programmer::handleMaverickGetNonce_nl(this, a2, v11);
      if (!Nonce_nl)
      {
        v12 = operator new(0x10uLL);
        *v12 = &unk_1F5F04B68;
        v12[1] = 0;
        v12[1] = CFDataCreate(*MEMORY[0x1E695E480], v11 + 4, 20);
        Nonce_nl = BBUEURPersonalizationParameters::EURChipID::createFromChipID(*(v11 + 7));
        v13 = BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber((v11 + 24), 0x20);
        *a4 = *v11;
        operator delete(v11);
        v14 = a5;
        v15 = *(a5 + 1);
        if (v15)
        {
          (*(*v15 + 8))(*(a5 + 1));
          v14 = a5;
        }

        *(v14 + 1) = v12;
        v16 = *(v14 + 2);
        if (v16)
        {
          (*(*v16 + 8))(*(v14 + 2));
          v14 = a5;
        }

        *(v14 + 2) = Nonce_nl;
        (*(*v14 + 16))(v14, v13);
        v17 = this[1];
        (*(*v12 + 24))(__p, v12);
        if (v29 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        BBUFeedback::handleComment(v17, "   NONCE: %s", v18);
        if (v29 < 0)
        {
          operator delete(__p[0]);
        }

        if (v13)
        {
          v19 = this[1];
          (*(*v13 + 24))(__p, v13);
          if (v29 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          v22 = BBUpdaterCommon::redactedString(v21, v20);
          BBUFeedback::handleComment(v19, "   SNUM: 0x%s", v22);
          v23 = a5;
          if (v29 < 0)
          {
            operator delete(__p[0]);
            v23 = a5;
          }

          v24 = this[1];
          v25 = (*(**(v23 + 3) + 24))(*(v23 + 3));
          BBUFeedback::handleComment(v24, "   CertID: %u", v25);
        }

        if (Nonce_nl)
        {
          v26 = this[1];
          v27 = (*(*Nonce_nl + 24))(Nonce_nl);
          BBUFeedback::handleComment(v26, "   CHIPID: 0x%08x", v27);
          Nonce_nl = 0;
        }
      }
    }

    else
    {
      Nonce_nl = 12;
    }

    (*(*this[1] + 2))(this[1], Nonce_nl);
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      Nonce_nl = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return Nonce_nl;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      Nonce_nl = 0;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
      {
        return Nonce_nl;
      }
    }

    if (gBBULogVerbosity >= 1)
    {
      _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Not in restore mode - skipping gathering Personalization parameters...\n");
      return 0;
    }
  }

  return Nonce_nl;
}

void sub_1E531DFD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEUR2Programmer::handleMaverickGetNonce_nl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = operator new[](0x400uLL);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
    {
      goto LABEL_5;
    }
  }

  if (gBBULogVerbosity >= 1)
  {
    _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Starting Maverick Protocol\n");
  }

LABEL_5:
  if (ETLSAHCommandReceive() && ETLSAHCommandParseMaverickEraseQuery() && ETLSAHCommandCreateMaverickEraseResponse())
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
      {
LABEL_10:
        if (gBBULogVerbosity >= 1)
        {
          _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Sending Erase Response: Length %u Type %u  Erase EFS %u\n", v5[1], *v5, v3);
        }
      }
    }

    ETLSAHCommandSend();
    *(a1 + 65) = v3;
  }

  if (!ETLSAHCommandReceive())
  {
    v6 = 3;
    goto LABEL_22;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) != 0)
    {
LABEL_16:
      if (gBBULogVerbosity >= 1)
      {
        _BBULog(13, 1, "BBUProgrammer", &str_8_3, "Checking Manifest Request: Length %u Type %u\n", v5[1], *v5);
      }
    }
  }

  if (ETLSAHCommandParseMaverickRootManifestQuery())
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

LABEL_22:
  operator delete[](v5);
  return v6;
}

uint64_t BBUEUR2Programmer::program(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, int a11, int a12)
{
  pthread_mutex_lock((a1 + 88));
  *(a1 + 4284) = a11;
  pthread_mutex_unlock((a1 + 88));
  if (BBUProgrammer::addItemsFromList(a1, a6))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Eureka/BBUEUR2Programmer.cpp", 0x17Fu, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to add Programmer items from list.)");
  }

  v19 = (*(*a1 + 160))(a1, a2, a3, a4, a5, a7, a9, a10, a12);
  pthread_mutex_lock((a1 + 88));
  if (a6)
  {
    if (a6[2])
    {
      v20 = a6[1];
      v21 = *(*a6 + 8);
      v22 = *v20;
      *(v22 + 8) = v21;
      *v21 = v22;
      a6[2] = 0;
      if (v20 != a6)
      {
        do
        {
          v23 = v20[1];
          operator delete(v20);
          v20 = v23;
        }

        while (v23 != a6);
      }
    }

    operator delete(a6);
  }

  pthread_mutex_unlock((a1 + 88));
  return v19;
}

void sub_1E531E3DC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  pthread_mutex_unlock((v1 + 88));
  _Unwind_Resume(a1);
}

uint64_t BBUEUR2Programmer::sendImage_nl(BBUFeedback **a1, void *lpsrc, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = *MEMORY[0x1E69E9840];
  v31 = -1431655766;
  if (!lpsrc)
  {
    v15 = 0;
    (*(*MEMORY[0x10] + 16))(MEMORY[0x10]);
    if (a5)
    {
      goto LABEL_3;
    }

    while (1)
    {
LABEL_9:
      v18 = (*(*a1 + 23))(a1, &v31);
      if (v18)
      {
        return v18;
      }

      if (v31 != 256)
      {
        if (v31 == 2)
        {
          return 28;
        }

        v19 = v15[2];
        if (v19 == 0x2000)
        {
          v20 = 2;
          v21 = a1[1];
          if (*(v21 + 44) == 1)
          {
LABEL_15:
            *(v21 + 10) = v20;
          }

LABEL_16:
          v22 = 1;
        }

        else
        {
          if (v19 == 8193)
          {
            v20 = 5;
            v21 = a1[1];
            if (*(v21 + 44) == 1)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v22 = 0;
        }

        v17 = (*(*a1 + 22))(a1, *(v15 + 2), v22);
        if (v22)
        {
          BBUFeedback::endProgressBarItem(a1[1]);
        }

        v27 = 1;
        if (v17)
        {
          return v17;
        }

        goto LABEL_40;
      }

      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v32[0] = v23;
      v32[1] = v23;
      Nonce_nl = BBUEUR2Programmer::handleMaverickGetNonce_nl(a1, a7, v32);
      if (Nonce_nl)
      {
        v17 = Nonce_nl;
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
          {
            goto LABEL_39;
          }
        }

        v25 = "failed getting nonce\n";
        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v26 = (*(*a1 + 24))(a1, a3, LODWORD(v32[0]), a6, a7, 0, a8);
        if (v26)
        {
          v17 = v26;
          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
            {
              goto LABEL_39;
            }
          }

          else
          {
            dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
            {
              goto LABEL_39;
            }
          }

          v25 = "failed handling sahara send hashes command\n";
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v17 = (*(*a1 + 25))(a1);
          if (!v17)
          {
            goto LABEL_39;
          }

          if (gBBULogMaskGet(void)::once == -1)
          {
            if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
            {
              goto LABEL_39;
            }

LABEL_37:
            v25 = "failed handling maverick end\n";
            if (gBBULogVerbosity < 0)
            {
              goto LABEL_39;
            }

LABEL_38:
            _BBULog(5, 0, "BBUProgrammer", &str_8_3, v25);
            goto LABEL_39;
          }

          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
          {
            goto LABEL_37;
          }
        }
      }

LABEL_39:
      v27 = 0;
      if (v17)
      {
        return v17;
      }

LABEL_40:
      v18 = BBUEUR2Programmer::disconnectForImage_nl(a1);
      if (v18)
      {
        v28 = 1;
      }

      else
      {
        v28 = v27;
      }

      if (v28 == 1)
      {
        return v18;
      }
    }
  }

  (*(**(v15 + 2) + 16))(*(v15 + 2));
  if ((a5 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v16 = (*(*a1 + 24))(a1, a3, a4, a6, a7, 1, a8);
  if (v16)
  {
    v17 = v16;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return v17;
      }

      goto LABEL_6;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) != 0)
    {
LABEL_6:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(5, 0, "BBUProgrammer", &str_8_3, "failed handling sahara send hashes command\n");
      }
    }

    return v17;
  }

  v29 = (*(*a1 + 25))(a1);
  if (v29)
  {
    v17 = v29;
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return v17;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 0x20) == 0)
      {
        return v17;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(5, 0, "BBUProgrammer", &str_8_3, "failed handling maverick end\n");
    }

    return v17;
  }

  return BBUEUR2Programmer::disconnectForImage_nl(a1);
}