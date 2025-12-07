void sub_272622F38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void **__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, __int128 buf, int a23, __int16 a24, __int16 a25, uint64_t *a26)
{
  if (a2)
  {
    v28 = __cxa_begin_catch(a1);
    log = vp::get_log(v28);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::vx::get_log_context_info(&__p, v27);
      v31 = a21;
      v32 = a21;
      v33 = a17;
      v34 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        if (v32 >= 0)
        {
          v35 = v31;
        }

        else
        {
          v35 = v33;
        }

        p_p = __p;
        if (v32 >= 0)
        {
          p_p = &__p;
        }

        if (v35)
        {
          v37 = " ";
        }

        else
        {
          v37 = "";
        }

        v38 = *(v26 + 23);
        v39 = *v26;
        LODWORD(buf) = 136315650;
        *(&buf + 4) = p_p;
        if (v38 >= 0)
        {
          v40 = v26;
        }

        else
        {
          v40 = v39;
        }

        WORD6(buf) = 2080;
        *(&buf + 14) = v37;
        a25 = 2080;
        a26 = v40;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%s%sfailed to adjust %s", &buf, 0x20u);
        LOBYTE(v32) = a21;
      }

      if ((v32 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x272622F04);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::compare_value(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *a2.__data_;
  v3 = *a2.__size_;
  v4 = *a2.__data_;
  a2.__data_ = *a2.__size_;
  result = std::__fs::filesystem::operator==[abi:ne200100](v4, a2);
  if (!result)
  {
    return result;
  }

  if (*(v2 + 48) != *(v3 + 48))
  {
    return 0;
  }

  v7 = (v2 + 40);
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    v8 = std::__string_hash<char>::operator()[abi:ne200100]((v7 + 2));
    v9 = *(v3 + 32);
    if (!*&v9)
    {
      return 0;
    }

    v10 = v8;
    v11 = vcnt_s8(v9);
    v11.i16[0] = vaddlv_u8(v11);
    v12 = v11.u32[0];
    if (v11.u32[0] > 1uLL)
    {
      v13 = v8;
      if (v8 >= *&v9)
      {
        v13 = v8 % *&v9;
      }
    }

    else
    {
      v13 = (*&v9 - 1) & v8;
    }

    v14 = *(*(v3 + 24) + 8 * v13);
    if (!v14)
    {
      return 0;
    }

    v15 = *v14;
    if (!*v14)
    {
      return 0;
    }

    while (1)
    {
      v16 = v15[1];
      if (v10 == v16)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v16 >= *&v9)
        {
          v16 %= *&v9;
        }
      }

      else
      {
        v16 &= *&v9 - 1;
      }

      if (v16 != v13)
      {
        return 0;
      }

LABEL_20:
      v15 = *v15;
      if (!v15)
      {
        return 0;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v15 + 2, v7 + 2))
    {
      goto LABEL_20;
    }

    v17 = *(v7 + 39);
    if (v17 >= 0)
    {
      v18 = *(v7 + 39);
    }

    else
    {
      v18 = v7[3];
    }

    v19 = *(v15 + 39);
    v20 = v19;
    if (v19 < 0)
    {
      v19 = v15[3];
    }

    if (v18 != v19)
    {
      return 0;
    }

    v21 = v17 >= 0 ? (v7 + 2) : v7[2];
    v22 = v20 >= 0 ? (v15 + 2) : v15[2];
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }

    v23 = *(v7 + 63);
    if (v23 >= 0)
    {
      v24 = *(v7 + 63);
    }

    else
    {
      v24 = v7[6];
    }

    v25 = *(v15 + 63);
    v26 = v25;
    if (v25 < 0)
    {
      v25 = v15[6];
    }

    if (v24 != v25)
    {
      return 0;
    }

    if (v23 >= 0)
    {
      v27 = (v7 + 5);
    }

    else
    {
      v27 = v7[5];
    }

    v30 = v15[5];
    v29 = v15 + 5;
    v28 = v30;
    if (v26 >= 0)
    {
      v31 = v29;
    }

    else
    {
      v31 = v28;
    }

    v32 = memcmp(v27, v31, v24);
    result = 0;
    if (v32)
    {
      return result;
    }
  }

  v33 = *(v2 + 64);
  v34 = *(v2 + 72);
  v35 = *(v3 + 64);
  if (v34 - v33 != *(v3 + 72) - v35)
  {
    return 0;
  }

  while (v33 != v34)
  {
    v6.__data_ = v35;
    result = std::__fs::filesystem::operator==[abi:ne200100](v33, v6);
    if (!result)
    {
      return result;
    }

    ++v33;
    v35 += 24;
  }

  v36 = *(v2 + 88);
  v37 = *(v2 + 96);
  v38 = *(v3 + 88);
  if (v37 - v36 != *(v3 + 96) - v38)
  {
    return 0;
  }

  while (v36 != v37)
  {
    v6.__data_ = v38;
    result = std::__fs::filesystem::operator==[abi:ne200100](v36, v6);
    if (!result)
    {
      return result;
    }

    ++v36;
    v38 += 24;
  }

  v39 = *(v2 + 112);
  v40 = *(v2 + 120);
  v41 = *(v3 + 112);
  if (v40 - v39 != *(v3 + 120) - v41)
  {
    return 0;
  }

  while (v39 != v40)
  {
    v6.__data_ = v41;
    result = std::__fs::filesystem::operator==[abi:ne200100](v39, v6);
    if (!result)
    {
      return result;
    }

    ++v39;
    v41 += 24;
  }

  v43 = *(v2 + 136);
  v42 = *(v2 + 144);
  v44 = *(v3 + 136);
  if (v42 - v43 != *(v3 + 144) - v44)
  {
    return 0;
  }

  while (v43 != v42)
  {
    if (*v43 != *v44 || *(v43 + 4) != *(v44 + 4))
    {
      return 0;
    }

    v43 += 8;
    v44 += 8;
  }

  result = std::operator==[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>>(*(v2 + 160), *(v2 + 168), *(v3 + 160), *(v3 + 168));
  if (result)
  {
    return *(v2 + 184) == *(v3 + 184);
  }

  return result;
}

uint64_t std::operator==[abi:ne200100]<std::tuple<unsigned int,applesauce::CF::DictionaryRef>,std::allocator<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 - a1 == a4 - a3)
  {
    v5 = a1;
    if (a1 == a2)
    {
      return 1;
    }

    for (i = a3; *v5 == *i; i += 16)
    {
      v7 = *(v5 + 8);
      v8 = *(i + 8);
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        if (v7 | v8)
        {
          return 0;
        }
      }

      else
      {
        result = CFEqual(v7, v8);
        if (!result)
        {
          return result;
        }
      }

      v5 += 16;
      if (v5 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = (*a2 + 160);
  std::vector<std::tuple<unsigned int,applesauce::CF::DictionaryRef>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = *(v2 + 136);
  if (v3)
  {
    *(v2 + 144) = v3;
    operator delete(v3);
  }

  v5 = (v2 + 112);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (v2 + 88);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (v2 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 24);
  if (*(v2 + 23) < 0)
  {
    v4 = *v2;

    operator delete(v4);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::move_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  *(v3 + 16) = *(*a3 + 2);
  *v3 = v5;
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(v3 + 24, v4 + 3);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 64) = v4[4];
  *(v3 + 80) = *(v4 + 10);
  *(v4 + 8) = 0;
  *(v4 + 9) = 0;
  *(v4 + 10) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = *(v4 + 88);
  *(v3 + 104) = *(v4 + 13);
  *(v4 + 11) = 0;
  *(v4 + 12) = 0;
  *(v4 + 13) = 0;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = v4[7];
  *(v3 + 128) = *(v4 + 16);
  *(v4 + 14) = 0;
  *(v4 + 15) = 0;
  *(v4 + 16) = 0;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 136) = *(v4 + 136);
  *(v3 + 152) = *(v4 + 19);
  *(v4 + 17) = 0;
  *(v4 + 18) = 0;
  *(v4 + 19) = 0;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  result = v4[10];
  *(v3 + 160) = result;
  *(v3 + 176) = *(v4 + 22);
  *(v4 + 20) = 0;
  *(v4 + 21) = 0;
  *(v4 + 22) = 0;
  *(v3 + 184) = *(v4 + 184);
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 192, 8);
  *a2 = result;
  return result;
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = *a2 - 1;
  if (v2 > 2)
  {
    return "voice mix";
  }

  else
  {
    return off_279E4A458[v2];
  }
}

const char *std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<vp::vx::detail::convert_to_c_str(std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>)::$_0> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)0,vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID> &>(uint64_t a1, _DWORD *a2)
{
  v2 = "hardware";
  if (*a2 == 1)
  {
    v2 = "echo";
  }

  if (*a2 == 2)
  {
    return "content";
  }

  else
  {
    return v2;
  }
}

void sub_272623968(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void vp::vx::DSP_Node_Factory::set_configuration(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272623B80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      if (a1[1])
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1} const&,vp::vx::DSP_Node_Configuration const&>(&__p, a1 + 3, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1} const&,vp::vx::DSP_Node_Configuration const&>(uint64_t a1, unint64_t *a2, void *a3)
{
  atomic_fetch_add((a2[1] + 1264), 1u);
  v5[0] = 0;
  v6 = 0;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::__fs::filesystem::path const&,std::__fs::filesystem::path,0>(v4, a3);
}

void sub_272623F28(void *a1)
{
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json((v2 - 64));
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272623F10);
}

void nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::__fs::filesystem::path const&,std::__fs::filesystem::path,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = 3;
  operator new();
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::__fs::filesystem::path const*,std::__fs::filesystem::path const*,std::back_insert_iterator<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>>(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  if (result != a2)
  {
    nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::basic_json<std::__fs::filesystem::path const&,std::__fs::filesystem::path,0>(v3, result);
  }

  return result;
}

void sub_272624088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6B40;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B40;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_downlink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B40;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AB0;
  std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>::register_listener(std::function<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AB0;
  std::__function::__value_func<void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      if (a1[1])
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1} const&,vp::vx::DSP_Node_Configuration const&>(&__p, a1 + 3, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6AF8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AF8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1},std::allocator<void vp::vx::observe_uplink<vp::vx::DSP_Node_Configuration,void vp::vx::DSP_Node_Factory::listen<vp::vx::DSP_Node_Configuration,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0>(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(vp::vx::DSP_Node_Configuration const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration> &,vp::vx::DSP_Node_Factory::set_configuration(vp::vx::data_flow::State<vp::vx::DSP_Node_Configuration>)::$_0)::{lambda(unsigned int,vp::vx::DSP_Node_Configuration const&)#1}>,void ()(unsigned int,vp::vx::DSP_Node_Configuration const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6AF8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_block_size(__n128 *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262497C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s I/O block size is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272624B98(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272624B2CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6BD0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6BD0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6BD0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9408;
  std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<unsigned int>::register_listener(std::function<void ()(unsigned int,unsigned int const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B9408;
  std::__function::__value_func<void ()(unsigned int,unsigned int const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s I/O block size is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272625120(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726250B4);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6B88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6B88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_block_size_is_fixed(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[5];
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_2726254D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__n128 std::__variant_detail::__assignment<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>>::__assign_alt[abi:ne200100]<1ul,vp::vx::data_flow::State<BOOL>,vp::vx::data_flow::State<BOOL>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24) == 1)
  {
    vp::vx::data_flow::State<void>::~State(a2);
    *a2 = *a3;
    result = *(a3 + 8);
    *(a2 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<BOOL,vp::vx::data_flow::State<BOOL>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    *a1 = *a3;
    result = *(a3 + 8);
    *(a1 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "variable";
        if (v10)
        {
          v13 = "fixed";
        }

        caulk::make_string(&v17, "%s I/O block size is %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272625688(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262561CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6C70;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C70;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C70;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "variable";
        if (v10)
        {
          v13 = "fixed";
        }

        caulk::make_string(&v17, "%s I/O block size is %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272625970(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272625904);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6C28;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_block_size_is_fixed(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6C28;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_fft_block_size(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272625D34(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s FFT block size is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272625E50(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272625DE4);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6D00;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D00;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D00;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s FFT block size is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272626120(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726260B4);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6CB8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6CB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_fft_block_size(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6CB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_sample_rate(__n128 *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_2726264E4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,double const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::operator()(void *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s I/O sample rate is %f", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262670C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262669CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6DD8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6DD8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_downlink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6DD8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D48;
  std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<double>::register_listener(std::function<void ()(unsigned int,double const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D48;
  std::__function::__value_func<void ()(unsigned int,double const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::operator()(void *a1, unsigned int *a2, uint64_t *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s I/O sample rate is %f", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272626CA0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x272626C30);
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6D90;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D90;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1},std::allocator<void vp::vx::observe_uplink<double,void vp::vx::DSP_Node_Factory::listen<double,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0>(vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(double const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<double> &,vp::vx::DSP_Node_Factory::set_sample_rate(vp::vx::data_flow::State<double>)::$_0)::{lambda(unsigned int,double const&)#1}>,void ()(unsigned int,double const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6D90;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_input_format(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  v4 = a1[1];
  v8 = v4;
  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = v7;
  }

  v10 = v4;
  v11 = a1;
  if (!HIDWORD(v4))
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v9;
    }

    v13 = v4;
    v14 = a1;
    v15 = v6;
    v16 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v12;
    }

    v18 = v4;
    v19 = a1;
    operator new();
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v9;
  }

  v13 = v4;
  v14 = a1;
  v15 = v6;
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v12;
  }

  v18 = v4;
  v19 = a1;
  operator new();
}

void sub_27262723C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::small_vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,8ul,vp::Allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>,void>>::insert_or_assign<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(uint64_t a1, char *a2, void *a3, __int128 *a4, uint64_t a5)
{
  v32 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 8) = 0;
  v30 = 0;
  v9 = *(a2 + 1);
  if (a3)
  {
    v10 = *(a2 + 2);
    if (v9)
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

    v13 = &v9[6 * v10];
    if (v13 != a3 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, a3) & 0x80) == 0)
    {
      v31.__r_.__value_.__r.__words[0] = v13;
      v14 = a3;
      goto LABEL_21;
    }

    v30 = a3;
    if (v9 == a3 || (v15 = (a3 - 6), (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v15, a4) & 0x80) != 0))
    {
      *(a1 + 8) = 1;
      goto LABEL_25;
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a4, v15) & 0x80) == 0)
    {
      v30 = v15;
      *(a1 + 8) = 0;
LABEL_22:
      v19 = *(a2 + 1);
      v20 = v30 - v19;
      if (*(a2 + 2) < 0xAAAAAAAAAAAAAAABLL * ((v30 - v19) >> 4))
      {
        __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
      }

      v21 = v30;
      *a1 = v30;
      vp::vx::data_flow::State<void>::~State(&v20[v19 + 24]);
      *(v21 + 6) = *a5;
      v21[2] = *(a5 + 8);
      *(a5 + 8) = 0;
      *(a5 + 16) = 0;
      return;
    }

    v31.__r_.__value_.__r.__words[0] = v15;
  }

  else
  {
    v16 = *(a2 + 2);
    if (v9)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16 == 0;
    }

    if (!v17)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v31.__r_.__value_.__r.__words[0] = &v9[6 * v16];
  }

  v14 = v9;
LABEL_21:
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::small_vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,8ul,vp::Allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>,void>>::priv_insert_unique_prepare(v14, &v31, a4, &v30);
  *(a1 + 8) = inserted;
  if (!inserted)
  {
    goto LABEL_22;
  }

LABEL_25:
  v22 = v30;
  v23 = *(a2 + 1);
  if (v23 > v30)
  {
    goto LABEL_39;
  }

  v24 = *(a2 + 2);
  if (!v23 && v24)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v25 = v23 + 48 * v24;
  if (v30 > v25)
  {
LABEL_39:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v26 = *(a2 + 3);
  if (v26 < v24)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v26 == v24)
  {
    v29 = v30;

    boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>*,std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>>(a1, a2, v29, a5, a4);
  }

  else
  {
    if (v25 == v30)
    {
      boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(v25, a4, a5);
      ++*(a2 + 2);
    }

    else
    {
      v27 = v25 - 48;
      *v25 = *(v25 - 48);
      *(v25 + 16) = *(v25 - 32);
      *(v25 - 40) = 0;
      *(v25 - 32) = 0;
      *(v25 - 48) = 0;
      *(v25 + 24) = *(v25 - 24);
      *(v25 + 32) = *(v25 - 16);
      *(v25 - 16) = 0;
      *(v25 - 8) = 0;
      ++*(a2 + 2);
      if (v25 - 48 != v22)
      {
        do
        {
          v28 = v27 - 48;
          boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::operator=(v27, (v27 - 48));
          v27 = v28;
        }

        while (v28 != v22);
      }

      boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(&v31, a4, a5);
      boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::operator=(v22, &v31);
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(&v31);
    }

    *a1 = v22;
  }
}

void sub_272627748(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::dtl::select1st<std::string>,std::less<std::string>,boost::container::small_vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,8ul,vp::Allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>,void>>::priv_insert_unique_prepare(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (*a2 != a1)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*a2 - a1) >> 4);
    do
    {
      if (v8 != 1 && !v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v7)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v7[6 * (v8 >> 1)], a3) & 0x80u) == 0)
      {
        v8 >>= 1;
      }

      else
      {
        v7 += 6 * (v8 >> 1) + 6;
        v8 += ~(v8 >> 1);
      }
    }

    while (v8);
  }

  *a4 = v7;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, v7) & 0x80u) != 0;
}

std::string *boost::container::vector<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>,boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>*,std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>>(void *a1, char *a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v5 = *(a2 + 3);
  if (v5 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v5 == 0x555555555555555)
  {
    goto LABEL_27;
  }

  if (v5 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v5;
  }

  if (v5 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v5 / 5;
  }

  v8 = v5 + 1;
  if (v7 >= 0x555555555555555)
  {
    v7 = 0x555555555555555;
  }

  v9 = v8 > v7 ? v5 + 1 : v7;
  if (v8 > 0x555555555555555)
  {
LABEL_27:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 48 * v9, 8);
  v16 = v15;
  v18 = *(a2 + 1);
  v17 = *(a2 + 2);
  v19 = v15;
  if (v18 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      v21 = *v20;
      *(v19 + 16) = *(v20 + 16);
      *v19 = v21;
      *(v20 + 8) = 0;
      *(v20 + 16) = 0;
      *v20 = 0;
      *(v19 + 24) = *(v20 + 24);
      *(v19 + 32) = *(v20 + 32);
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      v20 += 48;
      v19 += 48;
    }

    while (v20 != a3);
  }

  result = boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(v19, a5, a4);
  v23 = &v18[3 * v17];
  if (v23 != a3)
  {
    v24 = (v19 + 80);
    v25 = a3;
    do
    {
      v26 = *v25;
      *(v24 - 2) = *(v25 + 2);
      *(v24 - 2) = v26;
      *(v25 + 1) = 0;
      *(v25 + 2) = 0;
      *v25 = 0;
      *(v24 - 2) = *(v25 + 6);
      *v24 = v25[2];
      v24 += 3;
      *(v25 + 4) = 0;
      *(v25 + 5) = 0;
      v25 += 3;
    }

    while (v25 != v23);
  }

  if (v18)
  {
    for (i = *(a2 + 2); i; v18 += 3)
    {
      --i;
      std::pmr::polymorphic_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>::destroy[abi:ne200100]<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>>(v18);
    }

    result = boost::container::small_vector_allocator<boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 1));
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v28;
  *(a2 + 3) = v9;
  *a1 = a3 + v16 - v14;
  return result;
}

std::string *boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::pair<std::string const&,vp::vx::data_flow::State<CA::StreamDescription>>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  LODWORD(this[1].__r_.__value_.__l.__data_) = *a3;
  *&this[1].__r_.__value_.__r.__words[1] = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  return this;
}

uint64_t boost::container::dtl::pair<std::string,vp::vx::data_flow::State<CA::StreamDescription>>::operator=(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  vp::vx::data_flow::State<void>::~State((a1 + 24));
  *(a1 + 24) = *(a2 + 6);
  *(a1 + 32) = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  return a1;
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 32))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  atomic_fetch_add((a2[4] + 1264), 1u);
  v6 = vp::vx::detail::convert_to_c_str(a2[3]);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  CA::StreamDescription::AsString(&__p, a3, v7, v8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  caulk::make_string(&v13, "%s input '%s' format is %s", v9, v6, v4, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  size = v13.__r_.__value_.__l.__size_;
  *a1 = v13.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v13.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = 1;
}

void sub_272627D80(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272627D68);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6E68;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_272627E6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_272627F28(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E68;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E68;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F98;
  std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<CA::StreamDescription>::register_listener(std::function<void ()(unsigned int,CA::StreamDescription const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B8F98;
  std::__function::__value_func<void ()(unsigned int,CA::StreamDescription const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 24))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(char *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100]((a1 + 8));

  operator delete(a1);
}

void std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6E20;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_2726284C0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_27262857C(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E20;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6E20;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_output_format(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v7, *a2, *(a2 + 8));
  }

  else
  {
    v7 = *a2;
  }

  v4 = a1[1];
  v8 = v4;
  v6 = a1[4];
  v5 = a1[5];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = v7;
  }

  v10 = v4;
  v11 = a1;
  if (!HIDWORD(v4))
  {
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v9;
    }

    v13 = v4;
    v14 = a1;
    v15 = v6;
    v16 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v12;
    }

    v18 = v4;
    v19 = a1;
    operator new();
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v12, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v12 = v9;
  }

  v13 = v4;
  v14 = a1;
  v15 = v6;
  v16 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v12;
  }

  v18 = v4;
  v19 = a1;
  operator new();
}

void sub_272628A3C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    v4 = v2[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 32))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = a2;
  atomic_fetch_add((a2[4] + 1264), 1u);
  v6 = vp::vx::detail::convert_to_c_str(a2[3]);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  CA::StreamDescription::AsString(&__p, a3, v7, v8);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  caulk::make_string(&v13, "%s output '%s' format is %s", v9, v6, v4, p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
  size = v13.__r_.__value_.__l.__size_;
  *a1 = v13.__r_.__value_.__r.__words[0];
  *(a1 + 8) = size;
  *(a1 + 15) = *(&v13.__r_.__value_.__r.__words[1] + 7);
  *(a1 + 23) = v11;
  *(a1 + 24) = 1;
}

void sub_272628C24(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  v1[24] = 0;
  __cxa_end_catch();
  JUMPOUT(0x272628C0CLL);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6EF8;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_272628D10(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_272628DCC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EF8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_downlink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EF8;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::operator()(void *a1, unsigned int *a2, void *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        vp::utility::exception_filter_all_noexcept<void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1} const&,CA::StreamDescription const&>(__p, a1 + 3, a3);
        (*(*v9 + 24))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy_deallocate(void *a1)
{
  std::__function::__alloc_func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_input_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::__clone(uint64_t a1, std::string *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  a2->__r_.__value_.__r.__words[0] = &unk_2881B6EB0;
  a2->__r_.__value_.__l.__size_ = v5;
  a2->__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2 + 1, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    a2[1].__r_.__value_.__r.__words[2] = *(a1 + 40);
    *&a2[1].__r_.__value_.__l.__data_ = v6;
  }

  a2[2].__r_.__value_.__r.__words[0] = *(a1 + 48);
  a2[2].__r_.__value_.__l.__size_ = *(a1 + 56);
}

void sub_272629058(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_272629114(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EB0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t std::__function::__func<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1},std::allocator<void vp::vx::observe_uplink<CA::StreamDescription,void vp::vx::DSP_Node_Factory::listen<CA::StreamDescription,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0>(vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(CA::StreamDescription const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<CA::StreamDescription> &,vp::vx::DSP_Node_Factory::set_output_format(std::string const&,vp::vx::data_flow::State<CA::StreamDescription>)::$_0)::{lambda(unsigned int,CA::StreamDescription const&)#1}>,void ()(unsigned int,CA::StreamDescription const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_2881B6EB0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272629400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "disabled";
        if (v10)
        {
          v13 = "enabled";
        }

        caulk::make_string(&v17, "%s audio recorders are %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_272629534(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726294C8);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6F88;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F88;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F88;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "disabled";
        if (v10)
        {
          v13 = "enabled";
        }

        caulk::make_string(&v17, "%s audio recorders are %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262981C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726297B0);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B6F40;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F40;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6F40;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(__n128 *a1, uint64_t a2)
{
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_272629BE4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::operator()(void *a1, unsigned int *a2, CFTypeRef *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        vp::utility::exception_filter_all_noexcept<vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0 const&,applesauce::CF::StringRef const&>(__p, a1 + 3, *a3);
        (*(*v9 + 32))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void vp::utility::exception_filter_all_noexcept<vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0 const&,applesauce::CF::StringRef const&>(uint64_t a1, unint64_t *a2, const __CFString *cf)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = vp::vx::detail::convert_to_c_str(*a2);
  v8 = v6;
  if (cf)
  {
    applesauce::CF::convert_to<std::string,0>(__p, cf);
    if (v16 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    caulk::make_string(&v14, "%s audio recorders predicate is '%s'", v9, v8, v10, cf);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    caulk::make_string(&v14, "%s audio recorders predicate is undefined", v7, v6);
  }

  v17[0] = v14.__r_.__value_.__l.__size_;
  v11 = v14.__r_.__value_.__r.__words[0];
  *(v17 + 7) = *(&v14.__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v14.__r_.__value_.__r.__words[2]);
  memset(&v14, 0, sizeof(v14));
  v13 = v17[0];
  *a1 = v11;
  *(a1 + 8) = v13;
  *(a1 + 15) = *(v17 + 7);
  *(a1 + 23) = v12;
  v17[0] = 0;
  *(v17 + 7) = 0;
  *(a1 + 24) = 1;
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_272629EF0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_272629F0C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a2)
  {
    applesauce::CF::StringRef::~StringRef(va);
    __cxa_begin_catch(a1);
    *v6 = 0;
    v6[24] = 0;
    __cxa_end_catch();
    JUMPOUT(0x272629EC0);
  }

  JUMPOUT(0x272629EFCLL);
}

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B7060;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7060;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_downlink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7060;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t result, int *a2, vp::vx::data_flow::Value *this)
{
  if (*(result + 32))
  {
    v3 = *(this + 2) == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    v4 = result;
    v5 = *a2;
    result = vp::vx::data_flow::Value::view_storage(this);
    if (result)
    {
      v6 = result;
      v8 = v5;
      v7 = *(v4 + 32);
      if (!v7)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      return (*(*v7 + 48))(v7, &v8, v6);
    }
  }

  return result;
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

void std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6FD0;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1},std::allocator<vp::vx::data_flow::State<applesauce::CF::StringRef>::register_listener(std::function<void ()(unsigned int,applesauce::CF::StringRef const&)>)::{lambda(unsigned int,vp::vx::data_flow::Value const&)#1}>,void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B6FD0;
  std::__function::__value_func<void ()(unsigned int,applesauce::CF::StringRef const&)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::operator()(void *a1, unsigned int *a2, const __CFString **a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        vp::utility::exception_filter_all_noexcept<vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0 const&,applesauce::CF::StringRef const&>(__p, a1 + 3, *a3);
        (*(*v9 + 24))(v9, v6, __p);
        if (v12 == 1 && v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2881B7018;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7018;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1},std::allocator<void vp::vx::observe_uplink<applesauce::CF::StringRef,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<applesauce::CF::StringRef> &,vp::vx::DSP_Node_Factory::set_should_enable_audio_recorders_predicate(vp::vx::data_flow::State<applesauce::CF::StringRef>)::$_0)::{lambda(unsigned int,applesauce::CF::StringRef const&)#1}>,void ()(unsigned int,applesauce::CF::StringRef const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7018;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262A81C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "disconnected";
        if (v10)
        {
          v13 = "connected";
        }

        caulk::make_string(&v17, "%s RPB is %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262A950(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262A8E4);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B70F0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70F0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_downlink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70F0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::operator()(void *a1, unsigned int *a2, unsigned __int8 *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        v13 = "disconnected";
        if (v10)
        {
          v13 = "connected";
        }

        caulk::make_string(&v17, "%s RPB is %s", v12, v11, v13);
        *__p = *&v17.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v17.__r_.__value_.__r.__words[1] + 7);
        v15 = HIBYTE(v17.__r_.__value_.__r.__words[2]);
        v16 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v16 == 1 && v15 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262AC38(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262ABCCLL);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B70A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1},std::allocator<void vp::vx::observe_uplink<BOOL,void vp::vx::DSP_Node_Factory::listen<BOOL,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0>(vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(BOOL const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<BOOL> &,vp::vx::DSP_Node_Factory::set_should_connect_to_RPB(vp::vx::data_flow::State<BOOL>)::$_0)::{lambda(unsigned int,BOOL const&)#1}>,void ()(unsigned int,BOOL const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B70A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(__n128 *a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = a1->n128_u64[1];
  v3 = a1[2].n128_u64[1];
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262AFFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s sample rate conversion algorithm is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262B118(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262B0ACLL);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B7180;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7180;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7180;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s sample rate conversion algorithm is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262B3E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262B37CLL);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B7138;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7138;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_algorithm(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7138;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(uint64_t a1, uint64_t a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = (v3 + 16);
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
    if (!HIDWORD(v2))
    {
      atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
      goto LABEL_5;
    }

    atomic_fetch_add_explicit(v4, 1uLL, memory_order_relaxed);
  }

  else if (!HIDWORD(v2))
  {
LABEL_5:
    operator new();
  }

  operator new();
}

void sub_27262B7B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s sample rate conversion quality is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 32))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262B8CC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262B860);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B7210;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7210;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_downlink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B7210;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::operator()(void *a1, unsigned int *a2, unsigned int *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v6 = *a2;
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = a1[1];
      if (v9)
      {
        atomic_fetch_add((a1[4] + 1264), 1u);
        v10 = *a3;
        v11 = vp::vx::detail::convert_to_c_str(a1[3]);
        caulk::make_string(&v16, "%s sample rate conversion quality is %u", v12, v11, v10);
        *__p = *&v16.__r_.__value_.__l.__data_;
        *&__p[15] = *(&v16.__r_.__value_.__r.__words[1] + 7);
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
        v15 = 1;
        (*(*v9 + 24))(v9, v6, __p);
        if (v15 == 1 && v14 < 0)
        {
          operator delete(*__p);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_27262BB9C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262BB30);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

__n128 std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_2881B71C8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B71C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *std::__function::__func<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1},std::allocator<void vp::vx::observe_uplink<unsigned int,void vp::vx::DSP_Node_Factory::listen<unsigned int,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0>(vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int const&)#1}>(std::weak_ptr<vp::vx::Voice_Processor_State_Observer>,vp::vx::data_flow::State<unsigned int> &,vp::vx::DSP_Node_Factory::set_sample_rate_conversion_quality(vp::vx::data_flow::State<unsigned int>)::$_0)::{lambda(unsigned int,unsigned int const&)#1}>,void ()(unsigned int,unsigned int const&)>::~__func(void *a1)
{
  *a1 = &unk_2881B71C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void vp::vx::components::DSP_Settings::get_dsp_property_override(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0 || (v8 = v7, v9 = a1[1], atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !v9))
  {
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
LABEL_15:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1936745314)
  {
    (*(*v13 + 16))(&v30, v13, 26);
    v15 = v30;
    v21 = v30;
    v22 = v31;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v30);
    (*(*v13 + 16))(&v30, v13, 50);
    v16 = v30;
    v19 = v30;
    v20 = v31;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v30);
    v30 = &unk_2881B7510;
    LOBYTE(v31) = 0;
    v32 = &v30;
    v28 = v15;
    v29 = v16;
    vp::vx::data_flow::State_Manager::create_state(&v26, (v9 + 48), &v30);
    v17 = v26;
    v23 = v26;
    v18 = v27;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v30);
    LODWORD(v30) = v17;
    v24 = 0;
    v25 = 0;
    vp::vx::data_flow::State<void>::~State(&v23);
    v26 = v17;
    v31 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v30);
    vp::vx::data_flow::State<void>::~State(&v19);
    vp::vx::data_flow::State<void>::~State(&v21);
    *a3 = v17;
    *(a3 + 8) = v18;
    v27 = 0uLL;
    *(a3 + 24) = 2;
    v14 = &v26;
  }

  else
  {
    if (a2 != 1650815344)
    {
      *a3 = 0;
      *(a3 + 24) = 1;
      goto LABEL_13;
    }

    vp::vx::components::DSP_Settings::create_bluetooth_eq_preset_dsp_property_override(&v30, 1, v9, v13);
    *a3 = v30;
    *(a3 + 8) = v31;
    v31 = 0uLL;
    *(a3 + 24) = 2;
    v14 = &v30;
  }

  vp::vx::data_flow::State<void>::~State(v14);
LABEL_13:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0 || (v8 = v7, v9 = a1[1], atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !v9))
  {
    _os_crash();
    __break(1u);
    goto LABEL_18;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
LABEL_18:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1634165602)
  {
    (*(*v13 + 16))(&v27, v13, 23);
    v15 = v27;
    v19 = v27;
    v20 = v28;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v16 = &unk_2881B73A8;
    goto LABEL_13;
  }

  if (a2 == 1970172770)
  {
    (*(*v13 + 16))(&v27, v13, 23);
    v15 = v27;
    v19 = v27;
    v20 = v28;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v16 = &unk_2881B7438;
LABEL_13:
    v27 = v16;
    LOBYTE(v28) = 0;
    v29 = &v27;
    v24 = v15;
    vp::vx::data_flow::State_Manager::create_state(&v25, (v9 + 48), &v27);
    v17 = v25;
    v21 = v25;
    v18 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v27);
    LODWORD(v27) = v17;
    v22 = 0;
    v23 = 0;
    vp::vx::data_flow::State<void>::~State(&v21);
    v25 = v17;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    vp::vx::data_flow::State<void>::~State(&v19);
    *a3 = v17;
    *(a3 + 8) = v18;
    v26 = 0uLL;
    *(a3 + 24) = 2;
    v14 = &v25;
    goto LABEL_14;
  }

  if (a2 != 1650815344)
  {
    *a3 = 0;
    *(a3 + 24) = 1;
    goto LABEL_16;
  }

  vp::vx::components::DSP_Settings::create_bluetooth_eq_preset_dsp_property_override(&v27, 0, v9, v13);
  *a3 = v27;
  *(a3 + 8) = v28;
  v28 = 0uLL;
  *(a3 + 24) = 2;
  v14 = &v27;
LABEL_14:
  vp::vx::data_flow::State<void>::~State(v14);
LABEL_16:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_27262C04C(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

int *vp::vx::components::DSP_Settings::create_bluetooth_eq_preset_dsp_property_override(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    (*(*a4 + 16))(&v19, a4, 50);
  }

  else
  {
    (*(*a4 + 16))(&v19, a4, 23);
  }

  v6 = v19;
  v9 = v20;
  v20 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v19);
  v11 = v6;
  v12 = v9;
  v19 = &unk_2881B74C8;
  LOBYTE(v20) = 0;
  v21 = &v19;
  v16 = v6;
  vp::vx::data_flow::State_Manager::create_state(&v17, (a3 + 48), &v19);
  v7 = v17;
  v13 = v17;
  v10 = v18;
  v18 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v17);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v19);
  LODWORD(v19) = v7;
  v14 = 0;
  v15 = 0;
  vp::vx::data_flow::State<void>::~State(&v13);
  *a1 = v7;
  *(a1 + 8) = v10;
  v20 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v19);
  return vp::vx::data_flow::State<void>::~State(&v11);
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_speaker_calibration_data_dsp_property_overrideERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS3_16Output_Port_TypeES8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = v3[1];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id)
  {
    v8 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v8 = 0;
  }

  if (*v6 != 7)
  {
    goto LABEL_22;
  }

  v9 = *v8;
  if (!*v8)
  {
    goto LABEL_22;
  }

  CFRetain(*v8);
  v10 = CFStringCreateWithBytes(0, "speaker calibration", 19, 0x8000100u, 0);
  cf[0] = v10;
  if (!v10)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(v9, v10);
  CFRelease(cf[0]);
  if (Value)
  {
    CFRetain(Value);
    v12 = CFGetTypeID(Value);
    if (v12 == CFDataGetTypeID())
    {
      CFRetain(Value);
      v18 = Value;
      CFRelease(Value);
      goto LABEL_15;
    }

    CFRelease(Value);
  }

  Value = 0;
  v18 = 0;
LABEL_15:
  CFRelease(v9);
  if (!Value)
  {
LABEL_22:
    CFDictionaryRef = 0;
    goto LABEL_23;
  }

  applesauce::CF::TypeRef::TypeRef(&v19, "Data");
  CFRetain(Value);
  v20 = Value;
  cf[0] = &v19;
  cf[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(cf);
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_23:
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v14);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = CFDictionaryRef;
  return result;
}

void sub_27262C42C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_speaker_calibration_data_dsp_property_overrideERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS3_16Output_Port_TypeES8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSJ_S8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7510;
  *(a2 + 8) = *(result + 8);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings48create_bluetooth_eq_preset_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v6[3] = *MEMORY[0x277D85DE8];
  v3 = vp::vx::data_flow::Value::view_storage(**a2);
  v4 = *v3;
  if (*v3)
  {
    CFRetain(*v3);
    v5 = v4;
    vp::vx::components::DSP_Settings::parse_bluetooth_eq_preset(v6, &v5);
  }

  v5 = 0;
  vp::vx::components::DSP_Settings::parse_bluetooth_eq_preset(v6, &v5);
}

void sub_27262C6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::DSP_Settings::parse_bluetooth_eq_preset(CFDictionaryRef *a1, const __CFDictionary **a2)
{
  qmemcpy(v42, "xfuaqebnlppa", 12);
  v44[1] = 0;
  v45 = 0;
  v43 = v44;
  v44[0] = 0;
  v3 = CFStringCreateWithBytes(0, "DSP_Settings_EQ_Override", 24, 0x8000100u, 0);
  v4 = v3;
  cf[0] = v3;
  if (v3)
  {
    v5 = v45;
    v45 = v3;
    CFRetain(v3);
    if (v5)
    {
      CFRelease(v5);
    }

    CFRelease(v4);
    v6 = *a2;
    if (v6)
    {
      v7 = CFStringCreateWithBytes(0, "eq", 2, 0x8000100u, 0);
      cf[0] = v7;
      if (!v7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      Value = CFDictionaryGetValue(v6, v7);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (Value)
      {
        CFRetain(Value);
        theArray = Value;
        v9 = CFGetTypeID(Value);
        if (v9 == CFArrayGetTypeID())
        {
          v10 = theArray;
          v11 = 0;
          v12 = 3000;
          while (CFArrayGetCount(v10) > v11)
          {
            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(cf, theArray, v11);
            if (!cf[0])
            {
              v33 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v33, "Could not construct");
            }

            v13 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterType");
            if (v13)
            {
              v14 = applesauce::CF::convert_as<float,0>(v13);
              if (v14 >> 32)
              {
                v15 = *&v14;
                if (!cf[0])
                {
                  v36 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v36, "Could not construct");
                }

                v16 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterFrequency");
                if (v16)
                {
                  v17 = applesauce::CF::convert_as<float,0>(v16);
                  if (v17 >> 32)
                  {
                    v18 = *&v17;
                    vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 - 2000, 0.0);
                    vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 - 1000, v15);
                    vp::utility::Audio_Unit_Preset::set_parameter(v42, v12, v18);
                  }
                }
              }
            }

            if (!cf[0])
            {
              v34 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v34, "Could not construct");
            }

            v19 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterGain");
            if (v19)
            {
              v20 = applesauce::CF::convert_as<float,0>(v19);
              if (v20 >> 32)
              {
                vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 + 1000, *&v20);
              }
            }

            if (!cf[0])
            {
              v35 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v35, "Could not construct");
            }

            v21 = applesauce::CF::details::at_key<__CFString const*>(cf[0], @"AUNBandEQ_FilterBandwidth");
            if (v21)
            {
              v22 = applesauce::CF::convert_as<float,0>(v21);
              if (v22 >> 32)
              {
                vp::utility::Audio_Unit_Preset::set_parameter(v42, v12 + 2000, *&v22);
              }
            }

            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            v11 = v12 - 2999;
            v10 = theArray;
            ++v12;
          }

          memset(__p, 0, sizeof(__p));
          v23 = v43;
          if (v43 != v44)
          {
            do
            {
              v24 = v23[5];
              if (v24 != v23 + 6)
              {
                do
                {
                  vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v23 + 8));
                  vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v24 + 8));
                  vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v24 + 14));
                  v25 = v24[5];
                  if (v25 != v24 + 6)
                  {
                    do
                    {
                      vp::utility::Audio_Unit_Preset_Saver::save<unsigned int>(__p, *(v25 + 7));
                      LODWORD(cf[0]) = bswap32(*(v25 + 8));
                      std::__copy_impl::operator()[abi:ne200100]<unsigned char const*,unsigned char const*,std::back_insert_iterator<std::vector<unsigned char>>>(cf, cf + 4, __p);
                      v26 = v25[1];
                      if (v26)
                      {
                        do
                        {
                          v27 = v26;
                          v26 = *v26;
                        }

                        while (v26);
                      }

                      else
                      {
                        do
                        {
                          v27 = v25[2];
                          v28 = *v27 == v25;
                          v25 = v27;
                        }

                        while (!v28);
                      }

                      v25 = v27;
                    }

                    while (v27 != v24 + 6);
                  }

                  v29 = v24[1];
                  if (v29)
                  {
                    do
                    {
                      v30 = v29;
                      v29 = *v29;
                    }

                    while (v29);
                  }

                  else
                  {
                    do
                    {
                      v30 = v24[2];
                      v28 = *v30 == v24;
                      v24 = v30;
                    }

                    while (!v28);
                  }

                  v24 = v30;
                }

                while (v30 != v23 + 6);
              }

              v31 = v23[1];
              if (v31)
              {
                do
                {
                  v32 = v31;
                  v31 = *v31;
                }

                while (v31);
              }

              else
              {
                do
                {
                  v32 = v23[2];
                  v28 = *v32 == v23;
                  v23 = v32;
                }

                while (!v28);
              }

              v23 = v32;
            }

            while (v32 != v44);
          }

          v46 = 0;
          v47 = 0uLL;
          cf[4] = &v46;
          std::allocator<applesauce::CF::TypeRefPair>::allocate_at_least[abi:ne200100](1uLL);
        }

        v40 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v40, "Could not construct");
      }

      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not find item");
    }

    else
    {
      v38 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v38, "Could not construct");
    }
  }

  v37 = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(v37, "Could not construct");
}

void sub_27262D538(void *a1)
{
  vp::utility::Audio_Unit_Preset::~Audio_Unit_Preset(v2);
  __cxa_begin_catch(a1);
  v2[0] = 0;
  v2[8] = 0;
  std::optional<applesauce::CF::DictionaryRef>::~optional(v2);
  __cxa_end_catch();
  JUMPOUT(0x27262D0ACLL);
}

void sub_27262D564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a26);
  applesauce::CF::ArrayRef::~ArrayRef(&a12);
  JUMPOUT(0x27262D5B0);
}

void vp::utility::Audio_Unit_Preset::~Audio_Unit_Preset(vp::utility::Audio_Unit_Preset *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    CFRelease(v2);
  }

  std::__tree<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::map<unsigned int,std::map<unsigned int,float>>>>>::destroy(*(this + 3));
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings48create_bluetooth_eq_preset_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B74C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_27262DA04(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
  }

  vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(&v10, v5);
  v6 = v10;
  v11 = v10 == 0;
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int>(&v13, "UInt32", &v11);
  v12[0] = &v13;
  v12[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v8);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  return result;
}

void sub_27262DB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(void *a1, const __CFDictionary *a2)
{
  if (a2)
  {
    v4 = CFStringCreateWithBytes(0, "noise suppression", 17, 0x8000100u, 0);
    cf = v4;
    if (!v4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    Value = CFDictionaryGetValue(a2, v4);
    CFRelease(cf);
    if (Value)
    {
      CFRetain(Value);
      v6 = CFGetTypeID(Value);
      if (v6 == CFNumberGetTypeID())
      {
        CFRetain(Value);
        *a1 = Value;
        CFRelease(Value);
        return;
      }

      CFRelease(Value);
    }
  }

  *a1 = 0;
}

void sub_27262DCC0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27262DC60);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int>(applesauce::CF::TypeRef *a1, char *a2, int *a3)
{
  applesauce::CF::TypeRef::TypeRef(a1, a2);
  valuePtr = *a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v5;
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_27262DDB0(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7438;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_agc_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (!*v4)
  {
LABEL_17:
    Value = 0;
    goto LABEL_18;
  }

  CFRetain(*v4);
  v6 = CFStringCreateWithBytes(0, "agc", 3, 0x8000100u, 0);
  cf[0] = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  Value = CFDictionaryGetValue(v5, v6);
  CFRelease(cf[0]);
  if (!Value)
  {
    goto LABEL_7;
  }

  CFRetain(Value);
  v8 = CFGetTypeID(Value);
  if (v8 != CFNumberGetTypeID())
  {
    CFRelease(Value);
LABEL_7:
    Value = 0;
    v15 = 0;
    goto LABEL_8;
  }

  CFRetain(Value);
  v15 = Value;
  CFRelease(Value);
LABEL_8:
  CFRelease(v5);
  if (!Value)
  {
    goto LABEL_17;
  }

  v9 = applesauce::CF::convert_as<unsigned int,0>(Value);
  if ((v9 & 0x100000000) != 0)
  {
    v14 = v9 == 0;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int const&>(&v16, "UInt32", &v14);
    cf[0] = &v16;
    cf[1] = 1;
    Value = applesauce::CF::details::make_CFDictionaryRef(cf);
    if (v17)
    {
      CFRelease(v17);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if ((v9 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v10);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = Value;
  return result;
}

void sub_27262E07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_agc_bypass_dsp_property_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JS8_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS8_EEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B73A8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::DSP_Settings::get_dsp_parameter_override(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_11;
  }

  v7 = std::__shared_weak_count::lock(v4);
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = a1[1];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!v9)
  {
    goto LABEL_11;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
    while (1)
    {
      _os_crash();
      __break(1u);
LABEL_11:
      _os_crash();
      __break(1u);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1684828263)
  {
    vp::vx::components::DSP_Settings::create_post_gain_dsp_parameter_override(&v15, 1, v9, v13);
    *a3 = v15;
    *(a3 + 8) = v16;
    v16 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v15);
    v14 = 2;
  }

  else
  {
    *a3 = 0;
    v14 = 1;
  }

  *(a3 + 24) = v14;
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a1[2];
  if (!v5 || (v7 = std::__shared_weak_count::lock(v5)) == 0 || (v8 = v7, v9 = a1[1], atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed), !v9))
  {
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  v10 = a1[4];
  if (!v10 || (v11 = std::__shared_weak_count::lock(v10), (v12 = v11) == 0) || (v13 = a1[3], atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed), !v13))
  {
LABEL_15:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  if (a2 == 1970040935)
  {
    vp::vx::components::DSP_Settings::create_post_gain_dsp_parameter_override(&v26, 0, v9, v13);
    *a3 = v26;
    *(a3 + 8) = v27;
    v27 = 0uLL;
    *(a3 + 24) = 2;
    v16 = &v26;
  }

  else
  {
    if (a2 != 1853056098)
    {
      *a3 = 0;
      *(a3 + 24) = 1;
      goto LABEL_13;
    }

    (*(*v13 + 16))(&v26, v13, 23);
    v14 = v26;
    v18 = v26;
    v19 = v27;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    v26 = &unk_2881B73F0;
    LOBYTE(v27) = 0;
    v28 = &v26;
    v23 = v14;
    vp::vx::data_flow::State_Manager::create_state(&v24, (v9 + 48), &v26);
    v15 = v24;
    v20 = v24;
    v17 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v26);
    LODWORD(v26) = v15;
    v21 = 0;
    v22 = 0;
    vp::vx::data_flow::State<void>::~State(&v20);
    v24 = v15;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    vp::vx::data_flow::State<void>::~State(&v18);
    *a3 = v15;
    *(a3 + 8) = v17;
    v25 = 0uLL;
    *(a3 + 24) = 2;
    v16 = &v24;
  }

  vp::vx::data_flow::State<void>::~State(v16);
LABEL_13:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v8);
}

void sub_27262E330(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

int *vp::vx::components::DSP_Settings::create_post_gain_dsp_parameter_override(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    (*(*a4 + 16))(&v19, a4, 50);
  }

  else
  {
    (*(*a4 + 16))(&v19, a4, 23);
  }

  v6 = v19;
  v9 = v20;
  v20 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v19);
  v11 = v6;
  v12 = v9;
  v19 = &unk_2881B7480;
  LOBYTE(v20) = 0;
  v21 = &v19;
  v16 = v6;
  vp::vx::data_flow::State_Manager::create_state(&v17, (a3 + 48), &v19);
  v7 = v17;
  v13 = v17;
  v10 = v18;
  v18 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v17);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v19);
  LODWORD(v19) = v7;
  v14 = 0;
  v15 = 0;
  vp::vx::data_flow::State<void>::~State(&v13);
  *a1 = v7;
  *(a1 + 8) = v10;
  v20 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v19);
  return vp::vx::data_flow::State<void>::~State(&v11);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_post_gain_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
    v6 = applesauce::CF::details::at_key<char const(&)[5]>(v5, "gain");
    if (v6)
    {
      v7 = v6;
      CFRetain(v6);
      v8 = CFGetTypeID(v7);
      if (v8 == CFNumberGetTypeID())
      {
        CFRetain(v7);
        CFRelease(v7);
LABEL_8:
        CFRelease(v5);
        goto LABEL_9;
      }

      CFRelease(v7);
    }

    v7 = 0;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v9);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v7;
  return result;
}

void sub_27262E5E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings39create_post_gain_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B7480;
  *(a2 + 8) = *(result + 8);
  return result;
}

void sub_27262E91C(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_level_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  if (*v4)
  {
    CFRetain(*v4);
    vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(&v8, v5);
    CFRelease(v5);
  }

  else
  {
    vp::vx::components::parse_as<applesauce::CF::NumberRef,char const(&)[18]>(&v8, 0);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v8;
  return result;
}

void sub_27262E9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::NumberRef::~NumberRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_10components12DSP_Settings53create_noise_suppression_level_dsp_parameter_overrideENS2_6DomainERSB_RNS3_27Voice_Processor_State_OwnerEE3__0JNS7_13DictionaryRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSK_EEERNS4_13State_ManagerESM_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881B73F0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::components::DSP_Settings::configure(std::__shared_weak_count **this)
{
  v25 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::DSP_Settings]", 32);
    v4 = v20;
    v5 = v20;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v22 = v9;
      v23 = 2080;
      v24 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_INFO, "%s%sconfigure", buf, 0x16u);
      LOBYTE(v5) = v20;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[2];
  if (!v11 || (v12 = std::__shared_weak_count::lock(v11)) == 0 || (v13 = v12, v14 = this[1], atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed), !v14))
  {
    _os_crash();
    __break(1u);
    goto LABEL_22;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v15 = this[4];
  if (!v15 || (v16 = std::__shared_weak_count::lock(v15), (v17 = v16) == 0) || (v18 = this[3], atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed), !v18))
  {
LABEL_22:
    _os_crash();
    __break(1u);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
}

void sub_27262EC84(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void vp::vx::components::DSP_Settings::set_state_owner(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::DSP_Settings::set_state_manager(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(a1 + 16);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void vp::vx::components::DSP_Settings::~DSP_Settings(std::__shared_weak_count **this)
{
  vp::vx::components::DSP_Settings::~DSP_Settings(this);

  JUMPOUT(0x2743CBFA0);
}

{
  v19 = *MEMORY[0x277D85DE8];
  log = vp::get_log(this);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::components::DSP_Settings]", 32);
    v4 = v14;
    v5 = v14;
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v5 >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = v6;
      }

      v9 = __p[0];
      if (v5 >= 0)
      {
        v9 = __p;
      }

      if (v8)
      {
        v10 = " ";
      }

      else
      {
        v10 = "";
      }

      *buf = 136315394;
      v16 = v9;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEBUG, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v5) = v14;
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = this[4];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = this[2];
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[1] + 8;
    do
    {
      --v2;
      v3 = std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](v3) + 40;
    }

    while (v2);
  }

  v4 = a1[3];
  if (v4)
  {
    (*(**a1 + 24))(*a1, a1[1], 40 * v4, 8);
  }

  return a1;
}

void *boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = (a1[1] + 8);
    do
    {
      --v2;
      vp::vx::data_flow::Value::~Value(v3);
      v3 = (v4 + 32);
    }

    while (v2);
  }

  v5 = a1[3];
  if (v5)
  {
    (*(**a1 + 24))(*a1, a1[1], 32 * v5, 8);
  }

  return a1;
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 8 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(std::__shared_mutex_base *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7[0] = a4;
  v7[1] = a1;
  v8 = 1;
  std::__shared_mutex_base::lock(a1);
  a3(v7);
  std::__shared_mutex_base::unlock(a1);
}

void sub_27262F144(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_27262F15C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int buf)
{
  if (a2)
  {
    std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&buf);
    v24 = __cxa_begin_catch(a1);
    log = vp::get_log(v24);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(&__p, v22, "vp::vx::data_flow::Engine]", 25);
      v27 = a19;
      v28 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (v27 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x27262F110);
  }

  JUMPOUT(0x27262F14CLL);
}

uint64_t std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock(*a1);
  }

  return a1;
}

double caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state(vp::vx::data_flow::Value &&)::$_0>(unsigned int ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = (*a1)[2];
  v6 = atomic_fetch_add(v2 + 78, 1u) + 1;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v2 + 82), v6, &v7);
  vp::vx::data_flow::Value::~Value((v4 + 136));
  vp::vx::data_flow::Value::Value((v4 + 136), v3, *v3);
  *&result = 1;
  *(v4 + 128) = 1;
  **v1 = v6;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2, _DWORD **a3)
{
  v6 = a2;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    if (v8.u32[0] > 1uLL)
    {
      v3 = a2;
      if (v7 <= a2)
      {
        v3 = a2 % v7;
      }
    }

    else
    {
      v3 = (v7 - 1) & a2;
    }

    v9 = *(*a1 + 8 * v3);
    if (v9)
    {
      for (i = *v9; i; i = *i)
      {
        v11 = *(i + 8);
        if (v11 == a2)
        {
          if (*(i + 64) == a2)
          {
            return i;
          }
        }

        else
        {
          if (v8.u32[0] > 1uLL)
          {
            if (v11 >= v7)
            {
              v11 %= v7;
            }
          }

          else
          {
            v11 &= v7 - 1;
          }

          if (v11 != v3)
          {
            break;
          }
        }
      }
    }
  }

  i = (*(**(a1 + 32) + 16))(*(a1 + 32), 320, 64);
  *i = 0;
  *(i + 8) = v6;
  *(i + 64) = **a3;
  *(i + 128) = 0u;
  *(i + 144) = 0u;
  *(i + 160) = 0u;
  *(i + 176) = 0u;
  *(i + 192) = 0u;
  *(i + 208) = 0u;
  *(i + 240) = 0u;
  *(i + 256) = 0u;
  *(i + 272) = 0u;
  *(i + 288) = 0u;
  *(i + 304) = 0u;
  *(i + 224) = 0u;
  default_resource = std::pmr::get_default_resource(i);
  *(i + 144) = 0;
  *(i + 152) = 0;
  *(i + 136) = default_resource;
  *(i + 184) = 0;
  v13 = std::pmr::get_default_resource(default_resource);
  *(i + 192) = v13;
  *(i + 200) = i + 224;
  *(i + 208) = xmmword_272756680;
  v14 = std::pmr::get_default_resource(v13);
  *(i + 240) = v14;
  *(i + 248) = i + 272;
  *(i + 256) = xmmword_272756680;
  *(i + 288) = std::pmr::get_default_resource(v14);
  *(i + 296) = 0;
  *(i + 304) = 0;
  *(i + 312) = 0;
  v15 = (*(a1 + 40) + 1);
  v16 = *(a1 + 48);
  if (!v7 || (v16 * v7) < v15)
  {
    v17 = v7 < 3 || (v7 & (v7 - 1)) != 0;
    v18 = v17 | (2 * v7);
    v19 = vcvtps_u32_f32(v15 / v16);
    if (v18 <= v19)
    {
      prime = v19;
    }

    else
    {
      prime = v18;
    }

    if (*&prime == 1)
    {
      prime = 2;
    }

    else if ((*&prime & (*&prime - 1)) != 0)
    {
      prime = std::__next_prime(*&prime);
    }

    v21 = *(a1 + 8);
    if (*&prime > *&v21)
    {
LABEL_31:
      if (*&prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = (*(**(a1 + 16) + 16))(*(a1 + 16), 8 * *&prime, 8);
      v23 = *a1;
      *a1 = v22;
      if (v23)
      {
        std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v23, *(a1 + 8));
      }

      v24 = 0;
      *(a1 + 8) = prime;
      do
      {
        *(*a1 + 8 * v24++) = 0;
      }

      while (*&prime != v24);
      v25 = *(a1 + 24);
      if (v25)
      {
        v26 = v25[1];
        v27 = vcnt_s8(prime);
        v27.i16[0] = vaddlv_u8(v27);
        if (v27.u32[0] > 1uLL)
        {
          if (v26 >= *&prime)
          {
            v26 %= *&prime;
          }
        }

        else
        {
          v26 &= *&prime - 1;
        }

        *(*a1 + 8 * v26) = a1 + 24;
        v31 = *v25;
        if (*v25)
        {
          while (1)
          {
            v32 = v31[1];
            if (v27.u32[0] > 1uLL)
            {
              if (v32 >= *&prime)
              {
                v32 %= *&prime;
              }
            }

            else
            {
              v32 &= *&prime - 1;
            }

            if (v32 != v26)
            {
              v33 = *a1;
              if (!*(*a1 + 8 * v32))
              {
                *(v33 + 8 * v32) = v25;
                goto LABEL_56;
              }

              *v25 = *v31;
              *v31 = **(v33 + 8 * v32);
              **(v33 + 8 * v32) = v31;
              v31 = v25;
            }

            v32 = v26;
LABEL_56:
            v25 = v31;
            v31 = *v31;
            v26 = v32;
            if (!v31)
            {
              goto LABEL_67;
            }
          }
        }
      }

      goto LABEL_67;
    }

    if (*&prime < *&v21)
    {
      v28 = vcvtps_u32_f32(*(a1 + 40) / *(a1 + 48));
      if (*&v21 < 3uLL || (v29 = vcnt_s8(v21), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        v28 = std::__next_prime(v28);
      }

      else
      {
        v30 = 1 << -__clz(v28 - 1);
        if (v28 >= 2)
        {
          v28 = v30;
        }
      }

      if (*&prime <= v28)
      {
        prime = v28;
      }

      if (*&prime < *&v21)
      {
        if (prime)
        {
          goto LABEL_31;
        }

        v34 = *a1;
        *a1 = 0;
        if (v34)
        {
          std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 16), v34, *(a1 + 8));
        }

        *(a1 + 8) = 0;
      }
    }

LABEL_67:
    v7 = *(a1 + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v7 <= v6)
      {
        v3 = v6 % v7;
      }

      else
      {
        v3 = v6;
      }
    }

    else
    {
      v3 = (v7 - 1) & v6;
    }
  }

  v35 = *a1;
  v36 = *(*a1 + 8 * v3);
  if (v36)
  {
    *i = *v36;
LABEL_80:
    *v36 = i;
    goto LABEL_81;
  }

  *i = *(a1 + 24);
  *(a1 + 24) = i;
  *(v35 + 8 * v3) = a1 + 24;
  if (*i)
  {
    v37 = *(*i + 8);
    if ((v7 & (v7 - 1)) != 0)
    {
      if (v37 >= v7)
      {
        v37 %= v7;
      }
    }

    else
    {
      v37 &= v7 - 1;
    }

    v36 = (*a1 + 8 * v37);
    goto LABEL_80;
  }

LABEL_81:
  ++*(a1 + 40);
  return i;
}

uint64_t std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::~vector((a2 + 288));
    if (*(a2 + 264))
    {
      boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((a2 + 240), *(a2 + 248));
    }

    if (*(a2 + 216))
    {
      boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((a2 + 192), *(a2 + 200));
    }

    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](a2 + 160);
    vp::vx::data_flow::Value::~Value((a2 + 136));
  }

  v4 = **a1;

  return std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::deallocate[abi:ne200100](v4, a2);
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::create_state(std::function<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)> &&,std::span<unsigned int,18446744073709551615ul> const&)::$_0>(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v40 = atomic_fetch_add((v2 + 312), 1u) + 1;
  v43 = &v40;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v40, &v43);
  v7 = v6 + 160;
  v9 = (v6 + 184);
  result = *(v6 + 184);
  *(v6 + 184) = 0;
  if (result == v6 + 160)
  {
    result = (*(*result + 32))(result);
  }

  else if (result)
  {
    result = (*(*result + 40))(result);
  }

  v11 = (v3 + 24);
  v10 = *(v3 + 24);
  if (!v10)
  {
    v11 = (v6 + 184);
    goto LABEL_9;
  }

  if (v10 != v3)
  {
    *v9 = v10;
LABEL_9:
    *v11 = 0;
    goto LABEL_11;
  }

  *v9 = v7;
  result = (*(**v11 + 24))(*v11, v7);
LABEL_11:
  *(v6 + 128) = 1;
  v12 = v4[1];
  if (*(v6 + 216) >= v12)
  {
    goto LABEL_20;
  }

  if (v12 >> 62)
  {
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v5);
  }

  result = (*(**(v6 + 192) + 16))(*(v6 + 192), 4 * v12, 4);
  v13 = result;
  v14 = *(v6 + 200);
  v15 = *(v6 + 208);
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    memmove(result, v14, 4 * v15);
    v14 = *(v6 + 200);
  }

  result = boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate((v6 + 192), v14);
LABEL_19:
  *(v6 + 200) = v13;
  *(v6 + 216) = v12;
  v12 = v4[1];
LABEL_20:
  if (v12)
  {
    v17 = *v4;
    v18 = 4 * v12;
    do
    {
      v19 = *v17;
      v42 = *v17;
      v20 = *(v6 + 208);
      v21 = (*(v6 + 200) + 4 * v20);
      if (v20 == *(v6 + 216))
      {
        boost::container::vector<unsigned int,boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,unsigned int *,unsigned int const&>>(&v43, v6 + 192, v21, &v42);
        boost::container::vec_iterator<unsigned int *,false>::operator*(v43);
      }

      else
      {
        *v21 = v19;
        *(v6 + 208) = v20 + 1;
      }

      v43 = &v42;
      result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v42, &v43);
      v22 = *(result + 132);
      if (v22 >= *(v6 + 132))
      {
        *(v6 + 132) = v22 + 1;
      }

      ++v17;
      v18 -= 4;
    }

    while (v18);
    v23 = v4[1];
    if (v23)
    {
      v24 = *v4;
      v25 = &(*v4)[v23];
      do
      {
        v42 = *v24;
        v26 = v42;
        v43 = &v42;
        v27 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v42, &v43);
        ++*(v27 + 128);
        v41 = v40;
        v42 = v26;
        v43 = &v42;
        result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v26, &v43);
        v29 = *(result + 248);
        v28 = *(result + 256);
        if (v29)
        {
          v30 = 1;
        }

        else
        {
          v30 = v28 == 0;
        }

        if (!v30)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v31 = *(result + 248);
        if (v28)
        {
          v31 = *(result + 248);
          v32 = *(result + 256);
          do
          {
            if (v32 != 1 && !v31)
            {
              __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
            }

            if (!v31)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            v33 = v32 >> 1;
            v34 = &v31[4 * (v32 >> 1)];
            v36 = *v34;
            v35 = v34 + 4;
            v32 += ~(v32 >> 1);
            if (v36 >= v41)
            {
              v32 = v33;
            }

            else
            {
              v31 = v35;
            }
          }

          while (v32);
        }

        v37 = (v29 + 4 * v28);
        if (v31 == v37)
        {
          goto LABEL_48;
        }

        if (!v31)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        if (v41 < *v31)
        {
LABEL_48:
          if (v29 > v31 || v31 > v37)
          {
            __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
          }

          v39 = *(result + 264);
          if (v39 < v28)
          {
            __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
          }

          if (v39 == v28)
          {
            result = boost::container::vector<unsigned int,boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,unsigned int *,unsigned int const&>>(&v43, result + 240, v31, &v41);
          }

          else if (v31 == v37)
          {
            *v37 = v41;
            *(result + 256) = v28 + 1;
          }

          else
          {
            *v37 = *(v37 - 1);
            *(result + 256) = v28 + 1;
            if (v37 - 4 != v31)
            {
              result = memmove(v31 + 4, v31, v37 - 4 - v31);
            }

            *v31 = v41;
          }
        }

        else if (!v29)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }

        ++v24;
      }

      while (v24 != v25);
    }
  }

  **v1 = v40;
  return result;
}

_DWORD *boost::container::vector<unsigned int,boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>,unsigned int *,unsigned int const&>>(void *a1, uint64_t a2, char *a3, _DWORD *a4)
{
  v4 = *(a2 + 24);
  if (v4 != *(a2 + 16))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x3FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_26;
  }

  v9 = *(a2 + 8);
  if (!(v4 >> 61))
  {
    if (v4 + 1 > 8 * v4 / 5)
    {
      v10 = v4 + 1;
    }

    else
    {
      v10 = 8 * v4 / 5;
    }

    goto LABEL_16;
  }

  if (v4 >> 61 > 4)
  {
    v11 = -1;
  }

  else
  {
    v11 = 8 * v4;
  }

  v12 = v4 + 1;
  if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x3FFFFFFFFFFFFFFFLL;
  }

  v10 = v12 > v11 ? v4 + 1 : v11;
  if (v12 >> 62)
  {
LABEL_26:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

LABEL_16:
  result = (*(**a2 + 16))();
  v14 = result;
  v15 = *(a2 + 8);
  v16 = *(a2 + 16);
  v17 = result;
  if (v15)
  {
    v17 = result;
    if (v15 != a3)
    {
      result = memmove(result, *(a2 + 8), a3 - v15);
      v17 = v14 + a3 - v15;
    }
  }

  *v17 = *a4;
  if (a3)
  {
    v18 = &v15[4 * v16];
    if (v18 != a3)
    {
      result = memmove(v17 + 4, a3, v18 - a3);
    }
  }

  if (v15)
  {
    result = boost::container::small_vector_allocator<unsigned int,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 8));
  }

  v19 = *(a2 + 16) + 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v19;
  *(a2 + 24) = v10;
  *a1 = &a3[v14 - v9];
  return result;
}

uint64_t boost::container::vec_iterator<unsigned int *,false>::operator*(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return result;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::find_and_retain_state(unsigned int)::$_0>(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1)[1];
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>((v2 + 328), v3);
  v5 = result;
  if (result)
  {
    v6 = v3;
    v7 = &v6;
    result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v2 + 328, v3, &v7);
    ++*(result + 128);
  }

  *v1[2] = v5 != 0;
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (*(result + 16) == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= v2)
        {
          v7 %= v2;
        }
      }

      else
      {
        v7 &= v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::retain_state(unsigned int)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v3 = *(*a1)[1];
  v4 = &v3;
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v1 + 328, v3, &v4);
  ++*(result + 128);
  return result;
}

uint64_t *vp::vx::data_flow::Engine::do_release_state(int8x8_t *this, unsigned int a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(&this[41], a2);
  if (!result)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v5 = *(result + 32);
  v6 = __OFSUB__(v5--, 1);
  *(result + 32) = v5;
  if ((v5 < 0) ^ v6 | (v5 == 0))
  {
    v8 = result[25];
    v7 = result[26];
    if (v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7 == 0;
    }

    if (!v9)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    if (v7)
    {
      v10 = &v8[v7];
      do
      {
        if (!v8)
        {
          __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
        }

        v42 = *v8;
        v11 = v42;
        v38 = &v42;
        v12 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&this[41], v42, &v38);
        v14 = *(v12 + 248);
        v13 = *(v12 + 256);
        if (v14)
        {
          v15 = 1;
        }

        else
        {
          v15 = v13 == 0;
        }

        if (!v15)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v16 = v12;
        v17 = *(v12 + 248);
        if (v13)
        {
          v18 = *(v12 + 256);
          do
          {
            if (v18 != 1 && !v17)
            {
              __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
            }

            if (!v17)
            {
              __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
            }

            v19 = v18 >> 1;
            v20 = &v17[4 * (v18 >> 1)];
            v22 = *v20;
            v21 = (v20 + 1);
            v18 += ~(v18 >> 1);
            if (v22 >= a2)
            {
              v18 = v19;
            }

            else
            {
              v17 = v21;
            }
          }

          while (v18);
        }

        v23 = (v14 + 4 * v13);
        if (v17 != v23)
        {
          if (!v17)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          if (*v17 <= a2)
          {
            v24 = v17;
          }

          else
          {
            v24 = (v14 + 4 * v13);
          }

          if (v24 != v23)
          {
            if (v14 > v24 || v24 >= v23)
            {
              __assert_rtn("erase", "vector.hpp", 2092, "this->priv_in_range(position)");
            }

            v26 = v24 + 4;
            if (v24)
            {
              v27 = v26 == v23;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              memmove(v24, v26, v23 - v26);
              v13 = *(v16 + 256);
            }

            *(v16 + 256) = v13 - 1;
          }
        }

        vp::vx::data_flow::Engine::do_release_state(this, v11);
        ++v8;
      }

      while (v8 != v10);
    }

    result = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(&this[41], a2);
    if (result)
    {
      v28 = this[42];
      v29 = result[1];
      v30 = vcnt_s8(v28);
      v30.i16[0] = vaddlv_u8(v30);
      if (v30.u32[0] > 1uLL)
      {
        if (v29 >= *&v28)
        {
          v29 %= *&v28;
        }
      }

      else
      {
        v29 &= *&v28 - 1;
      }

      v31 = this[41];
      v32 = *(*&v31 + 8 * v29);
      do
      {
        v33 = v32;
        v32 = *v32;
      }

      while (v32 != result);
      if (v33 == &this[44])
      {
        goto LABEL_63;
      }

      v34 = v33[1];
      if (v30.u32[0] > 1uLL)
      {
        if (*&v34 >= *&v28)
        {
          *&v34 %= *&v28;
        }
      }

      else
      {
        *&v34 &= *&v28 - 1;
      }

      if (*&v34 != v29)
      {
LABEL_63:
        if (!*result)
        {
          goto LABEL_64;
        }

        v35 = *(*result + 8);
        if (v30.u32[0] > 1uLL)
        {
          if (v35 >= *&v28)
          {
            v35 %= *&v28;
          }
        }

        else
        {
          v35 &= *&v28 - 1;
        }

        if (v35 != v29)
        {
LABEL_64:
          *(*&v31 + 8 * v29) = 0;
        }
      }

      v36 = *result;
      if (*result)
      {
        v37 = *(*&v36 + 8);
        if (v30.u32[0] > 1uLL)
        {
          if (v37 >= *&v28)
          {
            v37 %= *&v28;
          }
        }

        else
        {
          v37 &= *&v28 - 1;
        }

        if (v37 != v29)
        {
          *(*&this[41] + 8 * v37) = v33;
          v36 = *result;
        }
      }

      *v33 = v36;
      *result = 0;
      --*&this[46];
      v40 = 1;
      v41[0] = 0;
      *(v41 + 3) = 0;
      v38 = 0;
      v39 = this + 45;
      return std::__hash_node_destructor<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,void *>>>::operator()[abi:ne200100](&v39, result);
    }
  }

  return result;
}

void vp::vx::data_flow::Engine::do_with_shared_state_lock(std::__shared_mutex_base *a1, void (*a2)(void), uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = a3;
  v6[1] = a1;
  v7 = 1;
  std::__shared_mutex_base::lock_shared(a1);
  a2(v6);
  std::__shared_mutex_base::unlock_shared(a1);
}

void sub_272630594(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

void vp::vx::data_flow::Engine::do_get_state_value(vp::vx::data_flow::Engine *this, unsigned int a2, vp::vx::data_flow::Value *a3)
{
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(this + 41, a2);
  if (!v6)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v7 = v6;
  if (v6[19])
  {

    vp::vx::data_flow::Value::operator=(a3, v6 + 17);
  }

  else
  {
    std::mutex::lock((this + 168));
    vp::vx::data_flow::Engine::do_update_value(this, a2, (v7 + 17));
    vp::vx::data_flow::Value::operator=(a3, v7 + 17);

    std::mutex::unlock((this + 168));
  }
}

uint64_t vp::vx::data_flow::Engine::do_update_value(vp::vx::data_flow::Engine *a1, unsigned int a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::find<unsigned int>(a1 + 41, a2);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v5;
  v7 = v5[26];
  MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v8 >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = v8;
  }

  bzero(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  if (v7)
  {
    v11 = 0;
    do
    {
      LODWORD(v17) = *(v6[25] + 4 * v11);
      v18[0] = &v17;
      v12 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 328, v17, v18);
      v13 = v12 + 136;
      if (!*(v12 + 152))
      {
        vp::vx::data_flow::Engine::do_update_value(a1, v17, v13);
      }

      *&v9[2 * v11++] = v13;
    }

    while (v11 < v6[26]);
  }

  v17 = a3;
  v18[0] = v9;
  v14 = v6[23];
  if (!v14)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v14 + 48))(v14, v18, &v17);
}

vp::vx::data_flow::Value *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::get_state_value(unsigned int,unsigned int,vp::vx::data_flow::Value &)::$_0>(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(*a1)[1];
  v3 = (*a1)[3];
  v11 = *(*a1)[2];
  v12 = v2;
  v4 = boost::container::flat_map<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::at(v1 + 384, &v11);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::find(&v13, (v4 + 2), &v12);
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  if (v6)
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

  if (v13 == (v6 + 32 * v7))
  {
    boost::container::throw_length_error("flat_map::at key not found", v5);
  }

  v9 = v13 + 2;

  return vp::vx::data_flow::Value::operator=(v3, v9);
}

unsigned int *boost::container::flat_map<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::at(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v15 = v2;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (!v4)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,true>,unsigned int>(&v14, &v15, v2 + (v3 << 7), *a2);
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
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

  v11 = (v8 + (v9 << 7));
  v12 = v14;
  if (v14 != v11)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a2 < *v14)
    {
      v12 = v11;
    }
  }

  if (v12 == v11)
  {
    boost::container::throw_length_error("flat_map::at key not found", v7);
  }

  return v12 + 16;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::find(unsigned int **a1, uint64_t a2, unsigned int *a3)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  v15 = v3;
  if (v3)
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

  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>*,true>,unsigned int>(a1, &v15, v3 + 32 * v4, *a3);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v13 = (v10 + 32 * v11);
  v14 = *a1;
  if (*a1 != v13)
  {
    if (!v14)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a3 < *v14)
    {
      *a1 = v13;
    }
  }

  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 5;
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

      v6 = v5 >> 1;
      v7 = &v4[8 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 8;
        *a2 = v7 + 8;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,true>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 7;
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

      v6 = v5 >> 1;
      v7 = &v4[32 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 32;
        *a2 = v7 + 32;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::has_state_value(unsigned int,unsigned int)::$_0>(BOOL ***a1)
{
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = *(*a1)[2];
  v9 = *(*a1)[3];
  v10 = v3;
  v4 = boost::container::flat_map<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::at((v2 + 384), &v9);
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::find(&v11, (v4 + 2), &v10);
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  if (v6)
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

  **v1 = v11 != (v6 + 32 * v7);
  return result;
}

void vp::vx::data_flow::Engine::do_with_state_manager_lock(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v5 = a2;
  v6 = a3;
  std::mutex::lock((a1 + 232));
  a2(&v6);
  std::mutex::unlock((a1 + 232));
}

void sub_272630F14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  std::mutex::unlock((v10 + 232));
  __cxa_begin_catch(a1);
  std::current_exception();
  v12.__ptr_ = &a10;
  std::rethrow_exception(v12);
  __break(1u);
}

void sub_272630F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::set_state_value(unsigned int,vp::vx::data_flow::Value &&)::$_0>(vp::vx::data_flow::Engine ***a1)
{
  v1 = *a1;
  v2 = **a1;
  vp::vx::data_flow::Engine::do_notify_state_manager_begin(v2);
  v3 = v2;
  v4 = *(v1 + 1);
  vp::vx::data_flow::Engine::do_with_unique_state_lock(v2, caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::set_state_value(unsigned int,vp::vx::data_flow::Value &&)::$_0::operator() const(void)::{lambda(void)#1}>, &v3);
  vp::vx::data_flow::Engine::do_notify_state_manager_end(v2);
}

void vp::vx::data_flow::Engine::do_notify_state_manager_begin(vp::vx::data_flow::Engine *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 37);
      if (v5)
      {
        (*(*v5 + 16))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void vp::vx::data_flow::Engine::do_with_unique_state_lock(std::__shared_mutex_base *a1, void (*a2)(void), uint64_t a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6[0] = a3;
  v6[1] = a1;
  v7 = 1;
  std::__shared_mutex_base::lock(a1);
  a2(v6);
  std::__shared_mutex_base::unlock(a1);
}

void sub_2726310D4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void vp::vx::data_flow::Engine::do_notify_state_manager_end(vp::vx::data_flow::Engine *this)
{
  v2 = *(this + 38);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 37);
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::set_state_value(unsigned int,vp::vx::data_flow::Value &&)::$_0::operator() const(void)::{lambda(void)#1}>(unsigned int ***a1)
{
  v1 = **a1;
  v2 = (*a1)[2];
  v12 = *(*a1)[1];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v13 = &v12;
  v3 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v1 + 82), v12, &v13);
  v4 = *(v3 + 152);
  v5 = v2[2];
  if (!(v4 | v5) || v4 == v5 && ((*(*v4 + 72))(v4, v3 + 144, v2 + 1) & 1) != 0)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    vp::vx::data_flow::Value::~Value((v3 + 136));
    vp::vx::data_flow::Value::Value((v3 + 136), v2, *v2);
    std::vector<unsigned int>::push_back[abi:ne200100](&v9, &v12);
    std::deque<unsigned int>::push_back(v8, &v12);
    v7 = v9;
    v6 = v10;
  }

  vp::vx::data_flow::Engine::do_update_downstream(v1, v7, v6, v8);
  vp::vx::data_flow::Engine::do_notify_listeners(v1, v8);
  std::deque<unsigned int>::~deque[abi:ne200100](v8);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_272631420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  std::deque<unsigned int>::~deque[abi:ne200100](&a9);
  if (v17)
  {
    a17 = v17;
    operator delete(v17);
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
      std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
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

void std::deque<unsigned int>::push_back(unint64_t *a1, _DWORD *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 7) - 1;
  }

  v8 = a1[4];
  v7 = a1[5];
  v9 = v7 + v8;
  if (v6 == v7 + v8)
  {
    if (v8 < 0x400)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v4 - v5 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::allocator<unsigned int *>::allocate_at_least[abi:ne200100](v13);
    }

    a1[4] = v8 - 1024;
    v14 = *v5;
    a1[1] = (v5 + 1);
    std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(a1, &v14);
    v5 = a1[1];
    v7 = a1[5];
    v9 = a1[4] + v7;
  }

  *(*(v5 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  a1[5] = v7 + 1;
}

void sub_2726319EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void vp::vx::data_flow::Engine::do_update_downstream(unsigned int *a1, unsigned int *a2, unsigned int *a3, unint64_t *a4)
{
  v36 = 0;
  v37 = 0;
  v35 = &v36;
  *__p = 0u;
  v33 = 0u;
  v34 = 1065353216;
  v31[0] = a1;
  v31[1] = &v35;
  default_resource = a1;
  v28 = &v35;
  if (a2 == a3)
  {
    goto LABEL_53;
  }

  v5 = a2;
  do
  {
    vp::vx::data_flow::Engine::do_update_downstream(std::vector<unsigned int> const&,std::queue<unsigned int> &)::$_0::operator()(&default_resource, *v5++);
  }

  while (v5 != a3);
  if (!v37)
  {
    goto LABEL_53;
  }

  do
  {
    v7 = v35;
    while (v7[10])
    {
      v8 = *(v7[6] + ((v7[9] >> 7) & 0x1FFFFFFFFFFFFF8));
      v9 = v7[9] & 0x3FF;
      v10 = *(v8 + 4 * v9);
      v30 = *(v8 + 4 * v9);
      if (!__p[1])
      {
        goto LABEL_38;
      }

      v11 = vcnt_s8(__p[1]);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = v10;
        if (__p[1] <= v10)
        {
          v12 = v10 % LODWORD(__p[1]);
        }
      }

      else
      {
        v12 = (LODWORD(__p[1]) - 1) & v10;
      }

      v13 = *(__p[0] + v12);
      if (v13 && (v14 = *v13) != 0)
      {
        while (1)
        {
          v15 = v14[1];
          if (v15 == v10)
          {
            break;
          }

          if (v11.u32[0] > 1uLL)
          {
            if (v15 >= __p[1])
            {
              v15 %= __p[1];
            }
          }

          else
          {
            v15 &= __p[1] - 1;
          }

          if (v15 != v12)
          {
            goto LABEL_23;
          }

LABEL_22:
          v14 = *v14;
          if (!v14)
          {
            goto LABEL_23;
          }
        }

        if (*(v14 + 4) != v10)
        {
          goto LABEL_22;
        }

LABEL_44:
        *(v7 + 9) = vaddq_s64(*(v7 + 9), xmmword_272756690);
        std::deque<unsigned int>::__maybe_remove_front_spare[abi:ne200100]((v7 + 5));
      }

      else
      {
LABEL_23:
        if (v11.u32[0] > 1uLL)
        {
          v16 = v10;
          if (__p[1] <= v10)
          {
            v16 = v10 % LODWORD(__p[1]);
          }
        }

        else
        {
          v16 = (LODWORD(__p[1]) - 1) & v10;
        }

        v17 = *(__p[0] + v16);
        if (!v17 || (v18 = *v17) == 0)
        {
LABEL_38:
          operator new();
        }

        while (1)
        {
          v19 = v18[1];
          if (v19 == v10)
          {
            break;
          }

          if (v11.u32[0] > 1uLL)
          {
            if (v19 >= __p[1])
            {
              v19 %= __p[1];
            }
          }

          else
          {
            v19 &= __p[1] - 1;
          }

          if (v19 != v16)
          {
            goto LABEL_38;
          }

LABEL_37:
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_38;
          }
        }

        if (*(v18 + 4) != v10)
        {
          goto LABEL_37;
        }

        default_resource = &v30;
        v20 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 82), v10, &default_resource);
        default_resource = std::pmr::get_default_resource(v20);
        v28 = 0;
        v29 = 0;
        vp::vx::data_flow::Engine::do_update_value(a1, v30, &default_resource);
        v21 = v20[19];
        if (v21 | v29 && (v21 != v29 || ((*(*v21 + 72))(v21, v20 + 18, &v28) & 1) == 0))
        {
          vp::vx::data_flow::Value::~Value((v20 + 17));
          vp::vx::data_flow::Value::Value((v20 + 17), &default_resource, default_resource);
          std::deque<unsigned int>::push_back(a4, &v30);
          vp::vx::data_flow::Engine::do_update_downstream(std::vector<unsigned int> const&,std::queue<unsigned int> &)::$_0::operator()(v31, v30);
          vp::vx::data_flow::Value::~Value(&default_resource);
          goto LABEL_44;
        }

        vp::vx::data_flow::Value::~Value(&default_resource);
      }
    }

    v22 = v7[1];
    v23 = v7;
    if (v22)
    {
      do
      {
        v24 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      do
      {
        v24 = v23[2];
        v25 = *v24 == v23;
        v23 = v24;
      }

      while (!v25);
    }

    if (v35 == v7)
    {
      v35 = v24;
    }

    --v37;
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v36, v7);
    std::deque<unsigned int>::~deque[abi:ne200100]((v7 + 5));
    operator delete(v7);
  }

  while (v37);
LABEL_53:
  std::__hash_table<vp::vx::io::Object_ID<vp::vx::io::Node>,std::hash<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::equal_to<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::allocator<vp::vx::io::Object_ID<vp::vx::io::Node>>>::~__hash_table(__p);
  std::__tree<std::__value_type<unsigned int,std::queue<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::queue<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::queue<unsigned int>>>>::destroy(v36);
}

void sub_2726320A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  std::__hash_table<vp::vx::io::Object_ID<vp::vx::io::Node>,std::hash<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::equal_to<vp::vx::io::Object_ID<vp::vx::io::Node>>,std::allocator<vp::vx::io::Object_ID<vp::vx::io::Node>>>::~__hash_table(va);
  std::__tree<std::__value_type<unsigned int,std::queue<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::queue<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::queue<unsigned int>>>>::destroy(*(v18 - 96));
  _Unwind_Resume(a1);
}

void vp::vx::data_flow::Engine::do_notify_listeners(uint64_t result, int64x2_t *a2)
{
  while (a2[2].i64[1])
  {
    v9 = *(*(a2->i64[1] + ((a2[2].i64[0] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (a2[2].i64[0] & 0x3FF));
    v10 = &v9;
    v4 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(result + 328, v9, &v10);
    if (v4[19])
    {
      v6 = v4[37];
      v5 = v4[38];
      if (v6)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 == 0;
      }

      if (!v7)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (v5)
      {
        v8 = v6 + 40 * v5;
        do
        {
          if (!v6)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(*(v6 + 32), v9);
          v6 += 40;
        }

        while (v6 != v8);
      }
    }

    a2[2] = vaddq_s64(a2[2], xmmword_272756690);
    std::deque<unsigned int>::__maybe_remove_front_spare[abi:ne200100](a2);
  }
}

uint64_t std::deque<unsigned int>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void std::deque<unsigned int>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 32) >= 0x800uLL)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 1024;
  }
}

void vp::vx::data_flow::Engine::do_update_downstream(std::vector<unsigned int> const&,std::queue<unsigned int> &)::$_0::operator()(uint64_t *a1, unsigned int a2)
{
  v14 = a2;
  v3 = *a1;
  v15 = &v14;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v3 + 328, a2, &v15);
  v6 = *(v4 + 248);
  v5 = *(v4 + 256);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v5)
  {
    v8 = &v6[v5];
    do
    {
      if (!v6)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v13 = *v6;
      v15 = &v13;
      v9 = *(std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v3 + 328, v13, &v15) + 132);
      v10 = *(a1[1] + 8);
      if (!v10)
      {
LABEL_15:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v11 = v10;
          v12 = *(v10 + 32);
          if (v9 >= v12)
          {
            break;
          }

          v10 = *v11;
          if (!*v11)
          {
            goto LABEL_15;
          }
        }

        if (v12 >= v9)
        {
          break;
        }

        v10 = v11[1];
        if (!v10)
        {
          goto LABEL_15;
        }
      }

      std::deque<unsigned int>::push_back(v11 + 5, &v13);
      ++v6;
    }

    while (v6 != v8);
  }
}

void std::__tree<std::__value_type<unsigned int,std::queue<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::queue<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::queue<unsigned int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::queue<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::queue<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::queue<unsigned int>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::queue<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::queue<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::queue<unsigned int>>>>::destroy(a1[1]);
    std::deque<unsigned int>::~deque[abi:ne200100]((a1 + 5));

    operator delete(a1);
  }
}

void std::__split_buffer<unsigned int *>::emplace_back<unsigned int *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::allocator<unsigned int *>::allocate_at_least[abi:ne200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::allocator<unsigned int *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_272632A20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    vp::vx::data_flow::Value::~Value((v2 + 8));
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_272632A4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unsigned int *boost::container::flat_map<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry,std::less<unsigned int>,boost::container::small_vector<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<std::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_subscript(char *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unsigned int a37, uint64_t a38, uint64_t a39, __int128 a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  a51 = *MEMORY[0x277D85DE8];
  v51 = *(a1 + 1);
  v52 = *(a1 + 2);
  a29 = v51;
  if (v51)
  {
    v53 = 1;
  }

  else
  {
    v53 = v52 == 0;
  }

  if (!v53)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v56 = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,false>,unsigned int>(&v83, &a29, v51 + (v52 << 7), *a2);
  v57 = *(a1 + 1);
  v58 = *(a1 + 2);
  if (v57)
  {
    v59 = 1;
  }

  else
  {
    v59 = v58 == 0;
  }

  if (!v59)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v60 = v83;
  if (v83 == (v57 + (v58 << 7)))
  {
    goto LABEL_14;
  }

  if (!v83)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (*a2 < *v83)
  {
LABEL_14:
    a27 = 0u;
    a28 = 0u;
    a25 = 0u;
    a26 = 0u;
    default_resource = std::pmr::get_default_resource(v56);
    v62 = *a2;
    *(&a25 + 1) = default_resource;
    a26 = 0uLL;
    *&a27 = 0;
    LODWORD(a29) = v62;
    a37 = 0;
    a38 = default_resource;
    a39 = 0;
    a40 = 0uLL;
    a18 = default_resource;
    a19 = 0;
    a20 = 0;
    a21 = 0;
    v63 = *(a1 + 1);
    if (v63 > v60)
    {
      goto LABEL_47;
    }

    v64 = *(a1 + 2);
    if (!v63 && v64)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v65 = v63 + (v64 << 7);
    if (v60 > v65)
    {
LABEL_47:
      v78 = "this->priv_in_range_or_end(hint)";
      v79 = 879;
      v80 = "flat_tree.hpp";
      v81 = "insert_unique";
      goto LABEL_53;
    }

    vars0 = 0;
    if (v60 == v65)
    {
      goto LABEL_21;
    }

    if (!v60)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (v62 < *v60)
    {
LABEL_21:
      vars0 = v60;
      if (v60 != v63)
      {
        if (!v60)
        {
          __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
        }

        v68 = *(v60 - 32);
        v67 = v60 - 32;
        v66 = v68;
        if (v68 >= v62)
        {
          if (v62 < v66)
          {
            vars8 = v67;
            if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_insert_unique_prepare(v63, &vars8, &a29, &vars0))
            {
              goto LABEL_42;
            }

            goto LABEL_28;
          }

          vars0 = v67;
LABEL_42:
          v60 = vars0;
          if (!*(a1 + 1) && vars0)
          {
            __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
          }

LABEL_44:
          boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(&a38);
          v83 = v60;
          boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(&a18);
          boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(&a25 + 1);
          if (!v60)
          {
            __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
          }

          return v60 + 16;
        }
      }
    }

    else
    {
      vars8 = v65;
      if (!boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_insert_unique_prepare(v60, &vars8, &a29, &vars0))
      {
        goto LABEL_42;
      }
    }

LABEL_28:
    v60 = vars0;
    v69 = *(a1 + 1);
    if (v69 > vars0)
    {
      goto LABEL_50;
    }

    v70 = *(a1 + 2);
    if (!v69 && v70)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v71 = v69 + (v70 << 7);
    if (vars0 > v71)
    {
LABEL_50:
      v78 = "this->priv_in_range_or_end(position)";
      v79 = 1862;
      v80 = "vector.hpp";
      v81 = "emplace";
    }

    else
    {
      v72 = *(a1 + 3);
      if (v72 >= v70)
      {
        if (v72 == v70)
        {
          boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>,boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>>(&v82, a1, vars0, &a29);
          v60 = v82;
        }

        else if (v71 == vars0)
        {
          *v71 = a29;
          *(v71 + 64) = a37;
          *(v71 + 72) = a38;
          *(v71 + 80) = a39;
          *(v71 + 88) = a40;
          a39 = 0;
          a40 = 0uLL;
          ++*(a1 + 2);
        }

        else
        {
          v73 = v71 - 128;
          *v71 = *(v71 - 128);
          *(v71 + 64) = *(v71 - 64);
          v74 = *(v71 - 48);
          *(v71 + 72) = *(v71 - 56);
          *(v71 + 80) = v74;
          *(v71 + 88) = *(v71 - 40);
          *(v71 - 48) = 0;
          *(v71 - 40) = 0;
          *(v71 - 32) = 0;
          ++*(a1 + 2);
          if ((v71 - 128) != v60)
          {
            v75 = (v71 - 128);
            do
            {
              v76 = *(v75 - 32);
              v75 -= 32;
              *v73 = v76;
              *(v73 + 64) = *(v73 - 64);
              boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::priv_move_assign<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>((v73 + 72), (v73 - 56));
              v73 = v75;
            }

            while (v75 != v60);
          }

          *v60 = a29;
          v60[16] = a37;
          if (&a29 != v60)
          {
            boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::priv_move_assign<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>(v60 + 9, &a38);
          }
        }

        goto LABEL_44;
      }

      v78 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v79 = 2821;
      v80 = "vector.hpp";
      v81 = "priv_insert_forward_range";
    }

LABEL_53:
    __assert_rtn(v81, v80, v79, v78);
  }

  return v60 + 16;
}

void sub_272632F38(_Unwind_Exception *a1)
{
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector((v3 + 72));
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector((v1 + 72));
  boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector((v2 | 8));
  _Unwind_Resume(a1);
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>*,true>,unsigned int>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

uint64_t boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>*,unsigned int const&,vp::vx::data_flow::Value>>(void *a1, const char *a2, _DWORD *a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a2 + 3);
  if (v5 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v6 = 0x7FFFFFFFFFFFFFFLL;
  if (v5 == 0x7FFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v5 >> 61 > 4)
  {
    v7 = -1;
  }

  else
  {
    v7 = 8 * v5;
  }

  if (v5 >> 61)
  {
    v8 = v7;
  }

  else
  {
    v8 = 8 * v5 / 5;
  }

  v9 = v5 + 1;
  if (v8 < 0x7FFFFFFFFFFFFFFLL)
  {
    v6 = v8;
  }

  v10 = v9 > v6 ? v5 + 1 : v6;
  if (v9 >> 59)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v30 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 32 * v10, 8);
  v14 = v13;
  v35[0] = v13;
  v35[1] = a2;
  v35[2] = v10;
  v15 = *(a2 + 2);
  v16 = v13;
  v34 = *(a2 + 1);
  if (v34 != a3)
  {
    v17 = 0;
    v18 = *(a2 + 1);
    v16 = v13;
    do
    {
      *v16 = *v18;
      default_resource = std::pmr::get_default_resource(v13);
      v13 = vp::vx::data_flow::Value::Value((v16 + 8), (v18 + 2), default_resource);
      v18 += 8;
      v16 = (v16 + 32);
      v17 -= 32;
    }

    while (v18 != a3);
  }

  *v16 = *a5;
  v20 = std::pmr::get_default_resource(v13);
  v21 = vp::vx::data_flow::Value::Value((v16 + 8), a4, v20);
  v22 = &v34[8 * v15];
  if (v22 != a3)
  {
    v23 = 0;
    do
    {
      *(v16 + v23 * 4 + 32) = a3[v23];
      v24 = std::pmr::get_default_resource(v21);
      v21 = vp::vx::data_flow::Value::Value((v16 + v23 * 4 + 40), &a3[v23 + 2], v24);
      v23 += 8;
    }

    while (&a3[v23] != v22);
  }

  v35[0] = 0;
  if (v34)
  {
    v25 = *(a2 + 2);
    if (v25)
    {
      v26 = (v34 + 2);
      do
      {
        --v25;
        vp::vx::data_flow::Value::~Value(v26);
        v26 = (v27 + 32);
      }

      while (v25);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v28;
  *(a2 + 3) = v10;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::~scoped_array_deallocator(v35);
  *a1 = a3 + *(a2 + 1) - v30;
  return result;
}

void sub_2726332B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,false>,unsigned int>(void *result, void *a2, uint64_t a3, unsigned int a4)
{
  v4 = *a2;
  if (*a2 != a3)
  {
    v5 = (a3 - v4) >> 7;
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

      v6 = v5 >> 1;
      v7 = &v4[32 * (v5 >> 1)];
      if (*v7 < a4)
      {
        v4 = v7 + 32;
        *a2 = v7 + 32;
        v6 = v5 + ~v6;
      }

      v5 = v6;
    }

    while (v6);
  }

  *result = v4;
  return result;
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>,boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>>(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x1FFFFFFFFFFFFFFLL;
  if (v4 == 0x1FFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v7 = v6;
  }

  else
  {
    v7 = 8 * v4 / 5;
  }

  v8 = v4 + 1;
  if (v7 < 0x1FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 57)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  result = (*(**a2 + 16))(*a2, v9 << 7, 64);
  v16 = result;
  v17 = *(a2 + 1);
  v18 = v17 + (*(a2 + 2) << 7);
  v19 = result;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = result;
    do
    {
      *v19 = *v20;
      *(v19 + 16) = *(v20 + 64);
      v19[9] = *(v20 + 72);
      v19[10] = *(v20 + 80);
      *(v19 + 11) = *(v20 + 88);
      *(v20 + 80) = 0;
      *(v20 + 88) = 0;
      *(v20 + 96) = 0;
      v20 += 128;
      v19 += 16;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  *(v19 + 16) = *(a4 + 64);
  v19[9] = *(a4 + 72);
  v19[10] = *(a4 + 80);
  *(v19 + 11) = *(a4 + 88);
  *(a4 + 80) = 0;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  if (v18 != a3)
  {
    v21 = v19 + 27;
    v22 = a3;
    do
    {
      *(v21 - 22) = *v22;
      *(v21 - 6) = *(v22 + 64);
      *(v21 - 2) = *(v22 + 72);
      *(v21 - 1) = *(v22 + 80);
      *v21 = *(v22 + 88);
      v21 += 8;
      *(v22 + 80) = 0;
      *(v22 + 88) = 0;
      *(v22 + 96) = 0;
      v22 += 128;
    }

    while (v22 != v18);
  }

  if (v17)
  {
    v23 = *(a2 + 2);
    if (v23)
    {
      v24 = (v17 + 72);
      do
      {
        --v23;
        v24 = boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::~vector(v24) + 16;
      }

      while (v23);
    }

    result = boost::container::small_vector_allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,vp::Allocator<void>,void>::deallocate(a2, *(a2 + 1));
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v25;
  *(a2 + 3) = v9;
  *a1 = v16 + a3 - v14;
  return result;
}

vp::vx::data_flow::Value *boost::container::vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>,void>::priv_move_assign<vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Value>>>(void *a1, void *a2)
{
  if (a1 == a2 && a2[2])
  {
    __assert_rtn("priv_move_assign", "vector.hpp", 2480, "this != &x || x.size() == 0");
  }

  v5 = a2 + 1;
  result = *a2;
  if (*a2 == *a1 || (result = (*(*result + 32))(result), result))
  {
    v7 = a1[2];
    if (v7)
    {
      result = (a1[1] + 8);
      do
      {
        --v7;
        vp::vx::data_flow::Value::~Value(result);
        result = (v8 + 32);
      }

      while (v7);
    }

    a1[2] = 0;
    v9 = a1[1];
    if (v9)
    {
      result = (*(**a1 + 24))(*a1, v9, 32 * a1[3], 8);
    }

    a1[1] = a2[1];
    *(a1 + 1) = *(a2 + 1);
    *v5 = 0;
    a2[2] = 0;
    a2[3] = 0;
  }

  else
  {
    v10 = a2[1];
    v11 = a2[2];
    if (!v10 && v11)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v12 = a1[3];
    if (v11 <= v12)
    {
      v24 = a1[1];
      v23 = a1[2];
      v25 = v23 - v11;
      v41 = a2[2];
      if (v23 >= v11)
      {
        if (v11)
        {
          v30 = (v10 + 8);
          v31 = a2[2];
          v32 = a1[1];
          do
          {
            --v31;
            *v32 = *(v30 - 2);
            v32 += 8;
            vp::vx::data_flow::Value::~Value((v24 + 2));
            result = vp::vx::data_flow::Value::Value((v24 + 2), v30, *v30);
            v30 += 4;
            v24 = v32;
          }

          while (v31);
        }

        else
        {
          v32 = a1[1];
        }

        if (v23 != v11)
        {
          v37 = v41 - v23;
          result = (v32 + 2);
          do
          {
            vp::vx::data_flow::Value::~Value(result);
            result = (v38 + 32);
            v36 = __CFADD__(v37++, 1);
          }

          while (!v36);
        }
      }

      else
      {
        if (v23)
        {
          v26 = a1[2];
          v27 = a1[1];
          do
          {
            --v26;
            *v27 = *v10;
            v27 += 8;
            vp::vx::data_flow::Value::~Value((v24 + 2));
            v29 = *(v10 + 8);
            v28 = v10 + 8;
            result = vp::vx::data_flow::Value::Value((v24 + 2), v28, v29);
            v10 = v28 + 24;
            v24 = v27;
          }

          while (v26);
        }

        else
        {
          v27 = a1[1];
        }

        if (v11 != v23)
        {
          v33 = 0;
          v34 = v27;
          do
          {
            *v34 = *v10;
            default_resource = std::pmr::get_default_resource(result);
            result = vp::vx::data_flow::Value::Value((v34 + 2), v10 + 8, default_resource);
            v10 += 32;
            v34 += 8;
            v33 -= 32;
            v36 = __CFADD__(v25++, 1);
          }

          while (!v36);
        }
      }

      v22 = v41;
    }

    else
    {
      if (v11 >> 59)
      {
        boost::container::throw_length_error("get_next_capacity, allocator's max size reached", v6);
      }

      result = (*(**a1 + 16))(*a1, 32 * v11, 8);
      v13 = result;
      v14 = a1[1];
      if (v14)
      {
        v15 = a1[2];
        if (v15)
        {
          v16 = (v14 + 8);
          do
          {
            --v15;
            vp::vx::data_flow::Value::~Value(v16);
            v16 = (v17 + 32);
          }

          while (v15);
        }

        a1[2] = 0;
        result = (*(**a1 + 24))(*a1, v14, 32 * v12, 8);
      }

      v18 = 0;
      a1[2] = 0;
      a1[3] = v11;
      v19 = -32 * v11;
      v20 = v13;
      a1[1] = v13;
      do
      {
        *v20 = *v10;
        v21 = std::pmr::get_default_resource(result);
        result = vp::vx::data_flow::Value::Value((v20 + 8), v10 + 8, v21);
        v10 += 32;
        v20 += 32;
        v18 -= 32;
      }

      while (v19 != v18);
      v22 = a1[2] + ((v20 - v13) >> 5);
    }

    a1[2] = v22;
    v39 = a2[2];
    if (v39)
    {
      result = (*v5 + 8);
      do
      {
        --v39;
        vp::vx::data_flow::Value::~Value(result);
        result = (v40 + 32);
      }

      while (v39);
    }

    a2[2] = 0;
  }

  return result;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, unsigned int *a3, unsigned int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>,1ul,vp::Allocator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>>,void>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<unsigned int,vp::vx::data_flow::Engine::State_Transaction_Entry>*,true>,unsigned int>(&v10, &v9, *a2, *a3);
  v7 = v10;
  *a4 = v10;
  if (v7 == *a2)
  {
    return 1;
  }

  if (!v7)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a3 < *v7;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::commit_state_transaction(unsigned int)::$_0>(vp::vx::data_flow::Engine ***a1)
{
  v1 = *a1;
  v2 = **a1;
  vp::vx::data_flow::Engine::do_notify_state_manager_begin(v2);
  v3 = v1[1];
  v4[0] = v2;
  v4[1] = v3;
  vp::vx::data_flow::Engine::do_with_unique_state_lock_noexcept(v2, "commit state transaction", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::commit_state_transaction::$_0::operator() const(void)::{lambda(void)#1}>, v4);
  vp::vx::data_flow::Engine::do_notify_state_manager_end(v2);
}

void sub_272633FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  std::deque<unsigned int>::~deque[abi:ne200100](&a9);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::data_flow::Engine::register_listener(unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)> &&,BOOL)::$_0>(std::pmr *a1)
{
  v28[4] = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *(*a1 + 8);
  if (***a1 == 1)
  {
    v28[0] = 0;
    v28[1] = 0;
    default_resource = std::pmr::get_default_resource(a1);
    vp::vx::data_flow::Engine::do_get_state_value(v2, **(v1 + 16), &default_resource);
    std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>::operator()(*(*(v1 + 24) + 24), **(v1 + 16));
    vp::vx::data_flow::Value::~Value(&default_resource);
  }

  v3 = **(v1 + 16);
  std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100](v26, *(v1 + 24));
  v24 = v3;
  add = atomic_fetch_add(v2 + 80, 1u);
  default_resource = &v24;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,vp::Allocator<std::__hash_value_type<unsigned int,vp::vx::data_flow::Engine::State_Entry>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((v2 + 82), v24, &default_resource);
  v6 = add + 1;
  LODWORD(default_resource) = add + 1;
  std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100](v28, v26);
  v8 = *(v5 + 296);
  v7 = *(v5 + 304);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v10 = *(v5 + 296);
  if (v7)
  {
    v10 = *(v5 + 296);
    v11 = *(v5 + 304);
    do
    {
      if (v11 != 1 && !v10)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!v10)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v12 = v11 >> 1;
      v13 = &v10[10 * (v11 >> 1)];
      v15 = *v13;
      v14 = v13 + 10;
      v11 += ~(v11 >> 1);
      if (v15 >= default_resource)
      {
        v11 = v12;
      }

      else
      {
        v10 = v14;
      }
    }

    while (v11);
  }

  v16 = (v8 + 40 * v7);
  if (v10 == v16)
  {
    goto LABEL_20;
  }

  if (!v10)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  if (default_resource < *v10)
  {
LABEL_20:
    if (v8 > v10 || v10 > v16)
    {
      v21 = "this->priv_in_range_or_end(position)";
      v22 = 1862;
      v23 = "emplace";
    }

    else
    {
      v18 = *(v5 + 312);
      if (v18 >= v7)
      {
        if (v18 == v7)
        {
          boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>*,boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>>(&v25, (v5 + 288), v10, &default_resource);
        }

        else if (v10 == v16)
        {
          *v16 = default_resource;
          std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100]((v16 + 2), v28);
          ++*(v5 + 304);
        }

        else
        {
          v19 = (v16 - 10);
          *v16 = *(v16 - 10);
          std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100]((v16 + 2), (v16 - 8));
          ++*(v5 + 304);
          for (; v19 != v10; v19 -= 40)
          {
            boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>::operator=(v19, v19 - 40);
          }

          boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>::operator=(v10, &default_resource);
        }

        goto LABEL_33;
      }

      v21 = "this->m_holder.capacity() >= this->m_holder.m_size";
      v22 = 2821;
      v23 = "priv_insert_forward_range";
    }

    __assert_rtn(v23, "vector.hpp", v22, v21);
  }

  if (!v8)
  {
    __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
  }

LABEL_33:
  std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](v28);
  **(v1 + 32) = v6;
  return std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](v26);
}

void sub_272634320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>::operator=(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 8;
  *a1 = *a2;
  v5 = a1 + 8;
  v7 = (a1 + 32);
  v6 = *(a1 + 32);
  *v7 = 0;
  if (v6 == v5)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = *(a2 + 32);
  v9 = (a2 + 32);
  v8 = v10;
  if (v10)
  {
    if (v8 == v4)
    {
      *v7 = v5;
      (*(**v9 + 24))(*v9, v5);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = v7;
  }

  *v9 = 0;
  return a1;
}

uint64_t boost::container::vector<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>,vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>,boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>*,boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>>(void *a1, const char *a2, _DWORD *a3, _DWORD *a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v4 == 0x666666666666666)
  {
    goto LABEL_28;
  }

  if (v4 >> 61 > 4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 8 * v4;
  }

  if (v4 >> 61)
  {
    v6 = v5;
  }

  else
  {
    v6 = 8 * v4 / 5;
  }

  v7 = v4 + 1;
  if (v6 >= 0x666666666666666)
  {
    v6 = 0x666666666666666;
  }

  v8 = v7 > v6 ? v4 + 1 : v6;
  if (v7 > 0x666666666666666)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v12 = *(a2 + 1);
  v13 = (*(**a2 + 16))(*a2, 40 * v8, 8);
  v14 = v13;
  v31[1] = a2;
  v31[2] = v8;
  v15 = *(a2 + 1);
  v16 = &v15[10 * *(a2 + 2)];
  v17 = v13;
  if (v15 != a3)
  {
    v18 = *(a2 + 1);
    v19 = v13;
    v20 = v18;
    v17 = v13;
    do
    {
      v21 = *v20;
      v20 += 10;
      *v17 = v21;
      v17 += 10;
      std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100]((v19 + 2), (v18 + 2));
      v18 = v20;
      v19 = v17;
    }

    while (v20 != a3);
  }

  *v17 = *a4;
  std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100]((v17 + 2), (a4 + 2));
  if (v16 != a3)
  {
    v22 = (v17 + 12);
    v23 = a3;
    v24 = a3;
    do
    {
      v25 = *v24;
      v24 += 10;
      *(v22 - 8) = v25;
      v22 = std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::__value_func[abi:ne200100](v22, (v23 + 2)) + 40;
      v23 = v24;
    }

    while (v24 != v16);
  }

  v31[0] = 0;
  if (v15)
  {
    v26 = *(a2 + 2);
    if (v26)
    {
      v27 = (v15 + 2);
      do
      {
        --v26;
        v27 = std::__function::__value_func<void ()(unsigned int,vp::vx::data_flow::Value const&)>::~__value_func[abi:ne200100](v27) + 40;
      }

      while (v26);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 40 * *(a2 + 3), 8);
  }

  v28 = *(a2 + 2) + 1;
  *(a2 + 1) = v14;
  *(a2 + 2) = v28;
  *(a2 + 3) = v8;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<unsigned int,std::function<void ()(unsigned int,vp::vx::data_flow::Value const&)>>>>::~scoped_array_deallocator(v31);
  *a1 = a3 + *(a2 + 1) - v12;
  return result;
}