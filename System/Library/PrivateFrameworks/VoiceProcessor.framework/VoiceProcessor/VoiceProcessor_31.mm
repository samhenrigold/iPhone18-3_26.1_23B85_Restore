void sub_2726CEDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>(float *a1, const void **a2, uint64_t a3)
{
  v7 = std::hash<applesauce::CF::StringRef>::operator()(*a2);
  v8 = v7;
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = vcnt_s8(v9);
    v10.i16[0] = vaddlv_u8(v10);
    v11 = v10.u32[0];
    if (v10.u32[0] > 1uLL)
    {
      v3 = v7;
      if (v7 >= v9)
      {
        v3 = v7 % v9;
      }
    }

    else
    {
      v3 = (v9 - 1) & v7;
    }

    v12 = *(*a1 + 8 * v3);
    if (v12)
    {
      for (i = *v12; i; i = *i)
      {
        v14 = i[1];
        if (v14 == v8)
        {
          result = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(i[2], a2);
          if (!result)
          {
            return result;
          }
        }

        else
        {
          if (v11 > 1)
          {
            if (v14 >= v9)
            {
              v14 %= v9;
            }
          }

          else
          {
            v14 &= v9 - 1;
          }

          if (v14 != v3)
          {
            break;
          }
        }
      }
    }
  }

  result = (*(**(a1 + 4) + 16))(*(a1 + 4), 32, 8);
  v16 = result;
  *result = 0;
  *(result + 8) = v8;
  *(result + 16) = *a3;
  *a3 = 0;
  *(result + 24) = *(a3 + 8);
  v17 = (*(a1 + 5) + 1);
  v18 = a1[12];
  if (!v9 || (v18 * v9) < v17)
  {
    v19 = 1;
    if (v9 >= 3)
    {
      v19 = (v9 & (v9 - 1)) != 0;
    }

    v20 = v19 | (2 * v9);
    v21 = vcvtps_u32_f32(v17 / v18);
    if (v20 <= v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = v20;
    }

    if (v22 == 1)
    {
      v22 = 2;
    }

    else if ((v22 & (v22 - 1)) != 0)
    {
      result = std::__next_prime(v22);
      v22 = result;
    }

    v23 = *(a1 + 2);
    if (v22 > *&v23)
    {
LABEL_30:
      if (v22 >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      result = (*(**(a1 + 2) + 16))(*(a1 + 2), 8 * v22, 8);
      v24 = *a1;
      *a1 = result;
      if (v24)
      {
        result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 2), v24, *(a1 + 1));
      }

      v25 = 0;
      *(a1 + 1) = v22;
      do
      {
        *(*a1 + 8 * v25++) = 0;
      }

      while (v22 != v25);
      v26 = *(a1 + 3);
      if (v26)
      {
        v27 = v26[1];
        v28 = vcnt_s8(v22);
        v28.i16[0] = vaddlv_u8(v28);
        if (v28.u32[0] > 1uLL)
        {
          if (v27 >= v22)
          {
            v27 %= v22;
          }
        }

        else
        {
          v27 &= v22 - 1;
        }

        *(*a1 + 8 * v27) = a1 + 6;
        v31 = *v26;
        if (*v26)
        {
          while (1)
          {
            v32 = v31[1];
            if (v28.u32[0] > 1uLL)
            {
              if (v32 >= v22)
              {
                v32 %= v22;
              }
            }

            else
            {
              v32 &= v22 - 1;
            }

            if (v32 != v27)
            {
              v33 = *a1;
              if (!*(*a1 + 8 * v32))
              {
                *(v33 + 8 * v32) = v26;
                goto LABEL_55;
              }

              *v26 = *v31;
              *v31 = **(v33 + 8 * v32);
              **(v33 + 8 * v32) = v31;
              v31 = v26;
            }

            v32 = v27;
LABEL_55:
            v26 = v31;
            v31 = *v31;
            v27 = v32;
            if (!v31)
            {
              goto LABEL_66;
            }
          }
        }
      }

      goto LABEL_66;
    }

    if (v22 < *&v23)
    {
      result = vcvtps_u32_f32(*(a1 + 5) / a1[12]);
      if (*&v23 < 3uLL || (v29 = vcnt_s8(v23), v29.i16[0] = vaddlv_u8(v29), v29.u32[0] > 1uLL))
      {
        result = std::__next_prime(result);
      }

      else
      {
        v30 = 1 << -__clz(result - 1);
        if (result >= 2)
        {
          result = v30;
        }
      }

      if (v22 <= result)
      {
        v22 = result;
      }

      if (v22 < *&v23)
      {
        if (v22)
        {
          goto LABEL_30;
        }

        v34 = *a1;
        *a1 = 0;
        if (v34)
        {
          result = std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *> *> *>>::deallocate[abi:ne200100](*(a1 + 2), v34, *(a1 + 1));
        }

        *(a1 + 1) = 0;
      }
    }

LABEL_66:
    v9 = *(a1 + 1);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v3 = v8 % v9;
      }

      else
      {
        v3 = v8;
      }
    }

    else
    {
      v3 = (v9 - 1) & v8;
    }
  }

  v35 = *a1;
  v36 = *(*a1 + 8 * v3);
  if (v36)
  {
    *v16 = *v36;
LABEL_79:
    *v36 = v16;
    goto LABEL_80;
  }

  *v16 = *(a1 + 3);
  *(a1 + 3) = v16;
  *(v35 + 8 * v3) = a1 + 6;
  if (*v16)
  {
    v37 = *(*v16 + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v37 >= v9)
      {
        v37 %= v9;
      }
    }

    else
    {
      v37 &= v9 - 1;
    }

    v36 = (*a1 + 8 * v37);
    goto LABEL_79;
  }

LABEL_80:
  ++*(a1 + 5);
  return result;
}

void sub_2726CF278(_Unwind_Exception *a1)
{
  std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,unsigned int>>(*(v2 + 16));
  std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>>::deallocate[abi:ne200100](*(v1 + 32), v2);
  _Unwind_Resume(a1);
}

const void **std::pair<applesauce::CF::StringRef,unsigned int>::~pair(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,unsigned int>>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JdjdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjdEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = vp::vx::data_flow::Value::view_storage(v4[2]);
  v11 = (*(**(a1 + 8) + 40))(*(a1 + 8), *v9, *v7, *v10);
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v12);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v11;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E0_JdjdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjdEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BFFB0;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v7[1];
  v19[0] = *v7;
  v19[1] = v10;
  v11 = v7[2];
  v12 = v7[3];
  v13 = v7[4];
  *&v20[9] = *(v7 + 73);
  v19[3] = v12;
  *v20 = v13;
  v19[2] = v11;
  std::unordered_map<std::string,unsigned int>::unordered_map(v21, (v7 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v7 + 136);
  v14 = (*(**(a1 + 8) + 32))(*(a1 + 8), v19, a1 + 16, *v9);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v15 = __p[0];
  __p[0] = 0;
  if (v15)
  {
    operator delete(v15);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v21[2]);
  v16 = v21[0];
  v21[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v17);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v14;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::compare_value(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(*a2 + 8);
  v6 = *(*a3 + 8);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (*v3 != *v4)
  {
    return 0;
  }

  v8 = *(v3 + 24);
  v9 = *(v4 + 24);
  if (v8 != v9 || v8 == 0)
  {
    if (v8 != v9)
    {
      return 0;
    }
  }

  else if (*(v3 + 16) != *(v4 + 16))
  {
    return 0;
  }

  v11 = *(v3 + 40);
  v12 = *(v4 + 40);
  if (v11 != v12 || v11 == 0)
  {
    if (v11 != v12)
    {
      return 0;
    }
  }

  else if (*(v3 + 32) != *(v4 + 32))
  {
    return 0;
  }

  v14 = *(v3 + 56);
  v15 = *(v4 + 56);
  if (v14 != v15 || v14 == 0)
  {
    if (v14 != v15)
    {
      return 0;
    }
  }

  else if (*(v3 + 48) != *(v4 + 48))
  {
    return 0;
  }

  v17 = *(v3 + 72);
  v18 = *(v4 + 72);
  if (v17 == v18 && *(v3 + 72))
  {
    if (*(v3 + 64) != *(v4 + 64))
    {
      return 0;
    }
  }

  else if (v17 != v18)
  {
    return 0;
  }

  v19 = *(v3 + 88);
  v20 = *(v4 + 88);
  if (v19 != v20 || !*(v3 + 88))
  {
    if (v19 == v20)
    {
      goto LABEL_43;
    }

    return 0;
  }

  if (*(v3 + 80) != *(v4 + 80))
  {
    return 0;
  }

LABEL_43:
  if (!std::operator==[abi:ne200100]<std::string,unsigned int,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(v3 + 96, (v4 + 96)))
  {
    return 0;
  }

  return std::operator==[abi:ne200100]<std::string,unsigned int,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(v3 + 136, (v4 + 136));
}

uint64_t std::operator==[abi:ne200100]<std::string,unsigned int,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::pair<std::string const,unsigned int>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  while (1)
  {
    v3 = *v3;
    result = v3 == 0;
    if (!v3)
    {
      break;
    }

    result = std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(a2, v3 + 2);
    if (!result)
    {
      break;
    }

    v5 = result;
    v6 = *(v3 + 39);
    if (v6 >= 0)
    {
      v7 = *(v3 + 39);
    }

    else
    {
      v7 = v3[3];
    }

    v8 = *(result + 39);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(result + 24);
    }

    if (v7 == v8)
    {
      v10 = v6 >= 0 ? v3 + 2 : v3[2];
      v13 = *(v5 + 16);
      v12 = v5 + 16;
      v11 = v13;
      v14 = (v9 >= 0 ? v12 : v11);
      if (!memcmp(v10, v14, v7) && *(v3 + 10) == *(v12 + 24))
      {
        continue;
      }
    }

    return 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>(void *a1, void *a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (std::equal_to<std::string>::operator()[abi:ne200100](v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void **vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((*a2 + 136));

  return std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v2 + 96));
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::move_value(uint64_t a1, _OWORD **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(*a3 + 48);
  v5 = *(*a3 + 64);
  v7 = *(*a3 + 32);
  *(v3 + 73) = *(*a3 + 73);
  v3[3] = v6;
  v3[4] = v5;
  v3[2] = v7;
  v8 = *(v4 + 16);
  *v3 = *v4;
  v3[1] = v8;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table((v3 + 6), (v4 + 96));

  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(v3 + 136, (v4 + 136));
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::copy_value(uint64_t a1, _OWORD **a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *a3;
  v6 = *(*a3 + 48);
  v5 = *(*a3 + 64);
  v7 = *(*a3 + 32);
  *(v3 + 73) = *(*a3 + 73);
  v3[3] = v6;
  v3[4] = v5;
  v3[2] = v7;
  v8 = v4[1];
  *v3 = *v4;
  v3[1] = v8;
  std::unordered_map<std::string,unsigned int>::unordered_map((v3 + 6), (v4 + 6));
  return std::unordered_map<std::string,unsigned int>::unordered_map(v3 + 136, v4 + 136);
}

void sub_2726CFAB4(_Unwind_Exception *a1)
{
  v2 = v1;
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table((v2 + 96));
  _Unwind_Resume(a1);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::DSP_Node_Configuration_Options>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 176, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    __p[3] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7destroyEv(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }
}

uint64_t *_ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_2881BFF68;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2 + 2, *(a1 + 16), *(a1 + 24), (*(a1 + 24) - *(a1 + 16)) >> 2);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFF68;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JNS3_30DSP_Node_Configuration_OptionsEdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JSG_dEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFF68;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::get_configuration_context(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v163 = *MEMORY[0x277D85DE8];
  v25 = CFStringCreateWithBytes(0, "configuration context", 21, 0x8000100u, 0);
  if (!v25)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v28 = 0;
  v29 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v25);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v157, (a2 + 64), *(v4 + 6));
    LODWORD(v123) = v157;
    v124 = v158;
    v158 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v28);
    v28 = v123;
    v29 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    vp::vx::data_flow::State<void>::~State(&v157);
  }

  if (!v29)
  {
    v5 = a2 + 8;
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 58);
    v117 = v123;
    v118 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 59);
    v113 = v123;
    v114 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    cf = CFStringCreateWithBytes(0, "vp_chat_flavor", 14, 0x8000100u, 0);
    if (!cf)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v21, "Could not construct");
    }

    vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(&v119, *(a2 + 456));
    if (v119)
    {
      if (cf)
      {
        CFRetain(cf);
      }

      if (v120)
      {
        atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
      }

      vp::vx::Voice_Processor_State_Manager::create_state_for_SIGHUP_signal(&v160, a2 + 16);
      operator new();
    }

    if (v120)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    v157 = 0;
    vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v123, (a2 + 16), &v157);
    v111 = v123;
    v112 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    if (v157)
    {
      CFRelease(v157);
    }

    v123 = &unk_2881BF8E8;
    LOBYTE(v124) = 0;
    v125 = &v123;
    v160 = v113;
    v161 = v111;
    vp::vx::data_flow::State_Manager::create_state(&v157, (a2 + 64), &v123);
    v121 = v157;
    v122 = v158;
    v158 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v157);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v123);
    v115 = v121;
    v116 = v122;
    v122 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v121);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 10);
    v108 = v123;
    v109 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 16);
    v106 = v123;
    v107 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 17);
    v104 = v123;
    v105 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 18);
    v102 = v123;
    v103 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 19);
    v100 = v123;
    v101 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 20);
    v98 = v123;
    v99 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 26);
    v96 = v123;
    v97 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 39);
    v94 = v123;
    v95 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 40);
    v92 = v123;
    v93 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 41);
    v90 = v123;
    v91 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 44);
    v88 = v123;
    v89 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 45);
    v86 = v123;
    v87 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 46);
    v84 = v123;
    v85 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 47);
    v82 = v123;
    v83 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 77);
    v80 = v123;
    v81 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    vp::vx::Voice_Processor::get_spatial_head_tracking_enabled(v79, a2);
    (*(*v5 + 16))(&v123, a2 + 8, 80);
    v77 = v123;
    v78 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 88);
    v75 = v123;
    v76 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 0);
    v73 = v123;
    v74 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 1);
    v71 = v123;
    v72 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 61);
    v69 = v123;
    v70 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    v65 = CFStringCreateWithBytes(0, "spatial mode", 12, 0x8000100u, 0);
    if (!v65)
    {
      v22 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v22, "Could not construct");
    }

    LODWORD(v119) = 0;
    v120 = 0uLL;
    std::recursive_mutex::lock((a2 + 184));
    v6 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &v65);
    if (v6)
    {
      vp::vx::data_flow::State_Manager::find_state(&v157, (a2 + 64), *(v6 + 6));
      LODWORD(v123) = v157;
      v124 = v158;
      v158 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v119);
      LODWORD(v119) = v123;
      v120 = v124;
      v124 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v123);
      vp::vx::data_flow::State<void>::~State(&v157);
    }

    if (!v120)
    {
      (*(*v5 + 16))(&v123, a2 + 8, 79);
      v160 = v123;
      v162 = v124;
      v124 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v123);
      v123 = &unk_2881C0930;
      LOBYTE(v124) = 0;
      v125 = &v123;
      v64[0] = v160;
      vp::vx::data_flow::State_Manager::create_state(&v157, (a2 + 64), &v123);
      v121 = v157;
      v122 = v158;
      v158 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v157);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v123);
      LODWORD(v123) = v121;
      v124 = v122;
      v122 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v121);
      vp::vx::data_flow::State<void>::~State(&v160);
      vp::vx::data_flow::State<void>::~State(&v119);
      LODWORD(v119) = v123;
      v120 = v124;
      v124 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v123);
      v7 = v119;
      v8 = v65;
      if (v65)
      {
        CFRetain(v65);
      }

      v123 = v8;
      LODWORD(v124) = v7;
      std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v123, &v123);
      if (v123)
      {
        CFRelease(v123);
      }
    }

    v67 = v119;
    v68 = v120;
    v120 = 0uLL;
    std::recursive_mutex::unlock((a2 + 184));
    vp::vx::data_flow::State<void>::~State(&v119);
    if (v65)
    {
      CFRelease(v65);
    }

    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 8);
    v9 = v123;
    LODWORD(v65) = v123;
    v66 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(&v119, a2 + 16, v9);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 24);
    v10 = v123;
    v62 = v123;
    v63 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v64, a2 + 16, v10);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 51);
    v11 = v123;
    v59 = v123;
    v60 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v61, a2 + 16, v11);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 52);
    v12 = v123;
    v56 = v123;
    v57 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v58, a2 + 16, v12);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 54);
    v13 = v123;
    v53 = v123;
    v54 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    _ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(v55, a2 + 16, v13);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 69);
    v51 = v123;
    v52 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 70);
    v49 = v123;
    v50 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 62);
    v47 = v123;
    v48 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*(a2 + 8) + 16))(&v123, a2 + 8, 89);
    v45 = v123;
    v46 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    vp::vx::Voice_Processor::get_other_audio_advanced_ducking_enabled(v44, a2);
    (*(*v5 + 16))(&v123, a2 + 8, 91);
    v42 = v123;
    v43 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 92);
    v40 = v123;
    v41 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 93);
    v14 = v123;
    v36 = v123;
    v37 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 94);
    v15 = v123;
    v34 = v123;
    v35 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    v123 = &unk_2881BFA28;
    LOBYTE(v124) = 0;
    v125 = &v123;
    v160 = v14;
    v161 = v15;
    vp::vx::data_flow::State_Manager::create_state(&v157, (a2 + 64), &v123);
    v16 = v157;
    v121 = v157;
    v23 = v158;
    v158 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v157);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v123);
    v38 = v16;
    v39 = v23;
    v122 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v121);
    (*(*v5 + 16))(&v123, a2 + 8, 95);
    v32 = v123;
    v33 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    (*(*v5 + 16))(&v123, a2 + 8, 94);
    v30 = v123;
    v31 = v124;
    v124 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v123);
    v157 = &unk_2881BF490;
    LOBYTE(v158) = 0;
    v159 = &v157;
    v123 = __PAIR64__(v115, v117);
    *&v124 = __PAIR64__(v106, v108);
    *(&v124 + 1) = __PAIR64__(v102, v104);
    v125 = __PAIR64__(v98, v100);
    v126 = v96;
    v127 = v94;
    v128 = v92;
    v129 = v90;
    v130 = v88;
    v131 = v86;
    v132 = v84;
    v133 = v82;
    v134 = v80;
    v135 = v79[0];
    v136 = v77;
    v137 = v75;
    v138 = v73;
    v139 = v71;
    v140 = v69;
    v141 = v67;
    v142 = v119;
    v143 = v64[0];
    v144 = v61[0];
    v145 = v58[0];
    v146 = v55[0];
    v147 = v51;
    v148 = v49;
    v149 = v47;
    v150 = v45;
    v151 = v44[0];
    v152 = v42;
    v153 = v40;
    v154 = v38;
    v155 = v32;
    v156 = v30;
    vp::vx::data_flow::State_Manager::create_state(&v121, (a2 + 64), &v157);
    v17 = v121;
    v160 = v121;
    v24 = v122;
    v122 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v121);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v157);
    v26 = v17;
    v27 = v24;
    v162 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v160);
    vp::vx::data_flow::State<void>::~State(&v30);
    vp::vx::data_flow::State<void>::~State(&v32);
    vp::vx::data_flow::State<void>::~State(&v38);
    vp::vx::data_flow::State<void>::~State(&v34);
    vp::vx::data_flow::State<void>::~State(&v36);
    vp::vx::data_flow::State<void>::~State(&v40);
    vp::vx::data_flow::State<void>::~State(&v42);
    vp::vx::data_flow::State<void>::~State(v44);
    vp::vx::data_flow::State<void>::~State(&v45);
    vp::vx::data_flow::State<void>::~State(&v47);
    vp::vx::data_flow::State<void>::~State(&v49);
    vp::vx::data_flow::State<void>::~State(&v51);
    vp::vx::data_flow::State<void>::~State(v55);
    vp::vx::data_flow::State<void>::~State(&v53);
    vp::vx::data_flow::State<void>::~State(v58);
    vp::vx::data_flow::State<void>::~State(&v56);
    vp::vx::data_flow::State<void>::~State(v61);
    vp::vx::data_flow::State<void>::~State(&v59);
    vp::vx::data_flow::State<void>::~State(v64);
    vp::vx::data_flow::State<void>::~State(&v62);
    vp::vx::data_flow::State<void>::~State(&v119);
    vp::vx::data_flow::State<void>::~State(&v65);
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(&v69);
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v73);
    vp::vx::data_flow::State<void>::~State(&v75);
    vp::vx::data_flow::State<void>::~State(&v77);
    vp::vx::data_flow::State<void>::~State(v79);
    vp::vx::data_flow::State<void>::~State(&v80);
    vp::vx::data_flow::State<void>::~State(&v82);
    vp::vx::data_flow::State<void>::~State(&v84);
    vp::vx::data_flow::State<void>::~State(&v86);
    vp::vx::data_flow::State<void>::~State(&v88);
    vp::vx::data_flow::State<void>::~State(&v90);
    vp::vx::data_flow::State<void>::~State(&v92);
    vp::vx::data_flow::State<void>::~State(&v94);
    vp::vx::data_flow::State<void>::~State(&v96);
    vp::vx::data_flow::State<void>::~State(&v98);
    vp::vx::data_flow::State<void>::~State(&v100);
    vp::vx::data_flow::State<void>::~State(&v102);
    vp::vx::data_flow::State<void>::~State(&v104);
    vp::vx::data_flow::State<void>::~State(&v106);
    vp::vx::data_flow::State<void>::~State(&v108);
    vp::vx::data_flow::State<void>::~State(&v115);
    vp::vx::data_flow::State<void>::~State(&v111);
    if (cf)
    {
      CFRelease(cf);
    }

    vp::vx::data_flow::State<void>::~State(&v113);
    vp::vx::data_flow::State<void>::~State(&v117);
    vp::vx::data_flow::State<void>::~State(&v28);
    v28 = v17;
    v29 = v24;
    v27 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v26);
    v18 = v28;
    v19 = v25;
    if (v25)
    {
      CFRetain(v25);
    }

    v123 = v19;
    LODWORD(v124) = v18;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v123, &v123);
    if (v123)
    {
      CFRelease(v123);
    }
  }

  *this = v28;
  *(this + 8) = v29;
  v29 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v28);
  if (v25)
  {
    CFRelease(v25);
  }
}

void sub_2726D13E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_41;
  }

  v8 = *(a1 + 8);
  LOBYTE(v47) = 0;
  BYTE8(v47) = 0;
  LOBYTE(v48) = 0;
  BYTE8(v48) = 0;
  LOBYTE(v49) = 0;
  BYTE8(v49) = 0;
  LOBYTE(v50) = 0;
  BYTE8(v50) = 0;
  v51[0] = 0;
  v51[8] = 0;
  v51[16] = 0;
  v51[24] = 0;
  *v52 = 0u;
  *v53 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 1065353216;
  v57 = 1065353216;
  v9 = (*(*v7 + 56))(v7, v6, *(a1 + 32), &v47);
  v10 = v9;
  if (v9)
  {
    v36 = v49;
    v37 = v50;
    *v38 = *v51;
    *&v38[9] = *&v51[9];
    v34 = v47;
    v35 = v48;
    v11 = v52[0];
    v12 = v52[1];
    v52[0] = 0;
    v52[1] = 0;
    v39[0] = v11;
    v39[1] = v12;
    v40[0] = v53[0];
    v40[1] = v53[1];
    v41 = v54;
    if (v53[1])
    {
      v13 = *(v53[0] + 1);
      if ((v12 & (v12 - 1)) != 0)
      {
        if (v13 >= v12)
        {
          v13 %= v12;
        }
      }

      else
      {
        v13 &= v12 - 1;
      }

      *(v11 + v13) = v40;
      v53[0] = 0;
      v53[1] = 0;
    }

    v26 = v55;
    v55 = 0uLL;
    *v42 = v26;
    *v43 = v56;
    v44 = v57;
    if (*(&v56 + 1))
    {
      v27 = *(v56 + 8);
      if ((*(&v26 + 1) & (*(&v26 + 1) - 1)) != 0)
      {
        if (v27 >= *(&v26 + 1))
        {
          v27 %= *(&v26 + 1);
        }
      }

      else
      {
        v27 &= *(&v26 + 1) - 1;
      }

      *(v26 + 8 * v27) = v43;
      v56 = 0uLL;
    }
  }

  else
  {
    log = vp::get_log(v9);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v8, "vp::vx::Voice_Processor]", 23);
      v16 = v46;
      v17 = v46;
      v18 = __p[1];
      v19 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        if (v17 >= 0)
        {
          v20 = v16;
        }

        else
        {
          v20 = v18;
        }

        v21 = __p[0];
        if (v17 >= 0)
        {
          v21 = __p;
        }

        if (v20)
        {
          v22 = " ";
        }

        else
        {
          v22 = "";
        }

        v23 = "hardware";
        v24 = *(a1 + 32);
        if (v24 == 1)
        {
          v23 = "echo";
        }

        *buf = 136315650;
        v59 = v21;
        v60 = 2080;
        v61 = v22;
        if (v24 == 2)
        {
          v25 = "content";
        }

        else
        {
          v25 = v23;
        }

        v62 = 2080;
        v63 = v25;
        _os_log_impl(&dword_2724B4000, v19, OS_LOG_TYPE_ERROR, "%s%sfailed to get configuration options for uplink %s DSP node", buf, 0x20u);
        LOBYTE(v17) = v46;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v56);
  v28 = v55;
  *&v55 = 0;
  if (v28)
  {
    operator delete(v28);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v53[0]);
  v29 = v52[0];
  v52[0] = 0;
  if (v29)
  {
    operator delete(v29);
  }

  if ((v10 & 1) == 0)
  {
LABEL_41:
    LOBYTE(v34) = 0;
    BYTE8(v34) = 0;
    LOBYTE(v35) = 0;
    BYTE8(v35) = 0;
    LOBYTE(v36) = 0;
    BYTE8(v36) = 0;
    LOBYTE(v37) = 0;
    BYTE8(v37) = 0;
    v38[0] = 0;
    v38[8] = 0;
    v38[16] = 0;
    v38[24] = 0;
    *v39 = 0u;
    *v40 = 0u;
    *v42 = 0u;
    *v43 = 0u;
    v41 = 1065353216;
    v44 = 1065353216;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v30);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = v34;
  storage[1] = v35;
  *(storage + 73) = *&v38[9];
  storage[3] = v37;
  storage[4] = *v38;
  storage[2] = v36;
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table((storage + 6), v39);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__hash_table(storage + 136, v42);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v43[0]);
  v32 = v42[0];
  v42[0] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v40[0]);
  v33 = v39[0];
  v39[0] = 0;
  if (v33)
  {
    operator delete(v33);
  }
}

void sub_2726D1A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a26);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 72);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    CFRelease(v4);
  }
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::move_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  *(v3 + 12) = *(*a3 + 12);
  *v3 = v5;
  *(v3 + 32) = *(v4 + 4);
  *(v4 + 4) = 0;
  v6 = *(v4 + 40);
  *(v3 + 52) = *(v4 + 52);
  *(v3 + 40) = v6;
  *(v3 + 72) = *(v4 + 9);
  *(v4 + 9) = 0;
  result = v4[5];
  v8 = v4[6];
  v9 = v4[8];
  *(v3 + 112) = v4[7];
  *(v3 + 128) = v9;
  *(v3 + 80) = result;
  *(v3 + 96) = v8;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::copy_value(uint64_t a1, uint64_t *a2, __int128 **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a3;
  *(v3 + 12) = *(*a3 + 12);
  *v3 = v5;
  v6 = *(v4 + 4);
  if (v6)
  {
    CFRetain(*(v4 + 4));
  }

  *(v3 + 32) = v6;
  v7 = *(v4 + 40);
  *(v3 + 52) = *(v4 + 52);
  *(v3 + 40) = v7;
  v8 = *(v4 + 9);
  if (v8)
  {
    CFRetain(*(v4 + 9));
  }

  *(v3 + 72) = v8;
  result = v4[5];
  v10 = v4[6];
  v11 = v4[8];
  *(v3 + 112) = v4[7];
  *(v3 + 128) = v11;
  *(v3 + 80) = result;
  *(v3 + 96) = v10;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Configuration_Context>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 144, 8);
  *a2 = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFE70;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = *(result + 32);
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFE70;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_30DSP_Node_Configuration_OptionsEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_optionsENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESE_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFE70;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void vp::vx::Voice_Processor::get_spatial_head_tracking_enabled(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "spatial head-tracking enabled", 29, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v14 = 0;
  v15 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v22, (a2 + 64), *(v4 + 6));
    v5 = v22;
    LODWORD(v24) = v22;
    v11 = v23;
    v23 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v14);
    v14 = v5;
    v15 = v11;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    vp::vx::data_flow::State<void>::~State(&v22);
  }

  if (!v15)
  {
    (*(*(a2 + 8) + 16))(&v24, a2 + 8, 79);
    v6 = v24;
    v16 = v24;
    v17 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    v24 = &unk_2881C0A28;
    LOBYTE(v25) = 0;
    v26 = &v24;
    v21 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v22, (a2 + 64), &v24);
    v7 = v22;
    v18 = v22;
    v12 = v23;
    v23 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v22);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v24);
    LODWORD(v24) = v7;
    v19 = 0;
    v20 = 0;
    vp::vx::data_flow::State<void>::~State(&v18);
    vp::vx::data_flow::State<void>::~State(&v16);
    vp::vx::data_flow::State<void>::~State(&v14);
    v14 = v7;
    v15 = v12;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    v8 = v14;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v24 = v9;
    LODWORD(v25) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v24, &v24);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  *this = v14;
  *(this + 8) = v15;
  v15 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v14);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726D20C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *_ZN2vp2vx29Voice_Processor_State_Manager12create_stateIRKZNS0_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKS5_E_JN2CA17StreamDescriptionEEEES6_OS7_DpRKNS0_9data_flow5StateIT0_EE(uint64_t a1, uint64_t a2, int a3)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v13[0] = &unk_2881BF978;
  v13[1] = 28;
  v13[3] = v13;
  v10 = a3;
  vp::vx::data_flow::State_Manager::create_state(&v11, (a2 + 48), v13);
  v4 = v11;
  v7 = v11;
  v6 = v12;
  v12 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v11);
  std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](v13);
  *a1 = v4;
  *(a1 + 8) = v6;
  v8 = 0;
  v9 = 0;
  return vp::vx::data_flow::State<void>::~State(&v7);
}

void vp::vx::Voice_Processor::get_other_audio_advanced_ducking_enabled(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "other audio advanced ducking enabled", 36, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v14 = 0;
  v15 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v22, (a2 + 64), *(v4 + 6));
    v5 = v22;
    LODWORD(v24) = v22;
    v11 = v23;
    v23 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v14);
    v14 = v5;
    v15 = v11;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    vp::vx::data_flow::State<void>::~State(&v22);
  }

  if (!v15)
  {
    (*(*(a2 + 8) + 16))(&v24, a2 + 8, 90);
    v6 = v24;
    v16 = v24;
    v17 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    v24 = &unk_2881C0A70;
    LOBYTE(v25) = 0;
    v26 = &v24;
    v21 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v22, (a2 + 64), &v24);
    v7 = v22;
    v18 = v22;
    v12 = v23;
    v23 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v22);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v24);
    LODWORD(v24) = v7;
    v19 = 0;
    v20 = 0;
    vp::vx::data_flow::State<void>::~State(&v18);
    vp::vx::data_flow::State<void>::~State(&v16);
    vp::vx::data_flow::State<void>::~State(&v14);
    v14 = v7;
    v15 = v12;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    v8 = v14;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v24 = v9;
    LODWORD(v25) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v24, &v24);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  *this = v14;
  *(this + 8) = v15;
  v15 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v14);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726D24A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_21Configuration_ContextEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_12_GLOBAL__N_123make_constructor_lambdaIS6_EEDavEUlDpRKT_E_JNS3_14Operation_ModeENS3_11Chat_FlavorENS3_15Input_Port_TypeENS3_13Port_Sub_TypeEjjjN10applesauce2CF9StringRefENS3_16Output_Port_TypeESM_NS3_18Port_Endpoint_TypeEbjjjSP_bbbbbbbjjjjjjjdbbbbjbbNS3_20AirPods_Offload_ModeEEEESD_OT0_DpRKNS4_5StateIT1_EEEUlSH_E_JSJ_SK_SL_SM_jjjSP_SQ_SM_SR_bjjjSP_bbbbbbbjjjjjjjdbbbbjbbSS_EEERNS4_13State_ManagerET_DpRKNSV_IT0_EEEUlPPKNS4_5ValueEPS1A_E_NS_9allocatorIS1F_EEFvS1D_S1E_EEclEOS1D_OS1E_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v71 = *a3;
  if (*(**a2 + 2) == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v4 = vp::vx::data_flow::Value::view_storage(**a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v3[1];
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id)
  {
    v86 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v86 = 0;
  }

  v6 = v3[2];
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id)
  {
    v85 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v85 = 0;
  }

  v7 = v3[3];
  if (v7[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v84 = vp::vx::data_flow::Value::view_storage(v7);
  }

  else
  {
    v84 = 0;
  }

  v8 = v3[4];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v83 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v83 = 0;
  }

  v9 = v3[5];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v82 = vp::vx::data_flow::Value::view_storage(v9);
  }

  else
  {
    v82 = 0;
  }

  v10 = v3[6];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v81 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v81 = 0;
  }

  v11 = v3[7];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v80 = vp::vx::data_flow::Value::view_storage(v11);
  }

  else
  {
    v80 = 0;
  }

  v12 = v3[8];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v79 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v79 = 0;
  }

  v13 = v3[9];
  if (v13[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v78 = vp::vx::data_flow::Value::view_storage(v13);
  }

  else
  {
    v78 = 0;
  }

  v14 = v3[10];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Endpoint_Type>(void)::s_type_id)
  {
    v77 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v77 = 0;
  }

  v15 = v3[11];
  if (v15[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v76 = vp::vx::data_flow::Value::view_storage(v15);
  }

  else
  {
    v76 = 0;
  }

  v16 = v3[12];
  if (v16[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v75 = vp::vx::data_flow::Value::view_storage(v16);
  }

  else
  {
    v75 = 0;
  }

  v17 = v3[13];
  if (v17[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v74 = vp::vx::data_flow::Value::view_storage(v17);
  }

  else
  {
    v74 = 0;
  }

  v18 = v3[14];
  if (v18[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v73 = vp::vx::data_flow::Value::view_storage(v18);
  }

  else
  {
    v73 = 0;
  }

  v19 = v3[15];
  if (v19[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id)
  {
    v72 = vp::vx::data_flow::Value::view_storage(v19);
  }

  else
  {
    v72 = 0;
  }

  v20 = v3[16];
  if (v20[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v70 = vp::vx::data_flow::Value::view_storage(v20);
  }

  else
  {
    v70 = 0;
  }

  v21 = v3[17];
  if (v21[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v69 = vp::vx::data_flow::Value::view_storage(v21);
  }

  else
  {
    v69 = 0;
  }

  v22 = v3[18];
  if (v22[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v68 = vp::vx::data_flow::Value::view_storage(v22);
  }

  else
  {
    v68 = 0;
  }

  v23 = v3[19];
  if (v23[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v67 = vp::vx::data_flow::Value::view_storage(v23);
  }

  else
  {
    v67 = 0;
  }

  v24 = v3[20];
  if (v24[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v66 = vp::vx::data_flow::Value::view_storage(v24);
  }

  else
  {
    v66 = 0;
  }

  v25 = v3[21];
  if (v25[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v65 = vp::vx::data_flow::Value::view_storage(v25);
  }

  else
  {
    v65 = 0;
  }

  v26 = v3[22];
  if (v26[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v64 = vp::vx::data_flow::Value::view_storage(v26);
  }

  else
  {
    v64 = 0;
  }

  v27 = v3[23];
  if (v27[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v63 = vp::vx::data_flow::Value::view_storage(v27);
  }

  else
  {
    v63 = 0;
  }

  v28 = v3[24];
  if (v28[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v62 = vp::vx::data_flow::Value::view_storage(v28);
  }

  else
  {
    v62 = 0;
  }

  v29 = v3[25];
  if (v29[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v61 = vp::vx::data_flow::Value::view_storage(v29);
  }

  else
  {
    v61 = 0;
  }

  v30 = v3[26];
  if (v30[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v60 = vp::vx::data_flow::Value::view_storage(v30);
  }

  else
  {
    v60 = 0;
  }

  v31 = v3[27];
  if (v31[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v59 = vp::vx::data_flow::Value::view_storage(v31);
  }

  else
  {
    v59 = 0;
  }

  v32 = v3[28];
  if (v32[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v58 = vp::vx::data_flow::Value::view_storage(v32);
  }

  else
  {
    v58 = 0;
  }

  v33 = v3[29];
  if (v33[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v57 = vp::vx::data_flow::Value::view_storage(v33);
  }

  else
  {
    v57 = 0;
  }

  v34 = v3[30];
  if (v34[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v56 = vp::vx::data_flow::Value::view_storage(v34);
  }

  else
  {
    v56 = 0;
  }

  v35 = v3[31];
  if (v35[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v36 = vp::vx::data_flow::Value::view_storage(v35);
  }

  else
  {
    v36 = 0;
  }

  v37 = v3[32];
  if (v37[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v38 = vp::vx::data_flow::Value::view_storage(v37);
  }

  else
  {
    v38 = 0;
  }

  v39 = v3[33];
  if (v39[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v40 = vp::vx::data_flow::Value::view_storage(v39);
  }

  else
  {
    v40 = 0;
  }

  v41 = v3[34];
  if (v41[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v42 = vp::vx::data_flow::Value::view_storage(v41);
  }

  else
  {
    v42 = 0;
  }

  v43 = v3[35];
  if (v43[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v44 = vp::vx::data_flow::Value::view_storage(v43);
  }

  else
  {
    v44 = 0;
  }

  v45 = v3[36];
  if (v45[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v46 = vp::vx::data_flow::Value::view_storage(v45);
  }

  else
  {
    v46 = 0;
  }

  v47 = v3[37];
  if (v47[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v48 = vp::vx::data_flow::Value::view_storage(v47);
  }

  else
  {
    v48 = 0;
  }

  v49 = v3[38];
  if (v49[2] == &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id)
  {
    v50 = vp::vx::data_flow::Value::view_storage(v49);
  }

  else
  {
    v50 = 0;
  }

  *v87 = *v4;
  *&v87[4] = *v86;
  *&v87[8] = *v85;
  *&v87[12] = *v84;
  *&v87[16] = *v83;
  *&v87[20] = *v82;
  *&v87[24] = *v81;
  v51 = *v80;
  if (*v80)
  {
    CFRetain(*v80);
  }

  *v88 = *v79;
  *&v88[4] = *v78;
  *&v88[8] = *v77;
  v88[12] = *v76;
  *&v88[16] = *v75;
  *&v88[20] = *v74;
  *&v88[24] = *v73;
  v52 = *v72;
  if (*v72)
  {
    CFRetain(*v72);
  }

  v89.n128_u8[0] = *v70;
  v89.n128_u8[1] = *v69;
  v89.n128_u8[2] = *v68;
  v89.n128_u8[3] = *v67;
  v89.n128_u8[4] = *v66;
  v89.n128_u8[5] = *v65;
  v89.n128_u8[6] = *v64;
  v89.n128_u32[2] = *v63;
  v89.n128_u32[3] = *v62;
  LODWORD(v90) = *v61;
  DWORD1(v90) = *v60;
  DWORD2(v90) = *v59;
  HIDWORD(v90) = *v58;
  LODWORD(v91) = *v57;
  *(&v91 + 1) = *v56;
  LOBYTE(v92) = *v36;
  BYTE1(v92) = *v38;
  BYTE2(v92) = *v40;
  BYTE3(v92) = *v42;
  DWORD1(v92) = *v44;
  BYTE8(v92) = *v46;
  BYTE9(v92) = *v48;
  HIDWORD(v92) = *v50;
  vp::vx::data_flow::Value::~Value(v71);
  *v71 = std::pmr::get_default_resource(v53);
  *(v71 + 1) = 0;
  *(v71 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v71);
  *(storage + 12) = *&v87[12];
  *storage = *v87;
  *(storage + 32) = v51;
  *(storage + 52) = *&v88[12];
  *(storage + 40) = *v88;
  *(storage + 72) = v52;
  result = v89;
  *(storage + 112) = v91;
  *(storage + 128) = v92;
  *(storage + 80) = v89;
  *(storage + 96) = v90;
  return result;
}

void vp::vx::Configuration_Context::~Configuration_Context(vp::vx::Configuration_Context *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_21Configuration_ContextEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS6_ZNS3_12_GLOBAL__N_123make_constructor_lambdaIS6_EEDavEUlDpRKT_E_JNS3_14Operation_ModeENS3_11Chat_FlavorENS3_15Input_Port_TypeENS3_13Port_Sub_TypeEjjjN10applesauce2CF9StringRefENS3_16Output_Port_TypeESM_NS3_18Port_Endpoint_TypeEbjjjSP_bbbbbbbjjjjjjjdbbbbjbbNS3_20AirPods_Offload_ModeEEEESD_OT0_DpRKNS4_5StateIT1_EEEUlSH_E_JSJ_SK_SL_SM_jjjSP_SQ_SM_SR_bjjjSP_bbbbbbbjjjjjjjdbbbbjbbSS_EEERNS4_13State_ManagerET_DpRKNSV_IT0_EEEUlPPKNS4_5ValueEPS1A_E_NS_9allocatorIS1F_EEFvS1D_S1E_EE7__cloneEPNS0_6__baseIS1I_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BF490;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E0_JbNS3_20AirPods_Offload_ModeEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = (*vp::vx::data_flow::Value::view_storage(v3[1]) != 0) | *v6;
  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v8);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v7;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E0_JbNS3_20AirPods_Offload_ModeEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFA28;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor40get_other_audio_advanced_ducking_enabledEvENK3__0clEvEUlRK39AUVoiceIOOtherAudioDuckingConfigurationE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2) != 0;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor40get_other_audio_advanced_ducking_enabledEvENK3__0clEvEUlRK39AUVoiceIOOtherAudioDuckingConfigurationE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0A70;
  *(a2 + 8) = *(result + 8);
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSE_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BF978;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor16get_spatial_modeEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor16get_spatial_modeEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0930;
  *(a2 + 8) = *(result + 8);
  return result;
}

_BYTE *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_spatial_head_tracking_enabledEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 4) & 1;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_spatial_head_tracking_enabledEvENK3__0clEvEUlNS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_EEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0A28;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_11Chat_FlavorEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E_JS6_N10applesauce2CF9StringRefEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS6_SI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = vp::vx::data_flow::Value::view_storage(v3[1]);
  v8 = *v6;
  v9 = *v7;
  if (*v7)
  {
    CFRetain(*v7);
    v10 = CFStringCreateWithBytes(0, "Standard", 8, 0x8000100u, 0);
    v21 = v10;
    if (!v10)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v11 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9, &v21);
    CFRelease(v10);
    if (v11)
    {
      v12 = CFStringCreateWithBytes(0, "VoiceIsolation", 14, 0x8000100u, 0);
      v21 = v12;
      if (!v12)
      {
        v19 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v19, "Could not construct");
      }

      v13 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9, &v21);
      CFRelease(v12);
      if (v13)
      {
        v14 = CFStringCreateWithBytes(0, "WideSpectrum", 12, 0x8000100u, 0);
        v21 = v14;
        if (!v14)
        {
          v20 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v20, "Could not construct");
        }

        v15 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(v9, &v21);
        CFRelease(v14);
        if (v15 == kCFCompareEqualTo)
        {
          v8 = 1;
        }
      }

      else
      {
        v8 = 2;
      }
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v9);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v16);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v8;
  return result;
}

void sub_2726D3510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);
  applesauce::CF::StringRef::~StringRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_11Chat_FlavorEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor25get_configuration_contextEvENK3__0clEvEUlT_T0_E_JS6_N10applesauce2CF9StringRefEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JS6_SI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BF8E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(void *a1, uint64_t a2)
{
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::small_vector<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>,16ul,vp::Allocator<boost::container::dtl::pair<unsigned int,std::unique_ptr<vp::Service>>>,void>>::find(&v11, a2 + 16, &vp::Service_Interface<1970496627u>::k_service_type_id);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
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

  v8 = v11;
  if (v11 == (v5 + 16 * v6))
  {
    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    result = std::shared_ptr<vp::Service_Provider const>::shared_ptr[abi:ne200100]<vp::Service_Provider,0>(v10, *a2, *(a2 + 8));
    v9 = v10[1];
    *a1 = *(v8 + 1);
    a1[1] = v9;
  }

  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state_for_SIGHUP_signal(vp::vx::Voice_Processor_State_Manager *this, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D30], 1uLL, 0, *(a2 + 8));
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
    if (v5)
    {
      dispatch_release(v5);
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x4002000000;
    v14 = __Block_byref_object_copy__10728;
    v15 = __Block_byref_object_dispose__10729;
    v10 = 0;
    vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(v16, a2, &v10);
    v6 = *(a2 + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 0x40000000;
    v9[2] = ___ZN2vp2vx29Voice_Processor_State_Manager30create_state_for_SIGHUP_signalEv_block_invoke;
    v9[3] = &unk_279E4A438;
    v9[4] = &v11;
    dispatch_source_set_event_handler(v6, v9);
    v7 = v12;
    vp::vx::data_flow::State<void>::~State((a2 + 24));
    vp::vx::data_flow::State<void>::State((a2 + 24), v7 + 10);
    dispatch_resume(*(a2 + 16));
    _Block_object_dispose(&v11, 8);
    vp::vx::data_flow::State<void>::~State(v16);
  }

  return vp::vx::data_flow::State<void>::State(this, (a2 + 24));
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  *a3 = 0;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v5);
  }

  v6.n128_f64[0] = vp::services::User_Defaults::default_app(&v13, *(a1 + 16));
  v7 = *(a1 + 8);
  if (v7)
  {
    CFRetain(v7);
  }

  v17 = v7;
  (*(*v13 + 32))(&cf, v6);
  if (cf)
  {
    v8 = CFGetTypeID(cf);
    if (v8 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::StringRef::from_get(&v12, cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v9);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v12;
  return result;
}

void sub_2726D3A30(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  __cxa_free_exception(v9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726D397CLL);
}

double vp::services::User_Defaults::default_app(vp::services::User_Defaults *this, void *a2)
{
  (*(*a2 + 16))(&cf, a2);
  v4 = a2[1];
  vp::Service::get_service_provider(v4);
  vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(&v9, v4);
  v5 = cf;
  if (cf)
  {
    CFRetain(cf);
    v6 = cf;
    result = *&v9;
    *this = v9;
    *(this + 2) = v5;
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    result = *&v9;
    *this = v9;
    *(this + 2) = 0;
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE18destroy_deallocateEv(char *a1)
{
  _ZNSt3__110__function12__alloc_funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7destroyB8ne200100Ev((a1 + 8));

  operator delete(a1);
}

void _ZNSt3__110__function12__alloc_funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7destroyB8ne200100Ev(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

CFTypeRef *_ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(CFTypeRef *result, void *a2)
{
  v3 = result;
  *a2 = &unk_2881BF930;
  v4 = result[1];
  if (v4)
  {
    result = CFRetain(result[1]);
  }

  v6 = v3[2];
  v5 = v3[3];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(v5 + 1, 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED0Ev(void *a1)
{
  *a1 = &unk_2881BF930;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_S8_EENS4_5StateIT_EEOT0_EUlSG_E_JjEEEDaOSG_DpRKNSF_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SR_EUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EED1Ev(void *a1)
{
  *a1 = &unk_2881BF930;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[1];
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

__n128 __Block_byref_object_copy__10728(__n128 *a1, __n128 *a2)
{
  a1[2].n128_u32[2] = a2[2].n128_u32[2];
  result = a2[3];
  a1[3] = result;
  a2[3] = 0uLL;
  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

void ___ZN2vp2vx29Voice_Processor_State_Manager30create_state_for_SIGHUP_signalEv_block_invoke(std::pmr *a1)
{
  v1 = *(*(a1 + 4) + 8);
  v5 = 0;
  v6 = 0;
  default_resource = std::pmr::get_default_resource(a1);
  vp::vx::data_flow::State<void>::get_value((v1 + 40), &default_resource);
  v2 = *vp::vx::data_flow::Value::view_storage(&default_resource);
  vp::vx::data_flow::Value::~Value(&default_resource);
  default_resource = std::pmr::get_default_resource(v3);
  v5 = 0;
  v6 = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = v2 + 1;
  vp::vx::data_flow::State<void>::set_value((v1 + 40), &default_resource);
  vp::vx::data_flow::Value::~Value(&default_resource);
}

void sub_2726D3EF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  _Unwind_Resume(a1);
}

void sub_2726D3F08(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::vx::data_flow::Value::~Value(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726D3EB0);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUljjE_JjjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  v9 = *v7;
  v10 = *v8;
  if (v9 != *v8)
  {
    v11 = *(a1 + 8);
    log = vp::get_log(v8);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v11, "vp::vx::Voice_Processor]", 23);
      v14 = v25;
      v15 = v25;
      v16 = __p[1];
      v17 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if (v15 >= 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v16;
        }

        v19 = __p[0];
        if (v15 >= 0)
        {
          v19 = __p;
        }

        if (v18)
        {
          v20 = " ";
        }

        else
        {
          v20 = "";
        }

        *buf = 136315394;
        v27 = v19;
        v28 = 2080;
        v29 = v20;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%s%smicrophone and reference sample rates must be equal", buf, 0x16u);
        LOBYTE(v15) = v25;
      }

      if ((v15 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v9 <= v10)
  {
    v21 = v10;
  }

  else
  {
    v21 = v9;
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v22);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor14get_block_sizeENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUljjE_JjjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BFF20;
  a2[1] = v2;
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor30get_dsp_node_property_overrideENS_7variantIJNS3_18Uplink_DSP_Node_IDENS3_20Downlink_DSP_Node_IDEEEENS3_17Graph_Property_IDEE3__0JdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JdEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EEclEOS13_OS14_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRef::TypeRef(&v11, "Float64");
  valuePtr = v4;
  cf = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v9[0] = &v11;
  v9[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  return result;
}

void sub_2726D42A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(va1);
  applesauce::CF::TypeRef::~TypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor30get_dsp_node_property_overrideENS_7variantIJNS3_18Uplink_DSP_Node_IDENS3_20Downlink_DSP_Node_IDEEEENS3_17Graph_Property_IDEE3__0JdEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JdEEERNS4_13State_ManagerESL_SS_EUlPPKNS4_5ValueEPS10_E_NS_9allocatorIS15_EEFvS13_S14_EE7__cloneEPNS0_6__baseIS18_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C16B0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void vp::vx::Voice_Processor::get_uplink_mic_sample_rate(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "uplink microphone sample rate (Hz)", 34, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v14 = 0;
  v15 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v22, (a2 + 64), *(v4 + 6));
    v5 = v22;
    LODWORD(v24) = v22;
    v11 = v23;
    v23 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v14);
    v14 = v5;
    v15 = v11;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    vp::vx::data_flow::State<void>::~State(&v22);
  }

  if (!v15)
  {
    (*(*(a2 + 8) + 16))(&v24, a2 + 8, 8);
    v6 = v24;
    v16 = v24;
    v17 = v25;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    v24 = &unk_2881C03B8;
    LOBYTE(v25) = 0;
    v26 = &v24;
    v21 = v6;
    vp::vx::data_flow::State_Manager::create_state(&v22, (a2 + 64), &v24);
    v7 = v22;
    v18 = v22;
    v12 = v23;
    v23 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v22);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v24);
    LODWORD(v24) = v7;
    v19 = 0;
    v20 = 0;
    vp::vx::data_flow::State<void>::~State(&v18);
    vp::vx::data_flow::State<void>::~State(&v16);
    vp::vx::data_flow::State<void>::~State(&v14);
    v14 = v7;
    v15 = v12;
    v25 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v24);
    v8 = v14;
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v24 = v9;
    LODWORD(v25) = v8;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v24, &v24);
    if (v24)
    {
      CFRelease(v24);
    }
  }

  *this = v14;
  *(this + 8) = v15;
  v15 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v14);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726D4658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_client_sample_rate(uint64_t a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = "downlink";
  if (!a3)
  {
    v6 = "uplink";
  }

  applesauce::CF::make_StringRef(&cf, @"%s client sample rate (Hz)", a2, v6);
  v17 = 0;
  v18 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v7 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v7)
  {
    vp::vx::data_flow::State_Manager::find_state(&v25, (a2 + 64), *(v7 + 6));
    v8 = v25;
    LODWORD(v27) = v25;
    v14 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v8;
    v18 = v14;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    vp::vx::data_flow::State<void>::~State(&v25);
  }

  if (!v18)
  {
    (*(*(a2 + 8) + 16))(&v27);
    v9 = v27;
    v19 = v27;
    v20 = v28;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    if (a3)
    {
      v10 = &unk_2881BFC18;
    }

    else
    {
      v10 = &unk_2881BFBD0;
    }

    v27 = v10;
    LOBYTE(v28) = 0;
    v29 = &v27;
    v24 = v9;
    vp::vx::data_flow::State_Manager::create_state(&v25, (a2 + 64), &v27);
    v11 = v25;
    v21 = v25;
    v15 = v26;
    v26 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v25);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v27);
    LODWORD(v27) = v11;
    v22 = 0;
    v23 = 0;
    vp::vx::data_flow::State<void>::~State(&v21);
    vp::vx::data_flow::State<void>::~State(&v19);
    vp::vx::data_flow::State<void>::~State(&v17);
    v17 = v11;
    v18 = v15;
    v28 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v27);
    v12 = v17;
    v13 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v27 = v13;
    LODWORD(v28) = v12;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v27, &v27);
    if (v27)
    {
      CFRelease(v27);
    }
  }

  *a1 = v17;
  *(a1 + 8) = v18;
  v18 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v17);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726D498C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::get_client_sample_rate_preference(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "client sample rate preference (Hz)", 34, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v16 = 0;
  v17 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v23, (a2 + 64), *(v4 + 6));
    v5 = v23;
    LODWORD(v25) = v23;
    v10 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v16);
    v16 = v5;
    v17 = v10;
    v26 = 0;
    v27 = 0;
    vp::vx::data_flow::State<void>::~State(&v25);
    vp::vx::data_flow::State<void>::~State(&v23);
  }

  if (!v17)
  {
    vp::vx::Voice_Processor::get_global_configuration(v18, a2);
    v25 = &unk_2881BFC60;
    LOBYTE(v26) = 0;
    v28 = &v25;
    v22 = v18[0];
    vp::vx::data_flow::State_Manager::create_state(&v23, (a2 + 64), &v25);
    v6 = v23;
    v19 = v23;
    v11 = v24;
    v24 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v23);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v25);
    v13 = v6;
    v20 = 0;
    v21 = 0;
    vp::vx::data_flow::State<void>::~State(&v19);
    vp::vx::data_flow::State<void>::~State(v18);
    vp::vx::data_flow::State<void>::~State(&v16);
    v16 = v6;
    v17 = v11;
    v14 = 0;
    v15 = 0;
    vp::vx::data_flow::State<void>::~State(&v13);
    v7 = v16;
    v8 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v25 = v8;
    LODWORD(v26) = v7;
    std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::__emplace_unique_key_args<applesauce::CF::StringRef,std::pair<applesauce::CF::StringRef,unsigned int>>((a2 + 128), &v25, &v25);
    if (v25)
    {
      CFRelease(v25);
    }
  }

  *this = v16;
  *(this + 8) = v17;
  v17 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v16);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726D4C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JdjNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjSG_ddSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<vp::vx::DSP_Node_Configuration_Options>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = v4[4];
  if (v14[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v15 = vp::vx::data_flow::Value::view_storage(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = v4[5];
  if (v16[2] == &vp::vx::data_flow::Value::type_id<std::optional<double>>(void)::s_type_id)
  {
    v17 = vp::vx::data_flow::Value::view_storage(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = *v7;
  v19 = *v9;
  v21 = v11[3];
  v20 = v11[4];
  v22 = v11[2];
  *&v30[9] = *(v11 + 73);
  v29[3] = v21;
  *v30 = v20;
  v29[2] = v22;
  v23 = v11[1];
  v29[0] = *v11;
  v29[1] = v23;
  std::unordered_map<std::string,unsigned int>::unordered_map(v31, (v11 + 6));
  std::unordered_map<std::string,unsigned int>::unordered_map(__p, v11 + 136);
  v24 = (*(**(a1 + 8) + 24))(*(a1 + 8), 1, v19, v29, *v17, v17[1], v18, *v13, *v15);
  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(__p[2]);
  v25 = __p[0];
  __p[0] = 0;
  if (v25)
  {
    operator delete(v25);
  }

  std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__deallocate_node(v31[2]);
  v26 = v31[0];
  v31[0] = 0;
  if (v26)
  {
    operator delete(v26);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v27);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v24;
  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::compare_value(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*a3 + 8);
  v4 = *(*a2 + 8);
  result = v4 == v3;
  if (v4 == v3 && v4 != 0)
  {
    return **a2 == **a3;
  }

  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::move_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

__n128 vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::copy_value(uint64_t a1, __n128 **a2, __n128 **a3)
{
  result = **a3;
  **a2 = result;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<std::optional<double>>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 16, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlDpT_E_JdjNS3_30DSP_Node_Configuration_OptionsEddNS_8optionalIdEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKSD_E_JdjSG_ddSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C0040;
  a2[1] = v2;
  return result;
}

void vp::vx::Voice_Processor::get_global_configuration(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v15[4] = *MEMORY[0x277D85DE8];
  cf = CFStringCreateWithBytes(0, "global configuration", 20, 0x8000100u, 0);
  if (!cf)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v10 = 0;
  v11 = 0uLL;
  std::recursive_mutex::lock((a2 + 184));
  v4 = std::__hash_table<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::__unordered_map_hasher<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::hash<applesauce::CF::StringRef>,std::equal_to<applesauce::CF::StringRef>,true>,std::__unordered_map_equal<applesauce::CF::StringRef,std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,std::equal_to<applesauce::CF::StringRef>,std::hash<applesauce::CF::StringRef>,true>,vp::Allocator<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>>>::find<applesauce::CF::StringRef>((a2 + 128), &cf);
  if (v4)
  {
    vp::vx::data_flow::State_Manager::find_state(&v13, (a2 + 64), *(v4 + 6));
    v5 = v13;
    LODWORD(v15[0]) = v13;
    v8 = v14;
    v14 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v10);
    v10 = v5;
    v11 = v8;
    v15[1] = 0;
    v15[2] = 0;
    vp::vx::data_flow::State<void>::~State(v15);
    vp::vx::data_flow::State<void>::~State(&v13);
  }

  if (!v11)
  {
    v6 = *(a2 + 480);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    vp::vx::Voice_Processor::get_configuration_context(v12, a2);
    operator new();
  }

  *this = v10;
  *(this + 8) = v11;
  v11 = 0uLL;
  std::recursive_mutex::unlock((a2 + 184));
  vp::vx::data_flow::State<void>::~State(&v10);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2726D52F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_client_sample_rate_preferenceEvENK3__0clEvEUlRKNS3_20Global_ConfigurationEE_JSE_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v5 = *v4;
  v6 = v4[1];
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<std::optional<double>>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  *(result + 8) = v6;
  return result;
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::compare_value(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(*a2 + 8);
  v6 = *(*a3 + 8);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 != v6)
    {
      return 0;
    }
  }

  else if (*v3 != *v4)
  {
    return 0;
  }

  v8 = *(v3 + 32);
  if (v8 != *(v4 + 32))
  {
    return 0;
  }

  v9 = *(v3 + 24);
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v11 = *(v4 + 24);
  v17 = &v9[v8];
  v18 = v9;
  v16 = v11;
  result = boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v18, &v17, &v16);
  if (!result)
  {
    return result;
  }

  v13 = *(v3 + 72);
  if (v13 != *(v4 + 72))
  {
    return 0;
  }

  v14 = *(v3 + 64);
  if (v13 && !v14)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v15 = *(v4 + 64);
  v17 = &v14[v13];
  v18 = v14;
  v16 = v15;
  result = boost::intrusive::algo_equal<boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::container::vec_iterator<vp::vx::Chat_Flavor *,true>,boost::intrusive::algo_pred_equal>(&v18, &v17, &v16);
  if (result)
  {
    if (*(v3 + 96) == *(v4 + 96) && ((*(v4 + 100) ^ *(v3 + 100)) & 1) == 0)
    {
      return *(v3 + 104) == *(v4 + 104);
    }

    return 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::destroy_value(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 80))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 56), *(v2 + 64));
  }

  if (*(v2 + 40))
  {
    v3 = *(v2 + 24);

    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate((v2 + 16), v3);
  }
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::move_value(uint64_t a1, uint64_t *a2, _OWORD **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 16) = *(v4 + 2);
  *(v3 + 24) = v3 + 48;
  *(v3 + 32) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((v3 + 16), (v4 + 1));
  *(v3 + 56) = *(v4 + 7);
  *(v3 + 64) = v3 + 88;
  *(v3 + 72) = xmmword_2727565D0;
  result = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((v3 + 56), v4 + 56);
  v6 = *(v4 + 12);
  *(v3 + 104) = *(v4 + 26);
  *(v3 + 96) = v6;
  return result;
}

char *vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::copy_value(uint64_t a1, uint64_t *a2, _OWORD **a3)
{
  v3 = *a2;
  v4 = *a3;
  *v3 = **a3;
  *(v3 + 16) = *(v4 + 2);
  *(v3 + 24) = v3 + 48;
  *(v3 + 32) = xmmword_2727565D0;
  v5 = *(v4 + 3);
  v6 = *(v4 + 4);
  v13 = v5;
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

  v12 = &v5[4 * v6];
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 16), &v13, &v12);
  *(v3 + 56) = *(v4 + 7);
  *(v3 + 64) = v3 + 88;
  *(v3 + 72) = xmmword_2727565D0;
  v8 = *(v4 + 8);
  v9 = *(v4 + 9);
  v13 = v8;
  if (!v8 && v9)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v12 = &v8[4 * v9];
  result = boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<boost::container::vec_iterator<vp::vx::Chat_Flavor*,true>>((v3 + 56), &v13, &v12);
  v11 = *(v4 + 12);
  *(v3 + 104) = *(v4 + 26);
  *(v3 + 96) = v11;
  return result;
}

void sub_2726D576C(_Unwind_Exception *exception_object)
{
  v4 = v2;
  v6 = v4;
  if (*(v4 + 80))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v3, *(v4 + 64));
  }

  if (*(v6 + 40))
  {
    boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(v1, *(v6 + 24));
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::view_storage(uint64_t a1, uint64_t a2)
{
  return *a2;
}

{
  return *a2;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<vp::vx::Global_Configuration>::allocate_storage(uint64_t a1, uint64_t *a2, void *a3)
{
  result = (*(**a3 + 16))(*a3, 112, 8);
  *a2 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor33get_client_sample_rate_preferenceEvENK3__0clEvEUlRKNS3_20Global_ConfigurationEE_JSE_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESJ_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFC60;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Configuration_Context>(void)::s_type_id)
  {
    v5 = vp::vx::data_flow::Value::view_storage(v5);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_25;
  }

  v7 = *(a1 + 8);
  LOBYTE(__src) = 0;
  BYTE8(__src) = 0;
  default_resource = std::pmr::get_default_resource(v5);
  v39 = &v41;
  v40 = xmmword_2727565D0;
  LODWORD(__p[0]) = 0;
  v42 = std::pmr::get_default_resource(default_resource);
  v43 = &v45;
  v44 = xmmword_2727565D0;
  boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(&v42, __p, __p + 4);
  LODWORD(v46) = 0;
  BYTE4(v46) |= 1u;
  v47 = 1065353216;
  v8 = (*(**(a1 + 16) + 24))(*(a1 + 16), v6, &__src);
  v9 = v8;
  if (v8)
  {
    v24 = __src;
    v25 = default_resource;
    v26 = &v28;
    v27 = xmmword_2727565D0;
    boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(&v25, &default_resource);
    v29 = v42;
    v30 = &v32;
    v31 = xmmword_2727565D0;
    v5 = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl(&v29, &v42);
    v33 = v46;
    v34 = v47;
  }

  else
  {
    log = vp::get_log(v8);
    v5 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      log_context_info = vp::get_log_context_info(__p, v7, "vp::vx::Voice_Processor]", 23);
      v12 = v36;
      v13 = v36;
      v14 = __p[1];
      v15 = vp::get_log(log_context_info);
      v5 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        if (v13 >= 0)
        {
          v16 = v12;
        }

        else
        {
          v16 = v14;
        }

        v17 = __p[0];
        if (v13 >= 0)
        {
          v17 = __p;
        }

        if (v16)
        {
          v18 = " ";
        }

        else
        {
          v18 = "";
        }

        *buf = 136315394;
        v49 = v17;
        v50 = 2080;
        v51 = v18;
        _os_log_impl(&dword_2724B4000, v15, OS_LOG_TYPE_ERROR, "%s%sfailed to get global configuration", buf, 0x16u);
        LOBYTE(v13) = v36;
      }

      if ((v13 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (*(&v44 + 1))
  {
    v5 = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v42, v43);
  }

  if (*(&v40 + 1))
  {
    v5 = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&default_resource, v39);
  }

  if ((v9 & 1) == 0)
  {
LABEL_25:
    LOBYTE(v24) = 0;
    BYTE8(v24) = 0;
    v25 = std::pmr::get_default_resource(v5);
    v26 = &v28;
    v27 = xmmword_2727565D0;
    LODWORD(__src) = 0;
    v29 = std::pmr::get_default_resource(v25);
    v30 = &v32;
    v31 = xmmword_2727565D0;
    boost::container::vector<vp::vx::Chat_Flavor,boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>,void>::assign<vp::vx::Chat_Flavor*>(&v29, &__src, &__src + 4);
    LODWORD(v33) = 0;
    BYTE4(v33) |= 1u;
    v34 = 1065353216;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v19);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Global_Configuration>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v4);
  *storage = v24;
  *(storage + 16) = v25;
  *(storage + 24) = storage + 48;
  *(storage + 32) = xmmword_2727565D0;
  boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((storage + 16), &v25);
  *(storage + 56) = v29;
  *(storage + 64) = storage + 88;
  *(storage + 72) = xmmword_2727565D0;
  result = boost::container::small_vector_base<vp::vx::Chat_Flavor,vp::Allocator<vp::vx::Chat_Flavor>,void>::move_construct_impl((storage + 56), &v29);
  v22 = v33;
  v23 = *(&v31 + 1);
  *(storage + 104) = v34;
  *(storage + 96) = v22;
  if (v23)
  {
    result = boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v29, v30);
  }

  if (*(&v27 + 1))
  {
    return boost::container::small_vector_allocator<vp::vx::Chat_Flavor,vp::Allocator<void>,void>::deallocate(&v25, v26);
  }

  return result;
}

void sub_2726D5CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFA70;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881BFA70;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS3_20Global_ConfigurationEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor24get_global_configurationEvENK3__0clEvEUlRKT_E_JNS3_21Configuration_ContextEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSH_EEERNS4_13State_ManagerESD_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881BFA70;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E0_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E0_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFC18;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EEclEOS11_OS12_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor22get_client_sample_rateENS2_6DomainEENK3__0clEvEUlRKT_E_JN2CA17StreamDescriptionEEEEDaOSD_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESD_SQ_EUlPPKNS4_5ValueEPSY_E_NS_9allocatorIS13_EEFvS11_S12_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFBD0;
  *(a2 + 8) = *(result + 8);
  return result;
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlddE_JddEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EEclEOSX_OSY_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  v9 = *v7;
  v10 = *v8;
  if (*v7 != *v8)
  {
    v11 = *(a1 + 8);
    log = vp::get_log(v8);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__p, v11, "vp::vx::Voice_Processor]", 23);
      v14 = v24;
      v15 = v24;
      v16 = __p[1];
      v17 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        if (v15 >= 0)
        {
          v18 = v14;
        }

        else
        {
          v18 = v16;
        }

        v19 = __p[0];
        if (v15 >= 0)
        {
          v19 = __p;
        }

        if (v18)
        {
          v20 = " ";
        }

        else
        {
          v20 = "";
        }

        *buf = 136315394;
        v26 = v19;
        v27 = 2080;
        v28 = v20;
        _os_log_impl(&dword_2724B4000, v17, OS_LOG_TYPE_ERROR, "%s%smicrophone and reference block sizes must be equal", buf, 0x16u);
        LOBYTE(v15) = v24;
      }

      if ((v15 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v9 < v10)
  {
    v9 = v10;
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v9;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor15get_sample_rateENS3_18Uplink_DSP_Node_IDEENK3__0clEvEUlddE_JddEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerESF_SM_EUlPPKNS4_5ValueEPSU_E_NS_9allocatorISZ_EEFvSX_SY_EE7__cloneEPNS0_6__baseIS12_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881BFFF8;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_ref_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_ref_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C0400;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_mic_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor26get_uplink_mic_sample_rateEvENK3__0clEvEUlT_E_JN2CA17StreamDescriptionEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_EEERNS4_13State_ManagerESC_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C03B8;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor60create_spatial_head_tracking_enabled_property_override_stateEvE3__0JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRef::TypeRef(&v10, "UInt32");
  v5 = MEMORY[0x277CBED28];
  if ((v4 & 1) == 0)
  {
    v5 = MEMORY[0x277CBED10];
  }

  cf = *v5;
  v9[0] = &v10;
  v9[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v7);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  return result;
}

void sub_2726D6678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor60create_spatial_head_tracking_enabled_property_override_stateEvE3__0JbEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JbEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C15E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor57create_spatial_head_tracking_mode_property_override_stateEvE3__0JjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v8 = *vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[7],unsigned int &>(&v9, &v8);
  v7[0] = &v9;
  v7[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v7);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  return result;
}

void sub_2726D682C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor57create_spatial_head_tracking_mode_property_override_stateEvE3__0JjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C1598;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor30get_spatial_head_tracking_modeEvENK3__0clEvEUlNS3_14Operation_ModeENS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_SD_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_SD_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EEclEOSY_OSZ_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id)
  {
    v6 = vp::vx::data_flow::Value::view_storage(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = *vp::vx::data_flow::Value::view_storage(v3[1]);
  if (*v6 == 4)
  {
    v8 = 5;
  }

  else
  {
    v8 = 0;
  }

  if (*v6 == 2)
  {
    v9 = 4;
  }

  else
  {
    v9 = v8;
  }

  if ((v7 & 0x100000000) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v11);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v10;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor30get_spatial_head_tracking_modeEvENK3__0clEvEUlNS3_14Operation_ModeENS3_35Spatial_Head_Tracking_ConfigurationEE_JSC_SD_EEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSC_SD_EEERNS4_13State_ManagerESG_SN_EUlPPKNS4_5ValueEPSV_E_NS_9allocatorIS10_EEFvSY_SZ_EE7__cloneEPNS0_6__baseIS13_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C09E0;
  *(a2 + 8) = *(result + 8);
  return result;
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor54create_metric_reporter_ids_dsp_property_override_stateEvE3__0JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NSG_IS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  applesauce::CF::make_DataRef(&v8, *v4, *(v4 + 8) - *v4);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v10, "Data", &v8);
  v9[0] = &v10;
  v9[1] = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v9);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = CFDictionaryRef;
  return result;
}

void sub_2726D6B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor54create_metric_reporter_ids_dsp_property_override_stateEvE3__0JNS_6vectorIxNS_9allocatorIxEEEEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESK_SR_EUlPPKNS4_5ValueEPSZ_E_NSG_IS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS16_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C14A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__optional_copy_base<std::vector<float>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_2726D6CA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

CFDictionaryRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EEclEOS16_OS17_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id)
  {
    v11 = vp::vx::data_flow::Value::view_storage(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = v4[3];
  if (v12[2] == &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id)
  {
    v13 = vp::vx::data_flow::Value::view_storage(v12);
  }

  else
  {
    v13 = 0;
  }

  if (*v7 != 1)
  {
    goto LABEL_52;
  }

  if (*(a1 + 32) != 1 || ((v14 = *(a1 + 8), v15 = *(a1 + 16) - v14, LODWORD(v16) = *(v9 + 28), (*(v9 + 12) & 0x20) == 0) ? (v16 = 1) : (v16 = v16), v16 != v15 >> 2))
  {
    if (*v13)
    {
      vp::vx::trim_gains_parse_cf(&v28, v13);
      if (v30 == 1)
      {
        v19 = v28;
        v20 = v29 - v28;
        LODWORD(v21) = *(v9 + 28);
        if ((*(v9 + 12) & 0x20) != 0)
        {
          v21 = v21;
        }

        else
        {
          v21 = 1;
        }

        if (v21 == v20 >> 2)
        {
          applesauce::CF::make_DataRef(&v27, v28, v20);
          applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v31, "Data", &v27);
          v33 = &v31;
          cf = 1;
          CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v33);
          if (v32)
          {
            CFRelease(v32);
          }

          if (v31)
          {
            CFRelease(v31);
          }

          if (v27)
          {
            CFRelease(v27);
          }

          if (v19)
          {
            operator delete(v19);
          }

          goto LABEL_53;
        }

        if (v28)
        {
          operator delete(v28);
        }
      }
    }

    v22 = *v11;
    v23 = *(v11 + 8);
    if (*v11 != v23)
    {
      v24 = v23 - v22;
      LODWORD(v23) = *(v9 + 28);
      v23 = (*(v9 + 12) & 0x20) != 0 ? v23 : 1;
      if (v23 == v24 >> 2)
      {
        applesauce::CF::make_DataRef(&v31, v22, v24);
        applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v33, "Data", &v31);
        v28 = &v33;
        v29 = 1;
        CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v28);
        if (cf)
        {
          CFRelease(cf);
        }

        if (v33)
        {
          CFRelease(v33);
        }

        v18 = v31;
        if (v31)
        {
          goto LABEL_24;
        }

        goto LABEL_53;
      }
    }

LABEL_52:
    CFDictionaryRef = 0;
    goto LABEL_53;
  }

  applesauce::CF::make_DataRef(&v31, v14, v15);
  applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[5],applesauce::CF::DataRef>(&v33, "Data", &v31);
  v28 = &v33;
  v29 = 1;
  CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(&v28);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  v18 = v31;
  if (v31)
  {
LABEL_24:
    CFRelease(v18);
  }

LABEL_53:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v25);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = CFDictionaryRef;
  return result;
}

void sub_2726D6FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EE18destroy_deallocateEv(void *__p)
{
  if (*(__p + 32) == 1)
  {
    v2 = __p[1];
    if (v2)
    {
      __p[2] = v2;
      operator delete(v2);
    }
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EE7destroyEv(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      *(a1 + 16) = v1;
      operator delete(v1);
    }
  }
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EED0Ev(uint64_t a1)
{
  *a1 = &unk_2881C0F30;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
      operator delete(v2);
    }
  }

  JUMPOUT(0x2743CBFA0);
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF13DictionaryRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor49create_mic_trim_gains_dsp_property_override_stateEvE3__0JNS3_15Input_Port_TypeEN2CA17StreamDescriptionENS_6vectorIfNS_9allocatorIfEEEENS7_8ArrayRefEEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SH_SL_SM_EEERNS4_13State_ManagerESO_SV_EUlPPKNS4_5ValueEPS13_E_NSJ_IS18_EEFvS16_S17_EED1Ev(uint64_t a1)
{
  *a1 = &unk_2881C0F30;
  if (*(a1 + 32) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      *(a1 + 16) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

void vp::vx::Voice_Processor::get_dsp_node_parameter_override(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v46 = *MEMORY[0x277D85DE8];
  v28 = a2;
  if (a3 == 1885433961)
  {
    if (*(a1 + 264))
    {
      goto LABEL_13;
    }

    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v38, *(a1 + 456));
    v19 = v38;
    if (v38)
    {
      v20 = v39;
      if (v39)
      {
        atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*(a1 + 8) + 16))(&v43, a1 + 8, 26);
      v21 = v43;
      LODWORD(p_cf) = v43;
      v34 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      (*(*(a1 + 8) + 16))(&v43, a1 + 8, 39);
      v22 = v43;
      v31 = v43;
      v32 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      (*(*(a1 + 8) + 16))(&v43, a1 + 8, 27);
      v23 = v43;
      LODWORD(v29) = v43;
      v30 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      v43 = &unk_2881C1458;
      *&v44 = v19;
      *(&v44 + 1) = v20;
      v45 = &v43;
      v40 = v21;
      v41 = v22;
      v42 = v23;
      vp::vx::data_flow::State_Manager::create_state(&v25, (a1 + 64), &v43);
      v4 = v25;
      LODWORD(cf) = v25;
      v24 = v26;
      v26 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v25);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v43);
      LODWORD(v43) = v4;
      v36 = 0;
      v37 = 0;
      vp::vx::data_flow::State<void>::~State(&cf);
      LODWORD(v25) = v4;
      v26 = v24;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      vp::vx::data_flow::State<void>::~State(&v29);
      vp::vx::data_flow::State<void>::~State(&v31);
      vp::vx::data_flow::State<void>::~State(&p_cf);
    }

    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    if (!v19)
    {
LABEL_13:
      cf = 0;
      vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::NumberRef>(&v43, (a1 + 16), &cf);
      v4 = v43;
      LODWORD(v25) = v43;
      v24 = v44;
      v26 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    *a4 = v4;
    goto LABEL_53;
  }

  if (a3 == 1684829029)
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v29, *(a1 + 456));
    v9 = v29;
    if (v29)
    {
      v10 = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      (*(*(a1 + 8) + 16))(&v43, a1 + 8, 39);
      v11 = v43;
      LODWORD(p_cf) = v43;
      v34 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      (*(*(a1 + 8) + 16))(&v43, a1 + 8, 27);
      v12 = v43;
      v31 = v43;
      v32 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      v43 = &unk_2881C10B0;
      *&v44 = v9;
      *(&v44 + 1) = v10;
      v45 = &v43;
      v38 = __PAIR64__(v12, v11);
      vp::vx::data_flow::State_Manager::create_state(&v25, (a1 + 64), &v43);
      v5 = v25;
      LODWORD(cf) = v25;
      v24 = v26;
      v26 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v25);
      std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v43);
      LODWORD(v43) = v5;
      v36 = 0;
      v37 = 0;
      vp::vx::data_flow::State<void>::~State(&cf);
      LODWORD(v25) = v5;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      vp::vx::data_flow::State<void>::~State(&v31);
      vp::vx::data_flow::State<void>::~State(&p_cf);
      if (!v10)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = v30;
      if (!v30)
      {
        goto LABEL_8;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
LABEL_8:
    if (!v9)
    {
      cf = 0;
      vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::NumberRef>(&v43, (a1 + 16), &cf);
      v5 = v43;
      LODWORD(v25) = v43;
      v24 = v44;
      v26 = v44;
      v44 = 0uLL;
      vp::vx::data_flow::State<void>::~State(&v43);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    *a4 = v5;
LABEL_53:
    *(a4 + 8) = v24;
    v26 = 0uLL;
    *(a4 + 24) = 1;
    vp::vx::data_flow::State<void>::~State(&v25);
    return;
  }

  v13 = *(a1 + 520);
  v14 = *(a1 + 528);
  if (v13 == v14)
  {
LABEL_42:
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    while (1)
    {
      v15 = *v13;
      v16 = *(v13 + 8);
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = 0;
        v36 = v16;
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v27 = 0;
        v36 = 0;
      }

      cf = v15;
      LODWORD(v37) = a3;
      if (HIDWORD(v28) == -1)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      p_cf = &cf;
      (off_2881C1678[HIDWORD(v28)])(&v43, &p_cf, &v28);
      if (v27 != -1 || v45 != -1)
      {
        if (v45 == -1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v25);
        }

        else
        {
          p_cf = &v25;
          (off_2881C1688[v45])(&p_cf, &v25, &v43);
        }
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v43);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      if (v27)
      {
        if (v27 == 2)
        {
          vp::vx::data_flow::State<void>::State(a4, &v25);
          v18 = 1;
          *(a4 + 24) = 1;
        }

        else if (v27 == 1)
        {
          v17 = v25;
          if (v25)
          {
            CFRetain(v25);
          }

          *a4 = v17;
          *(a4 + 24) = 0;
          v18 = 1;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 4;
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v25);
      if (v16)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      }

      if ((v18 | 4) != 4)
      {
        break;
      }

      v13 += 16;
      if (v13 == v14)
      {
        goto LABEL_42;
      }
    }
  }
}

void sub_2726D78C0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2726D78D8);
  }

  __clang_call_terminate(a1);
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 24) == 2)
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
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    *v4 = *a3;
    result = *(a3 + 8);
    *(v4 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v4 + 24) = 2;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v4 = *result;
  if (*(*result + 24) == 1)
  {
    v5 = *a2;
    *a2 = *a3;
  }

  else
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    v5 = 0;
    *v4 = *a3;
    *(v4 + 24) = 1;
  }

  *a3 = v5;
  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN10applesauce2CF9NumberRefEN2vp2vx9data_flow5StateISB_EEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISH_LNS0_6_TraitE1EEEEEvOT_EUlRSN_OT0_E_JRNS0_6__baseILSL_1EJS8_SB_SG_EEEOSV_EEEDcSN_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 24))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,applesauce::CF::NumberRef,vp::vx::data_flow::State<applesauce::CF::NumberRef>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 24) = 0;
  }

  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::NumberRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v11) = *a3;
  *a3 = 0;
  vp::vx::data_flow::State_Manager::create_state(&v12, a2 + 3, v11);
  LODWORD(a2) = v12;
  v8 = v12;
  v7 = v13;
  v13 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::Value::~Value(v11);
  *a1 = a2;
  *(a1 + 8) = v7;
  v9 = 0;
  v10 = 0;
  return vp::vx::data_flow::State<void>::~State(&v8);
}

CFNumberRef *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EEclEOS10_OS11_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = vp::vx::data_flow::Value::view_storage(v4[2]);
  v11 = *v9;
  if (*v7 - 3) <= 1 && (v12 = *v10, v13 = *(a1 + 8), is_apple_made_bluetooth_product = vp::vx::get_output_device_is_apple_made_bluetooth_product(v13, v12), (is_apple_made_bluetooth_product & 0x100000000) != 0) && (is_apple_made_bluetooth_product)
  {
    port_owning_device_id = vp::vx::get_port_owning_device_id(v13, v12, 1869968496);
    v16 = port_owning_device_id;
    v29 = port_owning_device_id;
    v30 = BYTE4(port_owning_device_id);
    if ((port_owning_device_id & 0x100000000) != 0)
    {
      caulk::expected<unsigned int,int>::value(&v29);
      valuePtr = 0x676C6F6262616964;
      v32 = 0;
      v33 = 4;
      v34 = 0;
      v19 = (*(*v13 + 24))(v13, v16, &valuePtr, 0, 0, &v33, &v34);
      if (v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = v34;
      }

      v17 = v20 | ((v19 == 0) << 32);
      valuePtr = v17;
      LOBYTE(v32) = 1;
      caulk::expected<CA::AudioSampleRateConverter,int>::value(&valuePtr);
    }

    else
    {
      v17 = port_owning_device_id;
    }

    v27 = v17;
    v28 = BYTE4(v17);
    if ((v17 & 0x100000000) == 0)
    {
      goto LABEL_20;
    }

    caulk::expected<unsigned int,int>::value(&v27);
    v29 = v17;
    v23 = CFNumberCreate(0, kCFNumberIntType, &v29);
    valuePtr = v23;
    if (!v23)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v24 = v23;
    caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(0);
    v26 = v24;
    caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(0);
  }

  else
  {
    if ((v11 & 0xFFFFFFFE) != 6)
    {
LABEL_20:
      v26 = 0;
      goto LABEL_21;
    }

    LODWORD(valuePtr) = 8210;
    v26 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (!v26)
    {
      v18 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v18, "Could not construct");
    }
  }

LABEL_21:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v26;
  return result;
}

void sub_2726D7DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EE7__cloneEPNS0_6__baseIS15_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C1458;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED0Ev(void *a1)
{
  *a1 = &unk_2881C1458;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor61create_personal_audio_HLC_product_id_parameter_override_stateEvE3__0JNS3_16Output_Port_TypeENS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_SG_jEEERNS4_13State_ManagerESI_SP_EUlPPKNS4_5ValueEPSX_E_NS_9allocatorIS12_EEFvS10_S11_EED1Ev(void *a1)
{
  *a1 = &unk_2881C1458;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = **a2;
  if (v6[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Port_Sub_Type>(void)::s_type_id)
  {
    v7 = vp::vx::data_flow::Value::view_storage(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = vp::vx::data_flow::Value::view_storage(v4[1]);
  v9 = *v7;
  v10 = *(a1 + 8);
  port_owning_device_id = vp::vx::get_port_owning_device_id(v10, *v8, 1869968496);
  valuePtr = *&port_owning_device_id;
  v27 = BYTE4(port_owning_device_id);
  if ((port_owning_device_id & 0x100000000) == 0)
  {
    v12 = port_owning_device_id;
LABEL_6:
    LODWORD(v25) = v12;
    goto LABEL_18;
  }

  caulk::expected<unsigned int,int>::value(&valuePtr);
  cf = 0x676C6F62646F7365;
  v29 = 0;
  v31 = 0;
  v30 = 4;
  v13 = (*(*v10 + 24))(v10, LODWORD(valuePtr), &cf, 0, 0, &v30, &v31);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v31;
  }

  v12 = v14 | ((v13 == 0) << 32);
  if ((v12 & 0x100000000) == 0)
  {
    goto LABEL_6;
  }

  v15 = 150.0;
  if (*&v14 <= 150.0)
  {
    v15 = *&v14;
  }

  if (*&v14 >= 50.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 50.0;
  }

  valuePtr = v16;
  v17 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  cf = v17;
  if (!v17)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v25 = v17;
  caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(0);
LABEL_18:
  if ((v9 - 2) > 0xB)
  {
    v18 = 1121058816;
  }

  else
  {
    v18 = *&vp::Service_Interface<1668443507u>::k_service_type_id[4 * (v9 - 2) + 4];
  }

  valuePtr = *&v18;
  cf = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (!cf)
  {
    v23 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v23, "Could not construct");
  }

  p_cf = &v25;
  if ((v12 & 0x100000000) == 0)
  {
    p_cf = &cf;
  }

  v20 = *p_cf;
  *p_cf = 0;
  if (cf)
  {
    CFRelease(cf);
  }

  if ((v12 & 0x100000000) != 0)
  {
    caulk::__expected_detail::destroy<applesauce::CF::NumberRef,(void *)0>(v25);
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v21);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::NumberRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v20;
  return result;
}

void sub_2726D8258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_2881C10B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED0Ev(void *a1)
{
  *a1 = &unk_2881C10B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9NumberRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor52create_ref_port_sensitivity_parameter_override_stateEvE3__0JNS3_13Port_Sub_TypeEjEEEDaOT_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSF_jEEERNS4_13State_ManagerESH_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EED1Ev(void *a1)
{
  *a1 = &unk_2881C10B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void non-virtual thunk tovp::vx::Voice_Processor::~Voice_Processor(vp::vx::Voice_Processor *this)
{
  vp::vx::Voice_Processor::~Voice_Processor((this - 256));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 256));
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 248));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 248));
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 8));

  JUMPOUT(0x2743CBFA0);
}

{
  vp::vx::Voice_Processor::~Voice_Processor((this - 8));
}

void vp::vx::Voice_Processor::~Voice_Processor(vp::vx::Voice_Processor *this)
{
  v100 = *MEMORY[0x277D85DE8];
  *this = &unk_2881BEBF8;
  *(this + 1) = &unk_2881BECE8;
  *(this + 31) = &unk_2881BED18;
  *(this + 32) = &unk_2881BED50;
  if (*(this + 92))
  {
    _ZNSt3__18optionalIN5caulk9semaphoreEE7emplaceB8ne200100IJEvEERS2_DpOT_((this + 752));
    v2 = *(this + 93);
    *(this + 46) = 0u;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    caulk::semaphore::timed_wait((this + 752), -1.0);
    __dmb(9u);
  }

  vp::rpb::Server::get_shared_instance(buf);
  if (*buf)
  {
    v90 = *buf;
    __p[0] = this;
    vp::vx::Voice_Processor::exception_guard(this, "disconnect RPB server", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::disconnect(vp::rpb::Server)::$_0>, __p);
    vp::objc::ID::~ID(&v90);
    v89 = *buf;
    __p[0] = this;
    vp::vx::Voice_Processor::exception_guard(this, "unregister RPB server listener", caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::unregister_listener(vp::rpb::Server)::$_0>, __p);
    vp::objc::ID::~ID(&v89);
  }

  vp::objc::ID::~ID(buf);
  v3 = *(this + 190);
  if (v3)
  {
    v4 = (*(this + 189) + 16);
    do
    {
      if (*v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v4);
      }

      v4 += 3;
      --v3;
    }

    while (v3);
  }

  *(this + 190) = 0;
  v5 = *(this + 242);
  if (v5)
  {
    v6 = (*(this + 241) + 16);
    do
    {
      if (*v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v6);
      }

      v6 += 3;
      --v5;
    }

    while (v5);
  }

  *(this + 242) = 0;
  v7 = *(this + 300);
  *(this + 300) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 293);
  v9 = 0uLL;
  *(this + 146) = 0u;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    v9 = 0uLL;
  }

  v10 = *(this + 313);
  *(this + 156) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 293);
  *(this + 146) = 0u;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(this + 323);
  *(this + 323) = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(this + 295);
  v14 = 0uLL;
  *(this + 147) = 0u;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    v14 = 0uLL;
  }

  v15 = *(this + 326);
  *(this + 2600) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](this + 65);
  log = vp::get_log(v16);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, this, "vp::vx::Voice_Processor]", 23);
    v19 = BYTE7(v93);
    v20 = __p[1];
    v21 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v19 >= 0)
      {
        v22 = v19;
      }

      else
      {
        v22 = v20;
      }

      v23 = __p[0];
      if ((SBYTE7(v93) & 0x80u) == 0)
      {
        v23 = __p;
      }

      if (v22)
      {
        v24 = " ";
      }

      else
      {
        v24 = "";
      }

      *buf = 136315394;
      *&buf[4] = v23;
      v98 = 2080;
      v99 = v24;
      _os_log_impl(&dword_2724B4000, v21, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
    }

    if (SBYTE7(v93) < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::unique_ptr<vp::vx::Orientation_Manager>::reset[abi:ne200100](this + 350, 0);
  std::unique_ptr<vp::vx::System_Status_Manager>::reset[abi:ne200100]((this + 2792), 0);
  v25 = *(this + 348);
  *(this + 348) = 0;
  if (v25)
  {
    std::default_delete<vp::vx::Control_Center_Manager>::operator()[abi:ne200100](v25);
  }

  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 347, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 346, 0);
  std::unique_ptr<vp::Audio_Buffer::Storage,vp::Audio_Buffer::Storage_Deleter>::reset[abi:ne200100](this + 345, 0);
  if (*(this + 2672) == 1)
  {
    vp::vx::IO_Personal_Audio_Command_Factory::~IO_Personal_Audio_Command_Factory((this + 2616));
  }

  v26 = *(this + 326);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v27 = *(this + 323);
  *(this + 323) = 0;
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  v28 = *(this + 313);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  vp::vx::data_flow::State<void>::~State(this + 618);
  vp::vx::data_flow::State<void>::~State(this + 610);
  vp::vx::data_flow::State<void>::~State(this + 602);
  v29 = *(this + 300);
  *(this + 300) = 0;
  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  vp::objc::ID::~ID(this + 299);
  vp::objc::ID::~ID(this + 298);
  vp::rpb::Connection::~Connection(this + 296);
  v30 = *(this + 295);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(this + 293);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v32 = *(this + 242);
  if (v32)
  {
    v33 = (*(this + 241) + 16);
    do
    {
      if (*v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v33);
      }

      v33 += 3;
      --v32;
    }

    while (v32);
  }

  if (*(this + 243))
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>::deallocate(this + 240, *(this + 241));
  }

  v34 = *(this + 190);
  if (v34)
  {
    v35 = (*(this + 189) + 16);
    do
    {
      if (*v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*v35);
      }

      v35 += 3;
      --v34;
    }

    while (v34);
  }

  if (*(this + 191))
  {
    boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>::deallocate(this + 188, *(this + 189));
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Delegate,vp::Allocator_Delete<vp::vx::io::Node_Delegate>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 181);
  *(this + 185) = &unk_2881C6630;
  v36 = *(this + 187);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Property_ID,caulk::inplace_function<std::unique_ptr<vp::vx::io::Node_Command,vp::Allocator_Delete<vp::vx::io::Node_Command>> ()(vp::Allocator<std::byte>),32ul,8ul,caulk::inplace_function_detail::vtable>>>,void>::~vector(this + 173);
  *(this + 177) = &unk_2881C6630;
  v37 = *(this + 179);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  v38 = *(this + 168);
  if (v38)
  {
    do
    {
      v39 = *v38;
      v40 = v38[3];
      if (v40)
      {
        v38[4] = v40;
        std::allocator_traits<vp::Allocator<unsigned char>>::deallocate[abi:ne200100](v38[6], v40, v38[5] - v40);
      }

      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *>>>::deallocate[abi:ne200100](*(this + 169), v38);
      v38 = v39;
    }

    while (v39);
  }

  v41 = *(this + 165);
  *(this + 165) = 0;
  if (v41)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,std::pair<std::vector<unsigned char,vp::Allocator<unsigned char>>,unsigned long>>,void *> *> *>>::deallocate[abi:ne200100](*(this + 167), v41, *(this + 166));
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 158);
  *(this + 162) = &unk_2881C6630;
  v42 = *(this + 164);
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Graph_Parameter_ID,vp::vx::data_flow::State<float>>>,void>::~vector(this + 150);
  *(this + 154) = &unk_2881C6630;
  v43 = *(this + 156);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  v44 = *(this + 145);
  if (v44)
  {
    do
    {
      v45 = *v44;
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<unsigned int,float>,void *>>>::deallocate[abi:ne200100](*(this + 146), v44);
      v44 = v45;
    }

    while (v45);
  }

  v46 = *(this + 142);
  *(this + 142) = 0;
  if (v46)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<unsigned int,float>,void *> *> *>>::deallocate[abi:ne200100](*(this + 144), v46, *(this + 143));
  }

  caulk::concurrent::shared_spin_lock::~shared_spin_lock((this + 1128));
  v47 = *(this + 130);
  v48 = *(this + 131);
  if (!v47 && v48)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  if (v48)
  {
    v49 = &v47[2 * v48];
    do
    {
      if (!v47)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v50 = v47[1];
      v51 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(*(this + 122), *(this + 123), *v47);
      vp::vx::data_flow::State<void>::unregister_listener(v51, v50);
      v47 += 2;
    }

    while (v47 != v49);
  }

  v52 = *(this + 127);
  if (v52)
  {
    v53 = (*(this + 126) + 8);
    do
    {
      --v52;
      __p[0] = v53;
      std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>::__destroy_vector::operator()[abi:ne200100](__p);
      v53 += 40;
    }

    while (v52);
  }

  *(this + 127) = 0;
  std::__hash_table<vp::vx::Property_ID,std::hash<vp::vx::Property_ID>,std::equal_to<vp::vx::Property_ID>,vp::Allocator<vp::vx::Property_ID>>::~__hash_table(this + 133);
  v54 = *(this + 132);
  if (v54)
  {
    (*(**(this + 129) + 24))(*(this + 129), *(this + 130), 8 * v54, 4);
  }

  boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,std::vector<vp::vx::Property_Manager::Listener,vp::Allocator<vp::vx::Property_Manager::Listener>>>>,void>::~vector(this + 125);
  boost::container::vector<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>,vp::Allocator<boost::container::dtl::pair<vp::vx::Property_ID,vp::vx::Property>>,void>::~vector(this + 121);
  std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::~__hash_table(this + 116);
  std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::~__hash_table(this + 111);
  v55 = *(this + 109);
  if (v55)
  {
    v56 = (*(this + 108) + 8);
    do
    {
      --v55;
      v56 = vp::vx::data_flow::State<void>::~State(v56) + 8;
    }

    while (v55);
  }

  v57 = *(this + 110);
  if (v57)
  {
    (*(**(this + 107) + 24))(*(this + 107), *(this + 108), 32 * v57, 8);
  }

  vp::vx::data_flow::State<void>::~State(this + 208);
  vp::vx::data_flow::State<void>::~State(this + 202);
  vp::vx::data_flow::State_Transaction::~State_Transaction((this + 784));
  if (*(this + 92))
  {
    *&v91 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    *__p = 0u;
    v87 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v88 = 3;
    }

    else
    {
      v88 = 2;
    }

    *buf = 134217984;
    *&buf[4] = 0;
    _os_log_send_and_compose_impl(v88, &v91, __p, 80, &dword_2724B4000, v87, 16, "assertion failure: mControlBlock == nullptr -> %llu", buf);
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 768) == 1)
  {
    MEMORY[0x2743CB750](this + 752);
  }

  v58 = *(this + 93);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  v59 = *(this + 80);
  if (v59)
  {
    v60 = *(this + 79);
    do
    {
      if (*(v60 + 23) < 0)
      {
        operator delete(*v60);
      }

      v60 += 24;
      --v59;
    }

    while (v59);
  }

  if (*(this + 81))
  {
    boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>::deallocate(this + 78, *(this + 79));
  }

  v61 = *(this + 77);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  if (*(this + 65))
  {
    std::vector<std::shared_ptr<vp::vx::io::Node_Delegate>>::clear[abi:ne200100](this + 65);
    std::allocator_traits<vp::Allocator<std::shared_ptr<vp::vx::Component>>>::deallocate[abi:ne200100](*(this + 68), *(this + 65), (*(this + 67) - *(this + 65)) >> 4);
  }

  v62 = *(this + 62);
  if (v62)
  {
    *(this + 63) = v62;
    operator delete(v62);
  }

  v63 = *(this + 60);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = *(this + 58);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  vp::Context::~Context((this + 264));
  v65 = *(this + 4);
  if (v65)
  {
    dispatch_source_cancel(v65);
  }

  v66 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    v67 = *(this + 11);
    *&v91 = *(this + 10);
    *(&v91 + 1) = v67;
    if (v67)
    {
      atomic_fetch_add_explicit((v67 + 16), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v91 = 0uLL;
  }

  vp::vx::data_flow::State_Manager::set_delegate(*(this + 8), &v91);
  if (*(&v91 + 1))
  {
    std::__shared_weak_count::__release_weak(*(&v91 + 1));
  }

  std::recursive_mutex::~recursive_mutex((this + 184));
  v68 = *(this + 19);
  if (v68)
  {
    do
    {
      v69 = *v68;
      std::pmr::polymorphic_allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>::destroy[abi:ne200100]<std::pair<applesauce::CF::StringRef const,unsigned int>>(*(v68 + 16));
      std::allocator_traits<vp::Allocator<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *>>>::deallocate[abi:ne200100](*(this + 20), v68);
      v68 = v69;
    }

    while (v69);
  }

  v70 = *(this + 16);
  *(this + 16) = 0;
  if (v70)
  {
    std::allocator_traits<vp::Allocator<std::__hash_node_base<std::__hash_node<std::__hash_value_type<applesauce::CF::StringRef,unsigned int>,void *> *> *>>::deallocate[abi:ne200100](*(this + 18), v70, *(this + 17));
  }

  v71 = *(this + 15);
  if (v71)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v71);
  }

  v72 = *(this + 13);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  v73 = *(this + 11);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v73);
  }

  v74 = vp::get_log(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
  {
    v75 = vp::get_log_context_info(__p, this + 64, "vp::vx::data_flow::State_Manager]", 32);
    v76 = BYTE7(v93);
    v77 = SBYTE7(v93);
    v78 = __p[1];
    v79 = vp::get_log(v75);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      if (v77 >= 0)
      {
        v80 = v76;
      }

      else
      {
        v80 = v78;
      }

      v81 = __p[0];
      if (v77 >= 0)
      {
        v81 = __p;
      }

      if (v80)
      {
        v82 = " ";
      }

      else
      {
        v82 = "";
      }

      *buf = 136315394;
      *&buf[4] = v81;
      v98 = 2080;
      v99 = v82;
      _os_log_impl(&dword_2724B4000, v79, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
      LOBYTE(v77) = BYTE7(v93);
    }

    if ((v77 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v83 = *(this + 9);
  if (v83)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
  }

  vp::vx::data_flow::State<void>::~State(this + 10);
  v84 = *(this + 4);
  if (v84)
  {
    dispatch_release(v84);
  }

  v85 = *(this + 3);
  if (v85)
  {
    dispatch_release(v85);
  }

  v86 = *(this + 2);
  if (v86)
  {
    dispatch_release(v86);
  }
}

{
  vp::vx::Voice_Processor::~Voice_Processor(this);

  JUMPOUT(0x2743CBFA0);
}

void sub_2726D8FF0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::exception_guard(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6[8] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6[0] = a4;
  return a3(v6);
}

void sub_2726D90A0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a2)
  {
    v20 = __cxa_begin_catch(a1);
    log = vp::get_log(v20);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(&__p, v19, "vp::vx::Voice_Processor]", 23);
      v23 = a19;
      v24 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(&a9);
      }

      if (v23 < 0)
      {
        operator delete(__p);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x2726D906CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<vp::vx::Orientation_Manager>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (*(**v2 + 24))();
    if ((v3 & 1) == 0)
    {
      log = vp::get_log(v3);
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        log_context_info = vp::get_log_context_info(&__p, v2, "vp::vx::Orientation_Manager]", 27);
        v8 = v26;
        v9 = v26;
        v10 = v25;
        v11 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          if (v9 >= 0)
          {
            v12 = v8;
          }

          else
          {
            v12 = v10;
          }

          p_p = __p;
          if (v9 >= 0)
          {
            p_p = &__p;
          }

          if (v12)
          {
            v14 = " ";
          }

          else
          {
            v14 = "";
          }

          *buf = 136315394;
          v28 = p_p;
          v29 = 2080;
          v30 = v14;
          _os_log_impl(&dword_2724B4000, v11, OS_LOG_TYPE_ERROR, "%s%sfailed to unregister device orientation listener", buf, 0x16u);
          LOBYTE(v9) = v26;
        }

        if ((v9 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    v4 = (*(**v2 + 40))();
    if ((v4 & 1) == 0)
    {
      v15 = vp::get_log(v4);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = vp::get_log_context_info(&__p, v2, "vp::vx::Orientation_Manager]", 27);
        v17 = v26;
        v18 = v26;
        v19 = v25;
        v20 = vp::get_log(v16);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          if (v18 >= 0)
          {
            v21 = v17;
          }

          else
          {
            v21 = v19;
          }

          v22 = __p;
          if (v18 >= 0)
          {
            v22 = &__p;
          }

          if (v21)
          {
            v23 = " ";
          }

          else
          {
            v23 = "";
          }

          *buf = 136315394;
          v28 = v22;
          v29 = 2080;
          v30 = v23;
          _os_log_impl(&dword_2724B4000, v20, OS_LOG_TYPE_ERROR, "%s%sfailed to unregister UI orientation listener", buf, 0x16u);
          LOBYTE(v18) = v26;
        }

        if ((v18 & 0x80) != 0)
        {
          operator delete(__p);
        }
      }
    }

    vp::vx::data_flow::State<void>::~State((v2 + 40));
    vp::vx::data_flow::State<void>::~State((v2 + 16));
    v5 = *(v2 + 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

vp *std::unique_ptr<vp::vx::System_Status_Manager>::reset[abi:ne200100](vp *result, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *result;
  *result = a2;
  if (v2)
  {
    log = vp::get_log(result);
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
    {
      log_context_info = vp::get_log_context_info(__p, v2, "vp::vx::System_Status_Manager]", 29);
      v5 = v14;
      v6 = v14;
      v7 = __p[1];
      v8 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v6 >= 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = v7;
        }

        v10 = __p[0];
        if (v6 >= 0)
        {
          v10 = __p;
        }

        if (v9)
        {
          v11 = " ";
        }

        else
        {
          v11 = "";
        }

        *buf = 136315394;
        v16 = v10;
        v17 = 2080;
        v18 = v11;
        _os_log_impl(&dword_2724B4000, v8, OS_LOG_TYPE_DEFAULT, "%s%sdestroyed", buf, 0x16u);
        LOBYTE(v6) = v14;
      }

      if ((v6 & 0x80) != 0)
      {
        operator delete(__p[0]);
      }
    }

    v12 = *(v2 + 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    JUMPOUT(0x2743CBFA0);
  }

  return result;
}

void std::default_delete<vp::vx::Control_Center_Manager>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void **std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *boost::container::small_vector_allocator<std::__fs::filesystem::path,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = v1;
      v1 = *v1;
      if (*(v2 + 48) == 1 && *(v2 + 47) < 0)
      {
        operator delete(v2[3]);
      }

      operator delete(v2);
    }

    while (v1);
  }
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_DSP_Node_ID,vp::vx::Downlink_DSP_Node_ID>,std::shared_ptr<vp::vx::DSP_Node_Factory>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void *boost::container::small_vector_allocator<boost::container::dtl::pair<std::variant<vp::vx::Uplink_Input_Port_ID,vp::vx::Downlink_Input_Port_ID,vp::vx::Uplink_Output_Port_ID,vp::vx::Downlink_Output_Port_ID>,std::shared_ptr<vp::vx::IO_Port_Factory>>,vp::Allocator<void>,void>::deallocate(void *result, void *a2)
{
  if (result + 4 != a2)
  {
    return (*(**result + 24))(*result);
  }

  return result;
}

void **caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::disconnect(vp::rpb::Server)::$_0>(uint64_t **a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  log = vp::get_log(a1);
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    log_context_info = vp::get_log_context_info(__p, v1, "vp::vx::Voice_Processor]", 23);
    v4 = HIBYTE(v65);
    v5 = SHIBYTE(v65);
    v6 = __p[1];
    v7 = vp::get_log(log_context_info);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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
      *&buf[4] = v9;
      *&buf[12] = 2080;
      *&buf[14] = v10;
      _os_log_impl(&dword_2724B4000, v7, OS_LOG_TYPE_DEFAULT, "%s%sdisconnect RPB", buf, 0x16u);
      LOBYTE(v5) = HIBYTE(v65);
    }

    if ((v5 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  v61 = *(v1 + 2376);
  if (v61)
  {
    v11 = *(v1 + 2400);
    cf = CFStringCreateWithBytes(0, "Uplink", 6, 0x8000100u, 0);
    if (!cf)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    vp::rpb::Host::find_item_by_name(&v60, v61, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v12 = *(v1 + 2584);
    v57 = CFStringCreateWithBytes(0, "Downlink", 8, 0x8000100u, 0);
    if (!v57)
    {
      v52 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v52, "Could not construct");
    }

    vp::rpb::Host::find_item_by_name(&v58, v61, &v57);
    v53 = v1;
    if (v57)
    {
      CFRelease(v57);
    }

    *buf = v60;
    v13 = 0;
    *&buf[8] = v58;
    v74 = 0x100000000;
    v54 = v12;
    v55 = v11;
    while (1)
    {
      v14 = *&buf[v13 - 8];
      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v11;
      }

      if (v15)
      {
        v16 = (v14 ? &buf[8] : buf);
        v17 = *v16;
        if (v17)
        {
          v56 = v17;
          caulk::autorelease_pool::autorelease_pool(v72);
          v18 = *(v15 + 64);
          if (*(v15 + 72) != v18)
          {
            v19 = 0;
            v20 = 1;
            do
            {
              v21 = v18 + 304 * v19;
              v22 = *v21;
              v23 = *(v21 + 8);
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v24 = v22 + *(*v22 - 24);
              v25 = *(v24 + 1);
              v26 = *(v24 + 2);
              if (v26)
              {
                atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v27 = *(v25 + 23);
              if ((v27 & 0x80u) == 0)
              {
                v28 = v25;
              }

              else
              {
                v28 = *v25;
              }

              if (v28)
              {
                v29 = *(v25 + 8);
                if ((v27 & 0x80u) == 0)
                {
                  v30 = v27;
                }

                else
                {
                  v30 = v29;
                }

                v31 = CFStringCreateWithBytes(0, v28, v30, 0x8000100u, 0);
                v71 = v31;
                if (!v31)
                {
                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v49, "Could not construct");
                }

                if (!v26)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                v31 = 0;
                v71 = 0;
                if (!v26)
                {
                  goto LABEL_46;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
LABEL_46:
              if (v23)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v23);
              }

              vp::rpb::Item::get_sub_host(__p, v56);
              if (v31)
              {
                CFRetain(v31);
              }

              v69 = v31;
              vp::rpb::Host::find_item_by_name(&v70, __p[0], &v69);
              if (v31)
              {
                CFRelease(v31);
              }

              vp::objc::ID::~ID(__p);
              if (v70)
              {
                v32 = *(v15 + 64);
                v63 = v70;
                v33 = *(v32 + 304 * v19);
                v73 = v63;
                (*(*v33 + 104))(__p, v33, &v73);
                vp::objc::ID::~ID(&v73);
                if ((v68 & 1) == 0 && SHIBYTE(v66) < 0)
                {
                  (*(*v67 + 24))(v67, v65, v66 & 0x7FFFFFFFFFFFFFFFLL, 1);
                }

                vp::objc::ID::~ID(&v63);
              }

              vp::objc::ID::~ID(&v70);
              if (v31)
              {
                CFRelease(v31);
              }

              v19 = v20;
              v18 = *(v15 + 64);
            }

            while (0x86BCA1AF286BCA1BLL * ((*(v15 + 72) - v18) >> 4) > v20++);
          }

          v35 = *(v15 + 192);
          if (*(v15 + 200) != v35)
          {
            v36 = 0;
            v37 = 1;
            do
            {
              v38 = 16 * v36;
              v39 = *(v35 + 16 * v36) + *(**(v35 + 16 * v36) - 24);
              v40 = *(v39 + 8);
              v41 = *(v39 + 16);
              if (v41)
              {
                atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v42 = *(v40 + 23);
              if ((v42 & 0x80u) == 0)
              {
                v43 = v40;
              }

              else
              {
                v43 = *v40;
              }

              if (v43)
              {
                v44 = *(v40 + 8);
                if ((v42 & 0x80u) == 0)
                {
                  v45 = v42;
                }

                else
                {
                  v45 = v44;
                }

                v46 = CFStringCreateWithBytes(0, v43, v45, 0x8000100u, 0);
                v73 = v46;
                if (!v46)
                {
                  v50 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v50, "Could not construct");
                }

                if (!v41)
                {
                  goto LABEL_77;
                }
              }

              else
              {
                v46 = 0;
                v73 = 0;
                if (!v41)
                {
                  goto LABEL_77;
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v41);
LABEL_77:
              vp::rpb::Item::get_sub_host(__p, v56);
              if (v46)
              {
                CFRetain(v46);
              }

              v70 = v46;
              vp::rpb::Host::find_wire_by_name(&v71, __p[0], &v70);
              if (v46)
              {
                CFRelease(v46);
              }

              vp::objc::ID::~ID(__p);
              if (v71)
              {
                v47 = *(*(v15 + 192) + v38);
                v62 = v71;
                (*(*v47 + 40))(__p, v47, &v62);
                if ((v68 & 1) == 0 && SHIBYTE(v66) < 0)
                {
                  (*(*v67 + 24))(v67, v65, v66 & 0x7FFFFFFFFFFFFFFFLL, 1);
                }

                vp::objc::ID::~ID(&v62);
              }

              vp::objc::ID::~ID(&v71);
              if (v46)
              {
                CFRelease(v46);
              }

              v36 = v37;
              v35 = *(v15 + 192);
              ++v37;
            }

            while (v36 < (*(v15 + 200) - v35) >> 4);
          }

          vp::rpb::Connection::operator=((v15 + 256));
          caulk::autorelease_pool::~autorelease_pool(v72);
          vp::objc::ID::~ID(&v56);
          v12 = v54;
          v11 = v55;
        }
      }

      v13 += 4;
      if (v13 == 8)
      {
        vp::objc::ID::~ID(&buf[8]);
        vp::objc::ID::~ID(buf);
        vp::objc::ID::~ID(&v58);
        vp::objc::ID::~ID(&v60);
        v1 = v53;
        break;
      }
    }
  }

  vp::objc::ID::~ID(&v61);
  vp::rpb::Connection::operator=((v1 + 2368));
  return vp::objc::ID::operator=((v1 + 2384));
}

void sub_2726D9FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, id);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  vp::objc::ID::~ID(va1);
  vp::objc::ID::~ID(va2);
  _Unwind_Resume(a1);
}

double vp::vx::Voice_Processor::observe_downlink_state_change(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 928), a2, &v7);
  *&result = std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v4 + 3), a3).n128_u64[0];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(float *a1, unsigned int a2, _DWORD **a3)
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

__n128 std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      if (*(a1 + 23) < 0)
      {
        operator delete(*a1);
      }

      result = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      *a1 = result;
      a2[1].n128_u8[7] = 0;
      a2->n128_u8[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    *(a2 + 8) = 0uLL;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::optional<std::string>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 48) == 1 && *(__p + 47) < 0)
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

double vp::vx::Voice_Processor::observe_uplink_state_change(uint64_t a1, unsigned int a2, __n128 *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,std::optional<std::string>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::optional<std::string>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::optional<std::string>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 888), a2, &v7);
  *&result = std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::string,false>>((v4 + 3), a3).n128_u64[0];
  return result;
}

void vp::vx::Voice_Processor::observe_global_state_change(uint64_t a1, uint64_t a2, __int128 *a3)
{
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, a3);
  (*(*a1 + 184))(a1, a2, &__p);
  if (v9 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v6, a3);
  (*(*a1 + 192))(a1, a2, &v6);
  if (v7 == 1 && SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

int *vp::vx::Voice_Processor::find_user_defaults_state@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v4 = *(a1 + 864);
  v20 = v4;
  v5 = *(a1 + 872);
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

  v7 = a2;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,true>,vp::vx::User_Defaults_Key>(&v19, &v20, v4 + 32 * v5, a2);
  v10 = *(a1 + 864);
  v11 = *(a1 + 872);
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
  v14 = v19;
  if (v19 != v13)
  {
    if (!v19)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v19 > v7)
    {
      v14 = v13;
    }
  }

  if (v14 == v13)
  {
    boost::container::throw_length_error("flat_map::at key not found", v9);
  }

  vp::vx::data_flow::State<void>::~State(&v16);
  vp::vx::data_flow::State<void>::State(&v16, v14 + 2);
  vp::vx::data_flow::State<void>::State(a3, &v16);
  return vp::vx::data_flow::State<void>::~State(&v16);
}

void sub_2726DA930(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726DA88CLL);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,true>,vp::vx::User_Defaults_Key>(void *result, void *a2, uint64_t a3, int a4)
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

int *vp::vx::Voice_Processor::find_property_state@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, int *a3@<X8>)
{
  v6 = 0;
  v7 = 0uLL;
  v11 = a2;
  v4 = boost::container::flat_map<vp::vx::Property_ID,vp::vx::Property,std::less<vp::vx::Property_ID>,vp::Allocator<std::pair<vp::vx::Property_ID,vp::vx::Property>>>::at(a1 + 968, &v11);
  vp::vx::data_flow::State<void>::State(&v8, v4);
  v10 = 1;
  vp::vx::data_flow::State<void>::~State(&v6);
  v6 = v8;
  v7 = v9;
  v9 = 0uLL;
  if (v10 == 1)
  {
    vp::vx::data_flow::State<void>::~State(&v8);
  }

  vp::vx::data_flow::State<void>::State(a3, &v6);
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_2726DAAA4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_2881C5FF8;
  exception[2] = 2;
}

void sub_2726DAB04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a15 == 1)
  {
    vp::vx::data_flow::State<void>::~State(&a12);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2726DAA80);
}

void caulk::bad_expected_access<vp::vx::Error_Code>::~bad_expected_access(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x2743CBFA0);
}

unsigned int *vp::vx::Voice_Processor::reset_dsp@<X0>(unsigned int *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v77 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 9;
LABEL_3:
    *a3 = v4;
    *(a3 + 4) = 0;
    return result;
  }

  v5 = result;
  v59 = (result + 282);
  v6 = atomic_load(result + 282);
  if (v6 > 0x7FFFFFFE)
  {
LABEL_8:
    v4 = 8;
    goto LABEL_3;
  }

  v7 = v6;
  while (1)
  {
    atomic_compare_exchange_strong(result + 282, &v7, v6 + 1);
    if (v7 == v6)
    {
      break;
    }

    v6 = v7;
    if (v7 >= 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v60 = 1;
  v8 = *(result + 323);
  if (v8)
  {
    *(result + 324) &= 0xFFFFFFFFFFFFFF00;
    vp::vx::io::Graph::reset(&v51, v8);
    v10 = v58;
    if (v58)
    {
      goto LABEL_11;
    }

    v11 = SHIBYTE(v56);
    if (v56 >= 0)
    {
      v12 = HIBYTE(v56);
    }

    else
    {
      v12 = v55[1];
    }

    log = vp::get_log(v9);
    v14 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        v45 = v10;
        log_context_info = vp::get_log_context_info(&v48, v5, "vp::vx::Voice_Processor]", 23);
        v16 = v50;
        if ((v50 & 0x80u) == 0)
        {
          v17 = v50;
        }

        else
        {
          v17 = v49;
        }

        v18 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v48;
          v20 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v51);
          std::string::basic_string<std::string_view,0>(__p, v20, v21);
          if (v16 >= 0)
          {
            v23 = &v48;
          }

          else
          {
            v23 = v19;
          }

          if (v17)
          {
            v24 = " ";
          }

          else
          {
            v24 = "";
          }

          if (v47 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          v26 = v52;
          v27 = v53;
          log_source_file_path = vp::get_log_source_file_path(v54, v22);
          v29 = v55;
          *buf = 136316930;
          if (v11 < 0)
          {
            v29 = v55[0];
          }

          v62 = v23;
          v63 = 2080;
          v64 = v24;
          v65 = 2080;
          v66 = "reset downlink DSP";
          v67 = 2080;
          v68 = v25;
          v69 = 1024;
          v70 = v26;
          v71 = 1024;
          v72 = v27;
          v73 = 2080;
          v74 = log_source_file_path;
          v75 = 2080;
          v76 = v29;
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s", buf, 0x4Au);
          if (v47 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v16) = v50;
        }

        if ((v16 & 0x80) != 0)
        {
          operator delete(v48);
        }

        v30 = v58;
        v10 = v45;
        goto LABEL_61;
      }
    }

    else if (v14)
    {
      v31 = vp::get_log_context_info(&v48, v5, "vp::vx::Voice_Processor]", 23);
      v32 = v50;
      if ((v50 & 0x80u) == 0)
      {
        v33 = v50;
      }

      else
      {
        v33 = v49;
      }

      v34 = vp::get_log(v31);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = v48;
        v36 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v51);
        std::string::basic_string<std::string_view,0>(__p, v36, v37);
        if (v32 >= 0)
        {
          v39 = &v48;
        }

        else
        {
          v39 = v35;
        }

        if (v33)
        {
          v40 = " ";
        }

        else
        {
          v40 = "";
        }

        if (v47 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        v42 = v52;
        v43 = v53;
        v44 = vp::get_log_source_file_path(v54, v38);
        *buf = 136316674;
        v62 = v39;
        v63 = 2080;
        v64 = v40;
        v65 = 2080;
        v66 = "reset downlink DSP";
        v67 = 2080;
        v68 = v41;
        v69 = 1024;
        v70 = v42;
        v71 = 1024;
        v72 = v43;
        v73 = 2080;
        v74 = v44;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s", buf, 0x40u);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        LOBYTE(v32) = v50;
      }

      if ((v32 & 0x80) != 0)
      {
        operator delete(v48);
      }
    }

    v30 = 0;
LABEL_61:
    *a3 = 5;
    *(a3 + 4) = 0;
    if ((v30 & 1) == 0 && SHIBYTE(v56) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v57, v55[0], v56 & 0x7FFFFFFFFFFFFFFFLL);
    }

    goto LABEL_11;
  }

  v10 = 0;
  *a3 = 8;
  *(a3 + 4) = 0;
LABEL_11:
  result = caulk::concurrent::shared_spin_lock::unlock_shared(v59);
  if (v10)
  {
    *a3 = 0;
    *(a3 + 4) = 1;
  }

  return result;
}

{
  v77 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v4 = 9;
LABEL_3:
    *a3 = v4;
    *(a3 + 4) = 0;
    return result;
  }

  v5 = result;
  v59 = (result + 282);
  v6 = atomic_load(result + 282);
  if (v6 > 0x7FFFFFFE)
  {
LABEL_8:
    v4 = 8;
    goto LABEL_3;
  }

  v7 = v6;
  while (1)
  {
    atomic_compare_exchange_strong(result + 282, &v7, v6 + 1);
    if (v7 == v6)
    {
      break;
    }

    v6 = v7;
    if (v7 >= 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v60 = 1;
  v8 = *(result + 300);
  if (v8)
  {
    *(result + 2433) = 0;
    vp::vx::io::Graph::reset(&v51, v8);
    v10 = v58;
    if (v58)
    {
      goto LABEL_11;
    }

    v11 = SHIBYTE(v56);
    if (v56 >= 0)
    {
      v12 = HIBYTE(v56);
    }

    else
    {
      v12 = v55[1];
    }

    log = vp::get_log(v9);
    v14 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        v45 = v10;
        log_context_info = vp::get_log_context_info(&v48, v5, "vp::vx::Voice_Processor]", 23);
        v16 = v50;
        if ((v50 & 0x80u) == 0)
        {
          v17 = v50;
        }

        else
        {
          v17 = v49;
        }

        v18 = vp::get_log(log_context_info);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = v48;
          v20 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v51);
          std::string::basic_string<std::string_view,0>(__p, v20, v21);
          if (v16 >= 0)
          {
            v23 = &v48;
          }

          else
          {
            v23 = v19;
          }

          if (v17)
          {
            v24 = " ";
          }

          else
          {
            v24 = "";
          }

          if (v47 >= 0)
          {
            v25 = __p;
          }

          else
          {
            v25 = __p[0];
          }

          v26 = v52;
          v27 = v53;
          log_source_file_path = vp::get_log_source_file_path(v54, v22);
          v29 = v55;
          *buf = 136316930;
          if (v11 < 0)
          {
            v29 = v55[0];
          }

          v62 = v23;
          v63 = 2080;
          v64 = v24;
          v65 = 2080;
          v66 = "reset uplink DSP";
          v67 = 2080;
          v68 = v25;
          v69 = 1024;
          v70 = v26;
          v71 = 1024;
          v72 = v27;
          v73 = 2080;
          v74 = log_source_file_path;
          v75 = 2080;
          v76 = v29;
          _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s", buf, 0x4Au);
          if (v47 < 0)
          {
            operator delete(__p[0]);
          }

          LOBYTE(v16) = v50;
        }

        if ((v16 & 0x80) != 0)
        {
          operator delete(v48);
        }

        v30 = v58;
        v10 = v45;
        goto LABEL_61;
      }
    }

    else if (v14)
    {
      v31 = vp::get_log_context_info(&v48, v5, "vp::vx::Voice_Processor]", 23);
      v32 = v50;
      if ((v50 & 0x80u) == 0)
      {
        v33 = v50;
      }

      else
      {
        v33 = v49;
      }

      v34 = vp::get_log(v31);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = v48;
        v36 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v51);
        std::string::basic_string<std::string_view,0>(__p, v36, v37);
        if (v32 >= 0)
        {
          v39 = &v48;
        }

        else
        {
          v39 = v35;
        }

        if (v33)
        {
          v40 = " ";
        }

        else
        {
          v40 = "";
        }

        if (v47 >= 0)
        {
          v41 = __p;
        }

        else
        {
          v41 = __p[0];
        }

        v42 = v52;
        v43 = v53;
        v44 = vp::get_log_source_file_path(v54, v38);
        *buf = 136316674;
        v62 = v39;
        v63 = 2080;
        v64 = v40;
        v65 = 2080;
        v66 = "reset uplink DSP";
        v67 = 2080;
        v68 = v41;
        v69 = 1024;
        v70 = v42;
        v71 = 1024;
        v72 = v43;
        v73 = 2080;
        v74 = v44;
        _os_log_impl(&dword_2724B4000, v34, OS_LOG_TYPE_ERROR, "%s%sfailed to %s due to '%s' error at line %u column %u in %s", buf, 0x40u);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        LOBYTE(v32) = v50;
      }

      if ((v32 & 0x80) != 0)
      {
        operator delete(v48);
      }
    }

    v30 = 0;
LABEL_61:
    *a3 = 5;
    *(a3 + 4) = 0;
    if ((v30 & 1) == 0 && SHIBYTE(v56) < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v57, v55[0], v56 & 0x7FFFFFFFFFFFFFFFLL);
    }

    goto LABEL_11;
  }

  v10 = 0;
  *a3 = 8;
  *(a3 + 4) = 0;
LABEL_11:
  result = caulk::concurrent::shared_spin_lock::unlock_shared(v59);
  if (v10)
  {
    *a3 = 0;
    *(a3 + 4) = 1;
  }

  return result;
}

void sub_2726DB000(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(__pa, a4);
  va_start(va, a4);
  v15 = va_arg(__pa, void);
  v17 = va_arg(__pa, void);
  v18 = va_arg(__pa, void);
  v19 = va_arg(__pa, void *);
  v20 = va_arg(__pa, void);
  v21 = va_arg(__pa, void);
  va_copy(va2, __pa);
  __p = va_arg(va2, void *);
  v24 = va_arg(va2, void);
  v25 = va_arg(va2, void);
  v26 = va_arg(va2, void);
  v27 = va_arg(va2, void);
  v28 = va_arg(va2, void);
  v29 = va_arg(va2, void);
  if (a2)
  {
    if (v8 < 0)
    {
      operator delete(v7);
    }

    if (v6 < 0)
    {
      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v28, v25, v27 & 0x7FFFFFFFFFFFFFFFLL);
    }

    std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](va2);
    v10 = __cxa_begin_catch(a1);
    log = vp::get_log(v10);
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      log_context_info = vp::get_log_context_info(__pa, v5, "vp::vx::Voice_Processor]", 23);
      v13 = HIBYTE(v25);
      v14 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        vp::get_log_exception_info(va);
      }

      if (v13 < 0)
      {
        operator delete(__p);
      }
    }

    *v4 = 11;
    *(v4 + 4) = 0;
    __cxa_end_catch();
    JUMPOUT(0x2726DACA0);
  }

  _Unwind_Resume(a1);
}

char *vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(int a1)
{
  v1 = vp::detail::reflect_value_name<(vp::vx::io::Error_Code)0,128ul>(a1);
  if (v2)
  {
    v3 = &v1[v2];
    for (i = v2; i; --i)
    {
      v5 = *--v3;
      if (v5 == 58)
      {
        v6 = v3 - v1 + 1;
        if (v2 < v6)
        {
          std::__throw_out_of_range[abi:ne200100]("string_view::substr");
        }

        return &v1[v6];
      }
    }
  }

  v6 = 0;
  return &v1[v6];
}

uint64_t std::shared_lock<caulk::concurrent::shared_spin_lock>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    caulk::concurrent::shared_spin_lock::unlock_shared(*a1);
  }

  return a1;
}

char *vp::detail::reflect_value_name<(vp::vx::io::Error_Code)0,128ul>(int a1)
{
  result = "vp::vx::io::Error_Code::Unknown]";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "vp::vx::io::Error_Code::Bad_Allocation]";
      break;
    case 2:
      result = "vp::vx::io::Error_Code::Bad_Frame_Count]";
      break;
    case 3:
      result = "vp::vx::io::Error_Code::Bad_Data]";
      break;
    case 4:
      result = "vp::vx::io::Error_Code::Bad_Direction]";
      break;
    case 5:
      result = "vp::vx::io::Error_Code::Bad_Sample_Time]";
      break;
    case 6:
      result = "vp::vx::io::Error_Code::Bad_Node_ID]";
      break;
    case 7:
      result = "vp::vx::io::Error_Code::Bad_Port_ID]";
      break;
    case 8:
      result = "vp::vx::io::Error_Code::Bad_Wire_ID]";
      break;
    case 9:
      result = "vp::vx::io::Error_Code::Bad_Terminal_Index]";
      break;
    case 10:
      result = "vp::vx::io::Error_Code::Bad_Parameter_ID]";
      break;
    case 11:
      result = "vp::vx::io::Error_Code::Bad_Property_ID]";
      break;
    case 12:
      result = "vp::vx::io::Error_Code::Operation_Not_Implemented]";
      break;
    case 13:
      result = "vp::vx::io::Error_Code::Operation_Not_Supported]";
      break;
    case 14:
      result = "(vp::vx::io::Error_Code)14]";
      break;
    case 15:
      result = "(vp::vx::io::Error_Code)15]";
      break;
    case 16:
      result = "(vp::vx::io::Error_Code)16]";
      break;
    case 17:
      result = "(vp::vx::io::Error_Code)17]";
      break;
    case 18:
      result = "(vp::vx::io::Error_Code)18]";
      break;
    case 19:
      result = "(vp::vx::io::Error_Code)19]";
      break;
    case 20:
      result = "(vp::vx::io::Error_Code)20]";
      break;
    case 21:
      result = "(vp::vx::io::Error_Code)21]";
      break;
    case 22:
      result = "(vp::vx::io::Error_Code)22]";
      break;
    case 23:
      result = "(vp::vx::io::Error_Code)23]";
      break;
    case 24:
      result = "(vp::vx::io::Error_Code)24]";
      break;
    case 25:
      result = "(vp::vx::io::Error_Code)25]";
      break;
    case 26:
      result = "(vp::vx::io::Error_Code)26]";
      break;
    case 27:
      result = "(vp::vx::io::Error_Code)27]";
      break;
    case 28:
      result = "(vp::vx::io::Error_Code)28]";
      break;
    case 29:
      result = "(vp::vx::io::Error_Code)29]";
      break;
    case 30:
      result = "(vp::vx::io::Error_Code)30]";
      break;
    case 31:
      result = "(vp::vx::io::Error_Code)31]";
      break;
    case 32:
      result = "(vp::vx::io::Error_Code)32]";
      break;
    case 33:
      result = "(vp::vx::io::Error_Code)33]";
      break;
    case 34:
      result = "(vp::vx::io::Error_Code)34]";
      break;
    case 35:
      result = "(vp::vx::io::Error_Code)35]";
      break;
    case 36:
      result = "(vp::vx::io::Error_Code)36]";
      break;
    case 37:
      result = "(vp::vx::io::Error_Code)37]";
      break;
    case 38:
      result = "(vp::vx::io::Error_Code)38]";
      break;
    case 39:
      result = "(vp::vx::io::Error_Code)39]";
      break;
    case 40:
      result = "(vp::vx::io::Error_Code)40]";
      break;
    case 41:
      result = "(vp::vx::io::Error_Code)41]";
      break;
    case 42:
      result = "(vp::vx::io::Error_Code)42]";
      break;
    case 43:
      result = "(vp::vx::io::Error_Code)43]";
      break;
    case 44:
      result = "(vp::vx::io::Error_Code)44]";
      break;
    case 45:
      result = "(vp::vx::io::Error_Code)45]";
      break;
    case 46:
      result = "(vp::vx::io::Error_Code)46]";
      break;
    case 47:
      result = "(vp::vx::io::Error_Code)47]";
      break;
    case 48:
      result = "(vp::vx::io::Error_Code)48]";
      break;
    case 49:
      result = "(vp::vx::io::Error_Code)49]";
      break;
    case 50:
      result = "(vp::vx::io::Error_Code)50]";
      break;
    case 51:
      result = "(vp::vx::io::Error_Code)51]";
      break;
    case 52:
      result = "(vp::vx::io::Error_Code)52]";
      break;
    case 53:
      result = "(vp::vx::io::Error_Code)53]";
      break;
    case 54:
      result = "(vp::vx::io::Error_Code)54]";
      break;
    case 55:
      result = "(vp::vx::io::Error_Code)55]";
      break;
    case 56:
      result = "(vp::vx::io::Error_Code)56]";
      break;
    case 57:
      result = "(vp::vx::io::Error_Code)57]";
      break;
    case 58:
      result = "(vp::vx::io::Error_Code)58]";
      break;
    case 59:
      result = "(vp::vx::io::Error_Code)59]";
      break;
    case 60:
      result = "(vp::vx::io::Error_Code)60]";
      break;
    case 61:
      result = "(vp::vx::io::Error_Code)61]";
      break;
    case 62:
      result = "(vp::vx::io::Error_Code)62]";
      break;
    case 63:
      result = "(vp::vx::io::Error_Code)63]";
      break;
    case 64:
      result = "(vp::vx::io::Error_Code)64]";
      break;
    case 65:
      result = "(vp::vx::io::Error_Code)65]";
      break;
    case 66:
      result = "(vp::vx::io::Error_Code)66]";
      break;
    case 67:
      result = "(vp::vx::io::Error_Code)67]";
      break;
    case 68:
      result = "(vp::vx::io::Error_Code)68]";
      break;
    case 69:
      result = "(vp::vx::io::Error_Code)69]";
      break;
    case 70:
      result = "(vp::vx::io::Error_Code)70]";
      break;
    case 71:
      result = "(vp::vx::io::Error_Code)71]";
      break;
    case 72:
      result = "(vp::vx::io::Error_Code)72]";
      break;
    case 73:
      result = "(vp::vx::io::Error_Code)73]";
      break;
    case 74:
      result = "(vp::vx::io::Error_Code)74]";
      break;
    case 75:
      result = "(vp::vx::io::Error_Code)75]";
      break;
    case 76:
      result = "(vp::vx::io::Error_Code)76]";
      break;
    case 77:
      result = "(vp::vx::io::Error_Code)77]";
      break;
    case 78:
      result = "(vp::vx::io::Error_Code)78]";
      break;
    case 79:
      result = "(vp::vx::io::Error_Code)79]";
      break;
    case 80:
      result = "(vp::vx::io::Error_Code)80]";
      break;
    case 81:
      result = "(vp::vx::io::Error_Code)81]";
      break;
    case 82:
      result = "(vp::vx::io::Error_Code)82]";
      break;
    case 83:
      result = "(vp::vx::io::Error_Code)83]";
      break;
    case 84:
      result = "(vp::vx::io::Error_Code)84]";
      break;
    case 85:
      result = "(vp::vx::io::Error_Code)85]";
      break;
    case 86:
      result = "(vp::vx::io::Error_Code)86]";
      break;
    case 87:
      result = "(vp::vx::io::Error_Code)87]";
      break;
    case 88:
      result = "(vp::vx::io::Error_Code)88]";
      break;
    case 89:
      result = "(vp::vx::io::Error_Code)89]";
      break;
    case 90:
      result = "(vp::vx::io::Error_Code)90]";
      break;
    case 91:
      result = "(vp::vx::io::Error_Code)91]";
      break;
    case 92:
      result = "(vp::vx::io::Error_Code)92]";
      break;
    case 93:
      result = "(vp::vx::io::Error_Code)93]";
      break;
    case 94:
      result = "(vp::vx::io::Error_Code)94]";
      break;
    case 95:
      result = "(vp::vx::io::Error_Code)95]";
      break;
    case 96:
      result = "(vp::vx::io::Error_Code)96]";
      break;
    case 97:
      result = "(vp::vx::io::Error_Code)97]";
      break;
    case 98:
      result = "(vp::vx::io::Error_Code)98]";
      break;
    case 99:
      result = "(vp::vx::io::Error_Code)99]";
      break;
    case 100:
      result = "(vp::vx::io::Error_Code)100]";
      break;
    case 101:
      result = "(vp::vx::io::Error_Code)101]";
      break;
    case 102:
      result = "(vp::vx::io::Error_Code)102]";
      break;
    case 103:
      result = "(vp::vx::io::Error_Code)103]";
      break;
    case 104:
      result = "(vp::vx::io::Error_Code)104]";
      break;
    case 105:
      result = "(vp::vx::io::Error_Code)105]";
      break;
    case 106:
      result = "(vp::vx::io::Error_Code)106]";
      break;
    case 107:
      result = "(vp::vx::io::Error_Code)107]";
      break;
    case 108:
      result = "(vp::vx::io::Error_Code)108]";
      break;
    case 109:
      result = "(vp::vx::io::Error_Code)109]";
      break;
    case 110:
      result = "(vp::vx::io::Error_Code)110]";
      break;
    case 111:
      result = "(vp::vx::io::Error_Code)111]";
      break;
    case 112:
      result = "(vp::vx::io::Error_Code)112]";
      break;
    case 113:
      result = "(vp::vx::io::Error_Code)113]";
      break;
    case 114:
      result = "(vp::vx::io::Error_Code)114]";
      break;
    case 115:
      result = "(vp::vx::io::Error_Code)115]";
      break;
    case 116:
      result = "(vp::vx::io::Error_Code)116]";
      break;
    case 117:
      result = "(vp::vx::io::Error_Code)117]";
      break;
    case 118:
      result = "(vp::vx::io::Error_Code)118]";
      break;
    case 119:
      result = "(vp::vx::io::Error_Code)119]";
      break;
    case 120:
      result = "(vp::vx::io::Error_Code)120]";
      break;
    case 121:
      result = "(vp::vx::io::Error_Code)121]";
      break;
    case 122:
      result = "(vp::vx::io::Error_Code)122]";
      break;
    case 123:
      result = "(vp::vx::io::Error_Code)123]";
      break;
    case 124:
      result = "(vp::vx::io::Error_Code)124]";
      break;
    case 125:
      result = "(vp::vx::io::Error_Code)125]";
      break;
    case 126:
      result = "(vp::vx::io::Error_Code)126]";
      break;
    case 127:
      result = "(vp::vx::io::Error_Code)127]";
      break;
    default:
      if (a1 == 128)
      {
        result = "(vp::vx::io::Error_Code)128]";
      }

      else
      {
        result = "?";
      }

      break;
  }

  return result;
}

void vp::vx::Voice_Processor::run_dsp(uint64_t a1@<X0>, uint64_t a2@<X1>, int *a3@<X8>)
{
  *a3 = 9;
  *(a3 + 4) = 0;
  v6 = *(a1 + 520);
  for (i = *(a1 + 528); v6 != i; v6 += 2)
  {
    v8 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 272))(v8, a2);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (!a2)
  {
    vp::vx::Voice_Processor::run_all_of_downlink_dsp(&v10, a1);
    if (v11)
    {
      *(a3 + 4) = v11;
    }

    else
    {
      *a3 = v10;
    }

    a2 = 0;
  }

  v10 = *a3;
  v11 = *(a3 + 4);
  vp::vx::Voice_Processor::components_end_process<vp::vx::Downlink_Node_ID,vp::Expected<void,vp::vx::Error_Code>>(*(a1 + 520), *(a1 + 528), a2, &v10);
}

{
  *a3 = 9;
  *(a3 + 4) = 0;
  v6 = *(a1 + 520);
  for (i = *(a1 + 528); v6 != i; v6 += 2)
  {
    v8 = *v6;
    v9 = v6[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v8 + 224))(v8, a2);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  if (!a2)
  {
    vp::vx::Voice_Processor::run_all_of_uplink_dsp(&v10, a1);
    if (v11)
    {
      *(a3 + 4) = v11;
    }

    else
    {
      *a3 = v10;
    }

    a2 = 0;
  }

  v10 = *a3;
  v11 = *(a3 + 4);
  vp::vx::Voice_Processor::components_end_process<vp::vx::Uplink_Node_ID,vp::Expected<void,vp::vx::Error_Code>>(*(a1 + 520), *(a1 + 528), a2, &v10);
}

void vp::vx::Voice_Processor::run_all_of_downlink_dsp(vp::vx::Voice_Processor *this, uint64_t a2)
{
  v956 = *MEMORY[0x277D85DE8];
  v940 = (a2 + 1128);
  v3 = atomic_load((a2 + 1128));
  if (v3 > 0x7FFFFFFE)
  {
LABEL_5:
    *this = 8;
    *(this + 4) = 0;
    return;
  }

  v5 = v3;
  while (1)
  {
    atomic_compare_exchange_strong((a2 + 1128), &v5, v3 + 1);
    if (v5 == v3)
    {
      break;
    }

    v3 = v5;
    if (v5 >= 0x7FFFFFFF)
    {
      goto LABEL_5;
    }
  }

  v941 = 1;
  v6 = *(a2 + 2584);
  if (!v6)
  {
    log = vp::get_log(this);
    if (os_log_type_enabled(log, OS_LOG_TYPE_FAULT))
    {
      log_context_info = vp::get_log_context_info(v942, a2, "vp::vx::Voice_Processor]", 23);
      v48 = v942[23];
      v49 = v942[23];
      v50 = *&v942[8];
      v51 = vp::get_log(log_context_info);
      if (os_log_type_enabled(v51, OS_LOG_TYPE_FAULT))
      {
        if (v49 >= 0)
        {
          v52 = v48;
        }

        else
        {
          v52 = v50;
        }

        v53 = *v942;
        if (v49 >= 0)
        {
          v53 = v942;
        }

        if (v52)
        {
          v54 = " ";
        }

        else
        {
          v54 = "";
        }

        *buf = 136315394;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = v54;
        _os_log_impl(&dword_2724B4000, v51, OS_LOG_TYPE_FAULT, "%s%scannot run downlink DSP with uninitialized VoiceProcessor", buf, 0x16u);
        LOBYTE(v49) = v942[23];
      }

      if ((v49 & 0x80) != 0)
      {
        operator delete(*v942);
      }
    }

    goto LABEL_8;
  }

  v7 = *(a2 + 780);
  if (v7 >= 2)
  {
    if (v7 != 2 || *(a2 + 264) == 3)
    {
LABEL_11:
      v9 = *(a2 + 2696);
      v10 = v6[8];
      if (0x86BCA1AF286BCA1BLL * ((v6[9] - v10) >> 4) > v9)
      {
        v11 = (v10 + 304 * v9);
        v12 = *v11;
        v13 = v11[1];
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *buf = (*(*v12 + 32))(v12);
        v955 = 1;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        goto LABEL_16;
      }

      *v942 = 0x10002800000006;
      *&v942[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
      v943 = 0;
      *&v944 = 0;
      *&v942[16] = 0;
      vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v944 + 1);
      _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(buf, v942);
      if (SBYTE7(v944) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](*(&v944 + 1), *&v942[16], v944 & 0x7FFFFFFFFFFFFFFFLL);
      }

      if (v955)
      {
LABEL_16:
        v14 = *buf;
        vp::vx::io::Graph::get_buffered_frame_count(&v932, v6[8], v6[9], *(a2 + 2696), 0);
        if (v939)
        {
          if (v14 >= v932)
          {
            v15 = v14 - v932;
          }

          else
          {
            v15 = 0;
          }

          vp::vx::io::Graph::get_required_input_frame_count(&v926, v6[24], v6[25], *(a2 + 2752), v15);
          if (v931)
          {
            v16 = v926;
            vp::vx::io::Graph::get_buffered_frame_count(&__p, v6[8], v6[9], *(a2 + 2692), 1);
            if (v925)
            {
              if (v16 >= __p)
              {
                v17 = v16 - __p;
              }

              else
              {
                v17 = 0;
              }

              vp::vx::io::Graph::get_required_input_frame_count(&__dst, v6[8], v6[9], *(a2 + 2692), v17);
              if (v919)
              {
                v18 = __dst;
                vp::vx::io::Graph::get_buffered_frame_count(&v908, v6[8], v6[9], *(a2 + 2692), 0);
                if (v913)
                {
                  if (v18 >= v908)
                  {
                    v19 = v18 - v908;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  vp::vx::io::Graph::get_required_input_frame_count(&v902, v6[24], v6[25], *(a2 + 2748), v19);
                  if (v907)
                  {
                    v20 = v902;
                    vp::vx::io::Graph::get_buffered_frame_count(&v896, v6[8], v6[9], *(a2 + 2688), 1);
                    if (v901)
                    {
                      if (v20 >= v896)
                      {
                        v21 = v20 - v896;
                      }

                      else
                      {
                        v21 = 0;
                      }

                      vp::vx::io::Graph::get_required_input_frame_count(&v890, v6[8], v6[9], *(a2 + 2688), v21);
                      if (v895)
                      {
                        v22 = v890;
                        vp::vx::io::Graph::get_buffered_frame_count(&v884, v6[8], v6[9], *(a2 + 2688), 0);
                        if (v889)
                        {
                          if (v22 >= v884)
                          {
                            v23 = v22 - v884;
                          }

                          else
                          {
                            v23 = 0;
                          }

                          vp::vx::io::Graph::get_required_input_frame_count(&v878, v6[24], v6[25], *(a2 + 2744), v23);
                          if (v883)
                          {
                            v24 = v878;
                            vp::vx::io::Graph::get_buffered_frame_count(&v872, v6[8], v6[9], *(a2 + 2684), 1);
                            if (v877)
                            {
                              if (v24 >= v872)
                              {
                                v25 = v24 - v872;
                              }

                              else
                              {
                                v25 = 0;
                              }

                              vp::vx::io::Graph::get_required_input_frame_count(&v866, v6[8], v6[9], *(a2 + 2684), v25);
                              if (v871)
                              {
                                v26 = v866;
                                vp::vx::io::Graph::get_buffered_frame_count(&v860, v6[8], v6[9], *(a2 + 2684), 0);
                                v27 = v865;
                                if (v865)
                                {
                                  if (v26 >= v860)
                                  {
                                    v28 = v26 - v860;
                                  }

                                  else
                                  {
                                    v28 = 0;
                                  }

                                  vp::vx::io::Graph::get_required_input_frame_count(&v854, v6[24], v6[25], *(a2 + 2740), v28);
                                  v29 = v859;
                                  if (v859)
                                  {
                                    v30 = v854;
                                    vp::vx::io::Graph::get_buffered_frame_count(&v848, v6[8], v6[9], *(a2 + 2680), 1);
                                    v31 = v853;
                                    if (v853)
                                    {
                                      v32 = v30 - v848;
                                      if (v30 < v848)
                                      {
                                        v32 = 0;
                                      }

                                      if (v30 <= v848)
                                      {
                                        v33 = 1;
                                      }

                                      else
                                      {
                                        v33 = v32;
                                      }

                                      vp::vx::io::Graph::process(&v842, v6, *(a2 + 2680), v33);
                                      v34 = v847;
                                      if (v847)
                                      {
                                        vp::vx::io::Graph::process(&v836, v6, *(a2 + 2684), v26);
                                        v35 = v841;
                                        if (v841)
                                        {
                                          vp::vx::io::Graph::process(&v830, v6, *(a2 + 2688), v22);
                                          v36 = v835;
                                          if (v835)
                                          {
                                            vp::vx::io::Graph::process(&v824, v6, *(a2 + 2692), v18);
                                            v37 = v829;
                                            if (v829)
                                            {
                                              vp::vx::io::Graph::process(&v815, v6, *(a2 + 2696), v14);
                                              v8 = v820;
                                              if (v820)
                                              {
                                                goto LABEL_62;
                                              }

                                              v495 = vp::vx::io::Error::Error(&v810, &v815);
                                              if (v813 >= 0)
                                              {
                                                v496 = HIBYTE(v813);
                                              }

                                              else
                                              {
                                                v496 = v812[1];
                                              }

                                              v497 = vp::get_log(v495);
                                              v498 = os_log_type_enabled(v497, OS_LOG_TYPE_ERROR);
                                              if (v496)
                                              {
                                                if (v498)
                                                {
                                                  v499 = vp::get_log_context_info(&v821, a2, "vp::vx::Voice_Processor]", 23);
                                                  if ((v823 & 0x80u) == 0)
                                                  {
                                                    v500 = v823;
                                                  }

                                                  else
                                                  {
                                                    v500 = v822;
                                                  }

                                                  v501 = vp::get_log(v499);
                                                  if (os_log_type_enabled(v501, OS_LOG_TYPE_ERROR))
                                                  {
                                                    v502 = v823;
                                                    v503 = v821;
                                                    v504 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v810);
                                                    std::string::basic_string<std::string_view,0>(v808, v504, v505);
                                                    if (v502 >= 0)
                                                    {
                                                      v507 = &v821;
                                                    }

                                                    else
                                                    {
                                                      v507 = v503;
                                                    }

                                                    if (v500)
                                                    {
                                                      v508 = " ";
                                                    }

                                                    else
                                                    {
                                                      v508 = "";
                                                    }

                                                    if (v809 >= 0)
                                                    {
                                                      v509 = v808;
                                                    }

                                                    else
                                                    {
                                                      v509 = v808[0];
                                                    }

                                                    v510 = WORD2(v810);
                                                    v511 = HIWORD(v810);
                                                    log_source_file_path = vp::get_log_source_file_path(v811, v506);
                                                    if (v813 >= 0)
                                                    {
                                                      v513 = v812;
                                                    }

                                                    else
                                                    {
                                                      v513 = v812[0];
                                                    }

                                                    *v942 = 136316930;
                                                    *&v942[4] = v507;
                                                    *&v942[12] = 2080;
                                                    *&v942[14] = v508;
                                                    *&v942[22] = 2080;
                                                    v943 = "process downlink hardware DSP";
                                                    LOWORD(v944) = 2080;
                                                    *(&v944 + 2) = v509;
                                                    WORD5(v944) = 1024;
                                                    HIDWORD(v944) = v510;
                                                    v945 = 1024;
                                                    v946 = v511;
                                                    v947 = 2080;
                                                    v948 = log_source_file_path;
                                                    v949 = 2080;
                                                    v950 = v513;
                                                    v514 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                                    v515 = v501;
                                                    v516 = 74;
                                                    goto LABEL_1074;
                                                  }

                                                  goto LABEL_1076;
                                                }
                                              }

                                              else if (v498)
                                              {
                                                v794 = vp::get_log_context_info(&v821, a2, "vp::vx::Voice_Processor]", 23);
                                                if ((v823 & 0x80u) == 0)
                                                {
                                                  v795 = v823;
                                                }

                                                else
                                                {
                                                  v795 = v822;
                                                }

                                                v796 = vp::get_log(v794);
                                                if (os_log_type_enabled(v796, OS_LOG_TYPE_ERROR))
                                                {
                                                  v797 = v823;
                                                  v798 = v821;
                                                  v799 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v810);
                                                  std::string::basic_string<std::string_view,0>(v808, v799, v800);
                                                  if (v797 >= 0)
                                                  {
                                                    v802 = &v821;
                                                  }

                                                  else
                                                  {
                                                    v802 = v798;
                                                  }

                                                  if (v795)
                                                  {
                                                    v803 = " ";
                                                  }

                                                  else
                                                  {
                                                    v803 = "";
                                                  }

                                                  if (v809 >= 0)
                                                  {
                                                    v804 = v808;
                                                  }

                                                  else
                                                  {
                                                    v804 = v808[0];
                                                  }

                                                  v805 = WORD2(v810);
                                                  v806 = HIWORD(v810);
                                                  v807 = vp::get_log_source_file_path(v811, v801);
                                                  *v942 = 136316674;
                                                  *&v942[4] = v802;
                                                  *&v942[12] = 2080;
                                                  *&v942[14] = v803;
                                                  *&v942[22] = 2080;
                                                  v943 = "process downlink hardware DSP";
                                                  LOWORD(v944) = 2080;
                                                  *(&v944 + 2) = v804;
                                                  WORD5(v944) = 1024;
                                                  HIDWORD(v944) = v805;
                                                  v945 = 1024;
                                                  v946 = v806;
                                                  v947 = 2080;
                                                  v948 = v807;
                                                  v514 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                                  v515 = v796;
                                                  v516 = 64;
LABEL_1074:
                                                  _os_log_impl(&dword_2724B4000, v515, OS_LOG_TYPE_ERROR, v514, v942, v516);
                                                  if (v809 < 0)
                                                  {
                                                    operator delete(v808[0]);
                                                  }
                                                }

LABEL_1076:
                                                if (v823 < 0)
                                                {
                                                  operator delete(v821);
                                                }
                                              }

                                              *this = 7;
                                              *(this + 4) = 0;
                                              if (SHIBYTE(v813) < 0)
                                              {
                                                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v814, v812[0], v813 & 0x7FFFFFFFFFFFFFFFLL);
                                              }

                                              if (SHIBYTE(v818) < 0)
                                              {
                                                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v819, v817[0], v818 & 0x7FFFFFFFFFFFFFFFLL);
                                              }

                                              goto LABEL_62;
                                            }

                                            v473 = vp::vx::io::Error::Error(&v815, &v824);
                                            if (v818 >= 0)
                                            {
                                              v474 = HIBYTE(v818);
                                            }

                                            else
                                            {
                                              v474 = v817[1];
                                            }

                                            v475 = vp::get_log(v473);
                                            v476 = os_log_type_enabled(v475, OS_LOG_TYPE_ERROR);
                                            if (v474)
                                            {
                                              if (!v476)
                                              {
                                                goto LABEL_1053;
                                              }

                                              v477 = vp::get_log_context_info(&v810, a2, "vp::vx::Voice_Processor]", 23);
                                              if (v812[0] >= 0)
                                              {
                                                v478 = HIBYTE(v812[0]);
                                              }

                                              else
                                              {
                                                v478 = v811;
                                              }

                                              v479 = vp::get_log(v477);
                                              if (!os_log_type_enabled(v479, OS_LOG_TYPE_ERROR))
                                              {
                                                goto LABEL_1051;
                                              }

                                              v480 = SHIBYTE(v812[0]);
                                              v481 = v810;
                                              v482 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v815);
                                              std::string::basic_string<std::string_view,0>(&v821, v482, v483);
                                              if (v480 >= 0)
                                              {
                                                v485 = &v810;
                                              }

                                              else
                                              {
                                                v485 = v481;
                                              }

                                              if (v478)
                                              {
                                                v486 = " ";
                                              }

                                              else
                                              {
                                                v486 = "";
                                              }

                                              if ((v823 & 0x80u) == 0)
                                              {
                                                v487 = &v821;
                                              }

                                              else
                                              {
                                                v487 = v821;
                                              }

                                              v488 = WORD2(v815);
                                              v489 = HIWORD(v815);
                                              v490 = vp::get_log_source_file_path(v816, v484);
                                              if (v818 >= 0)
                                              {
                                                v491 = v817;
                                              }

                                              else
                                              {
                                                v491 = v817[0];
                                              }

                                              *v942 = 136316930;
                                              *&v942[4] = v485;
                                              *&v942[12] = 2080;
                                              *&v942[14] = v486;
                                              *&v942[22] = 2080;
                                              v943 = "process downlink dynamics DSP";
                                              LOWORD(v944) = 2080;
                                              *(&v944 + 2) = v487;
                                              WORD5(v944) = 1024;
                                              HIDWORD(v944) = v488;
                                              v945 = 1024;
                                              v946 = v489;
                                              v947 = 2080;
                                              v948 = v490;
                                              v949 = 2080;
                                              v950 = v491;
                                              v492 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                              v493 = v479;
                                              v494 = 74;
                                            }

                                            else
                                            {
                                              if (!v476)
                                              {
                                                goto LABEL_1053;
                                              }

                                              v780 = vp::get_log_context_info(&v810, a2, "vp::vx::Voice_Processor]", 23);
                                              if (v812[0] >= 0)
                                              {
                                                v781 = HIBYTE(v812[0]);
                                              }

                                              else
                                              {
                                                v781 = v811;
                                              }

                                              v782 = vp::get_log(v780);
                                              if (!os_log_type_enabled(v782, OS_LOG_TYPE_ERROR))
                                              {
LABEL_1051:
                                                if (SHIBYTE(v812[0]) < 0)
                                                {
                                                  operator delete(v810);
                                                }

LABEL_1053:
                                                *this = 7;
                                                *(this + 4) = 0;
                                                if (SHIBYTE(v818) < 0)
                                                {
                                                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v819, v817[0], v818 & 0x7FFFFFFFFFFFFFFFLL);
                                                }

                                                v8 = 0;
                                                if ((v37 & 1) == 0 && SHIBYTE(v827) < 0)
                                                {
                                                  (*(*v828 + 24))(v828, v826[0], v827 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                                  goto LABEL_1058;
                                                }

LABEL_62:
                                                if ((v871 & 1) == 0 && SHIBYTE(v869) < 0)
                                                {
                                                  (*(*v870 + 24))(v870, v868[0], v869 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                                }

                                                if (v877)
                                                {
LABEL_68:
                                                  if (v883)
                                                  {
                                                    goto LABEL_71;
                                                  }

                                                  goto LABEL_69;
                                                }

LABEL_66:
                                                if (SHIBYTE(v875) < 0)
                                                {
                                                  (*(*v876 + 24))(v876, v874[0], v875 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                                }

                                                goto LABEL_68;
                                              }

                                              v783 = SHIBYTE(v812[0]);
                                              v784 = v810;
                                              v785 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v815);
                                              std::string::basic_string<std::string_view,0>(&v821, v785, v786);
                                              if (v783 >= 0)
                                              {
                                                v788 = &v810;
                                              }

                                              else
                                              {
                                                v788 = v784;
                                              }

                                              if (v781)
                                              {
                                                v789 = " ";
                                              }

                                              else
                                              {
                                                v789 = "";
                                              }

                                              if ((v823 & 0x80u) == 0)
                                              {
                                                v790 = &v821;
                                              }

                                              else
                                              {
                                                v790 = v821;
                                              }

                                              v791 = WORD2(v815);
                                              v792 = HIWORD(v815);
                                              v793 = vp::get_log_source_file_path(v816, v787);
                                              *v942 = 136316674;
                                              *&v942[4] = v788;
                                              *&v942[12] = 2080;
                                              *&v942[14] = v789;
                                              *&v942[22] = 2080;
                                              v943 = "process downlink dynamics DSP";
                                              LOWORD(v944) = 2080;
                                              *(&v944 + 2) = v790;
                                              WORD5(v944) = 1024;
                                              HIDWORD(v944) = v791;
                                              v945 = 1024;
                                              v946 = v792;
                                              v947 = 2080;
                                              v948 = v793;
                                              v492 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                              v493 = v782;
                                              v494 = 64;
                                            }

                                            _os_log_impl(&dword_2724B4000, v493, OS_LOG_TYPE_ERROR, v492, v942, v494);
                                            if (v823 < 0)
                                            {
                                              operator delete(v821);
                                            }

                                            goto LABEL_1051;
                                          }

                                          v451 = vp::vx::io::Error::Error(&v824, &v830);
                                          if (v827 >= 0)
                                          {
                                            v452 = HIBYTE(v827);
                                          }

                                          else
                                          {
                                            v452 = v826[1];
                                          }

                                          v453 = vp::get_log(v451);
                                          v454 = os_log_type_enabled(v453, OS_LOG_TYPE_ERROR);
                                          if (v452)
                                          {
                                            if (v454)
                                            {
                                              v455 = vp::get_log_context_info(&v815, a2, "vp::vx::Voice_Processor]", 23);
                                              if (v817[0] >= 0)
                                              {
                                                v456 = HIBYTE(v817[0]);
                                              }

                                              else
                                              {
                                                v456 = v816;
                                              }

                                              v457 = vp::get_log(v455);
                                              if (os_log_type_enabled(v457, OS_LOG_TYPE_ERROR))
                                              {
                                                v458 = SHIBYTE(v817[0]);
                                                v459 = v815;
                                                v460 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v824);
                                                std::string::basic_string<std::string_view,0>(&v810, v460, v461);
                                                if (v458 >= 0)
                                                {
                                                  v463 = &v815;
                                                }

                                                else
                                                {
                                                  v463 = v459;
                                                }

                                                if (v456)
                                                {
                                                  v464 = " ";
                                                }

                                                else
                                                {
                                                  v464 = "";
                                                }

                                                if (v812[0] >= 0)
                                                {
                                                  v465 = &v810;
                                                }

                                                else
                                                {
                                                  v465 = v810;
                                                }

                                                v466 = WORD2(v824);
                                                v467 = HIWORD(v824);
                                                v468 = vp::get_log_source_file_path(v825, v462);
                                                if (v827 >= 0)
                                                {
                                                  v469 = v826;
                                                }

                                                else
                                                {
                                                  v469 = v826[0];
                                                }

                                                *v942 = 136316930;
                                                *&v942[4] = v463;
                                                *&v942[12] = 2080;
                                                *&v942[14] = v464;
                                                *&v942[22] = 2080;
                                                v943 = "process downlink voice DSP";
                                                LOWORD(v944) = 2080;
                                                *(&v944 + 2) = v465;
                                                WORD5(v944) = 1024;
                                                HIDWORD(v944) = v466;
                                                v945 = 1024;
                                                v946 = v467;
                                                v947 = 2080;
                                                v948 = v468;
                                                v949 = 2080;
                                                v950 = v469;
                                                v470 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                                v471 = v457;
                                                v472 = 74;
                                                goto LABEL_1025;
                                              }

                                              goto LABEL_1027;
                                            }
                                          }

                                          else if (v454)
                                          {
                                            v766 = vp::get_log_context_info(&v815, a2, "vp::vx::Voice_Processor]", 23);
                                            if (v817[0] >= 0)
                                            {
                                              v767 = HIBYTE(v817[0]);
                                            }

                                            else
                                            {
                                              v767 = v816;
                                            }

                                            v768 = vp::get_log(v766);
                                            if (os_log_type_enabled(v768, OS_LOG_TYPE_ERROR))
                                            {
                                              v769 = SHIBYTE(v817[0]);
                                              v770 = v815;
                                              v771 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v824);
                                              std::string::basic_string<std::string_view,0>(&v810, v771, v772);
                                              if (v769 >= 0)
                                              {
                                                v774 = &v815;
                                              }

                                              else
                                              {
                                                v774 = v770;
                                              }

                                              if (v767)
                                              {
                                                v775 = " ";
                                              }

                                              else
                                              {
                                                v775 = "";
                                              }

                                              if (v812[0] >= 0)
                                              {
                                                v776 = &v810;
                                              }

                                              else
                                              {
                                                v776 = v810;
                                              }

                                              v777 = WORD2(v824);
                                              v778 = HIWORD(v824);
                                              v779 = vp::get_log_source_file_path(v825, v773);
                                              *v942 = 136316674;
                                              *&v942[4] = v774;
                                              *&v942[12] = 2080;
                                              *&v942[14] = v775;
                                              *&v942[22] = 2080;
                                              v943 = "process downlink voice DSP";
                                              LOWORD(v944) = 2080;
                                              *(&v944 + 2) = v776;
                                              WORD5(v944) = 1024;
                                              HIDWORD(v944) = v777;
                                              v945 = 1024;
                                              v946 = v778;
                                              v947 = 2080;
                                              v948 = v779;
                                              v470 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                              v471 = v768;
                                              v472 = 64;
LABEL_1025:
                                              _os_log_impl(&dword_2724B4000, v471, OS_LOG_TYPE_ERROR, v470, v942, v472);
                                              if (SHIBYTE(v812[0]) < 0)
                                              {
                                                operator delete(v810);
                                              }
                                            }

LABEL_1027:
                                            if (SHIBYTE(v817[0]) < 0)
                                            {
                                              operator delete(v815);
                                            }
                                          }

                                          *this = 7;
                                          *(this + 4) = 0;
                                          if (SHIBYTE(v827) < 0)
                                          {
                                            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v828, v826[0], v827 & 0x7FFFFFFFFFFFFFFFLL);
                                          }

                                          v8 = 0;
                                          if ((v36 & 1) != 0 || (SHIBYTE(v833) & 0x80000000) == 0)
                                          {
                                            goto LABEL_62;
                                          }

                                          (*(*v834 + 24))(v834, v832[0], v833 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                          goto LABEL_1058;
                                        }

                                        v429 = vp::vx::io::Error::Error(&v830, &v836);
                                        if (v833 >= 0)
                                        {
                                          v430 = HIBYTE(v833);
                                        }

                                        else
                                        {
                                          v430 = v832[1];
                                        }

                                        v431 = vp::get_log(v429);
                                        v432 = os_log_type_enabled(v431, OS_LOG_TYPE_ERROR);
                                        if (v430)
                                        {
                                          if (v432)
                                          {
                                            v433 = vp::get_log_context_info(&v824, a2, "vp::vx::Voice_Processor]", 23);
                                            if (v826[0] >= 0)
                                            {
                                              v434 = HIBYTE(v826[0]);
                                            }

                                            else
                                            {
                                              v434 = v825;
                                            }

                                            v435 = vp::get_log(v433);
                                            if (os_log_type_enabled(v435, OS_LOG_TYPE_ERROR))
                                            {
                                              v436 = SHIBYTE(v826[0]);
                                              v437 = v824;
                                              v438 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v830);
                                              std::string::basic_string<std::string_view,0>(&v815, v438, v439);
                                              if (v436 >= 0)
                                              {
                                                v441 = &v824;
                                              }

                                              else
                                              {
                                                v441 = v437;
                                              }

                                              if (v434)
                                              {
                                                v442 = " ";
                                              }

                                              else
                                              {
                                                v442 = "";
                                              }

                                              if (v817[0] >= 0)
                                              {
                                                v443 = &v815;
                                              }

                                              else
                                              {
                                                v443 = v815;
                                              }

                                              v444 = WORD2(v830);
                                              v445 = HIWORD(v830);
                                              v446 = vp::get_log_source_file_path(v831, v440);
                                              if (v833 >= 0)
                                              {
                                                v447 = v832;
                                              }

                                              else
                                              {
                                                v447 = v832[0];
                                              }

                                              *v942 = 136316930;
                                              *&v942[4] = v441;
                                              *&v942[12] = 2080;
                                              *&v942[14] = v442;
                                              *&v942[22] = 2080;
                                              v943 = "process downlink voice mix DSP";
                                              LOWORD(v944) = 2080;
                                              *(&v944 + 2) = v443;
                                              WORD5(v944) = 1024;
                                              HIDWORD(v944) = v444;
                                              v945 = 1024;
                                              v946 = v445;
                                              v947 = 2080;
                                              v948 = v446;
                                              v949 = 2080;
                                              v950 = v447;
                                              v448 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                              v449 = v435;
                                              v450 = 74;
                                              goto LABEL_1001;
                                            }

                                            goto LABEL_1003;
                                          }
                                        }

                                        else if (v432)
                                        {
                                          v752 = vp::get_log_context_info(&v824, a2, "vp::vx::Voice_Processor]", 23);
                                          if (v826[0] >= 0)
                                          {
                                            v753 = HIBYTE(v826[0]);
                                          }

                                          else
                                          {
                                            v753 = v825;
                                          }

                                          v754 = vp::get_log(v752);
                                          if (os_log_type_enabled(v754, OS_LOG_TYPE_ERROR))
                                          {
                                            v755 = SHIBYTE(v826[0]);
                                            v756 = v824;
                                            v757 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v830);
                                            std::string::basic_string<std::string_view,0>(&v815, v757, v758);
                                            if (v755 >= 0)
                                            {
                                              v760 = &v824;
                                            }

                                            else
                                            {
                                              v760 = v756;
                                            }

                                            if (v753)
                                            {
                                              v761 = " ";
                                            }

                                            else
                                            {
                                              v761 = "";
                                            }

                                            if (v817[0] >= 0)
                                            {
                                              v762 = &v815;
                                            }

                                            else
                                            {
                                              v762 = v815;
                                            }

                                            v763 = WORD2(v830);
                                            v764 = HIWORD(v830);
                                            v765 = vp::get_log_source_file_path(v831, v759);
                                            *v942 = 136316674;
                                            *&v942[4] = v760;
                                            *&v942[12] = 2080;
                                            *&v942[14] = v761;
                                            *&v942[22] = 2080;
                                            v943 = "process downlink voice mix DSP";
                                            LOWORD(v944) = 2080;
                                            *(&v944 + 2) = v762;
                                            WORD5(v944) = 1024;
                                            HIDWORD(v944) = v763;
                                            v945 = 1024;
                                            v946 = v764;
                                            v947 = 2080;
                                            v948 = v765;
                                            v448 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                            v449 = v754;
                                            v450 = 64;
LABEL_1001:
                                            _os_log_impl(&dword_2724B4000, v449, OS_LOG_TYPE_ERROR, v448, v942, v450);
                                            if (SHIBYTE(v817[0]) < 0)
                                            {
                                              operator delete(v815);
                                            }
                                          }

LABEL_1003:
                                          if (SHIBYTE(v826[0]) < 0)
                                          {
                                            operator delete(v824);
                                          }
                                        }

                                        *this = 7;
                                        *(this + 4) = 0;
                                        if (SHIBYTE(v833) < 0)
                                        {
                                          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v834, v832[0], v833 & 0x7FFFFFFFFFFFFFFFLL);
                                        }

                                        v8 = 0;
                                        if ((v35 & 1) != 0 || (SHIBYTE(v839) & 0x80000000) == 0)
                                        {
                                          goto LABEL_62;
                                        }

                                        (*(*v840 + 24))(v840, v838[0], v839 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                        goto LABEL_1058;
                                      }

                                      v407 = vp::vx::io::Error::Error(&v836, &v842);
                                      if (v839 >= 0)
                                      {
                                        v408 = HIBYTE(v839);
                                      }

                                      else
                                      {
                                        v408 = v838[1];
                                      }

                                      v409 = vp::get_log(v407);
                                      v410 = os_log_type_enabled(v409, OS_LOG_TYPE_ERROR);
                                      if (v408)
                                      {
                                        if (v410)
                                        {
                                          v411 = vp::get_log_context_info(&v830, a2, "vp::vx::Voice_Processor]", 23);
                                          if (v832[0] >= 0)
                                          {
                                            v412 = HIBYTE(v832[0]);
                                          }

                                          else
                                          {
                                            v412 = v831;
                                          }

                                          v413 = vp::get_log(v411);
                                          if (os_log_type_enabled(v413, OS_LOG_TYPE_ERROR))
                                          {
                                            v414 = SHIBYTE(v832[0]);
                                            v415 = v830;
                                            v416 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v836);
                                            std::string::basic_string<std::string_view,0>(&v824, v416, v417);
                                            if (v414 >= 0)
                                            {
                                              v419 = &v830;
                                            }

                                            else
                                            {
                                              v419 = v415;
                                            }

                                            if (v412)
                                            {
                                              v420 = " ";
                                            }

                                            else
                                            {
                                              v420 = "";
                                            }

                                            if (v826[0] >= 0)
                                            {
                                              v421 = &v824;
                                            }

                                            else
                                            {
                                              v421 = v824;
                                            }

                                            v422 = WORD2(v836);
                                            v423 = HIWORD(v836);
                                            v424 = vp::get_log_source_file_path(v837, v418);
                                            if (v839 >= 0)
                                            {
                                              v425 = v838;
                                            }

                                            else
                                            {
                                              v425 = v838[0];
                                            }

                                            *v942 = 136316930;
                                            *&v942[4] = v419;
                                            *&v942[12] = 2080;
                                            *&v942[14] = v420;
                                            *&v942[22] = 2080;
                                            v943 = "process downlink voice proc";
                                            LOWORD(v944) = 2080;
                                            *(&v944 + 2) = v421;
                                            WORD5(v944) = 1024;
                                            HIDWORD(v944) = v422;
                                            v945 = 1024;
                                            v946 = v423;
                                            v947 = 2080;
                                            v948 = v424;
                                            v949 = 2080;
                                            v950 = v425;
                                            v426 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                            v427 = v413;
                                            v428 = 74;
                                            goto LABEL_977;
                                          }

                                          goto LABEL_979;
                                        }
                                      }

                                      else if (v410)
                                      {
                                        v738 = vp::get_log_context_info(&v830, a2, "vp::vx::Voice_Processor]", 23);
                                        if (v832[0] >= 0)
                                        {
                                          v739 = HIBYTE(v832[0]);
                                        }

                                        else
                                        {
                                          v739 = v831;
                                        }

                                        v740 = vp::get_log(v738);
                                        if (os_log_type_enabled(v740, OS_LOG_TYPE_ERROR))
                                        {
                                          v741 = SHIBYTE(v832[0]);
                                          v742 = v830;
                                          v743 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v836);
                                          std::string::basic_string<std::string_view,0>(&v824, v743, v744);
                                          if (v741 >= 0)
                                          {
                                            v746 = &v830;
                                          }

                                          else
                                          {
                                            v746 = v742;
                                          }

                                          if (v739)
                                          {
                                            v747 = " ";
                                          }

                                          else
                                          {
                                            v747 = "";
                                          }

                                          if (v826[0] >= 0)
                                          {
                                            v748 = &v824;
                                          }

                                          else
                                          {
                                            v748 = v824;
                                          }

                                          v749 = WORD2(v836);
                                          v750 = HIWORD(v836);
                                          v751 = vp::get_log_source_file_path(v837, v745);
                                          *v942 = 136316674;
                                          *&v942[4] = v746;
                                          *&v942[12] = 2080;
                                          *&v942[14] = v747;
                                          *&v942[22] = 2080;
                                          v943 = "process downlink voice proc";
                                          LOWORD(v944) = 2080;
                                          *(&v944 + 2) = v748;
                                          WORD5(v944) = 1024;
                                          HIDWORD(v944) = v749;
                                          v945 = 1024;
                                          v946 = v750;
                                          v947 = 2080;
                                          v948 = v751;
                                          v426 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                          v427 = v740;
                                          v428 = 64;
LABEL_977:
                                          _os_log_impl(&dword_2724B4000, v427, OS_LOG_TYPE_ERROR, v426, v942, v428);
                                          if (SHIBYTE(v826[0]) < 0)
                                          {
                                            operator delete(v824);
                                          }
                                        }

LABEL_979:
                                        if (SHIBYTE(v832[0]) < 0)
                                        {
                                          operator delete(v830);
                                        }
                                      }

                                      *this = 7;
                                      *(this + 4) = 0;
                                      if (SHIBYTE(v839) < 0)
                                      {
                                        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v840, v838[0], v839 & 0x7FFFFFFFFFFFFFFFLL);
                                      }

                                      v8 = 0;
                                      if ((v34 & 1) != 0 || (SHIBYTE(v845) & 0x80000000) == 0)
                                      {
                                        goto LABEL_62;
                                      }

                                      (*(*v846 + 24))(v846, v844[0], v845 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                      goto LABEL_1058;
                                    }

                                    v385 = vp::vx::io::Error::Error(&v842, &v848);
                                    if (v845 >= 0)
                                    {
                                      v386 = HIBYTE(v845);
                                    }

                                    else
                                    {
                                      v386 = v844[1];
                                    }

                                    v387 = vp::get_log(v385);
                                    v388 = os_log_type_enabled(v387, OS_LOG_TYPE_ERROR);
                                    if (v386)
                                    {
                                      if (v388)
                                      {
                                        v389 = vp::get_log_context_info(&v836, a2, "vp::vx::Voice_Processor]", 23);
                                        if (v838[0] >= 0)
                                        {
                                          v390 = HIBYTE(v838[0]);
                                        }

                                        else
                                        {
                                          v390 = v837;
                                        }

                                        v391 = vp::get_log(v389);
                                        if (os_log_type_enabled(v391, OS_LOG_TYPE_ERROR))
                                        {
                                          v392 = SHIBYTE(v838[0]);
                                          v393 = v836;
                                          v394 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v842);
                                          std::string::basic_string<std::string_view,0>(&v830, v394, v395);
                                          if (v392 >= 0)
                                          {
                                            v397 = &v836;
                                          }

                                          else
                                          {
                                            v397 = v393;
                                          }

                                          if (v390)
                                          {
                                            v398 = " ";
                                          }

                                          else
                                          {
                                            v398 = "";
                                          }

                                          if (v832[0] >= 0)
                                          {
                                            v399 = &v830;
                                          }

                                          else
                                          {
                                            v399 = v830;
                                          }

                                          v400 = WORD2(v842);
                                          v401 = HIWORD(v842);
                                          v402 = vp::get_log_source_file_path(v843, v396);
                                          if (v845 >= 0)
                                          {
                                            v403 = v844;
                                          }

                                          else
                                          {
                                            v403 = v844[0];
                                          }

                                          *v942 = 136316930;
                                          *&v942[4] = v397;
                                          *&v942[12] = 2080;
                                          *&v942[14] = v398;
                                          *&v942[22] = 2080;
                                          v943 = "get buffered output frame count for downlink voice proc";
                                          LOWORD(v944) = 2080;
                                          *(&v944 + 2) = v399;
                                          WORD5(v944) = 1024;
                                          HIDWORD(v944) = v400;
                                          v945 = 1024;
                                          v946 = v401;
                                          v947 = 2080;
                                          v948 = v402;
                                          v949 = 2080;
                                          v950 = v403;
                                          v404 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                          v405 = v391;
                                          v406 = 74;
                                          goto LABEL_953;
                                        }

                                        goto LABEL_955;
                                      }
                                    }

                                    else if (v388)
                                    {
                                      v724 = vp::get_log_context_info(&v836, a2, "vp::vx::Voice_Processor]", 23);
                                      if (v838[0] >= 0)
                                      {
                                        v725 = HIBYTE(v838[0]);
                                      }

                                      else
                                      {
                                        v725 = v837;
                                      }

                                      v726 = vp::get_log(v724);
                                      if (os_log_type_enabled(v726, OS_LOG_TYPE_ERROR))
                                      {
                                        v727 = SHIBYTE(v838[0]);
                                        v728 = v836;
                                        v729 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v842);
                                        std::string::basic_string<std::string_view,0>(&v830, v729, v730);
                                        if (v727 >= 0)
                                        {
                                          v732 = &v836;
                                        }

                                        else
                                        {
                                          v732 = v728;
                                        }

                                        if (v725)
                                        {
                                          v733 = " ";
                                        }

                                        else
                                        {
                                          v733 = "";
                                        }

                                        if (v832[0] >= 0)
                                        {
                                          v734 = &v830;
                                        }

                                        else
                                        {
                                          v734 = v830;
                                        }

                                        v735 = WORD2(v842);
                                        v736 = HIWORD(v842);
                                        v737 = vp::get_log_source_file_path(v843, v731);
                                        *v942 = 136316674;
                                        *&v942[4] = v732;
                                        *&v942[12] = 2080;
                                        *&v942[14] = v733;
                                        *&v942[22] = 2080;
                                        v943 = "get buffered output frame count for downlink voice proc";
                                        LOWORD(v944) = 2080;
                                        *(&v944 + 2) = v734;
                                        WORD5(v944) = 1024;
                                        HIDWORD(v944) = v735;
                                        v945 = 1024;
                                        v946 = v736;
                                        v947 = 2080;
                                        v948 = v737;
                                        v404 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                        v405 = v726;
                                        v406 = 64;
LABEL_953:
                                        _os_log_impl(&dword_2724B4000, v405, OS_LOG_TYPE_ERROR, v404, v942, v406);
                                        if (SHIBYTE(v832[0]) < 0)
                                        {
                                          operator delete(v830);
                                        }
                                      }

LABEL_955:
                                      if (SHIBYTE(v838[0]) < 0)
                                      {
                                        operator delete(v836);
                                      }
                                    }

                                    *this = 7;
                                    *(this + 4) = 0;
                                    if (SHIBYTE(v845) < 0)
                                    {
                                      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v846, v844[0], v845 & 0x7FFFFFFFFFFFFFFFLL);
                                    }

                                    v8 = 0;
                                    if ((v31 & 1) != 0 || (SHIBYTE(v851) & 0x80000000) == 0)
                                    {
                                      goto LABEL_62;
                                    }

                                    (*(*v852 + 24))(v852, v850[0], v851 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                    goto LABEL_1058;
                                  }

                                  v363 = vp::vx::io::Error::Error(&v848, &v854);
                                  if (v851 >= 0)
                                  {
                                    v364 = HIBYTE(v851);
                                  }

                                  else
                                  {
                                    v364 = v850[1];
                                  }

                                  v365 = vp::get_log(v363);
                                  v366 = os_log_type_enabled(v365, OS_LOG_TYPE_ERROR);
                                  if (v364)
                                  {
                                    if (v366)
                                    {
                                      v367 = vp::get_log_context_info(&v842, a2, "vp::vx::Voice_Processor]", 23);
                                      if (v844[0] >= 0)
                                      {
                                        v368 = HIBYTE(v844[0]);
                                      }

                                      else
                                      {
                                        v368 = v843;
                                      }

                                      v369 = vp::get_log(v367);
                                      if (os_log_type_enabled(v369, OS_LOG_TYPE_ERROR))
                                      {
                                        v370 = SHIBYTE(v844[0]);
                                        v371 = v842;
                                        v372 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v848);
                                        std::string::basic_string<std::string_view,0>(&v836, v372, v373);
                                        if (v370 >= 0)
                                        {
                                          v375 = &v842;
                                        }

                                        else
                                        {
                                          v375 = v371;
                                        }

                                        if (v368)
                                        {
                                          v376 = " ";
                                        }

                                        else
                                        {
                                          v376 = "";
                                        }

                                        if (v838[0] >= 0)
                                        {
                                          v377 = &v836;
                                        }

                                        else
                                        {
                                          v377 = v836;
                                        }

                                        v378 = WORD2(v848);
                                        v379 = HIWORD(v848);
                                        v380 = vp::get_log_source_file_path(v849, v374);
                                        if (v851 >= 0)
                                        {
                                          v381 = v850;
                                        }

                                        else
                                        {
                                          v381 = v850[0];
                                        }

                                        *v942 = 136316930;
                                        *&v942[4] = v375;
                                        *&v942[12] = 2080;
                                        *&v942[14] = v376;
                                        *&v942[22] = 2080;
                                        v943 = "get frame count deficit for downlink voice mix DSP";
                                        LOWORD(v944) = 2080;
                                        *(&v944 + 2) = v377;
                                        WORD5(v944) = 1024;
                                        HIDWORD(v944) = v378;
                                        v945 = 1024;
                                        v946 = v379;
                                        v947 = 2080;
                                        v948 = v380;
                                        v949 = 2080;
                                        v950 = v381;
                                        v382 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                        v383 = v369;
                                        v384 = 74;
                                        goto LABEL_929;
                                      }

                                      goto LABEL_931;
                                    }
                                  }

                                  else if (v366)
                                  {
                                    v710 = vp::get_log_context_info(&v842, a2, "vp::vx::Voice_Processor]", 23);
                                    if (v844[0] >= 0)
                                    {
                                      v711 = HIBYTE(v844[0]);
                                    }

                                    else
                                    {
                                      v711 = v843;
                                    }

                                    v712 = vp::get_log(v710);
                                    if (os_log_type_enabled(v712, OS_LOG_TYPE_ERROR))
                                    {
                                      v713 = SHIBYTE(v844[0]);
                                      v714 = v842;
                                      v715 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v848);
                                      std::string::basic_string<std::string_view,0>(&v836, v715, v716);
                                      if (v713 >= 0)
                                      {
                                        v718 = &v842;
                                      }

                                      else
                                      {
                                        v718 = v714;
                                      }

                                      if (v711)
                                      {
                                        v719 = " ";
                                      }

                                      else
                                      {
                                        v719 = "";
                                      }

                                      if (v838[0] >= 0)
                                      {
                                        v720 = &v836;
                                      }

                                      else
                                      {
                                        v720 = v836;
                                      }

                                      v721 = WORD2(v848);
                                      v722 = HIWORD(v848);
                                      v723 = vp::get_log_source_file_path(v849, v717);
                                      *v942 = 136316674;
                                      *&v942[4] = v718;
                                      *&v942[12] = 2080;
                                      *&v942[14] = v719;
                                      *&v942[22] = 2080;
                                      v943 = "get frame count deficit for downlink voice mix DSP";
                                      LOWORD(v944) = 2080;
                                      *(&v944 + 2) = v720;
                                      WORD5(v944) = 1024;
                                      HIDWORD(v944) = v721;
                                      v945 = 1024;
                                      v946 = v722;
                                      v947 = 2080;
                                      v948 = v723;
                                      v382 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                      v383 = v712;
                                      v384 = 64;
LABEL_929:
                                      _os_log_impl(&dword_2724B4000, v383, OS_LOG_TYPE_ERROR, v382, v942, v384);
                                      if (SHIBYTE(v838[0]) < 0)
                                      {
                                        operator delete(v836);
                                      }
                                    }

LABEL_931:
                                    if (SHIBYTE(v844[0]) < 0)
                                    {
                                      operator delete(v842);
                                    }
                                  }

                                  *this = 7;
                                  *(this + 4) = 0;
                                  if (SHIBYTE(v851) < 0)
                                  {
                                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v852, v850[0], v851 & 0x7FFFFFFFFFFFFFFFLL);
                                  }

                                  v8 = 0;
                                  if ((v29 & 1) != 0 || (SHIBYTE(v857) & 0x80000000) == 0)
                                  {
                                    goto LABEL_62;
                                  }

                                  (*(*v858 + 24))(v858, v856[0], v857 & 0x7FFFFFFFFFFFFFFFLL, 1);
                                  goto LABEL_1058;
                                }

                                v341 = vp::vx::io::Error::Error(&v854, &v860);
                                if (v857 >= 0)
                                {
                                  v342 = HIBYTE(v857);
                                }

                                else
                                {
                                  v342 = v856[1];
                                }

                                v343 = vp::get_log(v341);
                                v344 = os_log_type_enabled(v343, OS_LOG_TYPE_ERROR);
                                if (v342)
                                {
                                  if (v344)
                                  {
                                    v345 = vp::get_log_context_info(&v848, a2, "vp::vx::Voice_Processor]", 23);
                                    if (v850[0] >= 0)
                                    {
                                      v346 = HIBYTE(v850[0]);
                                    }

                                    else
                                    {
                                      v346 = v849;
                                    }

                                    v347 = vp::get_log(v345);
                                    if (os_log_type_enabled(v347, OS_LOG_TYPE_ERROR))
                                    {
                                      v348 = SHIBYTE(v850[0]);
                                      v349 = v848;
                                      v350 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v854);
                                      std::string::basic_string<std::string_view,0>(&v842, v350, v351);
                                      if (v348 >= 0)
                                      {
                                        v353 = &v848;
                                      }

                                      else
                                      {
                                        v353 = v349;
                                      }

                                      if (v346)
                                      {
                                        v354 = " ";
                                      }

                                      else
                                      {
                                        v354 = "";
                                      }

                                      if (v844[0] >= 0)
                                      {
                                        v355 = &v842;
                                      }

                                      else
                                      {
                                        v355 = v842;
                                      }

                                      v356 = WORD2(v854);
                                      v357 = HIWORD(v854);
                                      v358 = vp::get_log_source_file_path(v855, v352);
                                      if (v857 >= 0)
                                      {
                                        v359 = v856;
                                      }

                                      else
                                      {
                                        v359 = v856[0];
                                      }

                                      *v942 = 136316930;
                                      *&v942[4] = v353;
                                      *&v942[12] = 2080;
                                      *&v942[14] = v354;
                                      *&v942[22] = 2080;
                                      v943 = "get buffered input frame count for downlink voice mix DSP";
                                      LOWORD(v944) = 2080;
                                      *(&v944 + 2) = v355;
                                      WORD5(v944) = 1024;
                                      HIDWORD(v944) = v356;
                                      v945 = 1024;
                                      v946 = v357;
                                      v947 = 2080;
                                      v948 = v358;
                                      v949 = 2080;
                                      v950 = v359;
                                      v360 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                      v361 = v347;
                                      v362 = 74;
                                      goto LABEL_905;
                                    }

                                    goto LABEL_907;
                                  }
                                }

                                else if (v344)
                                {
                                  v696 = vp::get_log_context_info(&v848, a2, "vp::vx::Voice_Processor]", 23);
                                  if (v850[0] >= 0)
                                  {
                                    v697 = HIBYTE(v850[0]);
                                  }

                                  else
                                  {
                                    v697 = v849;
                                  }

                                  v698 = vp::get_log(v696);
                                  if (os_log_type_enabled(v698, OS_LOG_TYPE_ERROR))
                                  {
                                    v699 = SHIBYTE(v850[0]);
                                    v700 = v848;
                                    v701 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v854);
                                    std::string::basic_string<std::string_view,0>(&v842, v701, v702);
                                    if (v699 >= 0)
                                    {
                                      v704 = &v848;
                                    }

                                    else
                                    {
                                      v704 = v700;
                                    }

                                    if (v697)
                                    {
                                      v705 = " ";
                                    }

                                    else
                                    {
                                      v705 = "";
                                    }

                                    if (v844[0] >= 0)
                                    {
                                      v706 = &v842;
                                    }

                                    else
                                    {
                                      v706 = v842;
                                    }

                                    v707 = WORD2(v854);
                                    v708 = HIWORD(v854);
                                    v709 = vp::get_log_source_file_path(v855, v703);
                                    *v942 = 136316674;
                                    *&v942[4] = v704;
                                    *&v942[12] = 2080;
                                    *&v942[14] = v705;
                                    *&v942[22] = 2080;
                                    v943 = "get buffered input frame count for downlink voice mix DSP";
                                    LOWORD(v944) = 2080;
                                    *(&v944 + 2) = v706;
                                    WORD5(v944) = 1024;
                                    HIDWORD(v944) = v707;
                                    v945 = 1024;
                                    v946 = v708;
                                    v947 = 2080;
                                    v948 = v709;
                                    v360 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                    v361 = v698;
                                    v362 = 64;
LABEL_905:
                                    _os_log_impl(&dword_2724B4000, v361, OS_LOG_TYPE_ERROR, v360, v942, v362);
                                    if (SHIBYTE(v844[0]) < 0)
                                    {
                                      operator delete(v842);
                                    }
                                  }

LABEL_907:
                                  if (SHIBYTE(v850[0]) < 0)
                                  {
                                    operator delete(v848);
                                  }
                                }

                                *this = 7;
                                *(this + 4) = 0;
                                if (SHIBYTE(v857) < 0)
                                {
                                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v858, v856[0], v857 & 0x7FFFFFFFFFFFFFFFLL);
                                }

                                v8 = 0;
                                if ((v27 & 1) != 0 || (SHIBYTE(v863) & 0x80000000) == 0)
                                {
                                  goto LABEL_62;
                                }

                                (*(*v864 + 24))(v864, v862[0], v863 & 0x7FFFFFFFFFFFFFFFLL, 1);
LABEL_1058:
                                v8 = 0;
                                goto LABEL_62;
                              }

                              v319 = vp::vx::io::Error::Error(&v860, &v866);
                              if (v863 >= 0)
                              {
                                v320 = HIBYTE(v863);
                              }

                              else
                              {
                                v320 = v862[1];
                              }

                              v321 = vp::get_log(v319);
                              v322 = os_log_type_enabled(v321, OS_LOG_TYPE_ERROR);
                              if (v320)
                              {
                                if (v322)
                                {
                                  v323 = vp::get_log_context_info(&v854, a2, "vp::vx::Voice_Processor]", 23);
                                  if (v856[0] >= 0)
                                  {
                                    v324 = HIBYTE(v856[0]);
                                  }

                                  else
                                  {
                                    v324 = v855;
                                  }

                                  v325 = vp::get_log(v323);
                                  if (os_log_type_enabled(v325, OS_LOG_TYPE_ERROR))
                                  {
                                    v326 = SHIBYTE(v856[0]);
                                    v327 = v854;
                                    v328 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v860);
                                    std::string::basic_string<std::string_view,0>(&v848, v328, v329);
                                    if (v326 >= 0)
                                    {
                                      v331 = &v854;
                                    }

                                    else
                                    {
                                      v331 = v327;
                                    }

                                    if (v324)
                                    {
                                      v332 = " ";
                                    }

                                    else
                                    {
                                      v332 = "";
                                    }

                                    if (v850[0] >= 0)
                                    {
                                      v333 = &v848;
                                    }

                                    else
                                    {
                                      v333 = v848;
                                    }

                                    v334 = WORD2(v860);
                                    v335 = HIWORD(v860);
                                    v336 = vp::get_log_source_file_path(v861, v330);
                                    if (v863 >= 0)
                                    {
                                      v337 = v862;
                                    }

                                    else
                                    {
                                      v337 = v862[0];
                                    }

                                    *v942 = 136316930;
                                    *&v942[4] = v331;
                                    *&v942[12] = 2080;
                                    *&v942[14] = v332;
                                    *&v942[22] = 2080;
                                    v943 = "get required input frame count for downlink voice mix DSP";
                                    LOWORD(v944) = 2080;
                                    *(&v944 + 2) = v333;
                                    WORD5(v944) = 1024;
                                    HIDWORD(v944) = v334;
                                    v945 = 1024;
                                    v946 = v335;
                                    v947 = 2080;
                                    v948 = v336;
                                    v949 = 2080;
                                    v950 = v337;
                                    v338 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                    v339 = v325;
                                    v340 = 74;
                                    goto LABEL_884;
                                  }

                                  goto LABEL_886;
                                }
                              }

                              else if (v322)
                              {
                                v682 = vp::get_log_context_info(&v854, a2, "vp::vx::Voice_Processor]", 23);
                                if (v856[0] >= 0)
                                {
                                  v683 = HIBYTE(v856[0]);
                                }

                                else
                                {
                                  v683 = v855;
                                }

                                v684 = vp::get_log(v682);
                                if (os_log_type_enabled(v684, OS_LOG_TYPE_ERROR))
                                {
                                  v685 = SHIBYTE(v856[0]);
                                  v686 = v854;
                                  v687 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v860);
                                  std::string::basic_string<std::string_view,0>(&v848, v687, v688);
                                  if (v685 >= 0)
                                  {
                                    v690 = &v854;
                                  }

                                  else
                                  {
                                    v690 = v686;
                                  }

                                  if (v683)
                                  {
                                    v691 = " ";
                                  }

                                  else
                                  {
                                    v691 = "";
                                  }

                                  if (v850[0] >= 0)
                                  {
                                    v692 = &v848;
                                  }

                                  else
                                  {
                                    v692 = v848;
                                  }

                                  v693 = WORD2(v860);
                                  v694 = HIWORD(v860);
                                  v695 = vp::get_log_source_file_path(v861, v689);
                                  *v942 = 136316674;
                                  *&v942[4] = v690;
                                  *&v942[12] = 2080;
                                  *&v942[14] = v691;
                                  *&v942[22] = 2080;
                                  v943 = "get required input frame count for downlink voice mix DSP";
                                  LOWORD(v944) = 2080;
                                  *(&v944 + 2) = v692;
                                  WORD5(v944) = 1024;
                                  HIDWORD(v944) = v693;
                                  v945 = 1024;
                                  v946 = v694;
                                  v947 = 2080;
                                  v948 = v695;
                                  v338 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                  v339 = v684;
                                  v340 = 64;
LABEL_884:
                                  _os_log_impl(&dword_2724B4000, v339, OS_LOG_TYPE_ERROR, v338, v942, v340);
                                  if (SHIBYTE(v850[0]) < 0)
                                  {
                                    operator delete(v848);
                                  }
                                }

LABEL_886:
                                if (SHIBYTE(v856[0]) < 0)
                                {
                                  operator delete(v854);
                                }
                              }

                              *this = 7;
                              *(this + 4) = 0;
                              if (SHIBYTE(v863) < 0)
                              {
                                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v864, v862[0], v863 & 0x7FFFFFFFFFFFFFFFLL);
                              }

                              goto LABEL_1058;
                            }

                            v297 = vp::vx::io::Error::Error(&v866, &v872);
                            if (v869 >= 0)
                            {
                              v298 = HIBYTE(v869);
                            }

                            else
                            {
                              v298 = v868[1];
                            }

                            v299 = vp::get_log(v297);
                            v300 = os_log_type_enabled(v299, OS_LOG_TYPE_ERROR);
                            if (v298)
                            {
                              if (v300)
                              {
                                v301 = vp::get_log_context_info(&v860, a2, "vp::vx::Voice_Processor]", 23);
                                if (v862[0] >= 0)
                                {
                                  v302 = HIBYTE(v862[0]);
                                }

                                else
                                {
                                  v302 = v861;
                                }

                                v303 = vp::get_log(v301);
                                if (os_log_type_enabled(v303, OS_LOG_TYPE_ERROR))
                                {
                                  v304 = SHIBYTE(v862[0]);
                                  v305 = v860;
                                  v306 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v866);
                                  std::string::basic_string<std::string_view,0>(&v854, v306, v307);
                                  if (v304 >= 0)
                                  {
                                    v309 = &v860;
                                  }

                                  else
                                  {
                                    v309 = v305;
                                  }

                                  if (v302)
                                  {
                                    v310 = " ";
                                  }

                                  else
                                  {
                                    v310 = "";
                                  }

                                  if (v856[0] >= 0)
                                  {
                                    v311 = &v854;
                                  }

                                  else
                                  {
                                    v311 = v854;
                                  }

                                  v312 = WORD2(v866);
                                  v313 = HIWORD(v866);
                                  v314 = vp::get_log_source_file_path(v867, v308);
                                  if (v869 >= 0)
                                  {
                                    v315 = v868;
                                  }

                                  else
                                  {
                                    v315 = v868[0];
                                  }

                                  *v942 = 136316930;
                                  *&v942[4] = v309;
                                  *&v942[12] = 2080;
                                  *&v942[14] = v310;
                                  *&v942[22] = 2080;
                                  v943 = "get buffered output frame count for downlink voice mix DSP";
                                  LOWORD(v944) = 2080;
                                  *(&v944 + 2) = v311;
                                  WORD5(v944) = 1024;
                                  HIDWORD(v944) = v312;
                                  v945 = 1024;
                                  v946 = v313;
                                  v947 = 2080;
                                  v948 = v314;
                                  v949 = 2080;
                                  v950 = v315;
                                  v316 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                  v317 = v303;
                                  v318 = 74;
                                  goto LABEL_862;
                                }

                                goto LABEL_864;
                              }
                            }

                            else if (v300)
                            {
                              v668 = vp::get_log_context_info(&v860, a2, "vp::vx::Voice_Processor]", 23);
                              if (v862[0] >= 0)
                              {
                                v669 = HIBYTE(v862[0]);
                              }

                              else
                              {
                                v669 = v861;
                              }

                              v670 = vp::get_log(v668);
                              if (os_log_type_enabled(v670, OS_LOG_TYPE_ERROR))
                              {
                                v671 = SHIBYTE(v862[0]);
                                v672 = v860;
                                v673 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v866);
                                std::string::basic_string<std::string_view,0>(&v854, v673, v674);
                                if (v671 >= 0)
                                {
                                  v676 = &v860;
                                }

                                else
                                {
                                  v676 = v672;
                                }

                                if (v669)
                                {
                                  v677 = " ";
                                }

                                else
                                {
                                  v677 = "";
                                }

                                if (v856[0] >= 0)
                                {
                                  v678 = &v854;
                                }

                                else
                                {
                                  v678 = v854;
                                }

                                v679 = WORD2(v866);
                                v680 = HIWORD(v866);
                                v681 = vp::get_log_source_file_path(v867, v675);
                                *v942 = 136316674;
                                *&v942[4] = v676;
                                *&v942[12] = 2080;
                                *&v942[14] = v677;
                                *&v942[22] = 2080;
                                v943 = "get buffered output frame count for downlink voice mix DSP";
                                LOWORD(v944) = 2080;
                                *(&v944 + 2) = v678;
                                WORD5(v944) = 1024;
                                HIDWORD(v944) = v679;
                                v945 = 1024;
                                v946 = v680;
                                v947 = 2080;
                                v948 = v681;
                                v316 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                                v317 = v670;
                                v318 = 64;
LABEL_862:
                                _os_log_impl(&dword_2724B4000, v317, OS_LOG_TYPE_ERROR, v316, v942, v318);
                                if (SHIBYTE(v856[0]) < 0)
                                {
                                  operator delete(v854);
                                }
                              }

LABEL_864:
                              if (SHIBYTE(v862[0]) < 0)
                              {
                                operator delete(v860);
                              }
                            }

                            *this = 7;
                            *(this + 4) = 0;
                            if (SHIBYTE(v869) < 0)
                            {
                              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v870, v868[0], v869 & 0x7FFFFFFFFFFFFFFFLL);
                            }

                            v8 = 0;
                            goto LABEL_66;
                          }

                          v275 = vp::vx::io::Error::Error(&v872, &v878);
                          if (v875 >= 0)
                          {
                            v276 = HIBYTE(v875);
                          }

                          else
                          {
                            v276 = v874[1];
                          }

                          v277 = vp::get_log(v275);
                          v278 = os_log_type_enabled(v277, OS_LOG_TYPE_ERROR);
                          if (v276)
                          {
                            if (v278)
                            {
                              v279 = vp::get_log_context_info(&v866, a2, "vp::vx::Voice_Processor]", 23);
                              if (v868[0] >= 0)
                              {
                                v280 = HIBYTE(v868[0]);
                              }

                              else
                              {
                                v280 = v867;
                              }

                              v281 = vp::get_log(v279);
                              if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
                              {
                                v282 = SHIBYTE(v868[0]);
                                v283 = v866;
                                v284 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v872);
                                std::string::basic_string<std::string_view,0>(&v860, v284, v285);
                                if (v282 >= 0)
                                {
                                  v287 = &v866;
                                }

                                else
                                {
                                  v287 = v283;
                                }

                                if (v280)
                                {
                                  v288 = " ";
                                }

                                else
                                {
                                  v288 = "";
                                }

                                if (v862[0] >= 0)
                                {
                                  v289 = &v860;
                                }

                                else
                                {
                                  v289 = v860;
                                }

                                v290 = WORD2(v872);
                                v291 = HIWORD(v872);
                                v292 = vp::get_log_source_file_path(v873, v286);
                                if (v875 >= 0)
                                {
                                  v293 = v874;
                                }

                                else
                                {
                                  v293 = v874[0];
                                }

                                *v942 = 136316930;
                                *&v942[4] = v287;
                                *&v942[12] = 2080;
                                *&v942[14] = v288;
                                *&v942[22] = 2080;
                                v943 = "get frame count deficit for downlink voice DSP";
                                LOWORD(v944) = 2080;
                                *(&v944 + 2) = v289;
                                WORD5(v944) = 1024;
                                HIDWORD(v944) = v290;
                                v945 = 1024;
                                v946 = v291;
                                v947 = 2080;
                                v948 = v292;
                                v949 = 2080;
                                v950 = v293;
                                v294 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                                v295 = v281;
                                v296 = 74;
                                goto LABEL_840;
                              }

                              goto LABEL_842;
                            }
                          }

                          else if (v278)
                          {
                            v654 = vp::get_log_context_info(&v866, a2, "vp::vx::Voice_Processor]", 23);
                            if (v868[0] >= 0)
                            {
                              v655 = HIBYTE(v868[0]);
                            }

                            else
                            {
                              v655 = v867;
                            }

                            v656 = vp::get_log(v654);
                            if (os_log_type_enabled(v656, OS_LOG_TYPE_ERROR))
                            {
                              v657 = SHIBYTE(v868[0]);
                              v658 = v866;
                              v659 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v872);
                              std::string::basic_string<std::string_view,0>(&v860, v659, v660);
                              if (v657 >= 0)
                              {
                                v662 = &v866;
                              }

                              else
                              {
                                v662 = v658;
                              }

                              if (v655)
                              {
                                v663 = " ";
                              }

                              else
                              {
                                v663 = "";
                              }

                              if (v862[0] >= 0)
                              {
                                v664 = &v860;
                              }

                              else
                              {
                                v664 = v860;
                              }

                              v665 = WORD2(v872);
                              v666 = HIWORD(v872);
                              v667 = vp::get_log_source_file_path(v873, v661);
                              *v942 = 136316674;
                              *&v942[4] = v662;
                              *&v942[12] = 2080;
                              *&v942[14] = v663;
                              *&v942[22] = 2080;
                              v943 = "get frame count deficit for downlink voice DSP";
                              LOWORD(v944) = 2080;
                              *(&v944 + 2) = v664;
                              WORD5(v944) = 1024;
                              HIDWORD(v944) = v665;
                              v945 = 1024;
                              v946 = v666;
                              v947 = 2080;
                              v948 = v667;
                              v294 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                              v295 = v656;
                              v296 = 64;
LABEL_840:
                              _os_log_impl(&dword_2724B4000, v295, OS_LOG_TYPE_ERROR, v294, v942, v296);
                              if (SHIBYTE(v862[0]) < 0)
                              {
                                operator delete(v860);
                              }
                            }

LABEL_842:
                            if (SHIBYTE(v868[0]) < 0)
                            {
                              operator delete(v866);
                            }
                          }

                          *this = 7;
                          *(this + 4) = 0;
                          if (SHIBYTE(v875) < 0)
                          {
                            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v876, v874[0], v875 & 0x7FFFFFFFFFFFFFFFLL);
                          }

                          v8 = 0;
LABEL_69:
                          if (SHIBYTE(v881) < 0)
                          {
                            (*(*v882 + 24))(v882, v880[0], v881 & 0x7FFFFFFFFFFFFFFFLL, 1);
                          }

LABEL_71:
                          if (v889)
                          {
                            goto LABEL_74;
                          }

                          goto LABEL_72;
                        }

                        v253 = vp::vx::io::Error::Error(&v878, &v884);
                        if (v881 >= 0)
                        {
                          v254 = HIBYTE(v881);
                        }

                        else
                        {
                          v254 = v880[1];
                        }

                        v255 = vp::get_log(v253);
                        v256 = os_log_type_enabled(v255, OS_LOG_TYPE_ERROR);
                        if (v254)
                        {
                          if (v256)
                          {
                            v257 = vp::get_log_context_info(&v872, a2, "vp::vx::Voice_Processor]", 23);
                            if (v874[0] >= 0)
                            {
                              v258 = HIBYTE(v874[0]);
                            }

                            else
                            {
                              v258 = v873;
                            }

                            v259 = vp::get_log(v257);
                            if (os_log_type_enabled(v259, OS_LOG_TYPE_ERROR))
                            {
                              v260 = SHIBYTE(v874[0]);
                              v261 = v872;
                              v262 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v878);
                              std::string::basic_string<std::string_view,0>(&v866, v262, v263);
                              if (v260 >= 0)
                              {
                                v265 = &v872;
                              }

                              else
                              {
                                v265 = v261;
                              }

                              if (v258)
                              {
                                v266 = " ";
                              }

                              else
                              {
                                v266 = "";
                              }

                              if (v868[0] >= 0)
                              {
                                v267 = &v866;
                              }

                              else
                              {
                                v267 = v866;
                              }

                              v268 = WORD2(v878);
                              v269 = HIWORD(v878);
                              v270 = vp::get_log_source_file_path(v879, v264);
                              if (v881 >= 0)
                              {
                                v271 = v880;
                              }

                              else
                              {
                                v271 = v880[0];
                              }

                              *v942 = 136316930;
                              *&v942[4] = v265;
                              *&v942[12] = 2080;
                              *&v942[14] = v266;
                              *&v942[22] = 2080;
                              v943 = "get buffered input frame count for downlink voice DSP";
                              LOWORD(v944) = 2080;
                              *(&v944 + 2) = v267;
                              WORD5(v944) = 1024;
                              HIDWORD(v944) = v268;
                              v945 = 1024;
                              v946 = v269;
                              v947 = 2080;
                              v948 = v270;
                              v949 = 2080;
                              v950 = v271;
                              v272 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                              v273 = v259;
                              v274 = 74;
                              goto LABEL_818;
                            }

                            goto LABEL_820;
                          }
                        }

                        else if (v256)
                        {
                          v640 = vp::get_log_context_info(&v872, a2, "vp::vx::Voice_Processor]", 23);
                          if (v874[0] >= 0)
                          {
                            v641 = HIBYTE(v874[0]);
                          }

                          else
                          {
                            v641 = v873;
                          }

                          v642 = vp::get_log(v640);
                          if (os_log_type_enabled(v642, OS_LOG_TYPE_ERROR))
                          {
                            v643 = SHIBYTE(v874[0]);
                            v644 = v872;
                            v645 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v878);
                            std::string::basic_string<std::string_view,0>(&v866, v645, v646);
                            if (v643 >= 0)
                            {
                              v648 = &v872;
                            }

                            else
                            {
                              v648 = v644;
                            }

                            if (v641)
                            {
                              v649 = " ";
                            }

                            else
                            {
                              v649 = "";
                            }

                            if (v868[0] >= 0)
                            {
                              v650 = &v866;
                            }

                            else
                            {
                              v650 = v866;
                            }

                            v651 = WORD2(v878);
                            v652 = HIWORD(v878);
                            v653 = vp::get_log_source_file_path(v879, v647);
                            *v942 = 136316674;
                            *&v942[4] = v648;
                            *&v942[12] = 2080;
                            *&v942[14] = v649;
                            *&v942[22] = 2080;
                            v943 = "get buffered input frame count for downlink voice DSP";
                            LOWORD(v944) = 2080;
                            *(&v944 + 2) = v650;
                            WORD5(v944) = 1024;
                            HIDWORD(v944) = v651;
                            v945 = 1024;
                            v946 = v652;
                            v947 = 2080;
                            v948 = v653;
                            v272 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                            v273 = v642;
                            v274 = 64;
LABEL_818:
                            _os_log_impl(&dword_2724B4000, v273, OS_LOG_TYPE_ERROR, v272, v942, v274);
                            if (SHIBYTE(v868[0]) < 0)
                            {
                              operator delete(v866);
                            }
                          }

LABEL_820:
                          if (SHIBYTE(v874[0]) < 0)
                          {
                            operator delete(v872);
                          }
                        }

                        *this = 7;
                        *(this + 4) = 0;
                        if (SHIBYTE(v881) < 0)
                        {
                          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v882, v880[0], v881 & 0x7FFFFFFFFFFFFFFFLL);
                        }

                        v8 = 0;
LABEL_72:
                        if (SHIBYTE(v887) < 0)
                        {
                          (*(*v888 + 24))(v888, v886[0], v887 & 0x7FFFFFFFFFFFFFFFLL, 1);
                        }

                        goto LABEL_74;
                      }

                      v231 = vp::vx::io::Error::Error(&v884, &v890);
                      if (v887 >= 0)
                      {
                        v232 = HIBYTE(v887);
                      }

                      else
                      {
                        v232 = v886[1];
                      }

                      v233 = vp::get_log(v231);
                      v234 = os_log_type_enabled(v233, OS_LOG_TYPE_ERROR);
                      if (v232)
                      {
                        if (v234)
                        {
                          v235 = vp::get_log_context_info(&v878, a2, "vp::vx::Voice_Processor]", 23);
                          if (v880[0] >= 0)
                          {
                            v236 = HIBYTE(v880[0]);
                          }

                          else
                          {
                            v236 = v879;
                          }

                          v237 = vp::get_log(v235);
                          if (os_log_type_enabled(v237, OS_LOG_TYPE_ERROR))
                          {
                            v238 = SHIBYTE(v880[0]);
                            v239 = v878;
                            v240 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v884);
                            std::string::basic_string<std::string_view,0>(&v872, v240, v241);
                            if (v238 >= 0)
                            {
                              v243 = &v878;
                            }

                            else
                            {
                              v243 = v239;
                            }

                            if (v236)
                            {
                              v244 = " ";
                            }

                            else
                            {
                              v244 = "";
                            }

                            if (v874[0] >= 0)
                            {
                              v245 = &v872;
                            }

                            else
                            {
                              v245 = v872;
                            }

                            v246 = WORD2(v884);
                            v247 = HIWORD(v884);
                            v248 = vp::get_log_source_file_path(v885, v242);
                            if (v887 >= 0)
                            {
                              v249 = v886;
                            }

                            else
                            {
                              v249 = v886[0];
                            }

                            *v942 = 136316930;
                            *&v942[4] = v243;
                            *&v942[12] = 2080;
                            *&v942[14] = v244;
                            *&v942[22] = 2080;
                            v943 = "get required input frame count for downlink voice DSP";
                            LOWORD(v944) = 2080;
                            *(&v944 + 2) = v245;
                            WORD5(v944) = 1024;
                            HIDWORD(v944) = v246;
                            v945 = 1024;
                            v946 = v247;
                            v947 = 2080;
                            v948 = v248;
                            v949 = 2080;
                            v950 = v249;
                            v250 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                            v251 = v237;
                            v252 = 74;
                            goto LABEL_796;
                          }

                          goto LABEL_798;
                        }
                      }

                      else if (v234)
                      {
                        v626 = vp::get_log_context_info(&v878, a2, "vp::vx::Voice_Processor]", 23);
                        if (v880[0] >= 0)
                        {
                          v627 = HIBYTE(v880[0]);
                        }

                        else
                        {
                          v627 = v879;
                        }

                        v628 = vp::get_log(v626);
                        if (os_log_type_enabled(v628, OS_LOG_TYPE_ERROR))
                        {
                          v629 = SHIBYTE(v880[0]);
                          v630 = v878;
                          v631 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v884);
                          std::string::basic_string<std::string_view,0>(&v872, v631, v632);
                          if (v629 >= 0)
                          {
                            v634 = &v878;
                          }

                          else
                          {
                            v634 = v630;
                          }

                          if (v627)
                          {
                            v635 = " ";
                          }

                          else
                          {
                            v635 = "";
                          }

                          if (v874[0] >= 0)
                          {
                            v636 = &v872;
                          }

                          else
                          {
                            v636 = v872;
                          }

                          v637 = WORD2(v884);
                          v638 = HIWORD(v884);
                          v639 = vp::get_log_source_file_path(v885, v633);
                          *v942 = 136316674;
                          *&v942[4] = v634;
                          *&v942[12] = 2080;
                          *&v942[14] = v635;
                          *&v942[22] = 2080;
                          v943 = "get required input frame count for downlink voice DSP";
                          LOWORD(v944) = 2080;
                          *(&v944 + 2) = v636;
                          WORD5(v944) = 1024;
                          HIDWORD(v944) = v637;
                          v945 = 1024;
                          v946 = v638;
                          v947 = 2080;
                          v948 = v639;
                          v250 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                          v251 = v628;
                          v252 = 64;
LABEL_796:
                          _os_log_impl(&dword_2724B4000, v251, OS_LOG_TYPE_ERROR, v250, v942, v252);
                          if (SHIBYTE(v874[0]) < 0)
                          {
                            operator delete(v872);
                          }
                        }

LABEL_798:
                        if (SHIBYTE(v880[0]) < 0)
                        {
                          operator delete(v878);
                        }
                      }

                      *this = 7;
                      *(this + 4) = 0;
                      if (SHIBYTE(v887) < 0)
                      {
                        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v888, v886[0], v887 & 0x7FFFFFFFFFFFFFFFLL);
                      }

                      v8 = 0;
LABEL_74:
                      if ((v895 & 1) == 0 && SHIBYTE(v893) < 0)
                      {
                        (*(*v894 + 24))(v894, v892[0], v893 & 0x7FFFFFFFFFFFFFFFLL, 1);
                      }

                      if (v901)
                      {
LABEL_80:
                        if (v907)
                        {
                          goto LABEL_83;
                        }

                        goto LABEL_81;
                      }

LABEL_78:
                      if (SHIBYTE(v899) < 0)
                      {
                        (*(*v900 + 24))(v900, v898[0], v899 & 0x7FFFFFFFFFFFFFFFLL, 1);
                      }

                      goto LABEL_80;
                    }

                    v209 = vp::vx::io::Error::Error(&v890, &v896);
                    if (v893 >= 0)
                    {
                      v210 = HIBYTE(v893);
                    }

                    else
                    {
                      v210 = v892[1];
                    }

                    v211 = vp::get_log(v209);
                    v212 = os_log_type_enabled(v211, OS_LOG_TYPE_ERROR);
                    if (v210)
                    {
                      if (v212)
                      {
                        v213 = vp::get_log_context_info(&v884, a2, "vp::vx::Voice_Processor]", 23);
                        if (v886[0] >= 0)
                        {
                          v214 = HIBYTE(v886[0]);
                        }

                        else
                        {
                          v214 = v885;
                        }

                        v215 = vp::get_log(v213);
                        if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
                        {
                          v216 = SHIBYTE(v886[0]);
                          v217 = v884;
                          v218 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v890);
                          std::string::basic_string<std::string_view,0>(&v878, v218, v219);
                          if (v216 >= 0)
                          {
                            v221 = &v884;
                          }

                          else
                          {
                            v221 = v217;
                          }

                          if (v214)
                          {
                            v222 = " ";
                          }

                          else
                          {
                            v222 = "";
                          }

                          if (v880[0] >= 0)
                          {
                            v223 = &v878;
                          }

                          else
                          {
                            v223 = v878;
                          }

                          v224 = WORD2(v890);
                          v225 = HIWORD(v890);
                          v226 = vp::get_log_source_file_path(v891, v220);
                          if (v893 >= 0)
                          {
                            v227 = v892;
                          }

                          else
                          {
                            v227 = v892[0];
                          }

                          *v942 = 136316930;
                          *&v942[4] = v221;
                          *&v942[12] = 2080;
                          *&v942[14] = v222;
                          *&v942[22] = 2080;
                          v943 = "get buffered output frame count for downlink voice DSP";
                          LOWORD(v944) = 2080;
                          *(&v944 + 2) = v223;
                          WORD5(v944) = 1024;
                          HIDWORD(v944) = v224;
                          v945 = 1024;
                          v946 = v225;
                          v947 = 2080;
                          v948 = v226;
                          v949 = 2080;
                          v950 = v227;
                          v228 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                          v229 = v215;
                          v230 = 74;
                          goto LABEL_774;
                        }

                        goto LABEL_776;
                      }
                    }

                    else if (v212)
                    {
                      v612 = vp::get_log_context_info(&v884, a2, "vp::vx::Voice_Processor]", 23);
                      if (v886[0] >= 0)
                      {
                        v613 = HIBYTE(v886[0]);
                      }

                      else
                      {
                        v613 = v885;
                      }

                      v614 = vp::get_log(v612);
                      if (os_log_type_enabled(v614, OS_LOG_TYPE_ERROR))
                      {
                        v615 = SHIBYTE(v886[0]);
                        v616 = v884;
                        v617 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v890);
                        std::string::basic_string<std::string_view,0>(&v878, v617, v618);
                        if (v615 >= 0)
                        {
                          v620 = &v884;
                        }

                        else
                        {
                          v620 = v616;
                        }

                        if (v613)
                        {
                          v621 = " ";
                        }

                        else
                        {
                          v621 = "";
                        }

                        if (v880[0] >= 0)
                        {
                          v622 = &v878;
                        }

                        else
                        {
                          v622 = v878;
                        }

                        v623 = WORD2(v890);
                        v624 = HIWORD(v890);
                        v625 = vp::get_log_source_file_path(v891, v619);
                        *v942 = 136316674;
                        *&v942[4] = v620;
                        *&v942[12] = 2080;
                        *&v942[14] = v621;
                        *&v942[22] = 2080;
                        v943 = "get buffered output frame count for downlink voice DSP";
                        LOWORD(v944) = 2080;
                        *(&v944 + 2) = v622;
                        WORD5(v944) = 1024;
                        HIDWORD(v944) = v623;
                        v945 = 1024;
                        v946 = v624;
                        v947 = 2080;
                        v948 = v625;
                        v228 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                        v229 = v614;
                        v230 = 64;
LABEL_774:
                        _os_log_impl(&dword_2724B4000, v229, OS_LOG_TYPE_ERROR, v228, v942, v230);
                        if (SHIBYTE(v880[0]) < 0)
                        {
                          operator delete(v878);
                        }
                      }

LABEL_776:
                      if (SHIBYTE(v886[0]) < 0)
                      {
                        operator delete(v884);
                      }
                    }

                    *this = 7;
                    *(this + 4) = 0;
                    if (SHIBYTE(v893) < 0)
                    {
                      std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v894, v892[0], v893 & 0x7FFFFFFFFFFFFFFFLL);
                    }

                    v8 = 0;
                    goto LABEL_78;
                  }

                  v187 = vp::vx::io::Error::Error(&v896, &v902);
                  if (v899 >= 0)
                  {
                    v188 = HIBYTE(v899);
                  }

                  else
                  {
                    v188 = v898[1];
                  }

                  v189 = vp::get_log(v187);
                  v190 = os_log_type_enabled(v189, OS_LOG_TYPE_ERROR);
                  if (v188)
                  {
                    if (v190)
                    {
                      v191 = vp::get_log_context_info(&v890, a2, "vp::vx::Voice_Processor]", 23);
                      if (v892[0] >= 0)
                      {
                        v192 = HIBYTE(v892[0]);
                      }

                      else
                      {
                        v192 = v891;
                      }

                      v193 = vp::get_log(v191);
                      if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                      {
                        v194 = SHIBYTE(v892[0]);
                        v195 = v890;
                        v196 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v896);
                        std::string::basic_string<std::string_view,0>(&v884, v196, v197);
                        if (v194 >= 0)
                        {
                          v199 = &v890;
                        }

                        else
                        {
                          v199 = v195;
                        }

                        if (v192)
                        {
                          v200 = " ";
                        }

                        else
                        {
                          v200 = "";
                        }

                        if (v886[0] >= 0)
                        {
                          v201 = &v884;
                        }

                        else
                        {
                          v201 = v884;
                        }

                        v202 = WORD2(v896);
                        v203 = HIWORD(v896);
                        v204 = vp::get_log_source_file_path(v897, v198);
                        if (v899 >= 0)
                        {
                          v205 = v898;
                        }

                        else
                        {
                          v205 = v898[0];
                        }

                        *v942 = 136316930;
                        *&v942[4] = v199;
                        *&v942[12] = 2080;
                        *&v942[14] = v200;
                        *&v942[22] = 2080;
                        v943 = "get frame deficit for downlink dynamics DSP";
                        LOWORD(v944) = 2080;
                        *(&v944 + 2) = v201;
                        WORD5(v944) = 1024;
                        HIDWORD(v944) = v202;
                        v945 = 1024;
                        v946 = v203;
                        v947 = 2080;
                        v948 = v204;
                        v949 = 2080;
                        v950 = v205;
                        v206 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                        v207 = v193;
                        v208 = 74;
                        goto LABEL_752;
                      }

                      goto LABEL_754;
                    }
                  }

                  else if (v190)
                  {
                    v598 = vp::get_log_context_info(&v890, a2, "vp::vx::Voice_Processor]", 23);
                    if (v892[0] >= 0)
                    {
                      v599 = HIBYTE(v892[0]);
                    }

                    else
                    {
                      v599 = v891;
                    }

                    v600 = vp::get_log(v598);
                    if (os_log_type_enabled(v600, OS_LOG_TYPE_ERROR))
                    {
                      v601 = SHIBYTE(v892[0]);
                      v602 = v890;
                      v603 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v896);
                      std::string::basic_string<std::string_view,0>(&v884, v603, v604);
                      if (v601 >= 0)
                      {
                        v606 = &v890;
                      }

                      else
                      {
                        v606 = v602;
                      }

                      if (v599)
                      {
                        v607 = " ";
                      }

                      else
                      {
                        v607 = "";
                      }

                      if (v886[0] >= 0)
                      {
                        v608 = &v884;
                      }

                      else
                      {
                        v608 = v884;
                      }

                      v609 = WORD2(v896);
                      v610 = HIWORD(v896);
                      v611 = vp::get_log_source_file_path(v897, v605);
                      *v942 = 136316674;
                      *&v942[4] = v606;
                      *&v942[12] = 2080;
                      *&v942[14] = v607;
                      *&v942[22] = 2080;
                      v943 = "get frame deficit for downlink dynamics DSP";
                      LOWORD(v944) = 2080;
                      *(&v944 + 2) = v608;
                      WORD5(v944) = 1024;
                      HIDWORD(v944) = v609;
                      v945 = 1024;
                      v946 = v610;
                      v947 = 2080;
                      v948 = v611;
                      v206 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                      v207 = v600;
                      v208 = 64;
LABEL_752:
                      _os_log_impl(&dword_2724B4000, v207, OS_LOG_TYPE_ERROR, v206, v942, v208);
                      if (SHIBYTE(v886[0]) < 0)
                      {
                        operator delete(v884);
                      }
                    }

LABEL_754:
                    if (SHIBYTE(v892[0]) < 0)
                    {
                      operator delete(v890);
                    }
                  }

                  *this = 7;
                  *(this + 4) = 0;
                  if (SHIBYTE(v899) < 0)
                  {
                    std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v900, v898[0], v899 & 0x7FFFFFFFFFFFFFFFLL);
                  }

                  v8 = 0;
LABEL_81:
                  if (SHIBYTE(v905) < 0)
                  {
                    (*(*v906 + 24))(v906, v904[0], v905 & 0x7FFFFFFFFFFFFFFFLL, 1);
                  }

LABEL_83:
                  if (v913)
                  {
                    goto LABEL_86;
                  }

                  goto LABEL_84;
                }

                v165 = vp::vx::io::Error::Error(&v902, &v908);
                if (v905 >= 0)
                {
                  v166 = HIBYTE(v905);
                }

                else
                {
                  v166 = v904[1];
                }

                v167 = vp::get_log(v165);
                v168 = os_log_type_enabled(v167, OS_LOG_TYPE_ERROR);
                if (v166)
                {
                  if (v168)
                  {
                    v169 = vp::get_log_context_info(&v896, a2, "vp::vx::Voice_Processor]", 23);
                    if (v898[0] >= 0)
                    {
                      v170 = HIBYTE(v898[0]);
                    }

                    else
                    {
                      v170 = v897;
                    }

                    v171 = vp::get_log(v169);
                    if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
                    {
                      v172 = SHIBYTE(v898[0]);
                      v173 = v896;
                      v174 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v902);
                      std::string::basic_string<std::string_view,0>(&v890, v174, v175);
                      if (v172 >= 0)
                      {
                        v177 = &v896;
                      }

                      else
                      {
                        v177 = v173;
                      }

                      if (v170)
                      {
                        v178 = " ";
                      }

                      else
                      {
                        v178 = "";
                      }

                      if (v892[0] >= 0)
                      {
                        v179 = &v890;
                      }

                      else
                      {
                        v179 = v890;
                      }

                      v180 = WORD2(v902);
                      v181 = HIWORD(v902);
                      v182 = vp::get_log_source_file_path(v903, v176);
                      if (v905 >= 0)
                      {
                        v183 = v904;
                      }

                      else
                      {
                        v183 = v904[0];
                      }

                      *v942 = 136316930;
                      *&v942[4] = v177;
                      *&v942[12] = 2080;
                      *&v942[14] = v178;
                      *&v942[22] = 2080;
                      v943 = "get buffered input frame count for downlink dynamics DSP";
                      LOWORD(v944) = 2080;
                      *(&v944 + 2) = v179;
                      WORD5(v944) = 1024;
                      HIDWORD(v944) = v180;
                      v945 = 1024;
                      v946 = v181;
                      v947 = 2080;
                      v948 = v182;
                      v949 = 2080;
                      v950 = v183;
                      v184 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                      v185 = v171;
                      v186 = 74;
                      goto LABEL_730;
                    }

                    goto LABEL_732;
                  }
                }

                else if (v168)
                {
                  v584 = vp::get_log_context_info(&v896, a2, "vp::vx::Voice_Processor]", 23);
                  if (v898[0] >= 0)
                  {
                    v585 = HIBYTE(v898[0]);
                  }

                  else
                  {
                    v585 = v897;
                  }

                  v586 = vp::get_log(v584);
                  if (os_log_type_enabled(v586, OS_LOG_TYPE_ERROR))
                  {
                    v587 = SHIBYTE(v898[0]);
                    v588 = v896;
                    v589 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v902);
                    std::string::basic_string<std::string_view,0>(&v890, v589, v590);
                    if (v587 >= 0)
                    {
                      v592 = &v896;
                    }

                    else
                    {
                      v592 = v588;
                    }

                    if (v585)
                    {
                      v593 = " ";
                    }

                    else
                    {
                      v593 = "";
                    }

                    if (v892[0] >= 0)
                    {
                      v594 = &v890;
                    }

                    else
                    {
                      v594 = v890;
                    }

                    v595 = WORD2(v902);
                    v596 = HIWORD(v902);
                    v597 = vp::get_log_source_file_path(v903, v591);
                    *v942 = 136316674;
                    *&v942[4] = v592;
                    *&v942[12] = 2080;
                    *&v942[14] = v593;
                    *&v942[22] = 2080;
                    v943 = "get buffered input frame count for downlink dynamics DSP";
                    LOWORD(v944) = 2080;
                    *(&v944 + 2) = v594;
                    WORD5(v944) = 1024;
                    HIDWORD(v944) = v595;
                    v945 = 1024;
                    v946 = v596;
                    v947 = 2080;
                    v948 = v597;
                    v184 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                    v185 = v586;
                    v186 = 64;
LABEL_730:
                    _os_log_impl(&dword_2724B4000, v185, OS_LOG_TYPE_ERROR, v184, v942, v186);
                    if (SHIBYTE(v892[0]) < 0)
                    {
                      operator delete(v890);
                    }
                  }

LABEL_732:
                  if (SHIBYTE(v898[0]) < 0)
                  {
                    operator delete(v896);
                  }
                }

                *this = 7;
                *(this + 4) = 0;
                if (SHIBYTE(v905) < 0)
                {
                  std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v906, v904[0], v905 & 0x7FFFFFFFFFFFFFFFLL);
                }

                v8 = 0;
LABEL_84:
                if (SHIBYTE(v911) < 0)
                {
                  (*(*v912 + 24))(v912, v910[0], v911 & 0x7FFFFFFFFFFFFFFFLL, 1);
                }

                goto LABEL_86;
              }

              v143 = vp::vx::io::Error::Error(&v908, &__dst);
              if (v911 >= 0)
              {
                v144 = HIBYTE(v911);
              }

              else
              {
                v144 = v910[1];
              }

              v145 = vp::get_log(v143);
              v146 = os_log_type_enabled(v145, OS_LOG_TYPE_ERROR);
              if (v144)
              {
                if (v146)
                {
                  v147 = vp::get_log_context_info(&v902, a2, "vp::vx::Voice_Processor]", 23);
                  if (v904[0] >= 0)
                  {
                    v148 = HIBYTE(v904[0]);
                  }

                  else
                  {
                    v148 = v903;
                  }

                  v149 = vp::get_log(v147);
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
                  {
                    v150 = SHIBYTE(v904[0]);
                    v151 = v902;
                    v152 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v908);
                    std::string::basic_string<std::string_view,0>(&v896, v152, v153);
                    if (v150 >= 0)
                    {
                      v155 = &v902;
                    }

                    else
                    {
                      v155 = v151;
                    }

                    if (v148)
                    {
                      v156 = " ";
                    }

                    else
                    {
                      v156 = "";
                    }

                    if (v898[0] >= 0)
                    {
                      v157 = &v896;
                    }

                    else
                    {
                      v157 = v896;
                    }

                    v158 = WORD2(v908);
                    v159 = HIWORD(v908);
                    v160 = vp::get_log_source_file_path(v909, v154);
                    if (v911 >= 0)
                    {
                      v161 = v910;
                    }

                    else
                    {
                      v161 = v910[0];
                    }

                    *v942 = 136316930;
                    *&v942[4] = v155;
                    *&v942[12] = 2080;
                    *&v942[14] = v156;
                    *&v942[22] = 2080;
                    v943 = "get required input frame count for downlink dynamics DSP";
                    LOWORD(v944) = 2080;
                    *(&v944 + 2) = v157;
                    WORD5(v944) = 1024;
                    HIDWORD(v944) = v158;
                    v945 = 1024;
                    v946 = v159;
                    v947 = 2080;
                    v948 = v160;
                    v949 = 2080;
                    v950 = v161;
                    v162 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                    v163 = v149;
                    v164 = 74;
                    goto LABEL_708;
                  }

                  goto LABEL_710;
                }
              }

              else if (v146)
              {
                v570 = vp::get_log_context_info(&v902, a2, "vp::vx::Voice_Processor]", 23);
                if (v904[0] >= 0)
                {
                  v571 = HIBYTE(v904[0]);
                }

                else
                {
                  v571 = v903;
                }

                v572 = vp::get_log(v570);
                if (os_log_type_enabled(v572, OS_LOG_TYPE_ERROR))
                {
                  v573 = SHIBYTE(v904[0]);
                  v574 = v902;
                  v575 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v908);
                  std::string::basic_string<std::string_view,0>(&v896, v575, v576);
                  if (v573 >= 0)
                  {
                    v578 = &v902;
                  }

                  else
                  {
                    v578 = v574;
                  }

                  if (v571)
                  {
                    v579 = " ";
                  }

                  else
                  {
                    v579 = "";
                  }

                  if (v898[0] >= 0)
                  {
                    v580 = &v896;
                  }

                  else
                  {
                    v580 = v896;
                  }

                  v581 = WORD2(v908);
                  v582 = HIWORD(v908);
                  v583 = vp::get_log_source_file_path(v909, v577);
                  *v942 = 136316674;
                  *&v942[4] = v578;
                  *&v942[12] = 2080;
                  *&v942[14] = v579;
                  *&v942[22] = 2080;
                  v943 = "get required input frame count for downlink dynamics DSP";
                  LOWORD(v944) = 2080;
                  *(&v944 + 2) = v580;
                  WORD5(v944) = 1024;
                  HIDWORD(v944) = v581;
                  v945 = 1024;
                  v946 = v582;
                  v947 = 2080;
                  v948 = v583;
                  v162 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                  v163 = v572;
                  v164 = 64;
LABEL_708:
                  _os_log_impl(&dword_2724B4000, v163, OS_LOG_TYPE_ERROR, v162, v942, v164);
                  if (SHIBYTE(v898[0]) < 0)
                  {
                    operator delete(v896);
                  }
                }

LABEL_710:
                if (SHIBYTE(v904[0]) < 0)
                {
                  operator delete(v902);
                }
              }

              *this = 7;
              *(this + 4) = 0;
              if (SHIBYTE(v911) < 0)
              {
                std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v912, v910[0], v911 & 0x7FFFFFFFFFFFFFFFLL);
              }

              v8 = 0;
LABEL_86:
              if ((v919 & 1) == 0 && SHIBYTE(v917) < 0)
              {
                (*(*v918 + 24))(v918, v916[0], v917 & 0x7FFFFFFFFFFFFFFFLL, 1);
              }

              if (v925)
              {
LABEL_92:
                if (v931)
                {
                  goto LABEL_95;
                }

                goto LABEL_93;
              }

LABEL_90:
              if (SHIBYTE(v923) < 0)
              {
                (*(*v924 + 24))(v924, v922[0], v923 & 0x7FFFFFFFFFFFFFFFLL, 1);
              }

              goto LABEL_92;
            }

            v121 = vp::vx::io::Error::Error(&__dst, &__p);
            if (v917 >= 0)
            {
              v122 = HIBYTE(v917);
            }

            else
            {
              v122 = v916[1];
            }

            v123 = vp::get_log(v121);
            v124 = os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
            if (v122)
            {
              if (v124)
              {
                v125 = vp::get_log_context_info(&v908, a2, "vp::vx::Voice_Processor]", 23);
                if (v910[0] >= 0)
                {
                  v126 = HIBYTE(v910[0]);
                }

                else
                {
                  v126 = v909;
                }

                v127 = vp::get_log(v125);
                if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
                {
                  v128 = SHIBYTE(v910[0]);
                  v129 = v908;
                  v130 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__dst);
                  std::string::basic_string<std::string_view,0>(&v902, v130, v131);
                  if (v128 >= 0)
                  {
                    v133 = &v908;
                  }

                  else
                  {
                    v133 = v129;
                  }

                  if (v126)
                  {
                    v134 = " ";
                  }

                  else
                  {
                    v134 = "";
                  }

                  if (v904[0] >= 0)
                  {
                    v135 = &v902;
                  }

                  else
                  {
                    v135 = v902;
                  }

                  v136 = WORD2(__dst);
                  v137 = HIWORD(__dst);
                  v138 = vp::get_log_source_file_path(v915, v132);
                  if (v917 >= 0)
                  {
                    v139 = v916;
                  }

                  else
                  {
                    v139 = v916[0];
                  }

                  *v942 = 136316930;
                  *&v942[4] = v133;
                  *&v942[12] = 2080;
                  *&v942[14] = v134;
                  *&v942[22] = 2080;
                  v943 = "get buffered output frame count for downlink dynamics DSP";
                  LOWORD(v944) = 2080;
                  *(&v944 + 2) = v135;
                  WORD5(v944) = 1024;
                  HIDWORD(v944) = v136;
                  v945 = 1024;
                  v946 = v137;
                  v947 = 2080;
                  v948 = v138;
                  v949 = 2080;
                  v950 = v139;
                  v140 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                  v141 = v127;
                  v142 = 74;
                  goto LABEL_686;
                }

                goto LABEL_688;
              }
            }

            else if (v124)
            {
              v556 = vp::get_log_context_info(&v908, a2, "vp::vx::Voice_Processor]", 23);
              if (v910[0] >= 0)
              {
                v557 = HIBYTE(v910[0]);
              }

              else
              {
                v557 = v909;
              }

              v558 = vp::get_log(v556);
              if (os_log_type_enabled(v558, OS_LOG_TYPE_ERROR))
              {
                v559 = SHIBYTE(v910[0]);
                v560 = v908;
                v561 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__dst);
                std::string::basic_string<std::string_view,0>(&v902, v561, v562);
                if (v559 >= 0)
                {
                  v564 = &v908;
                }

                else
                {
                  v564 = v560;
                }

                if (v557)
                {
                  v565 = " ";
                }

                else
                {
                  v565 = "";
                }

                if (v904[0] >= 0)
                {
                  v566 = &v902;
                }

                else
                {
                  v566 = v902;
                }

                v567 = WORD2(__dst);
                v568 = HIWORD(__dst);
                v569 = vp::get_log_source_file_path(v915, v563);
                *v942 = 136316674;
                *&v942[4] = v564;
                *&v942[12] = 2080;
                *&v942[14] = v565;
                *&v942[22] = 2080;
                v943 = "get buffered output frame count for downlink dynamics DSP";
                LOWORD(v944) = 2080;
                *(&v944 + 2) = v566;
                WORD5(v944) = 1024;
                HIDWORD(v944) = v567;
                v945 = 1024;
                v946 = v568;
                v947 = 2080;
                v948 = v569;
                v140 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
                v141 = v558;
                v142 = 64;
LABEL_686:
                _os_log_impl(&dword_2724B4000, v141, OS_LOG_TYPE_ERROR, v140, v942, v142);
                if (SHIBYTE(v904[0]) < 0)
                {
                  operator delete(v902);
                }
              }

LABEL_688:
              if (SHIBYTE(v910[0]) < 0)
              {
                operator delete(v908);
              }
            }

            *this = 7;
            *(this + 4) = 0;
            if (SHIBYTE(v917) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v918, v916[0], v917 & 0x7FFFFFFFFFFFFFFFLL);
            }

            v8 = 0;
            goto LABEL_90;
          }

          v99 = vp::vx::io::Error::Error(&__p, &v926);
          if (v923 >= 0)
          {
            v100 = HIBYTE(v923);
          }

          else
          {
            v100 = v922[1];
          }

          v101 = vp::get_log(v99);
          v102 = os_log_type_enabled(v101, OS_LOG_TYPE_ERROR);
          if (v100)
          {
            if (v102)
            {
              v103 = vp::get_log_context_info(&__dst, a2, "vp::vx::Voice_Processor]", 23);
              v104 = SHIBYTE(v916[0]);
              if (v916[0] >= 0)
              {
                v105 = HIBYTE(v916[0]);
              }

              else
              {
                v105 = v915;
              }

              v106 = vp::get_log(v103);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
              {
                v107 = __dst;
                v108 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__p);
                std::string::basic_string<std::string_view,0>(&v908, v108, v109);
                if (v104 >= 0)
                {
                  p_dst = &__dst;
                }

                else
                {
                  p_dst = v107;
                }

                if (v105)
                {
                  v112 = " ";
                }

                else
                {
                  v112 = "";
                }

                if (v910[0] >= 0)
                {
                  v113 = &v908;
                }

                else
                {
                  v113 = v908;
                }

                v114 = WORD2(__p);
                v115 = HIWORD(__p);
                v116 = vp::get_log_source_file_path(v921, v110);
                if (v923 >= 0)
                {
                  v117 = v922;
                }

                else
                {
                  v117 = v922[0];
                }

                *v942 = 136316930;
                *&v942[4] = p_dst;
                *&v942[12] = 2080;
                *&v942[14] = v112;
                *&v942[22] = 2080;
                v943 = "get required input frame count for downlink hardware DSP";
                LOWORD(v944) = 2080;
                *(&v944 + 2) = v113;
                WORD5(v944) = 1024;
                HIDWORD(v944) = v114;
                v945 = 1024;
                v946 = v115;
                v947 = 2080;
                v948 = v116;
                v949 = 2080;
                v950 = v117;
                v118 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
                v119 = v106;
                v120 = 74;
LABEL_663:
                _os_log_impl(&dword_2724B4000, v119, OS_LOG_TYPE_ERROR, v118, v942, v120);
                if (SHIBYTE(v910[0]) < 0)
                {
                  operator delete(v908);
                }

                LOBYTE(v104) = HIBYTE(v916[0]);
                goto LABEL_666;
              }

              goto LABEL_666;
            }
          }

          else if (v102)
          {
            v543 = vp::get_log_context_info(&__dst, a2, "vp::vx::Voice_Processor]", 23);
            v104 = SHIBYTE(v916[0]);
            if (v916[0] >= 0)
            {
              v544 = HIBYTE(v916[0]);
            }

            else
            {
              v544 = v915;
            }

            v545 = vp::get_log(v543);
            if (os_log_type_enabled(v545, OS_LOG_TYPE_ERROR))
            {
              v546 = __dst;
              v547 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(__p);
              std::string::basic_string<std::string_view,0>(&v908, v547, v548);
              if (v104 >= 0)
              {
                v550 = &__dst;
              }

              else
              {
                v550 = v546;
              }

              if (v544)
              {
                v551 = " ";
              }

              else
              {
                v551 = "";
              }

              if (v910[0] >= 0)
              {
                v552 = &v908;
              }

              else
              {
                v552 = v908;
              }

              v553 = WORD2(__p);
              v554 = HIWORD(__p);
              v555 = vp::get_log_source_file_path(v921, v549);
              *v942 = 136316674;
              *&v942[4] = v550;
              *&v942[12] = 2080;
              *&v942[14] = v551;
              *&v942[22] = 2080;
              v943 = "get required input frame count for downlink hardware DSP";
              LOWORD(v944) = 2080;
              *(&v944 + 2) = v552;
              WORD5(v944) = 1024;
              HIDWORD(v944) = v553;
              v945 = 1024;
              v946 = v554;
              v947 = 2080;
              v948 = v555;
              v118 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
              v119 = v545;
              v120 = 64;
              goto LABEL_663;
            }

LABEL_666:
            if ((v104 & 0x80) != 0)
            {
              operator delete(__dst);
            }
          }

          *this = 7;
          *(this + 4) = 0;
          if (SHIBYTE(v923) < 0)
          {
            std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v924, v922[0], v923 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v8 = 0;
LABEL_93:
          if (SHIBYTE(v929) < 0)
          {
            (*(*v930 + 24))(v930, v928[0], v929 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

LABEL_95:
          if (v939)
          {
            goto LABEL_98;
          }

          goto LABEL_96;
        }

        v77 = vp::vx::io::Error::Error(&v926, &v932);
        if (v929 >= 0)
        {
          v78 = HIBYTE(v929);
        }

        else
        {
          v78 = v928[1];
        }

        v79 = vp::get_log(v77);
        v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
        if (v78)
        {
          if (v80)
          {
            v81 = vp::get_log_context_info(&__p, a2, "vp::vx::Voice_Processor]", 23);
            v82 = SHIBYTE(v922[0]);
            if (v922[0] >= 0)
            {
              v83 = HIBYTE(v922[0]);
            }

            else
            {
              v83 = v921;
            }

            v84 = vp::get_log(v81);
            if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
            {
              v85 = __p;
              v86 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v926);
              std::string::basic_string<std::string_view,0>(&__dst, v86, v87);
              if (v82 >= 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = v85;
              }

              if (v83)
              {
                v90 = " ";
              }

              else
              {
                v90 = "";
              }

              if (v916[0] >= 0)
              {
                v91 = &__dst;
              }

              else
              {
                v91 = __dst;
              }

              v92 = WORD2(v926);
              v93 = HIWORD(v926);
              v94 = vp::get_log_source_file_path(v927, v88);
              if (v929 >= 0)
              {
                v95 = v928;
              }

              else
              {
                v95 = v928[0];
              }

              *v942 = 136316930;
              *&v942[4] = p_p;
              *&v942[12] = 2080;
              *&v942[14] = v90;
              *&v942[22] = 2080;
              v943 = "get buffered input frame count for downlink hardware DSP";
              LOWORD(v944) = 2080;
              *(&v944 + 2) = v91;
              WORD5(v944) = 1024;
              HIDWORD(v944) = v92;
              v945 = 1024;
              v946 = v93;
              v947 = 2080;
              v948 = v94;
              v949 = 2080;
              v950 = v95;
              v96 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
              v97 = v84;
              v98 = 74;
LABEL_640:
              _os_log_impl(&dword_2724B4000, v97, OS_LOG_TYPE_ERROR, v96, v942, v98);
              if (SHIBYTE(v916[0]) < 0)
              {
                operator delete(__dst);
              }

              LOBYTE(v82) = HIBYTE(v922[0]);
              goto LABEL_643;
            }

            goto LABEL_643;
          }
        }

        else if (v80)
        {
          v530 = vp::get_log_context_info(&__p, a2, "vp::vx::Voice_Processor]", 23);
          v82 = SHIBYTE(v922[0]);
          if (v922[0] >= 0)
          {
            v531 = HIBYTE(v922[0]);
          }

          else
          {
            v531 = v921;
          }

          v532 = vp::get_log(v530);
          if (os_log_type_enabled(v532, OS_LOG_TYPE_ERROR))
          {
            v533 = __p;
            v534 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v926);
            std::string::basic_string<std::string_view,0>(&__dst, v534, v535);
            if (v82 >= 0)
            {
              v537 = &__p;
            }

            else
            {
              v537 = v533;
            }

            if (v531)
            {
              v538 = " ";
            }

            else
            {
              v538 = "";
            }

            if (v916[0] >= 0)
            {
              v539 = &__dst;
            }

            else
            {
              v539 = __dst;
            }

            v540 = WORD2(v926);
            v541 = HIWORD(v926);
            v542 = vp::get_log_source_file_path(v927, v536);
            *v942 = 136316674;
            *&v942[4] = v537;
            *&v942[12] = 2080;
            *&v942[14] = v538;
            *&v942[22] = 2080;
            v943 = "get buffered input frame count for downlink hardware DSP";
            LOWORD(v944) = 2080;
            *(&v944 + 2) = v539;
            WORD5(v944) = 1024;
            HIDWORD(v944) = v540;
            v945 = 1024;
            v946 = v541;
            v947 = 2080;
            v948 = v542;
            v96 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
            v97 = v532;
            v98 = 64;
            goto LABEL_640;
          }

LABEL_643:
          if ((v82 & 0x80) != 0)
          {
            operator delete(__p);
          }
        }

        *this = 7;
        *(this + 4) = 0;
        if (SHIBYTE(v929) < 0)
        {
          std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v930, v928[0], v929 & 0x7FFFFFFFFFFFFFFFLL);
        }

        v8 = 0;
LABEL_96:
        if (SHIBYTE(v937) < 0)
        {
          (*(*v938 + 24))(v938, v936[0], v937 & 0x7FFFFFFFFFFFFFFFLL, 1);
        }

        goto LABEL_98;
      }

      v55 = vp::vx::io::Error::Error(&v932, buf);
      if (v937 >= 0)
      {
        v56 = HIBYTE(v937);
      }

      else
      {
        v56 = v936[1];
      }

      v57 = vp::get_log(v55);
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
      if (v56)
      {
        if (v58)
        {
          v59 = vp::get_log_context_info(&v926, a2, "vp::vx::Voice_Processor]", 23);
          v60 = SHIBYTE(v928[0]);
          if (v928[0] >= 0)
          {
            v61 = HIBYTE(v928[0]);
          }

          else
          {
            v61 = v927;
          }

          v62 = vp::get_log(v59);
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            v63 = v926;
            v64 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v932);
            std::string::basic_string<std::string_view,0>(&__p, v64, v65);
            if (v60 >= 0)
            {
              v67 = &v926;
            }

            else
            {
              v67 = v63;
            }

            if (v61)
            {
              v68 = " ";
            }

            else
            {
              v68 = "";
            }

            if (v922[0] >= 0)
            {
              v69 = &__p;
            }

            else
            {
              v69 = __p;
            }

            v70 = v933;
            v71 = v934;
            v72 = vp::get_log_source_file_path(v935, v66);
            if (v937 >= 0)
            {
              v73 = v936;
            }

            else
            {
              v73 = v936[0];
            }

            *v942 = 136316930;
            *&v942[4] = v67;
            *&v942[12] = 2080;
            *&v942[14] = v68;
            *&v942[22] = 2080;
            v943 = "get downlink hardware DSP I/O block size";
            LOWORD(v944) = 2080;
            *(&v944 + 2) = v69;
            WORD5(v944) = 1024;
            HIDWORD(v944) = v70;
            v945 = 1024;
            v946 = v71;
            v947 = 2080;
            v948 = v72;
            v949 = 2080;
            v950 = v73;
            v74 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s - %s";
            v75 = v62;
            v76 = 74;
LABEL_617:
            _os_log_impl(&dword_2724B4000, v75, OS_LOG_TYPE_ERROR, v74, v942, v76);
            if (SHIBYTE(v922[0]) < 0)
            {
              operator delete(__p);
            }

            LOBYTE(v60) = HIBYTE(v928[0]);
            goto LABEL_620;
          }

          goto LABEL_620;
        }
      }

      else if (v58)
      {
        v517 = vp::get_log_context_info(&v926, a2, "vp::vx::Voice_Processor]", 23);
        v60 = SHIBYTE(v928[0]);
        if (v928[0] >= 0)
        {
          v518 = HIBYTE(v928[0]);
        }

        else
        {
          v518 = v927;
        }

        v519 = vp::get_log(v517);
        if (os_log_type_enabled(v519, OS_LOG_TYPE_ERROR))
        {
          v520 = v926;
          v521 = vp::reflect_value_name_tag<vp::vx::io::Error_Code,128ul>(v932);
          std::string::basic_string<std::string_view,0>(&__p, v521, v522);
          if (v60 >= 0)
          {
            v524 = &v926;
          }

          else
          {
            v524 = v520;
          }

          if (v518)
          {
            v525 = " ";
          }

          else
          {
            v525 = "";
          }

          if (v922[0] >= 0)
          {
            v526 = &__p;
          }

          else
          {
            v526 = __p;
          }

          v527 = v933;
          v528 = v934;
          v529 = vp::get_log_source_file_path(v935, v523);
          *v942 = 136316674;
          *&v942[4] = v524;
          *&v942[12] = 2080;
          *&v942[14] = v525;
          *&v942[22] = 2080;
          v943 = "get downlink hardware DSP I/O block size";
          LOWORD(v944) = 2080;
          *(&v944 + 2) = v526;
          WORD5(v944) = 1024;
          HIDWORD(v944) = v527;
          v945 = 1024;
          v946 = v528;
          v947 = 2080;
          v948 = v529;
          v74 = "%s%sfailed to %s due to '%s' error at line %u column %u in %s";
          v75 = v519;
          v76 = 64;
          goto LABEL_617;
        }

LABEL_620:
        if ((v60 & 0x80) != 0)
        {
          operator delete(v926);
        }
      }

      *this = 7;
      *(this + 4) = 0;
      if (SHIBYTE(v937) < 0)
      {
        std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v938, v936[0], v937 & 0x7FFFFFFFFFFFFFFFLL);
      }

      v8 = 0;
LABEL_98:
      if ((v955 & 1) == 0 && SHIBYTE(v953) < 0)
      {
        (*(*v954 + 24))(v954, *&buf[16], v953 & 0x7FFFFFFFFFFFFFFFLL, 1);
      }

      if ((v941 & 1) == 0)
      {
        goto LABEL_103;
      }

      goto LABEL_102;
    }

    v38 = 0;
    v39 = a2 + 2700;
    while (1)
    {
      v40 = *(&xmmword_272756540 + v38);
      if (v40 > 3)
      {
        break;
      }

      v41 = 8 * v40;
      if (*(v39 + 8 * v40) != -1)
      {
        v42 = 1 << v40;
        v43 = *(a2 + 2592);
        if ((v43 & v42) == 0)
        {
          v44 = *(v39 + v41);
LABEL_115:
          v45 = v6[12];
          if (v44 >= (v6[13] - v45) >> 4)
          {
            *buf = 0x10012400000007;
            *&buf[8] = "/Library/Caches/com.apple.xbs/Sources/VoiceProcessor/Targets/Library/VoiceProcessor/vp/vx/io/Graph.cpp";
            v952 = 0;
            v953 = 0;
            *&buf[16] = 0;
            vp::Real_Time_Safe_Allocator<char>::Real_Time_Safe_Allocator(&v954);
            _ZNO2vp2vx2io5ErrorcvNS_8ExpectedIT_S2_EEIjEEv(v942, buf);
            if (SHIBYTE(v953) < 0)
            {
              std::allocator_traits<vp::Real_Time_Safe_Allocator<char>>::deallocate[abi:ne200100](v954, *&buf[16], v953 & 0x7FFFFFFFFFFFFFFFLL);
            }
          }

          else
          {
            (*(**(v45 + 16 * v44) + 88))(v942);
          }

          if ((v945 & 1) == 0 && SBYTE7(v944) < 0)
          {
            (*(**(&v944 + 1) + 24))(*(&v944 + 1), *&v942[16], v944 & 0x7FFFFFFFFFFFFFFFLL, 1);
          }

          goto LABEL_120;
        }

LABEL_113:
        *(a2 + 2592) = v43 & ~v42;
      }

LABEL_120:
      v38 += 4;
      if (v38 == 16)
      {
        goto LABEL_11;
      }
    }

    if (v40 >= 8)
    {
      std::__throw_out_of_range[abi:ne200100]("bitset test argument out of range");
    }

    v42 = 1 << v40;
    v43 = *(a2 + 2592);
    if ((v43 & v42) == 0)
    {
      v44 = 0;
      goto LABEL_115;
    }

    goto LABEL_113;
  }

LABEL_8:
  v8 = 0;
  *this = 8;
  *(this + 4) = 0;
LABEL_102:
  caulk::concurrent::shared_spin_lock::unlock_shared(v940);
LABEL_103:
  if (v8)
  {
    *this = 0;
    *(this + 4) = 1;
  }
}