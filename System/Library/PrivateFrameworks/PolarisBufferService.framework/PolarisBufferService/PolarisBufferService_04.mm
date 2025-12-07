void sub_25EC1834C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EC18414(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,server_info_s>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,server_info_s>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,server_info_s>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,server_info_s>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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
    if (*&v5 <= v4)
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

  if (*(v9 + 4) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__shared_ptr_emplace<PSClientProxy>::__shared_ptr_emplace[abi:ne200100]<int &,int &,std::allocator<PSClientProxy>,0>(void *a1, int *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2870CE840;
  PSClientProxy::PSClientProxy((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<PSClientProxy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2870CE840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25F8CA500);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279A4D3D0, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

const void **std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, __int128 **a4)
{
  v6 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_18;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v13 + 2, a2))
  {
    goto LABEL_17;
  }

  return v13;
}

void std::vector<std::pair<std::string,unsigned int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<std::string,unsigned int>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<std::string,unsigned int>>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_18;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v9)
    {
      v12 = v7 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v7;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v8)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_17;
  }

  return v14;
}

void sub_25EC18EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25EC18FA4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,server_info_s>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,resource_info_s *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,resource_info_s *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,resource_info_s *>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void **std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::shared_ptr<PSClientProxy>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t _create_string_id_nop()
{
  v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v0)
  {
    _create_string_id_nop_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return 0;
}

void ps_telemetry_hook_register(uint64_t (*a1)(), uint64_t (*a2)())
{
  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    ps_telemetry_hook_register_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
  }

  _emit_event[0] = a1;
  _create_string_id = a2;
}

uint64_t ps_telemetry_hook_create_string_id()
{
  v0 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
  if (v0)
  {
    ps_telemetry_hook_create_string_id_cold_1(v0, v1, v2, v3, v4, v5, v6, v7);
  }

  return _create_string_id();
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void ps_buffer_resource_get_index_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Invalid view index\n", "ps_buffer_resource_get_index");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Invalid view index\n", v3, v4, v5, v6, v14, v15);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  ps_buffer_get_resource_view_index_cold_1(v13);
}

void ps_buffer_get_resource_view_index_cold_1(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Invalid view index\n", "ps_buffer_get_resource_view_index");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Invalid view index\n", v3, v4, v5, v6, v14, v15);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  PSShbufferGroup::~PSShbufferGroup(v13);
}

void PSShbufferGroup::addResinfo()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFER";
    *&v6[12] = 2080;
    *&v6[14] = "addResinfo";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s: %s (OOM)", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSShbufferGroup::updateResourceFactoryStatus(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v1, v2, "%s: updateResourceFactoryStatus error\n", v3, v4, v5, v6, v7, DWORD2(v7));
  }

  abort();
}

void PSShbufferGroup::updateResourceFactoryStatus()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315138;
    v2 = "SHBUFFER";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_DEBUG, "%s: updateResourceFactoryStatus error\n", &v1, 0xCu);
  }

  abort();
}

void PSShbufferGroup::setupSerialDataLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupSerialData error\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSShbufferGroup::setupIOSurfaceLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupIOSurface error\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSShbufferGroup::setupCVPixelBufferLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupCVPixelBuffer error\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSShbufferGroup::setupCVDataBufferLines()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: setupCVDataBuffer error\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSShbufferGroup::finalizeSetup(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "SHBUFFER";
    v7 = 2080;
    v8 = "finalizeSetup";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s- %s: sanity check failed id: %d sanity: %d\n", &v5, 0x22u);
  }

  abort();
}

void PSShbufferGroup::finalizeSetup(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v7 = 136315394;
    *&v7[4] = "SHBUFFER";
    *&v7[12] = 2080;
    *&v7[14] = "finalizeSetup";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v1, v2, "%s- %s: unknown client resource type\n", v3, v4, v5, v6, *v7, *&v7[8], *&v7[16]);
  }

  abort();
}

void PSShbufferGroup::finalizeSetup()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s- finalizeSetup lines: OOM\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "SHBUFFER";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s- finalizeSetup: invalid number of resources\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

uint64_t PSShbufferGroup::getBufflets(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Not enough memory :(");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v8 = 136315394;
    v9 = "getBufflets";
    v10 = 1024;
    v11 = 506;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Not enough memory :(", &v8, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "getBufflets";
      v10 = 1024;
      v11 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v5 = OUTLINED_FUNCTION_1();
  return PSShbufferGroupReader::requestShbufferGroupList(v5, v6);
}

void PSShbufferGroupReader::addLockLessSelector()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPREADER";
    *&v6[12] = 2080;
    *&v6[14] = "addLockLessSelector";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPREADER";
    *&v6[12] = 2080;
    *&v6[14] = "addLockLessSelector";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSShbufferGroupReader::getAllReadBuffers()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPREADER";
    *&v6[12] = 2080;
    *&v6[14] = "getAllReadBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s: ~%s Called get without setting up.\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSShbufferGroupReader::releaseReadResources()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPREADER";
    *&v6[12] = 2080;
    *&v6[14] = "releaseReadResources";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s: ~%s Trying to relinquish a non held view.\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSShbufferGroupReader::PSShbufferGroupReader()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSShbufferGroupWriter::addNonSharedSerialData()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s: Hmmm. More than a %d shbufflets? Are you unfolding protein structures?\n", v2, v3, v4, v5);
  }

  abort();
}

void PSShbufferGroupWriter::installCVPixelBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "installCVPixelBuffer";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Buffer creator did not create a buffer\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315650;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_14(&dword_25EBC5000, v0, v1, "%s: Invalid number of CVPixelBuffers to install. Expected (%d), provided (%d)\n", v2, v3, v4, v5, v6);
  }

  abort();
}

void PSShbufferGroupWriter::installCVDataBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "installCVDataBuffer";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Buffer creator did not create a CVDataBuffer\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315650;
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_14(&dword_25EBC5000, v0, v1, "%s: Invalid number of CVDataBuffers to install. Expected (%d), provided (%d)\n", v2, v3, v4, v5, v6);
  }

  abort();
}

void PSShbufferGroupWriter::addSharedLocklessSelector()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "addSharedLocklessSelector";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "addSharedLocklessSelector";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

uint64_t PSShbufferGroupWriter::getWriteBuffersIndex(char **a1, int a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Negative index : %d", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_11();
    v16 = 491;
    v17 = v4;
    v18 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d Negative index : %d", buf, 0x18u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v11 = OUTLINED_FUNCTION_1();
  return PSShbufferGroupWriter::getWriteBuffers(v11);
}

void PSShbufferGroupWriter::PSShbufferGroupWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "PSShbufferGroupWriter";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "SHBUFFERGROUPWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "PSShbufferGroupWriter";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Initialize FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSShbufferGroupWriter::PSShbufferGroupWriter(int a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315394;
    *&v8[4] = "PSShbufferGroupWriter";
    *&v8[12] = 1024;
    *&v8[14] = a1;
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
  }
}

uint64_t PSBufferService::PSLocklessBufferSelector::getReaderResource(char **a1)
{
  *a1 = 0;
  asprintf(a1, "**** Asked to not increment read acquire in progress for memory descriptor with read_acquire = 0 *** ");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d **** Asked to not increment read acquire in progress for memory descriptor with read_acquire = 0 *** ", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSBufferService::PSLocklessBufferSelector::getReaderResource(v13);
}

{
  *a1 = 0;
  asprintf(a1, "***** WE HAVE A ROLLOVER IN OUR READER REFCOUNT *****");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d ***** WE HAVE A ROLLOVER IN OUR READER REFCOUNT *****", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(v13, v14);
}

uint64_t PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(char **a1, PSSharedResource *this)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s line=%d [key=%s] Failed to get a new memDesc from pool", "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)", 971, Key);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v12 = "getResourceInternal";
    v13 = 1024;
    v14 = 971;
    v15 = 2080;
    v16 = "int PSBufferService::PSLocklessBufferSelectorWriter::getResourceInternal(uint64_t)";
    v17 = 1024;
    v18 = 971;
    v19 = 2080;
    v20 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s line=%d [key=%s] Failed to get a new memDesc from pool", buf, 0x2Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "getResourceInternal";
      v13 = 1024;
      v14 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  return PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(v9);
}

void PSBufferService::PSLocklessBufferSelectorWriter::handleAcquireCommitState(char **a1)
{
  *a1 = 0;
  asprintf(a1, "*** Reader mask unset and state ACQUIRE_COMMIT not possible. Aborting! ***");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d *** Reader mask unset and state ACQUIRE_COMMIT not possible. Aborting! ***", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSBufferService::LocklessViewReaper::addReader(v13);
}

void PSBufferService::LocklessViewReaper::addReader(char **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Tried to add more than 64 readers to the lockless selector.");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "addReader";
    v7 = 1024;
    v8 = 88;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Tried to add more than 64 readers to the lockless selector.", &v5, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "addReader";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSRingSwappableView::getMemdescForOwner();
}

void PSRingSwappableView::getMemdescForOwner()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "OUT OF VIEWS + view current count error!\n", v1, 2u);
  }

  abort();
}

void PSRingSwappableViewReader::_release_view()
{
  v0 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v1 = 136315138;
    v2 = "PSRingSwappableViewReader";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Relased view count greater than total number of views.!\n", &v1, 0xCu);
  }

  abort();
}

void PSRingSwappableViewReader::_getResourcewithViewIndex()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315650;
    *&v6[4] = "PSRingSwappableViewReader";
    *&v6[12] = 2080;
    *&v6[14] = "_getResourcewithViewIndex";
    *&v6[22] = 1024;
    v7 = 120;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s: %s:%d main_memdesc_id is empty. Please file a radar!", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16], v7);
  }

  abort();
}

void PSRingSwappableViewReader::getResourcewithBufferID(char **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Unexpectedly reached end of function");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "getResourcewithBufferID";
    v9 = 1024;
    v10 = 287;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Unexpectedly reached end of function", &v7, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "getResourcewithBufferID";
      v9 = 1024;
      v10 = v3;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", &v7);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = OUTLINED_FUNCTION_1();
  PSRingSwappableViewReader::getResourcewithBufferID(v6);
}

{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewReader", "getResourcewithBufferID", 245);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v9, v10, v11, v12);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v13 = 136315394;
      v14 = "getResourcewithBufferID";
      v15 = 1024;
      v16 = 245;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", &v13);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  PSRingSwappableViewReader::relinquishResource();
}

void PSRingSwappableViewReader::relinquishResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315650;
    *&v6[4] = "PSRingSwappableViewReader";
    *&v6[12] = 2080;
    *&v6[14] = "relinquishResource";
    *&v6[22] = 1024;
    v7 = 377;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s: %s:%d Owner buffer node ID invalid\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16], v7);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315650;
    *&v6[4] = "PSRingSwappableViewReader";
    *&v6[12] = 2080;
    *&v6[14] = "relinquishResource";
    *&v6[22] = 1024;
    v7 = 349;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v0, v1, "%s: %s:%dview refcount error\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16], v7);
  }

  abort();
}

void PSRingSwappableViewReader::relinquishResource(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewReader", "relinquishResource", 344);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v9, v10, v11, v12);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v13 = 136315394;
      v14 = "relinquishResource";
      v15 = 1024;
      v16 = 344;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", &v13);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  PSRingSwappableViewWriter::initialize();
}

void PSRingSwappableViewWriter::initialize()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "initialize";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: failed", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSRingSwappableViewWriter::getResource(uint64_t a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "PSRingSwappableViewWriter";
    v5 = 2080;
    v6 = a1 + 16;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: Invalid ref count for view for %s\n", &v3, 0x16u);
  }

  abort();
}

void PSRingSwappableViewWriter::getResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSRingSwappableViewWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Unable to get output resource: main_memdesc_id == EMPTY\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSRingSwappableViewWriter::relinquishResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSRingSwappableViewWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s:buffer id is not EMPTY!\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSRingSwappableViewWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s:Owner buffer node != next_write_idx : This is not possible. Please file a radar.\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

uint64_t PSRingSwappableViewWriter::relinquishResource(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewWriter", "relinquishResource", 122);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v15, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16, v17, v18);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(v13);
}

void PSRingSwappableViewWriter::relinquishResourceWithoutWriteIndexIncrement(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: %s:%d Negative buff_id passed. Aborting!\n", "PSRingSwappableViewWriter", "relinquishResourceWithoutWriteIndexIncrement", 159);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2_1();
    OUTLINED_FUNCTION_4_0(&dword_25EBC5000, v1, v2, "%s:%d %s: %s:%d Negative buff_id passed. Aborting!\n", v3, v4, v5, v6, v14, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  PSRingSwappableViewWriter::PSRingSwappableViewWriter(v13);
}

void PSRingSwappableViewWriter::PSRingSwappableViewWriter(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "PSRingSwappableViewWriter";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSRingSwappableViewWriter::PSRingSwappableViewWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSRingSwappableViewWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid arguments\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

uint64_t PSAtomicWnRnArray::getMemorySize(PSAtomicWnRnArray *this)
{
  if (this)
  {
    v1 = ((this - 1) >> 6) + 1;
  }

  else
  {
    v1 = 0;
  }

  v2 = 8 * (v1 + this) + 16;
  if (this <= 0x7FF)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t PSAtomicWnRnArray::createInBuffer(PSAtomicWnRnArray *this, unsigned int a2, char *a3)
{
  result = 3758097084;
  if (a2 <= 0x7FF && a3)
  {
    if (a2)
    {
      v5 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v5 = 0;
    }

    *(this + 67) = v5;
    *(this + 68) = a2;
    *(this + 66) = -1;
    *(a3 + 3) = 0;
    *(a3 + 4) = 0;
    *a3 = -2121058947;
    v6 = *(this + 68);
    *(a3 + 1) = *(this + 67);
    *(a3 + 2) = v6;
    v7 = a3 + 16;
    **this = a3 + 16;
    ps_reservation_init_mask(a3 + 2, v6);
    v8 = &v7[8 * *(this + 67)];
    *(*this + 8) = v8;
    bzero(v8, 8 * *(this + 68));
    bzero(this + 8, 0x100uLL);
    result = 0;
    *(this + 280) = 1;
  }

  return result;
}

uint64_t PSAtomicWnRnArray::initFromBuffer(PSAtomicWnRnArray *this, _DWORD *a2)
{
  result = 3758097084;
  if (a2 && *a2 == -2121058947)
  {
    v4 = a2[2];
    if (v4 <= 0x7FF)
    {
      v5 = a2[1];
      *(this + 67) = v5;
      *(this + 68) = v4;
      *(this + 66) = -1;
      v6 = *this;
      *v6 = a2 + 4;
      v6[1] = &a2[2 * v5 + 4];
      bzero(this + 8, 0x100uLL);
      result = 0;
      *(this + 280) = 1;
    }
  }

  return result;
}

unint64_t *PSAtomicWnRnArray::handleDeath(unint64_t *this, int a2, BOOL *a3, unint64_t *a4)
{
  if (*(this + 280) == 1)
  {
    v6 = this;
    v7 = *(this + 68);
    if (v7)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      LOBYTE(v7) = 0;
      do
      {
        v12 = atomic_load((*(*v6 + 8) + v9));
        if (v12 == a2 && (BYTE4(v12) == 4 || BYTE4(v12) == 1))
        {
          this = ps_reservation_clear_get_updated_mask(**v6, *(v6 + 272), v10, (*(*v6 + 8) + v9), a4);
          LOBYTE(v7) = 1;
        }

        ++v11;
        ++v10;
        v9 += 8;
      }

      while (v11 < *(v6 + 272));
    }

    if (a3)
    {
      v14 = ((a4 != 0) & v7) == 1 && *(v6 + 268) == 1;
      *a3 = v14;
    }
  }

  return this;
}

uint64_t PSAtomicWnRnArray::readReservationID(PSAtomicWnRnArray *this, unint64_t a2, unsigned int *a3)
{
  result = 3758097084;
  if (*(this + 280) == 1 && *(this + 68) > a2)
  {
    v5 = atomic_load((*(*this + 8) + 8 * a2));
    if ((v5 & 0xFF00000000) != 0)
    {
      result = 0;
      *a3 = v5;
    }

    else
    {
      return 3758097136;
    }
  }

  return result;
}

uint64_t PSAtomicWnRnArray::getReservationMask(PSAtomicWnRnArray *this, unint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = 3758097084;
  if (a2 && (*(this + 280) & 1) != 0)
  {
    v3 = a2;
    if (*(this + 67))
    {
      while (1)
      {
        do
        {
          this = OUTLINED_FUNCTION_9_1(this);
          *(v4 + 8 * v5) = v6;
          v7 = *(this + 67);
        }

        while (v5 + 1 < v7);
        if (!v7)
        {
          break;
        }

        while (1)
        {
          this = OUTLINED_FUNCTION_9_1(this);
          if (v10 != *(v9 + 8 * v8))
          {
            break;
          }

          v11 = *(this + 67);
          if (v8 + 1 >= v11)
          {
            v12 = 8 * v11;
            goto LABEL_12;
          }
        }

        v12 = 0;
        if (!*(this + 67))
        {
          goto LABEL_12;
        }
      }
    }

    v12 = 0;
LABEL_12:
    memcpy(v3, __src, v12);
    return 0;
  }

  return v2;
}

uint64_t PSAtomicWnRnArray::acquireWriteIdx(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireWriteIdx", "index < _arr_size");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::relinquishWriteIdx(v19);
}

uint64_t PSAtomicWnRnArray::relinquishWriteIdx(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "relinquishWriteIdx", "prev_token.value == _reservation_token_write_start");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::_clearIdx(v19);
}

uint64_t PSAtomicWnRnArray::_clearIdx(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "_clearIdx", "token.reservation_id == _reservation_id");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::_clearIdx(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "_clearIdx", "token.rw_state == rw_state");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::_clearIdx(v19);
}

{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "_clearIdx", "((_patomic->_reservation_mask[res_mask_idx] >> bit_idx) & 1) == 0");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return PSAtomicWnRnArray::acquireReadIdx(v19);
}

uint64_t PSAtomicWnRnArray::acquireReadIdx(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "acquireReadIdx", "index < _arr_size");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return ps_reservation_start_cold_1(v19);
}

uint64_t ps_reservation_start_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_start", "stride % sizeof(atomic_uint_fast64_t) == 0");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return ps_reservation_complete_get_updated_mask_cold_1(v19);
}

uint64_t ps_reservation_complete_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_complete_get_updated_mask", "index < count");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v21, v22);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v19 = OUTLINED_FUNCTION_1();
  return ps_reservation_clear_get_updated_mask_cold_1(v19);
}

void ps_reservation_clear_get_updated_mask_cold_1(char **a1)
{
  *a1 = 0;
  v1 = asprintf(a1, "%s: Assertion failed for %s", "ps_reservation_clear_get_updated_mask", "index < count");
  v3 = __PSUtilitiesLogSharedInstance(v1, v2);
  if (OUTLINED_FUNCTION_6_3(v3))
  {
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v4, v5, "%s:%d %s: Assertion failed for %s", v6, v7, v8, v9, v19, v20);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v12 = __PSUtilitiesLogSharedInstance(v10, v11);
    if (OUTLINED_FUNCTION_5_1(v12))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v13, v14, "%s() failed to flush buffers with error code: %d", v15, v16, v17, v18, v19, v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  __PSUtilitiesLogSharedInstance_cold_1();
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::PSStreamingCodecFrameSelectorWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315394;
    *&v8[4] = "virtual int PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(int, uint16_t *)";
    *&v8[12] = 1024;
    *&v8[14] = *a1;
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v2, v3, "%s Failed to Enqueue the nodeId %d", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
  }

  abort();
}

void PSBufferService::PSStreamingCodecFrameSelectorWriter::relinquishResource(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s:%d Negative buff_id passed. Aborting!\n", "relinquishResource", 246);
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v11 = "relinquishResource";
    v12 = 1024;
    v13 = 246;
    v14 = 2080;
    v15 = "relinquishResource";
    v16 = 1024;
    v17 = 246;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s:%d Negative buff_id passed. Aborting!\n", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v11 = "relinquishResource";
      v12 = 1024;
      v13 = 246;
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v2, v3, "%s() failed to flush buffers with error code: %d", v4, v5, v6, v7, v8, v9);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  PSBufferService::PSStreamingCodecFrameSelectorReader::PSStreamingCodecFrameSelectorReader();
}

void PSBufferService::PSStreamingCodecFrameSelectorReader::PSStreamingCodecFrameSelectorReader()
{
  v0 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v1 = 136315138;
    v2 = "PSBufferService::PSStreamingCodecFrameSelectorReader::PSStreamingCodecFrameSelectorReader(PSSharedSerialDataReader *, const char *, const uint32_t)";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s Failed to initialize AtomicDeque structure", &v1, 0xCu);
  }

  abort();
}

void PSBufferService::PSFifoSelectorWriter::relinquishResource(char **a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s Failed to read lastN from tail. retVal=%d", "virtual int PSBufferService::PSFifoSelectorWriter::relinquishResource(int, uint16_t *)", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v13 = "relinquishResource";
    v14 = 1024;
    v15 = 413;
    v16 = 2080;
    v17 = "virtual int PSBufferService::PSFifoSelectorWriter::relinquishResource(int, uint16_t *)";
    v18 = 1024;
    v19 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s Failed to read lastN from tail. retVal=%d", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v13 = "relinquishResource";
      v14 = 1024;
      v15 = v3;
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", v6, v7, v8, v9, v10, v11);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  _polarisdLogSharedInstance_cold_1();
}

void PSSharedCVDataBufferReader::PSSharedCVDataBufferReader(int a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315650;
    v4 = "PSSharedCVDataBufferReader";
    v5 = 2080;
    v6 = "PSSharedCVDataBufferReader";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s-%s:failed to create CV Data Buffer for resource ret=%d", &v3, 0x1Cu);
  }

  abort();
}

{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "PSSharedCVDataBufferReader";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedCVDataBufferReader::PSSharedCVDataBufferReader()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSharedCVDataBufferReader";
    *&v6[12] = 2080;
    *&v6[14] = "PSSharedCVDataBufferReader";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Did not get valid iosurface.", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCVDataBufferReader::getBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSharedCVDataBufferReader";
    *&v6[12] = 2080;
    *&v6[14] = "getBuffer";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s-%s: Invalid index requested!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCVDataBufferReader::getBuffer(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid method!\n", "PSSharedCVDataBufferReader", "getBuffer");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v6 = "getBuffer";
    v7 = 1024;
    v8 = 65;
    v9 = 2080;
    v10 = "PSSharedCVDataBufferReader";
    v11 = 2080;
    v12 = "getBuffer";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s-%s: Invalid method!\n", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "getBuffer";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter();
}

void PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVDataBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVDataBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Did not get valid iosurface.", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", v2, v3, v4, v5, v6, v7);
  }

  printf("%s-%s: Could not share surfaces\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVDataBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVDataBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not get backing iosurface\n", v2, v3, v4, v5, v6, v7);
  }

  printf("%s-%s: Could not get backing iosurface\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Invalid arguments\n", v2, v3, v4, v5, v6, v7);
  }

  printf("%s-%s: Invalid arguments\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter");
  abort();
}

void PSSharedCVDataBufferWriter::PSSharedCVDataBufferWriter(int a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v4 = "PSSharedCVDataBufferWriter";
    v5 = 2080;
    v6 = "PSSharedCVDataBufferWriter";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s-%s: Invalid data buffer at index=%d\n", buf, 0x1Cu);
  }

  printf("%s-%s: Invalid data buffer @index (%d)\n", "PSSharedCVDataBufferWriter", "PSSharedCVDataBufferWriter", a1);
  abort();
}

void PSSharedCVDataBufferWriter::getBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVDataBufferWriter";
    v4 = 2080;
    v5 = "getBuffer";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Invalid index requested!\n", &v2);
  }

  abort();
}

void PSSharedCVDataBufferWriter::getBuffer(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid method!\n", "PSSharedCVDataBufferWriter", "getBuffer");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v7 = "getBuffer";
    v8 = 1024;
    v9 = 180;
    v10 = 2080;
    v11 = "PSSharedCVDataBufferWriter";
    v12 = 2080;
    v13 = "getBuffer";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s-%s: Invalid method!\n", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v7 = "getBuffer";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  PSSharedCVPixelBuffer::getBuffer(v5);
}

void PSSharedCVPixelBuffer::getBuffer(char **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "buffer is not allocated");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "getBuffer";
    v9 = 1024;
    v10 = 33;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d buffer is not allocated", &v7, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "getBuffer";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v7, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v5 = abort_with_reason();
  PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader(v5, v6);
}

void PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315906;
    v6 = "PSSharedCVPixelBufferReader";
    v7 = 2080;
    v8 = "PSSharedCVPixelBufferReader";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s-%s:failed to create CV Pixel Buffer for resource IOSurfaceID:%d err:%d", &v5, 0x22u);
  }

  abort();
}

void PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "PSSharedCVPixelBufferReader";
    v3 = 2080;
    v4 = "PSSharedCVPixelBufferReader";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s-%s: Did not get valid iosurface.", &v1, 0x16u);
  }

  abort();
}

void PSSharedCVPixelBufferReader::PSSharedCVPixelBufferReader(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSharedCVPixelBufferReader";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "PSSharedCVPixelBufferWriter";
    v7 = 2080;
    v8 = "PSSharedCVPixelBufferWriter";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s-%s:failed to create CV Pixel Buffer for resource IOSurfaceID:%d err:%d", &v5, 0x22u);
  }

  abort();
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVPixelBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVPixelBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Did not get valid iosurface.", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", v2, v3, v4, v5, v6, v7);
  }

  printf("%s-%s: Could not share surfaces\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    v2 = 136315394;
    v3 = "PSSharedCVPixelBufferWriter";
    v4 = 2080;
    v5 = "PSSharedCVPixelBufferWriter";
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not share surfaces\n", &v2);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Could not get backing iosurface\n", v2, v3, v4, v5, v6, v7);
  }

  printf("%s-%s: Could not get backing iosurface\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter");
  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_0_1(&dword_25EBC5000, v0, v1, "%s-%s: Invalid arguments\n", v2, v3, v4, v5, v6, v7);
  }

  printf("%s-%s: Invalid arguments\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter");
  abort();
}

void PSSharedCVPixelBufferWriter::PSSharedCVPixelBufferWriter(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "PSSharedCVPixelBufferWriter";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v4 = "PSSharedCVPixelBufferWriter";
    v5 = 2080;
    v6 = "PSSharedCVPixelBufferWriter";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s-%s: Invalid pixel buffer\n", buf, 0x16u);
  }

  printf("%s-%s: Invalid pixel buffer @index (%d)\n", "PSSharedCVPixelBufferWriter", "PSSharedCVPixelBufferWriter", a1);
  abort();
}

void PSSharedIOSurface::getBuffer(int a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315650;
    *&v8[4] = "PSSharedIOSurface";
    *&v8[12] = 2080;
    *&v8[14] = "getBuffer";
    *&v8[22] = 1024;
    v9 = a1;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v2, v3, "%s:%s could not find surface with index (%d)\n", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

void PSSharedIOSurface::~PSSharedIOSurface(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "~PSSharedIOSurface";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedIOSurface::decSurfaceUseCount(int a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315650;
    *&v8[4] = "PSSharedIOSurface";
    *&v8[12] = 2080;
    *&v8[14] = "decSurfaceUseCount";
    *&v8[22] = 1024;
    v9 = a1;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v2, v3, "%s:%s could not find surface with index (%d)\n", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

void PSSharedIOSurface::incSurfaceUseCount(int a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315650;
    *&v8[4] = "PSSharedIOSurface";
    *&v8[12] = 2080;
    *&v8[14] = "incSurfaceUseCount";
    *&v8[22] = 1024;
    v9 = a1;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v2, v3, "%s:%s could not find surface with index (%d)\n", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

void PSSharedIOSurface::getPBSSurfaceUseCount(int a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315650;
    *&v8[4] = "PSSharedIOSurface";
    *&v8[12] = 2080;
    *&v8[14] = "getPBSSurfaceUseCount";
    *&v8[22] = 1024;
    v9 = a1;
    OUTLINED_FUNCTION_0_0(&dword_25EBC5000, v2, v3, "%s:%s could not find surface with index (%d)\n", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], v9);
  }

  abort();
}

void PSSharedIOSurfaceAllocator::PSSharedIOSurfaceAllocator()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

uint64_t PSSharedIOSurfaceAllocator::allocate(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Unable to create IOSurface from mach_port. Aborting()", "PSSharedIOSurfaceAllocator");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Unable to create IOSurface from mach_port. Aborting()", v3, v4, v5, v6, v15, v16);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedIOSurfaceAllocator::allocate(v13);
}

{
  *a1 = 0;
  asprintf(a1, "%s: Invalid Key len\n", "PSSharedIOSurfaceAllocator");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Invalid Key len\n", v3, v4, v5, v6, v15, v16);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedIOSurfaceAllocator::mapSharedResource(v13);
}

void PSSharedIOSurfaceAllocator::mapSharedResource(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Could not create iosurface from mach port. Aborting()", "PSSharedIOSurfaceAllocator");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Could not create iosurface from mach port. Aborting()", v3, v4, v5, v6, v14, v15);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(v13);
}

void PSSharedIOSurfaceEvent::~PSSharedIOSurfaceEvent(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "~PSSharedIOSurfaceEvent";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedIOSurfaceEvent::mapSharedResource(char **a1, PSSharedResource *this)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s [%s] mach ports NULL\n", "PSSharedIOSurfaceEvent", Key);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v10 = "mapSharedResource";
    v11 = 1024;
    v12 = 131;
    v13 = 2080;
    v14 = "PSSharedIOSurfaceEvent";
    v15 = 2080;
    v16 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s [%s] mach ports NULL\n", buf, 0x26u);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "mapSharedResource";
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSSharedIOSurfaceReader::PSSharedIOSurfaceReader();
}

void PSSharedIOSurfaceReader::PSSharedIOSurfaceReader()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceReader";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid Key len\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedIOSurfaceReader::PSSharedIOSurfaceReader(int a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315650;
    v4 = "PSSharedIOSurfaceReader";
    v5 = 1024;
    v6 = a1;
    v7 = 1024;
    v8 = 9999;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: id(%d) > %d\n", &v3, 0x18u);
  }

  abort();
}

void PSSharedIOSurfaceReader::mapSharedResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceReader";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: The number of ports received is not equal to the number of elements. Aborting()", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceReader";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Could not allocate memory for ports", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_DEBUG))
  {
    v1 = 136315394;
    v2 = "PSSharedIOSurfaceReader";
    v3 = 2080;
    v4 = "mapSharedResource";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_DEBUG, "%s: %s invalid type_desc \n", &v1, 0x16u);
  }

  abort();
}

void PSSharedIOSurfaceWriter::shareSurfacesIDs(char **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, " shareSurfacesByID encountered a NULL IOSurfaceRef supplied as an argument\n");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "shareSurfacesIDs";
    v7 = 1024;
    v8 = 270;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d  shareSurfacesByID encountered a NULL IOSurfaceRef supplied as an argument\n", &v5, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "shareSurfacesIDs";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::shareSurfacesIDs();
}

{
  *a1 = 0;
  asprintf(a1, "%s: Could not allocate memory for surfaces", "PSSharedIOSurfaceWriter");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Could not allocate memory for surfaces", v3, v4, v5, v6, v13, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::shareSurfacesIDs();
}

void PSSharedIOSurfaceWriter::shareSurfacesIDs()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Could not allocate memory for surfaces or surface IDs.", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

{
  v0 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v1 = __error();
    v2 = strerror(*v1);
    v3 = 136315394;
    v4 = "PSSharedIOSurfaceWriter";
    v5 = 2080;
    v6 = v2;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Could not allocate memory for surface IDs! error(%s)", &v3, 0x16u);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid surfaces array. Aborting!\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: invalid number of elements. Aborting!\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedIOSurfaceWriter::shareSurfaces(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: Could not allocate memory for ports.", "PSSharedIOSurfaceWriter");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Could not allocate memory for ports.", v3, v4, v5, v6, v13, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::mapSharedResource();
}

void PSSharedIOSurfaceWriter::mapSharedResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Could not get surface from mach port. Aborting()", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedIOSurfaceWriter::getResource(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid index requested!\n", "PSSharedIOSurfaceWriter", "getResource");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v1, v2, "%s:%d %s-%s: Invalid index requested!\n", v3, v4, v5, v6, v14, v15);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v14, v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::getResource(v13);
}

{
  *a1 = 0;
  asprintf(a1, "%s-%s: Invalid method!\n", "PSSharedIOSurfaceWriter", "getResource");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v1, v2, "%s:%d %s-%s: Invalid method!\n", v3, v4, v5, v6, v13, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v13, v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedIOSurfaceWriter::allocateResource();
}

void PSSharedIOSurfaceWriter::allocateResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: The number of ports received is not equal to the number of elements. Aborting()", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedIOSurfaceWriter::finalizeResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedIOSurfaceWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s Invalid finalizeResource type\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedResource::PSSharedResource(int a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315650;
    v4 = "PSSharedResource";
    v5 = 1024;
    v6 = a1;
    v7 = 1024;
    v8 = 9999;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: id(%d) > %d\n", &v3, 0x18u);
  }

  abort();
}

void PSSharedResource::PSSharedResource()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1[0] = 67109120;
    v1[1] = 512;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "PSSharedResource:key >= %u\n", v1, 8u);
  }

  abort();
}

{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "PSSharedResource: Invalid Key\n", v1, 2u);
  }

  abort();
}

void PSSharedResource::updateTypeStatus(char **a1, const char *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Invalid message received for key %s. Received a complex message when expecting a simple message", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v9 = "updateTypeStatus";
    v10 = 1024;
    v11 = 88;
    v12 = 2080;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received for key %s. Received a complex message when expecting a simple message", buf, 0x1Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "updateTypeStatus";
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v7 = abort_with_reason();
  PSSharedResource::updateTypeStatus(v7);
}

void PSSharedResource::updateTypeStatus(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v2 = 136315138;
    v3 = "PSSharedResource";
    _os_log_impl(&dword_25EBC5000, a1, OS_LOG_TYPE_ERROR, "%s: updateTypeStatus error\n", &v2, 0xCu);
  }

  abort();
}

void PSSharedSemaphore::PSSharedSemaphore()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSSharedSemaphoreAllocator::PSSharedSemaphoreAllocator()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "PSSharedSemaphoreAllocator";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Failed to create mach semaphore\n", &v1, 0xCu);
  }

  abort();
}

uint64_t PSSharedSemaphoreArray::_createLocal(char **a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Failed to create mach semaphore\n", "_createLocal");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v16 = 43;
    v17 = 2080;
    v18 = "_createLocal";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d %s: Failed to create mach semaphore\n", v4, v5, v6, v7, v13, v14);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v16 = v1;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v10 = OUTLINED_FUNCTION_1();
  return PSSharedSemaphoreArray::_createLocal(v10, v11);
}

uint64_t PSSharedSemaphoreArray::_createLocal(char **a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = a2 + 16;
  asprintf(a1, "%s (key=%s) %s:line %d: cannot allocate memory", "PSSharedSemaphoreArray", (a2 + 16), "_createLocal", 37);
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136316418;
    v9 = "_createLocal";
    v10 = 1024;
    v11 = 37;
    v12 = 2080;
    v13 = "PSSharedSemaphoreArray";
    v14 = 2080;
    v15 = v3;
    v16 = 2080;
    v17 = "_createLocal";
    v18 = 1024;
    v19 = 37;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s (key=%s) %s:line %d: cannot allocate memory", buf, 0x36u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v9 = "_createLocal";
      v10 = 1024;
      v11 = 37;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v6 = OUTLINED_FUNCTION_1();
  return PSSharedSemaphoreArray::_createRemote(v6);
}

void PSSharedSemaphoreArray::_createRemote(char **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s mach semaphores NULL\n", "PSSharedSemaphoreArray");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v13 = 78;
    v14 = 2080;
    v15 = "PSSharedSemaphoreArray";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s mach semaphores NULL\n", v3, v4, v5, v6, v10, v11);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v13 = "PSSharedSemaphoreArray";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  PSSharedSemaphoreArray::_deallocateSemaphores(v9);
}

void PSSharedSemaphoreArray::_deallocateSemaphores(char **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to unmap shared semaphore array from the client's address space.");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v7 = 136315394;
    v8 = "_deallocateSemaphores";
    v9 = 1024;
    v10 = 107;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Failed to unmap shared semaphore array from the client's address space.", &v7, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "_deallocateSemaphores";
      v9 = 1024;
      v10 = v3;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v4, v5, "%s() failed to flush buffers with error code: %d", &v7);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v6 = OUTLINED_FUNCTION_1();
  PSSharedSemaphoreArray::PSSharedSemaphoreArray(v6);
}

void PSSharedSemaphoreArray::PSSharedSemaphoreArray(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSharedSemaphoreArray";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedSemaphoreArray::mapSharedResource(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s mach semaphores NULL\n", "PSSharedSemaphoreArray");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v14 = 257;
    v15 = 2080;
    v16 = "PSSharedSemaphoreArray";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s mach semaphores NULL\n", v3, v4, v5, v6, v11, v12);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v14 = "PSSharedSemaphoreArray";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v13);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  PSSharedSerialData::mapShmem(v9, v10);
}

void PSSharedSerialData::mapShmem(char **a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, " invalid local allocation flag (%#x)", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v8 = "mapShmem";
    v9 = 1024;
    v10 = 242;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d  invalid local allocation flag (%#x)", buf, 0x18u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "mapShmem";
      v9 = 1024;
      v10 = v5;
      _os_log_impl(&dword_25EBC5000, v6, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSSharedSerialDataAllocator::PSSharedSerialDataAllocator();
}

void PSSharedSerialDataAllocator::PSSharedSerialDataAllocator()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSSharedSerialDataAllocator::allocateLocal()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "PSSharedSerialDataAllocator";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Invalid Key len\n", &v1, 0xCu);
  }

  abort();
}

uint64_t PSSharedSerialDataAllocator::allocate(char **a1, NSObject *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: id(%d) > %d\n", "PSSharedSerialDataAllocator", a2, 9999);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v8 = "allocate";
    v9 = 1024;
    v10 = 277;
    v11 = 2080;
    v12 = "PSSharedSerialDataAllocator";
    v13 = 1024;
    v14 = a2;
    v15 = 1024;
    v16 = 9999;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: id(%d) > %d\n", buf, 0x28u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v8 = "allocate";
      v9 = 1024;
      v10 = v3;
      _os_log_impl(&dword_25EBC5000, a2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = OUTLINED_FUNCTION_1();
  return PSSharedSerialDataAllocator::getBuffer(v4, v5);
}

void PSSharedSerialDataAllocator::getBuffer(char **a1, NSObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: getBuffer - index (%d) out of range \n", "PSSharedSerialDataAllocator", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v7 = "getBuffer";
    v8 = 1024;
    v9 = 327;
    v10 = 2080;
    v11 = "PSSharedSerialDataAllocator";
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s: getBuffer - index (%d) out of range \n", buf, 0x22u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v7 = "getBuffer";
      v8 = 1024;
      v9 = v3;
      _os_log_impl(&dword_25EBC5000, a2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v4 = OUTLINED_FUNCTION_1();
  PSSharedSerialDataReader::mapSharedResource(v4, v5);
}

void PSSharedSerialDataReader::mapSharedResource(char **a1, mach_error_t error_value)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = mach_error_string(error_value);
  asprintf(a1, "FAILED %s", v4);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v10 = "mapSharedResource";
    v11 = 1024;
    v12 = 100;
    v13 = 2080;
    v14 = mach_error_string(error_value);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d FAILED %s", buf, 0x1Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "mapSharedResource";
      v11 = 1024;
      v12 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSSharedSerialDataReader::mapSharedResource();
}

void PSSharedSerialDataReader::mapSharedResource()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "PSSharedSerialDataReader";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s: Invalid Key len\n", &v1, 0xCu);
  }

  abort();
}

void PSSharedSerialDataReader::getBuffer(int a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSharedSerialDataReader";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: getBuffer - index (%d) out of range \n", &v3, 0x12u);
  }

  abort();
}

void PSSharedSerialDataWriter::PSSharedSerialDataWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedSerialDataWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: invalid element size or number of elements\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedSerialDataWriter::_mapFrom()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedSerialDataWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: DEADBEEF not found, failed to allocate the correct buffer\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedSerialDataWriter::~PSSharedSerialDataWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSSharedSerialDataWriter::mapSharedResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSSharedSerialDataWriter";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: Invalid Key len\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSSharedSyncObject::lock(char **a1, PSSharedResource *this)
{
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "Failed to unlock mutex for (%s) after timing out. Something is definitely wrong. Aborting!", Key);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v5, v6, "%s:%d Failed to unlock mutex for (%s) after timing out. Something is definitely wrong. Aborting!", v7, v8, v9, v10, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v19, v20);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v17 = OUTLINED_FUNCTION_1();
  PSSharedSyncObject::lock(v17, v18);
}

{
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "Failed to relock mutex for (%s) after timing out. Aborting!", Key);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v5, v6, "%s:%d Failed to relock mutex for (%s) after timing out. Aborting!", v7, v8, v9, v10, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  OUTLINED_FUNCTION_1();
  pthread_mutex_timedlock();
}

void pthread_mutex_timedlock()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315650;
    v2 = "pthread_mutex_timedlock";
    v3 = 1024;
    v4 = 59;
    v5 = 2080;
    v6 = "PSSharedSyncObject";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s %d %s: seconds must be 0", &v1, 0x1Cu);
  }

  abort();
}

void PSSharedSyncObject::unlock(int a1)
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136315906;
    *&v8[4] = "unlock";
    *&v8[12] = 1024;
    *&v8[14] = 150;
    *&v8[18] = 2080;
    *&v8[20] = "PSSharedSyncObject";
    *&v8[28] = 1024;
    *&v8[30] = a1;
    OUTLINED_FUNCTION_0_2(&dword_25EBC5000, v2, v3, "%s %d %s failed ret_val=%#x", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], *&v8[24], *&v8[32]);
  }

  abort();
}

void PSSharedSyncObject::signal(int a1)
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v8 = 136315906;
    *&v8[4] = "signal";
    *&v8[12] = 1024;
    *&v8[14] = 208;
    *&v8[18] = 2080;
    *&v8[20] = "PSSharedSyncObject";
    *&v8[28] = 1024;
    *&v8[30] = a1;
    OUTLINED_FUNCTION_0_2(&dword_25EBC5000, v2, v3, "%s %d %s failed ret_val=%#x", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], *&v8[24], *&v8[32]);
  }

  abort();
}

void PSSharedSyncWriter::PSSharedSyncWriter()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

uint64_t PSSharedCameraFifoStreamWriter::Create(char **a1, int a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s:%s Unexpected selector option passed for Camera FIFO Stream Writer. options=%#x \n", "PSSHAREDCAMERASTREAMWRITER", "Create", a2);
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v8 = "Create";
    v9 = 1024;
    v10 = 42;
    v11 = 2080;
    v12 = "PSSHAREDCAMERASTREAMWRITER";
    v13 = 2080;
    v14 = "Create";
    v15 = 1024;
    v16 = a2;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s:%s Unexpected selector option passed for Camera FIFO Stream Writer. options=%#x \n", buf, 0x2Cu);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v8 = "Create";
      v9 = 1024;
      v10 = v4;
      _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSSharedCameraISPStreamWriter::populateInfo(uint64_t a1)
{
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSHAREDCAMERASTREAMWRITER";
    v5 = 2080;
    v6 = "populateInfo";
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s:%s - Use count. This shouldn't be possible\n", &v3, 0x16u);
  }

  PSShbufferGroupReader::releaseSharedLock(*(a1 + 736), 1);
  abort();
}

void PSSharedCameraISPStreamWriter::populateInfo()
{
  v0 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v1 = 136315394;
    v2 = "PSSHAREDCAMERASTREAMWRITER";
    v3 = 2080;
    v4 = "populateInfo";
    _os_log_impl(&dword_25EBC5000, v0, OS_LOG_TYPE_ERROR, "%s:%s - Could not find a surface to release\n", &v1, 0x16u);
  }

  abort();
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_1(char **a1, int a2)
{
  *a1 = 0;
  asprintf(a1, "In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", "ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces", a2);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_12_0(&dword_25EBC5000, v2, v3, "%s:%d In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", v4, v5, v6, v7, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_2(v14);
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_2(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff->parentSurfaces\n");
  if (OUTLINED_FUNCTION_4())
  {
    *v15 = 136315394;
    *&v15[4] = "ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces";
    *&v15[12] = 1024;
    *&v15[14] = 216;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff->parentSurfaces\n", v3, v4, v5, v6, *v15, *&v15[8], *&v15[16]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_3(v13);
}

uint64_t ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces_cold_3(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff\n");
  if (OUTLINED_FUNCTION_4())
  {
    *v16 = 136315394;
    *&v16[4] = "ps_buffer_camera_stream_writer_install_cvpixelbufferpoolbackingsurfaces";
    *&v16[12] = 1024;
    *&v16[14] = 210;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff\n", v3, v4, v5, v6, *v16, *&v16[8], *&v16[16]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_1(v13, v14);
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_1(char **a1, int a2)
{
  *a1 = 0;
  asprintf(a1, "In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", "ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces", a2);
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_12_0(&dword_25EBC5000, v2, v3, "%s:%d In %s CVPixelBufferPoolScanIOSurfaces got cvRet=%d\n", v4, v5, v6, v7, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_2(v14);
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_2(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff->parentSurfaces\n");
  if (OUTLINED_FUNCTION_4())
  {
    *v15 = 136315394;
    *&v15[4] = "ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces";
    *&v15[12] = 1024;
    *&v15[14] = 259;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff->parentSurfaces\n", v3, v4, v5, v6, *v15, *&v15[8], *&v15[16]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_3(v13);
}

uint64_t ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces_cold_3(char **a1)
{
  *a1 = 0;
  asprintf(a1, "Failed to allocate cvPixelBuff\n");
  if (OUTLINED_FUNCTION_4())
  {
    *v16 = 136315394;
    *&v16[4] = "ps_buffer_camera_stream_writer_install_cvdatabufferpoolbackingsurfaces";
    *&v16[12] = 1024;
    *&v16[14] = 253;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Failed to allocate cvPixelBuff\n", v3, v4, v5, v6, *v16, *&v16[8], *&v16[16]);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return cameraStreamWriterGetStreamIndex(v13, v14);
}

uint64_t PSSharedCameraStreamReader::initialize(char **a1)
{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v13 = 136315394;
    *&v13[4] = "initialize";
    *&v13[12] = 1024;
    *&v13[14] = 137;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v2, v3, "%s:%d OOM!", v4, v5, v6, v7, *v13, *&v13[16]);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      *v13 = 136315394;
      *&v13[4] = "initialize";
      *&v13[12] = 1024;
      *&v13[14] = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v10, v11, "%s() failed to flush buffers with error code: %d", v13);
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9();
  }

  result = OUTLINED_FUNCTION_5_0(v9, v10, *a1);
  __break(1u);
  return result;
}

{
  v14 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "OOM!");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v13 = 136315394;
    *&v13[4] = "initialize";
    *&v13[12] = 1024;
    *&v13[14] = 123;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v2, v3, "%s:%d OOM!", v4, v5, v6, v7, *v13, *&v13[16]);
  }

  v8 = OSLogFlushBuffers();
  if (v8)
  {
    v9 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      *v13 = 136315394;
      *&v13[4] = "initialize";
      *&v13[12] = 1024;
      *&v13[14] = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v10, v11, "%s() failed to flush buffers with error code: %d", v13);
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9();
  }

  result = OUTLINED_FUNCTION_5_0(v9, v10, *a1);
  __break(1u);
  return result;
}

uint64_t PSSharedCameraStreamReader::initialize(char **a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = a2 + 16;
  asprintf(a1, "%s:%s - (Camera Stream: %s) Could not create IOSurfaceReader for metadata\n", "PSSHAREDCAMERASTREAMREADER", "initialize", (a2 + 16));
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136316162;
    v20 = "initialize";
    v21 = 1024;
    OUTLINED_FUNCTION_11_1();
    v22 = v3;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v4, v5, "%s:%d %s:%s - (Camera Stream: %s) Could not create IOSurfaceReader for metadata\n", v6, v7, v8, v9, v15, v16, v17, v18);
  }

  if (OSLogFlushBuffers())
  {
    v10 = os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9();
  }

  result = OUTLINED_FUNCTION_5_0(v10, v11, *a1);
  __break(1u);
  return result;
}

void PSSharedCameraStreamReader::countToCapacity(char **a1, PSSharedResource *a2)
{
  v4 = OUTLINED_FUNCTION_15_0(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "%s:%s - (Camera Stream: %s) Invalid metadata type found", "PSSHAREDCAMERASTREAMREADER", "countToCapacity", v4);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(a2);
    *buf = 136316162;
    v19 = "countToCapacity";
    v20 = 1024;
    OUTLINED_FUNCTION_11_1();
    v21 = v5;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v6, v7, "%s:%d %s:%s - (Camera Stream: %s) Invalid metadata type found", v8, v9, v10, v11, v14, v15, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedCameraStreamReader::PSSharedCameraStreamReader();
}

void PSSharedCameraStreamReader::PSSharedCameraStreamReader()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

uint64_t PSSharedCameraStreamReader::populateCVBuffer(char **a1, PSSharedResource *a2)
{
  v4 = OUTLINED_FUNCTION_15_0(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "%s:%s - (Camera Stream: %s) Somehow we have gotten a serialized data backed metadata for something that the context thought was metadata backed by io surface", "PSSHAREDCAMERASTREAMREADER", "populateCVBuffer", v4);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(a2);
    *buf = 136316162;
    v22 = "populateCVBuffer";
    v23 = 1024;
    OUTLINED_FUNCTION_11_1();
    v24 = v5;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v6, v7, "%s:%d %s:%s - (Camera Stream: %s) Somehow we have gotten a serialized data backed metadata for something that the context thought was metadata backed by io surface", v8, v9, v10, v11, v17, v18, v19, v20);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamReader::populateCVBuffer(v14, v15);
}

{
  v4 = OUTLINED_FUNCTION_15_0(a2, a1, *MEMORY[0x277D85DE8]);
  asprintf(a1, "%s:%s - (Camera Stream: %s) Somehow we have gotten a metadata backed by io surface for something that the context thought was backed by a serialized metadata", "PSSHAREDCAMERASTREAMREADER", "populateCVBuffer", v4);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(a2);
    *buf = 136316162;
    v21 = "populateCVBuffer";
    v22 = 1024;
    OUTLINED_FUNCTION_11_1();
    v23 = v5;
    OUTLINED_FUNCTION_8_0(&dword_25EBC5000, v6, v7, "%s:%d %s:%s - (Camera Stream: %s) Somehow we have gotten a metadata backed by io surface for something that the context thought was backed by a serialized metadata", v8, v9, v10, v11, v16, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_18_0();
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v12, v13, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamReader::populateCVBuffer(v14);
}

void PSSharedCameraStreamWriter::PSSharedCameraStreamWriter(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSharedCameraStreamWriter";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

uint64_t PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Failed to lock. Aborting.\n", "PSSHAREDCAMERASTREAMWRITER");
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136315650;
    v15 = "writeMultipleBuffers";
    v16 = 1024;
    v17 = 434;
    v18 = 2080;
    v19 = "PSSHAREDCAMERASTREAMWRITER";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Failed to lock. Aborting.\n", v3, v4, v5, v6, v12, v13);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v15 = "writeMultipleBuffers";
      v16 = 1024;
      v17 = "PSSHAREDCAMERASTREAMWRITER";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v9 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamWriter::writeMultipleBuffers(v9, v10);
}

void PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Failed to unlock. Aborting.\n", "PSSHAREDCAMERASTREAMWRITER");
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136315650;
    v12 = "writeMultipleBuffers";
    v13 = 1024;
    v14 = 573;
    v15 = 2080;
    v16 = "PSSHAREDCAMERASTREAMWRITER";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: Failed to unlock. Aborting.\n", v3, v4, v5, v6, v9, v10);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v12 = "writeMultipleBuffers";
      v13 = 1024;
      v14 = "PSSHAREDCAMERASTREAMWRITER";
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedCameraStreamWriter::writeMultipleBuffers();
}

void PSSharedCameraStreamWriter::writeMultipleBuffers()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "writeMultipleBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without incrementing the write index?\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "writeMultipleBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without releasing?\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

uint64_t PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1, PSSharedResource *this)
{
  v26 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s:%s:%s:%d - (Camera Stream: %s) Write was called without any metadata IOSurface writer being created", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp", "writeMultipleBuffers", 449, Key);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_15_1(&dword_25EBC5000, v5, v6, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Write was called without any metadata IOSurface writer being created", v7, v8, v9, v10, v16, v17, v18, v19, v20, v21);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v22 = 136315394;
      v23 = "writeMultipleBuffers";
      v24 = 1024;
      v25 = this;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", &v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSSharedCameraStreamWriter::writeMultipleBuffers(v13, v14);
}

void PSSharedCameraStreamWriter::writeMultipleBuffers(char **a1, PSSharedResource *this)
{
  v24 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s:%s:%s:%d - (Camera Stream: %s) Write was called without any CVBuffer writer being created", "PSSHAREDCAMERASTREAMWRITER", "/Library/Caches/com.apple.xbs/Sources/ApplePolaris/PolarisBufferService/CameraInterface/PSSharedCameraStreamWriterImpl.cpp", "writeMultipleBuffers", 443, Key);
  if (OUTLINED_FUNCTION_8())
  {
    PSSharedResource::getKey(this);
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_15_1(&dword_25EBC5000, v5, v6, "%s:%d %s:%s:%s:%d - (Camera Stream: %s) Write was called without any CVBuffer writer being created", v7, v8, v9, v10, v14, v15, v16, v17, v18, v19);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      v20 = 136315394;
      v21 = "writeMultipleBuffers";
      v22 = 1024;
      v23 = this;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v11, v12, "%s() failed to flush buffers with error code: %d", &v20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  PSSharedCameraSuperframeStreamWriter::PSSharedCameraSuperframeStreamWriter(v13);
}

void PSSharedCameraSuperframeStreamWriter::PSSharedCameraSuperframeStreamWriter(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSSharedCameraSuperframeStreamWriter";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315394;
    v4 = "PSSharedCameraSurfaceStreamWriter";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "PSSHAREDCAMERASTREAMWRITER";
    v7 = 2080;
    v8 = "PSSharedCameraSurfaceStreamWriter";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s:%s - Aperatures do not match. %d and %d\n", &v5, 0x22u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter(uint64_t a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315650;
    *&v8[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v8[12] = 2080;
    *&v8[14] = "PSSharedCameraSurfaceStreamWriter";
    *&v8[22] = 2080;
    OUTLINED_FUNCTION_13_1(&dword_25EBC5000, v2, v3, "%s:%s - Camera %s already enabled!\n", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], &cam_sp[67 * a1 + 3]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::PSSharedCameraSurfaceStreamWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "PSSharedCameraSurfaceStreamWriter";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - No such camera\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "PSSharedCameraSurfaceStreamWriter";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - SFL not initialized!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::initCameraSurfaces(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Something very odd happened where the total surfaces aren't divisible by the capacity");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "initCameraSurfaces";
    *&v11[12] = 1024;
    *&v11[14] = 159;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d Something very odd happened where the total surfaces aren't divisible by the capacity", v3, v4, v5, v6, *v11, *&v11[16]);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    if (OUTLINED_FUNCTION_8_2())
    {
      *v11 = 136315394;
      *&v11[4] = "initCameraSurfaces";
      *&v11[12] = 1024;
      *&v11[14] = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers();
}

void PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(uint64_t a1)
{
  if (OUTLINED_FUNCTION_10())
  {
    *v8 = 136315650;
    *&v8[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v8[12] = 2080;
    *&v8[14] = "writeMultipleBuffers";
    *&v8[22] = 2080;
    OUTLINED_FUNCTION_13_1(&dword_25EBC5000, v2, v3, "%s:%s - surfaces not installed for %s\n", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16], &cam_sp[67 * *(a1 + 832) + 3]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "writeMultipleBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- Could not find a surface to release\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "writeMultipleBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without incrementing the write index?\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "writeMultipleBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s-  You want us to broadcast without releasing?\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "writeMultipleBuffers";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Child surfaces NULL\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "You've somehow tried to write without creating the writer.");
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *v11 = 136315394;
    *&v11[4] = "writeMultipleBuffers";
    *&v11[12] = 1024;
    *&v11[14] = 270;
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d You've somehow tried to write without creating the writer.", v3, v4, v5, v6, *v11, *&v11[16]);
  }

  v7 = OSLogFlushBuffers();
  if (v7)
  {
    v8 = v7;
    if (OUTLINED_FUNCTION_8_2())
    {
      *v11 = 136315394;
      *&v11[4] = "writeMultipleBuffers";
      *&v11[12] = 1024;
      *&v11[14] = v8;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v9, v10, "%s() failed to flush buffers with error code: %d", v11);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSSharedCameraSurfaceStreamWriter::writeMultipleBuffers();
}

void PSSharedCameraSurfaceStreamWriter::~PSSharedCameraSurfaceStreamWriter()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "~PSSharedCameraSurfaceStreamWriter";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s sfl->surfaces_installed should be 0\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::writeMetadata(char **a1, PSSharedResource *this)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  asprintf(a1, "%s:%s - (Camera Stream: %s) The metadata is too large for us too handle", "PSSHAREDCAMERASTREAMWRITER", "writeMetadata", Key);
  if (OUTLINED_FUNCTION_8())
  {
    *buf = 136316162;
    v12 = "writeMetadata";
    v13 = 1024;
    v14 = 556;
    v15 = 2080;
    v16 = "PSSHAREDCAMERASTREAMWRITER";
    v17 = 2080;
    v18 = "writeMetadata";
    v19 = 2080;
    v20 = PSSharedResource::getKey(this);
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_FAULT, "%s:%d %s:%s - (Camera Stream: %s) The metadata is too large for us too handle", buf, 0x30u);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      *buf = 136315394;
      v12 = "writeMetadata";
      v13 = 1024;
      v14 = this;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v6, v7, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v8 = OUTLINED_FUNCTION_1();
  PSSharedCameraSurfaceStreamWriter::start(v8, v9, v10);
}

void PSSharedCameraSurfaceStreamWriter::start(NSObject *a1, uint64_t a2, int a3)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v6 = &cam_sp[67 * *(a2 + 832)];
    v7 = 136315906;
    v8 = "PSSHAREDCAMERASTREAMWRITER";
    v9 = 2080;
    v10 = "start";
    v11 = 2080;
    v12 = v6 + 3;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&dword_25EBC5000, a1, OS_LOG_TYPE_ERROR, "%s:%s - polarisd did not serialze calls to start for cam(%s). start called (%d) without an installCVPixelBufferBackingSurfaces\n", &v7, 0x26u);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::start()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "start";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Child surfaces NULL\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::init_aperature()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "init_aperature";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Total surface count error\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::createChildSurfacesFromParentSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSSHAREDCAMERASTREAMWRITER";
    *&v6[12] = 2080;
    *&v6[14] = "createChildSurfacesFromParentSurfaces";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s - Child surfaces NULL\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVPixelBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVDataBuffers. can't install CVPixelBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVDataBuffers. can't install CVPixelBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVPixelBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::_installCVPixelBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVDataBuffers. can't install CVPixelBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVDataBuffers. can't install CVPixelBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "_installCVPixelBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVPixelBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVDataBuffers. can't install CVPixelBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVDataBuffers. can't install CVPixelBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVPixelBuffer");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVPixelBuffers. can't install CVDataBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVPixelBuffers. can't install CVDataBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVDataBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::_installCVDataBufferBackingSurfaces()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVPixelBuffers. can't install CVDataBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVPixelBuffers. can't install CVDataBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "_installCVDataBufferBackingSurfaces");
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBuffer(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v6 = "PSSHAREDCAMERASTREAMWRITER";
    v7 = 2080;
    v8 = "installCVDataBuffer";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s:%s - Invalid number of CVDataBuffers, got %d, must be %d\n", buf, 0x22u);
  }

  printf("%s:%s - Invalid number of CVDataBuffers, got %d, must be %d\n", "PSSHAREDCAMERASTREAMWRITER", "installCVDataBuffer", a1, a2);
  abort();
}

void PSSharedCameraSurfaceStreamWriter::installCVDataBuffer()
{
  if (OUTLINED_FUNCTION_10())
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_1_1(&dword_25EBC5000, v0, v1, "%s:%s - Already installed CVPixelBuffers. can't install CVDataBuffers.\n", v2);
  }

  printf("%s:%s -Already installed CVPixelBuffers. can't install CVDataBuffers.\n", "PSSHAREDCAMERASTREAMWRITER", "installCVDataBuffer");
  abort();
}

void PSCommsBase::PSCommsBase(char **a1, mach_error_t error_value)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = mach_error_string(error_value);
  asprintf(a1, "%s mach_port_construct failed. ret=%#x (%s)", "PSCommsBase", error_value, v4);
  v5 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136316162;
    v11 = "PSCommsBase";
    v12 = 1024;
    v13 = 45;
    v14 = 2080;
    v15 = "PSCommsBase";
    v16 = 1024;
    v17 = error_value;
    v18 = 2080;
    v19 = mach_error_string(error_value);
    _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_FAULT, "%s:%d %s mach_port_construct failed. ret=%#x (%s)", buf, 0x2Cu);
  }

  v6 = OSLogFlushBuffers();
  if (v6)
  {
    v7 = v6;
    v8 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v11 = "PSCommsBase";
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_25EBC5000, v8, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v9 = abort_with_reason();
  ps_comms_client_send_with_reply_port_cold_1(v9);
}

void ps_comms_client_send_with_reply_port_cold_1(char **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "CommsClient: sending reply port away\n");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "ps_comms_client_send_with_reply_port";
    v7 = 1024;
    v8 = 45;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d CommsClient: sending reply port away\n", &v5, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "ps_comms_client_send_with_reply_port";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSCommsClient::disconnectServer();
}

void PSCommsClient::disconnectServer()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

uint64_t PSCommsClient::isAck(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s: Invalid Error response subtype\n", "isAck");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v15 = 153;
    v16 = 2080;
    v17 = "isAck";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d %s: Invalid Error response subtype\n", v4, v5, v6, v7, v12, v13);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v15 = v1;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v10 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send(v10);
}

uint64_t PSCommsClient::send()
{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: failed to connect to server\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: failed to connect to server\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  return PSCommsClient::send_ool_ports_client_to_server();
}

uint64_t PSCommsClient::send_ool_ports_client_to_server()
{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: failed to connect to server\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: failed to connect to server\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send_wait(v13);
}

uint64_t PSCommsClient::send_wait()
{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: failed to connect to server\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: failed to connect to server\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send_wait(v13, v14);
}

{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: not using reply port for send_wait\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: not using reply port for send_wait\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return _getreply(v13);
}

uint64_t _getreply(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Client %s failed to receive on port\n", "_getreply");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    v15 = 293;
    v16 = 2080;
    v17 = "_getreply";
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d Client %s failed to receive on port\n", v4, v5, v6, v7, v12, v13);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      v15 = v1;
      OUTLINED_FUNCTION_3_2(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v14);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v10 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send_wait_ool(v10);
}

uint64_t PSCommsClient::send_wait_ool()
{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: failed to connect to server\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: failed to connect to server\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v13 = OUTLINED_FUNCTION_1();
  return PSCommsClient::send_wait_ool(v13, v14);
}

void PSCommsClient::send_wait_ool()
{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: not using reply port for send_wait_ool\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: not using reply port for send_wait_ool\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSCommsClient::send_ool();
}

void PSCommsClient::send_ool()
{
  OUTLINED_FUNCTION_14_0();
  *v0 = 0;
  asprintf(v0, "CommsClient: failed to connect to server\n");
  if (OUTLINED_FUNCTION_4())
  {
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_2_0(&dword_25EBC5000, v1, v2, "%s:%d CommsClient: failed to connect to server\n", v3, v4, v5, v6);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_1_0())
    {
      OUTLINED_FUNCTION_7_0();
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_1();
  PSCommsClient::PSCommsClient();
}

void PSCommsClient::PSCommsClient()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSCommsClient::~PSCommsClient()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSCommsServer::port_listener(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "port_listener";
  *(buf + 6) = 1024;
  *(buf + 14) = 99;
  *(buf + 9) = 2080;
  *(buf + 20) = "port_listener";
  *(buf + 14) = 2080;
  *(buf + 30) = a1;
  _os_log_impl(&dword_25EBC5000, log, OS_LOG_TYPE_FAULT, "%s:%d %s failed to receive on port with error: (%s)\n", buf, 0x26u);
}

void PSCommsServer::port_listener(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_8_2();
    if (v4)
    {
      LODWORD(v11) = 136315394;
      *(&v11 + 4) = "port_listener";
      WORD6(v11) = 1024;
      HIWORD(v11) = v3;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v11, HIWORD(v3), v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_5_0(v4, v5, *a2);
  __break(1u);
}

void PSCommsServer::add_cli_info(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_8_2();
    if (v4)
    {
      LODWORD(v11) = 136315394;
      *(&v11 + 4) = "add_cli_info";
      WORD6(v11) = 1024;
      HIWORD(v11) = v3;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v11, HIWORD(v3), v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_5_0(v4, v5, *a2);
  __break(1u);
}

{
  v12 = *MEMORY[0x277D85DE8];

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_8_2();
    if (v4)
    {
      LODWORD(v11) = 136315394;
      *(&v11 + 4) = "add_cli_info";
      WORD6(v11) = 1024;
      HIWORD(v11) = v3;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v11, HIWORD(v3), v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_5_0(v4, v5, *a2);
  __break(1u);
}

{
  v12 = *MEMORY[0x277D85DE8];

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_8_2();
    if (v4)
    {
      LODWORD(v11) = 136315394;
      *(&v11 + 4) = "add_cli_info";
      WORD6(v11) = 1024;
      HIWORD(v11) = v3;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v11, HIWORD(v3), v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_5_0(v4, v5, *a2);
  __break(1u);
}

void PSCommsServer::add_cli_info(uint64_t a1, uint64_t a2, int a3)
{
  *a2 = 136316162;
  *(a2 + 4) = "add_cli_info";
  *(a2 + 12) = 1024;
  OUTLINED_FUNCTION_1_2(a1, a2, a3);
  _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s: Mach port limit increase to LARGE failed with code 0x%x %s.", v3, 0x2Cu);
}

{
  *a2 = 136316162;
  *(a2 + 4) = "add_cli_info";
  *(a2 + 12) = 1024;
  OUTLINED_FUNCTION_1_2(a1, a2, a3);
  _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_FAULT, "%s:%d %s: mach_port_construct failed. ret=%#x (%s)", v3, 0x2Cu);
}

void PSCommsServer::~PSCommsServer(uint64_t a1, uint64_t a2, void *a3)
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315394;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_6_4(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v11);
  }

  *a3 = a2;
}

void PSCommsServer::handleClientSend(void *a1, uint64_t *a2)
{
  v12 = *MEMORY[0x277D85DE8];

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_8_2();
    if (v4)
    {
      LODWORD(v11) = 136315394;
      *(&v11 + 4) = "handleClientSend";
      WORD6(v11) = 1024;
      HIWORD(v11) = v3;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v5, v6, "%s() failed to flush buffers with error code: %d", v7, v8, v9, v10, v11, HIWORD(v3), v12);
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_5_0(v4, v5, *a2);
  __break(1u);
}

void PSBufferService::PSDeathNotifier::PSDeathNotifier(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSDeathNotifier";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSBufferService::PSDeathNotifier::PSDeathNotifier()
{
  OUTLINED_FUNCTION_1_3();
  if (OUTLINED_FUNCTION_4_2())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_6_4(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_3_6();
}

uint64_t PSFrameHistoryBufferServiceServer::reserveBuffer(char **a1)
{
  *a1 = 0;
  v3 = asprintf(a1, "PSFrameHistoryBufferService: Server vending out corrupted buffer !!!");
  v5 = _polarisdLogSharedInstance(v3, v4);
  if (OUTLINED_FUNCTION_6_3(v5))
  {
    *v25 = 136315650;
    *&v25[4] = "reserveBuffer";
    *&v25[12] = 1024;
    *&v25[14] = 568;
    *&v25[18] = 2080;
    *&v25[20] = *a1;
    OUTLINED_FUNCTION_12_3(&dword_25EBC5000, v6, v7, "%s:%d %s", v8, v9, v10, v11, *v25, *&v25[8], *&v25[16], *&v25[24]);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v14 = v12;
    v15 = _polarisdLogSharedInstance(v12, v13);
    if (OUTLINED_FUNCTION_5_1(v15))
    {
      *v24 = 136315394;
      *&v24[4] = "reserveBuffer";
      *&v24[12] = 1024;
      *&v24[14] = v14;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, *v24, *&v24[8], *&v24[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v22 = OUTLINED_FUNCTION_1();
  return _getBufferHeader(v22);
}

uint64_t _getBufferHeader(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_desc.freq_idx < PS_FRAME_HISTORY_BUFFER_POOL_MAP_LENGTH && buffer_desc.buffer_idx < _frameHistoryBufferPoolDesc.bufferPoolDesc[buffer_desc.freq_idx].buffer_count");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_5_1(v13))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v20 = OUTLINED_FUNCTION_1();
  return _getBufferHeader(v20);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "_getBufferHeader", "buffer_header->buffer_header_magic == PS_FRAME_HISTORY_BUFFER_SERVICE_BUFFER_HDR_MAGIC");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v22, v23);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_5_1(v13))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v22, v23);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v20 = OUTLINED_FUNCTION_1();
  return PSFrameHistoryBufferServiceServer::deleteBuffer(v20);
}

void PSFrameHistoryBufferServiceServer::deleteBuffer(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "deleteBuffer", "freq_idx < PS_FRAME_HISTORY_BUFFER_POOL_MAP_LENGTH && buffer_idx < _frameHistoryBufferPoolDesc.bufferPoolDesc[freq_idx].buffer_count");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v21, v22);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_5_1(v13))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v21, v22);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v20 = OUTLINED_FUNCTION_1();
  PSFrameHistoryBufferServiceServer::deleteBuffer(v20);
}

{
  *a1 = 0;
  v3 = asprintf(a1, "PSFrameHistoryBufferService: Buffer overflow has been discovered!!! State is corrupted");
  v5 = _polarisdLogSharedInstance(v3, v4);
  if (OUTLINED_FUNCTION_6_3(v5))
  {
    *v24 = 136315650;
    *&v24[4] = "deleteBuffer";
    *&v24[12] = 1024;
    *&v24[14] = 611;
    *&v24[18] = 2080;
    *&v24[20] = *a1;
    OUTLINED_FUNCTION_12_3(&dword_25EBC5000, v6, v7, "%s:%d %s", v8, v9, v10, v11, *v24, *&v24[8], *&v24[16], *&v24[24]);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v14 = v12;
    v15 = _polarisdLogSharedInstance(v12, v13);
    if (OUTLINED_FUNCTION_5_1(v15))
    {
      *v23 = 136315394;
      *&v23[4] = "deleteBuffer";
      *&v23[12] = 1024;
      *&v23[14] = v14;
      OUTLINED_FUNCTION_3_1(&dword_25EBC5000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, *v23, *&v23[8], *&v23[16]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  v22 = OUTLINED_FUNCTION_1();
  PSFrameHistoryBufferServiceServer::dumpFrameHistory(v22);
}

void PSFrameHistoryBufferServiceServer::dumpFrameHistory(char **a1)
{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "dumpFrameHistory", "post_counter.exec_counter >= pre_counter.exec_counter");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v20, v21);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_5_1(v13))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  abort_with_reason();
  __break(1u);
}

{
  *a1 = 0;
  v2 = asprintf(a1, "%s: PSFrameHistoryBufferService Assertion failed for %s", "dumpFrameHistory", "dump_type < PS_FRAME_HISTORY_DUMP_MAX");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_9_0(&dword_25EBC5000, v5, v6, "%s:%d %s: PSFrameHistoryBufferService Assertion failed for %s", v7, v8, v9, v10, v20, v21);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_5_1(v13))
    {
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v20, v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9();
  }

  abort_with_reason();
  __break(1u);
}

uint64_t ps_atomic_ringbuffer_init(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = 3758097084;
  if (a1)
  {
    if ((a1 & 0xF) != 0)
    {
      v5 = _ps_buffer_log;
      if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
      {
        v19[0] = 67109376;
        v19[1] = 16;
        v20 = 2048;
        v21 = a1;
        _os_log_impl(&dword_25EBC5000, v5, OS_LOG_TYPE_ERROR, "ring buffer base needs to be aligned to %u, actual=0x%p", v19, 0x12u);
      }
    }

    else if (a3 <= 0x2000)
    {
      v6 = 16 * a2 * ((a3 + 15) >> 4);
      if (a2 <= 0x800 && v6 <= 0x1000000)
      {
        *(a1 + 8) = 32;
        *(a1 + 12) = 16 * a2 + 32;
        *(a1 + 20) = a2;
        *(a1 + 24) = (a3 + 15) & 0x7FF0;
        *(a1 + 16) = v6;
        atomic_store(0, a1);
        if (a2)
        {
          v8 = 0;
          _X0 = 1;
          do
          {
            v10 = (a1 + 32 + 16 * v8);
            v11 = *v10;
            do
            {
              _X5 = v10[1];
              __asm { CASPAL          X4, X5, X0, X1, [X11] }

              _ZF = _X4 == v11;
              v11 = _X4;
            }

            while (!_ZF);
            ++v8;
          }

          while (v8 < a2);
        }

        v3 = 0;
        *(a1 + 28) = 1282145770;
      }
    }
  }

  return v3;
}

void ps_atomic_ringbuffer_create_writer(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_9_3();
    if (v4)
    {
      v5 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *v5 = 0;
      v5[1] = 0;
      *(v5 + 1) = getpid();
      v5[1] = a2;
      *a1 = v5;
    }
  }
}

void ps_atomic_ringbuffer_create_reader(void *a1, uint64_t a2)
{
  if (a1 && a2)
  {
    OUTLINED_FUNCTION_9_3();
    if (v4)
    {
      v5 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040216EE090uLL);
      v5[1] = 0;
      v5[2] = 0;
      *v5 = 0;
      *(v5 + 2) = getpid();
      v5[2] = a2;
      *a1 = v5;
    }
  }
}

uint64_t ps_atomic_ringbuffer_writer_acquire_entry(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 3758097084;
  if (a1 && a2 && a3)
  {
    v4 = *(a1 + 8);
    *(a2 + 16) = -1;
    if (*(v4 + 20))
    {
      _X4 = 0;
      v6 = 0;
      while (2)
      {
        add = atomic_fetch_add(v4, 1uLL);
        v8 = add % *(v4 + 20);
        _X7 = 0;
        __asm { CASPAL          X6, X7, X4, X5, [X13] }

        v14 = (_X6 >> 40) & 0xFFFFFFFFFFFFFFLL;
        v15 = add & 0xFFFFFFFFFFFFFFLL;
        v16 = (add >> 24);
        v17 = add << 40;
        v18 = _X6;
        v19 = _X6 >> 8;
        v20 = 0;
        while (1)
        {
          _ZF = v18 == 4 || v18 == 1;
          if (!_ZF || v14 > v15)
          {
            break;
          }

          v23 = v18 | (v19 << 8) | (v14 << 40);
          v24 = (v14 >> 24) | (v20 << 32);
          v25 = *(a1 + 4);
          _X22 = v17 | (v25 << 8) | 2;
          _X21 = v24;
          __asm { CASPAL          X20, X21, X22, X23, [X13] }

          if (_X20 == v23)
          {
            v3 = 0;
            *a2 = (v25 << 8) | v17 | 2;
            *(a2 + 8) = (v20 << 32) | v16;
            *(a2 + 16) = v8;
            *a3 = v4 + *(v4 + 12) + (*(v4 + 24) * v8);
            return v3;
          }

          v19 = _X20 >> 8;
          *(&v29 + 1) = v24;
          *&v29 = _X20;
          v14 = (v29 >> 40) & 0xFFFFFFFFFFFFFFLL;
          v20 = HIDWORD(v24);
          v18 = _X20;
        }

        if (++v6 < *(v4 + 20))
        {
          continue;
        }

        break;
      }
    }

    return 3758097136;
  }

  return v3;
}

uint64_t ps_atomic_ringbuffer_reader_acquire_entry(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = 3758097136;
  v4 = 3758097084;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 16);
    *(a2 + 16) = -1;
    v6 = *(a1 + 4);
    if (v6 < v5[5])
    {
      _X4 = 0;
      do
      {
        _X7 = 0;
        __asm { CASPAL          X6, X7, X4, X5, [X14] }

        v14 = _X6;
        v15 = _X6 >> 8;
        v16 = 0;
        while (v14 == 4)
        {
          v17 = (v15 << 8) | 4;
          *(&v19 + 1) = v16;
          *&v19 = v15;
          v18 = v19 >> 56;
          _X16 = ((v15 & 0xFFFFFF00000000 | *(a1 + 8)) << 8) | 8;
          _X21 = v18;
          __asm { CASPAL          X20, X21, X16, X17, [X14] }

          v14 = _X20;
          *(&v19 + 1) = v18;
          *&v19 = _X20;
          v15 = v19 >> 8;
          v16 = v18 >> 8;
          if (_X20 == v17)
          {
            v3 = 0;
            *a2 = _X16;
            *(a2 + 8) = v18;
            *(a2 + 16) = v6;
            *a3 = v5 + v5[3] + v5[6] * v6;
            v23 = v6 + 1;
            goto LABEL_12;
          }
        }

        ++v6;
      }

      while (v6 < v5[5]);
    }

    v23 = 0;
LABEL_12:
    *(a1 + 4) = v23;
    return v3;
  }

  return v4;
}

void PSSharedRingBufferWriter::PSSharedRingBufferWriter()
{
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSRingBufferLoggerClient::_allocate(uint64_t a1, uint64_t a2)
{
  v2 = pbs_ringbufferlogger_shared_instance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "_allocate";
    OUTLINED_FUNCTION_5_4(&dword_25EBC5000, v3, v4, "%s: Unknown reply received for msg allocate", v5, v6, v7, v8, v9, DWORD2(v9));
  }

  abort();
}

{
  v2 = pbs_ringbufferlogger_shared_instance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v9) = 136315138;
    *(&v9 + 4) = "_allocate";
    OUTLINED_FUNCTION_5_4(&dword_25EBC5000, v3, v4, "%s: Reply msg id does not match the resoource id", v5, v6, v7, v8, v9, DWORD2(v9));
  }

  abort();
}

uint64_t PSRingBufferLoggerClient::_deallocate(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Invalid message received for key %s. Received a complex message when expecting a simple message", (a2 + 16));
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d Invalid message received for key %s. Received a complex message when expecting a simple message", v4, v5, v6, v7, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v14 = OUTLINED_FUNCTION_1();
  return PSRingBufferLoggerClient::_deallocate(v14);
}

void PSRingBufferLoggerClient::_deallocate(char **a1)
{
  *a1 = 0;
  asprintf(a1, "%s: error\n", "_deallocate");
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v1, v2, "%s:%d %s: error\n", v3, v4, v5, v6, v15, v16);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v7, v8, "%s() failed to flush buffers with error code: %d", v9, v10, v11, v12, v15, v16);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v13 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerClient::_registerWithServer(v13, v14);
}

void PSRingBufferLoggerClient::_registerWithServer(char **a1, uint64_t a2)
{
  *a1 = 0;
  asprintf(a1, "Invalid message received for key %s. Received a complex message when expecting a simple message", (a2 + 16));
  if (OUTLINED_FUNCTION_8())
  {
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v2, v3, "%s:%d Invalid message received for key %s. Received a complex message when expecting a simple message", v4, v5, v6, v7, v16, v17);
  }

  if (OSLogFlushBuffers())
  {
    if (OUTLINED_FUNCTION_0())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_3(&dword_25EBC5000, v8, v9, "%s() failed to flush buffers with error code: %d", v10, v11, v12, v13, v16, v17);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v14 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerClient::requestDumpAllBuffers(v14, v15);
}

void PSRingBufferLoggerClient::requestDumpAllBuffers(uint64_t a1, uint64_t a2)
{
  v2 = pbs_ringbufferlogger_shared_instance(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_DEFAULT, "Invalid message received. Received a complex message when expecting a simple message", v3, 2u);
  }

  abort();
}

uint64_t PSRingBufferLoggerClientWnR1::initFromBuffer(PSRingBufferLoggerClientWnR1 *this, unsigned __int8 *a2)
{
  *(this + 121) = a2;
  *(this + 78) = a2;
  if (*a2 != -774979923)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 984) = *(a2 + 4);
  v3 = *(a2 + 20);
  *(this + 1000) = v3;
  *(this + 254) = *(a2 + 9);
  if (PSAtomicWnRnArray::initFromBuffer((this + 656), &a2[DWORD1(v3)]))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(this + 78);
  v5 = v4[7];
  v6 = *(this + 121) + v4[6];
  *(this + 79) = v6 + v4[2];
  *(this + 122) = v6 + v5;
  v7 = *(this + 81);
  if (v7)
  {
    ps_atomic_ringbuffer_delete_writer(v7);
  }

  v8 = *(this + 80);
  if (v8)
  {
    ps_atomic_ringbuffer_delete_reader(v8);
  }

  ps_atomic_ringbuffer_create_writer(this + 81, *(this + 122));
  if (v9)
  {
    return 0xFFFFFFFFLL;
  }

  ps_atomic_ringbuffer_create_reader(this + 80, *(this + 122));
  if (v11)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t PSRingBufferLoggerClientWnR1::write(PSRingBufferLoggerClientWnR1 *this, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!*(this + 249) || a4 + 32 > *(this + 250))
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a2;
  v7 = *(this + 136);
  v10 = a4;
  v11 = v7;
  pthread_threadid_np(0, v12);
  v12[1] = mach_continuous_time();
  v13[0] = &v9;
  v13[1] = 32;
  v13[2] = a3;
  v14 = a4;
  v15 = 32;
  ps_atomic_ringbuffer_write_entries(*(this + 81), v13, 2u);
  return 0;
}

void PSRingBufferLoggerClientWnR1::create(char **a1, _DWORD *a2, const char *a3)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to create ringbuffer writer, memory is corrupted, name (%s) id (%d)", a3, *a2);
  v5 = pbs_ringbufferlogger_shared_instance(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v6, v7, "%s:%d %s", v8, v9, v10, v11, v12, v13);
  }

  abort_with_reason();
  __break(1u);
}

{
  *a1 = 0;
  v3 = asprintf(a1, "Unable to create ringbuffer reader, memory is corrupted, name (%s) id (%d)", a3, *a2);
  v5 = pbs_ringbufferlogger_shared_instance(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_2(&dword_25EBC5000, v6, v7, "%s:%d %s", v8, v9, v10, v11, v12, v13);
  }

  abort_with_reason();
  __break(1u);
}

void PSRingBufferLoggerServer::dump_delete_async(char **a1, unsigned __int8 a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "logInfo[idx].state is not valid for dumping, state %u, type %u, key %s, id %u", a2, *(a3 + 528), (a3 + 1), *(a3 + 516));
  v6 = pbs_ringbufferlogger_shared_instance(v4, v5);
  if (OUTLINED_FUNCTION_6_3(v6))
  {
    v9 = *a1;
    v10 = 136315650;
    v11 = "dump_delete_async";
    v12 = 1024;
    v13 = 209;
    v14 = 2080;
    v15 = v9;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v7, v8, "%s:%d %s", &v10);
  }

  OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::enqueueLogDelete();
}

void PSRingBufferLoggerServer::enqueueLogDelete(NSObject *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_FAULT))
  {
    v4 = *a2;
    v5 = 136315650;
    v6 = "enqueueLogDelete";
    v7 = 1024;
    v8 = 368;
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&dword_25EBC5000, a1, OS_LOG_TYPE_FAULT, "%s:%d %s", &v5, 0x1Cu);
  }
}

void PSRingBufferLoggerServer::allocateLoggingBuffer(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Invalid management of logResHashToEntryIdx, size >= PBS_RINGBUFFER_LOG_MAX");
  v4 = pbs_ringbufferlogger_shared_instance(v2, v3);
  if (OUTLINED_FUNCTION_6_3(v4))
  {
    v7 = *a1;
    v11 = 136315650;
    v12 = "allocateLoggingBuffer";
    v13 = 1024;
    v14 = 471;
    v15 = 2080;
    v16 = v7;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v5, v6, "%s:%d %s", &v11);
  }

  v8 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::finalizeLoggingBuffer(v8, v9, v10);
}

void PSRingBufferLoggerServer::finalizeLoggingBuffer(char **a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "Logging buffer created with incorrect flags, type: %u, key: %s, id: %u", *(a2 + 528), a3, *(a3 + 1028));
  v6 = pbs_ringbufferlogger_shared_instance(v4, v5);
  if (OUTLINED_FUNCTION_6_3(v6))
  {
    v9 = *a1;
    v12 = 136315650;
    v13 = "finalizeLoggingBuffer";
    v14 = 1024;
    v15 = 551;
    v16 = 2080;
    v17 = v9;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v7, v8, "%s:%d %s", &v12);
  }

  v10 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::finalizeLoggingBuffer(v10, v11);
}

void PSRingBufferLoggerServer::finalizeLoggingBuffer(char **a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v3 = asprintf(a1, "Failed to find log buffer, key: %s id: %u", a2, *(a2 + 1028));
  v5 = pbs_ringbufferlogger_shared_instance(v3, v4);
  if (OUTLINED_FUNCTION_6_3(v5))
  {
    v8 = *a1;
    v11 = 136315650;
    v12 = "finalizeLoggingBuffer";
    v13 = 1024;
    v14 = 537;
    v15 = 2080;
    v16 = v8;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v6, v7, "%s:%d %s", &v11);
  }

  v9 = OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::finalizeLoggingBuffer(v9, v10);
}

void PSRingBufferLoggerServer::finalizeLoggingBuffer(char **a1, PSSharedResource *this)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  Key = PSSharedResource::getKey(this);
  ID = PSSharedResource::getID(this);
  v6 = asprintf(a1, "Log not found, key %s, id %u", Key, ID);
  v8 = pbs_ringbufferlogger_shared_instance(v6, v7);
  if (OUTLINED_FUNCTION_6_3(v8))
  {
    v11 = *a1;
    v12 = 136315650;
    v13 = "finalizeLoggingBuffer";
    v14 = 1024;
    v15 = 532;
    v16 = 2080;
    v17 = v11;
    OUTLINED_FUNCTION_1_4(&dword_25EBC5000, v9, v10, "%s:%d %s", &v12);
  }

  OUTLINED_FUNCTION_1();
  PSRingBufferLoggerServer::registerWithLoggingBuffer();
}

void PSRingBufferW1R1Writer::PSRingBufferW1R1Writer(int a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PSRingBufferW1R1Writer";
    v5 = 1024;
    v6 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v3, 0x12u);
  }
}

void PSResourcePIDTracker::stopTracking(char **a1)
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s:%s: We have detected a buffer overflow", "PIDTracker", "stopTracking");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    v6 = "stopTracking";
    v7 = 1024;
    v8 = 40;
    v9 = 2080;
    v10 = "PIDTracker";
    v11 = 2080;
    v12 = "stopTracking";
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d %s:%s: We have detected a buffer overflow", buf, 0x26u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = v2;
    v4 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v6 = "stopTracking";
      v7 = 1024;
      v8 = v3;
      _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSResourceFactory::getShbuffletInfo();
}

void PSResourceFactory::getShbuffletInfo()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSResourceFactory";
    *&v6[12] = 2080;
    *&v6[14] = "getShbuffletInfo";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s id > MAX_RESOURCES\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSResourceFactory::handle_resource_deallocate()
{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSResourceFactory";
    *&v6[12] = 2080;
    *&v6[14] = "handle_resource_deallocate";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "+ %s:%s resource is NULL - That should not be the case\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSResourceFactory::handle_dealloc_shbufflet(char **a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "%s(line=%d): Did not find id for resource %s id=%d.\n", "PSResourceFactory", 373, a2, *(a2 + 1028));
  v3 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v4 = *(a2 + 1028);
    *buf = 136316418;
    v9 = "handle_dealloc_shbufflet";
    v10 = 1024;
    v11 = 373;
    v12 = 2080;
    v13 = "PSResourceFactory";
    v14 = 1024;
    v15 = 373;
    v16 = 2080;
    v17 = a2;
    v18 = 1024;
    v19 = v4;
    _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_FAULT, "%s:%d %s(line=%d): Did not find id for resource %s id=%d.\n", buf, 0x32u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "handle_dealloc_shbufflet";
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_25EBC5000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  PSResourceFactory::saveReaderPorts();
}

void PSResourceFactory::saveReaderPorts()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSResourceFactory::replyWithShbuffletList(int a1)
{
  v2 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v3 = 136315650;
    v4 = "PSResourceFactory";
    v5 = 2080;
    v6 = "replyWithShbuffletList";
    v7 = 1024;
    v8 = a1;
    _os_log_impl(&dword_25EBC5000, v2, OS_LOG_TYPE_ERROR, "%s: %s - resource at %d not INITIALIZED\n", &v3, 0x1Cu);
  }

  abort();
}

void PSResourceFactory::replyWithShbuffletList(int a1, int a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = 136315906;
    v6 = "PSResourceFactory";
    v7 = 2080;
    v8 = "replyWithShbuffletList";
    v9 = 1024;
    v10 = a1;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s: %s - I counted %d resources but num_resources = %d. Why? Why? Why?\n", &v5, 0x22u);
  }

  abort();
}

void PSResourceFactory::replyWithShbuffletList()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSResourceFactory";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: OOM\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSResourceFactory::handle_client_died()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSResourceFactory::handle_shbufflet_info()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

{
  if (OUTLINED_FUNCTION_10())
  {
    *v6 = 136315394;
    *&v6[4] = "PSResourceFactory";
    *&v6[12] = 2080;
    *&v6[14] = "handle_shbufflet_info";
    OUTLINED_FUNCTION_12(&dword_25EBC5000, v0, v1, "%s:%s- PSLocklessBufferSelector Create FAILED!!\n", v2, v3, v4, v5, *v6, *&v6[8], *&v6[16]);
  }

  abort();
}

void PSResourceFactory::handle_shbufflet_info(int *a1, uint64_t a2)
{
  v4 = _ps_buffer_log;
  if (OUTLINED_FUNCTION_10())
  {
    v5 = *a1;
    v6 = 136315906;
    v7 = "PSResourceFactory";
    v8 = 2080;
    v9 = "handle_shbufflet_info";
    v10 = 1024;
    v11 = v5;
    v12 = 2080;
    v13 = a2;
    _os_log_impl(&dword_25EBC5000, v4, OS_LOG_TYPE_ERROR, "%s: %s - PSSharedSemaphoreAllocator bufflet with id (%d) key(%s) not found! \n", &v6, 0x26u);
  }

  abort();
}

void PSResourceFactory::handle_resource_status()
{
  if (OUTLINED_FUNCTION_10())
  {
    LODWORD(v6) = 136315138;
    *(&v6 + 4) = "PSResourceFactory";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v0, v1, "%s: No such resource to initialize\n", v2, v3, v4, v5, v6, DWORD2(v6));
  }

  abort();
}

void PSResourceFactory::handle_resource_status(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "PSResourceFactory";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v1, v2, "%s: Invalid Resource Factory Status message status\n", v3, v4, v5, v6, v7, DWORD2(v7));
  }

  abort();
}

{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    LODWORD(v7) = 136315138;
    *(&v7 + 4) = "PSResourceFactory";
    OUTLINED_FUNCTION_3_0(&dword_25EBC5000, v1, v2, "%s: Invalid Resource Factory Status subtype message\n", v3, v4, v5, v6, v7, DWORD2(v7));
  }

  abort();
}

void PSResourceFactory::saveResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

uint64_t handle_install_resource(char **a1)
{
  v9 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Failed to unmap shared semaphore from the Resource Factory's address space.");
  v1 = _ps_buffer_log;
  if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315394;
    v6 = "handle_install_resource";
    v7 = 1024;
    v8 = 1470;
    _os_log_impl(&dword_25EBC5000, v1, OS_LOG_TYPE_FAULT, "%s:%d Failed to unmap shared semaphore from the Resource Factory's address space.", &v5, 0x12u);
  }

  v2 = OSLogFlushBuffers();
  if (v2)
  {
    v3 = _ps_buffer_log;
    if (os_log_type_enabled(_ps_buffer_log, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "handle_install_resource";
      v7 = 1024;
      v8 = v2;
      _os_log_impl(&dword_25EBC5000, v3, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v5, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  result = abort_with_reason();
  __break(1u);
  return result;
}

void PSResourceFactory::shareResource()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

void PSResourceFactory::PSResourceFactory()
{
  if (OUTLINED_FUNCTION_10())
  {
    v6 = 136315394;
    OUTLINED_FUNCTION_10_0();
    OUTLINED_FUNCTION_13_0(&dword_25EBC5000, v0, v1, "%s() failed to flush buffers with error code: %d", v2, v3, v4, v5, v6);
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
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

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}