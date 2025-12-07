void sub_1DE3173F4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator(uint64_t this)
{
  v40 = *MEMORY[0x1E69E9840];
  if (!*(this + 104))
  {
    v1 = *this;
    v2 = *(this + 8);
    if (*this != v2)
    {
      v3 = 0;
      v4 = *this;
      do
      {
        v6 = *v4;
        v5 = v4[1];
        v4 += 5;
        v3 += (v5 - v6) >> 4;
      }

      while (v4 != v2);
      if (v3)
      {
        do
        {
          for (i = *v1; i != v1[1]; i += 16)
          {
            if (*(*i + 156) != 1)
            {
              v8 = 0;
              goto LABEL_13;
            }
          }

          v1 += 5;
        }

        while (v1 != v2);
      }
    }

    v8 = 1;
LABEL_13:
    v9 = *(this + 24);
    v10 = *(this + 32);
    if (v9 == v10)
    {
      goto LABEL_27;
    }

    v11 = 0;
    v12 = *(this + 24);
    do
    {
      v14 = *v12;
      v13 = v12[1];
      v12 += 5;
      v11 += (v13 - v14) >> 4;
    }

    while (v12 != v10);
    if (!v11)
    {
LABEL_27:
      if (!v8)
      {
        operator new();
      }

      if (!*(this + 112))
      {
        operator new();
      }
    }

    else
    {
      do
      {
        for (j = *v9; j != v9[1]; j += 16)
        {
          if (*(*j + 156) != 1)
          {
            goto LABEL_27;
          }
        }

        v9 += 5;
      }

      while (v9 != v10);
      if ((v8 & 1) == 0)
      {
        v16 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v16 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
          v32 = "Manifest_Task.cpp";
          v33 = 1024;
          v34 = 585;
          v35 = 2080;
          v36 = "not (are_sources_aligned_for_input and not are_destinations_are_aligned_for_input)";
          _os_log_error_impl(&dword_1DE1F9000, v19, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v30);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v22, "", v20);
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
        v37 = "void AMCP::Graph::Manifest_Task::maybe_create_data_flow_calculator()";
        v38 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
        v39 = 585;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v21);
      }
    }

    operator new();
  }

  return this;
}

void sub_1DE317E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v26 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v26 - 129));
  _Unwind_Resume(a1);
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Readable_Range>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0x2E8BA2E8BA2E8BBLL)
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

void std::__uninitialized_allocator_relocate[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Readable_Range>,AMCP::DAL::Readable_Range*>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 16) = *(v5 + 16);
      *a3 = v6;
      *(a3 + 24) = *(v5 + 24);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      v7 = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(a3 + 40) = v7;
      *(a3 + 64) = *(v5 + 64);
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      *(a3 + 80) = *(v5 + 80);
      v5 += 88;
      a3 += 88;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(v4);
      v4 += 88;
    }

    while (v4 != a2);
  }
}

void std::__split_buffer<AMCP::DAL::Readable_Range,caulk::rt_allocator<AMCP::DAL::Readable_Range> &>::~__split_buffer(caulk::rt_safe_memory_resource *result)
{
  v3 = *(result + 1);
  for (i = *(result + 2); i != v3; i = *(result + 2))
  {
    *(result + 2) = i - 88;
    std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(i - 88);
  }

  v4 = *result;
  if (*result)
  {
    if ((0x2E8BA2E8BA2E8BA3 * ((*(result + 3) - v4) >> 3)) < 0x2E8BA2E8BA2E8BBLL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t AMCP::DAL::Readable_Range::Readable_Range(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  *(a2 + 24) = 0uLL;
  v5 = *(a2 + 40);
  v6 = *(a2 + 7);
  v7 = a2[4];
  a2[4] = 0uLL;
  v8 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v8;
  *(a1 + 24) = v4;
  *(a1 + 40) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = a3;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
  }

  return a1;
}

AMCP::Log::AMCP_Scope_Registry *AMCP::Graph::Manifest_Task::update_connection_write_positions(AMCP::Log::AMCP_Scope_Registry *result, int a2, uint64_t *a3, void *a4)
{
  v257 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v4 = a3[1];
  if (*(*(result + 6) + 24))
  {
    if (0x2E8BA2E8BA2E8BA3 * ((v4 - v5) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(result + 1) - *result) >> 3))
    {
      v197 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v197 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
      }

      v199 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v198 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v198)
      {
        atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
        v200 = *v199;
        std::__shared_weak_count::__release_shared[abi:ne200100](v198);
      }

      else
      {
        v200 = *v199;
      }

      if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest_Task.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 203;
        *&buf[18] = 2080;
        *&buf[20] = "not (not m_handlers->m_Node_Process_Handler or incoming_connections.size() == get_number_of_connection_lists(Connection_Direction::Source))";
        _os_log_error_impl(&dword_1DE1F9000, v200, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v216, "", v205);
      std::logic_error::logic_error(&v233, &v216);
      v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v242, &v233);
      v243 = 0;
      v244 = 0;
      *&v245 = 0;
      DWORD2(v245) = -1;
      v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
      *&buf[32] = "void AMCP::Graph::Manifest_Task::update_connection_write_positions(Object_ID, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
      v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
      v254 = 203;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
    }

    if (0x2E8BA2E8BA2E8BA3 * ((a4[1] - *a4) >> 3) != 0xCCCCCCCCCCCCCCCDLL * ((*(result + 4) - *(result + 3)) >> 3))
    {
      v201 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v201 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(result);
      }

      v203 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v202 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v202)
      {
        atomic_fetch_add_explicit(&v202->__shared_owners_, 1uLL, memory_order_relaxed);
        v204 = *v203;
        std::__shared_weak_count::__release_shared[abi:ne200100](v202);
      }

      else
      {
        v204 = *v203;
      }

      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "Manifest_Task.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 204;
        *&buf[18] = 2080;
        *&buf[20] = "not (not m_handlers->m_Node_Process_Handler or outgoing_connections.size() == get_number_of_connection_lists(Connection_Direction::Destination))";
        _os_log_error_impl(&dword_1DE1F9000, v204, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v216, "", v206);
      std::logic_error::logic_error(&v233, &v216);
      v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v242, &v233);
      v243 = 0;
      v244 = 0;
      *&v245 = 0;
      DWORD2(v245) = -1;
      v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
      v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
      *&buf[32] = "void AMCP::Graph::Manifest_Task::update_connection_write_positions(Object_ID, const rt_safe_vector<DAL::Readable_Range> &, const rt_safe_vector<DAL::Writable_Range> &)";
      v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
      v254 = 204;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
    }
  }

  if (v4 != v5)
  {
    v6 = 0;
    v207 = result;
    while (1)
    {
      nth_connection_list = AMCP::Graph::Manifest_Task::get_nth_connection_list(result, v6, 0);
      v8 = *nth_connection_list;
      v210 = nth_connection_list[1];
      v212 = v6;
      if (*nth_connection_list != v210)
      {
        break;
      }

LABEL_83:
      ++v6;
      result = v207;
      if (v6 >= 0x2E8BA2E8BA2E8BA3 * ((a3[1] - *a3) >> 3))
      {
        goto LABEL_84;
      }
    }

    while (1)
    {
      v9 = *v8;
      v10 = (*a3 + 88 * v6);
      v11 = *(*v8 + 144);
      v12 = v11 != 0;
      v13 = v10[3];
      v14 = v10[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v16 = (*(*v13 + 152))(v13);
      v17 = v14;
      v18 = v9[24];
      v19 = v9[25];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!v18)
      {
        goto LABEL_30;
      }

      v20 = (*(*v13 + 16))(v13);
      v15 = (*(*v18 + 16))(v18);
      v21 = *(v20 + 23);
      if (v21 >= 0)
      {
        v22 = *(v20 + 23);
      }

      else
      {
        v22 = *(v20 + 8);
      }

      v23 = *(v15 + 23);
      v24 = v23;
      if ((v23 & 0x80u) != 0)
      {
        v23 = *(v15 + 8);
      }

      if (v22 == v23)
      {
        if (v21 >= 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = *v20;
        }

        if (v24 >= 0)
        {
          v26 = v15;
        }

        else
        {
          v26 = *v15;
        }

        v15 = memcmp(v25, v26, v22);
        v27 = v15 != 0;
        if (v15)
        {
          v28 = v11 == 0;
        }

        else
        {
          v28 = 0;
        }

        if (v28)
        {
LABEL_77:
          v52 = v9[24];
          v53 = v9[25];
          if (v53)
          {
            atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v27 = v16 != (*(*v52 + 152))(v52);
          if (v53)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v53);
          }

          v12 = 0;
          if (!v19)
          {
            goto LABEL_34;
          }

LABEL_33:
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          goto LABEL_34;
        }
      }

      else
      {
LABEL_30:
        if (!v11)
        {
          goto LABEL_77;
        }

        v27 = 1;
        v12 = 1;
      }

      if (v19)
      {
        goto LABEL_33;
      }

LABEL_34:
      if (v27)
      {
        v127 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v127 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v15);
        }

        v129 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v128 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v128)
        {
          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          v130 = *v129;
          std::__shared_weak_count::__release_shared[abi:ne200100](v128);
        }

        else
        {
          v130 = *v129;
        }

        if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 319;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_same_timebase(read_position_clock, m_consumer_read_position.get_clock()) || (drift_correction_disabled && read_position_sr == m_consumer_read_position.get_clock()->get_sample_rate()))";
          _os_log_error_impl(&dword_1DE1F9000, v130, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v216, "", v183);
        std::logic_error::logic_error(&v233, &v216);
        v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v242, &v233);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 319;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
      }

      if (!v9[16])
      {
        goto LABEL_50;
      }

      v29 = (*(*v13 + 16))(v13);
      v15 = (*(*v9[16] + 16))(v9[16]);
      v30 = *(v29 + 23);
      if (v30 >= 0)
      {
        v31 = *(v29 + 23);
      }

      else
      {
        v31 = *(v29 + 8);
      }

      v32 = *(v15 + 23);
      v33 = v32;
      if ((v32 & 0x80u) != 0)
      {
        v32 = *(v15 + 8);
      }

      if (v31 != v32 || (v30 >= 0 ? (v34 = v29) : (v34 = *v29), v33 >= 0 ? (v35 = v15) : (v35 = *v15), v15 = memcmp(v34, v35, v31), v15))
      {
LABEL_50:
        if (v12 || v16 != (*(*v9[16] + 152))(v9[16]))
        {
          v151 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v151 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v15);
          }

          v153 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v152 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v152)
          {
            atomic_fetch_add_explicit(&v152->__shared_owners_, 1uLL, memory_order_relaxed);
            v154 = *v153;
            std::__shared_weak_count::__release_shared[abi:ne200100](v152);
          }

          else
          {
            v154 = *v153;
          }

          if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 321;
            *&buf[18] = 2080;
            *&buf[20] = "not (is_same_timebase(read_position_clock, m_timebase) || (drift_correction_disabled && read_position_sr == m_timebase->get_sample_rate()))";
            _os_log_error_impl(&dword_1DE1F9000, v154, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v216, "", v189);
          std::logic_error::logic_error(&v233, &v216);
          v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
          std::logic_error::logic_error(&v242, &v233);
          v243 = 0;
          v244 = 0;
          *&v245 = 0;
          DWORD2(v245) = -1;
          v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
          v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v254 = 321;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
        }
      }

      v36 = v9[38];
      if (!v36)
      {
        v131 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v131 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(0);
        }

        v133 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v132 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v132)
        {
          atomic_fetch_add_explicit(&v132->__shared_owners_, 1uLL, memory_order_relaxed);
          v134 = *v133;
          std::__shared_weak_count::__release_shared[abi:ne200100](v132);
        }

        else
        {
          v134 = *v133;
        }

        if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 322;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_buffer)";
          _os_log_error_impl(&dword_1DE1F9000, v134, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v216, "", v184);
        std::logic_error::logic_error(&v233, &v216);
        v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v242, &v233);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 322;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
      }

      if (*(v9 + 38) != 3)
      {
        (*(*v36 + 64))(buf);
        v37 = AMCP::DAL::DAL_Time::operator<((v9 + 26), buf);
        if (v256)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v256);
        }

        v36 = *&buf[32];
        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v37)
        {
          v135 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v135 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v36);
          }

          v137 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v136 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v136)
          {
            atomic_fetch_add_explicit(&v136->__shared_owners_, 1uLL, memory_order_relaxed);
            v138 = *v137;
            std::__shared_weak_count::__release_shared[abi:ne200100](v136);
          }

          else
          {
            v138 = *v137;
          }

          if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Manifest_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 325;
            *&buf[18] = 2080;
            *&buf[20] = "not (zeroed_reads or m_producer_write_position >= m_buffer->get_time_range().start())";
            _os_log_error_impl(&dword_1DE1F9000, v138, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v216, "", v185);
          std::logic_error::logic_error(&v233, &v216);
          v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
          std::logic_error::logic_error(&v242, &v233);
          v243 = 0;
          v244 = 0;
          *&v245 = 0;
          DWORD2(v245) = -1;
          v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
          *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
          v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
          v254 = 325;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
        }
      }

      if (!v9[37])
      {
        v139 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v139 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v36);
        }

        v141 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v140 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v140)
        {
          atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
          v142 = *v141;
          std::__shared_weak_count::__release_shared[abi:ne200100](v140);
        }

        else
        {
          v142 = *v141;
        }

        if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 326;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v142, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v225);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v216, "", v186);
        std::logic_error::logic_error(&v233, &v216);
        v233.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v242, &v233);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 326;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&__p);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time((v10 + 5));
      v39 = AMCP::DAL::DAL_Time::get_sample_time(v10);
      v40 = *(v9 + 12);
      v41 = v9[25];
      if (v41)
      {
        atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
      }

      *buf = 2;
      *&buf[8] = sample_time - v39;
      *&buf[16] = 0;
      *&buf[24] = v40;
      boost::operators_impl::operator+(&v235, (v9 + 21), buf);
      v6 = v212;
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      v42 = AMCP::DAL::DAL_Time::operator<((v9 + 21), &v235);
      if (!v42)
      {
        v143 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v143 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v42);
        }

        v145 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v144 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v144)
        {
          atomic_fetch_add_explicit(&v144->__shared_owners_, 1uLL, memory_order_relaxed);
          v146 = *v145;
          std::__shared_weak_count::__release_shared[abi:ne200100](v144);
        }

        else
        {
          v146 = *v145;
        }

        if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 330;
          *&buf[18] = 2080;
          *&buf[20] = "not (new_target_position > m_consumer_read_position)";
          _os_log_error_impl(&dword_1DE1F9000, v146, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v221);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__p, "", v187);
        std::logic_error::logic_error(&v225, &__p);
        v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v242, &v225);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 330;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v233);
      }

      v43 = v9[41];
      if (v43)
      {
        v44 = *v9;
        v45 = AMCP::DAL::DAL_Time::get_sample_time((v9 + 21));
        v46 = AMCP::DAL::DAL_Time::get_sample_time(&v235);
        AMCP::Graph::Manifest_Log::add_message(v43, 4, "Manifest_Buffer(%zu), prev position: %lld, update_read_position: %lld", v44, vcvtmd_s64_f64(v45), vcvtmd_s64_f64(v46));
      }

      *(v9 + 42) = v235.__r_.__value_.__l.__data_;
      *(v9 + 11) = *&v235.__r_.__value_.__r.__words[1];
      v48 = v236;
      v47 = v237;
      if (v237)
      {
        atomic_fetch_add_explicit(&v237->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = v9[25];
      v9[24] = v48;
      v9[25] = v47;
      if (v49)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v49);
      }

      v50 = AMCP::DAL::DAL_Time::get_sample_time((v9 + 21));
      if (AMCP::DAL::DAL_Time::get_sample_time((v9 + 21)) != floor(v50))
      {
        v147 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v147 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v51);
        }

        v149 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v148 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
          v150 = *v149;
          std::__shared_weak_count::__release_shared[abi:ne200100](v148);
        }

        else
        {
          v150 = *v149;
        }

        if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 341;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_consumer_read_position.get_sample_time().floor().get() == m_consumer_read_position.get_sample_time().get_double())";
          _os_log_error_impl(&dword_1DE1F9000, v150, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v221);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__p, "", v188);
        std::logic_error::logic_error(&v225, &__p);
        v225.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
        std::logic_error::logic_error(&v242, &v225);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_read_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 341;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v233);
      }

      if (v237)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v237);
      }

      v8 += 2;
      if (v8 == v210)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_84:
  v54 = *(result + 3);
  v211 = *(result + 4);
  if (v54 == v211)
  {
    return result;
  }

  v215 = 0;
  do
  {
    v56 = *v54;
    v55 = v54[1];
    v213 = v55;
    while (v56 != v55)
    {
      v57 = *v56;
      v221 = *(*v56 + 208);
      v58 = v57[29];
      v222 = v57[28];
      v223 = v58;
      v59 = v57[30];
      v224 = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      AMCP::DAL::DAL_Time::operator-(&v242, (*a4 + 88 * v215 + 40), (*a4 + 88 * v215));
      boost::operators_impl::operator+(buf, &v221, &v242);
      AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v216, &v221, buf);
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (v244)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v244);
      }

      v60 = *v56;
      v61 = *(*v56 + 328);
      if (v61)
      {
        v62 = pthread_self();
        v63 = pthread_mach_thread_np(v62);
        v64 = *v60;
        v65 = AMCP::DAL::DAL_Time::get_sample_time(&v216);
        AMCP::DAL::DAL_Time::get_sample_time(v219);
        AMCP::DAL::DAL_Time::get_sample_time(&v216);
        v66 = AMCP::DAL::DAL_Time::get_sample_time(v219);
        v67 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 208));
        v68 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 168));
        (*(**(v60 + 304) + 72))(buf);
        v69 = AMCP::DAL::DAL_Time::get_sample_time(buf);
        v70 = AMCP::DAL::DAL_Time::get_sample_time(&v253);
        (*(**(v60 + 304) + 72))(&v242, v70);
        AMCP::DAL::DAL_Time::get_sample_time(&v242);
        v71 = AMCP::DAL::DAL_Time::get_sample_time(&v245);
        AMCP::Graph::Manifest_Log::add_message(v61, 4, "%u\tManifest_Buffer(%zu)::copy_data_and_update_write_position: new pos:[%lld,%lld], current write position %lld, current_read_position %lld, underlying buffer:[%lld, %lld]", v63, v64, vcvtmd_s64_f64(v65), vcvtmd_s64_f64(v66), vcvtmd_s64_f64(v67), vcvtmd_s64_f64(v68), vcvtmd_s64_f64(v69), vcvtmd_s64_f64(v71));
        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (v244)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v244);
        }

        if (v256)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v256);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }
      }

      v72 = AMCP::DAL::DAL_Time::operator<((v60 + 208), v219);
      if (!v72)
      {
        v155 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v155 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v72);
        }

        v157 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v156 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v156)
        {
          atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
          v158 = *v157;
          std::__shared_weak_count::__release_shared[abi:ne200100](v156);
        }

        else
        {
          v158 = *v157;
        }

        if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 374;
          *&buf[18] = 2080;
          *&buf[20] = "not (write_position.end() > m_producer_write_position)";
          _os_log_error_impl(&dword_1DE1F9000, v158, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v250);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__p, "", v190);
        std::logic_error::logic_error(&v249, &__p);
        v249.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v249);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 374;
        std::vector<void *>::vector[abi:ne200100](&v233);
      }

      v73 = v217;
      v74 = v218;
      if (v218)
      {
        atomic_fetch_add_explicit(&v218->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v76 = *(v60 + 232);
      v75 = *(v60 + 240);
      if (v75)
      {
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v77 = (v73 | v76) == 0;
      if (!v73 || !v76)
      {
        goto LABEL_123;
      }

      v78 = (*(*v73 + 16))(v73);
      v73 = (*(*v76 + 16))(v76);
      v79 = *(v78 + 23);
      if (v79 >= 0)
      {
        v80 = *(v78 + 23);
      }

      else
      {
        v80 = *(v78 + 8);
      }

      v81 = *(v73 + 23);
      v82 = v81;
      if ((v81 & 0x80u) != 0)
      {
        v81 = *(v73 + 8);
      }

      if (v80 == v81)
      {
        if (v79 >= 0)
        {
          v83 = v78;
        }

        else
        {
          v83 = *v78;
        }

        if (v82 >= 0)
        {
          v84 = v73;
        }

        else
        {
          v84 = *v73;
        }

        v73 = memcmp(v83, v84, v80);
        v77 = v73 == 0;
LABEL_123:
        if (!v75)
        {
          goto LABEL_125;
        }

LABEL_124:
        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        goto LABEL_125;
      }

      v77 = 0;
      if (v75)
      {
        goto LABEL_124;
      }

LABEL_125:
      if (v74)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v74);
      }

      if (!v77)
      {
        v159 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v159 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v73);
        }

        v161 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v160 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v160)
        {
          atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
          v162 = *v161;
          std::__shared_weak_count::__release_shared[abi:ne200100](v160);
        }

        else
        {
          v162 = *v161;
        }

        if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 375;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_same_timebase(write_position.get_clock(), m_producer_write_position.get_clock()))";
          _os_log_error_impl(&dword_1DE1F9000, v162, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v250);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__p, "", v191);
        std::logic_error::logic_error(&v249, &__p);
        v249.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v249);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 375;
        std::vector<void *>::vector[abi:ne200100](&v233);
      }

      v85 = *(v60 + 304);
      if (!v85)
      {
        v163 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v163 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v73);
        }

        v165 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v164 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v164)
        {
          atomic_fetch_add_explicit(&v164->__shared_owners_, 1uLL, memory_order_relaxed);
          v166 = *v165;
          std::__shared_weak_count::__release_shared[abi:ne200100](v164);
        }

        else
        {
          v166 = *v165;
        }

        if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 376;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_buffer)";
          _os_log_error_impl(&dword_1DE1F9000, v166, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v250);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__p, "", v192);
        std::logic_error::logic_error(&v249, &__p);
        v249.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v249);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 376;
        std::vector<void *>::vector[abi:ne200100](&v233);
      }

      if (!*(v60 + 296))
      {
        v167 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v167 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v73);
        }

        v169 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v168 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v168)
        {
          atomic_fetch_add_explicit(&v168->__shared_owners_, 1uLL, memory_order_relaxed);
          v170 = *v169;
          std::__shared_weak_count::__release_shared[abi:ne200100](v168);
        }

        else
        {
          v170 = *v169;
        }

        if (os_log_type_enabled(v170, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 377;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v170, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v250);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&__p, "", v193);
        std::logic_error::logic_error(&v249, &__p);
        v249.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v249);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::copy_data_and_update_write_position(Object_ID, const std::shared_ptr<DAL::DAL_Buffer> &, const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 377;
        std::vector<void *>::vector[abi:ne200100](&v233);
      }

      v86 = v54[3];
      if (v86)
      {
        v87 = *(v60 + 312);
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          v88 = v54[3];
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
          if (v88 == v85)
          {
            goto LABEL_173;
          }

          v86 = v54[3];
        }

        else if (v86 == v85)
        {
          goto LABEL_173;
        }

        (*(*v86 + 64))(buf);
        (*(*v54[3] + 64))(&v242);
        v89 = AMCP::DAL::DAL_Time::get_sample_time(&v216);
        v90 = AMCP::DAL::DAL_Time::get_sample_time(v219);
        AMCP::DAL::DAL_Buffer::get_timebase(&v232, v54[3]);
        LODWORD(v233.__r_.__value_.__l.__data_) = 2;
        *&v233.__r_.__value_.__l.__size_ = v90 - v89;
        v233.__r_.__value_.__r.__words[2] = 0;
        v234 = v232;
        v232 = 0uLL;
        boost::operators_impl::operator+(&__p, &v242, &v233);
        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(&v235, buf, &__p);
        if (v230)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v230);
        }

        if (*(&v234 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v234 + 1));
        }

        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (v244)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v244);
        }

        if (v256)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v256);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (*(v60 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v225, *(v60 + 8), *(v60 + 16));
        }

        else
        {
          v225 = *(v60 + 8);
        }

        v226 = *(v60 + 32);
        v227 = *(v60 + 40);
        LODWORD(__p.__r_.__value_.__l.__data_) = a2;
        *&__p.__r_.__value_.__r.__words[1] = *&v225.__r_.__value_.__l.__data_;
        v91 = v225.__r_.__value_.__r.__words[2];
        memset(&v225, 0, sizeof(v225));
        v229 = v91;
        v230 = v226;
        v231 = v227;
        v92 = v54[3];
        v242 = v235;
        v243 = v236;
        v244 = v237;
        if (v237)
        {
          atomic_fetch_add_explicit(&v237->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v245 = v238;
        v246 = v239;
        v247 = v240;
        v248 = v241;
        if (v241)
        {
          atomic_fetch_add_explicit(&v241->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v92 + 144))(buf);
        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (v244)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v244);
        }

        v93 = caulk::time_range<AMCP::DAL::DAL_Time,AMCP::DAL::DAL_Time_Delta>::operator==(&v235, &v216);
        v94 = **(v60 + 304);
        if (v93)
        {
          (*(v94 + 24))();
        }

        else
        {
          (*(v94 + 32))();
        }

        if (v256)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v256);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (SHIBYTE(v229) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__size_);
        }

        if (v241)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v241);
        }

        if (v237)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v237);
        }
      }

LABEL_173:
      v95 = *(v60 + 328);
      if (v95)
      {
        v96 = pthread_self();
        v97 = pthread_mach_thread_np(v96);
        v98 = *v60;
        AMCP::Graph::Manifest_Buffer::get_buffer_id(buf, v60);
        AMCP::Wire_Identifier_to_string(&v242, buf);
        if ((v242.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = &v242;
        }

        else
        {
          v99 = v242.__r_.__value_.__r.__words[0];
        }

        AMCP::Graph::Manifest_Log::add_message(v95, 4, "%u\tManifest_Buffer(%zu)::update_write_position:  source: %s", v97, v98, v99);
        if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v242.__r_.__value_.__l.__data_);
        }

        if (v255 < 0)
        {
          operator delete(v253);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      v100 = AMCP::DAL::DAL_Time::get_sample_time(v219);
      v101 = AMCP::DAL::DAL_Time::get_sample_time(&v216);
      v102 = *(v60 + 232);
      v103 = *(v60 + 240);
      if (v103)
      {
        atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
      }

      *buf = 2;
      *&buf[8] = v100 - v101;
      *&buf[16] = 0;
      *&buf[24] = v102;
      boost::operators_impl::operator+(&v235, v60 + 208, buf);
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      (*(**(v60 + 304) + 72))(buf);
      v104 = AMCP::DAL::DAL_Time::operator<(&v253, (v60 + 208));
      if (v256)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v256);
      }

      v105 = *&buf[32];
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      if (v104)
      {
        v171 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v171 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v105);
        }

        v173 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v172 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v172)
        {
          atomic_fetch_add_explicit(&v172->__shared_owners_, 1uLL, memory_order_relaxed);
          v174 = *v173;
          std::__shared_weak_count::__release_shared[abi:ne200100](v172);
        }

        else
        {
          v174 = *v173;
        }

        if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 413;
          *&buf[18] = 2080;
          *&buf[20] = "not (m_producer_write_position <= m_buffer->get_allowed_read_range().end())";
          _os_log_error_impl(&dword_1DE1F9000, v174, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v251);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v233, "", v194);
        std::logic_error::logic_error(&v250, &v233);
        v250.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v250);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_write_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 413;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v249);
      }

      if (!*(v60 + 296))
      {
        v175 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v175 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v105);
        }

        v177 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v176 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v176)
        {
          atomic_fetch_add_explicit(&v176->__shared_owners_, 1uLL, memory_order_relaxed);
          v178 = *v177;
          std::__shared_weak_count::__release_shared[abi:ne200100](v176);
        }

        else
        {
          v178 = *v177;
        }

        if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 414;
          *&buf[18] = 2080;
          *&buf[20] = "not (is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v178, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v251);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v233, "", v195);
        std::logic_error::logic_error(&v250, &v233);
        v250.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v250);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_write_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 414;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v249);
      }

      v106 = *(v60 + 328);
      if (v106)
      {
        v107 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 208));
        v108 = AMCP::DAL::DAL_Time::get_sample_time(&v235);
        v109 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 248));
        v110 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 168));
        (*(**(v60 + 304) + 72))(buf);
        v111 = AMCP::DAL::DAL_Time::get_sample_time(buf);
        v112 = AMCP::DAL::DAL_Time::get_sample_time(&v253);
        (*(**(v60 + 304) + 72))(&v242, v112);
        AMCP::DAL::DAL_Time::get_sample_time(&v242);
        v113 = AMCP::DAL::DAL_Time::get_sample_time(&v245);
        AMCP::Graph::Manifest_Log::add_message(v106, 4, "\t\tprevious write pos: %lld, new write pos: %lld, target: %lld, consumer: %lld, underlying buffer:[%lld, %lld]", vcvtmd_s64_f64(v107), vcvtmd_s64_f64(v108), vcvtmd_s64_f64(v109), vcvtmd_s64_f64(v110), vcvtmd_s64_f64(v111), vcvtmd_s64_f64(v113));
        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (v244)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v244);
        }

        if (v256)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v256);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }
      }

      v114 = AMCP::DAL::DAL_Time::operator<(&v235, (v60 + 168));
      if (v114)
      {
        v179 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v179 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v114);
        }

        v181 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v180 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v180)
        {
          atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
          v182 = *v181;
          std::__shared_weak_count::__release_shared[abi:ne200100](v180);
        }

        else
        {
          v182 = *v181;
        }

        if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          *&buf[4] = "Manifest_Buffer.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 421;
          *&buf[18] = 2080;
          *&buf[20] = "not (new_write_position >= m_consumer_read_position)";
          _os_log_error_impl(&dword_1DE1F9000, v182, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v251);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v233, "", v196);
        std::logic_error::logic_error(&v250, &v233);
        v250.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v242, &v250);
        v243 = 0;
        v244 = 0;
        *&v245 = 0;
        DWORD2(v245) = -1;
        v242.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v242.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v242);
        *&buf[32] = "void AMCP::Graph::Manifest_Buffer::update_write_position(const AMCP::DAL::DAL_Time_Range &)";
        v253 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v254 = 421;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v249);
      }

      *(v60 + 208) = v235.__r_.__value_.__l.__data_;
      *(v60 + 216) = *&v235.__r_.__value_.__r.__words[1];
      v116 = v236;
      v115 = v237;
      if (v237)
      {
        atomic_fetch_add_explicit(&v237->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v117 = *(v60 + 240);
      *(v60 + 232) = v116;
      *(v60 + 240) = v115;
      if (v117)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v117);
      }

      if (v237)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v237);
      }

      v118 = *(v60 + 328);
      if (v118)
      {
        v119 = pthread_self();
        v120 = pthread_mach_thread_np(v119);
        v121 = *v60;
        v122 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 208));
        v123 = AMCP::DAL::DAL_Time::get_sample_time((v60 + 168));
        (*(**(v60 + 304) + 72))(buf);
        v124 = AMCP::DAL::DAL_Time::get_sample_time(buf);
        v125 = AMCP::DAL::DAL_Time::get_sample_time(&v253);
        (*(**(v60 + 304) + 72))(&v242, v125);
        AMCP::DAL::DAL_Time::get_sample_time(&v242);
        v126 = AMCP::DAL::DAL_Time::get_sample_time(&v245);
        AMCP::Graph::Manifest_Log::add_message(v118, 4, "%u\tManifest_Buffer(%zu)::copy_data_and_update_write_position: current write position %lld, current_read_position %lld, underlying buffer:[%lld, %lld]", v120, v121, vcvtmd_s64_f64(v122), vcvtmd_s64_f64(v123), vcvtmd_s64_f64(v124), vcvtmd_s64_f64(v126));
        if (v248)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v248);
        }

        if (v244)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v244);
        }

        if (v256)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v256);
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }
      }

      if (v220)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v220);
      }

      if (v218)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v218);
      }

      if (v224)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v224);
      }

      v56 += 2;
      v55 = v213;
    }

    result = v54[3];
    if (result)
    {
      result = (*(*result + 88))(result);
    }

    ++v215;
    v54 += 5;
  }

  while (v54 != v211);
  return result;
}

void sub_1DE31B6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *__p, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a59);
  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(&a23);
  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Task::process_once(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v68 = *MEMORY[0x1E69E9840];
  if (*(a1 + 88) != 3)
  {
    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
    }

    v34 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v33 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v34;
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v35 = *v34;
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      *v61 = 136315650;
      *&v61[4] = "Manifest_Task.cpp";
      *&v61[12] = 1024;
      *&v61[14] = 249;
      *&v61[18] = 2080;
      *&v61[20] = "not (is_processing())";
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s process_once() called before begin_processing()", v61, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v48);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v42, "process_once() called before begin_processing()", v36);
    std::logic_error::logic_error(v47, &v42);
    *v47 = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(buf, v47);
    *&buf[24] = 0;
    *&buf[32] = 0;
    *&v58 = 0;
    DWORD2(v58) = -1;
    *buf = &unk_1F5991430;
    *&buf[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v61, buf);
    v62.__vftable = "void AMCP::Graph::Manifest_Task::process_once(Object_ID, const IO_Proc_Cycle_Info &, const Manifest_Execution_Context &, uint64_t, Process_Once_Option)";
    v62.__imp_.__imp_ = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Task.cpp";
    LODWORD(v63) = 249;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(v40);
  }

  memset(&v39, 0, sizeof(v39));
  memset(&v38, 0, sizeof(v38));
  AMCP::Graph::Manifest_Task::set_up_connections(a1, a4, &v39, &v38);
  if (a6 == 1)
  {
    shared_owners = v38.__shared_owners_;
    if (v38.__vftable != v38.__shared_owners_)
    {
      v13 = &v38.__vftable[1];
      do
      {
        AMCP::DAL::DAL_Timed_Segment::get_format(buf, v13[5]);
        v14 = *(v13 - 1);
        *&v45 = *(v13 - 2);
        *(&v45 + 1) = v14;
        if (v14)
        {
          atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::Fixed_Buffer::Fixed_Buffer(v61, buf, &v45, 4096.0);
        if (*(&v45 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v45 + 1));
        }

        LODWORD(v42.__r_.__value_.__l.__data_) = a2;
        *&v42.__r_.__value_.__r.__words[1] = 0u;
        v43 = 0u;
        v44 = 0;
        AMCP::DAL::Fixed_Buffer::set_range(v61, (v13 - 5));
        v15.n128_f64[0] = AMCP::DAL::DAL_Time::operator-(v40, v13, (v13 - 5));
        if ((v40[0] & 2) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(v40);
        }

        v16 = *&v40[1];
        v17 = v66;
        if (v66)
        {
          v17 = (*(*v66 + 48))(v66, v15);
        }

        else
        {
          v18 = 0.0;
        }

        if (round(v18) < round(v16))
        {
          v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v27 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v17);
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

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "Fixed_Buffer.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 197;
            *&buf[18] = 2080;
            *&buf[20] = "not (number_of_frames <= get_capacity())";
            _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Invalid size in change_size", buf, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v56);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v48, "Invalid size in change_size", v31);
          std::logic_error::logic_error(&v49, &v48);
          v49.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v50, &v49);
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = -1;
          v50.__vftable = &unk_1F5991430;
          v51 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v50);
          *&buf[32] = "void AMCP::DAL::Fixed_Buffer::change_size(Sample_Time)";
          *&v58 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Fixed_Buffer.cpp";
          DWORD2(v58) = 197;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v46);
        }

        sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v61[8]);
        AMCP::DAL::DAL_Time::get_sample_time(&v63);
        v20 = AMCP::DAL::DAL_Time::get_sample_time(&v61[8]);
        AMCP::DAL::DAL_Time::get_sample_time(&v63);
        v50 = v62;
        if (v62.__imp_.__imp_)
        {
          atomic_fetch_add_explicit(v62.__imp_.__imp_ + 1, 1uLL, memory_order_relaxed);
        }

        AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, &v50, sample_time, v16 + v20);
        *&v61[8] = *buf;
        *&v61[24] = *&buf[16];
        v21 = *&buf[24];
        *&buf[24] = 0;
        *&buf[32] = 0;
        imp = v62.__imp_.__imp_;
        v62 = v21;
        if (imp)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](imp);
        }

        v63 = v58;
        v64 = v59;
        v23 = v60;
        v60 = 0uLL;
        v24 = *(&v65 + 1);
        v65 = v23;
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
          if (*(&v60 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
          }
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (v50.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50.__imp_.__imp_);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        AMCP::DAL::Fixed_Buffer::create_readable_range(buf, v61);
        AMCP::DAL::Writable_Range::receive_data((v13 - 5), &v42, buf);
        if (*(&v60 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v60 + 1));
        }

        if (*&buf[32])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
        }

        if (SBYTE7(v43) < 0)
        {
          operator delete(v42.__r_.__value_.__l.__size_);
        }

        *v61 = &unk_1F598F618;
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (*(&v65 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v65 + 1));
        }

        if (v62.__imp_.__imp_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62.__imp_.__imp_);
        }

        v25 = v13 + 6;
        v13 += 11;
      }

      while (v25 != shared_owners);
    }
  }

  else
  {
    v26 = *(*(a1 + 48) + 24);
    if (v26)
    {
      *v61 = a2;
      (*(*v26 + 48))(v26, v61, a3, &v39, &v38);
    }
  }

  if ((*(a4 + 113) & 1) == 0 && mach_absolute_time() >= a5)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, (a1 + 64));
    exception->__vftable = &unk_1F59666F8;
  }

  AMCP::Graph::Manifest_Task::update_connection_write_positions(a1, a2, &v39, &v38);
  *v61 = &v38;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](v61);
  *v61 = &v39;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](v61);
}

void sub_1DE31C5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char *a45)
{
  __cxa_free_exception(v45);
  a45 = &a13;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&a45);
  a45 = &a16;
  std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](&a45);
  _Unwind_Resume(a1);
}

void std::vector<AMCP::DAL::Writable_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = v1[1];
    v4 = **a1;
    v5 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 88;
        std::__destroy_at[abi:ne200100]<AMCP::DAL::Readable_Range,0>(v3);
      }

      while (v3 != v2);
      v5 = *a1;
      v4 = **a1;
    }

    v1[1] = v2;
    if ((0x2E8BA2E8BA2E8BA3 * ((v5[2] - v4) >> 3)) < 0x2E8BA2E8BA2E8BBLL && (v7 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void AMCP::DAL::DAL_Timed_Segment::get_format(AMCP::DAL::DAL_Timed_Segment *this, uint64_t a2)
{
  (*(*a2 + 56))(&v5, a2);
  v3 = v5;
  if (v5)
  {
    v4 = *(v5 + 24);
    *this = *(v5 + 8);
    *(this + 1) = v4;
    *(this + 4) = *(v3 + 40);
  }

  else
  {
    *(this + 4) = 0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void AMCP::DAL::Fixed_Buffer::~Fixed_Buffer(AMCP::DAL::Fixed_Buffer *this)
{
  *this = &unk_1F598F618;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  *this = &unk_1F598F618;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F598F618;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

double AMCP::Graph::Manifest_Task::calculate_samples_to_process_for_output(AMCP::Graph::Manifest_Task *this, AMCP::Graph::Manifest_Task *a2)
{
  if (this == a2)
  {
    return 4294967300.0;
  }

  v3 = this;
  v4 = 4294967300.0;
  do
  {
    v5 = *v3;
    v6 = *(v3 + 1);
    while (v5 != v6)
    {
      v7 = *v5;
      v20 = *(*v5 + 208);
      v8 = v7[29];
      v21 = v7[28];
      v22 = v8;
      v9 = v7[30];
      v23 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v20);
      v11 = *v5;
      v16 = *(*v5 + 168);
      v12 = v11[24];
      v17 = v11[23];
      v18 = v12;
      v13 = v11[25];
      v19 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = AMCP::DAL::DAL_Time::get_sample_time(&v16);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if (v23)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v23);
      }

      if (round(sample_time - v14) < round(v4))
      {
        v4 = sample_time - v14;
      }

      v5 += 16;
    }

    v3 = (v3 + 40);
  }

  while (v3 != a2);
  return v4;
}

void sub_1DE31CA48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::DAL::Packetized_File_Handler::get_name(AMCP::DAL::Packetized_File_Handler *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 79) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 7), *(this + 8));
  }

  else
  {
    *a2 = *(this + 56);
  }
}

__n128 AMCP::DAL::Packetized_File_Handler::get_format@<Q0>(AMCP::DAL::Packetized_File_Handler *this@<X0>, uint64_t a2@<X8>)
{
  result = *(this + 8);
  v3 = *(this + 24);
  *a2 = result;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(this + 5);
  return result;
}

OpaqueExtAudioFile *AMCP::DAL::Packetized_File_Reader::close(AMCP::DAL::Packetized_File_Reader *this)
{
  result = *(this + 6);
  if (result)
  {
    result = ExtAudioFileDispose(result);
    *(this + 6) = 0;
  }

  return result;
}

void AMCP::DAL::Packetized_File_Reader::read_data(uint64_t a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v123 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    v80 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v80 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      *&buf[4] = "Packetized_File_Reader.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 214;
      *&buf[18] = 2080;
      *&buf[20] = "not (m_audio_File != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v83, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Reader::Read: m_audio_File is null", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v97);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&ioData, "Packetized_File_Reader::Read: m_audio_File is null", v84);
    std::logic_error::logic_error(&v92, &ioData);
    v92.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
    std::logic_error::logic_error(__p, &v92);
    *&__p[24] = 0;
    v109 = 0;
    v110 = 0;
    v111 = -1;
    *__p = &unk_1F5991430;
    *&__p[16] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, __p);
    v115 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
    *&v116 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
    DWORD2(v116) = 214;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v100);
  }

  (*(*a1 + 40))(buf);
  v6 = *&buf[20];
  AMCP::DAL::Writable_Range::get_direct_write_ranges(&v97, a2);
  v7 = v97;
  v87 = v98;
  if (v97 == v98)
  {
    goto LABEL_64;
  }

  v85 = a3;
  v8 = 0;
  v9 = v98;
  v86 = v6;
  do
  {
    v10 = *(v7 + 16);
    *buf = *v7;
    v11 = *(v7 + 40);
    v115 = *(v7 + 32);
    *&buf[16] = v10;
    v12 = *(v7 + 48);
    *&v116 = v11;
    *(&v116 + 1) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    v13 = *(v7 + 56);
    v14 = *(v7 + 80);
    v118 = *(v7 + 72);
    v117 = v13;
    v15 = *(v7 + 88);
    v119 = v14;
    v120 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = *(v7 + 104);
    v121 = *(v7 + 96);
    v122 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *buf;
    v17 = *&buf[8];
    v19 = *(a1 + 136) - *(a1 + 128);
    if (v19)
    {
      ioData.__r_.__value_.__r.__words[0] = 0;
      *(&v113 + 1) = 0;
      v20 = AMCP::Utility::AudioBufferList_Create((-1431655765 * (v19 >> 3)));
      v102.__vftable = &unk_1F59915B8;
      v104 = &v102;
      *__p = v20;
      std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](&__p[8], &v102);
      std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v102);
      std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](&ioData, __p);
      std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](__p, 0);
      std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&__p[8]);
      v21 = 0;
      v22 = 0;
      v23 = *(a1 + 20);
      v24 = ioData.__r_.__value_.__r.__words[0];
      v25 = (ioData.__r_.__value_.__r.__words[0] + 16);
      if ((v23 & 0x20) != 0)
      {
LABEL_12:
        if (v22 < *(a1 + 36))
        {
          v26 = 1;
          goto LABEL_16;
        }
      }

      else
      {
        while (!v21)
        {
          v26 = *(a1 + 36);
LABEL_16:
          *(v25 - 2) = v26;
          v27 = (*(a1 + 128) + v21);
          *(v25 - 1) = v27[1];
          *v25 = *v27;
          v25 += 2;
          ++v22;
          v21 += 24;
          if ((v23 & 0x20) != 0)
          {
            goto LABEL_12;
          }
        }
      }
    }

    else
    {
      AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(&ioData, v121, v122);
      v24 = ioData.__r_.__value_.__r.__words[0];
    }

    v28 = vcvtmd_s64_f64(v17 - v18) / v6;
    ioNumberFrames = v28;
    v29 = ExtAudioFileRead(*(a1 + 48), &ioNumberFrames, v24);
    if (v29)
    {
      v61 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v61 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v29);
      }

      v63 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v62 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        v64 = *v63;
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      else
      {
        v64 = *v63;
      }

      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "Packetized_File_Reader.cpp";
        *&__p[12] = 1024;
        *&__p[14] = 227;
        *&__p[18] = 2080;
        *&__p[20] = "not (the_error == noErr)";
        _os_log_error_impl(&dword_1DE1F9000, v64, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Packetized_File_Reader::Packetized_File_Reader: reading the data failed", __p, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v93);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v92, "Packetized_File_Reader::Packetized_File_Reader: reading the data failed", v69);
      std::logic_error::logic_error(&v91, &v92);
      v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v102, &v91);
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = -1;
      v102.__vftable = &unk_1F5991430;
      v103 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v102);
      v109 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
      v110 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
      v111 = 227;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v95);
    }

    if (ioNumberFrames)
    {
      v30 = *(a1 + 16);
      v31 = *(a1 + 96);
      if (v30 == v31)
      {
        v32 = v121;
        v33 = v122;
        if (v122)
        {
          atomic_fetch_add_explicit(&v122->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v32)
        {
          (*(*v32 + 72))(v32, &ioData);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        goto LABEL_52;
      }

      if (v30 != 1667326771 || v31 != 1633889587)
      {
        v74 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v74 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v29);
        }

        v76 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v75 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          v77 = *v76;
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }

        else
        {
          v77 = *v76;
        }

        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          *__p = 136315650;
          *&__p[4] = "Packetized_File_Reader.cpp";
          *&__p[12] = 1024;
          *&__p[14] = 234;
          *&__p[18] = 2080;
          *&__p[20] = "not (m_format.mFormatID == kAudioFormat60958AC3 && m_file_format.mFormatID == kAudioFormatAC3)";
          _os_log_error_impl(&dword_1DE1F9000, v77, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Incorrect client format", __p, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v93);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v92, "Incorrect client format", v79);
        std::logic_error::logic_error(&v91, &v92);
        v91.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v102, &v91);
        v104 = 0;
        v105 = 0;
        v106 = 0;
        v107 = -1;
        v102.__vftable = &unk_1F5991430;
        v103 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v102);
        v109 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
        v110 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
        v111 = 234;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v95);
      }

      v34 = a2;
      v35 = ioData.__r_.__value_.__r.__words[0];
      AMCP::DAL::Writable_Range::Direct_Write_Range::get_audio_buffer_list(&v100, v121, v122);
      v37 = *(v100 + 12);
      v38 = *(a1 + 24);
      if (v37 < v38)
      {
        goto LABEL_96;
      }

      v39 = *(v35 + 12);
      if (v37 < v39)
      {
        goto LABEL_96;
      }

      v40 = *(a1 + 96);
      v41 = *(v35 + 16);
      v42 = *(a1 + 16);
      v43 = *(v100 + 16);
      if (v40 == 1667326771)
      {
        v44 = v39 - 8;
      }

      else
      {
        v44 = *(v35 + 12);
      }

      v45 = v41[4 * (v40 == 1667326771)];
      if (v45 == 2935)
      {
        v46 = 0;
      }

      else
      {
        if (v45 != 30475)
        {
          v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v65 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v36);
          }

          v67 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v66 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
            v68 = *v67;
            std::__shared_weak_count::__release_shared[abi:ne200100](v66);
          }

          else
          {
            v68 = *v67;
          }

          v36 = os_log_type_enabled(v68, OS_LOG_TYPE_ERROR);
          if (v36)
          {
            *__p = 136315394;
            *&__p[4] = "Packetized_File_Reader.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 72;
            _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d convert_ac3_to_cac3: missing sync word", __p, 0x12u);
          }

LABEL_96:
          v70 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v70 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v36);
          }

          v72 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v71 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v71)
          {
            atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            v73 = *v72;
            std::__shared_weak_count::__release_shared[abi:ne200100](v71);
          }

          else
          {
            v73 = *v72;
          }

          if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315650;
            *&__p[4] = "Packetized_File_Reader.cpp";
            *&__p[12] = 1024;
            *&__p[14] = 240;
            *&__p[18] = 2080;
            *&__p[20] = "not (the_error == noErr)";
            _os_log_error_impl(&dword_1DE1F9000, v73, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Failed to convert ac3 to cac3", __p, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v94);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v95, "Failed to convert ac3 to cac3", v78);
          std::logic_error::logic_error(&v93, &v95);
          v93.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v102, &v93);
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v107 = -1;
          v102.__vftable = &unk_1F5991430;
          v103 = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(__p, &v102);
          v109 = "virtual File_Read_Result AMCP::DAL::Packetized_File_Reader::read_data(const DAL_Settings &, const Writable_Range &) const";
          v110 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/Packetized_File_Reader.cpp";
          v111 = 240;
          applesauce::backtrace::snapshot_N<64>::snapshot_N(&v91);
        }

        v46 = 1;
      }

      if (v40 == 1633889587 && v42 == 1667326771)
      {
        v47 = v41[2];
        if (v46)
        {
          LOBYTE(v47) = HIBYTE(v41[2]);
        }

        *v43 = 1310718066;
        *(v43 + 4) = ((v47 & 7) << 8) | 1;
        *(v43 + 6) = 8 * v39;
        v48 = (v43 + 8);
        if (!v46)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v48 = *(v100 + 16);
        if (!v46)
        {
LABEL_44:
          memcpy(v48, v41, v44);
LABEL_49:
          if (v42 == 1667326771)
          {
            bzero(&v48[v44 & 0xFFFFFFFFFFFFFFFELL], v43 + v38 - &v48[v44 & 0xFFFFFFFFFFFFFFFELL]);
          }

          std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v100, 0);
          std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v101);
          a2 = v34;
          v6 = v86;
          v9 = v87;
          goto LABEL_52;
        }
      }

      if (v44 >= 2)
      {
        v49 = v44 >> 1;
        v50 = v48;
        do
        {
          v51 = *v41++;
          *v50++ = bswap32(v51) >> 16;
          --v49;
        }

        while (v49);
      }

      goto LABEL_49;
    }

LABEL_52:
    std::string::basic_string[abi:ne200100]<0>(&v89, "packetized_file_reader_node");
    v52 = v89;
    v99[0] = v90;
    *(v99 + 7) = *(&v90 + 7);
    v53 = HIBYTE(v90);
    v89 = 0;
    v90 = 0uLL;
    *__p = 0;
    *&__p[8] = v52;
    *&__p[16] = v99[0];
    *&__p[23] = *(v99 + 7);
    __p[31] = v53;
    v99[0] = 0;
    *(v99 + 7) = 0;
    v109 = 0;
    LODWORD(v110) = 0;
    AMCP::DAL::Writable_Range::commit_direct_write(*(a2 + 80), __p, buf);
    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }

    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&ioData, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&ioData.__r_.__value_.__l.__size_);
    if (v122)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v122);
    }

    if (v120)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v120);
    }

    if (*(&v116 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v116 + 1));
    }

    v8 += v28;
    v7 += 112;
  }

  while (v7 != v9);
  a3 = v85;
  if (!v8)
  {
LABEL_64:
    *a3 = 0;
    a3[80] = 0;
    goto LABEL_80;
  }

  *__p = *a2;
  v54 = *(a2 + 24);
  *&__p[16] = *(a2 + 16);
  *&__p[24] = v54;
  v55 = *(a2 + 32);
  v109 = v55;
  if (v55)
  {
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    *&v88 = v54;
    *(&v88 + 1) = v55;
    atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v88 = v54;
  }

  LODWORD(ioData.__r_.__value_.__l.__data_) = 2;
  *&ioData.__r_.__value_.__l.__size_ = (v8 * v6);
  ioData.__r_.__value_.__r.__words[2] = 0;
  v113 = v88;
  boost::operators_impl::operator+(&v102, __p, &ioData);
  AMCP::DAL::DAL_Time_Range::DAL_Time_Range(buf, __p, &v102);
  if (v105)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v105);
  }

  if (*(&v113 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v113 + 1));
  }

  *v85 = *buf;
  v56 = *&buf[24];
  *(v85 + 2) = *&buf[16];
  *(v85 + 3) = v56;
  v57 = v115;
  *(v85 + 4) = v115;
  if (v57)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(v85 + 40) = v116;
  v58 = *(&v117 + 1);
  *(v85 + 7) = v117;
  *(v85 + 8) = v58;
  v59 = v118;
  *(v85 + 9) = v118;
  if (v59)
  {
    atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
    v60 = v118;
    v85[80] = 1;
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }
  }

  else
  {
    v85[80] = 1;
  }

  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

LABEL_80:
  *buf = &v97;
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
}

void sub_1DE31DA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *__p, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61)
{
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&a39, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&a40);
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&a60, 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&a61);
  v63 = *(v61 - 136);
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v64 = *(v61 - 152);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v61 - 192);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  *(v61 - 240) = &a34;
  std::vector<AMCP::DAL::Writable_Range::Direct_Write_Range,caulk::rt_allocator<AMCP::DAL::Writable_Range::Direct_Write_Range>>::__destroy_vector::operator()[abi:ne200100]((v61 - 240));
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = a2 + 1;
  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](a1, v4);
  v7 = a1 + 4;
  v6 = a1[4];
  a1[4] = 0;
  if (v6 == a1 + 1)
  {
    (*(*v6 + 32))(v6);
  }

  else if (v6)
  {
    (*(*v6 + 40))(v6);
  }

  v10 = a2[4];
  v9 = a2 + 4;
  v8 = v10;
  if (v10)
  {
    if (v8 == v5)
    {
      *v7 = (a1 + 1);
      (*(**v9 + 24))(*v9, a1 + 1);
      return a1;
    }

    *v7 = v8;
  }

  else
  {
    v9 = a1 + 4;
  }

  *v9 = 0;
  return a1;
}

uint64_t std::__function::__func<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1},std::allocator<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1}>,void ()(AudioBufferList *)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7Utility10create_ablEjEUlP15AudioBufferListE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

caulk::rt_safe_memory_resource *std::__function::__func<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1},std::allocator<AMCP::Utility::create_abl(unsigned int)::{lambda(AudioBufferList *)#1}>,void ()(AudioBufferList *)>::operator()(uint64_t a1, void **a2)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    return caulk::rt_safe_memory_resource::rt_deallocate(result, *a2);
  }

  __break(1u);
  return result;
}

void AMCP::DAL::Packetized_File_Reader::~Packetized_File_Reader(AMCP::DAL::Packetized_File_Reader *this)
{
  AMCP::DAL::Packetized_File_Reader::~Packetized_File_Reader(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5966720;
  v2 = *(this + 6);
  if (v2)
  {
    ExtAudioFileDispose(v2);
    *(this + 6) = 0;
  }

  v3 = (this + 128);
  std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](&v3);
  *this = &unk_1F597F3B0;
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }
}

void std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((v4 - 24));
      }

      while (v4 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    if (0xAAAAAAAAAAAAAAABLL * ((v6[2] - v5) >> 3) < 0xAAAAAAAAAAAAAABLL && (v7 = *MEMORY[0x1E69E3C08]) != 0)
    {

      caulk::rt_safe_memory_resource::rt_deallocate(v7, v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 - *a1;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v16 = v3 + 24 * a2;
      while (v4 != v16)
      {
        v4 = (v4 - 24);
        AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data(v4);
      }

      a1[1] = v16;
    }
  }

  else
  {
    v8 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v4) >> 3) >= v7)
    {
      v17 = 24 * ((24 * v7 - 24) / 0x18) + 24;
      bzero(a1[1], v17);
      a1[1] = v4 + v17;
    }

    else
    {
      if (a2 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v18[4] = a1;
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v3) >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a2)
      {
        v10 = a2;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      v12 = std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(v11);
      v13 = v12 + v5;
      v18[0] = v12;
      v18[1] = v12 + v5;
      v18[3] = v12 + 24 * v14;
      v15 = 24 * ((24 * v7 - 24) / 0x18) + 24;
      bzero(v12 + v5, v15);
      v18[2] = &v13[v15];
      std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__swap_out_circular_buffer(a1, v18);
      std::__split_buffer<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data> &>::~__split_buffer(v18);
    }
  }
}

caulk::rt_safe_memory_resource *std::allocator_traits<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::allocate_at_least[abi:ne200100]<caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>(caulk::rt_safe_memory_resource *result)
{
  if (result < 0xAAAAAAAAAAAAAABLL)
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

AMCP::DAL::Audio_Samples_Data *std::vector<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      v10 = *v8;
      *(v9 + 2) = *(v8 + 2);
      *v9 = v10;
      v9 += 24;
      v8 = (v8 + 24);
    }

    while (v8 != v5);
    do
    {
      AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data(result);
      result = (v11 + 24);
    }

    while (result != v5);
    result = *a1;
  }

  a2[1] = v7;
  *a1 = v7;
  *(a1 + 8) = result;
  a2[1] = result;
  v12 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v12;
  v13 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
  return result;
}

void std::__split_buffer<AMCP::DAL::Audio_Samples_Data,caulk::rt_allocator<AMCP::DAL::Audio_Samples_Data> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data((i - 24));
  }

  v4 = *a1;
  if (*a1)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - v4) >> 3) < 0xAAAAAAAAAAAAAABLL && *MEMORY[0x1E69E3C08])
    {
      caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], v4);
    }

    else
    {
      __break(1u);
    }
  }
}

void HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(int a1, void *lpsrc)
{
  if (!v2)
  {
    return;
  }

  v3 = v2[2];
  if (v3 != 1)
  {
    if (v3)
    {
      return;
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = 0;
    v7 = 0;
    v8 = *(v4 + 8);
    v9 = 47;
    do
    {
      v10 = &aLibraryCachesC_36[v6];
      if (v9 == 47)
      {
        v7 = &aLibraryCachesC_36[v6];
      }

      v9 = v10[1];
      if (!v10[1])
      {
        break;
      }

      v11 = v6++ >= 0xFFF;
    }

    while (!v11);
    if (*MEMORY[0x1E69E3C08])
    {
      if (v7)
      {
        v12 = v7 + 1;
      }

      else
      {
        v12 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Stream.cpp";
      }

      v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      v14 = v13;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *(v13 + 20) = 2;
      *(v13 + 24) = v12;
      *(v13 + 32) = 30;
      v15 = &unk_1F59667D0;
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    return;
  }

  v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = 0;
  v18 = 0;
  v8 = *(v16 + 8);
  v19 = 47;
  do
  {
    v20 = &aLibraryCachesC_36[v17];
    if (v19 == 47)
    {
      v18 = &aLibraryCachesC_36[v17];
    }

    v19 = v20[1];
    if (!v20[1])
    {
      break;
    }

    v11 = v17++ >= 0xFFF;
  }

  while (!v11);
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_35;
  }

  if (v18)
  {
    v21 = v18 + 1;
  }

  else
  {
    v21 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Stream.cpp";
  }

  v13 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  v14 = v13;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 20) = 2;
  *(v13 + 24) = v21;
  *(v13 + 32) = 33;
  v15 = &unk_1F5966828;
LABEL_30:
  *v13 = v15;
  caulk::concurrent::messenger::enqueue(v8, v14);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [ahal_dsp] DSP after process event (rt).", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_0,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
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
    v9 = 136315394;
    v10 = v6;
    v11 = 1024;
    v12 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d [ahal_dsp] DSP before process event (rt).", &v9, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  return caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
}

void caulk::concurrent::details::rt_message_call<HALS_DSPHostEventListener_Stream::on_dsp_event_REALTIME(AHAL_DSP::IDSPPluginEvent const&)::$_0,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

void HALS_DSPHostEventListener_Stream::on_dsp_event(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    if (v4)
    {
      v5 = v4;
      v6 = *(a2 + 8);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = 0;
        v12 = 0;
        v13 = 47;
        do
        {
          v14 = &aLibraryCachesC_36[v11];
          if (v13 == 47)
          {
            v12 = &aLibraryCachesC_36[v11];
          }

          v13 = v14[1];
          if (!v14[1])
          {
            break;
          }
        }

        while (v11++ < 0xFFF);
        if (v12)
        {
          v16 = v12 + 1;
        }

        else
        {
          v16 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostEventListener_Stream.cpp";
        }

        caulk::string_from_4cc(&__p, *(v5 + 2));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v18 = *(a1 + 8);
        *buf = 136315906;
        v21 = v16;
        v22 = 1024;
        v23 = 20;
        v24 = 2080;
        v25 = p_p;
        v26 = 1024;
        v27 = v18;
        _os_log_debug_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] DSP property changed %s (Context ID: %d)", buf, 0x22u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }
}

void sub_1DE31EAEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t caulk::string_from_4cc(std::string *retstr, unsigned int __val)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = bswap32(__val);
  v7 = v3;
  if ((v3 - 32) > 0x5E || ((v3 >> 8) - 32) > 0x5E || ((v3 << 8 >> 24) - 32) > 0x5E || ((v3 >> 24) - 32) > 0x5E)
  {
    return std::to_string(retstr, __val);
  }

  v8 = 39;
  v6 = 39;
  result = strlen(&v6);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(&retstr->__r_.__value_.__s + 23) = result;
  if (result)
  {
    result = memcpy(retstr, &v6, result);
  }

  retstr->__r_.__value_.__s.__data_[v5] = 0;
  return result;
}

void sub_1DE31EC44(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Control::~Control(AMCP::Control *this)
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

void AMCP::Slider_Control::~Slider_Control(AMCP::Slider_Control *this)
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

void AMCP::Level_Control::~Level_Control(AMCP::Level_Control *this)
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

void AMCP::Boolean_Control::~Boolean_Control(AMCP::Boolean_Control *this)
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

void AMCP::Selector_Control::~Selector_Control(AMCP::Selector_Control *this)
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

void AMCP::Stereo_Pan_Control::~Stereo_Pan_Control(AMCP::Stereo_Pan_Control *this)
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

uint64_t AMCP::Control::Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Object::Object(a1, a2, a3);
  *v4 = &unk_1F5966880;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x6163746C);
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
      v12 = "Control.cpp";
      v13 = 1024;
      v14 = 30;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_control)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE31F1F8(_Unwind_Exception *a1)
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

void sub_1DE31F414(_Unwind_Exception *a1)
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

uint64_t std::__function::__func<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,std::allocator<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP7ControlC1ERKNS_6DeviceEjjjjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,std::allocator<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  result = AMCP::is_base_of(0x6163746C, *(a1 + 16));
  if (result)
  {
    if (*(*(a1 + 8) + 8) == AMCP::Core::Core::get_simple_required_property<1870098034u>(*a2))
    {
      simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
      result = AMCP::is_base_of(*(a1 + 16), simple_required);
      if (result)
      {
        v6 = AMCP::Core::Core::get_simple_required_property<1668047219u>(*a2);
        v7 = AMCP::Core::Core::get_simple_required_property<1668506480u>(*a2);
        v8 = AMCP::Core::Core::get_simple_required_property<1667591277u>(*a2);
        result = 0;
        if (v6 == *(a1 + 20) && v7 == *(a1 + 24))
        {
          return v8 == *(a1 + 28);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1668506480u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "pcscbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 4;
      strcpy(__p, "cscp");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v9 = 1024;
      v10 = 391;
      v11 = 2080;
      v12 = "optional_value.operator BOOL() == true";
      v13 = 2080;
      v14 = __p;
      v15 = 1024;
      v16 = 1735159650;
      v17 = 1024;
      v18 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  return result;
}

void sub_1DE31F6CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_simple_required_property<1667591277u>(AMCP::Core::Core *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  strcpy(buf, "mlecbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v2 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 4;
      strcpy(__p, "celm");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v9 = 1024;
      v10 = 391;
      v11 = 2080;
      v12 = "optional_value.operator BOOL() == true";
      v13 = 2080;
      v14 = __p;
      v15 = 1024;
      v16 = 1735159650;
      v17 = 1024;
      v18 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  return result;
}

void sub_1DE31F84C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__n128 std::__function::__func<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0,std::allocator<AMCP::Control::Control(AMCP::Device const&,unsigned int,unsigned int,unsigned int,unsigned int)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59669D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

unint64_t AMCP::Control::get_scope(AMCP::Control *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1668506480u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Control::get_element(AMCP::Control *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1667591277u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::Control::is_read_only(AMCP::Control *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "odrcbolg");
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
          strcpy(__p, "crdo");
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
      v7 = 1;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

void sub_1DE31FBD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *AMCP::Control::Value_Observer::Value_Observer(void *a1, uint64_t **a2, uint64_t a3)
{
  v6 = **a2;
  v5 = (*a2)[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = v6;
    a1[1] = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  else
  {
    *a1 = v6;
    a1[1] = 0;
  }

  a1[2] = a3;
  return a1;
}

void AMCP::Control::Value_Observer::~Value_Observer(std::__shared_weak_count **this)
{
  AMCP::Control::Value_Observer::reset(this);
  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void AMCP::Control::Value_Observer::reset(AMCP::Control::Value_Observer *this)
{
  v2 = *(this + 1);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    if (*this)
    {
      v5 = *(this + 2);
      if (v5)
      {
        AMCP::Core::Conductor::destroy_control_value_observer(*(*this + 32), v5);
      }
    }

    *(this + 2) = 0;

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *(this + 2) = 0;
  }
}

void AMCP::Control::create_value_observer(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (!v5 || (v5 = std::__shared_weak_count::lock(v5), (v7 = v5) == 0) || !*(a1 + 16))
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      v25 = "Control.cpp";
      v26 = 1024;
      v27 = 119;
      v28 = 2080;
      v29 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v16, "No underlying object");
    std::runtime_error::runtime_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5992170;
    v18 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v17);
    v30 = "Control::Value_Observer AMCP::Control::create_value_observer(const Value_Observer_Proc &)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/Control.cpp";
    v32 = 119;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v15);
  }

  v8 = *(a1 + 32);
  v9 = *(**v8 + 32);
  *buf = *(a1 + 8);
  v10 = AMCP::Observer::Map<std::function<void ()>,unsigned int,true,std::less<unsigned int>>::register_observer(v9 + 2480, buf, a2);
  AMCP::Control::Value_Observer::Value_Observer(a3, v8, v10);

  std::__shared_weak_count::__release_shared[abi:ne200100](v7);
}

void sub_1DE31FFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, ...)
{
  va_start(va, a17);
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v20 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(va);
  std::runtime_error::~runtime_error(&a17);
  if (v19)
  {
    __cxa_free_exception(v18);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v20 - 129));
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Slider_Control::Slider_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F59668A0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x736C6472);
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
      v12 = "Control.cpp";
      v13 = 1024;
      v14 = 130;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_slider_control)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE32017C(_Unwind_Exception *a1)
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

void sub_1DE320310(_Unwind_Exception *a1)
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

unint64_t AMCP::Slider_Control::get_value(AMCP::Slider_Control *this)
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
    strcpy(buf, "vrdsbolg");
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
        strcpy(__p, "sdrv");
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

void sub_1DE32054C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Slider_Control::set_value(AMCP::Slider_Control *this, int a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F6273647276;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,unsigned int const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LODWORD(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE32069C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE320674);
}

uint64_t AMCP::Slider_Control::set_value_and_wait(AMCP::Slider_Control *this, int a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F6273647276;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,unsigned int const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LODWORD(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<unsigned int>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE32081C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3207F4);
}

unint64_t AMCP::Slider_Control::get_range(AMCP::Slider_Control *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "rrdsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(v5, buf);
      if ((v7 & 1) == 0)
      {
        v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v11 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v16 = 4;
          strcpy(__p, "sdrr");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v18 = 1024;
          v19 = 391;
          v20 = 2080;
          v21 = "optional_value.operator BOOL() == true";
          v22 = 2080;
          v23 = __p;
          v24 = 1024;
          v25 = 1735159650;
          v26 = 1024;
          v27 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v8 = v6 & 0xFFFFFFFF00000000;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v8 | v9;
}

void sub_1DE320A1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
LABEL_14:
    LOBYTE(v5) = 0;
    return v5 | (v2 << 8);
  }

  AMCP::Core::Core::find_operation(&v12, a1, a2);
  v5 = v12;
  if (v12)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<std::tuple<unsigned int,unsigned int> ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      v5 = AMCP::Core::Operation::call_function<std::tuple<unsigned int,unsigned int>>(v5);
LABEL_5:
      v7 = 0;
      v2 = v5 >> 8;
      goto LABEL_11;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v10, v5);
      v5 = AMCP::Thing::convert_to<std::tuple<unsigned int,unsigned int>>(v10);
      if (v11)
      {
        v11(0, v10, 0, 0);
      }

      goto LABEL_5;
    }

    LOBYTE(v5) = 0;
  }

  v7 = 1;
LABEL_11:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v7)
  {
    goto LABEL_14;
  }

  return v5 | (v2 << 8);
}

uint64_t AMCP::Level_Control::Level_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F59668C0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x6C65766C);
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
      v12 = "Control.cpp";
      v13 = 1024;
      v14 = 202;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_level_control)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE320C6C(_Unwind_Exception *a1)
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

void sub_1DE320E00(_Unwind_Exception *a1)
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

float AMCP::Level_Control::get_scalar_value(AMCP::Level_Control *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 0.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "vsclbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(v6, buf);
        if (!HIDWORD(v7))
        {
          v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v9 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            strcpy(__p, "lcsv");
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

        v3 = *&v7;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v3;
}

void sub_1DE321038(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
    goto LABEL_13;
  }

  AMCP::Core::Core::find_operation(&v14, a1, a2);
  v5 = v14;
  if (v14)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<float ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      AMCP::Core::Operation::call_function<float>(v5);
      v2 = v7;
LABEL_5:
      v8 = 0;
      goto LABEL_10;
    }

    v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v9))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v12, v5);
      v2 = AMCP::Thing::convert_to<float>(v12);
      if (v13)
      {
        v13(0, v12, 0, 0);
      }

      goto LABEL_5;
    }
  }

  v8 = 1;
LABEL_10:
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (!v8)
  {
    v10 = 0x100000000;
    return v10 | LODWORD(v2);
  }

LABEL_13:
  v10 = 0;
  LODWORD(v2) &= 0xFFFFFF00;
  return v10 | LODWORD(v2);
}

uint64_t AMCP::Level_Control::set_scalar_value(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C637376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE32128C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE321264);
}

uint64_t AMCP::Level_Control::set_scalar_value_and_wait(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C637376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE32140C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3213E4);
}

float AMCP::Level_Control::get_decibel_value(AMCP::Level_Control *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 0.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "vdclbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(v6, buf);
        if (!HIDWORD(v7))
        {
          v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v9 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            strcpy(__p, "lcdv");
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

        v3 = *&v7;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v3;
}

void sub_1DE3215F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Level_Control::set_decibel_value(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C636476;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE321748(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE321720);
}

uint64_t AMCP::Level_Control::set_decibel_value_and_wait(AMCP::Level_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F626C636476;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE3218C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3218A0);
}

double AMCP::Level_Control::get_decibel_range(AMCP::Level_Control *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    return 0.0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = *(this + 2);
    if (!v6)
    {
LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      return v4;
    }

    v21 = 0x676C6F626C636472;
    v22 = 0;
    has_property = AMCP::Core::Core::has_property(v6, &v21);
    if (!has_property)
    {
LABEL_19:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
        v20 = 4;
        strcpy(&__p, "lcdr");
        *buf = 136316418;
        v24 = "Core.h";
        v25 = 1024;
        v26 = 391;
        v27 = 2080;
        v28 = "optional_value.operator BOOL() == true";
        v29 = 2080;
        *v30 = &__p;
        *&v30[8] = 1024;
        v31 = 1735159650;
        v32 = 1024;
        v33 = 0;
        _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
        if (v20 < 0)
        {
          operator delete(__p);
        }
      }

      abort();
    }

    AMCP::Core::Core::find_operation(&__p, v6, &v21);
    v8 = __p;
    if (__p)
    {
      v9 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
      {
        AMCP::Core::Operation::call_function<CA::ValueRange>(v8);
        v4 = v10;
LABEL_8:
        v11 = 0;
        goto LABEL_14;
      }

      v12 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
      {
        AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v8);
        v4 = AMCP::Thing::convert_to<CA::ValueRange>(buf);
        if (*&v30[2])
        {
          (*&v30[2])(0, buf, 0, 0);
        }

        goto LABEL_8;
      }
    }

    v11 = 1;
LABEL_14:
    has_property = v19;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_19;
  }

  return v4;
}

void sub_1DE321B68(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<CA::ValueRange>(void *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Operation does not have requested function", v16);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ValueRange, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v18, "Invalid cast", v15);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = CA::ValueRange, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v5 + 48))(v5);
}

void sub_1DE322010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<CA::ValueRange ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[145];
}

float AMCP::Level_Control::convert_scalar_value_to_decibels(AMCP::Level_Control *this, float a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3)) == 0 || (v5 = *(this + 2)) == 0)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *&buf[4] = "Control.cpp";
      v49 = 1024;
      v50 = 314;
      v51 = 2080;
      v52 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v38, "No underlying object");
    std::runtime_error::runtime_error(&v41, &v38);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "float32_t AMCP::Level_Control::convert_scalar_value_to_decibels(float32_t) const";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/Control.cpp";
    v55 = 314;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v6 = v3;
  v34 = 0x676C6F626C637364;
  v35 = 0;
  operation = AMCP::Core::Core::find_operation(&v36, v5, &v34);
  v8 = v36;
  if (!v36)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v49 = 1024;
      v50 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "Operation does not have requested function", v32);
    std::runtime_error::runtime_error(&v40, &v39);
    std::runtime_error::runtime_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = float, Argument_Types = <float>]";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v55 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<float ()(float)>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v49 = 1024;
      v50 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "Operation does not have requested function", v33);
    std::runtime_error::runtime_error(&v40, &v39);
    std::runtime_error::runtime_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float>]";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v55 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<float ()(float)>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v49 = 1024;
      v50 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "Invalid cast", v31);
    std::runtime_error::runtime_error(&v40, &v39);
    std::runtime_error::runtime_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float>]";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v55 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  *buf = a2;
  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v13 = (*(*v12 + 48))(v12, buf);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v13;
}

void sub_1DE3229DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::runtime_error a28, char a29)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a13)
    {
      operator delete(a13);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
    std::runtime_error::~runtime_error(&a28);
    if (a26 < 0)
    {
      operator delete(a21);
    }

    if (v30)
    {
      __cxa_free_exception(v29);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 145));
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<float ()(float)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[147];
}

float AMCP::Level_Control::convert_decibel_value_to_scalar(AMCP::Level_Control *this, float a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = *(this + 3);
  if (!v3 || (v3 = std::__shared_weak_count::lock(v3)) == 0 || (v5 = *(this + 2)) == 0)
  {
    v15 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v15 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
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
      *&buf[4] = "Control.cpp";
      v49 = 1024;
      v50 = 321;
      v51 = 2080;
      v52 = "!core_ptr";
      _os_log_error_impl(&dword_1DE1F9000, v18, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s No underlying object", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v40);
    __cxa_allocate_exception(0x40uLL);
    std::runtime_error::runtime_error(&v38, "No underlying object");
    std::runtime_error::runtime_error(&v41, &v38);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "float32_t AMCP::Level_Control::convert_decibel_value_to_scalar(float32_t) const";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/API/Control.cpp";
    v55 = 321;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
  }

  v6 = v3;
  v34 = 0x676C6F626C637364;
  v35 = 0;
  operation = AMCP::Core::Core::find_operation(&v36, v5, &v34);
  v8 = v36;
  if (!v36)
  {
    v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v23 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(operation);
    }

    v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v24 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      v26 = *v25;
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }

    else
    {
      v26 = *v25;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Core.h";
      v49 = 1024;
      v50 = 202;
      _os_log_error_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "Operation does not have requested function", v32);
    std::runtime_error::runtime_error(&v40, &v39);
    std::runtime_error::runtime_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "Return_Type AMCP::Core::Core::call_operation_function(const Address &, Argument_Types...) const [Return_Type = float, Argument_Types = <float, BOOL>]";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Core.h";
    v55 = 202;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>();
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9);
  if (!v10)
  {
    v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v27 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v49 = 1024;
      v50 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "Operation does not have requested function", v33);
    std::runtime_error::runtime_error(&v40, &v39);
    std::runtime_error::runtime_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float, BOOL>]";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v55 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  v11 = v10;
  if (!*(v10 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>(), (v10 = (*(v11 + 7))(4, v11 + 24, 0, buf)) == 0))
  {
    v19 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v19 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v10);
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

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v49 = 1024;
      v50 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v22, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v47);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v39, "Invalid cast", v31);
    std::runtime_error::runtime_error(&v40, &v39);
    std::runtime_error::runtime_error(&v41, &v40);
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = -1;
    v41.__vftable = &unk_1F5992170;
    v42 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v41);
    v53 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = float, Argument_Types = <float, BOOL>]";
    v54 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v55 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v38);
  }

  *buf = a2;
  LOBYTE(v41.__vftable) = 1;
  v12 = *(v10 + 3);
  if (!v12)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v13 = (*(*v12 + 48))(v12, buf, &v41);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v13;
}

void sub_1DE3233EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, std::runtime_error a28, char a29)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a13)
    {
      operator delete(a13);
    }

    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v31 - 144);
    boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a29);
    std::runtime_error::~runtime_error(&a28);
    if (a26 < 0)
    {
      operator delete(a21);
    }

    if (v30)
    {
      __cxa_free_exception(v29);
    }

    AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v31 - 145));
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<float ()(float,BOOL)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[149];
}

uint64_t AMCP::Boolean_Control::Boolean_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F59668E0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x746F676C);
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
      v12 = "Control.cpp";
      v13 = 1024;
      v14 = 332;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_BOOLean_control)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE323678(_Unwind_Exception *a1)
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

void sub_1DE32380C(_Unwind_Exception *a1)
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

uint64_t AMCP::Boolean_Control::get_value(AMCP::Boolean_Control *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "lvcbbolg");
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
          strcpy(__p, "bcvl");
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

void sub_1DE323A4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Boolean_Control::set_value(AMCP::Boolean_Control *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F626263766CLL;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE323B9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE323B74);
}

uint64_t AMCP::Boolean_Control::set_value_and_wait(AMCP::Boolean_Control *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F626263766CLL;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE323D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE323CF4);
}

uint64_t AMCP::Selector_Control::Selector_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F5966900;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x736C6374);
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
      v12 = "Control.cpp";
      v13 = 1024;
      v14 = 394;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_selector_control)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE323E98(_Unwind_Exception *a1)
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

void sub_1DE32402C(_Unwind_Exception *a1)
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

uint64_t AMCP::Selector_Control::is_multi_value(AMCP::Selector_Control *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "mccsbolg");
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
          strcpy(__p, "sccm");
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

void sub_1DE32426C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Selector_Control::get_value(AMCP::Selector_Control *this)
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
    AMCP::Core::Core::get_simple_required_property<1935893353u>(&__p, v5);
    v6 = *__p;
    operator delete(__p);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

void AMCP::Core::Core::get_simple_required_property<1935893353u>(uint64_t *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, "iccsbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v11, a2, buf);
  if ((v13 & 1) == 0)
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
      strcpy(__p, "scci");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = v11;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v11, v12, (v12 - v11) >> 2);
  if (v4)
  {

    operator delete(v4);
  }
}

void sub_1DE3244C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

int8x8_t *AMCP::Selector_Control::set_value(AMCP::Selector_Control *this, int a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v9 = a2;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v9, &__p, 1uLL);
    v7 = AMCP::Core::Core::set_simple_property_value<1935893353u>(v7, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v7;
}

void sub_1DE32457C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324554);
}

uint64_t AMCP::Core::Core::set_simple_property_value<1935893353u>(int8x8_t *a1, uint64_t a2)
{
  v12 = 0x676C6F6273636369;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v9 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE3246A8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324690);
}

uint64_t AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(void *a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
  v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v4);
  if (!v5)
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v30 = 1024;
      v31 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "Operation does not have requested function", v18);
    std::runtime_error::runtime_error(&v21, &v20);
    std::runtime_error::runtime_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5992170;
    v23 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
    v32 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const std::vector<unsigned int> &>]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v34 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v6 = v5;
  if (!*(v5 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>(), (v5 = (*(v6 + 7))(4, v6 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
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
      *&buf[4] = "Operation.h";
      v30 = 1024;
      v31 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v28);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v20, "Invalid cast", v17);
    std::runtime_error::runtime_error(&v21, &v20);
    std::runtime_error::runtime_error(&v22, &v21);
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = -1;
    v22.__vftable = &unk_1F5992170;
    v23 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v22);
    v32 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = void, Argument_Types = <const std::vector<unsigned int> &>]";
    v33 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v34 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v19);
  }

  v7 = *(v5 + 3);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v7 + 48))(v7, a2);
}

void sub_1DE324B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[153];
}

int8x8_t *AMCP::Selector_Control::set_value_and_wait(AMCP::Selector_Control *this, int a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v9 = a2;
    v11 = 0;
    v12 = 0;
    __p = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, &v9, &__p, 1uLL);
    v7 = AMCP::Core::Core::set_simple_property_value_and_wait<1935893353u>(v7, &__p);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v7;
}

void sub_1DE324D3C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324D14);
}

uint64_t AMCP::Core::Core::set_simple_property_value_and_wait<1935893353u>(int8x8_t *a1, uint64_t a2)
{
  v12 = 0x676C6F6273636369;
  v13 = 0;
  if (!AMCP::Core::Core::is_property_settable(a1, &v12))
  {
    return 0;
  }

  AMCP::Core::Core::find_operation(&v10, a1, &v12);
  v4 = v10;
  if (!v10)
  {
LABEL_11:
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return 0;
  }

  v5 = AMCP::Implementation::get_type_marker<std::function<void ()(std::vector<unsigned int> const&)>>();
  if (!std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v5))
  {
    v7 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v7))
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v8, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
      v9 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
      AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v4, v8);
      if (v9)
      {
        v9(0, v8, 0, 0);
      }

      goto LABEL_5;
    }

    goto LABEL_11;
  }

  AMCP::Core::Operation::call_function<void,std::vector<unsigned int> const&>(v4, a2);
LABEL_5:
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return 1;
}

void sub_1DE324E68(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  AMCP::Thing::~Thing(&a9);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE324E50);
}

void AMCP::Selector_Control::get_multi_value(AMCP::Selector_Control *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v6 = v5;
    v7 = *(this + 2);
    if (v7)
    {
      AMCP::Core::Core::get_simple_required_property<1935893353u>(a2, v7);
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

uint64_t AMCP::Selector_Control::set_multi_value(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = AMCP::Core::Core::set_simple_property_value<1935893353u>(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

uint64_t AMCP::Selector_Control::set_multi_value_and_wait(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = AMCP::Core::Core::set_simple_property_value_and_wait<1935893353u>(v7, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

void AMCP::Selector_Control::get_item_list(AMCP::Selector_Control *this@<X0>, void *a2@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  if (!v4 || (v5 = std::__shared_weak_count::lock(v4)) == 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v18 = 0x676C6F6273636169;
    v19 = 0;
    has_property = AMCP::Core::Core::has_property(v7, &v18);
    if (!has_property)
    {
      goto LABEL_22;
    }

    AMCP::Core::Core::find_operation(&v25, v7, &v18);
    v9 = v25;
    if (v25)
    {
      v10 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v10))
      {
        AMCP::Core::Operation::call_function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(buf, v9);
        v17 = *&buf[8];
        v20 = *buf;
        v21 = *&buf[16];
        memset(buf, 0, 24);
        v22 = 1;
        __p[0] = buf;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_8:
        v11 = 0;
        v9 = v17;
        goto LABEL_15;
      }

      v12 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
      if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v9, v12))
      {
        AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v9);
        AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(__p, buf);
        v17 = __p[1];
        v20 = *__p;
        v21 = v24;
        __p[1] = 0;
        v24 = 0;
        __p[0] = 0;
        v22 = 1;
        v27 = __p;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v27);
        if (*&v30[2])
        {
          (*&v30[2])(0, buf, 0, 0);
        }

        goto LABEL_8;
      }
    }

    v11 = 1;
LABEL_15:
    has_property = v26;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }

    if ((v11 & 1) == 0)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a2, v20, v9, (v9 - v20) >> 4);
      *buf = &v20;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_19;
    }

LABEL_22:
    LOBYTE(v20) = 0;
    v22 = 0;
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
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
      HIBYTE(v24) = 4;
      strcpy(__p, "scai");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      *&buf[12] = 1024;
      *&buf[14] = 391;
      *&buf[18] = 2080;
      *&buf[20] = "optional_value.operator BOOL() == true";
      v29 = 2080;
      *v30 = __p;
      *&v30[8] = 1024;
      v31 = 1735159650;
      v32 = 1024;
      v33 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
LABEL_19:

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
}

void sub_1DE32534C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Operation does not have requested function", v17);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<unsigned int, unsigned int, applesauce::CF::StringRef>>, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
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
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v29 = 1024;
      v30 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v27);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v19, "Invalid cast", v16);
    std::runtime_error::runtime_error(&v20, &v19);
    std::runtime_error::runtime_error(&v21, &v20);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1;
    v21.__vftable = &unk_1F5992170;
    v22 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v21);
    v31 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<std::tuple<unsigned int, unsigned int, applesauce::CF::StringRef>>, Argument_Types = <>]";
    v32 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v33 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v18);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6);
}

void sub_1DE3257FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>> ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[155];
}

uint64_t AMCP::Stereo_Pan_Control::Stereo_Pan_Control(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Control::Control(a1, a2, a3);
  *v4 = &unk_1F5966920;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x7370616E);
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
      v12 = "Control.cpp";
      v13 = 1024;
      v14 = 520;
      v15 = 2080;
      v16 = "constructed_correct_class(k_class_id_stereo_pan_control)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v11, 0x1Cu);
    }

    abort();
  }

  return a1;
}

void sub_1DE325A50(_Unwind_Exception *a1)
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

void sub_1DE325BE4(_Unwind_Exception *a1)
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

float AMCP::Stereo_Pan_Control::get_value(AMCP::Stereo_Pan_Control *this)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 0.5;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "vcpsbolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<float,std::enable_if<true,void>>(v6, buf);
        if (!HIDWORD(v7))
        {
          v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v9 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            strcpy(__p, "spcv");
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

        v3 = *&v7;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return v3;
}

void sub_1DE325E1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Stereo_Pan_Control::set_value(AMCP::Stereo_Pan_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F6273706376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE325F6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE325F44);
}

uint64_t AMCP::Stereo_Pan_Control::set_value_and_wait(AMCP::Stereo_Pan_Control *this, float a2)
{
  v12 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v17 = 0x676C6F6273706376;
        v18 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v17))
        {
          AMCP::Core::Core::find_operation(&v15, v7, &v17);
          v8 = v15;
          if (v15)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,float const&>(v8, &v12);
LABEL_8:
              if (v16)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v16);
              }

              v7 = 1;
              goto LABEL_18;
            }

            v10 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v10))
            {
              memset(v13, 0, sizeof(v13));
              *v13 = a2;
              v14 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v13);
              if (v14)
              {
                v14(0, v13, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }
        }

        v7 = 0;
      }

LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v7;
    }
  }

  return 0;
}

void sub_1DE3260EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE3260C4);
}

unint64_t AMCP::Stereo_Pan_Control::get_channels(AMCP::Stereo_Pan_Control *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ccpsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<std::tuple<unsigned int,unsigned int>,std::enable_if<true,void>>(v5, buf);
      if ((v7 & 1) == 0)
      {
        v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v11 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
          v16 = 4;
          strcpy(__p, "spcc");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v18 = 1024;
          v19 = 391;
          v20 = 2080;
          v21 = "optional_value.operator BOOL() == true";
          v22 = 2080;
          v23 = __p;
          v24 = 1024;
          v25 = 1735159650;
          v26 = 1024;
          v27 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v8 = v6 & 0xFFFFFFFF00000000;
      v9 = v6;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  return v8 | v9;
}

void sub_1DE3262EC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::compute_system_differences(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v73 = 0;
  v74 = 0;
  v75 = 0;
  for (i = (a2 + 2); ; std::vector<unsigned int>::push_back[abi:ne200100](&v73, i + 4))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v70 = 0;
  v71 = 0;
  v7 = (a3 + 2);
  v72 = 0;
  while (1)
  {
    v7 = *v7;
    if (!v7)
    {
      break;
    }

    std::vector<unsigned int>::push_back[abi:ne200100](&v70, v7 + 4);
  }

  v8 = v73;
  v9 = v74;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v10 = v70;
  v11 = v71;
  std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
  v69 = 0;
  v67 = 0u;
  v68 = 0u;
  *v65 = 0u;
  v66 = 0u;
  if (v8 != v9)
  {
    while (1)
    {
      if (v10 == v11)
      {
        do
        {
          std::vector<unsigned int>::push_back[abi:ne200100](&v66 + 8, v8++);
        }

        while (v8 != v9);
        goto LABEL_18;
      }

      if (*v8 == *v10)
      {
        break;
      }

      if (*v8 >= *v10)
      {
        std::vector<unsigned int>::push_back[abi:ne200100](&v68, v10);
        goto LABEL_14;
      }

      std::vector<unsigned int>::push_back[abi:ne200100](&v66 + 8, v8++);
LABEL_15:
      if (v8 == v9)
      {
        goto LABEL_18;
      }
    }

    std::vector<unsigned int>::push_back[abi:ne200100](v65, v8++);
LABEL_14:
    ++v10;
    goto LABEL_15;
  }

LABEL_18:
  for (j = a1; v10 != v11; ++v10)
  {
    std::vector<unsigned int>::push_back[abi:ne200100](&v68, v10);
  }

  memset(v63, 0, sizeof(v63));
  v64 = 1065353216;
  v12 = v65[0];
  v49 = v65[1];
  if (v65[0] != v65[1])
  {
LABEL_21:
    v13 = *v12;
    v14 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>::find<unsigned int>(*a2, a2[1], *v12);
    if (v14)
    {
      v15 = v14;
      v16 = std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>::find<unsigned int>(*a3, a3[1], v13);
      if (v16)
      {
        v17 = v16;
        *__p = 0u;
        *v51 = 0u;
        v52 = 1065353216;
        v82 = 0u;
        v83 = 0u;
        v84 = 1065353216;
        v79 = 0u;
        v80 = 0u;
        v81 = 1065353216;
        v76 = 0u;
        v77 = 0u;
        v78 = 1065353216;
        v18 = v15[5];
        if (!v18)
        {
LABEL_34:
          for (k = v17[5]; k; k = *k)
          {
            if (!std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::find<AMCP::Address>(v15 + 3, (k + 16)))
            {
              std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(&v76, (k + 16), k + 16);
            }
          }

          _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_13unordered_mapIN4AMCP7AddressENS4_5ThingENS5_4HashENS5_14Is_Exact_MatchENS_9allocatorINS_4pairIKS5_S6_EEEEEESE_SE_SE_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJSE_SE_SE_SE_EJEJEJRSE_SH_SH_SH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(v59, __p, &v82, &v79, &v76);
          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v77);
          v26 = v76;
          *&v76 = 0;
          if (v26)
          {
            operator delete(v26);
          }

          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v80);
          v27 = v79;
          *&v79 = 0;
          if (v27)
          {
            operator delete(v27);
          }

          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v83);
          v28 = v82;
          *&v82 = 0;
          if (v28)
          {
            operator delete(v28);
          }

          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v51[0]);
          v29 = __p[0];
          __p[0] = 0;
          if (v29)
          {
            operator delete(v29);
          }

          _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_13unordered_mapIN4AMCP7AddressENS4_5ThingENS5_4HashENS5_14Is_Exact_MatchENS_9allocatorINS_4pairIKS5_S6_EEEEEESE_SE_SE_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJSE_SE_SE_SE_EJEJEJRSE_SH_SH_SH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(__p, v59, v60, v61, v62);
          v30 = *v12;
          if (!*(&v63[0] + 1))
          {
            goto LABEL_62;
          }

          v31 = vcnt_s8(*(v63 + 8));
          v31.i16[0] = vaddlv_u8(v31);
          if (v31.u32[0] > 1uLL)
          {
            v32 = *v12;
            if (*(&v63[0] + 1) <= v30)
            {
              v32 = v30 % DWORD2(v63[0]);
            }
          }

          else
          {
            v32 = (DWORD2(v63[0]) - 1) & v30;
          }

          v33 = *(*&v63[0] + 8 * v32);
          if (!v33 || (v34 = *v33) == 0)
          {
LABEL_62:
            operator new();
          }

          while (1)
          {
            v35 = v34[1];
            if (v35 == v30)
            {
              if (*(v34 + 4) == v30)
              {
                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v58);
                v36 = v57;
                v57 = 0;
                if (v36)
                {
                  operator delete(v36);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v56);
                v37 = v55;
                v55 = 0;
                if (v37)
                {
                  operator delete(v37);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v54);
                v38 = v53;
                v53 = 0;
                if (v38)
                {
                  operator delete(v38);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v51[0]);
                v39 = __p[0];
                __p[0] = 0;
                if (v39)
                {
                  operator delete(v39);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v62[2]);
                v40 = v62[0];
                v62[0] = 0;
                if (v40)
                {
                  operator delete(v40);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v61[2]);
                v41 = v61[0];
                v61[0] = 0;
                if (v41)
                {
                  operator delete(v41);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v60[2]);
                v42 = v60[0];
                v60[0] = 0;
                if (v42)
                {
                  operator delete(v42);
                }

                std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(v59[2]);
                v43 = v59[0];
                v59[0] = 0;
                if (v43)
                {
                  operator delete(v43);
                }

                if (++v12 == v49)
                {
                  goto LABEL_80;
                }

                goto LABEL_21;
              }
            }

            else
            {
              if (v31.u32[0] > 1uLL)
              {
                if (v35 >= *(&v63[0] + 1))
                {
                  v35 %= *(&v63[0] + 1);
                }
              }

              else
              {
                v35 &= *(&v63[0] + 1) - 1;
              }

              if (v35 != v32)
              {
                goto LABEL_62;
              }
            }

            v34 = *v34;
            if (!v34)
            {
              goto LABEL_62;
            }
          }
        }

        while (1)
        {
          v19 = (v18 + 16);
          v20 = std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::find<AMCP::Address>(v17 + 3, (v18 + 16));
          if (v20)
          {
            v21 = v20;
            if (v18 != v20)
            {
              v22 = *(v18 + 64);
              v23 = v20[8];
              if (v22 && v23)
              {
                if (!(v22)(5, v18 + 32, v20 + 4, 0))
                {
                  goto LABEL_32;
                }
              }

              else if (v22 | v23)
              {
LABEL_32:
                v19 = (v21 + 2);
                v24 = &v82;
                goto LABEL_33;
              }
            }

            v24 = __p;
          }

          else
          {
            v24 = &v79;
          }

LABEL_33:
          std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(v24, v19, v19);
          v18 = *v18;
          if (!v18)
          {
            goto LABEL_34;
          }
        }
      }

      v46 = 50;
      v47 = "after_iter != in_after.end()";
    }

    else
    {
      v46 = 47;
      v47 = "before_iter != in_before.end()";
    }

    __assert_rtn("compute_system_differences", "Snapshot.cpp", v46, v47);
  }

LABEL_80:
  *j = 0;
  j[1] = 0;
  j[2] = 0;
  v44 = v68;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(j, v68, *(&v68 + 1), (*(&v68 + 1) - v68) >> 2);
  j[3] = 0;
  j[4] = 0;
  j[5] = 0;
  v45 = *(&v66 + 1);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(j + 3, *(&v66 + 1), v67, (v67 - *(&v66 + 1)) >> 2);
  std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>::unordered_map((j + 6), v63);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::~__hash_table(v63);
  if (v44)
  {
    operator delete(v44);
  }

  if (v45)
  {
    operator delete(v45);
  }

  if (v65[0])
  {
    operator delete(v65[0]);
  }

  if (v70)
  {
    operator delete(v70);
  }

  if (v73)
  {
    operator delete(v73);
  }
}

void sub_1DE3269DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(a10 + 32) = v12;
    operator delete(v12);
  }

  v13 = *a10;
  if (*a10)
  {
    *(a10 + 8) = v13;
    operator delete(v13);
  }

  __clang_call_terminate(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>::find<unsigned int>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__112__tuple_implINS_15__tuple_indicesIJLm0ELm1ELm2ELm3EEEEJNS_13unordered_mapIN4AMCP7AddressENS4_5ThingENS5_4HashENS5_14Is_Exact_MatchENS_9allocatorINS_4pairIKS5_S6_EEEEEESE_SE_SE_EEC2B8ne200100IJLm0ELm1ELm2ELm3EEJSE_SE_SE_SE_EJEJEJRSE_SH_SH_SH_EEENS1_IJXspT_EEEENS_13__tuple_typesIJDpT0_EEENS1_IJXspT1_EEEENSJ_IJDpT2_EEEDpOT3_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(a1, a2);
  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(v9 + 40, a3);
  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(a1 + 80, a4);
  std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(a1 + 120, a5);
  return a1;
}

void sub_1DE326B6C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v1 + 10);
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v1 + 5);
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void **std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 18);
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 13);
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 8);
      std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__deallocate_node(void *__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      v3 = v1[8];
      if (v3)
      {
        v3(0, v1 + 4, 0, 0);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 18);
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 13);
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 8);
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::~__hash_table(__p + 3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(a1, i + 4, (i + 4));
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::__emplace_unique_key_args<AMCP::Address,std::pair<AMCP::Address const,AMCP::Thing> const&>(void *a1, unsigned int *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_19;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_19;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  if (v11[2] != __PAIR64__(v4, v3) || *(v11 + 6) != v5)
  {
    goto LABEL_18;
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Address,AMCP::Thing>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[8];
    if (v3)
    {
      v3(0, __p + 4, 0, 0);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Address,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,AMCP::Thing>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,AMCP::Thing>>>::find<AMCP::Address>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 & 0xFF000000 | (v3 << 32) | *&v5 & 0xFFFFFFLL;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  for (result = *v9; result; result = *result)
  {
    v11 = result[1];
    if (v6 == v11)
    {
      if (result[2] == __PAIR64__(v4, v3) && *(result + 6) == v5)
      {
        return result;
      }
    }

    else
    {
      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v2)
        {
          v11 %= *&v2;
        }
      }

      else
      {
        v11 &= *&v2 - 1;
      }

      if (v11 != v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>> const&>( a1,  *(i + 4),  i + 4);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>> const&>(void *a1, unsigned int a2, _DWORD *a3)
{
  v3 = a1[1];
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
}

void *AMCP::Core::make_external_diff(void *a1, uint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v33 = 0;
  *v34 = 0;
  *&v34[8] = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1 + 3, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 2);
  a1[6] = v33;
  *(a1 + 7) = *v34;
  *v34 = 0;
  *&v34[8] = 0;
  v33 = 0;
  result = boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::~vector(&v33);
  v5 = *(a2 + 64);
  if (v5)
  {
    v19 = "emplace";
    v20 = "this->priv_in_range_or_end(position)";
    do
    {
      if (v5[11] || v5[16] || v5[21])
      {
        memset(v29, 0, sizeof(v29));
        for (i = v5[10]; i; i = *i)
        {
          boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(&v33, v29, 0, i + 4, (i + 8));
        }

        memset(v28, 0, sizeof(v28));
        for (j = v5[15]; j; j = *j)
        {
          boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(&v33, v28, 0, j + 4, (j + 8));
        }

        memset(v27, 0, sizeof(v27));
        for (k = v5[20]; k; k = *k)
        {
          boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(&v33, v27, 0, k + 4, (k + 8));
        }

        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(&v21, v29);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(&v23, v28);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::vector(&v25, v27);
        v30 = 0;
        inserted = 0;
        v32 = 0;
        v10 = a1[6];
        v9 = a1[7];
        if (!v10 && v9)
        {
          __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
        }

        v11 = &v10[80 * v9];
        v33 = v11;
        inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>>::priv_insert_unique_prepare(v10, &v33, *(v5 + 4), &v32);
        v12 = v32;
        if (inserted)
        {
          v13 = 1862;
          if (v10 > v32 || v32 > v11)
          {
            goto LABEL_35;
          }

          v14 = a1[8];
          if (v14 < v9)
          {
            v13 = 2821;
            v19 = "priv_insert_forward_range";
            v20 = "this->m_holder.capacity() >= this->m_holder.m_size";
LABEL_35:
            __assert_rtn(v19, "vector.hpp", v13, v20);
          }

          if (v14 == v9)
          {
            boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>*,unsigned int const&,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>(&v30, a1 + 48, v32, &v21, v5 + 4);
          }

          else if (v11 == v32)
          {
            *v11 = *(v5 + 4);
            *(v11 + 8) = v21;
            *(v11 + 16) = v22;
            v22 = 0uLL;
            v21 = 0;
            *(v11 + 32) = v23;
            *(v11 + 40) = v24;
            v24 = 0uLL;
            v23 = 0;
            *(v11 + 56) = v25;
            *(v11 + 64) = v26;
            v25 = 0;
            v26 = 0uLL;
            ++a1[7];
          }

          else
          {
            v15 = v11 - 80;
            *v11 = *(v11 - 80);
            *(v11 + 8) = *(v11 - 72);
            *(v11 + 16) = *(v11 - 64);
            *(v11 - 72) = 0;
            *(v11 - 64) = 0;
            *(v11 + 32) = *(v11 - 48);
            *(v11 + 40) = *(v11 - 40);
            *(v11 - 56) = 0;
            *(v11 - 48) = 0;
            *(v11 - 40) = 0;
            *(v11 - 32) = 0;
            *(v11 + 56) = *(v11 - 24);
            *(v11 + 64) = *(v11 - 16);
            *(v11 - 16) = 0;
            *(v11 - 8) = 0;
            *(v11 - 24) = 0;
            ++a1[7];
            if ((v11 - 80) != v12)
            {
              v16 = (v11 - 80);
              do
              {
                v17 = *(v16 - 20);
                v16 -= 80;
                *v15 = v17;
                std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>((v15 + 8), (v15 - 72));
                v15 = v16;
              }

              while (v16 != v12);
            }

            LODWORD(v33) = *(v5 + 4);
            v18 = v21;
            *&v34[8] = v22;
            v21 = 0;
            v22 = 0uLL;
            *v34 = v18;
            v35 = v23;
            v36 = v24;
            v23 = 0;
            v24 = 0uLL;
            v37 = v25;
            v38 = v26;
            v25 = 0;
            v26 = 0uLL;
            *v12 = v33;
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>(v12 + 1, v34);
            boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v37);
            boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v35);
            boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v34);
          }
        }

        else
        {
          if (v9 < 0xCCCCCCCCCCCCCCCDLL * ((v32 - v10) >> 4))
          {
            __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
          }

          v30 = v32;
          std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>(v32 + 1, &v21);
        }

        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v25);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v23);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(&v21);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v27);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v28);
        result = boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v29);
      }

      v5 = *v5;
    }

    while (v5);
  }

  return result;
}

void sub_1DE327908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    v14 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v14;
      operator delete(v14);
    }

    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::~vector(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 32);
    do
    {
      --v2;
      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v3 + 3);
      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v3);
      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v3 - 3);
      v3 += 10;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

void boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::insert_or_assign<AMCP::Address const&,AMCP::Thing const&>(uint64_t a1, char *a2, char *a3, unsigned int *a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  *(a1 + 8) = 0;
  v50 = 0;
  v9 = *a2;
  if (!a3)
  {
    v26 = *(a2 + 1);
    if (v9)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26 == 0;
    }

    if (!v27)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v18 = &v9[14 * v26];
LABEL_30:
    v51 = v18;
    goto LABEL_31;
  }

  v10 = *(a2 + 1);
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

  v12 = &v9[14 * v10];
  if (v12 == a3)
  {
    goto LABEL_15;
  }

  v13 = *a4;
  v14 = a4[1];
  v16 = *a3;
  v15 = *(a3 + 1);
  v17 = *a4 == *a3;
  if (v14 >= v15)
  {
    v17 = 0;
  }

  if (v13 < v16 || v17 || v13 == v16 && v14 == v15 && a4[2] < *(a3 + 2))
  {
LABEL_15:
    v50 = a3;
    if (v9 == a3)
    {
      goto LABEL_23;
    }

    v19 = *(a3 - 14);
    v20 = *(a3 - 13);
    v18 = a3 - 56;
    v21 = *a4;
    v22 = a4[1];
    v23 = v19 == *a4;
    if (v20 >= v22)
    {
      v23 = 0;
    }

    if (v19 < v21 || v23 || (v24 = *(a3 - 12), v25 = a4[2], v19 == v21) && v20 == v22 && v24 < v25)
    {
LABEL_23:
      *(a1 + 8) = 1;
      goto LABEL_32;
    }

    v45 = v19 == v21 && v22 < v20;
    v47 = v20 == v22 && v25 < v24;
    if (v21 >= v19 && !v45 && !v47)
    {
      v50 = a3 - 56;
      *(a1 + 8) = 0;
      goto LABEL_67;
    }

    goto LABEL_30;
  }

  v51 = v12;
  v9 = a3;
LABEL_31:
  inserted = boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::priv_insert_unique_prepare(v9, &v51, a4, &v50);
  *(a1 + 8) = inserted;
  if (inserted)
  {
LABEL_32:
    v29 = v50;
    v30 = *a2;
    if (*a2 > v50)
    {
      goto LABEL_71;
    }

    v31 = *(a2 + 1);
    if (!v30 && v31)
    {
      __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
    }

    v32 = &v30[14 * v31];
    if (v50 > v32)
    {
LABEL_71:
      __assert_rtn("emplace", "vector.hpp", 1862, "this->priv_in_range_or_end(position)");
    }

    v33 = *(a2 + 2);
    if (v33 < v31)
    {
      __assert_rtn("priv_insert_forward_range", "vector.hpp", 2821, "this->m_holder.capacity() >= this->m_holder.m_size");
    }

    if (v33 == v31)
    {
      v49 = v50;

      boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,boost::container::dtl::pair<AMCP::Address,AMCP::Thing>*,AMCP::Address const&,AMCP::Thing const&>>(a1, a2, v49, a5, a4);
    }

    else
    {
      if (v32 == v50)
      {
        *v32 = *a4;
        v41 = a4[2];
        *(v32 + 16) = 0u;
        v42 = v32 + 16;
        *(v42 - 8) = v41;
        *(v42 + 16) = 0u;
        *(v42 + 32) = 0;
        v43 = *(a5 + 32);
        if (v43)
        {
          v43(1, a5);
        }

        ++*(a2 + 1);
      }

      else
      {
        v34 = v32 - 56;
        boost::container::dtl::pair<AMCP::Address,AMCP::Thing>::pair(v32, v32 - 56);
        ++*(a2 + 1);
        if (v34 != v29)
        {
          v36 = v34;
          do
          {
            v37 = *(v36 - 7);
            v36 -= 56;
            *v34 = v37;
            *(v34 + 8) = *(v34 - 48);
            AMCP::swap((v34 - 40), (v34 + 16), v35);
            v34 = v36;
          }

          while (v36 != v29);
        }

        v38 = *a4;
        v51 = *a4;
        v39 = a4[2];
        v52 = v39;
        memset(v53, 0, sizeof(v53));
        v54 = 0;
        v40 = *(a5 + 32);
        if (v40)
        {
          v40(1, a5, v53, 0);
          v38 = v51;
          v39 = v52;
        }

        *v29 = v38;
        *(v29 + 2) = v39;
        AMCP::swap(v53, (v29 + 16), v35);
        if (v54)
        {
          v54(0, v53, 0, 0);
        }
      }

      *a1 = v29;
    }

    return;
  }

LABEL_67:
  if (*(a2 + 1) < (0x6DB6DB6DB6DB6DB7 * (&v50[-*a2] >> 3)))
  {
    __assert_rtn("nth", "vector.hpp", 1688, "this->m_holder.m_size >= n");
  }

  v48 = v50;
  *a1 = v50;

  AMCP::Thing::operator=((v48 + 16), a5, a3);
}

void sub_1DE327EA8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void **boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(void **a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = (*a1 + 48);
    do
    {
      if (*v3)
      {
        (*v3)(0, (v3 - 4), 0, 0);
      }

      v3 += 7;
      --v2;
    }

    while (v2);
  }

  if (a1[2])
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL boost::container::dtl::flat_tree<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::dtl::select1st<unsigned int>,std::less<unsigned int>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>>::priv_insert_unique_prepare(char *a1, char **a2, unsigned int a3, char **a4)
{
  if (*a2 != a1)
  {
    v4 = 0xCCCCCCCCCCCCCCCDLL * ((*a2 - a1) >> 4);
    do
    {
      if (v4 != 1 && !a1)
      {
        __assert_rtn("operator+=", "vector.hpp", 181, "m_ptr || !off");
      }

      if (!a1)
      {
        __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
      }

      v5 = v4 >> 1;
      v6 = &a1[80 * (v4 >> 1)];
      v8 = *v6;
      v7 = v6 + 20;
      v4 += ~(v4 >> 1);
      if (v8 >= a3)
      {
        v4 = v5;
      }

      else
      {
        a1 = v7;
      }
    }

    while (v4);
  }

  *a4 = a1;
  if (a1 == *a2)
  {
    return 1;
  }

  if (!a1)
  {
    __assert_rtn("operator*", "vector.hpp", 156, "!!m_ptr");
  }

  return *a1 > a3;
}

char **std::__memberwise_forward_assign[abi:ne200100]<std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,0ul,1ul,2ul>(char **a1, char **a2)
{
  v4 = boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(a1, a2);
  boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(v4 + 3, a2 + 3);

  return boost::container::dtl::flat_tree<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::dtl::select1st<AMCP::Address>,AMCP::Address::Is_Exact_Before,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>>::Data::operator=(a1 + 6, a2 + 6);
}

void boost::container::vector<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>,boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,void>::priv_insert_forward_range_no_capacity<boost::container::dtl::insert_emplace_proxy<boost::container::new_allocator<boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>,boost::container::dtl::pair<unsigned int,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>*,unsigned int const&,std::tuple<boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>,boost::container::flat_map<AMCP::Address,AMCP::Thing,AMCP::Address::Is_Exact_Before,void>>>>(void *a1, char *a2, char *a3, uint64_t a4, _DWORD *a5)
{
  v5 = *(a2 + 2);
  if (v5 != *(a2 + 1))
  {
    __assert_rtn("next_capacity", "vector.hpp", 473, "additional_objects > size_type(this->m_capacity - this->m_size)");
  }

  if (v5 == 0x199999999999999)
  {
    goto LABEL_28;
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
  if (v7 >= 0x199999999999999)
  {
    v7 = 0x199999999999999;
  }

  v9 = v8 > v7 ? v5 + 1 : v7;
  if (v8 > 0x199999999999999)
  {
LABEL_28:
    boost::container::throw_length_error("get_next_capacity, allocator's max size reached", a2);
  }

  v15 = *a2;
  v16 = operator new(80 * v9);
  v17 = v16;
  v18 = *a2;
  v19 = (*a2 + 80 * *(a2 + 1));
  v20 = v16;
  if (*a2 != a3)
  {
    v21 = *a2;
    v20 = v16;
    do
    {
      *v20 = *v21;
      *(v20 + 1) = *(v21 + 8);
      *(v20 + 1) = *(v21 + 16);
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 8) = 0;
      *(v20 + 4) = *(v21 + 32);
      *(v20 + 40) = *(v21 + 40);
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 32) = 0;
      *(v20 + 7) = *(v21 + 56);
      *(v20 + 4) = *(v21 + 64);
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      *(v21 + 72) = 0;
      v21 += 80;
      v20 += 80;
    }

    while (v21 != a3);
  }

  *v20 = *a5;
  *(v20 + 1) = *a4;
  *(v20 + 1) = *(a4 + 8);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(v20 + 4) = *(a4 + 24);
  *(v20 + 40) = *(a4 + 32);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 24) = 0;
  *(v20 + 7) = *(a4 + 48);
  *(v20 + 4) = *(a4 + 56);
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  if (v19 != a3)
  {
    v22 = v20 + 144;
    v23 = a3;
    do
    {
      *(v22 - 16) = *v23;
      *(v22 - 7) = *(v23 + 1);
      *(v22 - 3) = *(v23 + 1);
      *(v23 + 2) = 0;
      *(v23 + 3) = 0;
      *(v23 + 1) = 0;
      *(v22 - 4) = *(v23 + 4);
      *(v22 - 24) = *(v23 + 40);
      *(v23 + 5) = 0;
      *(v23 + 6) = 0;
      *(v23 + 4) = 0;
      *(v22 - 1) = *(v23 + 7);
      *v22 = *(v23 + 4);
      v22 += 5;
      *(v23 + 7) = 0;
      *(v23 + 8) = 0;
      *(v23 + 9) = 0;
      v23 += 80;
    }

    while (v23 != v19);
  }

  if (v18)
  {
    v24 = *(a2 + 1);
    if (v24)
    {
      v25 = (v18 + 32);
      do
      {
        --v24;
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v25 + 3);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v25);
        boost::container::vector<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>,boost::container::new_allocator<boost::container::dtl::pair<AMCP::Address,AMCP::Thing>>,void>::~vector(v25 - 3);
        v25 += 10;
      }

      while (v24);
    }

    operator delete(*a2);
  }

  v26 = *(a2 + 1) + 1;
  *a2 = v17;
  *(a2 + 1) = v26;
  *(a2 + 2) = v9;
  *a1 = &a3[v17 - v15];
}

void boost::container::throw_length_error(boost::container *this, const char *a2)
{
  exception = __cxa_allocate_exception(0x10uLL);
  *exception = &unk_1F59875F8;
  exception[1] = this;
}

const char *boost::container::exception::what(boost::container::exception *this)
{
  if (*(this + 1))
  {
    return *(this + 1);
  }

  else
  {
    return "unknown boost::container exception";
  }
}