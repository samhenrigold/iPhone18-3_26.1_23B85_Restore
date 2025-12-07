void std::__allocate_at_least[abi:nn200100]<std::allocator<PSTask * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<PSTask * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__function::__value_func<void ()(PSTask *)>::swap[abi:nn200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
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

void std::__allocate_at_least[abi:nn200100]<std::allocator<ps_resource_array *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<ps_resource>::__throw_length_error[abi:nn200100]();
}

const void **std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,ps_resource *>>(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a2;
  v5 = *(a2 + 1);
  if ((a2[23] & 0x80u) == 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v17, a2, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_21;
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
LABEL_21:
    std::__hash_table<std::__hash_value_type<std::string,ps_resource *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,ps_resource *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,ps_resource *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,ps_resource *>>>::__construct_node_hash<std::pair<std::string const,ps_resource *>>();
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
      goto LABEL_21;
    }

LABEL_20:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](a1, v14 + 2, v3))
  {
    goto LABEL_20;
  }

  return v14;
}

void sub_25ECA8518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ps_resource *>,void *>>>::operator()[abi:nn200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_25ECA85E0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ps_resource *>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,ps_resource *>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id __PSGraphLogSharedInstance(uint64_t a1)
{
  if (__PSGraphLogSharedInstance_onceToken != -1)
  {
    __PSGraphLogSharedInstance_cold_1();
  }

  v2 = sharedInstance_0;

  return v2;
}

double __ps_public_util_get_mach_time_factor_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1;
  mach_time_factor = *&result;
  return result;
}

unint64_t ps_public_util_ns_to_mach_time(unint64_t a1)
{
  if (ps_public_util_get_mach_time_factor_onceToken != -1)
  {
    ps_public_util_ns_to_mach_time_cold_1();
  }

  return (a1 / *&mach_time_factor);
}

unint64_t ps_public_util_mach_time_to_ns(unint64_t a1)
{
  if (ps_public_util_get_mach_time_factor_onceToken != -1)
  {
    ps_public_util_ns_to_mach_time_cold_1();
  }

  return (*&mach_time_factor * a1);
}

uint64_t ps_public_util_get_mct_mat_delta()
{
  v6 = *MEMORY[0x277D85DE8];
  times = mach_get_times();
  if (!times)
  {
    return 0;
  }

  v1 = times;
  v2 = __PSGraphLogSharedInstance(times);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v5 = v1;
    _os_log_impl(&dword_25EC85000, v2, OS_LOG_TYPE_ERROR, "Failed to get mach time delta (MCT - MAT) with kr %d", buf, 8u);
  }

  return 0;
}

uint64_t ps_public_util_spu_to_AP_time(uint64_t a1, void *a2)
{
  v3 = 1000 * a1;
  if (ps_public_util_get_mach_time_factor_onceToken != -1)
  {
    ps_public_util_ns_to_mach_time_cold_1();
  }

  v4 = 3758097084;
  v5 = (v3 / *&mach_time_factor);
  mct_mat_delta = ps_public_util_get_mct_mat_delta();
  if (v5 <= mct_mat_delta)
  {
    ps_public_util_spu_to_AP_time_cold_2(mct_mat_delta, v5);
  }

  else if (a2)
  {
    v4 = 0;
    *a2 = v5 - mct_mat_delta;
  }

  return v4;
}

void ps_resource_stream_provider_representation_cold_1(char **a1, int a2)
{
  *a1 = 0;
  v3 = asprintf(a1, "Unexpected stream provider type found: %d", a2);
  v4 = __PSGraphLogSharedInstance(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v9 = "ps_resource_stream_provider_representation";
    v10 = 1024;
    v11 = 61;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&dword_25EC85000, v4, OS_LOG_TYPE_FAULT, "%s:%d Unexpected stream provider type found: %d", buf, 0x18u);
  }

  v5 = OSLogFlushBuffers();
  if (v5)
  {
    v6 = v5;
    v7 = __PSGraphLogSharedInstance(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "ps_resource_stream_provider_representation";
      v10 = 1024;
      v11 = v6;
      _os_log_impl(&dword_25EC85000, v7, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", buf, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  abort_with_reason();
  +[PSStreamDomain msgDomain];
}

uint64_t ps_graph_populate_sync_data_cold_1(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "sync_context is null");
  v3 = __PSGraphLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v17 = 136315394;
    *&v17[4] = "ps_graph_populate_sync_data";
    *&v17[12] = 1024;
    *&v17[14] = 2089;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v4, v5, "%s:%d sync_context is null", v6, v7, v8, v9, *v17, *&v17[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSGraphLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_timestamp_cold_1(v14, v15);
}

uint64_t ps_graph_sync_data_get_timestamp_cold_1(char **a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "index %zu out of bounds", a2);
  v5 = __PSGraphLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_8();
    v22 = 2097;
    v23 = 2048;
    v24 = a2;
    OUTLINED_FUNCTION_3(&dword_25EC85000, v6, v7, "%s:%d index %zu out of bounds", v8, v9, v10, v11, v19, v20);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = v12;
    v14 = __PSGraphLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_8();
      v22 = v13;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v15, v16, "%s() failed to flush buffers with error code: %d", v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_timestamp_cold_2(v17);
}

uint64_t ps_graph_sync_data_get_timestamp_cold_2(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "sync_context is null");
  v3 = __PSGraphLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v17 = 136315394;
    *&v17[4] = "ps_graph_sync_data_get_timestamp";
    *&v17[12] = 1024;
    *&v17[14] = 2096;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v4, v5, "%s:%d sync_context is null", v6, v7, v8, v9, *v17, *&v17[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSGraphLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_virtual_frameid_cold_1(v14, v15);
}

uint64_t ps_graph_sync_data_get_virtual_frameid_cold_1(char **a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "index %zu out of bounds", a2);
  v5 = __PSGraphLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_8();
    v22 = 2105;
    v23 = 2048;
    v24 = a2;
    OUTLINED_FUNCTION_3(&dword_25EC85000, v6, v7, "%s:%d index %zu out of bounds", v8, v9, v10, v11, v19, v20);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = v12;
    v14 = __PSGraphLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_8();
      v22 = v13;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v15, v16, "%s() failed to flush buffers with error code: %d", v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_virtual_frameid_cold_2(v17);
}

uint64_t ps_graph_sync_data_get_virtual_frameid_cold_2(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "sync_context is null");
  v3 = __PSGraphLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v17 = 136315394;
    *&v17[4] = "ps_graph_sync_data_get_virtual_frameid";
    *&v17[12] = 1024;
    *&v17[14] = 2104;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v4, v5, "%s:%d sync_context is null", v6, v7, v8, v9, *v17, *&v17[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSGraphLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v17);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_physical_frameid_cold_1(v14, v15);
}

uint64_t ps_graph_sync_data_get_physical_frameid_cold_1(char **a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v4 = asprintf(a1, "index %zu out of bounds", a2);
  v5 = __PSGraphLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    OUTLINED_FUNCTION_8();
    v22 = 2113;
    v23 = 2048;
    v24 = a2;
    OUTLINED_FUNCTION_3(&dword_25EC85000, v6, v7, "%s:%d index %zu out of bounds", v8, v9, v10, v11, v19, v20);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = v12;
    v14 = __PSGraphLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v14))
    {
      OUTLINED_FUNCTION_8();
      v22 = v13;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v15, v16, "%s() failed to flush buffers with error code: %d", v21);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v17 = OUTLINED_FUNCTION_0();
  return ps_graph_sync_data_get_physical_frameid_cold_2(v17);
}

uint64_t ps_graph_sync_data_get_physical_frameid_cold_2(char **a1)
{
  v17 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "sync_context is null");
  v3 = __PSGraphLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v16 = 136315394;
    *&v16[4] = "ps_graph_sync_data_get_physical_frameid";
    *&v16[12] = 1024;
    *&v16[14] = 2112;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v4, v5, "%s:%d sync_context is null", v6, v7, v8, v9, *v16, *&v16[16]);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = __PSGraphLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v11))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_1(&dword_25EC85000, v12, v13, "%s() failed to flush buffers with error code: %d", v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v14 = OUTLINED_FUNCTION_0();
  return ps_reader_acquire(v14);
}

uint64_t ps_reader_acquire(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 24)), v1 != 4) && (v2 = *(a1 + 8)) != 0)
  {
    return v2();
  }

  else
  {
    return 1;
  }
}

uint64_t ps_reader_relinquish(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 24)), v1 != 4) && (v2 = *(a1 + 16)) != 0)
  {
    return v2();
  }

  else
  {
    return 1;
  }
}

uint64_t ps_task_context_set_mtl_device_cold_1(uint64_t a1, char **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  *a2 = 0;
  v6 = asprintf(a2, "MTLDevice input does not point to a valid MTLDevice. Instead of MTLDevice, found class type %s", [v5 UTF8String]);
  v7 = __PSGraphLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    *buf = 136315650;
    v24 = "ps_task_context_set_mtl_device";
    v25 = 1024;
    v26 = 73;
    v27 = 2080;
    v28 = [v5 UTF8String];
    OUTLINED_FUNCTION_3(&dword_25EC85000, v8, v9, "%s:%d MTLDevice input does not point to a valid MTLDevice. Instead of MTLDevice, found class type %s", v10, v11, v12, v13, v21, v22);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = v14;
    v16 = __PSGraphLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v16))
    {
      *buf = 136315394;
      v24 = "ps_task_context_set_mtl_device";
      v25 = 1024;
      v26 = v15;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v17, v18, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_task_context_set_mtl_device_cold_2(v19);
}

uint64_t ps_task_context_set_mtl_device_cold_2(char **a1)
{
  v20 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "MTLDevice pointer was null.");
  v3 = __PSGraphLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_7_0();
    v19 = 67;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v4, v5, "%s:%d MTLDevice pointer was null.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PSGraphLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_7_0();
      v19 = v11;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v13, v14, "%s() failed to flush buffers with error code: %d", v18);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v15 = OUTLINED_FUNCTION_0();
  return ps_task_context_set_mtl_command_queue_cold_1(v15, v16);
}

uint64_t ps_task_context_set_mtl_command_queue_cold_1(uint64_t a1, char **a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  *a2 = 0;
  v6 = asprintf(a2, "MTLCommandQueue input does not point to a valid MTLCommandQueue. Instead of MTLCommandQueue, found class type %s", [v5 UTF8String]);
  v7 = __PSGraphLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    *buf = 136315650;
    v24 = "ps_task_context_set_mtl_command_queue";
    v25 = 1024;
    v26 = 93;
    v27 = 2080;
    v28 = [v5 UTF8String];
    OUTLINED_FUNCTION_3(&dword_25EC85000, v8, v9, "%s:%d MTLCommandQueue input does not point to a valid MTLCommandQueue. Instead of MTLCommandQueue, found class type %s", v10, v11, v12, v13, v21, v22);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = v14;
    v16 = __PSGraphLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v16))
    {
      *buf = 136315394;
      v24 = "ps_task_context_set_mtl_command_queue";
      v25 = 1024;
      v26 = v15;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v17, v18, "%s() failed to flush buffers with error code: %d", buf);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v19 = OUTLINED_FUNCTION_0();
  return ps_task_context_set_mtl_command_queue_cold_2(v19);
}

void ps_task_context_set_mtl_command_queue_cold_2(char **a1)
{
  v18 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "MTLCommandQueue pointer was null.");
  v3 = __PSGraphLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    OUTLINED_FUNCTION_7_0();
    v17 = 87;
    OUTLINED_FUNCTION_2(&dword_25EC85000, v4, v5, "%s:%d MTLCommandQueue pointer was null.", v6, v7, v8, v9);
  }

  v10 = OSLogFlushBuffers();
  if (v10)
  {
    v11 = v10;
    v12 = __PSGraphLogSharedInstance(v10);
    if (OUTLINED_FUNCTION_6(v12))
    {
      OUTLINED_FUNCTION_7_0();
      v17 = v11;
      OUTLINED_FUNCTION_1(&dword_25EC85000, v13, v14, "%s() failed to flush buffers with error code: %d", v16);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  v15 = OUTLINED_FUNCTION_0();
  [PSTask addInput:v15];
}

void vertex_new_cold_1()
{
  OUTLINED_FUNCTION_8_0();
  *v1 = 0;
  v2 = asprintf(v1, "OOM");
  v4 = __PSUtilitiesLogSharedInstance(v2, v3);
  if (OUTLINED_FUNCTION_5(v4))
  {
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_2(&dword_25EC85000, v5, v6, "%s:%d OOM", v7, v8, v9, v10);
  }

  v11 = OSLogFlushBuffers();
  if (v11)
  {
    v13 = __PSUtilitiesLogSharedInstance(v11, v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_2_0(&dword_25EC85000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
  __PSUtilitiesLogSharedInstance_cold_1();
}

uint64_t ps_writer_acquire(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 40)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_relinquish(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 48)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_publish(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 56)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_pause(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 64)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_resume(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 72)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_pause_liveness(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 64)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_writer_resume_liveness(uint64_t a1)
{
  if (a1 && (v1 = atomic_load((a1 + 80)), v1 != 9) && (v2 = *(a1 + 72)) != 0)
  {
    return v2();
  }

  else
  {
    return OUTLINED_FUNCTION_0_0();
  }
}

uint64_t ps_resource::get_databuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 32 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_jasperbuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 112 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_pearlbuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 104 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_timestamp(ps_resource *this, unint64_t a2)
{
  begin = this->_timestamps.__begin_;
  if (a2 >= this->_timestamps.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_buffer_expiry_timestamp(ps_resource *this, unint64_t a2)
{
  begin = this->_buffer_expiry_timestamps.__begin_;
  if (a2 >= this->_buffer_expiry_timestamps.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return 0;
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_buffer_usage_completed_timestamp(ps_resource *this, unint64_t a2)
{
  begin = this->_buffer_usage_completed_timestamps.__begin_;
  if (a2 >= this->_buffer_usage_completed_timestamps.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return OUTLINED_FUNCTION_11();
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_frameid(ps_resource *this, unint64_t a2)
{
  begin = this->_frameids.__begin_;
  if (a2 >= this->_frameids.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return OUTLINED_FUNCTION_11();
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_physical_frameid(ps_resource *this, unint64_t a2)
{
  begin = this->_physical_frameids.__begin_;
  if (a2 >= this->_physical_frameids.__end_ - begin || this->_item_status.__begin_[a2] == 1)
  {
    return OUTLINED_FUNCTION_11();
  }

  else
  {
    return OUTLINED_FUNCTION_4_0(a2, begin);
  }
}

uint64_t ps_resource::get_object_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 8 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t ps_resource::get_data(ps_resource *this, unint64_t a2, unint64_t *a3)
{
  OUTLINED_FUNCTION_12(this);
  OUTLINED_FUNCTION_3_0();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7 >= v8;
  }

  if (v10)
  {
    result = 0;
    *v3 = 0;
  }

  else if (*(*(v5 + 280) + 8 * v4) == 1)
  {
    return 0;
  }

  else
  {
    v12 = (v6 + 16 * v4);
    result = *v12;
    *v3 = v12[1];
  }

  return result;
}

uint64_t ps_resource::get_object(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_0();
  if (v2 || v4 >= v5)
  {
    return 0;
  }

  else
  {
    return *(v3 + 8 * v1);
  }
}

uint64_t ps_resource::get_databuffer(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_0();
  if (v2 || v4 >= v5)
  {
    return 0;
  }

  else
  {
    return *(v3 + 32 * v1 + 8);
  }
}

uint64_t ps_resource::get_anebuffer_ptr(ps_resource *this)
{
  OUTLINED_FUNCTION_8_1(this);
  OUTLINED_FUNCTION_1_0();
  if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v4 = v3 + 88 * v1;
  if (v5 >= v6)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void ps_resource::set_object(ps_resource *this, unint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_12(this);
  if (*(*(v5 + 280) + 8 * v4) != 1)
  {
    OUTLINED_FUNCTION_3_0();
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >= v8;
    }

    if (!v10)
    {
      *(v6 + 8 * v4) = v3;
    }
  }
}

void ps_resource::set_databuffer(ps_resource *this, unint64_t a2, __CVBuffer *a3, void *a4)
{
  OUTLINED_FUNCTION_6_0(this);
  OUTLINED_FUNCTION_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_0();
    if (v4)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6 >= v7;
    }

    if (!v8)
    {
      OUTLINED_FUNCTION_7_1(v5);
    }
  }
}

void ps_resource::set_jasperbuffer(ps_resource *this, unint64_t a2, __CVBuffer **a3, void **a4)
{
  jasperbuffer_ptr = ps_resource::get_jasperbuffer_ptr(this);
  if (jasperbuffer_ptr)
  {
    v5 = *(jasperbuffer_ptr + 40);
    if (v5)
    {
      if (v5 == 1)
      {
        OUTLINED_FUNCTION_13();
        do
        {
          OUTLINED_FUNCTION_0_1(v6);
        }

        while (!v7);
      }
    }

    else
    {
      OUTLINED_FUNCTION_13();
      do
      {
        OUTLINED_FUNCTION_0_1(v8);
      }

      while (!v7);
    }
  }
}

void ps_resource::set_jasperbuffer(ps_resource *this, unint64_t a2, __CVBuffer **a3, const __CFData **a4)
{
  if (ps_resource::get_jasperbuffer_ptr(this))
  {
    OUTLINED_FUNCTION_13();
    do
    {
      OUTLINED_FUNCTION_0_1(v4);
    }

    while (!v5);
  }
}

uint64_t ps_resource::set_jasperbuffer_valid(ps_resource *this, unint64_t a2, BOOL *a3)
{
  result = ps_resource::get_jasperbuffer_ptr(this);
  if (result)
  {
    for (i = 0; i != 4; ++i)
    {
      *(result + i) = a3[i];
    }
  }

  return result;
}

uint64_t ps_resource::set_jasperbuffer_timestamps(ps_resource *this, unint64_t a2, unint64_t *a3)
{
  result = ps_resource::get_jasperbuffer_ptr(this);
  if (result)
  {
    for (i = 0; i != 4; ++i)
    {
      *(result + 80 + i * 8) = a3[i];
    }
  }

  return result;
}

double ps_resource::set_pearlbuffer(ps_resource *this, unint64_t a2, __CVBuffer *a3, __CVBuffer *a4, __CVBuffer *a5, __CVBuffer *a6, const __CFData *a7)
{
  v7 = OUTLINED_FUNCTION_10(this, a2);
  if (v7)
  {
    *&result = OUTLINED_FUNCTION_5_0(v7).n128_u64[0];
  }

  return result;
}

_BYTE *ps_resource::set_pearlbuffer_valid(ps_resource *this, uint64_t a2, int a3, int a4, int a5, int a6)
{
  result = ps_resource::get_pearlbuffer_ptr(this);
  if (result)
  {
    this->_item_status.__begin_[a2] = (a5 | a6 | a4 | a3) ^ 1u;
    *result = a3;
    result[16] = a4;
    result[32] = a5;
    result[48] = a6;
  }

  return result;
}

_DWORD *ps_resource::set_anebuffer(ps_resource *this, unint64_t a2, __IOSurface **a3, unsigned int a4)
{
  result = ps_resource::get_anebuffer_ptr(this);
  if (result)
  {
    *result = a4;
    if (a4)
    {
      v7 = result + 2;
      v8 = a4;
      do
      {
        v9 = *a3++;
        *v7++ = v9;
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

void _copy_resource()
{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 86, "false && A surface item must contain a CVDataBuffer");
}

{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 75, "false && A surface item must contain a CVPixelBuffer");
}

{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 64, "false && A surface item must contain an IOSurface");
}

{
  __assert_rtn("_copy_resource", "PSTestEngine.mm", 94, "false && Missing/unsupported resource class");
}

void ps_public_util_spu_to_AP_time_cold_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = __PSGraphLogSharedInstance(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315650;
    v6 = "ps_public_util_spu_to_AP_time";
    v7 = 2048;
    v8 = a1;
    v9 = 2048;
    v10 = a2;
    _os_log_impl(&dword_25EC85000, v4, OS_LOG_TYPE_ERROR, "%s Invalid sample timestamp. Mach delta (%llu) is greater than sample timestamp (%llu). Value will underflow", &v5, 0x20u);
  }
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

void operator new()
{
    ;
  }
}