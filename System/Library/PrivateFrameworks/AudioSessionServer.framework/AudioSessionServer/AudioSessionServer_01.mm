void avas::server::DeviceTimeObserver::findSessionSlot(uint64_t *__return_ptr a1@<X8>, avas::server::DeviceTimeObserver *this@<X0>, int a3@<W1>)
{
  v13 = a3;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(this + 3, &v13, &v12);
  v5 = *(this + 3);
  v6 = *(this + 4);
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v12 == v5 + 32 * v6)
  {
    *a1 = 0;
    *(a1 + 16) = 0;
  }

  else
  {
    v8 = *(v12 + 8);
    if ((v8[1] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v9 = *v8;
    v10 = v9 / 0x21FuLL;
    if (v10 >= (*(this + 1) - *this) >> 7)
    {
      v11 = 0;
      *a1 = 0;
    }

    else
    {
      *a1 = *this + (v10 << 7);
      *(a1 + 2) = v9 % 0x21F;
      v11 = 1;
    }

    *(a1 + 16) = v11;
  }
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::insert_unique(void **a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v11 = 0;
  v4 = *a1;
  v5 = a1[1];
  v13 = v4;
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = &v4[8 * v5];
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::priv_insert_unique_prepare(a1, &v13, &v12, a2, &v11);
  *(a3 + 8) = inserted;
  if (inserted)
  {
    v13 = v11;
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>(a1, &v13, a2, &v12);
    v10 = v12;
  }

  else
  {
    v10 = v11;
    if (!*a1 && v11)
    {
      __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
    }
  }

  *a3 = v10;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int **a3, unsigned int *a4, unsigned int **a5)
{
  v8 = *a2;
  v11 = *a3;
  v12 = v8;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,true>,unsigned int>(&v12, &v11, a4, &v13);
  v9 = v13;
  *a5 = v13;
  if (v9 == *a3)
  {
    return 1;
  }

  if (!v9)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a4 < *v9;
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,true>,unsigned int>(void *a1@<X1>, void *a2@<X2>, unsigned int *a3@<X3>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a2 != *a1)
  {
    v5 = (*a2 - *a1) >> 5;
    v6 = *a3;
    do
    {
      if (v5 != 1 && !v4)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v4)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = v5 >> 1;
      v8 = &v4[8 * (v5 >> 1)];
      if (*v8 < v6)
      {
        v4 = v8 + 8;
        *a1 = v8 + 8;
        v7 = v5 + ~v7;
      }

      v5 = v7;
    }

    while (v7);
  }

  *a4 = v4;
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>(void **result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v4 = *a2;
  v5 = *result;
  if (*result > *a2)
  {
    goto LABEL_16;
  }

  v7 = result[1];
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 == 0;
  }

  if (!v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v9 = &v5[32 * v7];
  if (v4 > v9)
  {
LABEL_16:
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
  }

  v10 = result[2];
  if (v10 < v7)
  {
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
  }

  if (v10 == v7)
  {
    v16 = *a2;

    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>*,boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>(result, v16, 1, a3, a4);
  }

  else
  {
    if (v9 == v4)
    {
      *v9 = *a3;
      *(v9 + 8) = *(a3 + 8);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      v15 = *(a3 + 24);
      v9[26] = *(a3 + 26);
      *(v9 + 12) = v15;
      result[1] = result[1] + 1;
    }

    else
    {
      v13 = (v9 - 32);
      *v9 = *(v9 - 8);
      *(v9 + 8) = *(v9 - 24);
      *(v9 - 3) = 0;
      *(v9 - 2) = 0;
      *(v9 + 12) = *(v9 - 4);
      v9[26] = *(v9 - 6);
      result[1] = result[1] + 1;
      if (v9 - 32 != v4)
      {
        do
        {
          v14 = v13 - 32;
          boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>::operator=(v13, v13 - 32);
          v13 = v14;
        }

        while (v14 != v4);
      }

      boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>::operator=(v4, a3);
    }

    *a4 = *a2;
  }
}

void OS::CF::ToJSON(const __CFString *this@<X0>, uint64_t a3@<X8>)
{
  if (this)
  {
    applesauce::CF::convert_to<std::string,0>(this, __p);
    *(a3 + 8) = 0;
    *a3 = 3;
    operator new();
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a3);
}

void sub_241715CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t applesauce::CF::convert_to<std::string,0>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  if (!a1 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a1)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

uint64_t std::optional<AVAudioSessionSpatialPreferences * {__strong}>::operator=[abi:ne200100]<AVAudioSessionSpatialPreferences * {__strong}&,void>(uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

unint64_t applesauce::CF::details::CFString_get_value<true>@<X0>(const __CFString *a1@<X0>, _BYTE *a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    v5 = CStringPtr;
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a2[23] = result;
      if (result)
      {
        result = memmove(a2, v5, result);
      }

      a2[v7] = 0;
      return result;
    }

LABEL_19:
    std::string::__throw_length_error[abi:ne200100]();
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(a1, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a2[23] = maxBufLen;
  if (v9)
  {
    bzero(a2, v9);
  }

  a2[v9] = 0;
  if (a2[23] >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(a1, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void sub_241715F8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(uint64_t (****a1)(void), unint64_t a2)
{
  if (a2)
  {
    v2 = a2;
    v3 = a1 + 2;
    if ((v2 & 0x8000000000000000) != 0)
    {
      *v3 = 45;
      v2 = -v2;
      if (v2 >= 0xA)
      {
        v7 = 4;
        v11 = v2;
        while (1)
        {
          if (v11 <= 0x63)
          {
            v7 -= 2;
            goto LABEL_26;
          }

          if (v11 <= 0x3E7)
          {
            break;
          }

          if (v11 >> 4 < 0x271)
          {
            goto LABEL_26;
          }

          v7 += 4;
          v10 = v11 >= 0x186A0;
          v11 /= 0x2710uLL;
          if (!v10)
          {
            v7 -= 3;
            goto LABEL_26;
          }
        }

        --v7;
      }

      else
      {
        v7 = 1;
      }

LABEL_26:
      v8 = v7 + 1;
    }

    else
    {
      if (v2 < 0xA)
      {
        v4 = a1 + 17;
        goto LABEL_35;
      }

      v8 = 4;
      v9 = v2;
      while (1)
      {
        if (v9 <= 0x63)
        {
          v8 -= 2;
          goto LABEL_27;
        }

        if (v9 <= 0x3E7)
        {
          break;
        }

        if (v9 >> 4 < 0x271)
        {
          goto LABEL_27;
        }

        v8 += 4;
        v10 = v9 >= 0x186A0;
        v9 /= 0x2710uLL;
        if (!v10)
        {
          v8 -= 3;
          goto LABEL_27;
        }
      }

      --v8;
    }

LABEL_27:
    if (v8 >= 0x3F)
    {
      nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>();
    }

    v4 = v3 + v8;
    if (v2 < 0x64)
    {
      v12 = v2;
    }

    else
    {
      do
      {
        v12 = v2 / 0x64;
        *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v2 % 0x64];
        v4 -= 2;
        v13 = v2 >> 4;
        v2 /= 0x64uLL;
      }

      while (v13 > 0x270);
    }

    if (v12 >= 0xA)
    {
      *(v4 - 1) = nlohmann::detail::serializer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::dump_integer<long long,0>(long long)::digits_to_99[v12];
LABEL_36:
      v14 = (**a1)[1];

      return v14();
    }

    LOBYTE(v2) = v12;
LABEL_35:
    *(v4 - 1) = v2 | 0x30;
    goto LABEL_36;
  }

  v5 = ***a1;

  return v5();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[7],char [7],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[7]>(a2);
}

uint64_t avas::server::ConstAudioSessionInfo::GetSessionType(avas::server::ConstAudioSessionInfo *this)
{
  (*(*this + 72))(&v3);
  v1 = *(v3 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t avas::server::AudioApplicationInfo::IsSessionTypeIgnored(int a1)
{
  result = 1;
  if (a1 <= 1935830118)
  {
    if (a1 == 1702392942)
    {
      return result;
    }

    v3 = 1886550137;
    goto LABEL_7;
  }

  if (a1 != 1935830119 && a1 != 1935897189)
  {
    v3 = 1936286827;
LABEL_7:
    if (a1 != v3)
    {
      return 0;
    }
  }

  return result;
}

void *avas::server::ConstAudioSessionInfo::ClientProcessName(avas::server::ConstAudioSessionInfo *this)
{
  (*(*this + 72))(&v3);
  v1 = (v3 + 184);
  if (*(v3 + 207) < 0)
  {
    v1 = *v1;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v1;
}

uint64_t avas::server::mx::MXAccessor::SetMXProperties(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = *a1;
  v30 = 0;
  v8 = (*(*v7 + 24))(v7, v5, &v30);
  v9 = v30;
  v10 = v9;
  if (v8)
  {
    v29 = v9;
    v11 = avas::server::mx::MXAccessor::SetMXProperties(NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *,NSArray<NSDictionary*<NSString *,NSNumber *>> * {__autoreleasing}*)::$_0::operator()(v5, &v29);
    v12 = v29;

    [v6 addObjectsFromArray:v12];
    if ([v11 count])
    {
      v13 = a1[1];
      v28 = 0;
      v8 = (*(*v13 + 24))(v13, v11, &v28);
      v14 = v28;
      v15 = v14;
      if (v8)
      {
        v27 = v14;
        v16 = avas::server::mx::MXAccessor::SetMXProperties(NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *,NSArray<NSDictionary*<NSString *,NSNumber *>> * {__autoreleasing}*)::$_0::operator()(v11, &v27);
        v17 = v27;

        [v6 addObjectsFromArray:v17];
        if ([v16 count])
        {
          v18 = a1[2];
          v26 = 0;
          v8 = (*(*v18 + 24))(v18, v16, &v26);
          v19 = v26;
          if (a3)
          {
            [v6 addObjectsFromArray:v19];
            v20 = v6;
            *a3 = v6;
          }
        }

        else if (a3)
        {
          v24 = v6;
          *a3 = v6;
        }
      }

      else
      {
        if (a3)
        {
          [v6 addObjectsFromArray:v14];
          v23 = v6;
          v8 = 0;
          *a3 = v6;
        }

        else
        {
          v8 = 0;
        }

        v17 = v15;
      }
    }

    else if (a3)
    {
      v22 = v6;
      *a3 = v6;
    }
  }

  else
  {
    if (a3)
    {
      [v6 addObjectsFromArray:v9];
      v21 = v10;
      v8 = 0;
      *a3 = v10;
    }

    else
    {
      v8 = 0;
    }

    v12 = v10;
  }

  return v8;
}

uint64_t avas::server::StubbedBehaviorUnit::SetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [v4 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v17 = *(*(&v13 + 1) + 8 * v9);
        v18 = &unk_28535D278;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        [v5 addObject:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v7);
  }

  if (a3)
  {
    v11 = v5;
    *a3 = v5;
  }

  return 561145203;
}

id avas::server::mx::MXAccessor::SetMXProperties(NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *,NSArray<NSDictionary*<NSString *,NSNumber *>> * {__autoreleasing}*)::$_0::operator()(void *a1, id *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v20 = a1;
  v19 = objc_opt_new();
  v17 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *a2;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v2)
  {
    v3 = *v22;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v22 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        v6 = [v5 allKeys];
        v7 = [v6 firstObject];

        v8 = [v5 objectForKeyedSubscript:v7];
        v9 = [v8 intValue];

        if (v9 == -12984 || v9 == -15684)
        {
          v27 = v7;
          v11 = [v20 objectForKey:v7];
          v28 = v11;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

          [v19 addEntriesFromDictionary:v12];
        }

        else
        {
          v25 = v7;
          v12 = [v5 objectForKeyedSubscript:v7];
          v26 = v12;
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          [v17 addObject:v13];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v2);
  }

  v14 = v17;
  *a2 = v17;

  return v19;
}

void avas::server::LegacySessionManager::PrivateCreateAudioAppImpl(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v12[3] = a4;
  memset(v12, 0, 24);
  caulk::sync_guard<avas::server::SessionCollection,caulk::mach::unfair_lock>::get(a2, buf);
  v7 = *buf;
  if (*buf != &buf[8])
  {
    while (1)
    {
      if (avas::server::ProcessIdentity::operator==(*(v7 + 5) + 48, a3 + 56))
      {
        SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(*(v7 + 5));
        if ((avas::server::AudioApplicationInfo::IsSessionTypeIgnored(SessionType) & 1) == 0)
        {
          break;
        }
      }

      v9 = *(v7 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
      if (v10 == &buf[8])
      {
        goto LABEL_12;
      }
    }

    std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::push_back[abi:ne200100](v12, (v7 + 40));
  }

LABEL_12:
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(&v14 + 8, v15);
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(buf, *&buf[8]);
  std::allocate_shared[abi:ne200100]<avas::server::AudioApplicationInfo,std::allocator<avas::server::AudioApplicationInfo>,avas::server::ApplicationCreationDescription const&,NSXPCConnection * {__strong}&,std::vector<std::shared_ptr<avas::server::AudioSessionInfo>> &,0>();
}

void sub_241716E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, id a14, char a15)
{
  avas::server::SessionCollection::~SessionCollection(&a15);
  a9 = &a11;
  std::vector<std::shared_ptr<avas::server::AudioSessionInfo>>::__destroy_vector::operator()[abi:ne200100](&a9);

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__find_equal<unsigned int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *caulk::sync_guard<avas::server::SessionCollection,caulk::mach::unfair_lock>::get@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  std::map<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>::map[abi:ne200100](a2, v3);
  return std::map<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>::map[abi:ne200100](a2 + 3, v3 + 24);
}

uint64_t std::map<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__emplace_hint_unique_key_args<unsigned int,std::pair<unsigned int const,std::shared_ptr<avas::server::AudioSessionInfo>> const&>(v5, (v5 + 8), v4 + 8, (v4 + 8));
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

uint64_t avas::server::mx::MXObjectBase::SetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v21 = a2;
  *v29 = 0;
  pthread_threadid_np(0, v29);
  if (*v29 != GetACQThreadID())
  {
    v7 = [*(a1 + 16) setProperties:v21 usingErrorHandlingStrategy:2 outPropertiesErrors:a3];
    goto LABEL_21;
  }

  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v21;
  v23 = v4;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v38 count:16];
  v20 = a3;
  v7 = 0;
  if (!v6)
  {
    goto LABEL_17;
  }

  v22 = *v26;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v26 != v22)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v25 + 1) + 8 * i);
      v10 = [v5 objectForKey:{v9, v20}];
      if (v10)
      {
        objc_opt_class();
        v11 = v10;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v11 = 0;
LABEL_11:
      v12 = _MXSessionSetProperty();
      v36 = v9;
      v13 = [MEMORY[0x277CCABB0] numberWithInt:v12];
      v37 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      [v23 addObject:v14];

      if (v12)
      {
        v16 = *avas::server::gSessionServerLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *v29 = 136315906;
          *&v29[4] = "MXObjectBase.mm";
          v30 = 1024;
          v31 = 469;
          v32 = 2112;
          v33 = v9;
          v34 = 1024;
          v35 = v12;
          _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting property %@ with an error %d", v29, 0x22u);
        }

        v7 = v12;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v25 objects:v38 count:16];
  }

  while (v6);
LABEL_17:

  v17 = v23;
  if (v20)
  {
    v18 = v23;
    v17 = v23;
    *v20 = v23;
  }

LABEL_21:
  return v7;
}

void *std::map<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

AudioSession *avas::server::TranslateCMSessionErrorCode(uint64_t a1, uint64_t *a2, int a3, AudioSession *a4)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[13],char [13],0>(&v5, "error_string");
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>>::__find_equal<unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
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
        v9 = *(v9 + 8);
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
    if (*(v10 + 8) < *a5)
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
          v18 = *(v16 + 32);
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
      v17 = (a1 + 1);
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

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
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
      v21 = (a1 + 1);
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

void *std::map<unsigned int,std::shared_ptr<avas::server::IONodeSessionInfo>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,std::__tree_node<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(a1, a2[1]);
    v4 = a2[6];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t avas::server::AudioApplicationInfo::AudioApplicationInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  avas::server::AudioAppInfoImpl::AudioAppInfoImpl(a1 + 24, a2, a3, a4, a1);
  return a1;
}

void sub_241717E4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<avas::server::AudioApplicationInfo>::__shared_ptr_emplace[abi:ne200100]<avas::server::ApplicationCreationDescription const&,NSXPCConnection * {__strong}&,std::vector<std::shared_ptr<avas::server::AudioSessionInfo>> &,std::allocator<avas::server::AudioApplicationInfo>,0>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28535B450;
  avas::server::AudioApplicationInfo::AudioApplicationInfo((a1 + 3), a2, *a3, a4);
  return a1;
}

void anonymous namespace::HandleInterruptionWithIDNotification(_anonymous_namespace_ *this, int a2)
{
  v3 = this;
  v4 = avas::server::GetASCallbackQueue(this);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ZN12_GLOBAL__N_136HandleInterruptionWithIDNotificationEjj_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  v6 = v3;
  v7 = a2;
  dispatch_async(v4, block);
}

void avas::server::AudioAppInfoImpl::AudioAppInfoImpl(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  a3;
  *a1 = a5;
  *(a1 + 8) = 0;
  v8 = *(a2 + 88);
  v9 = *(a2 + 72);
  v10 = *(a2 + 56);
  *(a1 + 64) = 0;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v8;
  *(a1 + 56) = @"?";
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  avas::server::AudioAppSessionStates::AudioAppSessionStates((a1 + 88));
  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  v11 = a1 + 112;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  if (avas::server::DefaultAudioAppState(void)::onceToken != -1)
  {
    avas::server::AudioAppInfoImpl::AudioAppInfoImpl();
    v11 = a1 + 112;
  }

  v12 = avas::server::DefaultAudioAppState(void)::sDefaultState;
  if (avas::server::DefaultMXState(void)::onceToken != -1)
  {
    avas::server::AudioAppInfoImpl::AudioAppInfoImpl();
    v11 = a1 + 112;
  }

  avas::AudioAppState::AudioAppState((v11 + 40), v12, avas::server::DefaultMXState(void)::sDefaultState);

  if (*(a2 + 96) == 1886546285)
  {
    if (*(a2 + 8))
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = @"?";
    }

    objc_storeStrong((a1 + 56), v13);
  }

  *buf = 0;
  v15 = 0;
  avas::server::AudioAppInfoImpl::UpdateDebugString(a1, buf);
}

void sub_241718384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  avas::AudioAppState::~AudioAppState((a9 + 40));
  v14 = *(v10 + 144);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<avas::server::AudioAppRemoteClient>>>>::destroy(a9, *(v10 + 120));
  std::__tree<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>>>::destroy((v12 + 3), *(v10 + 96));
  if (*(v10 + 87) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void ___ZN12_GLOBAL__N_136HandleInterruptionWithIDNotificationEjj_block_invoke(uint64_t a1)
{
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v17, *(a1 + 32));
  v2 = v17;
  if (!v17)
  {
    goto LABEL_9;
  }

  v3 = v18;
  if (!v18)
  {
    v4 = *(v17 + 84);
LABEL_7:
    v7 = *(v2 + 112);
    v6 = v7;
    goto LABEL_8;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v4 = *(v2 + 84);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  v2 = v17;
  if (!v17)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v5 = v18;
  if (!v18)
  {
    goto LABEL_7;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = *(v2 + 112);
  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
LABEL_8:
  v9 = avas::server::GetAudioControlQueue(v7, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___ZN12_GLOBAL__N_136HandleInterruptionWithIDNotificationEjj_block_invoke_2;
  v12[3] = &unk_278CEAC28;
  v14 = *(a1 + 32);
  v10 = v6;
  v13 = v10;
  v11 = *(a1 + 36);
  v15 = v4;
  v16 = v11;
  avas::server::DispatchBlock(v9, v12, 0, "HandleInterruptionWithIDNotification_block_invoke", "AudioSessionServerImpNotificationHandlers.mm", 650, 0, 0);

LABEL_9:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }
}

void sub_2417185CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void *avas::AudioAppState::AudioAppState(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  *a1 = [v5 mutableCopy];
  a1[1] = [v6 mutableCopy];
  a1[2] = objc_opt_new();
  a1[3] = objc_opt_new();

  return a1;
}

void *avas::server::AudioAppSessionStates::AudioAppSessionStates(void *this)
{
  this[2] = 0;
  this[1] = 0;
  *this = this + 1;
  return this;
}

id avas::server::GetAudioControlQueue(avas::server *this, uint64_t a2)
{
  v3 = gAudioControlQueue;
  if (!gAudioControlQueue)
  {
    avas::server::GetAudioControlQueue();
  }

  return v3;
}

void avas::server::DispatchBlock(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a2;
  v18 = avas::server::GetAudioControlQueue(v16, v17);

  if (v18 == v15)
  {
    v31 = 0uLL;
    v32 = 0;
    CreateACQDispatchID();
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = ___ZN4avas6server13DispatchBlockEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvENS0_12DispatchTypeEPKcS8_iyy_block_invoke;
    v21[3] = &unk_278CEABB0;
    if (a3)
    {
      v20 = "dispatch_async_and_wait";
    }

    else
    {
      v20 = "dispatch_async";
    }

    v23 = v31;
    v24 = v32;
    v25 = v20;
    v26 = a4;
    v27 = a5;
    v30 = a6;
    v28 = a7;
    v29 = a8;
    v22 = v16;
    v19 = MEMORY[0x245CEF0E0](v21);
    MEMORY[0x245CEE1E0](&v31, 0, v20, a4, a5, a6, a7, a8);
  }

  else
  {
    v19 = MEMORY[0x245CEF0E0](v16);
  }

  if (a3)
  {
    dispatch_async_and_wait(v15, v19);
  }

  else
  {
    dispatch_async(v15, v19);
  }
}

void avas::server::AudioAppInfoImpl::UpdateDebugString(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v5 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v4);
  v6.__r_.__value_.__r.__words[0] = [*(a1 + 56) UTF8String];
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const*,char const*,0>(v3, &v6.__r_.__value_.__l.__data_);
}

void sub_241718F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(va);
  _Unwind_Resume(a1);
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (*a1 == 1)
  {
    v6 = MEMORY[0x245CEF0E0](v4);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3321888768;
    v13[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_i_block_invoke;
    v13[3] = &__block_descriptor_48_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_iEUlS4_E__e17_v16__0__NSError_8l;
    caulk::xpc::reply_watchdog_factory::make_timer(&v11, a1);
    v7 = MEMORY[0x245CEF0E0](v5);
    v12 = v7;
    v14 = v11;
    v15 = MEMORY[0x245CEF0E0](v7);
    v6 = MEMORY[0x245CEF0E0](v13);

    v8 = v14;
    v14 = 0;

    v9 = v11;
    v11 = 0;
  }

  return v6;
}

void ___ZN4avas6server13DispatchBlockEPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvENS0_12DispatchTypeEPKcS8_iyy_block_invoke(uint64_t a1)
{
  MEMORY[0x245CEE1E0](a1 + 40, 1, *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 104), *(a1 + 88), *(a1 + 96));
  (*(*(a1 + 32) + 16))();

  JUMPOUT(0x245CEE1E0);
}

void sub_24171919C(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = (*(*v4 + 16))(v4);
    avas::server::HandleDispatchBlockException(v5, *(v2 + 72), *(v2 + 80), *(v2 + 104), *(v2 + 88), *(v2 + 96));
  }

  else
  {
    avas::server::HandleDispatchBlockException("Unknown", *(v2 + 72), *(v2 + 80), *(v2 + 104), *(v2 + 88), *(v2 + 96));
  }

  __break(1u);
}

uint64_t __copy_helper_block_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_iEUlS4_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t avas::server::AudioSessionInfo::IsSessionInputMuted(uint64_t (***this)(avas::server::mx::MXAccessor **))
{
  v17 = *MEMORY[0x277D85DE8];
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if ((avas::AudioSessionMuteEnabled(void)::enabled & 1) == 0)
  {
    avas::server::AudioSessionInfo::IsSessionInputMuted();
  }

  avas::server::mx::MXAccessor::GetMXProperty(this[15], *MEMORY[0x277D272B8], &v7);
  if (v7 || (v2 = v8) == 0)
  {
    v3 = *avas::server::gSessionServerLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = (*this)[2](this);
      *buf = 136315906;
      v10 = "AudioSessionInfo.mm";
      v11 = 1024;
      v12 = 359;
      v13 = 1024;
      v14 = v4;
      v15 = 1024;
      v16 = v7;
      _os_log_impl(&dword_241701000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get input mute state for session id: 0x%x with error %d", buf, 0x1Eu);
    }

    v5 = 0;
  }

  else
  {
    v5 = [v8 BOOLValue];
  }

  return v5;
}

void ___ZN12_GLOBAL__N_136HandleInterruptionWithIDNotificationEjj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3[0] = 1;
  v4 = 3977;
  v5 = v2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  kdebug_trace();
  [*(a1 + 32) handleInterruptionWithID:*(a1 + 40) clientPID:*(a1 + 44) interruptionState:*(a1 + 48) interruptionInfo:0];
  avas::ScopedTrace::~ScopedTrace(v3);
}

void sub_2417194B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

uint64_t avas::server::AddMXNotificationListener(avas::server *this, audit_token_t *a2, audit_token_t *a3, NSString *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v20, this, a2, 1);
  v7 = v20;
  if (!v20)
  {
    v13 = 561210739;
    v14 = *avas::server::gSessionServerLog(0);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v23 = "AudioSessionServerImpCommon.mm";
    v24 = 1024;
    v25 = 219;
    v26 = 1024;
    v27 = this;
    v15 = "%25s:%-5d Cannot get session info for session ID: 0x%x";
    v16 = v14;
    v17 = OS_LOG_TYPE_DEFAULT;
LABEL_16:
    _os_log_impl(&dword_241701000, v16, v17, v15, buf, 0x18u);
    goto LABEL_17;
  }

  v8 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(v7, a2);
  v10 = HasMXPropertyPipeEntitlement;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v10)
  {
    v13 = 1701737535;
    v18 = *avas::server::gSessionServerLog(HasMXPropertyPipeEntitlement);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_17;
    }

    *buf = 136315650;
    v23 = "AudioSessionServerImpCommon.mm";
    v24 = 1024;
    v25 = 226;
    v26 = 1024;
    v27 = this;
    v15 = "%25s:%-5d Error - missing entitlement, cannot add MX Notification listener for session:0x%x";
    v16 = v18;
    v17 = OS_LOG_TYPE_ERROR;
    goto LABEL_16;
  }

  v11 = v20;
  if (!v20)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v12 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = avas::server::AudioSessionInfo::AddMXNotificationListener(v11, v6, 1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_17:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v20);

  return v13;
}

void sub_2417196CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);

  _Unwind_Resume(a1);
}

avas::server::AudioSessionInfoAccessor *avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(avas::server::AudioSessionInfoAccessor *this, uint64_t a2, audit_token_t *a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 16) = 0;
  v8 = avas::server::LegacySessionManager::Instance(this);
  if (a4)
  {
    v14 = 1;
    v13 = 1;
  }

  else
  {
    LOBYTE(v13) = 0;
    v14 = 0;
  }

  avas::server::LegacySessionManager::FindSessionAndVerifyOwnership(v8, a2, a3, &v13, &v15);
  v9 = v15;
  v15 = 0uLL;
  v10 = *(this + 1);
  *this = v9;
  if (!v10)
  {
    v11 = v9;
    if (!v9)
    {
      return this;
    }

    goto LABEL_8;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
  }

  v11 = *this;
  if (*this)
  {
LABEL_8:
    os_unfair_lock_lock(v11 + 134);
    *(this + 16) = 1;
  }

  return this;
}

void sub_2417197E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t avas::server::AudioAppSessionStates::AppState(avas::server::AudioAppSessionStates *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = *(this + 2);
  if (!v1)
  {
LABEL_18:
    v9 = 0;
    return v1 | (v9 << 8);
  }

  v4 = *this;
  v2 = (this + 8);
  v3 = v4;
  if (v4 == v2)
  {
    goto LABEL_15;
  }

  v5 = 0;
  LOBYTE(v1) = 1;
  do
  {
    if ((*(v3 + 65) & 1) != 0 || *(v3 + 66) == 1)
    {
      LOBYTE(v1) = *(v3 + 64) & v1;
      ++v5;
    }

    v6 = *(v3 + 1);
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
        v7 = *(v3 + 2);
        v8 = *v7 == v3;
        v3 = v7;
      }

      while (!v8);
    }

    v3 = v7;
  }

  while (v7 != v2);
  if (!v5)
  {
LABEL_15:
    v10 = *avas::server::gSessionServerLog(v2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "AudioAppSessionStates.mm";
      v14 = 1024;
      v15 = 81;
      _os_log_impl(&dword_241701000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d warning - no sessions considered for input mute state, using cached", &v12, 0x12u);
    }

    LOBYTE(v1) = 0;
    goto LABEL_18;
  }

  v9 = 1;
  return v1 | (v9 << 8);
}

uint64_t avas::server::mx::MXAccessor::SetMXProperty(uint64_t *a1, void *a2, void *a3)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *a1;
  v21 = v5;
  v22[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v18 = 0;
  v9 = (*(*v7 + 24))(v7, v8, &v18);
  v10 = v18;

  if (v9)
  {
    if (![v10 count] || (objc_msgSend(v10, "objectAtIndexedSubscript:", 0), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "objectForKeyedSubscript:", v5), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "intValue"), v12, v11, v13 == -15684) || v13 == -12984)
    {
      if ((*(*a1[1] + 88))(a1[1], v5, v6))
      {
        v14 = a1[2];
        v19 = v5;
        v20 = v6;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        v17 = 0;
        v9 = (*(*v14 + 24))(v14, v15, &v17);
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return v9;
}

avas::server *avas::server::mx::MXObjectBase::SetMXProperty(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    v6 = v5;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v6 = 0;
LABEL_5:
  *v12 = 0;
  pthread_threadid_np(0, v12);
  if (*v12 == GetACQThreadID())
  {
    v7 = _MXSessionSetProperty();
    v8 = v7;
    if (v7)
    {
      v9 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v12 = 136315906;
        *&v12[4] = "MXObjectBase.mm";
        v13 = 1024;
        v14 = 323;
        v15 = 2112;
        v16 = v4;
        v17 = 1024;
        v18 = v8;
LABEL_12:
        _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting property %@ with an error %d", v12, 0x22u);
      }
    }
  }

  else
  {
    v10 = MXSessionSetProperty();
    v8 = v10;
    if (v10)
    {
      v9 = *avas::server::gSessionServerLog(v10);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v12 = 136315906;
        *&v12[4] = "MXObjectBase.mm";
        v13 = 1024;
        v14 = 330;
        v15 = 2112;
        v16 = v4;
        v17 = 1024;
        v18 = v8;
        goto LABEL_12;
      }
    }
  }

  return v8;
}

unint64_t caulk::string_from_4cc@<X0>(std::string *__return_ptr a1@<X8>, caulk *this@<X0>, int a3@<W1>)
{
  *&v15[2] = *MEMORY[0x277D85DE8];
  v4 = bswap32(this);
  *&v11[a3] = v4;
  if ((v4 - 32) > 0x5E)
  {
    return std::to_string(a1, this);
  }

  v5 = v12;
  v6 = v11[1];
  if (a3)
  {
    v6 = v12;
  }

  if ((v6 - 32) > 0x5E)
  {
    return std::to_string(a1, this);
  }

  if (a3)
  {
    v5 = v13;
  }

  if ((v5 - 32) > 0x5E)
  {
    return std::to_string(a1, this);
  }

  v7 = v14[0];
  if (!a3)
  {
    v7 = v13;
  }

  if ((v7 - 32) > 0x5E)
  {
    return std::to_string(a1, this);
  }

  if (a3)
  {
    v14[1] = 39;
    v11[0] = 39;
    v8 = v15;
  }

  else
  {
    v8 = v14;
  }

  *v8 = 0;
  result = strlen(v11);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&a1->__r_.__value_.__s + 23) = result;
  if (result)
  {
    result = memcpy(a1, v11, result);
  }

  a1->__r_.__value_.__s.__data_[v10] = 0;
  return result;
}

void sub_241719F4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t avas::AudioAppState::setPropertyApp(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*a1 setValue:v6 forKey:v5];
  [a1[2] addObject:v5];

  return 0;
}

void ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_i_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = applesauce::dispatch::v1::queue::operator*((a1 + 32));
  dispatch_source_cancel(v3);

  (*(*(a1 + 40) + 16))();
}

void __destroy_helper_block_ea8_32c120_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorEEEU13block_pointerFvDpT_ES9_iEUlS4_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void std::shared_ptr<avas::server::BTPresentationTimePoll::Impl>::__enable_weak_this[abi:ne200100]<avas::server::BTPresentationTimePoll::Impl,avas::server::BTPresentationTimePoll::Impl,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

uint64_t std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::__emplace_unique_key_args<avas::server::ProcessIdentity,std::pair<avas::server::ProcessIdentity const,std::shared_ptr<avas::server::AudioApplicationInfo>>>(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::__find_equal<avas::server::ProcessIdentity>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::__find_equal<avas::server::ProcessIdentity>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!avas::server::ProcessIdentity::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!avas::server::ProcessIdentity::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t avas::server::require_acq::AudioSessionServerSetClientMuteState(unsigned int a1, uint64_t a2, void *a3, int a4)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v31, a1);
  v9 = v31;
  if (!v31)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[10],char [10],0>(buf, "sessionID");
  }

  if (a2 == 1885564012)
  {
    if (a3)
    {
      v10 = *avas::server::gSessionServerLog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "AudioSessionServerImp_iOS.mm";
        v36 = 1024;
        v37 = 743;
        v11 = "%25s:%-5d Player ref should be nullptr if player type is PhoneCall";
        v12 = v10;
        v13 = 18;
LABEL_30:
        _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
        goto LABEL_31;
      }

      goto LABEL_31;
    }

    v24 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    v18 = (v9 + 228);
    if (a4)
    {
      v23 = 67;
    }

    else
    {
      v23 = 3;
    }

    v25 = atomic_load(v9 + 232);
    v19 = v25 & 1;
  }

  else
  {
    v14 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PlayerState = avas::server::AudioSessionInfo::GetPlayerState(v9, a3);
    v16 = PlayerState;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (!v16)
    {
      v27 = *avas::server::gSessionServerLog(PlayerState);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v35 = "AudioSessionServerImp_iOS.mm";
        v36 = 1024;
        v37 = 759;
        v38 = 2048;
        *v39 = a3;
        v11 = "%25s:%-5d Can't find supplied player %p";
        v12 = v27;
        v13 = 28;
        goto LABEL_30;
      }

LABEL_31:
      v26 = 4294967246;
      goto LABEL_32;
    }

    v17 = *(v16 + 4);
    if (v17 != a2)
    {
      v28 = *avas::server::gSessionServerLog(PlayerState);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v35 = "AudioSessionServerImp_iOS.mm";
        v36 = 1024;
        v37 = 766;
        v38 = 1024;
        *v39 = a2;
        *&v39[4] = 1024;
        *&v39[6] = v17;
        v11 = "%25s:%-5d Supplied player type %u does not match with player type %u";
        v12 = v28;
        v13 = 30;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    v18 = *v16;
    v20 = v16 + 1;
    v19 = *(v16 + 2);
    v21 = *(v20 + 1) & 0xFFFFFFBF;
    if (a4)
    {
      v22 = 64;
    }

    else
    {
      v22 = 0;
    }

    v23 = v21 | v22;
  }

  if (v31)
  {
    os_unfair_lock_unlock(v31 + 134);
    v33 = 0;
  }

  v30[0] = a1;
  v30[4] = 0;
  v26 = avas::server::require_acq::AudioSessionServerSetClientPlayState(v30, a2, v18, v23, v19, 0, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v30);
LABEL_32:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v31);
  return v26;
}

void sub_24171A728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *OS::CF::ToJSON@<X0>(OS::CF *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    v3 = CFBooleanGetValue(this) != 0;
    *a2 = 4;
    *(a2 + 8) = v3;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
}

{
  if (this)
  {
    if (CFNumberIsFloatType(this))
    {
      v4 = applesauce::CF::convert_to<double,0>(this);
      *a2 = 7;
      *(a2 + 8) = v4;
    }

    else
    {
      v5 = applesauce::CF::convert_to<long long,0>(this);
      *a2 = 5;
      *(a2 + 8) = v5;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);

  return nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
}

void avas::server::LegacySessionManager::StartProcessMonitoring(os_unfair_lock_s *this, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(this + 26);
  v4 = *&this[30]._os_unfair_lock_opaque;
  if (v4)
  {
    v5 = this + 30;
    do
    {
      if (v4[8]._os_unfair_lock_opaque >= a2)
      {
        v5 = v4;
      }

      v4 = *&v4[2 * (v4[8]._os_unfair_lock_opaque < a2)]._os_unfair_lock_opaque;
    }

    while (v4);
    if (v5 != &this[30] && v5[8]._os_unfair_lock_opaque <= a2)
    {
      v10 = 0;
      v11 = 0;
LABEL_16:
      os_unfair_lock_unlock(this + 26);
      goto LABEL_17;
    }
  }

  v6 = MEMORY[0x277D46F48];
  v7 = MEMORY[0x277D46FA0];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v9 = [v7 predicateMatchingIdentifier:v8];
  v19 = 0;
  v10 = [v6 handleForPredicate:v9 error:&v19];
  v11 = v19;

  if (!v10 || v11)
  {
    v16 = *avas::server::gSessionServerLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *v21 = "ServerSessionManager.mm";
      *&v21[8] = 1024;
      *&v21[10] = 1316;
      v22 = 1024;
      v23 = a2;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_241701000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d Could not create process handle for PID %d, error = %@", buf, 0x22u);
    }

    goto LABEL_16;
  }

  *buf = a2;
  v10 = v10;
  *&v21[4] = v10;
  std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::__emplace_unique_key_args<int,std::pair<int,RBSProcessHandle * {__strong}>>(&this[28], buf, buf);

  os_unfair_lock_unlock(this + 26);
  v14 = *avas::server::gSessionServerLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v10 name];
    *buf = 136315906;
    *v21 = "ServerSessionManager.mm";
    *&v21[8] = 1024;
    *&v21[10] = 1322;
    v22 = 1024;
    v23 = a2;
    v24 = 2112;
    v25 = v15;
    _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Start process monitoring, pid = %d, name = %@", buf, 0x22u);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = ___ZN4avas6server20LegacySessionManager22StartProcessMonitoringEi_block_invoke;
  v17[3] = &__block_descriptor_36_e52_v24__0__RBSProcessHandle_8__RBSProcessExitContext_16l;
  v18 = a2;
  [v10 monitorForDeath:v17];
  v11 = 0;
LABEL_17:
}

uint64_t *std::__tree<std::__value_type<int,RBSProcessHandle * {__strong}>,std::__map_value_compare<int,std::__value_type<int,RBSProcessHandle * {__strong}>,std::less<int>,true>,std::allocator<std::__value_type<int,RBSProcessHandle * {__strong}>>>::__emplace_unique_key_args<int,std::pair<int,RBSProcessHandle * {__strong}>>(uint64_t a1, int *a2, uint64_t a3)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<int,RBSProcessHandle * {__strong}>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,RBSProcessHandle * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

id avas::server::DeviceTimeObserver::xpcSharedMemoryObject(avas::server::DeviceTimeObserver *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = *this;
  if (v2 - v4 == 128)
  {
    v5 = avas::server::DeviceTimeObserver::SharedBlockOwner::xpcSharedMemoryObject(v4);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      avas::server::DeviceTimeObserver::xpcSharedMemoryObject(v3, this);
    }

    v5 = 0;
  }

  return v5;
}

id avas::server::DeviceTimeObserver::SharedBlockOwner::xpcSharedMemoryObject(avas::server::DeviceTimeObserver::SharedBlockOwner *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner();
  }

  v2 = xpc_shmem_create(*(this + 2), v1);

  return v2;
}

void OS::CF::ToJSON(OS::CF *this@<X0>, uint64_t a2@<X8>)
{
  if (this)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json(a2, 0, 0, 0, 2);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);

  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
}

{
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  if (this)
  {
    CFRetain(this);
    v30 = this;
    v4 = CFGetTypeID(this);
    if (v4 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEE8B0](exception, "Could not construct");
    }

    applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v24, v30);
    while (1)
    {
      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(&v20, v30);
      v5 = v20.__r_.__value_.__r.__words[2];
      v20.__r_.__value_.__l.__size_ = (v21 - v20.__r_.__value_.__r.__words[2]) >> 3;
      v6 = !v24 || v25 == (v27 - v26) >> 3 || v24 == v20.__r_.__value_.__r.__words[0] && v25 == (v21 - v20.__r_.__value_.__r.__words[2]) >> 3;
      if (__p)
      {
        v23 = __p;
        operator delete(__p);
        v5 = v20.__r_.__value_.__r.__words[2];
      }

      if (v5)
      {
        v21 = v5;
        operator delete(v5);
      }

      if (v6)
      {
        break;
      }

      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v18, &v24);
      v8 = v18;
      std::string::basic_string[abi:ne200100]<0>(&v15, "bad_key");
      applesauce::CF::convert_or<std::string>(&v15, &v20, v8);
      if (v17 < 0)
      {
        operator delete(v15);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v18)
      {
        CFRelease(v18);
      }

      applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(&v15, &v24);
      OS::CF::ToJSON(&v13, v16);
      v9 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](a2, &v20);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v13);
      v10 = *v9;
      *v9 = v13;
      LOBYTE(v13) = v10;
      v11 = *(v9 + 1);
      *(v9 + 1) = v14;
      v14 = v11;
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v9);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v13);
      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(&v14, v13);
      if (v16)
      {
        CFRelease(v16);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      ++v25;
    }

    if (v28)
    {
      v29 = v28;
      operator delete(v28);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v30)
    {
      CFRelease(v30);
    }
  }
}

void sub_24171AF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_free_exception(v15);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef((v16 - 40));
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v14);
  _Unwind_Resume(a1);
}

void applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::operator->(const __CFArray **a1@<X0>, void *a2@<X8>)
{
  applesauce::CF::details::at_to<applesauce::CF::TypeRef>(*a1, a1[1], &cf);
  applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::iterator_proxy::iterator_proxy(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef applesauce::CF::details::at_to<applesauce::CF::TypeRef>@<X0>(const __CFArray *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1 || CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2), (v7 = ValueAtIndex) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  result = CFRetain(ValueAtIndex);
  *a3 = v7;
  return result;
}

void *applesauce::CF::ArrayRef_iterator<applesauce::CF::TypeRef>::iterator_proxy::iterator_proxy(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v3;
  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::push_back(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    *a1 = 2;
    operator new();
  }

  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v7, v6);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("cannot use push_back() with ", &v7, &v8);
    nlohmann::detail::type_error::create(308, &v8, exception);
  }

  v3 = *(a1 + 8);

  return std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::push_back[abi:ne200100](v3, a2);
}

void sub_24171B1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

uint64_t std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__emplace_back_slow_path<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(a1, v7);
  }

  v8 = 16 * v2;
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = *a2;
  *(v8 + 8) = *(a2 + 8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  *a2 = 0;
  *(a2 + 8) = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v8);
  *&v17 = v8 + 16;
  v9 = *(a1 + 8);
  v10 = v8 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(&v15);
  return v14;
}

void sub_24171B34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

const __CFBoolean *applesauce::CF::convert_to<long long,0>(const __CFNumber *a1)
{
  result = applesauce::CF::convert_as<long long,0>(a1);
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return result;
}

const __CFBoolean *applesauce::CF::convert_as<long long,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<long long>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<long long>(a1);
  }
}

unint64_t applesauce::CF::details::number_convert_as<long long>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_32;
    case kCFNumberSInt64Type:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_27;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      Value = CFNumberGetValue(v2, v3, &valuePtr);
      v20 = Value != 0;
      if (Value)
      {
        LOBYTE(v21) = LOBYTE(valuePtr);
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = SLOBYTE(valuePtr) < 0 && v20;
      v23 = v22 << 63 >> 63;
      return v21 | (v23 << 8);
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v16 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLOWORD(valuePtr);
      goto LABEL_33;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_32:
      v16 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v17 = LOBYTE(valuePtr);
      v18 = SLODWORD(valuePtr);
LABEL_33:
      v24 = v18 & 0xFFFFFFFFFFFFFF00 | v17;
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v24;
      }

      goto LABEL_36;
    case kCFNumberLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_27;
    case kCFNumberLongLongType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_27;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberDoubleType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_27;
    case kCFNumberNSIntegerType:
      valuePtr = 0.0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_27:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_28;
    case kCFNumberCGFloatType:
      valuePtr = 0.0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_28:
      if (v8)
      {
        v21 = 0;
      }

      else
      {
        v21 = v9;
      }

LABEL_36:
      v23 = v21 >> 8;
      break;
    default:
      v23 = 0;
      LOBYTE(v21) = 0;
      break;
  }

  return v21 | (v23 << 8);
}

void avas::server::SessionCreationDescription::ShortSiblingDescription(std::string *__return_ptr a1@<X8>, AudioSession *this@<X3>, int a3@<W1>, uint64_t a4@<X2>)
{
  AudioSession::FormatSessionIDAsHex(this, &v22);
  v7 = std::string::append(&v22, " ", 1uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = *(a4 + 23);
  if (v9 >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  if (v9 >= 0)
  {
    v11 = *(a4 + 23);
  }

  else
  {
    v11 = *(a4 + 8);
  }

  v12 = std::string::append(&v23, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v24, "(", 1uLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v25, p_p, size);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v26, ")", 1uLL);
  *a1 = *v20;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_24171B8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef avas::server::mx::MXObjectBase::GetCMSessionRef@<X0>(CFTypeRef this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 3);
  if (v3)
  {
    this = CFRetain(*(this + 3));
  }

  *a2 = v3;
  return this;
}

void **std::__split_buffer<std::weak_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::weak_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::weak_ptr<avas::server::AudioSessionInfo>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::weak_ptr<avas::server::AudioSessionInfo>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

void sub_24171BD48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_free_exception(v22);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef((v23 - 40));
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(v21);
  _Unwind_Resume(a1);
}

void avas::server::AudioSessionInfo::AddSiblingSession(uint64_t a1, __int128 *a2)
{
  os_unfair_lock_lock((a1 + 408));
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::push_back[abi:ne200100]((a1 + 416), a2);
  v4 = *(a1 + 416);
  v5 = *(a1 + 424);
  if (v4 != v5)
  {
    v6 = v4 + 1;
    while (1)
    {
      v7 = *(v6 - 1);
      if (!v7)
      {
        break;
      }

      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      shared_owners = v7->__shared_owners_;
      std::__shared_weak_count::__release_weak(v7);
      if (shared_owners == -1)
      {
        break;
      }

      if (v6++ == v5)
      {
        v4 = v5;
        goto LABEL_16;
      }
    }

    v4 = v6 - 1;
    if (v6 - 1 != v5 && v6 != v5)
    {
      do
      {
        v10 = *(v6 + 1);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v11 = v10->__shared_owners_;
          std::__shared_weak_count::__release_weak(v10);
          if (v11 != -1)
          {
            v12 = *v6;
            *v6 = 0;
            *(v6 + 1) = 0;
            v13 = *(v4 + 1);
            *v4 = v12;
            if (v13)
            {
              std::__shared_weak_count::__release_weak(v13);
            }

            ++v4;
          }
        }

        ++v6;
      }

      while (v6 != v5);
    }
  }

LABEL_16:
  std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::erase(a1 + 416, v4, *(a1 + 424));

  os_unfair_lock_unlock((a1 + 408));
}

void std::__split_buffer<std::weak_ptr<avas::server::AudioSessionInfo>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::DictionaryRef_iterator(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    std::vector<void const*>::resize((a1 + 16), Count);
    std::vector<void const*>::resize(v3, Count);
    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), *(a1 + 40));
  }

  return a1;
}

__int128 *std::vector<std::weak_ptr<avas::server::AudioSessionInfo>>::erase(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::weak_ptr<avas::server::AudioSessionInfo> *,std::weak_ptr<avas::server::AudioSessionInfo> *,std::weak_ptr<avas::server::AudioSessionInfo> *>(&v10, a3, *(a1 + 8), a2);
    v6 = v5;
    v7 = *(a1 + 8);
    if (v7 != v5)
    {
      do
      {
        v8 = *(v7 - 8);
        if (v8)
        {
          std::__shared_weak_count::__release_weak(v8);
        }

        v7 -= 16;
      }

      while (v7 != v6);
    }

    *(a1 + 8) = v6;
  }

  return a2;
}

void std::vector<void const*>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t a1, unsigned int *a2, _DWORD *a3)
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
      v6 = *(v3 + 28);
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

void std::vector<void const*>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<void const*>::__append(a1, a2 - v2);
  }
}

void avas::server::DeviceTimeObserver::addSiblingToSameReferringSessionListsAsSource(avas::server::DeviceTimeObserver *this, int a2, const avas::server::DeviceTimeObserver::SessionSlot *a3)
{
  v11 = a2;
  v4 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(a3);
  caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load(v4, &v9);
  if (v10 != 255)
  {
    v5 = *(this + 6);
    if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v5) >> 5) <= v10)
    {
      goto LABEL_10;
    }

    boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique((v5 + 96 * v10 + 48), &v11, &v7);
    if ((v8 & 1) == 0)
    {
      avas::server::DeviceTimeObserver::addSiblingToSameReferringSessionListsAsSource();
    }
  }

  if (v9 == 255)
  {
    return;
  }

  v6 = *(this + 6);
  if (0xAAAAAAAAAAAAAAABLL * ((*(this + 7) - v6) >> 5) <= v9)
  {
LABEL_10:
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique((v6 + 96 * v9 + 24), &v11, &v7);
  if ((v8 & 1) == 0)
  {
    avas::server::DeviceTimeObserver::addSiblingToSameReferringSessionListsAsSource();
  }
}

unint64_t caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (a2 + 65456 > v2)
  {
    caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>();
  }

  if (v2 <= a2)
  {
    avas::server::DeviceTimeObserver::SharedBlockOwner::SharedBlockOwner();
  }

  return *a1 + a2;
}

void applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::operator->(void *a1@<X8>, void *a2@<X0>)
{
  applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference(a2, &cf);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *a1 = v3;
  v4 = v7;
  if (v7)
  {
    CFRetain(v7);
    v5 = v7;
    a1[1] = v4;
    if (v5)
    {
      CFRelease(v5);
    }
  }

  else
  {
    a1[1] = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t avas::server::DeviceTimeObserver::SessionSlot::sessionState(avas::server::DeviceTimeObserver::SessionSlot *this)
{
  v2 = caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>((*this + 16), 0);
  v3 = *(this + 2);
  if (v3 >= 0x21F)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return v2 + 104 * v3 + 8;
}

void *applesauce::CF::DictionaryRef_iterator<applesauce::CF::TypeRef,applesauce::CF::TypeRef>::dereference@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v3 = result[1];
  if ((v3 & 0x8000000000000000) != 0 || (v4 = result, v5 = result[2], v3 >= (result[3] - v5) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "DictionaryRef_iterator iterator out of range.");
  }

  v6 = *(v5 + 8 * v3);
  if (v6)
  {
    result = CFRetain(*(v5 + 8 * v3));
    v3 = v4[1];
  }

  v7 = v4[5];
  v8 = *(v7 + 8 * v3);
  if (v8)
  {
    result = CFRetain(*(v7 + 8 * v3));
  }

  *a2 = v6;
  a2[1] = v8;
  return result;
}

void applesauce::CF::convert_or<std::string>(uint64_t a1@<X1>, std::string *a2@<X8>, const __CFString *a3@<X0>)
{
  applesauce::CF::convert_as<std::string,0>(a3, __p);
  if ((v7 & 1) == 0)
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    return;
  }

  if (SHIBYTE(v6) < 0)
  {
    std::string::__init_copy_ctor_external(a2, __p[0], __p[1]);
    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *__p;
    a2->__r_.__value_.__r.__words[2] = v6;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

const __CFString *applesauce::CF::convert_as<std::string,0>@<X0>(const __CFString *result@<X0>, uint64_t a2@<X8>)
{
  if (result && (v3 = result, TypeID = CFStringGetTypeID(), result = CFGetTypeID(v3), TypeID == result))
  {
    result = applesauce::CF::details::CFString_get_value<false>(v3, &v5);
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  return result;
}

unsigned int *caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v10 = 0;
  v3 = atomic_load(result);
  if ((v3 & 2) != 0)
  {
    v4 = result;
    v5 = result + 2;
    while (1)
    {
      v6 = (v3 >> 2) & 1;
      v7 = &v5[12 * ((v3 & 4) == 0)];
      explicit = atomic_load_explicit(v7, memory_order_acquire);
      if ((explicit & 1) == 0 || (v7 = &v5[12 * v6], explicit = atomic_load_explicit(v7, memory_order_acquire), (explicit & 1) == 0))
      {
        __dmb(9u);
        v9 = *(v7 + 6);
        *a2 = *(v7 + 2);
        *(a2 + 16) = v9;
        *(a2 + 32) = *(v7 + 5);
        __dmb(9u);
        if (explicit == atomic_load_explicit(v7, memory_order_acquire))
        {
          break;
        }
      }

      result = caulk::concurrent::details::spinloop::spin(&v10);
      v3 = atomic_load(v4);
      if ((v3 & 2) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    *a2 = -1;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
  }

  return result;
}

void *applesauce::CF::details::CFString_get_value<false>@<X0>(const __CFString *a1@<X0>, uint64_t a2@<X8>)
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  Length = CFStringGetLength(a1);
  maxBufLen = 0;
  v9.location = 0;
  v9.length = Length;
  CFStringGetBytes(a1, v9, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  std::string::basic_string[abi:ne200100](a2, maxBufLen, 0);
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v10.location = 0;
  v10.length = Length;
  return CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
}

void ___ZN12_GLOBAL__N_132HandleAppStateChangeNotificationEjP12NSDictionary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v31[0] = 1;
  v32 = 3976;
  v33 = v2;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  kdebug_trace();
  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v28, *(a1 + 40));
  if (v28)
  {
    v3 = [*(a1 + 32) objectForKey:*MEMORY[0x277D27120]];
    v4 = [v3 intValue];
    v5 = [v3 intValue];
    v6 = v28;
    if (!v28)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v7 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = v5 == 2 || v4 == 1;
      *(v6 + 227) = v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v11 = v5 == 2 || v4 == 1;
      *(v28 + 227) = v11;
    }

    if (v4 == 1)
    {
      v12 = avas::server::LegacySessionManager::Instance(v5);
      v13 = v28;
      if (!v28)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v14 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v26 = v13;
      v27 = v14;
      avas::server::LegacySessionManager::RemoveApplicationUponAppTermination(v12, &v26);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    v15 = v28;
    if (!v28)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v16 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v17 = *(v15 + 14);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v17 = *(v28 + 14);
    }

    if (!v28 || (os_unfair_lock_unlock(v28 + 134), v30 = 0, (v18 = v28) == 0))
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v19 = *(a1 + 40);
    v20 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [v17 handleInterruptionWithID:v19 clientPID:*(v18 + 21) interruptionState:objc_msgSend(v3 interruptionInfo:{"intValue") + 256, *(a1 + 32)}];
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (!v28 || (os_unfair_lock_lock(v28 + 134), v30 = 1, (v21 = v28) == 0))
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v22 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(v21);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (SessionType == 1935830119)
    {
      v24 = v28;
      if (!v28)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v25 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionInfo::DeferPropertyChangeCallback(v24, *MEMORY[0x277D27148], *(a1 + 32), 1);
      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }
    }
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v28);
  avas::ScopedTrace::~ScopedTrace(v31);
}

void sub_24171CB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, os_unfair_lock_s *);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);
  avas::ScopedTrace::~ScopedTrace(va1);
  _Unwind_Resume(a1);
}

void *nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator[](unsigned __int8 *a1, uint64_t ***a2)
{
  if (!*a1)
  {
    *a1 = 1;
    operator new();
  }

  if (*a1 != 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::type_name(a1);
    std::string::basic_string[abi:ne200100]<0>(&v7, v6);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("cannot use operator[] with a string argument with ", &v7, &v8);
    nlohmann::detail::type_error::create(305, &v8, exception);
  }

  v3 = *(a1 + 1);
  v8.__r_.__value_.__r.__words[0] = a2;
  return std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v3, a2, &std::piecewise_construct, &v8, &v7) + 7;
}

void sub_24171CCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::__map_value_compare<std::string,std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,std::less<void>,true>,std::allocator<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_24171CE64(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *_ZNSt3__14pairIKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN8nlohmann10basic_jsonINS_3mapENS_6vectorES6_bxydS4_NS8_14adl_serializerENSB_IhNS4_IhEEEEEEEC2B8ne200100IJRS7_EJEJLm0EEJEEENS_21piecewise_construct_tERNS_5tupleIJDpT_EEERNSK_IJDpT0_EEENS_15__tuple_indicesIJXspT1_EEEENST_IJXspT2_EEEE(std::string *this, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    this->__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&this[1]);
  return this;
}

void *std::string::basic_string[abi:ne200100](void *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__b + 23) = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  *(__b + __len) = 0;
  return __b;
}

uint64_t avas::server::mx::MXAccessor::SetMXProperties_Legacy(uint64_t *a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v44 = a2;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = v44;
  v8 = [v7 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (v8)
  {
    v9 = *v61;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v61 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addEntriesFromDictionary:*(*(&v60 + 1) + 8 * i)];
      }

      v8 = [v7 countByEnumeratingWithState:&v60 objects:v65 count:16];
    }

    while (v8);
  }

  v11 = *a1;
  v59 = 0;
  v12 = (*(*v11 + 24))(v11, v6, &v59);
  v13 = v59;
  v14 = v13;
  if (v12)
  {
    v57 = v13;
    v15 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_0::operator()(v7, &v57);
    v45 = v57;

    [v5 addObjectsFromArray:v45];
    if ([v15 count])
    {
      v16 = a1[1];
      v55 = 0;
      v12 = (*(*v16 + 96))(v16, v15, &v55);
      v17 = v55;
      v18 = v17;
      if (v12)
      {
        v53 = v17;
        v43 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_0::operator()(v15, &v53);
        v42 = v53;

        [v5 addObjectsFromArray:v42];
        if ([v43 count])
        {
          v19 = objc_opt_new();

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v20 = v43;
          v21 = [v20 countByEnumeratingWithState:&v48 objects:v64 count:16];
          if (v21)
          {
            v22 = *v49;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v49 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                [v19 addEntriesFromDictionary:{*(*(&v48 + 1) + 8 * j), v42}];
              }

              v21 = [v20 countByEnumeratingWithState:&v48 objects:v64 count:16];
            }

            while (v21);
          }

          v24 = a1[2];
          v47 = 0;
          v12 = (*(*v24 + 24))(v24, v19, &v47);
          v25 = v47;
          if (a3)
          {
            [v5 addObjectsFromArray:v25];
            v46 = v5;
            v26 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_1::operator()(v7, &v46);
            v27 = v46;

            v28 = v26;
            *a3 = v26;
            v5 = v27;
          }

          v6 = v19;
        }

        else if (a3)
        {
          v52 = v5;
          v38 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_1::operator()(v7, &v52);
          v39 = v52;

          v40 = v38;
          *a3 = v38;
          v5 = v39;
        }

        v18 = v42;
      }

      else if (a3)
      {
        [v5 addObjectsFromArray:v17];
        v54 = v5;
        v35 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_1::operator()(v7, &v54);
        v36 = v54;

        v37 = v35;
        v12 = 0;
        *a3 = v35;
        v5 = v36;
      }

      else
      {
        v12 = 0;
      }
    }

    else if (a3)
    {
      v56 = v5;
      v32 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_1::operator()(v7, &v56);
      v33 = v56;

      v34 = v32;
      *a3 = v32;
      v5 = v33;
    }

    v14 = v45;
  }

  else if (a3)
  {
    [v5 addObjectsFromArray:v13];
    v58 = v5;
    v29 = avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_1::operator()(v7, &v58);
    v30 = v58;

    v31 = v29;
    v12 = 0;
    *a3 = v29;
    v5 = v30;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_0::operator()(void *a1, id *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v29 = a1;
  v31 = objc_opt_new();
  v30 = objc_opt_new();
  v3 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = a2;
  v4 = *a2;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v5)
  {
    v6 = *v37;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = [v8 allKeys];
        v10 = [v9 firstObject];

        v11 = [v8 objectForKey:v10];
        [v3 setObject:v11 forKeyedSubscript:v10];
      }

      v5 = [v4 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v5);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v29;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v13)
  {
    v14 = *v33;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v32 + 1) + 8 * j);
        v17 = [v16 allKeys];
        v18 = [v17 firstObject];

        v19 = [v3 objectForKeyedSubscript:v18];
        v20 = v19 == 0;

        if (!v20)
        {
          v21 = [v3 objectForKeyedSubscript:v18];
          v22 = [v21 intValue];

          if (v22 == -12984 || v22 == -15684)
          {
            v42 = v18;
            v24 = [v16 objectForKey:v18];
            v43 = v24;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
            [v31 addObject:v25];
          }

          else
          {
            v40 = v18;
            v24 = [v3 objectForKeyedSubscript:v18];
            v41 = v24;
            v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
            [v30 addObject:v25];
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v13);
  }

  v26 = v30;
  *v28 = v30;

  return v31;
}

uint64_t avas::server::mx::MXObjectBase::SetMXProperties_Legacy(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v24 = a2;
  *v31 = 0;
  pthread_threadid_np(0, v31);
  if (*v31 != GetACQThreadID())
  {
    v6 = [*(a1 + 16) setOrderedProperties:v24 usingErrorHandlingStrategy:1 outPropertiesErrors:a3];
    goto LABEL_23;
  }

  v4 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v24;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v42 count:16];
  v23 = a3;
  v6 = 0;
  if (!v5)
  {
    goto LABEL_19;
  }

  v7 = *v28;
  v8 = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v27 + 1) + 8 * i);
      v11 = [v10 allKeys];
      v12 = [v11 firstObject];

      v13 = [v10 objectForKey:v12];
      v14 = v13;
      if (!v8)
      {
        v40 = v12;
        v41 = &unk_28535D230;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        [v4 addObject:v16];
        goto LABEL_16;
      }

      v15 = v13;
      if (!v15)
      {
        goto LABEL_11;
      }

      objc_opt_class();
      v16 = v15;
      if (objc_opt_isKindOfClass())
      {

LABEL_11:
        v16 = 0;
      }

      v6 = _MXSessionSetProperty();
      v38 = v12;
      v17 = [MEMORY[0x277CCABB0] numberWithInt:v6];
      v39 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [v4 addObject:v18];

      v8 = v6 == 0;
      if (!v6)
      {
        goto LABEL_17;
      }

      v20 = *avas::server::gSessionServerLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v31 = 136315906;
        *&v31[4] = "MXObjectBase.mm";
        v32 = 1024;
        v33 = 416;
        v34 = 2112;
        v35 = v12;
        v36 = 1024;
        v37 = v6;
        _os_log_impl(&dword_241701000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting property %@ with an error %d", v31, 0x22u);
      }

LABEL_16:
      v8 = 0;
LABEL_17:
    }

    v5 = [obj countByEnumeratingWithState:&v27 objects:v42 count:16];
  }

  while (v5);
LABEL_19:

  if (v23)
  {
    v21 = v4;
    *v23 = v4;
  }

LABEL_23:
  return v6;
}

id avas::server::mx::MXAccessor::SetMXProperties_Legacy(NSArray<NSDictionary<NSString *,objc_object  {objcproto14NSSecureCoding}*> *> *,NSArray* {__autoreleasing}*<NSDictionary*<NSString *,NSNumber *>>)::$_1::operator()(void *a1, void **a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v17 + 1) + 8 * i) allKeys];
        v10 = [v9 firstObject];

        [v4 addObject:v10];
      }

      v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v11 = *a2;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZZN4avas6server2mx10MXAccessor22SetMXProperties_LegacyEP7NSArrayIP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectEEPU15__autoreleasingPS3_IPS4_IS6_P8NSNumberEEENK3__1clESC_SK__block_invoke;
  v15[3] = &unk_278CEAEB8;
  v12 = v4;
  v16 = v12;
  v13 = [v11 sortedArrayUsingComparator:v15];

  return v13;
}

uint64_t ___ZZN4avas6server2mx10MXAccessor22SetMXProperties_LegacyEP7NSArrayIP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectEEPU15__autoreleasingPS3_IPS4_IS6_P8NSNumberEEENK3__1clESC_SK__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 allKeys];
  v7 = [v6 firstObject];

  v8 = [v5 allKeys];
  v9 = [v8 firstObject];

  v10 = [*(a1 + 32) indexOfObject:v7];
  v11 = [*(a1 + 32) indexOfObject:v9];
  if (v10 < v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = v10 > v11;
  }

  return v12;
}

void anonymous namespace::HandleCategoryOrModeChangedCallback(_anonymous_namespace_ *this, void *a2, NSString *a3, NSDictionary *a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v27 = a3;
  avas::server::ForbidAudioControlQueue(v27);
  v7 = [v6 isEqualToString:*MEMORY[0x277D27128]];
  v8 = [v6 isEqualToString:*MEMORY[0x277D27130]];
  if ((v7 | v8))
  {
    v9 = [(NSString *)v27 objectForKey:v6];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(buf, this);
      v11 = *buf;
      v12 = *&buf[8];
      if (*buf)
      {
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          v13 = *(v11 + 112);
          std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        }

        else
        {
          v13 = *(*buf + 112);
        }

        if (!*buf)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        __p = *buf;
        v32 = *&buf[8];
        if (*&buf[8])
        {
          atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
        }

        v17 = avas::server::forbid_acq::CopyCMSessionAudioMode(&__p);
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        avas::server::GetSpatialPreferences(v13, this, v17, &__p);
        v18 = __p;
        v19 = v32;

        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v29, this);
        v20 = v29;
        if (v29)
        {
          v21 = v30;
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = [MEMORY[0x277CCABB0] numberWithBool:v19];
          avas::server::ConstAudioSessionInfo::SetAVASProperty(v20, @"IsSpatialEnabled", v22);

          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v21);
          }

          v23 = v29;
          if (v29)
          {
            v24 = v30;
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            avas::server::AudioSessionInfo::SetSpatialPreferences(v23, v18);
            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            v25 = v29;
            if (v29)
            {
              v26 = v30;
              if (v30)
              {
                atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v25, this, &v28);
              if (v26)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v26);
              }

              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(&__p, "key");
            }

            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }

          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v29);
      }

      else if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    else
    {
      v14 = *avas::server::gSessionServerLog(isKindOfClass);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        *buf = 136315906;
        *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
        *&buf[12] = 1024;
        *&buf[14] = 497;
        v34 = 2112;
        v35 = v6;
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid value type: key = %@, value type = %@", buf, 0x26u);
      }
    }
  }

  else
  {
    v9 = *avas::server::gSessionServerLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
      *&buf[12] = 1024;
      *&buf[14] = 491;
      v34 = 2080;
      v35 = [v6 UTF8String];
      _os_log_impl(&dword_241701000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed assertion. Unexpected CM notification key: %s", buf, 0x1Cu);
    }
  }
}

void sub_24171E9D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, os_unfair_lock_s *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a19);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a27);

  _Unwind_Resume(a1);
}

id avas::server::forbid_acq::CopyCMSessionAudioMode(avas::server *a1)
{
  avas::server::ForbidAudioControlQueue(a1);
  avas::server::mx::MXAccessor::GetMXProperty(*(*a1 + 120), *MEMORY[0x277D271B0], v4);
  v2 = v4[1];

  return v2;
}

void ___ZN4avas6server10forbid_acq24SetPropertiesOnMXSessionEjRK13audit_token_tP12NSDictionaryIP8NSStringPU25objcproto14NSSecureCoding11objc_objectENS_30AVAudioSessionBatchSetStrategyEPU15__autoreleasingP7NSArrayIPS5_IS7_P8NSNumberEE_block_invoke(uint64_t a1, uint64_t a2, NSString *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = avas::server::require_acq::AudioSessionServerUpdatePhoneCallDummyPlayerState(*(a1 + 40), *(a1 + 32), a3);
  if (v3)
  {
    v4 = *avas::server::gSessionServerLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "AudioSessionServerImpCommon.mm";
      v7 = 1024;
      v8 = 500;
      _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AudioSessionServerUpdatePhoneCallDummyPlayerState failed", &v5, 0x12u);
    }
  }
}

uint64_t avas::server::require_acq::AudioSessionServerUpdatePhoneCallDummyPlayerState(avas::server::require_acq *this, void *a2, NSString *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  avas::server::RequireAudioControlQueue(v4);
  v5 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v30, this);
  v6 = v30;
  if (!v30)
  {
    v18 = 561210739;
    v19 = *avas::server::gSessionServerLog(v5);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_45;
    }

    *buf = 136315650;
    *&buf[4] = "AudioSessionServerImpPlayState.mm";
    v35 = 1024;
    v36 = 773;
    v37 = 1024;
    v38 = this;
    v20 = "%25s:%-5d Cannot get session info for session ID: 0x%x";
    v21 = v19;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 24;
LABEL_21:
    _os_log_impl(&dword_241701000, v21, v22, v20, buf, v23);
    goto LABEL_45;
  }

  v7 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(**(*(v6 + 15) + 8) + 64))(buf);
  v9 = *buf;
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (!v9)
  {
    v18 = 2003329396;
    v24 = *avas::server::gSessionServerLog(v8);
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_45;
    }

    *buf = 136315394;
    *&buf[4] = "AudioSessionServerImpPlayState.mm";
    v35 = 1024;
    v36 = 778;
    v20 = "%25s:%-5d No valid CMSession";
    v21 = v24;
    v22 = OS_LOG_TYPE_DEBUG;
    v23 = 18;
    goto LABEL_21;
  }

  v10 = v30;
  if (!v30)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v11 = v31;
  if (!v31)
  {
    v12 = *(v30 + 14);
    if (v12)
    {
      goto LABEL_12;
    }

LABEL_23:
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *(v10 + 14);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = v30;
  if (!v30)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v14 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    v15 = v30;
    if (!v30)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v16 = v31;
    if (v31)
    {
      v17 = 0;
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v16 = 0;
    v17 = 1;
    v15 = v30;
  }

  avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v15, this, &v29);
  if ((v17 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v30)
  {
    os_unfair_lock_unlock(v30 + 134);
    v32 = 0;
  }

  strcpy(v39, "set_property");
  if (([(avas::server *)v4 isEqualToString:*MEMORY[0x277D27068]]& 1) != 0 || [(avas::server *)v4 isEqualToString:*MEMORY[0x277D27090]])
  {
    v25 = v30;
    if (v30)
    {
      v26 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      IsSessionActive = avas::server::ConstAudioSessionInfo::IsSessionActive(v25);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      if (IsSessionActive)
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[15],char [15],0>(__p, "primary_action");
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[15],char [15],0>(__p, "primary_action");
    }

    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v18 = 0;
  if (atomic_exchange(v13 + 232, 0))
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[15],char [15],0>(__p, "primary_action");
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_45:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v30);

  return v18;
}

void sub_24171FBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, os_unfair_lock_s *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  avas::ScopedTrace::~ScopedTrace((v36 - 176));
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a15);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a23);
  _Unwind_Resume(a1);
}

void avas::server::RequireAudioControlQueue(avas::server *this)
{
  v6 = *MEMORY[0x277D85DE8];
  {
    avas::ACQContextAssertionEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::ACQContextAssertionEnabled(void)::enabled == 1)
  {
    *v3 = 0;
    pthread_threadid_np(0, v3);
    if (*v3 != GetACQThreadID())
    {
      avas::server::RequireAudioControlQueue();
    }
  }

  else
  {
    *v3 = 0;
    pthread_threadid_np(0, v3);
    ACQThreadID = GetACQThreadID();
    if (*v3 != ACQThreadID)
    {
      v2 = *avas::server::gSessionServerLog(ACQThreadID);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        *v3 = 136315394;
        *&v3[4] = "AudioSessionServerImpCommon.h";
        v4 = 1024;
        v5 = 66;
        _os_log_impl(&dword_241701000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d RequireACQ check within non-ACQ context. This may be a serious bug. Please file a radar to Audio - Session | All component", v3, 0x12u);
      }
    }
  }
}

void avas::server::AudioSessionInfo::SetCachedCategory(avas::server::AudioSessionInfo *this, NSString *a2)
{
  v3 = a2;
  std::string::__assign_external((this + 256), [(NSString *)v3 UTF8String]);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void ___ZN12_GLOBAL__N_135HandleCategoryOrModeChangedCallbackEjP8NSStringP12NSDictionary_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3[0] = 1;
  v4 = 3978;
  v5 = v2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  kdebug_trace();
  [*(a1 + 32) handleCategoryOrModeChange:*(a1 + 40)];
  avas::ScopedTrace::~ScopedTrace(v3);
}

void sub_2417202E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  avas::ScopedTrace::~ScopedTrace(va);
  _Unwind_Resume(a1);
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void avas::server::AudioSessionInfo::SetCachedMode(avas::server::AudioSessionInfo *this, NSString *a2)
{
  v3 = a2;
  std::string::__assign_external((this + 280), [(NSString *)v3 UTF8String]);
}

void **avas::server::AudioSessionInfo::GetPlayerState(avas::server::AudioSessionInfo *this, void *a2)
{
  v2 = *(this + 45);
  v3 = *(this + 46);
  if (v2 != v3)
  {
    while (*v2 != a2)
    {
      v2 += 3;
      if (v2 == v3)
      {
        v2 = *(this + 46);
        break;
      }
    }
  }

  if (v2 == v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  result = std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
  v5 = *(a2 + 16);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_28535AC48[v5])(&v6, a2);
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

uint64_t avas::server::require_acq::AudioSessionServerSetClientPlayState(unsigned int *a1, uint64_t a2, AudioSession *a3, uint64_t a4, uint64_t a5, avas::server::AudioSessionInfoAccessor *a6, uint64_t a7)
{
  v9 = a5;
  v10 = a4;
  v12 = a2;
  v48 = *MEMORY[0x277D85DE8];
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v40, a1);
  v14 = avas::server::require_acq::AudioSessionSetClientPlayState_Inner(v40, v12, a3, v10, v9, a6, a7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v40);
  v15 = a1[4];
  if (v15 == 1)
  {
    v16 = (*(**a1 + 16))();
  }

  else
  {
    if (v15)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v16 = *a1;
  }

  v17 = +[AVAudioMicrophoneMonitor sharedInstance];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
    avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v41, v16);
    v21 = v41;
    if (!v41)
    {
      goto LABEL_24;
    }

    v22 = v42;
    if (v42)
    {
      atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_opaque = v21[45]._os_unfair_lock_opaque;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      if (os_unfair_lock_opaque != 3)
      {
        v21 = v41;
        if (!v41)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v24 = v42;
        if (v42)
        {
          atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = v42;
          v26 = v21[49]._os_unfair_lock_opaque;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            v27 = v21[52]._os_unfair_lock_opaque;
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          else
          {
            v27 = v21[52]._os_unfair_lock_opaque;
          }

          v28 = v26 > v27;
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          goto LABEL_17;
        }

LABEL_14:
        v28 = v21[49]._os_unfair_lock_opaque > v21[52]._os_unfair_lock_opaque;
LABEL_17:
        {
          avas::RemoteDeviceControlEnabled(void)::remoteDeviceControlEnabled = _os_feature_enabled_impl();
        }

        {
          if (!v28)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }

        if (v28)
        {
          v29 = v41;
          if (!v41)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }

          v30 = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
            v31 = v29[85]._os_unfair_lock_opaque;
            std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            if (v31)
            {
              goto LABEL_24;
            }
          }

          else if (v41[85]._os_unfair_lock_opaque)
          {
            goto LABEL_24;
          }

LABEL_37:
          v36 = v41;
          if (!v41)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }

          v37 = v42;
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v38 = v36[51]._os_unfair_lock_opaque;
          if (v38)
          {
            v32 = v36[48]._os_unfair_lock_opaque != v38;
            if (!v37)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v32 = 1;
            if (!v37)
            {
              goto LABEL_25;
            }
          }

          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
          goto LABEL_25;
        }

LABEL_24:
        v32 = 0;
LABEL_25:
        avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v45, v16);
        v33 = v45;
        if (v45)
        {
          v34 = v46;
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          caulk::platform::process_name(v43, *(v33 + 21));
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }
        }

        else
        {
          v43[0] = 0;
          v43[1] = 0;
          v44 = 0;
        }

        if (v44 >= 0)
        {
          v35 = v43;
        }

        else
        {
          v35 = v43[0];
        }

        if ([v19 setState:v32 clientType:0 clientID:v16 clientDescription:v35])
        {
          nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[17],char [17],0>(buf, "microphone_state");
        }

        if (SHIBYTE(v44) < 0)
        {
          operator delete(v43[0]);
        }

        if (v46)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v46);
        }
      }
    }

    else if (v41[45]._os_unfair_lock_opaque != 3)
    {
      goto LABEL_14;
    }

    avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v41);
  }

  return v14;
}

void sub_241720A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, os_unfair_lock_s *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, char a28)
{
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a12);

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<unsigned int,std::shared_ptr<avas::server::AudioSessionInfo>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_28535A5A0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

uint64_t avas::server::require_acq::AudioSessionSetClientPlayState_Inner(uint64_t a1, int a2, AudioSession *a3, int a4, int a5, avas::server::AudioSessionInfoAccessor *a6, uint64_t a7)
{
  v114 = *MEMORY[0x277D85DE8];
  LODWORD(v98) = 0;
  v9 = *(a1 + 16);
  if (v9 == 1)
  {
    v11 = *a1;
    if (*a1)
    {
      v12 = (*(*v11 + 16))(v11);
      v13 = *a1;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    v14 = *(a1 + 8);
    __dst.__r_.__value_.__r.__words[0] = v13;
    __dst.__r_.__value_.__l.__size_ = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(cf, &__dst);
    LODWORD(v95) = v12;
    v96 = *cf;
    *cf = 0;
    *&cf[8] = 0;
    v97 = cf[16];
    avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(cf);
    size = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__dst.__r_.__value_.__l.__size_);
    }
  }

  else
  {
    if (v9)
    {
      avas::server::require_acq::AudioSessionSetClientPlayState_Inner();
    }

    avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(cf, *a1);
    LODWORD(v95) = *a1;
    v96 = *cf;
    *cf = 0;
    *&cf[8] = 0;
    v97 = cf[16];
    avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(cf);
  }

  if (a7)
  {
    if (v96)
    {
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(**(*(v96 + 120) + 8) + 64))(cf);
      v15 = *cf;
      if (*cf)
      {
        CFRelease(*cf);
      }

      if (*(&v96 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
      }

      if (v15 != a7)
      {
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v96, v95, &v100);
        if (*(&v96 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
        }

        if (a6)
        {
          os_unfair_lock_unlock((v96 + 536));
          v97 = 0;
          avas::server::require_acq::GetAudioQueueOptions(&v96, a6, v16);
        }

        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(&__dst, "type");
      }

      goto LABEL_34;
    }
  }

  else if (v96)
  {
    if (*(&v96 + 1))
    {
      atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    (*(**(*(v96 + 120) + 8) + 64))(cf);
    a7 = *cf;
    if (*cf)
    {
      CFRelease(*cf);
    }

    if (*(&v96 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
    }

LABEL_34:
    if (a5 && (a4 & 0x11) != 0 && (a4 & 2) == 0)
    {
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *MEMORY[0x277D27358];
      avas::server::mx::MXAccessor::GetMXProperty(*(v96 + 120), v17, &__dst);

      if (*(&v96 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
      }

      if (LODWORD(__dst.__r_.__value_.__l.__data_))
      {
        v19 = *avas::server::gSessionServerLog(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *cf = 136315650;
          *&cf[4] = "AudioSessionServerImpPlayState.mm";
          *&cf[12] = 1024;
          *&cf[14] = 349;
          v102 = 1024;
          *v103 = __dst.__r_.__value_.__l.__data_;
          _os_log_impl(&dword_241701000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d kMXSessionProperty_SystemHasAudioInputDevice failed: %d", cf, 0x18u);
        }

        data_low = LODWORD(__dst.__r_.__value_.__l.__data_);
        goto LABEL_45;
      }

      if (__dst.__r_.__value_.__l.__size_)
      {
        v22 = [__dst.__r_.__value_.__l.__size_ BOOLValue];
        {

          goto LABEL_54;
        }

        data_low = 561145203;
      }

      else
      {
        data_low = 0;
      }

LABEL_45:

      goto LABEL_219;
    }

LABEL_54:
    memset(&__p, 0, sizeof(__p));
    if (*(&v96 + 1))
    {
      atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    if ((*(*v96 + 16))(v96) == v95)
    {
      v23 = 0;
    }

    else
    {
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      (*(*v96 + 64))(cf);
      v23 = *cf == 0;
      if (*&cf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&cf[8]);
      }

      if (*(&v96 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
      }
    }

    if (*(&v96 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v96 + 1));
    }

    if (!v23)
    {
      v24 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v96, v95, cf);
      v29 = std::string::operator=(&__p, cf);
      if ((v103[3] & 0x80000000) != 0)
      {
        operator delete(*cf);
      }

LABEL_101:
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      v39 = *avas::server::gSessionServerLog(v29);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[6],char [6],0>(&v112, "entry");
      }

      if (!a7)
      {
        data_low = 2003329396;
        v51 = *avas::server::gSessionServerLog(v40);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *cf = 136315650;
          *&cf[4] = "AudioSessionServerImpPlayState.mm";
          *&cf[12] = 1024;
          *&cf[14] = 371;
          v102 = 1024;
          *v103 = v95;
          _os_log_impl(&dword_241701000, v51, OS_LOG_TYPE_DEBUG, "%25s:%-5d sessionID = 0x%x no MXSession for this client (client exited?)", cf, 0x18u);
        }

        goto LABEL_217;
      }

      v41 = *avas::server::gSessionServerLog(v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = v96;
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v43 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        IsSessionActive = avas::server::ConstAudioSessionInfo::IsSessionActive(v42);
        v45 = "false";
        *&cf[4] = "AudioSessionServerImpPlayState.mm";
        *cf = 136315650;
        if (IsSessionActive)
        {
          v45 = "true";
        }

        *&cf[12] = 1024;
        *&cf[14] = 375;
        v102 = 2080;
        *v103 = v45;
        _os_log_impl(&dword_241701000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d IsSessionActive() = %s", cf, 0x1Cu);
        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }
      }

      if (a5)
      {
        v47 = avas::server::require_acq::GetAudioCategory(&v96, v46);
        v48 = [v47 isEqualToString:*MEMORY[0x277D27058]];
        v49 = v48 ^ 1;
        if ((a4 & 0x13) == 0)
        {
          v49 = 1;
        }

        if ((v49 & 1) == 0)
        {
          v50 = *avas::server::gSessionServerLog(v48);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            LOBYTE(v112) = 0;
            v113 = 0;
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v112);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v112);
            nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__dst);
          }

LABEL_203:

          data_low = 560161140;
LABEL_217:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_219;
        }

        v52 = v96;
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v53 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (avas::server::ConstAudioSessionInfo::GetSessionType(v52) == 1935830119)
        {
          v54 = [v47 isEqualToString:*MEMORY[0x277D27068]];
          if (v54 & 1) != 0 || (v54 = [v47 isEqualToString:*MEMORY[0x277D27090]], (v54))
          {
            if (v53)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v53);
            }

LABEL_201:
            v50 = *avas::server::gSessionServerLog(v54);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              LOBYTE(v112) = 0;
              v113 = 0;
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v112);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(&v112);
              nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::dump(&__dst);
            }

            goto LABEL_203;
          }

          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          if (a2 == 1885564012)
          {
            goto LABEL_201;
          }
        }

        else if (v53)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }
      }

      v55 = v96;
      if (!v96)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v56 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionInfo::GetPlayerState(v55, a3);
      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      v57 = v96;
      if (!v96)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v58 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        v59 = *(v57 + 180);
        std::__shared_weak_count::__release_shared[abi:ne200100](v58);
        v57 = v96;
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v60 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v60);
          v57 = v96;
          if (!v96)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }
        }
      }

      else
      {
        v59 = *(v96 + 180);
      }

      v61 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      avas::server::AudioSessionInfo::SetPlayerState(v57, a3, a4, a5, a2);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      v63 = v96;
      if (!v96)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v64 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        v87 = *(v63 + 180);
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        v63 = v96;
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v65 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
          v63 = v96;
          if (!v96)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }
        }
      }

      else
      {
        v87 = *(v96 + 180);
      }

      v66 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        v67 = *(v63 + 184);
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        v63 = v96;
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }
      }

      else
      {
        v67 = *(v63 + 184);
      }

      v68 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v68);
        v63 = v96;
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v69 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          v63 = v96;
          if (!v96)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }
        }
      }

      v70 = *(&v96 + 1);
      if (*(&v96 + 1))
      {
        atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      if (*(v63 + 204))
      {
        if (!v70)
        {
          goto LABEL_172;
        }
      }

      else if (!v70)
      {
LABEL_172:
        if (!v96)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v71 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          if (!v96)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }
        }

        v72 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v72);
          if (!v96)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }
        }

        v73 = *(&v96 + 1);
        if (*(&v96 + 1))
        {
          atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v73);
        }

        if (!v59 && v87 | v67)
        {
          v74 = v96;
          if (!v96)
          {
            _os_crash();
            [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
          }

          v75 = *(&v96 + 1);
          if (*(&v96 + 1))
          {
            atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
            v76 = *(v74 + 224);
            std::__shared_weak_count::__release_shared[abi:ne200100](v75);
            if (v76)
            {
              goto LABEL_216;
            }

            v74 = v96;
            if (!v96)
            {
              _os_crash();
              [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
            }
          }

          else if (*(v96 + 224))
          {
            goto LABEL_216;
          }

          v77 = *(&v96 + 1);
          if (*(&v96 + 1))
          {
            atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
            v78 = *(v74 + 192);
            std::__shared_weak_count::__release_shared[abi:ne200100](v77);
            if (!v78)
            {
              goto LABEL_216;
            }
          }

          else if (!*(v74 + 192))
          {
            goto LABEL_216;
          }

          v79 = avas::server::require_acq::GetAudioCategory(&v96, v62);
          if (v79 && (v80 = *MEMORY[0x277D27088], v81 = [(NSString *)v79 isEqualToString:v80], v80, !v81))
          {
            v82 = v96;
            if (!v96)
            {
              _os_crash();
              [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
            }

            v83 = *(&v96 + 1);
            if (*(&v96 + 1))
            {
              atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
              *(v82 + 224) = 1;
              std::__shared_weak_count::__release_shared[abi:ne200100](v83);
              v82 = v96;
              if (!v96)
              {
                _os_crash();
                [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
              }

              v84 = *(&v96 + 1);
              if (*(&v96 + 1))
              {
                v85 = 0;
                atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
              }

              else
              {
                v85 = 1;
              }
            }

            else
            {
              v84 = 0;
              v85 = 1;
              *(v96 + 224) = 1;
            }

            avas::server::AudioSessionInfo::SetCachedCategory(v82, v79);
            if ((v85 & 1) == 0)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v84);
            }
          }

          else
          {
            *MEMORY[0x277D27070];
          }
        }

LABEL_216:
        nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[5],char [5],0>(&v112, "type");
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v70);
      goto LABEL_172;
    }

    v24 = *(&v96 + 1);
    v25 = v96;
    if (*(&v96 + 1))
    {
      atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
      v27 = *(&v96 + 1);
      v26 = v96;
      v28 = 0;
      atomic_fetch_add_explicit((*(&v96 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v27 = 0;
      v28 = 1;
      v26 = v96;
    }

    v30 = (*(*v26 + 16))(v26);
    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v25, v30, &v93);
    std::ostringstream::basic_ostringstream[abi:ne200100](cf);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(cf, "{container:", 13);
    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v93;
    }

    else
    {
      v32 = v93.__r_.__value_.__r.__words[0];
    }

    if ((v93.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v93.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v93.__r_.__value_.__l.__size_;
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ",node:{ID:", 15);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(cf, "0x", 2);
    *(v35 + *(*v35 - 24) + 8) = *(v35 + *(*v35 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x245CEE9C0]();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(cf, "} }", 4);
    if ((v110 & 0x10) != 0)
    {
      v37 = v109;
      if (v109 < v106)
      {
        v109 = v106;
        v37 = v106;
      }

      v38 = __src;
    }

    else
    {
      if ((v110 & 8) == 0)
      {
        v36 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_93:
        __dst.__r_.__value_.__s.__data_[v36] = 0;
        *cf = *MEMORY[0x277D82828];
        *&cf[*(*cf - 24)] = *(MEMORY[0x277D82828] + 24);
        *&cf[8] = MEMORY[0x277D82878] + 16;
        if (v108 < 0)
        {
          operator delete(v107);
        }

        *&cf[8] = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&cf[16]);
        std::ostream::~ostream();
        v29 = MEMORY[0x245CEEAC0](&v111);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __dst;
        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if ((v28 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        goto LABEL_101;
      }

      v38 = *&v103[4];
      v37 = v104;
    }

    v36 = v37 - v38;
    if (v37 - v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v36 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v37 - v38;
    if (v36)
    {
      memmove(&__dst, v38, v36);
    }

    goto LABEL_93;
  }

  if (a5)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[3],char [3],0>(cf, "ID");
  }

  data_low = 561210739;
  v21 = *avas::server::gSessionServerLog(size);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *cf = 136315650;
    *&cf[4] = "AudioSessionServerImpPlayState.mm";
    *&cf[12] = 1024;
    *&cf[14] = 320;
    v102 = 1024;
    *v103 = v95;
    _os_log_impl(&dword_241701000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d sessionID = 0x%x: session lookup failed  (client exited?)", cf, 0x18u);
  }

LABEL_219:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v96);
  return data_low;
}

void sub_24172462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, os_unfair_lock_s **a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a40);

  if (a52 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(a23);
  _Unwind_Resume(a1);
}

id avas::server::require_acq::GetAudioCategory(std::__shared_weak_count **this, avas::server::AudioSessionInfoAccessor *a2)
{
  avas::server::RequireAudioControlQueue(this);
  v3 = *this;
  if (!*this)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v4 = this[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::mx::MXAccessor::GetMXProperty(*(v3 + 120), *MEMORY[0x277D271A8], v7);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = v7[1];

  return v5;
}

void sub_2417252AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void avas::server::AudioSessionInfo::SetPlayerState(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v7 = *(a1 + 360);
  v8 = *(a1 + 368);
  if (v7 != v8)
  {
    v9 = 0;
    while (*(v7 + v9) != a2)
    {
      v9 += 24;
      if (v7 + v9 == v8)
      {
        goto LABEL_5;
      }
    }

    if (a4)
    {
      v11 = v7 + v9;
      *(v11 + 8) = a4;
      *(v11 + 12) = a3;
      goto LABEL_24;
    }

    v16 = (v7 + v9);
    v17 = (v7 + v9 + 24);
    v18 = v8 - v7 - v9;
    v19 = v18 - 24;
    if (v17 != v8)
    {
      memmove(v16, v17, v18 - 28);
    }

    v8 = v16 + v19;
LABEL_23:
    *(a1 + 368) = v8;
    goto LABEL_24;
  }

LABEL_5:
  if (a4)
  {
    v10 = *(a1 + 376);
    if (v8 >= v10)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3);
      if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v7) >> 3);
      v14 = 2 * v13;
      if (2 * v13 <= v12 + 1)
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x555555555555555)
      {
        v15 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::AudioSessionInfo::PlayerState>>(a1 + 360, v15);
      }

      v20 = 24 * v12;
      *v20 = a2;
      *(v20 + 8) = a4;
      *(v20 + 12) = a3;
      *(v20 + 16) = a5;
      v8 = 24 * v12 + 24;
      v21 = *(a1 + 360);
      v22 = *(a1 + 368) - v21;
      v23 = v20 - v22;
      memcpy((v20 - v22), v21, v22);
      v24 = *(a1 + 360);
      *(a1 + 360) = v23;
      *(a1 + 368) = v8;
      *(a1 + 376) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v8 = a2;
      *(v8 + 8) = a4;
      *(v8 + 12) = a3;
      *(v8 + 16) = a5;
      v8 += 24;
    }

    goto LABEL_23;
  }

LABEL_24:
  *(a1 + 188) = 0u;
  *(a1 + 340) = 0;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0;
  v25 = *(a1 + 360);
  if (v25 == v8)
  {
    v26 = 0;
LABEL_66:
    v31 = 0;
    goto LABEL_67;
  }

  v26 = 0;
  v27 = 0;
  v28 = 0;
  do
  {
    v29 = v25[3];
    if (v29)
    {
      ++*(a1 + 192);
      if (v25[2] == 1)
      {
        ++*(a1 + 196);
        if ((v29 & 0x80) != 0)
        {
          {
            avas::RemoteDeviceControlEnabled(void)::remoteDeviceControlEnabled = _os_feature_enabled_impl();
          }

          if (avas::RemoteDeviceControlEnabled(void)::remoteDeviceControlEnabled == 1)
          {
            ++*(a1 + 340);
          }
        }
      }

      v29 = v25[3];
      if ((v29 & 0x40) != 0)
      {
        ++*(a1 + 204);
      }
    }

    if ((v29 & 2) != 0 && v25[4] == 1751477863)
    {
      ++*(a1 + 220);
    }

    v30 = v25[2];
    if ((v29 & 2) != 0 && v30 == 1)
    {
      ++*(a1 + 188);
    }

    if ((v29 & 4) != 0)
    {
      ++*(a1 + 212);
      if ((v29 & 8) == 0)
      {
LABEL_42:
        if ((v29 & 0x10) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_50;
      }
    }

    else if ((v29 & 8) == 0)
    {
      goto LABEL_42;
    }

    ++*(a1 + 216);
    if ((v29 & 0x10) == 0)
    {
LABEL_43:
      if ((v29 & 0x20) == 0)
      {
        goto LABEL_45;
      }

LABEL_44:
      ++*(a1 + 208);
      goto LABEL_45;
    }

LABEL_50:
    ++*(a1 + 200);
    if ((v29 & 0x20) != 0)
    {
      goto LABEL_44;
    }

LABEL_45:
    switch(v30)
    {
      case 1:
        if ((v29 & 0x10) == 0)
        {
          v28 = 1;
        }

        break;
      case 3:
        v26 = 1;
        break;
      case 2:
        v27 = 1;
        break;
    }

    v25 += 6;
  }

  while (v25 != *(a1 + 368));
  if (v28)
  {
    v31 = 1;
  }

  else
  {
    v31 = 2;
  }

  if (((v28 | v27) & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_67:
  *(a1 + 180) = v31;
  *(a1 + 184) = v26 & 1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<avas::server::AudioSessionInfo::PlayerState>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const char *AudioSession::ClientPlayerAsCString(int a1)
{
  if (a1 <= 1885888882)
  {
    if (a1 == 1668707442)
    {
      return "Converter";
    }

    if (a1 != 1751477863)
    {
      if (a1 == 1885564012)
      {
        return "Phone";
      }

      return "unknown player type";
    }

    return "Haptic Engine";
  }

  else if (a1 > 1920231790)
  {
    if (a1 != 1936879721)
    {
      if (a1 == 1920231791)
      {
        return "Remote IO";
      }

      return "unknown player type";
    }

    return "Siri Plugin";
  }

  else
  {
    if (a1 != 1885888883)
    {
      if (a1 == 1903519093)
      {
        return "Queue";
      }

      return "unknown player type";
    }

    return "Phase";
  }
}

uint64_t *AudioSession::FormatPointerAsHex@<X0>(uint64_t *__return_ptr a1@<X8>, AudioSession *this@<X0>)
{
  v5 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x20uLL, "%p", this);
  return std::string::basic_string[abi:ne200100]<0>(a1, __str);
}

void nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::json_ref<std::string,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

__CFString *AudioSession::ClientActiveModesToString(AudioSession *this)
{
  if (this)
  {
    v1 = this;
    v2 = [MEMORY[0x277CCAB68] string];
    v3 = v2;
    if ((v1 & 8) != 0)
    {
      [(__CFString *)v2 appendString:@"Active inter-app node "];
    }

    if ((v1 & 0x20) != 0)
    {
      [(__CFString *)v3 appendString:@"TCC Muted"];
    }

    if ((v1 & 0x10) != 0)
    {
      [(__CFString *)v3 appendString:@"Siri Listening "];
    }

    if ((v1 & 4) != 0)
    {
      [(__CFString *)v3 appendString:@"Processing "];
    }

    if ((v1 & 0x40) != 0)
    {
      [(__CFString *)v3 appendString:@"Muted"];
    }

    if (v1 < 0)
    {
      [(__CFString *)v3 appendString:@"Oneness Muted"];
    }

    if ((v1 & 3) == 3)
    {
      v4 = @" Input/Output";
    }

    else
    {
      if (v1)
      {
        v4 = @" Input";
      }

      else
      {
        v4 = @" Output";
      }

      if ((v1 & 3) == 0)
      {
        goto LABEL_22;
      }
    }

    [(__CFString *)v3 appendString:v4];
  }

  else
  {
    v3 = @"Unknown";
  }

LABEL_22:

  return v3;
}

const char *AudioSession::PlayStateToString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278CEAE90[a1];
  }
}

void anonymous namespace::HandleInputMuteChange(_anonymous_namespace_ *this, void *a2, NSMutableDictionary *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a2 objectForKey:*MEMORY[0x277D27138]];
  v5 = v4;
  if (this && v4)
  {
    v6 = avas::server::LegacySessionManager::Instance(v4);
    v7 = avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v11, this);
    if (v11)
    {
      v9 = v11;
      v10 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::LegacySessionManager::FindAudioApplicationForSession(v6, &v9, 0, buf);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      if (*buf)
      {
        avas::server::AudioApplicationInfo::HandleSessionInputMuteChange(*buf, this, [(avas::server::LegacySessionManager *)v5 BOOLValue], 0);
      }

      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    else
    {
      v8 = *avas::server::gSessionServerLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "AudioSessionServerImpNotificationHandlers.mm";
        *&buf[12] = 1024;
        *&buf[14] = 706;
        v14 = 1024;
        v15 = this;
        _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
      }
    }

    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_241725B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

void avas::server::LegacySessionManager::FindAudioApplicationForSession(os_unfair_lock_s *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (!*a2)
  {
    v12 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ServerSessionManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1007;
      _os_log_impl(&dword_241701000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d error - null sessionInfo provided!", buf, 0x12u);
    }

    goto LABEL_10;
  }

  if ((a3 & 1) == 0)
  {
    SessionType = avas::server::ConstAudioSessionInfo::GetSessionType(v6);
    if ((avas::server::AudioApplicationInfo::IsSessionTypeIgnored(SessionType) & 1) == 0)
    {
      v6 = *a2;
      goto LABEL_5;
    }

LABEL_10:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

LABEL_5:
  v9 = *(v6 + 64);
  *buf = *(v6 + 48);
  *&buf[16] = v9;
  v25 = *(v6 + 80);
  os_unfair_lock_lock(a1 + 2);
  v10 = std::__tree<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::__map_value_compare<avas::server::ProcessIdentity,std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>,std::less<avas::server::ProcessIdentity>,true>,std::allocator<std::__value_type<avas::server::ProcessIdentity,std::shared_ptr<avas::server::AudioApplicationInfo>>>>::find<avas::server::ProcessIdentity>(&a1[16], buf);
  if (&a1[18] == v10)
  {
    v13 = *avas::server::gSessionServerLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HIDWORD(v25);
      v15 = (*(**a2 + 88))();
      v16 = 136315906;
      v17 = "ServerSessionManager.mm";
      v18 = 1024;
      v19 = 1019;
      v20 = 1024;
      v21 = v14;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&dword_241701000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d error - audio app instance not found for PID: %d (session: %s)", &v16, 0x22u);
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v11 = *(v10 + 10);
    *a4 = *(v10 + 9);
    a4[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  os_unfair_lock_unlock(a1 + 2);
}

void avas::server::AudioAppSessionStates::UpdateSessionInputMuteState(avas::server::AudioAppSessionStates *this@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v5 = *(this + 1);
  if (v5)
  {
    v8 = (this + 8);
    do
    {
      v9 = v5[8];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v5;
      }

      v5 = *&v5[2 * v11];
    }

    while (v5);
    if (v8 != (this + 8) && v8[8] <= a2)
    {
      v12 = std::map<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>::at(this, &v19);
      v13 = v12;
      if (v12[24] == a3)
      {
        v14 = *avas::server::gSessionServerLog(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = "UNMUTED";
          v21 = "AudioAppSessionStates.mm";
          *buf = 136315650;
          if (a3)
          {
            v15 = "MUTED";
          }

          v22 = 1024;
          v23 = 203;
          v24 = 2080;
          v25 = v15;
          _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Session already matches desired input mute state %s", buf, 0x1Cu);
        }

        goto LABEL_22;
      }

      v16 = avas::server::AudioAppSessionStates::AppState(this);
      v13[24] = a3;
      v17 = avas::server::AudioAppSessionStates::AppState(this);
      if (HIBYTE(v16) == HIBYTE(v17) && (v16 & 0x100) != 0)
      {
        if (v16 != v17)
        {
LABEL_20:
          *a4 = v17 | 0x10000;
LABEL_23:
          *(a4 + 8) = 1;
          return;
        }
      }

      else if (HIBYTE(v16) != HIBYTE(v17))
      {
        goto LABEL_20;
      }

LABEL_22:
      *a4 = 0;
      goto LABEL_23;
    }
  }

  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find session 0x%x in session map", a2];
  *a4 = NSErrorWithString(v18);
  *(a4 + 8) = 0;
}

uint64_t *std::map<unsigned int,avas::server::AudioAppSessionStates::SessionDetails>::at(uint64_t a1, unsigned int *a2)
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
      v4 = *(v2 + 8);
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
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void avas::AudioAppState::getPropertyApp(id *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = [*this objectForKey:a2];
  if (v4)
  {
    v7 = v4;
    v5 = v4;
    v4 = v7;
    v6 = 0;
  }

  else
  {
    v6 = -50;
  }

  *a3 = v6;
  *(a3 + 8) = v4;
}

uint64_t anonymous namespace::IsRemoteDeviceInputControlAllowed(_anonymous_namespace_ *this, avas::server::AudioSessionInfoAccessor *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *this;
  if (!*this)
  {
  }

  v4 = *(this + 1);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::mx::MXAccessor::GetMXProperty(*(v2 + 120), *MEMORY[0x277D272C8], &v12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v12)
  {
    v6 = *avas::server::gSessionServerLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *this;
      if (!*this)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v8 = *(this + 1);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v9 = (*(*v7 + 16))(v7);
      *buf = 136315906;
      v15 = "AudioSessionServerImpPlayState.mm";
      v16 = 1024;
      v17 = 83;
      v18 = 1024;
      v19 = v9;
      v20 = 1024;
      v21 = v12;
      _os_log_impl(&dword_241701000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d IsRemoteDeviceInputControlAllowed for session 0x%x returned error %d", buf, 0x1Eu);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }
    }

    v10 = 0;
  }

  else
  {
    v10 = [v13 BOOLValue];
  }

  return v10;
}

void sub_241726288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v12 = v11;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(a1);
}

uint64_t avas::RemoteDeviceControlEnabled(avas *this)
{
  {
    avas::RemoteDeviceControlEnabled(void)::remoteDeviceControlEnabled = _os_feature_enabled_impl();
  }

  return avas::RemoteDeviceControlEnabled(void)::remoteDeviceControlEnabled;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<BOOL const&,BOOL,0>(uint64_t a1, unsigned __int8 *a2)
{
  *(a1 + 8) = 0;
  v3 = *a2;
  *a1 = 4;
  *(a1 + 8) = v3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

uint64_t nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::operator=(uint64_t a1, uint64_t a2)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a2);
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v5;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  return a1;
}

unsigned __int8 *nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(unsigned __int8 *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(a1);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::json_value::destroy(a1 + 1, *a1);
  return a1;
}

uint64_t avas::server::ConstAudioSessionInfo::IsSessionActive(avas::server::mx::MXAccessor **this)
{
  avas::server::mx::MXAccessor::GetMXProperty(this[15], *MEMORY[0x277D27288], &v3);
  if (v3)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v1 = [v4 BOOLValue];

  return v1;
}

void avas::server::AudioSessionInfo::SetCachedActivationState(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v8[0] = &unk_28535AB78;
  v8[1] = cf;
  *(a1 + 304) = a2;
  OS::CF::String::AsStdString(&v7, v8);
  v6 = (a1 + 312);
  if (*(a1 + 335) < 0)
  {
    operator delete(*v6);
  }

  *v6 = *&v7.__r_.__value_.__l.__data_;
  *(a1 + 328) = *(&v7.__r_.__value_.__l + 2);
  OS::CF::UntypedObject::~UntypedObject(v8);
}

void avas::server::AudioSessionInfo::UpdateCachedActivationState(avas::server::AudioSessionInfo *this, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    if (*(this + 76) == 2)
    {
      return;
    }

    v2 = 0;
  }

  avas::server::AudioSessionInfo::SetCachedActivationState(this, v2, 0);
}

void OS::CF::String::AsStdString(std::string *__return_ptr a1@<X8>, OS::CF::String *this@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  v3 = *(this + 1);
  if (v3)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x8000100u);
    if (CStringPtr)
    {
      std::string::__assign_external(a1, CStringPtr);
    }

    else
    {
      maxBufLen = 0;
      v6 = *(this + 1);
      v10.length = CFStringGetLength(v6);
      v10.location = 0;
      CFStringGetBytes(v6, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
      std::vector<char>::vector[abi:ne200100](buffer, maxBufLen + 1);
      v7 = *(this + 1);
      v11.length = CFStringGetLength(v7);
      v11.location = 0;
      CFStringGetBytes(v7, v11, 0x8000100u, 0, 0, buffer[0], maxBufLen, &maxBufLen);
      buffer[0][maxBufLen] = 0;
      std::string::__assign_external(a1, buffer[0]);
      if (buffer[0])
      {
        buffer[1] = buffer[0];
        operator delete(buffer[0]);
      }
    }
  }
}

void OS::CF::UntypedObject::~UntypedObject(OS::CF::UntypedObject *this)
{
  *this = &unk_28535AB98;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x245CEEB60);
}

void avas::server::require_acq::GetAudioQueueOptions(avas::server::require_acq *this, avas::server::AudioSessionInfoAccessor *a2, AudioSessionDuckingInfo *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *this;
  if (!*this)
  {
    avas::server::require_acq::GetAudioQueueOptions();
  }

  v6 = *(this + 1);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::mx::MXAccessor::GetMXProperty(*(v3 + 120), *MEMORY[0x277D271B8], &v18);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v19;
  v8 = *avas::server::gSessionServerLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *this;
    if (!*this)
    {
      _os_crash();
      [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
    }

    v10 = *(this + 1);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = (*(*v9 + 16))(v9);
    *buf = 136315906;
    v21 = "AudioSessionServerImpPlayState.mm";
    v22 = 1024;
    v23 = 212;
    v24 = 1024;
    v25 = v11;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d session 0x%x queue options: %@", buf, 0x22u);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }
  }

  if (v7)
  {
    v12 = *MEMORY[0x277D27370];
    v13 = [(avas::server *)v7 objectForKey:v12];

    if (v13)
    {
      [v13 floatValue];
    }

    else
    {
      v14 = 0;
    }

    *(a2 + 1) = v14;
    v15 = *MEMORY[0x277D27368];
    v16 = [(avas::server *)v7 objectForKey:v15];

    if (v16)
    {
      [v16 floatValue];
    }

    else
    {
      v17 = 1.0;
    }

    *(a2 + 2) = v17;
    *a2 = 1;
  }

  else
  {
    *(a2 + 4) = 0x3F80000000000000;
    *a2 = 0;
  }
}

void ___ZN12_GLOBAL__N_129HandleRouteChangeNotificationEjP8NSStringP19NSMutableDictionary_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v6, *(a1 + 48));
  v2 = v6;
  if (v6 && *(a1 + 32))
  {
    v3 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v2, *(a1 + 48), &v5);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[4],char [4],0>(buf, "key");
  }

  v4 = *avas::server::gSessionServerLog(v6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    buf[0] = 136315394;
    *&buf[1] = "AudioSessionServerImpNotificationHandlers.mm";
    v9 = 1024;
    v10 = 412;
    _os_log_impl(&dword_241701000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid session pointer or payload", buf, 0x12u);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v6);
}

void sub_2417272AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, const void *a18, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, os_unfair_lock_s *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34)
{
  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a14);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a18);
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a20);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&a30);
  _Unwind_Resume(a1);
}

void avas::server::forbid_acq::GetPropertyLocal(avas::server::forbid_acq *this@<X0>, audit_token_t *a2@<X2>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  v58 = *MEMORY[0x277D85DE8];
  v7 = a2;
  avas::server::ForbidAudioControlQueue(v7);
  v8 = avas::server::AudioSessionInfoAccessor::AudioSessionInfoAccessor(&v50, this, a3, 1);
  v9 = v50;
  if (v50)
  {
    v10 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v11 = v50;
      if (!v50)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v12 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *(v11 + 14);
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
        goto LABEL_11;
      }
    }

    else
    {
      v11 = v50;
    }

    v13 = *(v11 + 14);
LABEL_11:
    if (v50)
    {
      os_unfair_lock_unlock(v50 + 134);
      v52 = 0;
    }

    if (![(audit_token_t *)v7 isEqualToString:@"MuteSessionInputs"])
    {
      goto LABEL_97;
    }

    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }

    if ((avas::AudioSessionMuteEnabled(void)::enabled & 1) == 0)
    {
      v19 = v50;
      if (!v50)
      {
        _os_crash();
        [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
      }

      v20 = v51;
      if (v51)
      {
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = v19;
      *&buf[8] = v20;
      IsAudioAppAllInputSessionsMuted = avas::server::forbid_acq::IsAudioAppAllInputSessionsMuted(buf);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }

      v22 = [MEMORY[0x277CCABB0] numberWithBool:IsAudioAppAllInputSessionsMuted];
    }

    else
    {
LABEL_97:
      if ([(audit_token_t *)v7 isEqualToString:@"IsSpatialEnabled"])
      {
        v15 = v50;
        if (!v50)
        {
          _os_crash();
          [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
        }

        v16 = v51;
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        avas::server::ConstAudioSessionInfo::GetAVASProperty(a4, v15, &cfstr_Isspatialenabl.isa);
LABEL_21:
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        goto LABEL_40;
      }

      if ([(audit_token_t *)v7 isEqualToString:@"DolbyDigitalEncoderAvailable"])
      {
        v17 = v13;
        if (objc_opt_respondsToSelector())
        {
          if ([v17 dolbyDigitalEncoderAvailable])
          {
            v18 = 0x100000000;
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 4294967292;
        }

        v22 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v18)];
        *a4 = v18;
        goto LABEL_39;
      }

      if ([(audit_token_t *)v7 isEqualToString:@"RecordingFromRemoteInput"])
      {
        v23 = MEMORY[0x277CCABB0];
        v24 = atomic_load(v9 + 240);
        v22 = [v23 numberWithBool:v24 & 1];
      }

      else
      {
        if ([(audit_token_t *)v7 isEqualToString:@"EarpieceANCEnabled"])
        {
          inObjectID.val[0] = 0;
          VirtualAudioPlugin = avas::server::GetVirtualAudioPlugin(&inObjectID, v25);
          if (VirtualAudioPlugin)
          {
            v27 = 0;
          }

          else
          {
            buf[9] = 0;
            *&buf[10] = 0;
            strcpy(buf, "scnabolg");
            LODWORD(v49[0]) = 0;
            ioDataSize = 4;
            PropertyData = AudioObjectGetPropertyData(inObjectID.val[0], buf, 0, 0, &ioDataSize, v49);
            VirtualAudioPlugin = PropertyData;
            if (LOBYTE(v49[0]))
            {
              v33 = PropertyData == 0;
            }

            else
            {
              v33 = 0;
            }

            v27 = v33;
          }

          v22 = [MEMORY[0x277CCABB0] numberWithBool:v27];
          *a4 = VirtualAudioPlugin;
          goto LABEL_39;
        }

        v28 = [(audit_token_t *)v7 isEqualToString:@"PreferredMicrophoneInjectionMode"];
        if (v28)
        {
          v29 = avas::server::LegacySessionManager::Instance(v28);
          v22 = [MEMORY[0x277CCABB0] numberWithInteger:{avas::server::LegacySessionManager::GetPreferredMicrophoneInjectionMode(v29, this)}];
        }

        else
        {
          v30 = [(audit_token_t *)v7 isEqualToString:@"MicrophoneInjectionIsEnabled"];
          if (v30)
          {
            v31 = avas::server::LegacySessionManager::Instance(v30);
            v22 = [MEMORY[0x277CCABB0] numberWithBool:avas::server::LegacySessionManager::MicrophoneInjectionIsEnabled(v31)];
          }

          else
          {
            v34 = [(audit_token_t *)v7 isEqualToString:@"MicrophoneInjectionIsAllowedByUser"];
            if (v34)
            {
              v35 = avas::server::LegacySessionManager::Instance(v34);
              v22 = [MEMORY[0x277CCABB0] numberWithBool:avas::server::LegacySessionManager::UserAllowsMicrophoneInjection(v35)];
            }

            else
            {
              if ((avas::EnhanceDialogueBriocheEnabled(v34) & 1) == 0 && [(audit_token_t *)v7 isEqualToString:@"AllowEnhanceDialogue"])
              {
                v36 = v50;
                if (!v50)
                {
                  _os_crash();
                  [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
                }

                v16 = v51;
                if (v51)
                {
                  atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                avas::server::ConstAudioSessionInfo::GetAVASProperty(a4, v36, &cfstr_Allowenhancedi.isa);
                goto LABEL_21;
              }

              if ([(audit_token_t *)v7 isEqualToString:@"AS_HostProcessAttribution"])
              {
                v37 = *MEMORY[0x277D27270];
                avas::server::forbid_acq::GetPropertyMX(this, v37, 0, a3, buf);
                v38 = *buf;
                if (*buf)
                {
                  v39 = 0;
                }

                else
                  v39 = {;
                  v38 = 0;
                }

                *a4 = v38;
                a4[1] = v39;

                goto LABEL_40;
              }

              if ([(audit_token_t *)v7 isEqualToString:@"AS_DetailedActiveAudioRoute"])
              {
                v40 = *MEMORY[0x277D27238];
                avas::server::forbid_acq::GetPropertyMX(this, v40, 0, a3, buf);
                if (*buf)
                {
                  *a4 = *buf;
                  a4[1] = 0;
                }

                else
                {
                  v46 = v50;
                  if (!v50)
                  {
                    _os_crash();
                    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
                  }

                  v47 = v51;
                  if (v51)
                  {
                    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  avas::server::ConstAudioSessionInfo::GetAVASProperty(&inObjectID, v46, &cfstr_Isspatialenabl.isa);
                  if (v47)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                  }

                  v48 = *&inObjectID.val[2];
                  if (*buf || !*&inObjectID.val[2])
                  {
                    *a4 = inObjectID.val[0];
                    a4[1] = 0;
                  }

                  else
                  {
                    *a4 = v49[0];
                    a4[1] = v49[1];
                    v48 = *&inObjectID.val[2];
                  }
                }

                goto LABEL_40;
              }

              v41 = [(audit_token_t *)v7 isEqualToString:@"AllSessionInformation"];
              if (!v41)
              {
                v45 = *avas::server::gSessionServerLog(v41);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  *&buf[4] = "AudioSessionServerImp_iOS.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 481;
                  *&buf[18] = 2112;
                  *&buf[20] = v7;
                  _os_log_impl(&dword_241701000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Unrecognized / unimplemented local property: %@", buf, 0x1Cu);
                }

                *a4 = -50;
                a4[1] = 0;
                goto LABEL_40;
              }

              v42 = avas::server::LegacySessionManager::Instance(v41);
              v43 = *(a3 + 16);
              *buf = *a3;
              *&buf[16] = v43;
              v56 = 1;
              v44 = *(a3 + 16);
              *inObjectID.val = *a3;
              *&inObjectID.val[4] = v44;
              v57 = audit_token_to_pid(&inObjectID);
              v22 = avas::server::LegacySessionManager::GetAllSessionInformation(v42, this, buf);
            }
          }
        }
      }
    }

    *a4 = 0;
LABEL_39:
    a4[1] = v22;
LABEL_40:

    goto LABEL_41;
  }

  v14 = *avas::server::gSessionServerLog(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AudioSessionServerImp_iOS.mm";
    *&buf[12] = 1024;
    *&buf[14] = 416;
    *&buf[18] = 1024;
    *&buf[20] = this;
    _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", buf, 0x18u);
  }

  *a4 = 561210739;
  a4[1] = 0;
LABEL_41:
  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(&v50);
}

void sub_241727C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  avas::server::AudioSessionInfoAccessor::~AudioSessionInfoAccessor(va);
  _Unwind_Resume(a1);
}

double applesauce::CF::convert_to<double,0>(const __CFNumber *a1)
{
  v1 = applesauce::CF::convert_as<double,0>(a1);
  if ((v2 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
  }

  return *&v1;
}

const __CFBoolean *applesauce::CF::convert_as<double,0>(const __CFNumber *a1)
{
  if (a1 && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(a1)))
  {
    return applesauce::CF::details::number_convert_as<double>(a1);
  }

  else
  {
    return applesauce::CF::details::treat_as_BOOL_for_convert_as<double>(a1);
  }
}

unint64_t applesauce::CF::details::number_convert_as<double>(const __CFNumber *a1)
{
  switch(CFNumberGetType(a1))
  {
    case kCFNumberSInt8Type:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberSInt8Type;
      goto LABEL_19;
    case kCFNumberSInt16Type:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberSInt16Type;
      goto LABEL_14;
    case kCFNumberSInt32Type:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberSInt32Type;
      goto LABEL_23;
    case kCFNumberSInt64Type:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberSInt64Type;
      goto LABEL_21;
    case kCFNumberFloat32Type:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloat32Type;
      goto LABEL_6;
    case kCFNumberFloat64Type:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberFloat64Type;
      goto LABEL_16;
    case kCFNumberCharType:
      LOBYTE(valuePtr) = 0;
      v2 = a1;
      v3 = kCFNumberCharType;
LABEL_19:
      v8 = CFNumberGetValue(v2, v3, &valuePtr) == 0;
      v16 = valuePtr;
      goto LABEL_24;
    case kCFNumberShortType:
      LOWORD(valuePtr) = 0;
      v14 = a1;
      v15 = kCFNumberShortType;
LABEL_14:
      v8 = CFNumberGetValue(v14, v15, &valuePtr) == 0;
      v16 = valuePtr;
      goto LABEL_24;
    case kCFNumberIntType:
      LODWORD(valuePtr) = 0;
      v12 = a1;
      v13 = kCFNumberIntType;
LABEL_23:
      v8 = CFNumberGetValue(v12, v13, &valuePtr) == 0;
      v16 = valuePtr;
LABEL_24:
      v9 = v16;
      goto LABEL_25;
    case kCFNumberLongType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberLongType;
      goto LABEL_21;
    case kCFNumberLongLongType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberLongLongType;
      goto LABEL_21;
    case kCFNumberFloatType:
      LODWORD(valuePtr) = 0;
      v6 = a1;
      v7 = kCFNumberFloatType;
LABEL_6:
      v8 = CFNumberGetValue(v6, v7, &valuePtr) == 0;
      v9 = *&valuePtr;
      goto LABEL_25;
    case kCFNumberDoubleType:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberDoubleType;
      goto LABEL_16;
    case kCFNumberCFIndexType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberCFIndexType;
      goto LABEL_21;
    case kCFNumberNSIntegerType:
      valuePtr = 0;
      v4 = a1;
      v5 = kCFNumberNSIntegerType;
LABEL_21:
      v8 = CFNumberGetValue(v4, v5, &valuePtr) == 0;
      v9 = valuePtr;
LABEL_25:
      v17 = v9;
      goto LABEL_26;
    case kCFNumberCGFloatType:
      valuePtr = 0;
      v10 = a1;
      v11 = kCFNumberCGFloatType;
LABEL_16:
      v8 = CFNumberGetValue(v10, v11, &valuePtr) == 0;
      v17 = *&valuePtr;
LABEL_26:
      if (v8)
      {
        v17 = 0.0;
      }

      v18 = *&v17 & 0xFFFFFFFFFFFFFF00;
      break;
    default:
      v18 = 0;
      LOBYTE(v17) = 0;
      break;
  }

  return LOBYTE(v17) | v18;
}

id caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(caulk::xpc::reply_watchdog_factory *a1, void *a2, int a3)
{
  v4 = a2;
  v5 = v4;
  if (*a1 == 1)
  {
    v6 = MEMORY[0x245CEF0E0](v4);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3321888768;
    v13[2] = ___ZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryS8_EEEU13block_pointerFvDpT_ESC_i_block_invoke;
    v13[3] = &__block_descriptor_48_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryS8_EEEU13block_pointerFvDpT_ESC_iEUlS4_S7_S7_E__e51_v32__0__NSError_8__NSDictionary_16__NSDictionary_24l;
    caulk::xpc::reply_watchdog_factory::make_timer(&v11, a1);
    v7 = MEMORY[0x245CEF0E0](v5);
    v12 = v7;
    v14 = v11;
    v15 = MEMORY[0x245CEF0E0](v7);
    v6 = MEMORY[0x245CEF0E0](v13);

    v8 = v14;
    v14 = 0;

    v9 = v11;
    v11 = 0;
  }

  return v6;
}

uint64_t __copy_helper_block_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryS8_EEEU13block_pointerFvDpT_ESC_iEUlS4_S7_S7_E_(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = MEMORY[0x245CEF0E0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

id avas::server::mx::MXAccessor::GetMXProperties(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = *a1;
  v34 = 0;
  v9 = (*(*v8 + 16))(v8, v5, &v34);
  v10 = v34;
  [v7 addEntriesFromDictionary:v9];
  v33 = v10;
  v11 = avas::server::mx::MXAccessor::GetMXProperties(NSArray<NSString *> *,NSDictionary<NSString *,NSNumber *> * {__autoreleasing}*)const::$_0::operator()(&v33);
  v12 = v33;

  [v6 addEntriesFromDictionary:v12];
  if ([v11 count])
  {
    v28 = v9;
    v29 = v5;
    v13 = a1[1];
    v32 = 0;
    v14 = (*(*v13 + 16))(v13, v11, &v32);
    v15 = v32;
    [v7 addEntriesFromDictionary:v14];
    v31 = v15;
    v16 = avas::server::mx::MXAccessor::GetMXProperties(NSArray<NSString *> *,NSDictionary<NSString *,NSNumber *> * {__autoreleasing}*)const::$_0::operator()(&v31);
    v17 = v31;

    [v6 addEntriesFromDictionary:v17];
    if ([v16 count])
    {
      v18 = a1[2];
      v30 = 0;
      v19 = (*(*v18 + 16))(v18, v16, &v30);
      v20 = v30;
      [v7 addEntriesFromDictionary:v19];
      [v6 addEntriesFromDictionary:v20];
      if (a3)
      {
        v21 = v6;
        *a3 = v6;
      }

      v22 = v7;
    }

    else
    {
      if (a3)
      {
        v25 = v6;
        *a3 = v6;
      }

      v26 = v7;
    }

    v9 = v28;
    v5 = v29;
  }

  else
  {
    if (a3)
    {
      v23 = v6;
      *a3 = v6;
    }

    v24 = v7;
  }

  return v7;
}

id avas::server::mx::MXAccessor::GetMXProperties(NSArray<NSString *> *,NSDictionary<NSString *,NSNumber *> * {__autoreleasing}*)const::$_0::operator()(id *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v14 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = *a1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [*a1 objectForKey:v7];
        v9 = [v8 intValue];
        if (v9 == -12984 || v9 == -15684)
        {
          [v2 addObject:v7];
        }

        else
        {
          v19 = v7;
          v20 = v8;
          v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
          [v14 addEntriesFromDictionary:v11];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v4);
  }

  v12 = v14;
  *a1 = v14;

  return v2;
}

void avas::server::forbid_acq::GetPropertiesFromMXSession(uint64_t a1@<X0>, audit_token_t *a2@<X1>, void *a3@<X2>, id *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  avas::server::ForbidAudioControlQueue(v10);
  avas::server::ConstAudioSessionInfoAccessor::ConstAudioSessionInfoAccessor(&v45, a1, a2, 1);
  HasMXPropertyPipeEntitlement = v45;
  if (!v45)
  {
    v32 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136315650;
      *&cf[4] = "AudioSessionServerImpCommon.mm";
      v48 = 1024;
      v49 = 313;
      v50 = 1024;
      *v51 = a1;
      _os_log_impl(&dword_241701000, v32, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get session info for session ID: 0x%x", cf, 0x18u);
    }

    v33 = 561210739;
    goto LABEL_53;
  }

  if ((a5 & 1) == 0)
  {
    v12 = v10;
    v13 = v46;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasMXPropertyPipeEntitlement = avas::server::ConstAudioSessionInfo::HasMXPropertyPipeEntitlement(HasMXPropertyPipeEntitlement, a2);
    v14 = HasMXPropertyPipeEntitlement;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v10 = v12;
    if (!v14)
    {
      v37 = *avas::server::gSessionServerLog(HasMXPropertyPipeEntitlement);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *cf = 136315906;
        *&cf[4] = "AudioSessionServerImpCommon.mm";
        v48 = 1024;
        v49 = 320;
        v50 = 2112;
        *v51 = v12;
        *&v51[8] = 1024;
        *&v51[10] = a1;
        _os_log_impl(&dword_241701000, v37, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get MXProperties: %@ on generic pipe for session: 0x%x due to missing entitlement.", cf, 0x22u);
      }

      v33 = 1701737535;
      goto LABEL_53;
    }
  }

  if (!v10)
  {
    v34 = *avas::server::gSessionServerLog(HasMXPropertyPipeEntitlement);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *cf = 136315394;
      *&cf[4] = "AudioSessionServerImpCommon.mm";
      v48 = 1024;
      v49 = 325;
      _os_log_impl(&dword_241701000, v34, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Invalid propertiesToGet", cf, 0x12u);
    }

    v33 = -50;
LABEL_53:
    *a6 = v33;
    *(a6 + 8) = 0;
    goto LABEL_54;
  }

  v15 = v45;
  if (!v45)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v38 = v10;
  v16 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  avas::server::ConstAudioSessionInfo::JSONFormattedDescription(v15, a1, &v44);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = v45;
  if (!v45)
  {
    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v18 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = (*(**(*(v17 + 15) + 8) + 64))(cf);
  v20 = *cf;
  if (*cf)
  {
    CFRelease(*cf);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v20)
  {
    strcpy(v55, "get_properties_pipe");
    v21 = v45;
    if (v45)
    {
      v22 = v46;
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      avas::server::ConstAudioSessionInfo::GetMXProperties(v21, v38, a4);
      objc_claimAutoreleasedReturnValue();
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = *a4;
      v24 = [v23 countByEnumeratingWithState:&v40 objects:v54 count:16];
      if (v24)
      {
        v25 = *v41;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v23);
            }

            v27 = *(*(&v40 + 1) + 8 * i);
            v28 = [*a4 objectForKey:v27];
            v29 = [v28 intValue];

            if (v29)
            {
              v31 = *avas::server::gSessionServerLog(v30);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                *cf = 136316162;
                *&cf[4] = "AudioSessionServerImpCommon.mm";
                v48 = 1024;
                v49 = 345;
                v50 = 1024;
                *v51 = a1;
                *&v51[4] = 2112;
                *&v51[6] = v27;
                v52 = 1024;
                v53 = v29;
                _os_log_impl(&dword_241701000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d Session 0x%x failed to get property %@ with an error: %d", cf, 0x28u);
              }
            }
          }

          v24 = [v23 countByEnumeratingWithState:&v40 objects:v54 count:16];
        }

        while (v24);
      }

      nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[11],char [11],0>(cf, "properties");
    }

    _os_crash();
    [AVAudioSessionRemoteXPCClient initWithServer:process:delegate:];
  }

  v35 = *avas::server::gSessionServerLog(v19);
  v10 = v38;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = &v44;
    if ((v44.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v36 = v44.__r_.__value_.__r.__words[0];
    }

    *cf = 136315650;
    *&cf[4] = "AudioSessionServerImpCommon.mm";
    v48 = 1024;
    v49 = 332;
    v50 = 2080;
    *v51 = v36;
    _os_log_impl(&dword_241701000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Cannot get MXSessionRef for session: %s", cf, 0x1Cu);
  }

  *a6 = 2003329396;
  *(a6 + 8) = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

LABEL_54:
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
  }
}

void sub_241728F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, std::__shared_weak_count *a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  nlohmann::detail::json_ref<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::~json_ref(&a17);

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a35);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c154_ZTSKZN5caulk3xpc22reply_watchdog_factory18reply_with_timeoutIJU8__strongP7NSErrorU8__strongP12NSDictionaryS8_EEEU13block_pointerFvDpT_ESC_iEUlS4_S7_S7_E_(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

void caulk::xpc::reply_watchdog_factory::reply_with_timeout<NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}>(void({block_pointer})(NSError * {__strong},NSDictionary * {__strong},NSDictionary * {__strong}),int)::{lambda(NSError *,NSDictionary *,NSDictionary *)#1}::operator()(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = a2;
  v9 = applesauce::dispatch::v1::queue::operator*(a1);
  dispatch_source_cancel(v9);

  (*(*(a1 + 8) + 16))();
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<char const(&)[11],char [11],0>(uint64_t a1, char *a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::create<std::string,char const(&)[11]>(a2);
}

uint64_t avas::server::DeviceTimeObserver::setSampleRate(uint64_t this, int a2, double a3)
{
  v3 = *(this + 48);
  v4 = *(this + 56);
  if (v3 != v4)
  {
    while (*v3 != a2)
    {
      v3 += 96;
      if (v3 == v4)
      {
        return this;
      }
    }
  }

  if (v3 != v4)
  {
    **(v3 + 72) = a3;
  }

  return this;
}

uint64_t avas::server::DeviceTimeObserver::setFixedLatency(uint64_t this, int a2, unint64_t a3, unint64_t a4)
{
  v4 = *(this + 48);
  v5 = *(this + 56);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      v4 += 96;
      if (v4 == v5)
      {
        return this;
      }
    }
  }

  if (v4 != v5)
  {
    this = 0;
    atomic_store(a3, (*(v4 + 72) + 8));
    atomic_store(a4, (*(v4 + 72) + 16));
    v6 = *(v4 + 72);
    v7 = *(v6 + 32);
    do
    {
      _X5 = *(v6 + 40);
      __asm { CASPAL          X4, X5, X0, X1, [X8] }

      _ZF = _X4 == v7;
      v7 = _X4;
    }

    while (!_ZF);
  }

  return this;
}

void avas::server::ConstAudioSessionInfo::GetAVASProperty(uint64_t *__return_ptr a1@<X8>, avas::server::ConstAudioSessionInfo *this@<X0>, NSString *a3@<X1>)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(this + 16);
  if (v6)
  {
    avas::server::PropertyStorage::GetProperty(v6, v5, a1);
  }

  else
  {
    v7 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AudioSessionInfo.mm";
      v10 = 1024;
      v11 = 249;
      _os_log_impl(&dword_241701000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Bad error - invalid property store!", &v8, 0x12u);
    }

    *a1 = 2003329396;
    a1[1] = 0;
  }
}

void avas::server::PropertyStorage::GetProperty(avas::server::PropertyStorage *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  os_unfair_lock_lock(this + 2);
  v6 = [*(this + 2) valueWithNilHandlingForKey:v5];
  v7 = v6;
  if (v6)
  {
    *a3 = 0;
    *(a3 + 8) = v6;
  }

  else
  {
    v8 = *avas::server::gSessionServerLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315650;
      v10 = "PropertyStorage.mm";
      v11 = 1024;
      v12 = 72;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_241701000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Error - property key %@ not found in storage", &v9, 0x1Cu);
    }

    *a3 = -50;
    *(a3 + 8) = 0;
  }

  os_unfair_lock_unlock(this + 2);
}

void sub_241729518(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 2);

  _Unwind_Resume(a1);
}

void anonymous namespace::TranslateGetter_DetailedAudioRoute(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>, NSDictionary *a3@<X1>)
{
  v6 = a3;
  v5 = [(_anonymous_namespace_ *)this mutableCopy];
  [v5 setObject:v6 forKey:*MEMORY[0x277CEFD08]];
  *a1 = 0;
  a1[1] = v5;
}

id avas::server::ConstAudioSessionInfo::GetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v3 = avas::server::mx::MXAccessor::GetMXProperties(*(a1 + 120), a2, a3);

  return v3;
}

id avas::server::mx::MXObjectBase::GetMXProperties(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v18 = a2;
  *v25 = 0;
  pthread_threadid_np(0, v25);
  if (*v25 == GetACQThreadID())
  {
    v17 = a3;
    v20 = objc_opt_new();
    v5 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v18;
    v6 = [obj countByEnumeratingWithState:&v21 objects:v34 count:16];
    if (v6)
    {
      v7 = *v22;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v21 + 1) + 8 * i);
          v10 = _MXSessionCopyProperty();
          v32 = v9;
          v11 = [MEMORY[0x277CCABB0] numberWithInt:{v10, v17}];
          v33 = v11;
          v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          [v5 addEntriesFromDictionary:v12];

          if (v10)
          {
            v14 = *avas::server::gSessionServerLog(v13);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              *v25 = 136315906;
              *&v25[4] = "MXObjectBase.mm";
              v26 = 1024;
              v27 = 353;
              v28 = 2112;
              v29 = v9;
              v30 = 1024;
              v31 = v10;
              _os_log_impl(&dword_241701000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Error getting property %@ with an error %d", v25, 0x22u);
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v21 objects:v34 count:16];
      }

      while (v6);
    }

    if (v17)
    {
      v15 = v5;
      *v17 = v5;
    }
  }

  else
  {
    v20 = [*(a1 + 16) copyProperties:v18 outPropertyErrors:a3];
  }

  return v20;
}

uint64_t avas::server::DeviceTimeObserver::DeviceSlot::timestamp(avas::server::DeviceTimeObserver::DeviceSlot *this)
{
  v2 = caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>((*this + 16), 0);
  v3 = *(this + 2);
  if (v3 >= 0x42)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return v2 + 136 * v3 + 56480;
}

id avas::server::DeviceTimeObserver::DeviceSlot::timestampWriter(avas::server::DeviceTimeObserver::DeviceSlot *this)
{
  v2 = avas::server::DeviceTimeObserver::DeviceSlot::timestamp(this);
  v3 = *(this + 2);
  v4 = *(**this + 48);
  if (0xAAAAAAAAAAAAAAABLL * ((*(**this + 56) - v4) >> 5) <= v3)
  {
    std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = v4 + 96 * v3;
  v6 = *(v5 + 72);
  v7 = *(v5 + 80);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3321888768;
  v10[2] = ___ZN4avas6server18DeviceTimeObserver10DeviceSlot15timestampWriterEv_block_invoke;
  v10[3] = &__block_descriptor_56_ea8_32c69_ZTSNSt3__110shared_ptrIN4avas6server18DeviceTimeObserver8TimeInfoEEE_e53_v16__0r__AudioTimeStamp_dQdQ_SMPTETime_ssIIIssss_II_8l;
  v10[4] = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v2;
  v8 = MEMORY[0x245CEF0E0](v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v8;
}

void applesauce::CF::StringRef::from_ns(applesauce::CF::StringRef *this@<X0>, applesauce::CF::StringRef **a2@<X8>)
{
  v3 = this;
  if (v3)
  {
    cf = v3;
    CFRetain(v3);
    *a2 = cf;
    v4 = CFGetTypeID(cf);
    v5 = v4 == CFStringGetTypeID();
    v3 = cf;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x245CEE8B0](exception, "Could not construct");
    }
  }

  else
  {
    *a2 = 0;
  }
}

void sub_241729B64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v10);

  _Unwind_Resume(a1);
}

BOOL avas::server::DeviceTimeObserver::removeDevice(gsl::details *a1, CFTypeRef *a2, unint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v25 = v5;
  v6 = *(a1 + 6);
  v7 = *(a1 + 7);
  if (v6 != v7)
  {
    while (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>((v6 + 8), &v25))
    {
      v6 += 96;
      if (v6 == v7)
      {
        v6 = v7;
        break;
      }
    }

    v5 = v25;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v8 = *(a1 + 7);
  if (v6 != v8)
  {
    avas::server::DeviceTimeObserver::unmapDevice(a1, v6, a3);
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *(a1 + 6)) >> 5);
    if (HIDWORD(v10))
    {
      goto LABEL_26;
    }

    v11 = v10 / 0x42uLL;
    if (v11 >= (*(a1 + 1) - *a1) >> 7)
    {
      avas::server::DeviceTimeObserver::removeDevice();
    }

    v9 = (*a1 + (v11 << 7));
    v12 = v10 % 0x42;
    v13 = v12 + 66 * *(v9 + 1);
    if (v13 >= 0x100)
    {
LABEL_26:
      v17 = &unk_28535A5C0;
      gsl::details::terminate(v9);
    }

    avas::server::DeviceTimeObserver::SharedBlockOwner::deallocateDeviceSlot(v9, *a1 + (v11 << 7), v12);
    std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::pair[abi:ne200100]<true,0>(&v17);
    v14 = *(a1 + 6);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 7) - v14) >> 5) <= v13)
    {
      std::vector<std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>>::__throw_out_of_range[abi:ne200100]();
    }

    std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::operator=[abi:ne200100](v14 + 96 * v13, &v17);
    v15 = v24;
    v24 = 0;
    if (v15)
    {
      std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](&v24, v15);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    if (v22)
    {
      operator delete(__p);
    }

    if (v20)
    {
      operator delete(v19);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v6 != v8;
}

void sub_241729D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::~pair(va);
  _Unwind_Resume(a1);
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(CFTypeRef *a1, const __CFString **a2)
{
  v3 = *a1;
  if (*a1)
  {
    CFRetain(*a1);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(v3);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (v3)
  {
    v5 = CFStringCompare(v3, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (v3)
  {
    goto LABEL_9;
  }

  return v5;
}

void avas::server::DeviceTimeObserver::unmapDevice(gsl::details *a1, uint64_t a2, unint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - *(a1 + 6)) >> 5);
  if (v3 >= 0x100)
  {
    __dst = &unk_28535A5C0;
    gsl::details::terminate(a1);
  }

  boost::container::vector_alloc_holder<boost::container::new_allocator<unsigned int>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::vector_alloc_holder<boost::container::new_allocator<unsigned int> const&,unsigned long>(&__dst, (a2 + 24), *(a2 + 32));
  v7 = *(a2 + 32);
  if (v7)
  {
    memmove(__dst, *(a2 + 24), 4 * v7);
  }

  v8 = *(a2 + 48);
  v9 = *(a2 + 56);
  if (!v8 && v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v15 = &v8[4 * v9];
  v16 = v8;
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique<boost::container::vec_iterator<unsigned int *,false>>(&__dst, &v16, &v15);
  v10 = __dst;
  if (!__dst && v13)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v13)
  {
    v11 = 4 * v13;
    do
    {
      if (!v10)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      avas::server::DeviceTimeObserver::unmapSessionToDevice(a1, *v10++, v3, a3);
      v11 -= 4;
    }

    while (v11);
  }

  if (v14)
  {
    operator delete(__dst);
  }
}

void sub_241729FB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **boost::container::vector_alloc_holder<boost::container::new_allocator<unsigned int>,unsigned long,boost::move_detail::integral_constant<unsigned int,1u>>::vector_alloc_holder<boost::container::new_allocator<unsigned int> const&,unsigned long>(void **a1, const char *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = a3;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >> 61)
    {
      boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
    }

    *a1 = operator new(4 * a3);
    a1[2] = a3;
  }

  return a1;
}

void boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::insert<boost::container::vec_iterator<unsigned int *,false>>(unint64_t *a1@<X0>, char **a2@<X1>, char **a3@<X2>, void *a4@<X3>, char **a5@<X8>)
{
  v6 = *a2;
  v7 = *a1;
  if (*a1 > v6)
  {
    goto LABEL_12;
  }

  v10 = a1[1];
  if (v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 0;
  }

  if (!v11)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v13 = (v7 + 4 * v10);
  if (v6 > v13)
  {
LABEL_12:
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::insert<boost::container::vec_iterator<unsigned int *,false>>();
  }

  v14 = a1[2];
  v15 = v14 >= v10;
  v16 = v14 - v10;
  if (!v15)
  {
    boost::container::vector<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>,void>::emplace<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>();
  }

  v17 = (*a4 - *a3) >> 2;
  v18 = *a3;
  if (v16 < v17)
  {
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(a1, v6, a5, v17, &v18);
  }

  else
  {
    boost::container::expand_forward_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(a1, v6, v13, v17, &v18);
    a1[1] += v17;
    *a5 = *a2;
  }
}

void *boost::container::expand_forward_and_insert_alloc<boost::container::new_allocator<unsigned int>,unsigned int *,boost::container::dtl::insert_range_proxy<boost::container::new_allocator<unsigned int>,boost::container::vec_iterator<unsigned int *,false>,unsigned int *>>(int a1, _BYTE *__dst, _BYTE *a3, unint64_t a4, char **a5)
{
  if (a4)
  {
    v6 = a4;
    v9 = a3 - __dst;
    if (a3 == __dst)
    {
      v11 = *a5;
      result = memmove(a3, *a5, 4 * a4);
      if (!v11)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }
    }

    else
    {
      if (a4 <= v9 >> 2)
      {
        v14 = &a3[-4 * a4];
        memmove(a3, v14, 4 * a4);
        if (v14 != __dst)
        {
          memmove(&a3[-(v14 - __dst)], __dst, v14 - __dst);
        }

        v15 = *a5;
        result = memmove(__dst, *a5, 4 * v6);
        if (!v15)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v13 = &v15[4 * v6];
        goto LABEL_14;
      }

      if (__dst)
      {
        memmove(&__dst[4 * a4], __dst, a3 - __dst);
      }

      v10 = *a5;
      memmove(__dst, *a5, v9);
      if (!v10)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      v11 = &v10[v9];
      *a5 = &v10[v9];
      v6 -= v9 >> 2;
      result = memmove(a3, &v10[v9], 4 * v6);
    }

    v13 = &v11[4 * v6];
LABEL_14:
    *a5 = v13;
  }

  return result;
}

unsigned int **boost::movelib::inplace_set_unique_difference<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>@<X0>(unsigned int **result@<X0>, unsigned int **a2@<X1>, unsigned int **a3@<X2>, unsigned int **a4@<X3>, unsigned int **a5@<X8>)
{
  v5 = *result;
  if (*result == *a2)
  {
    v8 = *result;
LABEL_13:
    *a5 = v8;
  }

  else
  {
    while (1)
    {
      v6 = *a3;
      if (*a3 == *a4)
      {
        break;
      }

      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if (!v5)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v7 = *v5;
      if (*v6 >= *v5)
      {
        if (v7 >= *v6)
        {
          v12 = v5 + 1;
          do
          {
            v13 = v12;
            *result = v12;
            if (v12 == *a2)
            {
              break;
            }

            ++v12;
          }

          while (v7 >= *v13);
          v21 = *a2;
          v22 = v13;
          v14 = *a3;
          v19 = *a4;
          v20 = v14;
          v18 = v5;
          return boost::movelib::set_unique_difference<boost::move_iterator<boost::container::vec_iterator<unsigned int *,false>>,boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v22, &v21, &v20, &v19, &v18, a5);
        }

        v8 = v5 + 1;
        *result = v5 + 1;
        v9 = *a2;
        if (v5 + 1 == *a2)
        {
          goto LABEL_13;
        }

        if (v7 >= *v8)
        {
          v15 = v5 + 2;
          do
          {
            v16 = v15;
            *result = v15;
            if (v15 == *a2)
            {
              break;
            }

            ++v15;
          }

          while (v7 >= *v16);
          v21 = *a2;
          v22 = v16;
          v17 = *a3;
          v19 = *a4;
          v20 = v17;
          v18 = v8;
          return boost::movelib::set_unique_difference<boost::move_iterator<boost::container::vec_iterator<unsigned int *,false>>,boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v22, &v21, &v20, &v19, &v18, a5);
        }
      }

      else
      {
        *a3 = v6 + 1;
        v8 = *result;
        v9 = *a2;
      }

      v5 = v8;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }

    if (!v5)
    {
      __assert_rtn("operator++", "vector.hpp", 168, "!!m_ptr");
    }

    v10 = v5 + 1;
    *result = v5 + 1;
    if (v5 + 1 == *a2)
    {
      v11 = v5;
    }

    else
    {
      do
      {
        if (*v5 >= *v10)
        {
          v11 = v5;
        }

        else
        {
          v11 = v5 + 1;
          if (v10 - 1 != v5)
          {
            *v11 = *v10;
          }
        }

        *result = ++v10;
        v5 = v11;
      }

      while (v10 != *a2);
    }

    *a5 = v11 + 1;
  }

  return result;
}

int **boost::movelib::pdqsort<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(int **result, int **a2)
{
  v4 = *result;
  v5 = *a2;
  if (*result != *a2)
  {
    v10[1] = v2;
    v10[2] = v3;
    v9 = v5;
    v10[0] = v4;
    v6 = (v5 - v4) >> 2;
    v7 = __clz(v6) ^ 0x3F;
    if (v6 >= 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    return boost::movelib::pdqsort_detail::pdqsort_loop<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(v10, &v9, v8, 1);
  }

  return result;
}

unint64_t *boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase@<X0>(unint64_t *result@<X0>, char **a2@<X1>, char **a3@<X2>, void *a4@<X8>)
{
  v4 = *a2;
  v5 = *result;
  if (*result > *a2)
  {
    goto LABEL_20;
  }

  v6 = result;
  v8 = result[1];
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = (v5 + 4 * v8);
  if (v4 > v10)
  {
LABEL_20:
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase();
  }

  v12 = *a3;
  if (v5 > *a3 || v12 > v10)
  {
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase();
  }

  if (v4 > v12)
  {
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase();
  }

  if (v4 != v12)
  {
    if (v12 && v4 && v12 != v10)
    {
      v14 = v10 - v12;
      result = memmove(v4, v12, v10 - v12);
      v15 = &v4[v14];
      v8 = v6[1];
      v4 = *a2;
    }

    else
    {
      v15 = v4;
    }

    v6[1] = v8 - ((v10 - v15) >> 2);
  }

  *a4 = v4;
  return result;
}

void avas::server::DeviceTimeObserver::SharedBlockOwner::deallocateDeviceSlot(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>((a1 + 16), 0);
  if (a3 >= 0x42uLL)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::store((v5 + 136 * a3 + 56480), v6);
  *(a1 + ((a3 >> 3) & 0x1FFFFFF8) + 40) &= ~(1 << a3);
}

uint64_t std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::pair[abi:ne200100]<true,0>(uint64_t a1)
{
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = operator new(0x180uLL, 0x40uLL);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = &unk_28535AE10;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  *(v2 + 22) = 0u;
  *(v2 + 23) = 0u;
  *(v2 + 4) = 0u;
  v2[8] = 0x40E7700000000000;
  v2[9] = 0;
  v2[10] = 0;
  v2[12] = 0;
  v2[13] = 0;
  *(v2 + 48) = 1;
  *(v2 + 64) = 1;
  *(a1 + 72) = v2 + 8;
  *(a1 + 80) = v2;
  *(a1 + 88) = 0;
  return a1;
}

uint64_t std::pair<avas::server::DeviceTimeObserver::DeviceKey,avas::server::DeviceTimeObserver::DeviceInfo>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a2 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::Data::operator=(a1 + 24, a2 + 24);
  boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::Data::operator=(a1 + 48, a2 + 48);
  v5 = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  v6 = *(a1 + 80);
  *(a1 + 72) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a2 + 88);
  *(a2 + 88) = 0;
  v8 = *(a1 + 88);
  *(a1 + 88) = v7;
  if (v8)
  {
    std::default_delete<avas::server::BTPresentationTimePoll>::operator()[abi:ne200100](a1 + 88, v8);
  }

  return a1;
}

uint64_t boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::Data::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_move_assign<boost::container::new_allocator<unsigned int>>(a1, a2);
  }

  return a1;
}

double boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_move_assign<boost::container::new_allocator<unsigned int>>(uint64_t a1, uint64_t a2)
{
  if (a1 == a2 && *(a2 + 8))
  {
    boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_move_assign<boost::container::new_allocator<unsigned int>>();
  }

  *&result = boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_move_assign<boost::container::new_allocator<unsigned int>>(a1, a2, (a2 + 8)).n128_u64[0];
  return result;
}

__n128 boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::priv_move_assign<boost::container::new_allocator<unsigned int>>(uint64_t a1, void *a2, __n128 *a3)
{
  *(a1 + 8) = 0;
  v6 = *a1;
  if (v6)
  {
    operator delete(v6);
  }

  *a1 = *a2;
  result = *a3;
  *(a1 + 8) = *a3;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

double avas::server::DeviceTimeObserver::unmapSessionToDevice(avas::server::DeviceTimeObserver *this, int a2, int a3, unint64_t a4)
{
  v20 = a2;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,avas::server::DeviceTimeObserver::SessionInfo>>>::find(this + 3, &v20, &v19);
  v8 = *(this + 3);
  v9 = *(this + 4);
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  if (!v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v19 == v8 + 32 * v9)
  {
    avas::server::DeviceTimeObserver::unmapSessionToDevice();
  }

  if ((*(v19 + 26) & 1) == 0)
  {
    v11 = *(v19 + 8);
    if ((v11[1] & 1) == 0)
    {
      avas::server::DeviceTimeObserver::unmapSessionToDevice();
    }

    v12 = *v11;
    v13 = v12 / 0x21FuLL;
    if (v13 >= (*(this + 1) - *this) >> 7)
    {
      avas::server::DeviceTimeObserver::removeDevice();
    }

    v16 = *this + (v13 << 7);
    v17 = v12 % 0x21F;
    v18 = 1;
    v14 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(&v16);
    caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load(v14, v15);
    if (v15[0] == a3)
    {
      result = avas::server::DeviceTimeObserver::SessionSlot::setDeviceIndex(&v16, 1, 0, 0xFFu, a4);
    }

    if (v15[16] == a3)
    {
      return avas::server::DeviceTimeObserver::SessionSlot::setDeviceIndex(&v16, 0, 0, 0xFFu, a4);
    }
  }

  return result;
}

double avas::server::DeviceTimeObserver::SessionSlot::setDeviceIndex(avas::server::DeviceTimeObserver::SessionSlot *this, int a2, char a3, unsigned int a4, unint64_t a5)
{
  v10 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(this);
  caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::load(v10, v34);
  if (a2)
  {
    v13 = 0;
  }

  else
  {
    v13 = 16;
  }

  v14 = v34[v13];
  if (v14 == a4)
  {
    return result;
  }

  if (v14 == 255)
  {
    v15 = 0;
    v31[0] = 0;
  }

  else
  {
    v16 = avas::server::DeviceTimeObserver::SharedBlockOwner::deviceTimeAtIdx(*this, v14);
    caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load(v16, v31);
    v15 = 1;
  }

  v33 = v15;
  if (a4 == 255)
  {
    v17 = 0;
    v28[0] = 0;
  }

  else
  {
    v18 = avas::server::DeviceTimeObserver::SharedBlockOwner::deviceTimeAtIdx(*this, a4);
    caulk::concurrent::atomic_value<avas::MinimalTimeStamp,2,3>::load(v18, v28);
    v15 = v33;
    v17 = 1;
    v11 = v29;
  }

  v30 = v17;
  v19 = v32;
  if (v32 <= a5)
  {
    v19 = a5;
  }

  if ((v15 & 1) == 0)
  {
    v19 = a5;
  }

  if (v19 > v11)
  {
    v11 = v19;
  }

  if (v17)
  {
    v20 = v11;
  }

  else
  {
    v20 = v19;
  }

  if ((v15 & 1) == 0)
  {
    v25 = __udivti3();
    v26 = 24;
    if (a2)
    {
      v26 = 8;
    }

    v22 = &v34[v26];
    v23 = *&v34[v26] + v25;
    if (!v17)
    {
      goto LABEL_24;
    }

LABEL_28:
    avas::util::interpolateTimeStamp(v28, v20, v35);
    v24 = v36;
    goto LABEL_29;
  }

  avas::util::interpolateTimeStamp(v31, v20, v35);
  v21 = 24;
  if (a2)
  {
    v21 = 8;
  }

  v22 = &v34[v21];
  v23 = *&v34[v21] + v36;
  if (v30)
  {
    goto LABEL_28;
  }

LABEL_24:
  v24 = __udivti3();
LABEL_29:
  v34[v13] = a4;
  *v22 = v23 - v24;
  if (a2)
  {
    v34[32] = a3;
  }

  v27 = avas::server::DeviceTimeObserver::SessionSlot::sessionState(this);
  *&result = caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::store(v27, v34).n128_u64[0];
  return result;
}

unint64_t *boost::container::dtl::flat_tree<unsigned int,boost::move_detail::identity<unsigned int>,std::less<unsigned int>,void>::insert_unique<boost::container::vec_iterator<unsigned int *,false>>(unint64_t *a1, void **a2, unsigned int **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v18 = *a2;
  v19 = (v3 + 4 * v4);
  v17 = *a3;
  boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::insert<boost::container::vec_iterator<unsigned int *,false>>(a1, &v19, &v18, &v17, &v20);
  v7 = *a1;
  v8 = a1[1];
  v18 = v7;
  v19 = v20;
  if (!v7 && v8)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v18 = &v7[v8];
  boost::movelib::pdqsort<boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v19, &v18);
  v9 = *a1;
  v10 = a1[1];
  v17 = v9;
  v18 = v20;
  if (!v9 && v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v16 = v9;
  v17 = &v9[v10];
  v15 = v20;
  boost::movelib::inplace_set_unique_difference<boost::container::vec_iterator<unsigned int *,false>,boost::container::vec_iterator<unsigned int *,false>,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(&v18, &v17, &v16, &v15, &v19);
  v11 = *a1;
  v12 = a1[1];
  v17 = v11;
  v18 = v19;
  if (!v11 && v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v17 = &v11[v12];
  result = boost::container::vector<unsigned int,boost::container::new_allocator<unsigned int>,void>::erase(a1, &v18, &v17, &v16);
  if (v20 != v19)
  {
    v14 = a1[1];
    if (!*a1)
    {
      if (v14)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }
    }

    return boost::movelib::adaptive_merge<unsigned int *,boost::container::dtl::flat_tree_value_compare<std::less<unsigned int>,unsigned int,boost::move_detail::identity<unsigned int>>>(*a1, v20, (*a1 + 4 * v14), (*a1 + 4 * v14), (a1[2] - v14));
  }

  return result;
}

unint64_t avas::server::DeviceTimeObserver::SharedBlockOwner::deviceTimeAtIdx(avas::server::DeviceTimeObserver::SharedBlockOwner *this, unint64_t a2)
{
  v3 = caulk::ipc::mapped_memory::get_ptr<avas::DTSharedBlock>(this + 2, 0);
  if (a2 >= 0x42)
  {
    std::__throw_out_of_range[abi:ne200100]("array::at");
  }

  return v3 + 136 * a2 + 56480;
}

__n128 caulk::concurrent::atomic_value<avas::SessionSharedState,2,3>::store(unsigned int *a1, uint64_t a2)
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
  v7 = v4 & 0xFFFFFFFC;
  v8 = &a1[12 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 2);
  result = *a2;
  v10 = *(a2 + 16);
  *(v8 + 48) = *(a2 + 32);
  *(v8 + 1) = result;
  *(v8 + 2) = v10;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 2);
  atomic_store((v7 + 5) & 0xFFFFFFFC | 2, a1);
  return result;
}

uint64_t avas::util::interpolateTimeStamp@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = a2 >= v3;
  v5 = a2 - v3;
  if (v4)
  {
    v7 = 1.0;
    v8 = *(result + 40);
    if (*result)
    {
      v7 = *(result + 48);
    }

    v9 = llround(v5 * 41.6666667 * v7) + *(result + 16);
    *a3 = *result;
    *(a3 + 1) = *(result + 1);
    *(a3 + 8) = a2;
    *(a3 + 16) = v9;
    *(a3 + 24) = *(result + 24);
    *(a3 + 40) = v8;
    *(a3 + 48) = v7;
  }

  else
  {
    v6 = *(result + 16);
    *a3 = *result;
    *(a3 + 16) = v6;
    *(a3 + 32) = *(result + 32);
    *(a3 + 48) = *(result + 48);
  }

  return result;
}