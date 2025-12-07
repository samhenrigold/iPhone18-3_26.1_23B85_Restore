void AGCLLVMG16PA0TargetConfig::AGCLLVMG16PA0TargetConfig()
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(&AGCLLVMCreateG16TargetConfig(AGCTargetArch)::g16pA0, 65567);
  *(v0 + 60) = 0;
  *(v0 + 49) = 0;
  *v0 = &unk_2825B6390;
  *(v0 + 8) = "agx3-apple-ios";
}

double AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(uint64_t a1, int a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 850045863;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 8) = "agx2-apple-ios";
  *(a1 + 16) = "e-p:64:64:64-f32:32:32-i64:64:64-i32:32:32-i16:16:16-v32:32:32-n32-S64";
  *(a1 + 24) = a2;
  *(a1 + 28) = a2;
  *(a1 + 32) = "ei_rt.metallib";
  *(a1 + 40) = "/metal_rt_precise.metallib";
  result = 7.29290208e-304;
  *(a1 + 48) = 0x100010000010100;
  *(a1 + 56) = 124;
  *a1 = &unk_2825BAE60;
  *(a1 + 54) = 1;
  return result;
}

void AGCLLVMTargetConfig::getTargetFeatureString(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void AGCLLVMG16PB0TargetConfig::AGCLLVMG16PB0TargetConfig(uint64_t a1, int a2)
{
  AGCLLVMGen5TargetConfig::AGCLLVMGen5TargetConfig(a1, a2);
  *(v2 + 60) = 0;
  *(v2 + 49) = 0;
  *v2 = &unk_2825B6C88;
  *(v2 + 8) = "agx3-apple-ios";
}

uint64_t AGCEnv::isEnabled(AGCEnv *this)
{
  v1 = 0x27C8D7000uLL;
  {
    v1 = 0x27C8D7000;
    if (v3)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v1 = 0x27C8D7000;
    }
  }

  return *(v1 + 2944);
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMUserObject::getRaytracingFunctionMap(void)::$_0 &&>>()
{
  v35[3] = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:nn200100]<0>(&v0, "air.get_intersection_params_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v1, "air.get_world_space_ray_origin_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v2, "air.get_world_space_ray_direction_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v3, "air.get_ray_min_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v4, "air.get_candidate_intersection_type_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v5, "air.get_candidate_triangle_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v6, "air.is_candidate_non_opaque_bounding_box_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v7, "air.get_candidate_geometry_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v8, "air.get_candidate_primitive_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v9, "air.get_candidate_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v10, "air.get_candidate_user_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v11, "air.get_candidate_instance_count_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v12, "air.get_candidate_object_to_world_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v13, "air.get_candidate_world_to_object_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v14, "air.get_candidate_triangle_barycentric_coord_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v15, "air.is_candidate_triangle_front_facing_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v16, "air.get_candidate_curve_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v17, "air.get_candidate_curve_parameter_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v18, "air.get_candidate_ray_origin_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v19, "air.get_candidate_ray_direction_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v20, "air.get_candidate_primitive_data_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v21, "air.get_committed_intersection_type_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v22, "air.get_committed_distance_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v23, "air.get_committed_geometry_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v24, "air.get_committed_primitive_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v25, "air.get_committed_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v26, "air.get_committed_user_instance_id_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v27, "air.get_committed_instance_count_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v28, "air.get_committed_object_to_world_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v29, "air.get_committed_world_to_object_transform_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v30, "air.get_committed_triangle_barycentric_coord_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v31, "air.is_committed_triangle_front_facing_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v32, "air.get_committed_curve_parameter_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v33, "air.get_committed_ray_origin_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v34, "air.get_committed_ray_direction_intersection_query");
  std::string::basic_string[abi:nn200100]<0>(v35, "air.get_committed_primitive_data_intersection_query");
  operator new();
}

uint64_t *llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 25, 8);
  v11 = v10;
  v12 = v10 + 24;
  if (a3)
  {
    memcpy((v10 + 24), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

__n128 AGCLLVMUserObject::initializeRaytracingFunctionMap(llvm::StringMap<AGCLLVMUserObject::RaytracingFunction,llvm::MallocAllocator> &)::$_0::operator()(uint64_t a1, uint64_t a2, std::string *this)
{
  if (**a2)
  {
    std::string::append(this, ".intersection_function_buffer");
  }

  v6 = **(a2 + 8);
  if (v6 == 1)
  {
    v7 = ".instancing";
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v7 = ".multi_level_instancing";
  }

  std::string::append(this, v7);
LABEL_8:
  if (**(a2 + 16))
  {
    std::string::append(this, ".triangle_data");
  }

  if (**(a2 + 24))
  {
    std::string::append(this, ".curve_data");
  }

  if (**(a2 + 32))
  {
    std::string::append(this, ".world_space_data");
  }

  if (**(a2 + 40) == 1)
  {
    std::string::append(this, ".user_data");
  }

  if (**(a2 + 48))
  {
    std::string::append(this, ".primitive_motion");
  }

  if (**(a2 + 56))
  {
    std::string::append(this, ".instance_motion");
  }

  if (**(a2 + 64))
  {
    std::string::append(this, ".extended_limits");
  }

  result = *&this->__r_.__value_.__l.__data_;
  *a1 = *&this->__r_.__value_.__l.__data_;
  *(a1 + 16) = *(&this->__r_.__value_.__l + 2);
  this->__r_.__value_.__l.__size_ = 0;
  this->__r_.__value_.__r.__words[2] = 0;
  this->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void AIRNTInit(AGCEnv *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  AGCEnv::load(a1);
  memset(&v18, 0, sizeof(v18));
  {
    if (v1)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }
  }

  if (AGCEnv::isEnabled(void)::is_internal != 1)
  {
LABEL_36:
    AGCEnv::deserialize(&v18);
    AGCLLVMCtx::initialize(v17);
    operator new();
  }

  OSLog = AGCEnv::getOSLog(v1);
  if (os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG))
  {
    *buffer = 136315138;
    *&buffer[4] = "serialize";
    _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s(){\n", buffer, 0xCu);
  }

  std::string::basic_string[abi:nn200100]<0>(&v20, "AGC_ENABLE_STATUS_FILE");
  v3 = 0;
  v4 = MEMORY[0x277D85DE0];
  while (1)
  {
    v5 = AGCEnv::getStatusVariables(unsigned long *)::status_vars[v3];
    v6 = getenv(v5);
    if (v6)
    {
      v7 = v6;
      v8 = AGCEnv::getOSLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buffer = 136315394;
        *&buffer[4] = v5;
        *&buffer[12] = 2080;
        *&buffer[14] = v7;
        _os_log_debug_impl(&dword_20E4E1000, v8, OS_LOG_TYPE_DEBUG, "%s = %s\n", buffer, 0x16u);
      }

      if (!std::string::compare(&v20, v5))
      {
        std::string::append(&v18, "AGC_CLIENT_PROCESS_NAME");
        std::string::push_back(&v18, 10);
        std::string::basic_string[abi:nn200100]<0>(&v19, "agc_status_");
        v9 = getpid();
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        memset(buffer, 0, sizeof(buffer));
        v10 = proc_name(v9, buffer, 0x80u);
        if (v10)
        {
          v11 = v10;
          v12 = buffer;
          while (1)
          {
            v13 = *v12;
            if ((v13 & 0x80000000) != 0)
            {
              break;
            }

            if ((*(v4 + 4 * v13 + 60) & 0x500) == 0)
            {
              goto LABEL_14;
            }

LABEL_15:
            ++v12;
            if (!--v11)
            {
              goto LABEL_19;
            }
          }

          if (__maskrune(v13, 0x500uLL))
          {
            goto LABEL_15;
          }

LABEL_14:
          *v12 = 95;
          goto LABEL_15;
        }

LABEL_19:
        std::string::append(&v19, buffer);
        *buffer = v19;
        memset(&v19, 0, sizeof(v19));
        if (buffer[23] >= 0)
        {
          v14 = buffer;
        }

        else
        {
          v14 = *buffer;
        }

        if (buffer[23] >= 0)
        {
          v15 = HIBYTE(*&buffer[16]);
        }

        else
        {
          v15 = *&buffer[8];
        }

        std::string::append(&v18, v14, v15);
        if ((buffer[23] & 0x80000000) != 0)
        {
          operator delete(*buffer);
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }

        std::string::push_back(&v18, 10);
      }

      std::string::append(&v18, v5);
      std::string::push_back(&v18, 10);
      std::string::append(&v18, v7);
      std::string::push_back(&v18, 10);
    }

    v3 = (v3 + 1);
    if (v3 >= 0x2E)
    {
      v16 = AGCEnv::getOSLog(v6);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        *buffer = 0;
        _os_log_debug_impl(&dword_20E4E1000, v16, OS_LOG_TYPE_DEBUG, "}\n", buffer, 2u);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      goto LABEL_36;
    }
  }
}

void AGCEnv::deserialize(AGCEnv *a1)
{
  v1 = a1;
  v27 = *MEMORY[0x277D85DE8];
  {
    if (a1)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1)
  {
    v2 = *(v1 + 23);
    if ((v2 & 0x80u) != 0)
    {
      v2 = *(v1 + 1);
    }

    if (v2)
    {
      AGCEnv::getEnvLookup(a1);
      OSLog = AGCEnv::getOSLog(v3);
      v5 = os_log_type_enabled(OSLog, OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        *buf = 136315138;
        *&buf[4] = "deserialize";
        _os_log_debug_impl(&dword_20E4E1000, OSLog, OS_LOG_TYPE_DEBUG, "%s(){\n", buf, 0xCu);
      }

      v6 = 0;
      do
      {
        v7 = *(v1 + 23);
        if ((v7 & 0x80u) != 0)
        {
          v7 = *(v1 + 1);
        }

        if (v6 >= v7)
        {
          break;
        }

        v5 = std::string::find(v1, 10, v6);
        if (v5 == -1)
        {
          break;
        }

        v8 = v5;
        std::string::basic_string(&v19, v1, v6, v5 - v6, buf);
        v6 = v8 + 1;
        v5 = std::string::find(v1, 10, v8 + 1);
        v9 = v5;
        if (v5 != -1)
        {
          std::string::basic_string(&__str, v1, v6, v5 - v6, buf);
          *buf = &v19;
          v10 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v19.__r_.__value_.__l.__data_, buf);
          v11 = std::string::operator=((v10 + 7), &__str);
          v12 = AGCEnv::getOSLog(v11);
          v5 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
          if (v5)
          {
            size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v14 = &v19;
            }

            else
            {
              v14 = v19.__r_.__value_.__r.__words[0];
            }

            if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v19.__r_.__value_.__l.__size_;
            }

            v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            else
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v15 = __str.__r_.__value_.__l.__size_;
            }

            *buf = 136315906;
            *&buf[4] = v14;
            v21 = 2048;
            v22 = size;
            v23 = 2080;
            v24 = p_str;
            v25 = 2048;
            v26 = v15;
            _os_log_debug_impl(&dword_20E4E1000, v12, OS_LOG_TYPE_DEBUG, "\t%s[%zu] = %s[%zu]\n", buf, 0x2Au);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          v6 = v9 + 1;
        }

        if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v19.__r_.__value_.__l.__data_);
        }
      }

      while (v9 != -1);
      v17 = AGCEnv::getOSLog(v5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_20E4E1000, v17, OS_LOG_TYPE_DEBUG, "}\n", buf, 2u);
      }
    }
  }
}

void AGCNativeTranslator::init(AGCNativeTranslator *this)
{
  GetAGCActiveTargets();
  v2 = GetAGCActiveTargets(void)::active_impls;
  if (qword_27C8D88B0 != GetAGCActiveTargets(void)::active_impls)
  {
    v3 = 0;
    do
    {
      v4 = AGCTarget::TargetArchToCPUSubtypeImpl(*(v2 + 4 * v3));
      v5 = HIDWORD(v4);
      v7 = HIDWORD(v4);
      v8 = v4;
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(this, v4, &v8);
      v9 = &v8;
      v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 6, v8, &v9);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v6 + 3, v5, &v7);
      ++v3;
      v2 = GetAGCActiveTargets(void)::active_impls;
    }

    while (v3 < (qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls) >> 2);
  }
}

void GetAGCActiveTargets(void)
{
  {
    GetAGCActiveTargets(void)::active_impls = 0;
    qword_27C8D88B0 = 0;
    qword_27C8D88B8 = 0;
    __cxa_atexit(std::vector<AGCTargetArch>::~vector[abi:nn200100], &GetAGCActiveTargets(void)::active_impls, &dword_20E4E1000);
  }

  if (atomic_load_explicit(&GetAGCActiveTargets(void)::flag, memory_order_acquire) != -1)
  {
    v2 = &v0;
    v1 = &v2;
    std::__call_once(&GetAGCActiveTargets(void)::flag, &v1, std::__call_once_proxy[abi:nn200100]<std::tuple<GetAGCActiveTargets(void)::$_0 &&>>);
  }
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<GetAGCActiveTargets(void)::$_0 &&>>()
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v10 = 14;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 16;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 17;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 18;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 19;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 21;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 22;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 24;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 31;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 32;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 34;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 35;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v10 = 38;
  std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](&v11, &v10);
  v0 = v11;
  v1 = v12;
  if (v11 != v12)
  {
    v2 = v11 + 1;
    while (v2 != v12)
    {
      v3 = v2 - 1;
      v4 = *(v2 - 1);
      v5 = *v2++;
      if (v4 == v5)
      {
        for (i = v3 + 2; i != v1; ++i)
        {
          v7 = v4;
          v4 = *i;
          if (v7 != *i)
          {
            v3[1] = v4;
            ++v3;
          }
        }

        v1 = v3 + 1;
        break;
      }
    }

    if (v0 != v1)
    {
      v8 = v0;
      do
      {
        v9 = *v8;
        if (*v8 == 14)
        {
          v10 = 196622;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 16)
        {
          v10 = 196624;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 25)
        {
          v10 = 65561;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 25)
          {
            v10 = 196633;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 27)
        {
          v10 = 65563;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 27)
          {
            v10 = 196635;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 17)
        {
          v10 = 196625;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 18)
        {
          v10 = 65554;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 18)
          {
            v10 = 196626;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 19)
        {
          v10 = 65555;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 19)
          {
            v10 = 196627;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 20)
        {
          v10 = 65556;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 21)
        {
          v10 = 65557;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 21)
          {
            v10 = 196629;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 22)
        {
          v10 = 196630;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 24)
        {
          v10 = 196632;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 24)
          {
            v10 = 327704;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 31)
        {
          v10 = 65567;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 31)
          {
            v10 = 196639;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
            if (*v8 == 31)
            {
              v10 = 262175;
              std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
              v9 = *v8;
            }
          }
        }

        if (v9 == 32)
        {
          v10 = 65568;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
          if (*v8 == 32)
          {
            v10 = 196640;
            std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
            v9 = *v8;
          }
        }

        if (v9 == 34)
        {
          v10 = 65570;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 35)
        {
          v10 = 65571;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
          v9 = *v8;
        }

        if (v9 == 38)
        {
          v10 = 65574;
          std::vector<AGCTargetArch>::push_back[abi:nn200100](&v10);
        }

        ++v8;
      }

      while (v8 != v1);
    }
  }

  if (v0)
  {

    operator delete(v0);
  }
}

void std::vector<AGCTargetArchMajor>::push_back[abi:nn200100](uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 2) + 1;
    if (v8 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = (4 * (v7 >> 2));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::vector<AGCTargetArch>::push_back[abi:nn200100](int *a1)
{
  v1 = qword_27C8D88B0;
  if (qword_27C8D88B0 >= qword_27C8D88B8)
  {
    v3 = GetAGCActiveTargets(void)::active_impls;
    v4 = qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls;
    v5 = (qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls) >> 2;
    v6 = v5 + 1;
    if ((v5 + 1) >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = qword_27C8D88B8 - GetAGCActiveTargets(void)::active_impls;
    if ((qword_27C8D88B8 - GetAGCActiveTargets(void)::active_impls) >> 1 > v6)
    {
      v6 = v7 >> 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v8 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 62))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = (4 * v5);
    v10 = &v9[-((qword_27C8D88B0 - GetAGCActiveTargets(void)::active_impls) >> 2)];
    *v9 = *a1;
    v2 = (v9 + 1);
    memcpy(v10, v3, v4);
    GetAGCActiveTargets(void)::active_impls = v10;
    qword_27C8D88B0 = v2;
    qword_27C8D88B8 = 0;
    if (v3)
    {
      operator delete(v3);
    }
  }

  else
  {
    *qword_27C8D88B0 = *a1;
    v2 = v1 + 4;
  }

  qword_27C8D88B0 = v2;
}

uint64_t *std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t *result, unsigned int a2, _DWORD *a3)
{
  v3 = result[1];
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
      v5 = *(v3 + 28);
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
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t AGCTarget::TargetArchToCPUSubtypeImpl(int a1)
{
  if ((a1 - 14) >= 0xEu || ((0x38FDu >> (a1 - 14)) & 1) == 0)
  {
    if (a1 > 196629)
    {
      if (a1 > 196639)
      {
        if (a1 == 196640)
        {
          v3 = 0x19300000000;
          goto LABEL_27;
        }

        if (a1 == 262175)
        {
          v3 = 0x1B300000000;
          goto LABEL_33;
        }

        if (a1 != 327704)
        {
          goto LABEL_34;
        }

        v3 = 0x11300000000;
      }

      else
      {
        if (a1 == 196630)
        {
          v3 = 0x26200000000;
          v2 = 610;
          return v3 | v2;
        }

        if (a1 != 196632)
        {
          if (a1 != 196639)
          {
            goto LABEL_34;
          }

          v3 = 0xF300000000;
          goto LABEL_33;
        }

        v3 = 0x5300000000;
      }
    }

    else
    {
      if (a1 > 65569)
      {
        switch(a1)
        {
          case 65570:
            v3 = 0x14300000000;
            v2 = 323;
            return v3 | v2;
          case 65571:
            v3 = 0x15300000000;
            v2 = 339;
            return v3 | v2;
          case 65574:
            v3 = 0x17300000000;
            v2 = 371;
            return v3 | v2;
        }

        goto LABEL_34;
      }

      if (a1 != 65560)
      {
        if (a1 != 65567)
        {
          if (a1 == 65568)
          {
            v3 = 0x10300000000;
LABEL_27:
            v2 = 403;
            return v3 | v2;
          }

LABEL_34:
          v2 = 0;
          v3 = 0;
          return v3 | v2;
        }

        v3 = 0xE300000000;
LABEL_33:
        v2 = 435;
        return v3 | v2;
      }

      v3 = 0x4300000000;
    }

    v2 = 275;
    return v3 | v2;
  }

  v1 = (a1 - 14);
  v2 = qword_20E716388[v1];
  v3 = qword_20E7163F8[v1];
  return v3 | v2;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::set<unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t AIRNTSupportsThreads()
{
  if (atomic_load_explicit(&isMultithreadEnabled(void)::flag, memory_order_acquire) != -1)
  {
    v5[1] = v0;
    v5[2] = v1;
    v5[0] = &v3;
    v4 = v5;
    std::__call_once(&isMultithreadEnabled(void)::flag, &v4, std::__call_once_proxy[abi:nn200100]<std::tuple<isMultithreadEnabled(void)::$_0 &&>>);
  }

  return isMultithreadEnabled(void)::enable_multithread;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<isMultithreadEnabled(void)::$_0 &&>>(uint64_t a1, const char *a2)
{
  v2 = 0x27C8D7000uLL;
  {
    v2 = 0x27C8D7000;
    if (v5)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v2 = 0x27C8D7000;
    }
  }

  v4 = *(v2 + 2944) != 1 || (Value = AGCEnv::getValue("AGC_AIR_NT_DISABLE_MULTITHREAD", a2)) == 0 || *Value == 48 || atoi(Value) == 0;
  isMultithreadEnabled(void)::enable_multithread = v4;
}

uint64_t *AGCLLVMGen6TargetConfig::initializeAirBuiltinsMap(AGCLLVMGen6TargetConfig *this, AGCLLVMAirBuiltinsMap *a2)
{
  AGCLLVMGen5TargetConfig::initializeAirBuiltinsMap(this, a2);
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "yield_simdgroup", 0xFuLL);
  v4 = *result;
  *(v4 + 8) = 1;
  *(v4 + 16) = AGCLLVMAirBuiltins::buildSimdYield;
  *(v4 + 24) = 0;
  *(v4 + 32) = 3;
  *(v4 + 36) = 0;
  return result;
}

uint64_t *AGCLLVMGen5TargetConfig::initializeAirBuiltinsMap(AGCLLVMGen5TargetConfig *this, AGCLLVMAirBuiltinsMap *a2)
{
  AGCLLVMGen3TargetConfig::initializeAirBuiltinsMap(this, a2);
  v3 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_warped_coordinates", 0x16uLL);
  *(v3 + 8) = 1;
  *(v3 + 16) = AGCLLVMAirBuiltins::buildCoordinateWarp;
  *(v3 + 24) = 0;
  *(v3 + 32) = 9;
  *(v3 + 36) = 0;
  v4 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_dewarped_coordinates", 0x18uLL);
  *(v4 + 8) = 1;
  *(v4 + 16) = AGCLLVMAirBuiltins::buildCoordinateDewarp;
  *(v4 + 24) = 0;
  *(v4 + 32) = 9;
  *(v4 + 36) = 0;
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "map_screen_to_physical_coordinates", 0x22uLL);
  *(v5 + 8) = 1;
  *(v5 + 16) = AGCLLVMAirBuiltins::buildCoordinateWarp;
  *(v5 + 24) = 0;
  *(v5 + 32) = 9;
  *(v5 + 36) = 0;
  v6 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "map_physical_to_screen_coordinates", 0x22uLL);
  *(v6 + 8) = 1;
  *(v6 + 16) = AGCLLVMAirBuiltins::buildCoordinateDewarp;
  *(v6 + 24) = 0;
  *(v6 + 32) = 9;
  *(v6 + 36) = 0;
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_ballot", 0xBuLL);
  *(v7 + 8) = 1;
  *(v7 + 16) = AGCLLVMAirBuiltins::buildQuadBallot;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  *(v7 + 36) = 0;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_broadcast", 0xEuLL);
  *(v8 + 8) = 1;
  *(v8 + 16) = AGCLLVMAirBuiltins::buildSimdBroadcast;
  *(v8 + 24) = 0;
  *(v8 + 32) = 5;
  *(v8 + 36) = 0;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_ballot", 0xBuLL);
  *(v9 + 8) = 1;
  *(v9 + 16) = AGCLLVMAirBuiltins::buildSimdBallot;
  *(v9 + 24) = 0;
  *(v9 + 32) = 9;
  *(v9 + 36) = 0;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle", 0xCuLL);
  *(v10 + 8) = 1;
  *(v10 + 16) = AGCLLVMAirBuiltins::buildSimdShuffle;
  *(v10 + 24) = 0;
  *(v10 + 32) = 5;
  *(v10 + 36) = 0;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_up", 0xFuLL);
  *(v11 + 8) = 1;
  *(v11 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleUp;
  *(v11 + 24) = 0;
  *(v11 + 32) = 5;
  *(v11 + 36) = 0;
  v12 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_down", 0x11uLL);
  *(v12 + 8) = 1;
  *(v12 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleDown;
  *(v12 + 24) = 0;
  *(v12 + 32) = 5;
  *(v12 + 36) = 0;
  v13 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_xor", 0x10uLL);
  *(v13 + 8) = 1;
  *(v13 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleXor;
  *(v13 + 24) = 0;
  *(v13 + 32) = 5;
  *(v13 + 36) = 0;
  v14 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_rotate_up", 0x16uLL);
  *(v14 + 8) = 1;
  *(v14 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleRotateUp;
  *(v14 + 24) = 0;
  *(v14 + 32) = 5;
  *(v14 + 36) = 0;
  v15 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_rotate_down", 0x18uLL);
  *(v15 + 8) = 1;
  *(v15 + 16) = AGCLLVMAirBuiltins::buildSimdShuffleRotateDown;
  *(v15 + 24) = 0;
  *(v15 + 32) = 5;
  *(v15 + 36) = 0;
  v16 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_threads_per_simdgroup", 0x19uLL);
  *(v16 + 8) = 1;
  *(v16 + 16) = AGCLLVMAirBuiltins::buildThreadsPerSimdgroup;
  *(v16 + 24) = 0;
  *(v16 + 32) = 9;
  *(v16 + 36) = 0;
  v17 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_thread_index_in_simdgroup", 0x1DuLL);
  *(v17 + 8) = 1;
  *(v17 + 16) = AGCLLVMAirBuiltins::buildThreadIndexInSimdGroup;
  *(v17 + 24) = 0;
  *(v17 + 32) = 9;
  *(v17 + 36) = 0;
  v18 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_simdgroup_index_in_threadgroup", 0x22uLL);
  *(v18 + 8) = 1;
  *(v18 + 16) = AGCLLVMAirBuiltins::buildSimdGroupIndexInThreadgroup;
  *(v18 + 24) = 0;
  *(v18 + 32) = 9;
  *(v18 + 36) = 0;
  v19 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_active_threads_mask", 0x18uLL);
  *(v19 + 8) = 1;
  *(v19 + 16) = AGCLLVMAirBuiltins::buildSimdActiveThreadsMask;
  *(v19 + 24) = 0;
  *(v19 + 32) = 9;
  *(v19 + 36) = 256;
  v20 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_active_threads_mask", 0x18uLL);
  *(v20 + 8) = 1;
  *(v20 + 16) = AGCLLVMAirBuiltins::buildQuadActiveThreadsMask;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  *(v20 + 36) = 0;
  v21 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_all", 8uLL);
  *(v21 + 8) = 1;
  *(v21 + 16) = AGCLLVMAirBuiltins::buildSimdAll;
  *(v21 + 24) = 0;
  *(v21 + 32) = 3;
  *(v21 + 36) = 0;
  v22 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_any", 8uLL);
  *(v22 + 8) = 1;
  *(v22 + 16) = AGCLLVMAirBuiltins::buildSimdAny;
  *(v22 + 24) = 0;
  *(v22 + 32) = 3;
  *(v22 + 36) = 0;
  v23 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_all", 8uLL);
  *(v23 + 8) = 1;
  *(v23 + 16) = AGCLLVMAirBuiltins::buildQuadAll;
  *(v23 + 24) = 0;
  *(v23 + 32) = 3;
  *(v23 + 36) = 0;
  v24 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_any", 8uLL);
  *(v24 + 8) = 1;
  *(v24 + 16) = AGCLLVMAirBuiltins::buildQuadAny;
  *(v24 + 24) = 0;
  *(v24 + 32) = 3;
  *(v24 + 36) = 0;
  v25 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_vote_all", 0xDuLL);
  *(v25 + 8) = 1;
  *(v25 + 16) = AGCLLVMAirBuiltins::buildSimdVoteAll;
  *(v25 + 24) = 0;
  *(v25 + 32) = 9;
  *(v25 + 36) = 0;
  v26 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_vote_any", 0xDuLL);
  *(v26 + 8) = 1;
  *(v26 + 16) = AGCLLVMAirBuiltins::buildSimdVoteAny;
  *(v26 + 24) = 0;
  *(v26 + 32) = 9;
  *(v26 + 36) = 0;
  v27 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_vote_all", 0xDuLL);
  *(v27 + 8) = 1;
  *(v27 + 16) = AGCLLVMAirBuiltins::buildQuadVoteAll;
  *(v27 + 24) = 0;
  *(v27 + 32) = 3;
  *(v27 + 36) = 0;
  v28 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_vote_any", 0xDuLL);
  *(v28 + 8) = 1;
  *(v28 + 16) = AGCLLVMAirBuiltins::buildQuadVoteAny;
  *(v28 + 24) = 0;
  *(v28 + 32) = 3;
  *(v28 + 36) = 0;
  v29 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simdgroup_matrix_8x8_multiply_accumulate", 0x28uLL);
  *(v29 + 8) = 1;
  *(v29 + 16) = AGCLLVMAirBuiltins::buildSimdMatrixMultiplyAccumulate;
  *(v29 + 24) = 0;
  *(v29 + 32) = 12;
  *(v29 + 36) = 0;
  v30 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simdgroup_matrix_8x8_init_diag", 0x1EuLL);
  *(v30 + 8) = 1;
  *(v30 + 16) = AGCLLVMAirBuiltins::buildSimdMatrixThreadElementsInit;
  *(v30 + 24) = 0;
  *(v30 + 32) = 12;
  *(v30 + 36) = 0;
  v31 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simdgroup_matrix_8x8_init_filled", 0x20uLL);
  *(v31 + 8) = 1;
  *(v31 + 16) = AGCLLVMAirBuiltins::buildSimdMatrixThreadElementsInit;
  *(v31 + 24) = 0;
  *(v31 + 32) = 12;
  *(v31 + 36) = 0;
  v32 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_and", 8uLL);
  *(v32 + 8) = 1;
  *(v32 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v32 + 24) = 0;
  *(v32 + 32) = 12;
  *(v32 + 36) = 0;
  v33 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_or", 7uLL);
  *(v33 + 8) = 1;
  *(v33 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v33 + 24) = 0;
  *(v33 + 32) = 12;
  *(v33 + 36) = 0;
  v34 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_xor", 8uLL);
  *(v34 + 8) = 1;
  *(v34 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v34 + 24) = 0;
  *(v34 + 32) = 12;
  *(v34 + 36) = 0;
  v35 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_product", 0xCuLL);
  *(v35 + 8) = 1;
  *(v35 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v35 + 24) = 0;
  *(v35 + 32) = 12;
  *(v35 + 36) = 0;
  v36 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_sum", 8uLL);
  *(v36 + 8) = 1;
  *(v36 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v36 + 24) = 0;
  *(v36 + 32) = 12;
  *(v36 + 36) = 0;
  v37 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_max", 8uLL);
  *(v37 + 8) = 1;
  *(v37 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v37 + 24) = 0;
  *(v37 + 32) = 12;
  *(v37 + 36) = 0;
  v38 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_min", 8uLL);
  *(v38 + 8) = 1;
  *(v38 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v38 + 24) = 0;
  *(v38 + 32) = 12;
  *(v38 + 36) = 0;
  v39 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_inclusive_product", 0x1DuLL);
  *(v39 + 8) = 1;
  *(v39 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v39 + 24) = 0;
  *(v39 + 32) = 12;
  *(v39 + 36) = 0;
  v40 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_inclusive_sum", 0x19uLL);
  *(v40 + 8) = 1;
  *(v40 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v40 + 24) = 0;
  *(v40 + 32) = 12;
  *(v40 + 36) = 0;
  v41 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_exclusive_product", 0x1DuLL);
  *(v41 + 8) = 1;
  *(v41 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v41 + 24) = 0;
  *(v41 + 32) = 12;
  *(v41 + 36) = 0;
  v42 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_prefix_exclusive_sum", 0x19uLL);
  *(v42 + 8) = 1;
  *(v42 + 16) = AGCLLVMAirBuiltins::buildQuadReduce;
  *(v42 + 24) = 0;
  *(v42 + 32) = 12;
  *(v42 + 36) = 0;
  v43 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_is_helper_thread", 0x15uLL);
  *(v43 + 8) = 1;
  *(v43 + 16) = AGCLLVMAirBuiltins::buildQuadIsHelperThread;
  *(v43 + 24) = 0;
  *(v43 + 32) = 12;
  *(v43 + 36) = 0;
  v44 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_is_first", 0xDuLL);
  *(v44 + 8) = 1;
  *(v44 + 16) = AGCLLVMAirBuiltins::buildQuadIsFirstActiveThread;
  *(v44 + 24) = 0;
  *(v44 + 32) = 12;
  *(v44 + 36) = 0;
  v45 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_broadcast_first", 0x14uLL);
  *(v45 + 8) = 1;
  *(v45 + 16) = AGCLLVMAirBuiltins::buildQuadBroadcastFirstActiveThread;
  *(v45 + 24) = 0;
  *(v45 + 32) = 12;
  *(v45 + 36) = 0;
  v46 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_and", 8uLL);
  *(v46 + 8) = 1;
  *(v46 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v46 + 24) = 0;
  *(v46 + 32) = 12;
  *(v46 + 36) = 0;
  v47 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_or", 7uLL);
  *(v47 + 8) = 1;
  *(v47 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v47 + 24) = 0;
  *(v47 + 32) = 12;
  *(v47 + 36) = 0;
  v48 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_xor", 8uLL);
  *(v48 + 8) = 1;
  *(v48 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v48 + 24) = 0;
  *(v48 + 32) = 12;
  *(v48 + 36) = 0;
  v49 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_product", 0xCuLL);
  *(v49 + 8) = 1;
  *(v49 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v49 + 24) = 0;
  *(v49 + 32) = 12;
  *(v49 + 36) = 0;
  v50 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_sum", 8uLL);
  *(v50 + 8) = 1;
  *(v50 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v50 + 24) = 0;
  *(v50 + 32) = 12;
  *(v50 + 36) = 0;
  v51 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_max", 8uLL);
  *(v51 + 8) = 1;
  *(v51 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v51 + 24) = 0;
  *(v51 + 32) = 12;
  *(v51 + 36) = 0;
  v52 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_min", 8uLL);
  *(v52 + 8) = 1;
  *(v52 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v52 + 24) = 0;
  *(v52 + 32) = 12;
  *(v52 + 36) = 0;
  v53 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_inclusive_product", 0x1DuLL);
  *(v53 + 8) = 1;
  *(v53 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v53 + 24) = 0;
  *(v53 + 32) = 12;
  *(v53 + 36) = 0;
  v54 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_inclusive_sum", 0x19uLL);
  *(v54 + 8) = 1;
  *(v54 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v54 + 24) = 0;
  *(v54 + 32) = 12;
  *(v54 + 36) = 0;
  v55 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_exclusive_product", 0x1DuLL);
  *(v55 + 8) = 1;
  *(v55 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v55 + 24) = 0;
  *(v55 + 32) = 12;
  *(v55 + 36) = 0;
  v56 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_prefix_exclusive_sum", 0x19uLL);
  *(v56 + 8) = 1;
  *(v56 + 16) = AGCLLVMAirBuiltins::buildSimdReduce;
  *(v56 + 24) = 0;
  *(v56 + 32) = 12;
  *(v56 + 36) = 0;
  v57 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_is_helper_thread", 0x15uLL);
  *(v57 + 8) = 1;
  *(v57 + 16) = AGCLLVMAirBuiltins::buildSimdIsHelperThread;
  *(v57 + 24) = 0;
  *(v57 + 32) = 12;
  *(v57 + 36) = 0;
  v58 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_is_first", 0xDuLL);
  *(v58 + 8) = 1;
  *(v58 + 16) = AGCLLVMAirBuiltins::buildSimdIsFirstActiveThread;
  *(v58 + 24) = 0;
  *(v58 + 32) = 12;
  *(v58 + 36) = 0;
  v59 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_broadcast_first", 0x14uLL);
  *(v59 + 8) = 1;
  *(v59 + 16) = AGCLLVMAirBuiltins::buildSimdBroadcastFirstActiveThread;
  *(v59 + 24) = 0;
  *(v59 + 32) = 12;
  *(v59 + 36) = 0;
  v60 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_and_fill_up", 0x18uLL);
  *(v60 + 8) = 1;
  *(v60 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v60 + 24) = 0;
  *(v60 + 32) = 12;
  *(v60 + 36) = 0;
  v61 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "simd_shuffle_and_fill_down", 0x1AuLL);
  *(v61 + 8) = 1;
  *(v61 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v61 + 24) = 0;
  *(v61 + 32) = 12;
  *(v61 + 36) = 0;
  v62 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_and_fill_up", 0x18uLL);
  *(v62 + 8) = 1;
  *(v62 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v62 + 24) = 0;
  *(v62 + 32) = 12;
  *(v62 + 36) = 0;
  v63 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_and_fill_down", 0x1AuLL);
  *(v63 + 8) = 1;
  *(v63 + 16) = AGCLLVMAirBuiltins::buildShuffleAndFill;
  *(v63 + 24) = 0;
  *(v63 + 32) = 12;
  *(v63 + 36) = 0;
  v64 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_thread_position_in_grid", 0x1BuLL);
  *(v64 + 8) = 1;
  *(v64 + 16) = AGCLLVMAirBuiltins::buildGetThreadPositionInGrid;
  *(v64 + 24) = 0;
  *(v64 + 32) = 3;
  *(v64 + 36) = 0;
  v65 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_position", 0xCuLL);
  *(v65 + 8) = 1;
  *(v65 + 16) = AGCLLVMAirBuiltins::buildGetPosition;
  *(v65 + 24) = 0;
  *(v65 + 32) = 3;
  *(v65 + 36) = 0;
  v66 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_sample_id", 0xDuLL);
  *(v66 + 8) = 1;
  *(v66 + 16) = AGCLLVMAirBuiltins::buildGetSampleID;
  *(v66 + 24) = 0;
  *(v66 + 32) = 3;
  *(v66 + 36) = 0;
  v67 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_vertex_id", 0xDuLL);
  *(v67 + 8) = 1;
  *(v67 + 16) = AGCLLVMAirBuiltins::buildGetVertexID;
  *(v67 + 24) = 0;
  *(v67 + 32) = 3;
  *(v67 + 36) = 0;
  v68 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_instance_id", 0xFuLL);
  *(v68 + 8) = 1;
  *(v68 + 16) = AGCLLVMAirBuiltins::buildGetInstanceID;
  *(v68 + 24) = 0;
  *(v68 + 32) = 3;
  *(v68 + 36) = 0;
  v69 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_amplification_id", 0x14uLL);
  *(v69 + 8) = 1;
  *(v69 + 16) = AGCLLVMAirBuiltins::buildGetAmplificationID;
  *(v69 + 24) = 0;
  *(v69 + 32) = 3;
  *(v69 + 36) = 0;
  v70 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_patch_id", 0xCuLL);
  *(v70 + 8) = 1;
  *(v70 + 16) = AGCLLVMAirBuiltins::buildGetPatchID;
  *(v70 + 24) = 0;
  *(v70 + 32) = 3;
  *(v70 + 36) = 0;
  v71 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_render_target_array_index", 0x1DuLL);
  *(v71 + 8) = 1;
  *(v71 + 16) = AGCLLVMAirBuiltins::buildGetRenderTargetArrayIndex;
  *(v71 + 24) = 0;
  *(v71 + 32) = 3;
  *(v71 + 36) = 0;
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_dispatch_private_buffer", 0x1BuLL);
  v73 = *result;
  *(v73 + 8) = 1;
  *(v73 + 16) = AGCLLVMAirBuiltins::buildGetDispatchPrivateBuffer;
  *(v73 + 24) = 0;
  *(v73 + 32) = 3;
  *(v73 + 36) = 0;
  return result;
}

uint64_t *std::unique_ptr<AGCLLVMAirBuiltinsMap>::reset[abi:nn200100](uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *result;
  *result = a2;
  if (v4)
  {
    if (*(v4 + 12))
    {
      v5 = *(v4 + 8);
      if (v5)
      {
        v6 = 0;
        v7 = 8 * v5;
        do
        {
          v8 = *(*v4 + v6);
          if (v8 != -8 && v8 != 0)
          {
            llvm::deallocate_buffer(*v8, v8, *v8 + 41);
          }

          v6 += 8;
        }

        while (v7 != v6);
      }
    }

    free(*v4);

    JUMPOUT(0x20F331DC0);
  }

  return result;
}

uint64_t *AGCLLVMAirBuiltinsMap::insertBuiltinReplacementsBase(AGCLLVMAirBuiltinsMap *this, const AGCLLVMTargetConfig *a2)
{
  v2 = a2;
  v4 = *(a2 + 49);
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "acos", 4uLL);
  *(v5 + 8) = 1;
  *(v5 + 16) = AGCLLVMAirBuiltins::buildArccos;
  *(v5 + 24) = 0;
  *(v5 + 32) = 3;
  *(v5 + 36) = v4;
  *(v5 + 37) = 1;
  v6 = *(v2 + 50);
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "asin", 4uLL);
  *(v7 + 8) = 1;
  *(v7 + 16) = AGCLLVMAirBuiltins::buildArcsin;
  *(v7 + 24) = 0;
  *(v7 + 32) = 3;
  *(v7 + 36) = v6;
  *(v7 + 37) = 1;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atan", 4uLL);
  *(v8 + 8) = 1;
  *(v8 + 16) = AGCLLVMAirBuiltins::buildArctan;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  *(v8 + 36) = 257;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atan2", 5uLL);
  *(v9 + 8) = 1;
  *(v9 + 16) = AGCLLVMAirBuiltins::buildArctan2;
  *(v9 + 24) = 0;
  *(v9 + 32) = 5;
  *(v9 + 36) = 257;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "acosh", 5uLL);
  *(v10 + 8) = 1;
  *(v10 + 16) = AGCLLVMAirBuiltins::buildArccosh;
  *(v10 + 24) = 0;
  *(v10 + 32) = 3;
  *(v10 + 36) = 257;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "asinh", 5uLL);
  *(v11 + 8) = 1;
  *(v11 + 16) = AGCLLVMAirBuiltins::buildArcsinh;
  *(v11 + 24) = 0;
  *(v11 + 32) = 3;
  *(v11 + 36) = 257;
  v12 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atanh", 5uLL);
  *(v12 + 8) = 1;
  *(v12 + 16) = AGCLLVMAirBuiltins::buildArctanh;
  *(v12 + 24) = 0;
  *(v12 + 32) = 3;
  *(v12 + 36) = 257;
  v13 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "pow", 3uLL);
  *(v13 + 8) = 1;
  *(v13 + 16) = AGCLLVMAirBuiltins::buildPow;
  *(v13 + 24) = 0;
  *(v13 + 32) = 5;
  *(v13 + 36) = 257;
  v14 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "powr", 4uLL);
  *(v14 + 8) = 1;
  *(v14 + 16) = AGCLLVMAirBuiltins::buildPowr;
  *(v14 + 24) = 0;
  *(v14 + 32) = 5;
  *(v14 + 36) = 257;
  v15 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "cosh", 4uLL);
  *(v15 + 8) = 1;
  *(v15 + 16) = AGCLLVMAirBuiltins::buildCosh;
  *(v15 + 24) = 0;
  *(v15 + 32) = 3;
  *(v15 + 36) = 257;
  v16 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sinh", 4uLL);
  *(v16 + 8) = 1;
  *(v16 + 16) = AGCLLVMAirBuiltins::buildSinh;
  *(v16 + 24) = 0;
  *(v16 + 32) = 3;
  *(v16 + 36) = 257;
  v17 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "tanh", 4uLL);
  *(v17 + 8) = 1;
  *(v17 + 16) = AGCLLVMAirBuiltins::buildTanh;
  *(v17 + 24) = 0;
  *(v17 + 32) = 3;
  *(v17 + 36) = 257;
  v18 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "exp10", 5uLL);
  *(v18 + 8) = 1;
  *(v18 + 16) = AGCLLVMAirBuiltins::buildExp10;
  *(v18 + 24) = 0;
  *(v18 + 32) = 3;
  *(v18 + 36) = 257;
  v19 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "log10", 5uLL);
  *(v19 + 8) = 1;
  *(v19 + 16) = AGCLLVMAirBuiltins::buildLog10;
  *(v19 + 24) = 0;
  *(v19 + 32) = 3;
  *(v19 + 36) = 257;
  v20 = *(v2 + 48);
  v21 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "cos", 3uLL);
  *(v21 + 8) = 1;
  *(v21 + 16) = AGCLLVMAirBuiltins::buildCos;
  *(v21 + 24) = 0;
  *(v21 + 32) = 3;
  *(v21 + 36) = v20;
  *(v21 + 37) = 1;
  v22 = *(v2 + 48);
  v23 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sin", 3uLL);
  *(v23 + 8) = 1;
  *(v23 + 16) = AGCLLVMAirBuiltins::buildSin;
  *(v23 + 24) = 0;
  *(v23 + 32) = 3;
  *(v23 + 36) = v22;
  *(v23 + 37) = 1;
  v24 = *(v2 + 48);
  v25 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "tan", 3uLL);
  *(v25 + 8) = 1;
  *(v25 + 16) = AGCLLVMAirBuiltins::buildTan;
  *(v25 + 24) = 0;
  *(v25 + 32) = 3;
  *(v25 + 36) = v24;
  *(v25 + 37) = 1;
  v26 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sincos", 6uLL);
  *(v26 + 8) = 1;
  *(v26 + 16) = AGCLLVMAirBuiltins::buildMetalSinCos;
  *(v26 + 24) = 0;
  *(v26 + 32) = 5;
  *(v26 + 36) = 0;
  v27 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rint", 4uLL);
  *(v27 + 8) = 1;
  *(v27 + 16) = AGCLLVMAirBuiltins::buildRNE;
  *(v27 + 24) = 0;
  *(v27 + 32) = 3;
  *(v27 + 36) = 257;
  v28 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "round", 5uLL);
  *(v28 + 8) = 1;
  *(v28 + 16) = AGCLLVMAirBuiltins::buildRound;
  *(v28 + 24) = 0;
  *(v28 + 32) = 3;
  *(v28 + 36) = 257;
  v29 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmod", 4uLL);
  *(v29 + 8) = 1;
  *(v29 + 16) = AGCLLVMAirBuiltins::buildFmod;
  *(v29 + 24) = 0;
  *(v29 + 32) = 5;
  *(v29 + 36) = 1;
  v30 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mod", 3uLL);
  *(v30 + 8) = 1;
  *(v30 + 16) = AGCLLVMAirBuiltins::buildMod;
  *(v30 + 24) = 0;
  *(v30 + 32) = 5;
  *(v30 + 36) = 1;
  v31 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "ceil", 4uLL);
  *(v31 + 8) = 1;
  *(v31 + 16) = AGCLLVMAirBuiltins::buildCeil;
  *(v31 + 24) = 0;
  *(v31 + 32) = 3;
  *(v31 + 36) = 256;
  v32 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "exp", 3uLL);
  *(v32 + 8) = 1;
  *(v32 + 16) = AGCLLVMTargetBuilder::CreateExp;
  *(v32 + 24) = 0;
  *(v32 + 32) = 3;
  *(v32 + 36) = 1;
  v33 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "exp2", 4uLL);
  *(v33 + 8) = 1;
  *(v33 + 16) = AGCLLVMTargetBuilder::CreateExp2;
  *(v33 + 24) = 0;
  *(v33 + 32) = 3;
  *(v33 + 36) = 0;
  v34 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fabs", 4uLL);
  *(v34 + 8) = 1;
  *(v34 + 16) = AGCLLVMTargetBuilder::CreateFabs;
  *(v34 + 24) = 0;
  *(v34 + 32) = 3;
  *(v34 + 36) = 0;
  v35 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "floor", 5uLL);
  *(v35 + 8) = 1;
  *(v35 + 16) = AGCLLVMTargetBuilder::CreateFloor;
  *(v35 + 24) = 0;
  *(v35 + 32) = 3;
  *(v35 + 36) = 0;
  v36 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fma", 3uLL);
  *(v36 + 8) = 1;
  *(v36 + 16) = AGCLLVMBuilder::buildFma;
  *(v36 + 24) = 0;
  *(v36 + 32) = 7;
  *(v36 + 36) = 0;
  v37 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmax", 4uLL);
  *(v37 + 8) = 1;
  *(v37 + 16) = AGCLLVMAirBuiltins::buildNanFMax;
  *(v37 + 24) = 0;
  *(v37 + 32) = 5;
  *(v37 + 36) = 256;
  v38 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmin", 4uLL);
  *(v38 + 8) = 1;
  *(v38 + 16) = AGCLLVMAirBuiltins::buildNanFMin;
  *(v38 + 24) = 0;
  *(v38 + 32) = 5;
  *(v38 + 36) = 256;
  v39 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fract", 5uLL);
  *(v39 + 8) = 1;
  *(v39 + 16) = AGCLLVMAirBuiltins::buildFract;
  *(v39 + 24) = 0;
  *(v39 + 32) = 3;
  *(v39 + 36) = 0;
  v40 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "ldexp", 5uLL);
  *(v40 + 8) = 1;
  *(v40 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v40 + 24) = 0;
  *(v40 + 32) = 9;
  *(v40 + 36) = 256;
  v41 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "log", 3uLL);
  *(v41 + 8) = 1;
  *(v41 + 16) = AGCLLVMTargetBuilder::CreateLog;
  *(v41 + 24) = 0;
  *(v41 + 32) = 3;
  *(v41 + 36) = 1;
  v42 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "log2", 4uLL);
  *(v42 + 8) = 1;
  *(v42 + 16) = AGCLLVMTargetBuilder::CreateLog2;
  *(v42 + 24) = 0;
  *(v42 + 32) = 3;
  *(v42 + 36) = 0;
  v43 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad", 3uLL);
  *(v43 + 8) = 1;
  *(v43 + 16) = AGCLLVMAirBuiltins::buildFmad;
  *(v43 + 24) = 0;
  *(v43 + 32) = 7;
  *(v43 + 36) = 0;
  v44 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rsqrt", 5uLL);
  *(v44 + 8) = 1;
  *(v44 + 16) = AGCLLVMTargetBuilder::CreateRsqrt;
  *(v44 + 24) = 0;
  *(v44 + 32) = 3;
  *(v44 + 36) = 256;
  v45 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sqrt", 4uLL);
  *(v45 + 8) = 1;
  *(v45 + 16) = AGCLLVMTargetBuilder::CreateSqrt;
  *(v45 + 24) = 0;
  *(v45 + 32) = 3;
  *(v45 + 36) = 0;
  v46 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "trunc", 5uLL);
  *(v46 + 8) = 1;
  *(v46 + 16) = AGCLLVMAirBuiltins::buildTrunc;
  *(v46 + 24) = 0;
  *(v46 + 32) = 3;
  *(v46 + 36) = 256;
  v47 = *(v2 + 49);
  v48 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_acos", 9uLL);
  *(v48 + 8) = 2;
  *(v48 + 16) = AGCLLVMAirBuiltins::buildArccos;
  *(v48 + 24) = 0;
  *(v48 + 32) = 3;
  *(v48 + 36) = v47;
  *(v48 + 37) = 1;
  v49 = *(v2 + 50);
  v50 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_asin", 9uLL);
  *(v50 + 8) = 2;
  *(v50 + 16) = AGCLLVMAirBuiltins::buildArcsin;
  *(v50 + 24) = 0;
  *(v50 + 32) = 3;
  *(v50 + 36) = v49;
  *(v50 + 37) = 1;
  v51 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_atan", 9uLL);
  *(v51 + 8) = 2;
  *(v51 + 16) = AGCLLVMAirBuiltins::buildArctan;
  *(v51 + 24) = 0;
  *(v51 + 32) = 3;
  *(v51 + 36) = 257;
  v52 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_atan2", 0xAuLL);
  *(v52 + 8) = 2;
  *(v52 + 16) = AGCLLVMAirBuiltins::buildArctan2;
  *(v52 + 24) = 0;
  *(v52 + 32) = 5;
  *(v52 + 36) = 257;
  v53 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_exp10", 0xAuLL);
  *(v53 + 8) = 2;
  *(v53 + 16) = AGCLLVMAirBuiltins::buildExp10;
  *(v53 + 24) = 0;
  *(v53 + 32) = 3;
  *(v53 + 36) = 0;
  v54 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_log10", 0xAuLL);
  *(v54 + 8) = 2;
  *(v54 + 16) = AGCLLVMAirBuiltins::buildLog10;
  *(v54 + 24) = 0;
  *(v54 + 32) = 3;
  *(v54 + 36) = 1;
  v55 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_acosh", 0xAuLL);
  *(v55 + 8) = 2;
  *(v55 + 16) = AGCLLVMAirBuiltins::buildArccosh;
  *(v55 + 24) = 0;
  *(v55 + 32) = 3;
  *(v55 + 36) = 1;
  *(v55 + 37) = 1;
  v56 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_asinh", 0xAuLL);
  *(v56 + 8) = 2;
  *(v56 + 16) = AGCLLVMAirBuiltins::buildArcsinh;
  *(v56 + 24) = 0;
  *(v56 + 32) = 3;
  *(v56 + 36) = 1;
  *(v56 + 37) = 1;
  v57 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_atanh", 0xAuLL);
  *(v57 + 8) = 2;
  *(v57 + 16) = AGCLLVMAirBuiltins::buildArctanh;
  *(v57 + 24) = 0;
  *(v57 + 32) = 3;
  *(v57 + 36) = 1;
  *(v57 + 37) = 1;
  v58 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_pow", 8uLL);
  *(v58 + 8) = 2;
  *(v58 + 16) = AGCLLVMAirBuiltins::buildPow;
  *(v58 + 24) = 0;
  *(v58 + 32) = 5;
  *(v58 + 36) = 1;
  *(v58 + 37) = 1;
  v59 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_powr", 9uLL);
  *(v59 + 8) = 2;
  *(v59 + 16) = AGCLLVMAirBuiltins::buildPowr;
  *(v59 + 24) = 0;
  *(v59 + 32) = 5;
  *(v59 + 36) = 1;
  *(v59 + 37) = 1;
  v60 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_cosh", 9uLL);
  *(v60 + 8) = 2;
  *(v60 + 16) = AGCLLVMAirBuiltins::buildCosh;
  *(v60 + 24) = 0;
  *(v60 + 32) = 3;
  *(v60 + 36) = 1;
  *(v60 + 37) = 1;
  v61 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sinh", 9uLL);
  *(v61 + 8) = 2;
  *(v61 + 16) = AGCLLVMAirBuiltins::buildSinh;
  *(v61 + 24) = 0;
  *(v61 + 32) = 3;
  *(v61 + 36) = 1;
  *(v61 + 37) = 1;
  v62 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_tanh", 9uLL);
  *(v62 + 8) = 2;
  *(v62 + 16) = AGCLLVMAirBuiltins::buildTanh;
  *(v62 + 24) = 0;
  *(v62 + 32) = 3;
  *(v62 + 36) = 1;
  *(v62 + 37) = 1;
  v63 = *(v2 + 48);
  v64 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_cos", 8uLL);
  *(v64 + 8) = 2;
  *(v64 + 16) = AGCLLVMAirBuiltins::buildCos;
  *(v64 + 24) = 0;
  *(v64 + 32) = 3;
  *(v64 + 36) = v63;
  *(v64 + 37) = 1;
  v65 = *(v2 + 48);
  v66 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sin", 8uLL);
  *(v66 + 8) = 2;
  *(v66 + 16) = AGCLLVMAirBuiltins::buildSin;
  *(v66 + 24) = 0;
  *(v66 + 32) = 3;
  *(v66 + 36) = v65;
  *(v66 + 37) = 1;
  v67 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_tan", 8uLL);
  *(v67 + 8) = 2;
  *(v67 + 16) = AGCLLVMAirBuiltins::buildTan;
  *(v67 + 24) = 0;
  *(v67 + 32) = 3;
  *(v67 + 36) = 1;
  *(v67 + 37) = 1;
  v68 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sincos", 0xBuLL);
  *(v68 + 8) = 2;
  *(v68 + 16) = AGCLLVMAirBuiltins::buildMetalSinCos;
  *(v68 + 24) = 0;
  *(v68 + 32) = 5;
  *(v68 + 36) = 0;
  v69 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_round", 0xAuLL);
  *(v69 + 8) = 2;
  *(v69 + 16) = AGCLLVMAirBuiltins::buildRound;
  *(v69 + 24) = 0;
  *(v69 + 32) = 3;
  *(v69 + 36) = 1;
  *(v69 + 37) = 1;
  v70 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmod", 9uLL);
  *(v70 + 8) = 2;
  *(v70 + 16) = AGCLLVMAirBuiltins::buildFmod;
  *(v70 + 24) = 0;
  *(v70 + 32) = 5;
  *(v70 + 36) = 1;
  v71 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_mod", 8uLL);
  *(v71 + 8) = 2;
  *(v71 + 16) = AGCLLVMAirBuiltins::buildMod;
  *(v71 + 24) = 0;
  *(v71 + 32) = 5;
  *(v71 + 36) = 1;
  v72 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_exp", 8uLL);
  *(v72 + 8) = 2;
  *(v72 + 16) = AGCLLVMTargetBuilder::CreateExp;
  *(v72 + 24) = 0;
  *(v72 + 32) = 3;
  *(v72 + 36) = 0;
  v73 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_exp2", 9uLL);
  *(v73 + 8) = 2;
  *(v73 + 16) = AGCLLVMTargetBuilder::CreateExp2;
  *(v73 + 24) = 0;
  *(v73 + 32) = 3;
  *(v73 + 36) = 0;
  v74 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_ldexp", 0xAuLL);
  *(v74 + 8) = 2;
  *(v74 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v74 + 24) = 0;
  *(v74 + 32) = 9;
  *(v74 + 36) = 0;
  *(v74 + 37) = 1;
  v75 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_log", 8uLL);
  *(v75 + 8) = 2;
  *(v75 + 16) = AGCLLVMTargetBuilder::CreateLog;
  *(v75 + 24) = 0;
  *(v75 + 32) = 3;
  *(v75 + 36) = 0;
  v76 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_log2", 9uLL);
  *(v76 + 8) = 2;
  *(v76 + 16) = AGCLLVMTargetBuilder::CreateLog2;
  *(v76 + 24) = 0;
  *(v76 + 32) = 3;
  *(v76 + 36) = 0;
  v77 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_rsqrt", 0xAuLL);
  *(v77 + 8) = 2;
  *(v77 + 16) = AGCLLVMTargetBuilder::CreateRsqrt;
  *(v77 + 24) = 0;
  *(v77 + 32) = 3;
  *(v77 + 36) = 0;
  *(v77 + 37) = 1;
  v78 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_sqrt", 9uLL);
  *(v78 + 8) = 2;
  *(v78 + 16) = AGCLLVMTargetBuilder::CreateSqrt;
  *(v78 + 24) = 0;
  *(v78 + 32) = 3;
  *(v78 + 36) = 0;
  v79 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_ceil", 9uLL);
  *(v79 + 8) = 2;
  *(v79 + 16) = AGCLLVMAirBuiltins::buildCeil;
  *(v79 + 24) = 0;
  *(v79 + 32) = 3;
  *(v79 + 36) = 0;
  *(v79 + 37) = 1;
  v80 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fabs", 9uLL);
  *(v80 + 8) = 2;
  *(v80 + 16) = AGCLLVMTargetBuilder::CreateFabs;
  *(v80 + 24) = 0;
  *(v80 + 32) = 3;
  *(v80 + 36) = 0;
  v81 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_floor", 0xAuLL);
  *(v81 + 8) = 2;
  *(v81 + 16) = AGCLLVMTargetBuilder::CreateFloor;
  *(v81 + 24) = 0;
  *(v81 + 32) = 3;
  *(v81 + 36) = 0;
  v82 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fract", 0xAuLL);
  *(v82 + 8) = 2;
  *(v82 + 16) = AGCLLVMAirBuiltins::buildFastFract;
  *(v82 + 24) = 0;
  *(v82 + 32) = 3;
  *(v82 + 36) = 0;
  v83 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_rint", 9uLL);
  *(v83 + 8) = 2;
  *(v83 + 16) = AGCLLVMAirBuiltins::buildRNE;
  *(v83 + 24) = 0;
  *(v83 + 32) = 3;
  *(v83 + 36) = 1;
  *(v83 + 37) = 1;
  v84 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_trunc", 0xAuLL);
  *(v84 + 8) = 2;
  *(v84 + 16) = AGCLLVMAirBuiltins::buildTrunc;
  *(v84 + 24) = 0;
  *(v84 + 32) = 3;
  *(v84 + 36) = 0;
  *(v84 + 37) = 1;
  v85 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmax", 9uLL);
  *(v85 + 8) = 2;
  *(v85 + 16) = AGCLLVMAirBuiltins::buildFastFMax;
  *(v85 + 24) = 0;
  *(v85 + 32) = 5;
  *(v85 + 36) = 0;
  *(v85 + 37) = 1;
  v86 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmin", 9uLL);
  *(v86 + 8) = 2;
  *(v86 + 16) = AGCLLVMAirBuiltins::buildFastFMin;
  *(v86 + 24) = 0;
  *(v86 + 32) = 5;
  *(v86 + 36) = 0;
  *(v86 + 37) = 1;
  v87 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_expand", 0xCuLL);
  *(v87 + 8) = 1;
  *(v87 + 16) = AGCLLVMAirBuiltins::buildGExp8;
  *(v87 + 24) = 0;
  *(v87 + 32) = 3;
  *(v87 + 36) = 0;
  v88 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_compress", 0xEuLL);
  *(v88 + 8) = 1;
  *(v88 + 16) = AGCLLVMAirBuiltins::buildGCmp8;
  *(v88 + 24) = 0;
  *(v88 + 32) = 3;
  *(v88 + 36) = 0;
  v89 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_expand_xr", 0xFuLL);
  *(v89 + 8) = 1;
  *(v89 + 16) = AGCLLVMAirBuiltins::buildGExp10;
  *(v89 + 24) = 0;
  *(v89 + 32) = 3;
  *(v89 + 36) = 0;
  v90 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "gamma_compress_xr", 0x11uLL);
  *(v90 + 8) = 1;
  *(v90 + 16) = AGCLLVMAirBuiltins::buildGCmp10;
  *(v90 + 24) = 0;
  *(v90 + 32) = 3;
  *(v90 + 36) = 0;
  v91 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "convert", 7uLL);
  *(v91 + 8) = 1;
  *(v91 + 16) = AGCLLVMAirBuiltins::buildConvert;
  *(v91 + 24) = 0;
  *(v91 + 32) = 9;
  *(v91 + 36) = 0;
  *(v91 + 37) = 1;
  v92 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "pack", 4uLL);
  *(v92 + 8) = 1;
  *(v92 + 16) = AGCLLVMAirBuiltins::buildPack;
  *(v92 + 24) = 0;
  *(v92 + 32) = 9;
  *(v92 + 36) = 0;
  v93 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "unpack", 6uLL);
  *(v93 + 8) = 1;
  *(v93 + 16) = AGCLLVMAirBuiltins::buildUnpack;
  *(v93 + 24) = 0;
  *(v93 + 32) = 9;
  *(v93 + 36) = 0;
  v94 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "abs", 3uLL);
  *(v94 + 8) = 1;
  *(v94 + 16) = AGCLLVMAirBuiltins::buildAbs;
  *(v94 + 24) = 0;
  *(v94 + 32) = 9;
  *(v94 + 36) = 0;
  *(v94 + 37) = 1;
  v95 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "abs_diff", 8uLL);
  *(v95 + 8) = 1;
  *(v95 + 16) = AGCLLVMAirBuiltins::buildAbsDiff;
  *(v95 + 24) = 0;
  *(v95 + 32) = 9;
  *(v95 + 36) = 0;
  *(v95 + 37) = 1;
  v96 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "add_sat", 7uLL);
  *(v96 + 8) = 1;
  *(v96 + 16) = AGCLLVMAirBuiltins::buildAddSat;
  *(v96 + 24) = 0;
  *(v96 + 32) = 9;
  *(v96 + 36) = 0;
  *(v96 + 37) = 1;
  v97 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sub_sat", 7uLL);
  *(v97 + 8) = 1;
  *(v97 + 16) = AGCLLVMAirBuiltins::buildSubSat;
  *(v97 + 24) = 0;
  *(v97 + 32) = 9;
  *(v97 + 36) = 0;
  *(v97 + 37) = 1;
  v98 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "hadd", 4uLL);
  *(v98 + 8) = 1;
  *(v98 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v98 + 24) = 0;
  *(v98 + 32) = 9;
  *(v98 + 36) = 0;
  *(v98 + 37) = 1;
  v99 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rhadd", 5uLL);
  *(v99 + 8) = 1;
  *(v99 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v99 + 24) = 0;
  *(v99 + 32) = 9;
  *(v99 + 36) = 0;
  *(v99 + 37) = 1;
  v100 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "clamp", 5uLL);
  *(v100 + 8) = 1;
  *(v100 + 16) = AGCLLVMAirBuiltins::buildClamp;
  *(v100 + 24) = 0;
  *(v100 + 32) = 9;
  *(v100 + 36) = 0;
  *(v100 + 37) = 1;
  v101 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "clz", 3uLL);
  *(v101 + 8) = 1;
  *(v101 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v101 + 24) = 0;
  *(v101 + 32) = 9;
  *(v101 + 36) = 0;
  *(v101 + 37) = 1;
  v102 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "ctz", 3uLL);
  *(v102 + 8) = 1;
  *(v102 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v102 + 24) = 0;
  *(v102 + 32) = 9;
  *(v102 + 36) = 0;
  *(v102 + 37) = 1;
  v103 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad_hi", 6uLL);
  *(v103 + 8) = 1;
  *(v103 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v103 + 24) = 0;
  *(v103 + 32) = 9;
  *(v103 + 36) = 0;
  *(v103 + 37) = 1;
  v104 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad_sat", 7uLL);
  *(v104 + 8) = 1;
  *(v104 + 16) = AGCLLVMAirBuiltins::buildMadSat;
  *(v104 + 24) = 0;
  *(v104 + 32) = 9;
  *(v104 + 36) = 0;
  *(v104 + 37) = 1;
  v105 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "max", 3uLL);
  *(v105 + 8) = 1;
  *(v105 + 16) = AGCLLVMAirBuiltins::buildIMax;
  *(v105 + 24) = 0;
  *(v105 + 32) = 9;
  *(v105 + 36) = 0;
  *(v105 + 37) = 1;
  v106 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "min", 3uLL);
  *(v106 + 8) = 1;
  *(v106 + 16) = AGCLLVMAirBuiltins::buildIMin;
  *(v106 + 24) = 0;
  *(v106 + 32) = 9;
  *(v106 + 36) = 0;
  *(v106 + 37) = 1;
  v107 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mul_hi", 6uLL);
  *(v107 + 8) = 1;
  *(v107 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v107 + 24) = 0;
  *(v107 + 32) = 9;
  *(v107 + 36) = 0;
  *(v107 + 37) = 1;
  v108 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "rotate", 6uLL);
  *(v108 + 8) = 1;
  *(v108 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v108 + 24) = 0;
  *(v108 + 32) = 9;
  *(v108 + 36) = 0;
  *(v108 + 37) = 1;
  v109 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "popcount", 8uLL);
  *(v109 + 8) = 1;
  *(v109 + 16) = AGCLLVMAirBuiltins::buildPopCount;
  *(v109 + 24) = 0;
  *(v109 + 32) = 3;
  *(v109 + 36) = 0;
  *(v109 + 37) = 1;
  v110 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "extract_bits", 0xCuLL);
  *(v110 + 8) = 1;
  *(v110 + 16) = AGCLLVMAirBuiltins::buildExtractBits;
  *(v110 + 24) = 0;
  *(v110 + 32) = 9;
  *(v110 + 36) = 0;
  *(v110 + 37) = 1;
  v111 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "insert_bits", 0xBuLL);
  *(v111 + 8) = 1;
  *(v111 + 16) = AGCLLVMAirBuiltins::buildInsertBits;
  *(v111 + 24) = 0;
  *(v111 + 32) = 9;
  *(v111 + 36) = 0;
  *(v111 + 37) = 1;
  v112 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "reverse_bits", 0xCuLL);
  *(v112 + 8) = 1;
  *(v112 + 16) = AGCLLVMAirBuiltins::buildReverseBits;
  *(v112 + 24) = 0;
  *(v112 + 32) = 3;
  *(v112 + 36) = 0;
  *(v112 + 37) = 1;
  v113 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "any", 3uLL);
  *(v113 + 8) = 1;
  *(v113 + 16) = AGCLLVMAirBuiltins::buildAny;
  *(v113 + 24) = 0;
  *(v113 + 32) = 3;
  *(v113 + 36) = 0;
  v114 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "all", 3uLL);
  *(v114 + 8) = 1;
  *(v114 + 16) = AGCLLVMAirBuiltins::buildAll;
  *(v114 + 24) = 0;
  *(v114 + 32) = 3;
  *(v114 + 36) = 0;
  v115 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "any_msb", 7uLL);
  *(v115 + 8) = 1;
  *(v115 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v115 + 24) = 0;
  *(v115 + 32) = 9;
  *(v115 + 36) = 0;
  *(v115 + 37) = 1;
  v116 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "all_msb", 7uLL);
  *(v116 + 8) = 1;
  *(v116 + 16) = AGCLLVMAirBuiltins::unimplemented;
  *(v116 + 24) = 0;
  *(v116 + 32) = 9;
  *(v116 + 36) = 0;
  *(v116 + 37) = 1;
  v117 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "saturate", 8uLL);
  *(v117 + 8) = 1;
  *(v117 + 16) = AGCLLVMAirBuiltins::buildNanFSaturate;
  *(v117 + 24) = 0;
  *(v117 + 32) = 3;
  *(v117 + 36) = 0;
  *(v117 + 37) = 1;
  v118 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mix", 3uLL);
  *(v118 + 8) = 1;
  *(v118 + 16) = AGCLLVMAirBuiltins::buildMix;
  *(v118 + 24) = 0;
  *(v118 + 32) = 8;
  *(v118 + 36) = 0;
  *(v118 + 37) = 1;
  v119 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "sign", 4uLL);
  *(v119 + 8) = 1;
  *(v119 + 16) = AGCLLVMAirBuiltins::buildSign;
  *(v119 + 24) = 0;
  *(v119 + 32) = 3;
  *(v119 + 36) = 0;
  *(v119 + 37) = 1;
  v120 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "dot", 3uLL);
  *(v120 + 8) = 1;
  *(v120 + 16) = AGCLLVMAirBuiltins::buildDot;
  *(v120 + 24) = 0;
  *(v120 + 32) = 6;
  *(v120 + 36) = 0;
  v121 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_clamp", 0xAuLL);
  *(v121 + 8) = 2;
  *(v121 + 16) = AGCLLVMAirBuiltins::buildFastFClamp;
  *(v121 + 24) = 0;
  *(v121 + 32) = 7;
  *(v121 + 36) = 0;
  *(v121 + 37) = 1;
  v122 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_saturate", 0xDuLL);
  *(v122 + 8) = 2;
  *(v122 + 16) = AGCLLVMAirBuiltins::buildFastFSaturate;
  *(v122 + 24) = 0;
  *(v122 + 32) = 3;
  *(v122 + 36) = 0;
  *(v122 + 37) = 1;
  v123 = *(v2 + 51);
  v124 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "dfdx", 4uLL);
  *(v124 + 8) = 1;
  *(v124 + 16) = AGCLLVMAirBuiltins::buildDfdx;
  *(v124 + 24) = 0;
  *(v124 + 32) = 3;
  *(v124 + 36) = v123;
  *(v124 + 37) = 1;
  v125 = *(v2 + 51);
  v126 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "dfdy", 4uLL);
  *(v126 + 8) = 1;
  *(v126 + 16) = AGCLLVMAirBuiltins::buildDfdy;
  *(v126 + 24) = 0;
  *(v126 + 32) = 3;
  *(v126 + 36) = v125;
  *(v126 + 37) = 1;
  LOBYTE(v2) = *(v2 + 51);
  v127 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fwidth", 6uLL);
  *(v127 + 8) = 1;
  *(v127 + 16) = AGCLLVMAirBuiltins::buildWidth;
  *(v127 + 24) = 0;
  *(v127 + 32) = 3;
  *(v127 + 36) = v2;
  *(v127 + 37) = 1;
  v128 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "atomic", 6uLL);
  *(v128 + 8) = 1;
  *(v128 + 16) = AGCLLVMAirBuiltins::buildAtomic;
  *(v128 + 24) = 0;
  *(v128 + 32) = 9;
  *(v128 + 36) = 0;
  v129 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "assert", 6uLL);
  *(v129 + 8) = 1;
  *(v129 + 16) = AGCLLVMAirBuiltins::buildAssert;
  *(v129 + 24) = 0;
  *(v129 + 32) = 1;
  *(v129 + 36) = 0;
  v130 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_simd_width", 0xEuLL);
  *(v130 + 8) = 1;
  *(v130 + 16) = AGCLLVMAirBuiltins::buildSimdWidth;
  *(v130 + 24) = 0;
  *(v130 + 32) = 9;
  *(v130 + 36) = 0;
  v131 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_simdgroup_size", 0x12uLL);
  *(v131 + 8) = 1;
  *(v131 + 16) = AGCLLVMAirBuiltins::buildSimdWidth;
  *(v131 + 24) = 0;
  *(v131 + 32) = 9;
  *(v131 + 36) = 0;
  v132 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_thread_execution_width", 0x1AuLL);
  *(v132 + 8) = 1;
  *(v132 + 16) = AGCLLVMAirBuiltins::buildThreadExecutionWidth;
  *(v132 + 24) = 0;
  *(v132 + 32) = 9;
  *(v132 + 36) = 0;
  v133 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "simdgroup", 9uLL);
  *(v133 + 8) = 1;
  *(v133 + 16) = AGCLLVMAirBuiltins::buildSimdBarrier;
  *(v133 + 24) = 0;
  *(v133 + 32) = 9;
  *(v133 + 36) = 0;
  v134 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "is_uniform", 0xAuLL);
  *(v134 + 8) = 1;
  *(v134 + 16) = AGCLLVMAirBuiltins::replaceIsUniform;
  *(v134 + 24) = 0;
  *(v134 + 32) = 12;
  *(v134 + 36) = 0;
  v135 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mul24", 5uLL);
  *(v135 + 8) = 1;
  *(v135 + 16) = AGCLLVMAirBuiltins::buildIMul24;
  *(v135 + 24) = 0;
  *(v135 + 32) = 9;
  *(v135 + 36) = 0;
  *(v135 + 37) = 1;
  v136 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "mad24", 5uLL);
  *(v136 + 8) = 1;
  *(v136 + 16) = AGCLLVMAirBuiltins::buildIMad24;
  *(v136 + 24) = 0;
  *(v136 + 32) = 9;
  *(v136 + 36) = 0;
  *(v136 + 37) = 1;
  v137 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "min3", 4uLL);
  *(v137 + 8) = 1;
  *(v137 + 16) = AGCLLVMAirBuiltins::buildIMin3;
  *(v137 + 24) = 0;
  *(v137 + 32) = 9;
  *(v137 + 36) = 0;
  *(v137 + 37) = 1;
  v138 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmin3", 5uLL);
  *(v138 + 8) = 1;
  *(v138 + 16) = AGCLLVMAirBuiltins::buildFMin3;
  *(v138 + 24) = 0;
  *(v138 + 32) = 9;
  *(v138 + 36) = 0;
  *(v138 + 37) = 1;
  v139 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmin3", 0xAuLL);
  *(v139 + 8) = 2;
  *(v139 + 16) = AGCLLVMAirBuiltins::buildFastFMin3;
  *(v139 + 24) = 0;
  *(v139 + 32) = 9;
  *(v139 + 36) = 0;
  *(v139 + 37) = 1;
  v140 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "max3", 4uLL);
  *(v140 + 8) = 1;
  *(v140 + 16) = AGCLLVMAirBuiltins::buildIMax3;
  *(v140 + 24) = 0;
  *(v140 + 32) = 9;
  *(v140 + 36) = 0;
  *(v140 + 37) = 1;
  v141 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmax3", 5uLL);
  *(v141 + 8) = 1;
  *(v141 + 16) = AGCLLVMAirBuiltins::buildFMax3;
  *(v141 + 24) = 0;
  *(v141 + 32) = 9;
  *(v141 + 36) = 0;
  *(v141 + 37) = 1;
  v142 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmax3", 0xAuLL);
  *(v142 + 8) = 2;
  *(v142 + 16) = AGCLLVMAirBuiltins::buildFastFMax3;
  *(v142 + 24) = 0;
  *(v142 + 32) = 9;
  *(v142 + 36) = 0;
  *(v142 + 37) = 1;
  v143 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "median3", 7uLL);
  *(v143 + 8) = 1;
  *(v143 + 16) = AGCLLVMAirBuiltins::buildIMedian3;
  *(v143 + 24) = 0;
  *(v143 + 32) = 9;
  *(v143 + 36) = 0;
  *(v143 + 37) = 1;
  v144 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fmedian3", 8uLL);
  *(v144 + 8) = 1;
  *(v144 + 16) = AGCLLVMAirBuiltins::buildFMedian3;
  *(v144 + 24) = 0;
  *(v144 + 32) = 9;
  *(v144 + 36) = 0;
  *(v144 + 37) = 1;
  v145 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "fast_fmedian3", 0xDuLL);
  *(v145 + 8) = 2;
  *(v145 + 16) = AGCLLVMAirBuiltins::buildFastFMedian3;
  *(v145 + 24) = 0;
  *(v145 + 32) = 9;
  *(v145 + 36) = 0;
  *(v145 + 37) = 1;
  v146 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "projective_coordinates", 0x16uLL);
  *(v146 + 8) = 1;
  *(v146 + 16) = AGCLLVMAirBuiltins::buildProjectiveCoordinates;
  *(v146 + 24) = 0;
  *(v146 + 32) = 3;
  *(v146 + 36) = 0;
  v147 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_compute_pipeline_state", 0x2CuLL);
  *(v147 + 8) = 1;
  *(v147 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v147 + 24) = 0;
  *(v147 + 32) = 3;
  *(v147 + 36) = 0;
  *(v147 + 37) = 1;
  v148 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_render_pipeline_state", 0x2BuLL);
  *(v148 + 8) = 1;
  *(v148 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v148 + 24) = 0;
  *(v148 + 32) = 3;
  *(v148 + 36) = 0;
  *(v148 + 37) = 1;
  v149 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_command_buffer", 0x24uLL);
  *(v149 + 8) = 1;
  *(v149 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v149 + 24) = 0;
  *(v149 + 32) = 3;
  *(v149 + 36) = 0;
  *(v149 + 37) = 1;
  v150 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_visible_function_table", 0x2CuLL);
  *(v150 + 8) = 1;
  *(v150 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v150 + 24) = 0;
  *(v150 + 32) = 3;
  *(v150 + 36) = 0;
  *(v150 + 37) = 1;
  v151 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_unique_identifier_depth_stencil_state", 0x29uLL);
  *(v151 + 8) = 1;
  *(v151 + 16) = AGCLLVMAirBuiltins::buildGetUniqueIdentifierPsoIcbVft;
  *(v151 + 24) = 0;
  *(v151 + 32) = 3;
  *(v151 + 36) = 0;
  *(v151 + 37) = 1;
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(this, "get_threads_per_simdgroup", 0x19uLL);
  v153 = *result;
  *(v153 + 8) = 1;
  *(v153 + 16) = AGCLLVMAirBuiltins::buildThreadExecutionWidth;
  *(v153 + 24) = 0;
  *(v153 + 32) = 9;
  *(v153 + 36) = 0;
  return result;
}

uint64_t *AGCLLVMGen3TargetConfig::initializeAirBuiltinsMap(AGCLLVMGen3TargetConfig *this, AGCLLVMAirBuiltinsMap *a2)
{
  AGCLLVMAirBuiltinsMap::insertBuiltinReplacementsBase(a2, this);
  v3 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_broadcast", 0xEuLL);
  *(v3 + 8) = 1;
  *(v3 + 16) = AGCLLVMAirBuiltins::buildQuadBroadcast;
  *(v3 + 24) = 0;
  *(v3 + 32) = 5;
  *(v3 + 36) = 0;
  v4 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle", 0xCuLL);
  *(v4 + 8) = 1;
  *(v4 + 16) = AGCLLVMAirBuiltins::buildQuadShuffle;
  *(v4 + 24) = 0;
  *(v4 + 32) = 5;
  *(v4 + 36) = 0;
  v5 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_up", 0xFuLL);
  *(v5 + 8) = 1;
  *(v5 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleUp;
  *(v5 + 24) = 0;
  *(v5 + 32) = 5;
  *(v5 + 36) = 0;
  v6 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_down", 0x11uLL);
  *(v6 + 8) = 1;
  *(v6 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleDown;
  *(v6 + 24) = 0;
  *(v6 + 32) = 5;
  *(v6 + 36) = 0;
  v7 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_xor", 0x10uLL);
  *(v7 + 8) = 1;
  *(v7 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleXor;
  *(v7 + 24) = 0;
  *(v7 + 32) = 5;
  *(v7 + 36) = 0;
  v8 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_rotate_up", 0x16uLL);
  *(v8 + 8) = 1;
  *(v8 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleRotateUp;
  *(v8 + 24) = 0;
  *(v8 + 32) = 5;
  *(v8 + 36) = 0;
  v9 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "quad_shuffle_rotate_down", 0x18uLL);
  *(v9 + 8) = 1;
  *(v9 + 16) = AGCLLVMAirBuiltins::buildQuadShuffleRotateDown;
  *(v9 + 24) = 0;
  *(v9 + 32) = 5;
  *(v9 + 36) = 0;
  v10 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "wg", 2uLL);
  *(v10 + 8) = 1;
  *(v10 + 16) = AGCLLVMAirBuiltins::buildWGBarrier;
  *(v10 + 24) = 0;
  *(v10 + 32) = 9;
  *(v10 + 36) = 0;
  v11 = *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_quad_element", 0x10uLL);
  *(v11 + 8) = 1;
  *(v11 + 16) = AGCLLVMAirBuiltins::buildQuadElement;
  *(v11 + 24) = 0;
  *(v11 + 32) = 9;
  *(v11 + 36) = 0;
  result = llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(a2, "get_threads_per_simdgroup", 0x19uLL);
  v13 = *result;
  *(v13 + 8) = 1;
  *(v13 + 16) = AGCLLVMAirBuiltins::buildThreadExecutionWidth;
  *(v13 + 24) = 0;
  *(v13 + 32) = 9;
  *(v13 + 36) = 0;
  return result;
}

uint64_t *llvm::StringMap<AGCLLVMAirBuiltinReplacement<AGCLLVMAirBuiltins>::Replacement,llvm::MallocAllocator>::try_emplace<>(llvm::StringMapImpl *a1, const void *a2, size_t a3)
{
  i = (*a1 + 8 * llvm::StringMapImpl::LookupBucketFor());
  v7 = *i;
  if (*i == -8)
  {
    --*(a1 + 4);
  }

  else if (v7)
  {
    while (!v7 || v7 == -8)
    {
      v8 = i[1];
      ++i;
      v7 = v8;
    }

    return i;
  }

  v10 = MEMORY[0x20F330650](a3 + 41, 8);
  v11 = v10;
  v12 = v10 + 40;
  if (a3)
  {
    memcpy((v10 + 40), a2, a3);
  }

  *(v12 + a3) = 0;
  *v11 = a3;
  *(v11 + 8) = 0;
  *(v11 + 32) = 0;
  *(v11 + 36) = 0;
  *i = v11;
  ++*(a1 + 3);
    ;
  }

  return i;
}

uint64_t llvm::IRBuilderBase::CreateFPToSI(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 42, a2, a3, a4);
}

uint64_t llvm::IRBuilderBase::CreateUIToFP(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Type *a3, const llvm::Twine *a4)
{
  if (*(this + 100) == 1)
  {
    return llvm::IRBuilderBase::CreateConstrainedFPCast();
  }

  return llvm::IRBuilderBase::CreateCast(this, 43, a2, a3, a4);
}

llvm::Instruction *AGCLLVMTargetBuilder::CreateFloor(AGCLLVMTargetBuilder *this, llvm::Value *a2)
{
  v4 = *(this + 58);
  v8 = *(this + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v9, (this + 8));
  v5 = *(this + 26);
  v10 = v5;
  v11 = v8;
  v12 = v9;
  if (v9)
  {
    llvm::MetadataTracking::track();
    v5 = v10;
  }

  v13 = v5;
  v6 = AGCLLVMTargetLowerer::CallFPIntrinsic(v4, &v11, a2, "llvm.floor");
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  if (v9)
  {
    llvm::MetadataTracking::untrack();
  }

  return v6;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::$_0 &&>>(uint64_t ***a1)
{
  v43 = 0;
  v57[8] = *MEMORY[0x277D85DE8];
  v42 = ***a1;
  v55 = v57;
  v56 = xmmword_20E70C500;
  do
  {
    v1 = 0;
    do
    {
      v37 = v1;
      v38 = 0;
      v2 = off_277E20200[v1];
      v44 = *v2;
      __s = v2 + 2;
      v41 = 0x847uLL >> v1;
      do
      {
        if (*v2 == 102)
        {
          v36 = 1;
        }

        else
        {
          v36 = 2;
          if (*off_277E20200[v38] != 102)
          {
            v35 = 0;
            v3 = 1;
            goto LABEL_9;
          }
        }

        v35 = 1;
        v3 = 4;
LABEL_9:
        v40 = v3;
        v4 = 0;
        v6 = v1 > 2 && v38 > 2;
        v39 = v6;
        do
        {
          if (((v4 != 0) & ~v39) == 0)
          {
            v7 = 0;
            v8 = 0;
            v47 = byte_20E70CF8C[v37];
            v9 = off_277E20200[v38];
            v46 = byte_20E70CF8C[v38];
            v10 = v36;
            if ((v35 & (v4 == 0)) == 0)
            {
              v10 = v4;
            }

            v45 = v10;
            v49 = v9 + 2;
            v11 = 1;
            while (1)
            {
              LOBYTE(v53) = 0;
              memset(__p, 0, sizeof(__p));
              v12 = *v2;
              BYTE1(v51) = v12 == 102;
              HIBYTE(v51) = *v2 == 115;
              BYTE1(v53) = v2[2] == 98;
              BYTE3(v53) = v47;
              v13 = *v9;
              LOBYTE(v51) = v13 == 102;
              BYTE2(v51) = *v9 == 115;
              BYTE2(v53) = v46;
              HIDWORD(v53) = v45;
              v54 = v7 & 1;
              if (*(*(v42 + 464) + 1947) == 1 && (((v13 == 102) & (0x847uLL >> v38)) != 0 || ((v12 == 102) & v41) != 0))
              {
                std::string::basic_string[abi:nn200100]<0>(&v50, v49);
                if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[0].__r_.__value_.__l.__data_);
                }

                __p[0] = v50;
                std::string::basic_string[abi:nn200100]<0>(&v50, __s);
                if (SHIBYTE(__p[1].__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p[1].__r_.__value_.__l.__data_);
                }

                __p[1] = v50;
                LOBYTE(v53) = 1;
              }

              *&v56 = 0;
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v55, *v2);
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v55, v2[1]);
              v14 = *(&off_277E201D0 + v43);
              v15 = strlen(v14);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, v14, &v14[v15]);
              v16 = strlen(__s);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, __s, &__s[v16]);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, ".", "");
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v55, *v9);
              llvm::SmallVectorTemplateBase<char,true>::push_back(&v55, v9[1]);
              v17 = strlen(v14);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, v14, &v14[v17]);
              v18 = strlen(v49);
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, v49, &v49[v18]);
              v19 = v4;
              v20 = strlen(*(&off_277E20278 + v4));
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, *(&off_277E20278 + v4), *(&off_277E20278 + v4) + v20);
              v21 = strlen(*(&off_277E202A8 + v8));
              llvm::SmallVectorImpl<char>::append<char const*,void>(&v55, *(&off_277E202A8 + v8), *(&off_277E202A8 + v8) + v21);
              v23 = v55;
              v22 = v56;
              v24 = llvm::StringMapImpl::LookupBucketFor();
              v25 = AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map;
              v26 = v24;
              v27 = *(AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map + 8 * v24);
              if (v27 == -8)
              {
                break;
              }

              if (!v27)
              {
                goto LABEL_32;
              }

LABEL_41:
              *(v27 + 8) = v51;
              std::string::operator=((v27 + 16), __p);
              std::string::operator=((v27 + 40), &__p[1]);
              v33 = v54;
              *(v27 + 64) = v53;
              *(v27 + 72) = v33;
              if (SHIBYTE(__p[1].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[1].__r_.__value_.__l.__data_);
              }

              v4 = v19;
              if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p[0].__r_.__value_.__l.__data_);
              }

              v34 = (v44 != 102) & v11;
              v7 = 1;
              v8 = 1;
              v11 = 0;
              if ((v34 & 1) == 0)
              {
                goto LABEL_46;
              }
            }

            LODWORD(qword_28117E2D8) = qword_28117E2D8 - 1;
LABEL_32:
            v28 = MEMORY[0x20F330650](v22 + 81, 8);
            v29 = v28;
            v30 = v28 + 80;
            if (v22)
            {
              memcpy((v28 + 80), v23, v22);
            }

            *(v30 + v22) = 0;
            *v29 = v22;
            *(v29 + 8) = 0u;
            *(v29 + 24) = 0u;
            *(v29 + 40) = 0u;
            *(v29 + 56) = 0u;
            *(v29 + 72) = 0;
            *(v25 + 8 * v26) = v29;
            ++dword_28117E2D4;
            for (i = (AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map + 8 * llvm::StringMapImpl::RehashTable(&AGCLLVMAirBuiltins::initializeTypeConversionMap(void)::convert_map)); ; ++i)
            {
              v27 = *i;
              if (*i && v27 != -8)
              {
                break;
              }
            }

            goto LABEL_41;
          }

LABEL_46:
          ++v4;
        }

        while (v4 != v40);
        v1 = v37;
        ++v38;
      }

      while (v38 != 15);
      v1 = v37 + 1;
    }

    while (v37 != 14);
    ++v43;
  }

  while (v43 != 6);
  if (v55 != v57)
  {
    free(v55);
  }
}

void *llvm::SmallVectorTemplateBase<char,true>::push_back(void *result, char a2)
{
  v2 = result[1];
  if ((v2 + 1) > result[2])
  {
    llvm::SmallVectorBase<unsigned long long>::grow_pod();
  }

  *(*result + v2) = a2;
  ++result[1];
  return result;
}

uint64_t AGCLLVMAirBuiltins::buildClamp(uint64_t a1, llvm::CmpInst ***a2, unsigned __int8 *a3)
{
  v4 = *a3;
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  if (v4 == 117)
  {
    v8 = AGCLLVMBuilder::buildICmpSel(a1, *a2, v5, 34);
    v9 = a1;
    v10 = v7;
    v11 = 36;
    goto LABEL_5;
  }

  if (v4 == 115)
  {
    v8 = AGCLLVMBuilder::buildICmpSel(a1, *a2, v5, 38);
    v9 = a1;
    v10 = v7;
    v11 = 40;
LABEL_5:

    return AGCLLVMBuilder::buildICmpSel(v9, v8, v10, v11);
  }

  v13 = *(a1 + 464);
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v14 = *v6;
  if ((*(*v6 + 2) & 0xFE) == 0x12)
  {
    v14 = **(v14 + 2);
  }

  v15 = (*(*v13 + 80))(v13, &v16, v6, v5, v7, v14 == *(a1 + 168));
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  return v15;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMBuilder::getVariableTypeMap(void)::{lambda(llvm::StringMap<ComponentType,llvm::MallocAllocator> &)#1} &,llvm::StringMap<ComponentType,llvm::MallocAllocator> &>>(uint64_t a1)
{
  v1 = *(*a1 + 8);
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i1", 2uLL) + 8) = 2;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "BOOL", 4uLL) + 8) = 2;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i8", 2uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "char", 4uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int8_t", 6uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uchar", 5uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint8_t", 7uLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "unsigned char", 0xDuLL) + 8) = 5;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i16", 3uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "short", 5uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int16_t", 7uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "ushort", 6uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint16_t", 8uLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "unsigned short", 0xEuLL) + 8) = 4;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "i32", 3uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int", 3uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "int32_t", 7uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint", 4uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "uint32_t", 8uLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "unsigned int", 0xCuLL) + 8) = 3;
  *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "half", 4uLL) + 8) = 1;
  result = llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>(v1, "float", 5uLL);
  *(*result + 8) = 0;
  return result;
}

void std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::$_0 &&>>()
{
  v0 = 0;
  v66[8] = *MEMORY[0x277D85DE8];
  __s = "_center";
  v59 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_loc;
  do
  {
    v55 = v0;
    v1 = 0;
    v2 = 1;
    v3 = "_perspective";
    v61 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_mode;
    do
    {
      v57 = v2;
      v4 = 0;
      v56 = v1;
      v5 = ".";
      v62 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps;
      do
      {
        v58 = v4;
        v6 = 0;
        v7 = 1;
        v8 = "f16";
        v9 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type;
        do
        {
          v10 = v6;
          v64 = v66;
          v65 = xmmword_20E70C500;
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, "air.interpolate", "");
          v11 = strlen(__s);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, __s, &__s[v11]);
          v12 = strlen(v3);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v3, &v3[v12]);
          v13 = strlen(v5);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v5, &v5[v13]);
          v14 = strlen(v8);
          llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v8, &v8[v14]);
          v15 = *(v9 + 2);
          v16 = *(v59 + 2);
          v17 = *(v61 + 2);
          v18 = *(v62 + 8);
          if (v16 == 4 || v16 == 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = -1;
          }

          v21 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v64, v65);
          *(v21 + 8) = v16;
          *(v21 + 12) = v17;
          *(v21 + 16) = v15;
          *(v21 + 20) = v18;
          *(v21 + 21) = 0;
          *(v21 + 22) = v20;
          if (v64 != v66)
          {
            free(v64);
          }

          v9 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type)[2 * v7];
          v8 = *v9;
          v6 = 1;
          v7 = 2;
        }

        while ((v10 & 1) == 0);
        v4 = v58 + 1;
        v62 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps)[2 * v58 + 2];
        v5 = *v62;
      }

      while (v58 != 3);
      v61 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_mode)[2 * v57];
      v3 = *v61;
      v1 = 1;
      v2 = 2;
    }

    while ((v56 & 1) == 0);
    v0 = v55 + 1;
    v59 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_loc)[2 * v55 + 2];
    __s = *v59;
  }

  while (v55 != 3);
  v22 = 0;
  v23 = ".";
  v24 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps;
  do
  {
    v25 = 0;
    v26 = 1;
    v27 = "f16";
    v28 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type;
    do
    {
      v29 = v25;
      v64 = v66;
      v65 = xmmword_20E70C500;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, "air.get_vertex_value", "");
      v30 = strlen(v23);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v23, &v23[v30]);
      v31 = strlen(v27);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v27, &v27[v31]);
      v32 = *(v28 + 2);
      v33 = *(v24 + 8);
      v34 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v64, v65);
      *(v34 + 8) = 0x500000000;
      *(v34 + 16) = v32;
      *(v34 + 20) = v33;
      *(v34 + 21) = -256;
      if (v64 != v66)
      {
        free(v64);
      }

      v28 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comp_type)[2 * v26];
      v27 = *v28;
      v25 = 1;
      v26 = 2;
    }

    while ((v29 & 1) == 0);
    ++v22;
    v24 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps)[2 * v22];
    v23 = *v24;
  }

  while (v22 != 4);
  v35 = 0;
  v36 = ".";
  v37 = &AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps;
  do
  {
    v63 = v35;
    v38 = &off_277E1FC30;
    v39 = 3;
    v40 = "i8";
    do
    {
      v64 = v66;
      v65 = xmmword_20E70C500;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, "air.get_vertex_value", "");
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, ".s", "");
      v41 = strlen(v36);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v36, &v36[v41]);
      v42 = strlen(v40);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v40, &v40[v42]);
      v43 = *(v38 - 4);
      v44 = *(v37 + 8);
      v45 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v64, v65);
      *(v45 + 8) = 0x500000000;
      *(v45 + 16) = v43;
      *(v45 + 20) = v44;
      *(v45 + 21) = -256;
      if (v64 != v66)
      {
        free(v64);
      }

      v46 = *v38;
      v38 += 3;
      v40 = v46;
      --v39;
    }

    while (v39);
    v47 = &off_277E1FC90;
    v48 = 4;
    v49 = "i1";
    do
    {
      v64 = v66;
      v65 = xmmword_20E70C500;
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, "air.get_vertex_value", "");
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, ".u", "");
      v50 = strlen(v36);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v36, &v36[v50]);
      v51 = strlen(v49);
      llvm::SmallVectorImpl<char>::append<char const*,void>(&v64, v49, &v49[v51]);
      v52 = *(v47 - 4);
      v53 = *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(v64, v65);
      *(v53 + 8) = 0x500000000;
      *(v53 + 16) = v52;
      *(v53 + 20) = v44;
      *(v53 + 21) = -256;
      if (v64 != v66)
      {
        free(v64);
      }

      v54 = *v47;
      v47 += 3;
      v49 = v54;
      --v48;
    }

    while (v48);
    v35 = v63 + 1;
    v37 = &(&AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interp_comps)[2 * v63 + 2];
    v36 = *v37;
  }

  while (v63 != 3);
}

uint64_t *llvm::StringMap<AGCLLVMAGPFragmentShader::InterpolationFunction,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAGPFragmentShader::initializeInterpolationFunctionsMap(void)::interpolation_functions_map + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117E4B0) = qword_28117E4B0 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 25, 8);
  v9 = v8;
  v10 = v8 + 24;
  if (a2)
  {
    memcpy((v8 + 24), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  *(v9 + 8) = 0;
  *(v9 + 16) = 10;
  *(v9 + 20) = 1;
  *(v9 + 22) = -1;
  *i = v9;
  ++dword_28117E4AC;
    ;
  }

  return i;
}

uint64_t *std::__call_once_proxy[abi:nn200100]<std::tuple<AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::$_0 &&>>()
{
  v0 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_sin", 8uLL);
  v1 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v0 + 8), "fast_asin", 9uLL);
  *(v1 + 8) = AGCLLVMAirTrigIdentities::buildNopIdentity;
  *(v1 + 16) = 0;
  v2 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_sin", 8uLL);
  v3 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v2 + 8), "fast_acos", 9uLL);
  *(v3 + 8) = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity;
  *(v3 + 16) = 0;
  v4 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_sin", 8uLL);
  v5 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v4 + 8), "fast_atan", 9uLL);
  *(v5 + 8) = AGCLLVMAirTrigIdentities::buildSinArctan;
  *(v5 + 16) = 0;
  v6 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_cos", 8uLL);
  v7 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v6 + 8), "fast_asin", 9uLL);
  *(v7 + 8) = AGCLLVMAirTrigIdentities::buildPythagoreanIdentity;
  *(v7 + 16) = 0;
  v8 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_cos", 8uLL);
  v9 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v8 + 8), "fast_acos", 9uLL);
  *(v9 + 8) = AGCLLVMAirTrigIdentities::buildNopIdentity;
  *(v9 + 16) = 0;
  v10 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_cos", 8uLL);
  v11 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v10 + 8), "fast_atan", 9uLL);
  *(v11 + 8) = AGCLLVMAirTrigIdentities::buildCosArctan;
  *(v11 + 16) = 0;
  v12 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_tan", 8uLL);
  v13 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v12 + 8), "fast_asin", 9uLL);
  *(v13 + 8) = AGCLLVMAirTrigIdentities::buildTanArcsin;
  *(v13 + 16) = 0;
  v14 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_tan", 8uLL);
  v15 = *llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v14 + 8), "fast_acos", 9uLL);
  *(v15 + 8) = AGCLLVMAirTrigIdentities::buildTanArccos;
  *(v15 + 16) = 0;
  v16 = llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>("fast_tan", 8uLL);
  result = llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>::try_emplace<>((*v16 + 8), "fast_atan", 9uLL);
  v18 = *result;
  *(v18 + 8) = AGCLLVMAirTrigIdentities::buildNopIdentity;
  *(v18 + 16) = 0;
  return result;
}

uint64_t *llvm::StringMap<llvm::StringMap<llvm::Value * (AGCLLVMAirTrigIdentities::*)(llvm::Value *),llvm::MallocAllocator>,llvm::MallocAllocator>::try_emplace<>(const void *a1, size_t a2)
{
  i = (AGCLLVMAirTrigIdentities::initializeTrigReplacementMap(void)::trig_replacements + 8 * llvm::StringMapImpl::LookupBucketFor());
  v5 = *i;
  if (*i == -8)
  {
    LODWORD(qword_28117E490) = qword_28117E490 - 1;
  }

  else if (v5)
  {
    while (!v5 || v5 == -8)
    {
      v6 = i[1];
      ++i;
      v5 = v6;
    }

    return i;
  }

  v8 = MEMORY[0x20F330650](a2 + 41, 8);
  v9 = v8;
  v10 = v8 + 40;
  if (a2)
  {
    memcpy((v8 + 40), a1, a2);
  }

  *(v10 + a2) = 0;
  *v9 = a2;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x1800000000;
  *i = v9;
  ++dword_28117E48C;
    ;
  }

  return i;
}

llvm::Instruction *AGCLLVMGen3TargetLowerer::buildMovmsk(uint64_t a1, uint64_t a2, llvm::Type **a3)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v19 = *a2;
  v20 = *(a2 + 16);
  if (v20)
  {
    llvm::MetadataTracking::track();
  }

  v21 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v19);
  if (v20)
  {
    llvm::MetadataTracking::untrack();
  }

  v6 = llvm::IntegerType::get();
  v7 = *(a1 + 1624);
  if (v7)
  {
    v8 = strlen(*(a1 + 1624));
  }

  else
  {
    v8 = 0;
  }

  v9 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(a1, v7, v8, *(a1 + 144), v6, *(a1 + 192));
  v10 = llvm::ConstantInt::get();
  v16 = *(a1 + 56);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v17, (a1 + 8));
  v18 = *(a1 + 104);
  v12 = (*(*a1 + 208))(a1, &v16, v10);
  if (v17)
  {
    llvm::MetadataTracking::untrack();
  }

  v15 = 257;
  v22[0] = llvm::IRBuilderBase::CreateIntCast((a1 + 8), a3, v6, 1, v14, v11);
  v22[1] = v12;
  v15 = 257;
  return llvm::IRBuilderBase::CreateCall((a1 + 8), *(v9 + 24), v9, v22, 2, v14);
}

uint64_t AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[2] = *MEMORY[0x277D85DE8];
  __src[0] = a5;
  __src[1] = a6;
  v10[0] = v11;
  v10[1] = 0x200000000;
  llvm::SmallVectorImpl<llvm::Type *>::append<llvm::Type * const*,void>(v10, __src, v10);
  llvm::FunctionType::get();
  llvm::Module::getOrInsertFunction();
  v7 = v6;
  if (v10[0] != v11)
  {
    free(v10[0]);
  }

  return v7;
}

llvm::Value *llvm::IRBuilderBase::CreateIntCast(unsigned int **this, llvm::Type **a2, llvm::Type *a3, llvm::Type *a4, const llvm::Twine *a5, llvm::Instruction *a6)
{
  IntegerCast = a2;
  if (*a2 != a3)
  {
    if (*(a2 + 16) > 0x14u)
    {
      IntegerCast = llvm::CastInst::CreateIntegerCast();
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, IntegerCast, a5);
    }

    else
    {
      IntegerCast = (*(*this[9] + 248))(this[9], a2);
      if (IntegerCast)
      {
        v9 = *(IntegerCast + 16) >= 0x1Cu;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        llvm::IRBuilderBase::Insert<llvm::CastInst>(this, IntegerCast, a5);
      }
    }
  }

  return IntegerCast;
}

BOOL flatbuffers::Verifier::VerifyTableStart(flatbuffers::Verifier *this, const unsigned __int8 *a2)
{
  v2 = *this;
  v3 = &a2[-*this];
  if (v3 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v4 = *(this + 1);
  v5 = v4 >= 5 && v4 - 4 >= v3;
  if (!v5)
  {
    return 0;
  }

  v6 = *a2;
  v7 = *(this + 5);
  v8 = *(this + 4) + 1;
  *(this + 4) = v8;
  v9 = *(this + 6) + 1;
  *(this + 6) = v9;
  if (v8 > v7 || v9 > *(this + 7))
  {
    return 0;
  }

  v12 = v3 - v6;
  if (v12)
  {
    v10 = 0;
    if ((*(this + 40) & 1) != 0 || v4 - 2 < v12)
    {
      return v10;
    }
  }

  else if (v4 - 2 < v12)
  {
    return 0;
  }

  v13 = *(v2 + v12);
  if (v13 & 1) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = v4 >= v13;
  v14 = v4 - v13;
  return v14 != 0 && v5 && v14 >= v12;
}

uint64_t flatbuffers::Verifier::VerifyOffset(flatbuffers::Verifier *this, unint64_t a2)
{
  if (a2 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v2 = *(this + 1);
  if (v2 < 5 || v2 - 4 < a2)
  {
    return 0;
  }

  v4 = *(*this + a2);
  if (v4 < 1)
  {
    return 0;
  }

  if (v2 - 1 >= v4 + a2)
  {
    return v4;
  }

  return 0;
}

BOOL flatbuffers::Verifier::VerifyVectorOrString(flatbuffers::Verifier *this, const unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = &a2[-*this];
  if (v4 & 3) != 0 && (*(this + 40))
  {
    return 0;
  }

  v5 = *(this + 1);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(this + 1);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

void *AGCLLVMAGPVertexShader::createAGPVertexShaderObject(uint64_t a1, llvm::Module *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = "air.vertex";
  v15 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v14);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  if (*(Operand + 8) == 4 && isStringMDNode(*(*(Operand - 8) - 8 * *(*(Operand - 8) + 8)), "air.patch"))
  {
    return (*(**(a1 + 32) + 88))(*(a1 + 32), a1, this, a3, a4, a5);
  }

  v13 = **(a1 + 32);
  if ((*(a3 + 18) & 0x20) == 0)
  {
    return (*(v13 + 72))();
  }

  result = (*(v13 + 80))();
  if (result)
  {
    return (result + *(*result - 24));
  }

  return result;
}

uint64_t AGCLLVMUserVertexShader::AGCLLVMUserVertexShader(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = (a1 + 4096);
  v9 = AGCLLVMUserShader::AGCLLVMUserShader(a1, a2 + 1, a3, "air.vertex", a4, a5, 0);
  v10 = *a2;
  *v9 = *a2;
  *(a1 + *(v10 - 24)) = a2[7];
  *(a1 + *(*a1 - 24) + 1704) = a2[8];
  LOBYTE(v10) = *(*(a1 + *(*a1 - 24) + 2168) + 1878);
  *(a1 + 4536) = 0;
  *(a1 + 4544) = 0u;
  *(a1 + 4560) = a1 + 4576;
  *(a1 + 4568) = 0x800000000;
  *(a1 + 5088) = 0xFFFFFFFFLL;
  v8[1000] = v10;
  *(a1 + 5228) = 0;
  *(a1 + 5200) = 0u;
  *(a1 + 5184) = 0u;
  *(a1 + 5168) = 0u;
  *(a1 + 5152) = 0u;
  *(a1 + 5136) = 0u;
  *(a1 + 5120) = 0u;
  *(a1 + 5104) = 0u;
  *(a1 + 5210) = 0u;
  v8[1136] = 1;
  *(a1 + 5249) = 0;
  *(a1 + 5240) = 0;
  v8[1181] = 0;
  *(a1 + 5272) = 0;
  *(a1 + 5280) = llvm::ConstantInt::get();
  *(a1 + 5288) = llvm::ConstantInt::get();
  *(a1 + 5296) = 0;
  v8[1202] = 0;
  *(a1 + 5300) = 1;
  *(a1 + 5308) = 0;
  *(a1 + 5312) = 0;
  *(a1 + 5396) = 0u;
  *(a1 + 5368) = 0u;
  *(a1 + 5384) = 0u;
  *(a1 + 5336) = 0u;
  *(a1 + 5352) = 0u;
  *(a1 + 5320) = 0u;
  *(a1 + 5416) = 0u;
  *(a1 + 5412) = -1;
  *(a1 + 5432) = llvm::ConstantInt::get();
  *(a1 + 5440) = llvm::ConstantInt::get();
  v11 = -3432;
  do
  {
    v12 = a1 + v11;
    *(v12 + 9712) = 4;
    *(v12 + 9720) = 0uLL;
    v11 += 24;
  }

  while (v11);
  v13 = (a3 + 168);
  v14 = *(a3 + 191);
  if (v14 < 0)
  {
    if (*(a3 + 176) != 20)
    {
LABEL_17:
      v20 = 0;
      goto LABEL_18;
    }

    v13 = *v13;
  }

  else if (v14 != 20)
  {
    goto LABEL_17;
  }

  v15 = *v13;
  v16 = v13[1];
  v17 = *(v13 + 4);
  v20 = v15 == 0x535F786574726556 && v16 == 0x6F72505F65746174 && v17 == 1835102823;
LABEL_18:
  v8[1176] = v20;
  v21 = *a1;
  *(a1 + 9712) = *(a1 + *(*a1 - 24) + 1872);
  *(a1 + 9720) = *(a1 + *(v21 - 24) + 1856);
  *(a1 + 9728) = *(a1 + *(v21 - 24) + 1880);
  *(a1 + 9736) = *(a1 + *(v21 - 24) + 1904);
  *(a1 + 9744) = *(a1 + *(v21 - 24) + 1896);
  *(a1 + 9752) = *(a1 + *(v21 - 24) + 1888);
  *(a1 + 9768) = *(a1 + *(v21 - 24) + 1904);
  *(a1 + 9776) = *(a1 + *(v21 - 24) + 1896);
  *(a1 + 9784) = *(a1 + *(v21 - 24) + 1888);
  return a1;
}

uint64_t *AGCLLVMAGPVertexShader::AGCLLVMAGPVertexShader(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  v11 = (a1 + 1228);
  v12 = a1 + 5273;
  v13 = AGCLLVMUserVertexShader::AGCLLVMUserVertexShader(a1, a2 + 1, a3, a4, 0);
  v14 = *a2;
  *v13 = *a2;
  *(a1 + *(v14 - 24)) = a2[10];
  *(a1 + *(*a1 - 24) + 1704) = a2[11];
  *(a1 + 2452) = 0;
  *(a1 + 612) = 0u;
  *(a1 + 2453) = 16;
  a1[1228] = 0;
  a1[1229] = (a1 + 1231);
  a1[1230] = 0x1000000000;
  a1[1295] = (a1 + 1297);
  a1[1296] = 0x400000000;
  *(a1 + 10417) = 0;
  if (a5 && a6)
  {
    v15 = (a5 + *a5);
    v16 = (a6 + *a6);
    v17 = (v15 - *v15);
    if (*v17 >= 5u && (v18 = v17[2]) != 0)
    {
      v19 = (v15 + v18 + *(v15 + v18));
    }

    else
    {
      v19 = 0;
    }

    v20 = (v16 - *v16);
    v44 = v12;
    v45 = v11;
    if (*v20 >= 5u && (v21 = v20[2]) != 0)
    {
      v22 = v16 + v21 + *(v16 + v21);
    }

    else
    {
      v22 = 0;
    }

    if (*v19)
    {
      v23 = 0;
      v24 = v22 + 4;
      v25 = (v19 + 2);
      v26 = v19 + 2;
      do
      {
        v27 = *&v24[4 * v23];
        v28 = *(v25 - 1);
        v29 = strlen(&v25[v28]);
        *(*llvm::StringMap<unsigned int,llvm::MallocAllocator>::try_emplace<>((a1 + 1224), v26 + v28, v29) + 8) = v27;
        ++v23;
        ++v26;
        v25 += 4;
      }

      while (v23 < *v19);
    }

    v12 = v44;
    v11 = v45;
    *v45 = (*(a4 + 16) & 0x40000) != 0;
  }

  *(a1 + 1316) = *(a4 + 16);
  *(a1 + 1317) = *(a4 + 8);
  AGCLLVMUserShader::enableStatistics(a1, *(a4 + 12) & 1, (*(a4 + 12) >> 1) & 1);
  *(a1 + 18) = (*(a4 + 12) & 8) != 0;
  v30 = *a1;
  *(a1 + *(*a1 - 24) + 4576) = (*(a4 + 12) & 0x4000000) != 0;
  a1[438] = *a4;
  *(a1 + 1326) = (*(a4 + 16) >> 12) & 3;
  v31 = (*(a4 + 16) >> 14) & 0xF;
  *(a1 + 1325) = v31;
  if (v31 > 1)
  {
    v32 = *(*(a1 + *(v30 - 24) + 2168) + 1867);
  }

  else
  {
    v32 = 0;
  }

  v12[25] = v32;
  if (*(*(a1 + *(v30 - 24) + 2168) + 1890))
  {
    LOBYTE(v33) = 0;
  }

  else
  {
    v33 = (*(a4 + 19) >> 3) & 1;
  }

  v12[4] = v33;
  if (v32)
  {
    *(a1 + 1326) = 0;
  }

  *(a1 + 20) = (*(a4 + 12) & 4) != 0;
  v11[1] = (*(a4 + 16) & 0x80000) != 0;
  *(a1 + 2602) = (*(a4 + 12) >> 4) & 7;
  *(a1 + 2603) = *(a4 + 12) >> 31;
  v11[595] = (*(a4 + 12) & 0x40000000) != 0;
  v11[2] = (*(a4 + 16) & 0x100000) != 0;
  v11[592] = (*(a4 + 12) & 0x80) != 0;
  *v12 = (*(a4 + 16) & 0x800000) != 0;
  v12[1] = *(a4 + 19) & 1;
  v12[3] = (*(a4 + 16) & 0x2000000) != 0;
  v11[3] = (*(a4 + 16) & 0x4000000) != 0;
  *(a1 + *(v30 - 24) + 4577) = *(a4 + 13) & 1;
  *(*(a1 + *(v30 - 24) + 2168) + 1941) = (*(a4 + 16) & 0x40000000000) != 0;
  *(*(a1 + *(v30 - 24) + 2168) + 1942) = (*(a4 + 16) & 0x80000000000) != 0;
  *(a1 + 3912) = (*(a4 + 12) & 0x200) != 0;
  v11[594] = (*(a4 + 12) & 0x20000000) != 0;
  v34 = *(a1 + *(v30 - 24) + 2136);
  v46 = "llvm.module.flags";
  v47 = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v34, &v46);
  if (NamedMetadata)
  {
    v36 = NamedMetadata;
    v37 = 0;
LABEL_25:
    if (v37 < llvm::NamedMDNode::getNumOperands(v36))
    {
      Operand = llvm::NamedMDNode::getOperand(v36);
      v39 = 8 - 8 * *(Operand + 8);
      do
      {
        if (!v39)
        {
          ++v37;
          goto LABEL_25;
        }

        v40 = isStringMDNode(*(Operand + v39), "agx.allow_mismatched_component_counts");
        v39 += 8;
      }

      while (!v40);
      v41 = *(*(Operand - 8 * *(Operand + 8) + 16) + 128);
      v42 = (v41 + 24);
      if (*(v41 + 32) >= 0x41u)
      {
        v42 = *v42;
      }

      if (*v42)
      {
        v11[593] = 1;
      }
    }
  }

  return a1;
}

uint64_t *AGCLLVMAGPVertexShaderRegular::AGCLLVMAGPVertexShaderRegular(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6)
{
  result = AGCLLVMAGPVertexShader::AGCLLVMAGPVertexShader(a1, a2 + 1, a3, a4, a5, a6);
  v8 = *a2;
  *result = *a2;
  *(result + *(v8 - 24)) = a2[13];
  *(result + *(*result - 24) + 1704) = a2[14];
  return result;
}

void AGCLLVMAGPVertexShaderRegular::addSimplifyGenericIRPasses(AGCLLVMAGPVertexShaderRegular *this)
{
  v1 = this + *(*this - 24);
  LOBYTE(v2) = 0;
  AGCModulePassManager::addPass<llvm::AlwaysInlinerPass>((v1 + 8), &v2, "AlwaysInlinerPass", 17);
}

char *llvm::PassInfoMixin<llvm::GlobalOptPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x45)
  {
    v1 = v0;
  }

  else
  {
    v1 = 69;
  }

  v2 = &aStringrefLlvmG_24[v1];
  v3 = 69 - v1;
  if ((69 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 69 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMObject::getTempRegistersLimit(AGCLLVMObject *this, unsigned int *a2)
{
  *a2 = *(*(this + 271) + 980);
  result = (*(*this + 112))(this);
  if (result)
  {
    *a2 = result;
    return result != *(*(this + 271) + 980);
  }

  return result;
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x50)
  {
    v1 = v0;
  }

  else
  {
    v1 = 80;
  }

  v2 = &aStringrefLlvmG_20[v1];
  v3 = 80 - v1;
  if ((80 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 80 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

char *llvm::PassInfoMixin<InitCompileAGPVertexShaderRegularPass>::name()
{
  v0 = llvm::StringRef::find();
  if (v0 <= 0x57)
  {
    v1 = v0;
  }

  else
  {
    v1 = 87;
  }

  v2 = &aStringrefLlvmG_26[v1];
  v3 = 87 - v1;
  if ((87 - v1) >= 0x12)
  {
    v4 = 18;
  }

  else
  {
    v4 = 87 - v1;
  }

  result = &v2[v4];
  v6 = v3 - v4;
  if (v6 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v6;
  }

  if (v7 >= 6 && *result == 1836477548 && *(result + 2) == 14906)
  {
    result += 6;
  }

  return result;
}

uint64_t AGCLLVMAGPVertexShader::setupShaderInputs(AGCLLVMAGPVertexShader *this)
{
  v104 = *MEMORY[0x277D85DE8];
  AGCLLVMUserVertexShader::setupShaderInputs(this);
  v2 = *(this + 21);
  if (*(v2 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v4 = *(this + 21);
    v3 = *(v2 + 88);
    if (*(v4 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v2 = v4;
  }

  else
  {
    v3 = *(v2 + 88);
  }

  v5 = *(v2 + 88) + 40 * *(v2 + 96);
  for (i = this + 1704; v3 != v5; v3 += 40)
  {
    if (*(v3 + 8))
    {
      v6 = *(*(this + 21) + 80);
      v7 = v6 ? v6 - 24 : 0;
      v8 = *(v7 + 40);
      v9 = v8 ? (v8 - 24) : 0;
      AGCLLVMBuilder::SetInsertPoint(&i[*(*this - 24)], v9, *(this + 5));
      v10 = *(v3 + 32);
      v11 = *(*(this + 10) + 8 * v10);
      if ((AGCLLVMUserShader::replaceInputArgument(this, v3, v10, v11) & 1) == 0)
      {
        if (isStringMDNode(*(v11 - 8 * *(v11 + 8) + 8), "air.amplification_count"))
        {
          v13 = *(*this - 24);
          v14 = (this + v13);
          if ((*(*(this + v13 + 2168) + 1867) & 1) == 0)
          {
            goto LABEL_83;
          }

          DriverGlobalConstant = AGCLLVMUserVertexShader::getDriverGlobalConstant(this, 0x54u, v12);
          *(this + 661) = AGCLLVMBuilder::truncateToSmall(&i[v13], DriverGlobalConstant, *v3);
          llvm::Value::replaceAllUsesWith();
          *(this + 5297) = 1;
        }

        else if (isStringMDNode(*(v11 - 8 * *(v11 + 8) + 8), "air.amplification_mask"))
        {
          v17 = *(*this - 24);
          v14 = (this + v17);
          if ((*(*(this + v17 + 2168) + 1867) & 1) == 0)
          {
            goto LABEL_83;
          }

          v18 = AGCLLVMUserVertexShader::getDriverGlobalConstant(this, 0x55u, v16);
          *(this + 661) = AGCLLVMBuilder::truncateToSmall(&i[v17], v18, *v3);
          llvm::Value::replaceAllUsesWith();
        }

        else if (isStringMDNode(*(v11 - 8 * *(v11 + 8) + 8), "air.amplification_id"))
        {
          v20 = *(*this - 24);
          v14 = (this + v20);
          if ((*(*(this + v20 + 2168) + 1867) & 1) == 0)
          {
LABEL_83:
            std::string::append(v14 + 69, "Vertex amplification is not supported by target architecture.");
            return 0;
          }

          VertexAmpId = AGCLLVMUserVertexShader::getVertexAmpId(this, *(this + 1326), v19);
          *(this + 660) = AGCLLVMBuilder::truncateToSmall(&i[v20], VertexAmpId, *v3);
          llvm::Value::replaceAllUsesWith();
          *(this + 5296) = 1;
        }
      }
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = *(*(this + 21) + 80);
  if (v25)
  {
    v26 = (v25 - 24);
  }

  else
  {
    v26 = 0;
  }

  v82 = v26;
  v27 = this + 1712;
  v28 = this + 2168;
  v84 = this + 1904;
  do
  {
    v81 = v22;
    v29 = &(&off_277E1FFC8)[2 * v22];
    if (*v29)
    {
      strlen(*v29);
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      v80 = Function;
      v31 = *(Function + 8);
      if (v31)
      {
        v32 = *(v29 + 2);
        do
        {
          v33 = *(v31 + 24);
          v31 = *(v31 + 8);
          if (v33[1])
          {
            if (v32 == 3)
            {
              v34 = v23;
            }

            else
            {
              v34 = v24;
            }

            if (!v34)
            {
              v35 = *(*this - 24);
              FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v82);
              llvm::IRBuilderBase::SetInsertPoint(&v27[v35], v82, FirstInsertionPt);
              v37 = (*(**&v28[*(*this - 24)] + 472))();
              v38 = *(*this - 24);
              if (v37)
              {
                VIRead = AGCLLVMUserVertexShader::createVIRead(this, this + 5240, v32);
                v40 = *&v84[*(*this - 24)];
                LOWORD(v93) = 257;
                Cast = llvm::IRBuilderBase::CreateCast(&v27[v38], 49, VIRead, v40, v89);
                v42 = Cast;
                v43 = v28;
                if (v32 == 3)
                {
                  v44 = v24;
                }

                else
                {
                  v44 = Cast;
                }

                if (v32 == 3)
                {
                  v45 = Cast;
                }

                else
                {
                  v45 = v23;
                }

                if ((*(**&v43[*(*this - 24)] + 480))())
                {
                  inserted = AGCLLVMBuilder::getOrInsertFunction<>(this + *(*this - 24) + 1704, "air.get_base_instance.i32", 25, *(this + *(*this - 24) + 1904));
                  v47 = *(*this - 24);
                  LOWORD(v93) = 257;
                  v48 = llvm::IRBuilderBase::CreateCall(&v27[v47], *(inserted + 24), inserted, 0, 0, v89);
                  v87 = 257;
                  Add = llvm::IRBuilderBase::CreateAdd(&v27[v47], v42, v48, v86);
                  if (v32 == 3)
                  {
                    v23 = Add;
                  }

                  else
                  {
                    v24 = Add;
                  }
                }

                else
                {
                  v24 = v44;
                  v23 = v45;
                }

                v28 = this + 2168;
              }

              else
              {
                v50 = (*(**&v28[v38] + 448))(*&v28[v38], this + 5240, v32);
                v51 = *(this + 2592);
                if (v51 >= *(this + 2593))
                {
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                *(*(this + 1295) + 8 * v51) = (v32 << 32) | v50;
                ++*(this + 2592);
                v52 = *(*this - 24);
                v53 = AGCLLVMUserVertexShader::createVIRead(this, v50);
                v54 = *&v84[*(*this - 24)];
                LOWORD(v93) = 257;
                v55 = llvm::IRBuilderBase::CreateCast(&v27[v52], 49, v53, v54, v89);
                if (v32 == 3)
                {
                  v23 = v55;
                }

                else
                {
                  v24 = v55;
                }
              }
            }

            if (v32 == 3)
            {
              v56 = v23;
            }

            else
            {
              v56 = v24;
            }

            v57 = *v33;
            if (*v56 != *v33)
            {
              v58 = *(*this - 24);
              LOWORD(v93) = 257;
              llvm::IRBuilderBase::CreateCast(&v27[v58], 38, v56, v57, v89);
            }

            llvm::Value::replaceAllUsesWith();
          }

          llvm::Instruction::eraseFromParent(v33);
        }

        while (v31);
      }

      llvm::Function::eraseFromParent(v80);
    }

    v22 = v81 + 1;
  }

  while (v81 != 3);
  v89[0] = "air.get_base_vertex.i32";
  v89[1] = "base_vertex";
  v59 = *(*(this + *(*this - 24) + 2168) + 920);
  v90 = (*(*v59 + 216))(v59);
  v91 = 0;
  v92 = "air.get_base_vertex.i16";
  v93 = "base_vertex";
  v60 = *(*(this + *(*this - 24) + 2168) + 920);
  v94 = (*(*v60 + 216))(v60);
  v95 = 0;
  v96 = "air.get_base_instance.i32";
  v97 = "base_instance";
  v61 = *(*(this + *(*this - 24) + 2168) + 920);
  v98 = (*(*v61 + 224))(v61);
  v99 = 1;
  v100 = "air.get_base_instance.i16";
  v101 = "base_instance";
  v62 = *(*(this + *(*this - 24) + 2168) + 920);
  v63 = 0;
  v102 = (*(*v62 + 224))(v62);
  v103 = 1;
  v88[0] = 0;
  v88[1] = 0;
  do
  {
    v64 = &v89[3 * v63];
    if (*v64)
    {
      strlen(*v64);
    }

    v65 = llvm::Module::getFunction();
    if (v65)
    {
      v83 = v65;
      v66 = *(v65 + 8);
      while (v66)
      {
        v67 = *(v66 + 24);
        v66 = *(v66 + 8);
        if (*(v67 + 1))
        {
          v68 = *(v64 + 5);
          GlobalBufferBinding = v88[v68];
          if (!GlobalBufferBinding)
          {
            v70 = llvm::PointerType::get();
            if (*v64[1])
            {
              v86[2] = v64[1];
              v71 = 3;
            }

            else
            {
              v71 = 1;
            }

            v86[0] = "agc.buffer_pointers.";
            LOBYTE(v87) = 3;
            HIBYTE(v87) = v71;
            GlobalBufferBinding = AGCLLVMUserObject::createGlobalBufferBinding(this, v70, v86, *(v64 + 4), 4u, 5u, 0);
            v88[v68] = GlobalBufferBinding;
          }

          llvm::IRBuilderBase::SetInsertPoint(&v27[*(*this - 24)], v67);
          v72 = *(*this - 24);
          v87 = 257;
          Load = AGCLLVMBuilder::CreateLoad(&i[v72], GlobalBufferBinding, v86);
          v74 = this + *(*this - 24);
          v75 = *(v74 + 238);
          v87 = 257;
          llvm::Type::isOpaquePointerTy(*Load);
          AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v74 + 214, v75, Load, 0, v86);
          v77 = *(*this - 24);
          v78 = *v67;
          v87 = 257;
          llvm::IRBuilderBase::CreateCast(&v27[v77], 38, AlignedLoad, v78, v86);
          llvm::Value::replaceAllUsesWith();
        }

        llvm::Instruction::eraseFromParent(v67);
      }

      llvm::Function::eraseFromParent(v83);
    }

    ++v63;
  }

  while (v63 != 4);
  return 1;
}

uint64_t AGCLLVMUserVertexShader::setupShaderInputs(AGCLLVMUserVertexShader *this)
{
  v2 = *(*(this + 21) + 80);
  if (v2)
  {
    v3 = v2 - 24;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = (v4 - 24);
  }

  else
  {
    v5 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v5);
  v6 = *(this + 21);
  if (*(v6 + 18))
  {
    llvm::Function::BuildLazyArguments(*(this + 21));
    v8 = *(this + 21);
    v7 = *(v6 + 88);
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(*(this + 21));
    }

    v6 = v8;
  }

  else
  {
    v7 = *(v6 + 88);
  }

  for (i = *(v6 + 88) + 40 * *(v6 + 96); v7 != i; v7 += 40)
  {
    v10 = *(*(this + 10) + 8 * *(v7 + 32));
    if (*(v7 + 8))
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && isStringMDNode(*(v10 - 8 * *(v10 + 8) + 8), "air.vertex_transform_feedback"))
    {
      v15 = 0;
      v14 = 0;
      LODWORD(v13) = 3;
      parseMDInt(0, v10, &v13, &v15 + 1);
      LODWORD(v13) = 5;
      parseMDInt(0, v10, &v13, &v15);
      LODWORD(v13) = 7;
      parseMDInt(0, v10, &v13, &v14);
      operator new();
    }
  }

  return 1;
}

void AGCLLVMAGPVertexShaderRegular::promoteInput(AGCLLVMAGPVertexShaderRegular *this, llvm::Value *a2, int a3, int a4)
{
  v175 = *MEMORY[0x277D85DE8];
  if ((*(*(this + *(*this - 24) + 2168) + 1848) & 1) == 0 && *(this + 10424) != 0)
  {
    if (a4 == -1)
    {
      snprintf(__str, 0x20uLL, "arg%d");
    }

    else
    {
      snprintf(__str, 0x20uLL, "arg%d.%d");
    }

    if ((llvm::Type::isOpaquePointerTy(*a2) & 1) == 0)
    {
      v8 = **(*a2 + 16);
      v144 = v8;
      v9 = (*(v8 + 2) & 0xFE) == 0x12 ? *(**(v8 + 2) + 8) : *(v8 + 2);
      if (v9 != 15 && llvm::Type::isSized(v8))
      {
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v8);
        LODWORD(v156) = v10;
        v11 = llvm::TypeSize::operator unsigned long long();
        if ((v11 & 3) != 0)
        {
          if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
          {
            AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Cannot DMA promote %s : type size %u not a multiple of 4", __str, v11);
          }

          return;
        }

        v143 = 0;
        v139 = 0;
        v138 = 0;
        v141 = 0;
        v140 = 0;
        v142 = 0;
        v168 = 128;
        v166 = MEMORY[0x20F330650](0x4000, 8);
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::initEmpty(&v166);
        LOBYTE(v169) = 0;
        v171 = 0;
        v172 = 1;
        v173 = 0;
        if (AGCLLVMAGPVertexShaderRegular::canDMAPromote(this, a2, __str, &v143, &v138, &v166) || AGCLLVMAGPVertexShaderRegular::coerceStridedAccess(this, a2, __str, &v144) && (v8 = v144, TypeAllocSize = llvm::DataLayout::getTypeAllocSize((this + 224), v144), LODWORD(v156) = v36, v11 = llvm::TypeSize::operator unsigned long long(), AGCLLVMAGPVertexShaderRegular::canDMAPromote(this, a2, __str, &v143, &v138, &v166)))
        {
          v12 = v11 >> 2;
          v13 = llvm::UndefValue::get();
          v161 = &v163;
          v162 = 0x800000000;
          llvm::SmallVectorImpl<llvm::Value *>::assign(&v161, v12, v13);
          v14 = AGCLLVMAGPVertexShaderRegular::analyzeLoads(this, v8, &v166);
          v16 = v15 + 3;
          v17 = (v15 + 3) >> 2;
          v133 = v14 >> 2;
          v18 = this + *(*this - 24);
          v19 = *(*(v18 + 271) + 984);
          if (v19 >= 0x80)
          {
            v20 = 126;
          }

          else
          {
            v20 = v19 - 2;
          }

          v134 = v17 - (v14 >> 2);
          if (*(this + 1310) + v134 >= v20)
          {
            if (AGCTargetPrinter::isValidToPrintMessage(*(v18 + 212)))
            {
              AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Cannot DMA promote %s : ran out of vi's, need %u, already allocated %u, limit %u", __str, v134, *(this + 1310), v20);
            }
          }

          else
          {
            v21 = v14;
            v22 = *(*(this + 21) + 80);
            if (v22)
            {
              v23 = v22 - 24;
            }

            else
            {
              v23 = 0;
            }

            v24 = *(v23 + 40);
            if (v24)
            {
              v25 = (v24 - 24);
            }

            else
            {
              v25 = 0;
            }

            llvm::IRBuilderBase::SetInsertPoint((v18 + 1712), v25);
            v26 = *(this + 1310);
            if (v11 >= 4)
            {
              v27 = 0;
              v28 = (v16 >> 2);
              v29 = (v21 >> 2);
              do
              {
                if (v27 >= v29 && v27 < v28)
                {
                  v30 = *(this + 1310);
                  *(this + 1310) = v30 + 1;
                  VIRead = AGCLLVMUserVertexShader::createVIRead(this, v30);
                  *(v161 + v27) = VIRead;
                }

                ++v27;
              }

              while (v12 != v27);
            }

            v32 = v172;
            v147 = "vertex_input";
            v150 = 259;
            v154 = 264;
            LODWORD(v151) = a3;
            llvm::Twine::concat(&TypeAllocSize, &v147, &v151);
            v131 = AGCLLVMAGPVertexShaderRegular::materializeVertexAttribute(this, v8, v32, &v161, &TypeAllocSize);
            if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
            {
              AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "DMA promoting %s to VI, attribute size = %u words, only words [%u .. %u] actually used", __str, v12, v133, v17 - 1);
            }

            if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
            {
              v33 = v143;
              v34 = "false";
              if (v143 == 2)
              {
                v35 = "true";
              }

              else
              {
                v35 = "false";
              }

              if (v142)
              {
                v34 = "true";
              }

              AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "DMA Entry = {reg_offset: %u, size : %u, offset %u, stride; %u, instanced: %s, div: %u, base_after_divisor: %s}", v26, v134, v133, v12, v35, HIDWORD(v141), v34);
            }

            else
            {
              v33 = v143;
            }

            LODWORD(v138) = v26;
            _AGCBindingInfo::_AGCBindingInfo(&TypeAllocSize, a3, a4);
            HIDWORD(v138) = TypeAllocSize;
            v140 = __PAIR64__(v133, v134);
            LODWORD(v141) = v12;
            v139 = v33 == 2;
            v37 = llvm::SmallVectorTemplateCommon<AGCLLVMAGPVertexShader::VertexAttribInputInfo,void>::reserveForParamAndGetAddressImpl<llvm::SmallVectorTemplateBase<AGCLLVMAGPVertexShader::VertexAttribInputInfo,true>>(this + 9832, &v138);
            v38 = (*(this + 1229) + 32 * *(this + 2460));
            v39 = v37[1];
            *v38 = *v37;
            v38[1] = v39;
            ++*(this + 2460);
            v40 = v131;
            if (v131[16] == 60)
            {
              Alloca = *(v131 - 4);
            }

            else if (v173 == 1)
            {
              v42 = (this + *(*this - 24));
              LOWORD(v159) = 257;
              Alloca = llvm::IRBuilderBase::CreateAlloca(v42 + 214, v8, 0, &TypeAllocSize);
              llvm::IRBuilderBase::CreateAlignedStore((this + *(*this - 24) + 1712), v131, Alloca, 0, 0);
            }

            else
            {
              Alloca = 0;
            }

            if (v167)
            {
              v43 = this + 1712;
              v132 = this + 1704;
              v129 = Alloca;
              do
              {
                v44 = v166;
                v45 = v168;
                v46 = v166 + (v168 << 7);
                if (v168)
                {
                  v47 = v168 << 7;
                  v48 = (v166 + 24);
                  v49 = v47;
                  while (1)
                  {
                    v50 = *v48;
                    if ((*v48 | 0x1000) != 0xFFFFFFFFFFFFF000)
                    {
                      break;
                    }

                    v48 += 16;
                    v49 -= 128;
                    if (!v49)
                    {
                      v50 = *(v46 + 24);
                      break;
                    }
                  }

                  v51 = v166;
                  while ((*(v51 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v51 += 128;
                    v47 -= 128;
                    if (!v47)
                    {
                      v51 = v166 + (v168 << 7);
                      break;
                    }
                  }
                }

                else
                {
                  v50 = *(v166 + 24);
                  v51 = v166;
                }

                TypeAllocSize = &v157;
                v156 = 0x800000000;
                if (*(v51 + 48))
                {
                  llvm::SmallVectorImpl<llvm::MDNode const*>::operator=(&TypeAllocSize, v51 + 40);
                  v44 = v166;
                  v45 = v168;
                  v160 = *(v51 + 120);
                  v46 = v166 + (v168 << 7);
                  if (!v167)
                  {
LABEL_71:
                    v44 = v46;
                    goto LABEL_72;
                  }
                }

                else
                {
                  v160 = *(v51 + 120);
                }

                if (v45)
                {
                  while ((v44[3] | 0x1000) == 0xFFFFFFFFFFFFF000)
                  {
                    v44 += 16;
                    if (v44 == v46)
                    {
                      goto LABEL_71;
                    }
                  }
                }

LABEL_72:
                llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>,llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::LoadInst *,AGCLLVMAGPVertexShaderRegular::GEPInfo,llvm::ValueMapConfig<llvm::LoadInst *,llvm::sys::SmartMutex<false>>>,AGCLLVMAGPVertexShaderRegular::GEPInfo>>::erase(&v166, v44);
                v52 = v156;
                llvm::IRBuilderBase::SetInsertPoint(&v43[*(*this - 24)], v50);
                if (!v52)
                {
                  if (HIDWORD(v160) == 3)
                  {
                    v87 = *(*this - 24);
                    v88 = llvm::PointerType::get();
                    v150 = 257;
                    Cast = llvm::IRBuilderBase::CreateCast(&v43[v87], 49, Alloca, v88, &v147);
                    v90 = *(*this - 24);
                    v150 = 257;
                    AGCLLVMBuilder::CreateLoad(&v132[v90], Cast, &v147);
                  }

                  else if (HIDWORD(v160) == 1)
                  {
                    AGCLLVMBuilder::extendVector(&v132[*(*this - 24)], v40, *(*v50 + 32), v53);
                  }

                  goto LABEL_117;
                }

                if (v160 != 1)
                {
                  v147 = v149;
                  v148 = 0x800000000;
                  llvm::SmallVectorImpl<llvm::Value *>::assign(&v147, (v52 + 1), 0);
                  v61 = llvm::ConstantInt::get();
                  v62 = 0;
                  *v147 = v61;
                  do
                  {
                    *(v147 + v62 + 8) = *(TypeAllocSize + v62);
                    v62 += 8;
                  }

                  while (8 * v52 != v62);
                  v63 = *(*this - 24);
                  v64 = v144;
                  v65 = v147;
                  v66 = v148;
                  v154 = 257;
                  llvm::Type::isOpaquePointerTy(*Alloca);
                  GEP = llvm::IRBuilderBase::CreateGEP(&v43[v63], v64, Alloca, v65, v66, &v151);
                  v69 = *v50;
                  if ((HIDWORD(v160) | 2) == 3)
                  {
                    v70 = *(*this - 24);
                    v71 = llvm::PointerType::getWithSamePointeeType(**(v50 - 4), 0, v67);
                    v154 = 257;
                    GEP = llvm::IRBuilderBase::CreateCast(&v43[v70], 49, GEP, v71, &v151);
                  }

                  v72 = *(*this - 24);
                  v154 = 257;
                  llvm::Type::isOpaquePointerTy(*GEP);
                  llvm::IRBuilderBase::CreateAlignedLoad(&v43[v72], v69, GEP, 0, &v151);
                  v73 = v147;
                  v74 = v149;
                  goto LABEL_115;
                }

                v151 = v153;
                v152 = 0xC00000000;
                llvm::SmallVectorImpl<unsigned int>::assign(&v151, v52, 0);
                v54 = TypeAllocSize;
                v55 = v151;
                v56 = v151;
                v57 = v52;
                do
                {
                  v58 = (*v54 + 24);
                  if (*(*v54 + 32) >= 0x41u)
                  {
                    v58 = *v58;
                  }

                  *v56++ = *v58;
                  v54 += 8;
                  --v57;
                }

                while (v57);
                if (SHIDWORD(v160) <= 1)
                {
                  if (HIDWORD(v160))
                  {
                    if (HIDWORD(v160) == 1)
                    {
                      v59 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v55, v152);
                      AGCLLVMBuilder::extendVector(&v132[*(*this - 24)], v59, *(*v50 + 32), v60);
                    }
                  }

                  else
                  {
                    AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v55, v152);
                  }

                  goto LABEL_114;
                }

                if (HIDWORD(v160) != 2)
                {
                  if (HIDWORD(v160) == 3)
                  {
                    v147 = v149;
                    v148 = 0x800000000;
                    llvm::SmallVectorImpl<llvm::Value *>::assign(&v147, (v52 + 1), 0);
                    v75 = llvm::ConstantInt::get();
                    v76 = 0;
                    *v147 = v75;
                    do
                    {
                      *(v147 + v76 + 8) = *(TypeAllocSize + v76);
                      v76 += 8;
                    }

                    while (8 * v52 != v76);
                    v77 = *(*this - 24);
                    v78 = v144;
                    v79 = v147;
                    v80 = v148;
                    v136 = 257;
                    llvm::Type::isOpaquePointerTy(*Alloca);
                    v81 = llvm::IRBuilderBase::CreateGEP(&v43[v77], v78, Alloca, v79, v80, v135);
                    v82 = *(*this - 24);
                    v84 = llvm::PointerType::getWithSamePointeeType(**(v50 - 4), 0, v83);
                    v136 = 257;
                    v85 = llvm::IRBuilderBase::CreateCast(&v43[v82], 49, v81, v84, v135);
                    v86 = *(*this - 24);
                    v136 = 257;
                    AGCLLVMBuilder::CreateLoad(&v132[v86], v85, v135);
                    if (v147 != v149)
                    {
                      free(v147);
                    }
                  }

                  goto LABEL_114;
                }

                v147 = ((llvm::DataLayout::getTypeSizeInBits((this + 224), *v50) + 7) >> 3);
                LODWORD(v148) = v91 == 1;
                v92 = llvm::TypeSize::operator unsigned long long();
                LODWORD(v93) = v92 >> 2;
                if ((*(*v50 + 8) & 0xFE) == 0x10)
                {
                  v94 = *(**(*v50 + 16) + 24);
                  llvm::ArrayType::get(v94, v93);
                  InsertValue = llvm::UndefValue::get();
                  v137 = 0;
                  if (v92 >= 4)
                  {
                    v100 = v52 - 1;
                    v101 = v151;
                    do
                    {
                      v102 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v101, v152);
                      v103 = *(*this - 24);
                      v150 = 257;
                      v104 = llvm::IRBuilderBase::CreateCast(&v43[v103], 49, v102, v94, &v147);
                      v136 = 257;
                      InsertValue = llvm::IRBuilderBase::CreateInsertValue(&v43[v103], InsertValue, v104, &v137, 1, v135);
                      v101 = v151;
                      ++*(v151 + v100);
                      ++v137;
                    }

                    while (v137 < v93);
                  }

                  v105 = llvm::UndefValue::get();
                  v106 = *(*this - 24);
                  v135[0] = 0;
                  v150 = 257;
                  llvm::IRBuilderBase::CreateInsertValue(&v43[v106], v105, InsertValue, v135, 1, &v147);
LABEL_113:
                  Alloca = v129;
                  goto LABEL_114;
                }

                v96 = *(v50 - 4);
                if (*(v96 + 16) != 62)
                {
                  v107 = **(**(v96 - 32) + 16);
                  llvm::FixedVectorType::get();
                  InsertElement = llvm::UndefValue::get();
                  if (v92 >= 4)
                  {
                    v109 = 0;
                    v130 = v107;
                    v110 = v52 - 1;
                    if (v93 <= 1)
                    {
                      v93 = 1;
                    }

                    else
                    {
                      v93 = v93;
                    }

                    v111 = v151;
                    do
                    {
                      v112 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v111, v152);
                      v113 = this + *(*this - 24);
                      v150 = 257;
                      v114 = llvm::IRBuilderBase::CreateCast((v113 + 1712), 49, v112, v130, &v147);
                      v136 = 257;
                      v115 = llvm::ConstantInt::get();
                      v116 = (v113 + 1712);
                      v40 = v131;
                      InsertElement = llvm::IRBuilderBase::CreateInsertElement(v116, InsertElement, v114, v115, v135);
                      v111 = v151;
                      ++*(v151 + v110);
                      ++v109;
                    }

                    while (v93 != v109);
                  }

                  v117 = *(*this - 24);
                  v118 = *v50;
                  v150 = 257;
                  llvm::IRBuilderBase::CreateCast(&v43[v117], 49, InsertElement, v118, &v147);
                  goto LABEL_113;
                }

                v97 = AGCLLVMAGPVertexShaderRegular::createExtractFromVertexAttribute(this, v40, v151, v152);
                v98 = *(*this - 24);
                v99 = *v50;
                v150 = 257;
                llvm::IRBuilderBase::CreateCast(&v43[v98], 49, v97, v99, &v147);
LABEL_114:
                v73 = v151;
                v74 = v153;
LABEL_115:
                if (v73 != v74)
                {
                  free(v73);
                }

LABEL_117:
                v119 = *(v50 - 4);
                llvm::Value::replaceAllUsesWith();
                llvm::Instruction::eraseFromParent(v50);
                if (!*(v119 + 8))
                {
                  v146 = 0;
                  llvm::RecursivelyDeleteTriviallyDeadInstructions();
                  std::__function::__value_func<void ()(llvm::Value *)>::~__value_func[abi:nn200100](v145);
                }

                if (TypeAllocSize != &v157)
                {
                  free(TypeAllocSize);
                }
              }

              while (v167);
            }
          }

          if (v161 != &v163)
          {
            free(v161);
          }
        }

        if (v171 == 1)
        {
          llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v169);
          llvm::deallocate_buffer(v170, v169, (16 * v170));
          v171 = 0;
        }

        v120 = v168;
        v121 = v166;
        if (v168)
        {
          v156 = 2;
          v157 = 0;
          v158 = -4096;
          v159 = 0;
          TypeAllocSize = &unk_28257BDA0;
          v162 = 2;
          v163 = 0;
          v164 = -8192;
          v161 = &unk_28257BDA0;
          v165 = 0;
          v122 = v166 + 56;
          v123 = v168 << 7;
          do
          {
            v124 = *(v122 - 32);
            if (v124 != v158 && v124 != v164)
            {
              v126 = *(v122 - 16);
              if (v122 != v126)
              {
                free(v126);
                v124 = *(v122 - 32);
              }
            }

            if (v124 != -8192 && v124 != -4096 && v124 != 0)
            {
              llvm::ValueHandleBase::RemoveFromUseList((v122 - 48));
            }

            v122 += 128;
            v123 -= 128;
          }

          while (v123);
          if (v164 != -8192 && v164 != -4096 && v164)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v162);
          }

          if (v158 != -8192 && v158 != -4096 && v158)
          {
            llvm::ValueHandleBase::RemoveFromUseList(&v156);
          }

          v121 = v166;
          v120 = v168;
          v128 = (v168 << 7);
        }

        else
        {
          v128 = 0;
        }

        llvm::deallocate_buffer(v120, v121, v128);
      }
    }
  }
}

uint64_t AGCLLVMUserVertexShader::createVIRead(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + *(*a1 - 24);
  v6 = *(v5 + 271);
  v9 = *(v5 + 110);
  llvm::IRBuilderBase::getCurrentDebugLocation(&v10, (v5 + 1712));
  v11 = *(v5 + 452);
  v7 = (*(*v6 + 464))(v6, &v9, a2, a3);
  if (v10)
  {
    llvm::MetadataTracking::untrack();
  }

  return v7;
}

llvm::Instruction *AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getVertexInputCall(unsigned int **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *a2;
  v12 = *(a2 + 16);
  if (v12)
  {
    llvm::MetadataTracking::track();
  }

  v13 = *(a2 + 24);
  AGCLLVMTargetLowerer::SetIP(a1, &v11);
  if (v12)
  {
    llvm::MetadataTracking::untrack();
  }

  v7 = (*(*a1 + 57))(a1, a4);
  v10 = 257;
  return llvm::IRBuilderBase::CreateCall(a1 + 1, *(v7 + 24), v7, 0, 0, v9);
}

uint64_t AGCLLVMGen6TargetLowerer<RaytracingConstantsGen1>::getVertexInputIntrinsic(uint64_t a1, int a2)
{
  if (a2 <= 4)
  {
    if ((a2 - 1) < 2)
    {
      v2 = "llvm.agx3.instance.id";
      v3 = 21;
    }

    else
    {
      if ((a2 - 3) >= 2)
      {
        return 0;
      }

      v2 = "llvm.agx3.vertex.id";
      v3 = 19;
    }

    goto LABEL_17;
  }

  if (a2 <= 6)
  {
    if (a2 != 5)
    {
      v2 = "llvm.agx3.position.in.patch.u";
LABEL_14:
      v3 = 29;
      v4 = 168;
      return AGCLLVMBuilder::getOrInsertFunction<>(a1, v2, v3, *(a1 + v4));
    }

    v2 = "llvm.agx3.transform.feedback.vertex.id";
    v3 = 38;
LABEL_17:
    v4 = 200;
    return AGCLLVMBuilder::getOrInsertFunction<>(a1, v2, v3, *(a1 + v4));
  }

  switch(a2)
  {
    case 7:
      v2 = "llvm.agx3.position.in.patch.v";
      goto LABEL_14;
    case 8:
      v2 = "llvm.agx3.patch.id";
      v3 = 18;
      goto LABEL_17;
    case 9:
      v2 = "llvm.agx3.patch.ring.edge.vertex";
      v3 = 32;
      v4 = 192;
      return AGCLLVMBuilder::getOrInsertFunction<>(a1, v2, v3, *(a1 + v4));
  }

  return 0;
}

uint64_t AGCLLVMUserVertexShader::setupShaderWrapper(llvm::Function **this)
{
  v13[16] = *MEMORY[0x277D85DE8];
  v2 = AGCLLVMUserObject::setupShaderWrapper(this);
  if (v2)
  {
    Function = llvm::Module::getFunction();
    if (Function)
    {
      v4 = Function;
      v12[0] = v13;
      v12[1] = 0x1000000000;
      v5 = this[20];
      if (*(v5 + 18))
      {
        llvm::Function::BuildLazyArguments(this[20]);
        v7 = this[20];
        v6 = *(v5 + 11);
        if (*(v7 + 9))
        {
          llvm::Function::BuildLazyArguments(v7);
        }

        v5 = v7;
      }

      else
      {
        v6 = *(v5 + 11);
      }

      v8 = *(v5 + 11) + 40 * *(v5 + 12);
      while (v6 != v8)
      {
        llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v12, v6);
        v6 += 40;
      }

      v9 = *(v4 + 1);
      while (v9)
      {
        v10 = *(v9 + 24);
        v9 = *(v9 + 8);
        llvm::Value::replaceAllUsesWith();
        llvm::Instruction::eraseFromParent(v10);
      }

      llvm::Function::eraseFromParent(v4);
      if (v12[0] != v13)
      {
        free(v12[0]);
      }
    }
  }

  return v2;
}

uint64_t AGCLLVMAGPVertexShaderRegular::setupShaderWrapper(llvm::Function **this)
{
  v3 = AGCLLVMUserVertexShader::setupShaderWrapper(this);
  if (*(this + 14) == 1)
  {
    v4 = this + *(*this - 3);
    if (**(*(this[21] + 3) + 16) == *(v4 + 231))
    {
      v5 = *(v4 + 271);
      if (v5[1859] == 1)
      {
        (*(*v5 + 400))(v5, this[20]);
      }
    }
  }

  v6 = 0x27C8D7000uLL;
  {
    v6 = 0x27C8D7000;
    if (v10)
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
      v6 = 0x27C8D7000;
    }
  }

  if (*(v6 + 2944) == 1)
  {
    Value = AGCEnv::getValue("AGX_MTL_TESSELLATION_VS_WRITETHROUGH", v2);
    if (Value)
    {
      if (*Value != 48 && atoi(Value))
      {
        v8 = *(this + *(*this - 3) + 2168);
        (*(*v8 + 432))(v8, this[20]);
      }
    }
  }

  return v3;
}

uint64_t AGCLLVMUserVertexShader::wrapperFunctionType(AGCLLVMUserVertexShader *this)
{
  v1 = *(this + 1310);
  if (v1)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<llvm::User *>>(v1);
  }

  return llvm::FunctionType::get();
}

uint64_t AGCLLVMUserVertexShader::addWrapperPostfix(uint64_t this)
{
  v1 = this + *(*this - 24);
  v2 = *(v1 + 2168);
  if (*(v2 + 1945) == 1 && *(v2 + 1908) && (*(v1 + 4577) & 1) == 0)
  {
    v3 = this;
    this = (*(*this + 392))();
    if ((this & 1) == 0)
    {
      llvm::Type::getVoidTy(*(v3 + *(*v3 - 24) + 2160), v4);
      llvm::FunctionType::get();
      llvm::Module::getOrInsertFunction();
      v5 = (v3 + *(*v3 - 24));
      v8 = 257;
      return llvm::IRBuilderBase::CreateCall(v5 + 214, *(v6 + 24), v6, 0, 0, v7);
    }
  }

  return this;
}

BOOL AGCLLVMAGPVertexShader::setupShaderOutputs(AGCLLVMAGPVertexShader *this)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  v3 = AGCLLVMUserVertexShader::setupShaderOutputs(this);
  v4 = this + *(*this - 24);
  if (**(*(*(this + 21) + 24) + 16) == *(v4 + 231) && *(*(v4 + 271) + 1841) == 1)
  {
    __p.__r_.__value_.__r.__words[0] = llvm::ConstantFP::get();
    __p.__r_.__value_.__l.__size_ = __p.__r_.__value_.__r.__words[0];
    __p.__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[0];
    v39 = llvm::ConstantFP::get();
    v5 = llvm::ConstantVector::get();
    v6 = this + *(*this - 24);
    v7 = *(this + 681);
    v8 = *(this + 683);
    v9 = *(this + 682);
    v40 = 257;
    Mul = llvm::IRBuilderBase::CreateMul((v6 + 1712), v8, v9, &__p);
    v37 = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v6 + 1712), v7, Mul, &__dst);
    AGCLLVMUserVertexShader::replaceOutputUses(this, v5, Add, 0, v2[1212], 4u);
  }

  v12 = *(this + 2451);
  if (v12)
  {
    if (AGCTargetPrinter::isValidToPrintMessage(*(this + *(*this - 24) + 1696)))
    {
      AGCTargetPrinter::printMessage(*(this + *(*this - 24) + 1696), "Following fragment input(s) mismatching vertex shader output type(s) or not written by vertex shader: ");
    }

    v13 = *(this + 2450);
    if (v13)
    {
        ;
      }
    }

    else
    {
      i = *(this + 1224);
    }

    v16 = *(this + 1224) + 8 * v13;
    if (i != v16)
    {
      v17 = this + 1696;
      do
      {
        if (AGCTargetPrinter::isValidToPrintMessage(*&v17[*(*this - 24)]))
        {
          v18 = *&v17[*(*this - 24)];
          std::string::basic_string[abi:nn200100](&__p, (*i + 16), **i);
          v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          AGCTargetPrinter::printMessage(v18, "\t%s", v19);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        do
        {
          v21 = *(i + 8);
          i += 8;
          v20 = v21;
          if (v21)
          {
            v22 = v20 == -8;
          }

          else
          {
            v22 = 1;
          }
        }

        while (v22);
      }

      while (i != v16);
    }

    v23 = *(this + 2450);
    if (v23)
    {
        ;
      }
    }

    else
    {
      j = *(this + 1224);
    }

    v26 = *(this + 1224) + 8 * v23;
    if (j != v26)
    {
      v27 = this + 1656;
      v28 = &unk_20E75F419;
      do
      {
        std::string::append(&v27[*(*this - 24)], v28);
        std::string::basic_string[abi:nn200100](&__dst, (*j + 16), **j);
        attribute_name(&__p, &__dst);
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

        std::string::append(&v27[*(*this - 24)], p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        do
        {
          v32 = *(j + 8);
          j += 8;
          v31 = v32;
          if (v32)
          {
            v33 = v31 == -8;
          }

          else
          {
            v33 = 1;
          }
        }

        while (v33);
        v28 = ",";
      }

      while (j != v26);
    }
  }

  if (v2[1200] == 1)
  {
    llvm::Module::getOrInsertNamedMetadata();
    if (*(this + 1326) > 1u)
    {
      v34 = 0;
    }

    else
    {
      v34 = llvm::MDString::get();
    }

    __p.__r_.__value_.__r.__words[0] = v34;
    llvm::MDTuple::getImpl();
    llvm::NamedMDNode::addOperand();
  }

  return !v12 && v3;
}

BOOL AGCLLVMUserVertexShader::setupShaderOutputs(AGCLLVMUserVertexShader *this)
{
  v594 = *MEMORY[0x277D85DE8];
  v2 = this + 4096;
  Function = llvm::Module::getFunction();
  v4 = *(*(Function + 8) + 24);
  v5 = llvm::CallBase::arg_end(v4);
  v512 = v4;
  v6 = (v4 - 32 * (*(v4 + 5) & 0x7FFFFFF));
  if (((v5 - v6) & 0x1FFFFFFFE0) != 0)
  {
    v7 = *v6;
    v8 = **v6;
    v527 = v8;
    if (*(v8 + 8) == 16)
    {
      v9 = *(v8 + 12);
      v580 = v582;
      v581 = 0x1000000000;
      v577 = v579;
      v578 = 0x1000000000;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v580 = v582;
      v581 = 0x1000000000;
      v577 = v579;
      v578 = 0x1000000000;
      v9 = 1;
    }

    llvm::SmallVectorImpl<unsigned int>::append(&v577, v9);
    v10 = 0;
    goto LABEL_9;
  }

  v9 = 0;
  v7 = 0;
  v527 = 0;
  v580 = v582;
  v581 = 0x1000000000;
  v577 = v579;
  v578 = 0x1000000000;
LABEL_6:
  v10 = 1;
LABEL_9:
  memset(v576, 0, sizeof(v576));
  v534 = 0;
  NullValue = llvm::ConstantInt::get();
  v508 = llvm::ConstantInt::get();
  llvm::IRBuilderBase::SetInsertPoint((this + *(*this - 24) + 1712), v512);
  v574[0] = v575;
  v574[1] = 0x800000000;
  llvm::SmallVectorImpl<llvm::Value *>::assign(v574, v9, 0);
  v530 = this;
  v524 = v2;
  v506 = v7;
  v505 = Function;
  if (v10)
  {
    v507 = 0;
    v525 = 0;
  }

  else
  {
    if (*(v527 + 8) == 16)
    {
      AGCLLVMBuilder::unboxStruct(this + *(*this - 24) + 1704, v7, v574);
    }

    else
    {
      *v574[0] = v7;
    }

    v74 = 0;
    v75 = 0;
    v525 = 0;
    v507 = 0;
    v521 = this + 1704;
    do
    {
      v76 = *(*(v530 + 8) - 8 * *(*(v530 + 8) + 8) + 8 * v74);
      v77 = (v76 + 8);
      String = llvm::MDString::getString(*(v76 - 8 * *(v76 + 8)));
      v80 = v79;
      v81 = *(v574[0] + v74);
      if (v2[1202] == 1)
      {
        v82 = v76 + 8;
        v83 = 1;
        while (1)
        {
          v84 = *v77;
          if (v83 >= v84)
          {
LABEL_99:
            v85 = 1;
            goto LABEL_102;
          }

          if (isStringMDNode(*(v82 - 8 * v84), "air.shared"))
          {
            break;
          }

          ++v83;
          v82 += 8;
          if (v524[1202] != 1)
          {
            goto LABEL_99;
          }
        }

        v85 = 0;
LABEL_102:
        v2 = v524;
      }

      else
      {
        v85 = 0;
      }

      if (v80 <= 16)
      {
        if (v80 == 12)
        {
          if (*String == 0x69736F702E726961 && *(String + 8) == 1852795252)
          {
            v2[1212] = v85;
            v98 = *v77;
            if (v98 >= 2)
            {
              v99 = v76 + 8;
              v100 = 1;
              while (!isStringMDNode(*(v99 - 8 * v98), "air.invariant"))
              {
                ++v100;
                v98 = *v77;
                v99 += 8;
                if (v100 >= v98)
                {
                  goto LABEL_184;
                }
              }

              v2[1179] = 1;
            }

LABEL_184:
            v525 = v81;
          }
        }

        else if (v80 == 14 && *String == 0x6E696F702E726961 && *(String + 6) == 0x657A69735F746E69)
        {
          v2[1213] = v85;
          v507 = v81;
        }
      }

      else
      {
        switch(v80)
        {
          case 17:
            if (*String == 0x70696C632E726961 && *(String + 8) == 0x636E61747369645FLL && *(String + 16) == 101)
            {
              v101 = (*(*v530 + 504))(v530, v81, v76, v576, &v534);
              v2[1216] = v85;
              if ((v101 & 1) == 0)
              {
                goto LABEL_559;
              }
            }

            else if (*String == 0x747265762E726961 && *(String + 8) == 0x757074756F5F7865 && *(String + 16) == 116)
            {
              __p = 0;
              v544 = 0;
              v545 = 0;
              if ((*(*v530 + 512))(v530, v527, v74, v76, &v540, v85))
              {
                llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v580, v542, v81);
                GenericVaryingAllocator::addVarying(v530 + 4536, &v540);
              }

              else
              {
                if ((*(*v81 + 8) & 0xFE) == 0x12)
                {
                  {
                    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
                  }

                  if (AGCEnv::isEnabled(void)::is_internal != 1)
                  {
                    goto LABEL_176;
                  }

                  Value = AGCEnv::getValue("AGC_DISABLE_VARYING_SPLITTING", v94);
                  if (!Value || *Value == 48 || !atoi(Value))
                  {
                    goto LABEL_176;
                  }
                }

                {
                  AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
                }

                if (AGCEnv::isEnabled(void)::is_internal == 1)
                {
                  v103 = AGCEnv::getValue("AGC_FORCE_VARYING_SPLITTING", v94);
                  if (v103)
                  {
                    if (*v103 != 48 && atoi(v103))
                    {
LABEL_176:
                      *v589 = 0u;
                      v590 = 0u;
                      v104 = AGCLLVMBuilder::unboxVector(&v521[*(*v530 - 24)], v81, v589);
                      if (v104)
                      {
                        v105 = 0;
                        v106 = v104;
                        do
                        {
                          if ((*(*v530 + 520))(v530, v527, v74, v76, &v540, v85, v105))
                          {
                            llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v580, v542, v589[v105]);
                            GenericVaryingAllocator::addVarying(v530 + 4536, &v540);
                          }

                          ++v105;
                        }

                        while (v106 != v105);
                      }
                    }
                  }
                }
              }

              if (SHIBYTE(v545) < 0)
              {
                operator delete(__p);
              }
            }

            break;
          case 24:
            if (*String == 0x776569762E726961 && *(String + 8) == 0x7272615F74726F70 && *(String + 16) == 0x7865646E695F7961)
            {
              v2[1214] = v85;
              v2[1153] = 1;
              NullValue = v81;
            }

            break;
          case 29:
            v86 = *String == 0x646E65722E726961 && *(String + 8) == 0x65677261745F7265;
            v87 = v86 && *(String + 16) == 0x5F79617272615F74;
            if (v87 && *(String + 21) == 0x7865646E695F7961)
            {
              v2[1215] = v85;
              v2[1154] = 1;
              v508 = v81;
            }

            break;
        }
      }

      v75 = ++v74 >= v9;
    }

    while (v74 != v9);
  }

  v12 = v530;
  v13 = *(v530 + 1316) & v534;
  *(v530 + 1316) = v13;
  v11.i32[0] = v13;
  v14 = vcnt_s8(v11);
  v14.i16[0] = vaddlv_u8(v14);
  *(v530 + 1315) = v14.i32[0];
  if (v13 && ((v2[1216] & 1) != 0 || v2[1212] == 1))
  {
    v2[1216] = 1;
    v2[1212] = 1;
  }

  v2[1152] = (*(*v530 + 544))(v530, v507);
  if (v2[1202] == 1)
  {
    if ((v2[1200] & 1) == 0)
    {
      *(v530 + 660) = AGCLLVMUserVertexShader::getVertexAmpId(v530, *(v530 + 1326), v15);
      v2[1200] = 1;
    }

    if ((v2[1201] & 1) == 0)
    {
      *(v530 + 661) = AGCLLVMUserVertexShader::getDriverGlobalConstant(v530, 0x54u, v15);
      v2[1201] = 1;
    }

    v16 = v530 + *(*v530 - 24);
    v17 = *(v530 + 677);
    LOWORD(v544) = 257;
    Load = AGCLLVMBuilder::CreateLoad((v16 + 1704), v17, &v540);
    v19 = v530 + *(*v530 - 24);
    v20 = *(v530 + 678);
    v21 = *(v530 + 660);
    LOWORD(v544) = 257;
    GEP = llvm::IRBuilderBase::CreateGEP((v19 + 1712), v20, Load, v21, &v540);
    v23 = v530 + *(*v530 - 24);
    LOWORD(v544) = 257;
    v24 = AGCLLVMBuilder::CreateLoad((v23 + 1704), GEP, &v540);
    v540 = &v542;
    v541 = 0x800000000;
    AGCLLVMBuilder::unboxStruct(v530 + *(*v530 - 24) + 1704, v24, &v540);
    if ((v2[1153] & 1) == 0)
    {
      NullValue = llvm::Constant::getNullValue(**(v530 + 679), v25);
      v2[1153] = 1;
    }

    v2[1214] = 1;
    v26 = AGCLLVMBuilder::truncateToSmall((v530 + *(*v530 - 24) + 1704), *v540, *NullValue);
    *(v530 + 679) = v26;
    v27 = v530 + *(*v530 - 24);
    v28 = *v26;
    LOWORD(v591) = 257;
    Cast = llvm::IRBuilderBase::CreateCast((v27 + 1712), 39, NullValue, v28, v589);
    v30 = v530 + *(*v530 - 24);
    v31 = *(v530 + 679);
    LOWORD(v591) = 257;
    NullValue = llvm::IRBuilderBase::CreateAdd((v30 + 1712), Cast, v31, v589);
    v33 = v508;
    if ((v2[1154] & 1) == 0)
    {
      v33 = llvm::Constant::getNullValue(**(v530 + 680), v32);
      v2[1154] = 1;
    }

    v2[1215] = 1;
    v34 = v33;
    v35 = AGCLLVMBuilder::truncateToSmall((v530 + *(*v530 - 24) + 1704), *(v540 + 1), *v33);
    *(v530 + 680) = v35;
    v36 = v530 + *(*v530 - 24);
    v37 = *v35;
    LOWORD(v591) = 257;
    v38 = llvm::IRBuilderBase::CreateCast((v36 + 1712), 39, v34, v37, v589);
    v39 = v530 + *(*v530 - 24);
    v40 = *(v530 + 680);
    LOWORD(v591) = 257;
    Add = llvm::IRBuilderBase::CreateAdd((v39 + 1712), v38, v40, v589);
    if (v540 != &v542)
    {
      v42 = Add;
      free(v540);
      Add = v42;
    }
  }

  else
  {
    Add = v508;
  }

  v43 = 0;
  LOBYTE(v540) = 1;
  BYTE1(v540) = v2[1200];
  v541 = "air.amplification_id";
  v542 = 20;
  __p = *(v530 + 660);
  v547 = 0;
  v548 = 0;
  v549 = 0;
  v550 = 0;
  v551 = v2[1201];
  v552 = "air.amplification_count";
  v553 = 23;
  v554 = *(v530 + 661);
  v555 = 0;
  v556 = 0;
  v557 = 0;
  v558 = v2[1214];
  v559 = v2[1153];
  v560 = "air.viewport_array_index";
  v561 = 24;
  v562 = NullValue;
  v563 = 0;
  v565 = 0;
  v564 = 0;
  v566 = v2[1215];
  v567 = v2[1154];
  v514 = v530 + 1712;
  v568 = "air.render_target_array_index";
  v569 = 29;
  v515 = v530 + 1704;
  v509 = Add;
  v570 = Add;
  v571 = 0;
  v572 = 0;
  v573 = 0;
  do
  {
    v44 = &v540 + v43;
    if (!(*(*v12 + 528))(v12, *(&v540 + v43 + 8), *(&v542 + v43), &v544 + v43, *(&v540 + v43)))
    {
      goto LABEL_65;
    }

    v45 = *(*v12 - 24);
    v46 = *(v44 + 3);
    ComponentType = AGCLLVMBuilder::getComponentType(&v515[v45], *v46, v589);
    if (v44[1] != 1)
    {
      goto LABEL_64;
    }

    v48 = *(&v544 + v43 + 4);
    if (ComponentType <= 3)
    {
      if (!ComponentType)
      {
        if (!v48)
        {
          goto LABEL_64;
        }

LABEL_62:
        v50 = AGCLLVMBuilder::truncateToSmall(&v515[v45], v46, v48);
        goto LABEL_63;
      }

      if (ComponentType != 3)
      {
        goto LABEL_53;
      }

      if (v48 != 3)
      {
        if (v48 == 6)
        {
          goto LABEL_50;
        }

        if (v48 == 7)
        {
          goto LABEL_64;
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (ComponentType != 4)
      {
        if (ComponentType == 5)
        {
          if (v48 <= 6)
          {
            if (((1 << v48) & 0x59) != 0)
            {
              goto LABEL_50;
            }

            if (v48 == 2)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_64;
        }

        if (ComponentType == 6)
        {
          if (v48 == 6)
          {
            goto LABEL_64;
          }

          goto LABEL_62;
        }

LABEL_53:
        if (v48 <= 3)
        {
          if (!v48)
          {
            goto LABEL_50;
          }

          if (v48 == 3)
          {
            v51 = ComponentType > 7;
            v52 = 1 << ComponentType;
            v53 = 200;
LABEL_68:
            v54 = v52 & v53;
            if (!v51 && v54 != 0)
            {
              goto LABEL_64;
            }

LABEL_50:
            v49 = *(v530 + v48 + 1214);
            LOWORD(v591) = 257;
            v50 = llvm::IRBuilderBase::CreateCast(&v514[v45], 39, v46, v49, v589);
LABEL_63:
            *(v44 + 3) = v50;
            goto LABEL_64;
          }
        }

        else
        {
          switch(v48)
          {
            case 4:
              v51 = ComponentType > 8;
              v52 = 1 << ComponentType;
              v53 = 472;
              goto LABEL_68;
            case 5:
              if (ComponentType != 2)
              {
                goto LABEL_64;
              }

              goto LABEL_50;
            case 6:
              goto LABEL_50;
          }
        }

        goto LABEL_64;
      }

      if (v48 > 8)
      {
        goto LABEL_62;
      }

      if (((1 << v48) & 0x190) == 0)
      {
        if (((1 << v48) & 0x48) != 0)
        {
          goto LABEL_50;
        }

        goto LABEL_62;
      }
    }

LABEL_64:
    v12 = v530;
    GenericVaryingAllocator::addVarying(v530 + 4536, (v44 + 32));
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(&v580, *&v546[v43], *(v44 + 3));
LABEL_65:
    v43 += 96;
  }

  while (v43 != 384);
  *(&v590 + 1) = 0;
  v591 = 0;
  v592 = 0;
  if ((*(*v12 + 536))(v12, v589))
  {
    do
    {
      GenericVaryingAllocator::addVarying(v12 + 4536, v589);
    }

    while (((*(*v12 + 536))(v12, v589) & 1) != 0);
  }

  v58 = v524;
  v57 = v525;
  if (SHIBYTE(v592) < 0)
  {
    operator delete(*(&v590 + 1));
  }

  v59 = 126 - 2 * __clz(v581);
  if (v581)
  {
    v60 = v59;
  }

  else
  {
    v60 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,false>(v580, v580 + 4 * v581, v60, 1);
  GenericVaryingAllocator::allocate((v12 + 4536), *(v12 + *(*v12 - 24) + 2168));
  v61 = v512[5];
  v62 = llvm::ConstantInt::get();
  v528 = llvm::ConstantInt::get();
  *(v524 + 1156) = 0;
  v64 = v12 + *(*v12 - 24);
  if (*(*(v64 + 271) + 1867) == 1 && v524[1200] == 1)
  {
    DriverGlobalConstant = AGCLLVMUserVertexShader::getDriverGlobalConstant(v12, 0x54u, v63);
    v528 = AGCLLVMBuilder::truncateToSmall((v64 + 1704), DriverGlobalConstant, *(v12 + *(*v12 - 24) + 4584));
    v67 = v12 + *(*v12 - 24);
    if (*(v12 + 1326))
    {
      v68 = 85;
    }

    else
    {
      v68 = 84;
    }

    v583 = AGCLLVMUserVertexShader::getDriverGlobalConstant(v12, v68, v66);
    v69 = v12 + *(*v12 - 24);
    v70 = *(v69 + 271);
    v71 = *(v70 + 1600);
    if (v71)
    {
      v72 = strlen(*(v70 + 1600));
    }

    else
    {
      v72 = 0;
    }

    v107 = AGCLLVMBuilder::getOrInsertFunction<llvm::Type *>((v69 + 1704), v71, v72, *(v69 + 238), *(v69 + 238));
    v108 = (v12 + *(*v12 - 24));
    LOWORD(v591) = 257;
    v109 = llvm::IRBuilderBase::CreateCall(v108 + 214, *(v107 + 24), v107, &v583, 1, v589);
    v73 = AGCLLVMBuilder::truncateToSmall((v67 + 1704), v109, *(v12 + *(*v12 - 24) + 4584));
  }

  else
  {
    v73 = v62;
  }

  *(v12 + 681) = llvm::ConstantInt::get();
  v110 = llvm::ConstantInt::get();
  Mul = v110;
  *(v12 + 682) = v110;
  v112 = v524[1212];
  v517 = v524 + 1156;
  v519 = v73;
  if (v524[1212])
  {
    v113 = v73;
  }

  else
  {
    v113 = v62;
  }

  *(v12 + 683) = v113;
  if (v112 != 1)
  {
    *(v12 + 684) = v110;
    goto LABEL_200;
  }

  v114 = v12 + *(*v12 - 24);
  LOWORD(v591) = 257;
  Mul = llvm::IRBuilderBase::CreateMul((v114 + 1712), v110, v528, v589);
  v115 = v524[1212];
  *(v12 + 684) = Mul;
  if ((v115 & 1) == 0)
  {
LABEL_200:
    *(v524 + 289) += 4;
    goto LABEL_201;
  }

  *(v12 + 1314) += 4;
LABEL_201:
  v116 = v12 + *(*v12 - 24);
  v117 = *(v12 + 681);
  LOWORD(v591) = 257;
  *(v12 + 685) = llvm::IRBuilderBase::CreateAdd((v116 + 1712), v117, Mul, v589);
  v118 = llvm::ConstantInt::get();
  *(v12 + 686) = v118;
  *(v12 + 687) = v62;
  *(v12 + 688) = v118;
  v119 = v12 + *(*v12 - 24);
  v120 = *(v12 + 685);
  LOWORD(v591) = 257;
  *(v12 + 689) = llvm::IRBuilderBase::CreateAdd((v119 + 1712), v120, v118, v589);
  v121 = v62;
  v122 = (v12 + 5152);
  v123 = llvm::ConstantInt::get();
  *(v12 + 690) = v123;
  *(v12 + 691) = v121;
  *(v12 + 692) = v123;
  v124 = v12 + *(*v12 - 24);
  v125 = *(v12 + 689);
  LOWORD(v591) = 257;
  *(v12 + 693) = llvm::IRBuilderBase::CreateAdd((v124 + 1712), v125, v123, v589);
  v126 = llvm::ConstantInt::get();
  *(v12 + 694) = v126;
  *(v12 + 695) = v121;
  *(v12 + 696) = v126;
  v127 = v12 + *(*v12 - 24);
  v128 = *(v12 + 693);
  LOWORD(v591) = 257;
  *(v12 + 697) = llvm::IRBuilderBase::CreateAdd((v127 + 1712), v128, v126, v589);
  v129 = llvm::ConstantInt::get();
  *(v12 + 698) = v129;
  *(v12 + 699) = v121;
  *(v12 + 700) = v129;
  v130 = v12 + *(*v12 - 24);
  v131 = *(v12 + 697);
  LOWORD(v591) = 257;
  *(v12 + 701) = llvm::IRBuilderBase::CreateAdd((v130 + 1712), v131, v129, v589);
  v132 = llvm::ConstantInt::get();
  *(v12 + 702) = v132;
  *(v12 + 703) = v121;
  *(v12 + 704) = v132;
  v133 = v12 + *(*v12 - 24);
  v134 = *(v12 + 701);
  LOWORD(v591) = 257;
  *(v12 + 705) = llvm::IRBuilderBase::CreateAdd((v133 + 1712), v134, v132, v589);
  v135 = llvm::ConstantInt::get();
  *(v12 + 706) = v135;
  *(v12 + 707) = v121;
  *(v12 + 708) = v135;
  v136 = v12 + *(*v12 - 24);
  v137 = *(v12 + 705);
  LOWORD(v591) = 257;
  *(v12 + 709) = llvm::IRBuilderBase::CreateAdd((v136 + 1712), v137, v135, v589);
  v138 = llvm::ConstantInt::get();
  *(v12 + 710) = v138;
  *(v12 + 711) = v121;
  *(v12 + 712) = v138;
  v139 = v12 + *(*v12 - 24);
  v140 = *(v12 + 709);
  LOWORD(v591) = 257;
  *(v12 + 713) = llvm::IRBuilderBase::CreateAdd((v139 + 1712), v140, v138, v589);
  v141 = llvm::ConstantInt::get();
  *(v12 + 714) = v141;
  v522 = v121;
  *(v12 + 715) = v121;
  *(v12 + 716) = v141;
  v142 = v12 + *(*v12 - 24);
  v143 = *(v12 + 713);
  LOWORD(v591) = 257;
  v144 = llvm::IRBuilderBase::CreateAdd((v142 + 1712), v143, v141, v589);
  *(v12 + 717) = v144;
  if (*(v12 + 1352) && (*(*(v12 + *(*v12 - 24) + 2168) + 1849) & 1) == 0)
  {
    if (v506)
    {
      LODWORD(v590) = 128;
      v589[0] = MEMORY[0x20F330650](6144, 8);
      llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>,llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>,llvm::Value *>>::initEmpty(v589);
      BYTE8(v590) = 0;
      v593 = 0;
      if (*(v506 + 16) == 83)
      {
        v145 = *(v506 + 5);
        v146 = v145 & 0x7FFFFFF;
        if ((v145 & 0x7FFFFFF) != 0)
        {
          v147 = 0;
          v148 = 0;
          do
          {
            if ((v145 & 0x40000000) != 0)
            {
              v149 = *(v506 - 1);
            }

            else
            {
              v149 = v506 - 32 * v146;
            }

            v150 = *&v149[v147];
            *llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](v589, *&v149[32 * *(v506 + 15) + 8 * v148++]) = v150;
            v145 = *(v506 + 5);
            v146 = v145 & 0x7FFFFFF;
            v147 += 32;
          }

          while (v148 < v146);
        }
      }

      else
      {
        SinglePredecessor = llvm::BasicBlock::getSinglePredecessor(v61);
        *llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](v589, SinglePredecessor) = v506;
      }

      v152 = *(v12 + 665);
      v153 = *(v12 + 666);
      if (v152 != v153)
      {
        while (2)
        {
          v154 = *(v152 + 3);
          if (!v154)
          {
            goto LABEL_243;
          }

          v155 = **(v154 - 64);
          if ((*(v155 + 8) & 0xFE) == 0x12)
          {
            v156 = *(v155 + 32);
          }

          else
          {
            v156 = 1;
          }

          v158 = *v152;
          v157 = v152[1];
          v159 = llvm::ValueMap<llvm::BasicBlock *,llvm::Value *,llvm::ValueMapConfig<llvm::BasicBlock *,llvm::sys::SmartMutex<false>>>::operator[](v589, *(v154 + 40));
          v160 = *v159;
          if (*(*v159 + 16) - 11 >= 2)
          {
            while (*(v160 - 32) != *(v154 - 64))
            {
              v160 = *(v160 - 64);
              if (*(v160 + 16) - 11 <= 1)
              {
                goto LABEL_234;
              }
            }

            v161 = **(v160 + 64);
            v162 = *(*(v530 + 8) - 8 * *(*(v530 + 8) + 8) + 8 * v161);
            v163 = llvm::MDString::getString(*(v162 - 8 * *(v162 + 8)));
            if (v164 == 17)
            {
              if (*v163 == 0x747265762E726961 && *(v163 + 8) == 0x757074756F5F7865 && *(v163 + 16) == 116)
              {
                v586 = 0;
                v587 = 0;
                v588 = 0;
                if ((*(*v530 + 512))(v530, *v506, v161, v162, &v583, 0))
                {
                  v171 = *(v530 + 1142);
                  if (v171)
                  {
                    v172 = *(v530 + 570);
                    v173 = v171 << 6;
                    while (*(v172 + 16) != v585)
                    {
                      v172 += 64;
                      v173 -= 64;
                      if (!v173)
                      {
                        goto LABEL_250;
                      }
                    }

                    v165 = *(v172 + 48);
                  }

                  else
                  {
LABEL_250:
                    v165 = 0xFFFF;
                  }
                }

                else
                {
                  v165 = -2;
                }

                if (SHIBYTE(v588) < 0)
                {
                  operator delete(v586);
                }

                goto LABEL_235;
              }
            }

            else if (v164 == 12)
            {
              if (*v163 ^ 0x69736F702E726961 | *(v163 + 8) ^ 0x6E6F6974)
              {
                v165 = -2;
              }

              else
              {
                v165 = 0;
              }

              goto LABEL_235;
            }
          }

LABEL_234:
          v165 = -2;
LABEL_235:
          if (v156)
          {
            v168 = *(*(v530 + v157 + 668) + 8);
            while (1)
            {
              v169 = *(v168 + 4 * v158);
              if (v169 != -2)
              {
                v170 = v165;
                if (v169 == -1)
                {
                  goto LABEL_241;
                }

                if (v165 != v169)
                {
                  break;
                }
              }

LABEL_242:
              ++v165;
              ++v158;
              if (!--v156)
              {
                goto LABEL_243;
              }
            }

            v170 = -2;
LABEL_241:
            *(v168 + 4 * v158) = v170;
            goto LABEL_242;
          }

LABEL_243:
          v152 += 8;
          if (v152 == v153)
          {
            break;
          }

          continue;
        }
      }

      v12 = v530;
      v174 = *(v530 + 1352);
      if (v174 >= 2)
      {
        for (i = 0; i < v174; ++i)
        {
          v176 = *(v530 + i + 668);
          v177 = *(v176 + 1);
          v178 = *v176;
          if (*v177 < 0xFFFFFFFE)
          {
            if (v178 < 2)
            {
              continue;
            }

            v179 = v178 - 1;
            v180 = v177 + 1;
            v181 = *v177 + 1;
            while (1)
            {
              v182 = *v180++;
              if (v181 != v182)
              {
                break;
              }

              ++v181;
              if (!--v179)
              {
                goto LABEL_263;
              }
            }
          }

          memset_pattern4(v177, &TFBufferMap::MAP_CONFLICT, 4 * v178);
          v174 = *(v530 + 1352);
LABEL_263:
          ;
        }
      }

      v183 = *(v530 + 665);
      v184 = *(v530 + 666);
      if (v183 != v184)
      {
        while (2)
        {
          v185 = *(v183 + 3);
          if (v185)
          {
            v186 = *v183;
            v187 = **(v185 - 8);
            if ((*(v187 + 8) & 0xFE) == 0x12)
            {
              v188 = *(v187 + 32);
              if (!v188)
              {
                goto LABEL_275;
              }
            }

            else
            {
              v188 = 1;
            }

            v189 = *(*(v530 + v183[1] + 668) + 8);
            if (*(v189 + 4 * v186) <= 0xFFFFFFFD)
            {
              v190 = 0;
              v191 = v186 + 1;
              while (v188 - 1 != v190)
              {
                v192 = *(v189 + 4 * (v191 + v190++));
                if (v192 >= 0xFFFFFFFE)
                {
                  if (v190 < v188)
                  {
                    goto LABEL_276;
                  }

                  break;
                }
              }

LABEL_275:
              v193 = *(v185 - 4);
              llvm::Instruction::eraseFromParent(v185);
              EraseInstructionChain(v193);
            }
          }

LABEL_276:
          v183 += 8;
          if (v183 == v184)
          {
            break;
          }

          continue;
        }
      }

      if (v593 == 1)
      {
        llvm::DenseMapBase<llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>,llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::destroyAll(&v590 + 2);
        llvm::deallocate_buffer(v592, *(&v590 + 1), (16 * v592));
        v593 = 0;
      }

      v194 = v590;
      v195 = v589[0];
      if (v590)
      {
        v584 = 2;
        v585 = 0;
        v586 = -4096;
        v587 = 0;
        v583 = &unk_2825A95E0;
        v536 = 2;
        v537 = 0;
        v538 = -8192;
        v539 = 0;
        v535 = &unk_2825A95E0;
        v196 = (v589[0] + 24);
        v197 = 48 * v590;
        do
        {
          v198 = *v196;
          if (*v196 != -8192 && v198 != -4096 && v198 != 0)
          {
            llvm::ValueHandleBase::RemoveFromUseList((v196 - 2));
          }

          v196 += 6;
          v197 -= 48;
        }

        while (v197);
        if (v538 != -8192 && v538 != -4096 && v538 != 0)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v536);
        }

        if (v586 != -8192 && v586 != -4096 && v586)
        {
          llvm::ValueHandleBase::RemoveFromUseList(&v584);
        }

        v195 = v589[0];
        v194 = 3 * v590;
        v201 = 48 * v590;
      }

      else
      {
        v201 = 0;
      }

      llvm::deallocate_buffer(v194, v195, v201);
      v144 = *(v530 + 717);
    }

    if (*(v144 + 16) == 16)
    {
      v202 = v144;
    }

    else
    {
      v202 = 0;
    }

    v203 = (v202 + 24);
    if (*(v202 + 32) >= 0x41u)
    {
      v203 = *v203;
    }

    v204 = *v203;
    v205 = *(v12 + 1352);
    if (v205 < 2)
    {
      v208 = 0;
    }

    else
    {
      v206 = v12;
      v207 = 0;
      v208 = 0;
      v209 = v206 + 5344;
      v210 = vdupq_n_s64(4uLL);
      do
      {
        v211 = *(v209 + 8 * v207);
        v212 = *(v211 + 1);
        if (*v212 >= 0xFFFFFFFE)
        {
          v213 = *v211;
          if (v213)
          {
            v214 = (v213 + 3) & 0x1FFFFFFFCLL;
            v215 = vdupq_n_s64(v213 - 1);
            v216 = v212 + 2;
            v217 = v204;
            v218 = xmmword_20E70C4F0;
            v219 = xmmword_20E70C4E0;
            do
            {
              v220 = vmovn_s64(vcgeq_u64(v215, v218));
              if (vuzp1_s16(v220, 2).u8[0])
              {
                *(v216 - 2) = v217;
              }

              if (vuzp1_s16(v220, 2).i8[2])
              {
                *(v216 - 1) = v217 + 1;
              }

              if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v215, *&v219))).i32[1])
              {
                *v216 = v217 + 2;
                v216[1] = v217 + 3;
              }

              v219 = vaddq_s64(v219, v210);
              v218 = vaddq_s64(v218, v210);
              v217 += 4;
              v216 += 4;
              v214 -= 4;
            }

            while (v214);
            v205 = *(v530 + 1352);
          }

          v204 += v213;
          v208 += v213;
        }

        ++v207;
      }

      while (v207 < v205);
    }

    v221 = *(v530 + 665);
    v222 = *(v530 + 666);
    if (v221 != v222)
    {
      v223 = v530 + 5344;
      while (1)
      {
        v224 = *(v221 + 3);
        if (v224)
        {
          break;
        }

LABEL_335:
        v221 += 8;
        if (v221 == v222)
        {
          goto LABEL_342;
        }
      }

      v225 = *v221;
      v226 = v221[1];
      v227 = *(v224 - 8);
      if ((*(*v224 + 8) & 0xFE) == 0x12)
      {
        v228 = *(*v224 + 32);
        v229 = *&v223[8 * v226];
        if (!v228)
        {
LABEL_334:
          v234 = llvm::ConstantInt::get();
          AGCLLVMUserVertexShader::replaceOutputUses(v530, v227, v234, 1, 0, 4u);
          v235 = *(v224 - 4);
          llvm::Instruction::eraseFromParent(v224);
          EraseInstructionChain(v235);
          goto LABEL_335;
        }
      }

      else
      {
        v229 = *&v223[8 * v226];
        v228 = 1;
      }

      v230 = *(v229 + 8);
      if (*(v230 + 4 * v225) <= 0xFFFFFFFD)
      {
        v236 = 0;
        while (v228 - 1 != v236)
        {
          v237 = *(v230 + 4 * (v225 + 1 + v236++));
          if (v237 >= 0xFFFFFFFE)
          {
            if (v236 < v228)
            {
              goto LABEL_331;
            }

            goto LABEL_334;
          }
        }
      }

      else
      {
LABEL_331:
        v231 = v204;
        v232 = *v221;
        v233 = v228;
        do
        {
          *(v230 + 4 * v232++) = v231++;
          --v233;
        }

        while (v233);
        v204 += v228;
        v208 += v228;
      }

      goto LABEL_334;
    }

LABEL_342:
    v238 = *(v530 + 1311) + v208;
    v12 = v530;
    *(v530 + 1311) = v238;
    v58 = v524;
    v57 = v525;
  }

  v239 = llvm::ConstantInt::get();
  v240 = 0;
  *(v12 + 718) = v239;
  *(v12 + 719) = v522;
  *(v12 + 720) = v239;
  v241 = -6;
  do
  {
    if ((v241 + 6) <= 5 && ((1 << (v241 + 6)) & 0x27) != 0)
    {
      v242 = *(v122 - 6) + v240;
      v243 = v242 + *v122;
      v240 = v242 + ((*v122 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v240 = v243;
      }
    }

    ++v122;
    v244 = __CFADD__(v241++, 1);
  }

  while (!v244);
  *(v12 + 1313) += *(v12 + 1311) + v240;
  v245 = v12 + *(*v12 - 24);
  v246 = *(v12 + 717);
  LOWORD(v591) = 257;
  v247 = llvm::IRBuilderBase::CreateAdd((v245 + 1712), v246, v239, v589);
  v248 = 0;
  *(v12 + 721) = v247;
  v249 = (v12 + 5200);
  v250 = -6;
  v251 = (v12 + 5200);
  do
  {
    if ((v250 + 6) <= 5 && ((1 << (v250 + 6)) & 0x27) != 0)
    {
      v252 = *(v251 - 6) + v248;
      v253 = v252 + *v251;
      v248 = v252 + ((*v251 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v248 = v253;
      }
    }

    ++v251;
    v244 = __CFADD__(v250++, 1);
  }

  while (!v244);
  *(v12 + 722) = llvm::ConstantInt::get();
  *(v12 + 723) = v519;
  v254 = llvm::ConstantInt::get();
  *(v12 + 724) = v254;
  v255 = v12 + *(*v12 - 24);
  v256 = *(v12 + 721);
  LOWORD(v591) = 257;
  v257 = llvm::IRBuilderBase::CreateAdd((v255 + 1712), v256, v254, v589);
  v258 = 0;
  *(v12 + 725) = v257;
  v259 = -6;
  v260 = (v12 + 5200);
  do
  {
    if ((v259 + 6) <= 5 && ((1 << (v259 + 6)) & 0x27) != 0)
    {
      v261 = *(v260 - 6) + v258;
      v262 = v261 + *v260;
      v258 = v261 + ((*v260 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v258 = v262;
      }
    }

    ++v260;
    v244 = __CFADD__(v259++, 1);
  }

  while (!v244);
  *(v12 + 726) = llvm::ConstantInt::get();
  *(v12 + 727) = v519;
  v263 = llvm::ConstantInt::get();
  *(v12 + 728) = v263;
  v264 = v12 + *(*v12 - 24);
  v265 = *(v12 + 725);
  LOWORD(v591) = 257;
  v266 = llvm::IRBuilderBase::CreateAdd((v264 + 1712), v265, v263, v589);
  v267 = 0;
  *(v12 + 729) = v266;
  v268 = -6;
  v269 = (v12 + 5200);
  do
  {
    if ((v268 + 6) <= 5 && ((1 << (v268 + 6)) & 0x27) != 0)
    {
      v270 = *(v269 - 6) + v267;
      v271 = v270 + *v269;
      v267 = v270 + ((*v269 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v267 = v271;
      }
    }

    ++v269;
    v244 = __CFADD__(v268++, 1);
  }

  while (!v244);
  *(v12 + 730) = llvm::ConstantInt::get();
  *(v12 + 731) = v519;
  v272 = llvm::ConstantInt::get();
  *(v12 + 732) = v272;
  v273 = v12 + *(*v12 - 24);
  v274 = *(v12 + 729);
  LOWORD(v591) = 257;
  v275 = llvm::IRBuilderBase::CreateAdd((v273 + 1712), v274, v272, v589);
  v276 = 0;
  *(v12 + 733) = v275;
  v277 = -6;
  v278 = (v12 + 5200);
  do
  {
    if ((v277 + 6) <= 5 && ((1 << (v277 + 6)) & 0x27) != 0)
    {
      v279 = *(v278 - 6) + v276;
      v280 = v279 + *v278;
      v276 = v279 + ((*v278 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v276 = v280;
      }
    }

    ++v278;
    v244 = __CFADD__(v277++, 1);
  }

  while (!v244);
  *(v12 + 734) = llvm::ConstantInt::get();
  *(v12 + 735) = v519;
  v281 = llvm::ConstantInt::get();
  *(v12 + 736) = v281;
  v282 = v12 + *(*v12 - 24);
  v283 = *(v12 + 733);
  LOWORD(v591) = 257;
  v284 = llvm::IRBuilderBase::CreateAdd((v282 + 1712), v283, v281, v589);
  v285 = 0;
  *(v12 + 737) = v284;
  v286 = -6;
  v287 = (v12 + 5200);
  do
  {
    if ((v286 + 6) <= 5 && ((1 << (v286 + 6)) & 0x27) != 0)
    {
      v288 = *(v287 - 6) + v285;
      v289 = v288 + *v287;
      v285 = v288 + ((*v287 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v285 = v289;
      }
    }

    ++v287;
    v244 = __CFADD__(v286++, 1);
  }

  while (!v244);
  *(v12 + 738) = llvm::ConstantInt::get();
  *(v12 + 739) = v519;
  v290 = llvm::ConstantInt::get();
  *(v12 + 740) = v290;
  v291 = v12 + *(*v12 - 24);
  v292 = *(v12 + 737);
  LOWORD(v591) = 257;
  v293 = llvm::IRBuilderBase::CreateAdd((v291 + 1712), v292, v290, v589);
  v294 = 0;
  *(v12 + 741) = v293;
  v295 = -6;
  v296 = (v12 + 5200);
  do
  {
    if ((v295 + 6) <= 5 && ((1 << (v295 + 6)) & 0x27) != 0)
    {
      v297 = *(v296 - 6) + v294;
      v298 = v297 + *v296;
      v294 = v297 + ((*v296 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v294 = v298;
      }
    }

    ++v296;
    v244 = __CFADD__(v295++, 1);
  }

  while (!v244);
  *(v12 + 742) = llvm::ConstantInt::get();
  *(v12 + 743) = v519;
  v299 = llvm::ConstantInt::get();
  *(v12 + 744) = v299;
  v300 = v12 + *(*v12 - 24);
  v301 = *(v12 + 741);
  LOWORD(v591) = 257;
  v302 = llvm::IRBuilderBase::CreateAdd((v300 + 1712), v301, v299, v589);
  v303 = 0;
  *(v12 + 745) = v302;
  v304 = -6;
  v305 = (v12 + 5200);
  do
  {
    if ((v304 + 6) <= 5 && ((1 << (v304 + 6)) & 0x27) != 0)
    {
      v306 = *(v305 - 6) + v303;
      v307 = v306 + *v305;
      v303 = v306 + ((*v305 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v303 = v307;
      }
    }

    ++v305;
    v244 = __CFADD__(v304++, 1);
  }

  while (!v244);
  *(v12 + 746) = llvm::ConstantInt::get();
  *(v12 + 747) = v519;
  v308 = llvm::ConstantInt::get();
  *(v12 + 748) = v308;
  v309 = v12 + *(*v12 - 24);
  v310 = *(v12 + 745);
  LOWORD(v591) = 257;
  v311 = llvm::IRBuilderBase::CreateAdd((v309 + 1712), v310, v308, v589);
  v312 = 0;
  *(v12 + 749) = v311;
  v313 = -6;
  v314 = (v12 + 5200);
  do
  {
    if ((v313 + 6) <= 5 && ((1 << (v313 + 6)) & 0x27) != 0)
    {
      v315 = *(v314 - 6) + v312;
      v316 = v315 + *v314;
      v312 = v315 + ((*v314 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v312 = v316;
      }
    }

    ++v314;
    v244 = __CFADD__(v313++, 1);
  }

  while (!v244);
  *(v12 + 750) = llvm::ConstantInt::get();
  *(v12 + 751) = v519;
  v317 = llvm::ConstantInt::get();
  v318 = 0;
  *(v12 + 752) = v317;
  v319 = -6;
  v320 = (v12 + 5200);
  do
  {
    if ((v319 + 6) <= 5 && ((1 << (v319 + 6)) & 0x27) != 0)
    {
      v321 = *(v320 - 6) + v318;
      v322 = v321 + *v320;
      v318 = v321 + ((*v320 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v318 = v322;
      }
    }

    ++v320;
    v244 = __CFADD__(v319++, 1);
  }

  while (!v244);
  v510 = v12 + 5448;
  v323 = v12 + *(*v12 - 24);
  v324 = llvm::ConstantInt::get();
  v325 = v12 + *(*v12 - 24);
  v326 = llvm::ConstantInt::get();
  LOWORD(v591) = 257;
  Sub = llvm::IRBuilderBase::CreateSub((v325 + 1712), v528, v326, v589);
  LOWORD(v587) = 257;
  v328 = llvm::IRBuilderBase::CreateMul((v323 + 1712), v324, Sub, &v583);
  LOWORD(v539) = 257;
  v329 = llvm::IRBuilderBase::CreateAdd((v323 + 1712), v317, v328, &v535);
  v330 = 0;
  *(v12 + 752) = v329;
  v331 = -6;
  do
  {
    if ((v331 + 6) <= 5 && ((1 << (v331 + 6)) & 0x27) != 0)
    {
      v332 = *(v249 - 6) + v330;
      v333 = v332 + *v249;
      v330 = v332 + ((*v249 + 1) >> 1);
      if (v58[1000] != 1)
      {
        v330 = v333;
      }
    }

    ++v249;
    v244 = __CFADD__(v331++, 1);
  }

  while (!v244);
  *(v12 + 1314) += v330;
  v334 = v12 + *(*v12 - 24);
  v335 = llvm::ConstantInt::get();
  LOWORD(v591) = 257;
  v336 = llvm::IRBuilderBase::CreateMul((v334 + 1712), v335, v528, v589);
  v337 = v12 + *(*v12 - 24);
  v338 = *(v12 + 721);
  LOWORD(v591) = 257;
  *(v12 + 769) = llvm::IRBuilderBase::CreateAdd((v337 + 1712), v338, v336, v589);
  v339 = llvm::ConstantInt::get();
  *(v12 + 770) = v339;
  v340 = v58[1213];
  if (v58[1213])
  {
    v341 = v519;
  }

  else
  {
    v341 = v522;
  }

  *(v12 + 771) = v341;
  if (v340 == 1)
  {
    v342 = v12 + *(*v12 - 24);
    LOWORD(v591) = 257;
    v339 = llvm::IRBuilderBase::CreateMul((v342 + 1712), v339, v528, v589);
  }

  *(v12 + 772) = v339;
  if (v58[1152] == 1)
  {
    if (v58[1213] == 1)
    {
      ++*(v12 + 1314);
    }

    else
    {
      ++*v517;
    }
  }

  v343 = v12 + *(*v12 - 24);
  if (*(*(v343 + 271) + 1862) != 1)
  {
    v345 = *(v12 + 769);
    LOWORD(v591) = 257;
    *(v12 + 773) = llvm::IRBuilderBase::CreateAdd((v343 + 1712), v345, v339, v589);
    v346 = llvm::ConstantInt::get();
    *(v12 + 774) = v346;
    v347 = v58[1214];
    if (v58[1214])
    {
      v348 = v519;
    }

    else
    {
      v348 = v522;
    }

    *(v12 + 775) = v348;
    if (v347 == 1)
    {
      v349 = v12 + *(*v12 - 24);
      LOWORD(v591) = 257;
      v346 = llvm::IRBuilderBase::CreateMul((v349 + 1712), v346, v528, v589);
    }

    *(v12 + 776) = v346;
    if (v58[1153] == 1)
    {
      if (v58[1214] == 1)
      {
        ++*(v12 + 1314);
      }

      else
      {
        ++*v517;
      }
    }

    v357 = v12 + *(*v12 - 24);
    v358 = *(v12 + 773);
    LOWORD(v591) = 257;
    *(v12 + 777) = llvm::IRBuilderBase::CreateAdd((v357 + 1712), v358, v346, v589);
    v353 = llvm::ConstantInt::get();
    *(v12 + 778) = v353;
    v359 = v58[1215];
    if (v58[1215])
    {
      v360 = v519;
    }

    else
    {
      v360 = v522;
    }

    *(v12 + 779) = v360;
    if (v359 == 1)
    {
      v361 = v12 + *(*v12 - 24);
      LOWORD(v591) = 257;
      v353 = llvm::IRBuilderBase::CreateMul((v361 + 1712), v353, v528, v589);
    }

    *(v12 + 780) = v353;
    if (v58[1154] != 1)
    {
      goto LABEL_462;
    }

    if (v58[1215] == 1)
    {
      goto LABEL_460;
    }

LABEL_461:
    ++*v517;
    goto LABEL_462;
  }

  if (v58[1153])
  {
    v344 = 1;
  }

  else
  {
    v344 = v58[1154];
  }

  if (v58[1214])
  {
    v350 = 1;
  }

  else
  {
    v350 = v58[1215];
  }

  v351 = *(v12 + 769);
  LOWORD(v591) = 257;
  *(v12 + 773) = llvm::IRBuilderBase::CreateAdd((v343 + 1712), v351, v339, v589);
  v352 = llvm::ConstantInt::get();
  v353 = v352;
  *(v12 + 774) = v352;
  if (v350)
  {
    v354 = v519;
  }

  else
  {
    v354 = v522;
  }

  *(v12 + 775) = v354;
  if (v350)
  {
    v355 = v12 + *(*v12 - 24);
    LOWORD(v591) = 257;
    v353 = llvm::IRBuilderBase::CreateMul((v355 + 1712), v352, v528, v589);
    v356 = *(v12 + 775);
    *(v12 + 776) = v353;
    *(v58 + 2120) = *(v58 + 2088);
    *(v12 + 779) = v356;
    *(v12 + 780) = v353;
    if ((v344 & 1) == 0)
    {
      goto LABEL_462;
    }

LABEL_460:
    ++*(v12 + 1314);
    goto LABEL_462;
  }

  *(v12 + 776) = v352;
  *(v12 + 777) = *(v12 + 773);
  *(v12 + 778) = v352;
  *(v12 + 779) = v522;
  *(v12 + 780) = v352;
  if (v344)
  {
    goto LABEL_461;
  }

LABEL_462:
  v362 = v12 + *(*v12 - 24);
  v363 = *(v12 + 777);
  LOWORD(v591) = 257;
  *(v12 + 781) = llvm::IRBuilderBase::CreateAdd((v362 + 1712), v363, v353, v589);
  v364 = llvm::ConstantInt::get();
  *(v12 + 782) = v364;
  v365 = v58[1212];
  if (v58[1212])
  {
    v366 = v519;
  }

  else
  {
    v366 = v522;
  }

  *(v12 + 783) = v366;
  if (v365 == 1)
  {
    v367 = v12 + *(*v12 - 24);
    LOWORD(v591) = 257;
    v364 = llvm::IRBuilderBase::CreateMul((v367 + 1712), v364, v528, v589);
  }

  v368 = v12 + 5448;
  *(v12 + 784) = v364;
  v369 = *(v12 + 1315);
  if (!v369)
  {
LABEL_470:
    if (!v57)
    {
      goto LABEL_472;
    }

    goto LABEL_471;
  }

  if (v58[1212] == 1)
  {
    *(v12 + 1314) += v369;
    goto LABEL_470;
  }

  *v517 += v369;
  if (v57)
  {
LABEL_471:
    v370 = v12 + *(*v12 - 24);
    v371 = *(v12 + 681);
    v372 = *(v12 + 683);
    v373 = *(v12 + 682);
    LOWORD(v591) = 257;
    v374 = llvm::IRBuilderBase::CreateMul((v370 + 1712), v372, v373, v589);
    LOWORD(v587) = 257;
    v375 = llvm::IRBuilderBase::CreateAdd((v370 + 1712), v371, v374, &v583);
    AGCLLVMUserVertexShader::replaceOutputUses(v12, v57, v375, 0, v58[1212], 4u);
  }

LABEL_472:
  v376 = *(v12 + 1142);
  if (v376)
  {
    v377 = 0;
    v518 = 0;
    v520 = 0;
    v523 = 0;
    v378 = 0;
    v379 = *(v12 + 570);
    v513 = v379 + (v376 << 6);
    do
    {
      if (v524[1000] == 1)
      {
        v380 = *(v379 + 56);
      }

      else
      {
        v380 = 0;
      }

      v381 = *(v379 + 16);
      if (v581)
      {
        v382 = v580;
        v383 = v581;
        do
        {
          v384 = v383 >> 1;
          v385 = &v382[2 * (v383 >> 1)];
          v387 = *v385;
          v386 = v385 + 4;
          v383 += ~(v383 >> 1);
          if (v387 < v381)
          {
            v382 = v386;
          }

          else
          {
            v383 = v384;
          }
        }

        while (v383);
      }

      else
      {
        v382 = v580;
      }

      if (v382 != (v580 + 16 * v581) && *v382 == v381)
      {
        v529 = v378;
        v388 = *(*v12 - 24);
        v526 = *(v379 + 60);
        v389 = &v368[32 * v526];
        v391 = v389[1];
        v390 = v389[2];
        v392 = *v389;
        LOWORD(v591) = 257;
        v393 = llvm::IRBuilderBase::CreateMul(&v514[v388], v390, v391, v589);
        LOWORD(v587) = 257;
        v394 = llvm::IRBuilderBase::CreateAdd(&v514[v388], v392, v393, &v583);
        v395 = v382[1];
        if ((v380 & 1) == 0)
        {
          v398 = v12 + *(*v12 - 24);
          v399 = llvm::ConstantInt::get();
          LOWORD(v591) = 257;
          v400 = llvm::IRBuilderBase::CreateAdd((v398 + 1712), v394, v399, v589);
          AGCLLVMUserVertexShader::replaceOutputUses(v12, v395, v400, 1, *(v379 + 57), *v379);
          goto LABEL_509;
        }

        v584 = 0;
        v585 = 0;
        v586 = 0;
        v583 = v395;
        if (*v395)
        {
          v396 = *(*v395 + 8) == 18;
        }

        else
        {
          v396 = 0;
        }

        if (!v396)
        {
          v397 = 1;
LABEL_498:
          v516 = v394;
          v401 = *(v379 + 52);
          v402 = v397;
          v403 = &v583;
          while (2)
          {
            v404 = v530;
            v405 = v530 + *(*v530 - 24);
            v406 = llvm::ConstantInt::get();
            LOWORD(v591) = 257;
            v408 = llvm::IRBuilderBase::CreateAdd((v405 + 1712), v394, v406, v589);
            v409 = *v403;
            v410 = *(v379 + 57);
            if (v529)
            {
              v411 = *(*v530 - 24);
              if (v377 == v526 && v518 == (v401 & 0xFFFFFFFE))
              {
                v412 = &v515[v411];
                LOWORD(v591) = 257;
                v413 = llvm::ConstantInt::get();
                InsertElement = llvm::IRBuilderBase::CreateInsertElement((v412 + 8), v529, v409, v413, v589);
                if (InsertElement)
                {
                  v415 = v530 + *(*v530 - 24);
                  v416 = *(v415 + 238);
                  LOWORD(v591) = 257;
                  v417 = llvm::IRBuilderBase::CreateCast((v415 + 1712), 49, InsertElement, v416, v589);
                  AGCLLVMUserVertexShader::replaceOutputUses(v530, v417, v523, 1, v520 & 1, 4u);
                  v529 = 0;
                  v523 = 0;
                }

                else
                {
                  v529 = 0;
                }

LABEL_506:
                v394 = v516;
                ++v401;
                ++v403;
                v377 = v526;
                if (!--v402)
                {
                  v377 = v526;
                  v12 = v530;
                  v368 = v510;
                  goto LABEL_509;
                }

                continue;
              }

              v404 = v530;
              v418 = v530 + v411;
              v419 = *(v418 + 238);
              LOWORD(v591) = 257;
              v420 = llvm::IRBuilderBase::CreateCast((v418 + 1712), 49, v529, v419, v589);
              AGCLLVMUserVertexShader::replaceOutputUses(v530, v420, v523, 1, v520 & 1, 4u);
            }

            break;
          }

          v421 = (v404 + *(*v404 - 24));
          v422 = llvm::Constant::getNullValue(v421[240], v407);
          LOWORD(v591) = 257;
          v423 = llvm::ConstantInt::get();
          v529 = llvm::IRBuilderBase::CreateInsertElement((v421 + 214), v422, v409, v423, v589);
          v523 = v408;
          v520 = v410;
          v518 = v401;
          goto LABEL_506;
        }

        if (*v379 >= *(*v395 + 32))
        {
          v397 = *(*v395 + 32);
        }

        else
        {
          v397 = *v379;
        }

        AGCLLVMBuilder::unboxVector(&v515[*(*v12 - 24)], v395, &v583);
        if (v397)
        {
          goto LABEL_498;
        }

LABEL_509:
        v378 = v529;
      }

      v379 += 64;
    }

    while (v379 != v513);
    v58 = v524;
    if (v378)
    {
      v424 = v12 + *(*v12 - 24);
      v425 = *(v424 + 238);
      LOWORD(v591) = 257;
      v426 = llvm::IRBuilderBase::CreateCast((v424 + 1712), 49, v378, v425, v589);
      AGCLLVMUserVertexShader::replaceOutputUses(v12, v426, v523, 1, v520 & 1, 4u);
    }
  }

  v427 = *v12;
  if (*(v12 + 1352) && *(*(v12 + *(v427 - 24) + 2168) + 1849) == 1)
  {
    v589[0] = "return_block";
    LOWORD(v591) = 259;
    llvm::BasicBlock::splitBasicBlock();
    v589[0] = "tf_write_block";
    LOWORD(v591) = 259;
    operator new();
  }

  llvm::IRBuilderBase::SetInsertPoint((v12 + *(v427 - 24) + 1712), v512);
  if (v58[1152] == 1)
  {
    v428 = (*(*v12 + 552))(v12, v507);
    v429 = llvm::ConstantFP::get();
    v430 = v12 + *(*v12 - 24);
    v431 = *(v430 + 271);
    v531 = *(v430 + 110);
    llvm::IRBuilderBase::getCurrentDebugLocation(&v532, (v430 + 1712));
    v533 = *(v430 + 452);
    v432 = (*(*v431 + 48))(v431, &v531, v428, v429, 0);
    if (v532)
    {
      llvm::MetadataTracking::untrack();
    }

    v433 = v12 + *(*v12 - 24);
    v434 = *(v12 + 769);
    v435 = *(v12 + 771);
    v436 = *(v12 + 770);
    LOWORD(v591) = 257;
    v437 = llvm::IRBuilderBase::CreateMul((v433 + 1712), v435, v436, v589);
    LOWORD(v587) = 257;
    v438 = llvm::IRBuilderBase::CreateAdd((v433 + 1712), v434, v437, &v583);
    AGCLLVMUserVertexShader::replaceOutputUses(v12, v432, v438, 2, v58[1213], 4u);
  }

  v439 = *v12;
  v440 = v12 + *(*v12 - 24);
  v441 = *(v440 + 271);
  if (*(v441 + 1862) == 1)
  {
    if ((v58[1153] & 1) != 0 || v58[1154] == 1)
    {
      v442 = llvm::ConstantInt::get();
      if (v58[1153] == 1)
      {
        v443 = v12 + *(*v12 - 24);
        v444 = *(v443 + 238);
        if (*NullValue == v444)
        {
          v462 = llvm::ConstantInt::get();
          v445 = AGCLLVMBuilder::buildICmpSel((v443 + 1704), NullValue, v462, 36);
        }

        else
        {
          LOWORD(v591) = 257;
          v445 = llvm::IRBuilderBase::CreateCast((v443 + 1712), 39, NullValue, v444, v589);
        }

        v463 = v445;
        v464 = AGCLLVMUserVertexShader::getDriverGlobalConstant(v12, 0x6Cu, v446);
        v465 = v12 + *(*v12 - 24);
        LOWORD(v591) = 257;
        Shl = llvm::IRBuilderBase::CreateShl((v465 + 1712), v463, v464, v589);
        v467 = v12 + *(*v12 - 24);
        LOWORD(v591) = 257;
        v468 = llvm::ConstantInt::get();
        v442 = llvm::IRBuilderBase::CreateShl((v467 + 1712), Shl, v468, v589);
      }

      v469 = v442;
      if (v58[1154] == 1)
      {
        v470 = v12 + *(*v12 - 24);
        v471 = *(v470 + 238);
        if (*v509 == v471)
        {
          v474 = llvm::ConstantInt::get();
          v472 = AGCLLVMBuilder::buildICmpSel((v470 + 1704), v509, v474, 36);
        }

        else
        {
          LOWORD(v591) = 257;
          v472 = llvm::IRBuilderBase::CreateCast((v470 + 1712), 39, v509, v471, v589);
        }

        v475 = v472;
        v476 = AGCLLVMUserVertexShader::getDriverGlobalConstant(v12, 0x6Cu, v473);
        v477 = v12 + *(*v12 - 24);
        LOWORD(v591) = 257;
        v478 = llvm::IRBuilderBase::CreateAnd((v477 + 1712), v475, v476, v589);
        v479 = v12 + *(*v12 - 24);
        LOWORD(v591) = 257;
        v480 = llvm::ConstantInt::get();
        v481 = llvm::IRBuilderBase::CreateShl((v479 + 1712), v478, v480, v589);
        v482 = v12 + *(*v12 - 24);
        LOWORD(v591) = 257;
        v483 = llvm::IRBuilderBase::CreateAdd((v482 + 1712), v469, v481, v589);
        v484 = v12 + *(*v12 - 24);
        LOWORD(v591) = 257;
        v469 = llvm::IRBuilderBase::CreateOr((v484 + 1712), v483, v475, v589);
      }

      v485 = v12 + *(*v12 - 24);
      v486 = *(v12 + 773);
      v487 = *(v12 + 775);
      v488 = *(v12 + 774);
      LOWORD(v591) = 257;
      v489 = llvm::IRBuilderBase::CreateMul((v485 + 1712), v487, v488, v589);
      LOWORD(v587) = 257;
      v457 = llvm::IRBuilderBase::CreateAdd((v485 + 1712), v486, v489, &v583);
      if (v58[1214])
      {
        v490 = 1;
      }

      else
      {
        v490 = v58[1215];
      }

      v458 = v490 & 1;
      v459 = v12;
      v460 = v469;
      v461 = 4;
LABEL_545:
      AGCLLVMUserVertexShader::replaceOutputUses(v459, v460, v457, v461, v458, 4u);
    }
  }

  else
  {
    if (*(v441 + 1860) == 1 && v58[1153] == 1)
    {
      v447 = *(v12 + 773);
      v448 = *(v12 + 775);
      v449 = *(v12 + 774);
      LOWORD(v591) = 257;
      v450 = llvm::IRBuilderBase::CreateMul((v440 + 1712), v448, v449, v589);
      LOWORD(v587) = 257;
      v451 = llvm::IRBuilderBase::CreateAdd((v440 + 1712), v447, v450, &v583);
      AGCLLVMUserVertexShader::replaceOutputUses(v12, NullValue, v451, 4, v58[1214], 4u);
      v439 = *v12;
    }

    v452 = v12 + *(v439 - 24);
    if (*(*(v452 + 271) + 1861) == 1 && v58[1154] == 1)
    {
      v453 = *(v12 + 777);
      v454 = *(v12 + 779);
      v455 = *(v12 + 778);
      LOWORD(v591) = 257;
      v456 = llvm::IRBuilderBase::CreateMul((v452 + 1712), v454, v455, v589);
      LOWORD(v587) = 257;
      v457 = llvm::IRBuilderBase::CreateAdd((v452 + 1712), v453, v456, &v583);
      v458 = v58[1215];
      v459 = v12;
      v460 = v509;
      v461 = 5;
      goto LABEL_545;
    }
  }

  v491 = 0;
  v492 = 0;
  v493 = 1;
  do
  {
    if ((*(v12 + 1316) & v493) != 0)
    {
      v494 = llvm::ConstantInt::get();
      v495 = *(*v12 - 24);
      v496 = *(v12 + 781);
      v497 = *(v12 + 783);
      v498 = *(v12 + 782);
      LOWORD(v591) = 257;
      v499 = llvm::IRBuilderBase::CreateMul(&v514[v495], v497, v498, v589);
      LOWORD(v587) = 257;
      v500 = llvm::IRBuilderBase::CreateAdd(&v514[v495], v496, v499, &v583);
      LOWORD(v539) = 257;
      v501 = llvm::IRBuilderBase::CreateAdd(&v514[v495], v494, v500, &v535);
      AGCLLVMUserVertexShader::replaceOutputUses(v12, *(v576 + v491), v501, 3, v524[1212], 4u);
      ++v492;
    }

    v493 *= 2;
    v491 += 8;
  }

  while (v491 != 64);
  if (v506)
  {
    EraseInstructionChain(v506);
  }

  v502 = v512 + 3;
  if (!v512)
  {
    v502 = 0;
  }

  llvm::IRBuilderBase::SetInsertPoint(v12 + *(*v12 - 24) + 1712, v512[5], v502[1]);
  llvm::Instruction::eraseFromParent(v512);
  llvm::Function::eraseFromParent(v505);
  v503 = 384;
  do
  {
    if (*(&v537 + v503 + 7) < 0)
    {
      operator delete(*(&v535 + v503));
    }

    v503 -= 96;
  }

  while (v503);
  v75 = 1;
LABEL_559:
  if (v574[0] != v575)
  {
    free(v574[0]);
  }

  if (v577 != v579)
  {
    free(v577);
  }

  if (v580 != v582)
  {
    free(v580);
  }

  return v75;
}

uint64_t llvm::SmallVectorImpl<unsigned int>::append(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 + a2 > *(result + 12))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (a2)
  {
    v3 = 0;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = (*result + 4 * v2 + 8);
    do
    {
      v6 = vdupq_n_s64(v3);
      v7 = vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_20E70C4F0)));
      if (vuzp1_s16(v7, *v4.i8).u8[0])
      {
        *(v5 - 2) = -1;
      }

      if (vuzp1_s16(v7, *&v4).i8[2])
      {
        *(v5 - 1) = -1;
      }

      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, vorrq_s8(v6, xmmword_20E70C4E0)))).i32[1])
      {
        *v5 = -1;
        v5[1] = -1;
      }

      v3 += 4;
      v5 += 4;
    }

    while (((a2 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v3);
    LODWORD(v2) = *(result + 8);
  }

  *(result + 8) = v2 + a2;
  return result;
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  String = llvm::MDString::getString(*(a4 - 8 * *(a4 + 8) + 8));
  v13 = v12;
  v14 = *(*(a2 + 16) + 8 * a3);
  ComponentType = AGCLLVMBuilder::getComponentType((a1 + *(*a1 - 24) + 1704), v14, &v18);
  if ((*(v14 + 2) & 0xFE) == 0x12)
  {
    v16 = *(v14 + 8);
  }

  else
  {
    v16 = 1;
  }

  return AGCLLVMAGPVertexShader::getGenericVaryingInfo(a1, ComponentType, v16, String, v13, a5, v6);
}

uint64_t AGCLLVMBuilder::getComponentType(int8x16_t *this, const llvm::Type *a2, unsigned int *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 1;
  if ((*(a2 + 2) & 0xFE) == 0x12)
  {
    *a3 = *(a2 + 8);
    a2 = **(a2 + 2);
  }

  result = 0;
  v5 = this[9].i64[1];
  v6 = this[11].i64[0];
  v7[0] = this[10].i64[1];
  v7[1] = v5;
  v7[2] = v6;
  v8 = vextq_s8(this[12], this[12], 8uLL);
  v9 = this[11].i64[1];
  while (a2 != v7[result])
  {
    if (++result == 6)
    {
      return 10;
    }
  }

  return result;
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(uint64_t a1, int a2, unsigned int a3, void *a4, size_t a5, uint64_t a6, int a7)
{
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v15 = Key;
  if (Key == *(a1 + 9800))
  {
    return 0;
  }

  v16 = *(a1 + 9792);
  v17 = *(*(v16 + 8 * Key) + 8);
  if (a2 != BYTE2(v17))
  {
    return 0;
  }

  if ((HIBYTE(v17) & 0x7F) != a3)
  {
    a3 = HIBYTE(v17) & 0x7F;
    if (*(a1 + 10417) != 1)
    {
      return 0;
    }
  }

  v18 = *(a1 + 9828) + 1;
  *(a1 + 9828) = v18;
  GenericVarying::GenericVarying(&v21, a3, a2, v17 & 0xF, BYTE1(v17), v18, a7);
  *a6 = v21;
  *(a6 + 16) = v22;
  if (*(a6 + 47) < 0)
  {
    operator delete(*(a6 + 24));
  }

  *(a6 + 24) = v23;
  *(a6 + 40) = v24;
  *(a6 + 48) = v25;
  if (a4)
  {
    std::string::basic_string[abi:nn200100](&v21, a4, a5);
  }

  else
  {
    v21 = 0uLL;
    v22 = 0;
  }

  if (*(a6 + 47) < 0)
  {
    operator delete(*(a6 + 24));
  }

  *(a6 + 24) = v21;
  *(a6 + 40) = v22;
  v20 = *(v16 + 8 * v15);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(*v20, v20, *v20 + 17);
  return 1;
}

uint64_t AGCLLVMAGPVertexShader::isPointSizePresent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 9826);
  }

  return v2 & 1;
}

uint64_t AGCLLVMAGPVertexShader::getGenericVaryingInfo(uint64_t a1, void *a2, size_t a3, uint64_t a4, int a5)
{
  Key = llvm::StringMapImpl::FindKey();
  if (Key == -1)
  {
    return 0;
  }

  v11 = Key;
  if (Key == *(a1 + 9800))
  {
    return 0;
  }

  v12 = *(a1 + 9792);
  v13 = *(*(v12 + 8 * Key) + 10);
  if ((v13 - 2) > 3)
  {
    return 0;
  }

  v14 = *(a1 + 9828) + 1;
  *(a1 + 9828) = v14;
  if (a5)
  {
    v15 = 11;
  }

  else
  {
    v15 = 2;
  }

  *a4 = 1;
  *(a4 + 4) = v13;
  *(a4 + 8) = 0x300000001;
  *(a4 + 16) = v14;
  if (*(a4 + 47) < 0)
  {
    operator delete(*(a4 + 24));
  }

  *(a4 + 56) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 57) = a5;
  *(a4 + 58) = 0;
  *(a4 + 60) = v15;
  if (a2)
  {
    std::string::basic_string[abi:nn200100](&__dst, a2, a3);
    if (*(a4 + 47) < 0)
    {
      operator delete(*(a4 + 24));
    }
  }

  else
  {
    __dst = 0uLL;
    v19 = 0;
  }

  *(a4 + 24) = __dst;
  *(a4 + 40) = v19;
  v17 = *(v12 + 8 * v11);
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(*v17, v17, *v17 + 17);
  return 1;
}

uint64_t AGCLLVMAGPVertexShader::getNextUnlinkedVarying(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 9824) != 1)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  if (!*(a1 + 9804))
  {
    return 0;
  }

  v5 = *(a1 + 9792);
  if (*(a1 + 9800))
  {
    while (1)
    {
      v6 = *v5;
      if (*v5 && v6 + 1 != 0)
      {
        break;
      }

      ++v5;
    }
  }

  else
  {
    v6 = *v5;
  }

  v8 = *(v6 + 2);
  v9 = BYTE2(v8);
  v10 = HIBYTE(v8) & 0x7F;
  v11 = v8 & 0xF;
  v12 = BYTE1(v8);
  v13 = *(a1 + 9828) + 1;
  *(a1 + 9828) = v13;
  v14 = v9 == 1;
  if (v9 == 1)
  {
    v15 = 7;
  }

  else
  {
    v15 = 3;
  }

  if (v9 == 1)
  {
    v16 = 19;
  }

  else
  {
    v16 = 18;
  }

  if (v9 == 1)
  {
    v17 = 8;
  }

  else
  {
    v17 = 4;
  }

  if (v11 != 5)
  {
    v17 = v12;
  }

  if (v11 != 3)
  {
    v16 = v17;
  }

  if (v11 != 2)
  {
    v15 = v16;
  }

  if (v9 == 1)
  {
    v18 = 5;
  }

  else
  {
    v18 = 1;
  }

  if (v9 == 1)
  {
    v19 = 6;
  }

  else
  {
    v19 = 2;
  }

  if (v11 != 1)
  {
    v19 = v12;
  }

  if (v11)
  {
    v18 = v19;
  }

  if (v11 <= 1)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *a2 = v10;
  *(a2 + 4) = v9;
  *(a2 + 8) = v11;
  *(a2 + 12) = v12;
  *(a2 + 16) = v13;
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 56) = v14;
  *(a2 + 57) = 0;
  *(a2 + 60) = v20;
  std::string::basic_string[abi:nn200100](&__dst, *v5 + 2, **v5);
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = __dst;
  *(a2 + 40) = v24;
  v21 = *v5;
  llvm::StringMapImpl::RemoveKey();
  llvm::deallocate_buffer(*v21, v21, (*v21 + 17));
  return 1;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,false>(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = a2 - 4;
  k = v7;
  while (1)
  {
    v7 = k;
    v10 = (a2 - k) >> 4;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          return std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(k, (k + 16), a2 - 4);
        case 4:
          result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(k, (k + 16), (k + 32));
          v44 = *v8;
          v45 = *(k + 32);
          if (*v8 >= v45)
          {
            if (v45 < v44)
            {
              return result;
            }

            v47 = *(a2 - 1);
            v46 = *(k + 40);
            if (v47 >= v46)
            {
              return result;
            }
          }

          else
          {
            v46 = *(k + 40);
            v47 = *(a2 - 1);
          }

          *(k + 32) = v44;
          *(a2 - 4) = v45;
          *(k + 40) = v47;
          *(a2 - 1) = v46;
          v48 = *(k + 32);
          v49 = *(k + 16);
          if (v48 >= v49)
          {
            if (v49 < v48)
            {
              return result;
            }

            v51 = *(k + 40);
            v50 = *(k + 24);
            if (v51 >= v50)
            {
              return result;
            }
          }

          else
          {
            v50 = *(k + 24);
            v51 = *(k + 40);
          }

          *(k + 16) = v48;
          *(k + 32) = v49;
          *(k + 24) = v51;
          *(k + 40) = v50;
          v52 = *k;
          if (v48 >= *k)
          {
            if (v52 < v48)
            {
              return result;
            }

            v53 = *(k + 8);
            if (v51 >= v53)
            {
              return result;
            }
          }

          else
          {
            v53 = *(k + 8);
          }

          *k = v48;
          *(k + 16) = v52;
          *(k + 8) = v51;
          *(k + 24) = v53;
          return result;
        case 5:

          return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(k, k + 16, k + 32, k + 48, a2 - 4);
      }
    }

    else
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v54 = *v8;
        v55 = *k;
        if (*v8 >= *k)
        {
          if (v55 < v54)
          {
            return result;
          }

          v57 = *(a2 - 1);
          v56 = *(k + 8);
          if (v57 >= v56)
          {
            return result;
          }
        }

        else
        {
          v56 = *(k + 8);
          v57 = *(a2 - 1);
        }

        *k = v54;
        *(a2 - 4) = v55;
        *(k + 8) = v57;
        *(a2 - 1) = v56;
        return result;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (k == a2)
      {
        return result;
      }

      v73 = (v10 - 2) >> 1;
      v74 = v73;
      while (1)
      {
        v75 = v74;
        if (v73 >= v74)
        {
          v76 = (2 * v74) | 1;
          v77 = k + 16 * v76;
          if (2 * v75 + 2 < v10)
          {
            v78 = *(v77 + 16);
            if (*v77 < v78 || v78 >= *v77 && *(v77 + 8) < *(v77 + 24))
            {
              v77 += 16;
              v76 = 2 * v75 + 2;
            }
          }

          v79 = k + 16 * v75;
          v80 = *v77;
          v81 = *v79;
          if (*v77 >= *v79)
          {
            if (v81 < v80)
            {
              v82 = *(v79 + 8);
              v83 = *(v77 + 8);
LABEL_147:
              *v79 = v80;
              *(v79 + 8) = v83;
              if (v73 >= v76)
              {
                while (1)
                {
                  v85 = 2 * v76;
                  v76 = (2 * v76) | 1;
                  v84 = k + 16 * v76;
                  v86 = v85 + 2;
                  if (v86 < v10)
                  {
                    result = *(v84 + 16);
                    if (*v84 < result || result >= *v84 && (result = *(v84 + 8), result < *(v84 + 24)))
                    {
                      v84 += 16;
                      v76 = v86;
                    }
                  }

                  v87 = *v84;
                  if (*v84 < v81)
                  {
                    break;
                  }

                  v88 = *(v84 + 8);
                  if (v81 >= v87 && v88 < v82)
                  {
                    break;
                  }

                  *v77 = v87;
                  *(v77 + 8) = v88;
                  v77 = v84;
                  if (v73 < v76)
                  {
                    goto LABEL_149;
                  }
                }
              }

              v84 = v77;
LABEL_149:
              *v84 = v81;
              *(v84 + 8) = v82;
              goto LABEL_150;
            }

            v83 = *(v77 + 8);
            v82 = *(v79 + 8);
            if (v83 >= v82)
            {
              goto LABEL_147;
            }
          }
        }

LABEL_150:
        v74 = v75 - 1;
        if (!v75)
        {
          while (1)
          {
            v92 = 0;
            v93 = *k;
            v94 = *(k + 8);
            v95 = k;
            do
            {
              v96 = v95;
              v97 = v95 + 16 * v92;
              v95 = v97 + 16;
              v98 = 2 * v92;
              v92 = (2 * v92) | 1;
              v99 = v98 + 2;
              if (v99 < v10)
              {
                result = *(v97 + 32);
                v100 = *(v97 + 16);
                if (v100 < result || result >= v100 && (result = *(v97 + 24), result < *(v97 + 40)))
                {
                  v95 = v97 + 32;
                  v92 = v99;
                }
              }

              *v96 = *v95;
              *(v96 + 8) = *(v95 + 8);
            }

            while (v92 <= (v10 - 2) / 2);
            if (v95 == a2 - 4)
            {
              *v95 = v93;
              *(v95 + 8) = v94;
            }

            else
            {
              *v95 = *(a2 - 4);
              *(v95 + 8) = *(a2 - 1);
              *(a2 - 4) = v93;
              *(a2 - 1) = v94;
              v101 = (v95 - k + 16) >> 4;
              v102 = v101 - 2;
              if (v101 >= 2)
              {
                v103 = v102 >> 1;
                v104 = k + 16 * (v102 >> 1);
                v105 = *v104;
                v106 = *v95;
                if (*v104 < *v95)
                {
                  v91 = *(v95 + 8);
                  v90 = *(v104 + 8);
LABEL_179:
                  *v95 = v105;
                  *(v95 + 8) = v90;
                  if (v102 >= 2)
                  {
                    while (1)
                    {
                      v108 = v103 - 1;
                      v103 = (v103 - 1) >> 1;
                      v107 = k + 16 * v103;
                      v109 = *v107;
                      if (*v107 >= v106)
                      {
                        if (v106 < v109)
                        {
                          break;
                        }

                        v110 = *(v107 + 8);
                        if (v110 >= v91)
                        {
                          break;
                        }
                      }

                      else
                      {
                        v110 = *(v107 + 8);
                      }

                      *v104 = v109;
                      *(v104 + 8) = v110;
                      v104 = k + 16 * v103;
                      if (v108 <= 1)
                      {
                        goto LABEL_186;
                      }
                    }
                  }

                  v107 = v104;
LABEL_186:
                  *v107 = v106;
                  *(v107 + 8) = v91;
                  goto LABEL_188;
                }

                if (v106 >= v105)
                {
                  v90 = *(v104 + 8);
                  v91 = *(v95 + 8);
                  if (v90 < v91)
                  {
                    goto LABEL_179;
                  }
                }
              }
            }

LABEL_188:
            a2 -= 4;
            if (v10-- <= 2)
            {
              return result;
            }
          }
        }
      }
    }

    v11 = v10 >> 1;
    v12 = k + 16 * (v10 >> 1);
    if (v10 < 0x81)
    {
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v7 + 16 * (v10 >> 1)), v7, a2 - 4);
    }

    else
    {
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(v7, (v7 + 16 * (v10 >> 1)), a2 - 4);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v7 + 16), (v12 - 16), a2 - 8);
      std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v7 + 32), (v7 + 16 + 16 * v11), a2 - 12);
      result = std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>((v12 - 16), v12, (v7 + 16 + 16 * v11));
      v13 = *v7;
      *v7 = *v12;
      *v12 = v13;
      v14 = *(v7 + 8);
      *(v7 + 8) = *(v12 + 8);
      *(v12 + 8) = v14;
    }

    --a3;
    v15 = *v7;
    if ((a4 & 1) != 0 || (v16 = *(v7 - 16), v16 < v15))
    {
LABEL_19:
      v18 = *(v7 + 8);
      for (i = v7 + 16; ; i += 16)
      {
        v20 = *i;
        if (*i >= v15 && (v15 < v20 || *(i + 8) >= v18))
        {
          break;
        }
      }

      if (i - 16 == v7)
      {
        j = a2;
        if (i < a2)
        {
          v24 = *v8;
          j = a2 - 4;
          if (*v8 >= v15)
          {
            j = a2 - 4;
            do
            {
              if (v15 >= v24)
              {
                if (*(j + 1) < v18 || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v26 = *(j - 4);
              j -= 4;
              v24 = v26;
            }

            while (v26 >= v15);
          }
        }
      }

      else
      {
        v21 = *v8;
        for (j = a2 - 4; v21 >= v15 && (v15 < v21 || *(j + 1) >= v18); j -= 4)
        {
          v23 = *(j - 4);
          v21 = v23;
        }
      }

      k = i;
      if (i < j)
      {
        v27 = *j;
        k = i;
        v28 = j;
        do
        {
          *k = v27;
          *v28 = v20;
          v29 = *(k + 8);
          *(k + 8) = *(v28 + 1);
          *(v28 + 1) = v29;
          do
          {
            do
            {
              v30 = *(k + 16);
              k += 16;
              v20 = v30;
            }

            while (v30 < v15);
          }

          while (v15 >= v20 && *(k + 8) < v18);
          do
          {
            v31 = *(v28 - 4);
            v28 -= 4;
            v27 = v31;
          }

          while (v31 >= v15 && (v15 < v27 || *(v28 + 1) >= v18));
        }

        while (k < v28);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      *(k - 16) = v15;
      *(k - 8) = v18;
      if (i < j)
      {
LABEL_56:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,false>(v7, (k - 16), a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v32 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *>(v7, k - 16);
        result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *>(k, a2);
        if (result)
        {
          a2 = (k - 16);
          if (v32)
          {
            return result;
          }

          goto LABEL_2;
        }

        if (!v32)
        {
          goto LABEL_56;
        }
      }
    }

    else
    {
      if (v15 < v16)
      {
        v17 = *(v7 + 8);
      }

      else
      {
        v17 = *(v7 + 8);
        if (*(v7 - 8) < v17)
        {
          goto LABEL_19;
        }
      }

      v33 = *v8;
      if (v15 < *v8 || v33 >= v15 && v17 < *(a2 - 1))
      {
        k = v7;
        do
        {
          v35 = *(k + 16);
          k += 16;
          v34 = v35;
        }

        while (v15 >= v35 && (v34 < v15 || v17 >= *(k + 8)));
      }

      else
      {
          ;
        }
      }

      m = a2;
      if (k < a2)
      {
        for (m = a2 - 4; v15 < v33 || v33 >= v15 && v17 < *(m + 1); m -= 4)
        {
          v37 = *(m - 4);
          v33 = v37;
        }
      }

      if (k < m)
      {
        v38 = *k;
        v39 = *m;
        do
        {
          *k = v39;
          *m = v38;
          v40 = *(k + 16);
          k += 16;
          v38 = v40;
          v41 = *(k - 8);
          *(k - 8) = *(m + 1);
          *(m + 1) = v41;
          while (v15 >= v38 && (v38 < v15 || v17 >= *(k + 8)))
          {
            v42 = *(k + 16);
            k += 16;
            v38 = v42;
          }

          do
          {
            do
            {
              v43 = *(m - 4);
              m -= 4;
              v39 = v43;
            }

            while (v15 < v43);
          }

          while (v39 >= v15 && v17 < *(m + 1));
        }

        while (k < m);
      }

      if (k - 16 != v7)
      {
        *v7 = *(k - 16);
        *(v7 + 8) = *(k - 8);
      }

      a4 = 0;
      *(k - 16) = v15;
      *(k - 8) = v17;
    }
  }

  v58 = (k + 16);
  v60 = k == a2 || v58 == a2;
  if ((a4 & 1) == 0)
  {
    if (v60)
    {
      return result;
    }

    while (1)
    {
      v112 = v7;
      v7 = v58;
      v113 = *(v112 + 16);
      v114 = *v112;
      if (v113 < *v112)
      {
        break;
      }

      if (v114 >= v113)
      {
        v115 = *(v112 + 24);
        if (v115 < *(v112 + 8))
        {
          goto LABEL_200;
        }
      }

LABEL_206:
      v58 = (v7 + 16);
      if ((v7 + 16) == a2)
      {
        return result;
      }
    }

    v115 = *(v112 + 24);
    do
    {
      do
      {
LABEL_200:
        v116 = v112;
        v117 = v114;
        v118 = *(v112 - 16);
        v112 -= 16;
        v114 = v118;
        *(v112 + 32) = v117;
        *(v112 + 40) = *(v112 + 24);
      }

      while (v113 < v118);
    }

    while (v114 >= v113 && v115 < *(v116 - 8));
    *v116 = v113;
    *(v116 + 8) = v115;
    goto LABEL_206;
  }

  if (v60)
  {
    return result;
  }

  v61 = 0;
  v62 = k;
  while (2)
  {
    v63 = v62;
    v62 = v58;
    v64 = *(v63 + 16);
    v65 = *v63;
    if (v64 >= *v63)
    {
      if (v65 < v64)
      {
        goto LABEL_133;
      }

      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
      if (v66 >= v67)
      {
        goto LABEL_133;
      }
    }

    else
    {
      v66 = *(v63 + 24);
      v67 = *(v63 + 8);
    }

    *(v63 + 16) = v65;
    *(v62 + 8) = v67;
    v68 = k;
    if (v63 == k)
    {
      goto LABEL_132;
    }

    v69 = v61;
    while (2)
    {
      v70 = *(k + v69 - 16);
      if (v64 < v70)
      {
        v71 = *(k + v69 - 8);
        goto LABEL_126;
      }

      if (v70 >= v64)
      {
        v68 = k + v69;
        v71 = *(k + v69 - 8);
        if (v66 >= v71)
        {
          goto LABEL_132;
        }

LABEL_126:
        v63 -= 16;
        v72 = k + v69;
        *v72 = v70;
        *(v72 + 8) = v71;
        v69 -= 16;
        if (!v69)
        {
          v68 = k;
          goto LABEL_132;
        }

        continue;
      }

      break;
    }

    v68 = v63;
LABEL_132:
    *v68 = v64;
    *(v68 + 8) = v66;
LABEL_133:
    v58 = (v62 + 16);
    v61 += 16;
    if ((v62 + 16) != a2)
    {
      continue;
    }

    return result;
  }
}

unsigned int *std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned int,llvm::Value *> *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *result;
  if (*a2 < *result || v4 >= v3 && *(a2 + 1) < *(result + 1))
  {
    v5 = *a3;
    if (*a3 < v3)
    {
      v6 = *(a3 + 1);
LABEL_4:
      *result = v5;
      *a3 = v4;
      v7 = *(result + 1);
      *(result + 1) = v6;
      *(a3 + 1) = v7;
      return result;
    }

    if (v3 >= v5)
    {
      v6 = *(a3 + 1);
      v15 = *(a2 + 1);
      if (v6 < v15)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v15 = *(a2 + 1);
    }

    *result = v3;
    *a2 = v4;
    v16 = *(result + 1);
    *(result + 1) = v15;
    *(a2 + 1) = v16;
    v17 = *a3;
    if (*a3 >= v4)
    {
      if (v4 < v17)
      {
        return result;
      }

      v18 = *(a3 + 1);
      if (v18 >= v16)
      {
        return result;
      }
    }

    else
    {
      v18 = *(a3 + 1);
    }

    *a2 = v17;
    *a3 = v4;
    *(a2 + 1) = v18;
    *(a3 + 1) = v16;
    return result;
  }

  v8 = *a3;
  if (*a3 >= v3)
  {
    if (v3 < v8)
    {
      return result;
    }

    v10 = *(a3 + 1);
    v9 = *(a2 + 1);
    if (v10 >= v9)
    {
      return result;
    }
  }

  else
  {
    v9 = *(a2 + 1);
    v10 = *(a3 + 1);
  }

  *a2 = v8;
  *a3 = v3;
  *(a2 + 1) = v10;
  *(a3 + 1) = v9;
  v11 = *a2;
  v12 = *result;
  if (*a2 < *result)
  {
    v13 = *(result + 1);
    v14 = *(a2 + 1);
LABEL_11:
    *result = v11;
    *a2 = v12;
    *(result + 1) = v14;
    *(a2 + 1) = v13;
    return result;
  }

  if (v12 >= v11)
  {
    v14 = *(a2 + 1);
    v13 = *(result + 1);
    if (v14 < v13)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t llvm::IRBuilderBase::CreateSub(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    v6 = (*(**(this + 9) + 72))(*(this + 9));
    if (v6)
    {
      v7 = *(v6 + 16) >= 0x1Cu;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
    }
  }

  else
  {
    v6 = llvm::BinaryOperator::Create();
    llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v6, a4);
  }

  return v6;
}

llvm::Instruction *AGCLLVMUserVertexShader::replaceOutputUses(uint64_t *a1, unsigned __int8 *a2, llvm::Value *a3, int a4, int a5, unsigned int a6)
{
  v8 = a2;
  v64 = *MEMORY[0x277D85DE8];
  v10 = *a2;
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v10 = **(v10 + 2);
  }

  v11 = (a1 + *(*a1 - 24));
  v12 = v10 == v11[234] || v10 == v11[232];
  if (a4 > 2)
  {
    v13 = 1520;
    if (a5)
    {
      v13 = 1576;
    }

    v14 = 1528;
    if (a5)
    {
      v14 = 1584;
    }

    v16 = 1536;
    if (a5)
    {
      v16 = 1592;
    }

    if (a4 != 4)
    {
      v14 = v16;
    }

    v15 = a4 == 3;
    goto LABEL_23;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v13 = 1488;
      if (v12)
      {
        v13 = 1496;
      }

      v14 = 1544;
      if (v12)
      {
        v14 = 1552;
      }

      v15 = a5 == 0;
LABEL_23:
      if (!v15)
      {
        v13 = v14;
      }

      goto LABEL_30;
    }

    v17 = a5 == 0;
    v13 = 1512;
    v18 = 1568;
  }

  else
  {
    v17 = a5 == 0;
    v13 = 1504;
    v18 = 1560;
  }

  if (!v17)
  {
    v13 = v18;
  }

LABEL_30:
  v19 = *(v11[271] + v13);
  v15 = !v12;
  v20 = 238;
  if (!v15)
  {
    v20 = 234;
  }

  v21 = v11[v20];
  if (v19)
  {
    v22 = strlen(*(v11[271] + v13));
  }

  else
  {
    v22 = 0;
  }

  v54 = AGCLLVMBuilder::getOrInsertFunction<llvm::PointerType *,llvm::Type *>((v11 + 213), v19, v22, v11[231], v11[573], v21);
  v23 = *v8;
  if (*v8 && *(v23 + 8) == 18)
  {
    v24 = *(v23 + 32);
    if (v24 >= a6)
    {
      v25 = a6;
    }

    else
    {
      v25 = v24;
    }

    *v62 = 0u;
    v63 = 0u;
    v26 = v8[16];
    v27 = (a1 + *(*a1 - 24));
    if (v26 < 0x15 || (v26 & 0xFE) == 0x5A)
    {
      AGCLLVMBuilder::unboxVector(v27 + 213, v8, v62);
      if (!v25)
      {
        return EraseInstructionChain(v8);
      }

      v38 = v62;
      v39 = v25;
      do
      {
        *v38 = AGCLLVMBuilder::extendFromSmall((a1 + *(*a1 - 24) + 1704), *v38, v10, 1);
        ++v38;
        --v39;
      }

      while (v39);
    }

    else
    {
      v8 = AGCLLVMBuilder::extendFromSmall(v27 + 213, v8, v10, 1);
      AGCLLVMBuilder::unboxVector((a1 + *(*a1 - 24) + 1704), v8, v62);
    }

    if (v25)
    {
      v40 = 0;
      v41 = a1 + 214;
      v53 = a3;
      v52 = v8;
      do
      {
        Select = v62[v40];
        v43 = (a1 + *(*a1 - 24));
        if (v10 == v43[234] && *(a1 + 5277) == 1)
        {
          v44 = v43[238];
          v58 = 257;
          Cast = llvm::IRBuilderBase::CreateCast((v43 + 214), 49, Select, v44, v57);
          v46 = llvm::ConstantInt::get();
          v61 = 257;
          v47 = llvm::IRBuilderBase::CreateAnd((v43 + 214), Cast, v46, &Add);
          v48 = llvm::ConstantInt::get();
          v56 = 257;
          llvm::IRBuilderBase::CreateICmp(v43 + 214, 34, v47, v48, v55);
          llvm::ConstantFP::get();
          a3 = v53;
          Select = llvm::IRBuilderBase::CreateSelect();
        }

        v49 = llvm::ConstantInt::get();
        v50 = *(*a1 - 24);
        v58 = 257;
        Add = llvm::IRBuilderBase::CreateAdd((v41 + v50), a3, v49, v57);
        v60 = Select;
        v51 = *(*a1 - 24);
        v58 = 257;
        llvm::IRBuilderBase::CreateCall((v41 + v51), *(v54 + 24), v54, &Add, 2, v57);
        ++v40;
      }

      while (v25 != v40);
      v8 = v52;
    }

    return EraseInstructionChain(v8);
  }

  v28 = AGCLLVMBuilder::extendFromSmall((a1 + *(*a1 - 24) + 1704), v8, v10, 1);
  v29 = *a1;
  v30 = (a1 + *(*a1 - 24));
  if (v10 == v30[234] && *(a1 + 5277) == 1)
  {
    v31 = v30[238];
    v58 = 257;
    v32 = llvm::IRBuilderBase::CreateCast((v30 + 214), 49, v28, v31, v57);
    v33 = llvm::ConstantInt::get();
    v61 = 257;
    v34 = llvm::IRBuilderBase::CreateAnd((v30 + 214), v32, v33, &Add);
    v35 = llvm::ConstantInt::get();
    v56 = 257;
    llvm::IRBuilderBase::CreateICmp(v30 + 214, 34, v34, v35, v55);
    llvm::ConstantFP::get();
    v28 = llvm::IRBuilderBase::CreateSelect();
    v29 = *a1;
  }

  Add = a3;
  v60 = v28;
  v36 = (a1 + *(v29 - 24));
  v58 = 257;
  return llvm::IRBuilderBase::CreateCall(v36 + 214, *(v54 + 24), v54, &Add, 2, v57);
}

llvm::Value *AGCLLVMBuilder::extendFromSmall(llvm::Type **this, llvm::Value *a2, llvm::Type *a3, int a4)
{
  v5 = a2;
  if (this[19] == a3)
  {
    v7 = 21;
  }

  else
  {
    if (this[24] != a3 && this[23] != a3 && this[22] != a3)
    {
      return v5;
    }

    v7 = 25;
  }

  v8 = this[v7];
  if ((*(*a2 + 8) & 0xFE) == 0x12)
  {
    v8 = llvm::FixedVectorType::get();
  }

  if ((*(v8 + 2) & 0xFE) == 0x12)
  {
    v9 = *(**(v8 + 2) + 8);
  }

  else
  {
    v9 = *(v8 + 2);
  }

  if (v9 > 6)
  {
    v14 = 257;
    if (a4)
    {
      v11 = 40;
    }

    else
    {
      v11 = 39;
    }

    return llvm::IRBuilderBase::CreateCast((this + 1), v11, v5, v8, v13);
  }

  else
  {
    v14 = 257;
    return llvm::IRBuilderBase::CreateFPExt((this + 1), v5, v8, v13);
  }
}

uint64_t AGCLLVMUserVertexShader::markInvariantOutputs(AGCLLVMUserVertexShader *this, const char *a2)
{
  {
    AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
  }

  if (AGCEnv::isEnabled(void)::is_internal == 1 && AGCEnv::getValue("AGC_POS_INVARIANCE", a2))
  {
    {
      AGCEnv::isEnabled(void)::is_internal = os_variant_has_internal_diagnostics();
    }

    v5 = AGCEnv::isEnabled(void)::is_internal == 1 && (Value = AGCEnv::getValue("AGC_POS_INVARIANCE", v3)) != 0 && *Value != 48 && atoi(Value) != 0;
    *(this + 5273) = v5;
  }

  if ((*(this + 5272) & 1) != 0 || ((*(this + 5273) & 1) != 0 || *(this + 5275) == 1) && *(this + 32) == 1)
  {
    v6 = *(this + *(*this - 24) + 2168);
    if (*(v6 + 1504))
    {
      strlen(*(v6 + 1504));
    }

    Function = llvm::Module::getFunction();
    if (Function)
    {
      if (*(this + 32) == 1 && (*(this + 5275) != 1 || *(this + 5273) == 1))
      {
        v8 = *(this + 5274);
      }

      else
      {
        v8 = 0;
      }

      v9 = *this;
      v10 = *(this + *(*this - 24) + 2136);
      __p = 0;
      v26 = 0;
      v29[0] = 0;
      v29[1] = 0;
      v27 = 0;
      v28 = v29;
      v29[2] = v10;
      v30 = v8 & 1;
      v11 = *(Function + 8);
      if (v11)
      {
        do
        {
          v12 = (*(v11 + 24) - 32 * (*(*(v11 + 24) + 20) & 0x7FFFFFF));
          v13 = (*v12 + 24);
          if (*(*v12 + 8) >= 0x41u)
          {
            v13 = *v13;
          }

          if ((*v13 & 0xFFFFFFFC) == 0)
          {
            MarkInvariants::addSeed(&__p, v12[4], 0);
          }

          v11 = *(v11 + 8);
        }

        while (v11);
        v9 = *this;
      }

      if ((MarkInvariants::markInvariant(&__p, (this + *(v9 - 24) + 1704)) & 1) == 0)
      {
        v15 = *(this + *(*this - 24) + 2136);
        v16 = v15 + 24;
        for (i = *(v15 + 32); i != v16; i = *(i + 8))
        {
          v18 = i - 56;
          if (!i)
          {
            v18 = 0;
          }

          v19 = v18 + 72;
          v20 = *(v18 + 80);
          if (v20 == v18 + 72)
          {
            v22 = 0;
          }

          else
          {
            do
            {
              v21 = v20 - 24;
              if (!v20)
              {
                v21 = 0;
              }

              v22 = *(v21 + 48);
              if (v22 != v21 + 40)
              {
                break;
              }

              v20 = *(v20 + 8);
            }

            while (v20 != v19);
          }

          while (v20 != v19)
          {
            if (v22)
            {
              v23 = (v22 - 24);
            }

            else
            {
              v23 = 0;
            }

            if (llvm::FPMathOperator::classof(v23))
            {
              llvm::Instruction::setFast(v23);
            }

            v22 = *(v22 + 8);
            v24 = v20 - 24;
            if (!v20)
            {
              v24 = 0;
            }

            while (v22 == v24 + 40)
            {
              v20 = *(v20 + 8);
              if (v20 == v19)
              {
                break;
              }

              v24 = v20 - 24;
              if (!v20)
              {
                v24 = 0;
              }

              v22 = *(v24 + 48);
            }
          }
        }
      }

      std::__tree<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,std::pair<unsigned char,unsigned char>>>>::destroy(v29[0]);
      if (__p)
      {
        v26 = __p;
        operator delete(__p);
      }
    }
  }

  return 1;
}

double std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,GenericVaryingAllocator::getVaryingSignature(flatbuffers::FlatBufferBuilder &,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *,flatbuffers::Offset<flatbuffers::Vector<unsigned char>> *)::$_0 &,GenericVarying *,0>(a1, a2, a3);
  v8 = *(a3 + 47);
  v9 = *(a4 + 47);
  if (v9 >= 0)
  {
    v10 = *(a4 + 47);
  }

  else
  {
    v10 = *(a4 + 32);
  }

  if (v9 >= 0)
  {
    v11 = (a4 + 24);
  }

  else
  {
    v11 = *(a4 + 24);
  }

  if (v8 >= 0)
  {
    v12 = *(a3 + 47);
  }

  else
  {
    v12 = *(a3 + 32);
  }

  if (v8 >= 0)
  {
    v13 = (a3 + 24);
  }

  else
  {
    v13 = *(a3 + 24);
  }

  if (v12 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  v15 = memcmp(v11, v13, v14);
  v17 = v10 < v12;
  if (v15)
  {
    v17 = v15 < 0;
  }

  if (v17)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a3, a4);
    v18 = *(a2 + 47);
    v19 = *(a3 + 47);
    if (v19 >= 0)
    {
      v20 = *(a3 + 47);
    }

    else
    {
      v20 = *(a3 + 32);
    }

    if (v19 >= 0)
    {
      v21 = (a3 + 24);
    }

    else
    {
      v21 = *(a3 + 24);
    }

    if (v18 >= 0)
    {
      v22 = *(a2 + 47);
    }

    else
    {
      v22 = *(a2 + 32);
    }

    if (v18 >= 0)
    {
      v23 = (a2 + 24);
    }

    else
    {
      v23 = *(a2 + 24);
    }

    if (v22 >= v20)
    {
      v24 = v20;
    }

    else
    {
      v24 = v22;
    }

    v25 = memcmp(v21, v23, v24);
    v26 = v20 < v22;
    if (v25)
    {
      v26 = v25 < 0;
    }

    if (v26)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a2, a3);
      v27 = *(a1 + 47);
      v28 = *(a2 + 47);
      if (v28 >= 0)
      {
        v29 = *(a2 + 47);
      }

      else
      {
        v29 = *(a2 + 32);
      }

      if (v28 >= 0)
      {
        v30 = (a2 + 24);
      }

      else
      {
        v30 = *(a2 + 24);
      }

      if (v27 >= 0)
      {
        v31 = *(a1 + 47);
      }

      else
      {
        v31 = *(a1 + 32);
      }

      if (v27 >= 0)
      {
        v32 = (a1 + 24);
      }

      else
      {
        v32 = *(a1 + 24);
      }

      if (v31 >= v29)
      {
        v33 = v29;
      }

      else
      {
        v33 = v31;
      }

      v34 = memcmp(v30, v32, v33);
      v35 = v29 < v31;
      if (v34)
      {
        v35 = v34 < 0;
      }

      if (v35)
      {

        *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:nn200100]<GenericVarying *&,GenericVarying *&>(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}