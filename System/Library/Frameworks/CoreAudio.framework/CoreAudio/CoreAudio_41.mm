void std::vector<AMCP::Graph::Terminal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4;
        v4 -= 112;
        for (i = -48; i != -96; i -= 24)
        {
          v8 = &v6[i];
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__split_buffer<AMCP::Graph::Terminal>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    v4 = (i - 48);
    v5 = -48;
    do
    {
      v7 = v4;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      v4 -= 3;
      v5 += 24;
    }

    while (v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::Graph::Node::create_core_object(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v3, *a1, *(a1 + 8));
      operator new();
    }

    if (v2 == 3)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v5, *a1, *(a1 + 8));
      operator new();
    }
  }

  else
  {
    if (!v2)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v4, *a1, *(a1 + 8));
      operator new();
    }

    if (v2 == 1)
    {
      std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&v5, *a1, *(a1 + 8));
      operator new();
    }
  }
}

void sub_1DE512700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, AMCP::IO_Core::Node *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v49 - 217) < 0)
  {
    operator delete(*(v49 - 240));
  }

  v51 = v47[4].__vftable;
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  shared_owners = v47[3].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
  }

  AMCP::IO_Core::Node::~Node(v48);
  std::__shared_weak_count::~__shared_weak_count(v47);
  operator delete(v53);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Device>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977738;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::Reflector>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59776E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::IOContext_Core>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977698;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<AMCP::IO_Core::DSP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977648;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t AMCP::Graph::Node::get_nth_terminal(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a1 + 24 * a3;
  v5 = *(v4 + 56);
  v6 = *(v4 + 64);
  v7 = (v4 + 56);
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 4) <= a2)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      if (*(a1 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v36, *(a1 + 24), *(a1 + 32));
      }

      else
      {
        v36 = *(a1 + 24);
      }

      v29 = *&v36.__r_.__value_.__l.__data_;
      v15 = v36.__r_.__value_.__r.__words[2];
      memset(&v36, 0, sizeof(v36));
      v30 = v15;
      v31 = a2;
      LODWORD(v32) = a3;
      AMCP::Terminal_Identifier_to_string(&__p, &v29.__vftable);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v17 = 0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 4);
      *buf = 136316162;
      v38 = "GraphNode.cpp";
      v39 = 1024;
      v40 = 132;
      v41 = 2080;
      v42 = "not (index < m_terminals[wire_direction].size())";
      v43 = 2080;
      *v44 = p_p;
      *&v44[8] = 2048;
      v45 = v17;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %s  size: %zu", buf, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29.__vftable);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      v22 = *(a1 + 24);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v22.__r_.__value_.__l.__data_;
    v18 = v22.__r_.__value_.__r.__words[2];
    memset(&v22, 0, sizeof(v22));
    __p.__r_.__value_.__r.__words[2] = v18;
    v24 = a2;
    v25 = a3;
    AMCP::Terminal_Identifier_to_string(&v26, &__p.__r_.__value_.__l.__data_);
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v26;
    }

    else
    {
      v20 = v26.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v27, "Index out of bounds - index: %s  size: %zu", v19, v20, 0x6DB6DB6DB6DB6DB7 * ((v7[1] - *v7) >> 4));
    std::logic_error::logic_error(&v28, &v27);
    v28.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v29, &v28);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = -1;
    v29.__vftable = &unk_1F5991430;
    v30 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v29);
    *&v44[2] = "Terminal &AMCP::Graph::Node::get_nth_terminal(size_t, Direction)";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v46 = 132;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  return v5 + 112 * a2;
}

void sub_1DE513180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a51 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Node::get_nth_wire_ref(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a2 + 24 * a4;
  v8 = *(v7 + 56);
  v9 = *(v7 + 64);
  v10 = (v7 + 56);
  if (0x6DB6DB6DB6DB6DB7 * ((v9 - v8) >> 4) <= a3)
  {
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v24 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v25 = *v24;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v48, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v48 = *(a2 + 24);
      }

      *buf = *&v48.__r_.__value_.__l.__data_;
      v30 = v48.__r_.__value_.__r.__words[2];
      memset(&v48, 0, sizeof(v48));
      *&buf[16] = v30;
      *&buf[24] = a3;
      *&buf[32] = a4;
      AMCP::Terminal_Identifier_to_string(&__p, buf);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v32 = 0x6DB6DB6DB6DB6DB7 * ((v10[1] - *v10) >> 4);
      *v55 = 136316162;
      *&v55[4] = "GraphNode.cpp";
      *&v55[12] = 1024;
      *&v55[14] = 140;
      *&v55[18] = 2080;
      *&v55[20] = "not (index < m_terminals[wire_direction].size())";
      *&v55[28] = 2080;
      *&v55[30] = p_p;
      *&v55[38] = 2048;
      v56 = v32;
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Index out of bounds - index: %s  size: %zu", v55, 0x30u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v44, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v44 = *(a2 + 24);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v44.__r_.__value_.__l.__data_;
    v34 = v44.__r_.__value_.__r.__words[2];
    memset(&v44, 0, sizeof(v44));
    __p.__r_.__value_.__r.__words[2] = v34;
    v46 = a3;
    v47 = a4;
    AMCP::Terminal_Identifier_to_string(&v49, &__p.__r_.__value_.__l.__data_);
    if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v36 = &v49;
    }

    else
    {
      v36 = v49.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v38, "Index out of bounds - index: %s  size: %zu", v35, v36, 0x6DB6DB6DB6DB6DB7 * ((v10[1] - *v10) >> 4));
    std::logic_error::logic_error(&v37, &v38);
    v37.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v37);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v53 = 0;
    v54 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v55, buf);
    *&v55[32] = "std::shared_ptr<DAL::DAL_Buffer> AMCP::Graph::Node::get_nth_wire_ref(size_t, Direction)";
    v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v57 = 140;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v43);
  }

  v11 = *(a2 + 192);
  if (!v11)
  {
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v28 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v27 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v29 = *v28;
    }

    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v55 = 136315650;
      *&v55[4] = "GraphNode.cpp";
      *&v55[12] = 1024;
      *&v55[14] = 686;
      *&v55[18] = 2080;
      *&v55[20] = "not (m_node_proc)";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v55, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v38, "", v33);
    std::logic_error::logic_error(&v43, &v38);
    v43.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, &v43);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v53 = 0;
    v54 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v55, buf);
    *&v55[32] = "Get_Terminal_Buffer_Handler AMCP::Graph::Node::get_get_buffer_proc() const";
    v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v57 = 686;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v49);
  }

  std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__value_func[abi:ne200100](&v50, v11 + 32);
  if (!v51)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      if (*(a2 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *(a2 + 24), *(a2 + 32));
      }

      else
      {
        v42 = *(a2 + 24);
      }

      *v55 = *&v42.__r_.__value_.__l.__data_;
      v17 = v42.__r_.__value_.__r.__words[2];
      memset(&v42, 0, sizeof(v42));
      *&v55[16] = v17;
      *&v55[24] = a3;
      *&v55[32] = a4;
      AMCP::Terminal_Identifier_to_string(&__p, v55);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &__p;
      }

      else
      {
        v18 = __p.__r_.__value_.__r.__words[0];
      }

      *buf = 136315906;
      *&buf[4] = "GraphNode.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 149;
      *&buf[18] = 2080;
      *&buf[20] = "not (proc != nullptr)";
      *&buf[28] = 2080;
      *&buf[30] = v18;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Get_Terminal_Buffer_Handler is missing for required Container - index: %s", buf, 0x26u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v55[23] & 0x80000000) != 0)
      {
        operator delete(*v55);
      }
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    if (*(a2 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v39, *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v39 = *(a2 + 24);
    }

    *&__p.__r_.__value_.__l.__data_ = *&v39.__r_.__value_.__l.__data_;
    v19 = v39.__r_.__value_.__r.__words[2];
    memset(&v39, 0, sizeof(v39));
    __p.__r_.__value_.__r.__words[2] = v19;
    v46 = a3;
    v47 = a4;
    AMCP::Terminal_Identifier_to_string(&v43, &__p.__r_.__value_.__l.__data_);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v43;
    }

    else
    {
      v21 = v43.__r_.__value_.__r.__words[0];
    }

    caulk::make_string(&v49, "Get_Terminal_Buffer_Handler is missing for required Container - index: %s", v20, v21);
    std::logic_error::logic_error(&v40, &v49);
    v40.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(buf, &v40);
    *&buf[24] = 0;
    *&buf[32] = 0;
    v53 = 0;
    v54 = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v55, buf);
    *&v55[32] = "std::shared_ptr<DAL::DAL_Buffer> AMCP::Graph::Node::get_nth_wire_ref(size_t, Direction)";
    v56 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v57 = 149;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  *buf = a4;
  *v55 = a3;
  (*(*v51 + 48))(v51, buf, v55);
  return std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::~__value_func[abi:ne200100](&v50);
}

void sub_1DE513BAC(_Unwind_Exception *a1)
{
  if (*(v1 - 201) < 0)
  {
    operator delete(*(v1 - 224));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<std::shared_ptr<AMCP::DAL::DAL_Buffer> ()(AMCP::Direction,unsigned long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::vector<AMCP::Terminal_Description>::__emplace_back_slow_path<AMCP::Terminal_Description>(uint64_t a1, __int128 *a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x276276276276276)
  {
    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x9D89D89D89D89D8ALL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((*(a1 + 16) - *a1) >> 3)) >= 0x13B13B13B13B13BLL)
  {
    v5 = 0x276276276276276;
  }

  else
  {
    v5 = v3;
  }

  v21 = a1;
  if (v5)
  {
    std::allocator<AMCP::Terminal_Description>::allocate_at_least[abi:ne200100](v5);
  }

  v6 = 104 * v2;
  *(&v20 + 1) = 0;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 32) = *(a2 + 4);
  *v6 = v7;
  *(v6 + 16) = v8;
  v9 = (104 * v2 + 40);
  v10 = a2 + 40;
  v11 = 2;
  do
  {
    *v9 = 0;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = *v10;
    v9[2] = *(v10 + 2);
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = 0;
    v10 += 24;
    v9 += 3;
    --v11;
  }

  while (v11);
  v12 = *(a2 + 11);
  *(104 * v2 + 0x60) = *(a2 + 96);
  *(104 * v2 + 0x58) = v12;
  *&v20 = v6 + 104;
  v13 = *(a1 + 8);
  v14 = v6 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<AMCP::Terminal_Description>,AMCP::Terminal_Description*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v20;
  *(a1 + 8) = v20;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v19[0] = v15;
  v19[1] = v15;
  std::__split_buffer<AMCP::Terminal_Description>::~__split_buffer(v19);
  return v18;
}

void AMCP::Graph::Node::edit_each_wire(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v16 = a1 + 56;
  do
  {
    v17 = v6;
    v8 = (v16 + 24 * v7);
    if (v8[1] != *v8)
    {
      v9 = 0;
      do
      {
        if (*(a1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v20, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v20 = *(a1 + 24);
        }

        *__p = *&v20.__r_.__value_.__l.__data_;
        v10 = v20.__r_.__value_.__r.__words[2];
        memset(&v20, 0, sizeof(v20));
        v22 = v10;
        v23 = v9;
        v24 = v7;
        AMCP::Graph::Wire_Index::get_wires_for_terminal(&v18, a2, __p);
        v12 = v18;
        v11 = v19;
        for (i = v18; i != v11; ++i)
        {
          v14 = *i;
          v25 = v7;
          v15 = *(a3 + 24);
          if (!v15)
          {
            std::__throw_bad_function_call[abi:ne200100]();
          }

          (*(*v15 + 48))(v15, &v25, v14);
        }

        if (v12)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v22) < 0)
        {
          operator delete(__p[0]);
        }

        ++v9;
      }

      while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 4));
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v17 & 1) == 0);
}

void sub_1DE514180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Node::for_each_connection(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v15 = a1 + 56;
  do
  {
    v16 = v6;
    v8 = (v15 + 24 * v7);
    if (v8[1] != *v8)
    {
      v9 = 0;
      do
      {
        if (*(a1 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v29, *(a1 + 24), *(a1 + 32));
        }

        else
        {
          v29 = *(a1 + 24);
        }

        v30 = *&v29.__r_.__value_.__l.__data_;
        v10 = v29.__r_.__value_.__r.__words[2];
        memset(&v29, 0, sizeof(v29));
        v31 = v10;
        v32 = v9;
        v33 = v7;
        AMCP::Graph::Wire_Index::get_wires_for_terminal(&v27, a2, &v30);
        v12 = v27;
        v11 = v28;
        for (i = v27; i != v11; i += 8)
        {
          if (*(*i + 408) == 1)
          {
            AMCP::Graph::Graph_Wire::Connection::Connection(&v17, (*i + 192));
            v34[0] = v7;
            v14 = *(a3 + 24);
            if (!v14)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            (*(*v14 + 48))(v14, v34, &v17);
            if (__p)
            {
              v26 = __p;
              operator delete(__p);
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            if (v22)
            {
              v23 = v22;
              operator delete(v22);
            }

            if (v21 < 0)
            {
              operator delete(v20);
            }

            if (v19 < 0)
            {
              operator delete(v18);
            }

            if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v17.__r_.__value_.__l.__data_);
            }
          }
        }

        if (v12)
        {
          operator delete(v12);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        ++v9;
      }

      while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 4));
    }

    v6 = 1;
    v7 = 1;
  }

  while ((v16 & 1) == 0);
}

void sub_1DE5143B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 121) < 0)
  {
    operator delete(*(v11 - 144));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0,std::allocator<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0>,void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node32set_all_terminal_data_directionsE16Buffer_AlignmentE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

AMCP::Log::AMCP_Scope_Registry *std::__function::__func<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0,std::allocator<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0>,void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::operator()(AMCP::Log::AMCP_Scope_Registry *result, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(result + 2);
  if (*(a3 + 108) == 1 && *(a3 + 104) != v3)
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      *buf = 136315650;
      v21 = "GraphTerminal.cpp";
      v22 = 1024;
      v23 = 59;
      v24 = 2080;
      v25 = "not (BOOL(m_buffer_alignment) ? m_buffer_alignment == buffer_alignment : true)";
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s mismatch buffer alignment", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v11, "mismatch buffer alignment", v9);
    std::logic_error::logic_error(&v12, &v11);
    v12.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v13, &v12);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = -1;
    v13.__vftable = &unk_1F5991430;
    v14 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v13);
    v26 = "void AMCP::Graph::Terminal::set_buffer_alignment(Buffer_Alignment)";
    v27 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphTerminal.cpp";
    v28 = 59;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v10);
  }

  *(a3 + 104) = v3;
  *(a3 + 108) = 1;
  return result;
}

void sub_1DE514750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a11)
  {
    operator delete(a11);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v27 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a26);
  MEMORY[0x1E12C0F00](&a24);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (v26)
  {
    __cxa_free_exception(a10);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v27 - 113));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0,std::allocator<AMCP::Graph::Node::set_all_terminal_data_directions(Buffer_Alignment)::$_0>,void ()(AMCP::Terminal_Identifier const&,AMCP::Graph::Terminal const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F5977788;
  *(a2 + 8) = *(result + 8);
  return result;
}

uint64_t std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Graph::Node::get_get_clock_proc(AMCP::Graph::Node *this, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v20 = "GraphNode.cpp";
      v21 = 1024;
      v22 = 694;
      v23 = 2080;
      v24 = "not (m_node_proc)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v18);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v10, "", v8);
    std::logic_error::logic_error(&v11, &v10);
    v11.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v12, &v11);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = -1;
    v12.__vftable = &unk_1F5991430;
    v13 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v12);
    v25 = "Get_Node_Clock_Handler AMCP::Graph::Node::get_get_clock_proc() const";
    v26 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v27 = 694;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v9);
  }

  v2 = a2 + 64;

  return std::__function::__value_func<std::shared_ptr<AMCP::Graph::Timebase> ()(void)>::__value_func[abi:ne200100](this, v2);
}

void sub_1DE514B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 112);
  boost::exception_detail::error_info_injector<std::domain_error>::~error_info_injector(&a27);
  MEMORY[0x1E12C0F00](&a25);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a11)
  {
    __cxa_free_exception(v27);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 113));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node30get_sample_rates_for_terminalsERNS0_10Wire_IndexEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double *std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = (a1 + 16);
  v5 = *(a1 + 16);
  if (*(v5 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v5 + 24), *(v5 + 32));
  }

  else
  {
    __p = *(v5 + 24);
  }

  v7 = *(a3 + 23);
  if (v7 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = a3[1];
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (v8 != size)
  {
    v13 = 5;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (v7 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (!memcmp(v11, p_p, v8))
  {
    v13 = 0;
  }

  else
  {
    v13 = 5;
  }

  if (v10 < 0)
  {
LABEL_22:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_23:
  result = get_terminal(v6, &a3[v13]);
  v15 = *result;
  v16 = *(*(a1 + 8) + 8);
  if (!v16)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v17 = v16;
      v18 = *(v16 + 4);
      if (v15 >= v18)
      {
        break;
      }

      v16 = *v16;
      if (!*v17)
      {
        goto LABEL_29;
      }
    }

    if (v18 >= v15)
    {
      return result;
    }

    v16 = v16[1];
    if (!v16)
    {
      goto LABEL_29;
    }
  }
}

void std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5977898;
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

void std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977898;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::get_sample_rates_for_terminals(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977898;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0,std::allocator<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node27calculate_clocks_from_wiresERKNS0_8Node_MapERNS0_10Wire_IndexERKNSt3__18functionIFNS7_10shared_ptrINS0_8TimebaseEEERKNS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEEEEERKNS9_INS0_21Meta_Timebase_FactoryEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0,std::allocator<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(uint64_t a1, int *a2, std::string *__str)
{
  v44 = *MEMORY[0x1E69E9840];
  if (**(a1 + 24))
  {
    return;
  }

  v5 = *a2;
  data = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  if (v5 == 1)
  {
    std::string::operator=(v33, __str);
    *&v33[24] = __str[1].__r_.__value_.__l.__data_;
    data = __str[1].__r_.__value_.__r.__words[1];
    std::string::operator=(v31, (__str + 40));
    v6 = 64;
  }

  else
  {
    std::string::operator=(v33, (__str + 40));
    *&v33[24] = *(&__str[2].__r_.__value_.__l + 2);
    data = __str[3].__r_.__value_.__l.__data_;
    std::string::operator=(v31, __str);
    v6 = 24;
  }

  v7 = __str + v6;
  *&v31[24] = *v7;
  v32 = *(v7 + 2);
  v8 = *(a1 + 8);
  if (!std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v8, v31))
  {
    v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v16 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v17 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = *v18;
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    else
    {
      v19 = *v18;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "GraphNode.cpp";
      v37 = 1024;
      v38 = 314;
      v39 = 2080;
      v40 = "not (nodes.find(this_term.m_node) != nodes.end())";
      _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to calculate clock for node outside of the current subgraph.", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v22, "Attempt to calculate clock for node outside of the current subgraph.", v20);
    std::logic_error::logic_error(&v23, &v22);
    v23.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v24, &v23);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = -1;
    v24.__vftable = &unk_1F5991430;
    v25 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v24);
    v41 = "auto AMCP::Graph::Node::calculate_clocks_from_wires(const Node_Map &, Wire_Index &, const std::function<Timebase_Ref (const Graph_Node_UID &)> &, const std::shared_ptr<Meta_Timebase_Factory> &)::(anonymous class)::operator()(Direction, const Graph_Wire::Connection &) const";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v43 = 314;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
  }

  if (std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v8, v33))
  {
    if ((v9 = *(get_terminal_for_key(v33, v8) + 104), (v9 & 0x100000000) != 0) && v5 == 1 && v9 == 1 || (v9 & 0x100000000) != 0 && !(v5 | v9))
    {
      v10 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(*(a1 + 8), v33);
      if (!v10)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v11 = v10[5];
      v12 = *(v11 + 144);
      v13 = *(v11 + 152);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        if (v12)
        {
          v14 = *(a1 + 16);
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          goto LABEL_18;
        }
      }

      else if (v12)
      {
        v14 = *(a1 + 16);
LABEL_18:
        v15 = v14[1];
        *v14 = v12;
        v14[1] = v13;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        goto LABEL_22;
      }

      **(a1 + 24) = 1;
      if (!v13)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

LABEL_22:
  if ((v31[23] & 0x80000000) != 0)
  {
    operator delete(*v31);
  }

  if ((v33[23] & 0x80000000) != 0)
  {
    operator delete(*v33);
  }
}

void sub_1DE515408(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 153) < 0)
  {
    operator delete(*(v40 - 176));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0,std::allocator<AMCP::Graph::Node::calculate_clocks_from_wires(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::function<std::shared_ptr<AMCP::Graph::Timebase> ()(std::string const&)> const&,std::shared_ptr<AMCP::Graph::Meta_Timebase_Factory> const&)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977818;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void AMCP::Graph::Node::calculate_all_drift_correction(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a1 + 3, (a1 + 3));
  v6 = a1[19];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE515680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__value_func[abi:ne200100](va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node30calculate_all_drift_correctionERKNS0_8Node_MapERNS0_10Wire_IndexERNSt3__113unordered_setINS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_4hashISE_EENS7_8equal_toISE_EENSC_ISE_EEEERmE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a3 + 408) != 1)
  {
    return;
  }

  v5 = *a2;
  AMCP::Graph::Graph_Wire::Connection::Connection(&__str, (a3 + 192));
  v24 = 0;
  *__p = 0u;
  v23 = 0u;
  if (v5 == 1)
  {
    std::string::operator=(__p, &__str);
    v6 = &v26;
  }

  else
  {
    std::string::operator=(__p, &v27);
    v6 = &v28;
  }

  *(&v23 + 1) = *v6;
  v24 = *(v6 + 2);
  v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(*(a1 + 32), __p);
  if (v7)
  {
    v8 = v7;
    if (v5)
    {
LABEL_32:
      v21 = *(a1 + 48);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v21, __p))
      {
        AMCP::Graph::Node::calculate_all_drift_correction(v8[5], *(a1 + 32), *(a1 + 40), v21, *(a1 + 8));
      }

      goto LABEL_34;
    }

    v9 = v7[5];
    v11 = *(v9 + 144);
    v10 = *(v9 + 152);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*(a3 + 140))
    {
      v12 = *(a1 + 16);
      if (v12 && v11)
      {
        v13 = (*(*v12 + 16))(v12);
        v14 = (*(*v11 + 16))(v11);
        v15 = *(v13 + 23);
        if (v15 >= 0)
        {
          v16 = *(v13 + 23);
        }

        else
        {
          v16 = *(v13 + 8);
        }

        v17 = *(v14 + 23);
        v18 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v17 = *(v14 + 8);
        }

        if (v16 == v17)
        {
          v19 = v15 >= 0 ? v13 : *v13;
          v20 = v18 >= 0 ? v14 : *v14;
          if (!memcmp(v19, v20, v16))
          {
            goto LABEL_30;
          }
        }

        goto LABEL_27;
      }

      if (v12 | v11)
      {
LABEL_27:
        if (*(a3 + 408) == 1)
        {
          *(a3 + 332) = 1;
        }

        ++**(a1 + 8);
      }
    }

LABEL_30:
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    goto LABEL_32;
  }

LABEL_34:
  if (SBYTE7(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v31)
  {
    v32 = v31;
    operator delete(v31);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_1DE5159E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  AMCP::Graph::Graph_Wire::Connection::~Connection(&a17);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::__clone(__n128 *a1, __n128 *a2)
{
  v2 = a1->n128_u64[1];
  a2->n128_u64[0] = &unk_1F5977918;
  a2->n128_u64[1] = v2;
  v3 = a1[1].n128_u64[1];
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a2[1].n128_u64[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = a1[2];
  a2[3].n128_u64[0] = a1[3].n128_u64[0];
  a2[2] = result;
  return result;
}

void std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F5977918;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0,std::allocator<AMCP::Graph::Node::calculate_all_drift_correction(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &,unsigned long &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F5977918;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void AMCP::Graph::Node::set_all_wire_source_clocks(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *MEMORY[0x1E69E9840];
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a1 + 3, (a1 + 3));
  v5 = a1[19];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1DE515CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__value_func[abi:ne200100](va);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node26set_all_wire_source_clocksERKNS0_8Node_MapERNS0_10Wire_IndexERNSt3__113unordered_setINS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_4hashISE_EENS7_8equal_toISE_EENSC_ISE_EEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  if (*(a3 + 408) == 1)
  {
    v5 = *a2;
    AMCP::Graph::Graph_Wire::Connection::Connection(&__str, (a3 + 192));
    v19 = 0;
    *__p = 0u;
    v18 = 0u;
    if (v5 == 1)
    {
      std::string::operator=(__p, &__str);
      v6 = &v21;
    }

    else
    {
      std::string::operator=(__p, &v22);
      v6 = &v23;
    }

    *(&v18 + 1) = *v6;
    v19 = *(v6 + 2);
    v7 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(*(a1 + 24), __p);
    if (v7)
    {
      v8 = v7;
      if (!v5)
      {
        v10 = *(a1 + 8);
        v9 = *(a1 + 16);
        if (v9)
        {
          atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = *(a3 + 424);
        *(a3 + 416) = v10;
        *(a3 + 424) = v9;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        v12 = v8[5];
        v13 = *(v12 + 144);
        v14 = *(v12 + 152);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(a3 + 440);
        *(a3 + 432) = v13;
        *(a3 + 440) = v14;
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      v16 = *(a1 + 40);
      if (!std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(v16, __p))
      {
        AMCP::Graph::Node::set_all_wire_source_clocks(v8[5], *(a1 + 24), *(a1 + 32), v16);
      }
    }

    if (SBYTE7(v18) < 0)
    {
      operator delete(__p[0]);
    }

    if (v29)
    {
      v30 = v29;
      operator delete(v29);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
    }

    if (v26)
    {
      v27 = v26;
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE515F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  AMCP::Graph::Graph_Wire::Connection::~Connection(&a17);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::__clone(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = &unk_1F59779A8;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = result;
  return result;
}

void std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F59779A8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::set_all_wire_source_clocks(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::~__func(void *a1)
{
  *a1 = &unk_1F59779A8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void *AMCP::Graph::Node::calculate_latency(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 24))
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "GraphNode.cpp";
      v31 = 1024;
      v32 = 493;
      v33 = 2080;
      v34 = "not (m_node_proc)";
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "", v17);
    std::logic_error::logic_error(&v21, &v20);
    v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5991430;
    v23 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
    v35 = "void AMCP::Graph::Node::calculate_latency(const Node_Map &, Wire_Index &, std::unordered_set<Graph_Node_UID> &)";
    v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
    v37 = 493;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  result = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a4, a1 + 3);
  if (!result)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a4, a1 + 3, a1 + 24);
    v7 = *(*(a1 + 24) + 408);
    if (v7)
    {
      v8 = (*(*v7 + 48))(v7);
      if ((v8 & 0x80000000) != 0)
      {
        v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v9 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
          *buf = 136315650;
          v30 = "GraphNode.cpp";
          v31 = 1024;
          v32 = 501;
          v33 = 2080;
          v34 = "not (this_nodes_latency >= 0)";
          _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Tail time is not allowed to be less than zero", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v20, "Tail time is not allowed to be less than zero", v18);
        std::logic_error::logic_error(&v21, &v20);
        v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v22, &v21);
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = -1;
        v22.__vftable = &unk_1F5991430;
        v23 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v22);
        v35 = "void AMCP::Graph::Node::calculate_latency(const Node_Map &, Wire_Index &, std::unordered_set<Graph_Node_UID> &)";
        v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
        v37 = 501;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
      }
    }

    LODWORD(v22.__vftable) = 0;
    operator new();
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node17calculate_latencyERKNS0_8Node_MapERNS0_10Wire_IndexERNSt3__113unordered_setINS7_12basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_4hashISE_EENS7_8equal_toISE_EENSC_ISE_EEEEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::operator()(void *result, _DWORD *a2, uint64_t a3)
{
  if (!*a2)
  {
    v3 = result;
    v4 = result[2];
    result = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v4, (a3 + 40));
    if (result)
    {
      v5 = result;
      result = AMCP::Graph::Node::calculate_latency(result[5], v4, *(v3 + 24), *(v3 + 32));
      v6 = *(v5[5] + 164);
      v7 = *(v3 + 8);
      if (v6 > *v7)
      {
        *v7 = v6;
      }
    }
  }

  return result;
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency(AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &,std::unordered_set<std::string> &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire::Connection const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977A28;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node44calculate_latency_adjustment_for_connectionsEiRKNS0_8Node_MapERNS0_10Wire_IndexEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::operator()(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!*a2 && *(a3 + 408) == 1)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v33, *a3, *(a3 + 8));
    }

    else
    {
      *v33 = *a3;
      *&v33[16] = *(a3 + 16);
    }

    v31 = *v33;
    v32 = *&v33[16];
    if (*(a3 + 63) < 0)
    {
      std::string::__init_copy_ctor_external(v33, *(a3 + 40), *(a3 + 48));
    }

    else
    {
      *v33 = *(a3 + 40);
      *&v33[16] = *(a3 + 56);
    }

    *__p = *v33;
    v30 = *&v33[16];
    v5 = *(a1 + 16);
    v6 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v5, __p);
    if (v6)
    {
      v7 = v6;
      v8 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(v5, &v31);
      if (v8)
      {
        v9 = **(a1 + 8);
        v10 = *(v7[5] + 164);
        v11 = *(*(v8[5] + 192) + 408);
        if (v11)
        {
          v11 = (*(*v11 + 48))(v11);
        }

        v12 = v9 - v11;
        v13 = (v9 - v11 - v10);
        if (v12 - v10 < 0)
        {
          v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v14 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v11);
          }

          v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
            v17 = *v16;
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          else
          {
            v17 = *v16;
          }

          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *v33 = 136315906;
            *&v33[4] = "GraphNode.cpp";
            *&v33[12] = 1024;
            *&v33[14] = 584;
            *&v33[18] = 2080;
            *&v33[20] = "not (offset >= 0)";
            v34 = 1024;
            *v35 = v13;
            _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s invalid latency offset %d", v33, 0x22u);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v20, "invalid latency offset %d", v18, v13);
          std::logic_error::logic_error(&v21, &v20);
          v21.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v22, &v21);
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v27 = -1;
          v22.__vftable = &unk_1F5991430;
          v23 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v33, &v22);
          *&v35[2] = "auto AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int32_t, const Node_Map &, Wire_Index &)::(anonymous class)::operator()(Direction, Graph_Wire &) const";
          v36 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/GraphNode.cpp";
          v37 = 584;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
        }

        if (*(a3 + 408) == 1)
        {
          *(a3 + 376) = v13;
        }
      }
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }
}

void sub_1DE516C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 137) < 0)
  {
    operator delete(*(v42 - 160));
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::calculate_latency_adjustment_for_connections(int,AMCP::Graph::Node_Map const&,AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5977AA8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void std::vector<AMCP::Graph::Call_Audio_IO_Proc::Proc_Connection_Info>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = (v3 + 48 * a2);
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 4) < v6)
    {
      if (a2 <= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * (&v7[-v3] >> 4);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 48 * ((48 * v6 - 48) / 0x30) + 48);
    v11 = &v4[48 * ((48 * v6 - 48) / 0x30) + 48];
  }

  a1[1] = v11;
}

uint64_t std::__function::__value_func<void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node21demand_client_io_procERNS0_10Wire_IndexEE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::operator()(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v176 = *MEMORY[0x1E69E9840];
  v115 = *a2;
  v8 = *(a1 + 8);
  v159 = 0;
  memset(v158, 0, sizeof(v158));
  os_unfair_lock_lock(v8);
  v118 = a4;
  if (0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 80) - *(v8 + 72)) >> 4))
  {
    v94 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v94 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v96 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v95 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v95)
    {
      atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
      v97 = *v96;
      std::__shared_weak_count::__release_shared[abi:ne200100](v95);
    }

    else
    {
      v97 = *v96;
    }

    if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
    {
      *v170 = 136315650;
      *&v170[4] = "Client_IO_Handler.cpp";
      *&v170[12] = 1024;
      *&v170[14] = 231;
      *&v170[18] = 2080;
      *&v170[20] = "not (sources.size() == m_streams[Direction::input].size())";
      _os_log_error_impl(&dword_1DE1F9000, v97, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", v170, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v152, "Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", v110);
    std::logic_error::logic_error(v135, &v152);
    *v135 = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, v135);
    *&buf[32] = 0;
    *&buf[24] = 0;
    *&v166 = 0;
    DWORD2(v166) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v170, buf);
    *&v170[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    DWORD2(v171) = 231;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v138);
  }

  if (0x2E8BA2E8BA2E8BA3 * ((a5[1] - *a5) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - *(v8 + 48)) >> 4))
  {
    v98 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v98 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v100 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v99 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v99)
    {
      atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
      v101 = *v100;
      std::__shared_weak_count::__release_shared[abi:ne200100](v99);
    }

    else
    {
      v101 = *v100;
    }

    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *v170 = 136315650;
      *&v170[4] = "Client_IO_Handler.cpp";
      *&v170[12] = 1024;
      *&v170[14] = 232;
      *&v170[18] = 2080;
      *&v170[20] = "not (dests.size() == m_streams[Direction::output].size())";
      _os_log_error_impl(&dword_1DE1F9000, v101, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", v170, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v119);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v152, "Call_Audio_IO_Proc: mismatch between preallocated streams and actual streams", v111);
    std::logic_error::logic_error(v135, &v152);
    *v135 = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, v135);
    *&buf[32] = 0;
    *&buf[24] = 0;
    *&v166 = 0;
    DWORD2(v166) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v170, buf);
    *&v170[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
    *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    DWORD2(v171) = 232;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v138);
  }

  v116 = a5;
  v114 = *(v8 + 8);
  AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(a3, v158);
  v11 = *a4;
  if (a4[1] != *a4)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    do
    {
      v16 = v11 + v12;
      v17 = *(v11 + v12);
      *&v170[16] = *(v11 + v12 + 16);
      *v170 = v17;
      *&v170[24] = *(v11 + v12 + 24);
      v18 = *(v11 + v12 + 32);
      *&v170[32] = v18;
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      v19 = *(v16 + 40);
      v172 = *(v16 + 56);
      v171 = v19;
      v173 = *(v16 + 64);
      v20 = *(v16 + 72);
      v174 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v175 = *(v11 + v12 + 80);
      v152 = *v170;
      v21 = *&v170[24];
      v153 = *&v170[24];
      v22 = *&v170[32];
      if (*&v170[32])
      {
        atomic_fetch_add_explicit((*&v170[32] + 8), 1uLL, memory_order_relaxed);
      }

      v154 = v171;
      v155 = v172;
      v156 = v173;
      v157 = v174;
      if (v174)
      {
        atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v23 = *(v8 + 192);
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      LODWORD(v149.__vftable) = 2;
      *&v149.__imp_.__imp_ = -v23;
      v150 = 0;
      v151 = v21;
      v24 = *(*(v8 + 168) + 8 * v15);
      if (v24)
      {
        AMCP::Graph::align_buffer(&v152, v24, v10);
        LODWORD(__p[0]) = v115;
        v145 = 0;
        v146 = 0;
        __p[1] = 0;
        v147 = v15;
        v148 = 0;
        v25 = *(*(v8 + 168) + 8 * v15);
        v138 = v152;
        v139 = v153;
        if (*(&v153 + 1))
        {
          atomic_fetch_add_explicit((*(&v153 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v140 = v154;
        v141 = v155;
        v142 = v156;
        v143 = v157;
        if (v157)
        {
          atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::create_writable_range(v25, &v138, buf);
        if (v143)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v143);
        }

        if (*(&v139 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v139 + 1));
        }

        (*(*v175 + 64))(v135);
        if (caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(v135, &v152))
        {
          AMCP::DAL::Writable_Range::receive_data(buf, __p, v170);
        }

        else
        {
          v30 = *(*a4 + v12 + 80);
          if (v30)
          {
            (*(*v30 + 72))(v160);
            v31 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(v160, &v152);
            if (v164)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v164);
            }

            v32 = *&v160[32];
            if (*&v160[32])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v160[32]);
            }

            if (!v31)
            {
              v88 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v88 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v32);
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
                *v160 = 136315650;
                *&v160[4] = "Client_IO_Handler.cpp";
                *&v160[12] = 1024;
                *&v160[14] = 257;
                *&v160[18] = 2080;
                *&v160[20] = "not (sources[i].m_buffer == nullptr or sources[i].m_buffer->get_allowed_read_range().encompasses(read_time_range))";
                _os_log_error_impl(&dword_1DE1F9000, v91, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Only reflectors can read outside of the valid range.", v160, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v134);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string(&v127, "Only reflectors can read outside of the valid range.", v93);
              std::logic_error::logic_error(&v128, &v127);
              v128.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v129, &v128);
              v130 = 0;
              v131 = 0;
              v132 = 0;
              v133 = -1;
              v129.__r_.__value_.__r.__words[0] = &unk_1F5991430;
              v129.__r_.__value_.__r.__words[2] = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v160, &v129);
              *&v160[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
              *&v161 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
              DWORD2(v161) = 257;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v125);
            }
          }

          AMCP::DAL::Writable_Range::pad_and_receive_data(buf, __p, v170);
        }

        v33 = *(*(v8 + 168) + 8 * v15);
        v119 = v152;
        v120 = v153;
        if (*(&v153 + 1))
        {
          atomic_fetch_add_explicit((*(&v153 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        v121 = v154;
        v122 = v155;
        v123 = v156;
        v124 = v157;
        if (v157)
        {
          atomic_fetch_add_explicit(&v157->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::create_readable_range(v33, &v119, v160);
        if (v124)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v124);
        }

        if (*(&v120 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v120 + 1));
        }

        AMCP::Graph::dal_segment_to_proc_stream(v160, *(v8 + 72) + v13, (*(v8 + 120) + v14), &v149);
        if (v164)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        if (*&v160[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v160[32]);
        }

        if (v137)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v137);
        }

        if (v136)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v136);
        }

        if (v169)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v169);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (SHIBYTE(v146) < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v26 = *a4;
        v27 = *(*a4 + v12 + 80);
        if (v27)
        {
          (*(*v27 + 64))(buf);
          v28 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::encompasses(buf, *a4 + v12);
          if (v169)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v169);
          }

          v29 = *&buf[32];
          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          if (!v28)
          {
            v84 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v84 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(v29);
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
              *&buf[4] = "Client_IO_Handler.cpp";
              *&buf[12] = 1024;
              *&buf[14] = 266;
              *&buf[18] = 2080;
              *&buf[20] = "not (sources[i].m_buffer == nullptr or sources[i].m_buffer->get_time_range().encompasses(sources[i].get_time_range()))";
              _os_log_error_impl(&dword_1DE1F9000, v87, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Reflectors should be using a copy buffer", buf, 0x1Cu);
            }

            AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v127);
            __cxa_allocate_exception(0x40uLL);
            caulk::make_string(&v129, "Reflectors should be using a copy buffer", v92);
            std::logic_error::logic_error(v126, &v129);
            *v126 = MEMORY[0x1E69E55A8] + 16;
            std::logic_error::logic_error(v160, v126);
            *&v160[32] = 0;
            *&v160[24] = 0;
            *&v161 = 0;
            DWORD2(v161) = -1;
            *v160 = &unk_1F5991430;
            *&v160[16] = &unk_1F5991458;
            boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, v160);
            *&buf[32] = "void AMCP::Graph::Call_Audio_IO_Proc::operator()(AMCP::Object_ID, Node_Type, const IO_Proc_Cycle_Info &, const rt_safe_vector<AMCP::DAL::Readable_Range> &, const rt_safe_vector<AMCP::DAL::Writable_Range> &)";
            *&v166 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
            DWORD2(v166) = 266;
            applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
          }

          v26 = *a4;
        }

        AMCP::Graph::dal_segment_to_proc_stream(v26 + v12, *(v8 + 72) + v13, (*(v8 + 120) + v14), &v149);
      }

      if (*(&v151 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v151 + 1));
      }

      if (v157)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v157);
      }

      if (*(&v153 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v153 + 1));
      }

      if (v174)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v174);
      }

      if (*&v170[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
      }

      ++v15;
      v11 = *a4;
      v14 += 40;
      v13 += 80;
      v12 += 88;
    }

    while (v15 < 0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3));
  }

  v34 = *a5;
  if (a5[1] != *a5)
  {
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    do
    {
      v39 = (v34 + v35);
      v40 = *v39;
      *&buf[16] = *(v39 + 2);
      *buf = v40;
      *&buf[24] = *(v39 + 24);
      v117 = *&buf[24];
      v41 = *&buf[32];
      if (*&buf[32])
      {
        atomic_fetch_add_explicit((*&buf[32] + 8), 1uLL, memory_order_relaxed);
      }

      v42 = *(v39 + 40);
      v167 = *(v39 + 7);
      v166 = v42;
      v43 = *(v39 + 8);
      v168 = v43;
      v44 = *(v39 + 9);
      v169 = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v45 = *(v8 + 192);
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v152.__r_.__value_.__l.__data_) = 2;
      *&v152.__r_.__value_.__r.__words[1] = v45;
      v153 = v117;
      v46 = *(*(v8 + 144) + 8 * v38);
      v47 = *v116;
      if (v46)
      {
        AMCP::Graph::align_buffer((v47 + v35), v46, v10);
        v48 = *(*(v8 + 144) + 8 * v38);
        *v160 = *buf;
        *&v160[16] = *&buf[16];
        *&v160[24] = v117;
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v161 = v166;
        v162 = v167;
        v163 = v43;
        v164 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::create_writable_range(v48, v160, v170);
        if (v164)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        if (*&v160[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v160[32]);
        }

        AMCP::Graph::dal_segment_to_proc_stream(v170, *(v8 + 48) + v36, (*(v8 + 96) + v37), &v152);
        if (v174)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v174);
        }

        if (*&v170[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
        }
      }

      else
      {
        AMCP::Graph::dal_segment_to_proc_stream(v47 + v35, *(v8 + 48) + v36, (*(v8 + 96) + v37), &v152);
      }

      if (*(&v153 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v153 + 1));
      }

      if (v44)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      ++v38;
      v34 = *v116;
      v37 += 40;
      v36 += 80;
      v35 += 88;
    }

    while (v38 < 0x2E8BA2E8BA2E8BA3 * ((v116[1] - *v116) >> 3));
  }

  os_unfair_lock_unlock(v8);
  kdebug_trace();
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator()(*(v8 + 40), v115, v158, 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 80) - *(v8 + 72)) >> 4), *(v8 + 72), 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - *(v8 + 48)) >> 4), *(v8 + 48));
  kdebug_trace();
  os_unfair_lock_lock(v8);
  if (v114 == *(v8 + 8))
  {
    v50 = *v116;
    v51 = v116[1];
    if (v51 == *v116)
    {
      v50 = v116[1];
    }

    else
    {
      v52 = 0;
      v53 = 0;
      do
      {
        v54 = *(v8 + 144);
        if (*(v54 + 8 * v53))
        {
          LODWORD(v152.__r_.__value_.__l.__data_) = v115;
          *&v152.__r_.__value_.__r.__words[1] = 0u;
          v153 = 0u;
          LODWORD(v154) = 0;
          v55 = *(v54 + 8 * v53);
          v56 = (v50 + v52);
          v57 = *v56;
          *&buf[16] = *(v56 + 2);
          *buf = v57;
          *&buf[24] = *(v56 + 3);
          v58 = *(v56 + 4);
          *&buf[32] = v58;
          if (v58)
          {
            atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
          }

          v59 = *(v56 + 40);
          v167 = *(v56 + 7);
          v166 = v59;
          v168 = *(v56 + 8);
          v60 = *(v56 + 9);
          v169 = v60;
          if (v60)
          {
            atomic_fetch_add_explicit(&v60->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          AMCP::DAL::Fixed_Buffer::create_readable_range(v55, buf, v170);
          AMCP::DAL::Writable_Range::receive_data(*v116 + v52, &v152, v170);
          if (v174)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v174);
          }

          if (*&v170[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
          }

          if (v169)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v169);
          }

          v49 = *&buf[32];
          if (*&buf[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
          }

          if (SBYTE7(v153) < 0)
          {
            operator delete(v152.__r_.__value_.__l.__size_);
          }

          v50 = *v116;
          v51 = v116[1];
        }

        ++v53;
        v52 += 88;
      }

      while (v53 < 0x2E8BA2E8BA2E8BA3 * ((v51 - v50) >> 3));
    }

    v61 = *(v8 + 72);
    v62 = *(v8 + 80);
    if (0x2E8BA2E8BA2E8BA3 * ((v118[1] - *v118) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((v62 - v61) >> 4))
    {
      v102 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v102 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v49);
      }

      v104 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v103 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v103)
      {
        atomic_fetch_add_explicit(&v103->__shared_owners_, 1uLL, memory_order_relaxed);
        v105 = *v104;
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      }

      else
      {
        v105 = *v104;
      }

      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        *v170 = 136315650;
        *&v170[4] = "Client_IO_Handler.cpp";
        *&v170[12] = 1024;
        *&v170[14] = 150;
        *&v170[18] = 2080;
        *&v170[20] = "not (adjust_this.size() == streams.size())";
        _os_log_error_impl(&dword_1DE1F9000, v105, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v170, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v126);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v129, "", v112);
      std::logic_error::logic_error(&v149, &v129);
      v149.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v152, &v149);
      v153 = 0uLL;
      *&v154 = 0;
      DWORD2(v154) = -1;
      v152.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v152.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v170, &v152);
      *&v170[32] = "void AMCP::Graph::check_sizes_and_adjust(const rt_safe_vector<T> &, const std::vector<AMCP::Proc_Stream> &) [T = AMCP::DAL::Readable_Range]";
      *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
      DWORD2(v171) = 150;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
    }

    if (v62 != v61)
    {
      v63 = 0;
      v64 = 0;
      v65 = 64;
      do
      {
        v66 = *(v61 + v65);
        AMCP::DAL::DAL_Time::operator-(v170, (*v118 + v63 + 40), (*v118 + v63));
        if ((v170[0] & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(v170);
        }

        v67 = *&v170[8];
        v49 = *&v170[32];
        if (*&v170[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
        }

        if (vcvtmd_s64_f64(v67) != v66)
        {
          v68 = *v118 + v63;
          v69 = *(v68 + 24);
          v70 = *(v68 + 32);
          if (v70)
          {
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
            v71 = *(*(v8 + 72) + v65);
            atomic_fetch_add_explicit(&v70->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v71 = *(*(v8 + 72) + v65);
            *(&v69 + 1) = 0;
          }

          *v170 = 2;
          *&v170[8] = v71;
          *&v170[16] = 0;
          *&v170[24] = v69;
          AMCP::DAL::DAL_Timed_Segment::adjust_length((*v118 + v63), v170);
          v49 = *&v170[32];
          if (*&v170[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
          }

          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }
        }

        ++v64;
        v61 = *(v8 + 72);
        v63 += 88;
        v65 += 80;
      }

      while (v64 < 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 80) - v61) >> 4));
      v50 = *v116;
      v51 = v116[1];
    }

    v72 = 0x2E8BA2E8BA2E8BA3 * ((v51 - v50) >> 3);
    v73 = *(v8 + 48);
    v74 = *(v8 + 56);
    if (v72 != 0xCCCCCCCCCCCCCCCDLL * ((v74 - v73) >> 4))
    {
      v106 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v106 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v49);
      }

      v108 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v107 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v107)
      {
        atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
        v109 = *v108;
        std::__shared_weak_count::__release_shared[abi:ne200100](v107);
      }

      else
      {
        v109 = *v108;
      }

      if (os_log_type_enabled(v109, OS_LOG_TYPE_ERROR))
      {
        *v170 = 136315650;
        *&v170[4] = "Client_IO_Handler.cpp";
        *&v170[12] = 1024;
        *&v170[14] = 150;
        *&v170[18] = 2080;
        *&v170[20] = "not (adjust_this.size() == streams.size())";
        _os_log_error_impl(&dword_1DE1F9000, v109, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", v170, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(v126);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v129, "", v113);
      std::logic_error::logic_error(&v149, &v129);
      v149.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v152, &v149);
      v153 = 0uLL;
      *&v154 = 0;
      DWORD2(v154) = -1;
      v152.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v152.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v170, &v152);
      *&v170[32] = "void AMCP::Graph::check_sizes_and_adjust(const rt_safe_vector<T> &, const std::vector<AMCP::Proc_Stream> &) [T = AMCP::DAL::Writable_Range]";
      *&v171 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
      DWORD2(v171) = 150;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(__p);
    }

    if (v74 != v73)
    {
      v75 = 0;
      v76 = 0;
      v77 = 64;
      do
      {
        v78 = *(v73 + v77);
        AMCP::DAL::DAL_Time::operator-(v170, (*v116 + v75 + 40), (*v116 + v75));
        if ((v170[0] & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(v170);
        }

        v79 = *&v170[8];
        if (*&v170[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
        }

        if (vcvtmd_s64_f64(v79) != v78)
        {
          v80 = *v116 + v75;
          v81 = *(v80 + 24);
          v82 = *(v80 + 32);
          if (v82)
          {
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
            v83 = *(*(v8 + 48) + v77);
            atomic_fetch_add_explicit(&v82->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v83 = *(*(v8 + 48) + v77);
            *(&v81 + 1) = 0;
          }

          *v170 = 2;
          *&v170[8] = v83;
          *&v170[16] = 0;
          *&v170[24] = v81;
          AMCP::DAL::DAL_Timed_Segment::adjust_length((*v116 + v75), v170);
          if (*&v170[32])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*&v170[32]);
          }

          if (v82)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v82);
          }
        }

        ++v76;
        v73 = *(v8 + 48);
        v75 += 88;
        v77 += 80;
      }

      while (v76 < 0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 56) - v73) >> 4));
    }
  }

  os_unfair_lock_unlock(v8);
}

void sub_1DE518A50(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5977C08;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(result + 24);
  return result;
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977C08;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_1>,void ()(unsigned int,AMCP::Graph::IO_Proc_Cycle_Info const&,caulk::rt::vector<AMCP::DAL::Readable_Range> const&,caulk::rt::vector<AMCP::DAL::Writable_Range> const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977C08;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t std::__shared_ptr_emplace<AMCP::Graph::Call_Audio_IO_Proc>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 192);
  v3 = -48;
  do
  {
    v10 = v2;
    std::vector<std::unique_ptr<AMCP::DAL::Fixed_Buffer>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v2 -= 3;
    v3 += 24;
  }

  while (v3);
  v4 = (a1 + 144);
  v5 = -48;
  do
  {
    v10 = v4;
    std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__destroy_vector::operator()[abi:ne200100](&v10);
    v4 -= 3;
    v5 += 24;
  }

  while (v5);
  v6 = (a1 + 104);
  v7 = -48;
  do
  {
    v8 = *(v6 - 1);
    if (v8)
    {
      *v6 = v8;
      operator delete(v8);
    }

    v6 -= 3;
    v7 += 24;
  }

  while (v7);

  return std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::~__value_func[abi:ne200100](a1 + 40);
}

void std::__shared_ptr_emplace<AMCP::Graph::Call_Audio_IO_Proc>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977BB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP5Graph4Node21demand_client_io_procERNS0_10Wire_IndexEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (*(a3 + 408) == 1)
  {
    v4 = *a2;
    AMCP::Graph::Graph_Wire::Connection::Connection(&v14, (a3 + 192));
    if (v4)
    {
      v5 = &v16;
    }

    else
    {
      v5 = &v14;
    }

    terminal = get_terminal((a1 + 16), &v5->__r_.__value_.__l.__data_);
    if (v23 || v26 == 1 || v25 == 1 || v28 || (*(terminal + 100) == 1 ? (v7 = v27 == 0) : (v7 = 0), !v7))
    {
      v8 = &v18;
      if (!v4)
      {
        v8 = &v15;
      }

      v9 = *(*(a1 + 8) + 24 * v4) + 48 * *v8;
      *(v9 + 40) = 1;
      v10 = *terminal;
      v11 = *(terminal + 16);
      *(v9 + 32) = *(terminal + 32);
      *v9 = v10;
      *(v9 + 16) = v11;
    }

    v12 = *(terminal + 104);
    v13 = *(a1 + 32);
    *v13 = v12;
    *(v13 + 4) = BYTE4(v12);
    if (__p)
    {
      v30 = __p;
      operator delete(__p);
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1DE5192A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Graph::Graph_Wire::Connection::~Connection(va);
  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::__clone(void *result, void *a2)
{
  v2 = result[1];
  *a2 = &unk_1F5977B28;
  a2[1] = v2;
  v3 = result[3];
  a2[2] = result[2];
  a2[3] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = result[4];
  return result;
}

void std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977B28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0,std::allocator<AMCP::Graph::Node::demand_client_io_proc(AMCP::Graph::Wire_Index &)::$_0>,void ()(AMCP::Direction,AMCP::Graph::Graph_Wire const&)>::~__func(void *a1)
{
  *a1 = &unk_1F5977B28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void HALS_PlugInStream::HandlePlugIn_PropertiesChanged(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3)
{
  if (a2)
  {
    v4 = 0;
    v5 = a3;
    v6 = a2;
    do
    {
      mSelector = v5->mSelector;
      ++v5;
      v4 |= mSelector == 1885762657;
      --v6;
    }

    while (v6);
    if (v4)
    {
      HALS_PlugInStream::BuildFormatList(this);
    }
  }

  v8 = *(this + 4);

  HALS_Object::PropertiesChanged(this, v8, 0, a2, a3);
}

void HALS_PlugInStream::BuildFormatList(HALS_PlugInStream *this)
{
  v2 = *(this + 10);
  v3 = *(v2 + 416);
  v4 = *(v2 + 424);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(this + 23);
  v8 = 0x676C6F6270667461;
  v9 = 0;
  v6 = (*(*v3 + 560))(v3, v5, 0, &v8, 0, 0) / 0x38;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v7 = v6;
  operator new[]();
}

void sub_1DE519730(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12C1700](v2, v1);
  _Unwind_Resume(a1);
}

void ___ZN17HALS_PlugInStream15BuildFormatListEv_block_invoke(uint64_t result, uint64_t a2, const AudioStreamRangedDescription *a3)
{
  v3 = *(result + 32);
  v3[16] = v3[15];
  v3[19] = v3[18];
  if (*(result + 48))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      HALB_FormatList::AddPhysicalFormat(v3 + 14, (*(result + 40) + v5), a3);
      ++v6;
      v5 += 56;
    }

    while (v6 < *(result + 48));
  }
}

void non-virtual thunk toHALS_PlugInStream::~HALS_PlugInStream(HALS_PlugInStream *this)
{
  HALS_PlugInStream::~HALS_PlugInStream((this - 72));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugInStream::~HALS_PlugInStream((this - 72));
}

void HALS_PlugInStream::~HALS_PlugInStream(HALS_PlugInStream *this)
{
  *this = &unk_1F5977C88;
  v2 = (this + 72);
  *(this + 9) = &unk_1F5977D90;
  HALB_FormatList::~HALB_FormatList((this + 112));
  HALS_PlugInObject::~HALS_PlugInObject(v2, v3);

  HALS_Stream::~HALS_Stream(this);
}

{
  HALS_PlugInStream::~HALS_PlugInStream(this);

  JUMPOUT(0x1E12C1730);
}

void HALS_PlugInStream::SetPropertyData(HALS_PlugInStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, const AudioStreamBasicDescription *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v71 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 479;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::SetPropertyData: owning device is missing", &buf, 0x12u);
    }

    v60 = 560947818;
LABEL_80:
    v62 = __cxa_allocate_exception(0x10uLL);
    *v62 = off_1F5991DD8;
    v62[2] = v60;
  }

  mSelector = a3->mSelector;
  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v20 = atomic_load((v17 + 160));
    if (a8)
    {
      v21 = *(a8 + 60);
    }

    else
    {
      v21 = getpid();
    }

    if (v20 != -1 && v20 != v21)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 480;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::SetPropertyData: the given process does not own hog mode", &buf, 0x12u);
      }

      v60 = 560492391;
      goto LABEL_80;
    }

    mSelector = a3->mSelector;
  }

  switch(mSelector)
  {
    case 0x70667420u:
      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_88;
        }

        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 520;
        v63 = MEMORY[0x1E69E9C10];
        v64 = "%25s:%-5d  HALS_PlugInStream::SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_87;
      }

      v31 = *(this + 10);
      v32 = *(v31 + 416);
      v33 = *(v31 + 424);
      if (v33)
      {
        atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v34 = *(this + 23);
      if (a8)
      {
        v35 = *(a8 + 60);
      }

      else
      {
        v35 = 0;
      }

      strcpy(&buf, " tfpbolg");
      BYTE1(buf.mFormatID) = 0;
      HIWORD(buf.mFormatID) = 0;
      v69 = 0;
      (*(*v32 + 568))(v32, v34, v35, &buf, 0, 0, 40, &v69, v67);
      if (v33)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v33);
      }

      HALB_FormatList::BestMatchForPhysicalFormat(this + 112, a5, &v68, v53, v54, v67[0]);
      if (a8 && (v68.mFormatID != 1819304813 || (v68.mFormatFlags & 0x40) != 0))
      {
        HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
      }

      v55 = *(this + 10);
      v49 = *(v55 + 416);
      v50 = *(v55 + 424);
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = *(this + 23);
      if (a8)
      {
        v52 = *(a8 + 60);
      }

      else
      {
        v52 = 0;
      }

LABEL_63:
      strcpy(&buf, " tfpbolg");
      BYTE1(buf.mFormatID) = 0;
      HIWORD(buf.mFormatID) = 0;
      (*(*v49 + 576))(v49, v51, v52, &buf, 0, 0, 40, &v68);
      if (!v50)
      {
        goto LABEL_72;
      }

      v56 = v50;
LABEL_68:
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      goto LABEL_72;
    case 0x73666D74u:
      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_88;
        }

        LODWORD(buf.mSampleRate) = 136315394;
        *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
        LOWORD(buf.mFormatFlags) = 1024;
        *(&buf.mFormatFlags + 2) = 501;
        v63 = MEMORY[0x1E69E9C10];
        v64 = "%25s:%-5d  HALS_PlugInStream::SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
        goto LABEL_87;
      }

      v26 = *(this + 10);
      v27 = *(v26 + 416);
      v28 = *(v26 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = *(this + 23);
      if (a8)
      {
        v30 = *(a8 + 60);
      }

      else
      {
        v30 = 0;
      }

      strcpy(&buf, " tfpbolg");
      BYTE1(buf.mFormatID) = 0;
      HIWORD(buf.mFormatID) = 0;
      v69 = 0;
      (*(*v27 + 568))(v27, v29, v30, &buf, 0, 0, 40, &v69, v67);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      v47 = *&a5->mBytesPerPacket;
      *&buf.mSampleRate = *&a5->mSampleRate;
      *&buf.mBytesPerPacket = v47;
      *&buf.mBitsPerChannel = *&a5->mBitsPerChannel;
      if (buf.mFormatID == 1819304813)
      {
        buf.mBitsPerChannel = 0;
        *&buf.mFramesPerPacket = 0;
        *&buf.mFormatFlags = 0;
      }

      HALB_FormatList::BestMatchForPhysicalFormat(this + 112, &buf, &v68, v45, v46, v67[0]);
      if (a8 && (v68.mFormatID != 1819304813 || (v68.mFormatFlags & 0x40) != 0))
      {
        HALS_Client::SetNonMixableFormat(a8, *(v17 + 16));
      }

      v48 = *(this + 10);
      v49 = *(v48 + 416);
      v50 = *(v48 + 424);
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v51 = *(this + 23);
      if (a8)
      {
        v52 = *(a8 + 60);
      }

      else
      {
        v52 = 0;
      }

      goto LABEL_63;
    case 0x73616374u:
      if (a4 > 3)
      {
        if (!*(this + 14))
        {
          v23 = *(this + 10);
          v24 = *(v23 + 416);
          v25 = *(v23 + 424);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v19.n128_u64[0] = 0x676C6F6273616374;
          v57 = LODWORD(a5->mSampleRate) != 0;
          strcpy(&buf, "tcasbolg");
          BYTE1(buf.mFormatID) = 0;
          HIWORD(buf.mFormatID) = 0;
          v69 = v57;
          (*(*v24 + 576))(v19);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }
        }

        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 0x40000000;
        v66[2] = ___ZN17HALS_PlugInStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
        v66[3] = &__block_descriptor_tmp_23_9650;
        v66[4] = this;
        v66[5] = a5;
        v58 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v58, v66);
        goto LABEL_72;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_88:
        v65 = __cxa_allocate_exception(0x10uLL);
        *v65 = off_1F5991DD8;
        v65[2] = 561211770;
      }

      LODWORD(buf.mSampleRate) = 136315394;
      *(&buf.mSampleRate + 4) = "HALS_PlugInStream.cpp";
      LOWORD(buf.mFormatFlags) = 1024;
      *(&buf.mFormatFlags + 2) = 488;
      v63 = MEMORY[0x1E69E9C10];
      v64 = "%25s:%-5d  HALS_PlugInStream::SetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
LABEL_87:
      _os_log_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, v64, &buf, 0x12u);
      goto LABEL_88;
  }

  if (HALS_Stream::HasProperty(this, a2, a3, a8))
  {
    HALS_Object::SetPropertyData(this, a2, a3, v36, v37, v38, v39, a8);
  }

  if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
  {
    v41 = *(this + 10);
    v42 = *(v41 + 416);
    v43 = *(v41 + 424);
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v44 = a8 ? *(a8 + 60) : 0;
    (*(*v42 + 576))(v42, *(this + 23), v44, a3, a6, a7, a4, a5);
    if (v43)
    {
      v56 = v43;
      goto LABEL_68;
    }
  }

LABEL_72:
  HALS_ObjectMap::ReleaseObject(v17, v40);
}

void sub_1DE51A1B4(_Unwind_Exception *a1, HALS_Object *a2)
{
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  HALS_ObjectMap::ReleaseObject(v2, a2);
  _Unwind_Resume(a1);
}

void HALS_PlugInStream::GetPropertyData(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, double *a6, uint64_t a7, double *a8, HALS_Client *a9)
{
  v165 = *MEMORY[0x1E69E9840];
  if (a9)
  {
    v16 = *(a9 + 266) ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v155 = 0;
  v156 = &v155;
  v157 = 0x5002000000;
  v158 = __Block_byref_object_copy__9653;
  v159 = __Block_byref_object_dispose__9654;
  v17 = HALS_ObjectMap::CopyObjectByObjectID(*(this + 12));
  v124 = v17;
  if (!v17)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v163 = 136315394;
      *&v163[4] = "HALS_PlugInStream.cpp";
      *&v163[12] = 1024;
      *&v163[14] = 182;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOA2Stream::GetPropertyData: owning device is missing", v163, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 560947818;
  }

  v18 = (*(*v17 + 704))(v17, a9);
  v122 = v19;
  v21 = *&v18;
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1935762291)
  {
    if (mSelector <= 1885762591)
    {
      if (mSelector > 1819569762)
      {
        if (mSelector == 1819569763)
        {
          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_233;
            }

            *v163 = 136315394;
            *&v163[4] = "HALS_PlugInStream.cpp";
            *&v163[12] = 1024;
            *&v163[14] = 241;
            v119 = MEMORY[0x1E69E9C10];
            v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyLatency";
            goto LABEL_232;
          }

          v54 = *(this + 10);
          v55 = *(v54 + 416);
          v56 = *(v54 + 424);
          if (v56)
          {
            atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(v163, "cntlbolg");
          v163[9] = 0;
          *&v163[10] = 0;
          *&buf = 0;
          (*(*v55 + 568))(v55);
          v98 = DWORD1(buf);
          if (v56)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v56);
          }

          if (v122)
          {
            v98 = (v21 / (*(*v124 + 272))(v124) * v98);
          }

          v70 = v98 + HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
          goto LABEL_141;
        }

        v32 = 1851878764;
      }

      else
      {
        if (mSelector == 1668641652)
        {
          v47 = a4 / 0xC;
          if (*(this + 26) < a4 / 0xC)
          {
            v47 = *(this + 26);
          }

          if (v47)
          {
            v48 = 0;
            v49 = 0;
            do
            {
              if (v49 < *(this + 26))
              {
                v50 = a6 + v48;
                v51 = (*(this + 12) + v48);
                v52 = *v51;
                *(v50 + 2) = *(v51 + 2);
                *v50 = v52;
              }

              ++v49;
              v48 += 12;
            }

            while (12 * v47 != v48);
          }

          v53 = 12 * v47;
          goto LABEL_198;
        }

        v32 = 1819173229;
      }

      if (mSelector != v32)
      {
        goto LABEL_123;
      }

      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 190;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioObjectPropertyName";
        goto LABEL_232;
      }

      v33 = *(this + 10);
      v34 = *(v33 + 416);
      v35 = *(v33 + 424);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(v163, "manlbolg");
      v163[9] = 0;
      *&v163[10] = 0;
      *(&buf + 4) = 0;
      LODWORD(buf) = 0;
      (*(*v34 + 568))(v34);
      *a6 = *(&buf + 4);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v53 = 8;
LABEL_198:
      *a5 = v53;
      goto LABEL_199;
    }

    if (mSelector <= 1885762622)
    {
      if (mSelector != 1885762592)
      {
        if (mSelector != 1885762595)
        {
          goto LABEL_123;
        }

        *v163 = 0;
        *&v163[8] = v163;
        *&v163[16] = 0x2000000000;
        v164 = 0;
        v128[0] = MEMORY[0x1E69E9820];
        v128[1] = 0x40000000;
        v128[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_19;
        v128[3] = &unk_1E86763D8;
        v129 = a4;
        v128[4] = v163;
        v128[5] = this;
        v128[6] = a6;
        v36 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v36, v128);
        v37 = *(*&v163[8] + 24);
        if (v37 && (v122 & 1) != 0)
        {
          v38 = (v37 + 1) & 0xFFFFFFFFFFFFFFFELL;
          v39 = xmmword_1DE757E30;
          v40 = vdupq_n_s64(v37 - 1);
          v41 = vdupq_n_s64(2uLL);
          do
          {
            v42 = vmovn_s64(vcgeq_u64(v40, v39));
            if (v42.i8[0])
            {
              *a6 = v21;
            }

            if (v42.i8[4])
            {
              a6[5] = v21;
            }

            v39 = vaddq_s64(v39, v41);
            a6 += 10;
            v38 -= 2;
          }

          while (v38);
        }

        goto LABEL_95;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 298;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
        goto LABEL_232;
      }

      v76 = *(this + 10);
      v77 = *(v76 + 416);
      v78 = *(v76 + 424);
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v79 = *(this + 23);
      if (a9)
      {
        v80 = *(a9 + 60);
      }

      else
      {
        v80 = 0;
      }

      strcpy(v163, " tfpbolg");
      v163[9] = 0;
      *&v163[10] = 0;
      DWORD1(buf) = 0;
      (*(*v77 + 568))(v77, v79, v80, v163, 0, 0, 40, &buf + 4, a6);
      if (v78)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v78);
      }

      goto LABEL_154;
    }

    if (mSelector == 1885762623)
    {
      if (a4 > 0x27)
      {
        *a5 = 40;
        *v163 = 0;
        *&v163[8] = v163;
        *&v163[16] = 0x2000000000;
        LOBYTE(v164) = 0;
        v125[0] = MEMORY[0x1E69E9820];
        v125[1] = 0x40000000;
        v125[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21;
        v125[3] = &unk_1E8676400;
        v125[5] = this;
        v125[6] = v18;
        v126 = v19;
        v125[4] = v163;
        v127 = a6;
        v61 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v61, v125);
        if ((*(*&v163[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            DWORD1(buf) = 136315394;
            *(&buf + 1) = "HALS_PlugInStream.cpp";
            v161 = 1024;
            v162 = 437;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", &buf + 4, 0x12u);
          }

          v62 = __cxa_allocate_exception(0x10uLL);
          *v62 = off_1F5991DD8;
          v62[2] = 560226676;
        }

        goto LABEL_122;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 419;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
LABEL_232:
        _os_log_impl(&dword_1DE1F9000, v119, OS_LOG_TYPE_ERROR, v120, v163, 0x12u);
      }

LABEL_233:
      v121 = __cxa_allocate_exception(0x10uLL);
      *v121 = off_1F5991DD8;
      v121[2] = 561211770;
    }

    if (mSelector != 1885762657)
    {
      if (mSelector != 1885762669)
      {
        goto LABEL_123;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 307;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
        goto LABEL_232;
      }

      *a5 = 40;
      v26 = *(this + 10);
      v27 = *(v26 + 416);
      v28 = *(v26 + 424);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(v163, " tfpbolg");
      v163[9] = 0;
      *&v163[10] = 0;
      DWORD1(buf) = 0;
      (*(*v27 + 568))(v27);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (a8)
      {
        v101 = a7 == 40;
      }

      else
      {
        v101 = 0;
      }

      if (v101)
      {
        v102 = a8;
      }

      else
      {
        v102 = a6;
      }

      v103 = v143;
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 0x40000000;
      v143[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7;
      v143[3] = &unk_1E86762D0;
      *&v143[6] = v21;
      v144 = v122;
      v104 = *(v102 + 1);
      v145 = *v102;
      v146 = v104;
      v105 = *(v102 + 4);
      v143[5] = this;
      v143[4] = &v155;
      v147 = v105;
      v148 = a6;
      v106 = (*(*this + 64))(this);
      goto LABEL_183;
    }

    *v163 = 0;
    *&v163[8] = v163;
    *&v163[16] = 0x2000000000;
    v164 = 0;
    v130[0] = MEMORY[0x1E69E9820];
    v130[1] = 0x40000000;
    v130[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17;
    v130[3] = &unk_1E86763B0;
    v131 = a4;
    v130[4] = v163;
    v130[5] = this;
    v130[6] = a6;
    v57 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v57, v130);
    v58 = *(*&v163[8] + 24);
    if (v58 && (v122 & 1) != 0)
    {
      v59 = a6 + 6;
      v60 = *(*&v163[8] + 24);
      do
      {
        *(v59 - 6) = v21;
        *(v59 - 1) = v21;
        *v59 = v21;
        v59 += 7;
        --v60;
      }

      while (v60);
    }

LABEL_120:
    v69 = 56 * v58;
    goto LABEL_121;
  }

  v23 = v16 & 1;
  if (mSelector > 1936092512)
  {
    if (mSelector > 1936092531)
    {
      if (mSelector != 1936092532)
      {
        if (mSelector != 1952542835)
        {
          if (mSelector != 1952805485)
          {
            goto LABEL_123;
          }

          if (a4 <= 3)
          {
            if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_233;
            }

            *v163 = 136315394;
            *&v163[4] = "HALS_PlugInStream.cpp";
            *&v163[12] = 1024;
            *&v163[14] = 211;
            v119 = MEMORY[0x1E69E9C10];
            v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyTerminalType";
            goto LABEL_232;
          }

          v29 = *(this + 10);
          v30 = *(v29 + 416);
          v31 = *(v29 + 424);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(v163, "mretbolg");
          v163[9] = 0;
          *&v163[10] = 0;
          *&buf = 0;
          (*(*v30 + 568))(v30);
          goto LABEL_166;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_233;
          }

          *v163 = 136315394;
          *&v163[4] = "HALS_PlugInStream.cpp";
          *&v163[12] = 1024;
          *&v163[14] = 443;
          v119 = MEMORY[0x1E69E9C10];
          v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyIsReferenceStream";
          goto LABEL_232;
        }

        v70 = *(this + 14);
        if (v70 != 1)
        {
          v71 = *(this + 10);
          v72 = *(v71 + 416);
          v73 = *(v71 + 424);
          if (v73)
          {
            atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v74 = *(this + 23);
          if (a9)
          {
            v75 = *(a9 + 60);
          }

          else
          {
            v75 = 0;
          }

          strcpy(v163, "spatbolg");
          v163[9] = 0;
          *&v163[10] = 0;
          v114 = (*(*v72 + 544))(v72, v74, v75, v163);
          if (v73)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v73);
          }

          if (!v114)
          {
            *a6 = 0;
            goto LABEL_197;
          }

          v115 = *(this + 10);
          v116 = *(v115 + 416);
          v31 = *(v115 + 424);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          strcpy(v163, "spatbolg");
          v163[9] = 0;
          *&v163[10] = 0;
          *&buf = 0;
          (*(*v116 + 568))(v116);
LABEL_166:
          *a6 = DWORD1(buf);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          goto LABEL_197;
        }

LABEL_141:
        *a6 = v70;
        goto LABEL_197;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 255;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
        goto LABEL_232;
      }

      v82 = *(this + 10);
      v83 = *(v82 + 416);
      v84 = *(v82 + 424);
      if (v84)
      {
        atomic_fetch_add_explicit(&v84->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v85 = *(this + 23);
      if (a9)
      {
        v86 = *(a9 + 60);
      }

      else
      {
        v86 = 0;
      }

      strcpy(v163, " tfpbolg");
      v163[9] = 0;
      *&v163[10] = 0;
      DWORD1(buf) = 0;
      (*(*v83 + 568))(v83, v85, v86, v163, 0, 0, 40, &buf + 4, a6);
      if (v84)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84);
      }

      if (*(a6 + 2) == 1819304813 && (*(a6 + 12) & 0x40) == 0)
      {
        if (v23)
        {
          v99 = 9;
        }

        else
        {
          v99 = 11;
        }

        v100 = 4 * *(a6 + 7);
        *(a6 + 3) = v99;
        *(a6 + 4) = v100;
        *(a6 + 5) = 1;
        *(a6 + 6) = v100;
        *(a6 + 8) = 32;
      }

LABEL_154:
      if (v122)
      {
        *a6 = v21;
      }

      v53 = 40;
      goto LABEL_198;
    }

    if (mSelector != 1936092513)
    {
      if (mSelector != 1936092525)
      {
        goto LABEL_123;
      }

      if (a4 <= 0x27)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 265;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
        goto LABEL_232;
      }

      *a5 = 40;
      v44 = *(this + 10);
      v45 = *(v44 + 416);
      v46 = *(v44 + 424);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(v163, " tfpbolg");
      v163[9] = 0;
      *&v163[10] = 0;
      DWORD1(buf) = 0;
      (*(*v45 + 568))(v45);
      if (v46)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      v107 = v156;
      if (*(v156 + 12) == 1819304813 && (*(v156 + 52) & 0x40) == 0)
      {
        if (v23)
        {
          v108 = 9;
        }

        else
        {
          v108 = 11;
        }

        v109 = 4 * *(v156 + 17);
        *(v156 + 13) = v108;
        *(v107 + 14) = v109;
        *(v107 + 15) = 1;
        *(v107 + 16) = v109;
        *(v107 + 18) = 32;
      }

      if (a8)
      {
        v110 = a7 == 40;
      }

      else
      {
        v110 = 0;
      }

      if (v110)
      {
        v111 = a8;
      }

      else
      {
        v111 = a6;
      }

      v103 = v149;
      v149[0] = MEMORY[0x1E69E9820];
      v149[1] = 0x40000000;
      v149[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
      v149[3] = &unk_1E86762A8;
      *&v149[6] = v21;
      v150 = v122;
      v112 = *(v111 + 1);
      v151 = *v111;
      v152 = v112;
      v113 = *(v111 + 4);
      v149[5] = this;
      v149[4] = &v155;
      v153 = v113;
      v154 = a6;
      v106 = (*(*this + 64))(this);
LABEL_183:
      HALB_CommandGate::ExecuteCommand(v106, v103);
      goto LABEL_199;
    }

    *v163 = 0;
    *&v163[8] = v163;
    *&v163[16] = 0x2000000000;
    v164 = 0;
    v138[0] = MEMORY[0x1E69E9820];
    v138[1] = 0x40000000;
    v138[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
    v138[3] = &unk_1E8676338;
    v140 = v23;
    v139 = a4;
    v138[4] = v163;
    v138[5] = this;
    v138[6] = a6;
    v88 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v88, v138);
    v58 = *(*&v163[8] + 24);
    if (v58 && (v122 & 1) != 0)
    {
      v89 = a6 + 6;
      v90 = *(*&v163[8] + 24);
      do
      {
        *(v89 - 6) = v21;
        *(v89 - 1) = v21;
        *v89 = v21;
        v89 += 7;
        --v90;
      }

      while (v90);
    }

    goto LABEL_120;
  }

  if (mSelector <= 1935960433)
  {
    if (mSelector == 1935762292)
    {
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 340;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
        goto LABEL_232;
      }

      v142[0] = MEMORY[0x1E69E9820];
      v142[1] = 0x40000000;
      v142[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_9;
      v142[3] = &__block_descriptor_tmp_10_9667;
      v142[4] = this;
      v142[5] = a6;
      v87 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v87, v142);
      goto LABEL_197;
    }

    if (mSelector != 1935894638)
    {
      goto LABEL_123;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_233;
      }

      *v163 = 136315394;
      *&v163[4] = "HALS_PlugInStream.cpp";
      *&v163[12] = 1024;
      *&v163[14] = 219;
      v119 = MEMORY[0x1E69E9C10];
      v120 = "%25s:%-5d  HALS_PlugInStream::GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
      goto LABEL_232;
    }

    if (*(this + 14) == 1)
    {
      NeighborStartingChannel = HALS_Device::GetNeighborStartingChannel(this, v124, v20);
    }

    else
    {
      v91 = *(this + 10);
      v92 = *(v91 + 416);
      v93 = *(v91 + 424);
      if (v93)
      {
        atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      strcpy(v163, "nhcsbolg");
      v163[9] = 0;
      *&v163[10] = 0;
      *&buf = 0;
      (*(*v92 + 568))(v92);
      v117 = DWORD1(buf);
      *a6 = DWORD1(buf);
      if (v93)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v93);
        v117 = *a6;
      }

      if (v117)
      {
        goto LABEL_197;
      }

      NeighborStartingChannel = 1;
    }

    *a6 = NeighborStartingChannel;
LABEL_197:
    v53 = 4;
    goto LABEL_198;
  }

  switch(mSelector)
  {
    case 1935960434:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_233;
        }

        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 349;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
        goto LABEL_232;
      }

      v141[0] = MEMORY[0x1E69E9820];
      v141[1] = 0x40000000;
      v141[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_11;
      v141[3] = &__block_descriptor_tmp_12_9669;
      v141[4] = this;
      v141[5] = a6;
      v81 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v81, v141);
      goto LABEL_197;
    case 1936092451:
      *v163 = 0;
      *&v163[8] = v163;
      *&v163[16] = 0x2000000000;
      v164 = 0;
      v135[0] = MEMORY[0x1E69E9820];
      v135[1] = 0x40000000;
      v135[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
      v135[3] = &unk_1E8676360;
      v137 = v23;
      v136 = a4;
      v135[4] = v163;
      v135[5] = this;
      v135[6] = a6;
      v63 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v63, v135);
      v37 = *(*&v163[8] + 24);
      if (v37 && (v122 & 1) != 0)
      {
        v64 = (v37 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v65 = xmmword_1DE757E30;
        v66 = vdupq_n_s64(v37 - 1);
        v67 = vdupq_n_s64(2uLL);
        do
        {
          v68 = vmovn_s64(vcgeq_u64(v66, v65));
          if (v68.i8[0])
          {
            *a6 = v21;
          }

          if (v68.i8[4])
          {
            a6[5] = v21;
          }

          v65 = vaddq_s64(v65, v67);
          a6 += 10;
          v64 -= 2;
        }

        while (v64);
      }

LABEL_95:
      v69 = 40 * v37;
LABEL_121:
      *a5 = v69;
LABEL_122:
      _Block_object_dispose(v163, 8);
      goto LABEL_199;
    case 1936092479:
      if (a4 > 0x27)
      {
        *a5 = 40;
        *v163 = 0;
        *&v163[8] = v163;
        *&v163[16] = 0x2000000000;
        LOBYTE(v164) = 0;
        v132[0] = MEMORY[0x1E69E9820];
        v132[1] = 0x40000000;
        v132[2] = ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15;
        v132[3] = &unk_1E8676388;
        v132[5] = this;
        v132[6] = v18;
        v133 = v19;
        v132[4] = v163;
        v134 = a6;
        v24 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v24, v132);
        if ((*(*&v163[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            DWORD1(buf) = 136315394;
            *(&buf + 1) = "HALS_PlugInStream.cpp";
            v161 = 1024;
            v162 = 394;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", &buf + 4, 0x12u);
          }

          v25 = __cxa_allocate_exception(0x10uLL);
          *v25 = off_1F5991DD8;
          v25[2] = 560226676;
        }

        goto LABEL_122;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v163 = 136315394;
        *&v163[4] = "HALS_PlugInStream.cpp";
        *&v163[12] = 1024;
        *&v163[14] = 376;
        v119 = MEMORY[0x1E69E9C10];
        v120 = "%25s:%-5d  HALS_PlugInStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
        goto LABEL_232;
      }

      goto LABEL_233;
  }

LABEL_123:
  if (HALS_Stream::HasProperty(this, a2, a3, a9))
  {
    HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
  {
    v94 = *(this + 10);
    v95 = *(v94 + 416);
    v96 = *(v94 + 424);
    if (v96)
    {
      atomic_fetch_add_explicit(&v96->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a9)
    {
      v97 = *(a9 + 60);
    }

    else
    {
      v97 = 0;
    }

    (*(*v95 + 568))(v95, *(this + 23), v97, a3, a7, a8, a4, a5, a6);
    if (v96)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v96);
    }
  }

LABEL_199:
  HALS_ObjectMap::ReleaseObject(v124, v19);
  _Block_object_dispose(&v155, 8);
}

void sub_1DE51BD74(_Unwind_Exception *a1, HALS_Object *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, HALS_ObjectMap *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  HALS_ObjectMap::ReleaseObject(a13, a2);
  _Block_object_dispose(&STACK[0x2F8], 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__9653(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 144), *(v6 + 152), &v9, *(a1 + 48));
    HALB_FormatList::BestMatchForVirtualFormat(&v9, (a1 + 64), *(a1 + 104), v7, v8, *(*(*(a1 + 32) + 8) + 40));
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    HALB_FormatList::BestMatchForVirtualFormat(v6 + 112, (a1 + 64), *(a1 + 104), a4, a5, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1DE51BF04(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51BEF4);
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, AudioStreamBasicDescription *a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 144), *(v6 + 152), &v9, *(a1 + 48));
    HALB_FormatList::BestMatchForPhysicalFormat(&v9, (a1 + 64), *(a1 + 104), v7, v8, *(*(*(a1 + 32) + 8) + 40));
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    HALB_FormatList::BestMatchForPhysicalFormat(v6 + 112, (a1 + 64), *(a1 + 104), a4, a5, *(*(*(a1 + 32) + 8) + 40));
  }
}

void sub_1DE51BFE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51BFD0);
}

void sub_1DE51C09C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_15(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 144), *(v6 + 152), &v9, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*&v9.mFormat.mFormatID, *&v9.mFormat.mBytesPerPacket, *(a1 + 64), v7, v8);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 120), *(v6 + 128), *(a1 + 64), a4, a5);
  }
}

void sub_1DE51C168(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51C158);
}

__n128 ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_17(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 144);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 152) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE51C270(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void ___ZNK17HALS_PlugInStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_21(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  v6 = *(a1 + 40);
  if (*(a1 + 56) == 1)
  {
    *&v9.mFormat.mSampleRate = &unk_1F596A5A0;
    memset(&v9.mFormat.mFormatID, 0, 48);
    HALB_FormatList::GetFormatListWithUpdatedSampleRate(*(v6 + 144), *(v6 + 152), &v9, *(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*&v9.mFormat.mBitsPerChannel, *&v9.mSampleRateRange.mMinimum, *(a1 + 64), v7, v8);
    HALB_FormatList::~HALB_FormatList(&v9);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = HALB_FormatList::IsVirtualFormatSupported(*(v6 + 144), *(v6 + 152), *(a1 + 64), a4, a5);
  }
}

void sub_1DE51C33C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALB_FormatList::~HALB_FormatList(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE51C32CLL);
}

uint64_t HALS_PlugInStream::GetPropertyDataSize(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1885762656)
  {
    if (mSelector > 1936092512)
    {
      if (mSelector != 1936092513)
      {
        if (mSelector != 1952542835)
        {
          goto LABEL_23;
        }

        v15 = 4;
LABEL_17:
        v32 = v15;
        goto LABEL_22;
      }

      v13 = v27;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 0x40000000;
      v27[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
      v27[3] = &unk_1E8676208;
      v27[4] = &v29;
      v27[5] = this;
      v14 = (*(*this + 64))(this);
    }

    else if (mSelector == 1885762657)
    {
      v13 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v25[3] = &unk_1E8676258;
      v25[4] = &v29;
      v25[5] = this;
      v14 = (*(*this + 64))(this);
    }

    else
    {
      if (mSelector != 1936092451)
      {
        goto LABEL_23;
      }

      v13 = v26;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 0x40000000;
      v26[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
      v26[3] = &unk_1E8676230;
      v26[4] = &v29;
      v26[5] = this;
      v14 = (*(*this + 64))(this);
    }

    goto LABEL_21;
  }

  if (mSelector > 1851878763)
  {
    if (mSelector == 1851878764)
    {
      goto LABEL_16;
    }

    if (mSelector != 1885762595)
    {
      goto LABEL_23;
    }

    v13 = v24;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 0x40000000;
    v24[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_5;
    v24[3] = &unk_1E8676280;
    v24[4] = &v29;
    v24[5] = this;
    v14 = (*(*this + 64))(this);
LABEL_21:
    HALB_CommandGate::ExecuteCommand(v14, v13);
    goto LABEL_22;
  }

  if (mSelector == 1668641652)
  {
    v13 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 0x40000000;
    v28[2] = ___ZNK17HALS_PlugInStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
    v28[3] = &unk_1E86761E0;
    v28[4] = &v29;
    v28[5] = this;
    v14 = (*(*this + 64))(this);
    goto LABEL_21;
  }

  if (mSelector == 1819173229)
  {
LABEL_16:
    v15 = 8;
    goto LABEL_17;
  }

LABEL_23:
  if (HALS_Stream::HasProperty(this, a2, a3, a6))
  {
    PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
    *(v30 + 6) = PropertyDataSize;
  }

  else if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
  {
    v19 = *(this + 10);
    v20 = *(v19 + 416);
    v21 = *(v19 + 424);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a6)
    {
      v22 = *(a6 + 60);
    }

    else
    {
      v22 = 0;
    }

    v23 = (*(*v20 + 560))(v20, *(this + 23), v22, a3, a4, a5);
    *(v30 + 6) = v23;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

LABEL_22:
  v16 = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  return v16;
}

void sub_1DE51C7F0(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t HALS_PlugInStream::IsPropertySettable(HALS_PlugInStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector == 1952542835)
  {
    return 0;
  }

  if (mSelector == 1935762292)
  {
    return 1;
  }

  if (mSelector == 1668641652)
  {
    return 0;
  }

  if (!HALS_Stream::HasProperty(this, a2, a3, a4))
  {
    if ((*(*(this + 9) + 24))(this + 72, a3->mSelector))
    {
      v11 = *(this + 10);
      v12 = *(v11 + 416);
      v13 = *(v11 + 424);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (a4)
      {
        v14 = *(a4 + 60);
      }

      else
      {
        v14 = 0;
      }

      v5 = (*(*v12 + 552))(v12, *(this + 23), v14, a3);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      return v5;
    }

    return 0;
  }

  return HALS_Stream::IsPropertySettable(this, a2, a3);
}

void sub_1DE51CA14(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_PlugInStream::HasProperty(HALS_PlugInStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1851878763)
  {
    if (mSelector == 1952542835)
    {
      v14 = *(this + 52);
      return v14 & 1;
    }

    v8 = 1851878764;
  }

  else
  {
    if (mSelector == 1668641652)
    {
      v14 = *(this + 26) != 0;
      return v14 & 1;
    }

    v8 = 1819173229;
  }

  if (mSelector == v8)
  {
    v9 = *(this + 10);
    v10 = *(v9 + 416);
    v11 = *(v9 + 424);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *(this + 23);
    if (a4)
    {
      v13 = *(a4 + 60);
    }

    else
    {
      v13 = 0;
    }

    v21 = 0x676C6F626C6E616DLL;
    v22 = 0;
    v14 = (*(*v10 + 544))(v10, v12, v13, &v21);
    if (v11)
    {
      v15 = v11;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else if (HALS_Stream::HasProperty(this, a2, a3, a4))
  {
    v14 = 1;
  }

  else
  {
    if (!(*(*(this + 9) + 24))(this + 72, a3->mSelector))
    {
      v14 = 0;
      return v14 & 1;
    }

    v17 = *(this + 10);
    v18 = *(v17 + 416);
    v19 = *(v17 + 424);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (a4)
    {
      v20 = *(a4 + 60);
    }

    else
    {
      v20 = 0;
    }

    v14 = (*(*v18 + 544))(v18, *(this + 23), v20, a3);
    if (v19)
    {
      v15 = v19;
      goto LABEL_18;
    }
  }

  return v14 & 1;
}

void sub_1DE51CC0C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::DAL::Timestamp_Writer::Timestamp_Data::Timestamp_Data(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::string::basic_string[abi:ne200100]<0>(__p, "current sample");
  v10 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v10)
  {
    v10 = AMCP::Thing::convert_to<unsigned long long>(v10 + 40);
  }

  *a1 = v10;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "current host");
  v11 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v11)
  {
    v11 = AMCP::Thing::convert_to<unsigned long long>(v11 + 40);
  }

  *(a1 + 8) = v11;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 16) = vcvtmd_s64_f64(a4);
  *(a1 + 24) = a2;
  *(a1 + 32) = vcvtmd_s64_f64(a5 - a4);
  std::string::basic_string[abi:ne200100]<0>(__p, "IO rate scalar");
  v12 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v12)
  {
    v13 = AMCP::Thing::convert_to<double>((v12 + 5));
  }

  else
  {
    v13 = 0.0;
  }

  *(a1 + 40) = v13;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "zts host");
  v14 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v14)
  {
    v14 = AMCP::Thing::convert_to<unsigned long long>(v14 + 40);
  }

  *(a1 + 56) = v14;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "zts sample");
  v15 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v15)
  {
    v15 = AMCP::Thing::convert_to<long long>(v15 + 40);
  }

  *(a1 + 48) = v15;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "zts rate scalar");
  v16 = std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::find<std::string>(a3, __p);
  if (v16)
  {
    v17 = AMCP::Thing::convert_to<double>((v16 + 5));
  }

  else
  {
    v17 = 0.0;
  }

  *(a1 + 64) = v17;
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1DE51D274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

caulk::rt_safe_memory_resource *std::vector<AMCP::DAL::Timestamp_Writer::Timestamp_Data,caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>::__destroy_vector::operator()[abi:ne200100](caulk::rt_safe_memory_resource *result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 1) = v1;
    if (0x8E38E38E38E38E39 * ((*(result + 2) - v1) >> 3) < 0x38E38E38E38E38FLL && (result = *MEMORY[0x1E69E3C08]) != 0)
    {
      return caulk::rt_safe_memory_resource::rt_deallocate(result, v1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x38E38E38E38E38FLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      return caulk::rt_safe_memory_resource::rt_allocate(result);
    }
  }

  __break(1u);
  return result;
}

caulk::rt_safe_memory_resource *std::__split_buffer<AMCP::DAL::Timestamp_Writer::Timestamp_Data,caulk::rt_allocator<AMCP::DAL::Timestamp_Writer::Timestamp_Data> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v1 = result;
  v2 = *(result + 2);
  if (v2 != *(result + 1))
  {
    *(result + 2) = (v2 - *(result + 1) - 72) % 0x48uLL + *(result + 1);
  }

  v3 = *result;
  if (!*result)
  {
    return v1;
  }

  if (0x8E38E38E38E38E39 * ((*(result + 3) - v3) >> 3) < 0x38E38E38E38E38FLL)
  {
    result = *MEMORY[0x1E69E3C08];
    if (*MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(result, v3);
      return v1;
    }
  }

  __break(1u);
  return result;
}

void AMCP::DAL::get_timestamp_writer_queue(AMCP::DAL *this)
{
  {
    v1 = dispatch_queue_create("Time Stamp Writer Queue", 0);
    AMCP::Utility::Dispatch_Queue::Dispatch_Queue(AMCP::DAL::get_timestamp_writer_queue(void)::s_timestamp_writer_queue, v1);
    if (v1)
    {
      dispatch_release(v1);
    }
  }
}

uint64_t *applesauce::dispatch::v1::async<AMCP::DAL::Timestamp_Writer::~Timestamp_Writer()::$_0 &>(dispatch_queue_s *,AMCP::DAL::Timestamp_Writer::~Timestamp_Writer()::$_0 &)::{lambda(void *)#1}::__invoke(FILE **a1)
{
  v2 = a1;
  AMCP::DAL::Timestamp_Writer::write_timestamp_file(*a1, a1[2]);
  return std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_1DE51D508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1},std::default_delete<-[Core_Audio_Driver_Service_Client connect_to_driver_service:]::$_2::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

FILE *AMCP::DAL::Timestamp_Writer::write_timestamp_file(FILE *result, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*a2 != a2[1])
  {
    v3 = result;
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
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
      if (*(&v3->_file + 5) >= 0)
      {
        p = v3;
      }

      else
      {
        p = v3->_p;
      }

      *buf = 136315650;
      v19 = "Timestamp_Writer.cpp";
      v20 = 1024;
      v21 = 109;
      v22 = 2080;
      v23 = p;
      _os_log_debug_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_DEBUG, "%32s:%-5d Timestamp_Writer::write_timestamp_file: writing time stamps to %s", buf, 0x1Cu);
    }

    if (*(&v3->_file + 5) >= 0)
    {
      v8 = v3;
    }

    else
    {
      v8 = v3->_p;
    }

    result = fopen(v8, "w");
    v9 = result;
    if (result)
    {
      v10 = *(*a2 + 16);
      v11 = *(*a2 + 24);
      v13 = *(*a2 + 48);
      v12 = *(*a2 + 56);
      fwrite("Current Sample Time\tCurrent Host Time\tIO Sample Time\tIO Host Time\tIO Frame Size\tIO Sample Diff\tIO Host Diff\tRate Scalar\tZTS Sample\tZTS Host\tZTS Sample Diff\tZTS Host Diff\tZTS Host/Frame\n", 0xB9uLL, 1uLL, result);
      v14 = *a2;
      v15 = a2[1];
      if (*a2 != v15)
      {
        do
        {
          fprintf(v9, "%llu\t%llu\t%lld\t%llu\t%lld\t%lld\t%llu\t%0.5f", *v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 16) - v10, *(v14 + 24) - v11, *(v14 + 40));
          v16 = *(v14 + 48);
          if (v16 == v13)
          {
            fputc(10, v9);
          }

          else
          {
            fprintf(v9, "\t%lld\t%llu\t%lld\t%llu\t%0.5f\n", v16, *(v14 + 56), v16 - v13, *(v14 + 56) - v12, (*(v14 + 56) - v12) / (v16 - v13));
          }

          v10 = *(v14 + 16);
          v11 = *(v14 + 24);
          v13 = *(v14 + 48);
          v12 = *(v14 + 56);
          v14 += 72;
        }

        while (v14 != v15);
      }

      return fclose(v9);
    }
  }

  return result;
}

void sub_1DE51D760(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE51D6B8);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c42_ZTSZN4AMCP3DAL16Timestamp_WriterD1EvE3__0(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_e8_32c42_ZTSZN4AMCP3DAL16Timestamp_WriterD1EvE3__0(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<std::basic_string<char,std::char_traits<char>,std::pmr::polymorphic_allocator<char>>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 47) < 0)
  {
    return (*(**(result + 48) + 24))(*(result + 48), *(result + 24), *(result + 40) & 0x7FFFFFFFFFFFFFFFLL, 1);
  }

  return result;
}

void std::__shared_ptr_emplace<std::basic_string<char,std::char_traits<char>,std::pmr::polymorphic_allocator<char>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<caulk::rt::vector<AMCP::DAL::Timestamp_Writer::Timestamp_Data>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5977E00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke_9774()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

uint64_t AMCP::IO_Core::Play_State_Manager::start(AMCP::Logging_Settings *a1, int a2, uint64_t **a3)
{
  v39 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v6), byte_1EE0132CC == 1))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = a3[1];
    }

    if (v7)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

      v6 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v6)
      {
        v12 = *(a3 + 23) >= 0 ? a3 : *a3;
        v13 = a2 ? "Prewarm" : "Play";
        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, *(a1 + 1));
        v14 = v28 >= 0 ? __p : __p[0];
        *buf = 136316162;
        v30 = "Play_State_Manager.cpp";
        v31 = 1024;
        v32 = 22;
        v33 = 2080;
        v34 = v12;
        v35 = 2080;
        v36 = v13;
        v37 = 2080;
        v38 = v14;
        _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::start >>: request(%s)  --  %s", buf, 0x30u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  if (a2 == 1)
  {
    v15 = *a1;
    v16 = a1;
  }

  else
  {
    if (a2)
    {
      goto LABEL_29;
    }

    v16 = (a1 + 8);
    v15 = *(a1 + 1);
  }

  if (v15 != -1)
  {
    *v16 = v15 + 1;
  }

LABEL_29:
  if (*(a1 + 1))
  {
    v17 = 2;
  }

  else
  {
    v17 = *a1 != 0;
  }

  AMCP::Logging_Settings::instance(v6);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v18), byte_1EE0132CC == 1))
  {
    v19 = *(a3 + 23);
    if ((v19 & 0x80u) != 0)
    {
      v19 = a3[1];
    }

    if (v19)
    {
      v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v20 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v18);
      }

      v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v21 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v23 = *v22;
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      else
      {
        v23 = *v22;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        if (a2)
        {
          v24 = "Prewarm";
        }

        else
        {
          v24 = "Play";
        }

        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, *(a1 + 1));
        if (v28 >= 0)
        {
          v25 = __p;
        }

        else
        {
          v25 = __p[0];
        }

        *buf = 136316162;
        v30 = "Play_State_Manager.cpp";
        v31 = 1024;
        v32 = 44;
        v33 = 2080;
        v34 = a3;
        v35 = 2080;
        v36 = v24;
        v37 = 2080;
        v38 = v25;
        _os_log_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::start <<: request(%s) --  %s", buf, 0x30u);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v17;
}

uint64_t AMCP::IO_Core::Play_State_Manager::stop(AMCP::Logging_Settings *a1, int a2, uint64_t **a3)
{
  v46 = *MEMORY[0x1E69E9840];
  AMCP::Logging_Settings::instance(a1);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v6), byte_1EE0132CC == 1))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = a3[1];
    }

    if (v7)
    {
      v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v8 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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

      v6 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if (v6)
      {
        v12 = *(a3 + 23) >= 0 ? a3 : *a3;
        v13 = a2 ? "Prewarm" : "Play";
        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, *(a1 + 1));
        v14 = v35 >= 0 ? __p : __p[0];
        *buf = 136316162;
        v37 = "Play_State_Manager.cpp";
        v38 = 1024;
        v39 = 56;
        v40 = 2080;
        v41 = v12;
        v42 = 2080;
        v43 = v13;
        v44 = 2080;
        v45 = v14;
        _os_log_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::stop >>: request(%s) --  %s", buf, 0x30u);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  v15 = *(a1 + 1);
  if (v15 || *a1)
  {
    if (a2 == 1)
    {
      if (*a1)
      {
        --*a1;
      }
    }

    else if (!a2)
    {
      if (!v15)
      {
        goto LABEL_33;
      }

      *(a1 + 1) = --v15;
    }

    if (v15)
    {
      v16 = 2;
LABEL_34:
      AMCP::Logging_Settings::instance(v6);
      if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v17), byte_1EE0132CC == 1))
      {
        v18 = *(a3 + 23);
        if ((v18 & 0x80u) != 0)
        {
          v18 = a3[1];
        }

        if (v18)
        {
          v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v19 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v17);
          }

          v21 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v20 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            v22 = *v21;
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          else
          {
            v22 = *v21;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            if (*(a3 + 23) < 0)
            {
              a3 = *a3;
            }

            if (a2)
            {
              v23 = "Prewarm";
            }

            else
            {
              v23 = "Play";
            }

            AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, *(a1 + 1));
            if (v35 >= 0)
            {
              v24 = __p;
            }

            else
            {
              v24 = __p[0];
            }

            *buf = 136316162;
            v37 = "Play_State_Manager.cpp";
            v38 = 1024;
            v39 = 87;
            v40 = 2080;
            v41 = a3;
            v42 = 2080;
            v43 = v23;
            v44 = 2080;
            v45 = v24;
            _os_log_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::stop <<: request(%s) --  %s", buf, 0x30u);
            if (v35 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }
      }

      return v16;
    }

LABEL_33:
    v16 = *a1 != 0;
    goto LABEL_34;
  }

  AMCP::Logging_Settings::instance(v6);
  if ((AMCP::Logging_Settings::instance(void)::s_instance & 0x1000000) != 0 || (AMCP::Logging_Settings::instance(v25), byte_1EE0132CC == 1))
  {
    v26 = *(a3 + 23);
    if ((v26 & 0x80u) != 0)
    {
      v26 = a3[1];
    }

    if (v26)
    {
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v25);
      }

      v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v29;
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      else
      {
        v30 = *v29;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        if (*(a3 + 23) < 0)
        {
          a3 = *a3;
        }

        if (a2)
        {
          v31 = "Prewarm";
        }

        else
        {
          v31 = "Play";
        }

        AMCP::IO_Core::Play_State_Manager::get_debug_string(__p, *a1, *(a1 + 1));
        if (v35 >= 0)
        {
          v32 = __p;
        }

        else
        {
          v32 = __p[0];
        }

        *buf = 136316162;
        v37 = "Play_State_Manager.cpp";
        v38 = 1024;
        v39 = 63;
        v40 = 2080;
        v41 = a3;
        v42 = 2080;
        v43 = v31;
        v44 = 2080;
        v45 = v32;
        _os_log_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_INFO, "%32s:%-5d   %s: Play_State_Manager::stop << EXTRA STOP CALLS: %s --  %s", buf, 0x30u);
        if (v35 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return 0;
}

void AMCP::IO_Core::Play_State_Manager::get_state_snapshot(AMCP::IO_Core::Play_State_Manager *this, unint64_t *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (a2[1])
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](1uLL);
  }

  v4 = 0;
  if (*a2)
  {
    v5 = 0;
    v6 = *(this + 2);
    do
    {
      if (v4 >= v6)
      {
        v7 = v4;
        v8 = v4 >> 2;
        v9 = v8 + 1;
        if ((v8 + 1) >> 62)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        if (v6 >> 1 > v9)
        {
          v9 = v6 >> 1;
        }

        if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v10);
        }

        v11 = (4 * v8);
        v6 = 0;
        *v11 = 1;
        v4 = (v11 + 1);
        memcpy(0, 0, v7);
        *this = 0;
        *(this + 1) = v4;
        *(this + 2) = 0;
      }

      else
      {
        *v4 = 1;
        v4 += 4;
      }

      *(this + 1) = v4;
      ++v5;
    }

    while (v5 < *a2);
  }
}

void sub_1DE51E4C8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    *(v1 + 8) = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

BOOL HALS_ExternalSecureMuteManager::GetExternalSecureMute(HALS_ExternalSecureMuteManager *this)
{
  v3 = 0;
  v2 = 0;
  (*(*this + 120))(this, *(this + 4), "msxebolg", 4, &v3, &v2, 0, 0, 0);
  return v2 != 0;
}

void HALB_IOBufferManager_Server::~HALB_IOBufferManager_Server(HALB_IOBufferManager_Server *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v4 = *(this + i + 32);
    if (v4)
    {
      *(this + i + 40) = v4;
      operator delete(v4);
    }
  }
}

void HALB_IOBufferManager_Server::AddIOBuffer(HALB_IOBufferManager_Server *this, unsigned int a2, unsigned int a3, int a4)
{
  v6 = this + 24 * a2;
  v7 = *(v6 + 1);
  v9 = *(v6 + 2);
  v8 = v6 + 8;
  v10 = v9 - v7;
  v11 = (v9 - v7) >> 2;
  v12 = a3 + 1 - v11;
  if (a3 + 1 > v11)
  {
    v13 = *(v8 + 2);
    if (v12 <= (v13 - v9) >> 2)
    {
      v17 = (v12 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      v18 = (v17 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v19 = vdupq_n_s64(v17);
      v20 = v9 + 2;
      v21 = 3;
      do
      {
        v22 = vdupq_n_s64(v21 - 3);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1DE757E30)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v20 - 2) = 0;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v20 - 1) = 0;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_1DE757E20)))).i32[1])
        {
          *v20 = 0;
          v20[1] = 0;
        }

        v21 += 4;
        v20 += 4;
        v18 -= 4;
      }

      while (v18);
      *(v8 + 1) = &v9[v12];
    }

    else
    {
      v14 = v12 + (v10 >> 2);
      if (v14 >> 62)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v15 = v13 - v7;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v16);
      }

      v24 = 0;
      v25 = 4 * (v10 >> 2);
      v26 = (v12 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v27 = vdupq_n_s64(v26);
      v28 = v26 - ((v12 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v29 = (v25 + 8);
      do
      {
        v30 = vdupq_n_s64(v24);
        v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1DE757E30)));
        if (vuzp1_s16(v31, *v27.i8).u8[0])
        {
          *(v29 - 2) = 0;
        }

        if (vuzp1_s16(v31, *&v27).i8[2])
        {
          *(v29 - 1) = 0;
        }

        if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1DE757E20)))).i32[1])
        {
          *v29 = 0;
          v29[1] = 0;
        }

        v24 += 4;
        v29 += 4;
      }

      while (v28 != v24);
      v32 = (v25 + 4 * v12);
      memcpy(v32, v9, *(v8 + 1) - v9);
      v33 = *v8;
      v34 = &v32[*(v8 + 1) - v9];
      *(v8 + 1) = v9;
      v35 = (v25 - (v9 - v33));
      memcpy(v35, v33, v9 - v33);
      v36 = *v8;
      *v8 = v35;
      *(v8 + 1) = v34;
      *(v8 + 2) = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    v7 = *v8;
    v10 = *(v8 + 1) - *v8;
  }

  if (a3 >= (v10 >> 2))
  {
    std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
  }

  *&v7[4 * a3] = a4;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>()
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 128;
  result = sysctlbyname("kern.osrelease", v3, &v2, 0, 0);
  if (!result)
  {
    __stringp = v3;
    strsep(&__stringp, ".");
    result = atoi(v3);
    ShouldUsePageMaxMask(void)::kernelVersion = result;
  }

  return result;
}

void HALB_IOBufferManager_Server::Allocate(HALB_IOBufferManager_Server *this, char a2)
{
  __str[9] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69E9AB8];
  if (*(this + 4))
  {
    goto LABEL_6;
  }

  if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
  {
    __str[0] = &v17;
    *buf = __str;
    std::__call_once(&ShouldUsePageMaxMask(void)::checked, buf, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
  }

  if (ShouldUsePageMaxMask(void)::kernelVersion <= 19)
  {
LABEL_6:
    v4 = (*v3 + 304) & ~*v3;
  }

  else
  {
    v4 = 0x4000;
  }

  v5 = 0;
  for (i = 1; ; i = 0)
  {
    v16 = i;
    v7 = (this + 24 * v5 + 8);
    v8 = (v7[2] - *v7) & 0xFFFFFFFC;
    if (*(this + 4))
    {
      goto LABEL_13;
    }

    if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
    {
      __str[0] = &v17;
      *buf = __str;
      std::__call_once(&ShouldUsePageMaxMask(void)::checked, buf, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
    }

    if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
    {
LABEL_13:
      v9 = (v8 + 4 + *v3) & ~*v3;
    }

    else
    {
      v9 = (v8 + 16387) & 0xFFFFC000;
    }

    v4 += v9;
    v10 = *v7;
    if (*(v7 + 1) != *v7)
    {
      v11 = 0;
      v12 = 1;
      do
      {
        v13 = *(v10 + 4 * v11);
        if (*(this + 4))
        {
          goto LABEL_21;
        }

        if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
        {
          __str[0] = &v17;
          *buf = __str;
          std::__call_once(&ShouldUsePageMaxMask(void)::checked, buf, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
        }

        if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
        {
LABEL_21:
          v14 = (v13 + *v3) & ~*v3;
        }

        else
        {
          v14 = (v13 + 0x3FFF) & 0xFFFFC000;
        }

        v4 += v14;
        v11 = v12;
        v10 = *v7;
        ++v12;
      }

      while (v11 < (*(v7 + 1) - *v7) >> 2);
    }

    v5 = 1;
    if ((v16 & 1) == 0)
    {
      if (a2)
      {
        operator new();
      }

      snprintf(__str, 0x1FuLL, "AudioIO%X", *this);
      operator new();
    }
  }
}

void sub_1DE51F100(_Unwind_Exception *a1)
{
  caulk::mach::mach_port::~mach_port(v3);
  MEMORY[0x1E12C1730](v1, v2);
  _Unwind_Resume(a1);
}

AMCP::Log::AMCP_Scope_Registry *HALB_IOBufferManager_Server::GetIOBuffer(HALB_IOBufferManager_Server *this, unsigned int a2, unsigned int a3, unsigned int *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = this + 8;
  v8 = (this + 24 * a2 + 8);
  if (a3 >= ((v8[1] - *v8) >> 2))
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
      *buf = 136315394;
      *&buf[4] = "HALB_IOBufferManager.cpp";
      v38 = 1024;
      v39 = 238;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOBufferManager_Server::GetIOBuffer: the stream index is out of range", buf, 0x12u);
    }
  }

  if (v7 >= (v8[1] - *v8) >> 2)
  {
    return 0;
  }

  v13 = *(*(this + 7) + 8);
  if (*(this + 4))
  {
    goto LABEL_16;
  }

  if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
  {
    *buf = &v35;
    v36 = buf;
    std::__call_once(&ShouldUsePageMaxMask(void)::checked, &v36, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
  }

  if (ShouldUsePageMaxMask(void)::kernelVersion <= 19)
  {
LABEL_16:
    v14 = ~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + 304);
  }

  else
  {
    v14 = 0x4000;
  }

  v16 = (v13 + v14);
  v17 = 4 * (v16[*v16 + 1] + *v16);
  if (*(this + 4))
  {
    goto LABEL_22;
  }

  if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
  {
    *buf = &v35;
    v36 = buf;
    std::__call_once(&ShouldUsePageMaxMask(void)::checked, &v36, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
  }

  if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
  {
LABEL_22:
    v18 = (v17 + 8 + *MEMORY[0x1E69E9AB8]) & ~*MEMORY[0x1E69E9AB8];
  }

  else
  {
    v18 = (v17 + 16391) & 0xFFFFC000;
  }

  v19 = 0;
  v20 = 0;
  result = 0;
  v21 = (v16 + v18);
  do
  {
    if (!result)
    {
      v24 = 0;
      v22 = 0;
      v25 = &v33[24 * v20];
      while (1)
      {
        v26 = v24;
        if (v24 >= ((*(v25 + 1) - *v25) >> 2))
        {
          result = 0;
          goto LABEL_26;
        }

        v27 = *(*v25 + 4 * v24);
        if (v20 == a2 && a3 == v24)
        {
          *a4 = v27;
          if (v27)
          {
            result = v21;
          }

          else
          {
            result = 0;
          }

          v22 = 1;
        }

        else
        {
          if (*(this + 4))
          {
            goto LABEL_41;
          }

          result = &ShouldUsePageMaxMask(void)::checked;
          if (atomic_load_explicit(&ShouldUsePageMaxMask(void)::checked, memory_order_acquire) != -1)
          {
            *buf = &v35;
            v36 = buf;
            std::__call_once(&ShouldUsePageMaxMask(void)::checked, &v36, std::__call_once_proxy[abi:ne200100]<std::tuple<ShouldUsePageMaxMask(void)::$_0 &&>>);
          }

          if (ShouldUsePageMaxMask(void)::kernelVersion < 20)
          {
LABEL_41:
            v28 = (v27 + *MEMORY[0x1E69E9AB8]) & ~*MEMORY[0x1E69E9AB8];
          }

          else
          {
            v28 = (v27 + 0x3FFF) & 0xFFFFC000;
          }

          v21 = (v21 + v28);
          if (v21 >= *(*(this + 7) + 8) + *(*(this + 7) + 16))
          {
            v29 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
            if ((v29 & 1) == 0)
            {
              AMCP::Log::AMCP_Scope_Registry::initialize(result);
            }

            v31 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v30 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
              v32 = *v31;
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            else
            {
              v32 = *v31;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              *&buf[4] = "HALB_IOBufferManager.cpp";
              v38 = 1024;
              v39 = 270;
              _os_log_error_impl(&dword_1DE1F9000, v32, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOBufferManager_Server::GetIOBuffer: Buffer pointer out of bounds", buf, 0x12u);
            }
          }

          if (v21 >= *(*(this + 7) + 8) + *(*(this + 7) + 16))
          {
            result = 0;
            *a4 = 0;
            return result;
          }

          result = 0;
        }

        v24 = v26 + 1;
        if (result)
        {
          goto LABEL_26;
        }
      }
    }

    v22 = 0;
LABEL_26:
    v23 = v22 | v19;
    v19 = 1;
    v20 = 1;
  }

  while ((v23 & 1) == 0);
  return result;
}

vm_address_t HALB_IOBufferManager_Server::AllocateBuffer(vm_size_t size)
{
  v28 = *MEMORY[0x1E69E9840];
  if (size)
  {
    v1 = size;
    address = 0;
    v2 = MEMORY[0x1E69E9A60];
    v3 = vm_allocate(*MEMORY[0x1E69E9A60], &address, size, 1);
    if (v3)
    {
      v5 = v3;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "HALB_IOBufferManager.cpp";
        v18 = 1024;
        v19 = 313;
        v20 = 1024;
        LODWORD(v21) = v5;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: failed to allocate the buffer, Error: 0x%X";
LABEL_18:
        _os_log_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x18u);
      }
    }

    else
    {
      if (!address)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v17 = "HALB_IOBufferManager.cpp";
          v18 = 1024;
          v19 = 314;
          _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: vm_allocate returned nullptr", buf, 0x12u);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 5;
LABEL_20:
      }

      v4 = HALB_MlockFailHandling::_mlock(address, v1);
      if (!v4)
      {
        return address;
      }

      v5 = v4;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v6 = address;
        v7 = *__error();
        v8 = __error();
        v9 = strerror(*v8);
        *buf = 136316418;
        v17 = "HALB_IOBufferManager.cpp";
        v18 = 1024;
        v19 = 320;
        v20 = 2048;
        v21 = v6;
        v22 = 1024;
        v23 = v1;
        v24 = 1024;
        v25 = v7;
        v26 = 2080;
        v27 = v9;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: failed to lock the buffer: addr %p, byte size %u, errno %d %s", buf, 0x32u);
      }

      v10 = atomic_load(HALB_MlockFailHandling::mHandling);
      if (v10 != 2)
      {
        return address;
      }

      MEMORY[0x1E12C2990](*v2, address, v1);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v17 = "HALB_IOBufferManager.cpp";
        v18 = 1024;
        v19 = 324;
        v20 = 1024;
        LODWORD(v21) = v5;
        v12 = MEMORY[0x1E69E9C10];
        v13 = "%25s:%-5d  HALB_IOBufferManager_Server::AllocateBuffer: failed to lock the buffer, Error: 0x%X";
        goto LABEL_18;
      }
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v5;
    goto LABEL_20;
  }

  return 0;
}

uint64_t HALB_MlockFailHandling::_mlock(HALB_MlockFailHandling *this, size_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(HALB_MlockFailHandling::mHandling);
  if (v2 == 1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v11 = "HALB_IOBufferManager.cpp";
      v12 = 1024;
      v13 = 667;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_MlockFailHandling::_mlock: synthesized a failure and did not lock", buf, 0x12u);
    }

    return 35;
  }

  else
  {
    v3 = mlock(this, a2);
    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v11 = "HALB_IOBufferManager.cpp";
        v12 = 1024;
        v13 = 657;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  wiredlog: mlock failure event seen.", buf, 0x12u);
      }

      if ((atomic_exchange(HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall, 1u) & 1) == 0)
      {
        v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
        if (HALB_MlockFailHandling::hasReportingCooledDown(void)::sRef && (v4.__d_.__rep_ - HALB_MlockFailHandling::hasReportingCooledDown(void)::sRef) / 1000000000.0 <= 10.0)
        {
          atomic_store(0, HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall);
        }

        else
        {
          HALB_MlockFailHandling::hasReportingCooledDown(void)::sRef = std::chrono::steady_clock::now().__d_.__rep_;
          atomic_store(0, HALB_MlockFailHandling::hasReportingCooledDown(void)::sLazyMarshall);
          v8 = 19;
          if (AudioStatisticsLibraryLoader::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
          }

          if (AudioStatisticsLibraryLoader::libSym)
          {
            v5 = AudioStatisticsLibraryLoader::libSym();
            v9 = v5;
            if (AudioStatisticsLibraryLoader::once != -1)
            {
              dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
            }
          }

          else
          {
            v5 = 0;
            v9 = 0;
          }

          if (AudioStatisticsLibraryLoader::libSym)
          {
            AudioStatisticsLibraryLoader::libSym(v5);
          }

          v6 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v11 = "HALB_IOBufferManager.cpp";
            v12 = 1024;
            v13 = 640;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  wiredlog: requesting report from service.", buf, 0x12u);
            v5 = v9;
          }

          if (AudioStatisticsLibraryLoader::once != -1)
          {
            dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
          }

          if (AudioStatisticsLibraryLoader::libSym)
          {
            AudioStatisticsLibraryLoader::libSym(v5, v6, 1);
          }

          CFRelease(v6);
          HALB_MlockFailHandling::WiredLoggerSession::~WiredLoggerSession(&v8);
        }
      }
    }
  }

  return v3;
}

void HALB_MlockFailHandling::WiredLoggerSession::~WiredLoggerSession(HALB_MlockFailHandling::WiredLoggerSession *this)
{
  v2 = *(this + 1);
  if (AudioStatisticsLibraryLoader::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
  }

  if (AudioStatisticsLibraryLoader::libSym)
  {
    AudioStatisticsLibraryLoader::libSym(v2);
    v3 = *(this + 1);
    if (AudioStatisticsLibraryLoader::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader::once, &__block_literal_global_9853);
    }
  }

  else
  {
    v3 = *(this + 1);
  }

  if (AudioStatisticsLibraryLoader::libSym)
  {
    AudioStatisticsLibraryLoader::libSym(v3);
  }
}

void *__AudioStatisticsLibraryLoader_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader::libSym = result;
  }

  return result;
}

void HALB_IOBufferManager_Server::FreeBuffer(HALB_IOBufferManager_Server *this, unsigned int a2)
{
  v33 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v4 = a2;
    v5 = munlock(this, a2);
    if (!v5)
    {

      JUMPOUT(0x1E12C2990);
    }

    v6 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      v8 = __error();
      v9 = strerror(*v8);
      v21 = 136316418;
      v22 = "HALB_IOBufferManager.cpp";
      v23 = 1024;
      v24 = 339;
      v25 = 2048;
      v26 = this;
      v27 = 1024;
      v28 = a2;
      v29 = 1024;
      v30 = v7;
      v31 = 2080;
      v32 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALB_IOBufferManager_Server::FreeBuffer: munlock failed: addr %p, byte size %u, errno %d %s", &v21, 0x32u);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_19;
    }

    v13 = *(v10 + 8);
    v14 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
    *(v14 + 16) = 0;
    *(v14 + 20) = 16;
    *(v14 + 24) = "HALB_IOBufferManager.cpp";
    *(v14 + 32) = (v6 << 32) | 0x155;
    *v14 = &unk_1F5977F10;
    *(v14 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v13, v14);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    MEMORY[0x1E12C2990](*MEMORY[0x1E69E9A60], this, v4);
    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!*v12)
    {
LABEL_19:
      __break(1u);
    }

    v17 = v6 << 32;
    v18 = *(v15 + 8);
    v19 = v17 | 0x159;
    v20 = caulk::rt_safe_memory_resource::rt_allocate(*v12);
    *(v20 + 16) = 0;
    *(v20 + 20) = 16;
    *(v20 + 24) = "HALB_IOBufferManager.cpp";
    *(v20 + 32) = v19;
    *v20 = &unk_1F5977F68;
    *(v20 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v18, v20);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_1,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_IOBufferManager_Server::FreeBuffer: vm_deallocate failed, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_1,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::perform(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    v10 = 136315650;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v8;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d HALB_IOBufferManager_Server::FreeBuffer: munlock failed, Error: 0x%X", &v10, 0x18u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALB_IOBufferManager_Server::FreeBuffer(unsigned char *,unsigned int)::$_0,std::tuple<char const*,int,unsigned int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_MetaStream::SetCurrentHWFormat(HALS_MetaStream *this, const AudioStreamBasicDescription *a2)
{
  if ((*(this + 80) & 1) == 0)
  {
    v4 = (*(**(this + 9) + 272))(*(this + 9));
    v5.n128_u64[0] = *&a2->mSampleRate;
    if (a2->mSampleRate != 0.0 && v5.n128_f64[0] != v4)
    {
      v7 = *(**(this + 9) + 280);

      v7(v5);
    }
  }
}

void HALS_MetaStream::GetCurrentHWFormat(HALS_MetaStream *this, AudioStreamBasicDescription *a2)
{
  if (*(this + 80) == 1)
  {
    v4 = *(this + 42);
    if (v4)
    {
      v5 = HALS_ObjectMap::CopyObjectByObjectID(v4);
      v7 = v5;
      if (v5)
      {
        v9 = *(v5 + 264);
        v8 = *(v5 + 272);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *(v9 + 24);
          v11 = *(v9 + 40);
          *&a2->mBitsPerChannel = *(v9 + 56);
          *&a2->mSampleRate = v10;
          *&a2->mBytesPerPacket = v11;
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        else
        {
          v13 = *(v9 + 24);
          v14 = *(v9 + 40);
          *&a2->mBitsPerChannel = *(v9 + 56);
          *&a2->mSampleRate = v13;
          *&a2->mBytesPerPacket = v14;
        }
      }

      else
      {
        *&a2->mSampleRate = k_default_multitap_format;
        *&a2->mBytesPerPacket = unk_1DE7A1400;
        *&a2->mBitsPerChannel = 32;
      }

      HALS_ObjectMap::ReleaseObject(v7, v6);
    }

    else
    {
      a2->mSampleRate = (*(**(this + 9) + 272))(*(this + 9));
      *&a2->mFormatID = xmmword_1DE758120;
      *&a2->mBytesPerFrame = xmmword_1DE758130;
    }
  }

  else
  {
    a2->mSampleRate = (*(**(this + 9) + 272))(*(this + 9));
    *&a2->mFormatID = 0x96C70636DLL;
    v12 = *(this + 36);
    a2->mBytesPerPacket = 4 * v12;
    a2->mFramesPerPacket = 1;
    a2->mBytesPerFrame = 4 * v12;
    a2->mChannelsPerFrame = v12;
    a2->mBitsPerChannel = 32;
  }
}

uint64_t HALS_MetaStream::BuildFormatList(uint64_t this)
{
  *(this + 104) = *(this + 96);
  *(this + 128) = *(this + 120);
  if (!*(this + 152))
  {
    if (*(this + 80))
    {
      (*(**(this + 72) + 288))(*(this + 72));
      operator new[]();
    }

    (*(**(this + 72) + 288))(*(this + 72));
    operator new[]();
  }

  return this;
}

uint64_t HALS_MetaStream::GetRealStreamID(HALS_MetaStream *this)
{
  v2 = *(this + 19);
  if (!v2)
  {
    return 0;
  }

  v3 = HALS_IODevice::CopyStreamByIndex(v2, *(this + 52), *(this + 40));
  if (v3)
  {
    v5 = v3[4];
  }

  else
  {
    v5 = 0;
  }

  HALS_ObjectMap::ReleaseObject(v3, v4);
  return v5;
}

uint64_t HALS_MetaStream::GetRealDeviceID(HALS_MetaStream *this)
{
  v1 = *(this + 19);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this)
{
  HALS_MetaStream::RemoveRealStreamPropertyListener(this);
  HALS_MetaStream::RemoveRealTapPropertyListener(this);
  *(this + 52) = 1;
  *(this + 80) = 0;
  HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v2);
  *(this + 36) = 0;
  this[19] = 0;
  this[20] = 0;
  *(this + 42) = 0;
  v3 = *(*this + 38);

  return v3(this);
}

void HALS_MetaStream::RemoveRealStreamPropertyListener(HALS_MetaStream *this)
{
  v1 = *(this + 41);
  if (v1)
  {
    v2 = *(this + 4);
    v3 = *(this + 22);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN15HALS_MetaStream32RemoveRealStreamPropertyListenerEv_block_invoke;
    block[3] = &__block_descriptor_tmp_41;
    v5 = v2;
    v6 = v1;
    AMCP::Utility::Dispatch_Queue::async(v3, block);
  }
}

void HALS_MetaStream::RemoveRealTapPropertyListener(HALS_MetaStream *this)
{
  v1 = *(this + 42);
  if (v1)
  {
    v2 = *(this + 4);
    v3 = *(this + 22);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN15HALS_MetaStream29RemoveRealTapPropertyListenerEv_block_invoke;
    block[3] = &__block_descriptor_tmp_43;
    v5 = v2;
    v6 = v1;
    AMCP::Utility::Dispatch_Queue::async(v3, block);
  }
}

void ___ZN15HALS_MetaStream29RemoveRealTapPropertyListenerEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
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

void sub_1DE520B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

void ___ZN15HALS_MetaStream32RemoveRealStreamPropertyListenerEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, const AudioObjectPropertyAddress *a5)
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

void sub_1DE520B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_Listener::~HALS_Listener(va);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this, int a2)
{
  if (*(this + 42) != a2)
  {
    HALS_MetaStream::RemoveRealStreamPropertyListener(this);
    HALS_MetaStream::RemoveRealTapPropertyListener(this);
    *(this + 52) = 1;
    *(this + 80) = 1;
    HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v4);
    this[19] = 0;
    this[20] = 0;
    *(this + 42) = a2;
    *(this + 36) = 0;
    HALS_MetaStream::AddRealTapPropertyListener(this, v5);
  }

  v6 = *(*this + 38);

  return v6(this);
}

void HALS_MetaStream::AddRealTapPropertyListener(HALS_MetaStream *this, unsigned int a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = *(this + 42);
  if (v3)
  {
    v5 = HALS_ObjectMap::CopyObjectByObjectID(v3);
    if (v5)
    {
      v11 = 0x2A2A2A2A2A2A2A2ALL;
      v12 = -1;
      v6 = *(this + 4);
      v8[0] = 0;
      v8[1] = v6;
      v9 = 0u;
      v10 = 0u;
      v7 = *(this + 42);
      LOBYTE(v13) = 0;
      v14 = 0;
      HALS_NotificationManager::AddPropertyListener(v8, v7, &v11, &v13);
      HALS_Listener::~HALS_Listener(v8);
    }

    HALS_ObjectMap::ReleaseObject(v5, v4);
  }
}

void sub_1DE520CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HALS_Listener::~HALS_Listener(va);
  HALS_ObjectMap::ReleaseObject(v3, v5);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this, char a2, int a3)
{
  HALS_MetaStream::RemoveRealStreamPropertyListener(this);
  HALS_MetaStream::RemoveRealTapPropertyListener(this);
  *(this + 52) = a2;
  *(this + 80) = 0;
  HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v6);
  this[19] = 0;
  this[20] = 0;
  *(this + 42) = 0;
  *(this + 36) = a3;
  v7 = *(*this + 38);

  return v7(this);
}

uint64_t HALS_MetaStream::SetInfo(HALS_ObjectMap **this, char a2, HALS_Device *a3, int a4)
{
  if (this[19] != a3 || *(this + 40) != a4)
  {
    HALS_MetaStream::RemoveRealStreamPropertyListener(this);
    HALS_MetaStream::RemoveRealTapPropertyListener(this);
    *(this + 52) = a2;
    *(this + 80) = 0;
    HALS_ObjectMap::ReleaseObject_LongTerm(this[19], v8);
    this[19] = a3;
    *(this + 41) = 0;
    *(this + 42) = 0;
    *(this + 40) = a4;
    *(this + 36) = 0;
    HALS_MetaStream::AddRealStreamPropertyListener(this, v9);
  }

  v10 = *(*this + 38);

  return v10(this);
}

void HALS_MetaStream::AddRealStreamPropertyListener(HALS_MetaStream *this, HALS_Object *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = *(this + 19);
  if (v3)
  {
    HALS_ObjectMap::RetainObject(v3, a2);
    v4 = HALS_IODevice::CopyStreamByIndex(*(this + 19), *(this + 52), *(this + 40));
    v6 = v4;
    if (v4)
    {
      v7 = *(v4 + 16);
      *(this + 41) = v7;
      v12 = 0x2A2A2A2A2A2A2A2ALL;
      v13 = -1;
      v8 = *(this + 4);
      v9[0] = 0;
      v9[1] = v8;
      v10 = 0u;
      v11 = 0u;
      AMCP::Utility::Dispatch_Queue::Dispatch_Queue(v14, *(this + 22));
      v15 = 1;
      HALS_NotificationManager::AddPropertyListener(v9, v7, &v12, v14);
      if (v15 == 1)
      {
        AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v14);
      }

      HALS_Listener::~HALS_Listener(v9);
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
  }
}

void sub_1DE520F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  if (a59 == 1)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(&a17);
  }

  HALS_Listener::~HALS_Listener(&a10);
  HALS_ObjectMap::ReleaseObject(v59, v61);
  _Unwind_Resume(a1);
}

void HALS_MetaStream::HandleGroupObjectPropertiesChanged(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int *a5, unsigned int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, dispatch_object_t *a11)
{
  v17 = *a11;
  if (*a11)
  {
    dispatch_retain(*a11);
    dispatch_group_enter(v17);
  }

  if (a4)
  {
    v18 = a4;
    do
    {
      v19 = *a5++;
      v21 = HALS_ObjectMap::CopyObjectByObjectID(v19);
      if (v21)
      {
        (*(*a1 + 168))(a1, v21, a3, *a6, a8);
      }

      v22 = *a6;
      HALS_ObjectMap::ReleaseObject(v21, v20);
      a8 += 12 * v22;
      ++a6;
      --v18;
    }

    while (v18);
  }

  if (v17)
  {
    dispatch_group_leave(v17);

    dispatch_release(v17);
  }
}

void sub_1DE521100(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t a10)
{
  HALS_ObjectMap::ReleaseObject(v10, a2);
  applesauce::dispatch::v1::group_session::~group_session(&a10);
  _Unwind_Resume(a1);
}

void HALS_MetaStream::HandleObjectPropertiesChanged(HALS_MetaStream *this, const HALS_Object *a2, uint64_t a3, int a4, AudioObjectPropertyAddress *a5)
{
  v6 = *(this + 19);
  if (v6)
  {
    LODWORD(v8) = a4;
    v11 = HALS_IODevice::CopyStreamByIndex(v6, *(this + 52), *(this + 40));
    v13 = v11;
    if (v11)
    {
      v14 = v11 == a2;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      memset(v17, 0, sizeof(v17));
      if (v8)
      {
        v8 = v8;
        do
        {
          if (HALS_MetaDevice::PassRealNotificationToClient(a5->mSelector, 0))
          {
            CAPropertyAddressList::AppendUniqueItem(v17, a5, v15);
          }

          ++a5;
          --v8;
        }

        while (v8);
        v16 = *&v17[0];
        if (*&v17[0] != *(&v17[0] + 1))
        {
          HALS_Object::PropertiesChanged(this, *(this + 4), a3, -1431655765 * ((*(&v17[0] + 1) - *&v17[0]) >> 2), *&v17[0]);
        }

        if (v16)
        {
          operator delete(v16);
        }
      }
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }
}

void sub_1DE521218(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v10)
  {
    operator delete(v10);
  }

  HALS_ObjectMap::ReleaseObject(v9, a2);
  _Unwind_Resume(a1);
}

void HALS_MetaStream::SetPropertyData(HALS_MetaStream *this, uint64_t a2, const AudioObjectPropertyAddress *a3, uint64_t a4, double *a5, uint64_t a6, const void *a7, HALS_Client *a8)
{
  v87 = *MEMORY[0x1E69E9840];
  if (((*(*this + 104))(this, a2, a3, a8) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v41 = 2003332927;
LABEL_51:
    exception[2] = v41;
  }

  if (HALB_Info::PropertyRequiresHogMode(a3->mSelector, v16))
  {
    v17 = atomic_load((*(this + 9) + 160));
    v18 = a8 ? *(a8 + 60) : getpid();
    if (v17 != -1 && v17 != v18)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      v41 = 560492391;
      goto LABEL_51;
    }
  }

  v76 = 0;
  v77 = &v76;
  v78 = 0x3002000000;
  v79 = __Block_byref_object_copy__9924;
  v80 = __Block_byref_object_dispose__9925;
  v81 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x2000000000;
  v75 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2000000000;
  v71 = 0;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 0x40000000;
  v67[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke;
  v67[3] = &unk_1E8676778;
  v67[4] = &v76;
  v67[5] = &v68;
  v67[6] = &v72;
  v67[7] = this;
  v20 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v20, v67);
  v26 = v77[5];
  if (v26)
  {
    v27 = HALS_IODevice::CopyStreamByIndex(v26, *(v73 + 24), *(v69 + 6));
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

  else
  {
    v27 = 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector == 1885762592)
  {
    if (v27)
    {
      goto LABEL_34;
    }

    if (*(this + 80))
    {
      goto LABEL_35;
    }

    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_58;
      }

      *buf = 136315394;
      *&buf[4] = "HALS_MetaStream.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 698;
      v42 = MEMORY[0x1E69E9C10];
      v43 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormat";
      goto LABEL_57;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x5002000000;
    v85 = __Block_byref_object_copy__31;
    v86 = __Block_byref_object_dispose__32;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 0x40000000;
    v57[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37;
    v57[3] = &unk_1E86767F0;
    v57[5] = this;
    v57[6] = a5;
    v57[4] = buf;
    v35 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v35, v57);
    if (*a5 == 0.0 || *a5 == *(*&buf[8] + 40))
    {
      v36 = *(a5 + 2);
      if (v36 && v36 != *(*&buf[8] + 48))
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_76;
        }

        *v82 = 136315394;
        *&v82[4] = "HALS_MetaStream.cpp";
        *&v82[12] = 1024;
        *&v82[14] = 712;
        v49 = MEMORY[0x1E69E9C10];
        v50 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported format ID for kAudioStreamPropertyPhysicalFormat";
      }

      else
      {
        v37 = *(a5 + 7);
        if (!v37 || v37 == *(*&buf[8] + 68))
        {
          v38 = *(*&buf[8] + 56);
          *v82 = *(*&buf[8] + 40);
          *&v82[16] = v38;
          v83 = *(*&buf[8] + 72);
          v62 = 0;
          v63 = &v62;
          v64 = 0x2000000000;
          v65 = 0;
          v53[0] = MEMORY[0x1E69E9820];
          v53[1] = 0x40000000;
          v53[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_39;
          v53[3] = &unk_1E8676818;
          v56 = v83;
          v54 = *v82;
          v55 = v38;
          v53[4] = &v62;
          v53[5] = this;
          v39 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v39, v53);
          if (*(v63 + 6))
          {
            v46 = __cxa_allocate_exception(4uLL);
            *v46 = *(v63 + 6);
            __cxa_throw(v46, MEMORY[0x1E69E5478], 0);
          }

          if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
          {
            HALS_Client::SetNonMixableFormat(a8, *(*(this + 9) + 16));
          }

          goto LABEL_49;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
LABEL_76:
          v52 = __cxa_allocate_exception(0x10uLL);
          *v52 = off_1F5991DD8;
          v52[2] = 560226676;
        }

        *v82 = 136315394;
        *&v82[4] = "HALS_MetaStream.cpp";
        *&v82[12] = 1024;
        *&v82[14] = 715;
        v49 = MEMORY[0x1E69E9C10];
        v50 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported number of channels for kAudioStreamPropertyPhysicalFormat";
      }
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_76;
      }

      *v82 = 136315394;
      *&v82[4] = "HALS_MetaStream.cpp";
      *&v82[12] = 1024;
      *&v82[14] = 709;
      v49 = MEMORY[0x1E69E9C10];
      v50 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported sample rate for kAudioStreamPropertyPhysicalFormat";
    }

    _os_log_impl(&dword_1DE1F9000, v49, OS_LOG_TYPE_ERROR, v50, v82, 0x12u);
    goto LABEL_76;
  }

  if (mSelector != 1936092532)
  {
    if (mSelector == 1935894638)
    {
      HALS_Object::SetPropertyData(this, a2, a3, v22, v23, v24, v25, a8);
    }

    if (!v27)
    {
      HALS_Object::SetPropertyData(this, a2, a3, v22, v23, v24, v25, a8);
    }

    goto LABEL_34;
  }

  if (v27)
  {
LABEL_34:
    (*(*v27 + 128))(v27, v27[4], a3, a4, a5, a6, a7, a8);
    goto LABEL_35;
  }

  if ((*(this + 80) & 1) == 0)
  {
    if (a4 > 0x27)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x5002000000;
      v85 = __Block_byref_object_copy__31;
      v86 = __Block_byref_object_dispose__32;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 0x40000000;
      v66[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_33;
      v66[3] = &unk_1E86767A0;
      v66[5] = this;
      v66[6] = a5;
      v66[4] = buf;
      v29 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v29, v66);
      if (*a5 == 0.0 || *a5 == *(*&buf[8] + 40))
      {
        v30 = *(a5 + 2);
        if (v30 && v30 != *(*&buf[8] + 48))
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_72;
          }

          *v82 = 136315394;
          *&v82[4] = "HALS_MetaStream.cpp";
          *&v82[12] = 1024;
          *&v82[14] = 660;
          v47 = MEMORY[0x1E69E9C10];
          v48 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported format ID for kAudioStreamPropertyVirtualFormat";
        }

        else
        {
          v31 = *(a5 + 7);
          if (!v31 || v31 == *(*&buf[8] + 68))
          {
            v32 = *(*&buf[8] + 56);
            *v82 = *(*&buf[8] + 40);
            *&v82[16] = v32;
            v83 = *(*&buf[8] + 72);
            v62 = 0;
            v63 = &v62;
            v64 = 0x2000000000;
            v65 = 0;
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 0x40000000;
            v58[2] = ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_35;
            v58[3] = &unk_1E86767C8;
            v61 = v83;
            v59 = *v82;
            v60 = v32;
            v58[4] = &v62;
            v58[5] = this;
            v33 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v33, v58);
            if (*(v63 + 6))
            {
              v45 = __cxa_allocate_exception(4uLL);
              *v45 = *(v63 + 6);
              __cxa_throw(v45, MEMORY[0x1E69E5478], 0);
            }

            if (a8 && (*(*&buf[8] + 48) != 1819304813 || (*(*&buf[8] + 52) & 0x40) != 0))
            {
              HALS_Client::SetNonMixableFormat(a8, *(*(this + 9) + 16));
            }

LABEL_49:
            _Block_object_dispose(&v62, 8);
            _Block_object_dispose(buf, 8);
            goto LABEL_35;
          }

          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
LABEL_72:
            v51 = __cxa_allocate_exception(0x10uLL);
            *v51 = off_1F5991DD8;
            v51[2] = 560226676;
          }

          *v82 = 136315394;
          *&v82[4] = "HALS_MetaStream.cpp";
          *&v82[12] = 1024;
          *&v82[14] = 663;
          v47 = MEMORY[0x1E69E9C10];
          v48 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported number of channels for kAudioStreamPropertyVirtualFormat";
        }
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        *v82 = 136315394;
        *&v82[4] = "HALS_MetaStream.cpp";
        *&v82[12] = 1024;
        *&v82[14] = 657;
        v47 = MEMORY[0x1E69E9C10];
        v48 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: unsupported sample rate for kAudioStreamPropertyVirtualFormat";
      }

      _os_log_impl(&dword_1DE1F9000, v47, OS_LOG_TYPE_ERROR, v48, v82, 0x12u);
      goto LABEL_72;
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_58:
      v44 = __cxa_allocate_exception(0x10uLL);
      *v44 = off_1F5991DD8;
      v44[2] = 561211770;
    }

    *buf = 136315394;
    *&buf[4] = "HALS_MetaStream.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 646;
    v42 = MEMORY[0x1E69E9C10];
    v43 = "%25s:%-5d  HALS_MetaStream::_SetPropertyData: bad property data size for kAudioStreamPropertyVirtualFormat";
LABEL_57:
    _os_log_impl(&dword_1DE1F9000, v42, OS_LOG_TYPE_ERROR, v43, buf, 0x12u);
    goto LABEL_58;
  }

LABEL_35:
  HALS_ObjectMap::ReleaseObject(v27, v21);
  _Block_object_dispose(&v68, 8);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  HALS_ObjectMap::ReleaseObject(v81, v34);
}

void sub_1DE521DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose((v66 - 208), 8);
  HALS_ObjectMap::ReleaseObject(0, v68);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  HALS_ObjectMap::ReleaseObject(a66, v69);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9924(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

__n128 __Block_byref_object_copy__31(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  v3 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v3;
  *(a1 + 40) = result;
  return result;
}

void ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_33(void *a1)
{
  v2 = a1[5];
  (*(*v2 + 312))(v2, v8);
  v5 = a1[6];
  v6 = *(a1[4] + 8);
  v7 = *(v5 + 16);
  *&v9.mSampleRate = *v5;
  *&v9.mBytesPerPacket = v7;
  *&v9.mBitsPerChannel = *(v5 + 32);
  if (v9.mFormatID == 1819304813)
  {
    v9.mBitsPerChannel = 0;
    *&v9.mFramesPerPacket = 0;
    *&v9.mFormatFlags = 0;
  }

  HALB_FormatList::BestMatchForPhysicalFormat(v2 + 88, &v9, v6 + 1, v3, v4, v8[0]);
}

void sub_1DE522038(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void ___ZN15HALS_MetaStream15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke_37(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 + 88;
  (*(*v2 + 312))(v2, v6);
  HALB_FormatList::BestMatchForPhysicalFormat(v3, *(a1 + 48), (*(*(a1 + 32) + 8) + 40), v4, v5, v6[0]);
}

void sub_1DE522150(void *a1, int a2)
{
  v4 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v5 = v4[2];
  }

  else
  {
    v5 = 2003329396;
  }

  *(*(*(v2 + 32) + 8) + 24) = v5;

  __cxa_end_catch();
}

void HALS_MetaStream::GetPropertyData(HALS_MetaStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, unsigned int *a5, _DWORD *a6, uint64_t a7, _DWORD *a8, HALS_Client *a9)
{
  v121 = *MEMORY[0x1E69E9840];
  if (((*(*this + 96))(this, a2, a3, a9) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a9)
  {
    v16 = *(a9 + 266) ^ 1;
  }

  else
  {
    v16 = 1;
  }

  v109 = 0;
  v110 = &v109;
  v111 = 0x3002000000;
  v112 = __Block_byref_object_copy__9924;
  v113 = __Block_byref_object_dispose__9925;
  v114 = 0;
  v105 = 0;
  v106 = &v105;
  v107 = 0x2000000000;
  v108 = 0;
  v101 = 0;
  v102 = &v101;
  v103 = 0x2000000000;
  v104 = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2000000000;
  v100 = 0;
  v98[0] = MEMORY[0x1E69E9820];
  v98[1] = 0x40000000;
  v98[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke;
  v98[3] = &unk_1E86765C0;
  v98[8] = this;
  v98[4] = &v109;
  v98[5] = &v101;
  v98[6] = &v105;
  v98[7] = v99;
  v17 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v17, v98);
  v19 = v110[5];
  if (v19)
  {
    v20 = HALS_IODevice::CopyStreamByIndex(v19, *(v106 + 24), *(v102 + 6));
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

  else
  {
    v20 = 0;
  }

  v21 = v16 & 1;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1935894637)
  {
    if (mSelector > 1936092478)
    {
      if (mSelector <= 1936092524)
      {
        if (mSelector != 1936092479)
        {
          if (mSelector == 1936092513)
          {
            if (!v20)
            {
              *v119 = 0;
              *&v119[8] = v119;
              *&v119[16] = 0x2000000000;
              v120 = 0;
              v92[0] = MEMORY[0x1E69E9820];
              v92[1] = 0x40000000;
              v92[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2;
              v92[3] = &unk_1E8676648;
              v94 = v21;
              v93 = a4;
              v92[5] = this;
              v92[4] = v119;
              v92[6] = a6;
              v24 = (*(*this + 64))(this);
              HALB_CommandGate::ExecuteCommand(v24, v92);
              goto LABEL_21;
            }

LABEL_85:
            (*(*v20 + 120))(v20, v20[4], a3, a4, a5, a6, a7, a8, a9);
            goto LABEL_86;
          }

          goto LABEL_84;
        }

        if (v20)
        {
          goto LABEL_85;
        }

        if (a4 > 0x27)
        {
          *a5 = 40;
          *v119 = 0;
          *&v119[8] = v119;
          *&v119[16] = 0x2000000000;
          LOBYTE(v120) = 0;
          v88[0] = MEMORY[0x1E69E9820];
          v88[1] = 0x40000000;
          v88[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_18;
          v88[3] = &unk_1E8676698;
          v88[4] = v119;
          v88[5] = this;
          v88[6] = a6;
          v32 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v32, v88);
          if ((*(*&v119[8] + 24) & 1) == 0)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v116 = "HALS_MetaStream.cpp";
              v117 = 1024;
              v118 = 426;
              _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaStream::_GetPropertyData: kAudioDevicePropertyStreamFormatSupported: the format is not supported", buf, 0x12u);
            }

            v33 = __cxa_allocate_exception(0x10uLL);
            *v33 = off_1F5991DD8;
            v33[2] = 560226676;
          }

          goto LABEL_34;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v119 = 136315394;
          *&v119[4] = "HALS_MetaStream.cpp";
          *&v119[12] = 1024;
          *&v119[14] = 422;
          v68 = MEMORY[0x1E69E9C10];
          v69 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatSupported";
          goto LABEL_127;
        }

LABEL_128:
        v70 = __cxa_allocate_exception(0x10uLL);
        *v70 = off_1F5991DD8;
        v70[2] = 561211770;
      }

      if (mSelector == 1936092525)
      {
        if (v20)
        {
          goto LABEL_85;
        }

        if (a4 <= 0x27)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_128;
          }

          *v119 = 136315394;
          *&v119[4] = "HALS_MetaStream.cpp";
          *&v119[12] = 1024;
          *&v119[14] = 440;
          v68 = MEMORY[0x1E69E9C10];
          v69 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioDevicePropertyStreamFormatMatch";
          goto LABEL_127;
        }

        *a5 = 40;
        if (a8)
        {
          v38 = a7 == 40;
        }

        else
        {
          v38 = 0;
        }

        if (v38)
        {
          v39 = a8;
        }

        else
        {
          v39 = a6;
        }

        v40 = *v39;
        v84 = *(v39 + 1);
        v85 = *(v39 + 4);
        v86 = a6;
        v83 = v40;
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 0x40000000;
        v82[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_20;
        v82[3] = &__block_descriptor_tmp_21_9953;
        v87 = v21;
        v82[4] = this;
        v41 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v41, v82);
        goto LABEL_86;
      }

      if (mSelector != 1936092532)
      {
        goto LABEL_84;
      }

      goto LABEL_43;
    }

    switch(mSelector)
    {
      case 1935894638:
        if (a4 > 3)
        {
          v95[0] = MEMORY[0x1E69E9820];
          v95[1] = 0x40000000;
          v95[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_14;
          v95[3] = &__block_descriptor_tmp_15_9946;
          v95[4] = this;
          v95[5] = a6;
          v45 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v45, v95);
LABEL_82:
          v44 = 4;
          v43 = a5;
          goto LABEL_83;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v119 = 136315394;
          *&v119[4] = "HALS_MetaStream.cpp";
          *&v119[12] = 1024;
          *&v119[14] = 377;
          v65 = MEMORY[0x1E69E9C10];
          v66 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyStartingChannel";
LABEL_115:
          _os_log_impl(&dword_1DE1F9000, v65, OS_LOG_TYPE_ERROR, v66, v119, 0x12u);
        }

        break;
      case 1935960434:
        if (a4 > 3)
        {
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 0x40000000;
          v96[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_12;
          v96[3] = &__block_descriptor_tmp_13_9944;
          v96[4] = this;
          v96[5] = a6;
          v46 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v46, v96);
          goto LABEL_82;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *v119 = 136315394;
          *&v119[4] = "HALS_MetaStream.cpp";
          *&v119[12] = 1024;
          *&v119[14] = 354;
          v65 = MEMORY[0x1E69E9C10];
          v66 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyDirection";
          goto LABEL_115;
        }

        break;
      case 1936092451:
        if (v20)
        {
          goto LABEL_85;
        }

        *v119 = 0;
        *&v119[8] = v119;
        *&v119[16] = 0x2000000000;
        v120 = 0;
        v89[0] = MEMORY[0x1E69E9820];
        v89[1] = 0x40000000;
        v89[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3;
        v89[3] = &unk_1E8676670;
        v91 = v21;
        v90 = a4;
        v89[4] = v119;
        v89[5] = this;
        v89[6] = a6;
        v27 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v27, v89);
LABEL_32:
        v25 = 40 * *(*&v119[8] + 24);
        goto LABEL_33;
      default:
        goto LABEL_84;
    }

    v67 = __cxa_allocate_exception(0x10uLL);
    *v67 = off_1F5991DD8;
    v67[2] = 561211770;
  }

  if (mSelector > 1885762622)
  {
    if (mSelector <= 1885762668)
    {
      if (mSelector != 1885762623)
      {
        if (mSelector == 1885762657)
        {
          if (!v20)
          {
            *v119 = 0;
            *&v119[8] = v119;
            *&v119[16] = 0x2000000000;
            v120 = 0;
            v80[0] = MEMORY[0x1E69E9820];
            v80[1] = 0x40000000;
            v80[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_22;
            v80[3] = &unk_1E86766E0;
            v81 = a4;
            v80[4] = v119;
            v80[5] = this;
            v80[6] = a6;
            v23 = (*(*this + 64))(this);
            HALB_CommandGate::ExecuteCommand(v23, v80);
LABEL_21:
            v25 = 56 * *(*&v119[8] + 24);
LABEL_33:
            *a5 = v25;
LABEL_34:
            _Block_object_dispose(v119, 8);
            goto LABEL_86;
          }

          goto LABEL_85;
        }

        goto LABEL_84;
      }

      if (v20)
      {
        goto LABEL_85;
      }

      if (a4 > 0x27)
      {
        *a5 = 40;
        *v119 = 0;
        *&v119[8] = v119;
        *&v119[16] = 0x2000000000;
        LOBYTE(v120) = 0;
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 0x40000000;
        v77[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_26;
        v77[3] = &unk_1E8676730;
        v77[4] = v119;
        v77[5] = this;
        v77[6] = a6;
        v30 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v30, v77);
        if ((*(*&v119[8] + 24) & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v116 = "HALS_MetaStream.cpp";
            v117 = 1024;
            v118 = 557;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_MetaStream::_GetPropertyData: kAudioStreamPropertyPhysicalFormatSupported: the format is not supported", buf, 0x12u);
          }

          v31 = __cxa_allocate_exception(0x10uLL);
          *v31 = off_1F5991DD8;
          v31[2] = 560226676;
        }

        goto LABEL_34;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v119 = 136315394;
        *&v119[4] = "HALS_MetaStream.cpp";
        *&v119[12] = 1024;
        *&v119[14] = 553;
        v68 = MEMORY[0x1E69E9C10];
        v69 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatSupported";
LABEL_127:
        _os_log_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, v69, v119, 0x12u);
        goto LABEL_128;
      }

      goto LABEL_128;
    }

    if (mSelector != 1885762669)
    {
      if (mSelector == 1935762292)
      {
        if (v20)
        {
          goto LABEL_85;
        }

        if (*(this + 80) != 1)
        {
LABEL_87:
          HALS_Stream::GetPropertyData(this, a2, a3, a4, a5, a6, a7, a8, a9);
          goto LABEL_86;
        }

        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_128;
          }

          *v119 = 136315394;
          *&v119[4] = "HALS_MetaStream.cpp";
          *&v119[12] = 1024;
          *&v119[14] = 340;
          v68 = MEMORY[0x1E69E9C10];
          v69 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyIsActive";
          goto LABEL_127;
        }

        v97[0] = MEMORY[0x1E69E9820];
        v97[1] = 0x40000000;
        v97[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_10;
        v97[3] = &__block_descriptor_tmp_11_9942;
        v97[4] = a6;
        v29 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v29, v97);
        goto LABEL_82;
      }

LABEL_84:
      if (v20)
      {
        goto LABEL_85;
      }

      goto LABEL_87;
    }

    if (v20)
    {
      goto LABEL_85;
    }

    if (a4 <= 0x27)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_128;
      }

      *v119 = 136315394;
      *&v119[4] = "HALS_MetaStream.cpp";
      *&v119[12] = 1024;
      *&v119[14] = 571;
      v68 = MEMORY[0x1E69E9C10];
      v69 = "%25s:%-5d  HALS_MetaStream::_GetPropertyData: bad property data size for kAudioStreamPropertyPhysicalFormatMatch";
      goto LABEL_127;
    }

    *a5 = 40;
    if (a8)
    {
      v34 = a7 == 40;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v35 = a8;
    }

    else
    {
      v35 = a6;
    }

    v36 = *(v35 + 1);
    v73 = *v35;
    v74 = v36;
    v75 = *(v35 + 4);
    v76 = a6;
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 0x40000000;
    v72[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28;
    v72[3] = &__block_descriptor_tmp_29_9960;
    v72[4] = this;
    v37 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v37, v72);
    goto LABEL_86;
  }

  if (mSelector == 1819569763)
  {
    if (!v20)
    {
      goto LABEL_87;
    }

    (*(*v20 + 120))(v20, v20[4], a3, a4, a5, a6, a7, a8, a9);
    if (a4 < 4)
    {
      goto LABEL_86;
    }

    StreamLatencyFramesDueToHostedDSP = HALS_Stream::GetStreamLatencyFramesDueToHostedDSP(this, a9);
    v43 = a6;
    v44 = *a6 + StreamLatencyFramesDueToHostedDSP;
LABEL_83:
    *v43 = v44;
    goto LABEL_86;
  }

  if (mSelector != 1885762592)
  {
    if (mSelector != 1885762595)
    {
      goto LABEL_84;
    }

    if (v20)
    {
      goto LABEL_85;
    }

    *v119 = 0;
    *&v119[8] = v119;
    *&v119[16] = 0x2000000000;
    v120 = 0;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 0x40000000;
    v78[2] = ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_3_24;
    v78[3] = &unk_1E8676708;
    v79 = a4;
    v78[4] = v119;
    v78[5] = this;
    v78[6] = a6;
    v26 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v26, v78);
    goto LABEL_32;
  }

LABEL_43:
  if (v20)
  {
    (*(*v20 + 120))(v20, v20[4], a3, a4, a5, a6, a7, a8, a9);
    *a6 = (*(**(this + 9) + 272))(*(this + 9));
    goto LABEL_86;
  }

  if (*(this + 80) == 1)
  {
    v48 = *(this + 42);
    if (v48)
    {
      v49 = HALS_ObjectMap::CopyObjectByObjectID(v48);
      v51 = v49;
      if (v49)
      {
        v53 = *(v49 + 264);
        v52 = *(v49 + 272);
        if (v52)
        {
          atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
          v54 = *(v53 + 24);
          v55 = *(v53 + 40);
          *(a6 + 4) = *(v53 + 56);
          *a6 = v54;
          *(a6 + 1) = v55;
          std::__shared_weak_count::__release_shared[abi:ne200100](v52);
        }

        else
        {
          v59 = *(v53 + 24);
          v60 = *(v53 + 40);
          *(a6 + 4) = *(v53 + 56);
          *a6 = v59;
          *(a6 + 1) = v60;
        }
      }

      else
      {
        *a6 = k_default_multitap_format;
        *(a6 + 1) = unk_1DE7A1400;
        *(a6 + 4) = 32;
      }

      *a6 = HALS_MetaStream::GetTapSampleRate(this, v50);
      if (a6[2] == 1819304813 && (a6[3] & 0x40) == 0)
      {
        if (v21)
        {
          v62 = 9;
        }

        else
        {
          v62 = 11;
        }

        v63 = 4 * a6[7];
        a6[3] = v62;
        a6[4] = v63;
        a6[5] = 1;
        a6[6] = v63;
        a6[8] = 32;
      }

      HALS_ObjectMap::ReleaseObject(v51, v61);
      goto LABEL_86;
    }

    *a6 = k_default_multitap_format;
    *(a6 + 1) = unk_1DE7A1400;
    *(a6 + 4) = 32;
    *a6 = HALS_MetaStream::GetTapSampleRate(this, v18);
    if (a6[2] != 1819304813)
    {
      goto LABEL_86;
    }
  }

  else
  {
    *a6 = (*(**(this + 9) + 272))(*(this + 9));
    *(a6 + 1) = 0x96C70636DLL;
    v56 = *(this + 36);
    a6[4] = 4 * v56;
    a6[5] = 1;
    a6[6] = 4 * v56;
    a6[7] = v56;
    a6[8] = 32;
  }

  if ((a6[3] & 0x40) == 0)
  {
    if (v21)
    {
      v57 = 9;
    }

    else
    {
      v57 = 11;
    }

    v58 = 4 * a6[7];
    a6[3] = v57;
    a6[4] = v58;
    a6[5] = 1;
    a6[6] = v58;
    a6[8] = 32;
  }

LABEL_86:
  HALS_ObjectMap::ReleaseObject(v20, v28);
  _Block_object_dispose(v99, 8);
  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v105, 8);
  _Block_object_dispose(&v109, 8);
  HALS_ObjectMap::ReleaseObject(v114, v47);
}

void sub_1DE52347C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[8];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
  *(*(a1[7] + 8) + 24) = *(v3 + 144);
}

void sub_1DE52366C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_18(void *a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  result = HALB_FormatList::IsVirtualFormatSupported(*(a1[5] + 96), *(a1[5] + 104), a1[6], a4, a5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_20(uint64_t a1)
{
  v2 = *(a1 + 32);
  (*(*v2 + 312))(v2, &v6);
  if (v7 == 1819304813 && (v8 & 0x40) == 0)
  {
    if (*(a1 + 88))
    {
      v5 = 9;
    }

    else
    {
      v5 = 11;
    }

    v8 = v5;
    v9 = 4 * v12;
    v10 = 1;
    v11 = 4 * v12;
    v13 = 32;
  }

  HALB_FormatList::BestMatchForVirtualFormat(v2 + 88, (a1 + 40), *(a1 + 80), v3, v4, v6);
}

double HALS_MetaStream::GetTapSampleRate(HALS_MetaStream *this, unsigned int a2)
{
  v2 = 0.0;
  if (*(this + 80) == 1)
  {
    v3 = *(this + 42);
    if (v3)
    {
      v4 = HALS_ObjectMap::CopyObjectByObjectID(v3);
      v6 = v4;
      if (v4)
      {
        v8 = *(v4 + 264);
        v7 = *(v4 + 272);
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
          v2 = *(v8 + 24);
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        else
        {
          v2 = *(v8 + 24);
        }
      }

      else
      {
        v2 = 48000.0;
      }

      HALS_ObjectMap::ReleaseObject(v6, v5);
    }
  }

  return v2;
}

__n128 ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_2_22(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 48);
  *(v3 + 24) = 0;
  if (v1 >= 0x38)
  {
    v5 = 0;
    v6 = 0;
    v7 = v1 / 0x38uLL;
    v8 = -1;
    do
    {
      v9 = *(v2 + 120);
      if (++v8 >= (0x6DB6DB6DB6DB6DB7 * ((*(v2 + 128) - v9) >> 3)))
      {
        break;
      }

      v10 = v9 + v5;
      v5 += 56;
      v11 = v4 + 56 * v6;
      result = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 32);
      *(v11 + 48) = *(v10 + 48);
      *(v11 + 16) = v13;
      *(v11 + 32) = v14;
      *v11 = result;
      v6 = *(v3 + 24) + 1;
      *(v3 + 24) = v6;
    }

    while (v6 < v7);
  }

  return result;
}

void sub_1DE5238F4(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

BOOL ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_26(void *a1, uint64_t a2, uint64_t a3, BOOL a4, BOOL a5)
{
  result = HALB_FormatList::IsVirtualFormatSupported(*(a1[5] + 120), *(a1[5] + 128), a1[6], a4, a5);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void ___ZNK15HALS_MetaStream15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke_28(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 + 88;
  (*(*v2 + 312))(v2, v6);
  HALB_FormatList::BestMatchForPhysicalFormat(v3, (a1 + 40), *(a1 + 80), v4, v5, v6[0]);
}

uint64_t HALS_MetaStream::GetPropertyDataSize(HALS_MetaStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, uint64_t a4, const void *a5, HALS_Client *a6)
{
  if (((*(*this + 96))(this, a2, a3, a6) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x2000000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3002000000;
  v40 = __Block_byref_object_copy__9924;
  v41 = __Block_byref_object_dispose__9925;
  v42 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 0x40000000;
  v28[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke;
  v28[3] = &unk_1E86764F8;
  v28[4] = &v37;
  v28[5] = &v29;
  v28[6] = &v33;
  v28[7] = this;
  v12 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v12, v28);
  v13 = v38[5];
  if (v13)
  {
    v14 = HALS_IODevice::CopyStreamByIndex(v13, *(v34 + 24), *(v30 + 6));
    pthread_once(&HALS_ObjectMap::sObjectInfoListInitialized, HALS_ObjectMap::Initialize);
  }

  else
  {
    v14 = 0;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector <= 1935894637)
  {
    if (mSelector == 1885762595)
    {
      if (v14)
      {
        goto LABEL_22;
      }

      v18 = v24;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_5;
      v24[3] = &unk_1E8676598;
      v24[4] = &v43;
      v24[5] = this;
      v19 = (*(*this + 64))(this);
    }

    else
    {
      if (mSelector != 1885762657)
      {
LABEL_21:
        if (!v14)
        {
          goto LABEL_9;
        }

LABEL_22:
        PropertyDataSize = (*(*v14 + 112))(v14, v14[4], a3, a4, a5, a6);
        goto LABEL_23;
      }

      if (v14)
      {
        goto LABEL_22;
      }

      v18 = v25;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 0x40000000;
      v25[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_4;
      v25[3] = &unk_1E8676570;
      v25[4] = &v43;
      v25[5] = this;
      v19 = (*(*this + 64))(this);
    }
  }

  else
  {
    switch(mSelector)
    {
      case 0x73666D61u:
        if (v14)
        {
          goto LABEL_22;
        }

        v18 = v27;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_2;
        v27[3] = &unk_1E8676520;
        v27[4] = &v43;
        v27[5] = this;
        v19 = (*(*this + 64))(this);
        break;
      case 0x73666D23u:
        if (v14)
        {
          goto LABEL_22;
        }

        v18 = v26;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 0x40000000;
        v26[2] = ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke_3;
        v26[3] = &unk_1E8676548;
        v26[4] = &v43;
        v26[5] = this;
        v19 = (*(*this + 64))(this);
        break;
      case 0x7363686Eu:
LABEL_9:
        PropertyDataSize = HALS_Stream::GetPropertyDataSize(this, a2, a3);
LABEL_23:
        v20 = PropertyDataSize;
        *(v44 + 6) = PropertyDataSize;
        goto LABEL_24;
      default:
        goto LABEL_21;
    }
  }

  HALB_CommandGate::ExecuteCommand(v19, v18);
  v20 = *(v44 + 6);
LABEL_24:
  HALS_ObjectMap::ReleaseObject(v14, v17);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  HALS_ObjectMap::ReleaseObject(v42, v21);
  _Block_object_dispose(&v43, 8);
  return v20;
}

void sub_1DE523F14(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 176), 8);
  HALS_ObjectMap::ReleaseObject(*(v1 - 136), v3);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaStream19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

uint64_t HALS_MetaStream::IsPropertySettable(HALS_MetaStream *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (((*(*this + 96))(this) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 2003332927;
  }

  if (a3->mSelector == 1935894638)
  {

    return HALS_Stream::IsPropertySettable(this, a2, a3);
  }

  else
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3002000000;
    v30 = __Block_byref_object_copy__9924;
    v31 = __Block_byref_object_dispose__9925;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 0x40000000;
    v18[2] = ___ZNK15HALS_MetaStream18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v18[3] = &unk_1E86764D0;
    v18[4] = &v27;
    v18[5] = &v19;
    v18[6] = &v23;
    v18[7] = this;
    v9 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v9, v18);
    v10 = v28[5];
    if (v10)
    {
      v11 = HALS_IODevice::CopyStreamByIndex(v10, *(v24 + 24), *(v20 + 6));
      v12 = v11;
      if (v11)
      {
        IsPropertySettable = (*(*v11 + 104))(v11, v11[4], a3, a4);
      }

      else
      {
        IsPropertySettable = HALS_Stream::IsPropertySettable(this, a2, a3);
      }

      v15 = IsPropertySettable;
      HALS_ObjectMap::ReleaseObject(v12, v14);
    }

    else
    {
      v15 = HALS_Stream::IsPropertySettable(this, a2, a3);
    }

    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
    HALS_ObjectMap::ReleaseObject(v32, v16);
    return v15;
  }
}

void sub_1DE524314(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  HALS_ObjectMap::ReleaseObject(v20, a2);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 96), 8);
  HALS_ObjectMap::ReleaseObject(*(v21 - 56), v23);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaStream18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

uint64_t HALS_MetaStream::HasProperty(HALS_MetaStream *this, unsigned int a2, const AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  if (!(*(*this + 184))(this, a3, a4))
  {
    return 0;
  }

  if (a3->mSelector != 1935894638)
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3002000000;
    v29 = __Block_byref_object_copy__9924;
    v30 = __Block_byref_object_dispose__9925;
    v31 = 0;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2000000000;
    v25 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x2000000000;
    v21 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZNK15HALS_MetaStream11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
    v17[3] = &unk_1E86764A8;
    v17[4] = &v26;
    v17[5] = &v18;
    v17[6] = &v22;
    v17[7] = this;
    v10 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v10, v17);
    v11 = v27[5];
    if (v11)
    {
      v12 = HALS_IODevice::CopyStreamByIndex(v11, *(v23 + 24), *(v19 + 6));
      v13 = v12;
      if (v12)
      {
        HasProperty = (*(*v12 + 96))(v12, v12[4], a3, a4);
      }

      else
      {
        HasProperty = HALS_Stream::HasProperty(this, a2, a3, a4);
      }

      v9 = HasProperty;
      HALS_ObjectMap::ReleaseObject(v13, v15);
    }

    else
    {
      v9 = HALS_Stream::HasProperty(this, a2, a3, a4);
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(&v26, 8);
    HALS_ObjectMap::ReleaseObject(v31, v16);
    return v9;
  }

  return HALS_Stream::HasProperty(this, a2, a3, a4);
}

void sub_1DE524648(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  HALS_ObjectMap::ReleaseObject(v20, a2);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v21 - 96), 8);
  HALS_ObjectMap::ReleaseObject(*(v21 - 56), v23);
  _Unwind_Resume(a1);
}

void ___ZNK15HALS_MetaStream11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(void *a1, HALS_Object *a2)
{
  v3 = a1[7];
  HALS_ObjectMap::RetainObject(*(v3 + 152), a2);
  v4 = *(a1[4] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = *(v3 + 152);
  HALS_ObjectMap::ReleaseObject(v5, v6);
  *(*(a1[5] + 8) + 24) = *(v3 + 160);
  *(*(a1[6] + 8) + 24) = *(v3 + 52);
}

void HALS_MetaStream::~HALS_MetaStream(AMCP::Utility::Dispatch_Queue **this)
{
  HALS_MetaStream::~HALS_MetaStream(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5977FC0;
  HALS_MetaStream::RemoveRealStreamPropertyListener(this);
  HALS_MetaStream::RemoveRealTapPropertyListener(this);
  v3 = this[19];
  if (v3)
  {
    HALS_ObjectMap::ReleaseObject_LongTerm(v3, v2);
  }

  if (g_static_start_options == 1)
  {
    do
    {
      AMCP::Utility::Dispatch_Queue::flush_all_work(this[22]);
      v4 = atomic_load(this[22] + 33);
    }

    while ((v4 & 1) != 0);
  }

  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::~unique_ptr[abi:ne200100](this + 22);
  HALB_FormatList::~HALB_FormatList((this + 11));

  HALS_Stream::~HALS_Stream(this);
}

void HALS_MetaStream::Activate(HALS_MetaStream *this)
{
  (*(*this + 304))(this);

  HALS_Object::Activate(this, v2);
}

void sub_1DE524984(_Unwind_Exception *a1)
{
  std::unique_ptr<AMCP::Utility::Dispatch_Queue>::~unique_ptr[abi:ne200100](v1 + 22);
  HALB_FormatList::~HALB_FormatList(v2);
  HALS_Stream::~HALS_Stream(v1);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::io_proc_cycle_info_to_audio_io_cycle_info(uint64_t a1, uint64_t a2)
{
  AMCP::Graph::dal_time_to_audio_time_stamp(a1, a2 + 64);
  AMCP::Graph::dal_time_to_audio_time_stamp((a1 + 40), a2 + 128);
  AMCP::Graph::dal_time_to_audio_time_stamp((a1 + 80), a2);
  result = AMCP::DAL::DAL_Time::get_host_time((a1 + 120));
  *(a2 + 192) = result;
  return result;
}

void AMCP::Graph::dal_time_to_audio_time_stamp(AMCP::DAL::DAL_Time *a1, uint64_t a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 3);
  v4 = *(a1 + 4);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (!v5)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      v24 = "Client_IO_Handler.cpp";
      v25 = 1024;
      v26 = 25;
      v27 = 2080;
      v28 = "not (in.get_clock() != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Bad time passed to dal_time_to_audio_time_stamp", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v22);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v14, "Bad time passed to dal_time_to_audio_time_stamp", v12);
    std::logic_error::logic_error(&v15, &v14);
    v15.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v16, &v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = -1;
    v16.__vftable = &unk_1F5991430;
    v17 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v16);
    v29 = "void AMCP::Graph::dal_time_to_audio_time_stamp(const AMCP::DAL::DAL_Time &, CA::TimeStamp &)";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    v31 = 25;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v13);
  }

  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = floor(AMCP::DAL::DAL_Time::get_sample_time(a1));
  *(a2 + 8) = AMCP::DAL::DAL_Time::get_host_time(a1);
  v6 = *(a1 + 3);
  v7 = *(a1 + 4);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a2 + 16) = (*(*v6 + 160))(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  *(a2 + 56) = 7;
}

void sub_1DE524D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, char a27)
{
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  _Unwind_Resume(exception_object);
}