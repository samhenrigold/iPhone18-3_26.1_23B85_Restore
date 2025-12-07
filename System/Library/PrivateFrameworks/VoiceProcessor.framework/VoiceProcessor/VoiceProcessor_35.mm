uint64_t std::__shared_ptr_pointer<vp::vx::IO_Port_Factory  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void std::__shared_ptr_pointer<vp::vx::IO_Port_Factory  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

double *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlddE_JddEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUlddE_JddEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JddEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C48B8;
  a2[1] = v2;
  return result;
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljjE_JjjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EEclEOS12_OS13_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZZNS3_15Voice_Processor27create_configuration_statesEvENK3__0clEvEUljjE_JjjEEEDaOT0_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JjjEEERNS4_13State_ManagerET_DpRKNSG_IT0_EEEUlPPKNS4_5ValueEPSZ_E_NS_9allocatorIS14_EEFvS12_S13_EE7__cloneEPNS0_6__baseIS17_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4870;
  a2[1] = v2;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EEclEOS1A_OS1B_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptionjEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EE7__cloneEPNS0_6__baseIS1F_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4828;
  a2[1] = v2;
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EEclEOS1A_OS1B_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIdEC1IZNS3_29Voice_Processor_State_Manager12create_stateIdRKZNS3_12_GLOBAL__N_125make_member_getter_lambdaI27AudioStreamBasicDescriptiondEEDaMT_T0_EUlRKSC_E_JN2CA17StreamDescriptionEEEESD_OSF_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSN_EEERNS4_13State_ManagerESE_DpRKNSP_IT0_EEEUlPPKNS4_5ValueEPS17_E_NS_9allocatorIS1C_EEFvS1A_S1B_EE7__cloneEPNS0_6__baseIS1F_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C47E0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_ZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationES7_EEDaMT_T0_EUlRKSE_E_JSE_EEESF_OSH_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_DpRKNSN_IT0_EEEUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EEclEOS18_OS19_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = (vp::vx::data_flow::Value::view_storage(**a2) + *(a1 + 8));
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

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionINS_8optionalIdEEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIS7_ZNS3_12_GLOBAL__N_125make_member_getter_lambdaINS3_20Global_ConfigurationES7_EEDaMT_T0_EUlRKSE_E_JSE_EEESF_OSH_DpRKNS4_5StateIT1_EEEUlDpRKT_E_JSE_EEERNS4_13State_ManagerESG_DpRKNSN_IT0_EEEUlPPKNS4_5ValueEPS15_E_NS_9allocatorIS1A_EEFvS18_S19_EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2881C4798;
  a2[1] = v2;
  return result;
}

int *caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_user_defaults_states(void)::$_0>(uint64_t **a1)
{
  v73 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v57, *(v1 + 864), *(v1 + 872), 0);
  v2 = *(v1 + 864);
  v3 = *(v1 + 872);
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

  v5 = *v57;
  if (*v57 == v2 + 32 * v3)
  {
    *v58 = "vp_enable_debug_features";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v58);
    v70 = &unk_2881C43D0;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v56[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 0;
    v71 = v64;
    v72 = v65;
    v65 = 0uLL;
    v59 = v5;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v5 = v67;
    *v57 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v58, v5 + 2);
  vp::vx::data_flow::State<void>::~State(v58);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v56, *(v1 + 864), *(v1 + 872), 1);
  v6 = *(v1 + 864);
  v7 = *(v1 + 872);
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

  v9 = *v56;
  if (*v56 == v6 + 32 * v7)
  {
    *v57 = "vp_enable_graph_audio_recorders";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v57);
    v70 = &unk_2881C44C8;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v55[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 1;
    v71 = v64;
    v72 = v65;
    v65 = 0uLL;
    v59 = v9;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v9 = v67;
    *v56 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v57, v9 + 2);
  vp::vx::data_flow::State<void>::~State(v57);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v55, *(v1 + 864), *(v1 + 872), 2);
  v10 = *(v1 + 864);
  v11 = *(v1 + 872);
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

  v13 = *v55;
  if (*v55 == v10 + 32 * v11)
  {
    *v56 = "vp_enable_graph_audio_recorders_predicate";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v56);
    v70 = &unk_2881C4510;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v54[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v59) = 2;
    LODWORD(v60) = v64;
    v14 = v65;
    v65 = 0uLL;
    LODWORD(v70) = 2;
    v71 = v64;
    v72 = v14;
    *(&v60 + 1) = 0;
    v61 = 0;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(&v67, (v1 + 856), v13, &v70);
    vp::vx::data_flow::State<void>::~State(&v71);
    v13 = v67;
    *v55 = v67;
    vp::vx::data_flow::State<void>::~State(&v60);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v56, v13 + 2);
  vp::vx::data_flow::State<void>::~State(v56);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v54, *(v1 + 864), *(v1 + 872), 3);
  v15 = *(v1 + 864);
  v16 = *(v1 + 872);
  if (!v15 && v16)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v17 = *v54;
  if (*v54 == v15 + 32 * v16)
  {
    *v55 = "EnableTelephonyMonitor";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v55);
    v70 = &unk_2881C4558;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v53[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 3;
    v71 = v64;
    v72 = v65;
    v65 = 0uLL;
    v59 = v17;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v17 = v67;
    *v54 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v55, v17 + 2);
  vp::vx::data_flow::State<void>::~State(v55);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v53, *(v1 + 864), *(v1 + 872), 4);
  v18 = *(v1 + 864);
  v19 = *(v1 + 872);
  if (!v18 && v19)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v20 = *v53;
  if (*v53 == v18 + 32 * v19)
  {
    *v54 = "EnableVPTelephonyMonitor";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v54);
    v70 = &unk_2881C45A0;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v52[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 4;
    v71 = v64;
    v72 = v65;
    v65 = 0uLL;
    v59 = v20;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v20 = v67;
    *v53 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v54, v20 + 2);
  vp::vx::data_flow::State<void>::~State(v54);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v52, *(v1 + 864), *(v1 + 872), 5);
  v21 = *(v1 + 864);
  v22 = *(v1 + 872);
  if (!v21 && v22)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v23 = *v52;
  if (*v52 == v21 + 32 * v22)
  {
    *v53 = "vp_enable_io_node_cpu_profilers";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v53);
    v70 = &unk_2881C45E8;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v51[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 5;
    v71 = v64;
    v72 = v65;
    v65 = 0uLL;
    v59 = v23;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v23 = v67;
    *v52 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v53, v23 + 2);
  vp::vx::data_flow::State<void>::~State(v53);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v51, *(v1 + 864), *(v1 + 872), 6);
  v24 = *(v1 + 864);
  v25 = *(v1 + 872);
  if (!v24 && v25)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v26 = *v51;
  if (*v51 == v24 + 32 * v25)
  {
    *v52 = "vp_enable_io_node_parameter_loggers";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v52);
    v70 = &unk_2881C4630;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v50[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    LODWORD(v67) = v59;
    v68 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v67;
    v65 = v68;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 6;
    v71 = v64;
    v72 = v65;
    v65 = 0uLL;
    v59 = v26;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v26 = v67;
    *v51 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v52, v26 + 2);
  vp::vx::data_flow::State<void>::~State(v52);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v50, *(v1 + 864), *(v1 + 872), 7);
  v27 = *(v1 + 864);
  v28 = *(v1 + 872);
  if (!v27 && v28)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v29 = *v50;
  if (*v50 == v27 + 32 * v28)
  {
    *v51 = "vp_enable_io_node_property_loggers";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v51);
    v70 = &unk_2881C4678;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v49[0] = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    v30 = v59;
    LODWORD(v67) = v59;
    v45 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v30;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 7;
    v71 = v30;
    v72 = v45;
    v65 = 0uLL;
    v59 = v29;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v29 = v67;
    *v50 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v51, v29 + 2);
  vp::vx::data_flow::State<void>::~State(v51);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(v49, *(v1 + 864), *(v1 + 872), 8);
  v31 = *(v1 + 864);
  v32 = *(v1 + 872);
  if (!v31 && v32)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v33 = *v49;
  if (*v49 == v31 + 32 * v32)
  {
    *v50 = "vp_disable_RPB";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v50);
    v70 = &unk_2881C46C0;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    LODWORD(v66) = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    v34 = v59;
    LODWORD(v67) = v59;
    v46 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v34;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 8;
    v71 = v34;
    v72 = v46;
    v65 = 0uLL;
    v59 = v33;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v33 = v67;
    *v49 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v50, v33 + 2);
  vp::vx::data_flow::State<void>::~State(v50);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(&v66, *(v1 + 864), *(v1 + 872), 9);
  v35 = *(v1 + 864);
  v36 = *(v1 + 872);
  if (!v35 && v36)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v37 = v66;
  if (v66 == (v35 + 32 * v36))
  {
    *v49 = "vp_enable_stevenote";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, v49);
    v70 = &unk_2881C4708;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    LODWORD(v62) = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    v38 = v59;
    LODWORD(v67) = v59;
    v47 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v38;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v70) = 9;
    v71 = v38;
    v72 = v47;
    v65 = 0uLL;
    v59 = v37;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(&v67, (v1 + 856), &v59, &v70);
    v37 = v67;
    v66 = v67;
    vp::vx::data_flow::State<void>::~State(&v71);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  vp::vx::data_flow::State<void>::State(v49, v37 + 2);
  vp::vx::data_flow::State<void>::~State(v49);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(&v66, *(v1 + 864), *(v1 + 872), 10);
  v39 = *(v1 + 864);
  v40 = *(v1 + 872);
  if (!v39 && v40)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v41 = v66;
  if (v66 == (v39 + 32 * v40))
  {
    v62 = "vp_stevenote_extra_latency";
    vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(v63, v1, &v62);
    v70 = &unk_2881C4750;
    LOBYTE(v71) = 0;
    *(&v72 + 1) = &v70;
    v69 = v63[0];
    vp::vx::data_flow::State_Manager::create_state(&v59, (v1 + 64), &v70);
    v42 = v59;
    LODWORD(v67) = v59;
    v48 = v60;
    v60 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v59);
    std::__function::__value_func<void ()(vp::vx::data_flow::Value const**,vp::vx::data_flow::Value*)>::~__value_func[abi:ne200100](&v70);
    v64 = v42;
    v68 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v67);
    vp::vx::data_flow::State<void>::~State(v63);
    LODWORD(v59) = 10;
    LODWORD(v60) = v42;
    v65 = 0uLL;
    LODWORD(v70) = 10;
    v71 = v42;
    v72 = v48;
    *(&v60 + 1) = 0;
    v61 = 0;
    boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(&v67, (v1 + 856), v41, &v70);
    vp::vx::data_flow::State<void>::~State(&v71);
    v41 = v67;
    v66 = v67;
    vp::vx::data_flow::State<void>::~State(&v60);
    vp::vx::data_flow::State<void>::~State(&v64);
  }

  v43 = vp::vx::data_flow::State<void>::State(&v70, v41 + 2);
  return vp::vx::data_flow::State<void>::~State(v43);
}

void sub_27271B504(_Unwind_Exception *a1)
{
  vp::vx::data_flow::State<void>::~State((v1 + 8));
  vp::vx::data_flow::State<void>::~State((v2 + 8));
  vp::vx::data_flow::State<void>::~State((v3 - 168));
  _Unwind_Resume(a1);
}

void *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::find(void *result, _DWORD *a2, unint64_t a3, int a4)
{
  if (!a2 && a3)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v4 = a2;
  if (a3)
  {
    v4 = a2;
    v5 = a3;
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
      v9 = *v7;
      v8 = v7 + 8;
      v5 += ~(v5 >> 1);
      if (v9 >= a4)
      {
        v5 = v6;
      }

      else
      {
        v4 = v8;
      }
    }

    while (v5);
  }

  v10 = &a2[8 * a3];
  *result = v4;
  if (v4 != v10)
  {
    if (!v4)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*v4 > a4)
    {
      *result = v10;
    }
  }

  return result;
}

void vp::vx::Voice_Processor::create_user_defaults_state<applesauce::CF::TypeRef,char const*>(uint64_t a1, __n128 *a2, uint64_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = vp::Service_Provider::get<vp::services::User_Defaults,(decltype(nullptr))0>(&v9, a2[28].n128_i64[1]);
  if (v9)
  {
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    vp::vx::Voice_Processor_State_Manager::create_state_for_SIGHUP_signal(v8, &a2[1]);
    operator new();
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v14[0] = std::pmr::get_default_resource(v5);
  v14[1] = 0;
  v14[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::TypeRef>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(v14) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v15, a2 + 4, v14);
  v6 = v15;
  v11 = v15;
  v7 = v16;
  v16 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::data_flow::Value::~Value(v14);
  v15 = v6;
  v12 = 0;
  v13 = 0;
  vp::vx::data_flow::State<void>::~State(&v11);
  *a1 = v6;
  *(a1 + 8) = v7;
  v16 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v15);
}

void sub_27271B8B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

unint64_t boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(int **a1, const char *a2, int *a3, uint64_t a4)
{
  result = *(a2 + 1);
  if (result > a3)
  {
    goto LABEL_35;
  }

  v7 = *(a2 + 2);
  if (result)
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

  v9 = (result + 32 * v7);
  if (v9 < a3)
  {
LABEL_35:
    __assert_rtn("insert_unique", "flat_tree.hpp", 879, "this->priv_in_range_or_end(hint)");
  }

  v23 = 0;
  if (v9 != a3)
  {
    if (!a3)
    {
      __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
    }

    if (*a4 >= *a3)
    {
      v24 = v9;
      result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_insert_unique_prepare(a3, &v24, a4, &v23);
      if (result)
      {
        goto LABEL_18;
      }

LABEL_32:
      if (!*(a2 + 1))
      {
        if (v23)
        {
          __assert_rtn("operator+", "vector.hpp", 188, "x.m_ptr || !off");
        }
      }

      *a1 = v23;
      return result;
    }
  }

  v23 = a3;
  if (result == a3)
  {
    goto LABEL_18;
  }

  if (!a3)
  {
    __assert_rtn("operator--", "vector.hpp", 174, "!!m_ptr");
  }

  v13 = *(a3 - 8);
  v11 = a3 - 8;
  v12 = v13;
  if (v13 < *a4)
  {
    goto LABEL_18;
  }

  if (*a4 >= v12)
  {
    v23 = v11;
    goto LABEL_32;
  }

  v24 = v11;
  result = boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_insert_unique_prepare(result, &v24, a4, &v23);
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_18:
  v14 = v23;
  v15 = *(a2 + 1);
  if (v15 > v23)
  {
    goto LABEL_36;
  }

  v16 = *(a2 + 2);
  if (!v15 && v16)
  {
    __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
  }

  v17 = v15 + 32 * v16;
  if (v23 > v17)
  {
LABEL_36:
    __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
  }

  v18 = *(a2 + 3);
  if (v18 < v16)
  {
    __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
  }

  if (v18 == v16)
  {
    v22 = v23;

    return boost::container::vector<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>(a1, a2, v22, a4);
  }

  else
  {
    if (v17 == v23)
    {
      *v17 = *a4;
      *(v17 + 8) = *(a4 + 8);
      *(v17 + 16) = *(a4 + 16);
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      ++*(a2 + 2);
    }

    else
    {
      v19 = v17 - 32;
      *v17 = *(v17 - 32);
      *(v17 + 8) = *(v17 - 24);
      *(v17 + 16) = *(v17 - 16);
      *(v17 - 16) = 0;
      *(v17 - 8) = 0;
      ++*(a2 + 2);
      if ((v17 - 32) != v14)
      {
        v20 = (v17 - 32);
        do
        {
          v21 = *(v20 - 8);
          v20 -= 8;
          *v19 = v21;
          vp::vx::data_flow::State<void>::~State((v19 + 8));
          *(v19 + 8) = *(v19 - 24);
          *(v19 + 16) = *(v19 - 16);
          *(v19 - 16) = 0;
          *(v19 - 8) = 0;
          v19 = v20;
        }

        while (v20 != v14);
      }

      *v14 = *a4;
      result = vp::vx::data_flow::State<void>::~State(v14 + 2);
      v14[2] = *(a4 + 8);
      *(v14 + 1) = *(a4 + 16);
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
    }

    *a1 = v14;
  }

  return result;
}

uint64_t boost::container::vector<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 3);
  if (v4 != *(a2 + 2))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  v5 = 0x7FFFFFFFFFFFFFFLL;
  if (v4 == 0x7FFFFFFFFFFFFFFLL)
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
  if (v7 < 0x7FFFFFFFFFFFFFFLL)
  {
    v5 = v7;
  }

  v9 = v8 > v5 ? v4 + 1 : v5;
  if (v8 >> 59)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v14 = *(a2 + 1);
  v15 = (*(**a2 + 16))(*a2, 32 * v9, 8);
  v16 = v15;
  v27[1] = a2;
  v27[2] = v9;
  v17 = *(a2 + 1);
  v18 = v17 + 32 * *(a2 + 2);
  v19 = v15;
  if (v17 != a3)
  {
    v20 = *(a2 + 1);
    v19 = v15;
    do
    {
      *v19 = *v20;
      *(v19 + 8) = *(v20 + 8);
      *(v19 + 16) = *(v20 + 16);
      *(v20 + 16) = 0;
      *(v20 + 24) = 0;
      v20 += 32;
      v19 += 32;
    }

    while (v20 != a3);
  }

  *v19 = *a4;
  *(v19 + 8) = *(a4 + 8);
  *(v19 + 16) = *(a4 + 16);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  if (v18 != a3)
  {
    v21 = (v19 + 48);
    v22 = a3;
    do
    {
      *(v21 - 4) = *v22;
      *(v21 - 2) = *(v22 + 8);
      *v21 = *(v22 + 16);
      v21 += 2;
      *(v22 + 16) = 0;
      *(v22 + 24) = 0;
      v22 += 32;
    }

    while (v22 != v18);
  }

  v27[0] = 0;
  if (v17)
  {
    v23 = *(a2 + 2);
    if (v23)
    {
      v24 = (v17 + 8);
      do
      {
        --v23;
        v24 = vp::vx::data_flow::State<void>::~State(v24) + 8;
      }

      while (v23);
    }

    (*(**a2 + 24))(*a2, *(a2 + 1), 32 * *(a2 + 3), 8);
  }

  v25 = *(a2 + 2) + 1;
  *(a2 + 1) = v16;
  *(a2 + 2) = v25;
  *(a2 + 3) = v9;
  result = boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::~scoped_array_deallocator(v27);
  *a1 = *(a2 + 1) + a3 - v14;
  return result;
}

void sub_27271BE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::~scoped_array_deallocator(va);
  _Unwind_Resume(a1);
}

uint64_t boost::container::dtl::scoped_array_deallocator<vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::~scoped_array_deallocator(uint64_t a1)
{
  if (*a1)
  {
    (*(***(a1 + 8) + 24))(**(a1 + 8), *a1, 32 * *(a1 + 16), 8);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_insert_unique_prepare(uint64_t a1, uint64_t *a2, int *a3, int **a4)
{
  v9 = a1;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::priv_lower_bound<boost::container::vec_iterator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>*,true>,vp::vx::User_Defaults_Key>(&v10, &v9, *a2, *a3);
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

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE10EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *vp::vx::data_flow::Value::view_storage(**a2);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = applesauce::CF::convert_to<unsigned int,0>(v4);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271C010(void *a1)
{
  __cxa_free_exception(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271BF9CLL);
}

BOOL vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::compare_value(uint64_t a1, const void **a2, const void **a3)
{
  v3 = *a2;
  v4 = *a3;
  result = (v3 | *a3) == 0;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    return CFEqual(v3, v4) != 0;
  }

  return result;
}

void vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::destroy_value(uint64_t a1, CFTypeRef *a2)
{
  if (*a2)
  {
    CFRelease(*a2);
  }
}

CFTypeRef vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::copy_value(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v4 = *a3;
  if (*a3)
  {
    result = CFRetain(*a3);
  }

  *a2 = v4;
  return result;
}

uint64_t vp::vx::data_flow::Value::Type_ID_Eraser<applesauce::CF::TypeRef>::view_storage(uint64_t a1, uint64_t a2)
{
  return a2;
}

{
  return a2;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE10EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4750;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v4 = *a3;
  v5 = **a2;
  if (v5[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v5);
  }

  vp::services::User_Defaults::default_app(&v12, *(a1 + 16));
  v6 = *(a1 + 8);
  v7 = strlen(v6);
  if (v6)
  {
    v16 = CFStringCreateWithBytes(0, v6, v7, 0x8000100u, 0);
    if (!v16)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  else
  {
    v16 = 0;
  }

  (*(*v12 + 32))(&cf);
  v9 = cf;
  if (cf)
  {
    CFRetain(cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  vp::vx::data_flow::Value::~Value(v4);
  *v4 = std::pmr::get_default_resource(v10);
  *(v4 + 1) = 0;
  *(v4 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::TypeRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v4);
  *result = v9;
  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4480;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EED0Ev(void *a1)
{
  *a1 = &unk_2881C4480;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF7TypeRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateIS8_PKcEENS4_5StateIT_EEOT0_EUlSI_E_JjEEEDaOSI_DpRKNSH_IT0_EEEUlDpRKT_E_JjEEERNS4_13State_ManagerESI_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EED1Ev(void *a1)
{
  *a1 = &unk_2881C4480;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::emplace_hint_unique<std::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::Function<BOOL>>>(int **a1, const char *a2, int **a3, int *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a4[2];
  v6 = *a4;
  v7 = v4;
  v8 = *(a4 + 1);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  boost::container::dtl::flat_tree<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>,boost::container::dtl::select1st<vp::vx::User_Defaults_Key>,std::less<vp::vx::User_Defaults_Key>,vp::Allocator<boost::container::dtl::pair<vp::vx::User_Defaults_Key,vp::vx::data_flow::State<void>>>>::insert_unique(a1, a2, *a3, &v6);
  return vp::vx::data_flow::State<void>::~State(&v7);
}

void sub_27271C5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE9EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271C654(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271C618);
}

void vp::vx::deserialize_plist<BOOL>(const __CFString **a1, BOOL *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = CFGetTypeID(v3);
  TypeID = CFNumberGetTypeID();
  v7 = *a1;
  if (v5 == TypeID)
  {
    if (v7)
    {
      *a2 = applesauce::CF::convert_to<unsigned int,0>(v7) == 1;
      return;
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  if (!v7)
  {
    goto LABEL_13;
  }

  v8 = CFGetTypeID(v7);
  if (v8 == CFStringGetTypeID())
  {
    if (!*a1)
    {
      goto LABEL_13;
    }

    applesauce::CF::convert_to<std::string,0>(&__str, *a1);
    *a2 = std::stoi(&__str, 0, 10) == 1;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (!*a1)
    {
      goto LABEL_13;
    }

    *a2 = applesauce::CF::convert_to<BOOL,0>(*a1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE9EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4708;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE8EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271C8E8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271C8ACLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE8EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C46C0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE7EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CA08(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271C9CCLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE7EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4678;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE6EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CB28(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CAECLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE6EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4630;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE5EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CC48(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CC0CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE5EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C45E8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE4EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CD68(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CD2CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE4EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C45A0;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE3EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271CE88(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CE4CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE3EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4558;
  *(a2 + 8) = *(result + 8);
  return result;
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE2EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKNS7_7TypeRefEE_JSJ_EEEDaOT_DpRKNSG_IT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESO_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EEclEOS15_OS16_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  if (*v4)
  {
    v5 = CFGetTypeID(*v4);
    if (v5 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  applesauce::CF::StringRef::from_get(&v11, v6);
  v7 = v11;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v8);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v7;
  return result;
}

void sub_27271D018(void *a1)
{
  __cxa_free_exception(v1);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271CF9CLL);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIN10applesauce2CF9StringRefEEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE2EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKNS7_7TypeRefEE_JSJ_EEEDaOT_DpRKNSG_IT0_EEEUlDpRKT_E_JSJ_EEERNS4_13State_ManagerESO_SU_EUlPPKNS4_5ValueEPS12_E_NS_9allocatorIS17_EEFvS15_S16_EE7__cloneEPNS0_6__baseIS1A_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C4510;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE1EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271D16C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271D130);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE1EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C44C8;
  *(a2 + 8) = *(result + 8);
  return result;
}

BOOL *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE0EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EEclEOS14_OS15_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = vp::vx::data_flow::Value::view_storage(**a2);
  v8 = 0;
  vp::vx::deserialize_plist<BOOL>(v4, &v8);
  v5 = v8;
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v6);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v5;
  return result;
}

void sub_27271D28C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x27271D250);
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIbEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZNS3_15Voice_Processor26create_user_defaults_stateILNS3_17User_Defaults_KeyE0EEENS4_5StateIDTclsr24User_Defaults_Key_TraitsIXT_EEE9get_valueEEEEvEUlRKN10applesauce2CF7TypeRefEE_JSI_EEEDaOT_DpRKNSD_IT0_EEEUlDpRKT_E_JSI_EEERNS4_13State_ManagerESN_ST_EUlPPKNS4_5ValueEPS11_E_NS_9allocatorIS16_EEFvS14_S15_EE7__cloneEPNS0_6__baseIS19_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C43D0;
  *(a2 + 8) = *(result + 8);
  return result;
}

void caulk::function_ref<void ()(void)>::functor_invoker<vp::vx::Voice_Processor::create_property_states(void)::$_0>(unint64_t **a1)
{
  v159 = *MEMORY[0x277D85DE8];
  v1 = **a1;
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v2 = v150;
  v150 = 0uLL;
  v156 = v2;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 0, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v142 = v144;
  v143 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v142);
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v3 = v150;
  v150 = 0uLL;
  v156 = v3;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 1, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v140 = v144;
  v141 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v140);
  LOBYTE(v153) = 1;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v4 = v150;
  v150 = 0uLL;
  v156 = v4;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 2, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v138 = v144;
  v139 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v138);
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v5 = v150;
  v150 = 0uLL;
  v156 = v5;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 3, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v136 = v144;
  v137 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v136);
  LOBYTE(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<BOOL>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v6 = v150;
  v150 = 0uLL;
  v156 = v6;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<BOOL>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 4, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v134 = v144;
  v135 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v134);
  if (*(v1 + 264) == 3)
  {
    LODWORD(v153) = 0;
    vp::vx::Voice_Processor_State_Manager::create_state<float>(&v144, (v1 + 16), &v153);
    vp::vx::data_flow::State<void>::State(&v149, &v144);
    LODWORD(default_resource) = v149;
    v7 = v150;
    v150 = 0uLL;
    v156 = v7;
    *&v147 = 0;
    *(&default_resource + 1) = 0;
    LODWORD(v155) = v149;
    LODWORD(v157) = 1;
    v158 = &vp::vx::Voice_Processor::Type_Converter<float>::get_shared_instance(void)::s_shared_instance;
    vp::vx::data_flow::State<void>::~State(&default_resource);
    vp::vx::Property_Manager::add_property((v1 + 968), 7, &v155);
    vp::vx::data_flow::State<void>::~State(&v155);
    vp::vx::data_flow::State<void>::~State(&v149);
    v132 = v144;
    v133 = v145;
    v145 = 0uLL;
    vp::vx::data_flow::State<void>::~State(&v144);
    vp::vx::data_flow::State<void>::~State(&v132);
  }

  (*(**(v1 + 472) + 16))(*(v1 + 472));
  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v8 = v145;
  v145 = 0uLL;
  v156 = v8;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property((v1 + 968), 8, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v130 = v153;
  v131 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v130);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v9 = v150;
  v150 = 0uLL;
  v156 = v9;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 9, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v128 = v144;
  v129 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  v10 = vp::vx::data_flow::State<void>::~State(&v128);
  default_resource = std::pmr::get_default_resource(v10);
  *&v147 = &vp::vx::data_flow::Value::type_id<vp::vx::Input_Port_Type>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v155, (v1 + 64), &default_resource);
  LODWORD(v149) = v155;
  v150 = v156;
  v156 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v144 = v149;
  v145 = v150;
  v150 = 0uLL;
  v11 = vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::data_flow::State<void>::State(v11, &v144);
  LODWORD(default_resource) = v149;
  v12 = v150;
  v150 = 0uLL;
  v156 = v12;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Input_Port_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 10, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v126 = v144;
  v127 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v13 = v150;
  v150 = 0uLL;
  v156 = v13;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 11, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v124[6] = v144;
  v125 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)12>(v124, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)12>(v124, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)13>(&v123, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)13>(&v123, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v123);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)14>(&v122, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)14>(&v122, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v122);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)15>(&v121, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)15>(&v121, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v121);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)16>(&v120, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)16>(&v120, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v120);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v14 = v150;
  v150 = 0uLL;
  v156 = v14;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 17, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v118 = v144;
  v119 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v118);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v15 = v150;
  v150 = 0uLL;
  v156 = v15;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 18, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v116 = v144;
  v117 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v116);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v16 = v150;
  v150 = 0uLL;
  v156 = v16;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 19, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v114 = v144;
  v115 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v114);
  cf = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v144, (v1 + 16), &cf);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v17 = v150;
  v150 = 0uLL;
  v156 = v17;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::StringRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 20, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v112 = v144;
  v113 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v112);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(&v110, v1, 0.0);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(&v110, v1, 0.0);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v110);
  vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(v109, v1, 1.0);
  vp::vx::data_flow::State<void>::~State(v109);
  v105 = 0;
  __p = 0;
  v106 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<std::vector<float>>(&v144, (v1 + 16), &__p);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v18 = v150;
  v150 = 0uLL;
  v156 = v18;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<std::vector<float>>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 21, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v107 = v144;
  v108 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v107);
  if (__p)
  {
    v105 = __p;
    operator delete(__p);
  }

  v101 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::ArrayRef>(&v144, (v1 + 16), &v101);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v19 = v150;
  v150 = 0uLL;
  v156 = v19;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::ArrayRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 22, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v102 = v144;
  v103 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v102);
  if (v101)
  {
    CFRelease(v101);
  }

  v98 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::DictionaryRef>(&v144, (v1 + 16), &v98);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v20 = v150;
  v150 = 0uLL;
  v156 = v20;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::DictionaryRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 23, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v99 = v144;
  v100 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v99);
  if (v98)
  {
    CFRelease(v98);
  }

  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v21 = v145;
  v145 = 0uLL;
  v156 = v21;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property((v1 + 968), 24, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v96 = v153;
  v97 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v96);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v22 = v150;
  v150 = 0uLL;
  v156 = v22;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 25, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v94 = v144;
  v95 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  v23 = vp::vx::data_flow::State<void>::~State(&v94);
  default_resource = std::pmr::get_default_resource(v23);
  *&v147 = &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v155, (v1 + 64), &default_resource);
  LODWORD(v149) = v155;
  v150 = v156;
  v156 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v144 = v149;
  v145 = v150;
  v150 = 0uLL;
  v24 = vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::data_flow::State<void>::State(v24, &v144);
  LODWORD(default_resource) = v149;
  v25 = v150;
  v150 = 0uLL;
  v156 = v25;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<vp::vx::Output_Port_Type>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 26, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v92 = v144;
  v93 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v26 = v150;
  v150 = 0uLL;
  v156 = v26;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 27, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v90[6] = v144;
  v91 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)28>(v90, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)28>(v90, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)39>(&v89, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)39>(&v89, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v89);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)40>(&v88, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)40>(&v88, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v88);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)41>(&v87, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)41>(&v87, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v87);
  v85 = 0;
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    v155 = 0;
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)42>(&v86, v1, &v155);
    if (v155)
    {
      CFRelease(v155);
    }
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v83, *(v1 + 456));
    if (v83)
    {
      default_resource = v1;
      *&v147 = vp::vx::get_output_port_uid;
      *(&v147 + 1) = v83;
      if (v84)
      {
        atomic_fetch_add_explicit((v84 + 8), 1uLL, memory_order_relaxed);
      }

      *(&default_resource + 1) = 0;
      *(&v147 + 1) = 0;
      v148 = 0;
      operator new();
    }

    v155 = 0;
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)42>(&v86, v1, &v155);
    if (v155)
    {
      CFRelease(v155);
    }

    if (v84)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v84);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v86);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)43>(&v83, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)43>(&v83, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v83);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)29>(&v82, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)29>(&v82, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v82);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)30>(&v81, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)30>(&v81, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v81);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)31>(&v80, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)31>(&v80, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v80);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)32>(&v79, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)32>(&v79, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v79);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)33>(&v78, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)33>(&v78, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v78);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)34>(&v77, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)34>(&v77, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v77);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)35>(&v76, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)35>(&v76, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v76);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)36>(&v75, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)36>(&v75, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v75);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)37>(&v74, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v153, *(v1 + 456));
    if (v153)
    {
      if (v154)
      {
        atomic_fetch_add_explicit((v154 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)37>(&v74, v1);
    if (v154)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v154);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v74);
  if (*(v1 + 360) | *(v1 + 361) | (*(v1 + 264) == 3))
  {
    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)38>(&v73, v1);
  }

  else
  {
    vp::Service_Provider::get<vp::services::Audio_Hardware,(decltype(nullptr))0>(&v151, *(v1 + 456));
    if (v151)
    {
      if (v152)
      {
        atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)38>(&v73, v1);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }
  }

  vp::vx::data_flow::State<void>::~State(&v73);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v27 = v150;
  v150 = 0uLL;
  v156 = v27;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 44, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v71 = v144;
  v72 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v71);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v28 = v150;
  v150 = 0uLL;
  v156 = v28;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 45, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v69 = v144;
  v70 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v69);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v29 = v150;
  v150 = 0uLL;
  v156 = v29;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 46, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v67 = v144;
  v68 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v67);
  v64 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::StringRef>(&v144, (v1 + 16), &v64);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v30 = v150;
  v150 = 0uLL;
  v156 = v30;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::StringRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 47, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v65 = v144;
  v66 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v65);
  if (v64)
  {
    CFRelease(v64);
  }

  v60 = 0;
  v59 = 0;
  v61 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<std::vector<float>>(&v144, (v1 + 16), &v59);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v31 = v150;
  v150 = 0uLL;
  v156 = v31;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<std::vector<float>>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 48, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v62 = v144;
  v63 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v62);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  v56 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::ArrayRef>(&v144, (v1 + 16), &v56);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v32 = v150;
  v150 = 0uLL;
  v156 = v32;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::ArrayRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 49, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v57 = v144;
  v58 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v57);
  if (v56)
  {
    CFRelease(v56);
  }

  v53 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::DictionaryRef>(&v144, (v1 + 16), &v53);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v33 = v150;
  v150 = 0uLL;
  v156 = v33;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<applesauce::CF::DictionaryRef>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 50, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v54 = v144;
  v55 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v54);
  if (v53)
  {
    CFRelease(v53);
  }

  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v34 = v145;
  v145 = 0uLL;
  v156 = v34;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property((v1 + 968), 51, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v51 = v153;
  v52 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v51);
  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v35 = v145;
  v145 = 0uLL;
  v156 = v35;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property((v1 + 968), 52, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v49 = v153;
  v50 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  v36 = vp::vx::data_flow::State<void>::~State(&v49);
  default_resource = std::pmr::get_default_resource(v36);
  *&v147 = &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id;
  v46 = 0;
  *vp::vx::data_flow::Value::allocate_storage(&default_resource) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v155, (v1 + 64), &default_resource);
  LODWORD(v149) = v155;
  v150 = v156;
  v156 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::Value::~Value(&default_resource);
  v144 = v149;
  v145 = v150;
  v150 = 0uLL;
  v37 = vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::data_flow::State<void>::State(v37, &v144);
  LODWORD(default_resource) = v149;
  v38 = v150;
  v150 = 0uLL;
  v156 = v38;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 53, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v47 = v144;
  v48 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v47);
  v148 = 0;
  default_resource = 0u;
  v147 = 0u;
  vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(&v153, (v1 + 16), &default_resource);
  vp::vx::data_flow::State<void>::State(&v144, &v153);
  LODWORD(v149) = v144;
  v39 = v145;
  v145 = 0uLL;
  v156 = v39;
  v150 = 0uLL;
  LODWORD(v155) = v144;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<CA::StreamDescription>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v149);
  vp::vx::Property_Manager::add_property((v1 + 968), 54, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v144);
  v44 = v153;
  v45 = v154;
  v154 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v153);
  vp::vx::data_flow::State<void>::~State(&v44);
  LODWORD(v153) = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v144, (v1 + 16), &v153);
  vp::vx::data_flow::State<void>::State(&v149, &v144);
  LODWORD(default_resource) = v149;
  v40 = v150;
  v150 = 0uLL;
  v156 = v40;
  *&v147 = 0;
  *(&default_resource + 1) = 0;
  LODWORD(v155) = v149;
  LODWORD(v157) = 1;
  v158 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&default_resource);
  vp::vx::Property_Manager::add_property((v1 + 968), 55, &v155);
  vp::vx::data_flow::State<void>::~State(&v155);
  vp::vx::data_flow::State<void>::~State(&v149);
  v42 = v144;
  v43 = v145;
  v145 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v144);
  vp::vx::data_flow::State<void>::~State(&v42);
  LOBYTE(v155) = 0;
  std::vector<char>::vector[abi:ne200100](&v41, &v155);
}

void sub_272723410(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)73>(uint64_t a1, __n128 *a2, float a3)
{
  v9 = a3;
  vp::vx::Voice_Processor_State_Manager::create_state<float>(&v7, a2 + 1, &v9);
  vp::vx::data_flow::State<void>::State(&v10, &v7);
  v16 = v10;
  v5 = v11;
  v11 = 0uLL;
  v12 = v10;
  v13 = v5;
  v17 = 0;
  v18 = 0;
  v14 = 1;
  v15 = &vp::vx::Voice_Processor::Type_Converter<float>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v16);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i8[8], 73, &v12);
  vp::vx::data_flow::State<void>::~State(&v12);
  vp::vx::data_flow::State<void>::~State(&v10);
  *a1 = v7;
  *(a1 + 8) = v8;
  v8 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v7);
}

void sub_272723CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

const void **vp::Block<void({block_pointer})(float,float)>::~Block(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    _Block_release(v2);
    *a1 = 0;
  }

  return a1;
}

uint64_t vp::vx::Property::String_Type_Converter<float>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<float>::convert_to_plist(uint64_t a1, int *a2, CFNumberRef *a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    CFRelease(v6);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<float>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<float>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

float vp::vx::Property::Property_List_Type_Converter<float>::convert_from_plist@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<float>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

float vp::vx::Voice_Processor::Blob_Type_Converter<float>::convert_from_blob(uint64_t a1, float *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_cast::bad_cast(exception);
  }

  result = **a3;
  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<float>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<float>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

float vp::vx::Property::Blob_Type_Converter<float>::convert_from_blob@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

_DWORD *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor28get_preferred_io_cycle_usageEvENK3__0clEvEUlRKT_E_JNS3_20Global_ConfigurationEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_EEERNS4_13State_ManagerESC_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EEclEOSZ_OS10_(uint64_t a1, vp::vx::data_flow::Value ***a2, vp::vx::data_flow::Value **a3)
{
  v3 = *a3;
  v4 = *(vp::vx::data_flow::Value::view_storage(**a2) + 104);
  vp::vx::data_flow::Value::~Value(v3);
  *v3 = std::pmr::get_default_resource(v5);
  *(v3 + 1) = 0;
  *(v3 + 2) = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v3);
  *result = v4;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIfEC1IZNS3_29Voice_Processor_State_Manager12create_stateIZZNS3_15Voice_Processor28get_preferred_io_cycle_usageEvENK3__0clEvEUlRKT_E_JNS3_20Global_ConfigurationEEEEDaOSC_DpRKNS4_5StateIT0_EEEUlDpRKT_E_JSG_EEERNS4_13State_ManagerESC_SO_EUlPPKNS4_5ValueEPSW_E_NS_9allocatorIS11_EEFvSZ_S10_EE7__cloneEPNS0_6__baseIS14_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881BFB20;
  *(a2 + 8) = *(result + 8);
  return result;
}

int *vp::vx::Voice_Processor_State_Manager::create_state<applesauce::CF::ArrayRef>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
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

void vp::vx::Voice_Processor::String_Type_Converter<applesauce::CF::ArrayRef>::convert_to_string(uint64_t a1, CFTypeRef *a2, void *a3)
{
  if (*a2)
  {
    v4 = CFCopyDescription(*a2);
    v28 = v4;
    applesauce::CF::details::CFString_get_value<true>(&v26, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v7 = (v6 + size);
    if (size)
    {
      v8 = size - 1;
      if (size == 1)
      {
LABEL_34:
        v17 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v17 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v18 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v7 - v18, v17 - v7);
        v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__l.__size_;
        }

        LOBYTE(v28) = 10;
        v21 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v20, v20 + v19, &v28);
        v22 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v22 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v21 - v23, v22 - v21);
        __p = v26;
        memset(&v26, 0, sizeof(v26));
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
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 == v6->__r_.__value_.__s.__data_[1])
        {
          if (v10 < 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (!--v8)
        {
          goto LABEL_34;
        }
      }
    }

    if (v6 != v7)
    {
      v12 = &v6->__r_.__value_.__s.__data_[2];
      if (&v6->__r_.__value_.__s.__data_[2] != v7)
      {
        v13 = MEMORY[0x277D85DE0];
        do
        {
          v14 = v6->__r_.__value_.__s.__data_[0];
          v15 = *v12;
          if (v14 == v15)
          {
            if (v14 < 0)
            {
              v16 = __maskrune(v14, 0x4000uLL);
            }

            else
            {
              v16 = *(v13 + 4 * v14 + 60) & 0x4000;
            }

            if (v16)
            {
              goto LABEL_32;
            }

            LOBYTE(v15) = *v12;
          }

          v6->__r_.__value_.__s.__data_[1] = v15;
          v6 = (v6 + 1);
LABEL_32:
          ++v12;
        }

        while (v12 != v7);
      }

      v7 = (&v6->__r_.__value_.__l.__data_ + 1);
    }

    goto LABEL_34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
}

void sub_272724A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<applesauce::CF::ArrayRef>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_to_plist(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&v6, "(null)");
    v4 = v6;
  }

  v5 = *a3;
  *a3 = v4;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

void *vp::vx::Property::Property_List_Type_Converter<applesauce::CF::ArrayRef>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272724E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_to_blob(uint64_t a1, const __CFArray **a2, uint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    goto LABEL_5;
  }

  Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], v4);
  v6 = Copy;
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 != CFArrayGetTypeID())
    {
      CFRelease(v6);
LABEL_5:
      v6 = 0;
    }
  }

  if (*(a3 + 8) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  **a3 = v6;

  return vp::Mutable_Blob::set_size(a3, 8uLL);
}

void sub_272724F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_from_blob(uint64_t a1, CFArrayRef *a2, CFArrayRef **a3)
{
  if (a3[1] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    CFRetain(**a3);
    cf = v4;
    v5 = CFGetTypeID(v4);
    if (v5 != CFArrayGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }

    Copy = CFArrayCreateCopy(*MEMORY[0x277CBECE8], v4);
    v4 = Copy;
    if (Copy)
    {
      v7 = CFGetTypeID(Copy);
      if (v7 != CFArrayGetTypeID())
      {
        CFRelease(v4);
        v4 = 0;
      }
    }
  }

  else
  {
    cf = 0;
  }

  v8 = *a2;
  *a2 = v4;
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2727250D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFArray const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void *vp::vx::Property::Blob_Type_Converter<applesauce::CF::ArrayRef>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::ArrayRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272725414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<BOOL>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<BOOL>::convert_to_plist(uint64_t a1, _BYTE *a2, const void **a3)
{
  v3 = MEMORY[0x277CBED28];
  if (!*a2)
  {
    v3 = MEMORY[0x277CBED10];
  }

  v4 = *a3;
  *a3 = *v3;
  if (v4)
  {
    CFRelease(v4);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<BOOL>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<BOOL>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

_BYTE *vp::vx::Property::Property_List_Type_Converter<BOOL>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<BOOL>::convert_from_blob(uint64_t a1, BOOL *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  *a2 = result != 0;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<BOOL>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<BOOL>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

_BYTE *vp::vx::Property::Blob_Type_Converter<BOOL>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<BOOL>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<applesauce::CF::StringRef>::convert_to_string(uint64_t a1, CFTypeRef *a2, void *a3)
{
  if (*a2)
  {
    v4 = CFCopyDescription(*a2);
    v28 = v4;
    applesauce::CF::details::CFString_get_value<true>(&v26, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v7 = (v6 + size);
    if (size)
    {
      v8 = size - 1;
      if (size == 1)
      {
LABEL_34:
        v17 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v17 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v18 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v7 - v18, v17 - v7);
        v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__l.__size_;
        }

        LOBYTE(v28) = 10;
        v21 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v20, v20 + v19, &v28);
        v22 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v22 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v21 - v23, v22 - v21);
        __p = v26;
        memset(&v26, 0, sizeof(v26));
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
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 == v6->__r_.__value_.__s.__data_[1])
        {
          if (v10 < 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (!--v8)
        {
          goto LABEL_34;
        }
      }
    }

    if (v6 != v7)
    {
      v12 = &v6->__r_.__value_.__s.__data_[2];
      if (&v6->__r_.__value_.__s.__data_[2] != v7)
      {
        v13 = MEMORY[0x277D85DE0];
        do
        {
          v14 = v6->__r_.__value_.__s.__data_[0];
          v15 = *v12;
          if (v14 == v15)
          {
            if (v14 < 0)
            {
              v16 = __maskrune(v14, 0x4000uLL);
            }

            else
            {
              v16 = *(v13 + 4 * v14 + 60) & 0x4000;
            }

            if (v16)
            {
              goto LABEL_32;
            }

            LOBYTE(v15) = *v12;
          }

          v6->__r_.__value_.__s.__data_[1] = v15;
          v6 = (v6 + 1);
LABEL_32:
          ++v12;
        }

        while (v12 != v7);
      }

      v7 = (&v6->__r_.__value_.__l.__data_ + 1);
    }

    goto LABEL_34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
}

void sub_272725EFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<applesauce::CF::StringRef>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_to_plist(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&v6, "(null)");
    v4 = v6;
  }

  v5 = *a3;
  *a3 = v4;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

void *vp::vx::Property::Property_List_Type_Converter<applesauce::CF::StringRef>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272726318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::StringRef>::convert_to_blob(uint64_t a1, const __CFString **a2, uint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    goto LABEL_5;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], v4);
  v6 = Copy;
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 != CFStringGetTypeID())
    {
      CFRelease(v6);
LABEL_5:
      v6 = 0;
    }
  }

  if (*(a3 + 8) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  **a3 = v6;

  return vp::Mutable_Blob::set_size(a3, 8uLL);
}

void sub_272726434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::StringRef>::convert_from_blob(uint64_t a1, CFStringRef *a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  applesauce::CF::StringRef::from_get(&theString, **a3);
  if (!theString)
  {
    goto LABEL_6;
  }

  Copy = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
  v5 = Copy;
  if (Copy)
  {
    v6 = CFGetTypeID(Copy);
    if (v6 != CFStringGetTypeID())
    {
      CFRelease(v5);
LABEL_6:
      v5 = 0;
    }
  }

  v7 = *a2;
  *a2 = v5;
  if (v7)
  {
    CFRelease(v7);
  }

  if (theString)
  {
    CFRelease(theString);
  }
}

void sub_272726530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::StringRef>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::StringRef>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void *vp::vx::Property::Blob_Type_Converter<applesauce::CF::StringRef>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::StringRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_272726838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::StringRef::~StringRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_string(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3, v5);
}

void sub_272726960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

void nlohmann::operator<<(void *a1, unsigned __int8 *a2)
{
  v2 = *MEMORY[0x277D85DE8];
  *(a1 + *(*a1 - 24) + 24) = 0;
  operator new();
}

void sub_272726B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::locale a11, char a12)
{
  std::locale::~locale(&a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<nlohmann::detail::output_stream_adapter<char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881C2210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743CBFA0);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_plist(uint64_t a1, int *a2, CFNumberRef *a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    CFRelease(v6);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::AirPods_Offload_Mode>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::AirPods_Offload_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272727570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_blob(int a1, void *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_from_blob(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void *vp::vx::Property::Blob_Type_Converter<AUVoiceIOOtherAudioDuckingConfiguration>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<AUVoiceIOOtherAudioDuckingConfiguration>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272727BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_blob(int a1, void **a2, vp::Mutable_Blob *this)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  **this = v4;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void sub_272727E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_from_blob(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(AUVoiceIOSpeechActivityEvent)>,0>(a2);
  *a2 = v5;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>::convert_from_blob(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  aBlock = 0;
  v4 = (*(*a1 + 40))(a1, &aBlock, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = aBlock;
  aBlock = 0;
  *storage = v6;
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_2727281A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::Block<void({block_pointer})(AUVoiceIOSpeechActivityEvent)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2727282E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_blob(int a1, void **a2, vp::Mutable_Blob *this)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  **this = v4;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void sub_272728518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::Block<void({block_pointer})(float,float)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_from_blob(uint64_t a1, void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  std::__destroy_at[abi:ne200100]<vp::Block<void ()(float,float)>,0>(a2);
  *a2 = v5;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void vp::vx::Property::Blob_Type_Converter<vp::Block<void({block_pointer})(float,float)>>::convert_from_blob(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  aBlock = 0;
  v4 = (*(*a1 + 40))(a1, &aBlock, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::Block<void({block_pointer})(float,float)>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = aBlock;
  aBlock = 0;
  *storage = v6;
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_2727288B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::Block<void({block_pointer})(float,float)>::~Block(va);
  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<float>(uint64_t a1, __n128 *a2, _DWORD *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<float>(void)::s_type_id;
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

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272728AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_blob(int a1, void *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (a3[1] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_cast::bad_cast(exception);
  }

  v3 = **a3;
  *a2 = v3;
  *(a2 + 4) = BYTE4(v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void *vp::vx::Property::Blob_Type_Converter<vp::vx::Spatial_Head_Tracking_Configuration>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  LODWORD(v6) = 0;
  BYTE4(v6) = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Spatial_Head_Tracking_Configuration>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_2727291BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<unsigned char>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned char>>::convert_to_plist(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&__p, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  v5 = __p;
  v4 = v14;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v16, v14 - __p);
  if (v5 != v4)
  {
    v6 = v17;
    do
    {
      v7 = *v5;
      if (v6 >= v18)
      {
        v8 = (v6 - v16) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v18 - v16) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v22 = &v16;
        if (v10)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v10);
        }

        v19[0] = 0;
        v19[1] = (8 * v8);
        v20 = 8 * v8;
        v21 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>((8 * v8), v7);
        v20 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v16, v19);
        v6 = v17;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v19);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(v6++, *v5);
      }

      v17 = v6;
      ++v5;
    }

    while (v5 != v4);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v16);
  v19[0] = &v16;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v19);
  v12 = *a3;
  *a3 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_2727294D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, char a16)
{
  a15 = &a12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,unsigned char,void,0>(CFNumberRef *a1, char a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberCharType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned char>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned char>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

double vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned char>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_2727297E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<unsigned char>>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v5 = 0uLL;
  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;
    operator delete(v6);
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = 0;
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned char>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned char>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

double vp::vx::Property::Blob_Type_Converter<std::vector<unsigned char>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned char>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_272729BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<CAOrientation>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CAOrientation>::convert_to_plist(uint64_t a1, int *a2, CFNumberRef *a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    CFRelease(v6);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CAOrientation>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<CAOrientation>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

_DWORD *vp::vx::Property::Property_List_Type_Converter<CAOrientation>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::Blob_Type_Converter<CAOrientation>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<CAOrientation>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<CAOrientation>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

_DWORD *vp::vx::Property::Blob_Type_Converter<CAOrientation>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CAOrientation>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_27272A634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<long long>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<long long>>::convert_to_plist(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  __p = 0;
  v14 = 0;
  v15 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
  v5 = __p;
  v4 = v14;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  std::vector<applesauce::CF::NumberRef>::reserve(&v16, (v14 - __p) >> 3);
  if (v5 != v4)
  {
    v6 = v17;
    do
    {
      v7 = *v5;
      if (v6 >= v18)
      {
        v8 = (v6 - v16) >> 3;
        if ((v8 + 1) >> 61)
        {
          std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
        }

        v9 = (v18 - v16) >> 2;
        if (v9 <= v8 + 1)
        {
          v9 = v8 + 1;
        }

        if (v18 - v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        v22 = &v16;
        if (v10)
        {
          std::allocator<applesauce::CF::StringRef>::allocate_at_least[abi:ne200100](v10);
        }

        v19[0] = 0;
        v19[1] = (8 * v8);
        v20 = 8 * v8;
        v21 = 0;
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long long,void,0>((8 * v8), v7);
        v20 += 8;
        std::vector<applesauce::CF::NumberRef>::__swap_out_circular_buffer(&v16, v19);
        v6 = v17;
        std::__split_buffer<applesauce::CF::NumberRef>::~__split_buffer(v19);
      }

      else
      {
        std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long long,void,0>(v6++, *v5);
      }

      v17 = v6;
      ++v5;
    }

    while (v5 != v4);
  }

  v11 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::NumberRef>(&v16);
  v19[0] = &v16;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](v19);
  v12 = *a3;
  *a3 = v11;
  if (v12)
  {
    CFRelease(v12);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void sub_27272A954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, char a16)
{
  a15 = &a12;
  std::vector<applesauce::CF::NumberRef>::__destroy_vector::operator()[abi:ne200100](&a15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

CFNumberRef std::allocator_traits<std::allocator<applesauce::CF::NumberRef>>::construct[abi:ne200100]<applesauce::CF::NumberRef,long long,void,0>(CFNumberRef *a1, uint64_t a2)
{
  valuePtr = a2;
  result = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
  *a1 = result;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return result;
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<long long>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<long long>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

double vp::vx::Property::Property_List_Type_Converter<std::vector<long long>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272AC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<long long>>::convert_to_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8) - v4;
  if (*(a3 + 8) < v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  memcpy(*a3, v4, v5);

  return vp::Mutable_Blob::set_size(a3, v5);
}

double vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<long long>>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if ((v3 & 7) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_cast::bad_cast(exception);
  }

  v9 = 0uLL;
  v10 = 0;
  if (v3)
  {
    std::vector<long long>::__vallocate[abi:ne200100](&v9, v3 >> 3);
  }

  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;
    operator delete(v5);
  }

  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  return result;
}

void sub_27272ADF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<long long>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<long long>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

double vp::vx::Property::Blob_Type_Converter<std::vector<long long>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<long long>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::String_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_string(uint64_t a1, CFTypeRef *a2, void *a3)
{
  if (*a2)
  {
    v4 = CFCopyDescription(*a2);
    v28 = v4;
    applesauce::CF::details::CFString_get_value<true>(&v26, v4);
    if (v4)
    {
      CFRelease(v4);
    }

    size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26.__r_.__value_.__r.__words[0];
    }

    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v26.__r_.__value_.__l.__size_;
    }

    v7 = (v6 + size);
    if (size)
    {
      v8 = size - 1;
      if (size == 1)
      {
LABEL_34:
        v17 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v26;
        }

        else
        {
          v17 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v18 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v7 - v18, v17 - v7);
        v19 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v20 = &v26;
        }

        else
        {
          v20 = v26.__r_.__value_.__r.__words[0];
        }

        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = v26.__r_.__value_.__l.__size_;
        }

        LOBYTE(v28) = 10;
        v21 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v20, v20 + v19, &v28);
        v22 = &v26 + HIBYTE(v26.__r_.__value_.__r.__words[2]);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &v26;
        }

        else
        {
          v22 = (v26.__r_.__value_.__r.__words[0] + v26.__r_.__value_.__l.__size_);
          v23 = v26.__r_.__value_.__r.__words[0];
        }

        std::string::erase(&v26, v21 - v23, v22 - v21);
        __p = v26;
        memset(&v26, 0, sizeof(v26));
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
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v25 = __p.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }

        return;
      }

      v9 = MEMORY[0x277D85DE0];
      while (1)
      {
        v10 = v6->__r_.__value_.__s.__data_[0];
        if (v10 == v6->__r_.__value_.__s.__data_[1])
        {
          if (v10 < 0 ? __maskrune(v10, 0x4000uLL) : *(v9 + 4 * v10 + 60) & 0x4000)
          {
            break;
          }
        }

        v6 = (v6 + 1);
        if (!--v8)
        {
          goto LABEL_34;
        }
      }
    }

    if (v6 != v7)
    {
      v12 = &v6->__r_.__value_.__s.__data_[2];
      if (&v6->__r_.__value_.__s.__data_[2] != v7)
      {
        v13 = MEMORY[0x277D85DE0];
        do
        {
          v14 = v6->__r_.__value_.__s.__data_[0];
          v15 = *v12;
          if (v14 == v15)
          {
            if (v14 < 0)
            {
              v16 = __maskrune(v14, 0x4000uLL);
            }

            else
            {
              v16 = *(v13 + 4 * v14 + 60) & 0x4000;
            }

            if (v16)
            {
              goto LABEL_32;
            }

            LOBYTE(v15) = *v12;
          }

          v6->__r_.__value_.__s.__data_[1] = v15;
          v6 = (v6 + 1);
LABEL_32:
          ++v12;
        }

        while (v12 != v7);
      }

      v7 = (&v6->__r_.__value_.__l.__data_ + 1);
    }

    goto LABEL_34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, "null", 4);
}

void sub_27272B440(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_plist(uint64_t a1, CFTypeRef *a2, const void **a3)
{
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  else
  {
    applesauce::CF::TypeRef::TypeRef(&v6, "(null)");
    v4 = v6;
  }

  v5 = *a3;
  *a3 = v4;
  v6 = v5;
  if (v5)
  {
    CFRelease(v5);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

void *vp::vx::Property::Property_List_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_27272B85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_blob(uint64_t a1, const __CFDictionary **a2, uint64_t a3)
{
  v4 = *a2;
  if (!v4)
  {
    goto LABEL_5;
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v4);
  v6 = Copy;
  if (Copy)
  {
    v7 = CFGetTypeID(Copy);
    if (v7 != CFDictionaryGetTypeID())
    {
      CFRelease(v6);
LABEL_5:
      v6 = 0;
    }
  }

  if (*(a3 + 8) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  **a3 = v6;

  return vp::Mutable_Blob::set_size(a3, 8uLL);
}

void sub_27272B978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_blob(uint64_t a1, CFDictionaryRef *a2, CFDictionaryRef **a3)
{
  if (a3[1] != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    CFRetain(**a3);
    cf = v4;
    v5 = CFGetTypeID(v4);
    if (v5 != CFDictionaryGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v11, "Could not construct");
    }

    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v4);
    v4 = Copy;
    if (Copy)
    {
      v7 = CFGetTypeID(Copy);
      if (v7 != CFDictionaryGetTypeID())
      {
        CFRelease(v4);
        v4 = 0;
      }
    }
  }

  else
  {
    cf = 0;
  }

  v8 = *a2;
  *a2 = v4;
  if (v8)
  {
    CFRelease(v8);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_27272BAC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void *vp::vx::Property::Blob_Type_Converter<applesauce::CF::DictionaryRef>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<applesauce::CF::DictionaryRef>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void sub_27272BE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<double>(uint64_t a1, __n128 *a2, void *a3)
{
  v11[0] = std::pmr::get_default_resource(a1);
  v11[1] = 0;
  v11[2] = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
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

uint64_t vp::vx::Property::String_Type_Converter<double>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<double>::convert_to_plist(uint64_t a1, uint64_t *a2, CFNumberRef *a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    CFRelease(v6);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<double>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<double>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

double vp::vx::Property::Property_List_Type_Converter<double>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<double>::convert_to_blob(int a1, void *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

double vp::vx::Voice_Processor::Blob_Type_Converter<double>::convert_from_blob(uint64_t a1, double *a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v5 = std::bad_cast::bad_cast(exception);
  }

  result = **a3;
  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<double>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<double>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

double vp::vx::Property::Blob_Type_Converter<double>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0.0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<double>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  result = v7;
  *storage = v7;
  return result;
}

void sub_27272C940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<unsigned int>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned int>>::convert_to_plist(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  CFArray = applesauce::CF::details::make_CFArrayRef<unsigned int>(__p);
  v5 = *a3;
  *a3 = CFArray;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = __p[0];
  if (__p[0])
  {

    operator delete(v6);
  }
}

void sub_27272CB60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<unsigned int>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned int>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

double vp::vx::Property::Property_List_Type_Converter<std::vector<unsigned int>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272CD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<unsigned int>>::convert_to_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8) - v4;
  if (*(a3 + 8) < v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  memcpy(*a3, v4, v5);

  return vp::Mutable_Blob::set_size(a3, v5);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<unsigned int>>::convert_from_blob(uint64_t a1, uint64_t a2, int **a3)
{
  v3 = a3[1];
  if ((v3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_cast::bad_cast(exception);
  }

  if (v3)
  {
    if (!((v3 >> 2) >> 62))
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](v3 >> 2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v5 = 0uLL;
  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;
    operator delete(v6);
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = 0;
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned int>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<unsigned int>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

double vp::vx::Property::Blob_Type_Converter<std::vector<unsigned int>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<unsigned int>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27272D238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<CA::StreamDescription>(uint64_t a1, __n128 *a2, __int128 *a3)
{
  v14[0] = std::pmr::get_default_resource(a1);
  v14[1] = 0;
  v14[2] = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v14);
  v7 = *a3;
  v8 = a3[1];
  *(storage + 32) = *(a3 + 4);
  *storage = v7;
  *(storage + 16) = v8;
  vp::vx::data_flow::State_Manager::create_state(&v15, a2 + 3, v14);
  LODWORD(a2) = v15;
  v11 = v15;
  v10 = v16;
  v16 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::data_flow::Value::~Value(v14);
  *a1 = a2;
  *(a1 + 8) = v10;
  v12 = 0;
  v13 = 0;
  return vp::vx::data_flow::State<void>::~State(&v11);
}

void vp::vx::Voice_Processor::String_Type_Converter<CA::StreamDescription>::convert_to_string(double a1, int8x8_t a2, uint64_t a3, void *a4, void *a5)
{
  CA::StreamDescription::AsString(&v27, a4, a1, a2);
  size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v27;
  }

  else
  {
    v7 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v8 = (v7 + size);
  if (size)
  {
    v9 = size - 1;
    if (size == 1)
    {
      goto LABEL_28;
    }

    v10 = MEMORY[0x277D85DE0];
    while (1)
    {
      v11 = v7->__r_.__value_.__s.__data_[0];
      if (v11 == v7->__r_.__value_.__s.__data_[1])
      {
        if (v11 < 0 ? __maskrune(v11, 0x4000uLL) : *(v10 + 4 * v11 + 60) & 0x4000)
        {
          break;
        }
      }

      v7 = (v7 + 1);
      if (!--v9)
      {
        goto LABEL_28;
      }
    }
  }

  if (v7 != v8)
  {
    v13 = &v7->__r_.__value_.__s.__data_[2];
    if (&v7->__r_.__value_.__s.__data_[2] != v8)
    {
      v14 = MEMORY[0x277D85DE0];
      do
      {
        v15 = v7->__r_.__value_.__s.__data_[0];
        v16 = *v13;
        if (v15 == v16)
        {
          if (v15 < 0)
          {
            v17 = __maskrune(v15, 0x4000uLL);
          }

          else
          {
            v17 = *(v14 + 4 * v15 + 60) & 0x4000;
          }

          if (v17)
          {
            goto LABEL_26;
          }

          LOBYTE(v16) = *v13;
        }

        v7->__r_.__value_.__s.__data_[1] = v16;
        v7 = (v7 + 1);
LABEL_26:
        ++v13;
      }

      while (v13 != v8);
    }

    v8 = (&v7->__r_.__value_.__l.__data_ + 1);
  }

LABEL_28:
  v18 = &v27 + HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v27;
  }

  else
  {
    v18 = (v27.__r_.__value_.__r.__words[0] + v27.__r_.__value_.__l.__size_);
    v19 = v27.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v27, v8 - v19, v18 - v8);
  v20 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v27;
  }

  else
  {
    v21 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v20 = v27.__r_.__value_.__l.__size_;
  }

  v29 = 10;
  v22 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v21, v21 + v20, &v29);
  v23 = &v27 + HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v27;
  }

  else
  {
    v23 = (v27.__r_.__value_.__r.__words[0] + v27.__r_.__value_.__l.__size_);
    v24 = v27.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v27, v22 - v24, v23 - v22);
  __p = v27;
  memset(&v27, 0, sizeof(v27));
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
    v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a5, p_p, v26);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }
}

void sub_27272D5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<CA::StreamDescription>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::StreamDescription>::convert_to_plist(double a1, int8x8_t a2, uint64_t a3, void *a4, CFStringRef *a5)
{
  CA::StreamDescription::AsString(&__p, a4, a1, a2);
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

  v8 = CFStringCreateWithBytes(0, p_p, size, 0x8000100u, 0);
  v12 = v8;
  if (!v8)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v9 = *a5;
  *a5 = v8;
  v12 = v9;
  if (v9)
  {
    CFRelease(v9);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_27272D828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::StreamDescription>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<CA::StreamDescription>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

__n128 vp::vx::Property::Property_List_Type_Converter<CA::StreamDescription>::convert_from_plist@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v4 = (*(*a1 + 32))(a1, &v8, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = v10;
  result = v9;
  *storage = v8;
  *(storage + 16) = result;
  *(storage + 32) = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<CA::StreamDescription>::convert_to_blob(int a1, __int128 *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 0x27uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  v4 = *this;
  v5 = *a2;
  v6 = a2[1];
  *(v4 + 32) = *(a2 + 4);
  *v4 = v5;
  *(v4 + 16) = v6;

  return vp::Mutable_Blob::set_size(this, 0x28uLL);
}

__n128 vp::vx::Voice_Processor::Blob_Type_Converter<CA::StreamDescription>::convert_from_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) != 40)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  result = **a3;
  v4 = *(*a3 + 16);
  *(a2 + 32) = *(*a3 + 32);
  *a2 = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<CA::StreamDescription>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<CA::StreamDescription>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

__n128 vp::vx::Property::Blob_Type_Converter<CA::StreamDescription>::convert_from_blob@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v4 = (*(*a1 + 40))(a1, &v8, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<CA::StreamDescription>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = v10;
  result = v9;
  *storage = v8;
  *(storage + 16) = result;
  *(storage + 32) = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Chat_Flavor>::convert_to_string(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3, v5);
}

void sub_27272DF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Chat_Flavor>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_to_plist(uint64_t a1, unsigned int *a2, CFNumberRef *a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Chat_Flavor>(*a2);
  valuePtr = v4;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = v5;
  v7 = *a3;
  *a3 = v6;
  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_27272E1FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  if (a1)
  {
    std::current_exception();
    v10.__ptr_ = &a10;
    std::rethrow_exception(v10);
    __break(1u);
  }

  _os_crash();
  __break(1u);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Chat_Flavor>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_to_blob(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Chat_Flavor>(*a2);

  return vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(a3 + 2, v4);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  if (result >= 3)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Chat_Flavor>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Chat_Flavor>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Operation_Mode>::convert_to_string(uint64_t a1, unsigned int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3, v5);
}

void sub_27272E97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Operation_Mode>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_to_plist(uint64_t a1, unsigned int *a2, CFNumberRef *a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(*a2);
  valuePtr = v4;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v6 = v5;
  v7 = *a3;
  *a3 = v6;
  if (v7)
  {
    CFRelease(v7);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Operation_Mode>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_to_blob(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  vp::vx::legacy_cast<vp::vx::Operation_Mode>(*a2);

  return vp::Blob_Setter<vp::Mutable_Blob>::set<unsigned int>(a3 + 2, v4);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  result = vp::Blob_Getter<vp::Blob>::get<unsigned int>(a3 + 1);
  if (result >= 9)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  *a2 = result;
  return result;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Operation_Mode>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Operation_Mode>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::vx::Beam_Direction>::convert_to_string(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5[0] = 5;
  v6 = v4;
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::assert_invariant(v5);
  nlohmann::operator<<(a3, v5);
}

void sub_27272F2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>::~basic_json(va);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::vx::Beam_Direction>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_to_plist(uint64_t a1, int *a2, CFNumberRef *a3)
{
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  v5 = v4;
  v6 = *a3;
  *a3 = v5;
  if (v6)
  {
    CFRelease(v6);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

_DWORD *vp::vx::Property::Property_List_Type_Converter<vp::vx::Beam_Direction>::convert_from_plist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 32))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_to_blob(int a1, _DWORD *a2, vp::Mutable_Blob *this)
{
  if (*(this + 1) <= 3uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v6 = std::bad_cast::bad_cast(exception);
  }

  **this = *a2;

  return vp::Mutable_Blob::set_size(this, 4uLL);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_from_blob(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  if (*(a3 + 8) != 4)
  {
    exception = __cxa_allocate_exception(8uLL);
    v4 = std::bad_cast::bad_cast(exception);
  }

  *a2 = **a3;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

_DWORD *vp::vx::Property::Blob_Type_Converter<vp::vx::Beam_Direction>::convert_from_blob@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v6 = 0;
  v4 = (*(*a1 + 40))(a1, &v6, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::vx::Beam_Direction>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(a3);
  *result = v6;
  return result;
}

void vp::vx::Voice_Processor::String_Type_Converter<CA::ChannelLayout>::convert_to_string(uint64_t a1, uint64_t a2, void *a3)
{
  vp::utility::encode_to_base_64(&v27, *a2, *(a2 + 8) - *a2);
  if ((v28 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v25 = v27;
  size = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v25;
  }

  else
  {
    v5 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v27.__r_.__value_.__l.__size_;
  }

  v6 = (v5 + size);
  if (size)
  {
    v7 = size - 1;
    if (size == 1)
    {
      goto LABEL_29;
    }

    v8 = MEMORY[0x277D85DE0];
    while (1)
    {
      v9 = v5->__r_.__value_.__s.__data_[0];
      if (v9 == v5->__r_.__value_.__s.__data_[1])
      {
        if (v9 < 0 ? __maskrune(v9, 0x4000uLL) : *(v8 + 4 * v9 + 60) & 0x4000)
        {
          break;
        }
      }

      v5 = (v5 + 1);
      if (!--v7)
      {
        goto LABEL_29;
      }
    }
  }

  if (v5 != v6)
  {
    v11 = &v5->__r_.__value_.__s.__data_[2];
    if (&v5->__r_.__value_.__s.__data_[2] != v6)
    {
      v12 = MEMORY[0x277D85DE0];
      do
      {
        v13 = v5->__r_.__value_.__s.__data_[0];
        v14 = *v11;
        if (v13 == v14)
        {
          if (v13 < 0)
          {
            v15 = __maskrune(v13, 0x4000uLL);
          }

          else
          {
            v15 = *(v12 + 4 * v13 + 60) & 0x4000;
          }

          if (v15)
          {
            goto LABEL_27;
          }

          LOBYTE(v14) = *v11;
        }

        v5->__r_.__value_.__s.__data_[1] = v14;
        v5 = (v5 + 1);
LABEL_27:
        ++v11;
      }

      while (v11 != v6);
    }

    v6 = (&v5->__r_.__value_.__l.__data_ + 1);
  }

LABEL_29:
  v16 = &v25 + HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v25;
  }

  else
  {
    v16 = (v25.__r_.__value_.__r.__words[0] + v25.__r_.__value_.__l.__size_);
    v17 = v25.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v25, v6 - v17, v16 - v6);
  v18 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v25;
  }

  else
  {
    v19 = v25.__r_.__value_.__r.__words[0];
  }

  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v25.__r_.__value_.__l.__size_;
  }

  v27.__r_.__value_.__s.__data_[0] = 10;
  v20 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(v19, v19 + v18, &v27);
  v21 = &v25 + HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v25;
  }

  else
  {
    v21 = (v25.__r_.__value_.__r.__words[0] + v25.__r_.__value_.__l.__size_);
    v22 = v25.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&v25, v20 - v22, v21 - v20);
  __p = v25;
  memset(&v25, 0, sizeof(v25));
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
    v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, p_p, v24);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_27272FDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<CA::ChannelLayout>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::ChannelLayout>::convert_to_plist(uint64_t a1, uint64_t a2, const void **a3)
{
  applesauce::CF::make_DataRef(&cf, *a2, *(a2 + 8) - *a2);
  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v5 = *a3;
  *a3 = v4;
  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<CA::ChannelLayout>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<CA::ChannelLayout>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

void sub_272730230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<CA::ChannelLayout>::convert_from_blob(uint64_t a1, uint64_t a2, unsigned int **a3)
{
  v3 = a3[1];
  if (v3 > 0x1F)
  {
    v4 = (*a3)[2];
    if (v4)
    {
      if (v3 == (20 * (v4 - 1) + 32))
      {
        goto LABEL_4;
      }
    }

    else if (v3 == 32)
    {
LABEL_4:
      operator new();
    }
  }

  exception = __cxa_allocate_exception(8uLL);
  v6 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Blob_Type_Converter<CA::ChannelLayout>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<CA::ChannelLayout>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<CA::ChannelLayout>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void sub_2727306C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::String_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_string(uint64_t a1, const unsigned __int8 *a2, void *a3)
{
  vp::utility::encode_to_base_64(__p, a2, 8);
  if ((v8 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v5 = v7;
  }

  else
  {
    v5 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a3, v4, v5);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_272730810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Property::String_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_blob(int a1, void **a2, vp::Mutable_Blob *this)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  if (*(this + 1) <= 7uLL)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  **this = v4;

  return vp::Mutable_Blob::set_size(this, 8uLL);
}

void sub_272730A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>::~Block(va);
  _Unwind_Resume(a1);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_from_blob(uint64_t a1, const void **a2, uint64_t a3)
{
  if (*(a3 + 8) != 8)
  {
    exception = __cxa_allocate_exception(8uLL);
    v7 = std::bad_cast::bad_cast(exception);
  }

  v4 = **a3;
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  std::__destroy_at[abi:ne200100]<vp::Block<int ()(AudioBufferList *,AudioTimeStamp *,unsigned int *)>,0>(a2);
  *a2 = v5;
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

void vp::vx::Property::Blob_Type_Converter<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>::convert_from_blob(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  aBlock = 0;
  v4 = (*(*a1 + 40))(a1, &aBlock, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  v6 = aBlock;
  aBlock = 0;
  *storage = v6;
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_272730DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  vp::Block<int({block_pointer})(AudioBufferList *,AudioTimeStamp *,unsigned int *)>::~Block(va);
  _Unwind_Resume(a1);
}

int *vp::vx::Voice_Processor_State_Manager::create_state<std::vector<float>>(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v12[0] = std::pmr::get_default_resource(a1);
  v12[1] = 0;
  v12[2] = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(v12);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  *storage = *a3;
  storage[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  vp::vx::data_flow::State_Manager::create_state(&v13, a2 + 3, v12);
  LODWORD(a2) = v13;
  v9 = v13;
  v8 = v14;
  v14 = 0uLL;
  vp::vx::data_flow::State<void>::~State(&v13);
  vp::vx::data_flow::Value::~Value(v12);
  *a1 = a2;
  *(a1 + 8) = v8;
  v10 = 0;
  v11 = 0;
  return vp::vx::data_flow::State<void>::~State(&v9);
}

void sub_272731084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__destroy_vector::operator()[abi:ne200100](va);
  operator delete(v5);
  _Unwind_Resume(a1);
}

uint64_t vp::vx::Property::String_Type_Converter<std::vector<float>>::convert_to_string(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 24);

  return v6(a1, v5, a3);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<float>>::convert_to_plist(uint64_t a1, uint64_t a2, CFArrayRef *a3)
{
  memset(__p, 0, sizeof(__p));
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  CFArray = applesauce::CF::details::make_CFArrayRef<float>(__p);
  v5 = *a3;
  *a3 = CFArray;
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = __p[0];
  if (__p[0])
  {

    operator delete(v6);
  }
}

void sub_2727312A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vp::vx::Voice_Processor::Property_List_Type_Converter<std::vector<float>>::convert_from_plist()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_cast::bad_cast(exception);
}

uint64_t vp::vx::Property::Property_List_Type_Converter<std::vector<float>>::convert_to_plist@<X0>(uint64_t (****this)()@<X1>, uint64_t a2@<X0>, void *a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v9 = 0;
    memset(v12, 0, sizeof(v12));
    v7 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    v10 = 134217984;
    v11 = 0;
    _os_log_send_and_compose_impl(v8, &v9, v12, 80, &dword_2724B4000, v7, 16, "assertion failure: tvalue != nullptr -> %llu", &v10);
    _os_crash_msg();
    __break(1u);
  }

  return (*(*a2 + 40))(a2, v5, a3);
}

double vp::vx::Property::Property_List_Type_Converter<std::vector<float>>::convert_from_plist@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 32))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_2727314D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<float>>::convert_to_blob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *(a2 + 8) - v4;
  if (*(a3 + 8) < v5)
  {
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
  }

  memcpy(*a3, v4, v5);

  return vp::Mutable_Blob::set_size(a3, v5);
}

void vp::vx::Voice_Processor::Blob_Type_Converter<std::vector<float>>::convert_from_blob(uint64_t a1, uint64_t a2, int **a3)
{
  v3 = a3[1];
  if ((v3 & 3) != 0)
  {
    exception = __cxa_allocate_exception(8uLL);
    v8 = std::bad_cast::bad_cast(exception);
  }

  if (v3)
  {
    if (!((v3 >> 2) >> 62))
    {
      std::allocator<float>::allocate_at_least[abi:ne200100](v3 >> 2);
    }

    std::vector<std::function<std::unique_ptr<VoiceProcessorBase> ()(std::unique_ptr<VoiceProcessorBase>)>>::__throw_length_error[abi:ne200100]();
  }

  v5 = 0uLL;
  v6 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v6;
    operator delete(v6);
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = 0;
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<float>>::convert_to_blob_size(uint64_t a1, uint64_t (****this)())
{
  v12 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v3 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v8 = 0;
    memset(v11, 0, sizeof(v11));
    v6 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v9 = 134217984;
    v10 = 0;
    _os_log_send_and_compose_impl(v7, &v8, v11, 80, &dword_2724B4000, v6, 16, "assertion failure: tvalue != nullptr -> %llu", &v9);
    _os_crash_msg();
    __break(1u);
  }

  v4 = *(*a1 + 56);

  return v4(a1, v3);
}

uint64_t vp::vx::Property::Blob_Type_Converter<std::vector<float>>::convert_to_blob(uint64_t a1, uint64_t (****this)(), uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (this[2] != &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id || (v5 = vp::vx::data_flow::Value::view_storage(this)) == 0)
  {
    v10 = 0;
    memset(v13, 0, sizeof(v13));
    v8 = MEMORY[0x277D86220];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    v11 = 134217984;
    v12 = 0;
    _os_log_send_and_compose_impl(v9, &v10, v13, 80, &dword_2724B4000, v8, 16, "assertion failure: tvalue != nullptr -> %llu", &v11);
    _os_crash_msg();
    __break(1u);
  }

  v6 = *(*a1 + 48);

  return v6(a1, v5, a3);
}

double vp::vx::Property::Blob_Type_Converter<std::vector<float>>::convert_from_blob@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, vp::vx::data_flow::Value *a3@<X8>)
{
  v7 = 0uLL;
  v8 = 0;
  v4 = (*(*a1 + 40))(a1, &v7, a2);
  *a3 = std::pmr::get_default_resource(v4);
  *(a3 + 1) = 0;
  *(a3 + 2) = &vp::vx::data_flow::Value::type_id<std::vector<float>>(void)::s_type_id;
  storage = vp::vx::data_flow::Value::allocate_storage(a3);
  *storage = 0;
  storage[1] = 0;
  storage[2] = 0;
  result = *&v7;
  *storage = v7;
  storage[2] = v8;
  return result;
}

void sub_27273197C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)38>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i8[8], 38, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272731AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EEclEOS1N_OS1O_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v70 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<vp::vx::Output_Port_Type>(void)::s_type_id)
  {
    v9 = vp::vx::data_flow::Value::view_storage(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v4[2];
  if (v10[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v10);
  }

  v11 = v4[3];
  if (v11[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v11);
  }

  v12 = *v7;
  v13 = *v9;
  v14 = *(a1 + 8);
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  v17 = vp::vx::legacy_cast<vp::vx::Output_Port_Type>(v13);
  v19 = v16(v15, v12, v18, v17);
  v20 = v19;
  if ((v19 & 0x100000000) != 0)
  {
    v21 = v19;
    if (!v12)
    {
      goto LABEL_42;
    }

    goto LABEL_16;
  }

  if (v12)
  {
    log = vp::get_log(v19);
    v19 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      log_context_info = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v41 = v53;
      v42 = v53;
      if ((v53 & 0x80u) != 0)
      {
        v41 = v52;
      }

      v48 = v41;
      v43 = vp::get_log(log_context_info);
      v19 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        v47 = __p;
        vp::vx::detail::to_string<vp::vx::Output_Port_Type>(&v50, v13);
        p_p = &__p;
        if (v42 < 0)
        {
          p_p = v47;
        }

        v55 = p_p;
        v45 = "";
        *buf = 136316930;
        if (v48)
        {
          v45 = " ";
        }

        v56 = 2080;
        v46 = &v50;
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v46 = v50.__r_.__value_.__r.__words[0];
        }

        v57 = v45;
        v58 = 1024;
        v59 = 38;
        v60 = 1040;
        v61 = 48;
        v62 = 2080;
        v63 = "Ref_Virtual_Audio_Stream_Physical_Stream_Latency]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v46;
        v68 = 1024;
        LODWORD(v69) = v20;
        _os_log_impl(&dword_2724B4000, v43, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u, port type %s with status %u", buf, 0x42u);
        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        LOBYTE(v42) = v53;
      }

      if ((v42 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

  v21 = *(a1 + 16);
  if (v12)
  {
LABEL_16:
    v22 = vp::get_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = vp::get_log_context_info(&__p, v14, "vp::vx::Voice_Processor]", 23);
      v24 = v53;
      v25 = v53;
      v26 = v52;
      v27 = vp::get_log(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (v25 >= 0)
        {
          v28 = v24;
        }

        else
        {
          v28 = v26;
        }

        if (v25 >= 0)
        {
          v29 = &__p;
        }

        else
        {
          v29 = __p;
        }

        if (v28)
        {
          v30 = " ";
        }

        else
        {
          v30 = "";
        }

        v31 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(v13) | 0x100000000;
        if ((v31 & 0x100000000) != 0)
        {
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        std::to_string(&v50, v32);
        v33 = SHIBYTE(v50.__r_.__value_.__r.__words[2]);
        v34 = v50.__r_.__value_.__r.__words[0];
        std::to_string(&v49, v21);
        v35 = &v50;
        if (v33 < 0)
        {
          v35 = v34;
        }

        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v49;
        }

        else
        {
          v36 = v49.__r_.__value_.__r.__words[0];
        }

        *buf = 136316930;
        v55 = v29;
        v56 = 2080;
        v57 = v30;
        v58 = 1024;
        v59 = 38;
        v60 = 1040;
        v61 = 48;
        v62 = 2080;
        v63 = "Ref_Virtual_Audio_Stream_Physical_Stream_Latency]";
        v64 = 1024;
        v65 = v12;
        v66 = 2080;
        v67 = v35;
        v68 = 2080;
        v69 = v36;
        _os_log_impl(&dword_2724B4000, v27, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u, port type %s is %s", buf, 0x46u);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v50.__r_.__value_.__l.__data_);
        }

        LOBYTE(v25) = v53;
      }

      if ((v25 & 0x80) != 0)
      {
        operator delete(__p);
      }
    }
  }

LABEL_42:
  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v37);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v21;
  return result;
}

void sub_272731F58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x272731DA4);
  }

  _Unwind_Resume(exception_object);
}

std::string *vp::vx::detail::to_string<vp::vx::Output_Port_Type>(std::string *a1, uint64_t a2)
{
  v3 = vp::vx::Legacy<vp::vx::Output_Port_Type>::cast(a2) | 0x100000000;
  if ((v3 & 0x100000000) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return std::to_string(a1, v4);
}

void sub_272732058(int a1)
{
  if (a1)
  {
    __cxa_end_catch();
  }

  else
  {
    _os_crash();
    __break(1u);
  }

  JUMPOUT(0x272732028);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EE7__cloneEPNS0_6__baseIS1S_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2881C31E0;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EED0Ev(void *a1)
{
  *a1 = &unk_2881C31E0;
  v1 = a1[5];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2743CBFA0);
}

void *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE38ENS3_16Output_Port_TypeEEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISH_iEERKNS2_8services14Audio_HardwareEjjERKNSE_IjEERKNSE_IT0_EESH_EUlT_SU_DpT1_E_JjSD_jjEEEDaOSU_DpRKNSE_ISZ_EEEUlDpRKT_E_JjSD_jjEEERNS4_13State_ManagerESY_DpRKNSE_IT0_EEEUlPPKNS4_5ValueEPS1K_E_NS_9allocatorIS1P_EEFvS1N_S1O_EED1Ev(void *a1)
{
  *a1 = &unk_2881C31E0;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

int *vp::vx::Voice_Processor::create_property_state<(vp::vx::Property_ID)37>(uint64_t a1, __n128 *a2)
{
  v8 = 0;
  vp::vx::Voice_Processor_State_Manager::create_state<unsigned int>(&v6, a2 + 1, &v8);
  vp::vx::data_flow::State<void>::State(&v9, &v6);
  v15 = v9;
  v4 = v10;
  v10 = 0uLL;
  v11 = v9;
  v12 = v4;
  v16 = 0;
  v17 = 0;
  v13 = 1;
  v14 = &vp::vx::Voice_Processor::Type_Converter<unsigned int>::get_shared_instance(void)::s_shared_instance;
  vp::vx::data_flow::State<void>::~State(&v15);
  vp::vx::Property_Manager::add_property(&a2[60].n128_i8[8], 37, &v11);
  vp::vx::data_flow::State<void>::~State(&v11);
  vp::vx::data_flow::State<void>::~State(&v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  v7 = 0uLL;
  return vp::vx::data_flow::State<void>::~State(&v6);
}

void sub_272732308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  vp::vx::data_flow::State<void>::~State(va2);
  vp::vx::data_flow::State<void>::~State(va1);
  vp::vx::data_flow::State<void>::~State(va);
  _Unwind_Resume(a1);
}

unsigned int *_ZNSt3__110__function6__funcIZN2vp2vx9data_flow8FunctionIjEC1IZNS3_29Voice_Processor_State_Manager12create_stateIjZNS3_15Voice_Processor21create_property_stateILNS3_11Property_IDE37EEENS4_5StateINS3_18Property_ID_TraitsIXT_EE4TypeEEEPFNS2_8ExpectedISG_iEERKNS2_8services14Audio_HardwareEjERKNSD_IjEESG_EUlT_DpT0_E_JjjjEEEDaOT0_DpRKNSD_IT1_EEEUlDpRKT_E_JjjjEEERNS4_13State_ManagerEST_DpRKNSD_ISU_EEEUlPPKNS4_5ValueEPS1G_E_NS_9allocatorIS1L_EEFvS1J_S1K_EEclEOS1J_OS1K_(uint64_t a1, uint64_t (******a2)(), vp::vx::data_flow::Value **a3)
{
  v52 = *MEMORY[0x277D85DE8];
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

  v8 = v4[1];
  if (v8[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v8);
  }

  v9 = v4[2];
  if (v9[2] == &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id)
  {
    vp::vx::data_flow::Value::view_storage(v9);
  }

  v10 = *v7;
  v11 = *(a1 + 8);
  v12 = (*(a1 + 24))(*(a1 + 32), *v7);
  v13 = v12;
  if ((v12 & 0x100000000) == 0)
  {
    if (v10)
    {
      log = vp::get_log(v12);
      v12 = os_log_type_enabled(log, OS_LOG_TYPE_ERROR);
      if (v12)
      {
        log_context_info = vp::get_log_context_info(&v35, v11, "vp::vx::Voice_Processor]", 23);
        v27 = v37;
        v28 = v37;
        v29 = v36;
        v30 = vp::get_log(log_context_info);
        v12 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        if (v12)
        {
          v31 = v35;
          if (v28 >= 0)
          {
            v32 = v27;
          }

          else
          {
            v32 = v29;
          }

          if (v28 >= 0)
          {
            v31 = &v35;
          }

          *buf = 136316674;
          v39 = v31;
          v33 = "";
          v40 = 2080;
          if (v32)
          {
            v33 = " ";
          }

          v41 = v33;
          v42 = 1024;
          v43 = 37;
          v44 = 1040;
          v45 = 42;
          v46 = 2080;
          v47 = "Ref_Hardware_Physical_Output_Safety_Offset]";
          v48 = 1024;
          v49 = v10;
          v50 = 1024;
          LODWORD(v51) = v13;
          _os_log_impl(&dword_2724B4000, v30, OS_LOG_TYPE_ERROR, "%s%sfailed to get value of property %u '%.*s' for device ID %u with status %u", buf, 0x38u);
          LOBYTE(v28) = v37;
        }

        if ((v28 & 0x80) != 0)
        {
          operator delete(v35);
        }
      }
    }

    v13 = *(a1 + 16);
  }

  if (v10)
  {
    v14 = vp::get_log(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = vp::get_log_context_info(&v35, v11, "vp::vx::Voice_Processor]", 23);
      v16 = v37;
      if ((v37 & 0x80u) == 0)
      {
        v17 = v37;
      }

      else
      {
        v17 = v36;
      }

      v18 = vp::get_log(v15);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = v35;
        std::to_string(&__p, v13);
        v20 = &v35;
        if (v16 < 0)
        {
          v20 = v19;
        }

        v39 = v20;
        v21 = " ";
        *buf = 136316674;
        if (!v17)
        {
          v21 = "";
        }

        v40 = 2080;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v41 = v21;
        v42 = 1024;
        v43 = 37;
        v44 = 1040;
        v45 = 42;
        v46 = 2080;
        v47 = "Ref_Hardware_Physical_Output_Safety_Offset]";
        v48 = 1024;
        v49 = v10;
        v50 = 2080;
        v51 = p_p;
        _os_log_impl(&dword_2724B4000, v18, OS_LOG_TYPE_DEFAULT, "%s%svalue of property %u '%.*s' for device ID %u is %s", buf, 0x3Cu);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        LOBYTE(v16) = v37;
      }

      if ((v16 & 0x80) != 0)
      {
        operator delete(v35);
      }
    }
  }

  vp::vx::data_flow::Value::~Value(v5);
  *v5 = std::pmr::get_default_resource(v23);
  *(v5 + 1) = 0;
  *(v5 + 2) = &vp::vx::data_flow::Value::type_id<unsigned int>(void)::s_type_id;
  result = vp::vx::data_flow::Value::allocate_storage(v5);
  *result = v13;
  return result;
}