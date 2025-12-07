uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t adm::utility::convertFromDictionary(adm::utility *this, NSDictionary *a2, HostDescription *a3)
{
  v4 = this;
  v5 = [(adm::utility *)v4 objectForKeyedSubscript:@"client bundle identifier"];
  v6 = v5;
  if (v5)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, [v5 UTF8String]);
    if (SHIBYTE(a2[2].super.isa) < 0)
    {
      operator delete(a2->super.isa);
    }

    *&a2->super.isa = v10;
    a2[2].super.isa = v11;
  }

  v7 = [(adm::utility *)v4 objectForKeyedSubscript:@"client unique identifier"];
  v8 = v7;
  if (v7)
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, [v7 UTF8String]);
    if (SHIBYTE(a2[5].super.isa) < 0)
    {
      operator delete(a2[3].super.isa);
    }

    *&a2[3].super.isa = v10;
    a2[5].super.isa = v11;
  }

  return 1;
}

void sub_223B94554(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int16 a9)
{
  __cxa_begin_catch(a1);
  v9 = get_adm_log_object();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    a9 = 0;
    _os_log_error_impl(&dword_223B4A000, v9, OS_LOG_TYPE_ERROR, "Exception from converting the host description dictionary!", &a9, 2u);
  }

  __cxa_end_catch();
  JUMPOUT(0x223B94538);
}

id anonymous namespace::createFormatDictFromASBD(_anonymous_namespace_ *this, const StreamDescription *a2)
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*this];
  [v3 setObject:v4 forKeyedSubscript:@"sample rate"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(this + 7)];
  [v3 setObject:v5 forKeyedSubscript:@"channels"];

  v6 = 0;
  if (*(this + 2) == 1819304813 && *(this + 5) == 1)
  {
    v7 = *(this + 6);
    if (v7 != *(this + 4) || (v8 = *(this + 8), v7 < v8 >> 3) || (v9 = *(this + 7)) == 0 || (v10 = *(this + 3), (v10 & 0x20) == 0) && (v16 = v7 == v7 / v9 * v9, v7 /= v9, !v16))
    {
LABEL_13:
      v6 = 0;
      goto LABEL_14;
    }

    v6 = 0;
    if ((v10 & 2) == 0 && 8 * v7 == v8)
    {
      if (v10)
      {
        if (v7 == 4)
        {
          v14 = 1;
        }

        else
        {
          v14 = 4 * (v7 == 8);
        }

        if ((v10 & 0x1F84) != 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = v14;
        }

        goto LABEL_14;
      }

      if ((v10 & 4) != 0)
      {
        v15 = (v10 >> 7) & 0x3F;
        if (v15 == 24 && v7 == 4)
        {
          v6 = 3;
        }

        else if (v15 || v7 != 4)
        {
          v16 = v7 == 2 && v15 == 0;
          if (v16)
          {
            v6 = 2;
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 5;
        }

        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [v3 setObject:v11 forKeyedSubscript:@"common pcm format"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:(*(this + 3) & 0x20) == 0];
  [v3 setObject:v12 forKeyedSubscript:@"is interleaved"];

  return v3;
}

id adm::utility::convertToDictionary(uint64_t a1)
{
  v2 = objc_opt_new();
  if (*(a1 + 8) == 1)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*a1];
    [v2 setObject:v3 forKeyedSubscript:@"dsp processing latency samples"];
  }

  return v2;
}

id adm::utility::convertToDictionary(adm::utility *this, const adm::NegotiateResponse *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v34 = v3;
  v35 = objc_opt_new();
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((*(this + 1) - *this) >> 3)];
  v6 = *this;
  v7 = *(this + 1);
  while (v6 != v7)
    v8 = {;
    [v5 addObject:v8];

    v6 = (v6 + 40);
  }

  [v35 setObject:v5 forKeyedSubscript:@"io context supported input formats"];

  v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((*(this + 4) - *(this + 3)) >> 3)];
  v11 = *(this + 3);
  v12 = *(this + 4);
  while (v11 != v12)
    v13 = {;
    [v10 addObject:v13];

    v11 = (v11 + 40);
  }

  [v35 setObject:v10 forKeyedSubscript:@"io context supported output formats"];

  [v3 setObject:v35 forKeyedSubscript:@"io context configuration"];
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0x8E38E38E38E38E39 * ((*(this + 7) - *(this + 6)) >> 3)];
  v16 = *(this + 6);
  v17 = *(this + 7);
  if (v16 != v17)
  {
    *&v15 = 67109120;
    v33 = v15;
    do
    {
      v18 = objc_opt_new();
      v19 = v16;
      if (*(v16 + 23) < 0)
      {
        v19 = *v16;
      }

      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:{v19, v33}];
      [v18 setObject:v20 forKeyedSubscript:@"device uid"];

      if (*(v16 + 32) == 1)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithDouble:v16[3]];
        [v18 setObject:v21 forKeyedSubscript:@"sample rate"];
      }

      if (*(v16 + 41) == 1)
      {
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v16 + 40)];
        [v18 setObject:v22 forKeyedSubscript:@"reference stream enablement"];
      }

      if (*(v16 + 48) == 1)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v16 + 11)];
        [v18 setObject:v23 forKeyedSubscript:@"reference stream channel count"];
      }

      if (*(v16 + 53) == 1)
      {
        v24 = MEMORY[0x277CCACA8];
        v25 = *(v16 + 52);
        if (v25 >= 4)
        {
          v27 = get_adm_log_object();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = v33;
            v39 = v25;
            _os_log_error_impl(&dword_223B4A000, v27, OS_LOG_TYPE_ERROR, "Unknown Bluetooth format %d - use Automatic instead", buf, 8u);
          }

          v26 = "automatic";
        }

        else
        {
          v26 = (&off_2784F02F0)[*(v16 + 52)];
        }

        std::string::basic_string[abi:ne200100]<0>(__p, v26);
        if (v37 >= 0)
        {
          v28 = __p;
        }

        else
        {
          v28 = __p[0];
        }

        v29 = [v24 stringWithUTF8String:v28];
        [v18 setObject:v29 forKeyedSubscript:@"bluetooth format"];

        if (v37 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (*(v16 + 60) == 1)
      {
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v16 + 14)];
        [v18 setObject:v30 forKeyedSubscript:@"mic processing mode"];
      }

      if (*(v16 + 68) == 1)
      {
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v16 + 16)];
        [v18 setObject:v31 forKeyedSubscript:@"mic processing kind"];
      }

      [v14 addObject:v18];

      v16 += 9;
    }

    while (v16 != v17);
  }

  [v34 setObject:v14 forKeyedSubscript:@"device configurations"];

  return v34;
}

void sub_223B94E58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(CA::PropertyAddress)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(CA::PropertyAddress)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::__tree<std::__value_type<unsigned int,std::atomic<float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::atomic<float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::atomic<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t **a1, unsigned int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void std::__tree<std::__value_type<unsigned int,std::atomic<float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::atomic<float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::atomic<float>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::atomic<float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::atomic<float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::atomic<float>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::atomic<float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::atomic<float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::atomic<float>>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t adm::CustomPropertyManager::CustomPropertyManager(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(CA::PropertyAddress)>::__value_func[abi:ne200100](v11, a2);
  v3 = dispatch_queue_create("com.apple.coreaudio.ADMCustomPropertyManager", 0);
  object = v3;
  std::__function::__value_func<void ()(CA::PropertyAddress)>::__value_func[abi:ne200100](a1, v11);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  MEMORY[0x223DF3E40](a1 + 40, &object);
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v4 = &qword_28133B538;
  v5 = 144;
  do
  {
    v10 = v4;
    v6 = *(v4 + 1);
    v7 = std::__tree<std::__value_type<unsigned int,std::atomic<float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::atomic<float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::atomic<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 56), *v4, &v10);
    v4 += 6;
    atomic_store(v6, v7 + 8);
    v5 -= 48;
  }

  while (v5);
  if (object)
  {
    dispatch_release(object);
  }

  std::__function::__value_func<void ()(CA::PropertyAddress)>::~__value_func[abi:ne200100](v11);
  return a1;
}

void sub_223B951B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 + 32);
  if (v13)
  {
    dispatch_release(v13);
  }

  std::__function::__value_func<void ()(CA::PropertyAddress)>::~__value_func[abi:ne200100](v11);
  if (object)
  {
    dispatch_release(object);
  }

  std::__function::__value_func<void ()(CA::PropertyAddress)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

atomic_uint *adm::CustomPropertyManager::onGraphParameterUpdate(void *a1, unsigned int *a2, float a3)
{
  result = std::map<unsigned int,std::atomic<float>>::at(a1[8], a2[10]);
  v7 = COERCE_FLOAT(atomic_exchange(result, LODWORD(a3)));
  if (v7 != a3 && a1[3])
  {
    if (a2[10] == 1936748642)
    {
      kdebug_trace();
    }

    v10 = **a2;
    v11 = *(*a2 + 8);
    result = *MEMORY[0x277D7F098];
    if (*MEMORY[0x277D7F098])
    {
      v8 = a2[10];
      v9 = caulk::rt_safe_memory_resource::rt_allocate(result);
      *(v9 + 16) = 0;
      *(v9 + 24) = a1;
      *(v9 + 32) = v10;
      *(v9 + 40) = v11;
      *(v9 + 44) = v8;
      *(v9 + 48) = v7;
      *(v9 + 52) = a3;
      *v9 = &unk_28371A278;
      *(v9 + 8) = 0;
      return caulk::concurrent::messenger::enqueue((a1 + 5), v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t *std::map<unsigned int,std::atomic<float>>::at(uint64_t *a1, unsigned int a2)
{
  if (!a1)
  {
LABEL_7:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v2 = *(a1 + 7);
      if (v2 <= a2)
      {
        break;
      }

      a1 = *a1;
      if (!a1)
      {
        goto LABEL_7;
      }
    }

    if (v2 >= a2)
    {
      return a1 + 4;
    }

    a1 = a1[1];
    if (!a1)
    {
      goto LABEL_7;
    }
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::perform(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a1;
  v2 = *(a1 + 24);
  adm_log_object = get_adm_log_object();
  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 44);
    v5 = bswap32(v4);
    *&buf[1] = v5;
    if ((v5 - 32) > 0x5E || ((v5 >> 8) - 32) > 0x5E || ((v5 << 8 >> 24) - 32) > 0x5E || ((v5 >> 24) - 32) > 0x5E)
    {
      std::to_string(&v13, v4);
    }

    else
    {
      strcpy(&buf[5], "'");
      buf[0] = 39;
      std::string::basic_string[abi:ne200100]<0>(&v13, buf);
    }

    v6 = &v13;
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 52);
    *buf = 136315650;
    *&buf[4] = v6;
    v15 = 2048;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "AudioDSPManager parameterID [%s] value changed %f -> %f", buf, 0x20u);
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  v9 = *(a1 + 40);
  *buf = *(a1 + 32);
  *&buf[8] = v9;
  v10 = *(v2 + 24);
  if (!v10)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v10 + 48))(v10, buf);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v12);
}

void sub_223B95520(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784F01E8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void adm::CustomPropertyManager::attachToNode(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = adm::CustomPropertyManager::kParameterMappings;
  v7 = 144;
  do
  {
    adm::CustomPropertyManager::onGraphParameterUpdate(a1, v6, *(v6 + 11));
    v6 += 6;
    v7 -= 48;
  }

  while (v7);
  v9 = *a2;
  v8 = *(a2 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
  }

  v10 = a1[11];
  a1[10] = v9;
  a1[11] = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (*a2)
  {
    v38 = a1;
    DSP = adm::graph::DSPNode::getDSP(*a2);
    (*(*DSP + 48))(&v46);
    v12 = adm::graph::DSPNode::getDSP(*a2);
    (*(*v12 + 56))(&v44);
    v13 = 0;
    __p = 0;
    v42 = 0;
    v43 = 0;
    v39 = 0uLL;
    v40 = 0;
    while (1)
    {
      v14 = &adm::CustomPropertyManager::kParameterMappings[v13];
      v16 = adm::CustomPropertyManager::kParameterMappings[v13 + 2];
      v15 = adm::CustomPropertyManager::kParameterMappings[v13 + 3];
      while (1)
      {
        if (v16 == v15)
        {
          goto LABEL_34;
        }

        v17 = *(v16 + 8);
        if (v17 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v18 = *v16;
        if (v17 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = *(v16 + 8);
        if (v17)
        {
          memmove(&__dst, v18, v17);
        }

        __dst.__r_.__value_.__s.__data_[v17] = 0;
        v19 = std::__tree<std::string>::find<std::string>(a3, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (a3 + 8 != v19)
        {
          break;
        }

        v16 += 16;
      }

      v20 = v44;
      if (v44 != v45)
      {
        while (*v20 != *(v14 + 10))
        {
          if (++v20 == v45)
          {
            goto LABEL_27;
          }
        }
      }

      if (v20 != v45)
      {
        break;
      }

LABEL_27:
      v22 = v46;
      if (v46 != v47)
      {
        while (*v22 != *(v14 + 10))
        {
          if (++v22 == v47)
          {
            goto LABEL_36;
          }
        }
      }

      if (v22 != v47)
      {
        p_p = &v39;
        goto LABEL_33;
      }

LABEL_36:
      adm_log_object = get_adm_log_object();
      if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(v14 + 10);
        v25 = bswap32(v24);
        *&buf[1] = v25;
        if ((v25 - 32) > 0x5E || ((v25 >> 8) - 32) > 0x5E || ((v25 << 8 >> 24) - 32) > 0x5E || ((v25 >> 24) - 32) > 0x5E)
        {
          std::to_string(&__dst, v24);
        }

        else
        {
          strcpy(&buf[5], "'");
          buf[0] = 39;
          std::string::basic_string[abi:ne200100]<0>(&__dst, buf);
        }

        p_dst = &__dst;
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = p_dst;
        _os_log_impl(&dword_223B4A000, adm_log_object, OS_LOG_TYPE_DEFAULT, "warning: node missing expected parameter %s", buf, 0xCu);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }

LABEL_34:
      v13 += 6;
      if (v13 == 18)
      {
        if (__p != v42)
        {
          __p = 0;
          v42 = 0;
          v43 = 0;
          v49 = 0;
          operator new();
        }

        v27 = *(&v39 + 1);
        v28 = v39;
        if (v39 != *(&v39 + 1))
        {
          v29 = 0;
          v30 = 0;
          while (1)
          {
            *buf = *v28;
            __dst.__r_.__value_.__r.__words[0] = buf;
            v31 = std::__tree<std::__value_type<unsigned int,std::atomic<float>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::atomic<float>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::atomic<float>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v38 + 7, *buf, &__dst) + 4;
            v32 = v30 - v29;
            v33 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3);
            v34 = v33 + 1;
            if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              break;
            }

            if (0x5555555555555556 * (-v29 >> 3) > v34)
            {
              v34 = 0x5555555555555556 * (-v29 >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * (-v29 >> 3) >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
            }

            v36 = 24 * v33;
            *v36 = *buf;
            *(v36 + 8) = v31;
            *(v36 + 16) = 0;
            *(v36 + 20) = 0;
            v30 = 24 * v33 + 24;
            v37 = (v36 + 24 * (v32 / -24));
            memcpy(v37, v29, v32);
            if (v29)
            {
              operator delete(v29);
            }

            v29 = v37;
            if (++v28 == v27)
            {
              operator new();
            }
          }

          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        if (v39)
        {
          operator delete(v39);
        }

        if (__p)
        {
          operator delete(__p);
        }

        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v46)
        {
          v47 = v46;
          operator delete(v46);
        }

        return;
      }
    }

    p_p = &__p;
LABEL_33:
    std::vector<unsigned int>::push_back[abi:ne200100](p_p, v14 + 10);
    goto LABEL_34;
  }
}

void sub_223B95C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](va);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<anonymous namespace::ParameterStorageReader>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3adm21CustomPropertyManager12attachToNodeERKNSt3__110shared_ptrINS_5graph7DSPNodeEEERKNS1_3setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessISE_EENSC_ISE_EEEEE3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(void *result)
{
  v1 = result[1];
  v2 = result[2];
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v1 + 16);
      v5 = *(v1 + 20);
      v6 = COERCE_FLOAT(atomic_load(*(v1 + 8)));
      *(v1 + 16) = v6;
      *(v1 + 20) = 1;
      if ((v5 & 1) == 0 || v4 != v6)
      {
        DSP = adm::graph::DSPNode::getDSP(v3[4]);
        v8.n128_u64[0] = 0;
        if (*(v1 + 20) == 1)
        {
          v8.n128_u32[0] = *(v1 + 16);
        }

        result = (*(*DSP + 40))(v9, v8);
      }

      v1 += 24;
    }

    while (v1 != v2);
  }

  return result;
}

void std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void *std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__clone(void *result, void *a2)
{
  a2[1] = 0;
  *a2 = &unk_28371A1F8;
  a2[2] = 0;
  a2[3] = 0;
  v2 = result[1];
  v3 = result[2];
  if (v3 != v2)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3);
    if (v4 < 0xAAAAAAAAAAAAAABLL)
    {
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  a2[4] = result[4];
  return result;
}

void sub_223B96158(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_223B96260(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[2] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_28371A1F8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x223DF43A0);
}

void *std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_2>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_28371A1F8;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN3adm21CustomPropertyManager12attachToNodeERKNSt3__110shared_ptrINS_5graph7DSPNodeEEERKNS1_3setINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_4lessISE_EENSC_ISE_EEEEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint *std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(atomic_uint *result)
{
  v1 = *(result + 2);
  v2 = *(result + 3);
  if (v1 != v2)
  {
    v3 = result;
    v4 = *(result + 1);
    do
    {
      v5 = *v1;
      DSP = adm::graph::DSPNode::getDSP(*(v3 + 5));
      result = (*(*DSP + 32))(v10);
      v7 = *v10;
      if (!v11)
      {
        v7 = 0.0;
      }

      v8 = 144;
      v9 = adm::CustomPropertyManager::kParameterMappings;
      while (v9[10] != v5)
      {
        v9 += 12;
        v8 -= 48;
        if (!v8)
        {
          goto LABEL_10;
        }
      }

      result = adm::CustomPropertyManager::onGraphParameterUpdate(v4, v9, v7);
LABEL_10:
      ++v1;
    }

    while (v1 != v2);
  }

  return result;
}

void std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t *std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_28371A178;
  a2[1] = v4;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2 + 2, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
  a2[5] = *(a1 + 40);
  return result;
}

uint64_t *std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_223B9658C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<float>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
}

void std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_28371A178;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x223DF43A0);
}

void *std::__function::__func<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1,std::allocator<adm::CustomPropertyManager::attachToNode(std::shared_ptr<adm::graph::DSPNode> const&,std::set<std::string> const&)::$_1>,void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__func(void *a1)
{
  *a1 = &unk_28371A178;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void adm::CustomPropertyManager::getCustomPropertyList(adm::CustomPropertyManager *this)
{
  v1 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v2 = *MEMORY[0x277CBED28];
  v3 = *MEMORY[0x277CBED10];
  do
  {
    applesauce::CF::TypeRef::TypeRef(&p_valuePtr, "property selector");
    v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v31)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::TypeRef::TypeRef(&v32, "property scope");
    LODWORD(valuePtr) = *(v4 + 1);
    if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v22, "Could not construct");
      __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    applesauce::CF::TypeRef::TypeRef(&v34, "property element");
    LODWORD(valuePtr) = *(v4 + 2);
    if (!CFNumberCreate(0, kCFNumberIntType, &valuePtr))
    {
      v20 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v20, "Could not construct");
      __cxa_throw(v20, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v5 = *(v4 + 2);
    applesauce::CF::TypeRef::TypeRef(&v36, "property data type");
    applesauce::CF::TypeRef::TypeRef(&v37, v5);
    v6 = *(v4 + 4);
    applesauce::CF::TypeRef::TypeRef(&v38, "property qualifier data type");
    applesauce::CF::TypeRef::TypeRef(&v39, v6);
    applesauce::CF::TypeRef::TypeRef(v40, "property is invariant");
    v40[1] = v3;
    LODWORD(v6) = v4[48];
    applesauce::CF::TypeRef::TypeRef(v41, "property is settable");
    if (v6)
    {
      v7 = v3;
    }

    else
    {
      v7 = v2;
    }

    v42 = v7;
    v25[0] = &p_valuePtr;
    v25[1] = 7;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v25);
    v9 = CFDictionaryRef;
    v26 = CFDictionaryRef;
    v10 = v28;
    if (v28 >= v29)
    {
      v12 = (v28 - v27) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
      }

      v13 = (v29 - v27) >> 2;
      if (v13 <= v12 + 1)
      {
        v13 = v12 + 1;
      }

      if (v29 - v27 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      v47 = &v27;
      if (v14)
      {
        std::allocator<applesauce::CF::DictionaryRef>::allocate_at_least[abi:ne200100](v14);
      }

      valuePtr = 0;
      v44 = (8 * v12);
      v46 = 0;
      *v44 = v9;
      v26 = 0;
      v45 = 8 * v12 + 8;
      std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(&v27, &valuePtr);
      v11 = v28;
      std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&valuePtr);
    }

    else
    {
      *v28 = CFDictionaryRef;
      v11 = v10 + 1;
      v26 = 0;
    }

    v15 = 0;
    v28 = v11;
    do
    {
      v16 = *(&v42 + v15);
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = *&v41[v15];
      if (v17)
      {
        CFRelease(v17);
      }

      v15 -= 16;
    }

    while (v15 != -112);
    v1 += 56;
  }

  while (v1 != 224);
  applesauce::CF::TypeRef::TypeRef(&valuePtr, "custom property info array");
  v18 = v28 - v27;
  if (v28 != v27)
  {
    if (!((v18 >> 3) >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](v18 >> 3);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }

  v19 = CFArrayCreate(0, 0, 0, MEMORY[0x277CBF128]);
  if (!v19)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
    __cxa_throw(v23, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v44 = v19;
  p_valuePtr = &valuePtr;
  v31 = 1;
  *this = applesauce::CF::details::make_CFDictionaryRef(&p_valuePtr);
  if (v44)
  {
    CFRelease(v44);
  }

  if (valuePtr)
  {
    CFRelease(valuePtr);
  }

  p_valuePtr = &v27;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&p_valuePtr);
}

void sub_223B96BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, __int16 *a23)
{
  __cxa_free_exception(v24);
  if (v23)
  {
    operator delete(v23);
  }

  applesauce::CF::TypeRef::~TypeRef((v25 - 136));
  a23 = &a18;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRef::TypeRef(applesauce::CF::TypeRef *this, char *a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, a2);
  if ((v9 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v4 = v9;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = CFStringCreateWithBytes(0, v3, v4, 0x8000100u, 0);
  *this = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return this;
}

void sub_223B96E64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v15);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFDictionaryRef applesauce::CF::details::make_CFDictionaryRef(uint64_t a1)
{
  v2 = *(a1 + 8);
  keys = 0;
  v32 = 0;
  v33 = 0;
  std::vector<void const*>::reserve(&keys, v2);
  values = 0;
  v29 = 0;
  v30 = 0;
  std::vector<void const*>::reserve(&values, v2);
  v3 = *(a1 + 8);
  v4 = keys;
  v5 = values;
  if (v3)
  {
    v6 = *a1;
    v26 = v2;
    v27 = *a1 + 16 * v3;
    v7 = v32;
    v8 = v33;
    v10 = v29;
    v9 = v30;
    do
    {
      v11 = *v6;
      if (v7 >= v8)
      {
        v12 = v7 - v4;
        v13 = (v7 - v4) >> 3;
        v14 = v13 + 1;
        if ((v13 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        if ((v8 - v4) >> 2 > v14)
        {
          v14 = (v8 - v4) >> 2;
        }

        if (v8 - v4 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = (8 * v13);
        v8 = 0;
        *v16 = v11;
        v7 = (v16 + 1);
        memcpy(0, v4, v12);
        if (v4)
        {
          operator delete(v4);
        }

        v4 = 0;
      }

      else
      {
        *v7 = v11;
        v7 += 8;
      }

      v17 = v6[1];
      if (v10 >= v9)
      {
        v18 = v10 - v5;
        v19 = (v10 - v5) >> 3;
        v20 = v19 + 1;
        if ((v19 + 1) >> 61)
        {
          keys = v4;
          values = v5;
          std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
        }

        if ((v9 - v5) >> 2 > v20)
        {
          v20 = (v9 - v5) >> 2;
        }

        if (v9 - v5 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          std::allocator<void const*>::allocate_at_least[abi:ne200100](v21);
        }

        v22 = (8 * v19);
        v9 = 0;
        *v22 = v17;
        v10 = (v22 + 1);
        memcpy(0, v5, v18);
        if (v5)
        {
          operator delete(v5);
        }

        v5 = 0;
      }

      else
      {
        *v10 = v17;
        v10 += 8;
      }

      v6 += 2;
    }

    while (v6 != v27);
    v32 = v7;
    v33 = v8;
    v30 = v9;
    keys = v4;
    values = v5;
    v29 = v10;
    v2 = v26;
  }

  v23 = CFDictionaryCreate(0, v4, v5, v2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v23)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  return v23;
}

void sub_223B97114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  __cxa_free_exception(v14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

void applesauce::CF::TypeRefPair::~TypeRefPair(applesauce::CF::TypeRefPair *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void std::vector<void const*>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<void const*>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<std::__fs::filesystem::path>::__throw_length_error[abi:ne200100]();
  }
}

void std::allocator<void const*>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
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

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void adm::CustomPropertyManager::getCustomProperty(applesauce::CF *a1, uint64_t a2, _DWORD *a3, CFDataRef *a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = *a4;
  if (*a3 == 1684500589)
  {
    if (v7 && CFDataGetLength(*a4) == 4)
    {
      if (*a4)
      {
        v13 = *CFDataGetBytePtr(*a4);
        v14 = *(a2 + 88);
        if (v14)
        {
          v10 = std::__shared_weak_count::lock(v14);
          if (v10)
          {
            v15 = *(a2 + 80);
            if (v15)
            {
              DSP = adm::graph::DSPNode::getDSP(v15);
              (*(*DSP + 32))(&v46);
              v17 = v46.__r_.__value_.__s.__data_[16];
              adm_log_object = get_adm_log_object();
              v19 = adm_log_object;
              if (v17 == 1)
              {
                if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
                {
                  caulk::string_from_4cc(&v52, v13);
                  if ((v46.__r_.__value_.__s.__data_[16] & 1) == 0)
                  {
                    std::__throw_bad_expected_access[abi:ne200100]<std::error_code,std::error_code const&>(&v46);
                  }

                  if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v20 = &v52;
                  }

                  else
                  {
                    v20 = v52.__r_.__value_.__r.__words[0];
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                  *(buf.__r_.__value_.__r.__words + 4) = v20;
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = *&v46.__r_.__value_.__l.__data_;
                  _os_log_impl(&dword_223B4A000, v19, OS_LOG_TYPE_DEFAULT, "get dspgraph param %s returned %f", &buf, 0x16u);
                  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v52.__r_.__value_.__l.__data_);
                  }
                }

                if ((v46.__r_.__value_.__s.__data_[16] & 1) == 0)
                {
                  std::__throw_bad_expected_access[abi:ne200100]<std::error_code,std::error_code const&>(&v46);
                }

                LODWORD(v52.__r_.__value_.__l.__data_) = v46.__r_.__value_.__l.__data_;
                applesauce::CF::make_DataRef(a1, &v52, 4);
                goto LABEL_26;
              }

              if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
              {
                caulk::string_from_4cc(&v52, v13);
                v39 = SHIBYTE(v52.__r_.__value_.__r.__words[2]);
                v40 = v52.__r_.__value_.__r.__words[0];
                std::error_code::message(&buf, &v46);
                if (v39 >= 0)
                {
                  v41 = &v52;
                }

                else
                {
                  v41 = v40;
                }

                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_buf = &buf;
                }

                else
                {
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }

                *v48 = 136315394;
                v49 = v41;
                v50 = 2080;
                v51 = p_buf;
                _os_log_error_impl(&dword_223B4A000, v19, OS_LOG_TYPE_ERROR, "get dspgraph param %s: %s", v48, 0x16u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v52.__r_.__value_.__l.__data_);
                }
              }

              goto LABEL_64;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v36 = get_adm_log_object();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_63;
        }

        caulk::string_from_4cc(&v46, v13);
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v43 = &v46;
        }

        else
        {
          v43 = v46.__r_.__value_.__r.__words[0];
        }

        LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
        *(v52.__r_.__value_.__r.__words + 4) = v43;
        v38 = "get dspgraph param %s: no active node";
        goto LABEL_83;
      }

LABEL_85:
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v30 = get_adm_log_object();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    LOWORD(v46.__r_.__value_.__l.__data_) = 0;
    v31 = "get dspgraph param: invalid qualifier format";
LABEL_54:
    _os_log_error_impl(&dword_223B4A000, v30, OS_LOG_TYPE_ERROR, v31, &v46, 2u);
    goto LABEL_65;
  }

  if (*a3 == 1684498541)
  {
    if (v7 && CFDataGetLength(*a4) == 4)
    {
      if (*a4)
      {
        v8 = *CFDataGetBytePtr(*a4);
        v9 = *(a2 + 88);
        if (v9)
        {
          v10 = std::__shared_weak_count::lock(v9);
          if (v10)
          {
            v11 = *(a2 + 80);
            if (v11)
            {
              v12 = adm::graph::DSPNode::getDSP(v11);
              LODWORD(v46.__r_.__value_.__l.__data_) = (*(*v12 + 16))(v12, v8);
              applesauce::CF::make_DataRef(a1, &v46, 4);
LABEL_26:
              std::__shared_weak_count::__release_shared[abi:ne200100](v10);
              return;
            }
          }
        }

        else
        {
          v10 = 0;
        }

        v36 = get_adm_log_object();
        if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
LABEL_63:
          if (v10)
          {
LABEL_64:
            std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          }

LABEL_65:
          *a1 = 0;
          return;
        }

        caulk::string_from_4cc(&v46, v8);
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v46;
        }

        else
        {
          v37 = v46.__r_.__value_.__r.__words[0];
        }

        LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
        *(v52.__r_.__value_.__r.__words + 4) = v37;
        v38 = "has dspgraph param %s: no active node";
LABEL_83:
        _os_log_error_impl(&dword_223B4A000, v36, OS_LOG_TYPE_ERROR, v38, &v52, 0xCu);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }

        goto LABEL_63;
      }

      goto LABEL_85;
    }

    v30 = get_adm_log_object();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    LOWORD(v46.__r_.__value_.__l.__data_) = 0;
    v31 = "has dspgraph param: invalid qualifier format";
    goto LABEL_54;
  }

  if (v7)
  {
    CFRetain(*a4);
  }

  v45 = v7;
  ParameterMapping = adm::CustomPropertyManager::findParameterMapping(a3, &v45);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!ParameterMapping)
  {
LABEL_52:
    v30 = get_adm_log_object();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    LOWORD(v46.__r_.__value_.__l.__data_) = 0;
    v31 = "unsupported property address";
    goto LABEL_54;
  }

  v23 = COERCE_FLOAT(atomic_load(std::map<unsigned int,std::atomic<float>>::at(*(a2 + 64), ParameterMapping[10])));
  v24 = v23;
  v25 = *(*ParameterMapping + 16);
  v26 = *(*ParameterMapping + 24);
  if (v26 != 7)
  {
    if (v26 == 6)
    {
      v27 = *v25;
      v28 = *(v25 + 2);
      if (v27 == 1953384789 && v28 == 12851)
      {
        LODWORD(v46.__r_.__value_.__l.__data_) = v24;
        applesauce::CF::make_DataRef(a1, &v46, 4);
        return;
      }
    }

    goto LABEL_52;
  }

  if (*v25 == 1819242306 && *(v25 + 3) == 1851876716)
  {
    v46.__r_.__value_.__s.__data_[0] = v23 != 0.0;
    applesauce::CF::make_DataRef(a1, &v46, 1);
  }

  else
  {
    v33 = *v25;
    v34 = *(v25 + 3);
    if (v33 != 1634692166 || v34 != 842232929)
    {
      goto LABEL_52;
    }

    *&v46.__r_.__value_.__l.__data_ = v23;
    applesauce::CF::make_DataRef(a1, &v46, 4);
  }
}

void sub_223B97924(_Unwind_Exception *a1)
{
  if (*(v2 - 73) < 0)
  {
    operator delete(*(v2 - 96));
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

CFTypeID applesauce::CF::make_DataRef(applesauce::CF *this, const UInt8 *a2, CFIndex a3)
{
  v4 = CFDataCreate(0, a2, a3);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *this = v4;
  v5 = CFGetTypeID(v4);
  result = CFDataGetTypeID();
  if (v5 != result)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v8, "Could not construct");
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

void sub_223B97A60(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

std::string *caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = bswap32(__val);
  v5 = v2;
  if ((v2 - 32) > 0x5E || ((v2 >> 8) - 32) > 0x5E || ((v2 << 8 >> 24) - 32) > 0x5E || ((v2 >> 24) - 32) > 0x5E)
  {
    return std::to_string(retstr, __val);
  }

  v6 = 39;
  v4 = 39;
  return std::string::basic_string[abi:ne200100]<0>(retstr, &v4);
}

void sub_223B97B4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__throw_bad_expected_access[abi:ne200100]<std::error_code,std::error_code const&>(__int128 *a1)
{
  exception = __cxa_allocate_exception(0x18uLL);
  v3 = *a1;
  *exception = &unk_28371C558;
  *(exception + 8) = v3;
}

uint64_t *adm::CustomPropertyManager::findParameterMapping(_DWORD *a1, CFDataRef *a2)
{
  v4 = 144;
  for (i = adm::CustomPropertyManager::kParameterMappings; ; i += 6)
  {
    v6 = *i;
    v7 = **i;
    if (*a1 != 707406378 && v7 != 707406378 && v7 != *a1)
    {
      goto LABEL_37;
    }

    v10 = v6[1];
    v11 = a1[1];
    v12 = v11 == 707406378 || v10 == 707406378;
    if (!v12 && v10 != v11)
    {
      goto LABEL_37;
    }

    v14 = v6[2];
    v15 = a1[2];
    v16 = v15 == -1 || v14 == -1;
    if (!v16 && v14 != v15)
    {
      goto LABEL_37;
    }

    v19 = *(v6 + 4);
    v18 = *(v6 + 5);
    if (v18 != 6)
    {
      break;
    }

    v20 = *v19;
    v21 = *(v19 + 2);
    v22 = v20 == 1953384789 && v21 == 12851;
    if (!v22 || !*a2 || CFDataGetLength(*a2) != 4)
    {
      return 0;
    }

    if (!*a2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    BytePtr = CFDataGetBytePtr(*a2);
    if (*(i + 12) && *BytePtr == *(i + 2))
    {
      return i;
    }

LABEL_37:
    v4 -= 48;
    if (!v4)
    {
      return 0;
    }
  }

  if (v18 != 4 || *v19 != 1701736270 || *a2 && CFDataGetLength(*a2))
  {
    return 0;
  }

  return i;
}

void applesauce::CF::DataRef::~DataRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::bad_expected_access<std::error_code>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x223DF43A0);
}

const void **applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t adm::CustomPropertyManager::setCustomProperty(uint64_t a1, _DWORD *a2, CFDataRef *a3, CFDataRef *a4)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*a2 == 1684498541)
  {
    goto LABEL_58;
  }

  if (*a2 == 1684500589)
  {
    if (*a3 && CFDataGetLength(*a3) == 4 && *a4 && CFDataGetLength(*a4) == 4)
    {
      if (*a4)
      {
        BytePtr = CFDataGetBytePtr(*a4);
        if (*a3)
        {
          v8 = *BytePtr;
          v9 = CFDataGetBytePtr(*a3);
          if (*(a1 + 88))
          {
            v10 = *v9;
            v11 = std::__shared_weak_count::lock(*(a1 + 88));
            if (v11)
            {
              v12 = *(a1 + 80);
              if (v12)
              {
                DSP = adm::graph::DSPNode::getDSP(v12);
                (*(*DSP + 40))(&v48, v10);
                v14 = v49;
                adm_log_object = get_adm_log_object();
                v16 = adm_log_object;
                if (v14 == 1)
                {
                  if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_DEFAULT))
                  {
                    caulk::string_from_4cc(&__p, v8);
                    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_p = &__p;
                    }

                    else
                    {
                      p_p = __p.__r_.__value_.__r.__words[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                    *(buf.__r_.__value_.__r.__words + 4) = p_p;
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
                    *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
                    _os_log_impl(&dword_223B4A000, v16, OS_LOG_TYPE_DEFAULT, "set dspgraph param %s = %f", &buf, 0x16u);
LABEL_18:
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }
                  }
                }

                else if (os_log_type_enabled(adm_log_object, OS_LOG_TYPE_ERROR))
                {
                  caulk::string_from_4cc(&__p, v8);
                  v41 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v42 = __p.__r_.__value_.__r.__words[0];
                  std::error_code::message(&buf, &v48);
                  if (v41 >= 0)
                  {
                    v43 = &__p;
                  }

                  else
                  {
                    v43 = v42;
                  }

                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_buf = &buf;
                  }

                  else
                  {
                    p_buf = buf.__r_.__value_.__r.__words[0];
                  }

                  *v51 = 136315394;
                  v52 = v43;
                  v53 = 2080;
                  v54 = p_buf;
                  _os_log_error_impl(&dword_223B4A000, v16, OS_LOG_TYPE_ERROR, "set dspgraph param %s: %s", v51, 0x16u);
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_18;
                }

                v38 = v49;
                std::__shared_weak_count::__release_shared[abi:ne200100](v11);
                return v38 & 1;
              }
            }
          }

          else
          {
            v11 = 0;
          }

          v40 = get_adm_log_object();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v48.__val_) = 0;
            _os_log_error_impl(&dword_223B4A000, v40, OS_LOG_TYPE_ERROR, "no active node", &v48, 2u);
            if (!v11)
            {
              goto LABEL_58;
            }

            goto LABEL_63;
          }

          if (v11)
          {
LABEL_63:
            std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          }

LABEL_58:
          v38 = 0;
          return v38 & 1;
        }
      }

      exception = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(exception);
LABEL_81:
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v27 = get_adm_log_object();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    LOWORD(v48.__val_) = 0;
    v28 = "invalid data/qualifier formats";
LABEL_65:
    _os_log_error_impl(&dword_223B4A000, v27, OS_LOG_TYPE_ERROR, v28, &v48, 2u);
    goto LABEL_58;
  }

  v19 = *a4;
  if (*a4)
  {
    CFRetain(*a4);
  }

  v46 = v19;
  ParameterMapping = adm::CustomPropertyManager::findParameterMapping(a2, &v46);
  if (v19)
  {
    CFRelease(v19);
  }

  if (!ParameterMapping)
  {
    v27 = get_adm_log_object();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    LOWORD(v48.__val_) = 0;
    v28 = "unsupported property address";
    goto LABEL_65;
  }

  v21 = *(*ParameterMapping + 16);
  v22 = *(*ParameterMapping + 24);
  if (v22 != 7)
  {
    if (v22 == 6)
    {
      v23 = *v21;
      v24 = *(v21 + 2);
      v25 = v23 == 1953384789 && v24 == 12851;
      if (v25 && *a3 && CFDataGetLength(*a3) == 4)
      {
        if (!*a3)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          applesauce::CF::construct_error(exception);
          goto LABEL_81;
        }

        v26 = *CFDataGetBytePtr(*a3);
        goto LABEL_55;
      }
    }

    goto LABEL_57;
  }

  if (*v21 == 1819242306 && *(v21 + 3) == 1851876716)
  {
    if (*a3 && CFDataGetLength(*a3) == 1)
    {
      v37 = applesauce::CF::DataRef::operator->(a3);
      LOBYTE(v26) = *applesauce::CF::DataRef_proxy::get_raw_data(*v37);
LABEL_55:
      v36 = v26;
      goto LABEL_56;
    }

LABEL_57:
    v27 = get_adm_log_object();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_58;
    }

    LOWORD(v48.__val_) = 0;
    v28 = "invalid property data";
    goto LABEL_65;
  }

  v30 = *v21;
  v31 = *(v21 + 3);
  if (v30 != 1634692166 || v31 != 842232929)
  {
    goto LABEL_57;
  }

  if (!*a3)
  {
    goto LABEL_57;
  }

  v33 = applesauce::CF::DataRef::operator->(a3);
  if (applesauce::CF::get_byte_length(*v33, v34) != 4)
  {
    goto LABEL_57;
  }

  v35 = applesauce::CF::DataRef::operator->(a3);
  v36 = *applesauce::CF::DataRef_proxy::get_raw_data(*v35);
LABEL_56:
  adm::CustomPropertyManager::onGraphParameterUpdate(a1, ParameterMapping, v36);
  v38 = 1;
  return v38 & 1;
}

void sub_223B98314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  _Unwind_Resume(a1);
}

void *applesauce::CF::DataRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  return result;
}

const UInt8 *applesauce::CF::DataRef_proxy::get_raw_data(const UInt8 *this)
{
  if (this)
  {
    return CFDataGetBytePtr(this);
  }

  return this;
}

const __CFData *applesauce::CF::get_byte_length(const __CFData *this, const __CFData *a2)
{
  if (this)
  {
    return CFDataGetLength(this);
  }

  return this;
}

void adm::utility::getTemporaryPath(std::string *this)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [v2 temporaryDirectory];
  v4 = [v3 path];
  v6 = [v4 mutableCopy];

  v5 = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(v4) = [v5 isWritableFileAtPath:v6];

  if (v4)
  {
    v7 = [v6 UTF8String];
    std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(this, &v7);
  }

  else
  {
    this->__r_.__value_.__r.__words[0] = 0;
    this->__r_.__value_.__l.__size_ = 0;
    this->__r_.__value_.__r.__words[2] = 0;
    std::string::append[abi:ne200100]<char const*,0>(this, "/Library/Preferences/Audio/", "");
  }
}

void sub_223B98524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_223B985C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

unint64_t applesauce::CF::convert_to<std::string,0>(_BYTE *a1, const __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  CStringPtr = CFStringGetCStringPtr(a2, 0x8000100u);
  if (CStringPtr)
  {
    v6 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v8 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a1[23] = result;
      if (result)
      {
        result = memmove(a1, v6, result);
      }

      a1[v8] = 0;
      return result;
    }

LABEL_21:
    std::string::__throw_length_error[abi:ne200100]();
  }

  Length = CFStringGetLength(a2);
  maxBufLen = 0;
  v14.location = 0;
  v14.length = Length;
  CFStringGetBytes(a2, v14, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v10 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_21;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a1[23] = maxBufLen;
  if (v10)
  {
    bzero(a1, v10);
  }

  a1[v10] = 0;
  if (a1[23] >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  v15.location = 0;
  v15.length = Length;
  return CFStringGetBytes(a2, v15, 0x8000100u, 0, 0, v11, maxBufLen, &maxBufLen);
}

void sub_223B98824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *adm::utility::readDefaultsDebugDumpEnablement(adm::utility *this)
{
  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.coreaudio"];
  v2 = [v1 objectForKey:@"adm_enable_debug_dump"];

  if (v2)
  {
    v2 = [v1 BOOLForKey:@"adm_enable_debug_dump"];
  }

  return v2;
}

void adm::utility::writeNSObjectToDisk(adm::utility *this, objc_object *a2, NSString *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = this;
  v5 = a2;
  if (v4)
  {
    v26 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:1 error:&v26];
    v7 = v26;
    if (!v6)
    {
      v8 = get_adm_log_object();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v29.__r_.__value_.__l.__data_) = 138412290;
        *(v29.__r_.__value_.__r.__words + 4) = v7;
        _os_log_error_impl(&dword_223B4A000, v8, OS_LOG_TYPE_ERROR, "Failed to serialize the input NSObject into json: %@", &v29, 0xCu);
      }

      goto LABEL_21;
    }

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    v9 = objc_opt_new();
    [v9 setDateFormat:@"yyyy_MM_dd_HH_mm_ss_SSS"];
    v10 = [MEMORY[0x277CBEAA8] date];
    v11 = [v9 stringFromDate:v10];

    adm::utility::getTemporaryPath(&v29);
    v12 = get_adm_log_object();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v23 = &v29;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v29.__r_.__value_.__r.__words[0];
      }

      *buf = 136315138;
      v28 = v23;
      _os_log_debug_impl(&dword_223B4A000, v12, OS_LOG_TYPE_DEBUG, "ADM temp debug directory is %s", buf, 0xCu);
    }

    v13 = MEMORY[0x277CCACA8];
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v29;
    }

    else
    {
      v14 = v29.__r_.__value_.__r.__words[0];
    }

    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:v14];
    v16 = [v13 stringWithFormat:@"%@/%@_%@.txt", v15, v5, v11];

    v17 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = [v17 createFileAtPath:v16 contents:0 attributes:0];

    if (v18)
    {
      v25 = v7;
      v19 = [v8 writeToFile:v16 atomically:0 encoding:4 error:&v25];
      v20 = v25;

      if (v19)
      {
LABEL_18:

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v7 = v20;
LABEL_21:

        goto LABEL_22;
      }

      v21 = get_adm_log_object();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = &v29;
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = v29.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v28 = v22;
        _os_log_error_impl(&dword_223B4A000, v21, OS_LOG_TYPE_ERROR, "ADM failed to write json file at temp debug directory %s", buf, 0xCu);
      }
    }

    else
    {
      v21 = get_adm_log_object();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v24 = &v29;
        if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v29.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v28 = v24;
        _os_log_error_impl(&dword_223B4A000, v21, OS_LOG_TYPE_ERROR, "ADM failed to create file at temp debug directory %s", buf, 0xCu);
      }

      v20 = v7;
    }

    goto LABEL_18;
  }

LABEL_22:
}

void sub_223B98C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t non-virtual thunk toadm::graph::DSPGraphKernel::getPropertySize(adm::graph::DSPGraphKernel *this)
{
  (*(**(this + 20) + 136))(&v2);
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toadm::graph::DSPGraphKernel::getPropertyInfo(adm::graph::DSPGraphKernel *this)
{
  (*(**(this + 20) + 136))(&v2);
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t non-virtual thunk toadm::graph::DSPGraphKernel::getProperty@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *a5 = 0;
  v9 = a4;
  v10 = a3;
  result = (*(**(a1 + 160) + 144))(*(a1 + 160), a2, &v9);
  if (*(a6 + 16) == 1)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t adm::graph::DSPGraphKernel::getPropertySize(adm::graph::DSPGraphKernel *this)
{
  (*(**(this + 23) + 136))(&v2);
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t adm::graph::DSPGraphKernel::getPropertyInfo(adm::graph::DSPGraphKernel *this)
{
  (*(**(this + 23) + 136))(&v2);
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t adm::graph::DSPGraphKernel::getProperty@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  *a5 = 0;
  v9 = a4;
  v10 = a3;
  result = (*(**(a1 + 184) + 144))(*(a1 + 184), a2, &v9);
  if (*(a6 + 16) == 1)
  {
    *a5 = v10;
  }

  return result;
}

uint64_t adm::graph::DSPGraphKernel::doGetLatency(adm::graph::DSPGraphKernel *this)
{
  (*(**(this + 23) + 160))(&v4);
  if ((v5 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = v4;
    *exception = &unk_28371C558;
    *(exception + 8) = v3;
  }

  return v4;
}

void adm::graph::DSPGraphKernel::doBeginProcessing(adm::graph::DSPGraphKernel *this)
{
  v1 = get_adm_log_object();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_223B4A000, v1, OS_LOG_TYPE_DEFAULT, "BeginProcessing handler is called, IOStarting", v2, 2u);
  }
}

void non-virtual thunk toadm::graph::FixedBlockSizeDSPGraphKernel::~FixedBlockSizeDSPGraphKernel(adm::graph::FixedBlockSizeDSPGraphKernel *this)
{
  adm::graph::DSPGraphKernel::~DSPGraphKernel((this - 24));

  JUMPOUT(0x223DF43A0);
}

{
  adm::graph::DSPGraphKernel::~DSPGraphKernel((this - 24));
}

void adm::graph::DSPGraphKernel::~DSPGraphKernel(adm::graph::DSPGraphKernel *this)
{
  *this = &unk_28371A2D0;
  *(this + 3) = &unk_28371A418;
  v5 = (this + 528);
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 519) < 0)
  {
    operator delete(*(this + 62));
  }

  if (*(this + 495) < 0)
  {
    operator delete(*(this + 59));
  }

  v5 = (this + 448);
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 424);
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 400);
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v5);
  adm::graph::KernelConfiguration::~KernelConfiguration((this + 248));
  v2 = *(this + 28);
  if (v2)
  {
    *(this + 29) = v2;
    operator delete(v2);
  }

  v3 = *(this + 25);
  if (v3)
  {
    *(this + 26) = v3;
    operator delete(v3);
  }

  v4 = *(this + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_28371D0B8;
  *(this + 3) = &unk_28371D188;
  adm::graph::AudioIssueDetectorClient::IDOwner::clear((this + 168));
  MEMORY[0x223DF3E50](this + 144);
  v5 = (this + 104);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 80);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 56);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 32);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  *this = &unk_28371D218;
  adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::~synchronized_pointer(this + 1);
}

void adm::graph::KernelConfiguration::~KernelConfiguration(adm::graph::KernelConfiguration *this)
{
  v7 = (this + 128);
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = *(this + 13);
  if (v2)
  {
    *(this + 14) = v2;
    operator delete(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    *(this + 11) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 4);
  if (v5)
  {
    *(this + 5) = v5;
    operator delete(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    *(this + 2) = v6;
    operator delete(v6);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void adm::graph::AudioIssueDetectorClient::IDOwner::clear(adm::graph::AudioIssueDetectorClient::IDOwner *this)
{
  v2 = *this;
  if (*this)
  {
    if (AudioIssueDetectorLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
    }

    if (AudioIssueDetectorLibraryLoader(void)::libSym)
    {
      AudioIssueDetectorLibraryLoader(void)::libSym(v2);
    }
  }

  *this = 0;
}

void std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; i -= 8)
    {
      ExtendedAudioBufferList_Destroy();
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](OpaqueAudioConverter ****a1)
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
        std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

unint64_t *adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::~synchronized_pointer(unint64_t *result)
{
  if (atomic_load(result))
  {
    v2 = _os_assert_log();
    result = _os_crash(v2);
    __break(1u);
  }

  return result;
}

OpaqueAudioConverter *std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>::reset[abi:ne200100](OpaqueAudioConverter **a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return AudioConverterDispose(result);
  }

  return result;
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

double adm::graph::FixedBlockSizeDSPGraphKernel::getSliceDuration@<D0>(adm::graph::FixedBlockSizeDSPGraphKernel *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 141))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = *(this + 32);
  *a2 = *(this + 138);
  result = *v2;
  *(a2 + 8) = *v2;
  *(a2 + 16) = 0;
  return result;
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

caulk::rt_safe_memory_resource *adm::graph::FixedBlockSizeDSPGraphKernel::doClientIO(std::chrono::system_clock::time_point *this, __n128 a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v41 = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    v15 = "inNumInputStreams is 0";
    goto LABEL_11;
  }

  if (!a6)
  {
    v15 = "inInputStreams is nullptr";
    goto LABEL_11;
  }

  if (!a7)
  {
    v15 = "inNumOutputStreams is 0";
    goto LABEL_11;
  }

  if (!a8)
  {
    v15 = "inOutputStreams is nullptr";
    goto LABEL_11;
  }

  adm::graph::FixedBlockSizeDSPGraphKernel::getSliceDuration(this, v39);
  if (v40 == 1)
  {
    v15 = "Slice duration is variable for a fixed block size DSPGraph kernel";
LABEL_11:

    return adm::util::RTLogger::log<>(&this[16], v15).__d_.__rep_;
  }

  v17 = a4[1];
  v38[0] = *a4;
  v38[1] = v17;
  v18 = a4[3];
  v38[2] = a4[2];
  v38[3] = v18;
  v19 = MEMORY[0x28223BE20](v14);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = v39[0];
  v24 = (a6 + 64);
  do
  {
    if (*v24 != v23)
    {
      v36[0] = v22;
      v35 = "stream index = %u, inInputStreams frame count = %u , sliceBlockSize = %u";
      return adm::util::RTLogger::log<unsigned long &,unsigned int &,unsigned int const&>(this + 16, v35, v36, v24, v39).__d_.__rep_;
    }

    rep = this[25].__d_.__rep_;
    if (v22 >= (this[26].__d_.__rep_ - rep) >> 3)
    {
LABEL_35:
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v26 = &v21[24 * *(rep + 8 * v22)];
    *(v26 + 1) = v38;
    *(v26 + 4) = v23;
    v27 = this[10].__d_.__rep_;
    if (v22 >= (this[11].__d_.__rep_ - v27) >> 3)
    {
LABEL_34:
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    *v26 = *(v27 + 8 * v22++) + 48;
    v24 += 20;
  }

  while (a5 != v22);
  MEMORY[0x28223BE20](v19);
  v29 = v36 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v24 = (a8 + 64);
  do
  {
    if (*v24 != v23)
    {
      v36[0] = v30;
      v35 = "stream index %u, inOutputStreams frame count %u, sliceBlockSize %u";
      return adm::util::RTLogger::log<unsigned long &,unsigned int &,unsigned int const&>(this + 16, v35, v36, v24, v39).__d_.__rep_;
    }

    v31 = this[28].__d_.__rep_;
    if (v30 >= (this[29].__d_.__rep_ - v31) >> 3)
    {
      goto LABEL_35;
    }

    v32 = &v29[24 * *(v31 + 8 * v30)];
    *(v32 + 1) = v38;
    *(v32 + 4) = v23;
    v33 = this[13].__d_.__rep_;
    if (v30 >= (this[14].__d_.__rep_ - v33) >> 3)
    {
      goto LABEL_34;
    }

    *v32 = *(v33 + 8 * v30++) + 48;
    v24 += 20;
  }

  while (a7 != v30);
  adm::graph::AudioIssueDetectorClient::performDetection(&this[20], a5, a6, 1, v38, &this[16]);
  v37 = adm::graph::DSPKernel::doClientIOPreProcessing(this, a6, a5);
  if (v37)
  {
    v34 = "doClientIOPreProcessing error %u";
    return adm::util::RTLogger::log<int &>(this + 16, v34, &v37).__d_.__rep_;
  }

  (*(*this[23].__d_.__rep_ + 80))(v36);
  v37 = adm::graph::DSPKernel::doClientIOPostProcessing(this, a8, a7);
  if (v37)
  {
    v34 = "doClientIOPostProcessing error %u";
    return adm::util::RTLogger::log<int &>(this + 16, v34, &v37).__d_.__rep_;
  }

  return adm::graph::AudioIssueDetectorClient::performDetection(&this[20], a7, a8, 0, v38, &this[16]);
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<>(uint64_t a1, uint64_t a2)
{
  if (*a1 < 0x65u || (result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_, result.__d_.__rep_ - *(a1 + 8) >= 501000))
  {
    result.__d_.__rep_ = adm::util::RTLogger::doLog<char const*&>(a1, a2);
  }

  if (*a1 != -1)
  {
    ++*a1;
  }

  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned long &,unsigned int &,unsigned int const&>(std::chrono::system_clock::time_point *a1, uint64_t a2, uint64_t *a3, int *a4, int *a5)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v12 = *a5;
  v13 = *a4;
  v14 = *a3;
  v15 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v15 + 16) = 0;
  *(v15 + 24) = 3;
  *(v15 + 32) = a2;
  *(v15 + 40) = rep;
  *(v15 + 48) = v14;
  *(v15 + 56) = v13;
  *(v15 + 60) = v12;
  *v15 = &unk_28371AA48;
  *(v15 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v15);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *adm::graph::AudioIssueDetectorClient::performDetection(caulk::rt_safe_memory_resource *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int *a6)
{
  if (*(result + 1))
  {
    v6 = a2 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v10 = result;
    v11 = 0;
    v12 = (a3 + 72);
    for (i = &unk_27D0B9000; ; i = &unk_27D0B9000)
    {
      v14 = v11;
      if (!a4)
      {
        v14 = *(v10 + 2) + v11;
      }

      v15 = *(v10 + 1);
      v16 = *v12;
      v17 = *(v12 - 2);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
        i = &unk_27D0B9000;
      }

      if (!i[244])
      {
        break;
      }

      result = (i[244])(v15, v14, 0, v16, v17, a5);
      v18 = result;
      if (result)
      {
        goto LABEL_15;
      }

LABEL_22:
      ++v11;
      v12 += 10;
      if (a2 == v11)
      {
        return result;
      }
    }

    v18 = -1;
LABEL_15:
    v19 = *a6;
    if (*a6 >= 0x65)
    {
      result = std::chrono::system_clock::now().__d_.__rep_;
      if (result - *(a6 + 1) < 501000)
      {
LABEL_20:
        if (*a6 != -1)
        {
          ++*a6;
        }

        goto LABEL_22;
      }

      v19 = *a6;
    }

    result = *MEMORY[0x277D7F098];
    if (!*MEMORY[0x277D7F098])
    {
      __break(1u);
      return result;
    }

    v20 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v20 + 16) = 0;
    *(v20 + 24) = 3;
    *(v20 + 32) = "RTAID error %i reported for stream (dir: %u, index: %u) [error: non-critical, impact: incomplete RTAID]";
    *(v20 + 40) = v19;
    *(v20 + 44) = v18;
    *(v20 + 48) = a4;
    *(v20 + 56) = v11;
    *v20 = &unk_28371D2E8;
    *(v20 + 8) = 0;
    caulk::concurrent::messenger::enqueue((a6 + 4), v20);
    result = std::chrono::system_clock::now().__d_.__rep_;
    *(a6 + 1) = result;
    goto LABEL_20;
  }

  return result;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<int &>(std::chrono::system_clock::time_point *a1, uint64_t a2, int *a3)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v8 = *a3;
  v9 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v9 + 16) = 0;
  *(v9 + 24) = 3;
  *(v9 + 32) = a2;
  *(v9 + 40) = rep;
  *(v9 + 44) = v8;
  *v9 = &unk_28371D380;
  *(v9 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v9);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::make_string(std::string *__return_ptr a1@<X8>, caulk *this@<X0>, const char *a3@<X1>, ...)
{
  va_start(va, a3);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    a1->__r_.__value_.__r.__words[0] = 0;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    std::string::resize(a1, (v5 + 1), 0);
    v6 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (v6 >= 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = a1->__r_.__value_.__r.__words[0];
    }

    if (v6 >= 0)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = a1->__r_.__value_.__l.__size_;
    }

    v9 = vsnprintf(v7, size, this, va);
    std::string::resize(a1, v9, 0);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20), *(a1 + 24), *(a1 + 32));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(caulk::concurrent::message **a1)
{
  v2 = *a1;
  caulk::concurrent::message::~message(*a1);
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    caulk::rt_safe_memory_resource::rt_deallocate(result, v2);
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned long &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned int &,unsigned int const&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<unsigned long &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned int &,unsigned int const&)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &,unsigned char,unsigned long &>(adm::util::RTLogLevel,char const*,int &,unsigned char,unsigned long &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<unsigned long &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned int &,unsigned int const&)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 24), *(a1 + 32), *(a1 + 36));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned long &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned long &,unsigned int &,unsigned int const&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *adm::util::RTLogger::doLog<char const*&>(int *a1, uint64_t a2)
{
  result = *MEMORY[0x277D7F098];
  if (*MEMORY[0x277D7F098])
  {
    v5 = *a1;
    v6 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v6 + 16) = 0;
    *(v6 + 24) = 3;
    *(v6 + 32) = "%s";
    *(v6 + 40) = v5;
    *(v6 + 48) = a2;
    *v6 = &unk_28371D3D8;
    *(v6 + 8) = 0;
    caulk::concurrent::messenger::enqueue((a1 + 4), v6);
    result = std::chrono::system_clock::now().__d_.__rep_;
    *(a1 + 1) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<char const*&>(adm::util::RTLogLevel,char const*,char const*&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<char const*&>(adm::util::RTLogLevel,char const*,char const*&)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<char const*&>(adm::util::RTLogLevel,char const*,char const*&)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 24));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<char const*&>(adm::util::RTLogLevel,char const*,char const*&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

char *adm::graph::FixedBlockSizeDSPGraphKernel::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return adm::graph::operator==((a1 + 248), result + 31);
  }

  return result;
}

void adm::graph::FixedBlockSizeDSPGraphKernel::~FixedBlockSizeDSPGraphKernel(adm::graph::FixedBlockSizeDSPGraphKernel *this)
{
  adm::graph::DSPGraphKernel::~DSPGraphKernel(this);

  JUMPOUT(0x223DF43A0);
}

void non-virtual thunk toadm::graph::VariableBlockSizeDSPGraphKernel::~VariableBlockSizeDSPGraphKernel(adm::graph::VariableBlockSizeDSPGraphKernel *this)
{
  v2 = (this - 24);
  *(this - 3) = &unk_28371A6B0;
  *this = &unk_28371A7F8;
  v3 = (this + 568);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 544);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  adm::graph::DSPGraphKernel::~DSPGraphKernel(v2);

  JUMPOUT(0x223DF43A0);
}

{
  v2 = (this - 24);
  *(this - 3) = &unk_28371A6B0;
  *this = &unk_28371A7F8;
  v3 = (this + 568);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 544);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v3);

  adm::graph::DSPGraphKernel::~DSPGraphKernel(v2);
}

double adm::graph::VariableBlockSizeDSPGraphKernel::getSliceDuration@<D0>(adm::graph::VariableBlockSizeDSPGraphKernel *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 141) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v2 = *(this + 138);
  if (v2 == 1)
  {
    v3 = 280;
  }

  else
  {
    if (v2)
    {
      return result;
    }

    v3 = 256;
  }

  v4 = (this + 556);
  if (!*(this + 560))
  {
    v4 = &adm::graph::DSPKernel::kMaxBufferFrameSize;
  }

  v5 = *(this + v3);
  *a2 = *v4;
  result = *v5;
  *(a2 + 8) = *v5;
  *(a2 + 16) = 1;
  return result;
}

uint64_t adm::graph::VariableBlockSizeDSPGraphKernel::doGetExpectedOutputSamplesForInputSamples(adm::graph::VariableBlockSizeDSPGraphKernel *this, unint64_t a2, unint64_t *a3)
{
  if (HIDWORD(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception);
    __cxa_throw(exception, off_2784F01F0, MEMORY[0x277D82608]);
  }

  (*(**(this + 23) + 64))(&v8);
  if (v9)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  if (v9)
  {
    result = v8;
  }

  else
  {
    result = 0;
  }

  *a3 = v5;
  return result;
}

std::runtime_error *std::overflow_error::overflow_error[abi:ne200100](std::runtime_error *a1)
{
  result = std::runtime_error::runtime_error(a1, "uint32_t overflow");
  result->__vftable = (MEMORY[0x277D828F0] + 16);
  return result;
}

BOOL adm::graph::VariableBlockSizeDSPGraphKernel::supportsGetExpectedOutputSamplesForInputSamplesHandler(adm::graph::VariableBlockSizeDSPGraphKernel *this)
{
  if (*(this + 141) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return *(this + 138) == 0;
}

uint64_t adm::graph::VariableBlockSizeDSPGraphKernel::doGetRequiredInputSamplesForOutputSamples(adm::graph::VariableBlockSizeDSPGraphKernel *this, unint64_t a2)
{
  if (HIDWORD(a2))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::overflow_error::overflow_error[abi:ne200100](exception);
    __cxa_throw(exception, off_2784F01F0, MEMORY[0x277D82608]);
  }

  (*(**(this + 23) + 56))(&v4);
  if (v5)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

BOOL adm::graph::VariableBlockSizeDSPGraphKernel::supportsGetRequiredInputSamplesForOutputSamplesHandler(adm::graph::VariableBlockSizeDSPGraphKernel *this)
{
  if (*(this + 141) != 1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return *(this + 138) == 1;
}

caulk::rt_safe_memory_resource *adm::graph::VariableBlockSizeDSPGraphKernel::doClientIO(adm::graph::VariableBlockSizeDSPGraphKernel *this, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v91 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a5)
    {
      if (a6)
      {
        if (a7)
        {
          adm::graph::VariableBlockSizeDSPGraphKernel::getSliceDuration(this, v90);
          if (*(this + 141) != 1)
          {
            std::__throw_bad_variant_access[abi:ne200100]();
          }

          v13 = *(this + 138);
          v14 = a3[1];
          v89[0] = *a3;
          v89[1] = v14;
          v15 = a3[3];
          v89[2] = a3[2];
          v89[3] = v15;
          adm::graph::AudioIssueDetectorClient::performDetection((this + 160), a4, a5, 1, v89, this + 32);
          v16 = adm::graph::DSPKernel::doClientIOPreProcessing(this, a5, a4);
          v88 = v16;
          if (v16)
          {
            return adm::util::RTLogger::log<int &>(this + 16, "doClientIOPreProcessing error %u", &v88).__d_.__rep_;
          }

          v81 = a6;
          v82 = a7;
          MEMORY[0x28223BE20](v16);
          v85 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
          v21 = 0;
          v22 = v90[0];
          v80 = a5;
          v23 = (a5 + 64);
          do
          {
            v24 = *(this + 25);
            if (v21 >= (*(this + 26) - v24) >> 3)
            {
LABEL_74:
              std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
            }

            v25 = &v85[24 * *(v24 + 8 * v21)];
            *(v25 + 1) = v89;
            v26 = *v23;
            *(v25 + 4) = *v23;
            v27 = (*(*(this + 71) + 8 * v21) + 48);
            *v25 = v27;
            if (!v13 && v26 > v22)
            {
              *(v25 + 4) = v22;
            }

            v28 = *(this + 10);
            if (v21 >= (*(this + 11) - v28) >> 3)
            {
LABEL_73:
              std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
            }

            v29 = adm::graph::VariableBlockSizeDSPGraphKernel::setUpScratchAudioBufferList(this, (*(v28 + 8 * v21++) + 48), v27, 0);
            v23 += 20;
          }

          while (a4 != v21);
          v83 = a4;
          v30 = v81;
          MEMORY[0x28223BE20](v29);
          v84 = v78 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
          v32 = 0;
          v33 = 64;
          v34 = v82;
          do
          {
            v35 = *(this + 28);
            if (v32 >= (*(this + 29) - v35) >> 3)
            {
              goto LABEL_74;
            }

            v36 = &v84[24 * *(v35 + 8 * v32)];
            *(v36 + 1) = v89;
            v37 = *(v34 + v33);
            *(v36 + 4) = v37;
            v38 = (*(*(this + 74) + 8 * v32) + 48);
            *v36 = v38;
            if (v13 == 1 && v37 > v22)
            {
              *(v36 + 4) = v22;
            }

            v39 = *(this + 13);
            if (v32 >= (*(this + 14) - v39) >> 3)
            {
              goto LABEL_73;
            }

            v40 = adm::graph::VariableBlockSizeDSPGraphKernel::setUpScratchAudioBufferList(this, (*(v39 + 8 * v32++) + 48), v38, 0);
            v33 += 80;
          }

          while (v30 != v32);
          v78[1] = v78;
          v41 = MEMORY[0x28223BE20](v40);
          v44 = v78 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          v45 = 0;
          v46 = (v80 + 64);
          do
          {
            v47 = *v46;
            v46 += 20;
            *&v44[4 * v45++] = v47;
          }

          while (v42 != v45);
          MEMORY[0x28223BE20](v41);
          v49 = v78 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          v50 = 0;
          v51 = 64;
          do
          {
            *&v49[4 * v50++] = *(v34 + v51);
            v51 += 80;
          }

          while (v30 != v50);
          v79 = (v80 + 64);
          while (1)
          {
            (*(**(this + 23) + 80))(v87);
            LODWORD(v52) = 0;
            v53 = 0;
            v54 = v79;
            do
            {
              v55 = *(this + 25);
              if (v53 >= (*(this + 26) - v55) >> 3)
              {
                goto LABEL_74;
              }

              v56 = &v85[24 * *(v55 + 8 * v53)];
              v57 = *(v56 + 4);
              v58 = *&v44[4 * v53];
              v59 = v58 - v57;
              *&v44[4 * v53] = v58 - v57;
              v60 = *(this + 10);
              if (v53 >= (*(this + 11) - v60) >> 3)
              {
                goto LABEL_73;
              }

              if (v58 == v57)
              {
                v52 = (v52 + 1);
              }

              else
              {
                v52 = v52;
              }

              v61 = *v54;
              v54 += 20;
              adm::graph::VariableBlockSizeDSPGraphKernel::setUpScratchAudioBufferList(this, (*(v60 + 8 * v53) + 48), *v56, v61 - v59);
              if (v59 >= v22)
              {
                v62 = v22;
              }

              else
              {
                v62 = v59;
              }

              if (v13)
              {
                v62 = v59;
              }

              *(v56 + 4) = v62;
              ++v53;
            }

            while (v83 != v53);
            LODWORD(v87[0]) = v52;
            if (v13)
            {
              goto LABEL_50;
            }

            if (v52 != v83)
            {
              break;
            }

            LODWORD(v80) = 1;
LABEL_51:
            LODWORD(v63) = 0;
            v64 = 0;
            v65 = 64;
            do
            {
              v66 = *(this + 28);
              if (v64 >= (*(this + 29) - v66) >> 3)
              {
                goto LABEL_74;
              }

              v67 = &v84[24 * *(v66 + 8 * v64)];
              v68 = *(v67 + 4);
              v69 = *&v49[4 * v64];
              v70 = v69 - v68;
              *&v49[4 * v64] = v69 - v68;
              v71 = *(this + 13);
              if (v64 >= (*(this + 14) - v71) >> 3)
              {
                goto LABEL_73;
              }

              if (v69 == v68)
              {
                v63 = (v63 + 1);
              }

              else
              {
                v63 = v63;
              }

              adm::graph::VariableBlockSizeDSPGraphKernel::setUpScratchAudioBufferList(this, (*(v71 + 8 * v64) + 48), *v67, *(v82 + v65) - v70);
              if (v70 >= v22)
              {
                v72 = v22;
              }

              else
              {
                v72 = v70;
              }

              if (v13 != 1)
              {
                v72 = v70;
              }

              *(v67 + 4) = v72;
              ++v64;
              v65 += 80;
              v73 = v81;
            }

            while (v81 != v64);
            v86 = v63;
            v74 = v82;
            if (v13 == 1)
            {
              if (v63 == v81)
              {
                goto LABEL_67;
              }

              if (v63)
              {
                v75 = "producedCount = %u";
                v76 = (this + 128);
                v77 = &v86;
                return adm::util::RTLogger::log<unsigned int &>(v76, v75, v77).__d_.__rep_;
              }
            }

            if (v80)
            {
LABEL_67:
              v88 = adm::graph::DSPKernel::doClientIOPostProcessing(this, v82, v81);
              if (!v88)
              {
                return adm::graph::AudioIssueDetectorClient::performDetection((this + 160), v73, v74, 0, v89, this + 32);
              }

              return adm::util::RTLogger::log<int &>(this + 16, "doClientIOPostProcessing error %u", &v88).__d_.__rep_;
            }
          }

          if (v52)
          {
            v75 = "consumedCount = %u";
            v76 = (this + 128);
            v77 = v87;
            return adm::util::RTLogger::log<unsigned int &>(v76, v75, v77).__d_.__rep_;
          }

LABEL_50:
          LODWORD(v80) = 0;
          goto LABEL_51;
        }

        v18 = "inOutputStreams is nullptr";
      }

      else
      {
        v18 = "inNumOutputStreams is 0";
      }
    }

    else
    {
      v18 = "inInputStreams is nullptr";
    }
  }

  else
  {
    v18 = "inNumInputStreams is 0";
  }

  v19 = this + 128;

  return adm::util::RTLogger::log<>(v19, v18).__d_.__rep_;
}

caulk::rt_safe_memory_resource *adm::graph::VariableBlockSizeDSPGraphKernel::setUpScratchAudioBufferList(caulk::rt_safe_memory_resource *this, AudioBufferList *a2, AudioBufferList *a3, int a4)
{
  v4 = this;
  if (!a2)
  {
    v13 = "inMainABL is nullptr ";
LABEL_11:
    v14 = (this + 128);

    return adm::util::RTLogger::log<>(v14, v13).__d_.__rep_;
  }

  if (!a3)
  {
    v13 = "inScratchABL is nullptr ";
    goto LABEL_11;
  }

  mNumberBuffers = a2->mNumberBuffers;
  if (mNumberBuffers == a3->mNumberBuffers)
  {
    if (!mNumberBuffers)
    {
      return this;
    }

    v6 = 0;
    p_mData = &a2->mBuffers[0].mData;
    for (i = &a3->mBuffers[0].mData; ; i += 2)
    {
      v9 = *(p_mData - 2);
      v10 = *(p_mData - 1);
      v11 = v9 * a4;
      v12 = 4 * (v9 * a4);
      *i = *p_mData + v12;
      *(i - 2) = v9;
      if (v12 > v10)
      {
        break;
      }

      p_mData += 2;
      *(i - 1) = v10 - v12;
      if (mNumberBuffers == ++v6)
      {
        return this;
      }
    }

    v16 = *(this + 32);
    if (v16 >= 0x65)
    {
      this = std::chrono::system_clock::now().__d_.__rep_;
      if (this - *(v4 + 17) < 501000)
      {
LABEL_22:
        v18 = *(v4 + 32);
        if (v18 != -1)
        {
          *(v4 + 32) = v18 + 1;
        }

        return this;
      }

      v16 = *(v4 + 32);
      LODWORD(v10) = *(p_mData - 1);
    }

    this = *MEMORY[0x277D7F098];
    if (!*MEMORY[0x277D7F098])
    {
      __break(1u);
      return this;
    }

    v17 = caulk::rt_safe_memory_resource::rt_allocate(this);
    *(v17 + 16) = 0;
    *(v17 + 24) = 3;
    *(v17 + 32) = "AudioBufferList buffer overwrite or overread has occurred at buffer index %u, numFloatValuesToAdvanceBy = %u, mDataByteSize = %u";
    *(v17 + 40) = v16;
    *(v17 + 44) = v6;
    *(v17 + 48) = v11;
    *(v17 + 52) = v10;
    *v17 = &unk_28371AAA0;
    *(v17 + 8) = 0;
    caulk::concurrent::messenger::enqueue((v4 + 144), v17);
    this = std::chrono::system_clock::now().__d_.__rep_;
    *(v4 + 17) = this;
    goto LABEL_22;
  }

  v15 = (this + 128);

  return adm::util::RTLogger::log<unsigned int const&,unsigned int &>(v15, "inMainABL->mNumberBuffers = %u, inScratchABL->mNumberBuffers = %u", a2, a3).__d_.__rep_;
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int &>(std::chrono::system_clock::time_point *a1, uint64_t a2, int *a3)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v8 = *a3;
  v9 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v9 + 16) = 0;
  *(v9 + 24) = 3;
  *(v9 + 32) = a2;
  *(v9 + 40) = rep;
  *(v9 + 44) = v8;
  *v9 = &unk_28371B318;
  *(v9 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v9);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<int &>(adm::util::RTLogLevel,char const*,int &)::{lambda(void)#1}>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

std::chrono::system_clock::time_point adm::util::RTLogger::log<unsigned int const&,unsigned int &>(std::chrono::system_clock::time_point *a1, uint64_t a2, int *a3, int *a4)
{
  rep = a1->__d_.__rep_;
  if (LODWORD(a1->__d_.__rep_) >= 0x65)
  {
    result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (result.__d_.__rep_ - a1[1].__d_.__rep_ < 501000)
    {
      goto LABEL_6;
    }

    rep = a1->__d_.__rep_;
  }

  result.__d_.__rep_ = *MEMORY[0x277D7F098];
  if (!*MEMORY[0x277D7F098])
  {
    __break(1u);
    return result;
  }

  v10 = *a4;
  v11 = *a3;
  v12 = caulk::rt_safe_memory_resource::rt_allocate(result.__d_.__rep_);
  *(v12 + 16) = 0;
  *(v12 + 24) = 3;
  *(v12 + 32) = a2;
  *(v12 + 40) = rep;
  *(v12 + 44) = v11;
  *(v12 + 48) = v10;
  *v12 = &unk_28371B108;
  *(v12 + 8) = 0;
  caulk::concurrent::messenger::enqueue(&a1[2], v12);
  result.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  a1[1].__d_.__rep_ = result.__d_.__rep_;
LABEL_6:
  if (LODWORD(a1->__d_.__rep_) != -1)
  {
    ++LODWORD(a1->__d_.__rep_);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned int &,unsigned int &,unsigned int const&)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<unsigned int &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned int &,unsigned int &,unsigned int const&)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<unsigned int &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned int &,unsigned int &,unsigned int const&)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20), *(a1 + 24), *(a1 + 28));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int &,unsigned int &,unsigned int const&>(adm::util::RTLogLevel,char const*,unsigned int &,unsigned int &,unsigned int const&)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int const&,unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int const&,unsigned int &)::{lambda(void)#1}>::perform(caulk::concurrent::message *a1, const char *a2)
{
  v3 = a1;
  adm::util::RTLogger::doLog<unsigned int const&,unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int const&,unsigned int &)::{lambda(void)#1}::operator()(a1 + 24, a2);
  return caulk::concurrent::details::rt_message_call<adm::CustomPropertyManager::onGraphParameterUpdate(adm::CustomPropertyManager::ParameterMapping const&,float)::$_0>::rt_cleanup::~rt_cleanup(&v3);
}

void adm::util::RTLogger::doLog<unsigned int const&,unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int const&,unsigned int &)::{lambda(void)#1}::operator()(uint64_t a1, const char *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  caulk::make_string(&__p, *(a1 + 8), a2, *(a1 + 20), *(a1 + 24));
  v3 = *a1;
  v4 = get_adm_log_object();
  v5 = v4;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      goto LABEL_25;
    }

    if (v3 != 3)
    {
LABEL_14:
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      p_p = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

LABEL_25:
      v15 = *(a1 + 16);
      *buf = 136315394;
      v18 = p_p;
      v19 = 1024;
      v20 = v15;
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
      _os_log_impl(&dword_223B4A000, v8, v9, "%s. Log counter = %u", buf, 0x12u);
      goto LABEL_27;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = __p.__r_.__value_.__r.__words[0];
      }

      v11 = *(a1 + 16);
      *buf = 136315394;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      _os_log_error_impl(&dword_223B4A000, v5, OS_LOG_TYPE_ERROR, "!!! ADM realtime error: %s. Log counter = %u", buf, 0x12u);
    }
  }

  else
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_27;
        }

        v6 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v6 = __p.__r_.__value_.__r.__words[0];
        }

        v7 = *(a1 + 16);
        *buf = 136315394;
        v18 = v6;
        v19 = 1024;
        v20 = v7;
        v8 = v5;
        v9 = OS_LOG_TYPE_INFO;
        goto LABEL_26;
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v13 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v13 = __p.__r_.__value_.__r.__words[0];
      }

      v14 = *(a1 + 16);
      *buf = 136315394;
      v18 = v13;
      v19 = 1024;
      v20 = v14;
      _os_log_debug_impl(&dword_223B4A000, v5, OS_LOG_TYPE_DEBUG, "%s. Log counter = %u", buf, 0x12u);
    }
  }

LABEL_27:

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void caulk::concurrent::details::rt_message_call<void adm::util::RTLogger::doLog<unsigned int const&,unsigned int &>(adm::util::RTLogLevel,char const*,unsigned int const&,unsigned int &)::{lambda(void)#1}>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x223DF43A0);
}

char *adm::graph::VariableBlockSizeDSPGraphKernel::operator==(uint64_t a1, void *lpsrc)
{
  if (result)
  {

    return adm::graph::operator==((a1 + 248), result + 31);
  }

  return result;
}

void adm::graph::VariableBlockSizeDSPGraphKernel::~VariableBlockSizeDSPGraphKernel(adm::graph::VariableBlockSizeDSPGraphKernel *this)
{
  *this = &unk_28371A6B0;
  *(this + 3) = &unk_28371A7F8;
  v2 = (this + 592);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 568);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v2);
  adm::graph::DSPGraphKernel::~DSPGraphKernel(this);

  JUMPOUT(0x223DF43A0);
}

{
  *this = &unk_28371A6B0;
  *(this + 3) = &unk_28371A7F8;
  v2 = (this + 592);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 568);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v2);

  adm::graph::DSPGraphKernel::~DSPGraphKernel(this);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t adm::graph::DSPGraphKernel::DSPGraphKernel(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (v4)
  {
    applesauce::CF::convert_to<std::string,0>(__p, v4);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "DSPGUseCase");
  }

  adm::graph::DSPKernel::DSPKernel(a1, 0x1000u, (a2 + 8), 0x1000u, (a2 + 32), __p);
  v5 = (a1 + 280);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &unk_28371A2D0;
  *(a1 + 24) = &unk_28371A418;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = *a2;
  *a2 = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = *(a2 + 8);
  *(a1 + 272) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *v5 = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *v5 = *(a2 + 32);
  *(a1 + 296) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = *(a2 + 56);
  *(a1 + 320) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 328) = *(a2 + 80);
  *(a1 + 344) = *(a2 + 96);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 352) = *(a2 + 104);
  *(a1 + 368) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 376) = *(a2 + 128);
  *(a1 + 392) = *(a2 + 144);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 400) = *(a2 + 152);
  *(a1 + 416) = *(a2 + 168);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 424) = *(a2 + 176);
  *(a1 + 440) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0;
  *(a1 + 448) = *(a2 + 200);
  *(a1 + 464) = *(a2 + 216);
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v6 = *(a2 + 224);
  *(a1 + 488) = *(a2 + 240);
  *(a1 + 472) = v6;
  *(a2 + 232) = 0;
  *(a2 + 240) = 0;
  *(a2 + 224) = 0;
  v7 = *(a2 + 248);
  *(a1 + 512) = *(a2 + 264);
  *(a1 + 496) = v7;
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  *(a2 + 248) = 0;
  *(a1 + 520) = *(a2 + 272);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 528) = 0;
  *(a1 + 528) = *(a2 + 280);
  *(a1 + 544) = *(a2 + 296);
  *(a2 + 280) = 0;
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  *(a1 + 552) = *(a2 + 304);
  if ((adm::graph::isValid(a1 + 248) & 1) == 0)
  {
    v9 = get_adm_log_object();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_fault_impl(&dword_223B4A000, v9, OS_LOG_TYPE_FAULT, "Invalid DSPGraphKernel configuration provided", __p, 2u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Invalid DSPGraphKernel configuration provided");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2784F01F8, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_223B9D010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  adm::graph::DSPGraphKernelConfiguration::~DSPGraphKernelConfiguration(v15);
  v17 = *(v14 + 28);
  if (v17)
  {
    *(v14 + 29) = v17;
    operator delete(v17);
  }

  v18 = *(v14 + 25);
  if (v18)
  {
    *(v14 + 26) = v18;
    operator delete(v18);
  }

  v19 = *(v14 + 24);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  adm::graph::DSPKernel::~DSPKernel(v14);
  _Unwind_Resume(a1);
}

uint64_t adm::graph::DSPKernel::DSPKernel(uint64_t a1, unsigned int a2, uint64_t *a3, unsigned int a4, uint64_t *a5, uint64_t *a6)
{
  v58 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *a1 = &unk_28371D0B8;
  *(a1 + 16) = 0;
  *(a1 + 24) = &unk_28371D188;
  *(a1 + 32) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  v10 = caulk::concurrent::messenger::shared_logging_priority(a1);
  MEMORY[0x223DF3E30](a1 + 144, 0, v10);
  *(a1 + 168) = 0;
  v12 = *a3;
  v11 = a3[1];
  v43 = 0;
  v13 = v11 - v12;
  *(a1 + 176) = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
  if (!v13 && *a5 == a5[1])
  {
    v23 = get_adm_log_object();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    LOWORD(__p) = 0;
    v37 = "No input or output stream provided for RTAID, will not set up client";
LABEL_75:
    _os_log_impl(&dword_223B4A000, v23, OS_LOG_TYPE_DEFAULT, v37, &__p, 2u);
    goto LABEL_36;
  }

  adm::graph::AudioIssueDetectorClient::IDOwner::clear(&v43);
  __p = 0;
  __len[0] = 0;
  __len[1] = 0;
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
  }

  if (!AudioIssueDetectorLibraryLoader(void)::libSym)
  {
    v43 = 0;
    goto LABEL_35;
  }

  v14 = AudioIssueDetectorLibraryLoader(void)::libSym(10, &__p);
  v43 = v14;
  if (__p)
  {
    __len[0] = __p;
    operator delete(__p);
  }

  if (!v14)
  {
LABEL_35:
    v23 = get_adm_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      v36 = "Failed to create audio issue detection client, audio issue analysis will not be available [error: non-critical, impact: no RTAID]";
      goto LABEL_77;
    }

    goto LABEL_36;
  }

  v38 = (a1 + 168);
  v39 = a5;
  v15 = *a3;
  v42 = a3[1];
  if (*a3 != v42)
  {
    v16 = 0;
    while (1)
    {
      v17 = v43;
      v18 = *(a6 + 23);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = a6[1];
      }

      if (v19 >= 0)
      {
        v20 = a6;
      }

      else
      {
        v20 = *a6;
      }

      v47 = v20;
      v48 = v18;
      v50 = 0;
      v51 = 237;
      v49 = v16;
      __p = v56;
      *__len = xmmword_223BFC290;
      v54 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v55 = 0;
      __src = v56;
      __dst = 2;
      v45 = &v47;
      v46 = 237;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__p, "ADM::{}::in-{}", 14, &__dst);
      v21 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len[1] >= 0x17)
      {
        operator new();
      }

      HIBYTE(v46) = __len[1];
      if (__len[1])
      {
        memmove(&__dst, __src, __len[1]);
      }

      *(&__dst + v21) = 0;
      if (__src != v56)
      {
        operator delete(__src);
      }

      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        v22 = AudioIssueDetectorLibraryLoader(void)::libSym(v17, &__dst, v16, 0, v15, a2);
      }

      else
      {
        v22 = -1;
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      if (v22)
      {
        break;
      }

      ++v16;
      v15 += 40;
      if (v15 == v42)
      {
        goto LABEL_37;
      }
    }

    v23 = get_adm_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      v36 = "Failed to register audio issue detection input stream, audio issue analysis will not be available [error: non-critical, impact: no RTAID]";
      goto LABEL_77;
    }

    goto LABEL_36;
  }

LABEL_37:
  v25 = *a5;
  v26 = v39[1];
  if (*v39 != v26)
  {
    v27 = 0;
    while (1)
    {
      v28 = v43;
      v29 = *(a6 + 23);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = a6[1];
      }

      if (v30 >= 0)
      {
        v31 = a6;
      }

      else
      {
        v31 = *a6;
      }

      v47 = v31;
      v48 = v29;
      v50 = 0;
      v51 = 237;
      v49 = v27;
      __p = v56;
      *__len = xmmword_223BFC290;
      v54 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v55 = 0;
      __src = v56;
      __dst = 2;
      v45 = &v47;
      v46 = 237;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&__p, "ADM::{}::out-{}", 15, &__dst);
      v32 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (__len[1] >= 0x17)
      {
        operator new();
      }

      HIBYTE(v46) = __len[1];
      if (__len[1])
      {
        memmove(&__dst, __src, __len[1]);
      }

      *(&__dst + v32) = 0;
      if (__src != v56)
      {
        operator delete(__src);
      }

      v33 = *(a1 + 176);
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        v34 = AudioIssueDetectorLibraryLoader(void)::libSym(v28, &__dst, v27 + v33, 1, v25, a4);
      }

      else
      {
        v34 = -1;
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(__dst);
      }

      if (v34)
      {
        break;
      }

      ++v27;
      v25 += 40;
      if (v25 == v26)
      {
        goto LABEL_61;
      }
    }

    v23 = get_adm_log_object();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      v36 = "Failed to register audio issue detection output stream, audio issue analysis will not be available [error: non-critical, impact: no RTAID]";
      goto LABEL_77;
    }

    goto LABEL_36;
  }

LABEL_61:
  v35 = v43;
  if (AudioIssueDetectorLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
  }

  if (AudioIssueDetectorLibraryLoader(void)::libSym && !AudioIssueDetectorLibraryLoader(void)::libSym(v35))
  {
    adm::graph::AudioIssueDetectorClient::IDOwner::clear(v38);
    v43 = 0;
    *v38 = v35;
    v23 = get_adm_log_object();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_36;
    }

    LOWORD(__p) = 0;
    v37 = "Successfully registered RTAID.";
    goto LABEL_75;
  }

  v23 = get_adm_log_object();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    v36 = "Failed to initialize audio issue detection, audio issue analysis will not be available [error: non-critical, impact: no RTAID]";
LABEL_77:
    _os_log_error_impl(&dword_223B4A000, v23, OS_LOG_TYPE_ERROR, v36, &__p, 2u);
  }

LABEL_36:

  adm::graph::AudioIssueDetectorClient::IDOwner::clear(&v43);
  return a1;
}

void sub_223B9D774(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void adm::graph::DSPGraphKernelConfiguration::~DSPGraphKernelConfiguration(void **this)
{
  v2 = this + 35;
  std::vector<std::shared_ptr<adm::graph::KernelProperty>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 271) < 0)
  {
    operator delete(this[31]);
  }

  if (*(this + 247) < 0)
  {
    operator delete(this[28]);
  }

  v2 = this + 25;
  std::vector<adm::DSPGraphBasicConfiguration::AUPresetOverrideConfig>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 22;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 19;
  std::vector<std::__fs::filesystem::path>::__destroy_vector::operator()[abi:ne200100](&v2);

  adm::graph::KernelConfiguration::~KernelConfiguration(this);
}

void adm::graph::DSPKernel::~DSPKernel(adm::graph::DSPKernel *this)
{
  *this = &unk_28371D0B8;
  *(this + 3) = &unk_28371D188;
  adm::graph::AudioIssueDetectorClient::IDOwner::clear((this + 168));
  MEMORY[0x223DF3E50](this + 144);
  v2 = (this + 104);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 80);
  std::vector<CA::AudioBuffersDeprecated>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 56);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<std::unique_ptr<OpaqueAudioConverter,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioConverter*,&(AudioConverterDispose)>>>::__destroy_vector::operator()[abi:ne200100](&v2);
  *this = &unk_28371D218;
  adm::utility::synchronized_pointer<adm::graph::KernelHostInterface>::~synchronized_pointer(this + 1);
}

void std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v5 = &a2[a3];
  v17[0] = a2;
  v17[1] = &a2[a3];
  v18 = 0;
  v19 = 0;
  v20 = v4;
  v13 = *a4;
  v14 = a4[2];
  LOBYTE(v10.__locale_) = 0;
  v11 = 0;
  v12 = a1;
  LOBYTE(v15.__locale_) = 0;
  v16 = 0;
  if (!a3)
  {
    goto LABEL_14;
  }

  v6 = a2;
  v7 = "The format string terminates at a '{'";
  do
  {
    v8 = v12;
    while (1)
    {
      v9 = *v6;
      if (v9 == 125)
      {
        if (++v6 == v5 || *v6 != 125)
        {
          v7 = "The format string contains an invalid escape sequence";
LABEL_18:
          std::__throw_format_error[abi:ne200100](v7);
        }

        goto LABEL_11;
      }

      if (v9 == 123)
      {
        if (++v6 == v5)
        {
          goto LABEL_18;
        }

        if (*v6 != 123)
        {
          break;
        }
      }

LABEL_11:
      std::__format::__output_buffer<char>::push_back[abi:ne200100](v8, v9);
      if (++v6 == v5)
      {
        goto LABEL_14;
      }
    }

    v12 = v8;
    v6 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v5, v17, &v12);
  }

  while (v6 != v5);
LABEL_14:
  if (v16 == 1)
  {
    std::locale::~locale(&v15);
  }
}

void sub_223B9DB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, uint64_t **a4)
{
  *&v291[1023] = *MEMORY[0x277D85DE8];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_523;
  }

  v9 = *v7;
  if (v9 != 125)
  {
    if (v9 == 58)
    {
      ++v7;
      goto LABEL_5;
    }

LABEL_523:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

LABEL_5:
  *a3 = v7;
  v10 = a4[1];
  if (v10 <= v8)
  {
LABEL_524:
    std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }

  if (v10 > 0xC)
  {
    v11 = &a4[2][4 * v8];
    v13 = *v11;
    v14 = *(v11 + 4);
    v15 = *(v11 + 8);
    v16 = *v11 >> 8;
    LODWORD(v11) = *(v11 + 16);
  }

  else
  {
    v11 = (a4[3] >> (5 * v8)) & 0x1F;
    v12 = &a4[2][2 * v8];
    v13 = *v12;
    v14 = *(v12 + 4);
    v15 = *(v12 + 8);
    v16 = *v12 >> 8;
  }

  switch(v11)
  {
    case 1:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_225;
      }

      v17 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 55);
      v18 = v17;
      if (BYTE1(v285) - 2 < 6)
      {
        *a3 = v17;
        v19 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
        v21 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v13, a4, v19, v20, 0);
        goto LABEL_13;
      }

      if (BYTE1(v285) > 1u)
      {
        std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
      }

      std::__format_spec::__parser<char>::__validate[abi:ne200100](&v285, "a BOOL");
      if ((v285 & 7) == 0)
      {
        LOBYTE(v285) = v285 | 1;
      }

      *a3 = v18;
LABEL_225:
      v125 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v127 = v126;
      if ((v125 & 0x40) != 0)
      {
        std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v289, a4);
        v130 = std::locale::use_facet(&v289, MEMORY[0x277D826C0]);
        std::locale::~locale(&v289);
        v131 = v130->__vftable;
        if (v13)
        {
          (v131[2].~facet)(&v289, v130);
        }

        else
        {
          (v131[2].~facet_0)(&v289, v130);
        }

        if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v132 = &v289;
        }

        else
        {
          v132 = v289.__r_.__value_.__r.__words[0];
        }

        if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v289.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v289.__r_.__value_.__l.__size_;
        }

        v22 = std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v132, size, *a4, v125, v127);
        if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
        {
          v134 = v289.__r_.__value_.__r.__words[0];
          goto LABEL_466;
        }
      }

      else
      {
        if (v13)
        {
          v128 = 4;
        }

        else
        {
          v128 = 5;
        }

        v22 = *a4;
        if (v13)
        {
          v129 = "true";
        }

        else
        {
          v129 = "false";
        }

        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v129, v128, *a4, v125, v127, v128);
      }

      goto LABEL_467;
    case 2:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_51;
      }

      v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 55);
      v45 = BYTE1(v285);
      if (BYTE1(v285) - 2 >= 6)
      {
        if (BYTE1(v285) > 0x13u || ((1 << SBYTE1(v285)) & 0x80401) == 0)
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a character");
        }

        std::__format_spec::__parser<char>::__validate[abi:ne200100](&v285, "a character");
        if ((v285 & 7) == 0)
        {
          LOBYTE(v285) = v285 | 1;
        }
      }

      *a3 = v44;
      switch(v45)
      {
        case 0:
          goto LABEL_51;
        case 19:
          v35 = *a4;
          v135 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
          v137 = v136;
          __p.__r_.__value_.__s.__data_[0] = v13;
          memset(&v289, 0, sizeof(v289));
          std::string::push_back(&v289, 39);
          std::__formatter::__escape[abi:ne200100]<char>(&v289, &__p, 1, 0);
          std::string::push_back(&v289, 39);
          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v138 = &v289 + HIBYTE(v289.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v138 = (v289.__r_.__value_.__r.__words[0] + v289.__r_.__value_.__l.__size_);
          }

          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v139 = &v289;
          }

          else
          {
            v139 = v289.__r_.__value_.__r.__words[0];
          }

          if ((v289.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v140 = HIBYTE(v289.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v140 = v289.__r_.__value_.__l.__size_;
          }

          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v139, v138 - v139, v35, v135, v137, v140);
          if (SHIBYTE(v289.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v289.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        case 10:
LABEL_51:
          v35 = *a4;
          v46 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
          v289.__r_.__value_.__s.__data_[0] = v13;
          std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v289, 1uLL, v35, v46, v47, 1);
          goto LABEL_113;
      }

      v75 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v76 = v141;
      v53 = v13;
      v74 = a4;
      goto LABEL_106;
    case 3:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v48 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v48;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v33 = v49;
      v50 = v13 | (v16 << 8);
      if ((v31 & 0xFF00) == 0xA00)
      {
        if ((v13 | (v16 << 8)) == v13)
        {
          goto LABEL_27;
        }

LABEL_525:
        std::__throw_format_error[abi:ne200100]("Integral value outside the range of the char type");
      }

      if (v50 >= 0)
      {
        v53 = v50;
      }

      else
      {
        v53 = -v50;
      }

      v73 = v16 << 8 >> 31;
      v74 = a4;
      v75 = v31;
      v76 = v33;
      goto LABEL_107;
    case 4:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v30 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v30;
      }

      v31 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v33 = v32;
      v34 = v13 | (v16 << 8) | (v14 << 32);
      if ((v31 & 0xFF00) != 0xA00)
      {
        if (v34 >= 0)
        {
          v62 = v13 | (v16 << 8) | (v14 << 32);
        }

        else
        {
          v62 = -v34;
        }

        v42 = v14 >> 31;
        v67 = a4;
        v68 = v31;
        v69 = v33;
        goto LABEL_111;
      }

      if (v34 != v34)
      {
        goto LABEL_525;
      }

LABEL_27:
      v35 = *a4;
      LOBYTE(v285) = v13;
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v285, 1uLL, v35, v31, v33, 1);
LABEL_113:
      *a4 = v35;
LABEL_468:
      v245 = *a3;
      if (*a3 == a2 || *v245 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
      }

      return v245 + 1;
    case 5:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v54 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v54;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v55;
      v56 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(-1, -257) >= __PAIR128__((v56 >= 0x80) + v15 - 1, v56 - 128))
        {
          goto LABEL_525;
        }

LABEL_80:
        v35 = *a4;
        LOBYTE(v285) = v13;
        std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v285, 1uLL, v35, v40, v42, 1);
        goto LABEL_113;
      }

      v70 = (__PAIR128__(v15 ^ (v15 >> 63), v56 ^ (v15 >> 63)) - __PAIR128__(v15 >> 63, v15 >> 63)) >> 64;
      v43 = (v56 ^ (v15 >> 63)) - (v15 >> 63);
      v72 = v15 >> 63;
      v71 = a4;
LABEL_109:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned __int128,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v43, v70, v71, v40, v42, v72);
      goto LABEL_112;
    case 6:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v51 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v51;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v52;
      v53 = v13 | (v16 << 8);
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (v53 >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v74 = a4;
      v75 = v40;
      v76 = v42;
LABEL_106:
      LOBYTE(v73) = 0;
LABEL_107:
      v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v53, v74, v75, v76, v73);
LABEL_112:
      v35 = v77;
      goto LABEL_113;
    case 7:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v60 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v60;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v61;
      v62 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) != 0xA00)
      {
        v67 = a4;
        v68 = v40;
        v69 = v42;
        LOBYTE(v42) = 0;
LABEL_111:
        v77 = std::__formatter::__format_integer[abi:ne200100]<unsigned long long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v62, v67, v68, v69, v42);
        goto LABEL_112;
      }

      if (v62 >= 0x80)
      {
        goto LABEL_525;
      }

      goto LABEL_80;
    case 8:
      v289.__r_.__value_.__r.__words[0] = 0;
      v289.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v39 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3, 55);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(&v289);
        *a3 = v39;
      }

      v40 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, a4);
      v42 = v41;
      v43 = (v14 << 32) | (v16 << 8) | v13;
      if ((v40 & 0xFF00) == 0xA00)
      {
        if (__PAIR128__(v15, v43) >= 0x80)
        {
          goto LABEL_525;
        }

        goto LABEL_80;
      }

      v70 = v15;
      v71 = a4;
      LOBYTE(v72) = 0;
      goto LABEL_109;
    case 9:
      v277 = 0;
      v278 = -1;
      v279 = 32;
      v280 = 0;
      v281 = 0;
      if (v9 != 58)
      {
        goto LABEL_117;
      }

      v36 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v277, a3, 63);
      if (BYTE1(v277) - 13 < 6)
      {
        if (v278 != -1 || SWORD1(v277) <= -1)
        {
          v38 = v278;
        }

        else
        {
          v38 = 6;
        }

        v278 = v38;
LABEL_116:
        *a3 = v36;
LABEL_117:
        v79 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v277, a4);
        v80 = v78;
        v81 = v16 << 8;
        v82 = v13 | (v16 << 8);
        if ((v13 | (v16 << 8) & 0x7FFFFFFF) < 0x7F800000)
        {
          if (v78 == -1)
          {
            v83 = 149;
          }

          else
          {
            v83 = v78;
          }

          v289.__r_.__value_.__r.__words[0] = v83;
          if (v83 < 150)
          {
            v84 = v83 + 45;
            v289.__r_.__value_.__l.__size_ = v84;
            if ((v83 + 45) >= 0x101)
            {
              operator new();
            }
          }

          else
          {
            LODWORD(v289.__r_.__value_.__l.__data_) = 149;
            HIDWORD(v289.__r_.__value_.__r.__words[0]) = v83 - 149;
            v84 = 194;
            v289.__r_.__value_.__l.__size_ = 194;
            v83 = 149;
          }

          *v273 = v79;
          v85 = BYTE1(v79);
          v289.__r_.__value_.__r.__words[2] = &v290;
          v275 = v79;
          if ((v81 & 0x80000000) != 0)
          {
            v88 = 45;
          }

          else
          {
            v86 = (v79 >> 3) & 3;
            if (v86 == 2)
            {
              v88 = 43;
            }

            else
            {
              v87 = &v290;
              if (v86 != 3)
              {
                goto LABEL_132;
              }

              v88 = 32;
            }
          }

          v290 = v88;
          v87 = v291;
LABEL_132:
          v89 = fabsf(*&v82);
          if (BYTE1(v79) > 0xEu)
          {
            if (BYTE1(v79) - 15 < 2)
            {
              v285 = v87;
              v90 = MEMORY[0x223DF42E0](v87, &v291[v84 - 1], 2, v83, v89);
              __src = v90;
              *v288 = v90;
              if (v83)
              {
                v91 = v83 + 1;
              }

              else
              {
                v91 = 0;
              }

              v92 = &v90[-v91];
              goto LABEL_142;
            }

            if (BYTE1(v79) == 17)
            {
LABEL_148:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v285, &v289, v83, v87);
              goto LABEL_300;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<float,float>(&v285, &v289, v83, v87);
            v93 = __src;
            if (__src != *v288)
            {
              goto LABEL_265;
            }
          }

          else
          {
            if (BYTE1(v79) > 0xBu)
            {
              if (BYTE1(v79) == 12)
              {
                if ((v78 & 0x80000000) != 0)
                {
                  v142 = -1;
                }

                else
                {
                  v142 = v83;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v142, v87);
                v143 = v285;
                v93 = __src;
                while (v143 != v93)
                {
                  v144 = *v143;
                  if ((v144 - 97) < 6)
                  {
                    LOBYTE(v144) = v144 - 32;
                  }

                  *v143++ = v144;
                }

                v145 = 80;
                goto LABEL_299;
              }

              if (BYTE1(v79) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v83, v87);
                goto LABEL_300;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v83, v87);
              v93 = __src;
LABEL_265:
              v145 = 69;
LABEL_299:
              *v93 = v145;
              goto LABEL_300;
            }

            if (!BYTE1(v79))
            {
              if ((v78 & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              v285 = v87;
              v247 = std::to_chars(v87, &v291[v84 - 1], &v290, v89);
              v248 = v247;
              *v288 = v247;
              v249 = v247 - v87;
              if (v247 - v87 < 4)
              {
LABEL_483:
                v251 = v247;
              }

              else
              {
                if (v249 >= 6)
                {
                  v249 = 6;
                }

                v250 = -v249;
                while (*(v247 + v250) != 101)
                {
                  if (++v250 == -3)
                  {
                    goto LABEL_483;
                  }
                }

                v251 = (v247 + v250);
              }

              __src = v251;
              v262 = memchr(v87 + 1, 46, v251 - (v87 + 1));
              if (v262)
              {
                v92 = v262;
              }

              else
              {
                v92 = v251;
              }

              if (v92 == v251)
              {
                v92 = v248;
              }

LABEL_142:
              v286 = v92;
              goto LABEL_300;
            }

            if ((v78 & 0x80000000) != 0)
            {
              v146 = -1;
            }

            else
            {
              v146 = v83;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<float,float>(&v285, v84, &v290, v146, v87);
          }

LABEL_300:
          if ((v275 & 0x20) != 0)
          {
            v157 = v286;
            v158 = *v288;
            if (v286 == *v288)
            {
              **v288 = 46;
              *v288 = ++v158;
              v159 = __src;
              if (__src != v157)
              {
                if (__src + 1 == v157)
                {
                  v166 = *__src;
                  *__src = *(__src + 1);
                  *(v159 + 1) = v166;
                }

                else
                {
                  memmove(&v158[-(v157 - __src)], __src, v157 - __src);
                  *v159 = 46;
                }
              }

              v286 = v159;
              __src = (v159 + 1);
            }

            else
            {
              v159 = v286;
            }

            if ((v85 - 17) <= 1)
            {
              if (v80 <= 1)
              {
                v167 = 1;
              }

              else
              {
                v167 = v80;
              }

              if ((v80 & 0x80000000) != 0)
              {
                v167 = 6;
              }

              v168 = v285 - v159;
              if (__src != v158)
              {
                v168 = -1;
              }

              v169 = v168 + v167;
              v170 = __src + ~v159;
              if (v170 < v169)
              {
                HIDWORD(v289.__r_.__value_.__r.__words[0]) += v169 - v170;
              }
            }
          }

          if ((v275 & 0x40) == 0)
          {
            v171 = *v288;
            v172 = v289.__r_.__value_.__r.__words[2];
            v173 = *v288 - v289.__r_.__value_.__r.__words[2];
            v174 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
            if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) >= *v273 >> 32)
            {
              if (!HIDWORD(v289.__r_.__value_.__r.__words[0]) || (v187 = __src, __src == *v288))
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], *v288 - v289.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
              }

              else
              {
                v22 = *a4;
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], __src - v289.__r_.__value_.__r.__words[2]);
                std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v174, 48);
                std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v187, v171 - v187);
              }
            }

            else
            {
              v22 = *a4;
              if ((v275 & 7) == 4)
              {
                if (v289.__r_.__value_.__r.__words[2] != v285)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
                  ++v172;
                }

                v175 = *v273;
                v176 = v273[0] & 0xB8 | 3;
                v177 = 48;
              }

              else
              {
                v175 = *v273;
                v176 = v273[0];
                v177 = BYTE4(v80);
              }

              v196 = v175 & 0xFFFFFFFFFFFFFF00 | v176;
              v197 = v80 & 0xFFFFFF00FFFFFFFFLL | (v177 << 32);
              if (v174)
              {
                std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171, v22, v196, v197, v173, __src, v174);
              }

              else
              {
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v172, v171 - v172, v22, v196, v197, v173);
              }
            }

            goto LABEL_416;
          }

          v22 = *a4;
          std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v282, a4);
          v178 = std::locale::use_facet(&v282, MEMORY[0x277D826C0]);
          (v178->__vftable[1].__on_zero_shared)(&__p);
          v179 = v286;
          v180 = __src;
          v181 = v285;
          v270 = v286;
          v271 = v178;
          if (__src < v286)
          {
            v179 = __src;
          }

          v272 = v179 - v285;
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v182 = __p.__r_.__value_.__l.__size_;
            if (!__p.__r_.__value_.__l.__size_)
            {
              goto LABEL_377;
            }

            p_p = __p.__r_.__value_.__r.__words[0];
            v184 = *__p.__r_.__value_.__l.__data_;
            if (v272 <= v184)
            {
              *__p.__r_.__value_.__l.__data_ = 0;
              __p.__r_.__value_.__l.__size_ = 0;
              goto LABEL_377;
            }

            v186 = *__p.__r_.__value_.__l.__data_;
            v183 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (!*(&__p.__r_.__value_.__s + 23))
            {
              goto LABEL_377;
            }

            if (v272 <= __p.__r_.__value_.__s.__data_[0])
            {
              __p.__r_.__value_.__s.__data_[0] = 0;
              *(&__p.__r_.__value_.__s + 23) = 0;
              goto LABEL_377;
            }

            v182 = __p.__r_.__value_.__l.__size_;
            v183 = __p.__r_.__value_.__r.__words[0];
            v184 = __p.__r_.__value_.__s.__data_[0];
            p_p = &__p;
            v186 = __p.__r_.__value_.__s.__data_[0];
          }

          memset(&v283, 0, sizeof(v283));
          v188 = (v183 + v182);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v189 = &__p + SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v189 = v188;
          }

          v190 = v272 - v184;
          if (v272 - v184 >= 1)
          {
            v191 = (v189 - 1);
            do
            {
              std::string::push_back(&v283, v186);
              if (p_p == v191)
              {
                v186 = p_p->__r_.__value_.__s.__data_[0];
              }

              else
              {
                v192 = (&p_p->__r_.__value_.__l.__data_ + 1);
                v193 = &p_p->__r_.__value_.__s.__data_[1];
                do
                {
                  v194 = *v193++;
                  v186 = v194;
                  if (v194)
                  {
                    v195 = 1;
                  }

                  else
                  {
                    v195 = v192 == v191;
                  }

                  v192 = v193;
                }

                while (!v195);
                p_p = (v193 - 1);
              }

              v190 -= v186;
            }

            while (v190 > 0);
          }

          std::string::push_back(&v283, v186 + v190);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          __p = v283;
LABEL_377:
          v198 = HIDWORD(v80);
          v269 = *v288;
          v199 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v199 = __p.__r_.__value_.__l.__size_;
          }

          v200 = *v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0]) + v199 - (v199 != 0);
          v201 = v275 & 7;
          v202 = (*v273 >> 32) - v200;
          if (*v273 >> 32 > v200)
          {
            if (v201 == 4)
            {
              v203 = 48;
            }

            else
            {
              v203 = v198;
            }

            if (v201 == 4)
            {
              v204 = 3;
            }

            else
            {
              v204 = v275 & 7;
            }

            if (v204 > 1)
            {
              if (v204 != 3)
              {
                *v274 = v202 - (v202 >> 1);
                v202 >>= 1;
                goto LABEL_393;
              }
            }

            else if (v204)
            {
              *v274 = v202;
              v202 = 0;
LABEL_393:
              if (v201 == 4 && v181 != v289.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v289.__r_.__value_.__r.__words[2]);
              }

              v205 = v198 & 0xFFFFFF00 | v203;
              std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, v202, v205);
              if (v201 != 4 && v181 != v289.__r_.__value_.__r.__words[2])
              {
                std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, *v289.__r_.__value_.__r.__words[2]);
              }

              v276 = v180;
              v206 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
              {
                v206 = __p.__r_.__value_.__l.__size_;
                if (__p.__r_.__value_.__l.__size_)
                {
                  v207 = __p.__r_.__value_.__r.__words[0];
LABEL_404:
                  v208 = v207 + v206;
                  v209 = (v271->__vftable[1].~facet_0)(v271);
                  v210 = &v207->__r_.__value_.__s.__data_[1];
                  for (i = v208; ; v208 = i)
                  {
                    v212 = *--i;
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v212);
                    if (v208 == v210)
                    {
                      break;
                    }

                    v181 += *i;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v209);
                  }

LABEL_408:
                  v213 = v269;
                  if (v270 == v269)
                  {
                    v213 = v270;
                    v215 = v276;
                  }

                  else
                  {
                    v214 = (v271->__vftable[1].~facet)(v271);
                    v215 = v276;
                    std::__format::__output_buffer<char>::push_back[abi:ne200100](v22, v214);
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, (v270 + 1), &v276[-v270 - 1]);
                    std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, SHIDWORD(v289.__r_.__value_.__r.__words[0]), 48);
                  }

                  if (v215 != v213)
                  {
                    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v215, v213 - v215);
                  }

                  std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v22, *v274, v205);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  std::locale::~locale(&v282);
LABEL_416:
                  if (v289.__r_.__value_.__l.__size_ < 0x101)
                  {
                    goto LABEL_467;
                  }

                  goto LABEL_465;
                }
              }

              else if (*(&__p.__r_.__value_.__s + 23))
              {
                v207 = &__p;
                goto LABEL_404;
              }

              std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v181, v272);
              goto LABEL_408;
            }

            *v274 = 0;
            goto LABEL_393;
          }

          *v274 = 0;
          v202 = 0;
          v203 = v198;
          goto LABEL_393;
        }

        v265 = *a4;
        LODWORD(v266) = v81 >> 31;
        v267 = v79;
        v268 = v80;
LABEL_521:
        v21 = std::__formatter::__format_floating_point_non_finite[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>(v265, v267, v268, v266, 0);
LABEL_13:
        v22 = v21;
        goto LABEL_467;
      }

      if (BYTE1(v277) <= 0xCu && ((1 << SBYTE1(v277)) & 0x1801) != 0)
      {
        goto LABEL_116;
      }

      goto LABEL_527;
    case 10:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_188;
      }

      v63 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 < 6)
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v65 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v65 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v65;
        goto LABEL_187;
      }

      if (__p.__r_.__value_.__s.__data_[1] <= 0xCu && ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) != 0)
      {
LABEL_187:
        *a3 = v63;
LABEL_188:
        v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
        v96 = v111;
        v112 = v13 | (v16 << 8);
        v98 = v14 << 32;
        *&v113 = v112 | (v14 << 32);
        if ((v112 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
        {
          if (v111 == -1)
          {
            v114 = 1074;
          }

          else
          {
            v114 = v111;
          }

          v289.__r_.__value_.__r.__words[0] = v114;
          if (v114 >= 1075)
          {
            LODWORD(v289.__r_.__value_.__l.__data_) = 1074;
            HIDWORD(v289.__r_.__value_.__r.__words[0]) = v114 - 1074;
            v289.__r_.__value_.__l.__size_ = 1390;
            goto LABEL_195;
          }

          v115 = v114 + 316;
          v289.__r_.__value_.__l.__size_ = v115;
          if ((v114 + 316) >= 0x401)
          {
LABEL_195:
            operator new();
          }

          v116 = v95;
          v289.__r_.__value_.__r.__words[2] = &v290;
          if ((v98 & 0x8000000000000000) != 0)
          {
            v119 = 45;
          }

          else
          {
            v117 = (v95 >> 3) & 3;
            if (v117 == 2)
            {
              v119 = 43;
            }

            else
            {
              v118 = &v290;
              if (v117 != 3)
              {
                goto LABEL_203;
              }

              v119 = 32;
            }
          }

          v290 = v119;
          v118 = v291;
LABEL_203:
          v120 = fabs(v113);
          if (BYTE1(v95) > 0xEu)
          {
            if (BYTE1(v95) - 15 < 2)
            {
              v285 = v118;
              v121 = MEMORY[0x223DF4280](v118, &v291[v115 - 1], 2, v114, v120);
              __src = v121;
              *v288 = v121;
              if (v114)
              {
                v122 = v114 + 1;
              }

              else
              {
                v122 = 0;
              }

              v123 = &v121[-v122];
              goto LABEL_213;
            }

            if (BYTE1(v95) == 17)
            {
LABEL_220:
              std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v285, &v289, v114, v118);
              goto LABEL_316;
            }

            std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,double>(&v285, &v289, v114, v118);
            v124 = __src;
            if (__src != *v288)
            {
              goto LABEL_289;
            }
          }

          else
          {
            if (BYTE1(v95) > 0xBu)
            {
              if (BYTE1(v95) == 12)
              {
                if ((v111 & 0x80000000) != 0)
                {
                  v150 = -1;
                }

                else
                {
                  v150 = v114;
                }

                std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v150, v118);
                v151 = v285;
                v124 = __src;
                while (v151 != v124)
                {
                  v152 = *v151;
                  if ((v152 - 97) < 6)
                  {
                    LOBYTE(v152) = v152 - 32;
                  }

                  *v151++ = v152;
                }

                v154 = 80;
                goto LABEL_315;
              }

              if (BYTE1(v95) == 13)
              {
                std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v114, v118);
                goto LABEL_316;
              }

              std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v114, v118);
              v124 = __src;
LABEL_289:
              v154 = 69;
LABEL_315:
              *v124 = v154;
              goto LABEL_316;
            }

            if (!BYTE1(v95))
            {
              if ((v111 & 0x80000000) == 0)
              {
                goto LABEL_220;
              }

              v285 = v118;
              v257 = std::to_chars(v118, &v291[v115 - 1], &v290, v120);
              v258 = v257;
              *v288 = v257;
              v259 = v257 - v118;
              if (v257 - v118 < 4)
              {
LABEL_497:
                v261 = v257;
              }

              else
              {
                if (v259 >= 6)
                {
                  v259 = 6;
                }

                v260 = -v259;
                while (*(v257 + v260) != 101)
                {
                  if (++v260 == -3)
                  {
                    goto LABEL_497;
                  }
                }

                v261 = (v257 + v260);
              }

              __src = v261;
              v264 = memchr(v118 + 1, 46, v261 - (v118 + 1));
              if (v264)
              {
                v123 = v264;
              }

              else
              {
                v123 = v261;
              }

              if (v123 == v261)
              {
                v123 = v258;
              }

LABEL_213:
              v286 = v123;
              if ((v95 & 0x20) == 0)
              {
                goto LABEL_457;
              }

              goto LABEL_317;
            }

            if ((v111 & 0x80000000) != 0)
            {
              v156 = -1;
            }

            else
            {
              v156 = v114;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,double>(&v285, v115, &v290, v156, v118);
          }

LABEL_316:
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_457;
          }

LABEL_317:
          v163 = v286;
          v164 = *v288;
          if (v286 == *v288)
          {
            **v288 = 46;
            *v288 = ++v164;
            v165 = __src;
            if (__src != v163)
            {
              if (__src + 1 == v163)
              {
                v234 = *__src;
                *__src = *(__src + 1);
                *(v165 + 1) = v234;
              }

              else
              {
                memmove(&v164[-(v163 - __src)], __src, v163 - __src);
                *v165 = 46;
              }
            }

            v286 = v165;
            __src = (v165 + 1);
          }

          else
          {
            v165 = v286;
          }

          if (BYTE1(v95) - 17 <= 1)
          {
            if (v96 <= 1)
            {
              v235 = 1;
            }

            else
            {
              v235 = v96;
            }

            if ((v96 & 0x80000000) != 0)
            {
              v235 = 6;
            }

            v236 = v285 - v165;
            if (__src != v164)
            {
              v236 = -1;
            }

            v237 = v236 + v235;
            v238 = __src + ~v165;
            if (v238 < v237)
            {
              HIDWORD(v289.__r_.__value_.__r.__words[0]) += v237 - v238;
            }
          }

LABEL_457:
          if ((v95 & 0x40) == 0)
          {
            v221 = *v288;
            v239 = v95;
            v223 = v289.__r_.__value_.__r.__words[2];
            v224 = *v288 - v289.__r_.__value_.__r.__words[2];
            v225 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
            if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) < v239 >> 32)
            {
              v240 = v116;
              v241 = v96;
              v242 = v239;
              v22 = *a4;
              if ((v240 & 7) == 4)
              {
                if (v289.__r_.__value_.__r.__words[2] != v285)
                {
                  std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
                  ++v223;
                }

                v243 = v242 & 0xB8 | 3;
                v244 = 48;
              }

              else
              {
                v243 = v239;
                v244 = BYTE4(v241);
              }

              v232 = v242 & 0xFFFFFFFFFFFFFF00 | v243;
              v233 = v241 & 0xFFFFFF00FFFFFFFFLL | (v244 << 32);
              if (!v225)
              {
LABEL_476:
                std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221 - v223, v22, v232, v233, v224);
LABEL_464:
                if (v289.__r_.__value_.__l.__size_ < 0x401)
                {
LABEL_467:
                  *a4 = v22;
                  goto LABEL_468;
                }

LABEL_465:
                v134 = v289.__r_.__value_.__r.__words[2];
LABEL_466:
                operator delete(v134);
                goto LABEL_467;
              }

LABEL_443:
              std::__formatter::__write_using_trailing_zeros[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v223, v221, v22, v232, v233, v224, __src, v225);
              goto LABEL_464;
            }

            if (!HIDWORD(v289.__r_.__value_.__r.__words[0]))
            {
              goto LABEL_473;
            }

            v231 = __src;
            if (__src == *v288)
            {
              goto LABEL_473;
            }

            goto LABEL_439;
          }

          goto LABEL_463;
        }

LABEL_519:
        v265 = *a4;
        v266 = v98 >> 63;
        v267 = v95;
        v268 = v96;
        goto LABEL_521;
      }

      goto LABEL_527;
    case 11:
      __p.__r_.__value_.__r.__words[0] = 0;
      __p.__r_.__value_.__l.__size_ = 0x20FFFFFFFFLL;
      if (v9 != 58)
      {
        goto LABEL_152;
      }

      v57 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&__p, a3, 63);
      if (__p.__r_.__value_.__s.__data_[1] - 13 >= 6)
      {
        if (__p.__r_.__value_.__s.__data_[1] > 0xCu || ((1 << __p.__r_.__value_.__s.__data_[1]) & 0x1801) == 0)
        {
LABEL_527:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else
      {
        if (LODWORD(__p.__r_.__value_.__r.__words[1]) != -1 || *&__p.__r_.__value_.__s.__data_[2] <= -1)
        {
          v59 = __p.__r_.__value_.__r.__words[1];
        }

        else
        {
          v59 = 6;
        }

        LODWORD(__p.__r_.__value_.__r.__words[1]) = v59;
      }

      *a3 = v57;
LABEL_152:
      v95 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&__p, a4);
      v96 = v94;
      v97 = v13 | (v16 << 8);
      v98 = v14 << 32;
      *&v99 = v97 | (v14 << 32);
      if ((v97 | (v14 << 32) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        goto LABEL_519;
      }

      if (v94 == -1)
      {
        v100 = 1074;
      }

      else
      {
        v100 = v94;
      }

      v289.__r_.__value_.__r.__words[0] = v100;
      if (v100 >= 1075)
      {
        LODWORD(v289.__r_.__value_.__l.__data_) = 1074;
        HIDWORD(v289.__r_.__value_.__r.__words[0]) = v100 - 1074;
        v289.__r_.__value_.__l.__size_ = 1390;
        goto LABEL_159;
      }

      v101 = v100 + 316;
      v289.__r_.__value_.__l.__size_ = v101;
      if ((v100 + 316) >= 0x401)
      {
LABEL_159:
        operator new();
      }

      v102 = v95;
      v289.__r_.__value_.__r.__words[2] = &v290;
      if ((v98 & 0x8000000000000000) != 0)
      {
        v105 = 45;
      }

      else
      {
        v103 = (v95 >> 3) & 3;
        if (v103 == 2)
        {
          v105 = 43;
        }

        else
        {
          v104 = &v290;
          if (v103 != 3)
          {
            goto LABEL_167;
          }

          v105 = 32;
        }
      }

      v290 = v105;
      v104 = v291;
LABEL_167:
      v106 = fabs(v99);
      if (BYTE1(v95) > 0xEu)
      {
        if (BYTE1(v95) - 15 < 2)
        {
          v285 = v104;
          v107 = MEMORY[0x223DF42B0](v104, &v291[v101 - 1], 2, v100, v106);
          __src = v107;
          *v288 = v107;
          if (v100)
          {
            v108 = v100 + 1;
          }

          else
          {
            v108 = 0;
          }

          v109 = &v107[-v108];
          goto LABEL_177;
        }

        if (BYTE1(v95) == 17)
        {
LABEL_184:
          std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v285, &v289, v100, v104);
          goto LABEL_308;
        }

        std::__formatter::__format_buffer_general_lower_case[abi:ne200100]<double,long double>(&v285, &v289, v100, v104);
        v110 = __src;
        if (__src != *v288)
        {
          goto LABEL_287;
        }
      }

      else
      {
        if (BYTE1(v95) > 0xBu)
        {
          if (BYTE1(v95) == 12)
          {
            if ((v94 & 0x80000000) != 0)
            {
              v147 = -1;
            }

            else
            {
              v147 = v100;
            }

            std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v147, v104);
            v148 = v285;
            v110 = __src;
            while (v148 != v110)
            {
              v149 = *v148;
              if ((v149 - 97) < 6)
              {
                LOBYTE(v149) = v149 - 32;
              }

              *v148++ = v149;
            }

            v153 = 80;
            goto LABEL_307;
          }

          if (BYTE1(v95) == 13)
          {
            std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v100, v104);
            goto LABEL_308;
          }

          std::__formatter::__format_buffer_scientific_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v100, v104);
          v110 = __src;
LABEL_287:
          v153 = 69;
LABEL_307:
          *v110 = v153;
          goto LABEL_308;
        }

        if (!BYTE1(v95))
        {
          if ((v94 & 0x80000000) == 0)
          {
            goto LABEL_184;
          }

          v285 = v104;
          v252 = std::to_chars(v104, &v291[v101 - 1], &v290, v106);
          v253 = v252;
          *v288 = v252;
          v254 = v252 - v104;
          if (v252 - v104 < 4)
          {
LABEL_490:
            v256 = v252;
          }

          else
          {
            if (v254 >= 6)
            {
              v254 = 6;
            }

            v255 = -v254;
            while (*(v252 + v255) != 101)
            {
              if (++v255 == -3)
              {
                goto LABEL_490;
              }
            }

            v256 = (v252 + v255);
          }

          __src = v256;
          v263 = memchr(v104 + 1, 46, v256 - (v104 + 1));
          if (v263)
          {
            v109 = v263;
          }

          else
          {
            v109 = v256;
          }

          if (v109 == v256)
          {
            v109 = v253;
          }

LABEL_177:
          v286 = v109;
          if ((v95 & 0x20) == 0)
          {
            goto LABEL_430;
          }

          goto LABEL_309;
        }

        if ((v94 & 0x80000000) != 0)
        {
          v155 = -1;
        }

        else
        {
          v155 = v100;
        }

        std::__formatter::__format_buffer_hexadecimal_lower_case[abi:ne200100]<double,long double>(&v285, v101, &v290, v155, v104);
      }

LABEL_308:
      if ((v95 & 0x20) == 0)
      {
        goto LABEL_430;
      }

LABEL_309:
      v160 = v286;
      v161 = *v288;
      if (v286 == *v288)
      {
        **v288 = 46;
        *v288 = ++v161;
        v162 = __src;
        if (__src != v160)
        {
          if (__src + 1 == v160)
          {
            v216 = *__src;
            *__src = *(__src + 1);
            *(v162 + 1) = v216;
          }

          else
          {
            memmove(&v161[-(v160 - __src)], __src, v160 - __src);
            *v162 = 46;
          }
        }

        v286 = v162;
        __src = (v162 + 1);
      }

      else
      {
        v162 = v286;
      }

      if (BYTE1(v95) - 17 <= 1)
      {
        if (v96 <= 1)
        {
          v217 = 1;
        }

        else
        {
          v217 = v96;
        }

        if ((v96 & 0x80000000) != 0)
        {
          v217 = 6;
        }

        v218 = v285 - v162;
        if (__src != v161)
        {
          v218 = -1;
        }

        v219 = v218 + v217;
        v220 = __src + ~v162;
        if (v220 < v219)
        {
          HIDWORD(v289.__r_.__value_.__r.__words[0]) += v219 - v220;
        }
      }

LABEL_430:
      if ((v95 & 0x40) == 0)
      {
        v221 = *v288;
        v222 = v95;
        v223 = v289.__r_.__value_.__r.__words[2];
        v224 = *v288 - v289.__r_.__value_.__r.__words[2];
        v225 = SHIDWORD(v289.__r_.__value_.__r.__words[0]);
        if ((*v288 - v289.__r_.__value_.__r.__words[2] + SHIDWORD(v289.__r_.__value_.__r.__words[0])) < v222 >> 32)
        {
          v226 = v102;
          v227 = v96;
          v228 = v222;
          v22 = *a4;
          if ((v226 & 7) == 4)
          {
            if (v289.__r_.__value_.__r.__words[2] != v285)
            {
              std::__format::__output_buffer<char>::push_back[abi:ne200100](*a4, *v289.__r_.__value_.__r.__words[2]);
              ++v223;
            }

            v229 = v228 & 0xB8 | 3;
            v230 = 48;
          }

          else
          {
            v229 = v222;
            v230 = BYTE4(v227);
          }

          v232 = v228 & 0xFFFFFFFFFFFFFF00 | v229;
          v233 = v227 & 0xFFFFFF00FFFFFFFFLL | (v230 << 32);
          if (!v225)
          {
            goto LABEL_476;
          }

          goto LABEL_443;
        }

        if (!HIDWORD(v289.__r_.__value_.__r.__words[0]) || (v231 = __src, __src == *v288))
        {
LABEL_473:
          v22 = *a4;
          std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], *v288 - v289.__r_.__value_.__r.__words[2]);
          std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
          goto LABEL_464;
        }

LABEL_439:
        v22 = *a4;
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a4, v289.__r_.__value_.__r.__words[2], __src - v289.__r_.__value_.__r.__words[2]);
        std::__format::__output_buffer<char>::__fill[abi:ne200100](v22, v225, 48);
        std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v22, v231, v221 - v231);
        goto LABEL_464;
      }

LABEL_463:
      v22 = *a4;
      std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v283, a4);
      std::__formatter::__format_locale_specific_form[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,double,char>(v22, &v289, &v285, &v283, v95, v96);
      std::locale::~locale(&v283);
      goto LABEL_464;
    case 12:
      LODWORD(v289.__r_.__value_.__l.__data_) = 1;
      *(v289.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v289.__r_.__value_.__s.__data_[12] = 32;
      *(&v289.__r_.__value_.__r.__words[1] + 5) = 0;
      v289.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3);
      }

      v66 = strlen((v13 | (v16 << 8) | (v14 << 32)));
      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, (v13 | (v16 << 8) | (v14 << 32)), v66, a4);
      goto LABEL_95;
    case 13:
      LODWORD(v289.__r_.__value_.__l.__data_) = 1;
      *(v289.__r_.__value_.__r.__words + 4) = 0xFFFFFFFF00000000;
      v289.__r_.__value_.__s.__data_[12] = 32;
      *(&v289.__r_.__value_.__r.__words[1] + 5) = 0;
      v289.__r_.__value_.__s.__data_[15] = 0;
      if (v9 == 58)
      {
        *a3 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v289, a3);
      }

      v29 = std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v289, (v13 | (v16 << 8) | (v14 << 32)), v15, a4);
      goto LABEL_95;
    case 14:
      v285 = 0;
      v286 = 0x20FFFFFFFFLL;
      if (v9 == 58)
      {
        v23 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v285, a3, 36);
        if (BYTE1(v285) - 8 >= 2 && BYTE1(v285))
        {
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
        }

        *a3 = v23;
      }

      v25 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v285, a4);
      v26 = v13 | (v16 << 8) | (v14 << 32);
      v27 = v25 & 0xFF00;
      v28 = v25 & 0xFFFFFFFFFFFF00DFLL;
      if (v27 == 2304)
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x720, v24, &v289, &v289.__r_.__value_.__s.__data_[19], "0X", 16);
      }

      else
      {
        v29 = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v26, a4, v28 | 0x620, v24, &v289, &v289.__r_.__value_.__s.__data_[19], "0x", 16);
      }

LABEL_95:
      *a4 = v29;
      goto LABEL_468;
    case 15:
      (v15)(a3, a4, v13 | (v16 << 8) | (v14 << 32));
      goto LABEL_468;
    default:
      goto LABEL_524;
  }
}

void sub_223B9FB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, std::locale a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::locale a34, unint64_t a35, void *__p)
{
  if (a35 >= 0x401)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__format::__output_buffer<char>::push_back[abi:ne200100](uint64_t *result, char a2)
{
  v2 = result[4];
  if (!v2 || (v4 = *v2, v3 = v2[1], v2[1] = v3 + 1, v3 < v4))
  {
    v5 = *result;
    v6 = result[2];
    result[2] = v6 + 1;
    *(v5 + v6) = a2;
    if (result[2] == result[1])
    {
      return (result[3])(result, 2);
    }
  }

  return result;
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *result;
  if (v4 == 125 || v4 == 58)
  {
    v6 = *(a3 + 16);
    if (v6)
    {
      if (v6 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 2;
    }

    ++*(a3 + 24);
  }

  else if (v4 == 48)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      if (v5 == 2)
      {
LABEL_13:
        std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }

    ++result;
  }

  else
  {
    if ((v4 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    result = std::__format::__parse_number[abi:ne200100]<char const*>(result, a2);
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      *(a3 + 16) = 1;
    }
  }

  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, char a3)
{
  v4 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return v4;
  }

  v5 = *v4;
  if (v5 == 125)
  {
    return v4;
  }

  v25[0] = *a2;
  v25[1] = v3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v25) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v9 = v25[0];
  if (v25[0] >= v3)
  {
    goto LABEL_9;
  }

  v10 = *v25[0];
  switch(v10)
  {
    case '<':
      v11 = 1;
LABEL_18:
      *a1 = *a1 & 0xF8 | v11;
      v13 = v9 - v4;
      if (v9 - v4 == 1)
      {
        if (*v4 == 123)
        {
          std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
        }
      }

      else if (v9 == v4)
      {
LABEL_23:
        v4 += v13;
        goto LABEL_24;
      }

      memmove((a1 + 12), v4, v13);
      goto LABEL_23;
    case '>':
      v11 = 3;
      goto LABEL_18;
    case '^':
      v11 = 2;
      goto LABEL_18;
  }

LABEL_9:
  switch(v5)
  {
    case '<':
      v12 = 1;
      break;
    case '>':
      v12 = 3;
      break;
    case '^':
      v12 = 2;
      break;
    default:
      goto LABEL_25;
  }

  *a1 = *a1 & 0xF8 | v12;
LABEL_24:
  if (++v4 == v3)
  {
    return v4;
  }

LABEL_25:
  if (a3)
  {
    v14 = *v4;
    switch(v14)
    {
      case ' ':
        v15 = *a1 | 0x18;
        break;
      case '+':
        v15 = *a1 & 0xE7 | 0x10;
        break;
      case '-':
        v15 = *a1 & 0xE7 | 8;
        break;
      default:
        goto LABEL_33;
    }

    *a1 = v15;
    if (++v4 == v3)
    {
      return v4;
    }
  }

LABEL_33:
  if ((a3 & 2) != 0 && *v4 == 35)
  {
    *a1 |= 0x20u;
    if (++v4 == v3)
    {
      return v4;
    }
  }

  if ((a3 & 4) != 0)
  {
    v16 = *v4;
    if (v16 != 48)
    {
      goto LABEL_42;
    }

    if ((*a1 & 7) == 0)
    {
      *a1 |= 4u;
    }

    if (++v4 == v3)
    {
      return v4;
    }
  }

  v16 = *v4;
LABEL_42:
  if (v16 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 1, v3, a2);
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    if (v16 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v16 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_48;
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v4, v3);
  }

  *(a1 + 4) = v17;
  if (v3 == v4)
  {
    return v4;
  }

LABEL_48:
  if ((a3 & 8) == 0 || *v4 != 46)
  {
    goto LABEL_56;
  }

  v18 = v4 + 1;
  if (v4 + 1 == v3)
  {
    std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
  }

  v19 = *v18;
  if (v19 == 123)
  {
    v4 = std::__format_spec::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, v3, a2);
    *(a1 + 2) |= 0x8000u;
    *(a1 + 8) = v20;
  }

  else
  {
    if ((v19 - 58) <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
    }

    v4 = std::__format::__parse_number[abi:ne200100]<char const*>(v18, v3);
    *(a1 + 8) = v21;
    *(a1 + 2) &= ~0x8000u;
  }

  if (v3 != v4)
  {
LABEL_56:
    if ((a3 & 0x10) != 0)
    {
      v22 = *v4;
      if (v22 != 76)
      {
        goto LABEL_60;
      }

      *a1 |= 0x40u;
      if (++v4 == v3)
      {
        return v4;
      }
    }

    v22 = *v4;
LABEL_60:
    if (v22 <= 97)
    {
      if (v22 <= 69)
      {
        if (v22 > 65)
        {
          if (v22 == 66)
          {
            v23 = 3;
            goto LABEL_103;
          }

          if (v22 == 69)
          {
            v23 = 14;
            goto LABEL_103;
          }
        }

        else
        {
          if (v22 == 63)
          {
            v23 = 19;
            goto LABEL_103;
          }

          if (v22 == 65)
          {
            v23 = 12;
            goto LABEL_103;
          }
        }
      }

      else if (v22 <= 79)
      {
        if (v22 == 70)
        {
          v23 = 16;
          goto LABEL_103;
        }

        if (v22 == 71)
        {
          v23 = 18;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'P':
            v23 = 9;
            goto LABEL_103;
          case 'X':
            v23 = 7;
            goto LABEL_103;
          case 'a':
            v23 = 11;
LABEL_103:
            *(a1 + 1) = v23;
            ++v4;
            break;
        }
      }
    }

    else
    {
      if (v22 <= 102)
      {
        if (v22 <= 99)
        {
          if (v22 == 98)
          {
            v23 = 2;
          }

          else
          {
            v23 = 10;
          }
        }

        else if (v22 == 100)
        {
          v23 = 5;
        }

        else if (v22 == 101)
        {
          v23 = 13;
        }

        else
        {
          v23 = 15;
        }

        goto LABEL_103;
      }

      if (v22 <= 111)
      {
        if (v22 == 103)
        {
          v23 = 17;
          goto LABEL_103;
        }

        if (v22 == 111)
        {
          v23 = 4;
          goto LABEL_103;
        }
      }

      else
      {
        switch(v22)
        {
          case 'p':
            v23 = 8;
            goto LABEL_103;
          case 's':
            v23 = 1;
            goto LABEL_103;
          case 'x':
            v23 = 6;
            goto LABEL_103;
        }
      }
    }

    if (v4 != v3 && *v4 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
    }
  }

  return v4;
}

_BYTE *std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(_BYTE *result)
{
  v1 = result[1];
  if ((v1 - 2) >= 6 && v1 != 0)
  {
    if (v1 != 10)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("an integer");
    }

    v3 = result;
    result = std::__format_spec::__parser<char>::__validate[abi:ne200100](result, "an integer");
    if ((*v3 & 7) == 0)
    {
      *v3 |= 1u;
    }
  }

  return result;
}

void std::__format_spec::__throw_invalid_type_format_error[abi:ne200100](const char *a1)
{
  std::string::basic_string[abi:ne200100]<0>(&v8, "The type option contains an invalid value for ");
  v2 = strlen(a1);
  v3 = std::string::append(&v8, a1, v2);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v9.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v9.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v9, " formatting argument", 0x14uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v11 = v5->__r_.__value_.__r.__words[2];
  v10 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (v11 >= 0)
  {
    v7 = &v10;
  }

  else
  {
    v7 = v10;
  }

  std::__throw_format_error[abi:ne200100](v7);
}

void sub_223BA0354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  *&v23[23] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  if ((*(a1 + 1) & 0x4000) == 0)
  {
    v7 = *(a1 + 1);
    if ((*(a1 + 1) & 0x8000) == 0)
    {
      return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
    }

    goto LABEL_10;
  }

  v8 = *(a1 + 1);
  v9 = a2[1];
  if (v9 <= v8)
  {
    LOBYTE(v11) = 0;
  }

  else if (v9 > 0xC)
  {
    v12 = a2[2] + 32 * v8;
    v2 = *v12;
    v8 = *(v12 + 8);
    LOBYTE(v11) = *(v12 + 16);
    *v19 = *(v12 + 17);
    *&v19[7] = *(v12 + 24);
  }

  else
  {
    v10 = a2[2];
    v11 = (a2[3] >> (5 * v8)) & 0x1FLL;
    v2 = *(v10 + 16 * v8);
    v8 = *(v10 + 16 * v8 + 8);
  }

  v20 = v2;
  v21 = v8;
  v22 = v11;
  *v23 = *v19;
  *&v23[7] = *&v19[7];
  v7 = std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  if ((*(a1 + 1) & 0x8000) != 0)
  {
LABEL_10:
    v13 = *(a1 + 2);
    v14 = a2[1];
    if (v14 <= v13)
    {
      LOBYTE(v16) = 0;
    }

    else if (v14 > 0xC)
    {
      v17 = a2[2] + 32 * v13;
      v2 = *v17;
      v13 = *(v17 + 8);
      LOBYTE(v16) = *(v17 + 16);
      *v19 = *(v17 + 17);
      *&v19[7] = *(v17 + 24);
    }

    else
    {
      v15 = a2[2];
      v16 = (a2[3] >> (5 * v13)) & 0x1FLL;
      v2 = *(v15 + 16 * v13);
      v13 = *(v15 + 16 * v13 + 8);
    }

    v20 = v2;
    v21 = v13;
    v22 = v16;
    *v23 = *v19;
    *&v23[7] = *&v19[7];
    std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v20);
  }

  return (v6 << 8) | (v7 << 32) | v5 & 0x7F;
}

unsigned __int8 *std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2)
{
  result = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(a1, a2, 40);
  v4 = *(a1 + 1);
  if (v4 >= 2 && v4 != 19)
  {
    std::__throw_format_error[abi:ne200100]("The type option contains an invalid value for a string formatting argument");
  }

  return result;
}

void *std::__formatter_string<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, unsigned __int8 *a2, size_t a3, uint64_t *a4)
{
  v6 = *(a1 + 1);
  v7 = *a4;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a4);
  v10 = v8;
  if (v6 == 19)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::push_back(&v15, 34);
    std::__formatter::__escape[abi:ne200100]<char>(&v15, a2, a3, 1);
    std::string::push_back(&v15, 34);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v15;
    }

    else
    {
      v11 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v13 = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v11, size, v7, v9, v10);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return v13;
  }

  else
  {

    return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a2, a3, v7, v9, v8);
  }
}

void sub_223BA06A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__formatter::__format_integer[abi:ne200100]<unsigned long,char *,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unint64_t a1, uint64_t **a2, unint64_t a3, unint64_t a4, char *a5, char *a6, char *a7, uint64_t a8)
{
  v8 = a5;
  v12 = (a3 >> 3) & 3;
  if (v12 == 2)
  {
    v14 = 43;
    goto LABEL_5;
  }

  v13 = a5;
  if (v12 == 3)
  {
    v14 = 32;
LABEL_5:
    *a5 = v14;
    v13 = a5 + 1;
  }

  if ((a3 & 0x20) != 0)
  {
    if (a7)
    {
      v15 = *a7;
      if (*a7)
      {
        v16 = a7 + 1;
        do
        {
          *v13++ = v15;
          v17 = *v16++;
          v15 = v17;
        }

        while (v17);
      }
    }
  }

  v18 = std::__to_chars_integral[abi:ne200100]<unsigned long long>(v13, a6, a1, a8);
  if ((a3 & 0x40) == 0)
  {
    goto LABEL_38;
  }

  std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](&v41, a2);
  v19 = std::locale::use_facet(&v41, MEMORY[0x277D826C0]);
  v20 = v18 - v13;
  std::locale::~locale(&v41);
  (v19->__vftable[1].__on_zero_shared)(&v41, v19);
  if ((v43 & 0x8000000000000000) != 0)
  {
    locale = v41.__locale_;
    v22 = v42;
    if (v42 && v20 > *v41.__locale_)
    {
      v23 = v41.__locale_;
      goto LABEL_19;
    }

    operator delete(v41.__locale_);
LABEL_38:
    v35 = HIDWORD(a3);
    if ((a3 & 7) == 4)
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(*a2, v8, v13 - v8);
      v36 = a3 & 0xF8 | 3;
      if (SHIDWORD(a3) >= v13 - v8)
      {
        LODWORD(v37) = v13 - v8;
      }

      else
      {
        LODWORD(v37) = HIDWORD(a3);
      }

      v35 = (HIDWORD(a3) - v37);
      LOBYTE(v37) = 48;
      v8 = v13;
    }

    else
    {
      v37 = HIDWORD(a4);
      v36 = a3;
    }

    v34 = *a2;
    v38 = v35 << 32;
    if ((a3 & 0xFF00) == 0x700)
    {
      std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18, *a2, v38 | a3 & 0xFFFF0000 | v36 | 0x700, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32));
    }

    else
    {
      std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v8, v18 - v8, *a2, v38 | a3 & 0xFFFFFF00 | v36, a4 & 0xFFFFFF00FFFFFFFFLL | (v37 << 32), v18 - v8);
    }

    return v34;
  }

  if (!v43 || v20 <= SLOBYTE(v41.__locale_))
  {
    goto LABEL_38;
  }

  locale = &v41;
  v23 = v41.__locale_;
  v22 = v42;
LABEL_19:
  v24 = *a2;
  memset(&__p, 0, sizeof(__p));
  v25 = v23 + v22;
  if (v43 >= 0)
  {
    v25 = &v41 + v43;
  }

  v26 = *locale;
  v27 = v20 - *locale;
  if (v27 >= 1)
  {
    v28 = v25 - 1;
    do
    {
      std::string::push_back(&__p, v26);
      if (locale == v28)
      {
        v26 = *locale;
      }

      else
      {
        v29 = locale + 1;
        v30 = locale + 1;
        do
        {
          v31 = *v30++;
          v26 = v31;
          if (v31)
          {
            v32 = 1;
          }

          else
          {
            v32 = v29 == v28;
          }

          v29 = v30;
        }

        while (!v32);
        locale = v30 - 1;
      }

      v27 -= v26;
    }

    while (v27 > 0);
  }

  std::string::push_back(&__p, v26 + v27);
  v33 = (v19->__vftable[1].~facet_0)(v19);
  v34 = std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(v24, v8, v13, v18, &__p, v33, a3, a4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v43 < 0)
  {
    operator delete(v41.__locale_);
  }

  return v34;
}

void sub_223BA09E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  _Unwind_Resume(exception_object);
}

char *std::__to_chars_integral[abi:ne200100]<unsigned long long>(char *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v4 = a3;
  HIDWORD(v6) = a4 - 2;
  LODWORD(v6) = a4 - 2;
  v5 = v6 >> 1;
  if (v5 != 4)
  {
    if (!v5)
    {
      return std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 == 3)
    {
      return std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
    }

    if (v5 != 7)
    {
      v16 = a1;
      v10 = a2 - a1;
      v11 = a2;
      v15 = a4;
      v12 = std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(a3, a4);
      a2 = v11;
      if (v10 >= v12)
      {
        a2 = &v16[v12];
        v13 = a2 - 1;
        do
        {
          *v13-- = a0123456789abcd[v4 % v15];
          v14 = v4 >= v15;
          v4 /= v15;
        }

        while (v14);
      }

      return a2;
    }

    return std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(a1, a2, a3);
  }

  if (a2 - a1 > 19 || (v7 = (1233 * (64 - __clz(a3 | 1))) >> 12, a2 - a1 >= v7 - (std::__itoa::__pow10_64[v7] > a3) + 1))
  {
    if (!HIDWORD(a3))
    {
      return std::__itoa::__base_10_u32[abi:ne200100](a1, a3);
    }

    if (a3 >= 0x2540BE400)
    {
      a1 = std::__itoa::__base_10_u32[abi:ne200100](a1, a3 / 0x2540BE400);
      v4 %= 0x2540BE400uLL;
    }

    return std::__itoa::__append10[abi:ne200100]<unsigned long long>(a1, v4);
  }

  return a2;
}

std::locale *std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>::locale[abi:ne200100](std::locale *this, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    MEMORY[0x223DF4200](&v6);
    v4 = (a2 + 32);
    if (*(a2 + 40) == 1)
    {
      std::locale::operator=(v4, &v6);
    }

    else
    {
      std::locale::locale(v4, &v6);
      *(a2 + 40) = 1;
    }

    std::locale::~locale(&v6);
  }

  return std::locale::locale(this, (a2 + 32));
}

void *std::__formatter::__write_using_decimal_separators[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char *,char>(uint64_t *a1, char *__src, char *a3, int a4, uint64_t *a5, char a6, uint64_t a7, unint64_t a8)
{
  v8 = a7;
  v11 = a3;
  v14 = HIDWORD(a7);
  v15 = HIDWORD(a8);
  v16 = a3 - __src;
  LODWORD(v17) = *(a5 + 23);
  if ((v17 & 0x80u) != 0)
  {
    v17 = a5[1];
  }

  v18 = a4 - __src - 1 + v17;
  if ((a7 & 7) != 4)
  {
    if (SHIDWORD(a7) <= v18)
    {
      v19 = 0;
LABEL_16:
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, v16);
      goto LABEL_17;
    }

    v19 = (a7 >> 32) - v18;
    if ((a7 & 7u) > 1)
    {
      if ((a7 & 7) != 3)
      {
        v20 = v19 >> 1;
        v19 -= v19 >> 1;
        goto LABEL_15;
      }
    }

    else if ((a7 & 7) != 0)
    {
      v20 = 0;
LABEL_15:
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v20, SHIDWORD(a8));
      goto LABEL_16;
    }

    v20 = (a7 >> 32) - v18;
    v19 = 0;
    goto LABEL_15;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, __src, a3 - __src);
  if (v14 > v18)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, v14 - v18, 48);
  }

  v19 = 0;
LABEL_17:
  v21 = *(a5 + 23);
  v22 = v21;
  v23 = a5 + v21;
  if (v22 >= 0)
  {
    v24 = v23;
  }

  else
  {
    v24 = *a5 + a5[1];
  }

  if (v22 >= 0)
  {
    v25 = a5;
  }

  else
  {
    v25 = *a5;
  }

  v26 = v25 + 1;
  v27 = v8 & 0xFF00;
  for (i = v24; ; v24 = i)
  {
    v30 = *--i;
    v29 = v30;
    if (v27 == 1792)
    {
      v31 = &v11[v29];
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a1, v11, &v11[v29]);
      v11 = v31;
    }

    else
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, v11, v29);
      v11 += *i;
    }

    if (v24 == v26)
    {
      break;
    }

    std::__format::__output_buffer<char>::push_back[abi:ne200100](a1, a6);
  }

  return std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a1, v19, v15);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = v4[1] - v10;
    if (v11 < v8 + 1)
    {
      result = (v4[3])(v4, v8 + 2);
      v10 = v4[2];
      v11 = v4[1] - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = v4[2];
    }

    v10 += v12;
    v4[2] = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v9 = (a4 >> 32) - a6;
  if (a4 >> 32 > a6)
  {
    v10 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v11 = v9 >> 1;
        v9 -= v9 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v11 = 0;
LABEL_9:
      v12 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v11, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(v12, __src, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v9, v10);
      return a3;
    }

    v11 = (a4 >> 32) - a6;
    v9 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  return a3;
}

void *std::__formatter::__write_transformed[abi:ne200100]<char *,char,char,char (*)(char),std::back_insert_iterator<std::__format::__output_buffer<char>>>(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  v8 = (a4 >> 32) - (a2 - a1);
  if (a4 >> 32 > a2 - a1)
  {
    v9 = HIDWORD(a5);
    if ((a4 & 7u) > 1)
    {
      if ((a4 & 7) != 3)
      {
        v10 = v8 >> 1;
        v8 -= v8 >> 1;
        goto LABEL_9;
      }
    }

    else if ((a4 & 7) != 0)
    {
      v10 = 0;
LABEL_9:
      v11 = std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v10, SHIDWORD(a5));
      std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(v11, a1, a2);
      std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(a3, v8, v9);
      return a3;
    }

    v10 = (a4 >> 32) - (a2 - a1);
    v8 = 0;
    goto LABEL_9;
  }

  std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(a3, a1, a2);
  return a3;
}

uint64_t std::__format::__output_buffer<char>::__transform[abi:ne200100]<char *,char (*)(char),char>(uint64_t result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  v5 = a3 - a2;
  v6 = *(result + 32);
  if (v6)
  {
    v8 = *v6;
    v7 = v6[1];
    if (*v6 - v7 >= v5)
    {
      v9 = a3 - a2;
    }

    else
    {
      v9 = *v6 - v7;
    }

    v6[1] = v7 + v5;
    if (v8 <= v7 || v9 == 0)
    {
      return result;
    }
  }

  else
  {
    v9 = a3 - a2;
  }

  v11 = *(result + 16);
  do
  {
    v12 = *(v4 + 8) - v11;
    if (v12 < v9 + 1)
    {
      result = (*(v4 + 24))(v4, v9 + 2);
      v11 = *(v4 + 16);
      v12 = *(v4 + 8) - v11;
    }

    if (v12 >= v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      v14 = (*v4 + v11);
      v15 = v13;
      v16 = v3;
      do
      {
        v18 = *v16++;
        v17 = v18;
        v19 = v18 - 32;
        if ((v18 - 97) < 6)
        {
          v17 = v19;
        }

        *v14++ = v17;
        --v15;
      }

      while (v15);
      v11 = *(v4 + 16);
    }

    v3 += v13;
    v11 += v13;
    *(v4 + 16) = v11;
    v20 = v9 > v12;
    v9 -= v13;
  }

  while (v20);
  return result;
}

void *std::__formatter::__fill[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(void *a1, size_t a2, int a3)
{
  v3 = a2;
  __src = a3;
  v5 = __clz(~a3);
  v6 = v5 - 24;
  if (v5 == 24)
  {
    std::__format::__output_buffer<char>::__fill[abi:ne200100](a1, a2, a3);
  }

  else if (a2)
  {
    do
    {
      std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a1, &__src, v6);
      --v3;
    }

    while (v3);
  }

  return a1;
}

void *std::__format::__output_buffer<char>::__fill[abi:ne200100](void *result, size_t a2, int __c)
{
  v4 = a2;
  v5 = result;
  v6 = result[4];
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = *v6;
  v7 = v6[1];
  if (*v6 - v7 < a2)
  {
    v4 = *v6 - v7;
  }

  v6[1] = v7 + a2;
  if (v8 > v7 && v4 != 0)
  {
LABEL_8:
    v10 = result[2];
    do
    {
      v11 = v5[1] - v10;
      if (v11 < v4 + 1)
      {
        result = (v5[3])(v5, v4 + 2);
        v10 = v5[2];
        v11 = v5[1] - v10;
      }

      if (v11 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        result = memset((*v5 + v10), __c, v12);
        v10 = v5[2];
      }

      v10 += v12;
      v5[2] = v10;
      v13 = v4 > v11;
      v4 -= v12;
    }

    while (v13);
  }

  return result;
}

char *std::__itoa::__base_10_u32[abi:ne200100](_WORD *a1, unsigned int a2)
{
  if (a2 >= 0xF4240)
  {
    if (a2 >= 0x5F5E100)
    {
      v7 = a2 / 0x5F5E100;
      if (a2 > 0x3B9AC9FF)
      {
        *a1 = std::__itoa::__digits_base_10[v7];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        a1[2] = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v12 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        a1[3] = std::__itoa::__digits_base_10[v12 / 0x64u];
        a1[4] = std::__itoa::__digits_base_10[v12 % 0x64u];
        v2 = 10;
      }

      else
      {
        *a1 = v7 | 0x30;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 / 0xF4240uLL];
        *(a1 + 3) = std::__itoa::__digits_base_10[a2 % 0x5F5E100 % 0xF4240 / 0x2710uLL];
        v8 = a2 % 0x5F5E100 % 0xF4240 % 0x2710;
        *(a1 + 5) = std::__itoa::__digits_base_10[v8 / 0x64u];
        *(a1 + 7) = std::__itoa::__digits_base_10[v8 % 0x64u];
        v2 = 9;
      }
    }

    else
    {
      v3 = a2 / 0xF4240;
      if (a2 > 0x98967F)
      {
        *a1 = std::__itoa::__digits_base_10[v3];
        a1[1] = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v10 = a2 % 0xF4240 % 0x2710;
        a1[2] = std::__itoa::__digits_base_10[v10 / 0x64u];
        a1[3] = std::__itoa::__digits_base_10[v10 % 0x64u];
        v2 = 8;
      }

      else
      {
        *a1 = v3 + 48;
        *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0xF4240 / 0x2710uLL];
        v4 = a2 % 0xF4240 % 0x2710;
        *(a1 + 3) = std::__itoa::__digits_base_10[v4 / 0x64u];
        *(a1 + 5) = std::__itoa::__digits_base_10[v4 % 0x64u];
        v2 = 7;
      }
    }
  }

  else if (a2 >> 4 > 0x270)
  {
    v5 = a2 / 0x2710;
    if (a2 >> 5 > 0xC34)
    {
      *a1 = std::__itoa::__digits_base_10[v5];
      v11 = a2 % 0x2710;
      a1[1] = std::__itoa::__digits_base_10[v11 / 0x64u];
      a1[2] = std::__itoa::__digits_base_10[v11 % 0x64u];
      v2 = 6;
    }

    else
    {
      *a1 = v5 | 0x30;
      v6 = a2 % 0x2710;
      *(a1 + 1) = std::__itoa::__digits_base_10[v6 / 0x64u];
      *(a1 + 3) = std::__itoa::__digits_base_10[v6 % 0x64u];
      v2 = 5;
    }
  }

  else if (a2 > 0x63)
  {
    v9 = a2 / 0x64u;
    if (a2 > 0x3E7)
    {
      *a1 = std::__itoa::__digits_base_10[v9];
      a1[1] = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 4;
    }

    else
    {
      *a1 = v9 | 0x30;
      *(a1 + 1) = std::__itoa::__digits_base_10[a2 % 0x64u];
      v2 = 3;
    }
  }

  else if (a2 > 9)
  {
    *a1 = std::__itoa::__digits_base_10[a2];
    v2 = 2;
  }

  else
  {
    *a1 = a2 | 0x30;
    v2 = 1;
  }

  return a1 + v2;
}

_WORD *std::__itoa::__append10[abi:ne200100]<unsigned long long>(_WORD *a1, unint64_t a2)
{
  *a1 = *(std::__itoa::__digits_base_10 + ((a2 / 0x2FAF080) & 0xFFFFFFFE));
  v2 = a2 % 0x5F5E100;
  a1[1] = std::__itoa::__digits_base_10[v2 / 0xF4240uLL];
  v2 %= 0xF4240u;
  a1[2] = std::__itoa::__digits_base_10[v2 / 0x2710uLL];
  LOWORD(v2) = v2 % 0x2710;
  a1[3] = std::__itoa::__digits_base_10[v2 / 0x64u];
  a1[4] = std::__itoa::__digits_base_10[v2 % 0x64u];
  return a1 + 5;
}

uint64_t std::__itoa::__integral<2u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 64 - __clz(a3 | 1);
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x11)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 4;
      *(v5 - 4) = std::__itoa::__base_2_lut[a3 & 0xF];
      v5 -= 4;
      v7 = a3 > 0x10F;
      a3 >>= 4;
    }

    while (v7);
  }

  v8 = (v5 - 1);
  do
  {
    *v8-- = a01[v6 & 1];
    v7 = v6 > 1;
    v6 >>= 1;
  }

  while (v7);
  return v4;
}

uint64_t std::__itoa::__integral<8u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (86 * (66 - __clz(a3 | 1))) >> 8;
  if (a2 - a1 < v3)
  {
    return a2;
  }

  v4 = a1 + v3;
  if (a3 < 0x41)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + v3;
    do
    {
      v6 = a3 >> 6;
      *(v5 - 2) = std::__itoa::__base_8_lut[a3 & 0x3F];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x40);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a01234567[v6 & 7];
    v8 = v6 > 7;
    v6 >>= 3;
  }

  while (v8);
  return v4;
}

uint64_t std::__itoa::__integral<16u>::__to_chars[abi:ne200100]<unsigned long long>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = 67 - __clz(a3 | 1);
  if (a2 - a1 < (v3 >> 2))
  {
    return a2;
  }

  v4 = a1 + (v3 >> 2);
  if (a3 < 0x101)
  {
    v6 = a3;
    v5 = v4;
  }

  else
  {
    v5 = a1 + (v3 >> 2);
    do
    {
      v6 = a3 >> 8;
      *(v5 - 2) = std::__itoa::__base_16_lut[a3];
      v5 -= 2;
      a3 = v6;
    }

    while (v6 > 0x100);
  }

  v7 = (v5 - 1);
  do
  {
    *v7-- = a0123456789abcd_0[v6 & 0xF];
    v8 = v6 > 0xF;
    v6 >>= 4;
  }

  while (v8);
  return v4;
}

uint64_t std::__to_chars_integral_width[abi:ne200100]<unsigned long long>(unint64_t a1, unsigned int a2)
{
  if (a2 > a1)
  {
    return 1;
  }

  v3 = 0;
  v4 = a2 * a2;
  v5 = (v4 * v4);
  while (1)
  {
    if (a1 < v4)
    {
      return v3 | 2u;
    }

    if (a1 < v4 * a2)
    {
      return v3 | 3u;
    }

    if (a1 < v5)
    {
      break;
    }

    a1 /= v5;
    v3 += 4;
    if (a1 < a2)
    {
      return v3 | 1u;
    }
  }

  return (v3 + 4);
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);
    std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }

  return a3;
}