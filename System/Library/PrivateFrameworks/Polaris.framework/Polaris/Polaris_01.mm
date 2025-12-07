void sub_25EA7ED74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  ps_ca_arr_args_s::~ps_ca_arr_args_s(&a33);
  _Unwind_Resume(a1);
}

uint64_t PSCoreAnalyticsServer::buildDecodeMap(PSCoreAnalyticsServer *this)
{
  for (i = 0; i != 3; ++i)
  {
    result = pbs_ringbufferlogger_shared_read_decode_data();
  }

  return result;
}

double ___ZN21PSCoreAnalyticsServer14buildDecodeMapEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = v4 + 16 * ps_ca_decode_buffers[*(a1 + 40)];
  ++*(v5 + 56);
  std::string::basic_string[abi:ne200100]<0>(&v9, (a3 + 8));
  v11 = a3;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((v4 + 8), a3, &std::piecewise_construct, &v11);
  v7 = v6;
  if (*(v6 + 47) < 0)
  {
    operator delete(v6[3]);
  }

  result = *&v9;
  *(v7 + 3) = v9;
  v7[5] = v10;
  return result;
}

void sub_25EA7F018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN21PSCoreAnalyticsServer20processBufferEntriesE22PSCoreAnalyticsBuffers_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6)
{
  v6 = *(a1 + 32);
  v7 = v6 + 16 * *(a1 + 40);
  ++*(v7 + 14);
  PSCoreAnalyticsServer::processEntry(v6, a6, a2);
}

void PSCoreAnalyticsServer::sendBucketTotalEvent(void (***a1)(void, void **, xpc_object_t, void), char *a2, unsigned int a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6)
{
  if (a2)
  {
    v11 = ps_ca_string_for_opaque_id(a3);
    if (v11)
    {
      v12 = v11;
      for (i = 0; a6; --a6)
      {
        v14 = *a5++;
        i += v14;
      }

      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_string(empty, "uniqueID", v12);
      xpc_dictionary_set_uint64(empty, "value", a4);
      xpc_dictionary_set_uint64(empty, "numFrames", i);
      std::string::basic_string[abi:ne200100]<0>(__p, a2);
      (**a1)(a1, __p, empty, 0);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_25EA7F17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PSCoreAnalyticsServer::getEventKeyForEntryType(uint64_t a1, uint64_t a2, int a3)
{
  v8 = *MEMORY[0x277D85DE8];
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:

      JUMPOUT(0x25F8C7A80);
    default:
      v4 = MEMORY[0x25F8C7A80](a2, "");
      v6 = _polarisdLogSharedInstance(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7[0] = 67109120;
        v7[1] = a3;
        _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "CoreAnalytics, unknown entry type (%d)", v7, 8u);
      }

      return;
  }
}

uint64_t PSCoreAnalyticsServer::getDecodeData(PSCoreAnalyticsServer *a1, std::string *a2, unint64_t a3, int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v7 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(a1 + 1, &v12);
  if (v7)
  {
    std::string::operator=(a2, v7 + 1);
    return 0;
  }

  else
  {
    v9 = PSCoreAnalyticsServer::buildDecodeMap(a1);
    v11 = _polarisdLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v14 = v12;
      v15 = 1024;
      v16 = a4;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, "CoreAnalyticsServer, could not find hash (%llu) in decoder for entryType (%d)...", buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }
}

void PSCoreAnalyticsServer::sendEntry(uint64_t a1, const std::string::value_type **a2, xpc_object_t object, uint64_t a4)
{
  if (a4 && *(a4 + 80) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *a2, a2[1]);
    }

    else
    {
      v18 = *a2;
    }

    v7 = *(a4 + 48);
    if (*(a4 + 48))
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = a4 + 24 * v9;
        if (*v10)
        {
          v11 = 0;
          do
          {
            v12 = *(v10 + 8);
            if (v12 && *(v12 + 2 * v11))
            {
              v13 = xpc_copy(object);
              v14 = v13;
              v15 = (a4 + 88);
              if (*(a4 + 111) < 0)
              {
                v15 = *(a4 + 88);
              }

              xpc_dictionary_set_uint64(v13, v15, v11);
              v16 = (a4 + 112);
              if (*(a4 + 135) < 0)
              {
                v16 = *(a4 + 112);
              }

              xpc_dictionary_set_uint64(v14, v16, *(*(v10 + 8) + 2 * v11));
              if (*(a4 + 49) == 1)
              {
                v17 = (a4 + 56);
                if (*(a4 + 79) < 0)
                {
                  v17 = *(a4 + 56);
                }

                xpc_dictionary_set_BOOL(v14, v17, *(v10 + 16));
              }

              v19 = MEMORY[0x277D85DD0];
              v20 = 0x40000000;
              v21 = ___ZL20sendEntriesFromArrayNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPvP16ps_ca_arr_args_s_block_invoke;
              v22 = &__block_descriptor_tmp_97;
              v23 = v14;
              if (analytics_send_event_lazy())
              {
                ++v8;
              }

              else
              {
                xpc_release(v14);
              }
            }

            ++v11;
          }

          while (v11 < *v10);
          v7 = *(a4 + 48);
        }

        ++v9;
      }

      while (v9 < v7);
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 224) += v8;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }
  }

  else if (analytics_send_event_lazy())
  {
    ++*(a1 + 224);
    return;
  }

  xpc_release(object);
}

void sub_25EA7F8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ps_ca_create_server(uint64_t a1, uint64_t a2)
{
  if (ps_ca_create_server::onceToken != -1)
  {
    ps_ca_create_server_cold_1();
  }

  return ps_ca_create_server::server;
}

PSCoreAnalyticsServer *ps_ca_destroy_server(PSCoreAnalyticsServer *result)
{
  if (result)
  {
    PSCoreAnalyticsServer::~PSCoreAnalyticsServer(result);

    JUMPOUT(0x25F8C7C50);
  }

  return result;
}

void ps_ca_arr_args_s::~ps_ca_arr_args_s(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

void **std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,std::string>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::string>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::string>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,std::string>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 47) < 0)
    {
      operator delete(__p[3]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_25EA83110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&a22, a23);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_25EA8358C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned int>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__gcd<unsigned int>(uint64_t result, unsigned int a2)
{
  LODWORD(v2) = result;
  v3 = result > a2;
  if (result >= a2)
  {
    result = a2;
  }

  else
  {
    result = result;
  }

  if (v3)
  {
    v2 = v2;
  }

  else
  {
    v2 = a2;
  }

  if (!result)
  {
    return v2;
  }

  v4 = v2 % result;
  if (v2 % result)
  {
    v5 = v4 | result;
    v6 = v4 >> __clz(__rbit32(v4));
    do
    {
      v7 = result >> __clz(__rbit32(result));
      if (v6 <= v7)
      {
        LODWORD(result) = v7 - v6;
      }

      else
      {
        LODWORD(result) = v6 - v7;
      }

      if (v6 >= v7)
      {
        v6 = v7;
      }
    }

    while (result);
    return v6 << __clz(__rbit32(v5));
  }

  return result;
}

void sub_25EA8922C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37)
{
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(&a24, a25);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const char *cvdataBufferAllocator(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  v6 = *a1 * v4;
  v7 = !is_mul_ok(*a1, v4);
  v8 = _polarisdLogSharedInstance(a1, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *a1;
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    *buf = 136316162;
    v29 = "cvdataBufferAllocator";
    v30 = 2048;
    v31 = v9;
    v32 = 2048;
    v33 = v10;
    v34 = 2048;
    v35 = v6;
    v36 = 1024;
    v37 = v11;
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in %s width=%llu height=%llu allocSize=%llu pixelFormat=%#x\n", buf, 0x30u);
  }

  if (v7)
  {
    cvdataBufferAllocator_cold_2(a1, v5);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2948], [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v6]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CD2A70], [MEMORY[0x277CCABB0] numberWithUnsignedInt:v3]);
    v13 = IOSurfaceCreate(Mutable);
    if (v13)
    {
      v15 = v13;
      CFDictionarySetValue(Mutable, *MEMORY[0x277CC4B50], *MEMORY[0x277CBED28]);
      v16 = CVDataBufferCreateWithIOSurface();
      if (v16)
      {
        v24 = v16;
        v25 = _polarisdLogSharedInstance(v16, v17);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v29) = v24;
          v26 = "failed to create CV Data Buffer for resource ret=%d";
LABEL_19:
          _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_ERROR, v26, buf, 8u);
        }
      }

      else
      {
        v18 = CVDataBufferIncrementUseCountForCategory();
        if (!v18)
        {
          goto LABEL_7;
        }

        v27 = v18;
        v25 = _polarisdLogSharedInstance(v18, v19);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          LODWORD(v29) = v27;
          v26 = "failed to increment category 1 use count for CV Data Buffer ret=%d";
          goto LABEL_19;
        }
      }

LABEL_7:
      CFRelease(v15);
      if (!Mutable)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    cvdataBufferAllocator_cold_1(0, v14);
    if (Mutable)
    {
LABEL_8:
      CFRelease(Mutable);
    }
  }

LABEL_9:
  v22 = _polarisdLogSharedInstance(v20, v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v29 = 0;
    _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_DEBUG, "PSCVDataBufferResource in cvdataBufferAllocator dataBufferRef=%p\n", buf, 0xCu);
  }

  return 0;
}

uint64_t _polarisdLogSharedInstance(uint64_t a1, uint64_t a2)
{
  if (_polarisdLogSharedInstance_onceToken != -1)
  {
    _polarisdLogSharedInstance_cold_1();
  }

  return _polarisdLogSharedInstance_instance;
}

os_log_t ___polarisdLogSharedInstance_block_invoke()
{
  result = os_log_create("com.apple.polaris", "polarisd");
  _polarisdLogSharedInstance_instance = result;
  return result;
}

void taskWrapperExecutionHandler(uint64_t *a1)
{
  v2 = objc_autoreleasePoolPush();
  ps_task_wrapper_execute_sync(a1);

  objc_autoreleasePoolPop(v2);
}

unint64_t ps_task_wrapper_execute_sync(uint64_t *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  if ((*(*a1 + 20) & 1) == 0)
  {
    v2 = task_counters_0();
    *(v2 + 144) = v3;
    *(v2 + 136) = *(v4 + 16);
  }

  ps_task_context_set_graph_stride();
  if (ps_resource_array_get_count() >= 2)
  {
    ps_task_wrapper_execute_sync_cold_4(v11, v1);
LABEL_14:
    ps_task_wrapper_execute_sync_cold_1(v11, v1);
  }

  if (ps_resource_array_get_count())
  {
    goto LABEL_14;
  }

  v5 = mach_absolute_time();
  if (*(v1 + 20) == 1)
  {
    (*(v1 + 24))(*(v1 + 48), *(v1 + 32), *(v1 + 40));
  }

  else
  {
    if (ps_telemetry_is_enabled())
    {
      ps_task_wrapper_execute_sync_cold_2(v11, &v10);
      v6 = v10;
    }

    else
    {
      v6 = 0;
    }

    (*(v1 + 24))(*(v1 + 48), *(v1 + 32), *(v1 + 40));
    if (ps_telemetry_is_enabled())
    {
      ps_task_wrapper_execute_sync_cold_3(v6, v11);
    }
  }

  v7 = *(v1 + 64);
  v8 = mach_absolute_time();
  return ps_ca_notify_task_end(v7, v8 - v5);
}

uint64_t ps_task_wrapper_setup_gpu_resources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ps_task_context_set_mtl_device();

  return ps_task_context_set_mtl_command_queue();
}

void *ps_task_wrapper_create(void *a1, void *a2, uint64_t a3, uint64_t a4, __int16 a5, __int16 a6, uint64_t a7)
{
  v36 = *MEMORY[0x277D85DE8];
  v13 = a1;
  v14 = a2;
  v15 = malloc_type_calloc(1uLL, 0x148uLL, 0x10B00405EF556FCuLL);
  if (v15)
  {
    v15[3] = [v14 function];
    v15[6] = ps_task_context_create();
    v15[7] = a3;
    v15[1] = a4;
    *(v15 + 8) = a5;
    *(v15 + 9) = a6;
    *(v15 + 20) = 0;
    v15[8] = a7;
    [v14 userdata];
    ps_task_context_set_userdata();
    v16 = [v14 name];
    [v16 UTF8String];
    __strlcpy_chk();

    v32 = v14;
    v17 = v14;
    v33 = v13;
    v31 = v13;
    v18 = [v17 inputs];
    v19 = [v18 count];

    v15[4] = ps_resource_array_create();
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        resource = ps_resource_array_get_resource();
        v22 = [v17 inputs];
        v23 = [v22 objectAtIndexedSubscript:i];
        v24 = [v23 resolvedResourceKey];
        MEMORY[0x25F8C9510](resource, [v24 UTF8String]);

        MEMORY[0x25F8C93F0](resource, 1);
        MEMORY[0x25F8C94A0](resource, 1);
        v25 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
        if (!v25)
        {
          ps_task_wrapper_create_cold_1(buf);
        }

        v26 = v25;
        MEMORY[0x25F8C94C0](resource, i, 1);
        MEMORY[0x25F8C9460](resource, i, v26, 32);
        v27 = MEMORY[0x25F8C9570](resource, i, 0);
        v28 = __PLSLogSharedInstance(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v35 = 0;
          _os_log_impl(&dword_25EA3A000, v28, OS_LOG_TYPE_DEBUG, "Finished setting up ps_resource input for key %s", buf, 0xCu);
        }
      }
    }

    v29 = [v17 outputs];
    [v29 count];

    v15[5] = ps_resource_array_create();
    v14 = v32;
    v13 = v33;
  }

  return v15;
}

void ps_task_wrapper_destroy(char *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a1 + 6))
  {
    ps_task_context_free();
    *(a1 + 6) = 0;
  }

  if (*(a1 + 4))
  {
    count = ps_resource_array_get_count();
    if (count)
    {
      v3 = count;
      for (i = 0; i != v3; ++i)
      {
        resource = ps_resource_array_get_resource();
        if (ps_resource_get_class() == 1)
        {
          v6 = MEMORY[0x25F8C9190](resource);
          if (v6)
          {
            v7 = v6;
            for (j = 0; j != v7; ++j)
            {
              MEMORY[0x25F8C9150](resource, j);
              bytes = ps_resource_data_get_bytes();
              free(bytes);
            }
          }
        }
      }
    }

    v10 = ps_resource_array_free();
    *(a1 + 4) = 0;
    v11 = __PLSLogSharedInstance(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = a1 + 72;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_DEBUG, "Finished deleting input array for task %s", &v14, 0xCu);
    }
  }

  if (*(a1 + 5))
  {
    ps_resource_array_get_count();
    v12 = ps_resource_array_free();
    *(a1 + 5) = 0;
    v13 = __PLSLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 136315138;
      v15 = a1 + 72;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_DEBUG, "Finished deleting output array for task %s", &v14, 0xCu);
    }
  }

  free(a1);
}

void sub_25EA8CC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ps_ca_map_string(const char *a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0;
  }

  v2 = 2166136261;
  v3 = *a1;
  if (*a1)
  {
    v4 = a1 + 1;
    do
    {
      v2 = 16777619 * (v2 ^ v3);
      v5 = *v4++;
      v3 = v5;
    }

    while (v5);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v44 = 0;
  v12 = v2;
  __strlcpy_chk();
  v6 = 0;
  while (1)
  {
    v7 = pbs_ringbufferlogger_shared_write_decode_data();
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v6 += 4;
    if (v6 == 12)
    {
      v11 = 0;
      strncpy(v10, a1, 0x100uLL);
      LODWORD(v11) = v8;
      pbs_ringbuffer_get_shared_error_log();
      pbs_ringbufferlogger_shared_write();
      return v2;
    }
  }

  return v2;
}

void sub_25EA8F4EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  objc_destroyWeak((v26 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void UPDATE_STATE(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 transitionMonitor];
  v5 = [v4 transitionCond];
  [v5 lock];

  v6 = [v3 transitionMonitor];
  [v6 setTransitionState:a2];

  v8 = [v3 transitionMonitor];

  v7 = [v8 transitionCond];
  [v7 unlock];
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  return [a10 countByEnumeratingWithState:va objects:v22 - 224 count:{16, a6, a7, a8}];
}

void sub_25EA93864(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void _handleTimeoutBranching(void *a1, void *a2, int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (a3)
  {
    _handleTimeoutBranching_cold_1(&v10, v6);
  }

  v8 = __PLSLogSharedInstance(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [v7 localizedDescription];
    v10 = 136315138;
    v11 = [v9 UTF8String];
    _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_ERROR, "%s", &v10, 0xCu);
  }

  [v5 callTransitionCallback:7 retainedContext:v7];
}

uint64_t ps_writer_block_acquire(uint64_t a1, uint64_t *a2)
{
  v4 = ps_writer_state_update();
  if (v4)
  {
    return v4;
  }

  if (*a1 != 1)
  {
    ps_task_resources_acquire(**(a1 + 8), 0, 0);
  }

  *a2 = ps_resource_array_get_resource();
  v5 = ps_writer_state_update();
  if (!v5)
  {
    return v4;
  }

  v7 = ps_writer_block_acquire_cold_1(&v8, v5);
  return ps_writer_block_relinquish(v7);
}

uint64_t ps_writer_block_relinquish(uint64_t a1)
{
  v2 = ps_writer_state_update();
  if (v2)
  {
    return v2;
  }

  if ((*a1 & 1) == 0)
  {
    v3 = *(a1 + 8);
    if (*(v3 + 32) == 1)
    {
      *(a1 + 32) = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    }

    v4 = *v3;
    resource = ps_resource_array_get_resource();
    v6 = MEMORY[0x25F8C9240](resource, 0);
    v7 = v6;
    if (*(v3 + 32) == 1)
    {
      v7 = ps_util_mct_to_mat(v6);
    }

    if (*(v3 + 33) == 1)
    {
      MEMORY[0x25F8C9480](resource, 0, *(v3 + 40));
      ++*(v3 + 40);
    }

    v8 = MEMORY[0x25F8C9180](resource, 0);
    MEMORY[0x25F8C9200](resource, 0);
    v10 = *(v3 + 8);
    if (v10)
    {
      ps_liveness_node_start_execution(v10, v8, v9);
    }

    if (*(v3 + 32) == 1)
    {
      v20 = 0;
      v19 = 0u;
      v18 = 0u;
      LOWORD(v20) = *(v3 + 24);
      v17 = v7;
      *(&v19 + 1) = v8;
      ps_telemetry_emit_event_internal(0, &v17, 0x30uLL, 8);
      *&v19 = v7;
      v11 = *(a1 + 88);
      v12 = mach_absolute_time();
      ps_ca_camera_delivery(v11, v7, v12);
    }

    ps_task_resources_relinquish(v4, 0);
    if (*(v3 + 8))
    {
      MEMORY[0x25F8C9260](resource, 0);
      ps_liveness_node_end_execution(*(v3 + 8));
    }
  }

  v13 = ps_writer_state_update();
  if (!v13)
  {
    return v2;
  }

  v15 = ps_writer_block_relinquish_cold_1(&v17, v13);
  return ps_writer_block_publish(v15, v16);
}

uint64_t ps_writer_block_publish(uint64_t a1, uint64_t a2)
{
  v4 = ps_writer_state_update();
  if (v4)
  {
    return v4;
  }

  v5 = *(a1 + 8);
  if (*a1 == 1)
  {
    (v5)(*(a1 + 16), *(a1 + 24), a2);
    v5 = 0;
  }

  else
  {
    if (*(v5 + 33) == 1)
    {
      a2 = *(v5 + 40);
    }

    ps_task_resources_publish(*v5, a2);
    resource = ps_resource_array_get_resource();
    v7 = MEMORY[0x25F8C9240](resource, 0);
    if (*(v5 + 32) == 1)
    {
      v8 = ps_util_mct_to_mat(v7);
      if (*(v5 + 32))
      {
        v20 = 0;
        v21 = 0;
        v19[3] = 0;
        LOWORD(v21) = *(v5 + 24);
        v9 = *(a1 + 32);
        v19[0] = v8;
        v19[2] = v9;
        v20 = a2;
        v19[1] = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
        ps_telemetry_emit_event_internal(2, v19, 0x30uLL, 8);
      }
    }
  }

  ps_frame_history_buffer_acquire_data_entry(*(a1 + 96));
  *(a1 + 104) = v10;
  if (v5 && *v5 && (v11 = ps_resource_array_get_resource()) != 0)
  {
    v12 = MEMORY[0x25F8C9200](v11, 0);
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = mach_absolute_time();
  ps_frame_history_notify_start_frame_data(v13, v14, a2, v15, 0, v12);
  ps_frame_history_buffer_relinquish_data_entry(*(a1 + 96));
  v16 = ps_writer_state_update();
  if (!v16)
  {
    return v4;
  }

  v18 = ps_writer_block_publish_cold_1(v19, v16);
  return ps_writer_block_pause(v18);
}

uint64_t ps_writer_block_pause(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  ps_liveness_node_pause(*(*(a1 + 8) + 8), 1);
  return 0;
}

uint64_t ps_writer_block_resume(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  ps_liveness_node_pause(*(*(a1 + 8) + 8), 0);
  return 0;
}

_DWORD *ps_grouped_source_pool_create(uint64_t a1, _BYTE *a2, unsigned int a3, void *a4, char a5, char a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = __PLSLogSharedInstance(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v29 = 67109120;
    v30 = a3;
    _os_log_impl(&dword_25EA3A000, v12, OS_LOG_TYPE_DEBUG, "PS Graph Resources being created with %u inputs ", &v29, 8u);
  }

  v13 = malloc_type_calloc(1uLL, 0x458uLL, 0x10B00401B80E8F3uLL);
  if (!v13)
  {
    ps_grouped_source_pool_create_cold_7();
  }

  v14 = v13;
  *v13 = a1;
  v13[2] = a3;
  v15 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v14 + 3) = v15;
  if (!v15)
  {
    ps_grouped_source_pool_create_cold_6();
    goto LABEL_24;
  }

  v16 = malloc_type_calloc(a3, 8uLL, 0x100004000313F17uLL);
  *(v14 + 4) = v16;
  if (!v16)
  {
LABEL_24:
    ps_grouped_source_pool_create_cold_5();
    goto LABEL_25;
  }

  v17 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  *(v14 + 5) = v17;
  if (!v17)
  {
LABEL_25:
    ps_grouped_source_pool_create_cold_4();
    goto LABEL_26;
  }

  v18 = malloc_type_calloc(a3, 1uLL, 0x100004077774924uLL);
  *(v14 + 6) = v18;
  if (!v18)
  {
LABEL_26:
    ps_grouped_source_pool_create_cold_3();
    goto LABEL_27;
  }

  v19 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v14 + 7) = v19;
  if (!v19)
  {
LABEL_27:
    ps_grouped_source_pool_create_cold_2();
LABEL_28:
    ps_grouped_source_pool_create_cold_1();
  }

  *(v14 + 2) = ps_resource_array_create();
  *(v14 + 1088) = a5;
  *(v14 + 1096) = a6;
  v14[273] = -1;
  __strlcpy_chk();
  v20 = malloc_type_calloc(a3, 0x28uLL, 0x1000040528290BBuLL);
  *(v14 + 138) = v20;
  if (!v20)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    v21 = 0;
    do
    {
      v20 = [v11 unsignedLongLongValue];
      v22 = *(v14 + 138);
      *(v22 + 40 * v21 + 16) = v20;
      if (a2)
      {
        v23 = *a2;
        v24 = -2128831035;
        if (*a2)
        {
          v25 = a2 + 1;
          do
          {
            v24 = 16777619 * (v24 ^ v23);
            v26 = *v25++;
            v23 = v26;
          }

          while (v26);
        }
      }

      else
      {
        v24 = 0;
      }

      *(v22 + 40 * v21++) = v24;
    }

    while (v21 != a3);
  }

  v27 = __PLSLogSharedInstance(v20);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v29 = 67109120;
    v30 = a3;
    _os_log_impl(&dword_25EA3A000, v27, OS_LOG_TYPE_DEBUG, "PS Graph Resources created with %u inputs", &v29, 8u);
  }

  return v14;
}

void ps_grouped_source_pool_destroy(char *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 2);
    v6 = 136380931;
    v7 = a1 + 64;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, "Deleting reader instances for GSP %{private}s, num inputs %u.", &v6, 0x12u);
  }

  if (*(a1 + 2))
  {
    ps_resource_array_free();
    *(a1 + 2) = 0;
  }

  if (*(a1 + 3))
  {
    v5 = 0;
    do
    {
      ps_prm_delete_reader_instance(*a1, *(*(a1 + 3) + 8 * v5++));
    }

    while (v5 < *(a1 + 3));
  }

  free(*(a1 + 138));
  free(*(a1 + 3));
  free(*(a1 + 4));
  free(*(a1 + 5));
  free(*(a1 + 6));
  free(*(a1 + 7));
  free(a1);
}

uint64_t ps_grouped_source_pool_add_input(uint64_t a1, PSResourceManagerOptions *a2, uint64_t a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 12);
  if (v3 >= *(a1 + 8))
  {
    ps_grouped_source_pool_add_input_cold_1();
  }

  if (a3 == 3)
  {
    ps_grouped_source_pool_add_input_cold_2(&v20, a2);
  }

  resource = ps_resource_array_get_resource();
  resource_key = ps_prm_opts_get_resource_key(a2);
  MEMORY[0x25F8C9510](resource, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a2);
  MEMORY[0x25F8C93F0](resource, resource_class);
  return_capacity = ps_prm_opts_get_return_capacity(a2);
  MEMORY[0x25F8C94A0](resource, return_capacity);
  resource_metadata_type = ps_prm_opts_get_resource_metadata_type(a2);
  MEMORY[0x25F8C9520](resource, resource_metadata_type);
  key = ps_resource_get_key();
  v13 = MEMORY[0x25F8C9220](resource);
  if (key)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    v36 = 0u;
    v35 = 0u;
    v34 = 0u;
    v33 = 0u;
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    v29 = 0u;
    v28 = 0u;
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v52 = 0;
    v20 = v13;
    __strlcpy_chk();
    v14 = 0;
    while (1)
    {
      v15 = pbs_ringbufferlogger_shared_write_decode_data();
      if (!v15)
      {
        break;
      }

      v16 = v15;
      v14 += 4;
      if (v14 == 12)
      {
        v19 = 0;
        strncpy(v18, key, 0x100uLL);
        LODWORD(v19) = v16;
        pbs_ringbuffer_get_shared_error_log();
        pbs_ringbufferlogger_shared_write();
        break;
      }
    }
  }

  *(*(a1 + 1104) + 40 * v3 + 4) = MEMORY[0x25F8C9220](resource);
  *(*(a1 + 24) + 8 * v3) = ps_prm_create_reader_instance(*a1, a2);
  ps_task_insert_to_psgraph_reader_map(a2, *(*(a1 + 24) + 8 * v3));
  *(*(a1 + 32) + 8 * v3) = a3;
  *(*(a1 + 40) + v3) = MEMORY[0x25F8C9190](resource) > 1;
  if (!a3 && ps_prm_opts_get_resource_class(a2) == 10)
  {
    *(*(a1 + 48) + v3) = 1;
  }

  ++*(a1 + 12);
  return v3;
}

uint64_t ps_grouped_source_pool_acquire(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!*(a1 + 12))
  {
    v8 = 0;
    goto LABEL_75;
  }

  v31 = v5;
  v7 = 0;
  v8 = 0;
  do
  {
    resource = ps_resource_array_get_resource();
    *(a1 + 1092) = v7;
    v10 = *(*(a1 + 32) + 8 * v7);
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        ps_prm_acquire_reader_resources_since_last(*(*(a1 + 24) + 8 * v7), resource, *(a1 + 56) + 8 * v7);
      }

      else if (v10 == 3)
      {
        v29 = ps_grouped_source_pool_acquire_cold_1();
        return ps_grouped_source_pool_relinquish(v29);
      }
    }

    else if (v10)
    {
      if (v10 == 1)
      {
        if (ps_prm_acquire_reader_resources_latest(*(*(a1 + 24) + 8 * v7), resource, *(a1 + 56) + 8 * v7))
        {
          v11 = 3758097084;
        }

        else
        {
          v11 = v8;
        }

        if (!MEMORY[0x25F8C9190](resource))
        {
          goto LABEL_45;
        }

        v12 = 0;
        do
        {
          v13 = MEMORY[0x25F8C9260](resource, v12);
          if (v13)
          {
            v8 = v11;
          }

          else
          {
            v8 = 3758097084;
          }

          if ((v13 & 1) == 0 && a2 == 0xFFFFFFFFFFFELL)
          {
            MEMORY[0x25F8C94B0](resource, v12, 2);
            v8 = v11;
          }

          ++v12;
          v11 = v8;
        }

        while (MEMORY[0x25F8C9190](resource) > v12);
      }
    }

    else
    {
      if (a2 == 0xFFFFFFFFFFFFLL || (*(a1 + 1088) & 1) == 0 || (*(*(a1 + 40) + v7) & 1) != 0)
      {
        if (*(*(a1 + 48) + v7) != 1 || (v32 = 0xFFFFFFFFFFFFLL, ps_prm_ane_reader_wait_for_new_resource_and_get_frame_id(*(*(a1 + 24) + 8 * v7), &v32, 50), !v14))
        {
          v14 = ps_prm_acquire_reader_resources_latest(*(*(a1 + 24) + 8 * v7), resource, *(a1 + 56) + 8 * v7);
        }
      }

      else if (*(*(a1 + 48) + v7) != 1 || (v14 = ps_prm_ane_reader_wait_for_new_resource_with_frame_id(*(*(a1 + 24) + 8 * v7), a2, 0x32uLL)) == 0)
      {
        v14 = ps_prm_acquire_reader_resources_with_frame_id(*(*(a1 + 24) + 8 * v7), resource, a2, *(a1 + 56) + 8 * v7);
      }

      if (v14)
      {
        v11 = 3758097084;
      }

      else
      {
        v11 = v8;
      }

      if (!MEMORY[0x25F8C9190](resource))
      {
LABEL_45:
        v8 = v11;
        goto LABEL_46;
      }

      v15 = 0;
      do
      {
        v16 = MEMORY[0x25F8C9260](resource, v15);
        if (v16)
        {
          v8 = v11;
        }

        else
        {
          v8 = 3758097084;
        }

        if ((v16 & 1) == 0 && a2 == 0xFFFFFFFFFFFELL)
        {
          MEMORY[0x25F8C94B0](resource, v15, 2);
          v8 = v11;
        }

        ++v15;
        v11 = v8;
      }

      while (MEMORY[0x25F8C9190](resource) > v15);
    }

LABEL_46:
    v17 = (*(a1 + 1104) + 40 * v7);
    v18 = v17[3];
    if (v18 && a2 - v17[4] >= v17[2] * v18)
    {
      pbs_ringbufferlogger_shared_write();
      v19 = v17[3];
      switch(v19)
      {
        case 50:
          v20 = 0;
          goto LABEL_54;
        case 25:
          v20 = 50;
          goto LABEL_54;
        case 10:
          v20 = 25;
LABEL_54:
          v17[3] = v20;
          break;
      }
    }

    if (v8 && (*(a1 + 1096) & 1) == 0)
    {
      v21 = MEMORY[0x25F8C9220](resource);
      v6 = v31;
      v31[2](v31, v21);
      v22 = *(a1 + 1104) + 40 * v7;
      if (*(v22 + 24))
      {
        v23 = *(v22 + 8) + 1;
      }

      else
      {
        *(v22 + 24) = 10;
        *(v22 + 32) = a2;
        v23 = 1;
      }

      *(v22 + 8) = v23;
      goto LABEL_65;
    }

    ++v7;
  }

  while (v7 < *(a1 + 12));
  v6 = v31;
  if (!v8)
  {
    goto LABEL_75;
  }

LABEL_65:
  if ((*(a1 + 1092) & 0x80000000) == 0)
  {
    v24 = 0;
    do
    {
      ps_resource_array_get_resource();
      v25 = ps_resource_get_class();
      if (*(*(a1 + 32) + 8 * v24) == 2 && v25 != 12)
      {
        ps_prm_rollback_reader_resource_seq_num(*(*(a1 + 24) + 8 * v24), v26);
      }
    }

    while (v24++ < *(a1 + 1092));
  }

  if ((*(a1 + 1096) & 1) == 0)
  {
    ps_grouped_source_pool_relinquish(a1);
  }

LABEL_75:

  return v8;
}

uint64_t ps_grouped_source_pool_relinquish(uint64_t result)
{
  v1 = result;
  if ((*(result + 1092) & 0x80000000) == 0)
  {
    v2 = 0;
    do
    {
      result = ps_prm_relinquish_reader_resources(*(*(v1 + 24) + 8 * v2));
    }

    while (v2++ < *(v1 + 1092));
  }

  *(v1 + 1092) = -1;
  return result;
}

uint64_t ps_grouped_source_pool_copy_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9150](a3, a4);
  key = ps_resource_get_key();
  bytes = ps_resource_data_get_bytes();
  ps_resource_data_get_length();
  if (bytes)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);

    JUMPOUT(0x25F8C9460);
  }

  result = ps_resource_get_class();
  if (result != 12)
  {
    v13 = ps_grouped_source_pool_copy_data_cold_1(&v17, key);
    return ps_grouped_source_pool_copy_object(v13, v14, v15, v16);
  }

  return result;
}

uint64_t ps_grouped_source_pool_copy_object(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C91D0](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_object_get_object())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);

    JUMPOUT(0x25F8C9530);
  }

  v11 = ps_grouped_source_pool_copy_object_cold_1(&v16, key);
  return ps_grouped_source_pool_copy_opaque(v11, v12, v13, v14);
}

uint64_t ps_grouped_source_pool_copy_opaque(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C91E0](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_opaque_get_opaque_ptr())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);

    JUMPOUT(0x25F8C9530);
  }

  ps_grouped_source_pool_copy_opaque_cold_1(&v12, key);
  return ps_grouped_source_pool_copy_mtl_texture();
}

uint64_t ps_grouped_source_pool_copy_mtl_texture()
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v0 = asprintf(&v6, "not implemented yet");
  v1 = __PLSLogSharedInstance(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v8 = "ps_grouped_source_pool_copy_mtl_texture";
    v9 = 1024;
    v10 = 392;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d not implemented yet", buf, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = __PLSLogSharedInstance(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "ps_grouped_source_pool_copy_mtl_texture";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  return ps_grouped_source_pool_copy_mtl_buffer();
}

uint64_t ps_grouped_source_pool_copy_mtl_buffer()
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v0 = asprintf(&v10, "not implemented yet");
  v1 = __PLSLogSharedInstance(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v12 = "ps_grouped_source_pool_copy_mtl_buffer";
    v13 = 1024;
    v14 = 401;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d not implemented yet", buf, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = __PLSLogSharedInstance(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "ps_grouped_source_pool_copy_mtl_buffer";
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&dword_25EA3A000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  return ps_grouped_source_pool_copy_surface(v5, v6, v7, v8);
}

uint64_t ps_grouped_source_pool_copy_surface(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9230](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_surface_get_iosurface())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);

    JUMPOUT(0x25F8C9490);
  }

  v11 = ps_grouped_source_pool_copy_surface_cold_1(&v16, key);
  return ps_grouped_source_pool_copy_pixel_buffer(v11, v12, v13, v14);
}

uint64_t ps_grouped_source_pool_copy_pixel_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9210](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_pixelbuffer_get_cvpixelbuffer())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);
    v11 = MEMORY[0x25F8C91C0](a3, a4);
    switch(v11)
    {
      case 2:

        JUMPOUT(0x25F8C9430);
      case 1:
        ps_resource_pixelbuffer_get_iosurface_metadata();

        JUMPOUT(0x25F8C9450);
      case 0:
        ps_resource_pixelbuffer_get_cfdata_metadata();

        JUMPOUT(0x25F8C9440);
    }
  }

  else
  {
    ps_grouped_source_pool_copy_pixel_buffer_cold_2(&v17, key);
  }

  v12 = ps_grouped_source_pool_copy_pixel_buffer_cold_1(&v17, key);
  return ps_grouped_source_pool_copy_data_buffer(v12, v13, v14, v15);
}

uint64_t ps_grouped_source_pool_copy_data_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x25F8C9160](a3, a4);
  key = ps_resource_get_key();
  if (ps_resource_databuffer_get_databuffer())
  {
    v9 = MEMORY[0x25F8C9240](a3, a4);
    v10 = MEMORY[0x25F8C9180](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, 1);
    MEMORY[0x25F8C9570](a1, a2, v9);
    MEMORY[0x25F8C9480](a1, a2, v10);
    v11 = MEMORY[0x25F8C91C0](a3, a4);
    switch(v11)
    {
      case 2:

        JUMPOUT(0x25F8C9400);
      case 1:
        ps_resource_databuffer_get_iosurface_metadata();

        JUMPOUT(0x25F8C9420);
      case 0:
        ps_resource_databuffer_get_cfdata_metadata();

        JUMPOUT(0x25F8C9410);
    }
  }

  else
  {
    ps_grouped_source_pool_copy_data_buffer_cold_2(&v17, key);
  }

  v12 = ps_grouped_source_pool_copy_data_buffer_cold_1(&v17, key);
  return ps_grouped_source_pool_copy_jasper_buffer(v12, v13, v14, v15);
}

uint64_t ps_grouped_source_pool_copy_jasper_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x25F8C91A0](a3, a4);
  key = ps_resource_get_key();
  if (v8)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    v12 = MEMORY[0x25F8C9260](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, v12);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);
    v13 = MEMORY[0x25F8C91C0](a3, a4);
    if (!v13)
    {
      databuffer_array = ps_resource_jasperbuffer_get_databuffer_array();
      cfdata_metadata_array = ps_resource_jasperbuffer_get_cfdata_metadata_array();
      MEMORY[0x25F8C94D0](a1, a2, databuffer_array, cfdata_metadata_array);
LABEL_6:
      valid_array = ps_resource_jasperbuffer_get_valid_array();
      MEMORY[0x25F8C9500](a1, a2, valid_array);
      ps_resource_jasperbuffer_get_timestamp_array();

      JUMPOUT(0x25F8C94F0);
    }

    if (v13 == 1)
    {
      v14 = ps_resource_jasperbuffer_get_databuffer_array();
      iosurface_metadata_array = ps_resource_jasperbuffer_get_iosurface_metadata_array();
      MEMORY[0x25F8C94E0](a1, a2, v14, iosurface_metadata_array);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = ps_grouped_source_pool_copy_jasper_buffer_cold_3(&v24, key);
  }

  if (v13 == 2)
  {
    ps_grouped_source_pool_copy_jasper_buffer_cold_1(&v24, key);
  }

  v19 = ps_grouped_source_pool_copy_jasper_buffer_cold_2(&v24, key);
  return ps_grouped_source_pool_copy_ane_buffer(v19, v20, v21, v22);
}

uint64_t ps_grouped_source_pool_copy_ane_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x25F8C9110](a3, a4);
  key = ps_resource_get_key();
  if (v8)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    v12 = MEMORY[0x25F8C9260](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, v12);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);
    ps_resource_anebuffer_get_iosurface_array();
    ps_resource_anebuffer_get_iosurface_count();

    JUMPOUT(0x25F8C93C0);
  }

  v13 = ps_grouped_source_pool_copy_ane_buffer_cold_1(&v18, key);
  return ps_grouped_source_pool_copy_pearl_buffer(v13, v14, v15, v16);
}

uint64_t ps_grouped_source_pool_copy_pearl_buffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x25F8C91F0](a3, a4);
  key = ps_resource_get_key();
  if (v8)
  {
    v10 = MEMORY[0x25F8C9240](a3, a4);
    v11 = MEMORY[0x25F8C9180](a3, a4);
    v12 = MEMORY[0x25F8C9260](a3, a4);
    MEMORY[0x25F8C94C0](a1, a2, v12);
    MEMORY[0x25F8C9570](a1, a2, v10);
    MEMORY[0x25F8C9480](a1, a2, v11);
    v13 = MEMORY[0x25F8C91C0](a3, a4);
    if (!v13)
    {
      dxbuffer = ps_resource_pearlbuffer_get_dxbuffer();
      dybuffer = ps_resource_pearlbuffer_get_dybuffer();
      scorebuffer = ps_resource_pearlbuffer_get_scorebuffer();
      depthbuffer = ps_resource_pearlbuffer_get_depthbuffer();
      cfdata_metadata = ps_resource_pearlbuffer_get_cfdata_metadata();
      MEMORY[0x25F8C9540](a1, a2, dxbuffer, dybuffer, scorebuffer, depthbuffer, cfdata_metadata);
LABEL_6:
      ps_resource_pearlbuffer_is_dx_valid();
      ps_resource_pearlbuffer_is_dy_valid();
      ps_resource_pearlbuffer_is_score_valid();
      ps_resource_pearlbuffer_is_depth_valid();

      JUMPOUT(0x25F8C9560);
    }

    if (v13 == 1)
    {
      v14 = ps_resource_pearlbuffer_get_dxbuffer();
      v15 = ps_resource_pearlbuffer_get_dybuffer();
      v16 = ps_resource_pearlbuffer_get_scorebuffer();
      v17 = ps_resource_pearlbuffer_get_depthbuffer();
      iosurface_metadata = ps_resource_pearlbuffer_get_iosurface_metadata();
      MEMORY[0x25F8C9550](a1, a2, v14, v15, v16, v17, iosurface_metadata);
      goto LABEL_6;
    }
  }

  else
  {
    v13 = ps_grouped_source_pool_copy_pearl_buffer_cold_3(&v29, key);
  }

  if (v13 == 2)
  {
    ps_grouped_source_pool_copy_pearl_buffer_cold_1(&v29, key);
  }

  v24 = ps_grouped_source_pool_copy_pearl_buffer_cold_2(&v29, key);
  return ps_grouped_source_pool_copy_resource(v24, v25, v26, v27);
}

uint64_t ps_grouped_source_pool_copy_resource(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = ps_resource_get_class();
  resource = ps_resource_array_get_resource();
  v8 = MEMORY[0x25F8C9190](a3);
  if (!a3)
  {
LABEL_39:
    ps_grouped_source_pool_copy_resource_cold_4();
    goto LABEL_40;
  }

  if (!resource)
  {
LABEL_40:
    ps_grouped_source_pool_copy_resource_cold_3();
    goto LABEL_41;
  }

  if (v8 > MEMORY[0x25F8C9190](resource))
  {
LABEL_41:
    ps_grouped_source_pool_copy_resource_cold_2();
LABEL_42:
    v21 = 0;
    v11 = ps_resource_get_class();
    v12 = asprintf(&v21, "resource class mismatch task res cls %llu gsp res cls %llu", v6, v11);
    v13 = __PLSLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = ps_resource_get_class();
      *buf = 136315906;
      v23 = "ps_grouped_source_pool_copy_resource";
      v24 = 1024;
      v25 = 721;
      v26 = 2048;
      v27 = v6;
      v28 = 2048;
      v29 = v14;
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d resource class mismatch task res cls %llu gsp res cls %llu", buf, 0x26u);
    }

    v15 = OSLogFlushBuffers();
    if (v15)
    {
      goto LABEL_47;
    }

    usleep(0x1E8480u);
LABEL_50:
    v18 = abort_with_reason();
    return ps_grouped_source_pool_copy_working_set_dict(v18, v19, v20);
  }

  result = ps_resource_get_class();
  if (v6 != result)
  {
    goto LABEL_42;
  }

  if (a4)
  {
    for (i = 0; a4 != i; ++i)
    {
      if (MEMORY[0x25F8C9260](resource, i))
      {
        if (v6 > 7)
        {
          if (v6 <= 9)
          {
            if (v6 == 8)
            {
              result = ps_grouped_source_pool_copy_data_buffer(a3, i, resource, i);
            }

            else
            {
              result = ps_grouped_source_pool_copy_jasper_buffer(a3, i, resource, i);
            }
          }

          else
          {
            switch(v6)
            {
              case 10:
                result = ps_grouped_source_pool_copy_ane_buffer(a3, i, resource, i);
                break;
              case 11:
                result = ps_grouped_source_pool_copy_pearl_buffer(a3, i, resource, i);
                break;
              case 12:
                ps_grouped_source_pool_copy_data(a3, i, resource, i);
                result = MEMORY[0x25F8C9170](resource);
                if (result)
                {
                  result = MEMORY[0x25F8C9470](a3, result);
                }

                break;
              default:
                goto LABEL_46;
            }
          }
        }

        else if (v6 > 3)
        {
          if (v6 > 5)
          {
            if (v6 != 7)
            {
              ps_grouped_source_pool_copy_mtl_texture();
LABEL_37:
              if (v6 == 5)
              {
                ps_grouped_source_pool_copy_mtl_buffer();
                goto LABEL_39;
              }

LABEL_46:
              v15 = ps_grouped_source_pool_copy_resource_cold_1(buf, a3);
LABEL_47:
              v16 = v15;
              v17 = __PLSLogSharedInstance(v15);
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v23 = "ps_grouped_source_pool_copy_resource";
                v24 = 1024;
                v25 = v16;
                _os_log_impl(&dword_25EA3A000, v17, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
              }

              goto LABEL_50;
            }

            result = ps_grouped_source_pool_copy_pixel_buffer(a3, i, resource, i);
          }

          else
          {
            if (v6 != 4)
            {
              goto LABEL_37;
            }

            result = ps_grouped_source_pool_copy_surface(a3, i, resource, i);
          }
        }

        else
        {
          switch(v6)
          {
            case 1:
              result = ps_grouped_source_pool_copy_data(a3, i, resource, i);
              break;
            case 2:
              result = ps_grouped_source_pool_copy_object(a3, i, resource, i);
              break;
            case 3:
              result = ps_grouped_source_pool_copy_opaque(a3, i, resource, i);
              break;
            default:
              goto LABEL_46;
          }
        }
      }

      else
      {
        result = MEMORY[0x25F8C94C0](a3, i, 0);
      }
    }
  }

  return result;
}

void ps_task_insert_to_psgraph_reader_map(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = ps_prm_opts_get_graph(a1);
  v5 = v4;
  if (v4 && [v4 executionContext])
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:ps_prm_opts_get_resource_key(a1)];
    v7 = [MEMORY[0x277CCAE60] valueWithPointer:a2];
    [*(objc_msgSend(v5 "executionContext") + 48)];

    v9 = __PLSLogSharedInstance(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 136315906;
      v11 = "ps_task_insert_to_psgraph_reader_map";
      v12 = 2048;
      v13 = a2;
      v14 = 2080;
      v15 = [v6 UTF8String];
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_DEBUG, "%s: Added reader instance %p for key %s graph %p", &v10, 0x2Au);
    }
  }
}

PSResourceManager **ps_task_input_resource_create(PSResourceManager *a1, PSResourceManager *a2, PSResourceManager *a3, PSResourceManagerOptions *a4, PSResourceManager *a5, int a6, _DWORD *a7, char a8, PSResourceManager *a9, uint64_t a10, char a11)
{
  v76 = *MEMORY[0x277D85DE8];
  if (a2 - 1 >= 2 && (a11 & 1) == 0)
  {
    ps_task_input_resource_create_cold_1();
    goto LABEL_35;
  }

  v17 = malloc_type_calloc(1uLL, 0x80uLL, 0x1030040CA0CA3D2uLL);
  if (!v17)
  {
LABEL_35:
    ps_task_input_resource_create_cold_4();
    goto LABEL_36;
  }

  v18 = v17;
  if (a2 == 3 && !a3)
  {
LABEL_36:
    ps_task_input_resource_create_cold_3();
  }

  resource_key = ps_prm_opts_get_resource_key(a4);
  return_capacity = ps_prm_opts_get_return_capacity(a4);
  *v18 = a9;
  v18[1] = 0;
  v18[2] = a1;
  v21 = resource_key;
  is_producer_local = ps_prm_is_producer_local(a9, resource_key);
  *(v18 + 32) = is_producer_local;
  v18[3] = return_capacity;
  *(v18 + 33) = return_capacity > 1;
  v18[8] = a2;
  v18[9] = a3;
  v18[10] = 0;
  v18[11] = 0;
  v18[6] = a5;
  *(v18 + 14) = a6;
  *(v18 + 124) = a8;
  if (a7)
  {
    *(v18 + 30) = *a7;
    v23 = __PLSLogSharedInstance(is_producer_local);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(v18 + 30);
      *buf = 136315394;
      *&buf[4] = resource_key;
      *&buf[12] = 1024;
      *&buf[14] = v24;
      _os_log_impl(&dword_25EA3A000, v23, OS_LOG_TYPE_DEFAULT, "rdar://85615537 defaults: ps_task_input_resource_create: setting key %s to drop every %d", buf, 0x12u);
    }
  }

  else
  {
    *(v18 + 30) = 0;
  }

  if (a2 == 2)
  {
    v25 = malloc_type_calloc(return_capacity, 1uLL, 0x100004077774924uLL);
    v18[5] = v25;
    if (v25)
    {
      goto LABEL_15;
    }

    ps_task_input_resource_create_cold_2();
  }

  v18[5] = 0;
LABEL_15:
  MEMORY[0x25F8C9510](a1, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a4);
  MEMORY[0x25F8C93F0](a1, resource_class);
  MEMORY[0x25F8C94A0](a1, return_capacity);
  resource_metadata_type = ps_prm_opts_get_resource_metadata_type(a4);
  v28 = MEMORY[0x25F8C9520](a1, resource_metadata_type);
  if (a5)
  {
    if (!a11)
    {
      return v18;
    }
  }

  else
  {
    v29 = __PLSLogSharedInstance(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      v30 = ps_prm_opts_get_resource_key(a4);
      *buf = 136315138;
      *&buf[4] = v30;
      _os_log_impl(&dword_25EA3A000, v29, OS_LOG_TYPE_DEBUG, "Creating reader instance for PSTask Input Resource for key %s.", buf, 0xCu);
    }

    reader_instance = ps_prm_create_reader_instance(a9, a4);
    v18[1] = reader_instance;
    ps_task_insert_to_psgraph_reader_map(a4, reader_instance);
    if (!a11)
    {
      return v18;
    }
  }

  if (a10)
  {
    if (resource_key)
    {
      v32 = 2166136261;
      v33 = *v21;
      if (*v21)
      {
        v34 = (v21 + 1);
        do
        {
          v32 = 16777619 * (v32 ^ v33);
          v35 = *v34++;
          v33 = v35;
        }

        while (v35);
      }

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      v50 = 0u;
      v49 = 0u;
      v48 = 0u;
      v47 = 0u;
      v46 = 0u;
      v45 = 0u;
      *&buf[8] = 0u;
      v75 = 0;
      *buf = v32;
      __strlcpy_chk();
      v36 = 0;
      while (1)
      {
        v37 = pbs_ringbufferlogger_shared_write_decode_data();
        if (!v37)
        {
          break;
        }

        v38 = v37;
        v36 += 4;
        if (v36 == 12)
        {
          v43 = 0;
          strncpy(v42, v21, 0x100uLL);
          LODWORD(v43) = v38;
          pbs_ringbuffer_get_shared_error_log();
          pbs_ringbufferlogger_shared_write();
          break;
        }
      }
    }

    else
    {
      LODWORD(v32) = 0;
    }

    v18[13] = ps_ca_buffer_expiry_init(v32, a10, &__block_literal_global_13);
  }

  pbs_ringbuffer_get_shared_error_log();
  return v18;
}

void ps_task_input_resource_set_buffer_expiry_offset(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 96) = a2;
  }

  else
  {
    v2 = ps_task_input_resource_set_buffer_expiry_offset_cold_1();
    ps_task_input_resource_destroy(v2);
  }
}

void ps_task_input_resource_destroy(PSResourceManager **a1)
{
  v2 = a1[13];
  if (v2)
  {
    ps_ca_buffer_expiry_delete(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    ps_prm_delete_reader_instance(*a1, v4);
  }

  free(a1);
}

unint64_t check_for_new_pull_optional_resource(void *a1)
{
  if (MEMORY[0x25F8C9190](a1[2]))
  {
    v2 = 0;
    do
    {
      *(a1[5] + v2) = 0;
      if (MEMORY[0x25F8C9260](a1[2], v2) && MEMORY[0x25F8C9240](a1[2], v2) <= a1[11])
      {
        MEMORY[0x25F8C94C0](a1[2], v2, 0);
        *(a1[5] + v2) = 1;
      }

      ++v2;
    }

    while (MEMORY[0x25F8C9190](a1[2]) > v2);
  }

  result = MEMORY[0x25F8C9240](a1[2], 0);
  if (result > a1[11])
  {
    a1[11] = result;
  }

  return result;
}

unint64_t ps_task_input_resource_acquire(uint64_t a1, uint64_t a2, int a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  if (v4)
  {
    if (v5 < 2)
    {
      ps_grouped_source_pool_copy_resource(v4, *(a1 + 56), *(a1 + 16), *(a1 + 24));
      ps_grouped_source_pool_copy_working_set_dict(*(a1 + 48), *(a1 + 56), (a1 + 80));
      goto LABEL_33;
    }

    if (v5 == 2)
    {
      ps_grouped_source_pool_copy_resource(v4, *(a1 + 56), *(a1 + 16), *(a1 + 24));
      ps_grouped_source_pool_copy_working_set_dict(*(a1 + 48), *(a1 + 56), (a1 + 80));
      goto LABEL_32;
    }

    if (v5 != 3)
    {
      goto LABEL_33;
    }

    ps_task_input_resource_acquire_cold_1();
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v5 == 3)
      {
        valuePtr = 0;
        key = ps_resource_get_key();
        v7 = *(*(a1 + 72) + 80);
        v8 = ps_resource_get_key();
        if (*(*(a1 + 72) + 32) != 1)
        {
          v20 = v8;
          v28 = 0;
          v21 = asprintf(&v28, "producer for %s is not local. so can't sync %s off of this remote input", v8, key);
          v22 = __PLSLogSharedInstance(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315906;
            *&buf[4] = "ps_task_input_resource_acquire";
            v31 = 1024;
            v32 = 261;
            v33 = 2080;
            v34 = v20;
            v35 = 2080;
            v36 = key;
            _os_log_impl(&dword_25EA3A000, v22, OS_LOG_TYPE_FAULT, "%s:%d producer for %s is not local. so can't sync %s off of this remote input", buf, 0x26u);
          }

          v23 = OSLogFlushBuffers();
          if (v23)
          {
            v24 = v23;
            v25 = __PLSLogSharedInstance(v23);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "ps_task_input_resource_acquire";
              v31 = 1024;
              v32 = v24;
              _os_log_impl(&dword_25EA3A000, v25, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
            }
          }

          else
          {
            usleep(0x1E8480u);
          }

          v26 = abort_with_reason();
          return ps_task_input_check_buffer_expiration(v26, v27);
        }

        if (!v7 || (v9 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], key, 0x8000100u), Value = CFDictionaryGetValue(v7, v9), CFRelease(v9), !Value) || (CFNumberGetValue(Value, kCFNumberLongLongType, &valuePtr) ? (v11 = valuePtr == -1) : (v11 = 1), v11 || (*buf = 0, ps_prm_acquire_reader_resources_with_frame_id(*(a1 + 8), *(a1 + 16), valuePtr, buf)) || (MEMORY[0x25F8C9260](*(a1 + 16), 0) & 1) == 0))
        {
          if (MEMORY[0x25F8C9190](*(a1 + 16)))
          {
            v12 = 0;
            do
            {
              MEMORY[0x25F8C94C0](*(a1 + 16), v12++, 0);
            }

            while (MEMORY[0x25F8C9190](*(a1 + 16)) > v12);
          }
        }
      }

      goto LABEL_33;
    }

    ps_prm_acquire_reader_resources_since_last(*(a1 + 8), *(a1 + 16), a1 + 80);
LABEL_32:
    check_for_new_pull_optional_resource(a1);
    goto LABEL_33;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (a2 == -1 || !a3 || (*(a1 + 33) & 1) != 0)
  {
LABEL_9:
    ps_prm_acquire_reader_resources_latest(*(a1 + 8), *(a1 + 16), a1 + 80);
    goto LABEL_33;
  }

  ps_prm_acquire_reader_resources_with_frame_id(*(a1 + 8), *(a1 + 16), a2, a1 + 80);
LABEL_33:
  atomic_fetch_add((a1 + 112), 1uLL);
  v13 = (a1 + 16);
  result = MEMORY[0x25F8C9190](*(a1 + 16));
  if (result)
  {
    v15 = 0;
    while (1)
    {
      v16 = MEMORY[0x25F8C9240](*(a1 + 16), v15);
      MEMORY[0x25F8C9180](*(a1 + 16), v15);
      if (*(a1 + 120))
      {
        v17 = atomic_load((a1 + 112));
        if (!(v17 % *(a1 + 120)))
        {
          goto LABEL_43;
        }
      }

      v18 = *(a1 + 96);
      if (v18 != -1 && v16 != 0)
      {
        break;
      }

      v16 = -1;
LABEL_44:
      MEMORY[0x25F8C93D0](*v13, v15, v16);
      MEMORY[0x25F8C9090](*v13, v15++);
      result = MEMORY[0x25F8C9190](*v13);
      if (result <= v15)
      {
        return result;
      }
    }

    v16 += v18;
LABEL_43:
    if (!v16)
    {
      ps_task_input_resource_acquire_cold_2(buf, (a1 + 16));
    }

    goto LABEL_44;
  }

  return result;
}

unint64_t ps_task_input_check_buffer_expiration(uint64_t a1, _BYTE *a2)
{
  v19[130] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  result = MEMORY[0x25F8C9190](v4);
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      if (MEMORY[0x25F8C9260](v4, i))
      {
        if ((MEMORY[0x25F8C9250](v4, i) & 1) == 0)
        {
          ps_task_input_check_buffer_expiration_cold_1(v19, v4);
        }

        v7 = MEMORY[0x25F8C9120](v4, i);
        v8 = MEMORY[0x25F8C9130](v4, i);
        v9 = *(a1 + 104);
        if (v9)
        {
          ps_ca_buffer_expiry_time_remaining(v9, v8, v7);
        }

        if (v8 > v7)
        {
          pbs_ringbuffer_get_shared_error_log();
          if (a2)
          {
            v10 = *a2;
            v11 = 2166136261;
            if (*a2)
            {
              v12 = a2 + 1;
              LODWORD(v11) = -2128831035;
              do
              {
                v11 = 16777619 * (v11 ^ v10);
                v13 = *v12++;
                v10 = v13;
              }

              while (v13);
            }
          }

          else
          {
            v11 = 0;
          }

          v19[0] = v11;
          __strlcpy_chk();
          key = ps_resource_get_key();
          if (key)
          {
            v15 = *key;
            v16 = 2166136261;
            if (*key)
            {
              v17 = key + 1;
              LODWORD(v16) = -2128831035;
              do
              {
                v16 = 16777619 * (v16 ^ v15);
                v18 = *v17++;
                v15 = v18;
              }

              while (v18);
            }
          }

          else
          {
            v16 = 0;
          }

          v19[65] = v16;
          ps_resource_get_key();
          __strlcpy_chk();
          pbs_ringbufferlogger_shared_write_decode_data();
          ps_util_mach_time_to_seconds(v8);
          ps_util_mach_time_to_seconds(v7);
          pbs_ringbufferlogger_shared_write();
        }
      }

      result = MEMORY[0x25F8C9190](v4);
    }
  }

  return result;
}

uint64_t ps_task_input_resource_relinquish(void *a1)
{
  if (a1[8] == 2 && MEMORY[0x25F8C9190](a1[2]))
  {
    v2 = 0;
    do
    {
      v3 = a1[5];
      if (v3 && *(v3 + v2) == 1)
      {
        MEMORY[0x25F8C94C0](a1[2], v2, 1);
        *(a1[5] + v2) = 0;
      }

      ++v2;
    }

    while (MEMORY[0x25F8C9190](a1[2]) > v2);
  }

  result = a1[1];
  if (result)
  {

    return ps_prm_relinquish_reader_resources(result);
  }

  return result;
}

void *ps_task_output_resource_create(uint64_t a1, PSResourceManagerOptions *a2, unsigned int a3, PSResourceManager *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x1020040BBA9AC21uLL);
  if (!v8)
  {
LABEL_15:
    ps_task_output_resource_create_cold_5(&v28);
  }

  v9 = v8;
  *v8 = a4;
  v8[2] = a1;
  v8[3] = ps_prm_opts_get_return_capacity(a2);
  v9[4] = 0;
  resource_key = ps_prm_opts_get_resource_key(a2);
  MEMORY[0x25F8C9510](a1, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a2);
  MEMORY[0x25F8C93F0](a1, resource_class);
  MEMORY[0x25F8C94A0](a1, v9[3]);
  resource_metadata_type = ps_prm_opts_get_resource_metadata_type(a2);
  MEMORY[0x25F8C9520](a1, resource_metadata_type);
  writer_instance = ps_prm_create_writer_instance(a4, a2);
  v9[1] = writer_instance;
  v14 = ps_prm_opts_get_graph(a2);
  v15 = v14;
  if (v14 && [v14 executionContext])
  {
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:ps_prm_opts_get_resource_key(a2)];
    v17 = [MEMORY[0x277CCAE60] valueWithPointer:writer_instance];
    [*(objc_msgSend(v15 "executionContext") + 40)];
  }

  if (!a3)
  {
    return v9;
  }

  v18 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004043506912uLL);
  if (!v18)
  {
    ps_task_output_resource_create_cold_4(&v28);
  }

  v19 = v18;
  *v18 = 0;
  v18[1] = a3;
  writer_depth = ps_prm_opts_get_writer_depth(a2);
  v19[2] = ps_prm_opts_get_reader_depth(a2) + writer_depth;
  v21 = malloc_type_calloc(a3, 8uLL, 0x80040B8603338uLL);
  *(v19 + 2) = v21;
  if (!v21)
  {
    ps_task_output_resource_create_cold_3(&v28);
    goto LABEL_18;
  }

  v22 = 0;
  do
  {
    *(*(v19 + 2) + v22) = malloc_type_calloc(v19[2], 8uLL, 0x2004093837F09uLL);
    if (!*(*(v19 + 2) + v22))
    {
      ps_task_output_resource_create_cold_2(&v28);
      goto LABEL_15;
    }

    v22 += 8;
  }

  while (8 * a3 != v22);
  v23 = malloc_type_calloc(a3, 8uLL, 0x2004093837F09uLL);
  *(v19 + 3) = v23;
  if (v23)
  {
    *(v19 + 4) = ps_resource_array_create();
    v9[5] = v19;
    return v9;
  }

LABEL_18:
  v25 = ps_task_output_resource_create_cold_1(&v28);
  return ps_task_output_resource_attach_retained_input(v25, v26, v27);
}

uint64_t ps_task_output_resource_attach_retained_input(PSResourceManager **a1, uint64_t a2, PSResourceManagerOptions *a3)
{
  v4 = a1[5];
  v5 = *v4;
  if (v5 >= *(v4 + 1))
  {
    ps_task_output_resource_attach_retained_input_cold_1();
  }

  *(*(v4 + 3) + 8 * v5) = *(a2 + 16);
  if (*(v4 + 2))
  {
    v8 = 0;
    v9 = *(*(v4 + 2) + 8 * v5);
    do
    {
      reader_instance = ps_prm_create_reader_instance(*a1, a3);
      *(v9 + 8 * v8) = reader_instance;
      ps_task_insert_to_psgraph_reader_map(a3, reader_instance);
      ++v8;
    }

    while (v8 < *(v4 + 2));
  }

  resource = ps_resource_array_get_resource();
  resource_key = ps_prm_opts_get_resource_key(a3);
  MEMORY[0x25F8C9510](resource, resource_key);
  resource_class = ps_prm_opts_get_resource_class(a3);
  MEMORY[0x25F8C93F0](resource, resource_class);
  return_capacity = ps_prm_opts_get_return_capacity(a3);
  result = MEMORY[0x25F8C94A0](resource, return_capacity);
  ++*v4;
  return result;
}

void ps_task_output_resource_destroy(PSResourceManager **a1)
{
  if (a1[5])
  {
    ps_task_output_resource_destroy_cold_1(&v2, a1);
  }

  ps_prm_delete_writer_instance(*a1, a1[1]);

  free(a1);
}

void ps_task_output_resource_destroy_retained_inputs(PSResourceManager **a1, uint64_t a2)
{
  v2 = a1[5];
  if (v2)
  {
    if (!*(v2 + 2))
    {
      ps_task_output_resource_destroy_retained_inputs_cold_1();
    }

    v4 = *v2;
    if (v4)
    {
      for (i = 0; i < v4; ++i)
      {
        v6 = *(*(v2 + 2) + 8 * i);
        if (v6)
        {
          if (*(v2 + 2))
          {
            v7 = 0;
            do
            {
              v8 = v6[v7];
              ps_prm_relinquish_reader_resources(v8);
              ps_prm_delete_reader_instance(*a1, v8);
              ++v7;
            }

            while (v7 < *(v2 + 2));
          }

          free(v6);
          v4 = *v2;
        }
      }
    }

    ps_resource_array_free();
    free(*(v2 + 2));
    free(*(v2 + 3));
    free(v2);
    a1[5] = 0;
  }
}

uint64_t ps_task_output_resource_acquire(void *a1)
{
  result = ps_prm_acquire_write_resources(a1[1]);
  if (a1[5])
  {
    result = ps_prm_get_view_idx_for_write_resources(a1[1]);
    v3 = a1[5];
    if (*v3)
    {
      v4 = result;
      v5 = 0;
      do
      {
        v6 = *(*(*(v3 + 2) + 8 * v5) + 8 * v4);
        ps_prm_relinquish_reader_resources(v6);
        v7 = *(*(v3 + 3) + 8 * v5);
        result = MEMORY[0x25F8C9260](v7, 0);
        if (result)
        {
          v8 = MEMORY[0x25F8C9180](v7, 0);
          resource = ps_resource_array_get_resource();
          result = ps_prm_acquire_reader_resources_with_frame_id(v6, resource, v8, 0);
        }

        ++v5;
      }

      while (v5 < *v3);
    }
  }

  return result;
}

void ps_task_output_resource_write_working_set(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 32);
  ps_resource_get_key();
  if (a3)
  {
    v6 = *MEMORY[0x277CBECE8];
    v7 = a3;
    do
    {
      v8 = *(*a2 + 16);
      key = ps_resource_get_key();
      valuePtr = MEMORY[0x25F8C9180](v8, 0);
      v10 = CFStringCreateWithCString(v6, key, 0x8000100u);
      v11 = CFNumberCreate(v6, kCFNumberLongLongType, &valuePtr);
      CFDictionarySetValue(v5, v10, v11);
      CFRelease(v10);
      CFRelease(v11);
      if (*(*a2 + 32) == 1)
      {
        v12 = *(*a2 + 80);
        if (v12)
        {
          CFDictionaryApplyFunction(v12, mergeDictFunc, v5);
        }
      }

      a2 += 8;
      --v7;
    }

    while (v7);
  }
}

void mergeDictFunc(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (value && key)
  {
    if (theDict)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

uint64_t ps_task_output_resource_relinquish(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x25F8C9190](*(a1 + 16));
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x25F8C94C0](*(a1 + 16), i, 0);
      }
    }
  }

  v6 = *(a1 + 8);

  return ps_prm_relinquish_writer_resources(v6);
}

_DWORD *ps_task_resources_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = a1;
  v21 = *MEMORY[0x277D85DE8];
  v10 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v18) = 67109376;
    HIDWORD(v18) = v9;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_DEBUG, "PS Task Resources being created with %u inputs and %u outputs", &v18, 0xEu);
  }

  v11 = malloc_type_calloc(1uLL, 0x140uLL, 0x10A004047160CF5uLL);
  if (!v11)
  {
    ps_task_resources_create_cold_4(&v18);
  }

  v12 = v11;
  *v11 = a4;
  v11[2] = v9;
  v11[6] = v8;
  if (a3)
  {
    __strlcpy_chk();
  }

  v13 = malloc_type_calloc(v9, 8uLL, 0x2004093837F09uLL);
  *(v12 + 5) = v13;
  if (!v13)
  {
    ps_task_resources_create_cold_3(&v18);
LABEL_15:
    ps_task_resources_create_cold_2(&v18);
  }

  v14 = malloc_type_calloc(v8, 8uLL, 0x2004093837F09uLL);
  *(v12 + 6) = v14;
  if (!v14)
  {
    goto LABEL_15;
  }

  *(v12 + 2) = ps_resource_array_create();
  v15 = ps_resource_array_create();
  *(v12 + 4) = v15;
  if (ps_should_treat_synced_inputs_as_wait_inputs_onceToken != -1)
  {
    ps_task_resources_create_cold_1();
  }

  *(v12 + 313) = (ps_should_treat_synced_inputs_as_wait_inputs_answer & 1) == 0;
  *(v12 + 314) = a5;
  v16 = __PLSLogSharedInstance(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v18) = 67109376;
    HIDWORD(v18) = v9;
    v19 = 1024;
    v20 = v8;
    _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_DEBUG, "PS Task Resources created with %u inputs and %u outputs", &v18, 0xEu);
  }

  return v12;
}

void ps_task_resources_destroy_inputs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    ps_resource_array_free();
    *(a1 + 16) = 0;
  }

  if (*(a1 + 12))
  {
    v3 = 0;
    do
    {
      ps_task_input_resource_destroy(*(*(a1 + 40) + 8 * v3++));
    }

    while (v3 < *(a1 + 12));
  }

  if (*(a1 + 28))
  {
    v4 = 0;
    do
    {
      ps_task_output_resource_destroy_retained_inputs(*(*(a1 + 48) + 8 * v4++), a2);
    }

    while (v4 < *(a1 + 28));
  }

  free(*(a1 + 40));
  *(a1 + 40) = 0;
}

void ps_task_resources_destroy_outputs(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    ps_resource_array_free();
    *(a1 + 32) = 0;
  }

  if (*(a1 + 28))
  {
    v3 = 0;
    do
    {
      ps_task_output_resource_destroy(*(*(a1 + 48) + 8 * v3++));
    }

    while (v3 < *(a1 + 28));
  }

  free(*(a1 + 48));
  *(a1 + 48) = 0;
}

void ps_task_resources_destroy(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __PLSLogSharedInstance(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 24);
    LODWORD(v6) = 67109376;
    HIDWORD(v6) = v4;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "PS Task Resources destroyed with %u inputs and %u outputs", &v6, 0xEu);
  }

  if (*(a1 + 40) || *(a1 + 48))
  {
    ps_task_resources_destroy_cold_1(&v6);
  }

  free(a1);
}

uint64_t ps_task_resources_add_input(uint64_t a1, PSResourceManager *a2, unsigned int a3, PSResourceManagerOptions *a4, PSResourceManager *a5, int a6, _DWORD *a7, uint64_t a8, char a9)
{
  v9 = *(a1 + 12);
  if (v9 >= *(a1 + 8))
  {
    ps_task_resources_add_input_cold_1();
  }

  resource = ps_resource_array_get_resource();
  if (ps_should_treat_synced_inputs_as_wait_inputs_onceToken != -1)
  {
    ps_task_resources_add_input_cold_2();
  }

  if ((a2 != 3) | ps_should_treat_synced_inputs_as_wait_inputs_answer & 1)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  if (a3 == -1 && v19 == 3)
  {
    ps_task_resources_add_input_cold_3(&v23);
  }

  if (v19 == 3)
  {
    v20 = ps_task_input_resource_create(resource, 3, *(*(a1 + 40) + 8 * a3), a4, a5, a6, a7, *(a1 + 314), *a1, a8, a9);
  }

  else
  {
    v20 = ps_task_input_resource_create(resource, v19, 0, a4, a5, a6, a7, *(a1 + 314), *a1, a8, a9);
  }

  v21 = *(a1 + 12);
  *(*(a1 + 40) + 8 * v21) = v20;
  *(a1 + 12) = v21 + 1;
  return v9;
}

uint64_t ps_task_resources_add_output(uint64_t a1, PSResourceManagerOptions *a2, unsigned int a3)
{
  v3 = *(a1 + 28);
  if (v3 >= *(a1 + 24))
  {
    ps_task_resources_add_output_cold_1();
  }

  resource = ps_resource_array_get_resource();
  *(*(a1 + 48) + 8 * v3) = ps_task_output_resource_create(resource, a2, a3, *a1);
  ++*(a1 + 28);
  return v3;
}

uint64_t ps_task_resource_attach_retained_input(uint64_t a1, PSResourceManagerOptions *a2, unsigned int a3, unsigned int a4)
{
  if (*(a1 + 12) <= a3)
  {
    ps_task_resource_attach_retained_input_cold_1();
  }

  if (*(a1 + 28) <= a4)
  {
    ps_task_resource_attach_retained_input_cold_2();
  }

  v5 = *(*(a1 + 40) + 8 * a3);
  v6 = *(*(a1 + 48) + 8 * a4);

  return ps_task_output_resource_attach_retained_input(v6, v5, a2);
}

void ps_task_resources_acquire(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 12))
  {
    v6 = 0;
    do
    {
      ps_task_input_resource_acquire(*(*(a1 + 40) + 8 * v6++), a2, a3);
    }

    while (v6 < *(a1 + 12));
  }

  if ((*(a1 + 312) & 1) == 0 && *(a1 + 28))
  {
    v7 = 0;
    do
    {
      v8 = *(*(a1 + 48) + 8 * v7);
      ps_task_output_resource_acquire(v8);
      if ((*(a1 + 313) & 1) == 0)
      {
        ps_task_output_resource_write_working_set(v8, *(a1 + 40), *(a1 + 12));
      }

      ++v7;
    }

    while (v7 < *(a1 + 28));
  }
}

uint64_t ps_task_resources_relinquish(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12))
  {
    v4 = 0;
    do
    {
      ps_task_input_check_buffer_expiration(*(*(a1 + 40) + 8 * v4++), (a1 + 56));
      v5 = *(a1 + 12);
    }

    while (v4 < v5);
    if (v5)
    {
      v6 = 0;
      do
      {
        ps_task_input_resource_relinquish(*(*(a1 + 40) + 8 * v6++));
      }

      while (v6 < *(a1 + 12));
    }
  }

  return ps_task_resources_relinquish_outputs(a1, a2);
}

uint64_t ps_task_resources_relinquish_outputs(uint64_t result, uint64_t a2)
{
  if ((*(result + 312) & 1) == 0)
  {
    v2 = result;
    if (*(result + 28))
    {
      v4 = 0;
      do
      {
        result = ps_task_output_resource_relinquish(*(*(v2 + 48) + 8 * v4++), a2);
      }

      while (v4 < *(v2 + 28));
    }
  }

  return result;
}

uint64_t ps_task_resources_publish(uint64_t result, uint64_t a2)
{
  if ((*(result + 312) & 1) == 0)
  {
    v2 = result;
    if (*(result + 28))
    {
      v4 = 0;
      do
      {
        result = ps_task_output_resource_signal_available(*(*(v2 + 48) + 8 * v4++), a2);
      }

      while (v4 < *(v2 + 28));
    }
  }

  return result;
}

uint64_t ps_task_resources_annotate_and_check_buffer_expiry(uint64_t a1, int a2)
{
  v4 = mach_absolute_time();
  count = ps_resource_array_get_count();
  if (count)
  {
    v6 = count;
    v7 = 0;
    for (i = 0; i != v6; ++i)
    {
      resource = ps_resource_array_get_resource();
      v10 = MEMORY[0x25F8C9190]();
      if (v10)
      {
        v11 = v10;
        for (j = 0; j != v11; ++j)
        {
          if ((MEMORY[0x25F8C9250](resource, j) & 1) == 0)
          {
            MEMORY[0x25F8C93E0](resource, j, v4);
          }

          if (a2)
          {
            v13 = MEMORY[0x25F8C9130](resource, j);
            v14 = MEMORY[0x25F8C9120](resource, j);
            if (v14 != -1 && v14 <= v13)
            {
              v7 |= *(a1 + 314);
            }
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void __ps_should_treat_synced_inputs_as_wait_inputs_block_invoke()
{
  v0 = +[PLSSettings currentSettings];
  v1 = [v0 disableWorkingSets];

  if (v1)
  {
    if ((ps_should_treat_synced_inputs_as_wait_inputs_answer & 1) == 0)
    {
      v3 = __PLSLogSharedInstance(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 0;
        v4 = "Working sets are disabled (synced inputs are treated as wait inputs)";
        v5 = &v7;
LABEL_8:
        _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else
  {
    ps_should_treat_synced_inputs_as_wait_inputs_answer = 1;
  }

  v3 = __PLSLogSharedInstance(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0;
    v4 = "Working sets are enabled";
    v5 = &v6;
    goto LABEL_8;
  }

LABEL_9:
}

void PRMANEReaderInstance::PRMANEReaderInstance(PRMANEReaderInstance *this, PRMPBSReader *a2, size_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  PRMPBSReaderInstance::PRMPBSReaderInstance(this, a2, a3);
  *v3 = &unk_2870B9A48;
  v3[11] = 0;
  operator new();
}

void PRMANEReaderInstance::~PRMANEReaderInstance(PRMReaderInstance *this)
{
  *this = &unk_2870B9A48;
  v2 = *(this + 11);
  if (v2)
  {
    PRMIOSurfaceSharedEventWaiter::~PRMIOSurfaceSharedEventWaiter(v2);
    MEMORY[0x25F8C7C50]();
  }

  PRMPBSReaderInstance::~PRMPBSReaderInstance(this);
}

{
  PRMANEReaderInstance::~PRMANEReaderInstance(this);

  JUMPOUT(0x25F8C7C50);
}

void PRMANEReaderInstance::waitForNewResourceWithFrameID(PRMReaderInstance *this, PRMIOSurfaceSharedEventWaiter *a2, uint64_t a3)
{
  v6 = *(this + 11);
  if (v6)
  {

    PRMIOSurfaceSharedEventWaiter::waitForNewResourceWithFrameID(v6, a2, a3);
  }

  else
  {
    v10[1] = v3;
    v10[2] = v4;
    PRMANEReaderInstance::waitForNewResourceWithFrameID(v10, this);
    PRMANEReaderInstance::waitForNewResourceAndGetFrameID(v7, v8, v9);
  }
}

void PRMANEReaderInstance::waitForNewResourceAndGetFrameID(PRMReaderInstance *this, unint64_t *a2, uint64_t a3)
{
  v6 = *(this + 11);
  if (v6)
  {

    PRMIOSurfaceSharedEventWaiter::waitForNewResourceAndGetFrameID(v6, a2, a3);
  }

  else
  {
    v8[1] = v3;
    v8[2] = v4;
    PRMANEReaderInstance::waitForNewResourceAndGetFrameID(v8, this);
    PRMAneWriter::PRMAneWriter(v7);
  }
}

void PRMAneWriter::PRMAneWriter(PRMAneWriter *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
}

void PRMAneWriter::~PRMAneWriter(PRMAneWriter *this, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __PSResourceManagerLogSharedInstance(this, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = this;
    if (*(this + 23) < 0)
    {
      v4 = *this;
    }

    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_INFO, "PRMAneWriter deleting instance for channel:%s", &v7, 0xCu);
  }

  if (*(this + 13))
  {
    ps_destroy_iosurface_shared_event();
  }

  if (*(this + 4))
  {
    ps_buffer_destroy_serial_data_writer();
  }

  if (*(this + 5))
  {
    ps_buffer_delete_write_buffer();
  }

  v5 = *(this + 6);
  if (v5)
  {
    free(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    CFRelease(v6);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void sub_25EA9A9C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t PRMAneWriter::init(void **this, PSResourceManagerOptions *a2)
{
  v101 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(__str, *(a2 + 7));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = *__str;
  this[2] = *&__str[16];
  v4 = *(a2 + 40);
  *(this + 16) = v4;
  v5 = *(a2 + 39);
  *(this + 15) = v5;
  *(this + 20) = *(a2 + 44);
  this[9] = *(a2 + 21);
  *(this + 14) = *(a2 + 38);
  v6 = malloc_type_calloc((v5 * v4), 8uLL, 0x2004093837F09uLL);
  this[6] = v6;
  if (!v6)
  {
    *buf = 0;
    v41 = this;
    if (*(this + 23) < 0)
    {
      v41 = *this;
    }

    v42 = asprintf(buf, "Failed to allocate memory %s", v41);
    v44 = __PSResourceManagerLogSharedInstance(v42, v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 91;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_FAULT, "%s:%d Failed to allocate memory %s", __str, 0x1Cu);
    }

    v45 = OSLogFlushBuffers();
    v47 = v45;
    if (v45)
    {
      v82 = __PSResourceManagerLogSharedInstance(v45, v46);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        *__str = 136315394;
        *&__str[4] = "init";
        *&__str[12] = 1024;
        *&__str[14] = v47;
        _os_log_impl(&dword_25EA3A000, v82, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", __str, 0x12u);
      }
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_98;
  }

  v7 = *(this + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = *(this + 15);
    do
    {
      v11 = v10;
      v12 = v8;
      if (v10)
      {
        do
        {
          *(this[6] + v12) = *(*(a2 + 18) + 8 * v12);
          ++v12;
          --v11;
        }

        while (v11);
      }

      ++v9;
      v8 += v10;
    }

    while (v9 != v7);
  }

  std::string::basic_string[abi:ne200100]<0>(&v86, *(a2 + 7));
  std::string::append(&v86, "-config");
  serial_data_writer = ps_buffer_create_serial_data_writer();
  this[4] = serial_data_writer;
  if (!serial_data_writer)
  {
    *buf = 0;
    v48 = this;
    if (*(this + 23) < 0)
    {
      v48 = *this;
    }

    v49 = asprintf(buf, "Failed to get serial data writer for %s", v48);
    v51 = __PSResourceManagerLogSharedInstance(v49, v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 107;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_FAULT, "%s:%d Failed to get serial data writer for %s", __str, 0x1Cu);
    }

    v52 = OSLogFlushBuffers();
    if (v52)
    {
      __PSResourceManagerLogSharedInstance(v52, v53);
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
      goto LABEL_93;
    }

LABEL_69:
    usleep(0x1E8480u);
LABEL_93:
    result = abort_with_reason();
LABEL_98:
    __break(1u);
    return result;
  }

  v14 = ps_buffer_get_serial_data_write_buffer();
  this[11] = v14;
  *(v14 + 2) = *(this + 16);
  *v14 = this[7];
  v14[2] = this[9];
  *(v14 + 6) = *(this + 20);
  group_writer_with_options = ps_buffer_create_group_writer_with_options();
  this[5] = group_writer_with_options;
  if (!group_writer_with_options)
  {
    *buf = 0;
    v54 = this;
    if (*(this + 23) < 0)
    {
      v54 = *this;
    }

    v55 = asprintf(buf, "Failed to get grouped writer for %s", v54);
    v57 = __PSResourceManagerLogSharedInstance(v55, v56);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 121;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v57, OS_LOG_TYPE_FAULT, "%s:%d Failed to get grouped writer for %s", __str, 0x1Cu);
    }

    v58 = OSLogFlushBuffers();
    if (v58)
    {
      __PSResourceManagerLogSharedInstance(v58, v59);
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
      goto LABEL_93;
    }

    goto LABEL_69;
  }

  v16 = malloc_type_calloc(*(this + 15), 0x18uLL, 0x108004098BBCF0FuLL);
  v17 = v16;
  if (!v16)
  {
    *buf = 0;
    v60 = this;
    if (*(this + 23) < 0)
    {
      v60 = *this;
    }

    v61 = asprintf(buf, "Failed to allocate memory %s", v60);
    v63 = __PSResourceManagerLogSharedInstance(v61, v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
    {
      if (*(this + 23) < 0)
      {
        this = *this;
      }

      *__str = 136315650;
      *&__str[4] = "init";
      *&__str[12] = 1024;
      *&__str[14] = 127;
      *&__str[18] = 2080;
      *&__str[20] = this;
      _os_log_impl(&dword_25EA3A000, v63, OS_LOG_TYPE_FAULT, "%s:%d Failed to allocate memory %s", __str, 0x1Cu);
    }

    v64 = OSLogFlushBuffers();
    if (v64)
    {
      __PSResourceManagerLogSharedInstance(v64, v65);
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
      goto LABEL_93;
    }

    goto LABEL_69;
  }

  LODWORD(v18) = *(this + 15);
  if (v18)
  {
    v19 = 0;
    v20 = v16;
    do
    {
      v20[2] = this[6];
      *v20 = v19;
      *(v20 + 1) = 0;
      *(v20 + 2) = v18;
      *(v20 + 3) = *(this + 16);
      MEMORY[0x25F8C8DB0](this[5], _surface_allocator, v20);
      ++v19;
      v18 = *(this + 15);
      v20 += 3;
    }

    while (v19 < v18);
  }

  v83 = v17;
  v21 = *(this + 16);
  if (v21)
  {
    v22 = 0;
    v23 = *MEMORY[0x277CD2A50];
    do
    {
      if (v18)
      {
        v24 = 0;
        do
        {
          v25 = *(this[6] + v24 + v22 * v18);
          if (v24 == *(this + 20))
          {
            getprogname();
            snprintf(__str, 0xFFuLL, "%s/Polaris ; metadata/%s/ ; %d/%d");
          }

          else
          {
            getprogname();
            snprintf(__str, 0xFFuLL, "%s/Polaris ; frame/%s/ ; %d/%d");
          }

          v26 = CFStringCreateWithCString(0, __str, 0x8000100u);
          if (v26)
          {
            IOSurfaceSetValue(v25, v23, v26);
            CFRelease(v26);
          }

          ++v24;
          LODWORD(v18) = *(this + 15);
        }

        while (v24 < v18);
        v21 = *(this + 16);
      }

      ++v22;
    }

    while (v22 < v21);
  }

  MEMORY[0x25F8C8C70](this[5]);
  free(v83);
  v27 = [objc_alloc(MEMORY[0x277CD2938]) initWithMachPort:*(this + 14)];
  this[12] = v27;
  if (!v27)
  {
    v85.__r_.__value_.__r.__words[0] = 0;
    v66 = this;
    if (*(this + 23) < 0)
    {
      v66 = *this;
    }

    v67 = asprintf(&v85.__r_.__value_.__l.__data_, "Failed to create IOSurfaceSharedEvent for %s mach_port %d", v66, *this[11]);
    v69 = __PSResourceManagerLogSharedInstance(v67, v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      v70 = this;
      if (*(this + 23) < 0)
      {
        v70 = *this;
      }

      v71 = *this[11];
      *buf = 136315906;
      *&buf[4] = "init";
      v88 = 1024;
      v89 = 166;
      v90 = 2080;
      v91 = v70;
      v92 = 1024;
      v93 = v71;
      _os_log_impl(&dword_25EA3A000, v69, OS_LOG_TYPE_FAULT, "%s:%d Failed to create IOSurfaceSharedEvent for %s mach_port %d", buf, 0x22u);
    }

    v72 = OSLogFlushBuffers();
    if (v72)
    {
      __PSResourceManagerLogSharedInstance(v72, v73);
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_98;
  }

  std::string::basic_string[abi:ne200100]<0>(&v85, *(a2 + 7));
  std::string::append(&v85, "-event");
  v28 = ps_register_iosurface_shared_event();
  this[13] = v28;
  if (!v28)
  {
    v84 = 0;
    v74 = this;
    if (*(this + 23) < 0)
    {
      v74 = *this;
    }

    v75 = asprintf(&v84, "Failed to register iosurface shared event for %s mach_port %d", v74, *this[11]);
    v77 = __PSResourceManagerLogSharedInstance(v75, v76);
    if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
    {
      v78 = this;
      if (*(this + 23) < 0)
      {
        v78 = *this;
      }

      v79 = *this[11];
      *buf = 136315906;
      *&buf[4] = "init";
      v88 = 1024;
      v89 = 175;
      v90 = 2080;
      v91 = v78;
      v92 = 1024;
      v93 = v79;
      _os_log_impl(&dword_25EA3A000, v77, OS_LOG_TYPE_FAULT, "%s:%d Failed to register iosurface shared event for %s mach_port %d", buf, 0x22u);
    }

    v80 = OSLogFlushBuffers();
    if (v80)
    {
      __PSResourceManagerLogSharedInstance(v80, v81);
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::init();
    }

    else
    {
      usleep(0x1E8480u);
    }

    result = abort_with_reason();
    goto LABEL_98;
  }

  this[3] = this[9];
  v29 = this[12];
  v31 = __PSResourceManagerLogSharedInstance(v29, v30);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = this;
    if (*(this + 23) < 0)
    {
      v32 = *this;
    }

    v33 = this[11];
    v34 = v33[2];
    v36 = *v33;
    v35 = *(v33 + 1);
    v37 = *(v33 + 2);
    v38 = *(v33 + 6);
    v39 = [v29 signaledValue];
    *buf = 136316674;
    *&buf[4] = v32;
    v88 = 1024;
    v89 = v36;
    v90 = 2048;
    v91 = v34;
    v92 = 1024;
    v93 = v35;
    v94 = 1024;
    v95 = v37;
    v96 = 1024;
    v97 = v38;
    v98 = 2048;
    v99 = v39;
    _os_log_impl(&dword_25EA3A000, v31, OS_LOG_TYPE_DEFAULT, "PRMAneWriter channel:%s, mach_port:%d, start_signal_value:%llu, number_of_surfaces_in_buffer_set:%d, number_of_buffer_set:%d, metadata_surface_index:%d, signaledValue:%llu", buf, 0x38u);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_25EA9B49C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

const void *_surface_allocator(_DWORD *a1)
{
  v1 = a1[1];
  v2 = *(*(a1 + 2) + 8 * (*a1 + a1[2] * v1));
  a1[1] = v1 + 1;
  CFRetain(v2);
  return v2;
}

void PRMAneWriter::publish(PRMAneWriter *this, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = ((*(this + 3) - *(this + 9)) % *(this + 16) + *(this + 16)) % *(this + 16);
  BaseAddress = IOSurfaceGetBaseAddress(*(*(this + 6) + 8 * (*(this + 20) + *(this + 15) * v4)));
  *BaseAddress = 256;
  BaseAddress[1] = v4;
  *(BaseAddress + 4) = a2;
  v17 = *(this + 12);
  v6 = IOSurfaceSignalEvent();
  v7 = v6;
  if (v6)
  {
    v18 = 0;
    v8 = this;
    if (*(this + 23) < 0)
    {
      v8 = *this;
    }

    v9 = asprintf(&v18, "Failed to signal IOSurfaceSignalEvent for %s, signal_value %llu, mach_port %d, error %d", v8, *(this + 3), **(this + 11), v6);
    v11 = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      v12 = this;
      if (*(this + 23) < 0)
      {
        v12 = *this;
      }

      v13 = *(this + 3);
      v14 = **(this + 11);
      *buf = 136316418;
      v20 = "publish";
      v21 = 1024;
      v22 = 208;
      v23 = 2080;
      v24 = v12;
      v25 = 2048;
      v26 = v13;
      v27 = 1024;
      v28 = v14;
      v29 = 1024;
      v30 = v7;
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_FAULT, "%s:%d Failed to signal IOSurfaceSignalEvent for %s, signal_value %llu, mach_port %d, error %d", buf, 0x32u);
    }

    v15 = OSLogFlushBuffers();
    if (v15)
    {
      __PSResourceManagerLogSharedInstance(v15, v16);
      objc_claimAutoreleasedReturnValue();
      PRMAneWriter::publish();
    }

    else
    {
      usleep(0x1E8480u);
    }

    abort_with_reason();
    __break(1u);
  }

  else
  {
    ++*(this + 3);
  }
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

BOOL OUTLINED_FUNCTION_3_4(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void *PRM::Camera::SurfaceList::SurfaceList(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2870B9A98;
  a1[1] = 0x100000000;
  if (!a2)
  {
    v13 = 0;
    v5 = asprintf(&v13, "%s: Assertion failed for %s", "SurfaceList", "surfaceListBufflet");
    log = __PSResourceManagerLogSharedInstance(v5, v6);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "SurfaceList";
      v16 = 1024;
      v17 = 18;
      v18 = 2080;
      v19 = "SurfaceList";
      v20 = 2080;
      v21 = "surfaceListBufflet";
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  a1[2] = a2;
  num_iosurfaces = ps_buffer_iosurface_get_num_iosurfaces();
  *(a1 + 2) = num_iosurfaces;
  if (!num_iosurfaces)
  {
    v13 = 0;
    v9 = asprintf(&v13, "%s: Assertion failed for %s", "SurfaceList", "m_size > 0");
    loga = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "SurfaceList";
      v16 = 1024;
      v17 = 21;
      v18 = 2080;
      v19 = "SurfaceList";
      v20 = 2080;
      v21 = "m_size > 0";
      _os_log_impl(&dword_25EA3A000, loga, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (!v7)
    {
LABEL_11:
      usleep(0x1E8480u);
      goto LABEL_13;
    }

LABEL_12:
    __PSResourceManagerLogSharedInstance(v7, v8);
    PRM::Camera::SurfaceList::SurfaceList();
LABEL_13:
    abort_with_reason();
    __break(1u);
  }

  return a1;
}

void *PRM::Camera::PixelBufferList::PixelBufferList(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2870B9AD0;
  a1[1] = 0x200000000;
  if (!a2)
  {
    v13 = 0;
    v5 = asprintf(&v13, "%s: Assertion failed for %s", "PixelBufferList", "pixelbufferListBufflet");
    log = __PSResourceManagerLogSharedInstance(v5, v6);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "PixelBufferList";
      v16 = 1024;
      v17 = 26;
      v18 = 2080;
      v19 = "PixelBufferList";
      v20 = 2080;
      v21 = "pixelbufferListBufflet";
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  a1[2] = a2;
  num_cvpixelbuffers = ps_buffer_cvpixelbuffer_get_num_cvpixelbuffers();
  *(a1 + 2) = num_cvpixelbuffers;
  if (!num_cvpixelbuffers)
  {
    v13 = 0;
    v9 = asprintf(&v13, "%s: Assertion failed for %s", "PixelBufferList", "m_size > 0");
    loga = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "PixelBufferList";
      v16 = 1024;
      v17 = 29;
      v18 = 2080;
      v19 = "PixelBufferList";
      v20 = 2080;
      v21 = "m_size > 0";
      _os_log_impl(&dword_25EA3A000, loga, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (!v7)
    {
LABEL_11:
      usleep(0x1E8480u);
      goto LABEL_13;
    }

LABEL_12:
    __PSResourceManagerLogSharedInstance(v7, v8);
    PRM::Camera::PixelBufferList::PixelBufferList();
LABEL_13:
    abort_with_reason();
    __break(1u);
  }

  return a1;
}

void *PRM::Camera::DataBufferList::DataBufferList(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2870B9B08;
  a1[1] = 0x300000000;
  if (!a2)
  {
    v13 = 0;
    v5 = asprintf(&v13, "%s: Assertion failed for %s", "DataBufferList", "databufferListBufflet");
    log = __PSResourceManagerLogSharedInstance(v5, v6);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "DataBufferList";
      v16 = 1024;
      v17 = 34;
      v18 = 2080;
      v19 = "DataBufferList";
      v20 = 2080;
      v21 = "databufferListBufflet";
      _os_log_impl(&dword_25EA3A000, log, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (!v7)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  a1[2] = a2;
  num_cvdatabuffers = ps_buffer_cvdatabuffer_get_num_cvdatabuffers();
  *(a1 + 2) = num_cvdatabuffers;
  if (!num_cvdatabuffers)
  {
    v13 = 0;
    v9 = asprintf(&v13, "%s: Assertion failed for %s", "DataBufferList", "m_size > 0");
    loga = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(loga, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v15 = "DataBufferList";
      v16 = 1024;
      v17 = 37;
      v18 = 2080;
      v19 = "DataBufferList";
      v20 = 2080;
      v21 = "m_size > 0";
      _os_log_impl(&dword_25EA3A000, loga, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (!v7)
    {
LABEL_11:
      usleep(0x1E8480u);
      goto LABEL_13;
    }

LABEL_12:
    __PSResourceManagerLogSharedInstance(v7, v8);
    PRM::Camera::DataBufferList::DataBufferList();
LABEL_13:
    abort_with_reason();
    __break(1u);
  }

  return a1;
}

uint64_t PRM::Camera::SurfaceList::getBufferWithIndex@<X0>(PRM::Camera::SurfaceList *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(this + 2))
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  if (v5 <= a2)
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  result = MEMORY[0x25F8C8DD0]();
  if (!result)
  {
    PRM::Camera::SurfaceList::getBufferWithIndex(&v7);
  }

  *a3 = *(this + 3);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = result;
  return result;
}

uint64_t PRM::Camera::PixelBufferList::getBufferWithIndex@<X0>(PRM::Camera::PixelBufferList *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(this + 2))
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  if (v5 <= a2)
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  result = MEMORY[0x25F8C8BB0]();
  if (!result)
  {
    PRM::Camera::PixelBufferList::getBufferWithIndex(&v7);
  }

  *a3 = *(this + 3);
  *(a3 + 8) = 0;
  *(a3 + 16) = result;
  *(a3 + 24) = 0;
  return result;
}

uint64_t PRM::Camera::DataBufferList::getBufferWithIndex@<X0>(PRM::Camera::DataBufferList *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  if (!*(this + 2))
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  if (v5 <= a2)
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  result = ps_buffer_cvdatabuffer_get_cvdatabuffer();
  if (!result)
  {
    PRM::Camera::DataBufferList::getBufferWithIndex(&v7);
  }

  *a3 = *(this + 3);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = result;
  return result;
}

uint64_t PRM::Camera::SurfaceList::getIndexWithBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (!*(a1 + 8))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (*a2 != *(a1 + 12))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (!*(a2 + 8))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  result = MEMORY[0x25F8C8DC0]();
  if ((result & 0x80000000) != 0)
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  if (result >= *(a1 + 8))
  {
    PRM::Camera::SurfaceList::getIndexWithBuffer(&v4);
  }

  return result;
}

uint64_t PRM::Camera::PixelBufferList::getIndexWithBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a1 + 8))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (*a2 != *(a1 + 12))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a2 + 16))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  result = ps_buffer_cvpixelbuffer_get_index_for_cvpixelbuffer();
  if (result != -1 && result >= *(a1 + 8))
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  if (result <= -2)
  {
    PRM::Camera::PixelBufferList::getIndexWithBuffer(&v4);
  }

  return result;
}

uint64_t PRM::Camera::DataBufferList::getIndexWithBuffer(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a1 + 8))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if (*a2 != *(a1 + 12))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if (!*(a2 + 24))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  result = ps_buffer_cvdatabuffer_get_index_for_cvdatabuffer();
  if (result >= *(a1 + 8))
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  if ((result & 0x80000000) != 0)
  {
    PRM::Camera::DataBufferList::getIndexWithBuffer(&v4);
  }

  return result;
}

uint64_t PRM::Camera::SurfaceList::getSize(PRM::Camera::SurfaceList *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::SurfaceList::getSize(&v2);
  }

  result = *(this + 2);
  if (!result)
  {
    PRM::Camera::SurfaceList::getSize(&v2);
  }

  return result;
}

uint64_t PRM::Camera::PixelBufferList::getSize(PRM::Camera::PixelBufferList *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::PixelBufferList::getSize(&v2);
  }

  result = *(this + 2);
  if (!result)
  {
    PRM::Camera::PixelBufferList::getSize(&v2);
  }

  return result;
}

uint64_t PRM::Camera::DataBufferList::getSize(PRM::Camera::DataBufferList *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::DataBufferList::getSize(&v2);
  }

  result = *(this + 2);
  if (!result)
  {
    PRM::Camera::DataBufferList::getSize(&v2);
  }

  return result;
}

uint64_t PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2870B9B40;
  if (!a2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(&v5);
  }

  *(a1 + 8) = a2;
  num_buffers = ps_buffer_serial_data_get_num_buffers();
  *(a1 + 16) = num_buffers;
  if (!num_buffers)
  {
    PRM::Camera::ViewIndexBufferIndexMap::ViewIndexBufferIndexMap(&v5);
  }

  return a1;
}

uint64_t PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(PRM::Camera::ViewIndexBufferIndexMap *this, unsigned int a2)
{
  if (!*(this + 1))
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  v2 = *(this + 4);
  if (!v2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  if (v2 <= a2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  buffer = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  result = *buffer;
  if (result <= -2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(&v5);
  }

  return result;
}

_DWORD *PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(PRM::Camera::ViewIndexBufferIndexMap *this, unsigned int a2, int a3)
{
  if (!*(this + 1))
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  v3 = *(this + 4);
  if (!v3)
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  if (v3 <= a2)
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  result = ps_buffer_serial_data_get_buffer();
  if (!result)
  {
    PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(&v6);
  }

  *result = a3;
  return result;
}

void PRM::Camera::BufferPool::BufferPool(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2870B9B60;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    PRM::Camera::BufferPool::BufferPool(&v3);
  }

  PRM::Camera::BufferPool::BufferPool(&v3);
}

{
  *a1 = &unk_2870B9B60;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    PRM::Camera::BufferPool::BufferPool(&v3);
  }

  PRM::Camera::BufferPool::BufferPool(&v3);
}

{
  *a1 = &unk_2870B9B60;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    if (a3)
    {
      operator new();
    }

    PRM::Camera::BufferPool::BufferPool(&v3);
  }

  PRM::Camera::BufferPool::BufferPool(&v3);
}

IOSurfaceRef PRM::Camera::BufferPool::getBufferListSize(PRM::Camera::BufferPool *this, unint64_t *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    *a2 = (*(*v2 + 16))(v2);
    return 0;
  }

  else
  {
    BufferListSize = PRM::Camera::BufferPool::getBufferListSize(&v6);
    return PRM::Camera::BufferPool::getBufferList(BufferListSize, v5);
  }
}

IOSurfaceRef PRM::Camera::BufferPool::getBufferList(PRM::Camera::BufferPool *this, __IOSurface **a2)
{
  v3 = *(this + 2);
  if (!v3)
  {
LABEL_26:
    PRM::Camera::BufferPool::getBufferList(&v12);
    goto LABEL_27;
  }

  if (a2)
  {
    if (!(*(*v3 + 16))(v3))
    {
      goto LABEL_28;
    }

    if (!(*(**(this + 2) + 16))(*(this + 2)))
    {
      return 0;
    }

    v5 = 0;
    while (1)
    {
      (***(this + 2))(&v12);
      v6 = v12;
      if (v12 != *(this + 2))
      {
        break;
      }

      if (v12 <= 1)
      {
        if (v12 != 1)
        {
          goto LABEL_29;
        }

        IOSurface = v13;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      else if (v12 == 2)
      {
        if (!pixelBuffer)
        {
          goto LABEL_23;
        }

        IOSurface = CVPixelBufferGetIOSurface(pixelBuffer);
        if (!IOSurface)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v12 != 3)
        {
          goto LABEL_31;
        }

        if (!v15)
        {
          goto LABEL_21;
        }

        IOSurface = CVDataBufferGetIOSurface();
        if (!IOSurface)
        {
          goto LABEL_25;
        }
      }

      a2[v5++] = IOSurface;
      if (v5 >= (*(**(this + 2) + 16))(*(this + 2)))
      {
        return 0;
      }
    }

    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_21:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_22:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_23:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_24:
    PRM::Camera::BufferPool::getBufferList(&v11);
LABEL_25:
    PRM::Camera::BufferPool::getBufferList(&v11);
    goto LABEL_26;
  }

LABEL_27:
  PRM::Camera::BufferPool::getBufferList(&v12);
LABEL_28:
  PRM::Camera::BufferPool::getBufferList(&v12);
LABEL_29:
  if (!v6)
  {
    PRM::Camera::BufferPool::getBufferList(&v11);
  }

LABEL_31:
  BufferList = PRM::Camera::BufferPool::getBufferList(&v11);
  return PRM::Camera::BufferPool::getSurface(BufferList, v10);
}

IOSurfaceRef PRM::Camera::BufferPool::getSurface(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    PRM::Camera::BufferPool::getSurface(&v7);
    goto LABEL_19;
  }

  if (*a2 != v2)
  {
LABEL_19:
    PRM::Camera::BufferPool::getSurface(&v7);
LABEL_20:
    PRM::Camera::BufferPool::getSurface(&v7);
    goto LABEL_21;
  }

  if (v2 != 3)
  {
    if (v2 != 2)
    {
      if (v2 != 1)
      {
        return 0;
      }

      result = *(a2 + 8);
      if (result)
      {
        return result;
      }

      PRM::Camera::BufferPool::getSurface(&v7);
    }

    v4 = *(a2 + 16);
    if (v4)
    {

      return CVPixelBufferGetIOSurface(v4);
    }

    goto LABEL_20;
  }

  if (!*(a2 + 24))
  {
LABEL_21:
    Surface = PRM::Camera::BufferPool::getSurface(&v7);
    return PRM::Camera::BufferPool::incrementPolarisUseCount(Surface, v6);
  }

  return CVDataBufferGetIOSurface();
}

uint64_t PRM::Camera::BufferPool::incrementPolarisUseCount(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v6[0] = *a2;
  v6[1] = v2;
  if (PRM::Camera::BufferPool::getSurface(a1, v6))
  {

    return IOSurfaceIncrementUseCountForCategory();
  }

  else
  {
    v4 = PRM::Camera::BufferPool::incrementPolarisUseCount(v6);
    return PRM::Camera::BufferPool::decrementPolarisUseCount(v4, v5);
  }
}

uint64_t PRM::Camera::BufferPool::decrementPolarisUseCount(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v6[0] = *a2;
  v6[1] = v2;
  if (PRM::Camera::BufferPool::getSurface(a1, v6))
  {

    return MEMORY[0x2821225B0]();
  }

  else
  {
    v3 = PRM::Camera::BufferPool::decrementPolarisUseCount(v6);
    return PRM::Camera::BufferPool::getInUse(v3, v4);
  }
}

BOOL PRM::Camera::BufferPool::getInUse(uint64_t a1, _OWORD *a2)
{
  v2 = a2[1];
  v5[0] = *a2;
  v5[1] = v2;
  Surface = PRM::Camera::BufferPool::getSurface(a1, v5);
  if (!Surface)
  {
    PRM::Camera::BufferPool::getInUse(v5);
    JUMPOUT(0x25EA9CC70);
  }

  return IOSurfaceIsInUse(Surface) != 0;
}

void PRM::Camera::OpenLoopBufferPool::~OpenLoopBufferPool(PRM::Camera::OpenLoopBufferPool *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F8C7C50](v3, 0x10A1C40DF6760FDLL);
  }

  *(this + 3) = 0;
}

{
  PRM::Camera::OpenLoopBufferPool::~OpenLoopBufferPool(this);

  JUMPOUT(0x25F8C7C50);
}

_DWORD *PRM::Camera::OpenLoopBufferPool::getBufferWithResource@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    goto LABEL_10;
  }

  if (!*(a1 + 24))
  {
LABEL_10:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    goto LABEL_11;
  }

  if (!*(a1 + 8))
  {
LABEL_11:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    goto LABEL_12;
  }

  if (!a2)
  {
LABEL_12:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    goto LABEL_13;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  v6 = *(a1 + 24);
  if (resource_view_index >= *(v6 + 4))
  {
LABEL_13:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    goto LABEL_14;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v6, resource_view_index);
  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_14:
    PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    goto LABEL_15;
  }

  result = (***(a1 + 16))(*(a1 + 16), BufferIndexWithView);
  if (*a3 != *(a1 + 8))
  {
LABEL_15:
    BufferWithResource = PRM::Camera::OpenLoopBufferPool::getBufferWithResource(&v12);
    return PRM::Camera::OpenLoopBufferPool::setBufferWithResource(BufferWithResource, v10, v11);
  }

  return result;
}

_DWORD *PRM::Camera::OpenLoopBufferPool::setBufferWithResource(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
LABEL_11:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_12;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_12:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_13:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_14;
  }

  if (*a3 != v4)
  {
LABEL_14:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_15;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  if ((resource_view_index & 0x80000000) != 0)
  {
LABEL_15:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_16;
  }

  v7 = resource_view_index;
  if (resource_view_index >= *(*(a1 + 24) + 16))
  {
LABEL_16:
    PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
    goto LABEL_17;
  }

  v8 = *(a1 + 16);
  v9 = *(a3 + 16);
  v13[0] = *a3;
  v13[1] = v9;
  v10 = (*(*v8 + 8))(v8, v13);
  if (v10 < (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
    return PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(a1 + 24), v7, v10);
  }

LABEL_17:
  v12 = PRM::Camera::OpenLoopBufferPool::setBufferWithResource(v13);
  return PRM::Camera::ClosedLoopBufferPool::initialize(v12);
}

void PRM::Camera::ClosedLoopBufferPool::reserveBuffers(PRM::Camera::ClosedLoopBufferPool *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v8);
    goto LABEL_16;
  }

  if (!*(this + 3))
  {
LABEL_16:
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v8);
    goto LABEL_17;
  }

  if (!*(this + 2))
  {
LABEL_17:
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v8);
    goto LABEL_18;
  }

  if ((*(*v2 + 16))(v2) <= *(*(this + 3) + 16))
  {
LABEL_18:
    PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v8);
LABEL_19:
    v5 = PRM::Camera::ClosedLoopBufferPool::reserveBuffers(&v8);
    PRM::Camera::ClosedLoopBufferPool::deinitialize(v5);
    return;
  }

  if ((*(**(this + 2) + 16))(*(this + 2)))
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (v4 >= *(*(this + 3) + 16))
      {
        break;
      }

      (***(this + 2))(&v8);
      v6 = v8;
      v7 = v9;
      if (!PRM::Camera::BufferPool::getInUse(this, &v6))
      {
        PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(this + 3), v4, v3);
        v6 = v8;
        v7 = v9;
        PRM::Camera::BufferPool::incrementPolarisUseCount(this, &v6);
        ++v4;
      }

      ++v3;
    }

    while (v3 < (*(**(this + 2) + 16))(*(this + 2)));
  }

  else
  {
    v4 = 0;
  }

  if (v4 != *(*(this + 3) + 16))
  {
    goto LABEL_19;
  }
}

void PRM::Camera::ClosedLoopBufferPool::deinitialize(PRM::Camera::ClosedLoopBufferPool *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    PRM::Camera::ClosedLoopBufferPool::deinitialize(v6);
    goto LABEL_8;
  }

  if (!*(this + 2))
  {
LABEL_8:
    v4 = PRM::Camera::ClosedLoopBufferPool::deinitialize(v6);
    PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(v4);
    return;
  }

  if (*(v2 + 4))
  {
    v3 = 0;
    do
    {
      PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v2, v3);
      (***(this + 2))(v6);
      v5[0] = v6[0];
      v5[1] = v6[1];
      PRM::Camera::BufferPool::decrementPolarisUseCount(this, v5);
      ++v3;
      v2 = *(this + 3);
    }

    while (v3 < *(v2 + 4));
  }
}

void PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(PRM::Camera::ClosedLoopBufferPool *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2)
  {
    v12 = 0;
    v4 = asprintf(&v12, "%s: Assertion failed for %s", "~ClosedLoopBufferPool", "m_bufferList");
    v6 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "~ClosedLoopBufferPool";
      v14 = 1024;
      v15 = 435;
      v16 = 2080;
      v17 = "~ClosedLoopBufferPool";
      v18 = 2080;
      v19 = "m_bufferList";
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!*(this + 3))
  {
    v12 = 0;
    v9 = asprintf(&v12, "%s: Assertion failed for %s", "~ClosedLoopBufferPool", "m_viewIndexBufferIndexMap");
    v11 = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "~ClosedLoopBufferPool";
      v14 = 1024;
      v15 = 436;
      v16 = 2080;
      v17 = "~ClosedLoopBufferPool";
      v18 = 2080;
      v19 = "m_viewIndexBufferIndexMap";
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (v7)
    {
LABEL_13:
      __PSResourceManagerLogSharedInstance(v7, v8);
      PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool();
      goto LABEL_14;
    }

LABEL_15:
    usleep(0x1E8480u);
LABEL_14:
    abort_with_reason();
    __break(1u);
  }

  (*(*v2 + 32))(v2);
  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F8C7C50](v3, 0x10A1C40DF6760FDLL);
  }

  *(this + 3) = 0;
}

{
  PRM::Camera::ClosedLoopBufferPool::~ClosedLoopBufferPool(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EA9D44C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

_DWORD *PRM::Camera::ClosedLoopBufferPool::getBufferWithResource@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
LABEL_11:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_12;
  }

  if (!*(a1 + 8))
  {
LABEL_12:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_13;
  }

  if (!a2)
  {
LABEL_13:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_14;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  if ((resource_view_index & 0x80000000) != 0)
  {
LABEL_14:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_15;
  }

  v6 = resource_view_index;
  v7 = *(a1 + 24);
  if (v6 >= *(v7 + 4))
  {
LABEL_15:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_16;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v7, v6);
  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_16:
    PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    goto LABEL_17;
  }

  result = (***(a1 + 16))(*(a1 + 16), BufferIndexWithView);
  if (*a3 != *(a1 + 8))
  {
LABEL_17:
    BufferWithResource = PRM::Camera::ClosedLoopBufferPool::getBufferWithResource(&v13);
    return PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(BufferWithResource, v11, v12);
  }

  return result;
}

PRM::Camera::ViewIndexBufferIndexMap *PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_13;
  }

  if (!*(a1 + 24))
  {
LABEL_13:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_14;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_14:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_15;
  }

  if (!a2)
  {
LABEL_15:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_16;
  }

  if (*a3 != v4)
  {
LABEL_16:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_17;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  if ((resource_view_index & 0x80000000) != 0)
  {
LABEL_17:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_18;
  }

  v7 = resource_view_index;
  v8 = *(a1 + 24);
  if (v7 >= *(v8 + 4))
  {
LABEL_18:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_19;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v8, v7);
  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_19:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(v18);
    goto LABEL_20;
  }

  (***(a1 + 16))(v18);
  if (LODWORD(v18[0]) != *(a1 + 8))
  {
LABEL_20:
    PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(&v16);
    goto LABEL_21;
  }

  v16 = v18[0];
  v17 = v18[1];
  PRM::Camera::BufferPool::decrementPolarisUseCount(a1, &v16);
  v10 = a3[1];
  v16 = *a3;
  v17 = v10;
  PRM::Camera::BufferPool::incrementPolarisUseCount(a1, &v16);
  v11 = *(a1 + 16);
  v12 = a3[1];
  v16 = *a3;
  v17 = v12;
  v13 = (*(*v11 + 8))(v11, &v16);
  if (v13 < (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
    return PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(a1 + 24), v7, v13);
  }

LABEL_21:
  v15 = PRM::Camera::ClosedLoopBufferPool::setBufferWithResource(&v16);
  return PRM::Camera::HybridLoopBufferPool::initialize(v15);
}

PRM::Camera::ViewIndexBufferIndexMap *PRM::Camera::HybridLoopBufferPool::initialize(PRM::Camera::HybridLoopBufferPool *this)
{
  if (!*(this + 2))
  {
    PRM::Camera::HybridLoopBufferPool::initialize(&v6);
    goto LABEL_9;
  }

  result = *(this + 3);
  if (!result)
  {
LABEL_9:
    PRM::Camera::HybridLoopBufferPool::initialize(&v6);
    goto LABEL_10;
  }

  if (!*(this + 2))
  {
LABEL_10:
    v4 = PRM::Camera::HybridLoopBufferPool::initialize(&v6);
    return PRM::Camera::HybridLoopBufferPool::getBufferWithResource(v4, v5);
  }

  if (*(result + 4))
  {
    v3 = 0;
    do
    {
      PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(result, v3++, -1);
      result = *(this + 3);
    }

    while (v3 < *(result + 4));
  }

  return result;
}

_DWORD *PRM::Camera::HybridLoopBufferPool::getBufferWithResource(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_11;
  }

  if (!*(a1 + 24))
  {
LABEL_11:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_12;
  }

  if (!*(a1 + 8))
  {
LABEL_12:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_13;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  v4 = *(a1 + 24);
  if (resource_view_index >= *(v4 + 4))
  {
LABEL_13:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_14;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v4, resource_view_index);
  if ((BufferIndexWithView & 0x80000000) != 0)
  {
LABEL_14:
    PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v11);
    goto LABEL_15;
  }

  if (BufferIndexWithView >= (*(**(a1 + 16) + 16))(*(a1 + 16)))
  {
LABEL_15:
    BufferWithResource = PRM::Camera::HybridLoopBufferPool::getBufferWithResource(&v11);
    return PRM::Camera::HybridLoopBufferPool::setBufferWithResource(BufferWithResource, v9, v10);
  }

  v6 = ***(a1 + 16);

  return v6();
}

void PRM::Camera::HybridLoopBufferPool::setBufferWithResource(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*(a1 + 16))
  {
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
    goto LABEL_18;
  }

  if (!*(a1 + 24))
  {
LABEL_18:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
    goto LABEL_19;
  }

  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_19:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
    goto LABEL_20;
  }

  if (v4 != *a3)
  {
LABEL_20:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
    goto LABEL_21;
  }

  resource_view_index = ps_buffer_get_resource_view_index();
  v7 = *(a1 + 24);
  if (resource_view_index >= *(v7 + 4))
  {
LABEL_21:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
LABEL_22:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
    goto LABEL_23;
  }

  BufferIndexWithView = PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v7, resource_view_index);
  v9 = (*(**(a1 + 16) + 16))(*(a1 + 16));
  if (BufferIndexWithView != -1 && BufferIndexWithView >= v9)
  {
    goto LABEL_22;
  }

  if (BufferIndexWithView == -1)
  {
    goto LABEL_11;
  }

  if ((BufferIndexWithView & 0x80000000) == 0)
  {
    (***(a1 + 16))(&v19);
    v17 = v19;
    v18 = v20;
    PRM::Camera::BufferPool::decrementPolarisUseCount(a1, &v17);
LABEL_11:
    v10 = *(a1 + 16);
    v11 = a3[1];
    v19 = *a3;
    v20 = v11;
    v12 = (*(*v10 + 8))(v10, &v19);
    if (v12 > -2)
    {
      v13 = v12;
      v14 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      if (v13 == -1 || v13 < v14)
      {
        (***(a1 + 16))(&v19);
        v17 = v19;
        v18 = v20;
        PRM::Camera::BufferPool::incrementPolarisUseCount(a1, &v17);
        PRM::Camera::ViewIndexBufferIndexMap::setBufferIndexWithView(*(a1 + 24), resource_view_index, v13);
        return;
      }

      goto LABEL_24;
    }

LABEL_23:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
LABEL_24:
    PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
  }

  v16 = PRM::Camera::HybridLoopBufferPool::setBufferWithResource(&v19);
  PRM::Camera::HybridLoopBufferPool::deinitialize(v16);
}

void PRM::Camera::HybridLoopBufferPool::deinitialize(PRM::Camera::HybridLoopBufferPool *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    PRM::Camera::HybridLoopBufferPool::deinitialize(v6);
    goto LABEL_10;
  }

  if (!*(this + 2))
  {
LABEL_10:
    v4 = PRM::Camera::HybridLoopBufferPool::deinitialize(v6);
    PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(v4);
    return;
  }

  if (*(v2 + 4))
  {
    v3 = 0;
    do
    {
      if (PRM::Camera::ViewIndexBufferIndexMap::getBufferIndexWithView(v2, v3) != -1)
      {
        (***(this + 2))(v6);
        v5[0] = v6[0];
        v5[1] = v6[1];
        PRM::Camera::BufferPool::decrementPolarisUseCount(this, v5);
      }

      ++v3;
      v2 = *(this + 3);
    }

    while (v3 < *(v2 + 4));
  }
}

void PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(PRM::Camera::HybridLoopBufferPool *this)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 2);
  if (!v2)
  {
    v12 = 0;
    v4 = asprintf(&v12, "%s: Assertion failed for %s", "~HybridLoopBufferPool", "m_bufferList");
    v6 = __PSResourceManagerLogSharedInstance(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "~HybridLoopBufferPool";
      v14 = 1024;
      v15 = 596;
      v16 = 2080;
      v17 = "~HybridLoopBufferPool";
      v18 = 2080;
      v19 = "m_bufferList";
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (v7)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (!*(this + 3))
  {
    v12 = 0;
    v9 = asprintf(&v12, "%s: Assertion failed for %s", "~HybridLoopBufferPool", "m_viewIndexBufferIndexMap");
    v11 = __PSResourceManagerLogSharedInstance(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      buf[0] = 136315906;
      *&buf[1] = "~HybridLoopBufferPool";
      v14 = 1024;
      v15 = 597;
      v16 = 2080;
      v17 = "~HybridLoopBufferPool";
      v18 = 2080;
      v19 = "m_viewIndexBufferIndexMap";
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v7 = OSLogFlushBuffers();
    if (v7)
    {
LABEL_13:
      __PSResourceManagerLogSharedInstance(v7, v8);
      PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool();
      goto LABEL_14;
    }

LABEL_15:
    usleep(0x1E8480u);
LABEL_14:
    abort_with_reason();
    __break(1u);
  }

  (*(*v2 + 32))(v2);
  *(this + 2) = 0;
  v3 = *(this + 3);
  if (v3)
  {
    MEMORY[0x25F8C7C50](v3, 0x10A1C40DF6760FDLL);
  }

  *(this + 3) = 0;
}

{
  PRM::Camera::HybridLoopBufferPool::~HybridLoopBufferPool(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EA9DE70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void OUTLINED_FUNCTION_5_2(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, v10, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return abort_with_reason();
}

void OUTLINED_FUNCTION_9_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, a5, 0x12u);
}

BOOL OUTLINED_FUNCTION_17_0(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

CFMutableDictionaryRef PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(PRM::Camera::ChildSurfaceDescriptor *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v4 = Mutable;
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2B88], *this);
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2A28], *(this + 1));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2960], *(this + 2));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2968], *(this + 3));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD29F0], *(this + 4));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD29E8], *(this + 5));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2A70], *(this + 6));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2A60], *(this + 7));
  PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v4, *MEMORY[0x277CD2948], *(this + 8));
  return Mutable;
}

void PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(CFMutableDictionaryRef *a1, const void *a2, int a3)
{
  valuePtr = a3;
  if (a2)
  {
    v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, &valuePtr);
    CFDictionarySetValue(*a1, a2, v5);
    CFRelease(v5);
  }

  else
  {
    PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(void)const::$_0::operator()(&v7);
    PRM::Camera::PixelBufferStream::getConfigMap(v6);
  }
}

uint64_t PRM::Camera::PixelBufferStream::getConfigMap(PRM::Camera::PixelBufferStream *this)
{
  {
    operator new();
  }

  return PRM::Camera::PixelBufferStream::getConfigMap(void)::s_oysStreamNameChildSurfaceDescriptorMap;
}

uint64_t PRM::Camera::PixelBufferStream::PixelBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v28 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9D20;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (!a2)
  {
    v19 = 0;
    v8 = asprintf(&v19, "%s: Assertion failed for %s", "PixelBufferStream", "pbsGroupReader");
    v10 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "PixelBufferStream";
      v22 = 1024;
      v23 = 107;
      v24 = 2080;
      v25 = "PixelBufferStream";
      v26 = 2080;
      v27 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v19 = 0;
    v13 = asprintf(&v19, "%s: Assertion failed for %s", "PixelBufferStream", "options");
    v15 = __PSResourceManagerLogSharedInstance(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "PixelBufferStream";
      v22 = 1024;
      v23 = 108;
      v24 = 2080;
      v25 = "PixelBufferStream";
      v26 = 2080;
      v27 = "options";
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v19 = 0;
    v16 = asprintf(&v19, "%s: Assertion failed for %s", "PixelBufferStream", "m_options");
    v18 = __PSResourceManagerLogSharedInstance(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "PixelBufferStream";
      v22 = 1024;
      v23 = 113;
      v24 = 2080;
      v25 = "PixelBufferStream";
      v26 = 2080;
      v27 = "m_options";
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (!v11)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v11, v12);
    PRM::Camera::PixelBufferStream::PixelBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  v5 = v4;
  ConfigMap = PRM::Camera::PixelBufferStream::getConfigMap(v4);
  PRM::Camera::update_config_map(v5, ConfigMap);
  return a1;
}

void PRM::Camera::update_config_map(uint64_t a1, uint64_t **a2)
{
  if (ps_resource_stream_provider_is_superframe())
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, *(a1 + 56));
    v4 = std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::find<std::string>(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (a2 + 1 == v4)
    {
      std::string::basic_string[abi:ne200100]<0>(&v14, *(a1 + 56));
      v5 = *(a1 + 200);
      v6 = *(a1 + 184);
      v7 = *(a1 + 232);
      v8 = *(a1 + 216);
      v9 = *(a1 + 248);
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v5;
        v13 = v7;
        v10 = v6;
        v11 = v8;
        std::string::__init_copy_ctor_external(&__p, v14.__r_.__value_.__l.__data_, v14.__r_.__value_.__l.__size_);
        v6 = v10;
        v8 = v11;
        v5 = v12;
        v7 = v13;
      }

      else
      {
        __p = v14;
      }

      v16 = vuzp1q_s32(v6, v5);
      v17 = vuzp1q_s32(v8, v7);
      v18 = v9;
      std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,PRM::Camera::ChildSurfaceDescriptor>>(a2, &__p.__r_.__value_.__l.__data_, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_25EA9E688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

PRM::Camera::PixelBufferStream *PRM::Camera::PixelBufferStream::PixelBufferStream(PRM::Camera::PixelBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9D20;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 16) = 0;
  *(this + 9) = 0;
  if (!a2)
  {
    v19 = 0;
    v8 = asprintf(&v19, "%s: Assertion failed for %s", "PixelBufferStream", "pbsGroupWriter");
    v10 = __PSResourceManagerLogSharedInstance(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "PixelBufferStream";
      v22 = 1024;
      v23 = 119;
      v24 = 2080;
      v25 = "PixelBufferStream";
      v26 = 2080;
      v27 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v19 = 0;
    v13 = asprintf(&v19, "%s: Assertion failed for %s", "PixelBufferStream", "options");
    v15 = __PSResourceManagerLogSharedInstance(v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "PixelBufferStream";
      v22 = 1024;
      v23 = 120;
      v24 = 2080;
      v25 = "PixelBufferStream";
      v26 = 2080;
      v27 = "options";
      _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (!v11)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 88) = 0;
  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v19 = 0;
    v16 = asprintf(&v19, "%s: Assertion failed for %s", "PixelBufferStream", "m_options");
    v18 = __PSResourceManagerLogSharedInstance(v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v21 = "PixelBufferStream";
      v22 = 1024;
      v23 = 126;
      v24 = 2080;
      v25 = "PixelBufferStream";
      v26 = 2080;
      v27 = "m_options";
      _os_log_impl(&dword_25EA3A000, v18, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v11 = OSLogFlushBuffers();
    if (!v11)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v11, v12);
    PRM::Camera::PixelBufferStream::PixelBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  v5 = v4;
  ConfigMap = PRM::Camera::PixelBufferStream::getConfigMap(v4);
  PRM::Camera::update_config_map(v5, ConfigMap);
  return this;
}

void PRM::Camera::PixelBufferStream::~PixelBufferStream(PRM::Camera::PixelBufferStream *this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 2) == 1)
  {
    v2 = *(this + 7);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      if (*(this + 16) != 1)
      {
        goto LABEL_6;
      }

      v3 = *(this + 9);
      if (v3)
      {
        (*(*v3 + 8))(v3);
        goto LABEL_6;
      }

      v14 = 0;
      v11 = asprintf(&v14, "%s: Assertion failed for %s", "~PixelBufferStream", "m_iosurfaceMetadata");
      v13 = __PSResourceManagerLogSharedInstance(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "~PixelBufferStream";
        v16 = 1024;
        v17 = 137;
        v18 = 2080;
        v19 = "~PixelBufferStream";
        v20 = 2080;
        v21 = "m_iosurfaceMetadata";
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v9 = OSLogFlushBuffers();
      if (v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      v6 = asprintf(&v14, "%s: Assertion failed for %s", "~PixelBufferStream", "m_imageBufferPool");
      v8 = __PSResourceManagerLogSharedInstance(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "~PixelBufferStream";
        v16 = 1024;
        v17 = 133;
        v18 = 2080;
        v19 = "~PixelBufferStream";
        v20 = 2080;
        v21 = "m_imageBufferPool";
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v9 = OSLogFlushBuffers();
      if (v9)
      {
LABEL_18:
        __PSResourceManagerLogSharedInstance(v9, v10);
        PRM::Camera::PixelBufferStream::~PixelBufferStream();
        goto LABEL_19;
      }
    }

    usleep(0x1E8480u);
LABEL_19:
    abort_with_reason();
    __break(1u);
  }

LABEL_6:
  ps_prm_opts_destroy(*(this + 4));
  *(this + 4) = 0;
  v4 = *(this + 7);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  *(this + 7) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  *(this + 9) = 0;
}

{
  PRM::Camera::PixelBufferStream::~PixelBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EA9ED40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL PRM::Camera::PixelBufferStream::isOid(void *__s)
{
  v1 = __s;
  v2 = *(__s + 23);
  if (v2 < 0)
  {
    v1 = *__s;
    v2 = __s[1];
  }

  v3 = v1 + v2;
  if (v2 >= 4)
  {
    v4 = v1;
    do
    {
      v5 = memchr(v4, 95, v2 - 3);
      if (!v5)
      {
        break;
      }

      if (*v5 == 1684631391)
      {
        return v5 != v3 && v5 - v1 != -1;
      }

      v4 = v5 + 1;
      v2 = v3 - v4;
    }

    while (v3 - v4 > 3);
  }

  v5 = v3;
  return v5 != v3 && v5 - v1 != -1;
}

void PRM::Camera::PixelBufferStream::initialize(PRM::Camera::PixelBufferStream *this)
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  if (*(this + 10))
  {
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  if ((*(this + 2) - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  v3 = *(v1 + 108);
  if (v3)
  {
    if (v3 != 1)
    {
      PRM::Camera::PixelBufferStream::initialize(v52);
      goto LABEL_84;
    }
  }

  else
  {
    v3 = 2;
  }

  *(this + 16) = v3;
  v4 = *(v1 + 112);
  v5 = v4 > 8;
  v6 = (1 << v4) & 0x124;
  if (v5 || v6 == 0)
  {
    goto LABEL_18;
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(v56, *(v1 + 56));
  ConfigMap = PRM::Camera::PixelBufferStream::getConfigMap(v8);
  v10 = std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::find<std::string>(ConfigMap, v56);
  v11 = PRM::Camera::PixelBufferStream::getConfigMap(v10) + 8;
  if (v57 < 0)
  {
    operator delete(v56[0]);
  }

  if (v11 == v10)
  {
LABEL_18:
    v13 = 0;
  }

  else
  {
    v12 = std::string::basic_string[abi:ne200100]<0>(&v54, *(*(this + 4) + 56));
    *(this + 88) = PRM::Camera::PixelBufferStream::isOid(v12);
    if (v55 < 0)
    {
      operator delete(v54);
    }

    v13 = 1;
  }

  {
    PRM::Camera::PixelBufferStream::initialize(void)::enableSuperframeIOSurfaceNames = PLSSettingsEnableSuperframeIOSurfaceNames();
  }

  v14 = *(this + 2);
  if (v14 != 1)
  {
    if (v14 != 2)
    {
      if (v14)
      {
        PRM::Camera::PixelBufferStream::initialize(v52);
      }

      else
      {
        PRM::Camera::PixelBufferStream::initialize(v52);
      }

      goto LABEL_84;
    }

LABEL_59:
    v44 = MEMORY[0x25F8C8E10](*(this + 3));
    goto LABEL_60;
  }

  v15 = *(this + 2);
  if (!v15)
  {
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  v16 = MEMORY[0x25F8C8900](v15, 16);
  v50[1] = v50;
  MEMORY[0x28223BE20](v16);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFF0);
  if (v17 >= 0x200)
  {
    v19 = 512;
  }

  else
  {
    v19 = v17;
  }

  bzero(v50 - ((v17 + 15) & 0xFFFFFFFF0), v19);
  v20 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D90], *MEMORY[0x277CBED28]);
  v58 = *"child";
  *v59 = *"parent";
  if (v13)
  {
    v24 = PRM::Camera::PixelBufferStream::getConfigMap(v22);
    std::string::basic_string[abi:ne200100]<0>(v52, *(*(this + 4) + 56));
    v25 = std::map<std::string,PRM::Camera::ChildSurfaceDescriptor>::at(v24, v52);
    v51 = PRM::Camera::ChildSurfaceDescriptor::layoutDictionary(v25);
    if (v53 < 0)
    {
      operator delete(v52[0]);
    }

    if (!v51)
    {
      PRM::Camera::PixelBufferStream::initialize(v52);
    }
  }

  else
  {
    v51 = 0;
  }

  v26 = *(this + 4);
  LODWORD(v27) = *(v26 + 152);
  if (v27)
  {
    v28 = 0;
    do
    {
      v29 = *(v26 + 160);
      v30 = *(v29 + 8 * v28);
      if (v13)
      {
        ChildSurface = IOSurfaceCreateChildSurface();
        v33 = v28 + 1;
        if (PRM::Camera::PixelBufferStream::initialize(void)::enableSuperframeIOSurfaceNames)
        {
          PRM::Camera::setIOSurfaceName(v30, *(*(this + 4) + 56), (v28 + 1), *(*(this + 4) + 152), 0, v59, v31);
          PRM::Camera::setIOSurfaceName(ChildSurface, *(*(this + 4) + 56), (v28 + 1), *(*(this + 4) + 152), 0, &v58, v34);
        }

        CVPixelBufferCreateWithIOSurface(v20, ChildSurface, Mutable, &v18[8 * v28]);
        CFRelease(ChildSurface);
      }

      else
      {
        v33 = v28 + 1;
        PRM::Camera::setIOSurfaceName(*(v29 + 8 * v28), *(v26 + 56), (v28 + 1), v27, 0, 0, v23);
        CVPixelBufferCreateWithIOSurface(v20, v30, Mutable, &v18[8 * v28]);
      }

      v26 = *(this + 4);
      v27 = *(v26 + 152);
      v28 = v33;
    }

    while (v33 < v27);
  }

  CFRelease(Mutable);
  if (v13)
  {
    CFRelease(v51);
  }

  ps_buffer_add_cvpixelbuffer();
  MEMORY[0x25F8C8900](*(this + 2), 4);
  v35 = *(this + 16);
  if (v35 == 1)
  {
    v37 = *(this + 4);
    if (*(v37 + 152))
    {
      v38 = 0;
      do
      {
        v39 = *(*(v37 + 176) + 8 * v38);
        if (!v39)
        {
          PRM::Camera::PixelBufferStream::initialize(v52);
        }

        CFRetain(v39);
        if (v13 && (PRM::Camera::PixelBufferStream::initialize(void)::enableSuperframeIOSurfaceNames & 1) == 0)
        {
          ++v38;
        }

        else
        {
          v41 = *(this + 4);
          v42 = *(*(v41 + 176) + 8 * v38++);
          PRM::Camera::setIOSurfaceName(v42, *(v41 + 56), v38, *(v41 + 152), 1, 0, v40);
        }

        v37 = *(this + 4);
      }

      while (v38 < *(v37 + 152));
    }

    ps_buffer_add_iosurface();
    v36 = 4;
  }

  else
  {
    if (v35 != 2)
    {
      if (v35)
      {
        PRM::Camera::PixelBufferStream::initialize(v52);
      }

      else
      {
        PRM::Camera::PixelBufferStream::initialize(v52);
      }

      goto LABEL_84;
    }

    v36 = 90112;
  }

  MEMORY[0x25F8C8900](*(this + 2), v36);
  MEMORY[0x25F8C8C70](*(this + 2));
  v43 = *(this + 2);
  if (v43 == 2)
  {
    goto LABEL_59;
  }

  if (v43 != 1)
  {
    goto LABEL_82;
  }

  v44 = MEMORY[0x25F8C8E90](*(this + 2));
LABEL_60:
  if (!v44)
  {
LABEL_82:
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  *(this + 6) = *v44;
  if (!v44[1])
  {
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  if (!v44[2])
  {
    PRM::Camera::PixelBufferStream::initialize(v52);
  }

  v45 = *(this + 4);
  v46 = *(v45 + 112);
  if (v46 <= 8)
  {
    v47 = 1 << v46;
    if ((v47 & 0x49) == 0)
    {
      if ((v47 & 0x92) != 0)
      {
        v48.i64[0] = *(v45 + 68);
        v48.i64[1] = *(v45 + 144);
        *(this + 10) = vaddvq_s32(v48);
        operator new();
      }

      v49.i64[0] = *(v45 + 68);
      v49.i64[1] = *(v45 + 144);
      *(this + 10) = vaddvq_s32(v49);
      operator new();
    }

    *(this + 10) = *(v45 + 68) + *(v45 + 72);
    operator new();
  }

  PRM::Camera::PixelBufferStream::initialize(v52);
LABEL_84:
  __break(1u);
}

uint64_t std::map<std::string,PRM::Camera::ChildSurfaceDescriptor>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::__map_value_compare<std::string,std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,PRM::Camera::ChildSurfaceDescriptor>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

void PRM::Camera::setIOSurfaceName(PRM::Camera *this, __IOSurface *a2, const char *a3, int a4, int a5, const char *a6, char *a7)
{
  v10 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v13 = getprogname();
  v14 = "frame";
  if (a5)
  {
    v14 = "metadata";
  }

  v15 = "";
  if (a6)
  {
    v15 = a6;
  }

  snprintf(__str, 0xFFuLL, "%s/Polaris ; %s/%s/%s ; %d/%d", v13, v14, a2, v15, v10, a4);
  v16 = CFStringCreateWithCString(0, __str, 0x8000100u);
  if (v16)
  {
    v17 = v16;
    IOSurfaceSetValue(this, *MEMORY[0x277CD2A50], v16);
    CFRelease(v17);
  }
}

void PRM::Camera::PixelBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a1 + 48))
  {
    PRM::Camera::PixelBufferStream::read(v20);
    goto LABEL_23;
  }

  if (!*(a1 + 56))
  {
LABEL_23:
    PRM::Camera::PixelBufferStream::read(v20);
    goto LABEL_24;
  }

  v8 = *(a1 + 64);
  if (v8 == 2)
  {
    if (*(a1 + 80))
    {
      goto LABEL_6;
    }

LABEL_17:
    PRM::Camera::PixelBufferStream::read(v20);
LABEL_18:
    (*(**(a1 + 72) + 32))(v19);
    if (LODWORD(v19[0]) == 1)
    {
      if (v19[1])
      {
        MEMORY[0x25F8C9450](a2, a4, v4);
        return;
      }

      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (v8 != 1 || !*(a1 + 72))
  {
    goto LABEL_17;
  }

LABEL_6:
  if (!a2)
  {
LABEL_24:
    PRM::Camera::PixelBufferStream::read(v20);
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    PRM::Camera::PixelBufferStream::read(v20);
    goto LABEL_26;
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
LABEL_26:
    PRM::Camera::PixelBufferStream::read(v20);
LABEL_27:
    PRM::Camera::PixelBufferStream::read(v19);
    goto LABEL_28;
  }

  ps_buffer_get_resource_view_index();
  buffer = ps_buffer_serial_data_get_buffer();
  v10 = *(buffer + 8);
  MEMORY[0x25F8C9570](a2, a4, *buffer);
  MEMORY[0x25F8C94C0](a2, a4, v10);
  if (v10 != 1)
  {
    return;
  }

  (*(**(a1 + 56) + 32))(v20);
  if (LODWORD(v20[0]) != 2)
  {
    goto LABEL_27;
  }

  v4 = v21;
  if (!v21)
  {
LABEL_28:
    PRM::Camera::PixelBufferStream::read(v19);
LABEL_29:
    PRM::Camera::PixelBufferStream::read(&v18);
LABEL_30:
    PRM::Camera::PixelBufferStream::read(v19);
LABEL_31:
    PRM::Camera::PixelBufferStream::read(&v18);
    goto LABEL_32;
  }

  v11 = *(a1 + 64);
  if (v11 == 1)
  {
    goto LABEL_18;
  }

  if (v11 == 2)
  {
    v12 = ps_buffer_serial_data_get_buffer();
    if (v12)
    {
      v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v12 + 8), *v12, *MEMORY[0x277CBED00]);
      MEMORY[0x25F8C9440](a2, a4, v4, v13);
      return;
    }

    goto LABEL_30;
  }

LABEL_32:
  v14 = v19;
  if (!v11)
  {
    v14 = PRM::Camera::PixelBufferStream::read(v19);
  }

  v15 = PRM::Camera::PixelBufferStream::read(v14);
  PRM::Camera::PixelBufferStream::write(v15, v16, v17);
}

void PRM::Camera::PixelBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 40))
  {
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_31;
  }

  if (!*(a1 + 48))
  {
LABEL_31:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_32;
  }

  if (!*(a1 + 56))
  {
LABEL_32:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_33;
  }

  v7 = *(a1 + 64);
  if (v7 == 2)
  {
    if (*(a1 + 80))
    {
      goto LABEL_7;
    }

LABEL_19:
    cvpixelbuffer = PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_20;
  }

  if (v7 != 1 || !*(a1 + 72))
  {
    goto LABEL_19;
  }

LABEL_7:
  if (!a2)
  {
LABEL_33:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_34;
  }

  if (!a3)
  {
LABEL_34:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_35;
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
LABEL_35:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_36;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_36:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_37;
  }

  buffer = ps_buffer_serial_data_get_buffer();
  v8 = MEMORY[0x25F8C9240](a2, 0);
  *buffer = ps_util_mct_to_mat(v8);
  if (!MEMORY[0x25F8C9210](a2, 0))
  {
LABEL_37:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_38;
  }

  cvpixelbuffer = ps_resource_pixelbuffer_get_cvpixelbuffer();
  if (!cvpixelbuffer)
  {
LABEL_20:
    *(buffer + 8) = 0;
    goto LABEL_26;
  }

  v10 = cvpixelbuffer;
  *(buffer + 8) = MEMORY[0x25F8C9260](a2, 0);
  v11 = *(a1 + 56);
  *v23 = 2;
  *&v23[8] = 0;
  *&v23[16] = v10;
  v24 = 0;
  (*(*v11 + 40))(v11, a3, v23);
  v12 = *(a1 + 64);
  if (v12 != 2)
  {
    if (v12 != 1)
    {
      v21 = PRM::Camera::PixelBufferStream::write(v23);
      PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(v21, v22);
      return;
    }

    if (MEMORY[0x25F8C91C0](a2, 0) == 1)
    {
      iosurface_metadata = ps_resource_pixelbuffer_get_iosurface_metadata();
      if (iosurface_metadata)
      {
        v14 = *(a1 + 72);
        *v23 = 1;
        *&v23[16] = 0;
        v24 = 0;
        *&v23[8] = iosurface_metadata;
        cvpixelbuffer = (*(*v14 + 40))(v14, a3, v23);
        goto LABEL_26;
      }

LABEL_41:
      PRM::Camera::PixelBufferStream::write(v23);
    }

    goto LABEL_39;
  }

  if (MEMORY[0x25F8C91C0](a2, 0))
  {
LABEL_38:
    PRM::Camera::PixelBufferStream::write(v23);
LABEL_39:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_40;
  }

  cfdata_metadata = ps_resource_pixelbuffer_get_cfdata_metadata();
  cvpixelbuffer = ps_buffer_serial_data_get_buffer();
  if (!cvpixelbuffer)
  {
LABEL_40:
    PRM::Camera::PixelBufferStream::write(v23);
    goto LABEL_41;
  }

  v16 = cvpixelbuffer;
  if (cfdata_metadata)
  {
    v26.length = CFDataGetLength(cfdata_metadata);
    *v16 = v26.length;
    v26.location = 0;
    CFDataGetBytes(cfdata_metadata, v26, v16 + 8);
  }

  else
  {
    *cvpixelbuffer = 0;
  }

LABEL_26:
  if (*(a1 + 88) == 1)
  {
    v17 = __PLSLogSharedInstance(cvpixelbuffer);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      key = ps_resource_get_key();
      v19 = MEMORY[0x25F8C9180](a2, 0);
      v20 = *buffer;
      *v23 = 136315650;
      *&v23[4] = key;
      *&v23[12] = 2048;
      *&v23[14] = v19;
      *&v23[22] = 2048;
      v24 = v20;
      _os_log_unreliable_impl(&dword_25EA3A000, v17, 0, "[OID-Flow][polaris] ps_buffer_camera_stream_writer_write_buffers resource key: %s, frameid: %llu, timestamp: %llu", *v23, *&v23[8], *&v23[16]);
    }
  }
}

IOSurfaceRef PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(PRM::Camera::PixelBufferStream *this, __IOSurface **a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(&v6);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    BackingIOSurfaceList = PRM::Camera::PixelBufferStream::getBackingIOSurfaceList(&v6);
    return PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(BackingIOSurfaceList, v5);
  }

  return PRM::Camera::BufferPool::getBufferList(v2, a2);
}

IOSurfaceRef PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(PRM::Camera::PixelBufferStream *this, unint64_t *a2)
{
  v4 = *(this + 7);
  if (v4)
  {

    return PRM::Camera::BufferPool::getBufferListSize(v4, a2);
  }

  else
  {
    v8[1] = v2;
    v8[2] = v3;
    BackingIOSurfaceListSize = PRM::Camera::PixelBufferStream::getBackingIOSurfaceListSize(v8);
    return PRM::Camera::PixelBufferStream::inUse(BackingIOSurfaceListSize, v7);
  }
}

PRM::Camera::DataBufferStream *PRM::Camera::PixelBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    PRM::Camera::PixelBufferStream::inUse(v8);
    goto LABEL_8;
  }

  v2 = *(a1 + 56);
  if (!v2)
  {
LABEL_8:
    PRM::Camera::PixelBufferStream::inUse(v8);
    goto LABEL_9;
  }

  (*(*v2 + 32))(v8);
  if (LODWORD(v8[0]) != 2)
  {
LABEL_9:
    PRM::Camera::PixelBufferStream::inUse(&v7);
    goto LABEL_10;
  }

  if (!pixelBuffer)
  {
LABEL_10:
    PRM::Camera::PixelBufferStream::inUse(&v7);
    goto LABEL_11;
  }

  if (CVPixelBufferGetIOSurface(pixelBuffer))
  {
    return (IOSurfaceIsInUseForCategory() != 0);
  }

LABEL_11:
  v4 = PRM::Camera::PixelBufferStream::inUse(&v7);
  return PRM::Camera::DataBufferStream::DataBufferStream(v4, v5, v6);
}

PRM::Camera::DataBufferStream *PRM::Camera::DataBufferStream::DataBufferStream(PRM::Camera::DataBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9D70;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (!a2)
  {
    v17 = 0;
    v6 = asprintf(&v17, "%s: Assertion failed for %s", "DataBufferStream", "pbsGroupWriter");
    v8 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "DataBufferStream";
      v20 = 1024;
      v21 = 626;
      v22 = 2080;
      v23 = "DataBufferStream";
      v24 = 2080;
      v25 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = 0;
    v11 = asprintf(&v17, "%s: Assertion failed for %s", "DataBufferStream", "options");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "DataBufferStream";
      v20 = 1024;
      v21 = 627;
      v22 = 2080;
      v23 = "DataBufferStream";
      v24 = 2080;
      v25 = "options";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v17 = 0;
    v14 = asprintf(&v17, "%s: Assertion failed for %s", "DataBufferStream", "m_options");
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "DataBufferStream";
      v20 = 1024;
      v21 = 632;
      v22 = 2080;
      v23 = "DataBufferStream";
      v24 = 2080;
      v25 = "m_options";
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v9, v10);
    PRM::Camera::DataBufferStream::DataBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  return this;
}

uint64_t PRM::Camera::DataBufferStream::DataBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9D70;
  *(a1 + 40) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (!a2)
  {
    v17 = 0;
    v6 = asprintf(&v17, "%s: Assertion failed for %s", "DataBufferStream", "pbsGroupReader");
    v8 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "DataBufferStream";
      v20 = 1024;
      v21 = 637;
      v22 = 2080;
      v23 = "DataBufferStream";
      v24 = 2080;
      v25 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = 0;
    v11 = asprintf(&v17, "%s: Assertion failed for %s", "DataBufferStream", "options");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "DataBufferStream";
      v20 = 1024;
      v21 = 638;
      v22 = 2080;
      v23 = "DataBufferStream";
      v24 = 2080;
      v25 = "options";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v17 = 0;
    v14 = asprintf(&v17, "%s: Assertion failed for %s", "DataBufferStream", "m_options");
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "DataBufferStream";
      v20 = 1024;
      v21 = 643;
      v22 = 2080;
      v23 = "DataBufferStream";
      v24 = 2080;
      v25 = "m_options";
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v9, v10);
    PRM::Camera::DataBufferStream::DataBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  return a1;
}

void PRM::Camera::DataBufferStream::~DataBufferStream(PRM::Camera::DataBufferStream *this)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(this + 2) == 1)
  {
    v2 = *(this + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
      if (*(this + 18) != 1)
      {
        goto LABEL_6;
      }

      v3 = *(this + 10);
      if (v3)
      {
        (*(*v3 + 8))(v3);
        goto LABEL_6;
      }

      v14 = 0;
      v11 = asprintf(&v14, "%s: Assertion failed for %s", "~DataBufferStream", "m_iosurfaceMetadata");
      v13 = __PSResourceManagerLogSharedInstance(v11, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "~DataBufferStream";
        v16 = 1024;
        v17 = 653;
        v18 = 2080;
        v19 = "~DataBufferStream";
        v20 = 2080;
        v21 = "m_iosurfaceMetadata";
        _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v9 = OSLogFlushBuffers();
      if (v9)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = 0;
      v6 = asprintf(&v14, "%s: Assertion failed for %s", "~DataBufferStream", "m_imageBufferPool");
      v8 = __PSResourceManagerLogSharedInstance(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "~DataBufferStream";
        v16 = 1024;
        v17 = 649;
        v18 = 2080;
        v19 = "~DataBufferStream";
        v20 = 2080;
        v21 = "m_imageBufferPool";
        _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v9 = OSLogFlushBuffers();
      if (v9)
      {
LABEL_18:
        __PSResourceManagerLogSharedInstance(v9, v10);
        PRM::Camera::DataBufferStream::~DataBufferStream();
        goto LABEL_19;
      }
    }

    usleep(0x1E8480u);
LABEL_19:
    abort_with_reason();
    __break(1u);
  }

LABEL_6:
  ps_prm_opts_destroy(*(this + 4));
  *(this + 4) = 0;
  v4 = *(this + 8);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  *(this + 8) = 0;
  v5 = *(this + 10);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  *(this + 10) = 0;
}

{
  PRM::Camera::DataBufferStream::~DataBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA07A0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void PRM::Camera::DataBufferStream::initialize(PRM::Camera::DataBufferStream *this)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  if (*(this + 10))
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  v3 = *(this + 2);
  if ((v3 - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    if (v4 != 1)
    {
      PRM::Camera::DataBufferStream::initialize(v39);
      goto LABEL_56;
    }
  }

  else
  {
    v4 = 2;
  }

  *(this + 18) = v4;
  if (v3 != 1)
  {
    goto LABEL_29;
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  MEMORY[0x25F8C8900](v5, 8);
  v6 = MEMORY[0x25F8C8900](*(this + 2), 1);
  v38[1] = v38;
  MEMORY[0x28223BE20](v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFF0);
  if (v7 >= 0x200)
  {
    v9 = 512;
  }

  else
  {
    v9 = v7;
  }

  bzero(v38 - ((v7 + 15) & 0xFFFFFFFF0), v9);
  v11 = *(this + 4);
  LODWORD(v12) = *(v11 + 152);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *MEMORY[0x277CBECE8];
    v16 = *MEMORY[0x277CC4B50];
    v17 = *MEMORY[0x277CBED28];
    v18 = MEMORY[0x277CBF138];
    v19 = MEMORY[0x277CBF150];
    do
    {
      v20 = *(*(v11 + 160) + v13);
      if (!v20)
      {
        PRM::Camera::DataBufferStream::initialize(v39);
      }

      PRM::Camera::setIOSurfaceName(v20, *(v11 + 56), ++v14, v12, 0, 0, v10);
      Mutable = CFDictionaryCreateMutable(v15, 0, v18, v19);
      CFDictionarySetValue(Mutable, v16, v17);
      CVDataBufferCreateWithIOSurface();
      if (!*&v8[v13])
      {
        PRM::Camera::DataBufferStream::initialize(v39);
      }

      CFRelease(Mutable);
      v11 = *(this + 4);
      v12 = *(v11 + 152);
      v13 += 8;
    }

    while (v14 < v12);
  }

  ps_buffer_add_cvdatabuffer();
  MEMORY[0x25F8C8900](*(this + 2), 4);
  v22 = *(this + 18);
  if (v22 == 1)
  {
    v24 = *(this + 4);
    if (*(v24 + 152))
    {
      v25 = 0;
      do
      {
        v26 = *(*(v24 + 176) + 8 * v25);
        if (!v26)
        {
          PRM::Camera::DataBufferStream::initialize(v39);
        }

        CFRetain(v26);
        v27 = *(this + 4);
        v28 = *(*(v27 + 176) + 8 * v25++);
        PRM::Camera::setIOSurfaceName(v28, *(v27 + 56), v25, *(v27 + 152), 1, 0, v29);
        v24 = *(this + 4);
      }

      while (v25 < *(v24 + 152));
    }

    ps_buffer_add_iosurface();
    v23 = 4;
  }

  else
  {
    if (v22 != 2)
    {
      if (v22)
      {
        PRM::Camera::DataBufferStream::initialize(v39);
      }

      else
      {
        PRM::Camera::DataBufferStream::initialize(v39);
      }

      goto LABEL_56;
    }

    v23 = 90112;
  }

  MEMORY[0x25F8C8900](*(this + 2), v23);
  MEMORY[0x25F8C8C70](*(this + 2));
  v30 = *(this + 2);
  if (v30 == 2)
  {
LABEL_29:
    v31 = MEMORY[0x25F8C8E10](*(this + 3));
  }

  else
  {
    if (v30 != 1)
    {
      goto LABEL_54;
    }

    v31 = MEMORY[0x25F8C8E90](*(this + 2));
  }

  if (!v31)
  {
LABEL_54:
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  v32 = *v31;
  *(this + 6) = *v31;
  if (!v32)
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  v33 = v31[1];
  *(this + 7) = v33;
  if (!v33)
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  if (!v31[2])
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  if (!v31[3])
  {
    PRM::Camera::DataBufferStream::initialize(v39);
  }

  v34 = *(this + 4);
  v35 = *(v34 + 112);
  if (v35 <= 7)
  {
    v36 = 1 << v35;
    if ((v36 & 0x49) != 0)
    {
      *(this + 10) = *(v34 + 68) + *(v34 + 72);
      operator new();
    }

    if ((v36 & 0x92) != 0)
    {
      v37.i64[0] = *(v34 + 68);
      v37.i64[1] = *(v34 + 144);
      *(this + 10) = vaddvq_s32(v37);
      operator new();
    }
  }

  PRM::Camera::DataBufferStream::initialize(v39);
LABEL_56:
  __break(1u);
}

void PRM::Camera::DataBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*(a1 + 48))
  {
    PRM::Camera::DataBufferStream::read(v22);
    goto LABEL_25;
  }

  if (!*(a1 + 64))
  {
LABEL_25:
    PRM::Camera::DataBufferStream::read(v22);
    goto LABEL_26;
  }

  v8 = *(a1 + 72);
  if (v8 == 2)
  {
    if (*(a1 + 88))
    {
      goto LABEL_6;
    }

LABEL_19:
    PRM::Camera::DataBufferStream::read(v22);
LABEL_20:
    (*(**(a1 + 80) + 32))(v21);
    if (LODWORD(v21[0]) == 1)
    {
      if (v21[1])
      {
        MEMORY[0x25F8C9420](a2, a4, v4);
        return;
      }

      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v8 != 1 || !*(a1 + 80))
  {
    goto LABEL_19;
  }

LABEL_6:
  if (!a2)
  {
LABEL_26:
    PRM::Camera::DataBufferStream::read(v22);
    goto LABEL_27;
  }

  if (!a3)
  {
LABEL_27:
    PRM::Camera::DataBufferStream::read(v22);
    goto LABEL_28;
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
LABEL_28:
    PRM::Camera::DataBufferStream::read(v22);
    goto LABEL_29;
  }

  ps_buffer_get_resource_view_index();
  buffer = ps_buffer_serial_data_get_buffer();
  v10 = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
LABEL_29:
    PRM::Camera::DataBufferStream::read(v22);
    goto LABEL_30;
  }

  if (!v10)
  {
LABEL_30:
    PRM::Camera::DataBufferStream::read(v22);
LABEL_31:
    PRM::Camera::DataBufferStream::read(v21);
    goto LABEL_32;
  }

  v11 = *buffer;
  v12 = *v10;
  MEMORY[0x25F8C9570](a2, a4, v11);
  MEMORY[0x25F8C94C0](a2, a4, v12);
  if (v12 != 1)
  {
    return;
  }

  (*(**(a1 + 64) + 32))(v22);
  if (LODWORD(v22[0]) != 3)
  {
    goto LABEL_31;
  }

  v4 = v23;
  if (!v23)
  {
LABEL_32:
    PRM::Camera::DataBufferStream::read(v21);
LABEL_33:
    PRM::Camera::DataBufferStream::read(&v20);
LABEL_34:
    PRM::Camera::DataBufferStream::read(v21);
LABEL_35:
    PRM::Camera::DataBufferStream::read(&v20);
    goto LABEL_36;
  }

  v13 = *(a1 + 72);
  if (v13 == 1)
  {
    goto LABEL_20;
  }

  if (v13 == 2)
  {
    v14 = ps_buffer_serial_data_get_buffer();
    if (v14)
    {
      v15 = CFDataCreateWithBytesNoCopy(*MEMORY[0x277CBECE8], (v14 + 8), *v14, *MEMORY[0x277CBED00]);
      MEMORY[0x25F8C9410](a2, a4, v4, v15);
      return;
    }

    goto LABEL_34;
  }

LABEL_36:
  v16 = v21;
  if (!v13)
  {
    v16 = PRM::Camera::DataBufferStream::read(v21);
  }

  v17 = PRM::Camera::DataBufferStream::read(v16);
  PRM::Camera::DataBufferStream::write(v17, v18, v19);
}

void PRM::Camera::DataBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 40))
  {
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_29;
  }

  if (!*(a1 + 48))
  {
LABEL_29:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_30;
  }

  if (!*(a1 + 64))
  {
LABEL_30:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_31;
  }

  v7 = *(a1 + 72);
  if (v7 == 2)
  {
    if (*(a1 + 88))
    {
      goto LABEL_7;
    }

LABEL_20:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_21;
  }

  if (v7 != 1 || !*(a1 + 80))
  {
    goto LABEL_20;
  }

LABEL_7:
  if (!a2)
  {
LABEL_31:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_32;
  }

  if (!a3)
  {
LABEL_32:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_33;
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
LABEL_33:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_34;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_34:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_35;
  }

  buffer = ps_buffer_serial_data_get_buffer();
  v9 = ps_buffer_serial_data_get_buffer();
  if (!buffer)
  {
LABEL_35:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_36;
  }

  v3 = v9;
  if (!v9)
  {
LABEL_36:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_37;
  }

  v10 = MEMORY[0x25F8C9240](a2, 0);
  *buffer = ps_util_mct_to_mat(v10);
  if (!MEMORY[0x25F8C9160](a2, 0))
  {
LABEL_37:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_38;
  }

  databuffer = ps_resource_databuffer_get_databuffer();
  if (!databuffer)
  {
LABEL_21:
    *v3 = 0;
    return;
  }

  v12 = databuffer;
  *v3 = MEMORY[0x25F8C9260](a2, 0);
  v13 = *(a1 + 64);
  LODWORD(v22) = 3;
  v23 = 0;
  v24 = 0;
  v25 = v12;
  (*(*v13 + 40))(v13, a3, &v22);
  v14 = *(a1 + 72);
  if (v14 != 2)
  {
    if (v14 != 1)
    {
LABEL_41:
      v20 = PRM::Camera::DataBufferStream::write(&v22);
      PRM::Camera::DataBufferStream::getBackingIOSurfaceList(v20, v21);
      return;
    }

    if (MEMORY[0x25F8C91C0](a2, 0) == 1)
    {
      iosurface_metadata = ps_resource_databuffer_get_iosurface_metadata();
      v16 = *(a1 + 80);
      LODWORD(v22) = 1;
      v24 = 0;
      v25 = 0;
      v23 = iosurface_metadata;
      (*(*v16 + 40))(v16, a3, &v22);
      return;
    }

    goto LABEL_39;
  }

  if (MEMORY[0x25F8C91C0](a2, 0))
  {
LABEL_38:
    PRM::Camera::DataBufferStream::write(&v22);
LABEL_39:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_40;
  }

  cfdata_metadata = ps_resource_databuffer_get_cfdata_metadata();
  v18 = ps_buffer_serial_data_get_buffer();
  if (!v18)
  {
LABEL_40:
    PRM::Camera::DataBufferStream::write(&v22);
    goto LABEL_41;
  }

  v19 = v18;
  if (cfdata_metadata)
  {
    v26.length = CFDataGetLength(cfdata_metadata);
    *v19 = v26.length;
    v26.location = 0;
    CFDataGetBytes(cfdata_metadata, v26, v19 + 8);
  }

  else
  {
    *v18 = 0;
  }
}

IOSurfaceRef PRM::Camera::DataBufferStream::getBackingIOSurfaceList(PRM::Camera::DataBufferStream *this, __IOSurface **a2)
{
  v2 = *(this + 8);
  if (!v2)
  {
    PRM::Camera::DataBufferStream::getBackingIOSurfaceList(&v6);
    goto LABEL_7;
  }

  if (!a2)
  {
LABEL_7:
    BackingIOSurfaceList = PRM::Camera::DataBufferStream::getBackingIOSurfaceList(&v6);
    return PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(BackingIOSurfaceList, v5);
  }

  return PRM::Camera::BufferPool::getBufferList(v2, a2);
}

IOSurfaceRef PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(PRM::Camera::DataBufferStream *this, unint64_t *a2)
{
  v4 = *(this + 8);
  if (v4)
  {

    return PRM::Camera::BufferPool::getBufferListSize(v4, a2);
  }

  else
  {
    v8[1] = v2;
    v8[2] = v3;
    BackingIOSurfaceListSize = PRM::Camera::DataBufferStream::getBackingIOSurfaceListSize(v8);
    return PRM::Camera::DataBufferStream::inUse(BackingIOSurfaceListSize, v7);
  }
}

uint64_t PRM::Camera::DataBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    PRM::Camera::DataBufferStream::inUse(v8);
    goto LABEL_8;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
LABEL_8:
    PRM::Camera::DataBufferStream::inUse(v8);
    goto LABEL_9;
  }

  (*(*v2 + 32))(v8);
  if (LODWORD(v8[0]) != 3)
  {
LABEL_9:
    PRM::Camera::DataBufferStream::inUse(&v7);
    goto LABEL_10;
  }

  if (!v8[3])
  {
LABEL_10:
    PRM::Camera::DataBufferStream::inUse(&v7);
    goto LABEL_11;
  }

  if (CVDataBufferGetIOSurface())
  {
    return IOSurfaceIsInUseForCategory() != 0;
  }

LABEL_11:
  v4 = PRM::Camera::DataBufferStream::inUse(&v7);
  return PRM::Camera::JasperBufferStream::JasperBufferStream(v4, v5, v6);
}

uint64_t PRM::Camera::JasperBufferStream::JasperBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9DC0;
  *(a1 + 40) = 0;
  *(a1 + 160) = 0;
  if (!a2)
  {
    v17 = 0;
    v6 = asprintf(&v17, "%s: Assertion failed for %s", "JasperBufferStream", "pbsGroupReader");
    v8 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "JasperBufferStream";
      v20 = 1024;
      v21 = 1005;
      v22 = 2080;
      v23 = "JasperBufferStream";
      v24 = 2080;
      v25 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = 0;
    v11 = asprintf(&v17, "%s: Assertion failed for %s", "JasperBufferStream", "options");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "JasperBufferStream";
      v20 = 1024;
      v21 = 1006;
      v22 = 2080;
      v23 = "JasperBufferStream";
      v24 = 2080;
      v25 = "options";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v17 = 0;
    v14 = asprintf(&v17, "%s: Assertion failed for %s", "JasperBufferStream", "m_options");
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "JasperBufferStream";
      v20 = 1024;
      v21 = 1011;
      v22 = 2080;
      v23 = "JasperBufferStream";
      v24 = 2080;
      v25 = "m_options";
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v9, v10);
    PRM::Camera::JasperBufferStream::JasperBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  return a1;
}

PRM::Camera::JasperBufferStream *PRM::Camera::JasperBufferStream::JasperBufferStream(PRM::Camera::JasperBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9DC0;
  *(this + 10) = 0;
  *(this + 40) = 0;
  if (!a2)
  {
    v17 = 0;
    v6 = asprintf(&v17, "%s: Assertion failed for %s", "JasperBufferStream", "pbsGroupWriter");
    v8 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "JasperBufferStream";
      v20 = 1024;
      v21 = 1024;
      v22 = 2080;
      v23 = "JasperBufferStream";
      v24 = 2080;
      v25 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = 0;
    v11 = asprintf(&v17, "%s: Assertion failed for %s", "JasperBufferStream", "options");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "JasperBufferStream";
      v20 = 1024;
      v21 = 1025;
      v22 = 2080;
      v23 = "JasperBufferStream";
      v24 = 2080;
      v25 = "options";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v17 = 0;
    v14 = asprintf(&v17, "%s: Assertion failed for %s", "JasperBufferStream", "m_options");
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "JasperBufferStream";
      v20 = 1024;
      v21 = 1030;
      v22 = 2080;
      v23 = "JasperBufferStream";
      v24 = 2080;
      v25 = "m_options";
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v9, v10);
    PRM::Camera::JasperBufferStream::JasperBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  return this;
}

void PRM::Camera::JasperBufferStream::~JasperBufferStream(PRM::Camera::JasperBufferStream *this)
{
  v2 = 0;
  v24 = *MEMORY[0x277D85DE8];
  do
  {
    if (*(this + 2) != 1)
    {
      goto LABEL_7;
    }

    v3 = *(this + v2 + 128);
    if (!v3)
    {
      v16 = 0;
      v8 = asprintf(&v16, "%s: Assertion failed for %s", "~JasperBufferStream", "m_imageBufferPool[i]");
      v10 = __PSResourceManagerLogSharedInstance(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "~JasperBufferStream";
        v18 = 1024;
        v19 = 1045;
        v20 = 2080;
        v21 = "~JasperBufferStream";
        v22 = 2080;
        v23 = "m_imageBufferPool[i]";
        _os_log_impl(&dword_25EA3A000, v10, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v11 = OSLogFlushBuffers();
      if (!v11)
      {
        goto LABEL_22;
      }

LABEL_20:
      __PSResourceManagerLogSharedInstance(v11, v12);
      PRM::Camera::JasperBufferStream::~JasperBufferStream();
LABEL_21:
      abort_with_reason();
      __break(1u);
    }

    (*(*v3 + 8))(v3);
    if (*(this + 40) != 1)
    {
      goto LABEL_7;
    }

    v4 = *(this + v2 + 168);
    if (!v4)
    {
      v16 = 0;
      v13 = asprintf(&v16, "%s: Assertion failed for %s", "~JasperBufferStream", "m_iosurfaceMetadata[i]");
      v15 = __PSResourceManagerLogSharedInstance(v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        buf[0] = 136315906;
        *&buf[1] = "~JasperBufferStream";
        v18 = 1024;
        v19 = 1049;
        v20 = 2080;
        v21 = "~JasperBufferStream";
        v22 = 2080;
        v23 = "m_iosurfaceMetadata[i]";
        _os_log_impl(&dword_25EA3A000, v15, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v11 = OSLogFlushBuffers();
      if (v11)
      {
        goto LABEL_20;
      }

LABEL_22:
      usleep(0x1E8480u);
      goto LABEL_21;
    }

    (*(*v4 + 8))(v4);
LABEL_7:
    v5 = this + v2;
    v6 = *(this + v2 + 128);
    if (v6)
    {
      (*(*v6 + 24))(v6);
      *(v5 + 16) = 0;
    }

    v7 = *(v5 + 21);
    if (v7)
    {
      (*(*v7 + 24))(v7);
      *(v5 + 21) = 0;
    }

    v2 += 8;
  }

  while (v2 != 32);
  ps_prm_opts_destroy(*(this + 4));
  *(this + 4) = 0;
}

{
  PRM::Camera::JasperBufferStream::~JasperBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA1DC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void PRM::Camera::JasperBufferStream::initialize(PRM::Camera::JasperBufferStream *this)
{
  v48 = *MEMORY[0x277D85DE8];
  v1 = *(this + 4);
  if (!v1)
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  if (*(this + 10))
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  v3 = *(this + 2);
  if ((v3 - 3) <= 0xFFFFFFFD)
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  v4 = *(v1 + 108);
  if (v4)
  {
    if (v4 != 1)
    {
      PRM::Camera::JasperBufferStream::initialize(v47);
      goto LABEL_71;
    }
  }

  else
  {
    v4 = 2;
  }

  *(this + 40) = v4;
  if (v3 != 1)
  {
    goto LABEL_36;
  }

  v5 = *(this + 2);
  if (!v5)
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  MEMORY[0x25F8C8900](v5, 8);
  MEMORY[0x25F8C8900](*(this + 2), 1);
  v6 = 4;
  do
  {
    MEMORY[0x25F8C8900](*(this + 2), 8);
    v7 = MEMORY[0x25F8C8900](*(this + 2), 1);
    --v6;
  }

  while (v6);
  v45 = &v45;
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFF0);
  if (v8 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v8;
  }

  bzero(&v45 - ((v8 + 15) & 0xFFFFFFFF0), v10);
  v11 = *(this + 4);
  if (*(v11 + 152))
  {
    v12 = 0;
    v13 = 0;
    v14 = *MEMORY[0x277CBECE8];
    v15 = *MEMORY[0x277CC4B50];
    v16 = *MEMORY[0x277CBED28];
    v17 = MEMORY[0x277CBF138];
    v18 = MEMORY[0x277CBF150];
    do
    {
      if (!*(*(v11 + 160) + v12))
      {
        PRM::Camera::JasperBufferStream::initialize(v47);
      }

      Mutable = CFDictionaryCreateMutable(v14, 0, v17, v18);
      CFDictionarySetValue(Mutable, v15, v16);
      CVDataBufferCreateWithIOSurface();
      if (!*&v9[v12])
      {
        PRM::Camera::JasperBufferStream::initialize(v47);
      }

      CFRelease(Mutable);
      PRM::Camera::setIOSurfaceName(*(*(*(this + 4) + 160) + v12), *(*(this + 4) + 56), ++v13, *(*(this + 4) + 152), 0, 0, v20);
      v11 = *(this + 4);
      v12 += 8;
    }

    while (v13 < *(v11 + 152));
  }

  ps_buffer_add_cvdatabuffer();
  v21 = 4;
  do
  {
    MEMORY[0x25F8C8900](*(this + 2), 4);
    --v21;
  }

  while (v21);
  v22 = *(this + 40);
  if (v22 == 1)
  {
    v24 = *(this + 4);
    if (*(v24 + 152))
    {
      v25 = 0;
      do
      {
        v26 = *(*(v24 + 176) + 8 * v25);
        if (!v26)
        {
          PRM::Camera::JasperBufferStream::initialize(v47);
        }

        CFRetain(v26);
        v27 = *(this + 4);
        v28 = *(*(v27 + 176) + 8 * v25++);
        PRM::Camera::setIOSurfaceName(v28, *(v27 + 56), v25, *(v27 + 152), 1, 0, v29);
        v24 = *(this + 4);
      }

      while (v25 < *(v24 + 152));
    }

    ps_buffer_add_iosurface();
    v30 = 4;
    do
    {
      MEMORY[0x25F8C8900](*(this + 2), 4);
      --v30;
    }

    while (v30);
  }

  else
  {
    if (v22 != 2)
    {
      if (v22)
      {
        PRM::Camera::JasperBufferStream::initialize(v47);
      }

      else
      {
        PRM::Camera::JasperBufferStream::initialize(v47);
      }

      goto LABEL_71;
    }

    v23 = 4;
    do
    {
      MEMORY[0x25F8C8900](*(this + 2), 90112);
      --v23;
    }

    while (v23);
  }

  MEMORY[0x25F8C8C70](*(this + 2));
  v31 = *(this + 2);
  if (v31 == 2)
  {
LABEL_36:
    v32 = MEMORY[0x25F8C8E10](*(this + 3));
  }

  else
  {
    if (v31 != 1)
    {
      goto LABEL_69;
    }

    v32 = MEMORY[0x25F8C8E90](*(this + 2));
  }

  if (!v32)
  {
LABEL_69:
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  v33 = *v32;
  *(this + 6) = *v32;
  if (!v33)
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  v34 = v32[1];
  *(this + 7) = v34;
  if (!v34)
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  v35 = 0;
  v36 = (this + 96);
  do
  {
    v37 = v32[v35 + 2];
    *(v36 - 4) = v37;
    if (!v37)
    {
      PRM::Camera::JasperBufferStream::initialize(v47);
    }

    v38 = v32[v35 + 3];
    *v36 = v38;
    if (!v38)
    {
      PRM::Camera::JasperBufferStream::initialize(v47);
    }

    ++v36;
    v35 += 2;
  }

  while (v35 != 8);
  if (!v32[10])
  {
    PRM::Camera::JasperBufferStream::initialize(v47);
  }

  v39 = 0;
  memset(v47, 0, sizeof(v47));
  do
  {
    v40 = v32[v39 + 11];
    *(v47 + v39 * 8) = v40;
    if (!v40)
    {
      PRM::Camera::JasperBufferStream::initialize(&v46);
    }

    ++v39;
  }

  while (v39 != 4);
  v41 = *(this + 4);
  v42 = *(v41 + 112);
  if (v42 <= 7)
  {
    v43 = 1 << v42;
    if ((v43 & 0x49) != 0)
    {
      *(this + 10) = *(v41 + 68) + *(v41 + 72);
      operator new();
    }

    if ((v43 & 0x92) != 0)
    {
      v44.i64[0] = *(v41 + 68);
      v44.i64[1] = *(v41 + 144);
      *(this + 10) = vaddvq_s32(v44);
      operator new();
    }
  }

  PRM::Camera::JasperBufferStream::initialize(&v46);
LABEL_71:
  __break(1u);
}

void PRM::Camera::JasperBufferStream::read(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48[4] = *MEMORY[0x277D85DE8];
  v7 = a1 + 128;
  v8 = a1 + 168;
  v9 = 4;
  v10 = (a1 + 128);
  do
  {
    if (!*(v10 - 8))
    {
      PRM::Camera::JasperBufferStream::read(v44);
LABEL_51:
      PRM::Camera::JasperBufferStream::read(v44);
LABEL_52:
      PRM::Camera::JasperBufferStream::read(v44);
LABEL_53:
      PRM::Camera::JasperBufferStream::read(v44);
LABEL_54:
      PRM::Camera::JasperBufferStream::read(v44);
LABEL_55:
      PRM::Camera::JasperBufferStream::read(&v41);
LABEL_56:
      PRM::Camera::JasperBufferStream::read(&v41);
LABEL_57:
      PRM::Camera::JasperBufferStream::read(&v38);
LABEL_58:
      PRM::Camera::JasperBufferStream::read(&v38);
LABEL_59:
      PRM::Camera::JasperBufferStream::read(&v38);
LABEL_60:
      PRM::Camera::JasperBufferStream::read(&v38);
LABEL_61:
      PRM::Camera::JasperBufferStream::read(&v38);
      goto LABEL_62;
    }

    if (!*v10)
    {
      goto LABEL_51;
    }

    v11 = *(a1 + 160);
    if (v11 == 2)
    {
      if (!v10[9])
      {
        goto LABEL_54;
      }
    }

    else if (v11 != 1 || !v10[5])
    {
      goto LABEL_54;
    }

    ++v10;
    --v9;
  }

  while (v9);
  if (!a2)
  {
LABEL_62:
    PRM::Camera::JasperBufferStream::read(v44);
    goto LABEL_63;
  }

  if (!a3)
  {
LABEL_63:
    PRM::Camera::JasperBufferStream::read(v44);
LABEL_64:
    PRM::Camera::JasperBufferStream::read(v44);
  }

  if (MEMORY[0x25F8C9190](a2) <= a4)
  {
    goto LABEL_64;
  }

  v36 = a4;
  v37 = a2;
  ps_buffer_get_resource_view_index();
  buffer = ps_buffer_serial_data_get_buffer();
  v12 = ps_buffer_serial_data_get_buffer();
  for (i = 0; i != 4; ++i)
  {
    v14 = ps_buffer_serial_data_get_buffer();
    if (!v14)
    {
      goto LABEL_52;
    }

    v48[i] = *v14;
    v15 = ps_buffer_serial_data_get_buffer();
    if (!v15)
    {
      goto LABEL_53;
    }

    v40[i] = *v15;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    if (v17)
    {
      v17 = 1;
    }

    else
    {
      v17 = v40[v16];
    }

    ++v16;
  }

  while (v16 != 4);
  MEMORY[0x25F8C94C0](a2, v36, *v12);
  MEMORY[0x25F8C9570](a2, v36, *buffer);
  if (v17)
  {
    MEMORY[0x25F8C9500](a2, v36, v40);
    MEMORY[0x25F8C94F0](a2, v36, v48);
    v18 = 0;
    LODWORD(v44[0]) = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    memset(v43, 0, sizeof(v43));
    v19 = v44;
    do
    {
      if (v40[v18] == 1)
      {
        (*(**(v7 + 8 * v18) + 32))(&v41);
        v20 = v42;
        *v19 = v41;
        *(v19 + 1) = v20;
        if (*v19 != 3)
        {
          goto LABEL_55;
        }

        v21 = v19[3];
        if (!v21)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v21 = 0;
      }

      *(v43 + v18++) = v21;
      v19 += 4;
    }

    while (v18 != 4);
    v22 = *(a1 + 160);
    if (v22 == 1)
    {
      v29 = 0;
      v41 = 0u;
      v42 = 0u;
      do
      {
        if (v40[v29] == 1)
        {
          (*(**(v8 + 8 * v29) + 32))(&v38);
          if (v38 != 1)
          {
            goto LABEL_57;
          }

          v30 = v39;
          if (!v39)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v30 = 0;
        }

        *(&v41 + v29++) = v30;
      }

      while (v29 != 4);
      MEMORY[0x25F8C94E0](a2, v36, v43, &v41);
    }

    else if (v22 == 2)
    {
      v23 = 0;
      v41 = 0u;
      v42 = 0u;
      v24 = *MEMORY[0x277CBECE8];
      v25 = *MEMORY[0x277CBED00];
      do
      {
        v26 = v40[v23];
        v27 = ps_buffer_serial_data_get_buffer();
        if (v26 == 1)
        {
          if (!v27)
          {
            goto LABEL_59;
          }

          v28 = *v27;
          if (!*v27)
          {
            goto LABEL_61;
          }
        }

        else
        {
          if (!v27)
          {
            goto LABEL_60;
          }

          v28 = 0;
        }

        *(&v41 + v23++) = CFDataCreateWithBytesNoCopy(v24, (v27 + 8), v28, v25);
      }

      while (v23 != 4);
      MEMORY[0x25F8C94D0](v37, v36, v43, &v41);
    }

    else
    {
      v31 = &v41;
      if (!v22)
      {
        v31 = PRM::Camera::JasperBufferStream::read(&v41);
      }

      v32 = PRM::Camera::JasperBufferStream::read(v31);
      PRM::Camera::JasperBufferStream::write(v32, v33, v34);
    }
  }
}

void PRM::Camera::JasperBufferStream::write(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + 128);
  v6 = 4;
  v7 = (a1 + 128);
  do
  {
    if (!*(v7 - 8))
    {
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_39:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_40:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_41:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_42:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_43:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_44:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_45:
      PRM::Camera::JasperBufferStream::write(&v37);
LABEL_46:
      PRM::Camera::JasperBufferStream::write(&v37);
      goto LABEL_47;
    }

    if (!*v7)
    {
      goto LABEL_39;
    }

    v8 = *(a1 + 160);
    if (v8 == 2)
    {
      if (!v7[9])
      {
        goto LABEL_42;
      }
    }

    else if (v8 != 1 || !v7[5])
    {
      goto LABEL_42;
    }

    ++v7;
    --v6;
  }

  while (v6);
  if (!a2)
  {
LABEL_47:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_48;
  }

  if (!a3)
  {
LABEL_48:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_49;
  }

  if (MEMORY[0x25F8C9190](a2) != 1)
  {
LABEL_49:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_50;
  }

  if (ps_buffer_get_resource_view_index() >= *(a1 + 40))
  {
LABEL_50:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_51;
  }

  if (!MEMORY[0x25F8C91A0](a2, 0))
  {
LABEL_51:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_52;
  }

  timestamp_array = ps_resource_jasperbuffer_get_timestamp_array();
  if (!timestamp_array)
  {
LABEL_52:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_53;
  }

  v10 = timestamp_array;
  databuffer_array = ps_resource_jasperbuffer_get_databuffer_array();
  if (!databuffer_array)
  {
LABEL_53:
    PRM::Camera::JasperBufferStream::write(&v37);
    goto LABEL_54;
  }

  v12 = databuffer_array;
  v13 = *(a1 + 160);
  if (v13 == 2)
  {
    cfdata_metadata_array = ps_resource_jasperbuffer_get_cfdata_metadata_array();
    if (!cfdata_metadata_array)
    {
      goto LABEL_55;
    }

    v14 = cfdata_metadata_array;
    iosurface_metadata_array = 0;
LABEL_23:
    buffer = ps_buffer_serial_data_get_buffer();
    v17 = MEMORY[0x25F8C9240](a2, 0);
    *buffer = ps_util_mct_to_mat(v17);
    v18 = ps_buffer_serial_data_get_buffer();
    v19 = 0;
    *v18 = MEMORY[0x25F8C9260](a2, 0);
    while (1)
    {
      v20 = ps_buffer_serial_data_get_buffer();
      if (!v20)
      {
        goto LABEL_40;
      }

      v21 = v20;
      v22 = ps_buffer_serial_data_get_buffer();
      if (!v22)
      {
        goto LABEL_41;
      }

      v23 = v22;
      *v21 = ps_util_mct_to_mat(*(v10 + 8 * v19));
      v24 = *(v12 + 8 * v19);
      if (v24)
      {
        *v23 = 1;
        v25 = *v5;
        LODWORD(v37) = 3;
        v38 = 0;
        v39 = 0;
        v40 = v24;
        (*(*v25 + 40))(v25, a3, &v37);
        v26 = *(a1 + 160);
        if (v26 == 2)
        {
          v29 = ps_buffer_serial_data_get_buffer();
          if (!v29)
          {
            goto LABEL_44;
          }

          v30 = v29;
          v31 = *(v14 + 8 * v19);
          if (!v31)
          {
            goto LABEL_45;
          }

          Length = CFDataGetLength(v31);
          *v30 = Length;
          if (!Length)
          {
            goto LABEL_46;
          }

          v41.length = Length;
          v41.location = 0;
          CFDataGetBytes(*(v14 + 8 * v19), v41, (v30 + 8));
        }

        else
        {
          if (v26 != 1)
          {
            goto LABEL_56;
          }

          v27 = *(iosurface_metadata_array + 8 * v19);
          if (!v27)
          {
            goto LABEL_43;
          }

          v28 = v5[5];
          LODWORD(v37) = 1;
          v38 = v27;
          v39 = 0;
          v40 = 0;
          (*(*v28 + 40))(v28, a3, &v37);
        }
      }

      else
      {
        *v23 = 0;
      }

      ++v19;
      ++v5;
      if (v19 == 4)
      {
        return;
      }
    }
  }

  if (v13 != 1)
  {
    goto LABEL_57;
  }

  iosurface_metadata_array = ps_resource_jasperbuffer_get_iosurface_metadata_array();
  if (iosurface_metadata_array)
  {
    v14 = 0;
    goto LABEL_23;
  }

LABEL_54:
  PRM::Camera::JasperBufferStream::write(&v37);
LABEL_55:
  PRM::Camera::JasperBufferStream::write(&v37);
LABEL_56:
  PRM::Camera::JasperBufferStream::write(&v37);
LABEL_57:
  v33 = PRM::Camera::JasperBufferStream::write(&v37);
  PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(v33, v34);
}

IOSurfaceRef PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(PRM::Camera::JasperBufferStream *this, __IOSurface **a2)
{
  v4 = 0;
  v5 = (this + 128);
  do
  {
    if (!v5[v4])
    {
      v10[1] = v2;
      v10[2] = v3;
      BackingIOSurfaceList = PRM::Camera::JasperBufferStream::getBackingIOSurfaceList(v10);
      return PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(BackingIOSurfaceList, v9);
    }

    ++v4;
  }

  while (v4 != 4);
  v6 = *v5;

  return PRM::Camera::BufferPool::getBufferList(v6, a2);
}

IOSurfaceRef PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(PRM::Camera::JasperBufferStream *this, unint64_t *a2)
{
  v4 = 0;
  v5 = (this + 128);
  do
  {
    if (!v5[v4])
    {
      v10[1] = v2;
      v10[2] = v3;
      BackingIOSurfaceListSize = PRM::Camera::JasperBufferStream::getBackingIOSurfaceListSize(v10);
      return PRM::Camera::JasperBufferStream::inUse(BackingIOSurfaceListSize, v9);
    }

    ++v4;
  }

  while (v4 != 4);
  v6 = *v5;

  return PRM::Camera::BufferPool::getBufferListSize(v6, a2);
}

uint64_t PRM::Camera::JasperBufferStream::inUse(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    LOBYTE(v3) = 0;
    v4 = a1 + 128;
    while (1)
    {
      v5 = *(v4 + v2);
      if (!v5)
      {
        break;
      }

      (*(*v5 + 32))(v11);
      if (LODWORD(v11[0]) != 3)
      {
        goto LABEL_13;
      }

      if (!v11[3])
      {
        goto LABEL_14;
      }

      if (!CVDataBufferGetIOSurface())
      {
        goto LABEL_15;
      }

      v3 = v3 || IOSurfaceIsInUseForAnyOtherCategory() != 0;
      v2 += 8;
      if (v2 == 32)
      {
        return v3;
      }
    }

    PRM::Camera::JasperBufferStream::inUse(v11);
LABEL_13:
    PRM::Camera::JasperBufferStream::inUse(&v10);
LABEL_14:
    PRM::Camera::JasperBufferStream::inUse(&v10);
LABEL_15:
    PRM::Camera::JasperBufferStream::inUse(&v10);
  }

  PRM::Camera::JasperBufferStream::inUse(v11);
  return PRM::Camera::PearlBufferStream::PearlBufferStream(v7, v8, v9);
}

uint64_t PRM::Camera::PearlBufferStream::PearlBufferStream(uint64_t a1, uint64_t a2, const char **a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_2870B9E10;
  *(a1 + 40) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (!a2)
  {
    v17 = 0;
    v6 = asprintf(&v17, "%s: Assertion failed for %s", "PearlBufferStream", "pbsGroupReader");
    v8 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "PearlBufferStream";
      v20 = 1024;
      v21 = 1568;
      v22 = 2080;
      v23 = "PearlBufferStream";
      v24 = 2080;
      v25 = "pbsGroupReader";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = 0;
    v11 = asprintf(&v17, "%s: Assertion failed for %s", "PearlBufferStream", "options");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "PearlBufferStream";
      v20 = 1024;
      v21 = 1569;
      v22 = 2080;
      v23 = "PearlBufferStream";
      v24 = 2080;
      v25 = "options";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(a1 + 24) = a2;
  *(a1 + 8) = 2;
  ps_prm_opts_copy(a3);
  *(a1 + 32) = v4;
  if (!v4)
  {
    v17 = 0;
    v14 = asprintf(&v17, "%s: Assertion failed for %s", "PearlBufferStream", "m_options");
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "PearlBufferStream";
      v20 = 1024;
      v21 = 1574;
      v22 = 2080;
      v23 = "PearlBufferStream";
      v24 = 2080;
      v25 = "m_options";
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v9, v10);
    PRM::Camera::PearlBufferStream::PearlBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return a1;
}

PRM::Camera::PearlBufferStream *PRM::Camera::PearlBufferStream::PearlBufferStream(PRM::Camera::PearlBufferStream *this, PSShbufferGroupWriter *a2, PSResourceManagerOptions *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_2870B9E10;
  *(this + 10) = 0;
  *(this + 32) = 0;
  *(this + 17) = 0;
  if (!a2)
  {
    v17 = 0;
    v6 = asprintf(&v17, "%s: Assertion failed for %s", "PearlBufferStream", "pbsGroupWriter");
    v8 = __PSResourceManagerLogSharedInstance(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "PearlBufferStream";
      v20 = 1024;
      v21 = 1584;
      v22 = 2080;
      v23 = "PearlBufferStream";
      v24 = 2080;
      v25 = "pbsGroupWriter";
      _os_log_impl(&dword_25EA3A000, v8, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v17 = 0;
    v11 = asprintf(&v17, "%s: Assertion failed for %s", "PearlBufferStream", "options");
    v13 = __PSResourceManagerLogSharedInstance(v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "PearlBufferStream";
      v20 = 1024;
      v21 = 1585;
      v22 = 2080;
      v23 = "PearlBufferStream";
      v24 = 2080;
      v25 = "options";
      _os_log_impl(&dword_25EA3A000, v13, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  *(this + 2) = a2;
  *(this + 2) = 1;
  ps_prm_opts_copy(a3);
  *(this + 4) = v4;
  if (!v4)
  {
    v17 = 0;
    v14 = asprintf(&v17, "%s: Assertion failed for %s", "PearlBufferStream", "m_options");
    v16 = __PSResourceManagerLogSharedInstance(v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v19 = "PearlBufferStream";
      v20 = 1024;
      v21 = 1590;
      v22 = 2080;
      v23 = "PearlBufferStream";
      v24 = 2080;
      v25 = "m_options";
      _os_log_impl(&dword_25EA3A000, v16, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
    }

    v9 = OSLogFlushBuffers();
    if (!v9)
    {
LABEL_16:
      usleep(0x1E8480u);
      goto LABEL_18;
    }

LABEL_17:
    __PSResourceManagerLogSharedInstance(v9, v10);
    PRM::Camera::PearlBufferStream::PearlBufferStream();
LABEL_18:
    abort_with_reason();
    __break(1u);
  }

  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return this;
}

void PRM::Camera::PearlBufferStream::~PearlBufferStream(PRM::Camera::PearlBufferStream *this)
{
  v21 = *MEMORY[0x277D85DE8];
  for (i = 96; i != 128; i += 8)
  {
    if (*(this + 2) == 1)
    {
      (*(**(this + i) + 8))(*(this + i));
    }

    v3 = *(this + i);
    if (v3)
    {
      (*(*v3 + 24))(v3);
    }

    *(this + i) = 0;
  }

  v4 = *(this + 4);
  if (v4[27] == 1)
  {
    v5 = *(this + 17);
    if (!v5)
    {
      v12 = 0;
      v7 = asprintf(&v12, "%s: Assertion failed for %s", "~PearlBufferStream", "m_iosurfaceMetadata");
      v9 = __PSResourceManagerLogSharedInstance(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315906;
        v14 = "~PearlBufferStream";
        v15 = 1024;
        v16 = 1611;
        v17 = 2080;
        v18 = "~PearlBufferStream";
        v19 = 2080;
        v20 = "m_iosurfaceMetadata";
        _os_log_impl(&dword_25EA3A000, v9, OS_LOG_TYPE_FAULT, "%s:%d %s: Assertion failed for %s", buf, 0x26u);
      }

      v10 = OSLogFlushBuffers();
      if (v10)
      {
        __PSResourceManagerLogSharedInstance(v10, v11);
        PRM::Camera::PearlBufferStream::~PearlBufferStream();
      }

      else
      {
        usleep(0x1E8480u);
      }

      abort_with_reason();
      __break(1u);
    }

    (*(*v5 + 8))(v5);
    v4 = *(this + 4);
  }

  ps_prm_opts_destroy(v4);
  *(this + 4) = 0;
  v6 = *(this + 17);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  *(this + 17) = 0;
}

{
  PRM::Camera::PearlBufferStream::~PearlBufferStream(this);

  JUMPOUT(0x25F8C7C50);
}

void sub_25EAA373C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}