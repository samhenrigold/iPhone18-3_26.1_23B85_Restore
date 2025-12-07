void AMCP::Graph::connect(AMCP::Log::AMCP_Scope_Registry *a1, unint64_t a2, AMCP::Log::AMCP_Scope_Registry **a3, unint64_t a4, void *a5)
{
  v8 = a5[1];
  v12[0] = *a5;
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Task::add_connection(a1, 1u, a2, v12);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *a3;
  v10 = a5[1];
  v11[0] = *a5;
  v11[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Task::add_connection(v9, 0, a4, v11);
  if (v10)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1DE54FBBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Task>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = (a1 + 48);
  v5 = -48;
  do
  {
    v6 = v4;
    std::vector<AMCP::Graph::Manifest_Task::Terminal_Connections>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 -= 3;
    v5 += 24;
  }

  while (v5);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Task>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Graph::Manifest::get_converter_buffer(uint64_t *a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v27 = *(a2 + 72);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a5, *(a5 + 8));
  }

  else
  {
    v35 = *a5;
  }

  v36 = *(a5 + 24);
  v37 = *(a5 + 32);
  if (*(a5 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a5 + 40), *(a5 + 48));
  }

  else
  {
    __p = *(a5 + 40);
  }

  v28 = a3;
  v29 = a7;
  v39 = *(a5 + 64);
  v40 = *(a5 + 72);
  v14 = *a4;
  if (!*a4 || (v15 = *a6, v26 = *(a6 + 8), v16 = *(a6 + 24), v17 = *(a6 + 28), v18 = *(a6 + 32), (v19 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>>>::find<AMCP::Wire_Identifier>((v14 + 8), &v35)) == 0))
  {
LABEL_22:
    v22 = 0;
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_23;
  }

  v20 = v18;
  v22 = v19[12];
  v21 = v19[13];
  *a1 = v22;
  a1[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v15 != *(v22 + 88) || (vminv_u16(vmovn_s32(vceqq_s32(v26, *(v22 + 96)))) & 1) == 0 || v16 != *(v22 + 112) || v17 != *(v22 + 116) || v20 != *(v22 + 120))
  {
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    goto LABEL_22;
  }

  *&v31[0] = v22;
  *(&v31[0] + 1) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Inventory::add_buffer(v27, v31);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_23:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if (!v22)
    {
      goto LABEL_29;
    }
  }

  else if (!v22)
  {
LABEL_29:
    v23 = *(a2 + 72);
    v33 = 0uLL;
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *a5, *(a5 + 8));
    }

    else
    {
      v35 = *a5;
    }

    v36 = *(a5 + 24);
    v37 = *(a5 + 32);
    if (*(a5 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a5 + 40), *(a5 + 48));
    }

    else
    {
      __p = *(a5 + 40);
    }

    v39 = *(a5 + 64);
    v40 = *(a5 + 72);
    v24 = *(a6 + 16);
    v31[0] = *a6;
    v31[1] = v24;
    v32 = *(a6 + 32);
    v25 = v29[1];
    v30[0] = *v29;
    v30[1] = v25;
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(&v34, v23, &v33, &v35, v31, 0, v30, v28[50], v28[48], 2, v28[51]);
  }
}

void sub_1DE550004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  AMCP::Wire_Identifier::~Wire_Identifier(&__p);
  _Unwind_Resume(a1);
}

uint64_t std::tuple<std::shared_ptr<AMCP::Graph::Node_Proc>,std::string>::~tuple(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::shared_ptr<AMCP::Graph::Node>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Log>::__on_zero_shared(uint64_t a1)
{
  std::mutex::~mutex((a1 + 72));
  if (*(a1 + 56))
  {
    v2 = *(a1 + 48);
    v3 = *(*(a1 + 40) + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    *(a1 + 56) = 0;
    while (v2 != a1 + 40)
    {
      v5 = *(v2 + 8);
      std::__list_imp<std::pair<AMCP::Graph::Manifest_Message_Type,std::string>>::__delete_node[abi:ne200100](v2);
      v2 = v5;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Log>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979B48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_emplace<AMCP::Graph::Manifest_Inventory>::__on_zero_shared(void *a1)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((a1 + 24));
  std::__function::__value_func<void ()>::~__value_func[abi:ne200100]((a1 + 20));
  if (a1[17])
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](a1 + 17);
    operator delete(a1[17]);
  }

  v2 = a1[16];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[14];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[11];
  a1[11] = 0;
  if (v4)
  {
    std::default_delete<AMCP::Graph::Manifest_Counter>::operator()[abi:ne200100](v4);
  }

  v5 = a1[10];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table((a1 + 4));
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Inventory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Graph::Manifest::calculate_anchor_time(uint64_t a1, const AMCP::Graph::Manifest_Execution_Context *a2, AMCP::DAL::DAL_Time_Delta *a3, int a4, unint64_t a5, int a6)
{
  v75 = *MEMORY[0x1E69E9840];
  AMCP::Graph::Manifest::get_master_timebase(&v69, *(a2 + 9), *(a2 + 10));
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v12 = *(&v69 + 1);
  *(a1 + 24) = v69;
  v69 = 0uLL;
  v13 = v12;
  switch(a4)
  {
    case 2:
      AMCP::Graph::Manifest::calculate_anchor_time_from_current_time(buf, a2, a3);
      *a1 = *buf;
      *(a1 + 16) = *&buf[16];
      *(a1 + 24) = *&buf[24];
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time(a1);
      v31 = *(a1 + 24);
      v32 = *(a1 + 32);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v33 = (*(*v31 + 136))(v31);
      v35 = v34 & (round(sample_time) < round(*&v33));
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }

      if (v35)
      {
        v36 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v36 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v33);
        }

        v38 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v37 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v39 = *v38;
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        else
        {
          v39 = *v38;
        }

        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          v40 = AMCP::DAL::DAL_Time::get_sample_time(a1);
          v41 = *(a1 + 24);
          v42 = *(a1 + 32);
          if (v42)
          {
            atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = COERCE_DOUBLE((*(*v41 + 136))(v41));
          *buf = 136316162;
          *&buf[4] = "Manifest.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 434;
          *&buf[18] = 2080;
          *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
          *&buf[28] = 2048;
          *&buf[30] = vcvtmd_s64_f64(v40);
          *&buf[38] = 2048;
          v71 = vcvtmd_s64_f64(v43);
          _os_log_error_impl(&dword_1DE1F9000, v39, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
          if (v42)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v42);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v67);
        __cxa_allocate_exception(0x40uLL);
        v44 = AMCP::DAL::DAL_Time::get_sample_time(a1);
        v45 = *(a1 + 24);
        v46 = *(a1 + 32);
        if (v46)
        {
          atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
        }

        v47 = COERCE_DOUBLE((*(*v45 + 136))(v45));
        caulk::make_string(&v73, "Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", v48, vcvtmd_s64_f64(v44), vcvtmd_s64_f64(v47));
        std::logic_error::logic_error(&v60, &v73);
        v60.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v61, &v60);
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = -1;
        v61.__vftable = &unk_1F5991430;
        v62 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v61);
        *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest::calculate_anchor_time(const Manifest_Execution_Context &, Anchor_Policy, std::variant<Sample_Time, uint64_t>) const";
        v71 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        v72 = 434;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v59);
      }

      break;
    case 1:
      AMCP::Graph::Manifest::get_master_timebase(&v58, *(a2 + 9), *(a2 + 10));
      v25 = *(a2 + 9);
      v26 = *(a2 + 10);
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
      }

      v27 = *(v25 + 88);
      if (v27)
      {
        atomic_fetch_add_explicit((v27 + 8), 1uLL, memory_order_relaxed);
      }

      v28 = v58;
      v29 = *(&v58 + 1);
      if (*(&v58 + 1))
      {
        atomic_fetch_add_explicit((*(&v58 + 1) + 8), 1uLL, memory_order_relaxed);
        *buf = 2;
        *&buf[8] = 0;
        *&buf[16] = 0;
        *&buf[24] = v28;
        atomic_fetch_add_explicit((v29 + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        *buf = 2;
        *&buf[8] = 0;
        *&buf[16] = 0;
        *&buf[24] = v58;
      }

      v74 = 0;
      operator new();
    case 0:
      if (a6)
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      AMCP::Graph::Manifest::get_master_timebase(&v68, *(a2 + 9), *(a2 + 10));
      v14 = v68;
      v68 = 0uLL;
      *a1 = 2;
      *(a1 + 8) = a5;
      *(a1 + 16) = 0;
      *(a1 + 24) = v14;
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v15 = AMCP::DAL::DAL_Time::get_sample_time(a1);
      v16 = *(a1 + 24);
      v17 = *(a1 + 32);
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = (*(*v16 + 136))(v16);
      v20 = v19 & (round(v15) < round(*&v18));
      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      if (v20)
      {
        v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v21 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v18);
        }

        v23 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v22 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v22)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          v24 = *v23;
          std::__shared_weak_count::__release_shared[abi:ne200100](v22);
        }

        else
        {
          v24 = *v23;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v49 = AMCP::DAL::DAL_Time::get_sample_time(a1);
          v50 = *(a1 + 24);
          v51 = *(a1 + 32);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v52 = COERCE_DOUBLE((*(*v50 + 136))(v50));
          *buf = 136316162;
          *&buf[4] = "Manifest.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 418;
          *&buf[18] = 2080;
          *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
          *&buf[28] = 2048;
          *&buf[30] = vcvtmd_s64_f64(v49);
          *&buf[38] = 2048;
          v71 = vcvtmd_s64_f64(v52);
          _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
          if (v51)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v67);
        __cxa_allocate_exception(0x40uLL);
        v53 = AMCP::DAL::DAL_Time::get_sample_time(a1);
        v54 = *(a1 + 24);
        v55 = *(a1 + 32);
        if (v55)
        {
          atomic_fetch_add_explicit((v55 + 8), 1uLL, memory_order_relaxed);
        }

        v56 = COERCE_DOUBLE((*(*v54 + 136))(v54));
        caulk::make_string(&v73, "Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", v57, vcvtmd_s64_f64(v53), vcvtmd_s64_f64(v56));
        std::logic_error::logic_error(&v60, &v73);
        v60.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v61, &v60);
        v63 = 0;
        v64 = 0;
        v65 = 0;
        v66 = -1;
        v61.__vftable = &unk_1F5991430;
        v62 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v61);
        *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest::calculate_anchor_time(const Manifest_Execution_Context &, Anchor_Policy, std::variant<Sample_Time, uint64_t>) const";
        v71 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        v72 = 418;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v59);
      }

      break;
  }

  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(a1);
  }
}

void sub_1DE550F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  v41 = *(v39 + 32);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::get_master_timebase(AMCP::Graph::Manifest *this, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 104);
  *this = *(a2 + 96);
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }
}

void AMCP::Graph::Manifest::calculate_anchor_time_from_current_time(AMCP::Graph::Manifest *this, const AMCP::Graph::Manifest_Execution_Context *a2, AMCP::DAL::DAL_Time_Delta *a3)
{
  v171 = *MEMORY[0x1E69E9840];
  AMCP::Graph::Manifest::get_master_timebase(&v153, *(a2 + 9), *(a2 + 10));
  v6 = *(a2 + 9);
  v7 = *(a2 + 10);
  v138 = a2;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v6 + 48);
  v9 = *(v6 + 56);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = mach_absolute_time();
  v11 = v153;
  if (*(&v153 + 1))
  {
    atomic_fetch_add_explicit((*(&v153 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v139 = v7;
  *this = 1;
  *(this + 1) = 0;
  *(this + 2) = v10;
  *(this + 24) = v11;
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(this);
  v13 = *(this + 3);
  v14 = *(this + 4);
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = (*(*v13 + 136))(v13);
  v17 = v16 & (round(sample_time) < round(*&v15));
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v17)
  {
    v104 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v104 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v15);
    }

    v106 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v105 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v105)
    {
      atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
      v107 = *v106;
      std::__shared_weak_count::__release_shared[abi:ne200100](v105);
    }

    else
    {
      v107 = *v106;
    }

    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v113 = AMCP::DAL::DAL_Time::get_sample_time(this);
      v114 = *(this + 3);
      v115 = *(this + 4);
      if (v115)
      {
        atomic_fetch_add_explicit(&v115->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v116 = COERCE_DOUBLE((*(*v114 + 136))(v114));
      if ((v117 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      *buf = 136316162;
      *&buf[4] = "Synchronized_Mixer_Manager.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 116;
      *&buf[18] = 2080;
      *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
      *&buf[28] = 2048;
      *&buf[30] = vcvtmd_s64_f64(v113);
      *&buf[38] = 2048;
      v168.__r_.__value_.__r.__words[0] = vcvtmd_s64_f64(v116);
      _os_log_error_impl(&dword_1DE1F9000, v107, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
      if (v115)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v115);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v144);
    __cxa_allocate_exception(0x40uLL);
    v118 = AMCP::DAL::DAL_Time::get_sample_time(this);
    v119 = *(this + 3);
    v120 = *(this + 4);
    if (v120)
    {
      atomic_fetch_add_explicit((v120 + 8), 1uLL, memory_order_relaxed);
    }

    v121 = COERCE_DOUBLE((*(*v119 + 136))(v119));
    if (v122)
    {
      caulk::make_string(&v154, "Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", v122, vcvtmd_s64_f64(v118), vcvtmd_s64_f64(v121));
      std::logic_error::logic_error(&v147, &v154);
      v147.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v161, &v147);
      v163 = 0;
      v164 = 0;
      v165 = 0;
      v166 = -1;
      v161.__vftable = &unk_1F5991430;
      v162 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v161);
      *&buf[32] = "DAL::DAL_Time AMCP::Graph::Synchronized_Mixer_Manager::get_anchor_time(const Timebase_Ref &) const";
      v168.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Synchronized_Mixer_Manager.cpp";
      LODWORD(v168.__r_.__value_.__r.__words[1]) = 116;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v149);
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v137 = a3;
  v18 = *(v8 + 56);
  if (v18)
  {
    while (1)
    {
      v19 = v18[5];
      v21 = *(v19 + 48);
      v20 = *(v19 + 56);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v22 = (v153 | v21) == 0;
      if (v153)
      {
        v23 = v21 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        goto LABEL_32;
      }

      v24 = (*(*v153 + 16))();
      v25 = (*(*v21 + 16))(v21);
      v26 = *(v24 + 23);
      if (v26 >= 0)
      {
        v27 = *(v24 + 23);
      }

      else
      {
        v27 = *(v24 + 8);
      }

      v28 = *(v25 + 23);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = *(v25 + 8);
      }

      if (v27 == v28)
      {
        break;
      }

      v22 = 0;
      if (v20)
      {
        goto LABEL_33;
      }

LABEL_34:
      if (v22)
      {
        v32 = v18[5];
        os_unfair_lock_lock(v32);
        AMCP::DAL::Synchronizer::_get_pending_time_range(buf, v32);
        v154 = v168;
        v155 = v169;
        v156 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit(&v170->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v170)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v170);
          }
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        v33 = *(v32 + 24);
        if (v33)
        {
          while (!AMCP::DAL::DAL_Time::operator<((v33 + 15), (v33 + 20)) || (v33[25] & 1) != 0)
          {
LABEL_66:
            v33 = *v33;
            if (!v33)
            {
              goto LABEL_70;
            }
          }

          v34 = v33[19];
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v161 = *(v33 + 10);
          v35 = v33[23];
          v162 = v33[22];
          v36 = v33[24];
          if (v36)
          {
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            *buf = v161;
            *&buf[16] = v162;
            *&buf[24] = v35;
            *&buf[32] = v36;
            atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v36);
            if (v34)
            {
              goto LABEL_47;
            }
          }

          else
          {
            *buf = *(v33 + 10);
            *&buf[16] = v33[22];
            *&buf[24] = v35;
            *&buf[32] = 0;
            if (v34)
            {
LABEL_47:
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
            }
          }

          v161 = *(v33 + 13);
          v37 = v33[29];
          v162 = v33[28];
          v163 = v37;
          v38 = v33[30];
          v164 = v38;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if ((v161.__vftable & 2) == 0)
          {
            AMCP::DAL::DAL_Time_Delta::validate(&v161);
          }

          imp = v161.__imp_.__imp_;
          v40 = *&buf[24];
          if (*&buf[32])
          {
            atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
          }

          LODWORD(v157) = 2;
          v158 = imp;
          v159 = 0;
          v160 = v40;
          AMCP::DAL::DAL_Time::operator+=(buf, &v157);
          if (v160.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v160.__imp_.__imp_);
          }

          if (!AMCP::DAL::DAL_Time::operator<(buf, (v32 + 104)) && AMCP::DAL::DAL_Time::operator<(&v154, buf))
          {
            LODWORD(v154.__r_.__value_.__l.__data_) = *buf;
            *&v154.__r_.__value_.__r.__words[1] = *&buf[8];
            v42 = *&buf[24];
            v41 = *&buf[32];
            if (*&buf[32])
            {
              atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
            }

            v43 = v156;
            v155 = v42;
            v156 = v41;
            if (v43)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v43);
            }
          }

          if (v164)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v164);
          }

          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          goto LABEL_66;
        }

LABEL_70:
        os_unfair_lock_unlock(v32);
        v44 = AMCP::DAL::DAL_Time::operator<(this, &v154);
        v45 = !v44;
        if (v44)
        {
          v46 = &v154;
        }

        else
        {
          v46 = this;
        }

        *this = v46->__r_.__value_.__l.__data_;
        p_size = &v154.__r_.__value_.__l.__size_;
        if (!v44)
        {
          p_size = (this + 8);
        }

        *(this + 1) = *p_size;
        v48 = &v154.__r_.__value_.__s.__data_[16];
        if (!v44)
        {
          v48 = this + 16;
        }

        *(this + 2) = *v48;
        v49 = &v155;
        if (!v44)
        {
          v49 = (this + 24);
        }

        v50 = *v49;
        v51 = v156;
        v52 = *(this + 4);
        if (v45)
        {
          v53 = *(this + 4);
        }

        else
        {
          v53 = v156;
        }

        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(this + 3) = v50;
        *(this + 4) = v53;
        if (v52)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_92;
      }
    }

    if (v26 >= 0)
    {
      v30 = v24;
    }

    else
    {
      v30 = *v24;
    }

    if (v29 >= 0)
    {
      v31 = v25;
    }

    else
    {
      v31 = *v25;
    }

    v22 = memcmp(v30, v31, v27) == 0;
LABEL_32:
    if (!v20)
    {
      goto LABEL_34;
    }

LABEL_33:
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    goto LABEL_34;
  }

LABEL_92:
  if ((*this & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(this);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v139)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v139);
  }

  v54 = AMCP::DAL::DAL_Time::get_sample_time(this);
  v55 = *(this + 3);
  v56 = *(this + 4);
  if (v56)
  {
    atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v57 = (*(*v55 + 136))(v55);
  v59 = v58 & (round(v54) < round(*&v57));
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  if (v59)
  {
    v108 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v108 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v57);
    }

    v110 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v109 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v109)
    {
      atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
      v111 = *v110;
      std::__shared_weak_count::__release_shared[abi:ne200100](v109);
    }

    else
    {
      v111 = *v110;
    }

    if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
    {
      v123 = AMCP::DAL::DAL_Time::get_sample_time(this);
      v124 = *(this + 3);
      v125 = *(this + 4);
      if (v125)
      {
        atomic_fetch_add_explicit(&v125->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v126 = COERCE_DOUBLE((*(*v124 + 136))(v124));
      *buf = 136316162;
      *&buf[4] = "Manifest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 448;
      *&buf[18] = 2080;
      *&buf[20] = "not (anchor_time.get_sample_time() >= anchor_time.get_clock()->get_anchor_time())";
      *&buf[28] = 2048;
      *&buf[30] = vcvtmd_s64_f64(v123);
      *&buf[38] = 2048;
      v168.__r_.__value_.__r.__words[0] = vcvtmd_s64_f64(v126);
      _os_log_error_impl(&dword_1DE1F9000, v111, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", buf, 0x30u);
      if (v125)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v125);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v144);
    __cxa_allocate_exception(0x40uLL);
    v127 = AMCP::DAL::DAL_Time::get_sample_time(this);
    v128 = *(this + 3);
    v129 = *(this + 4);
    if (v129)
    {
      atomic_fetch_add_explicit((v129 + 8), 1uLL, memory_order_relaxed);
    }

    v130 = COERCE_DOUBLE((*(*v128 + 136))(v128));
    caulk::make_string(&v154, "Manifest anchor time should not represent a time before the timebase's anchor time: time(%lld) anchor(%lld)", v131, vcvtmd_s64_f64(v127), vcvtmd_s64_f64(v130));
    std::logic_error::logic_error(&v147, &v154);
    v147.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v161, &v147);
    v163 = 0;
    v164 = 0;
    v165 = 0;
    v166 = -1;
    v161.__vftable = &unk_1F5991430;
    v162 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v161);
    *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest::calculate_anchor_time_from_current_time(const Manifest_Execution_Context &) const";
    v168.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    LODWORD(v168.__r_.__value_.__r.__words[1]) = 448;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v149);
  }

  if ((*this & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(this);
  }

  v60 = *(v138 + 9);
  v61 = *(v138 + 10);
  if (v61)
  {
    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  buffer_alignments = AMCP::Graph::Manifest_Inventory::get_buffer_alignments(&v151, *(v60 + 24));
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v63 = v152[0];
  if (v152[0])
  {
    v64 = v152;
    do
    {
      v65 = v63;
      v66 = v64;
      v67 = *(v63 + 7);
      if (v67 >= 1)
      {
        v64 = v63;
      }

      v63 = v63[v67 < 1];
    }

    while (v63);
    if (v64 != v152)
    {
      v68 = (v67 >= 1 ? v65 : v66);
      if (v68[7] <= 1)
      {
        v69 = *(v138 + 9);
        v70 = *(v138 + 10);
        if (v70)
        {
          atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v71 = *(v69 + 24);
        if (v71)
        {
          v140 = 0;
          host_time = 0;
          v73 = 0;
          do
          {
            v74 = v71[12];
            if (*(v74 + 156) == 1)
            {
              v75 = *(v74 + 128);
              v76 = *(v74 + 136);
              if (v76)
              {
                atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v77 = (*(*v75 + 144))(v75, 1);
              if (v76)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v76);
              }

              v78 = v71[12];
              v79 = *(v78 + 128);
              v80 = *(v78 + 136);
              if (v80)
              {
                atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v81 = (*(*v79 + 136))(v79);
              v83 = v82;
              if (v80)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v80);
              }

              if ((v83 & 1) == 0)
              {
                v100 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v100 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v81);
                }

                v102 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v101 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v101)
                {
                  atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
                  v103 = *v102;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v101);
                }

                else
                {
                  v103 = *v102;
                }

                if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Manifest_Inventory.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 582;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (b.second->get_timebase()->get_anchor_time().has_value())";
                  _os_log_error_impl(&dword_1DE1F9000, v103, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Input timebase has been started but does not have an anchor time.", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v141);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string(&v149, "Input timebase has been started but does not have an anchor time.", v112);
                std::logic_error::logic_error(&v144, &v149);
                v144.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v161, &v144);
                v163 = 0;
                v164 = 0;
                v165 = 0;
                v166 = -1;
                v161.__vftable = &unk_1F5991430;
                v162 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v161);
                *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest_Inventory::get_latest_input_anchor_time() const";
                v168.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
                LODWORD(v168.__r_.__value_.__r.__words[1]) = 582;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v147);
              }

              v84 = v71[12];
              v85 = *(v84 + 128);
              v86 = *(v84 + 136);
              if (v86)
              {
                atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v87 = COERCE_DOUBLE((*(*v85 + 136))(v85));
              if ((v88 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v89 = *(v71[12] + 128);
              v90 = *(v71[12] + 136);
              if (v90)
              {
                atomic_fetch_add_explicit((v90 + 8), 1uLL, memory_order_relaxed);
              }

              *buf = 2;
              *&buf[8] = (HIDWORD(v77) + v77) + v87;
              *&buf[16] = 0;
              *&buf[24] = v89;
              if (v86)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v86);
              }

              if (host_time <= AMCP::DAL::DAL_Time::get_host_time(buf))
              {
                host_time = AMCP::DAL::DAL_Time::get_host_time(buf);
                v91 = v71[12];
                v73 = *(v91 + 128);
                v92 = *(v91 + 136);
                if (v92)
                {
                  atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v140)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v140);
                }

                v140 = v92;
              }

              buffer_alignments = *&buf[32];
              if (*&buf[32])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
              }
            }

            v71 = *v71;
          }

          while (v71);
          if (!v73 && host_time)
          {
            v132 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v132 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(buffer_alignments);
            }

            v134 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v133 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v133)
            {
              atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
              v135 = *v134;
              std::__shared_weak_count::__release_shared[abi:ne200100](v133);
            }

            else
            {
              v135 = *v134;
            }

            if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Manifest_Inventory.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 595;
              *&buf[18] = 2080;
              *&buf[20] = "not (timebase != nullptr || latest_anchor == 0)";
              _os_log_error_impl(&dword_1DE1F9000, v135, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Did not find an input aligned timebase", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v141);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v149, "Did not find an input aligned timebase", v136);
            std::logic_error::logic_error(&v144, &v149);
            v144.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v161, &v144);
            v163 = 0;
            v164 = 0;
            v165 = 0;
            v166 = -1;
            v161.__vftable = &unk_1F5991430;
            v162 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v161);
            *&buf[32] = "DAL::DAL_Time AMCP::Graph::Manifest_Inventory::get_latest_input_anchor_time() const";
            v168.__r_.__value_.__r.__words[0] = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
            LODWORD(v168.__r_.__value_.__r.__words[1]) = 595;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v147);
          }

          v93 = v140;
          *buf = v73;
          *&buf[8] = v140;
          if (v140)
          {
            v94 = 0;
            atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
            goto LABEL_155;
          }
        }

        else
        {
          v93 = 0;
          host_time = 0;
          *buf = 0;
          *&buf[8] = 0;
        }

        v94 = 1;
LABEL_155:
        LODWORD(v157) = 1;
        v158 = 0;
        v159 = host_time;
        v160 = *buf;
        *buf = 0;
        *&buf[8] = 0;
        if ((v94 & 1) == 0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v93);
        }

        if (v70)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v70);
        }

        AMCP::DAL::DAL_Time::translate_time(&v161, &v157, &v153);
        v95 = v153;
        if (*(&v153 + 1))
        {
          atomic_fetch_add_explicit((*(&v153 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        buf[0] = 0;
        *&buf[8] = 0;
        *&buf[16] = 0;
        *&buf[24] = v95;
        LODWORD(v168.__r_.__value_.__l.__data_) = 0;
        AMCP::Graph::Manifest_Counter::start(buf, this);
        v96 = v160;
        *&v149.__r_.__value_.__l.__data_ = v160;
        if (v160.__imp_.__imp_)
        {
          atomic_fetch_add_explicit(v160.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::DAL_Time_Delta::translate_time_delta(&v154, v137, &v149);
        if (v96.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96.__imp_.__imp_);
          v147 = v96;
          atomic_fetch_add_explicit(v96.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
        }

        else
        {
          v147.__vftable = v96.__vftable;
          v147.__imp_.__imp_ = 0;
        }

        AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v149, buf, &v147, 1, &v154, v137[10]);
        if (v96.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v96.__imp_.__imp_);
        }

        AMCP::DAL::DAL_Time::translate_time(&v147, &v149, &v153);
        if (!AMCP::DAL::DAL_Time::operator<(&v147, &v161))
        {
          goto LABEL_180;
        }

        AMCP::DAL::DAL_Time::operator-(&v141, &v147, &v161);
        v144 = v141;
        v145 = v142;
        v97 = *(&v143 + 1);
        v146 = v143;
        if (*(&v143 + 1))
        {
          atomic_fetch_add_explicit((*(&v143 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        if (v144.__vftable)
        {
          v145 = (v145 * 1.10000002);
          if ((v144.__vftable & 2) == 0)
          {
LABEL_173:
            if (!v97)
            {
              goto LABEL_175;
            }

            goto LABEL_174;
          }
        }

        else if ((v144.__vftable & 2) == 0)
        {
          goto LABEL_173;
        }

        *&v144.__imp_.__imp_ = *&v144.__imp_.__imp_ * 1.10000002;
        if (!v97)
        {
LABEL_175:
          boost::operators_impl::operator-(&v141, this, &v144);
          *this = v141;
          *(this + 2) = v142;
          v98 = v143;
          v143 = 0uLL;
          v99 = *(this + 4);
          *(this + 24) = v98;
          if (v99)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v99);
            if (*(&v143 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v143 + 1));
            }
          }

          if (*(&v146 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v146 + 1));
          }

LABEL_180:
          if (v148)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v148);
          }

          if (v150)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v150);
          }

          if (v156)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v156);
          }

          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          if (v164)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v164);
          }

          if (v96.__imp_.__imp_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v96.__imp_.__imp_);
          }

          goto LABEL_192;
        }

LABEL_174:
        std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        goto LABEL_175;
      }
    }
  }

LABEL_192:
  if ((*this & 0xFFFFFFFE) == 2)
  {
    AMCP::DAL::DAL_Time::get_sample_time(this);
  }

  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(v152[0]);
  if (*(&v153 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v153 + 1));
  }
}

void sub_1DE552C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, std::__shared_weak_count *a45, void *a46, void *a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v63 + 32))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v63 + 32));
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5GraphL38get_earliest_start_time_across_devicesENSt3__110shared_ptrINS0_8TimebaseEEERKNS2_INS0_12Timebase_SetEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::operator()(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0uLL;
  v4 = *(&v3 + 1);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v12 = v3;
  v5 = (*(*v3 + 184))();
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v15 = 2;
    v16 = v5;
    v17 = 0;
    v18 = v12;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v15 = 2;
    v16 = v5;
    v17 = 0;
    v18 = v12;
  }

  AMCP::DAL::DAL_Time_Delta::translate_time_delta(v13, &v15, (a1 + 16));
  v6 = *(a1 + 8);
  if (AMCP::DAL::DAL_Time_Delta::operator<(v6, v13))
  {
    v7 = v13;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a1 + 8);
  *v8 = *v7;
  *(v8 + 8) = *(v7 + 1);
  v9 = *(v7 + 3);
  *(v8 + 16) = *(v7 + 2);
  v10 = *(v7 + 4);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *(v8 + 32);
  *(v8 + 24) = v9;
  *(v8 + 32) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(&v18 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v18 + 1));
  }

  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void sub_1DE553404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5979A78;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__func(void *a1)
{
  *a1 = &unk_1F5979A78;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0,std::allocator<AMCP::Graph::get_earliest_start_time_across_devices(std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase_Set> const&)::$_0>,void ()(std::shared_ptr<AMCP::Graph::Timebase>)>::~__func(void *a1)
{
  *a1 = &unk_1F5979A78;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Graph::Manifest::setup_processing(AMCP::Log::AMCP_Scope_Registry *a1, AMCP::DAL::DAL_Time_Delta *a2, uint64_t a3, uint64_t a4)
{
  v152 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v91 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v91 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v92 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v92)
    {
      atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
      v94 = *v93;
      std::__shared_weak_count::__release_shared[abi:ne200100](v92);
    }

    else
    {
      v94 = *v93;
    }

    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Manifest.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 490;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_processing_state == Processing_State::Idle)";
      _os_log_error_impl(&dword_1DE1F9000, v94, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v135, "", v115);
    std::logic_error::logic_error(&v138, &v135);
    v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v142, &v138);
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = -1;
    v142.__vftable = &unk_1F5991430;
    v143 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
    v149 = "Start_Stop_Result AMCP::Graph::Manifest::setup_processing(const Manifest_Execution_Context &, const Manifest_Start_State &, const std::atomic_uint32_t &)";
    v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v151 = 490;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
  }

  v5 = a1;
  v6 = *(a2 + 3);
  v7 = *(a2 + 4);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v5 + 9);
  v9 = *(v8 + 96);
  v10 = *(v8 + 104);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (v6 | v9) == 0;
  if (v6 && v9)
  {
    v12 = (*(*v6 + 16))(v6);
    v6 = (*(*v9 + 16))(v9);
    v13 = *(v12 + 23);
    if (v13 >= 0)
    {
      v14 = *(v12 + 23);
    }

    else
    {
      v14 = *(v12 + 8);
    }

    v15 = *(v6 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v6 + 8);
    }

    if (v14 != v15)
    {
      v11 = 0;
      if (!v10)
      {
LABEL_23:
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        if (v11)
        {
          v19 = *(v5 + 9);
          v20 = *(v19 + 80);
          v21 = *(v19 + 88);
          if (v21)
          {
            atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v22 = *(a3 + 8);
          v23 = *(a3 + 16);
          if (v22 != v23)
          {
            v24 = (v20 + 40);
            if (v20 + 40 != a3 + 8)
            {
              v24 = std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v24, v22, v23, (v23 - v22) >> 2);
            }

            if (v21)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v21);
            }

            v134 = *(v5 + 9);
            v25 = *(v134 + 3);
            if (v25)
            {
              v26 = *(a3 + 40);
              do
              {
                v27 = v25[12];
                if (*(v27 + 148) == 2 && !*(v27 + 304))
                {
                  v28 = *(v27 + 128);
                  v29 = *(v27 + 136);
                  if (v29)
                  {
                    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                    v30 = *(v27 + 320);
                    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
                    v31 = v29;
                  }

                  else
                  {
                    v31 = 0;
                    v30 = *(v27 + 320);
                  }

                  *&v32 = v28;
                  *(&v32 + 1) = v31;
                  LODWORD(v136[0]) = 2;
                  *&v136[1] = v26 + v30 + v26 + v30;
                  v136[2] = 0;
                  v137 = v32;
                  v33 = *(v27 + 152);
                  if (v33 > 2)
                  {
                    if (v33 == 3)
                    {
                      operator new();
                    }

                    if (v33 == 4)
                    {
                      v34 = *(v134 + 6);
                      if (!v34)
                      {
                        v111 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                        if ((v111 & 1) == 0)
                        {
                          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
                        }

                        v113 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                        v112 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                        if (v112)
                        {
                          atomic_fetch_add_explicit(&v112->__shared_owners_, 1uLL, memory_order_relaxed);
                          v114 = *v113;
                          std::__shared_weak_count::__release_shared[abi:ne200100](v112);
                        }

                        else
                        {
                          v114 = *v113;
                        }

                        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315650;
                          *&buf[4] = "Manifest_Buffer.cpp";
                          *&buf[12] = 1024;
                          *&buf[14] = 90;
                          *&buf[18] = 2080;
                          *&buf[20] = "not (msm.operator BOOL())";
                          _os_log_error_impl(&dword_1DE1F9000, v114, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to create a synchronized mixer without a manager", buf, 0x1Cu);
                        }

                        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v140);
                        __cxa_allocate_exception(0x40uLL);
                        caulk::make_string(&v141, "Attempt to create a synchronized mixer without a manager", v120);
                        std::logic_error::logic_error(&v139, &v141);
                        v139.__vftable = (MEMORY[0x1E69E55A8] + 16);
                        std::logic_error::logic_error(&v142, &v139);
                        v144 = 0;
                        v145 = 0;
                        v146 = 0;
                        v147 = -1;
                        v142.__vftable = &unk_1F5991430;
                        v143 = &unk_1F5991458;
                        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
                        v149 = "void AMCP::Graph::Manifest_Buffer::allocate(const std::shared_ptr<Synchronized_Mixer_Manager> &, DAL::Sample_Time)";
                        v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
                        v151 = 90;
                        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v138);
                      }

                      AMCP::Graph::Synchronized_Mixer_Manager::get_mixer(buf, v34, (v27 + 8), v27 + 88, v136);
                      v35 = *(v27 + 312);
                      *(v27 + 304) = *buf;
                      if (v35)
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                      }
                    }
                  }

                  else
                  {
                    if (v33 == 1)
                    {
                      operator new();
                    }

                    if (v33 == 2)
                    {
                      operator new();
                    }
                  }

                  if (*(&v137 + 1))
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v137 + 1));
                  }

                  if (v29)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
                  }
                }

                v36 = v25[12];
                v38 = *(v5 + 12);
                v37 = *(v5 + 13);
                if (v37)
                {
                  atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
                }

                v24 = *(v36 + 336);
                *(v36 + 328) = v38;
                *(v36 + 336) = v37;
                if (v24)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v24);
                }

                v25 = *v25;
              }

              while (v25);
            }

            v39 = *(v134 + 14);
            for (i = *(v134 + 15); v39 != i; v39 += 2)
            {
              v40 = *v39;
              v41 = (*v39)[1];
              if (v41)
              {
                v42 = std::__shared_weak_count::lock(v41);
                if (v42)
                {
                  if (*v40)
                  {
                    v43 = (*v40 + 128);
                    v44 = atomic_load(v43);
                    if ((v44 & 0x80000000) != 0)
                    {
                      v86 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                      if ((v86 & 1) == 0)
                      {
                        AMCP::Log::AMCP_Scope_Registry::initialize(v42);
                      }

                      v88 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                      v87 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                      if (v87)
                      {
                        atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
                        v89 = *v88;
                        std::__shared_weak_count::__release_shared[abi:ne200100](v87);
                      }

                      else
                      {
                        v89 = *v88;
                      }

                      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 136315650;
                        *&buf[4] = "Device.h";
                        *&buf[12] = 1024;
                        *&buf[14] = 80;
                        *&buf[18] = 2080;
                        *&buf[20] = "not (m_refcount >= 0)";
                        _os_log_error_impl(&dword_1DE1F9000, v89, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                      }

                      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
                      __cxa_allocate_exception(0x40uLL);
                      caulk::make_string(&v135, "", v90);
                      std::logic_error::logic_error(&v138, &v135);
                      v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
                      std::logic_error::logic_error(&v142, &v138);
                      v144 = 0;
                      v145 = 0;
                      v146 = 0;
                      v147 = -1;
                      v142.__vftable = &unk_1F5991430;
                      v143 = &unk_1F5991458;
                      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
                      v149 = "void AMCP::IO_Core::Device_Node_State::add_reference()";
                      v150 = "MCP/AMCP/IO/IO_Core/Device.h";
                      v151 = 80;
                      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
                    }

                    atomic_fetch_add(v43, 1u);
                  }

                  std::__shared_weak_count::__release_shared[abi:ne200100](v42);
                }
              }

              v45 = *v39;
              v46 = (*v39)[1];
              if (!v46 || (v46 = std::__shared_weak_count::lock(v46), (v47 = v46) == 0) || (v48 = *v45) == 0)
              {
                v121 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v121 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v46);
                }

                v123 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v122 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v122)
                {
                  atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
                  v124 = *v123;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v122);
                }

                else
                {
                  v124 = *v123;
                }

                if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 42;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state.operator BOOL())";
                  _os_log_error_impl(&dword_1DE1F9000, v124, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string(&v135, "", v129);
                std::logic_error::logic_error(&v138, &v135);
                v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v142, &v138);
                v144 = 0;
                v145 = 0;
                v146 = 0;
                v147 = -1;
                v142.__vftable = &unk_1F5991430;
                v143 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
                v149 = "void AMCP::IO_Core::Device_Connection::setup_processing()";
                v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v151 = 42;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
              }

              v50 = *(v48 + 96);
              v49 = *(v48 + 104);
              if (v49)
              {
                atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              if (!v50)
              {
                v76 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v76 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v49);
                }

                v78 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v77 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v77)
                {
                  atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
                  v79 = *v78;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v77);
                }

                else
                {
                  v79 = *v78;
                }

                if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 43;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state->get_engine())";
                  _os_log_error_impl(&dword_1DE1F9000, v79, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string(&v135, "", v84);
                std::logic_error::logic_error(&v138, &v135);
                v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v142, &v138);
                v144 = 0;
                v145 = 0;
                v146 = 0;
                v147 = -1;
                v142.__vftable = &unk_1F5991430;
                v143 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
                v149 = "void AMCP::IO_Core::Device_Connection::setup_processing()";
                v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v151 = 43;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
              }

              v51 = atomic_load((v48 + 128));
              if (v51 == 1)
              {
                v53 = *(v48 + 96);
                v52 = *(v48 + 104);
                if (v52)
                {
                  atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
                }

                *buf = &unk_1F5988DE0;
                *&buf[8] = v53;
                *&buf[16] = v52;
                *&buf[24] = buf;
                AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v48, buf);
                std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
              }

              v54 = 0;
              *buf = 1;
              do
              {
                v55 = *&buf[v54];
                v56 = *(v48 + 8 + 40 * v55 + 16);
                if (v56)
                {
                  v57 = *(v48 + 136 + 24 * v55);
                  do
                  {
                    *(v57 + ((v56[5] >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56[5];
                    v56 = *v56;
                  }

                  while (v56);
                }

                v54 += 4;
              }

              while (v54 != 8);
              if (*(v48 + 168))
              {
                (*(**(v48 + 96) + 160))(*(v48 + 96), v48 + 160);
              }

              if (*(v48 + 144))
              {
                (*(**(v48 + 96) + 176))(*(v48 + 96), v48 + 136);
              }

              *buf = &unk_1F5988C50;
              *&buf[24] = buf;
              AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v48, buf);
              std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
              v58 = *v39;
              v59 = (*v39)[1];
              if (!v59 || (v60 = *(*(v134 + 8) + 40), v59 = std::__shared_weak_count::lock(v59), (v61 = v59) == 0) || (v62 = *v58) == 0)
              {
                v125 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v125 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v59);
                }

                v127 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v126 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v126)
                {
                  atomic_fetch_add_explicit(&v126->__shared_owners_, 1uLL, memory_order_relaxed);
                  v128 = *v127;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v126);
                }

                else
                {
                  v128 = *v127;
                }

                if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 54;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state.operator BOOL())";
                  _os_log_error_impl(&dword_1DE1F9000, v128, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string(&v135, "", v130);
                std::logic_error::logic_error(&v138, &v135);
                v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v142, &v138);
                v144 = 0;
                v145 = 0;
                v146 = 0;
                v147 = -1;
                v142.__vftable = &unk_1F5991430;
                v143 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
                v149 = "void AMCP::IO_Core::Device_Connection::begin_processing(uint32_t, const DAL::DAL_Time_Delta &)";
                v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v151 = 54;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
              }

              v64 = *(v62 + 96);
              v63 = *(v62 + 104);
              if (v63)
              {
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:ne200100](v63);
              }

              if (!v64)
              {
                v80 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
                if ((v80 & 1) == 0)
                {
                  AMCP::Log::AMCP_Scope_Registry::initialize(v63);
                }

                v82 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
                v81 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
                if (v81)
                {
                  atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
                  v83 = *v82;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v81);
                }

                else
                {
                  v83 = *v82;
                }

                if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "Device_Connection.cpp";
                  *&buf[12] = 1024;
                  *&buf[14] = 55;
                  *&buf[18] = 2080;
                  *&buf[20] = "not (device_state->get_engine())";
                  _os_log_error_impl(&dword_1DE1F9000, v83, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
                }

                AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
                __cxa_allocate_exception(0x40uLL);
                caulk::make_string(&v135, "", v85);
                std::logic_error::logic_error(&v138, &v135);
                v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
                std::logic_error::logic_error(&v142, &v138);
                v144 = 0;
                v145 = 0;
                v146 = 0;
                v147 = -1;
                v142.__vftable = &unk_1F5991430;
                v143 = &unk_1F5991458;
                boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
                v149 = "void AMCP::IO_Core::Device_Connection::begin_processing(uint32_t, const DAL::DAL_Time_Delta &)";
                v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
                v151 = 55;
                applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
              }

              v65 = atomic_load((v62 + 128));
              if (v65 == 1)
              {
                v132 = v61;
                v66 = v5;
                v68 = *(v62 + 96);
                v67 = *(v62 + 104);
                if (v67)
                {
                  atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v69 = *(v62 + 112);
                v70 = *(v62 + 120);
                v142.__vftable = v69;
                v142.__imp_.__imp_ = v70;
                if (v70)
                {
                  atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
                }

                AMCP::DAL::DAL_Time_Delta::translate_time_delta(buf, a2, &v142);
                if ((buf[0] & 2) == 0)
                {
                  AMCP::DAL::DAL_Time_Delta::validate(buf);
                }

                (*(*v68 + 224))(v68, v60, vcvtmd_s64_f64(*&buf[8]));
                if (v149)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v149);
                }

                v5 = v66;
                if (v70)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v70);
                }

                v61 = v132;
                if (v67)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v67);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v61);
            }

            AMCP::Graph::Manifest_Inventory::take_power_assertions(v134);
            v72 = *(v5 + 9);
            v73 = *(v72 + 80);
            v74 = *(v72 + 88);
            if (v74)
            {
              atomic_fetch_add_explicit((v74 + 8), 1uLL, memory_order_relaxed);
            }

            if (v73[5] != v73[6])
            {
              v75 = v73[3];
              if (v75)
              {
                memset(&v135, 0, sizeof(v135));
                if (!(v75 >> 60))
                {
                  v149 = &v135;
                  std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v75);
                }

                std::vector<void *>::__throw_length_error[abi:ne200100]();
              }

              v107 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v107 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(0);
              }

              v109 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v108 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v108)
              {
                atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
                v110 = *v109;
                std::__shared_weak_count::__release_shared[abi:ne200100](v108);
              }

              else
              {
                v110 = *v109;
              }

              if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Timebase_Set.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 60;
                *&buf[18] = 2080;
                *&buf[20] = "not (not m_timebases.empty())";
                _os_log_error_impl(&dword_1DE1F9000, v110, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string(&v135, "Attempt to run an manifest with no timebases", v119);
              std::logic_error::logic_error(&v138, &v135);
              v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v142, &v138);
              v144 = 0;
              v145 = 0;
              v146 = 0;
              v147 = -1;
              v142.__vftable = &unk_1F5991430;
              v143 = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
              v149 = "Start_Stop_Result AMCP::Graph::Timebase_Set::start() const";
              v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
              v151 = 60;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
            }

            v103 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v103 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v71);
            }

            v105 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v104 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v104)
            {
              atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
              v106 = *v105;
              std::__shared_weak_count::__release_shared[abi:ne200100](v104);
            }

            else
            {
              v106 = *v105;
            }

            if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Timebase_Set.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 59;
              *&buf[18] = 2080;
              *&buf[20] = "not (not m_state.empty())";
              _os_log_error_impl(&dword_1DE1F9000, v106, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to start a Timebase_Set with no start state", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v135, "Attempt to start a Timebase_Set with no start state", v118);
            std::logic_error::logic_error(&v138, &v135);
            v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v142, &v138);
            v144 = 0;
            v145 = 0;
            v146 = 0;
            v147 = -1;
            v142.__vftable = &unk_1F5991430;
            v143 = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
            v149 = "Start_Stop_Result AMCP::Graph::Timebase_Set::start() const";
            v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
            v151 = 59;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
          }

          v99 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v99 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v6);
          }

          v101 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v100 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v100)
          {
            atomic_fetch_add_explicit(&v100->__shared_owners_, 1uLL, memory_order_relaxed);
            v102 = *v101;
            std::__shared_weak_count::__release_shared[abi:ne200100](v100);
          }

          else
          {
            v102 = *v101;
          }

          if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Timebase_Set.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 51;
            *&buf[18] = 2080;
            *&buf[20] = "not (not state_snapshot.empty())";
            _os_log_error_impl(&dword_1DE1F9000, v102, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to adopt an empty state", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v135, "Attempt to adopt an empty state", v117);
          std::logic_error::logic_error(&v138, &v135);
          v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v142, &v138);
          v144 = 0;
          v145 = 0;
          v146 = 0;
          v147 = -1;
          v142.__vftable = &unk_1F5991430;
          v143 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
          v149 = "void AMCP::Graph::Timebase_Set::adopt_state(const Play_State_Manager::State_Snapshot &)";
          v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
          v151 = 51;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
        }

        v95 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v95 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v97 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v96 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v96)
        {
          atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
          v98 = *v97;
          std::__shared_weak_count::__release_shared[abi:ne200100](v96);
        }

        else
        {
          v98 = *v97;
        }

        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 494;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_same_timebase(execution_context.m_time_interval.get_clock(), m_inventory->get_master_timebase()))";
          _os_log_error_impl(&dword_1DE1F9000, v98, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Execution context is not using master timebase", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v139);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v135, "Execution context is not using master timebase", v116);
        std::logic_error::logic_error(&v138, &v135);
        v138.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v142, &v138);
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v147 = -1;
        v142.__vftable = &unk_1F5991430;
        v143 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v142);
        v149 = "Start_Stop_Result AMCP::Graph::Manifest::setup_processing(const Manifest_Execution_Context &, const Manifest_Start_State &, const std::atomic_uint32_t &)";
        v150 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
        v151 = 494;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v141);
      }

LABEL_22:
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      goto LABEL_23;
    }

    if (v13 >= 0)
    {
      v17 = v12;
    }

    else
    {
      v17 = *v12;
    }

    if (v16 >= 0)
    {
      v18 = v6;
    }

    else
    {
      v18 = *v6;
    }

    v6 = memcmp(v17, v18, v14);
    v11 = v6 == 0;
  }

  if (!v10)
  {
    goto LABEL_23;
  }

  goto LABEL_22;
}

void sub_1DE555770(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE555784(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void sub_1DE555794()
{
  if (*(v0 - 169) < 0)
  {
    operator delete(*(v0 - 192));
  }

  JUMPOUT(0x1DE555ECCLL);
}

void sub_1DE5557AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45)
{
  if (a29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a29);
  }

  if (v45)
  {
    JUMPOUT(0x1DE555EC8);
  }

  JUMPOUT(0x1DE555ECCLL);
}

void sub_1DE555AD0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, char a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    a37 = a36;
    operator delete(a36);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v41 - 192);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a39);
  MEMORY[0x1E12C0F00](&a30);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v40)
  {
    __cxa_free_exception(v39);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a33);
  JUMPOUT(0x1DE555EC8);
}

void sub_1DE555DB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a27)
    {
      operator delete(a27);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v44 - 192);
    boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a42);
    MEMORY[0x1E12C0F00](&a30);
    if (a41 < 0)
    {
      operator delete(a36);
    }

    if (v42)
    {
      __cxa_free_exception(v43);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(&a35);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    __cxa_end_catch();
    JUMPOUT(0x1DE553E1CLL);
  }

  JUMPOUT(0x1DE555ECCLL);
}

void sub_1DE555E6C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1DE555ECCLL);
}

void AMCP::Graph::Manifest::get_iocontext_uid(AMCP::Graph::Manifest *this, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = a2[11];
  v3 = a2[1];
  if (v2 >= (a2[2] - v3) >> 4)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = (a2[2] - a2[1]) >> 4;
      *buf = 136316162;
      v26 = "Manifest.cpp";
      v27 = 1024;
      v28 = 815;
      v29 = 2080;
      v30 = "not (index < m_tasks.size())";
      v31 = 2048;
      *v32 = v2;
      *&v32[8] = 2048;
      v33 = v13;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %zu  size: %zu", buf, 0x30u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v16, "Index out of bounds - index: %zu  size: %zu", v14, v2, (a2[2] - a2[1]) >> 4);
    std::logic_error::logic_error(&v17, &v16);
    v17.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v18, &v17);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = -1;
    v18.__vftable = &unk_1F5991430;
    v19 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v18);
    *&v32[2] = "std::shared_ptr<Manifest_Task> AMCP::Graph::Manifest::get_nth(size_t) const";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest.cpp";
    v34 = 815;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v4 = *(v3 + 16 * v2);
  v5 = *(v3 + 16 * v2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = v4;
  if (*(v4 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(this, *(v4 + 64), *(v4 + 72));
  }

  else
  {
    v7 = *(v4 + 64);
    *(this + 2) = *(v6 + 80);
    *this = v7;
  }

  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_1DE556214(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::calculate_all_required_input_samples(AMCP::Graph::Manifest *this, const AMCP::Graph::Manifest_Execution_Context *a2)
{
  v122 = *MEMORY[0x1E69E9840];
  v3 = *(this + 1);
  v4 = *(this + 2);
  if (v4 != v3)
  {
    do
    {
      v6 = *(v4 - 16);
      v4 -= 16;
      AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(v6);
      (*(**(v6 + 104) + 40))(*(v6 + 104), a2);
      v3 = *(this + 1);
    }

    while (v4 != v3);
    v4 = *(this + 2);
  }

  if (v4 == v3)
  {
    return;
  }

  v101 = this;
  do
  {
    v7 = *(v4 - 16);
    v4 -= 16;
    v103 = v7;
    v8 = *(v7 + 1) - *v7;
    if (!v8)
    {
      continue;
    }

    v9 = 0;
    v10 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v102 = v10;
    do
    {
      v104 = v9;
      nth_connection_list = AMCP::Graph::Manifest_Task::get_nth_connection_list(v103, v9, 0);
      v13 = *nth_connection_list;
      v12 = nth_connection_list[1];
      while (v13 != v12)
      {
        v14 = *v13;
        v15 = *(*v13 + 160);
        v16 = *(*v13 + 192);
        v17 = *(*v13 + 200);
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        *buf = 2;
        *&buf[8] = v15;
        *&buf[16] = 0;
        *&buf[24] = v16;
        boost::operators_impl::operator+(&v114, v14 + 168, buf);
        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        v18 = *(v14 + 328);
        if (v18)
        {
          v19 = pthread_self();
          v20 = pthread_mach_thread_np(v19);
          v21 = *v14;
          AMCP::Graph::Manifest_Buffer::get_buffer_id(buf, v14);
          AMCP::Wire_Identifier_to_string(&__p, buf);
          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          AMCP::Graph::Manifest_Log::add_message(v18, 4, "%u\tManifest_Buffer(%zu)::update_producer_target_samples:  source: %s", v20, v21, p_p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (v121 < 0)
          {
            operator delete(v119);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v23 = *(v14 + 328);
          if (v23)
          {
            sample_time = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
            v25 = AMCP::DAL::DAL_Time::get_sample_time(&v114);
            AMCP::Graph::Manifest_Log::add_message(v23, 4, "\t\tcurrent target %lld, potential target %lld", vcvtmd_s64_f64(sample_time), vcvtmd_s64_f64(v25));
          }
        }

        if (AMCP::DAL::DAL_Time::operator<((v14 + 248), &v114))
        {
          *(v14 + 248) = v114;
          *(v14 + 256) = v115;
          v27 = v116;
          v26 = v117;
          if (v117)
          {
            atomic_fetch_add_explicit(&v117->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v28 = *(v14 + 280);
          *(v14 + 272) = v27;
          *(v14 + 280) = v26;
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }
        }

        v29 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
        if (AMCP::DAL::DAL_Time::get_sample_time((v14 + 248)) != floor(v29))
        {
          v72 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v72 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v30);
          }

          v74 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v73 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
            v75 = *v74;
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          else
          {
            v75 = *v74;
          }

          if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
          {
            v92 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
            v93 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
            *buf = 136316162;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 456;
            *&buf[18] = 2080;
            *&buf[20] = "not (m_producer_target_position.get_sample_time().floor().get() == m_producer_target_position.get_sample_time().get_double())";
            *&buf[28] = 2048;
            *&buf[30] = vcvtmd_s64_f64(v92);
            *&buf[38] = 2048;
            v119 = *&v93;
            _os_log_error_impl(&dword_1DE1F9000, v75, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s %lld != %f", buf, 0x30u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v113);
          __cxa_allocate_exception(0x40uLL);
          v94 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
          v95 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
          caulk::make_string(&v106, "%lld != %f", v96, vcvtmd_s64_f64(v94), *&v95);
          std::logic_error::logic_error(&v107, &v106);
          v107.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v107);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v119 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v120 = 456;
          std::vector<void *>::vector[abi:ne200100](&v105);
        }

        v31 = *(v14 + 272);
        v32 = *(v14 + 280);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = *(v14 + 128);
        v33 = *(v14 + 136);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = (v31 | v34) == 0;
        if (!v31 || !v34)
        {
          goto LABEL_52;
        }

        v36 = (*(*v31 + 16))(v31);
        v31 = (*(*v34 + 16))(v34);
        v37 = *(v36 + 23);
        if (v37 >= 0)
        {
          v38 = *(v36 + 23);
        }

        else
        {
          v38 = *(v36 + 8);
        }

        v39 = *(v31 + 23);
        v40 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v39 = *(v31 + 8);
        }

        if (v38 == v39)
        {
          if (v37 >= 0)
          {
            v41 = v36;
          }

          else
          {
            v41 = *v36;
          }

          if (v40 >= 0)
          {
            v42 = v31;
          }

          else
          {
            v42 = *v31;
          }

          v31 = memcmp(v41, v42, v38);
          v35 = v31 == 0;
LABEL_52:
          if (!v33)
          {
            goto LABEL_54;
          }

LABEL_53:
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
          goto LABEL_54;
        }

        v35 = 0;
        if (v33)
        {
          goto LABEL_53;
        }

LABEL_54:
        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        if (!v35)
        {
          v76 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v76 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v31);
          }

          v78 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v77 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v77)
          {
            atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
            v79 = *v78;
            std::__shared_weak_count::__release_shared[abi:ne200100](v77);
          }

          else
          {
            v79 = *v78;
          }

          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 457;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(m_producer_target_position.get_clock(), get_timebase()))";
            _os_log_error_impl(&dword_1DE1F9000, v79, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v113);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v106, "", v97);
          std::logic_error::logic_error(&v107, &v106);
          v107.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v107);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v119 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v120 = 457;
          std::vector<void *>::vector[abi:ne200100](&v105);
        }

        v43 = *(v14 + 232);
        v44 = *(v14 + 240);
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = *(v14 + 128);
        v45 = *(v14 + 136);
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v47 = (v43 | v46) == 0;
        if (!v43 || !v46)
        {
          goto LABEL_76;
        }

        v48 = (*(*v43 + 16))(v43);
        v43 = (*(*v46 + 16))(v46);
        v49 = *(v48 + 23);
        if (v49 >= 0)
        {
          v50 = *(v48 + 23);
        }

        else
        {
          v50 = *(v48 + 8);
        }

        v51 = *(v43 + 23);
        v52 = v51;
        if ((v51 & 0x80u) != 0)
        {
          v51 = *(v43 + 8);
        }

        if (v50 == v51)
        {
          if (v49 >= 0)
          {
            v53 = v48;
          }

          else
          {
            v53 = *v48;
          }

          if (v52 >= 0)
          {
            v54 = v43;
          }

          else
          {
            v54 = *v43;
          }

          v43 = memcmp(v53, v54, v50);
          v47 = v43 == 0;
LABEL_76:
          if (!v45)
          {
            goto LABEL_78;
          }

LABEL_77:
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          goto LABEL_78;
        }

        v47 = 0;
        if (v45)
        {
          goto LABEL_77;
        }

LABEL_78:
        if (v44)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        if (!v47)
        {
          v80 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v80 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v43);
          }

          v82 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v81 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v81)
          {
            atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
            v83 = *v82;
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          else
          {
            v83 = *v82;
          }

          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 458;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(m_producer_write_position.get_clock(), get_timebase()))";
            _os_log_error_impl(&dword_1DE1F9000, v83, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v113);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v106, "", v98);
          std::logic_error::logic_error(&v107, &v106);
          v107.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v107);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v119 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v120 = 458;
          std::vector<void *>::vector[abi:ne200100](&v105);
        }

        v55 = *(v14 + 192);
        v56 = *(v14 + 200);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v58 = *(v14 + 128);
        v57 = *(v14 + 136);
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v59 = (v55 | v58) == 0;
        if (!v55 || !v58)
        {
          goto LABEL_100;
        }

        v60 = (*(*v55 + 16))(v55);
        v55 = (*(*v58 + 16))(v58);
        v61 = *(v60 + 23);
        if (v61 >= 0)
        {
          v62 = *(v60 + 23);
        }

        else
        {
          v62 = *(v60 + 8);
        }

        v63 = *(v55 + 23);
        v64 = v63;
        if ((v63 & 0x80u) != 0)
        {
          v63 = *(v55 + 8);
        }

        if (v62 == v63)
        {
          if (v61 >= 0)
          {
            v65 = v60;
          }

          else
          {
            v65 = *v60;
          }

          if (v64 >= 0)
          {
            v66 = v55;
          }

          else
          {
            v66 = *v55;
          }

          v55 = memcmp(v65, v66, v62);
          v59 = v55 == 0;
LABEL_100:
          if (!v57)
          {
            goto LABEL_102;
          }

LABEL_101:
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          goto LABEL_102;
        }

        v59 = 0;
        if (v57)
        {
          goto LABEL_101;
        }

LABEL_102:
        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (!v59)
        {
          v84 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v84 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v55);
          }

          v86 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v85 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v85)
          {
            atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            v87 = *v86;
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          else
          {
            v87 = *v86;
          }

          if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 459;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(m_consumer_read_position.get_clock(), get_timebase()))";
            _os_log_error_impl(&dword_1DE1F9000, v87, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v113);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v106, "", v99);
          std::logic_error::logic_error(&v107, &v106);
          v107.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v107);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v119 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v120 = 459;
          std::vector<void *>::vector[abi:ne200100](&v105);
        }

        v67 = AMCP::DAL::DAL_Time::operator<((v14 + 248), (v14 + 168));
        if (v67)
        {
          v88 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v88 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v67);
          }

          v90 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v89 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v89)
          {
            atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            v91 = *v90;
            std::__shared_weak_count::__release_shared[abi:ne200100](v89);
          }

          else
          {
            v91 = *v90;
          }

          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 464;
            *&buf[18] = 2080;
            *&buf[20] = "not (m_producer_target_position >= m_consumer_read_position)";
            _os_log_error_impl(&dword_1DE1F9000, v91, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v113);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v106, "", v100);
          std::logic_error::logic_error(&v107, &v106);
          v107.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&__p, &v107);
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = -1;
          __p.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          __p.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &__p);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_producer_target_samples()";
          v119 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v120 = 464;
          std::vector<void *>::vector[abi:ne200100](&v105);
        }

        v68 = *(v14 + 328);
        if (v68)
        {
          v69 = *(v14 + 160);
          v70 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 248));
          v71 = AMCP::DAL::DAL_Time::get_sample_time((v14 + 168));
          AMCP::Graph::Manifest_Log::add_message(v68, 4, "\t\tmin required: %lf  p target: %lf  c read: %lf", v69, v70, v71);
        }

        if (v117)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v117);
        }

        v13 += 2;
      }

      v9 = v104 + 1;
    }

    while (v104 + 1 != v102);
    v3 = *(v101 + 1);
  }

  while (v4 != v3);
}

void sub_1DE5578F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::write_to_dot_file(AMCP::Log::AMCP_Scope_Registry ***a1, uint64_t *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v4 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *v6;
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    v7 = *v6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v85 = a2;
    if (*(a2 + 23) < 0)
    {
      v85 = *a2;
    }

    *buf = 136315650;
    *&buf[4] = "Manifest.cpp";
    v110 = 1024;
    v111 = 992;
    v112 = 2080;
    v113 = v85;
    _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d Manifest::writing manifest dot file to %s", buf, 0x1Cu);
  }

  v92 = 0u;
  v93 = 0u;
  v94 = 1065353216;
  v116 = 0;
  v8 = MEMORY[0x1E69E5530] + 64;
  v115 = MEMORY[0x1E69E5530] + 64;
  v9 = *(MEMORY[0x1E69E54D0] + 16);
  *buf = *(MEMORY[0x1E69E54D0] + 8);
  *&buf[*(*buf - 24)] = v9;
  v10 = &buf[*(*buf - 24)];
  std::ios_base::init(v10, &buf[8]);
  v11 = MEMORY[0x1E69E5530] + 24;
  v10[1].__vftable = 0;
  v10[1].__fmtflags_ = -1;
  *buf = v11;
  v115 = v8;
  MEMORY[0x1E12C1110](&buf[8]);
  if (!std::filebuf::open())
  {
    std::ios_base::clear(&buf[*(*buf - 24)], *&v114[*(*buf - 24)] | 4);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "// You can view this on http://www.webgraphviz.com\n", 51);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v12 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tdigraph G {", 12);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v13 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tsize =8,8;", 13);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v14 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tnode [shape=plaintext fontcolor=white]", 39);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v15 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v15->__vftable[2].~facet_0)(v15, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n\t/* write the hidden positioning graph on the left */\n\t", 56);
  if (a1[2] != a1[1])
  {
    v16 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "P", 1);
      MEMORY[0x1E12C1220](buf, v16);
      v17 = (a1[2] - a1[1]) >> 4;
      if (v16 < v17 - 1)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "->", 2);
        v17 = (a1[2] - a1[1]) >> 4;
      }

      ++v16;
    }

    while (v16 < v17);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " [color=white]", 14);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v18 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n\t/* write the nodes */", 23);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v19 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v19->__vftable[2].~facet_0)(v19, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tnode [shape=record fontname=Helvetica fontsize=8 fontcolor=black];", 67);
  std::ios_base::getloc(&buf[*(*buf - 24)]);
  v20 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
  (v20->__vftable[2].~facet_0)(v20, 10);
  std::locale::~locale(&v101);
  std::ostream::put();
  std::ostream::flush();
  v21 = a1[1];
  v86 = a1[2];
  if (v21 == v86)
  {
LABEL_139:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\tnode [shape=box,style=rounded,filled,height=.1];", 51);
    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v83 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
    (v83->__vftable[2].~facet_0)(v83, 10);
    std::locale::~locale(&v101);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\n\t/* write the edges and buffers with clock coloring */", 55);
    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v84 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
    (v84->__vftable[2].~facet_0)(v84, 10);
    std::locale::~locale(&v101);
    std::ostream::put();
    std::ostream::flush();
    std::string::basic_string[abi:ne200100]<0>(&v101, "black");
    std::string::basic_string[abi:ne200100]<0>(&v102, "purple");
    std::string::basic_string[abi:ne200100]<0>(v103, "blue");
    std::string::basic_string[abi:ne200100]<0>(v104, "red");
    std::string::basic_string[abi:ne200100]<0>(v105, "green");
    std::string::basic_string[abi:ne200100]<0>(v106, "gray");
    std::string::basic_string[abi:ne200100]<0>(v107, "orange");
    __p[0] = 0;
    __p[1] = 0;
    v100 = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__p, &v101, &v108, 7uLL);
  }

  v22 = 0;
LABEL_16:
  v23 = MEMORY[0x1E12C1220](buf, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "[label=", 8);
  v24 = *v21;
  if (*(*v21 + 87) < 0)
  {
    std::string::__init_copy_ctor_external(&v101, *(v24 + 8), *(v24 + 9));
  }

  else
  {
    v101 = *(v24 + 64);
  }

  v25 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
  size = v101.__r_.__value_.__l.__size_;
  v26 = v101.__r_.__value_.__r.__words[0];
  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &v101;
  }

  else
  {
    v28 = v101.__r_.__value_.__r.__words[0];
  }

  if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = v101.__r_.__value_.__l.__size_;
  }

  if (v29 < 2)
  {
    goto LABEL_31;
  }

  v88 = v23;
  v30 = v28 + v29;
  v31 = v28;
  while (1)
  {
    v32 = memchr(v31, 45, v29 - 1);
    if (!v32)
    {
      goto LABEL_30;
    }

    if (*v32 == 15917)
    {
      break;
    }

    v31 = (v32 + 1);
    v29 = v30 - v31;
    if (v30 - v31 < 2)
    {
      goto LABEL_30;
    }
  }

LABEL_128:
  if (v32 != v30)
  {
    v23 = v88;
    if (v32 - v28 == -1 || ((std::string::replace(&v101, v32 - v28, 2uLL, "-\\>", 3uLL), v25 = HIBYTE(v101.__r_.__value_.__r.__words[2]), size = v101.__r_.__value_.__l.__size_, v26 = v101.__r_.__value_.__r.__words[0], (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0) ? (v28 = &v101) : (v28 = v101.__r_.__value_.__r.__words[0]), (v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v82 = HIBYTE(v101.__r_.__value_.__r.__words[2])) : (v82 = v101.__r_.__value_.__l.__size_), v82 < 2))
    {
LABEL_31:
      v34 = **v21;
      v33 = *(*v21 + 1);
      v87 = *(*v21 + 3);
      v89 = *(*v21 + 4);
      v108.__r_.__value_.__r.__words[2] = 0x200000000000000;
      *&v108.__r_.__value_.__l.__data_ = 0x207BuLL;
      v35 = v33 - v34;
      if (v33 != v34)
      {
        std::string::append(&v108, "{ ", 2uLL);
        v36 = 0;
        v37 = 0xCCCCCCCCCCCCCCCDLL * (v35 >> 3);
        do
        {
          AMCP::Graph::get_connection_format_string(v90, *v21, 0, v36);
          std::to_string(&v95, v36);
          v38 = std::string::insert(&v95, 0, " <source", 8uLL);
          v39 = *&v38->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v39;
          v38->__r_.__value_.__l.__size_ = 0;
          v38->__r_.__value_.__r.__words[2] = 0;
          v38->__r_.__value_.__r.__words[0] = 0;
          v40 = std::string::append(&v96, ">", 1uLL);
          v41 = *&v40->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          if ((v91 & 0x80u) == 0)
          {
            v42 = v90;
          }

          else
          {
            v42 = v90[0];
          }

          if ((v91 & 0x80u) == 0)
          {
            v43 = v91;
          }

          else
          {
            v43 = v90[1];
          }

          v44 = std::string::append(&v97, v42, v43);
          v45 = *&v44->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v98, " \\  ", 4uLL);
          v47 = *&v46->__r_.__value_.__l.__data_;
          v100 = v46->__r_.__value_.__r.__words[2];
          *__p = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          if (v100 >= 0)
          {
            v48 = __p;
          }

          else
          {
            v48 = __p[0];
          }

          if (v100 >= 0)
          {
            v49 = HIBYTE(v100);
          }

          else
          {
            v49 = __p[1];
          }

          std::string::append(&v108, v48, v49);
          if (SHIBYTE(v100) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (v37 - 1 != v36)
          {
            std::string::append(&v108, " | ", 3uLL);
          }

          if (v91 < 0)
          {
            operator delete(v90[0]);
          }

          ++v36;
        }

        while (v37 != v36);
        std::string::append(&v108, "} | ", 4uLL);
        v25 = HIBYTE(v101.__r_.__value_.__r.__words[2]);
        size = v101.__r_.__value_.__l.__size_;
        v26 = v101.__r_.__value_.__r.__words[0];
      }

      if ((v25 & 0x80u) == 0)
      {
        v50 = &v101;
      }

      else
      {
        v50 = v26;
      }

      if ((v25 & 0x80u) == 0)
      {
        v51 = v25;
      }

      else
      {
        v51 = size;
      }

      std::string::append(&v108, v50, v51);
      if (v89 != v87)
      {
        std::string::append(&v108, " | { ", 5uLL);
        v52 = 0;
        v53 = 0xCCCCCCCCCCCCCCCDLL * ((v89 - v87) >> 3);
        do
        {
          AMCP::Graph::get_connection_format_string(v90, *v21, 1u, v52);
          std::to_string(&v95, v52);
          v54 = std::string::insert(&v95, 0, " <dest", 6uLL);
          v55 = *&v54->__r_.__value_.__l.__data_;
          v96.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
          *&v96.__r_.__value_.__l.__data_ = v55;
          v54->__r_.__value_.__l.__size_ = 0;
          v54->__r_.__value_.__r.__words[2] = 0;
          v54->__r_.__value_.__r.__words[0] = 0;
          v56 = std::string::append(&v96, ">", 1uLL);
          v57 = *&v56->__r_.__value_.__l.__data_;
          v97.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
          *&v97.__r_.__value_.__l.__data_ = v57;
          v56->__r_.__value_.__l.__size_ = 0;
          v56->__r_.__value_.__r.__words[2] = 0;
          v56->__r_.__value_.__r.__words[0] = 0;
          if ((v91 & 0x80u) == 0)
          {
            v58 = v90;
          }

          else
          {
            v58 = v90[0];
          }

          if ((v91 & 0x80u) == 0)
          {
            v59 = v91;
          }

          else
          {
            v59 = v90[1];
          }

          v60 = std::string::append(&v97, v58, v59);
          v61 = *&v60->__r_.__value_.__l.__data_;
          v98.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
          *&v98.__r_.__value_.__l.__data_ = v61;
          v60->__r_.__value_.__l.__size_ = 0;
          v60->__r_.__value_.__r.__words[2] = 0;
          v60->__r_.__value_.__r.__words[0] = 0;
          v62 = std::string::append(&v98, " \\  ", 4uLL);
          v63 = *&v62->__r_.__value_.__l.__data_;
          v100 = v62->__r_.__value_.__r.__words[2];
          *__p = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          if (v100 >= 0)
          {
            v64 = __p;
          }

          else
          {
            v64 = __p[0];
          }

          if (v100 >= 0)
          {
            v65 = HIBYTE(v100);
          }

          else
          {
            v65 = __p[1];
          }

          std::string::append(&v108, v64, v65);
          if (SHIBYTE(v100) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v98.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v97.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v96.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v95.__r_.__value_.__l.__data_);
          }

          if (v53 - 1 != v52)
          {
            std::string::append(&v108, " | ", 3uLL);
          }

          if (v91 < 0)
          {
            operator delete(v90[0]);
          }

          ++v52;
        }

        while (v53 != v52);
      }

      std::string::append(&v108, "}}", 2uLL);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = &v108;
      }

      else
      {
        v66 = v108.__r_.__value_.__r.__words[0];
      }

      if ((v108.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = HIBYTE(v108.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = v108.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v66, v67);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " ];", 4);
      std::ios_base::getloc((v23 + *(*v23 - 24)));
      v68 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
      (v68->__vftable[2].~facet_0)(v68, 10);
      std::locale::~locale(&v101);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v108.__r_.__value_.__l.__data_);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "\t\t{rank=same P", 14);
      v69 = MEMORY[0x1E12C1220](buf, v22);
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " ", 1);
      v71 = MEMORY[0x1E12C1220](v70, v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "}; /* fix this node to the hidden node */", 41);
      std::ios_base::getloc((v71 + *(*v71 - 24)));
      v72 = std::locale::use_facet(&v101, MEMORY[0x1E69E5318]);
      (v72->__vftable[2].~facet_0)(v72, 10);
      std::locale::~locale(&v101);
      std::ostream::put();
      std::ostream::flush();
      v73 = 0x9DDFEA08EB382D69 * ((8 * (*v21 & 0x1FFFFFFF) + 8) ^ (*v21 >> 32));
      v74 = 0x9DDFEA08EB382D69 * ((*v21 >> 32) ^ (v73 >> 47) ^ v73);
      v75 = 0x9DDFEA08EB382D69 * (v74 ^ (v74 >> 47));
      if (!*(&v92 + 1))
      {
        goto LABEL_122;
      }

      v76 = vcnt_s8(*(&v92 + 8));
      v76.i16[0] = vaddlv_u8(v76);
      if (v76.u32[0] > 1uLL)
      {
        v77 = 0x9DDFEA08EB382D69 * (v74 ^ (v74 >> 47));
        if (v75 >= *(&v92 + 1))
        {
          v77 = v75 % *(&v92 + 1);
        }
      }

      else
      {
        v77 = v75 & (*(&v92 + 1) - 1);
      }

      v78 = *(v92 + 8 * v77);
      if (!v78 || (v79 = *v78) == 0)
      {
LABEL_122:
        operator new();
      }

      while (1)
      {
        v80 = v79[1];
        if (v80 == v75)
        {
          if (v79[2] == *v21)
          {
            v79[3] = v22++;
            v21 += 2;
            if (v21 == v86)
            {
              goto LABEL_139;
            }

            goto LABEL_16;
          }
        }

        else
        {
          if (v76.u32[0] > 1uLL)
          {
            if (v80 >= *(&v92 + 1))
            {
              v80 %= *(&v92 + 1);
            }
          }

          else
          {
            v80 &= *(&v92 + 1) - 1;
          }

          if (v80 != v77)
          {
            goto LABEL_122;
          }
        }

        v79 = *v79;
        if (!v79)
        {
          goto LABEL_122;
        }
      }
    }

    v30 = v28 + v82;
    v81 = v28;
    do
    {
      v32 = memchr(v81, 45, v82 - 1);
      if (!v32)
      {
        break;
      }

      if (*v32 == 15917)
      {
        goto LABEL_128;
      }

      v81 = (v32 + 1);
      v82 = v30 - v81;
    }

    while (v30 - v81 >= 2);
  }

LABEL_30:
  v23 = v88;
  goto LABEL_31;
}

void sub_1DE5596FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::locale a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, std::locale a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, std::locale a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a39);
  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(&a17);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a47);
  a47.__locale_ = &a43;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a47);
  a65 = *MEMORY[0x1E69E54D0];
  *(&a65 + *(a65 - 24)) = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1E12C1120](&a66);
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](a10);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&a23);
  _Unwind_Resume(a1);
}

void AMCP::Graph::get_connection_format_string(uint64_t a1, AMCP::Log::AMCP_Scope_Registry *a2, unsigned int a3, unint64_t a4)
{
  v51[2] = *MEMORY[0x1E69E9840];
  nth_connection_list = AMCP::Graph::Manifest_Task::get_nth_connection_list(a2, a4, a3);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  std::vector<std::shared_ptr<AMCP::Graph::Manifest_Buffer>>::__init_with_size[abi:ne200100]<std::shared_ptr<AMCP::Graph::Manifest_Buffer>*,std::shared_ptr<AMCP::Graph::Manifest_Buffer>*>(&v39, *nth_connection_list, nth_connection_list[1], (nth_connection_list[1] - *nth_connection_list) >> 4);
  std::string::basic_string[abi:ne200100]<0>(a1, "");
  if (v40 == v39)
  {
    goto LABEL_54;
  }

  v6 = *(*v39 + 96);
  v7 = *(*v39 + 100);
  v9 = *(*v39 + 112);
  v8 = *(*v39 + 116);
  std::to_string(&v44, *(*v39 + 88));
  v10 = std::string::append(&v44, "-", 1uLL);
  v12 = *&v10->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v12;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (v6 == 1819304813)
  {
    v13 = 0;
    memset(&__s, 0, sizeof(__s));
    if (v7)
    {
      v13 = 1;
      *(&__s.__r_.__value_.__s + 23) = 1;
      __s.__r_.__value_.__s.__data_[0] = 70;
    }

    if ((v7 & 5) == 4)
    {
      v14 = 83;
    }

    else
    {
      if ((v7 & 5) != 0)
      {
        goto LABEL_11;
      }

      v14 = 85;
    }

    v13 = 1;
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v14;
LABEL_11:
    if (v9)
    {
      if ((v7 & 0x20) != 0)
      {
        v20 = 1;
      }

      else
      {
        v20 = v8;
        if (!v8)
        {
          goto LABEL_14;
        }
      }

      v21 = 8 * (v9 / v20);
      goto LABEL_17;
    }

LABEL_14:
    v21 = 0;
LABEL_17:
    std::to_string(&v48, v21);
    v22 = std::string::insert(&v48, 0, &__s, v13);
    v23 = *&v22->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if ((v7 & 0x20) != 0)
    {
      v24 = "";
    }

    else
    {
      v24 = "I";
    }

    v25 = std::string::append(&v49, v24, (v7 & 0x20) == 0);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v43 = v25->__r_.__value_.__r.__words[2];
    *__p = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    v19 = HIBYTE(v43);
    v11 = __p[1];
    goto LABEL_27;
  }

  LODWORD(v12) = bswap32(v6);
  v15 = vzip1_s8(*&v12, *&v12);
  v16.i64[0] = 0x1F0000001FLL;
  v16.i64[1] = 0x1F0000001FLL;
  v17.i64[0] = 0x5F0000005FLL;
  v17.i64[1] = 0x5F0000005FLL;
  v18 = vbsl_s8(vmovn_s32(vcgtq_u32(v17, vsraq_n_s32(v16, vshlq_n_s32(vmovl_u16(v15), 0x18uLL), 0x18uLL))), v15, 0x2E002E002E002ELL);
  v19 = 4;
  HIBYTE(v43) = 4;
  LODWORD(__p[0]) = vuzp1_s8(v18, v18).u32[0];
  BYTE4(__p[0]) = 0;
LABEL_27:
  if ((v19 & 0x80u) == 0)
  {
    v27 = __p;
  }

  else
  {
    v27 = __p[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v28 = v19;
  }

  else
  {
    v28 = v11;
  }

  v29 = std::string::append(&v45, v27, v28);
  v30 = *&v29->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v30;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  v31 = std::string::append(&v46, "-", 1uLL);
  v32 = *&v31->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__s, v8);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v47, p_s, size);
  v36 = v35->__r_.__value_.__r.__words[0];
  v51[0] = v35->__r_.__value_.__l.__size_;
  *(v51 + 7) = *(&v35->__r_.__value_.__r.__words[1] + 7);
  v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v38 = v51[0];
  *a1 = v36;
  *(a1 + 8) = v38;
  *(a1 + 15) = *(v51 + 7);
  *(a1 + 23) = v37;
LABEL_54:
  __s.__r_.__value_.__r.__words[0] = &v39;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__s);
}

void sub_1DE559E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (*(v51 - 121) < 0)
  {
    operator delete(*(v51 - 144));
  }

  if (a50 < 0)
  {
    operator delete(__p);
  }

  if (*(v51 - 89) < 0)
  {
    operator delete(*(v51 - 112));
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (*(v50 + 23) < 0)
  {
    operator delete(*v50);
  }

  *(v51 - 112) = &a10;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100]((v51 - 112));
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>,std::__unordered_map_hasher<std::shared_ptr<AMCP::Graph::Timebase>,std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,true>,std::__unordered_map_equal<std::shared_ptr<AMCP::Graph::Timebase>,std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<AMCP::Graph::Timebase>,unsigned long>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<AMCP::Graph::Timebase> const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(float *a1, unint64_t a2, void **a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
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
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
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

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>,std::__unordered_map_hasher<AMCP::Graph::Manifest_Task *,std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>,std::hash<AMCP::Graph::Manifest_Task *>,std::equal_to<AMCP::Graph::Manifest_Task *>,true>,std::__unordered_map_equal<AMCP::Graph::Manifest_Task *,std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>,std::equal_to<AMCP::Graph::Manifest_Task *>,std::hash<AMCP::Graph::Manifest_Task *>,true>,std::allocator<std::__hash_value_type<AMCP::Graph::Manifest_Task *,unsigned long>>>::__emplace_unique_key_args<AMCP::Graph::Manifest_Task *,std::piecewise_construct_t const&,std::tuple<AMCP::Graph::Manifest_Task *&&>,std::tuple<>>(void *a1, unint64_t a2, void **a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != a2)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t AMCP::Graph::Manifest::get_overload_time_in_host_time(AMCP::Graph::Manifest *this, const AMCP::Graph::Manifest_Execution_Context *a2)
{
  v4 = *(this + 9);
  v5 = *(this + 10);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(v17, *(v4 + 64));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a2 + 10);
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a2);
  }

  v7 = (v6 * vcvtmd_s64_f64(*(a2 + 1)));
  AMCP::Graph::Manifest::get_master_timebase(&v10, *(this + 9), *(this + 10));
  v11 = 2;
  v12 = v7;
  v13 = 0;
  v14 = v10;
  boost::operators_impl::operator+(v15, v17, &v11);
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v14 + 1));
  }

  host_time = AMCP::DAL::DAL_Time::get_host_time(v15);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  return host_time;
}

void sub_1DE55ABD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (*(v21 - 56))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v21 - 56));
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE55AC10()
{
  if (!v0)
  {
    JUMPOUT(0x1DE55AC08);
  }

  JUMPOUT(0x1DE55AC00);
}

void AMCP::Graph::Manifest::end_processing(uint64_t **this, int a2, const AMCP::Graph::Manifest_Execution_Context *a3)
{
  v86 = *MEMORY[0x1E69E9840];
  if ((*this & 0xFFFFFFFE) != 2)
  {
    return;
  }

  v4 = this;
  v5 = this[1];
  v6 = this[2];
  while (v5 != v6)
  {
    v7 = *v5;
    *(v7 + 88) = 0;
    v8 = *(*(v7 + 48) + 312);
    if (v8)
    {
      std::function<void ()>::operator()(v8, a2);
    }

    v5 += 2;
  }

  v9 = v4[9];
  v10 = *(v9 + 3);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = v10[12];
      v13 = *(v12 + 304);
      if (v13)
      {
        if (*(v12 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v81, *(v12 + 8), *(v12 + 16));
        }

        else
        {
          v81 = *(v12 + 8);
        }

        v82 = *(v12 + 32);
        LODWORD(v83) = *(v12 + 40);
        *buf = a2;
        *&buf[8] = *&v81.__r_.__value_.__l.__data_;
        v14 = v81.__r_.__value_.__r.__words[2];
        memset(&v81, 0, sizeof(v81));
        *&buf[24] = v14;
        v74 = v82;
        LODWORD(v75) = v83;
        v15 = (*(*v13 + 192))(v13, buf, *(v12 + 156));
        if ((buf[31] & 0x80000000) != 0)
        {
          operator delete(*&buf[8]);
        }

        v11 |= v15;
      }

      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = *(v9 + 8);
  if (*v16 == 1)
  {
    v17 = *(v9 + 12);
    v18 = *(v9 + 13);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = (*(*v17 + 168))(v17);
    v20 = v19;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if ((v20 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_26:
      AMCP::Graph::create_cycle_info(buf, v16, a3);
      v22 = *(v9 + 14);
      v21 = *(v9 + 15);
      if (v22 != v21)
      {
        v64 = v9;
        v65 = v4;
        do
        {
          if (v11)
          {
            AMCP::IO_Core::Device_Connection::end_cycle(*v22, buf, a3);
          }

          v23 = *v22;
          v24 = (*v22)[1];
          if (v24)
          {
            v25 = v16[10];
            v26 = std::__shared_weak_count::lock(v24);
            if (v26)
            {
              v27 = v26;
              v28 = *v23;
              if (*v23)
              {
                v29 = atomic_load((v28 + 128));
                if (v29 == 1)
                {
                  v31 = *(v28 + 96);
                  v30 = *(v28 + 104);
                  if (v30)
                  {
                    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v66 = v30;
                  v32 = *(v28 + 120);
                  v69[0] = *(v28 + 112);
                  v69[1] = v32;
                  if (v32)
                  {
                    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  AMCP::DAL::DAL_Time_Delta::translate_time_delta(&v81, a3, v69);
                  if ((v81.__r_.__value_.__s.__data_[0] & 2) == 0)
                  {
                    AMCP::DAL::DAL_Time_Delta::validate(&v81);
                  }

                  (*(*v31 + 232))(v31, v25, vcvtmd_s64_f64(*&v81.__r_.__value_.__l.__size_));
                  if (v83)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v83);
                  }

                  v4 = v65;
                  if (v32)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
                  }

                  v9 = v64;
                  if (v66)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
                  }
                }

                v33 = atomic_load((v28 + 128));
                if (v33 == 1)
                {
                  v81.__r_.__value_.__r.__words[0] = &unk_1F5988D60;
                  v82 = &v81;
                  AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v28, &v81);
                  std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](&v81);
                }
              }

              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }
          }

          v22 += 2;
        }

        while (v22 != v21);
      }

      *v16 = 0;
      for (i = *(v9 + 3); i; i = *i)
      {
        if (v11)
        {
          AMCP::Graph::Manifest_Buffer::advance(i[12]);
        }

        v35 = i[12];
        v36 = v35[37];
        if (v36)
        {
          v35[37] = v36 - 1;
        }
      }

      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

      if (v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      goto LABEL_66;
    }

    if (v19)
    {
      goto LABEL_26;
    }
  }

LABEL_66:
  v37 = *(v9 + 14);
  for (j = *(v9 + 15); v37 != j; v37 += 2)
  {
    v39 = *v37;
    v40 = (*v37)[1];
    if (v40)
    {
      v41 = std::__shared_weak_count::lock(v40);
      if (v41)
      {
        v42 = v41;
        v43 = *v39;
        if (v43)
        {
          v45 = *(v43 + 96);
          v44 = *(v43 + 104);
          if (v44)
          {
            atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            if (!v45)
            {
              goto LABEL_92;
            }

            v45 = *(v43 + 96);
            v46 = *(v43 + 104);
            if (v46)
            {
              atomic_fetch_add_explicit((v46 + 8), 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            if (!v45)
            {
LABEL_92:
              v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v54 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v44);
              }

              v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v55)
              {
                atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
                v57 = *v56;
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }

              else
              {
                v57 = *v56;
              }

              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "Device_Connection.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 92;
                *&buf[18] = 2080;
                *&buf[20] = "not (device_state->get_engine())";
                _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v72);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string(&v70, "", v62);
              std::logic_error::logic_error(&v71, &v70);
              v71.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v81, &v71);
              v82 = 0;
              v83 = 0;
              v84 = 0;
              v85 = -1;
              v81.__r_.__value_.__r.__words[0] = &unk_1F5991430;
              v81.__r_.__value_.__r.__words[2] = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v81);
              v74 = "void AMCP::IO_Core::Device_Connection::cleanup_processing()";
              v75 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Device_Connection.cpp";
              v76 = 92;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v68);
            }

            v46 = 0;
          }

          *buf = &unk_1F5988E60;
          *&buf[8] = v45;
          *&buf[16] = v46;
          *&buf[24] = buf;
          AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v43, buf);
          std::__function::__value_func<void ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](buf);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }
    }

    v47 = *v37;
    v48 = (*v37)[1];
    if (v48)
    {
      v49 = std::__shared_weak_count::lock(v48);
      if (v49)
      {
        if (*v47)
        {
          v50 = (*v47 + 128);
          v51 = atomic_load(v50);
          if (v51 <= 0)
          {
            v58 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v58 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v49);
            }

            v60 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v59 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v59)
            {
              atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
              v61 = *v60;
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            else
            {
              v61 = *v60;
            }

            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "Device.h";
              *&buf[12] = 1024;
              *&buf[14] = 81;
              *&buf[18] = 2080;
              *&buf[20] = "not (m_refcount > 0)";
              _os_log_error_impl(&dword_1DE1F9000, v61, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v72);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v70, "", v63);
            std::logic_error::logic_error(&v71, &v70);
            v71.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v81, &v71);
            v82 = 0;
            v83 = 0;
            v84 = 0;
            v85 = -1;
            v81.__r_.__value_.__r.__words[0] = &unk_1F5991430;
            v81.__r_.__value_.__r.__words[2] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v81);
            v74 = "void AMCP::IO_Core::Device_Node_State::remove_reference()";
            v75 = "MCP/AMCP/IO/IO_Core/Device.h";
            v76 = 81;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v68);
          }

          atomic_fetch_add(v50, 0xFFFFFFFF);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }
    }
  }

  AMCP::Graph::Manifest_Inventory::release_power_assertions(v9);
  *v4 = 1;
  v52 = v4[12];
  if (v52)
  {
    AMCP::Graph::Manifest::get_iocontext_uid(buf, v4);
    v53 = buf[23] >= 0 ? buf : *buf;
    AMCP::Graph::Manifest_Log::add_message(v52, 1, "Manifest: %s Hardware End: %p", v53, v4);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1DE55B56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, int a41, __int16 a42, char a43, char a44)
{
  v48 = *(v46 - 128);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  AMCP::Graph::IO_Proc_Cycle_Info::~IO_Proc_Cycle_Info(&__p);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest::teardown_processing(AMCP::Graph::Manifest *this)
{
  if (*this == 1)
  {
    v2 = *(this + 9);
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::Graph::Timebase_Set::stop(v3);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(this + 12);
    if (v5)
    {
      AMCP::Graph::Manifest::get_iocontext_uid(__p, this);
      if (v8 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      AMCP::Graph::Manifest_Log::add_message(v5, 1, "Manifest: %s Hardware Stop: %p", v6, this);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *this = 0;
  }
}

void sub_1DE55B784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest::dump_manifest_log(std::__shared_weak_count **this)
{
  if (this)
  {
    AMCP::Graph::Manifest_Log::get_queue(this);
    std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v3, *this, this[1]);
    v2 = atomic_load(&unk_1ECDAB3F8);
    if (v2)
    {
      atomic_store(1u, byte_1ECDAB3F9);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN10applesauce8dispatch2v19sync_implIRZN4AMCP5Graph12Manifest_Log4dumpEvE3__0EEvP16dispatch_queue_sOT_NSt3__117integral_constantIbLb1EEE_block_invoke;
    block[3] = &__block_descriptor_tmp_14_5580;
    block[4] = &v3;
    dispatch_sync(AMCP::Graph::Manifest_Log::get_queue(void)::s_instance[0], block);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void AMCP::IO_Core::DSP::~DSP(AMCP::IO_Core::DSP *this)
{
  AMCP::IO_Core::Node::~Node(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_MetaSubDevice::HandleGroupObjectPropertiesChanged(HALS_MetaSubDevice *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, AudioObjectPropertyAddress *a8, char a9, uint64_t a10, NSObject **a11)
{
  v20 = HALS_ObjectMap::CopyObjectByObjectID(*(a1 + 12));
  if (v20)
  {
    v32 = a3;
    v21 = *a11;
    object = v21;
    if (v21)
    {
      dispatch_retain(v21);
    }

    (*(*v20 + 176))(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, &object);
    if (object)
    {
      dispatch_release(object);
    }

    if (HALS_MetaSubDevice::_GetObject(a1) && a4)
    {
      v22 = 0;
      v23 = a8;
      v24 = a4;
      do
      {
        v25 = *(a5 + 4 * v22);
        if (v25 == *(HALS_MetaSubDevice::_GetObject(a1) + 16))
        {
          v26 = v22;
        }

        else
        {
          v23 += *(a6 + 4 * v22);
          v26 = -1;
        }

        if (v26 != -1)
        {
          break;
        }

        ++v22;
      }

      while (v22 < v24);
      memset(v33, 0, sizeof(v33));
      if (v26 != -1)
      {
        v27 = *(a6 + 4 * v26);
        if (v27)
        {
          for (i = 0; i < v27; ++i)
          {
            mSelector = v23->mSelector;
            ++v23;
            if (HALS_MetaDevice::PassRealNotificationToClient(mSelector, 1))
            {
              CAPropertyAddressList::AppendUniqueItem(v33, a8, v30);
              v27 = *(a6 + 4 * v26);
            }

            ++a8;
          }

          v31 = *&v33[0];
          if (*&v33[0] != *(&v33[0] + 1))
          {
            HALS_Object::PropertiesChanged(a1, *(a1 + 4), v32, -1431655765 * ((*(&v33[0] + 1) - *&v33[0]) >> 2), *&v33[0]);
          }

          if (v31)
          {
            operator delete(v31);
          }
        }
      }
    }
  }

  HALS_ObjectMap::ReleaseObject(v20, v19);
}

void sub_1DE55BAA4(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object)
{
  if (v19)
  {
    operator delete(v19);
  }

  HALS_ObjectMap::ReleaseObject(v18, a2);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::_GetObject(HALS_MetaSubDevice *this)
{
  if ((*(this + 14) ^ (*(this + 14) >> 31)) >= 2)
  {
    boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return *(this + 8);
}

void HALS_MetaSubDevice::HandleObjectPropertiesChanged(HALS_MetaSubDevice *this, const HALS_Object *a2, uint64_t a3, uint64_t a4, AudioObjectPropertyAddress *a5)
{
  v10 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v12 = v10;
  if (v10)
  {
    (*(*v10 + 168))(v10, a2, a3, a4, a5);
    if (HALS_MetaSubDevice::_GetObject(this) == a2)
    {
      memset(v15, 0, sizeof(v15));
      if (a4)
      {
        a4 = a4;
        do
        {
          if (HALS_MetaDevice::PassRealNotificationToClient(a5->mSelector, 1))
          {
            CAPropertyAddressList::AppendUniqueItem(v15, a5, v13);
          }

          ++a5;
          --a4;
        }

        while (a4);
        v14 = *&v15[0];
        if (*&v15[0] != *(&v15[0] + 1))
        {
          HALS_Object::PropertiesChanged(this, *(this + 4), a3, -1431655765 * ((*(&v15[0] + 1) - *&v15[0]) >> 2), *&v15[0]);
        }

        if (v14)
        {
          operator delete(v14);
        }
      }
    }
  }

  HALS_ObjectMap::ReleaseObject(v12, v11);
}

void sub_1DE55BC70(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v10)
  {
    operator delete(v10);
  }

  HALS_ObjectMap::ReleaseObject(v9, a2);
  _Unwind_Resume(a1);
}

void HALS_MetaSubDevice::SetPropertyData(HALS_MetaSubDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v52 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v40 = 2003332927;
LABEL_45:
    exception[2] = v40;
  }

  v16 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device *>>(this + 14);
  if (!v16)
  {
    *&buf.mSelector = &unk_1F59873D0;
    boost::throw_exception<boost::bad_get>();
  }

  if (*v16 && HALB_Info::PropertyRequiresHogMode(a3->mSelector, v17))
  {
    v18 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device *>>(this + 14);
    if (!v18)
    {
      *&buf.mSelector = &unk_1F59873D0;
      boost::throw_exception<boost::bad_get>();
    }

    v19 = atomic_load((*v18 + 160));
    v20 = a8 ? *(a8 + 60) : getpid();
    if (v19 != -1 && v19 != v20)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v40 = 560492391;
      goto LABEL_45;
    }
  }

  v22 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1685218931)
  {
    if (mSelector != 1685218913)
    {
      if (mSelector == 1685218929)
      {
        if (a4 > 3)
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 0x40000000;
          v45[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_15;
          v45[3] = &__block_descriptor_tmp_16_11134;
          v45[4] = this;
          v45[5] = a5;
          v24 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v24, v45);
          v25 = *(this + 4);
          if (a8)
          {
            v26 = *(a8 + 4);
          }

          else
          {
            v26 = 0;
          }

          strcpy(&buf, "qfrdbolg");
          BYTE1(buf.mElement) = 0;
          HIWORD(buf.mElement) = 0;
          HALS_Object::PropertiesChanged(this, v25, v26, 1, &buf);
          goto LABEL_41;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_55;
        }

        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v50 = 1024;
        v51 = 287;
        v41 = MEMORY[0x1E69E9C10];
        v42 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
        goto LABEL_54;
      }

LABEL_25:
      if (HALS_MetaSubDevice::_GetObject(this))
      {
        Object = HALS_MetaSubDevice::_GetObject(this);
        (*(*Object + 128))(Object, a2, a3, a4, a5, a6, a7, a8);
        goto LABEL_41;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v50 = 1024;
        v51 = 298;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::SetPropertyData: no real device", &buf, 0x12u);
      }

      v43 = 1852797029;
LABEL_56:
      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = off_1F5991DD8;
      v44[2] = v43;
    }

    if (a4 > 3)
    {
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 0x40000000;
      v46[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_13;
      v46[3] = &__block_descriptor_tmp_14_11132;
      v46[4] = this;
      v46[5] = a5;
      v32 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v32, v46);
      v33 = *(this + 4);
      if (a8)
      {
        v34 = *(a8 + 4);
      }

      else
      {
        v34 = 0;
      }

      strcpy(&buf, "afrdbolg");
      BYTE1(buf.mElement) = 0;
      HIWORD(buf.mElement) = 0;
      HALS_Object::PropertiesChanged(this, v33, v34, 1, &buf);
      goto LABEL_41;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      buf.mSelector = 136315394;
      *&buf.mScope = "HALS_MetaSubDevice.cpp";
      v50 = 1024;
      v51 = 274;
      v41 = MEMORY[0x1E69E9C10];
      v42 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
      goto LABEL_54;
    }

    goto LABEL_55;
  }

  if (mSelector == 1685218932)
  {
    if (a4 <= 3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v50 = 1024;
        v51 = 261;
        v41 = MEMORY[0x1E69E9C10];
        v42 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
        goto LABEL_54;
      }

      goto LABEL_55;
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 0x40000000;
    v47[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_11;
    v47[3] = &__block_descriptor_tmp_12_11130;
    v47[4] = this;
    v47[5] = a5;
    v35 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v35, v47);
    v36 = *(this + 4);
    if (a8)
    {
      v37 = *(a8 + 4);
    }

    else
    {
      v37 = 0;
    }

    strcpy(&buf, "tfrdbolg");
    BYTE1(buf.mElement) = 0;
    HIWORD(buf.mElement) = 0;
    HALS_Object::PropertiesChanged(this, v36, v37, 1, &buf);
  }

  else
  {
    if (mSelector != 2020373603)
    {
      goto LABEL_25;
    }

    if (a4 <= 7)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        buf.mSelector = 136315394;
        *&buf.mScope = "HALS_MetaSubDevice.cpp";
        v50 = 1024;
        v51 = 248;
        v41 = MEMORY[0x1E69E9C10];
        v42 = "%25s:%-5d  HALS_MetaSubDevice::_SetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
LABEL_54:
        _os_log_impl(&dword_1DE1F9000, v41, OS_LOG_TYPE_ERROR, v42, &buf, 0x12u);
      }

LABEL_55:
      v43 = 561211770;
      goto LABEL_56;
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 0x40000000;
    v48[2] = ___ZN18HALS_MetaSubDevice15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
    v48[3] = &__block_descriptor_tmp_10_11128;
    v48[4] = this;
    v48[5] = a3;
    v48[6] = a5;
    v27 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v27, v48);
    v28 = *(this + 4);
    if (a8)
    {
      v29 = *(a8 + 4);
    }

    else
    {
      v29 = 0;
    }

    mScope = a3->mScope;
    buf.mSelector = 2020373603;
    *&buf.mScope = mScope;
    HALS_Object::PropertiesChanged(this, v28, v29, 1, &buf);
  }

LABEL_41:
  HALS_ObjectMap::ReleaseObject(v22, v31);
}

_DWORD *boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device *>>(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
      result = 0;
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

void HALS_MetaSubDevice::GetPropertyData(HALS_MetaSubDevice *this, uint64_t a2, const AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, void *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v33 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v22 = 2003332927;
    goto LABEL_35;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1685218931)
  {
    if (mSelector == 1685218932)
    {
      if (a4 > 3)
      {
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_4;
        v27[3] = &__block_descriptor_tmp_5_11140;
        v27[4] = this;
        v27[5] = a6;
        v15 = (*(*this + 64))(this);
        v16 = v27;
        goto LABEL_19;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v30 = "HALS_MetaSubDevice.cpp";
      v31 = 1024;
      v32 = 203;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensation";
      goto LABEL_33;
    }

    if (mSelector != 2020373603)
    {
      goto LABEL_11;
    }

    if (a4 > 7)
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 0x40000000;
      v28[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v28[3] = &__block_descriptor_tmp_3_11138;
      v28[4] = this;
      v28[5] = a6;
      v28[6] = a3;
      v17 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v17, v28);
      v18 = 8;
LABEL_20:
      *a5 = v18;
      return;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    v30 = "HALS_MetaSubDevice.cpp";
    v31 = 1024;
    v32 = 194;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyExtraLatency";
LABEL_33:
    _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
LABEL_34:
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v22 = 561211770;
    goto LABEL_35;
  }

  if (mSelector == 1685218913)
  {
    if (a4 > 3)
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_6;
      v26[3] = &__block_descriptor_tmp_7_11142;
      v26[4] = this;
      v26[5] = a6;
      v15 = (*(*this + 64))(this);
      v16 = v26;
      goto LABEL_19;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    v30 = "HALS_MetaSubDevice.cpp";
    v31 = 1024;
    v32 = 212;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationAlgorithm";
    goto LABEL_33;
  }

  if (mSelector == 1685218929)
  {
    if (a4 > 3)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_8;
      v25[3] = &__block_descriptor_tmp_9_11144;
      v25[4] = this;
      v25[5] = a6;
      v15 = (*(*this + 64))(this);
      v16 = v25;
LABEL_19:
      HALB_CommandGate::ExecuteCommand(v15, v16);
      v18 = 4;
      goto LABEL_20;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315394;
    v30 = "HALS_MetaSubDevice.cpp";
    v31 = 1024;
    v32 = 221;
    v23 = MEMORY[0x1E69E9C10];
    v24 = "%25s:%-5d  HALS_MetaSubDevice::_GetPropertyData: bad property data size for kAudioSubDevicePropertyDriftCompensationQuality";
    goto LABEL_33;
  }

LABEL_11:
  if (!HALS_MetaSubDevice::_GetObject(this))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "HALS_MetaSubDevice.cpp";
      v31 = 1024;
      v32 = 228;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::GetPropertyData: no real device", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v22 = 1852797029;
LABEL_35:
    exception[2] = v22;
  }

  Object = HALS_MetaSubDevice::_GetObject(this);
  v20 = *(*Object + 120);

  v20(Object);
}

double ___ZNK18HALS_MetaSubDevice15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(*(a1 + 32) + 4 * (**(a1 + 48) == 1768845428) + 88);
  result = *&a2;
  **(a1 + 40) = result;
  return result;
}

uint64_t HALS_MetaSubDevice::GetPropertyDataSize(HALS_MetaSubDevice *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 96))(a1, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v13 = 2003332927;
    goto LABEL_16;
  }

  v8 = *a3;
  if (*a3 > 1685218931)
  {
    if (v8 == 2020373603)
    {
      return 8;
    }

    v9 = 26228;
  }

  else
  {
    if (v8 == 1685218913)
    {
      return 4;
    }

    v9 = 26225;
  }

  if (v8 == (v9 | 0x64720000))
  {
    return 4;
  }

  if (!HALS_MetaSubDevice::_GetObject(a1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "HALS_MetaSubDevice.cpp";
      v16 = 1024;
      v17 = 177;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::GetPropertyDataSize: no real device", &v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v13 = 1852797029;
LABEL_16:
    exception[2] = v13;
  }

  v11 = *(*HALS_MetaSubDevice::_GetObject(a1) + 112);

  return v11();
}

uint64_t HALS_MetaSubDevice::IsPropertySettable(HALS_MetaSubDevice *a1, uint64_t a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (((*(*a1 + 96))(a1) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 2003332927;
    goto LABEL_16;
  }

  if ((*a3 - 1685218913) <= 0x13 && ((1 << (*a3 - 97)) & 0x90001) != 0 || *a3 == 2020373603)
  {
    return 1;
  }

  if (!HALS_MetaSubDevice::_GetObject(a1))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "HALS_MetaSubDevice.cpp";
      v13 = 1024;
      v14 = 146;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaSubDevice::IsPropertySettable: no real device", &v11, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v10 = 1852797029;
LABEL_16:
    exception[2] = v10;
  }

  v8 = *(*HALS_MetaSubDevice::_GetObject(a1) + 104);

  return v8();
}

uint64_t HALS_MetaSubDevice::HasProperty(HALS_MetaSubDevice *a1, uint64_t a2, int *a3, uint64_t a4)
{
  result = (*(*a1 + 184))(a1, a3, a4);
  if (!result)
  {
    return result;
  }

  result = 0;
  v7 = *a3;
  if (*a3 <= 1852012898)
  {
    if (v7 > 1685218912)
    {
      if (v7 <= 1685218931)
      {
        if (v7 != 1685218913 && v7 != 1685218929)
        {
          goto LABEL_38;
        }

        return 1;
      }

      if (v7 == 1685218932)
      {
        return 1;
      }

      v8 = 1718843939;
LABEL_27:
      if (v7 == v8)
      {
        return result;
      }

      goto LABEL_38;
    }

    v9 = v7 == 1651730810 || v7 == 1651735075;
    v10 = 1684434036;
LABEL_20:
    if (v9 || v7 == v10)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (v7 <= 1919512166)
  {
    v9 = v7 == 1852012899 || v7 == 1869180523;
    v10 = 1919055206;
    goto LABEL_20;
  }

  if (v7 <= 1986425721)
  {
    if (v7 == 1919512167)
    {
      return result;
    }

    v8 = 1936092276;
    goto LABEL_27;
  }

  if (v7 == 1986425722)
  {
    return result;
  }

  if (v7 == 2020373603)
  {
    v12 = a3[1];
    return v12 == 1768845428 || v12 == 1869968496;
  }

LABEL_38:
  result = HALS_MetaSubDevice::_GetObject(a1);
  if (result)
  {
    v14 = *(*HALS_MetaSubDevice::_GetObject(a1) + 96);

    return v14();
  }

  return result;
}

unsigned int *HALS_MetaSubDevice::_Deactivate(HALS_MetaSubDevice *this)
{
  v13 = *MEMORY[0x1E69E9840];
  result = HALS_MetaSubDevice::_GetObject(this);
  if (result)
  {
    v3 = *(HALS_MetaSubDevice::_GetObject(this) + 16);
    v4 = *(this + 4);
    v5 = *(this + 14);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = ___ZN18HALS_MetaSubDevice11_DeactivateEv_block_invoke;
    v8[3] = &__block_descriptor_tmp_11148;
    v9 = v4;
    v10 = v3;
    AMCP::Utility::Dispatch_Queue::async(v5, v8);
    Object = HALS_MetaSubDevice::_GetObject(this);
    HALS_ObjectMap::ReleaseObject_LongTerm(Object, v7);
    result = (this + 56);
    switch(*(this + 14) ^ (*(this + 14) >> 31))
    {
      case 0:
        *(this + 8) = 0;
        break;
      case 1:
        v12 = 0;
        v11 = 0;
        boost::variant<HALS_Device *,HALS_ClockDevice *>::variant_assign(result, &v11);
        result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(0);
        break;
      case 2:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 3:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 4:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 5:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 6:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 7:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 8:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 9:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xA:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xB:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xC:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xD:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xE:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0xF:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x10:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x11:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x12:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      case 0x13:
        boost::detail::variant::forced_return<HALS_Device * const*>();
      default:
        boost::detail::variant::forced_return<HALS_Device * const*>();
    }
  }

  *(this + 2) = 0;
  return result;
}

void ___ZN18HALS_MetaSubDevice11_DeactivateEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7[0] = 0;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v7, v5, &qword_1DE79AFDC, a4, a5);
  HALS_Listener::~HALS_Listener(v7);
}

void sub_1DE55D4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

uint64_t boost::variant<HALS_Device *,HALS_ClockDevice *>::variant_assign(unsigned int *a1, uint64_t a2)
{
  result = *a1;
  if (result == *a2)
  {
    switch(result ^ (result >> 31))
    {
      case 0u:
      case 1u:
        *(a1 + 1) = *(a2 + 8);
        return result;
      default:
        goto LABEL_8;
    }
  }

  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(result);
      *(a1 + 1) = *(a2 + 8);
      *a1 = 0;
      break;
    case 1:
      result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(result);
      *(a1 + 1) = *(a2 + 8);
      *a1 = 1;
      break;
    default:
LABEL_8:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

uint64_t boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(uint64_t result)
{
  if ((result + 2) >= 4)
  {
    boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

void HALS_MetaSubDevice::~HALS_MetaSubDevice(AMCP::Utility::Dispatch_Queue **this)
{
  HALS_MetaSubDevice::~HALS_MetaSubDevice(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5979C40;
  if (g_static_start_options == 1)
  {
    do
    {
      AMCP::Utility::Dispatch_Queue::flush_all_work(this[14]);
      v2 = atomic_load(this[14] + 33);
    }

    while ((v2 & 1) != 0);
  }

  v3 = this[14];
  this[14] = 0;
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  CACFString::~CACFString((this + 9));
  boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(*(this + 14));

  HALS_Object::~HALS_Object(this);
}

void HALS_MetaSubDevice::_SetSubDeviceInfo(HALS_MetaSubDevice *this, CFDictionaryRef theDict)
{
  if (theDict)
  {
    CFRetain(theDict);
  }

  v6 = &unk_1F5991008;
  theDicta = theDict;
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDict, @"latency-out");
  *(this + 22) = OS::CF::Number::GetValue<unsigned int>(v5, 0);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"latency-in");
  *(this + 23) = OS::CF::Number::GetValue<unsigned int>(v5, 0);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"don't pad");
  *(this + 96) = OS::CF::Number::GetValue<unsigned int>(v5, 0) == 0;
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"drift");
  *(this + 97) = OS::CF::Number::GetValue<unsigned int>(v5, 0) != 0;
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"drift algorithm");
  *(this + 25) = OS::CF::Number::GetValue<unsigned int>(v5, 0);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::DictionaryBase<__CFDictionary const*>::GetValueForKey<OS::CF::Number>(&v4, theDicta, @"drift quality");
  *(this + 26) = OS::CF::Number::GetValue<unsigned int>(v5, 64);
  OS::CF::UntypedObject::~UntypedObject(&v4);
  OS::CF::UntypedObject::~UntypedObject(&v6);
}

void HALS_MetaSubDevice::HALS_MetaSubDevice(HALS_MetaSubDevice *this, HALS_MetaDevice *a2, const __CFString *a3, const __CFDictionary *a4, HALS_Object *a5)
{
  v10 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1634956642, 1634956642, a2, a5);
  *v8 = &unk_1F5979C40;
  *(v8 + 48) = *(a2 + 4);
  *(v8 + 64) = 0;
  *(v8 + 56) = 0;
  if (a3)
  {
    CFRetain(a3);
  }

  *(this + 9) = a3;
  *(this + 80) = 1;
  *(this + 11) = 0;
  *(this + 48) = 1;
  *(this + 100) = 0x4000000000;
  AMCP::Utility::Dispatch_Queue::create_concurrent_with_workloop(v9, "HALS_MetaSubDevice Concurrent Queue");
  operator new();
}

void sub_1DE55D960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN18HALS_MetaSubDevice16SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v26 = v2;
  if (!HALS_MetaSubDevice::_GetObject(v1) || HALS_MetaSubDevice::_GetObject(v1) == v2)
  {
    v7 = 0;
  }

  else
  {
    v4 = *(HALS_MetaSubDevice::_GetObject(v1) + 16);
    v5 = *(v1 + 16);
    v6 = *(v1 + 112);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN18HALS_MetaSubDevice17_SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke;
    block[3] = &__block_descriptor_tmp_34_11170;
    v24 = v5;
    v25 = v4;
    AMCP::Utility::Dispatch_Queue::async(v6, block);
    v7 = 1;
  }

  if (!HALS_MetaSubDevice::_GetObject<HALS_Device>(v1))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "HALS_MetaSubDevice.cpp";
      v29 = 1024;
      v30 = 514;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_MetaSubDevice::_SetSubDeviceInfo: Attempting to replace a clock device with a physical device", buf, 0x12u);
    }
  }

  if (HALS_MetaSubDevice::_GetObject(v1))
  {
    Object = HALS_MetaSubDevice::_GetObject(v1);
    HALS_ObjectMap::ReleaseObject_LongTerm(Object, v13);
  }

  boost::variant<HALS_Device *,HALS_ClockDevice *>::assign<HALS_Device *>(v1 + 56, &v26);
  if (v7)
  {
    v21 = 0x2A2A2A2A2A2A2A2ALL;
    v22 = -1;
    v14 = *(v1 + 16);
    v18[0] = 0;
    v18[1] = v14;
    v19 = 0u;
    v20 = 0u;
    v15 = *(HALS_MetaSubDevice::_GetObject(v1) + 16);
    buf[0] = 0;
    v31 = 0;
    HALS_NotificationManager::AddPropertyListener(v18, v15, &v21, buf);
    HALS_Listener::~HALS_Listener(v18);
  }

  v16 = HALS_MetaSubDevice::_GetObject(v1);
  HALS_ObjectMap::RetainObject(v16, v17);
  HALS_MetaSubDevice::_SetSubDeviceInfo(v1, v3);
}

void ___ZN18HALS_MetaSubDevice17_SetSubDeviceInfoEP11HALS_DevicePK14__CFDictionary_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 36);
  v7[0] = 0;
  v7[1] = v6;
  v8 = 0u;
  v9 = 0u;
  HALS_NotificationManager::RemovePropertyListener(v7, v5, &qword_1DE79AFDC, a4, a5);
  HALS_Listener::~HALS_Listener(v7);
}

void sub_1DE55DC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::_GetObject<HALS_Device>(uint64_t a1)
{
  v1 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device * const>>((a1 + 56));
  if (!v1)
  {
    boost::throw_exception<boost::bad_get>();
  }

  return *v1;
}

void sub_1DE55DD04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  std::exception::~exception(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE55DCCCLL);
}

uint64_t boost::variant<HALS_Device *,HALS_ClockDevice *>::assign<HALS_Device *>(uint64_t result, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  switch(*result ^ (*result >> 31))
  {
    case 0:
      *(result + 8) = *a2;
      break;
    case 1:
      v3 = *a2;
      v2 = 0;
      boost::variant<HALS_Device *,HALS_ClockDevice *>::variant_assign(result, &v2);
      result = boost::variant<HALS_Device *,HALS_ClockDevice *>::destroy_content(0);
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

uint64_t HALS_MetaSubDevice::CopyRealIODevice(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice16CopyRealIODeviceEv_block_invoke;
  v4[3] = &unk_1E8676A18;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55DEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZNK18HALS_MetaSubDevice16CopyRealIODeviceEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = HALS_MetaSubDevice::_CopyRealDevice<HALS_Device>(v2);
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_ClockDevice * const>>((v2 + 56));
    if (!v3)
    {
      boost::throw_exception<boost::bad_get>();
    }

    v5 = *v3;
    HALS_ObjectMap::RetainObject(*v3, v4);
    *(*(*(a1 + 32) + 8) + 24) = v5;
  }
}

void sub_1DE55DF6C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE55DF24);
}

void sub_1DE55DF98(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

int *boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_ClockDevice * const>>(int *a1)
{
  v1 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
      return v1;
    case 1:
      v1 = a1 + 2;
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return v1;
}

uint64_t HALS_MetaSubDevice::CopyRealDeviceUID(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice17CopyRealDeviceUIDEv_block_invoke;
  v4[3] = &unk_1E8676A40;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef ___ZNK18HALS_MetaSubDevice17CopyRealDeviceUIDEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = *(v2 + 72);
  if (result)
  {
    result = CFRetain(result);
    v4 = *(v2 + 72);
  }

  else
  {
    v4 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v4;
  return result;
}

void sub_1DE55E13C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetRealDeviceObjectID(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice21GetRealDeviceObjectIDEv_block_invoke;
  v4[3] = &unk_1E8676A68;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK18HALS_MetaSubDevice21GetRealDeviceObjectIDEv_block_invoke(uint64_t a1)
{
  result = HALS_MetaSubDevice::_GetObject(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = *(result + 16);
  return result;
}

void sub_1DE55E274(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetExtraLatency(HALS_MetaSubDevice *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK18HALS_MetaSubDevice15GetExtraLatencyEb_block_invoke;
  v5[3] = &unk_1E8676A90;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t HALS_MetaSubDevice::IsSynchPaddingOn(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice16IsSynchPaddingOnEv_block_invoke;
  v4[3] = &unk_1E8676AB8;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::IsDriftCorrectionOn(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice19IsDriftCorrectionOnEv_block_invoke;
  v4[3] = &unk_1E8676AE0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::GetDriftCorrectionAlgorithm(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice27GetDriftCorrectionAlgorithmEv_block_invoke;
  v4[3] = &unk_1E8676B08;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::GetDriftCorrectionQuality(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 64;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice25GetDriftCorrectionQualityEv_block_invoke;
  v4[3] = &unk_1E8676B30;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55E73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::GetNumberStreams(HALS_MetaSubDevice *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK18HALS_MetaSubDevice16GetNumberStreamsEb_block_invoke;
  v5[3] = &unk_1E8676B58;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK18HALS_MetaSubDevice16GetNumberStreamsEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  result = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
  if (result)
  {
    v5 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
    result = HALS_IODevice::GetNumberStreams(v5, v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55E8A4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::CopyStreamByIndex(HALS_MetaSubDevice *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK18HALS_MetaSubDevice17CopyStreamByIndexEbj_block_invoke;
  v6[3] = &unk_1E8676B80;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZNK18HALS_MetaSubDevice17CopyStreamByIndexEbj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  result = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
  if (result)
  {
    v6 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
    result = HALS_IODevice::CopyStreamByIndex(v6, v3, v4);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55EA10(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetTotalNumberChannels(HALS_MetaSubDevice *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK18HALS_MetaSubDevice22GetTotalNumberChannelsEb_block_invoke;
  v5[3] = &unk_1E8676BA8;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK18HALS_MetaSubDevice22GetTotalNumberChannelsEb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  result = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
  if (result)
  {
    v5 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
    result = HALS_Device::GetTotalNumberChannels(v5, v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55EB70(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::GetClockDomain(HALS_MetaSubDevice *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice14GetClockDomainEv_block_invoke;
  v4[3] = &unk_1E8676BD0;
  v4[4] = &v5;
  v4[5] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE55EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK18HALS_MetaSubDevice14GetClockDomainEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (HALS_MetaSubDevice::_GetObject<HALS_Device>(v2))
  {
    v3 = HALS_MetaSubDevice::_GetObject<HALS_Device>(v2);
LABEL_5:
    result = (*(*v3 + 328))(v3);
    goto LABEL_6;
  }

  result = HALS_MetaSubDevice::_GetObject<HALS_ClockDevice>(v2);
  if (result)
  {
    v3 = HALS_MetaSubDevice::_GetObject<HALS_ClockDevice>(v2);
    goto LABEL_5;
  }

LABEL_6:
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE55ECFC(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_MetaSubDevice::_GetObject<HALS_ClockDevice>(uint64_t a1)
{
  v1 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_ClockDevice * const>>((a1 + 56));
  if (!v1)
  {
    boost::throw_exception<boost::bad_get>();
  }

  return *v1;
}

void sub_1DE55ED78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  std::exception::~exception(&a10);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE55ED40);
}

void AMCP::Box::~Box(AMCP::Box *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

AMCP::Box *AMCP::Box::Box(AMCP::Box *this, AMCP::System_Context *a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(this, a2, a3);
  *v4 = &unk_1F5979D38;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61626F78);
  if ((v5 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315650;
      v12 = "Box.cpp";
      v13 = 1024;
      v14 = 26;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_box)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return this;
}

void sub_1DE55EF94(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Box::Box(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F5979D70;
  *&buf[8] = a3;
  *&v18[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v15, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v15[0];
  if (v15[0])
  {
    v7 = *v15[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v15[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F5979D38;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x61626F78);
  if ((v9 & 1) == 0)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v14 = *v13;
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    else
    {
      v14 = *v13;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Box.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 42;
      v17 = 2080;
      *v18 = "constructed_correct_class(k_class_id_box)";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE55F1C0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP3BoxC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61626F78, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1651861860u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

void AMCP::Core::Core::get_simple_required_property<1651861860u>(void *a1, AMCP::Core::Core *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  strcpy(buf, "diubbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, a2, buf);
  if ((v12 & 1) == 0)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 4;
      strcpy(__p, "buid");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v14 = 1024;
      v15 = 391;
      v16 = 2080;
      v17 = "optional_value.operator BOOL() == true";
      v18 = 2080;
      v19 = __p;
      v20 = 1024;
      v21 = 1735159650;
      v22 = 1024;
      v23 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v4;
    CFRelease(v4);
  }

  else
  {
    *a1 = 0;
  }
}

void sub_1DE55F44C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Box::Box(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5979D70;
  a2[1] = v2;
  return result;
}

void AMCP::Box::get_box_uid(AMCP::Box *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1651861860u>(a2, v7);
    }

    else
    {
      *a2 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
  }
}

unint64_t AMCP::Box::get_transport_type(AMCP::Box *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1953653102u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::Box::has_audio(AMCP::Box *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "uahbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        else
        {
          v12 = *v11;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 4;
          strcpy(__p, "bhau");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v16 = 1024;
          v17 = 391;
          v18 = 2080;
          v19 = "optional_value.operator BOOL() == true";
          v20 = 2080;
          v21 = __p;
          v22 = 1024;
          v23 = 1735159650;
          v24 = 1024;
          v25 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DE55F7E8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::has_video(AMCP::Box *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ivhbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        else
        {
          v12 = *v11;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 4;
          strcpy(__p, "bhvi");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v16 = 1024;
          v17 = 391;
          v18 = 2080;
          v19 = "optional_value.operator BOOL() == true";
          v20 = 2080;
          v21 = __p;
          v22 = 1024;
          v23 = 1735159650;
          v24 = 1024;
          v25 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DE55F9AC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::has_midi(AMCP::Box *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "imhbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        else
        {
          v12 = *v11;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 4;
          strcpy(__p, "bhmi");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v16 = 1024;
          v17 = 391;
          v18 = 2080;
          v19 = "optional_value.operator BOOL() == true";
          v20 = 2080;
          v21 = __p;
          v22 = 1024;
          v23 = 1735159650;
          v24 = 1024;
          v25 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DE55FB70(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::is_protected(AMCP::Box *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "orpbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        else
        {
          v12 = *v11;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 4;
          strcpy(__p, "bpro");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v16 = 1024;
          v17 = 391;
          v18 = 2080;
          v19 = "optional_value.operator BOOL() == true";
          v20 = 2080;
          v21 = __p;
          v22 = 1024;
          v23 = 1735159650;
          v24 = 1024;
          v25 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DE55FD34(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::acquired(AMCP::Box *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "noxbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          v12 = *v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        else
        {
          v12 = *v11;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v14 = 4;
          strcpy(__p, "bxon");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v16 = 1024;
          v17 = 391;
          v18 = 2080;
          v19 = "optional_value.operator BOOL() == true";
          v20 = 2080;
          v21 = __p;
          v22 = 1024;
          v23 = 1735159650;
          v24 = 1024;
          v25 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1DE55FEF8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Box::set_acquired(AMCP::Box *this, char a2)
{
  v16 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_17;
      }

      v14 = 0x676C6F6262786F6ELL;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_17;
      }

      AMCP::Core::Core::find_operation(&v19, v7, &v14);
      v8 = v19;
      if (v19)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v16);
LABEL_8:
          v10 = 0;
          goto LABEL_14;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          memset(v17, 0, sizeof(v17));
          LOBYTE(v17[0]) = a2;
          v18 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v17);
          if (v18)
          {
            v18(0, v17, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_14:
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_18;
      }

LABEL_17:
      v11 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE56004C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  v7 = *(v5 - 40);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE56001CLL);
}

unint64_t AMCP::Box::get_acquisition_error(AMCP::Box *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    strcpy(buf, "foxbbolg");
    buf[9] = 0;
    *&buf[10] = 0;
    v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
    if (!HIDWORD(v6))
    {
      v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v9 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
      }

      v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v11;
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      else
      {
        v12 = *v11;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = 4;
        strcpy(__p, "bxof");
        *buf = 136316418;
        *&buf[4] = "Core.h";
        v16 = 1024;
        v17 = 391;
        v18 = 2080;
        v19 = "optional_value.operator BOOL() == true";
        v20 = 2080;
        v21 = __p;
        v22 = 1024;
        v23 = 1735159650;
        v24 = 1024;
        v25 = 0;
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      abort();
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v7;
}

void sub_1DE56023C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Box::get_device_list(AMCP::Box *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#vdbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v16, v7, buf);
      if ((v18 & 1) == 0)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "bdv#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v20 = 1024;
          v21 = 391;
          v22 = 2080;
          v23 = "optional_value.operator BOOL() == true";
          v24 = 2080;
          v25 = __p;
          v26 = 1024;
          v27 = 1735159650;
          v28 = 1024;
          v29 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v16;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v16, v17, (v17 - v16) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1DE56046C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Box::get_clock_list(AMCP::Box *this@<X0>, uint64_t *a2@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      strcpy(buf, "#lcbbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v16, v7, buf);
      if ((v18 & 1) == 0)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "bcl#");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v20 = 1024;
          v21 = 391;
          v22 = 2080;
          v23 = "optional_value.operator BOOL() == true";
          v24 = 2080;
          v25 = __p;
          v26 = 1024;
          v27 = 1735159650;
          v28 = 1024;
          v29 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      v9 = v16;
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, v16, v17, (v17 - v16) >> 2);
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_1DE56069C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Graph::Graph::delete_node_proc(void *a1, void *a2)
{
  v3 = a1 + 2;
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 2, a2);
  if (result)
  {
    v5 = a1[3];
    v6 = result[1];
    v7 = vcnt_s8(v5);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      if (v6 >= *&v5)
      {
        v6 %= *&v5;
      }
    }

    else
    {
      v6 &= *&v5 - 1;
    }

    v8 = *(*v3 + 8 * v6);
    do
    {
      v9 = v8;
      v8 = *v8;
    }

    while (v8 != result);
    if (v9 == a1 + 4)
    {
      goto LABEL_19;
    }

    v10 = v9[1];
    if (v7.u32[0] > 1uLL)
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

    if (v10 != v6)
    {
LABEL_19:
      if (!*result)
      {
        goto LABEL_20;
      }

      v11 = *(*result + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v5)
        {
          v11 %= *&v5;
        }
      }

      else
      {
        v11 &= *&v5 - 1;
      }

      if (v11 != v6)
      {
LABEL_20:
        *(*v3 + 8 * v6) = 0;
      }
    }

    v12 = *result;
    if (*result)
    {
      v13 = *(v12 + 8);
      if (v7.u32[0] > 1uLL)
      {
        if (v13 >= *&v5)
        {
          v13 %= *&v5;
        }
      }

      else
      {
        v13 &= *&v5 - 1;
      }

      if (v13 != v6)
      {
        *(*v3 + 8 * v13) = v9;
        v12 = *result;
      }
    }

    *v9 = v12;
    *result = 0;
    --a1[5];
    v14[0] = result;
    v14[1] = v3;
    v15 = 1;
    memset(v16, 0, sizeof(v16));
    return std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](v14);
  }

  return result;
}

BOOL AMCP::Graph::Graph::get_node_proc@<W0>(int8x8_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = a1 + 2;
  if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(&a1[2], a2))
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4AMCP5Graph9Node_ProcENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(&v18);
  }

  v7 = std::__string_hash<char>::operator()[abi:ne200100](a2);
  v8 = v7;
  v9 = a1[3];
  if (!*&v9)
  {
    goto LABEL_20;
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

  v13 = *(*v6 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_20:
    operator new();
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
      goto LABEL_20;
    }

LABEL_19:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_20;
    }
  }

  result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v14 + 2, a2);
  if (!result)
  {
    goto LABEL_19;
  }

  *a3 = v14[5];
  v17 = v14[6];
  a3[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1DE560D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Graph::~Graph(AMCP::Graph::Graph *this)
{
  AMCP::Graph::Graph::~Graph(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5979DF0;
  AMCP::Graph::Graph::get_nodes(v8, *(this + 24));
  v2 = v8[0];
  v3 = v8[1];
  while (v2 != v3)
  {
    v4 = *v2;
    if (*(*v2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      __p = *(v4 + 24);
    }

    AMCP::Graph::Graph::delete_node(this, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 += 16;
  }

  __p.__r_.__value_.__r.__words[0] = v8;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v5 = *(this + 38);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 36);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::destroy(*(this + 33));
  std::__hash_table<std::__hash_value_type<unsigned int,std::string>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::string>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::string>>>::~__hash_table(this + 27);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Node>>>>::~__hash_table(this + 176);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(this + 136);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(this + 96);
  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(this + 56);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Manifest_Task>>>>::~__hash_table(this + 16);
}

const void **AMCP::Graph::Graph::get_nodes(const void **result, uint64_t *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    v2 = a2;
    v3 = result;
    do
    {
      if (!*(v2[5] + 16))
      {
        result = std::vector<std::shared_ptr<AHAL_DSP::IAudioStream>>::push_back[abi:ne200100](v3, (v2 + 5));
      }

      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

void sub_1DE560F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Graph::Graph::delete_node(void *a1, void *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = a1 + 22;
  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, a2);
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *(*(result + 5) + 176);
  if (v7)
  {
    v8 = *(v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[28];
  if (!v9)
  {
    goto LABEL_21;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v8;
    if (v9 <= v8)
    {
      v11 = v8 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & v8;
  }

  v12 = *(a1[27] + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v17 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v18 = *v17;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Graph.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 156;
      *&buf[18] = 2080;
      *&buf[20] = "not (found != m_nodes_by_object_id.end())";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Missing object ID for node in graph index", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v40, "Missing object ID for node in graph index", v38);
    std::logic_error::logic_error(&v41, &v40);
    v41.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v42, &v41);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = -1;
    v42.__vftable = &unk_1F5991430;
    v43 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v42);
    v50 = "BOOL AMCP::Graph::Graph::delete_node(const Graph_Node_UID &)";
    v51 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
    v52 = 156;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v8)
    {
      break;
    }

    if (v10.u32[0] > 1uLL)
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

    if (v14 != v11)
    {
      goto LABEL_21;
    }

LABEL_20:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_20;
  }

  AMCP::Graph::Graph::disconnect_any_wires_connected_to_node(a1, a2);
  v19 = a1[28];
  v20 = v13[1];
  v21 = vcnt_s8(v19);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    if (v20 >= *&v19)
    {
      v20 %= *&v19;
    }
  }

  else
  {
    v20 &= *&v19 - 1;
  }

  v22 = a1[27];
  v23 = *(v22 + 8 * v20);
  do
  {
    v24 = v23;
    v23 = *v23;
  }

  while (v23 != v13);
  if (v24 == a1 + 29)
  {
    goto LABEL_42;
  }

  v25 = v24[1];
  if (v21.u32[0] > 1uLL)
  {
    if (v25 >= *&v19)
    {
      v25 %= *&v19;
    }
  }

  else
  {
    v25 &= *&v19 - 1;
  }

  if (v25 != v20)
  {
LABEL_42:
    if (!*v13)
    {
      goto LABEL_43;
    }

    v26 = *(*v13 + 1);
    if (v21.u32[0] > 1uLL)
    {
      if (v26 >= *&v19)
      {
        v26 %= *&v19;
      }
    }

    else
    {
      v26 &= *&v19 - 1;
    }

    if (v26 != v20)
    {
LABEL_43:
      *(v22 + 8 * v20) = 0;
    }
  }

  v27 = *v13;
  if (*v13)
  {
    v28 = v27[1];
    if (v21.u32[0] > 1uLL)
    {
      if (v28 >= *&v19)
      {
        v28 %= *&v19;
      }
    }

    else
    {
      v28 &= *&v19 - 1;
    }

    if (v28 != v20)
    {
      *(a1[27] + 8 * v28) = v24;
      v27 = *v13;
    }
  }

  *v24 = v27;
  *v13 = 0;
  --a1[30];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](1, v13);
  v29 = a1[23];
  v30 = *(v6 + 1);
  v31 = vcnt_s8(v29);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    if (v30 >= *&v29)
    {
      v30 %= *&v29;
    }
  }

  else
  {
    v30 &= *&v29 - 1;
  }

  v32 = *(*v4 + 8 * v30);
  do
  {
    v33 = v32;
    v32 = *v32;
  }

  while (v32 != v6);
  if (v33 == (a1 + 24))
  {
    goto LABEL_68;
  }

  v34 = *(v33 + 1);
  if (v31.u32[0] > 1uLL)
  {
    if (v34 >= *&v29)
    {
      v34 %= *&v29;
    }
  }

  else
  {
    v34 &= *&v29 - 1;
  }

  if (v34 != v30)
  {
LABEL_68:
    if (!*v6)
    {
      goto LABEL_69;
    }

    v35 = *(*v6 + 8);
    if (v31.u32[0] > 1uLL)
    {
      if (v35 >= *&v29)
      {
        v35 %= *&v29;
      }
    }

    else
    {
      v35 &= *&v29 - 1;
    }

    if (v35 != v30)
    {
LABEL_69:
      *(*v4 + 8 * v30) = 0;
    }
  }

  v36 = *v6;
  if (*v6)
  {
    v37 = *(v36 + 8);
    if (v31.u32[0] > 1uLL)
    {
      if (v37 >= *&v29)
      {
        v37 %= *&v29;
      }
    }

    else
    {
      v37 &= *&v29 - 1;
    }

    if (v37 != v30)
    {
      *(*v4 + 8 * v37) = v33;
      v36 = *v6;
    }
  }

  *v33 = v36;
  *v6 = 0;
  --a1[25];
  *buf = v6;
  *&buf[8] = v4;
  buf[16] = 1;
  *&buf[17] = 0;
  *&buf[20] = 0;
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<AMCP::Graph::Timebase>>,void *>>>>::~unique_ptr[abi:ne200100](buf);
  return (*(*a1 + 24))(a1, a2);
}

void sub_1DE561570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 144);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a24);
  MEMORY[0x1E12C0F00](&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v25)
  {
    __cxa_free_exception(v24);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 145));
  _Unwind_Resume(a1);
}

void AMCP::Graph::Graph::disconnect_any_wires_connected_to_node(void *a1, void *a2)
{
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, a2);
  if (v3)
  {
    v4 = v3;
    v5 = v3[5];
    if (*(v5 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v29, *(v5 + 24), *(v5 + 32));
      v5 = v4[5];
    }

    else
    {
      v29 = *(v5 + 24);
    }

    AMCP::Graph::Wire_Index::get_wires_for_node(&v27, a1 + 7, &v29, 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 88) - *(v5 + 80)) >> 4), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 64) - *(v5 + 56)) >> 4));
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    for (i = v28; i; i = *i)
    {
      if (i[39] < 0)
      {
        std::string::__init_copy_ctor_external(&v22, *(i + 2), *(i + 3));
      }

      else
      {
        v22 = *(i + 16);
      }

      v23 = *(i + 5);
      v24 = *(i + 12);
      if (i[79] < 0)
      {
        std::string::__init_copy_ctor_external(&v19, *(i + 7), *(i + 8));
      }

      else
      {
        v19 = *(i + 56);
      }

      v20 = *(i + 10);
      v21 = *(i + 22);
      v29 = v22;
      memset(&v22, 0, sizeof(v22));
      v30 = v23;
      v31 = v24;
      v32 = *&v19.__r_.__value_.__l.__data_;
      v7 = v19.__r_.__value_.__r.__words[2];
      memset(&v19, 0, sizeof(v19));
      v35 = *(i + 22);
      v8 = *(i + 10);
      v33 = v7;
      v34 = v8;
      v9 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a1 + 12, &v29);
      if (v9)
      {
        if (*(v9 + 504) == 1)
        {
          AMCP::Graph::Wire_Index::get_tgid_for_wire(__p, (a1 + 7), &v29);
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(&v25, __p, __p);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    for (j = a1[14]; j; j = *j)
    {
      if (*(j + 504) == 1)
      {
        AMCP::Graph::Graph_Wire::Connection::Connection(&v29, (j + 36));
        v11 = v41;
        v12 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(&v25, &v36);
        if (v11)
        {
          v42 = v11;
          operator delete(v11);
        }

        if (v40)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        if (v38)
        {
          v39 = v38;
          operator delete(v38);
        }

        if (v37 < 0)
        {
          operator delete(v36);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        if (v26 != v12 && *(j + 504))
        {
          v13 = j[60];
          if (v13)
          {
            j[61] = v13;
            operator delete(v13);
          }

          v14 = j[57];
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v14);
          }

          v15 = j[49];
          if (v15)
          {
            j[50] = v15;
            operator delete(v15);
          }

          if (*(j + 391) < 0)
          {
            operator delete(j[46]);
          }

          if (*(j + 351) < 0)
          {
            operator delete(j[41]);
          }

          if (*(j + 311) < 0)
          {
            operator delete(j[36]);
          }

          *(j + 504) = 0;
        }
      }
    }

    std::__tree<std::string>::destroy(v26[0]);
    std::__hash_table<AMCP::Wire_Description,std::hash<AMCP::Wire_Description>,std::equal_to<AMCP::Wire_Description>,std::allocator<AMCP::Wire_Description>>::__deallocate_node(v28);
    v16 = v27;
    v27 = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }
}

void sub_1DE561950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
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

void AMCP::Graph::Wire_Index::~Wire_Index(AMCP::Graph::Wire_Index *this)
{
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Wire_Volume_Connection>>>>::~__hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::~__hash_table(this + 40);

  std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::~__hash_table(this);
}

void std::__shared_ptr_emplace<AMCP::Graph::Meta_Timebase_Factory>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::pair<double,std::string> const,std::shared_ptr<AMCP::Graph::Timebase>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v4)
  {

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Meta_Timebase_Factory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979E38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::Graph::Node>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 208);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 176);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v5 = (a1 + 104);
  v6 = -48;
  do
  {
    v8 = v5;
    std::vector<AMCP::Graph::Terminal>::__destroy_vector::operator()[abi:ne200100](&v8);
    v5 -= 3;
    v6 += 24;
  }

  while (v6);
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v7 = *(a1 + 32);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Node>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5979E88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Graph::Graph::connect_nodes(void *a1, uint64_t *a2, uint64_t *a3, const std::string::value_type *a4, void *a5)
{
  v117 = a4;
  v188 = *MEMORY[0x1E69E9840];
  v6 = *(*a2 + 56);
  v5 = *(*a2 + 64);
  v7 = *a3;
  if (*(*a3 + 48) != 1 && *(v7 + 16) == 1)
  {
    *__p = &unk_1F5979ED8;
    *&__p[8] = a4;
    *&__p[24] = __p;
    AMCP::Graph::Node::for_each_connection(v7, a1 + 7, __p);
    std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__value_func[abi:ne200100](__p);
  }

  if (v5 != v6)
  {
    v8 = 0;
    v115 = 0x6DB6DB6DB6DB6DB7 * ((v5 - v6) >> 4);
    while (1)
    {
      v9 = a2;
      nth_terminal = AMCP::Graph::Node::get_nth_terminal(*a2, v8, 0);
      v10 = *a2;
      if (*(*a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v152, v10[1].__r_.__value_.__l.__data_, v10[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v152 = v10[1];
      }

      *__p = *&v152.__r_.__value_.__l.__data_;
      v11 = v152.__r_.__value_.__r.__words[2];
      memset(&v152, 0, sizeof(v152));
      *&__p[16] = v11;
      *&__p[24] = v8;
      *&__p[32] = 0;
      AMCP::Graph::Wire_Index::get_wires_for_terminal(&v153, a1 + 7, __p);
      v116 = v8;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      v13 = v153;
      v123 = v154;
      if (v153 != v154)
      {
        break;
      }

LABEL_270:
      if (v13)
      {
        operator delete(v13);
      }

      v8 = v116 + 1;
      if (v116 + 1 == v115)
      {
        return;
      }
    }

    while (1)
    {
      v14 = *v13;
      if (*(*v13 + 63) < 0)
      {
        std::string::__init_copy_ctor_external(&v149, *(v14 + 40), *(v14 + 48));
      }

      else
      {
        v149 = *(v14 + 40);
      }

      v16 = (v14 + 64);
      v15 = *(v14 + 64);
      v151 = *(v14 + 72);
      v150 = v15;
      if (v151 != 1)
      {
        v91 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v91 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v12);
        }

        v93 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v92 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v92)
        {
          atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          v94 = *v93;
          std::__shared_weak_count::__release_shared[abi:ne200100](v92);
        }

        else
        {
          v94 = *v93;
        }

        if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Graph.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 248;
          *&__p[18] = 2080;
          *&__p[20] = "not (destination.m_wire_direction == Direction::input)";
          _os_log_error_impl(&dword_1DE1F9000, v94, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Wire should connect to input terminal on destination node.", __p, 0x1Cu);
        }

        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v160, "Wire should connect to input terminal on destination node.", v95);
        std::logic_error::logic_error(&v156, &v160);
        v156.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(buf, &v156);
        *&buf[32] = 0;
        *&buf[24] = 0;
        *&v167 = 0;
        DWORD2(v167) = -1;
        *buf = &unk_1F5991430;
        *&buf[16] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, buf);
        *&__p[32] = "void AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)";
        *&v172 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
        DWORD2(v172) = 248;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v148);
      }

      if (*(*v9 + 48) != 1 && *(v14 + 408) == 1)
      {
        AMCP::Graph::Graph_Wire::Connection::Connection(__p, (v14 + 192));
        v160 = v175;
        *&v161 = v176;
        v175 = 0;
        *&v176 = 0;
        if (*&v184[3])
        {
          *&v184[5] = *&v184[3];
          operator delete(*&v184[3]);
        }

        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v182);
        }

        if (*(&v176 + 1))
        {
          *&v177 = *(&v176 + 1);
          operator delete(*(&v176 + 1));
        }

        if (SBYTE7(v176) < 0)
        {
          operator delete(v175.__vftable);
        }

        if (SBYTE7(v173) < 0)
        {
          operator delete(v172);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        v12 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a1 + 22, &v149);
        if (!v12)
        {
LABEL_334:
          v107 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v107 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v12);
          }

          v109 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v108 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v108)
          {
            atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
            v110 = *v109;
            std::__shared_weak_count::__release_shared[abi:ne200100](v108);
          }

          else
          {
            v110 = *v109;
          }

          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            v111 = &v160;
            if (SBYTE7(v161) < 0)
            {
              v111 = v160.__vftable;
            }

            v112 = v117;
            if (v117[23] < 0)
            {
              v112 = *v117;
            }

            *__p = 136316162;
            *&__p[4] = "Graph.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 255;
            *&__p[18] = 2080;
            *&__p[20] = "not (node != m_nodes_by_uid.end() && (node->second->node_has_fixed_thread_group() || old_group == group))";
            *&__p[28] = 2080;
            *&__p[30] = v111;
            *&__p[38] = 2080;
            *&v172 = v112;
            _os_log_error_impl(&dword_1DE1F9000, v110, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Groups do not match: %s, %s", __p, 0x30u);
          }

          __cxa_allocate_exception(0x40uLL);
          v114 = &v160;
          if (SBYTE7(v161) < 0)
          {
            v114 = v160.__vftable;
          }

          if (v117[23] < 0)
          {
            v117 = *v117;
          }

          caulk::make_string(&v148, "Groups do not match: %s, %s", v113, v114, v117);
          std::logic_error::logic_error(&v158, &v148);
          v158.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
          std::logic_error::logic_error(buf, &v158);
          *&buf[32] = 0;
          *&buf[24] = 0;
          *&v167 = 0;
          DWORD2(v167) = -1;
          *buf = &unk_1F5991430;
          *&buf[16] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, buf);
          *&__p[32] = "void AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)";
          *&v172 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
          DWORD2(v172) = 255;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v156);
        }

        v17 = *(v12 + 5);
        if (*(v17 + 48) == 1)
        {
          v18 = BYTE7(v161);
        }

        else
        {
          v18 = BYTE7(v161);
          if (*(v17 + 16) == 1)
          {
            if ((SBYTE7(v161) & 0x80u) == 0)
            {
              imp = BYTE7(v161);
            }

            else
            {
              imp = v160.__imp_.__imp_;
            }

            v57 = *(v117 + 23);
            v58 = v57;
            if ((v57 & 0x80u) != 0)
            {
              v57 = *(v117 + 1);
            }

            if (imp != v57)
            {
              goto LABEL_334;
            }

            v59 = (SBYTE7(v161) & 0x80u) == 0 ? &v160 : v160.__vftable;
            v60 = v58 >= 0 ? v117 : *v117;
            v12 = memcmp(v59, v60, imp);
            if (v12)
            {
              goto LABEL_334;
            }
          }
        }

        if (v18 < 0)
        {
          operator delete(v160.__vftable);
        }

        if ((*(&v149.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_186;
        }

        goto LABEL_55;
      }

      v19 = *a3;
      if (*(*a3 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *(v19 + 24), *(v19 + 32));
      }

      else
      {
        *__p = *(v19 + 24);
        *&__p[16] = *(v19 + 40);
      }

      v20 = HIBYTE(v149.__r_.__value_.__r.__words[2]);
      if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v149.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v149.__r_.__value_.__l.__size_;
      }

      v22 = __p[23];
      v23 = __p[23];
      if (__p[23] < 0)
      {
        v22 = *&__p[8];
      }

      if (size == v22)
      {
        if ((v149.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &v149;
        }

        else
        {
          v24 = v149.__r_.__value_.__r.__words[0];
        }

        if (__p[23] >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = *__p;
        }

        v12 = memcmp(v24, v25, size);
        v26 = v12 == 0;
        if ((v23 & 0x80000000) == 0)
        {
LABEL_49:
          if (v26)
          {
            goto LABEL_50;
          }

          goto LABEL_54;
        }
      }

      else
      {
        v26 = 0;
        if ((__p[23] & 0x80000000) == 0)
        {
          goto LABEL_49;
        }
      }

      operator delete(*__p);
      if (v26)
      {
LABEL_50:
        v27 = v20;
        AMCP::Graph::Node::get_nth_terminal(*a3, v150, 1u);
        v28 = *(*a2 + 16) == 2;
        if (v117[23] < 0)
        {
          std::string::__init_copy_ctor_external(&v147, *v117, *(v117 + 1));
        }

        else
        {
          v147 = *v117;
        }

        v120 = *(nth_terminal + 100);
        v121 = v28;
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v144, *v14, *(v14 + 8));
        }

        else
        {
          v144 = *v14;
        }

        v29 = (v14 + 24);
        v145 = *(v14 + 24);
        v146 = *(v14 + 32);
        if (*(v14 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v141, *(v14 + 40), *(v14 + 48));
        }

        else
        {
          v141 = *(v14 + 40);
        }

        v142 = *v16;
        v143 = *(v14 + 72);
        *buf = v144;
        memset(&v144, 0, sizeof(v144));
        *&buf[24] = v145;
        *&buf[32] = v146;
        v167 = *&v141.__r_.__value_.__l.__data_;
        v30 = *v16;
        v170 = *(v14 + 72);
        v31 = v141.__r_.__value_.__r.__words[2];
        memset(&v141, 0, sizeof(v141));
        v168 = v31;
        v169 = v30;
        v32 = std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,AMCP::Graph::Graph_Wire>>>::find<AMCP::Wire_Identifier>(a1 + 17, buf);
        if (v32)
        {
          v33 = v32[13];
          v119 = v32[12];
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v119 = 0;
          v33 = 0;
        }

        if (*(v14 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v185, *(v14 + 40), *(v14 + 48));
        }

        else
        {
          *&v185.mSampleRate = *(v14 + 40);
          *&v185.mBytesPerPacket = *(v14 + 56);
        }

        *&v185.mBytesPerFrame = *v16;
        v185.mBitsPerChannel = *(v14 + 72);
        terminal = get_terminal(a3, &v185);
        if (SHIBYTE(v185.mFramesPerPacket) < 0)
        {
          operator delete(*&v185.mSampleRate);
        }

        v35 = *(terminal + 16);
        *&v148.mSampleRate = *terminal;
        *&v148.mBytesPerPacket = v35;
        *&v148.mBitsPerChannel = *(terminal + 32);
        memset(__p, 0, 36);
        v172 = 0u;
        v173 = 0u;
        mBitsPerChannel = 0;
        v175 = 0;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v179 = 0;
        v180 = 64;
        v181 = 0;
        v182 = 0;
        v183 = 1;
        memset(v184, 0, 36);
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v185, *v14, *(v14 + 8));
          *&v185.mBytesPerFrame = *v29;
          v185.mBitsPerChannel = *(v14 + 32);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          *&v185.mSampleRate = *v14;
          *&v185.mBytesPerPacket = *(v14 + 16);
          *&v185.mBytesPerFrame = *v29;
          v185.mBitsPerChannel = *(v14 + 32);
        }

        *__p = *&v185.mSampleRate;
        *&__p[16] = *&v185.mBytesPerPacket;
        *&__p[24] = *&v185.mBytesPerFrame;
        *&__p[32] = v185.mBitsPerChannel;
        if (*(v14 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(&v185, *(v14 + 40), *(v14 + 48));
        }

        else
        {
          *&v185.mSampleRate = *(v14 + 40);
          *&v185.mBytesPerPacket = *(v14 + 56);
        }

        *&v185.mBytesPerFrame = *v16;
        v185.mBitsPerChannel = *(v14 + 72);
        if (SBYTE7(v173) < 0)
        {
          operator delete(v172);
        }

        v172 = *&v185.mSampleRate;
        v173 = *&v185.mBytesPerPacket;
        mBitsPerChannel = v185.mBitsPerChannel;
        if (SBYTE7(v176) < 0)
        {
          operator delete(v175.__vftable);
        }

        v175 = *&v147.__r_.__value_.__l.__data_;
        *&v176 = *(&v147.__r_.__value_.__l + 2);
        *(&v147.__r_.__value_.__s + 23) = 0;
        v147.__r_.__value_.__s.__data_[0] = 0;
        if ((&v176 + 8) != (v14 + 80))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v176 + 1, *(v14 + 80), *(v14 + 88), (*(v14 + 88) - *(v14 + 80)) >> 2);
        }

        if (&v184[3] != (v14 + 104))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v184[3], *(v14 + 104), *(v14 + 112), (*(v14 + 112) - *(v14 + 104)) >> 2);
        }

        v36 = *a3;
        HIDWORD(v180) = *(*a3 + 48);
        v183 = *(terminal + 88);
        v184[1] = *(terminal + 92);
        v184[2] = *(v36 + 160);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = v182;
        v181 = v119;
        v182 = v33;
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        v184[0] = v121;
        if (v120 != 1 && *(terminal + 100) != 1)
        {
          v96 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v96 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v37);
          }

          v98 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v97 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v97)
          {
            atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
            v99 = *v98;
            std::__shared_weak_count::__release_shared[abi:ne200100](v97);
          }

          else
          {
            v99 = *v98;
          }

          if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
          {
            v100 = *v16;
            v101 = *a3;
            if (*(*a3 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v160, *(v101 + 24), *(v101 + 32));
            }

            else
            {
              v160 = *(v101 + 24);
              *&v161 = *(v101 + 40);
            }

            v102 = &v160;
            if (SBYTE7(v161) < 0)
            {
              v102 = v160.__vftable;
            }

            LODWORD(v185.mSampleRate) = 136316162;
            *(&v185.mSampleRate + 4) = "Graph_Wire.cpp";
            LOWORD(v185.mFormatFlags) = 1024;
            *(&v185.mFormatFlags + 2) = 90;
            HIWORD(v185.mBytesPerPacket) = 2080;
            *&v185.mFramesPerPacket = "not (connection_works)";
            LOWORD(v185.mChannelsPerFrame) = 2048;
            *(&v185.mChannelsPerFrame + 2) = v100;
            HIWORD(v185.mReserved) = 2080;
            v186 = v102;
            _os_log_error_impl(&dword_1DE1F9000, v99, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to connect two terminals with owned buffers: terminal %zu of node '%s'", &v185, 0x30u);
            if (SBYTE7(v161) < 0)
            {
              operator delete(v160.__vftable);
            }
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v165);
          __cxa_allocate_exception(0x40uLL);
          v104 = *v16;
          v105 = *a3;
          if (*(*a3 + 47) < 0)
          {
            std::string::__init_copy_ctor_external(&v157, v105[1].__r_.__value_.__l.__data_, v105[1].__r_.__value_.__l.__size_);
          }

          else
          {
            v157 = v105[1];
          }

          v106 = &v157;
          if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v106 = v157.__r_.__value_.__r.__words[0];
          }

          caulk::make_string(&v158, "Attempt to connect two terminals with owned buffers: terminal %zu of node '%s'", v103, v104, v106);
          std::logic_error::logic_error(&v159, &v158);
          v159.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v160, &v159);
          v162 = 0;
          *(&v161 + 1) = 0;
          v163 = 0;
          v164 = -1;
          v160.__vftable = &unk_1F5991430;
          *&v161 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v185, &v160);
          *&v185.mBitsPerChannel = "Graph_Wire::Connection AMCP::Graph::Graph_Wire::create_connection(const std::shared_ptr<Node> &, Thread_Group_ID, CA::StreamDescription &, Terminal_Buffer_Ownership, Connection::Terminal_Read_Policy, const std::shared_ptr<Wire_Volume_Connection> &) const";
          v186 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph_Wire.cpp";
          v187 = 90;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v155);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        if (SHIBYTE(v168) < 0)
        {
          operator delete(v167);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v38 = *(nth_terminal + 16);
        v160 = *nth_terminal;
        v161 = v38;
        v162 = *(nth_terminal + 32);
        v178 = 0uLL;
        v39 = v160.__vftable;
        mSampleRate = v148.mSampleRate;
        if (*&v160.__vftable != v148.mSampleRate || LODWORD(v160.__imp_.__imp_) != v148.mFormatID || v161 != *&v148.mBytesPerPacket || (mChannelsPerFrame = HIDWORD(v161), HIDWORD(v161) != v148.mChannelsPerFrame) || v162 != v148.mBitsPerChannel || (v37 = CA::Implementation::EquivalentFormatFlags(&v160, &v148, 0), v42 = 0, v43 = mChannelsPerFrame, (v37 & 1) == 0))
        {
          *buf = v160;
          *&buf[16] = v161;
          *&buf[32] = v162;
          v185 = v148;
          v44 = v160.__imp_.__imp_;
          if (*&v160.__vftable == v148.mSampleRate && LODWORD(v160.__imp_.__imp_) == v148.mFormatID && *&buf[16] == *&v185.mBytesPerPacket && *&buf[28] == *&v185.mChannelsPerFrame)
          {
            v37 = CA::Implementation::EquivalentFormatFlags(buf, &v185, 0);
            if (v37)
            {
              goto LABEL_123;
            }
          }

          else if (LODWORD(v160.__imp_.__imp_) != v148.mFormatID)
          {
            goto LABEL_123;
          }

          if (*&buf[16] == *&v185.mBytesPerPacket && *&buf[28] == *&v185.mChannelsPerFrame)
          {
            if (v44 == 1819304813)
            {
              v45 = *&buf[12] & 0x7FFFFFFF;
              if ((*&buf[12] & 0x7FFFFFFF) == 0)
              {
                v45 = *&buf[12];
              }

              v46 = *&buf[24];
              if (*&buf[24])
              {
                if ((buf[12] & 0x20) != 0)
                {
                  v47 = 1;
                }

                else
                {
                  v47 = *&buf[28];
                }

                v37 = 0x80000000;
                if (v47)
                {
                  v46 = 8 * (*&buf[24] / v47);
                  v48 = v46 == *&buf[32];
                }

                else
                {
                  v46 = 0;
                  v48 = *&buf[32] == 0;
                }

                v62 = v48;
              }

              else
              {
                v62 = *&buf[32] == 0;
                v37 = 0x80000000;
              }

              v63 = v45 & 0xFFFFFFBF;
              if (v62)
              {
                v63 |= 8u;
              }

              if ((buf[32] & 7) == 0 && v46 == *&buf[32])
              {
                v63 &= 0xFFFFFFAF;
              }

              if (v63)
              {
                v63 &= 0xFFFFFFBB;
              }

              if ((v63 & 8) != 0 && *&buf[32] <= 8u)
              {
                v63 &= 2u;
              }

              if (*&buf[28] == 1)
              {
                v63 &= ~0x20u;
              }

              if (!v63)
              {
                v63 = 0x80000000;
              }

              mBytesPerFrame = v185.mBytesPerFrame;
              mFormatFlags = v185.mFormatFlags & 0x7FFFFFFF;
              if ((v185.mFormatFlags & 0x7FFFFFFF) == 0)
              {
                mFormatFlags = v185.mFormatFlags;
              }

              if (v185.mBytesPerFrame)
              {
                if ((v185.mFormatFlags & 0x20) != 0)
                {
                  v68 = 1;
                }

                else
                {
                  v68 = *&buf[28];
                }

                if (v68)
                {
                  mBytesPerFrame = 8 * (v185.mBytesPerFrame / v68);
                  v69 = mBytesPerFrame == *&buf[32];
                  goto LABEL_243;
                }

                mBytesPerFrame = 0;
              }

              v69 = *&buf[32] == 0;
LABEL_243:
              v70 = v69;
              v71 = mFormatFlags & 0xFFFFFFBF;
              if (v70)
              {
                v71 |= 8u;
              }

              v72 = (buf[32] & 7) == 0 && mBytesPerFrame == *&buf[32];
              v73 = v71 & 0xFFFFFFAF;
              if (!v72)
              {
                v73 = v71;
              }

              if (v73)
              {
                v73 &= 0xFFFFFFBB;
              }

              v74 = (v73 & 8) == 0 || *&buf[32] > 8u;
              v75 = v73 & 2;
              if (v74)
              {
                v75 = v73;
              }

              if (*&buf[28] == 1)
              {
                v76 = v75 & 0xFFFFFFDF;
              }

              else
              {
                v76 = v75;
              }

              if (!v76)
              {
                v76 = 0x80000000;
              }

              v61 = v63 == v76;
            }

            else
            {
              v61 = *&buf[12] == v185.mFormatFlags;
            }

            v77 = v61;
            v42 = v77 ^ 1;
          }

          else
          {
LABEL_123:
            v42 = 1;
          }

          v43 = HIDWORD(v161);
          mChannelsPerFrame = v148.mChannelsPerFrame;
        }

        v49 = *(v14 + 80);
        v50 = *(v14 + 88);
        v51 = *(v14 + 104);
        v52 = *(v14 + 112);
        if (*&v39 != mSampleRate)
        {
          if (*(v14 + 132) == 1)
          {
            goto LABEL_274;
          }

          LODWORD(v178) = 1;
        }

        if (v42)
        {
          if (!*(v14 + 136))
          {
            goto LABEL_274;
          }

          DWORD2(v178) = 1;
        }

        if (v43 != mChannelsPerFrame || v49 != v50)
        {
          if (mChannelsPerFrame < v50 - v49)
          {
LABEL_274:
            v78 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v78 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v37);
            }

            v80 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v79 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v79)
            {
              atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
              v81 = *v80;
              std::__shared_weak_count::__release_shared[abi:ne200100](v79);
            }

            else
            {
              v81 = *v80;
            }

            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v82 = *a2;
              if (*(*a2 + 47) < 0)
              {
                std::string::__init_copy_ctor_external(&v185, *(v82 + 24), *(v82 + 32));
              }

              else
              {
                *&v185.mSampleRate = *(v82 + 24);
                *&v185.mBytesPerPacket = *(v82 + 40);
              }

              if ((v185.mFramesPerPacket & 0x80000000) == 0)
              {
                v83 = COERCE_DOUBLE(&v185);
              }

              else
              {
                v83 = v185.mSampleRate;
              }

              v84 = *a3;
              if (*(*a3 + 47) < 0)
              {
                std::string::__init_copy_ctor_external(&v160, *(v84 + 24), *(v84 + 32));
              }

              else
              {
                v160 = *(v84 + 24);
                *&v161 = *(v84 + 40);
              }

              v85 = &v160;
              if (SBYTE7(v161) < 0)
              {
                v85 = v160.__vftable;
              }

              *buf = 136316162;
              *&buf[4] = "Graph.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 268;
              *&buf[18] = 2080;
              *&buf[20] = "not (did_connect)";
              *&buf[28] = 2080;
              *&buf[30] = v83;
              *&buf[38] = 2080;
              *&v167 = v85;
              _os_log_error_impl(&dword_1DE1F9000, v81, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Connection failed: %s-->%s", buf, 0x30u);
              if (SBYTE7(v161) < 0)
              {
                operator delete(v160.__vftable);
              }

              if (SHIBYTE(v185.mFramesPerPacket) < 0)
              {
                operator delete(*&v185.mSampleRate);
              }
            }

            __cxa_allocate_exception(0x40uLL);
            v87 = *a2;
            if (*(*a2 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v158, v87[1].__r_.__value_.__l.__data_, v87[1].__r_.__value_.__l.__size_);
            }

            else
            {
              v158 = v87[1];
            }

            if ((v158.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v88 = &v158;
            }

            else
            {
              v88 = v158.__r_.__value_.__r.__words[0];
            }

            v89 = *a3;
            if (*(*a3 + 47) < 0)
            {
              std::string::__init_copy_ctor_external(&v157, v89[1].__r_.__value_.__l.__data_, v89[1].__r_.__value_.__l.__size_);
            }

            else
            {
              v157 = v89[1];
            }

            v90 = &v157;
            if ((v157.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v90 = v157.__r_.__value_.__r.__words[0];
            }

            caulk::make_string(&v156, "Connection failed: %s-->%s", v86, v88, v90);
            std::logic_error::logic_error(&v159, &v156);
            v159.__vftable = (MEMORY[0x1E69E55A8] + 16);
            std::logic_error::logic_error(&v185, &v159);
            *&v185.mBytesPerFrame = 0;
            *&v185.mBitsPerChannel = 0;
            v186 = 0;
            v187 = -1;
            *&v185.mSampleRate = &unk_1F5991430;
            *&v185.mBytesPerPacket = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v185);
            *&buf[32] = "void AMCP::Graph::Graph::connect_nodes(const std::shared_ptr<Node> &, const std::shared_ptr<Node> &, Thread_Group_ID, Graph::Resource_Counts &)";
            *&v167 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Graph.cpp";
            DWORD2(v167) = 268;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(&v155);
          }

          while (v49 != v50)
          {
            if (*v49 == -1)
            {
              v53 = 3;
            }

            else
            {
              v53 = *v49 >= mChannelsPerFrame;
            }

            if (v53 != 3 && v53 != 0)
            {
              goto LABEL_274;
            }

            ++v49;
          }
        }

        if (v51 != v52 && &v184[3] != (v14 + 104))
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v184[3], v51, v52, (v52 - v51) >> 2);
        }

        if (*(v14 + 408) == 1)
        {
          AMCP::Graph::Graph_Wire::Connection::operator=(v14 + 192, __p);
        }

        else
        {
          AMCP::Graph::Graph_Wire::Connection::Connection((v14 + 192), __p);
          *(v14 + 408) = 1;
        }

        AMCP::Graph::Graph_Wire::Connection::Connection(&v127, __p);
        v9 = a2;
        if (v134)
        {
          ++*a5;
        }

        if (v136)
        {
          ++a5[2];
        }

        if (v132 != v133)
        {
          ++a5[3];
        }

        if (v135)
        {
          ++a5[4];
        }

        if (v137)
        {
          ++a5[5];
        }

        v55 = v139;
        if (v139 != v140)
        {
          ++a5[6];
        }

        if (v55)
        {
          v140 = v55;
          operator delete(v55);
        }

        if (v138)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v138);
        }

        if (v132)
        {
          v133 = v132;
          operator delete(v132);
        }

        if (v131 < 0)
        {
          operator delete(v130);
        }

        if (v129 < 0)
        {
          operator delete(v128);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (*&v184[3])
        {
          *&v184[5] = *&v184[3];
          operator delete(*&v184[3]);
        }

        if (v182)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v182);
        }

        v12 = *(&v176 + 1);
        if (*(&v176 + 1))
        {
          *&v177 = *(&v176 + 1);
          operator delete(*(&v176 + 1));
        }

        if (SBYTE7(v176) < 0)
        {
          operator delete(v175.__vftable);
        }

        if (SBYTE7(v173) < 0)
        {
          operator delete(v172);
        }

        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
          if ((v27 & 0x80) == 0)
          {
            goto LABEL_186;
          }
        }

        else if ((v27 & 0x80) == 0)
        {
          goto LABEL_186;
        }

LABEL_55:
        operator delete(v149.__r_.__value_.__l.__data_);
        goto LABEL_186;
      }

LABEL_54:
      v9 = a2;
      if (v20 < 0)
      {
        goto LABEL_55;
      }

LABEL_186:
      v13 += 8;
      if (v13 == v123)
      {
        v13 = v153;
        goto LABEL_270;
      }
    }
  }
}