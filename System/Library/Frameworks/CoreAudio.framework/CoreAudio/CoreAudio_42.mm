void AMCP::Graph::Call_Audio_IO_Proc::reconfigure(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  os_unfair_lock_lock(a1);
  ++*(a1 + 8);
  std::__function::__value_func<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=[abi:ne200100](a1 + 16, a2);
  v10 = 0;
  v11 = 0;
  *(a1 + 192) = a6;
  *(a1 + 200) = a4;
  *(a1 + 204) = BYTE4(a4);
  v54 = a1 + 96;
  v55 = a1 + 48;
  lock = a1;
  v53 = a1 + 144;
  do
  {
    v57 = v10;
    v12 = (a5 + 24 * v11);
    v58 = *v12;
    v59 = v12[1];
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v12) >> 4);
    v14 = (v55 + 24 * v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *v14) >> 4);
    v18 = v13 - v17;
    if (v13 <= v17)
    {
      if (v13 >= v17)
      {
        goto LABEL_15;
      }

      v23 = v15 + 0x5555555555555570 * ((v59 - *v12) >> 4);
    }

    else
    {
      v19 = v14[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v19 - v16) >> 4) < v18)
      {
        if (v13 <= 0x333333333333333)
        {
          v20 = 0xCCCCCCCCCCCCCCCDLL * ((v19 - v15) >> 4);
          v21 = 2 * v20;
          if (2 * v20 <= v13)
          {
            v21 = 0xAAAAAAAAAAAAAAABLL * ((v59 - *v12) >> 4);
          }

          if (v20 >= 0x199999999999999)
          {
            v22 = 0x333333333333333;
          }

          else
          {
            v22 = v21;
          }

          std::allocator<AMCP::Proc_Stream>::allocate_at_least[abi:ne200100](v22);
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      bzero(v14[1], 80 * ((80 * v18 - 80) / 0x50) + 80);
      v23 = v16 + 80 * ((80 * v18 - 80) / 0x50) + 80;
    }

    v14[1] = v23;
LABEL_15:
    v24 = (v54 + 24 * v11);
    v25 = *v24;
    v26 = v24[1];
    v27 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - *v24) >> 3);
    v28 = v13 >= v27;
    v29 = v13 - v27;
    if (v29 != 0 && v28)
    {
      v30 = v24[2];
      if (0xCCCCCCCCCCCCCCCDLL * ((v30 - v26) >> 3) < v29)
      {
        if (v13 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v31 = 0xCCCCCCCCCCCCCCCDLL * ((v30 - v25) >> 3);
        v32 = 2 * v31;
        if (2 * v31 <= v13)
        {
          v32 = v13;
        }

        if (v31 >= 0x333333333333333)
        {
          v33 = 0x666666666666666;
        }

        else
        {
          v33 = v32;
        }

        if (v33 <= 0x666666666666666)
        {
          operator new();
        }

LABEL_60:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v34 = &v26[5 * v29];
      do
      {
        *v26 = 0;
        v26[4] = 0;
        v26 += 5;
      }

      while (v26 != v34);
      v24[1] = v34;
    }

    else if (!v28)
    {
      std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__base_destruct_at_end[abi:ne200100](v54 + 24 * v11, v25 + 40 * v13);
    }

    v35 = (v53 + 24 * v11);
    v36 = *v35;
    v37 = v35[1];
    v38 = (v37 - *v35) >> 3;
    if (v13 <= v38)
    {
      v44 = v59;
      if (v13 < v38)
      {
        v45 = (v36 + 8 * v13);
        while (v37 != v45)
        {
          v47 = *--v37;
          v46 = v47;
          *v37 = 0;
          if (v47)
          {
            (*(*v46 + 8))(v46);
          }
        }

        v35[1] = v45;
      }
    }

    else
    {
      v39 = v13 - v38;
      v40 = v35[2];
      if (v39 > (v40 - v37) >> 3)
      {
        if (v13 >> 61)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v41 = v40 - v36;
        v42 = v41 >> 2;
        if (v41 >> 2 <= v13)
        {
          v42 = v13;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFF8)
        {
          v43 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v43 = v42;
        }

        if (!(v43 >> 61))
        {
          operator new();
        }

        goto LABEL_60;
      }

      bzero(v35[1], 8 * v39);
      v35[1] = &v37[v39];
      v44 = v59;
    }

    if (v44 != v58)
    {
      v48 = 0;
      v49 = 0;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      do
      {
        v50 = *v35;
        if (*(*v12 + v48 + 40) == 1)
        {
          operator new();
        }

        v51 = *(v50 + 8 * v49);
        *(v50 + 8 * v49) = 0;
        if (v51)
        {
          (*(*v51 + 8))(v51);
        }

        ++v49;
        v48 += 48;
      }

      while (v13 != v49);
    }

    v10 = 1;
    v11 = 1;
  }

  while ((v57 & 1) == 0);

  os_unfair_lock_unlock(lock);
}

void std::vector<std::unique_ptr<AMCP::DAL::Fixed_Buffer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; i -= 40)
  {
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((i - 40), 0);
    result = std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](i - 32);
  }

  *(v3 + 8) = a2;
  return result;
}

void AMCP::Graph::Call_Audio_IO_Proc::update_proc(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  std::function<void ()(unsigned int,AMCP::Proc_Cycle_Info const&,unsigned long,AMCP::Proc_Stream *,unsigned long,AMCP::Proc_Stream *)>::operator=((a1 + 16), a2);
  ++*(a1 + 8);

  os_unfair_lock_unlock(a1);
}

void AMCP::Graph::align_buffer(AMCP::Graph *this, const AMCP::DAL::DAL_Time_Range *a2, AMCP::DAL::Fixed_Buffer *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 11);
  if (v5)
  {
    v6 = (*(*v5 + 48))(v5);
  }

  else
  {
    v6 = 0.0;
  }

  sample_time = AMCP::DAL::DAL_Time::get_sample_time(this);
  if (round(v6) < round(AMCP::DAL::DAL_Time::get_sample_time((this + 40)) - sample_time))
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
      v25 = "Client_IO_Handler.cpp";
      v26 = 1024;
      v27 = 141;
      v28 = 2080;
      v29 = "not (buffer->get_capacity() >= target_range.get_range().length())";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v23);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v15, "", v13);
    std::logic_error::logic_error(&v16, &v15);
    v16.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v17, &v16);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = -1;
    v17.__vftable = &unk_1F5991430;
    v18 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v17);
    v30 = "void AMCP::Graph::align_buffer(const DAL::DAL_Time_Range &, DAL::Fixed_Buffer *)";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
    v32 = 141;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v14);
  }

  AMCP::DAL::Fixed_Buffer::set_range(a2, this);
}

void sub_1DE525948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}

void AMCP::Graph::dal_segment_to_proc_stream(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 80);
  if (v6)
  {
    AMCP::DAL::DAL_Timed_Segment::translate_range(v23, v6, a1);
    if ((v23[1] - v23[0]) != 96)
    {
      v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v13 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
        *&buf[4] = "Client_IO_Handler.cpp";
        v39 = 1024;
        v40 = 41;
        v41 = 2080;
        v42 = "not (ranges.size() == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v24);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v25, "", v21);
      std::logic_error::logic_error(&v26, &v25);
      v26.__r_.__value_.__r.__words[0] = MEMORY[0x1E69E55A8] + 16;
      std::logic_error::logic_error(&v28, &v26);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = -1;
      v28.__vftable = &unk_1F5991430;
      v29 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
      v43 = "void AMCP::Graph::dal_segment_to_proc_stream(const AMCP::DAL::DAL_Timed_Segment &, AMCP::Proc_Stream &, BufferListPtr &, AMCP::DAL::DAL_Time_Delta &)";
      v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/IO_Core/Client_IO_Handler.cpp";
      v45 = 41;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(v35);
    }

    boost::operators_impl::operator+(buf, (v23[0] + 2), a4);
    AMCP::Graph::dal_time_to_audio_time_stamp(buf, a2);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    *(a2 + 64) = vcvtmd_s64_f64(v23[0][1] - *v23[0]);
    *(a2 + 68) = (*(**(a1 + 80) + 48))(*(a1 + 80));
    AMCP::DAL::DAL_Timed_Segment::translate_range(v35, *(a1 + 80), a1);
    if ((v35[1] - v35[0]) != 96)
    {
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *v19;
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      else
      {
        v20 = *v19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "DAL_Timed_Segment.cpp";
        v39 = 1024;
        v40 = 40;
        v41 = 2080;
        v42 = "not (ranges.size() == 1)";
        _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s We don't allow AudioBufferLists from multi range buffers", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
      __cxa_allocate_exception(0x40uLL);
      caulk::make_string(&v26, "We don't allow AudioBufferLists from multi range buffers", v22);
      std::logic_error::logic_error(&v27, &v26);
      v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
      std::logic_error::logic_error(&v28, &v27);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = -1;
      v28.__vftable = &unk_1F5991430;
      v29 = &unk_1F5991458;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
      v43 = "BufferListPtr AMCP::DAL::DAL_Timed_Segment::get_audio_buffer_list() const";
      v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Timed_Segment.cpp";
      v45 = 40;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v24);
    }

    AMCP::DAL::DAL_Timed_Segment::get_audio_buffer_lists(buf, a1);
    v11 = *buf;
    v12 = **buf;
    **buf = 0;
    v36 = v12;
    std::__function::__value_func<void ()(AudioBufferList *)>::__value_func[abi:ne200100](&v37, v11 + 8);
    v28.__vftable = buf;
    std::vector<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>,caulk::rt_allocator<std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>>>::__destroy_vector::operator()[abi:ne200100](&v28);
    *buf = v35;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](a3, &v36);
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](&v36, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&v37);
    *(a2 + 72) = *a3;
    *buf = v23;
    std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  else
  {
    *(a2 + 72) = 0;
    *buf = 0;
    v43 = 0;
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::operator=[abi:ne200100](a3, buf);
    std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100](buf, 0);
    std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](&buf[8]);
  }
}

void sub_1DE525FC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40)
{
  *(v40 - 128) = &a39;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100]((v40 - 128));
  *(v40 - 128) = &a10;
  std::vector<AMCP::DAL::Buffer_Time_Translator::Translation_Range,caulk::rt_allocator<AMCP::DAL::Buffer_Time_Translator::Translation_Range>>::__destroy_vector::operator()[abi:ne200100]((v40 - 128));
  _Unwind_Resume(a1);
}

void AMCP::Graph::create_cycle_info(AMCP::Graph *this, const AMCP::Graph::Manifest_Counter *a2, const AMCP::Graph::Manifest_Execution_Context *a3)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v29[0] = v7;
  v29[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v25, a2, v29, 1, a3, *(a3 + 10));
  AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v21, a2, v29, 0, a3, *(a3 + 10));
  AMCP::Graph::Manifest_Counter::get_current_cycle_anchor_time(&v17, a2);
  *this = v25;
  *(this + 8) = v26;
  v9 = v27;
  v8 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 3) = v9;
  *(this + 4) = v8;
  v11 = v23;
  v10 = v24;
  *(this + 10) = v21;
  *(this + 3) = v22;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 8) = v11;
  *(this + 9) = v10;
  v12 = v19;
  v13 = v20;
  *(this + 20) = v17;
  *(this + 88) = v18;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 13) = v12;
  *(this + 14) = v13;
  boost::operators_impl::operator+(&v14, &v17, a3);
  *(this + 120) = v14;
  *(this + 17) = v15;
  *(this + 9) = v16;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(this + 20) = v7;
  *(this + 21) = v6;
  *(this + 44) = *(a2 + 10);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1DE5262E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  v28 = *(v26 - 72);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  AMCP::Graph::IO_Proc_Cycle_Info::~IO_Proc_Cycle_Info(v24);
  _Unwind_Resume(a1);
}

void AMCP::Graph::IO_Proc_Cycle_Info::~IO_Proc_Cycle_Info(AMCP::Graph::IO_Proc_Cycle_Info *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 19);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 14);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void CASettingsStorage::CASettingsStorage(CASettingsStorage *this, const char *a2, char a3, CFPropertyListFormat a4)
{
  v4 = a4;
  *this = 0;
  *(this + 4) = 436;
  *(this + 2) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
  *(this + 3) = 100;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 1;
  *(this + 49) = a3;
  *(this + 50) = v4;
  strlen(a2);
  operator new[]();
}

void CASettingsStorage::RefreshSettings(uint64_t this)
{
  if (*(this + 49) == 1 && *(this + 16) && (*(this + 32) || *(this + 40)) && *(this + 48) != 1)
  {
    return;
  }

  if (stat(*this, &v14))
  {
    goto LABEL_15;
  }

  if (*(this + 16))
  {
    v2 = *(this + 32);
    if (v2 >= v14.st_mtimespec.tv_sec && (v2 != v14.st_mtimespec.tv_sec || *(this + 40) >= v14.st_mtimespec.tv_nsec) && *(this + 48) != 1)
    {
      return;
    }
  }

  v3 = fopen(*this, "r");
  if (!v3)
  {
LABEL_15:
    if (!*(this + 16))
    {
      *(this + 16) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
    }

    *(this + 32) = 0;
    *(this + 40) = 0;
    CASettingsStorage::SaveSettings(this);
    return;
  }

  v4 = v3;
  v5 = fileno(v3);
  if (flock(v5, 2) || (fseek(v4, 0, 2), v6 = MEMORY[0x1E12C1D70](v4), fseek(v4, 0, 0), !v6))
  {
    fclose(v4);
    *(this + 48) = 0;
    goto LABEL_15;
  }

  std::vector<unsigned char>::vector[abi:ne200100](__ptr, v6);
  fread(__ptr[0], v6, 1uLL, v4);
  v7 = fileno(v4);
  flock(v7, 8);
  v12 = 1;
  v8 = CFDataCreate(0, __ptr[0], v6);
  data = v8;
  v9 = *(this + 16);
  if (v9)
  {
    CFRelease(v9);
    *(this + 16) = 0;
    v8 = data;
  }

  v10 = CFPropertyListCreateWithData(0, v8, 2uLL, 0, 0);
  *(this + 16) = v10;
  if (v10)
  {
    *(this + 32) = v14.st_mtimespec;
  }

  CACFData::~CACFData(&data);
  if (__ptr[0])
  {
    __ptr[1] = __ptr[0];
    operator delete(__ptr[0]);
  }

  fclose(v4);
  *(this + 48) = 0;
  if (!v10)
  {
    goto LABEL_15;
  }
}

void sub_1DE52665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CACFData::~CACFData(CACFData *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void CASettingsStorage::SaveSettings(CASettingsStorage *this)
{
  if ((*(this + 50) & 1) == 0)
  {
    v2 = *(this + 2);
    if (v2)
    {
      Data = CFPropertyListCreateData(0, v2, *(this + 3), 0, 0);
      v12 = 1;
      v3 = fopen(*this, "w+");
      v4 = v3;
      if (v3)
      {
        v5 = fileno(v3);
        if (flock(v5, 2))
        {
          fclose(v4);
        }

        else
        {
          if (*(this + 4))
          {
            v6 = fileno(v4);
            fchmod(v6, *(this + 4));
          }

          BytePtr = CFDataGetBytePtr(Data);
          Length = CFDataGetLength(Data);
          fwrite(BytePtr, Length, 1uLL, v4);
          fflush(v4);
          v9 = fileno(v4);
          flock(v9, 8);
          fclose(v4);
          stat(*this, &v10);
          *(this + 2) = v10.st_mtimespec;
        }
      }

      CACFData::~CACFData(&Data);
    }
  }
}

uint64_t CASettingsStorage::CopyCFTypeValue(CFDictionaryRef *this, const __CFString *a2, const void **a3, const void *a4)
{
  CASettingsStorage::RefreshSettings(this);
  result = CFDictionaryGetValueIfPresent(this[2], a2, a3);
  if (result)
  {
    result = *a3;
    if (*a3)
    {

      return CFRetain(result);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void CASettingsStorage::SetCFTypeValue(CFMutableDictionaryRef *this, const __CFString *a2, const void *a3)
{
  CASettingsStorage::RefreshSettings(this);
  CFDictionarySetValue(this[2], a2, a3);

  CASettingsStorage::SaveSettings(this);
}

void CASettingsStorage::RemoveAllValues(CFMutableDictionaryRef *this)
{
  CASettingsStorage::RefreshSettings(this);
  CFDictionaryRemoveAllValues(this[2]);

  CASettingsStorage::SaveSettings(this);
}

uint64_t std::default_delete<AMCP::Graph::Timebase_Set>::operator()[abi:ne200100](uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      *(v1 + 48) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::~__hash_table(v1);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::default_delete<AMCP::Graph::Manifest_Counter>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<AMCP::Graph::Timebase_Set  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteIN4AMCP5Graph12Timebase_SetEEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<AMCP::Graph::Timebase_Set  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase>>(void *a1, unint64_t a2, uint64_t a3)
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
}

void AMCP::Graph::Manifest_Inventory::set_nominal_buffer_size(void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    v5 = a1;
    do
    {
      v6 = v5[12];
      v7 = *(v6 + 304);
      if (v7)
      {
        if (*(v6 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v11, *(v6 + 8), *(v6 + 16));
        }

        else
        {
          v11[0] = *(v6 + 8);
        }

        v12 = a2;
        __p = *&v11[0].__r_.__value_.__l.__data_;
        v8 = v11[0].__r_.__value_.__r.__words[2];
        memset(v11, 0, 24);
        v9 = *(v6 + 40);
        v10 = *(v6 + 32);
        v14 = v8;
        v15 = v10;
        v16 = v9;
        (*(*v7 + 104))(v7, &v12, a3);
        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p);
        }
      }

      v5 = *v5;
    }

    while (v5);
  }
}

void sub_1DE526D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(void *a1, uint64_t a2, __int128 *a3, uint64_t a4, double *a5, uint64_t a6, void *a7, int a8, int a9, int a10, int a11)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!*a7 || (v11 = *a5, v11 == (*(**a7 + 152))(*a7, a2, a3, a4, a5, a6)))
  {
    ++AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(std::shared_ptr<AMCP::DAL::DAL_Buffer>,AMCP::Wire_Identifier const&,CA::StreamDescription,AMCP::Graph::Manifest_Buffer::Buffer_Style,std::shared_ptr<AMCP::Graph::Timebase>,Buffer_Alignment,Drift_Correction_Status,Node_Buffer_Ownership,int)::count;
    operator new();
  }

  v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v13 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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
    v22 = 136315650;
    v23 = "Manifest_Inventory.cpp";
    v24 = 1024;
    v25 = 78;
    v26 = 2080;
    v27 = "not (clock == nullptr or format.mSampleRate == clock->get_sample_rate())";
    _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Unexpected sample rate for connection", &v22, 0x1Cu);
  }

  AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v19);
  __cxa_allocate_exception(0x40uLL);
  caulk::make_string(v18, "Unexpected sample rate for connection", v17);
  std::logic_error::logic_error(v21, v18);
  *v21 = MEMORY[0x1E69E55A8] + 16;
  std::logic_error::logic_error(&v31, v21);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = -1;
  v31.__vftable = &unk_1F5991430;
  v32 = &unk_1F5991458;
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(&v22, &v31);
  v28 = "std::shared_ptr<Manifest_Buffer> AMCP::Graph::Manifest_Inventory::request_shared_buffer_for_connection(std::shared_ptr<DAL::DAL_Buffer>, const Manifest_Buffer::Buffer_Identifier &, CA::StreamDescription, Manifest_Buffer::Buffer_Style, Timebase_Ref, Buffer_Alignment, Drift_Correction_Status, Node_Buffer_Ownership, int32_t)";
  __p = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
  v30 = 78;
  applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
}

void sub_1DE527588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a57 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v57);
  operator delete(v59);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Inventory::add_buffer(void *a1, void *a2)
{
  v4 = *a2;
  if (*(*a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *(v4 + 8), *(v4 + 16));
  }

  else
  {
    v5 = *(v4 + 8);
    v25.__r_.__value_.__r.__words[2] = *(v4 + 24);
    *&v25.__r_.__value_.__l.__data_ = v5;
  }

  v26 = *(v4 + 32);
  v27 = *(v4 + 40);
  if (*(v4 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v4 + 48), *(v4 + 56));
  }

  else
  {
    v6 = *(v4 + 48);
    __p.__r_.__value_.__r.__words[2] = *(v4 + 64);
    *&__p.__r_.__value_.__l.__data_ = v6;
  }

  v29 = *(v4 + 72);
  v30 = *(v4 + 80);
  v7 = std::hash<AMCP::Wire_Identifier>::operator()(&v25);
  v8 = v7;
  v9 = a1[2];
  v22 = a2;
  if (!*&v9)
  {
    goto LABEL_25;
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

  v13 = *(a1[1] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_25:
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
      goto LABEL_25;
    }

LABEL_24:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_25;
    }
  }

  v34 = (v14 + 2);
  v35 = v14 + 5;
  v36 = v14 + 6;
  p_p = &v25;
  v32 = &v26;
  v33 = &v27;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v34, &p_p))
  {
    goto LABEL_24;
  }

  v34 = (v14 + 7);
  v35 = v14 + 10;
  v36 = v14 + 11;
  p_p = &__p;
  v32 = &v29;
  v33 = &v30;
  if (!std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v34, &p_p))
  {
    goto LABEL_24;
  }

  v17 = *v22;
  v16 = v22[1];
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = v14[13];
  v14[12] = v17;
  v14[13] = v16;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v19 = a1[10];
  v20 = *(*v22 + 128);
  v21 = *(*v22 + 136);
  v23 = v20;
  v24 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__hash_table<std::shared_ptr<AMCP::Graph::Timebase>,std::hash<std::shared_ptr<AMCP::Graph::Timebase>>,std::equal_to<std::shared_ptr<AMCP::Graph::Timebase>>,std::allocator<std::shared_ptr<AMCP::Graph::Timebase>>>::__emplace_unique_key_args<std::shared_ptr<AMCP::Graph::Timebase>,std::shared_ptr<AMCP::Graph::Timebase>>(v19, v20, &v23);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }
}

void sub_1DE527D1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Buffer>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 172) == 2)
  {
    v2 = *(a1 + 336);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }

  v3 = *(a1 + 360);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 336);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 304);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(a1 + 264);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 224);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 55) < 0)
  {
    v9 = *(a1 + 32);

    operator delete(v9);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Manifest_Buffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *std::__hash_table<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::__unordered_map_hasher<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::hash<AMCP::Wire_Identifier>,std::equal_to<AMCP::Wire_Identifier>,true>,std::__unordered_map_equal<AMCP::Wire_Identifier,std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>,std::equal_to<AMCP::Wire_Identifier>,std::hash<AMCP::Wire_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Wire_Identifier,std::shared_ptr<AMCP::Graph::Manifest_Buffer>>>>::find<AMCP::Wire_Identifier>(void *a1, uint64_t a2)
{
  v4 = std::hash<AMCP::Wire_Identifier>::operator()(a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      v17 = (i + 2);
      v18 = i + 5;
      v19 = i + 6;
      v14 = a2;
      v15 = a2 + 24;
      v16 = a2 + 32;
      if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v17, &v14))
      {
        v17 = (i + 7);
        v18 = i + 10;
        v19 = i + 11;
        v14 = a2 + 40;
        v15 = a2 + 64;
        v16 = a2 + 72;
        if (std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v17, &v14))
        {
          return i;
        }
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
  }

  return i;
}

void AMCP::Graph::Manifest_Inventory::take_power_assertions(AMCP::Graph::Manifest_Inventory *this)
{
  if ((*this & 1) == 0)
  {
    v1 = *(this + 10);
    v2 = *(this + 11);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = *(v1 + 16); i; i = *i)
    {
      (*(*i[2] + 232))(i[2]);
    }

    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void AMCP::Graph::Manifest_Inventory::begin_processing(AMCP::Graph::Manifest_Inventory *this, int a2)
{
  if (this)
  {
    v3 = this;
    do
    {
      v4 = *(v3 + 12);
      v5 = *(v4 + 304);
      if (v5)
      {
        if (*(v4 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v9, *(v4 + 8), *(v4 + 16));
        }

        else
        {
          v9[0] = *(v4 + 8);
        }

        v10 = a2;
        __p = *&v9[0].__r_.__value_.__l.__data_;
        v6 = v9[0].__r_.__value_.__r.__words[2];
        memset(v9, 0, 24);
        v7 = *(v4 + 40);
        v8 = *(v4 + 32);
        v12 = v6;
        v13 = v8;
        v14 = v7;
        (*(*v5 + 184))(v5, &v10, *(v4 + 156));
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }
      }

      v3 = *v3;
    }

    while (v3);
  }
}

void sub_1DE528194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Inventory::begin_cycle(void *a1, uint64_t *a2, AMCP::DAL::DAL_Time_Delta *a3)
{
  for (i = *(a1[10] + 16); i; i = *i)
  {
    (*(*i[2] + 88))(i[2]);
  }

  for (j = a1[3]; j; j = *j)
  {
    v8 = j[12];
    v9 = *(v8 + 136);
    v17[0] = *(v8 + 128);
    v17[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AMCP::DAL::DAL_Time_Delta::translate_time_delta(v15, a3, v17);
    AMCP::Graph::Manifest_Counter::calculate_buffer_start(v13, a1[8], v17, *(j[12] + 156), v15, *(a3 + 10));
    v10 = *a2;
    if (*a2)
    {
      v11 = *j[12];
      sample_time = AMCP::DAL::DAL_Time::get_sample_time(v13);
      AMCP::Graph::Manifest_Log::add_message(v10, 4, "Manifest_Buffer(%zu)::begin_cycle: cycle anchor: %lld  %p", v11, vcvtmd_s64_f64(sample_time), j[12]);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_1DE5282FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::Graph::Manifest_Inventory::end_cycle(AMCP::Log::AMCP_Scope_Registry *a1, uint64_t a2, AMCP::DAL::DAL_Time_Delta *a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 14);
  v6 = *(a1 + 15);
  while (v5 != v6)
  {
    v8 = *v5;
    v5 += 2;
    AMCP::IO_Core::Device_Connection::end_cycle(v8, a2, a3);
  }

  for (i = *(a1 + 3); i; i = *i)
  {
    AMCP::Graph::Manifest_Buffer::advance(i[12]);
  }

  v10 = *(a1 + 10);
  if (!*(v10 + 24))
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
      *buf = 136315650;
      *&buf[4] = "Timebase_Set.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 32;
      *&buf[18] = 2080;
      *&buf[20] = "not (not m_timebases.empty())";
      _os_log_error_impl(&dword_1DE1F9000, v35, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v46);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v38, "Attempt to run an manifest with no timebases", v36);
    std::logic_error::logic_error(&v39, &v38);
    v39.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v40, &v39);
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = -1;
    v40.__vftable = &unk_1F5991430;
    v41 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v40);
    *&buf[32] = "void AMCP::Graph::Timebase_Set::end_cycle(const DAL::DAL_Time_Delta &) const";
    v48 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Timebase_Set.cpp";
    v49 = 32;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v37);
  }

  v11 = *(v10 + 16);
  if (v11)
  {
    while (1)
    {
      *buf = *a3;
      v12 = *(a3 + 3);
      *&buf[16] = *(a3 + 2);
      *&buf[24] = v12;
      v13 = *(a3 + 4);
      *&buf[32] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      v15 = v11[2];
      v16 = (v15 | v12) == 0;
      if (!v15 || !v12)
      {
        goto LABEL_25;
      }

      v17 = (*(*v15 + 16))(v15, a2);
      v18 = (*(*v12 + 16))(v12);
      v19 = *(v17 + 23);
      if (v19 >= 0)
      {
        v20 = *(v17 + 23);
      }

      else
      {
        v20 = *(v17 + 8);
      }

      v21 = *(v18 + 23);
      v22 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v21 = *(v18 + 8);
      }

      if (v20 == v21)
      {
        break;
      }

      v16 = 0;
      if (v13)
      {
        goto LABEL_26;
      }

LABEL_27:
      if (v16)
      {
        v25 = v11[2];
        if ((buf[0] & 2) != 0)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if ((*a3 & 1) == 0)
        {
          AMCP::DAL::DAL_Time_Delta::validate(a3);
        }

        v26 = *(a3 + 2);
        v27 = *(v11 + 1);
        v28 = v11[3];
        if (v28)
        {
          atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
        }

        *buf = 1;
        *&buf[8] = 0;
        *&buf[16] = v26;
        *&buf[24] = v27;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        v25 = v11[2];
      }

      AMCP::DAL::DAL_Time_Delta::validate(buf);
LABEL_38:
      (*(*v25 + 96))(v25, a2, *&buf[8]);
      if (*&buf[32])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[32]);
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_44;
      }
    }

    if (v19 >= 0)
    {
      v23 = v17;
    }

    else
    {
      v23 = *v17;
    }

    if (v22 >= 0)
    {
      v24 = v18;
    }

    else
    {
      v24 = *v18;
    }

    v16 = memcmp(v23, v24, v20) == 0;
LABEL_25:
    if (!v13)
    {
      goto LABEL_27;
    }

LABEL_26:
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    goto LABEL_27;
  }

LABEL_44:
  v29 = *(a1 + 8);
  if ((*a3 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a3);
  }

  v30 = *(a3 + 1);

  return AMCP::Graph::Manifest_Counter::advance(v29, v30);
}

void sub_1DE5287F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Graph::Manifest_Inventory::release_power_assertions(AMCP::Graph::Manifest_Inventory *this)
{
  if ((*this & 1) == 0)
  {
    v1 = *(this + 10);
    v2 = *(this + 11);
    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    for (i = *(v1 + 16); i; i = *i)
    {
      (*(*i[2] + 240))(i[2]);
    }

    if (v2)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }
  }
}

void AMCP::Graph::Manifest_Inventory::anchor_time(AMCP::Graph::Manifest_Inventory *this, int a2, const AMCP::Graph::Manifest_Execution_Context *a3, const AMCP::DAL::DAL_Time *a4)
{
  v92 = *MEMORY[0x1E69E9840];
  if (!*(*(this + 10) + 24))
  {
    v65 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v65 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      *v84 = 136315650;
      *&v84[4] = "Manifest_Inventory.cpp";
      *&v84[12] = 1024;
      *&v84[14] = 291;
      *&v84[18] = 2080;
      *&v84[20] = "not (m_timebases->size() != 0)";
      _os_log_error_impl(&dword_1DE1F9000, v68, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to run an manifest with no timebases", v84, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v77);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v76, "Attempt to run an manifest with no timebases", v69);
    std::logic_error::logic_error(&__src, &v76);
    __src.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v78, &__src);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = -1;
    v78.__r_.__value_.__r.__words[0] = &unk_1F5991430;
    v78.__r_.__value_.__r.__words[2] = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v84, &v78);
    p_src = "void AMCP::Graph::Manifest_Inventory::anchor_time(Object_ID, const Manifest_Execution_Context &, const DAL::DAL_Time &) const";
    v86 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
    v87 = 291;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v75);
  }

  v6 = *(this + 8);
  if ((*v6 & 1) == 0)
  {
    AMCP::Graph::Manifest_Counter::start(v6, a4);
  }

  __src.__vftable = 0;
  __src.__imp_.__imp_ = 0;
  v74 = 0;
  v7 = *(this + 3);
  v70 = a3;
  v72 = this;
  if (v7)
  {
    imp = 0;
    do
    {
      v9 = *(v7 + 6);
      if (*(&v9 + 1))
      {
        atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
        imp = __src.__imp_.__imp_;
      }

      if (imp >= v74)
      {
        v10 = __src.__vftable;
        v11 = imp - __src.__vftable;
        v12 = (imp - __src.__vftable) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v14 = v74 - __src.__vftable;
        if ((v74 - __src.__vftable) >> 3 > v13)
        {
          v13 = v14 >> 3;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF0)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        p_src = &__src;
        if (v15)
        {
          std::allocator<std::shared_ptr<DSP_Host_Types::FormatDescription>>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = v12;
        v17 = (16 * v12);
        v18 = &v17[-v16];
        *v17 = v9;
        imp = (v17 + 1);
        memcpy(v18, v10, v11);
        v19 = __src.__vftable;
        v20 = v74;
        __src.__vftable = v18;
        __src.__imp_.__imp_ = imp;
        v74 = 0;
        *&v84[16] = v19;
        *&v84[24] = v20;
        *v84 = v19;
        *&v84[8] = v19;
        v6 = std::__split_buffer<std::shared_ptr<DSP_Host_Types::FormatDescription>>::~__split_buffer(v84);
      }

      else
      {
        *imp = v9;
        imp += 16;
      }

      __src.__imp_.__imp_ = imp;
      v7 = *v7;
    }

    while (v7);
    v21 = __src.__vftable;
    if (__src.__vftable != imp)
    {
LABEL_21:
      while (1)
      {
        v22 = v21->~logic_error;
        if (!*(v21->~logic_error + 37))
        {
          break;
        }

        v21 = (v21 + 16);
        if (v21 == imp)
        {
          v21 = imp;
          goto LABEL_30;
        }
      }

      v23 = imp - 16;
      while (v23 != v21)
      {
        imp = v23;
        v25 = *v23;
        v23 -= 16;
        v24 = v25;
        if (*(v25 + 296))
        {
          v21->~logic_error = v24;
          *(v23 + 2) = v22;
          v26 = v21->~logic_error_0;
          v21->~logic_error_0 = *(v23 + 3);
          *(v23 + 3) = v26;
          v21 = (v21 + 16);
          if (v21 != imp)
          {
            goto LABEL_21;
          }

          break;
        }
      }
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_30:
  if (v21 != __src.__imp_.__imp_)
  {
    v27 = v21;
    do
    {
      for (i = __src.__vftable; i != v21; i = (i + 16))
      {
        v29 = i->~logic_error;
        if (!*(i->~logic_error + 37))
        {
          v50 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v50 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v6);
          }

          v52 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v51 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v51)
          {
            atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
            v53 = *v52;
            std::__shared_weak_count::__release_shared[abi:ne200100](v51);
          }

          else
          {
            v53 = *v52;
          }

          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *v84 = 136315650;
            *&v84[4] = "Manifest_Inventory.cpp";
            *&v84[12] = 1024;
            *&v84[14] = 226;
            *&v84[18] = 2080;
            *&v84[20] = "not ((*i)->is_processing())";
            _os_log_error_impl(&dword_1DE1F9000, v53, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s All peers must be running", v84, 0x1Cu);
          }

          AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v83);
          __cxa_allocate_exception(0x40uLL);
          caulk::make_string(&v76, "All peers must be running", v54);
          std::logic_error::logic_error(&v77, &v76);
          v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
          std::logic_error::logic_error(&v78, &v77);
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v82 = -1;
          v78.__r_.__value_.__r.__words[0] = &unk_1F5991430;
          v78.__r_.__value_.__r.__words[2] = &unk_1F5991458;
          boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v84, &v78);
          p_src = "std::vector<std::shared_ptr<Manifest_Buffer>>::iterator AMCP::Graph::find_peer(const std::shared_ptr<Manifest_Buffer> &, std::vector<std::shared_ptr<Manifest_Buffer>>::iterator, std::vector<std::shared_ptr<Manifest_Buffer>>::iterator)";
          v86 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Inventory.cpp";
          v87 = 226;
          std::vector<void *>::vector[abi:ne200100](&v75);
        }

        if (*(v29 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(v84, *(v29 + 1), *(v29 + 2));
        }

        else
        {
          v30 = *(v29 + 8);
          *&v84[16] = *(v29 + 3);
          *v84 = v30;
        }

        *&v84[24] = *(v29 + 4);
        LODWORD(p_src) = *(v29 + 10);
        v31 = *v27;
        if (*(*v27 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v78, *(v31 + 8), *(v31 + 16));
        }

        else
        {
          v32 = *(v31 + 8);
          v78.__r_.__value_.__r.__words[2] = *(v31 + 24);
          *&v78.__r_.__value_.__l.__data_ = v32;
        }

        v79 = *(v31 + 32);
        LODWORD(v80) = *(v31 + 40);
        v88 = v84;
        v89 = &v84[24];
        p_p_src = &p_src;
        v76.__r_.__value_.__r.__words[0] = &v78;
        v76.__r_.__value_.__l.__size_ = &v79;
        v76.__r_.__value_.__r.__words[2] = &v80;
        v6 = std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>,std::tuple<std::string const&,unsigned long const&,AMCP::Direction const&>>(&v88, &v76);
        v33 = v6;
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
        }

        if ((v84[23] & 0x80000000) != 0)
        {
          operator delete(*v84);
        }

        if (v33)
        {
          if (i != v21)
          {
            v34 = *v27;
            v35 = i->~logic_error;
            v36 = i->~logic_error_0;
            if (v36)
            {
              atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(v34 + 37))
            {
              v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
              if ((v60 & 1) == 0)
              {
                AMCP::Log::AMCP_Scope_Registry::initialize(v34);
              }

              v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
              v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
              if (v61)
              {
                atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
                v63 = *v62;
                std::__shared_weak_count::__release_shared[abi:ne200100](v61);
              }

              else
              {
                v63 = *v62;
              }

              if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
              {
                *v84 = 136315650;
                *&v84[4] = "Manifest_Buffer.cpp";
                *&v84[12] = 1024;
                *&v84[14] = 125;
                *&v84[18] = 2080;
                *&v84[20] = "not (not is_processing())";
                _os_log_error_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Don't call anchor_to_timebase_anchor on buffers that are currently processing", v84, 0x1Cu);
              }

              AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v83);
              __cxa_allocate_exception(0x40uLL);
              caulk::make_string(&v76, "Don't call anchor_to_timebase_anchor on buffers that are currently processing", v64);
              std::logic_error::logic_error(&v77, &v76);
              v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
              std::logic_error::logic_error(&v78, &v77);
              v79 = 0;
              v80 = 0;
              v81 = 0;
              v82 = -1;
              v78.__r_.__value_.__r.__words[0] = &unk_1F5991430;
              v78.__r_.__value_.__r.__words[2] = &unk_1F5991458;
              boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v84, &v78);
              p_src = "void AMCP::Graph::Manifest_Buffer::anchor_to_peer(std::shared_ptr<Manifest_Buffer>, AMCP::Object_ID, Manifest_Counter &, const Manifest_Execution_Context &)";
              v86 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
              v87 = 125;
              applesauce::backtrace::snapshot_N<64>::snapshot_N(&v75);
            }

            v37 = *(v72 + 8);
            *v84 = *(v35 + 13);
            v38 = *(v35 + 29);
            *&v84[16] = *(v35 + 28);
            *&v84[24] = v38;
            v39 = *(v35 + 30);
            p_src = v39;
            if (v39)
            {
              atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            AMCP::Graph::Manifest_Buffer::anchor_time(v34, v84, a2, v37, a3);
            goto LABEL_59;
          }

          break;
        }
      }

      v40 = *v27;
      if (*(*v27 + 296))
      {
        v55 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v55 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v57 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v56 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          v58 = *v57;
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        else
        {
          v58 = *v57;
        }

        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          *v84 = 136315650;
          *&v84[4] = "Manifest_Buffer.cpp";
          *&v84[12] = 1024;
          *&v84[14] = 135;
          *&v84[18] = 2080;
          *&v84[20] = "not (not is_processing())";
          _os_log_error_impl(&dword_1DE1F9000, v58, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Don't call anchor_to_timebase_anchor on buffers that are currently processing", v84, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v83);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v76, "Don't call anchor_to_timebase_anchor on buffers that are currently processing", v59);
        std::logic_error::logic_error(&v77, &v76);
        v77.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v78, &v77);
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v82 = -1;
        v78.__r_.__value_.__r.__words[0] = &unk_1F5991430;
        v78.__r_.__value_.__r.__words[2] = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v84, &v78);
        p_src = "void AMCP::Graph::Manifest_Buffer::anchor_to_timebase_anchor(AMCP::Object_ID, Manifest_Counter &, const Manifest_Execution_Context &)";
        v86 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Manifest_Buffer.cpp";
        v87 = 135;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v75);
      }

      v41 = *(v72 + 8);
      v36 = *(v40 + 17);
      v88 = *(v40 + 16);
      v89 = v36;
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      a3 = v70;
      AMCP::DAL::DAL_Time_Delta::translate_time_delta(v84, v70, &v88);
      AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v78, v41, &v88, *(v40 + 39), v84, *(v70 + 10));
      AMCP::Graph::Manifest_Buffer::anchor_time(v40, &v78, a2, v41, v70);
      if (v80)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v80);
      }

LABEL_59:
      v6 = p_src;
      if (p_src)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](p_src);
      }

      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v27 += 16;
    }

    while (v27 != __src.__imp_.__imp_);
  }

  for (j = *(v72 + 3); j; j = *j)
  {
    ++*(j[12] + 296);
  }

  *v84 = &__src;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](v84);
  v43 = *(v72 + 14);
  for (k = *(v72 + 15); v43 != k; v43 += 2)
  {
    AMCP::IO_Core::Device_Connection::get_timebase(&v78, *v43);
    AMCP::DAL::DAL_Time_Delta::translate_time_delta(v84, a3, &v78);
    if (v78.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v78.__r_.__value_.__l.__size_);
    }

    v45 = *(v72 + 8);
    AMCP::IO_Core::Device_Connection::get_timebase(&v88, *v43);
    AMCP::Graph::Manifest_Counter::calculate_buffer_start(&v78, v45, &v88, 1, v84, *(a3 + 10));
    if (v89)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v89);
    }

    v46 = *v43;
    v47 = std::__shared_weak_count::lock((*v43)[1]);
    v48 = *v46;
    os_unfair_lock_lock(v48 + 1);
    sample_time = AMCP::DAL::DAL_Time::get_sample_time(&v78);
    v88 = &unk_1F5966538;
    v89 = *&sample_time;
    v91 = &v88;
    AMCP::IO_Core::Device_Node_State::for_each_stream_connection(v48, 1u, &v88);
    std::__function::__value_func<BOOL ()(AMCP::IO_Core::Stream_Connection &)>::~__value_func[abi:ne200100](&v88);
    os_unfair_lock_unlock(v48 + 1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    if (v80)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v80);
    }

    if (p_src)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](p_src);
    }
  }
}

void sub_1DE52974C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, uint64_t a29, char *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a48);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  a30 = &a16;
  std::vector<std::shared_ptr<unsigned long long>>::__destroy_vector::operator()[abi:ne200100](&a30);
  _Unwind_Resume(a1);
}

void AMCP::Graph::Manifest_Inventory::cross_check_buffer(AMCP::Log::AMCP_Scope_Registry *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a1 + 24;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (**(v2 + 12) == *a2)
    {
      return;
    }
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315394;
    v8 = "Manifest_Inventory.cpp";
    v9 = 1024;
    v10 = 324;
    _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d Found a manifest buffer that is not in the buffer map", &v7, 0x12u);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Converter>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 144);
  v3 = *(a1 + 136);
  v10 = *(a1 + 128);
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 120))(v2, &v10);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a1 + 136);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::__hash_table<std::__hash_value_type<std::string,AMCP::Thing>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,AMCP::Thing>,std::equal_to<std::string>,std::hash<std::string>,true>,std::pmr::polymorphic_allocator<std::__hash_value_type<std::string,AMCP::Thing>>>::~__hash_table((a1 + 72));
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::__shared_ptr_emplace<AMCP::Graph::Converter>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59781B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *AMCP::Graph::Manifest_Inventory::get_buffer_alignments(uint64_t *this, void *a2)
{
  this[1] = 0;
  this[2] = 0;
  *this = (this + 1);
  if (a2)
  {
    operator new();
  }

  return this;
}

uint64_t AMCP::Graph::Manifest_Inventory::report_thread_error(uint64_t this)
{
  if (this)
  {
    return (*(*this + 48))(this);
  }

  return this;
}

void sub_1DE529EE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    v9 = __cxa_begin_catch(exception_object);
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
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
      LODWORD(a9) = 136315394;
      *(&a9 + 4) = "Manifest_Inventory.cpp";
      WORD6(a9) = 1024;
      *(&a9 + 14) = 525;
      _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Exception thrown from thread error handler", &a9, 0x12u);
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE529EB8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID,std::string>::set_requested(uint64_t a1, const std::string *a2)
{
  std::mutex::lock((a1 + 72));
  if (*(a1 + 64) != 1)
  {
    v4 = (a1 + 16);
    if (*(a1 + 39) < 0)
    {
      v5 = 24;
      goto LABEL_7;
    }

LABEL_5:
    __p = *v4;
    goto LABEL_8;
  }

  v4 = (a1 + 40);
  if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  v5 = 48;
  v4 = (a1 + 40);
LABEL_7:
  std::string::__init_copy_ctor_external(&__p, *v4, *(a1 + v5));
LABEL_8:
  v6 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v6 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v8)
  {
    if (v6 >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = a2->__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v12 = memcmp(v10, p_p, size) == 0;
    if (v9 < 0)
    {
LABEL_25:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v12 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_25;
    }
  }

  if (!v12)
  {
LABEL_26:
    std::optional<std::string>::operator=[abi:ne200100]<std::string const&,void>((a1 + 40), a2);
    atomic_exchange((a1 + 8), 1u);
  }

LABEL_27:
  std::mutex::unlock((a1 + 72));
  v13 = *(*a1 + 64);

  return v13(a1);
}

void HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener::decouple(HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener *this)
{
  std::mutex::lock((this + 56));
  v2 = *(this + 6);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 5);
      if (v5)
      {
        std::shared_ptr<AMCP::IO_Core::IOContext_Core>::shared_ptr[abi:ne200100]<AMCP::IO_Core::IOContext_Core,0>(&__p, *(this + 1), *(this + 2));
        size = __p.__r_.__value_.__l.__size_;
        *&__p.__r_.__value_.__l.__data_ = 0uLL;
        std::mutex::lock((v5 + 16));
        if (size)
        {
          atomic_fetch_add_explicit(&size->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v7 = (v5 + 88);
        v6 = *(v5 + 88);
        if (!v6)
        {
          goto LABEL_14;
        }

        v8 = (v5 + 88);
        do
        {
          v9 = v6[5];
          v10 = v9 >= size;
          v11 = v9 < size;
          if (v10)
          {
            v8 = v6;
          }

          v6 = v6[v11];
        }

        while (v6);
        if (v8 == v7 || size < v8[5])
        {
LABEL_14:
          v8 = (v5 + 88);
        }

        if (size)
        {
          std::__shared_weak_count::__release_weak(size);
        }

        if (v7 != v8)
        {
          v12 = v8[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            v14 = v8;
            do
            {
              v13 = v14[2];
              v15 = *v13 == v14;
              v14 = v13;
            }

            while (!v15);
          }

          if (*(v5 + 80) == v8)
          {
            *(v5 + 80) = v13;
          }

          v16 = *(v5 + 88);
          --*(v5 + 96);
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v16, v8);
          v17 = v8[5];
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }

          operator delete(v8);
        }

        std::mutex::unlock((v5 + 16));
        if (size)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](size);
        }

        if (__p.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v18 = *(this + 6);
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }
  }

  else
  {
    *(this + 5) = 0;
    *(this + 6) = 0;
  }

  v19 = *(this + 3);
  if (v19)
  {
    *(&__p.__r_.__value_.__s + 23) = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    HALS_DSPHostModifierStorage<AHAL_DSP::IHostModifier_HostPrivateReferenceStreamDeviceUID,std::string>::set_requested(v19, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v20 = *(this + 4);
  *(this + 3) = 0;
  *(this + 4) = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::mutex::unlock((this + 56));
}

void sub_1DE52A3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, void *__p, std::__shared_weak_count *a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(&a9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a9 + 1));
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  std::mutex::unlock((v15 + 56));
  _Unwind_Resume(a1);
}

void HALS_DSPHostPrivateReferenceStreamProxy::~HALS_DSPHostPrivateReferenceStreamProxy(HALS_DSPHostPrivateReferenceStreamProxy *this)
{
  HALS_DSPHostPrivateReferenceStreamProxy::~HALS_DSPHostPrivateReferenceStreamProxy(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5978220;
  v2 = *(this + 18);
  if (v2)
  {
    v3 = *(this + 19);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_DSPHostPrivateReferenceStreamProxy::LocalDefaultOuputDeviceChangedListener::decouple(v2);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 19);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  HALS_DSPHostAudioStream::~HALS_DSPHostAudioStream(this, &off_1F5978288);
}

void non-virtual thunk toADS_DeviceManager::~ADS_DeviceManager(ADS_DeviceManager *this)
{
  HALS_PlugIn::~HALS_PlugIn((this - 336));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_PlugIn::~HALS_PlugIn((this - 336));
}

void ADS_DeviceManager::~ADS_DeviceManager(ADS_DeviceManager *this)
{
  HALS_PlugIn::~HALS_PlugIn(this);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<HALS_UCPlugIn>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978CA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void ADSLoader::~ADSLoader(ADSLoader *this)
{
  *this = &unk_1F59785F8;
  CACFString::~CACFString((this + 8));

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F59785F8;
  CACFString::~CACFString((this + 8));
}

void non-virtual thunk toHALS_IOUABox::~HALS_IOUABox(HALS_IOUABox *this, HALS_Object *a2)
{
  HALS_IOUABox::~HALS_IOUABox((this - 344), a2);

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUABox::~HALS_IOUABox((this - 344), a2);
}

void HALS_IOUABox::~HALS_IOUABox(HALS_IOUABox *this, HALS_Object *a2)
{
  *this = &unk_1F5978630;
  v3 = (this + 344);
  *(this + 43) = &unk_1F5978730;
  v4 = *(this + 49);
  if (v4)
  {
    *(this + 50) = v4;
    operator delete(v4);
  }

  HALS_IOUAObject::~HALS_IOUAObject(v3, a2);

  HALS_Box::~HALS_Box(this);
}

{
  HALS_IOUABox::~HALS_IOUABox(this, a2);

  JUMPOUT(0x1E12C1730);
}

HALS_ObjectMap *HALS_IOUABox::_CopyControlByDescription(HALS_IOUABox *this, HALS_Object *a2, int a3, int a4)
{
  v4 = *(this + 49);
  v5 = *(this + 50);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      if (*v4)
      {
        if (*(v6 + 5) == a2 && *(v6 + 12) == a3 && *(v6 + 13) == a4)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v7 = *v4;
  HALS_ObjectMap::RetainObject(*v4, a2);
  return v7;
}

HALS_ObjectMap *HALS_IOUABox::_CopyControlByIndex(HALS_IOUABox *this, HALS_Object *a2)
{
  v2 = *(this + 49);
  if (a2 >= ((*(this + 50) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOUABox::_CopyControls(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 392);
  for (i = *(a1 + 400); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_IOUABox::SetPropertyData(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const AudioObjectPropertyAddress *a5, unsigned int a6, void *a7, HALS_Client *a8)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a3->mSelector == 1652060014)
  {
    if (a4 <= 3)
    {
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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
        *buf = 136315650;
        v36 = "HALS_IOUABox.cpp";
        v37 = 1024;
        v38 = 349;
        v39 = 2080;
        v40 = "inDataSize < SizeOf32(UInt32)";
        _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size for kAudioBoxPropertyAcquired", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v27, "kAudioHardwareBadPropertySizeError");
      std::runtime_error::runtime_error(&v28, &v27);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = -1;
      v28.__vftable = &unk_1F5992170;
      v29 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v28);
      v41 = "virtual void HALS_IOUABox::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUABox.cpp";
      v43 = 349;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
    }

    v12 = *(this + 44);
    v13 = *(v12 + 736);
    v14 = *(v12 + 744);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v13, a3, *(this + 90), a7, a6, a5, a4);
    if (v14)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }
  }

  else
  {
    if (HALS_Box::HasProperty(this, a2, a3))
    {
      HALS_Object::SetPropertyData(this, a2, a3, v17, v18, v19, v20, a8);
    }

    HALS_IOUAObject::SetPropertyData((this + 344), &a3->mSelector, a5, a7, v18, v19, v20, v21);
  }
}

void sub_1DE52ACE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUABox::GetPropertyData(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, AudioObjectPropertyAddress *a5, CFTypeRef *a6, unsigned int a7, void *a8, HALS_Client *a9)
{
  v11 = a6;
  v82 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1751737453)
  {
    if (mSelector > 1819111267)
    {
      if (mSelector > 1851878763)
      {
        if (mSelector == 1953653102 || mSelector == 1920168547)
        {
          goto LABEL_60;
        }

        v28 = 1851878764;
      }

      else
      {
        if (mSelector == 1819111268 || mSelector == 1819173229)
        {
          goto LABEL_54;
        }

        v28 = 1836411236;
      }
    }

    else
    {
      if (mSelector <= 1818850144)
      {
        if (mSelector == 1751737454 || mSelector == 1768124270)
        {
          goto LABEL_60;
        }

        v26 = 1768777573;
        goto LABEL_48;
      }

      if (mSelector == 1818850145 || mSelector == 1818850162)
      {
        goto LABEL_60;
      }

      v28 = 1819107691;
    }

    if (mSelector != v28)
    {
      goto LABEL_92;
    }

    goto LABEL_54;
  }

  if (mSelector > 1651536494)
  {
    if (mSelector <= 1652060013)
    {
      if (mSelector == 1651536495)
      {
LABEL_35:
        if (a4 <= 3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *cf = 136315394;
            *&cf[4] = "HALS_IOUABox.cpp";
            v75 = 1024;
            v76 = 248;
            _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOUABox::GetPropertyData: bad property data size", cf, 0x12u);
          }

          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "kAudioHardwareBadPropertySizeError");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        *cf = a4;
        v29 = *(this + 44);
        v30 = *(v29 + 736);
        v31 = *(v29 + 744);
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        HALS_IOUAUCDriver::GetPropertyData(*(v30 + 4), a3, *(this + 90), a8, a7, a6, cf);
        if (v31)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        v32 = 4;
LABEL_41:
        a5->mSelector = v32;
        return;
      }

      if (mSelector != 1651861860)
      {
        v27 = 1652060006;
        goto LABEL_34;
      }

LABEL_54:
      v33 = *(this + 44);
      v34 = *(v33 + 736);
      v35 = *(v33 + 744);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&v84 = *(this + 90);
      *(&v84 + 1) = *&a3->mSelector;
      HALS_IOUAUCDriver::get_string_property(cf, v34, v84, a3->mElement, a8, a7);
      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      *v11 = CFRetain(*cf);
      a5->mSelector = 8;
      if (*cf)
      {
        CFRelease(*cf);
      }

      return;
    }

    if (mSelector == 1652060014)
    {
      if (a4 <= 3)
      {
        v60 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v60 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(this);
        }

        v62 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v61 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          v63 = *v62;
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        else
        {
          v63 = *v62;
        }

        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *cf = 136315650;
          *&cf[4] = "HALS_IOUABox.cpp";
          v75 = 1024;
          v76 = 307;
          v77 = 2080;
          v78 = "inDataSize < SizeOf32(UInt32)";
          _os_log_error_impl(&dword_1DE1F9000, v63, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size", cf, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v73);
        __cxa_allocate_exception(0x40uLL);
        std::runtime_error::runtime_error(&v66, "kAudioBoxPropertyAcquired");
        std::runtime_error::runtime_error(&outputStruct, &v66);
        v69 = 0;
        v70 = 0;
        v71 = 0;
        v72 = -1;
        outputStruct.__vftable = &unk_1F5992170;
        v68 = &unk_1F5992198;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(cf, &outputStruct);
        v79 = "virtual void HALS_IOUABox::GetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, UInt32 &, void *, UInt32, const void *, HALS_Client *) const";
        v80 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUABox.cpp";
        v81 = 307;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v65);
      }

      a5->mSelector = 4;
      *cf = 4;
      LODWORD(outputStruct.__vftable) = 0;
      v54 = *(this + 44);
      v55 = *(v54 + 736);
      v56 = *(v54 + 744);
      if (v56)
      {
        atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HALS_IOUAUCDriver::GetPropertyData(*(v55 + 4), a3, *(this + 90), a8, a7, &outputStruct, cf);
      if (v56)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v56);
      }

      *v11 = outputStruct.__vftable;
      return;
    }

    if (mSelector == 1668641652)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(this + 47) - *(this + 46)) >> 2) >= a4 / 0xCuLL)
      {
        v47 = a4 / 0xCuLL;
      }

      else
      {
        v47 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 47) - *(this + 46)) >> 2);
      }

      if (v47)
      {
        v48 = 0;
        v49 = 0;
        do
        {
          v50 = *(this + 46);
          if (0xAAAAAAAAAAAAAAABLL * ((*(this + 47) - v50) >> 2) > v49)
          {
            v51 = a6 + v48;
            v52 = (v50 + v48);
            v53 = *v52;
            *(v51 + 2) = *(v52 + 2);
            *v51 = v53;
          }

          ++v49;
          v48 += 12;
        }

        while (12 * v47 != v48);
      }

      v32 = 12 * v47;
      goto LABEL_41;
    }

    v26 = 1751412337;
LABEL_48:
    if (mSelector == v26)
    {
      goto LABEL_60;
    }

    goto LABEL_92;
  }

  if (mSelector > 1651007860)
  {
    if (mSelector == 1651007861 || mSelector == 1651010921)
    {
      goto LABEL_35;
    }

    v27 = 1651013225;
LABEL_34:
    if (mSelector == v27)
    {
      goto LABEL_35;
    }

LABEL_92:
    if (HALS_Box::HasProperty(this, a2, a3))
    {

      HALS_Box::GetPropertyData(this, a2, a3, a4, &a5->mSelector, v11, a7, a8, a9);
    }

    else
    {

      HALS_IOUAObject::GetPropertyData((this + 344), &a3->mSelector, a5, v11, a8, v57, v58, v59, a9);
    }

    return;
  }

  if (mSelector == 1634429294)
  {
LABEL_60:
    *cf = a4;
    v36 = *(this + 44);
    v37 = *(v36 + 736);
    v38 = *(v36 + 744);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v37 + 4), a3, *(this + 90), a8, a7, a6, cf);
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    a5->mSelector = *cf;
    return;
  }

  if (mSelector != 1650682915)
  {
    if (mSelector == 1650751011)
    {
      *cf = a5->mSelector;
      v18 = *(this + 44);
      v19 = *(v18 + 736);
      v20 = *(v18 + 744);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HALS_IOUAUCDriver::GetPropertyData(*(v19 + 4), a3, *(this + 90), a8, a7, a6, cf);
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      v21 = a5->mSelector;
      if (v21 >= 4)
      {
        v22 = v21 >> 2;
        do
        {
          v23 = HALS_IOUADriver::CopyDeviceByUCID(*(this + 44), *v11);
          if (v23)
          {
            v25 = *(v23 + 4);
          }

          else
          {
            v25 = 0;
          }

          *v11 = v25;
          HALS_ObjectMap::ReleaseObject(v23, v24);
          v11 = (v11 + 4);
          --v22;
        }

        while (v22);
      }

      return;
    }

    goto LABEL_92;
  }

  *cf = a5->mSelector;
  v39 = *(this + 44);
  v40 = *(v39 + 736);
  v41 = *(v39 + 744);
  if (v41)
  {
    atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HALS_IOUAUCDriver::GetPropertyData(*(v40 + 4), a3, *(this + 90), a8, a7, a6, cf);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = a5->mSelector;
  if (v42 >= 4)
  {
    v43 = v42 >> 2;
    do
    {
      v44 = HALS_IOUADriver::CopyClockDeviceByUCID(*(this + 44), *v11);
      if (v44)
      {
        v46 = *(v44 + 4);
      }

      else
      {
        v46 = 0;
      }

      *v11 = v46;
      HALS_ObjectMap::ReleaseObject(v44, v45);
      v11 = (v11 + 4);
      --v43;
    }

    while (v43);
  }
}

void sub_1DE52B6A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUABox::GetPropertyDataSize(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, const void *a5, HALS_Client *a6)
{
  mSelector = a3->mSelector;
  PropertySize = 8;
  if (a3->mSelector <= 1768777572)
  {
    if (mSelector > 1652060013)
    {
      if (mSelector <= 1751412336)
      {
        if (mSelector != 1652060014)
        {
          if (mSelector != 1668641652)
          {
            goto LABEL_35;
          }

          return (*(this + 94) - *(this + 92)) & 0xFFFFFFFC;
        }

LABEL_27:
        v16 = *(this + 44);
        v17 = *(v16 + 736);
        v18 = *(v16 + 744);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v17 + 4), a3, *(this + 90), a5, a4);
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        return PropertySize;
      }

      if (mSelector == 1751412337 || mSelector == 1751737454)
      {
        goto LABEL_27;
      }

      v15 = 1768124270;
LABEL_26:
      if (mSelector != v15)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (mSelector <= 1650751010)
    {
      if (mSelector == 1634429294)
      {
        goto LABEL_27;
      }

      v15 = 1650682915;
      goto LABEL_26;
    }

    if (mSelector == 1650751011)
    {
      goto LABEL_27;
    }

    v14 = 1651861860;
  }

  else
  {
    if (mSelector <= 1819173228)
    {
      if (mSelector > 1818850161)
      {
        if (mSelector != 1818850162)
        {
          if (mSelector != 1819107691)
          {
            v14 = 1819111268;
            goto LABEL_33;
          }

          return PropertySize;
        }

        goto LABEL_27;
      }

      if (mSelector == 1768777573)
      {
        goto LABEL_27;
      }

      v15 = 1818850145;
      goto LABEL_26;
    }

    if (mSelector > 1851878763)
    {
      if (mSelector == 1851878764)
      {
        return PropertySize;
      }

      if (mSelector == 1953653102)
      {
        goto LABEL_27;
      }

      v15 = 1920168547;
      goto LABEL_26;
    }

    if (mSelector == 1819173229)
    {
      return PropertySize;
    }

    v14 = 1836411236;
  }

LABEL_33:
  if (mSelector == v14)
  {
    return PropertySize;
  }

LABEL_35:
  if (HALS_Box::HasProperty(this, a2, a3))
  {

    return HALS_Box::GetPropertyDataSize(this, a2, a3, a4, a5, a6);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 344), a3, v20, v21, v22, v23);
  }
}

void sub_1DE52BA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUABox::IsPropertySettable(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1768777572)
  {
    if (mSelector > 1819173228)
    {
      if (mSelector <= 1851878763)
      {
        v8 = mSelector == 1819173229;
        v9 = 1836411236;
      }

      else
      {
        v8 = mSelector == 1851878764 || mSelector == 1953653102;
        v9 = 1920168547;
      }
    }

    else if (mSelector <= 1818850161)
    {
      v8 = mSelector == 1768777573;
      v9 = 1818850145;
    }

    else
    {
      v8 = mSelector == 1818850162 || mSelector == 1819107691;
      v9 = 1819111268;
    }

    goto LABEL_31;
  }

  IsPropertySettable = 0;
  if (mSelector <= 1652060013)
  {
    if (mSelector > 1650751010)
    {
      if (mSelector != 1650751011)
      {
        if (mSelector != 1651861860)
        {
          goto LABEL_41;
        }

        goto LABEL_36;
      }

      return IsPropertySettable;
    }

    if (mSelector != 1634429294)
    {
      v11 = 1650682915;
      goto LABEL_27;
    }

LABEL_36:
    v13 = *(this + 44);
    v14 = *(v13 + 736);
    v15 = *(v13 + 744);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v14 + 4), a3, *(this + 90));
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    return IsPropertySettable;
  }

  if (mSelector <= 1751412336)
  {
    if (mSelector != 1652060014)
    {
      v11 = 1668641652;
LABEL_27:
      if (mSelector != v11)
      {
        goto LABEL_41;
      }

      return IsPropertySettable;
    }

    goto LABEL_36;
  }

  v8 = mSelector == 1751412337 || mSelector == 1751737454;
  v9 = 1768124270;
LABEL_31:
  if (v8 || mSelector == v9)
  {
    goto LABEL_36;
  }

LABEL_41:
  if (HALS_Box::HasProperty(this, a2, a3))
  {

    return HALS_Box::IsPropertySettable(this, a2, a3);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 344), a3, v17, v18);
  }
}

void sub_1DE52BCD4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUABox::HasProperty(HALS_IOUABox *this, uint64_t a2, AudioObjectPropertyAddress *a3, HALS_Client *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector > 1768777572)
  {
    if (mSelector <= 1819173228)
    {
      v6 = mSelector == 1768777573 || mSelector == 1819107691;
      v7 = 1819111268;
    }

    else if (mSelector > 1920168546)
    {
      v6 = mSelector == 1953653102;
      v7 = 1920168547;
    }

    else
    {
      v6 = mSelector == 1819173229;
      v7 = 1851878764;
    }

    goto LABEL_20;
  }

  if (mSelector <= 1651861859)
  {
    v6 = mSelector == 1634429294 || mSelector == 1650682915;
    v7 = 1650751011;
LABEL_20:
    if (!v6 && mSelector != v7)
    {
      goto LABEL_17;
    }

LABEL_25:
    v10 = *(this + 44);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v11 + 4), a3, *(this + 90));
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    return HasProperty;
  }

  switch(mSelector)
  {
    case 1651861860:
      goto LABEL_25;
    case 1668641652:
      return *(this + 47) != *(this + 46);
    case 1768124270:
      goto LABEL_25;
  }

LABEL_17:
  if (HALS_Box::HasProperty(this, a2, a3))
  {
    return 1;
  }

  v14 = *(*(this + 43) + 16);

  return v14();
}

void sub_1DE52BEA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUABox::_Deactivate(uint64_t this)
{
  v2 = *(this + 392);
  v3 = *(this + 400);
  if (v2 != v3)
  {
    do
    {
      (*(**v2 + 8))();
      v4 = *v2++;
      HALS_ObjectMap::ObjectIsDead(v4, v5);
    }

    while (v2 != v3);
    v2 = *(this + 392);
  }

  *(this + 400) = v2;
  *(this + 8) = 0;
}

void HALS_IOUABox::Activate(HALS_IOUABox *this)
{
  HALS_IOUABox::UpdateControls(this);
  (*(*(this + 43) + 24))();

  HALS_Object::Activate(this, v2);
}

void HALS_IOUABox::UpdateControls(HALS_IOUABox *this)
{
  v46 = 0;
  v47 = &v46;
  v48 = 0x2000000000;
  v49 = 0;
  v2 = *(this + 44);
  v3 = *(v2 + 736);
  v4 = *(v2 + 744);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v3 + 4), "lrtcbolg", *(this + 90), 0, 0);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (PropertySize >= 4)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v43, PropertySize >> 2);
    v8 = v43;
    v35 = v44 - v43;
    v9 = *(this + 44);
    v10 = *(v9 + 736);
    v11 = *(v9 + 744);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v10 + 4), "lrtcbolg", *(this + 90), 0, 0, v8, &v35);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v7 = v43;
    v6 = v44;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x4002000000;
  v38 = __Block_byref_object_copy__10209;
  v39 = __Block_byref_object_dispose__10210;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x4002000000;
  v30 = __Block_byref_object_copy__10209;
  v31 = __Block_byref_object_dispose__10210;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1174405120;
  v23[2] = ___ZN12HALS_IOUABox14UpdateControlsEv_block_invoke;
  v23[3] = &unk_1F5978758;
  v23[7] = this;
  __p = 0;
  v23[4] = &v46;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v7, v6, (v6 - v7) >> 2);
  v23[5] = &v35;
  v23[6] = &v27;
  v12 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v12, v23);
  v17 = v36[5];
  v18 = v36[6];
  while (v17 != v18)
  {
    (***v17)(*v17, v13, v14, v15, v16);
    ++v17;
  }

  v19 = v28[5];
  for (i = v28[6]; v19 != i; ++v19)
  {
    v21 = *v19;
    if (HALS_IOUAControl::RefreshCache(*v19))
    {
      *(v47 + 24) = 1;
    }

    HALS_ObjectMap::ReleaseObject(v21, v22);
  }

  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v27, 8);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  _Block_object_dispose(&v35, 8);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  _Block_object_dispose(&v46, 8);
}

void sub_1DE52C2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    *(v35 - 96) = v37;
    operator delete(v37);
  }

  _Block_object_dispose((v35 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__10209(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__10210(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN12HALS_IOUABox14UpdateControlsEv_block_invoke(void *a1, HALS_Object *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = a1[8];
  v3 = a1[7];
  v4 = a1[9] - v2;
  v39 = *(a1[5] + 8);
  v5 = *(v3 + 392);
  v6 = *(v3 + 400);
  if (v5 != v6)
  {
    v7 = *(v3 + 392);
    do
    {
      v8 = *v7++;
      *(v8 + 13) = 0;
    }

    while (v7 != v6);
  }

  if ((v4 & 0x3FFFFFFFCLL) != 0)
  {
    v9 = 0;
    v10 = (v4 >> 2);
    while (1)
    {
      *buf = 0;
      v11 = *(v3 + 392);
      v12 = *(v3 + 400);
      if (v11 != v12)
      {
        while (!*v11 || *(*v11 + 88) != *(v2 + 4 * v9))
        {
          v11 += 8;
          if (v11 == v12)
          {
            goto LABEL_13;
          }
        }
      }

      if (v11 == v12)
      {
LABEL_13:
        v13 = *(v2 + 4 * v9);
        if (v13)
        {
          v14 = *(v3 + 352);
          v15 = *(v14 + 736);
          v16 = *(v14 + 744);
          if (v16)
          {
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          outputStruct = 0;
          v40 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v15 + 4), "salcbolg", v13, 0, 0, &outputStruct, &v40);
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          }

          v17 = *(v3 + 352);
          v18 = *(v17 + 736);
          v19 = *(v17 + 744);
          if (v19)
          {
            atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v43 = 0;
          v42 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v18 + 4), "slcbbolg", v13, 0, 0, &v43, &v42);
          if (v19)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v19);
          }

          v20 = *(v3 + 352);
          v21 = *(v20 + 736);
          v22 = *(v20 + 744);
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v45 = 0;
          v44 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v21 + 4), "pcscbolg", v13, 0, 0, &v45, &v44);
          if (v22)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v22);
          }

          v23 = *(v3 + 352);
          v24 = *(v23 + 736);
          v25 = *(v23 + 744);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v47 = 0;
          v46 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v24 + 4), "mlecbolg", v13, 0, 0, &v47, &v46);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          operator new();
        }
      }

      else
      {
        *(*v11 + 13) = 1;
      }

      if (++v9 == v10)
      {
        v5 = *(v3 + 392);
        v6 = *(v3 + 400);
        goto LABEL_36;
      }
    }
  }

  while (1)
  {
LABEL_36:
    if (v5 == v6)
    {
      v27 = 0;
      goto LABEL_47;
    }

    v26 = *v5;
    if (*v5)
    {
      if (*(v26 + 13) != 1)
      {
        break;
      }
    }

    ++v5;
  }

  (*(*v26 + 8))(v26, a2);
  HALS_ObjectMap::ObjectIsDead(*v5, v28);
  v27 = 1;
  if (v5 != v6)
  {
    v29 = v5 + 1;
    if (v5 + 1 != v6)
    {
      do
      {
        v30 = *v29;
        if (*v29 && (*(v30 + 13) & 1) == 0)
        {
          (*(*v30 + 8))(v30);
          HALS_ObjectMap::ObjectIsDead(*v29, v31);
        }

        else
        {
          *v5++ = v30;
        }

        ++v29;
      }

      while (v29 != v6);
      v27 = 1;
    }
  }

  v6 = v5;
LABEL_47:
  if (v6 != *(v3 + 400))
  {
    a2 = *(v3 + 400);
    *(v3 + 400) = v6;
  }

  v33 = *(v39 + 40);
  v32 = *(v39 + 48);
  if (v32 != v33)
  {
    do
    {
      *buf = *v33;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v3 + 392, buf);
      ++v33;
    }

    while (v33 != v32);
    v27 = 1;
  }

  *(*(a1[4] + 8) + 24) = v27;
  v34 = *(a1[6] + 8);
  if (v3 + 392 != v34 + 40)
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v34 + 40), *(v3 + 392), *(v3 + 400), (*(v3 + 400) - *(v3 + 392)) >> 3);
  }

  v35 = *(v34 + 40);
  v36 = *(v34 + 48);
  while (v35 != v36)
  {
    v37 = *v35++;
    HALS_ObjectMap::RetainObject(v37, a2);
  }
}

void sub_1DE52C958(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::Graph::Synchronized_Mixer_Manager::get_mixer(void *a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v10 = std::__hash_table<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::__unordered_map_hasher<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::hash<AMCP::Terminal_Identifier>,std::equal_to<AMCP::Terminal_Identifier>,true>,std::__unordered_map_equal<AMCP::Terminal_Identifier,std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>,std::equal_to<AMCP::Terminal_Identifier>,std::hash<AMCP::Terminal_Identifier>,true>,std::allocator<std::__hash_value_type<AMCP::Terminal_Identifier,std::vector<AMCP::Wire_Identifier>>>>::find<AMCP::Terminal_Identifier>(a2, a3);
  if (!v10 || ((v11 = v10[7], (v12 = v11[11]) == 0) ? (v15 = 0, v16 = 0, v14 = 0uLL, v13 = 0.0) : (v13 = *(v12 + 8), v14 = *(v12 + 16), v15 = *(v12 + 32), v16 = *(v12 + 36), LODWORD(v12) = *(v12 + 40)), (v17 = v15 == *(a4 + 24), v18 = v16 == *(a4 + 28), v19 = ~vaddvq_s32(vandq_s8(vceqq_s32(v14, *(a4 + 8)), xmmword_1DE758110)) & 0xF, v13 == *a4) ? (v20 = v19 == 0) : (v20 = 0), v20 ? (v21 = !v17) : (v21 = 1), !v21 ? (v22 = !v18) : (v22 = 1), !v22 ? (v23 = v12 == *(a4 + 32)) : (v23 = 0), !v23))
  {
    v24 = std::__hash_table<std::__hash_value_type<std::string,std::vector<unsigned int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<unsigned int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<unsigned int>>>>::find<std::string>(a2 + 5, a3);
    if (v24)
    {
      v25 = v24;
      v26 = v24[5];
      v27 = *(v26 + 48);
      v28 = *(v26 + 56);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = *(a5 + 24);
      v29 = *(a5 + 32);
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v29);
      }

      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      if (v27 != v30)
      {
        v31 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v31 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v29);
        }

        v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v32 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
          v34 = *v33;
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        else
        {
          v34 = *v33;
        }

        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v51[0] = 136315650;
          *&v51[1] = "Synchronized_Mixer_Manager.cpp";
          LOWORD(v51[3]) = 1024;
          *(&v51[3] + 2) = 54;
          HIWORD(v51[4]) = 2080;
          *&v51[5] = "not ((*found).second->get_timebase() == buffer_size.get_clock())";
          _os_log_error_impl(&dword_1DE1F9000, v34, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Wrong time base for synchronizer", v51, 0x1Cu);
        }

        AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v50);
        __cxa_allocate_exception(0x40uLL);
        caulk::make_string(&v42, "Wrong time base for synchronizer", v38);
        std::logic_error::logic_error(&v43, &v42);
        v43.__vftable = (MEMORY[0x1E69E55A8] + 16);
        std::logic_error::logic_error(&v44, &v43);
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = -1;
        v44.__vftable = &unk_1F5991430;
        v45 = &unk_1F5991458;
        boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(v51, &v44);
        v52 = "Synchronizer_Ref AMCP::Graph::Synchronized_Mixer_Manager::get_synchronizer_for_node(const Graph_Node_UID &, const DAL::DAL_Time_Delta &)";
        v53 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/Graph/Synchronized_Mixer_Manager.cpp";
        v54 = 54;
        applesauce::backtrace::snapshot_N<64>::snapshot_N(&v39);
      }

      v36 = v25[6];
      if (v36)
      {
        atomic_fetch_add_explicit((v36 + 8), 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v35 = *(a5 + 32);
    v40 = *(a5 + 24);
    *&v41 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v37 = v10[8];
  *a1 = v11;
  a1[1] = v37;
  if (v37)
  {
    atomic_fetch_add_explicit(v37 + 1, 1uLL, memory_order_relaxed);
  }
}

void sub_1DE52D73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, char a31)
{
  if (*(&a11 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&a11 + 1));
    v31 = __p;
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<AMCP::Terminal_Identifier,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<AMCP::Terminal_Identifier const,std::shared_ptr<AMCP::DAL::Synchronized_Mixer>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_emplace<AMCP::DAL::Synchronized_Mixer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59787E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__split_buffer<AMCP::Terminal_Identifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void AMCP::DAL::DAL_Time::validate(AMCP::DAL::DAL_Time *this)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v14 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
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
      *buf = 136315650;
      v31 = "DAL_Time.cpp";
      v32 = 1024;
      v33 = 96;
      v34 = 2080;
      v35 = "not (m_timebase != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to translate times with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v21, "Attempt to translate times with an invalid clock", v18);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
    v36 = "void AMCP::DAL::DAL_Time::validate() const";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v38 = 96;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  v3 = *this;
  if (*this == 1)
  {
    *(this + 1) = (*(*v2 + 64))(v2, *(this + 2));
    v8 = (*(**(this + 3) + 136))(*(this + 3));
    if ((v9 & 1) != 0 && round(*(this + 1)) < round(*&v8) && *(this + 2))
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
        *buf = 136315394;
        v31 = "DAL_Time.cpp";
        v32 = 1024;
        v33 = 107;
        _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d We somehow are dealing with a time before the timebase's valid time region", buf, 0x12u);
      }
    }
  }

  else if (v3 == 2)
  {
    *(this + 2) = (*(*v2 + 56))(v2, *(this + 1));
  }

  else if (!v3)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v2);
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
      v31 = "DAL_Time.cpp";
      v32 = 1024;
      v33 = 97;
      v34 = 2080;
      v35 = "not (m_valid_types != Valid_Types::Invalid)";
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to validate time with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v29);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v21, "Attempt to validate time with an invalid clock", v19);
    std::logic_error::logic_error(&v22, &v21);
    v22.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v23, &v22);
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = -1;
    v23.__vftable = &unk_1F5991430;
    v24 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v23);
    v36 = "void AMCP::DAL::DAL_Time::validate() const";
    v37 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v38 = 97;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v20);
  }

  *this = 3;
}

void sub_1DE52DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

uint64_t AMCP::DAL::DAL_Time::get_host_time(AMCP::DAL::DAL_Time *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "DAL_Time.cpp";
      v20 = 1024;
      v21 = 71;
      v22 = 2080;
      v23 = "not (m_valid_types != Valid_Types::Invalid)";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to get host time with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v9, "Attempt to get host time with an invalid clock", v7);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "uint64_t AMCP::DAL::DAL_Time::get_host_time() const";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v26 = 71;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  if ((*this & 1) == 0)
  {
    AMCP::DAL::DAL_Time::validate(this);
  }

  return *(this + 2);
}

void sub_1DE52E2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

double AMCP::DAL::DAL_Time::get_sample_time(AMCP::DAL::DAL_Time *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!*this)
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "DAL_Time.cpp";
      v20 = 1024;
      v21 = 84;
      v22 = 2080;
      v23 = "not (m_valid_types != Valid_Types::Invalid)";
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to get sample time with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v17);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v9, "Attempt to get sample time with an invalid clock", v7);
    std::logic_error::logic_error(&v10, &v9);
    v10.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v11, &v10);
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = -1;
    v11.__vftable = &unk_1F5991430;
    v12 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v11);
    v24 = "Sample_Time AMCP::DAL::DAL_Time::get_sample_time() const";
    v25 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v26 = 84;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v8);
  }

  if ((*this & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(this);
  }

  return *(this + 1);
}

void sub_1DE52E61C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
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

BOOL AMCP::DAL::DAL_Time::operator==(AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 149;
      v41 = 2080;
      v42 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "", v25);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time::operator==(const DAL_Time &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 149;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 150;
      v41 = 2080;
      v42 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "DAL_Time comparisions must be source from the same timebase", v26);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time::operator==(const DAL_Time &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 150;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v10 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 3) + 16))(*(a2 + 3));
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v10 + 23);
  }

  else
  {
    v12 = *(v10 + 8);
  }

  v13 = *(v6 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v6 + 8);
  }

  if (v12 != v13)
  {
    goto LABEL_35;
  }

  v15 = v11 >= 0 ? v10 : *v10;
  v16 = v14 >= 0 ? v6 : *v6;
  v6 = memcmp(v15, v16, v12);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(a2);
  }

  return round(*(this + 1)) == round(*(a2 + 1));
}

void sub_1DE52EC44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

BOOL AMCP::DAL::DAL_Time::operator<(AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 159;
      v41 = 2080;
      v42 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "", v25);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time::operator<(const DAL_Time &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 159;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 160;
      v41 = 2080;
      v42 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "DAL_Time comparisions must be source from the same timebase", v26);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time::operator<(const DAL_Time &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 160;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v10 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 3) + 16))(*(a2 + 3));
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v10 + 23);
  }

  else
  {
    v12 = *(v10 + 8);
  }

  v13 = *(v6 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v6 + 8);
  }

  if (v12 != v13)
  {
    goto LABEL_35;
  }

  v15 = v11 >= 0 ? v10 : *v10;
  v16 = v14 >= 0 ? v6 : *v6;
  v6 = memcmp(v15, v16, v12);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(a2);
  }

  return round(*(this + 1)) < round(*(a2 + 1));
}

void sub_1DE52F274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

AMCP::DAL::DAL_Time *AMCP::DAL::DAL_Time::operator+=(AMCP::DAL::DAL_Time *this, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 170;
      v41 = 2080;
      v42 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "", v25);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "DAL_Time &AMCP::DAL::DAL_Time::operator+=(const DAL_Time_Delta &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 170;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 24);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 171;
      v41 = 2080;
      v42 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "DAL_Time comparisions must be source from the same timebase", v26);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "DAL_Time &AMCP::DAL::DAL_Time::operator+=(const DAL_Time_Delta &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 171;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v10 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 24) + 16))(*(a2 + 24));
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v10 + 23);
  }

  else
  {
    v12 = *(v10 + 8);
  }

  v13 = *(v6 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v6 + 8);
  }

  if (v12 != v13)
  {
    goto LABEL_35;
  }

  v15 = v11 >= 0 ? v10 : *v10;
  v16 = v14 >= 0 ? v6 : *v6;
  v6 = memcmp(v15, v16, v12);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a2);
  }

  *this = 2;
  *(this + 2) = 0;
  *(this + 1) = *(a2 + 8) + *(this + 1);
  return this;
}

void sub_1DE52F8AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

void AMCP::DAL::DAL_Time_Delta::validate(AMCP::DAL::DAL_Time_Delta *this)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (!v2)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v22 = "DAL_Time.cpp";
      v23 = 1024;
      v24 = 415;
      v25 = 2080;
      v26 = "not (m_timebase != nullptr)";
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s Attempt to translate times with an invalid clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v20);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v12, "Attempt to translate times with an invalid clock", v10);
    std::logic_error::logic_error(&v13, &v12);
    v13.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v14, &v13);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = -1;
    v14.__vftable = &unk_1F5991430;
    v15 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v14);
    v27 = "void AMCP::DAL::DAL_Time_Delta::validate() const";
    v28 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v29 = 415;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v11);
  }

  v3 = *this;
  if (*this == 1)
  {
    v4 = *(this + 2);
    *(this + 1) = v4 / (*(*v2 + 72))(v2);
    v3 = *this;
  }

  if (v3 == 2)
  {
    v5 = *(this + 1);
    *(this + 2) = (v5 * (*(**(this + 3) + 72))(*(this + 3)));
  }

  *this = 3;
}

void sub_1DE52FC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::~clone_impl(v28 - 128);
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

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v28 - 129));
  _Unwind_Resume(a1);
}

AMCP::DAL::DAL_Time *AMCP::DAL::DAL_Time::operator-=(AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time_Delta *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 182;
      v41 = 2080;
      v42 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "", v25);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "DAL_Time &AMCP::DAL::DAL_Time::operator-=(const DAL_Time_Delta &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 182;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 3);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    if (!(v6 | v7))
    {
      if ((v2 & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_35:
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 183;
      v41 = 2080;
      v42 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "DAL_Time comparisions must be source from the same timebase", v26);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "DAL_Time &AMCP::DAL::DAL_Time::operator-=(const DAL_Time_Delta &)";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 183;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v10 = (*(*v6 + 16))(v6);
  v6 = (*(**(a2 + 3) + 16))(*(a2 + 3));
  v11 = *(v10 + 23);
  if (v11 >= 0)
  {
    v12 = *(v10 + 23);
  }

  else
  {
    v12 = *(v10 + 8);
  }

  v13 = *(v6 + 23);
  v14 = v13;
  if ((v13 & 0x80u) != 0)
  {
    v13 = *(v6 + 8);
  }

  if (v12 != v13)
  {
    goto LABEL_35;
  }

  v15 = v11 >= 0 ? v10 : *v10;
  v16 = v14 >= 0 ? v6 : *v6;
  v6 = memcmp(v15, v16, v12);
  if (v6)
  {
    goto LABEL_35;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a2 & 2) == 0)
  {
    AMCP::DAL::DAL_Time_Delta::validate(a2);
  }

  *this = 2;
  *(this + 2) = 0;
  *(this + 1) = *(this + 1) - *(a2 + 1);
  return this;
}

void sub_1DE530288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

double AMCP::DAL::DAL_Time::operator-(uint64_t a1, AMCP::DAL::DAL_Time *this, AMCP::DAL::DAL_Time *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  if (*this)
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
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
      *buf = 136315650;
      v43 = "DAL_Time.cpp";
      v44 = 1024;
      v45 = 193;
      v46 = 2080;
      v47 = "not (not (m_valid_types == Valid_Types::Invalid or t.m_valid_types == Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "", v30);
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    v48 = "DAL_Time_Delta AMCP::DAL::DAL_Time::operator-(const DAL_Time &) const";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v50 = 193;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v7 = *(this + 3);
  v8 = *(a3 + 3);
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
    if (!(v7 | v8))
    {
      if ((*this & 2) != 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_37:
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
      *buf = 136315650;
      v43 = "DAL_Time.cpp";
      v44 = 1024;
      v45 = 194;
      v46 = 2080;
      v47 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v29, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v41);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v33, "DAL_Time comparisions must be source from the same timebase", v31);
    std::logic_error::logic_error(&v34, &v33);
    v34.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v35, &v34);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = -1;
    v35.__vftable = &unk_1F5991430;
    v36 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v35);
    v48 = "DAL_Time_Delta AMCP::DAL::DAL_Time::operator-(const DAL_Time &) const";
    v49 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v50 = 194;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v32);
  }

  v15 = (*(*v7 + 16))(v7);
  v7 = (*(**(a3 + 3) + 16))(*(a3 + 3));
  v16 = *(v15 + 23);
  if (v16 >= 0)
  {
    v17 = *(v15 + 23);
  }

  else
  {
    v17 = *(v15 + 8);
  }

  v18 = *(v7 + 23);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(v7 + 8);
  }

  if (v17 != v18)
  {
    goto LABEL_37;
  }

  v20 = v16 >= 0 ? v15 : *v15;
  v21 = v19 >= 0 ? v7 : *v7;
  v7 = memcmp(v20, v21, v17);
  if (v7)
  {
    goto LABEL_37;
  }

  if ((*this & 2) == 0)
  {
LABEL_12:
    AMCP::DAL::DAL_Time::validate(this);
  }

LABEL_13:
  if ((*a3 & 2) == 0)
  {
    AMCP::DAL::DAL_Time::validate(a3);
  }

  v10 = *(this + 1);
  v11 = *(a3 + 1);
  v13 = *(this + 3);
  v12 = *(this + 4);
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  result = v10 - v11;
  *a1 = 2;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  *(a1 + 24) = v13;
  *(a1 + 32) = v12;
  return result;
}

void sub_1DE5308D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

uint64_t AMCP::DAL::DAL_Time::translate_time(uint64_t a1, AMCP::DAL::DAL_Time *this, uint64_t *a3)
{
  result = *a3;
  v7 = *(this + 3);
  if (*a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = result | v7;
    if (v9)
    {
LABEL_21:
      result = AMCP::DAL::DAL_Time::get_host_time(this);
      v19 = *a3;
      v18 = a3[1];
      if (v18)
      {
        atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
      }

      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = result;
      *(a1 + 24) = v19;
      *(a1 + 32) = v18;
      return result;
    }
  }

  else
  {
    v10 = (*(*result + 16))(result);
    v11 = (*(**(this + 3) + 16))(*(this + 3));
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v13 != v14)
    {
      goto LABEL_21;
    }

    v16 = v12 >= 0 ? v10 : *v10;
    v17 = v15 >= 0 ? v11 : *v11;
    result = memcmp(v16, v17, v13);
    if (result)
    {
      goto LABEL_21;
    }

    v9 = *(this + 3);
  }

  *a1 = *this;
  *(a1 + 16) = *(this + 2);
  *(a1 + 24) = v9;
  v20 = *(this + 4);
  *(a1 + 32) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t AMCP::DAL::DAL_Time_Range::DAL_Time_Range(uint64_t a1, uint64_t *a2, double a3, double a4)
{
  v5 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *a2;
    v7 = a2[1];
  }

  else
  {
    v7 = 0;
    v8 = *a2;
  }

  *a2 = 0;
  a2[1] = 0;
  *a1 = 2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 2;
  *(a1 + 48) = a4;
  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  *(a1 + 72) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return a1;
}

uint64_t AMCP::DAL::DAL_Time_Range::DAL_Time_Range(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
    v5 = a2[1];
  }

  else
  {
    v5 = 0;
    v6 = *a2;
  }

  *a2 = 0;
  a2[1] = 0;
  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
    v5 = a2[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v3;
    *(a1 + 32) = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = 2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v6;
    *(a1 + 72) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v3;
    *(a1 + 32) = 0;
    *(a1 + 40) = 2;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v3;
    *(a1 + 72) = 0;
  }

  return a1;
}

AMCP::DAL::DAL_Time_Range *AMCP::DAL::DAL_Time_Range::DAL_Time_Range(AMCP::DAL::DAL_Time_Range *this, const AMCP::DAL::DAL_Time *a2, const AMCP::DAL::DAL_Time *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  *(this + 2) = *(a2 + 2);
  *this = v4;
  *(this + 3) = *(a2 + 3);
  v5 = *(a2 + 4);
  *(this + 4) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *a3;
  *(this + 7) = *(a3 + 2);
  *(this + 40) = v6;
  *(this + 8) = *(a3 + 3);
  v7 = *(a3 + 4);
  *(this + 9) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a2 + 3);
  v9 = *(a2 + 4);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a3 + 3);
  v10 = *(a3 + 4);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = (v8 | v11) == 0;
  if (!v8 || !v11)
  {
LABEL_24:
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v13 = (*(*v8 + 16))(v8);
  v8 = (*(*v11 + 16))(v11);
  v14 = *(v13 + 23);
  if (v14 >= 0)
  {
    v15 = *(v13 + 23);
  }

  else
  {
    v15 = *(v13 + 8);
  }

  v16 = *(v8 + 23);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(v8 + 8);
  }

  if (v15 == v16)
  {
    if (v14 >= 0)
    {
      v18 = v13;
    }

    else
    {
      v18 = *v13;
    }

    if (v17 >= 0)
    {
      v19 = v8;
    }

    else
    {
      v19 = *v8;
    }

    v8 = memcmp(v18, v19, v15);
    v12 = v8 == 0;
    goto LABEL_24;
  }

  v12 = 0;
  if (v10)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

LABEL_26:
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v12)
  {
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v8);
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
      *buf = 136315650;
      v37 = "DAL_Time.cpp";
      v38 = 1024;
      v39 = 266;
      v40 = 2080;
      v41 = "not (is_same_timebase(start.get_clock(), end.get_clock()))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Interval requires time from the same clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v35);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v27, "DAL_Time_Interval requires time from the same clock", v25);
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
    v42 = "AMCP::DAL::DAL_Time_Range::DAL_Time_Range(const DAL_Time &, const DAL_Time &)";
    v43 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v44 = 266;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v26);
  }

  return this;
}

void sub_1DE530FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  v27 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(v24);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::DAL_Time_Range::DAL_Time_Range(uint64_t a1, __int128 *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a1 + 24) = *(a2 + 3);
  v4 = *(a2 + 4);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 7);
  *(a1 + 40) = v5;
  *(a1 + 64) = *(a2 + 8);
  v6 = *(a2 + 9);
  *(a1 + 72) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 3);
  v8 = *(a2 + 4);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 8);
  v9 = *(a2 + 9);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = (v7 | v10) == 0;
  if (!v7 || !v10)
  {
LABEL_24:
    if (!v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = (*(*v7 + 16))(v7);
  v7 = (*(*v10 + 16))(v10);
  v13 = *(v12 + 23);
  if (v13 >= 0)
  {
    v14 = *(v12 + 23);
  }

  else
  {
    v14 = *(v12 + 8);
  }

  v15 = *(v7 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = *(v7 + 8);
  }

  if (v14 == v15)
  {
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
      v18 = v7;
    }

    else
    {
      v18 = *v7;
    }

    v7 = memcmp(v17, v18, v14);
    v11 = v7 == 0;
    goto LABEL_24;
  }

  v11 = 0;
  if (v9)
  {
LABEL_25:
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_26:
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (!v11)
  {
    v20 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v20 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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

    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v36 = "DAL_Time.cpp";
      v37 = 1024;
      v38 = 279;
      v39 = 2080;
      v40 = "not (is_same_timebase(other.start().get_clock(), other.end().get_clock()))";
      _os_log_error_impl(&dword_1DE1F9000, v23, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Interval requires time from the same clock", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v34);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v26, "DAL_Time_Interval requires time from the same clock", v24);
    std::logic_error::logic_error(&v27, &v26);
    v27.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v28, &v27);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = -1;
    v28.__vftable = &unk_1F5991430;
    v29 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v28);
    v41 = "AMCP::DAL::DAL_Time_Range::DAL_Time_Range(const time_range<DAL_Time, DAL_Time_Delta> &)";
    v42 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v43 = 279;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v25);
  }

  return a1;
}

void sub_1DE53147C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, char a24)
{
  v27 = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  AMCP::DAL::DAL_Time_Range::~DAL_Time_Range(v24);
  _Unwind_Resume(a1);
}

uint64_t AMCP::DAL::DAL_Time_Range::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  v8 = *(a2 + 72);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 72);
  *(a1 + 64) = v7;
  *(a1 + 72) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  return a1;
}

double AMCP::DAL::DAL_Time_Range::get_range(AMCP::DAL::DAL_Time_Range *this)
{
  sample_time = AMCP::DAL::DAL_Time::get_sample_time(this);
  AMCP::DAL::DAL_Time::get_sample_time((this + 40));
  return sample_time;
}

BOOL AMCP::DAL::DAL_Time_Delta::operator==(AMCP::DAL::DAL_Time_Delta *this, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v18 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v39 = "DAL_Time.cpp";
      v40 = 1024;
      v41 = 320;
      v42 = 2080;
      v43 = "not (not (m_valid_types == DAL_Time::Valid_Types::Invalid or t.m_valid_types == DAL_Time::Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v21, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v29, "", v26);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v31);
    v44 = "BOOL AMCP::DAL::DAL_Time_Delta::operator==(const DAL_Time_Delta &) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v46 = 320;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 24);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (*(*v6 + 16))(v6);
    v6 = (*(**(a2 + 24) + 16))(*(a2 + 24));
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(v6 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v6 + 8);
    }

    if (v11 == v12)
    {
      v14 = v10 >= 0 ? v9 : *v9;
      v15 = v13 >= 0 ? v6 : *v6;
      v6 = memcmp(v14, v15, v11);
      if (!v6)
      {
        v2 = *this;
        if ((*this & 2) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

LABEL_44:
    v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v22 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v39 = "DAL_Time.cpp";
      v40 = 1024;
      v41 = 321;
      v42 = 2080;
      v43 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Delta comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v37);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v29, "DAL_Time_Delta comparisions must be source from the same timebase", v27);
    std::logic_error::logic_error(&v30, &v29);
    v30.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v31, &v30);
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = -1;
    v31.__vftable = &unk_1F5991430;
    v32 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v31);
    v44 = "BOOL AMCP::DAL::DAL_Time_Delta::operator==(const DAL_Time_Delta &) const";
    v45 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v46 = 321;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v28);
  }

  if (v6 | v7)
  {
    goto LABEL_44;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((*a2 & 2) != 0 && (v2 & *a2 & 1) == 0)
  {
    return round(*(this + 1)) == round(*(a2 + 8));
  }

LABEL_29:
  AMCP::DAL::DAL_Time_Delta::validate(this);
  if ((*this & 2) != 0 && (*a2 & 2) != 0)
  {
    return round(*(this + 1)) == round(*(a2 + 8));
  }

  if ((*this & 1) == 0 || (*a2 & 1) == 0)
  {
    return 0;
  }

  return *(this + 2) == *(a2 + 16);
}

void sub_1DE531C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

BOOL AMCP::DAL::DAL_Time_Delta::operator<(AMCP::DAL::DAL_Time_Delta *this, uint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (*this)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v17 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = *v19;
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    else
    {
      v20 = *v19;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 343;
      v41 = 2080;
      v42 = "not (not (m_valid_types == DAL_Time::Valid_Types::Invalid or t.m_valid_types == DAL_Time::Valid_Types::Invalid))";
      _os_log_error_impl(&dword_1DE1F9000, v20, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s ", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "", v25);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time_Delta::operator<(const DAL_Time_Delta &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 343;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  v6 = *(this + 3);
  v7 = *(a2 + 24);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (*(*v6 + 16))(v6);
    v6 = (*(**(a2 + 24) + 16))(*(a2 + 24));
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(v6 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v6 + 8);
    }

    if (v11 == v12)
    {
      v14 = v10 >= 0 ? v9 : *v9;
      v15 = v13 >= 0 ? v6 : *v6;
      v6 = memcmp(v14, v15, v11);
      if (!v6)
      {
        v2 = *this;
        if ((*this & 2) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }
    }

LABEL_41:
    v21 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v21 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v6);
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
      *buf = 136315650;
      v38 = "DAL_Time.cpp";
      v39 = 1024;
      v40 = 344;
      v41 = 2080;
      v42 = "not (is_same_timebase(m_timebase, t.m_timebase))";
      _os_log_error_impl(&dword_1DE1F9000, v24, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s DAL_Time_Delta comparisions must be source from the same timebase", buf, 0x1Cu);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v36);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string(&v28, "DAL_Time_Delta comparisions must be source from the same timebase", v26);
    std::logic_error::logic_error(&v29, &v28);
    v29.__vftable = (MEMORY[0x1E69E55A8] + 16);
    std::logic_error::logic_error(&v30, &v29);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = -1;
    v30.__vftable = &unk_1F5991430;
    v31 = &unk_1F5991458;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::domain_error>>::clone_impl(buf, &v30);
    v43 = "BOOL AMCP::DAL::DAL_Time_Delta::operator<(const DAL_Time_Delta &) const";
    v44 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/IO/DAL/DAL_Time.cpp";
    v45 = 344;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v27);
  }

  if (v6 | v7)
  {
    goto LABEL_41;
  }

  if ((v2 & 2) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  if ((*a2 & 2) != 0 && (v2 & *a2 & 1) == 0)
  {
    return round(*(this + 1)) < round(*(a2 + 8));
  }

LABEL_29:
  AMCP::DAL::DAL_Time_Delta::validate(this);
  if ((*this & 2) != 0 && (*a2 & 2) != 0)
  {
    return round(*(this + 1)) < round(*(a2 + 8));
  }

  return (*this & 1) != 0 && (*a2 & 1) != 0 && *(this + 2) < *(a2 + 16);
}

void sub_1DE5322F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
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

void AMCP::DAL::DAL_Time_Delta::translate_time_delta(uint64_t a1, AMCP::DAL::DAL_Time_Delta *this, uint64_t *a3)
{
  v6 = *a3;
  v7 = *(this + 3);
  if (*a3)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = v6 | v7;
    if (v9)
    {
LABEL_21:
      if ((*this & 1) == 0)
      {
        AMCP::DAL::DAL_Time_Delta::validate(this);
      }

      v18 = *(this + 2);
      v20 = *a3;
      v19 = a3[1];
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = v18;
      *(a1 + 24) = v20;
      *(a1 + 32) = v19;
      return;
    }
  }

  else
  {
    v10 = (*(*v6 + 16))(v6);
    v11 = (*(**(this + 3) + 16))(*(this + 3));
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = *(v10 + 23);
    }

    else
    {
      v13 = *(v10 + 8);
    }

    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v13 != v14)
    {
      goto LABEL_21;
    }

    v16 = v12 >= 0 ? v10 : *v10;
    v17 = v15 >= 0 ? v11 : *v11;
    if (memcmp(v16, v17, v13))
    {
      goto LABEL_21;
    }

    v9 = *(this + 3);
  }

  *a1 = *this;
  *(a1 + 16) = *(this + 2);
  *(a1 + 24) = v9;
  v21 = *(this + 4);
  *(a1 + 32) = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }
}

__n128 caulk::concurrent::atomic_value<AMCP::Graph::Wire_Volume_Connection::Volume_Parameters,2,6>::store(unsigned int *a1, __int128 *a2)
{
  for (i = 0; ; caulk::concurrent::details::spinloop::spin(&i))
  {
    v4 = atomic_load(a1);
    if ((v4 & 1) == 0)
    {
      v5 = v4;
      atomic_compare_exchange_strong(a1, &v5, v4 | 1);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v6 = v4 >> 2;
  v7 = (v4 & 0xFFFFFFFC) + 5;
  v8 = &a1[48 * ((v4 >> 2) & 1)];
  atomic_store((2 * (v6 & 0x3FFFFFFF)) | 1, v8 + 16);
  v9 = *a2;
  *(v8 + 22) = a2[1];
  *(v8 + 18) = v9;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  *(v8 + 38) = a2[5];
  *(v8 + 34) = v12;
  *(v8 + 30) = v11;
  *(v8 + 26) = v10;
  result = a2[6];
  v14 = a2[7];
  v15 = a2[8];
  *(v8 + 209) = *(a2 + 137);
  *(v8 + 50) = v15;
  *(v8 + 46) = v14;
  *(v8 + 42) = result;
  __dmb(0xBu);
  atomic_store(2 * v6, v8 + 16);
  atomic_store(v7 & 0xFFFFFFFC | 2, a1);
  return result;
}

double AMCP::IOAudio2::Engine::convert_host_to_sample_time(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 164);
  v4 = AMCP::IO_Clock::convert_host_to_sample_time_internal(&this[144], a2);
  os_unfair_lock_unlock(this + 164);
  return v4;
}

double AMCP::IOAudio2::Engine::get_current_host_ticks_per_frame(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 164);
  v2 = *&this[160]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 164);
  return v2;
}

double AMCP::IOAudio2::Engine::get_zero_time_stamp@<D0>(AMCP::IOAudio2::Engine *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 93);
  if (v2 && (v3 = *(v2 + 16)) != 0)
  {
    v4 = *v3;
    *a2 = *v3;
    *(a2 + 8) = *(&v4 + 1);
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  *&result = 3;
  *(a2 + 56) = 3;
  return result;
}

uint64_t AMCP::IOAudio2::Engine::end_writing(AMCP::IOAudio2::Engine *this, unint64_t a2, unint64_t a3, double a4, unint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *(*(this + 93) + 16);
  if (v7)
  {
    v8 = a5 + a4;
    if (v8 > *(v7 + 32))
    {
      *(v7 + 32) = v8;
    }
  }

  if (*(this + 97) == *(this + 98))
  {
    return 1;
  }

  if (*(this + 801) != 1)
  {
    return 1;
  }

  v9 = a4;
  v10 = a4 >> 32;
  v11 = AMCP::IO_Clock::convert_sample_to_host_time(this + 144, a4);
  v12 = MEMORY[0x1E12C0820](*(this + 185), 0, 0, a5, v10, v9, HIDWORD(v11), v11);
  v13 = v12;
  if (!v12)
  {
    return 1;
  }

  v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v14 & 1) == 0)
  {
    v12 = AMCP::Log::AMCP_Scope_Registry::initialize(v12);
  }

  v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v16 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(v15 + 16);
  switch(v17)
  {
    case 3:
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        break;
      }

      v33 = 136315650;
      v34 = "IOAudio2_Engine.cpp";
      v35 = 1024;
      v36 = 355;
      v37 = 1024;
      v38 = v13;
      v31 = v30;
      v32 = OS_LOG_TYPE_INFO;
      goto LABEL_37;
    case 2:
      v23 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v23 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
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

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v33 = 136315650;
        v34 = "IOAudio2_Engine.cpp";
        v35 = 1024;
        v36 = 355;
        v37 = 1024;
        v38 = v13;
        _os_log_debug_impl(&dword_1DE1F9000, v26, OS_LOG_TYPE_DEBUG, "%32s:%-5d IOAudio2 engine end_writing got an error from the kernel trap: %d", &v33, 0x18u);
      }

      break;
    case 1:
      v18 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v18 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v12);
      }

      v20 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        v21 = *v20;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 136315650;
        v34 = "IOAudio2_Engine.cpp";
        v35 = 1024;
        v36 = 355;
        v37 = 1024;
        v38 = v13;
        v31 = v21;
        v32 = OS_LOG_TYPE_DEFAULT;
LABEL_37:
        _os_log_impl(&dword_1DE1F9000, v31, v32, "%32s:%-5d IOAudio2 engine end_writing got an error from the kernel trap: %d", &v33, 0x18u);
      }

      break;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  return 0;
}

void sub_1DE532A20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOAudio2::Engine::write_data_to_stream(uint64_t a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, size_t **a8)
{
  v8 = a5;
  if (a5 < ((*(a1 + 784) - *(a1 + 776)) >> 3))
  {
    v12 = AMCP::Core::Engine::calculate_safety_violation_write(a1, a2);
    if (v12 < 0.0)
    {
      kdebug_trace();
    }

    v13 = a2;
    kdebug_trace();
    os_unfair_lock_lock((a1 + 736));
    v14 = *(a1 + 96);
    if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 104) - v14) >> 3) <= v8)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v15 = *(a1 + 776);
    if (v8 >= (*(a1 + 784) - v15) >> 3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v16 = v14 + 56 * v8;
    v17 = *(v16 + 24);
    v18 = *(v16 + 40);
    if (v17 == 1667326771)
    {
      v19 = 4;
    }

    else
    {
      v19 = v18;
    }

    v20 = *(*(v15 + 8 * v8) + 16);
    v21 = *(a1 + 40);
    v22 = v13 % v21;
    v23 = (v21 - v13 % v21) * v19;
    if (v23 >= **a8)
    {
      v24 = **a8;
    }

    else
    {
      v24 = v23;
    }

    memcpy(&v20[v22 * v19], (*a8)[1], v24);
    v25 = **a8;
    if (v25 > v24)
    {
      memcpy(v20, (*a8)[1], v25 - v24);
      v25 = **a8;
    }

    v26 = *(*(a1 + 744) + 16);
    if (v26)
    {
      v27 = (v25 / v19) + a2;
      if (v27 > *(v26 + 32))
      {
        *(v26 + 32) = v27;
      }
    }

    kdebug_trace();
    v28 = AMCP::Core::Engine::calculate_safety_violation_write(a1, a2);
    if (v28 < 0)
    {
      kdebug_trace();
    }

    os_unfair_lock_unlock((a1 + 736));
  }

  return 1;
}

uint64_t AMCP::IOAudio2::Engine::read_data_from_stream(uint64_t a1, double a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, size_t **a8)
{
  v8 = a5;
  if (a5 < ((*(a1 + 760) - *(a1 + 752)) >> 3))
  {
    os_unfair_lock_lock((a1 + 736));
    v13 = *(a1 + 96);
    if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 104) - v13) >> 3) <= v8)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v14 = *(a1 + 776);
    if (v8 >= (*(a1 + 784) - v14) >> 3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v15 = *(*(v14 + 8 * v8) + 16);
    v16 = *(a1 + 40);
    v17 = v13 + 56 * v8;
    v18 = *(v17 + 40) * v16;
    AMCP::IO_Clock::get_current_zts(v23, a1 + 576);
    v19 = a6 + (a2 - v23[0]) % v16 * *(v17 + 40);
    if (v18 - v19 >= **a8)
    {
      v20 = **a8;
    }

    else
    {
      v20 = v18 - v19;
    }

    memcpy((*a8)[1], &v15[v19], v20);
    v21 = **a8;
    if (v21 > v20)
    {
      memcpy(((*a8)[1] + v20), v15, v21 - v20);
    }

    os_unfair_lock_unlock((a1 + 736));
  }

  return 1;
}

uint64_t AMCP::IOAudio2::Engine::begin_reading(AMCP::IOAudio2::Engine *this, unint64_t a2, uint64_t a3, double a4, uint64_t a5)
{
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 94) == *(this + 95) || *(this + 800) != 1)
  {
    return 1;
  }

  v8 = AMCP::IO_Clock::convert_sample_to_host_time(this + 144, a4);
  v9 = AMCP::Core::Engine::calculate_safety_violation_read(this, a4);
  if (v9 <= -5.0)
  {
    kdebug_trace();
  }

  kdebug_trace();
  v10 = MEMORY[0x1E12C0820](*(this + 185), 0, 1, a5, a4 >> 32, a4, HIDWORD(v8), v8);
  kdebug_trace();
  v12 = AMCP::Core::Engine::calculate_safety_violation_read(this, a4);
  if (v12 <= -5)
  {
    v11 = kdebug_trace();
  }

  if (!v10)
  {
    return 1;
  }

  v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v13 & 1) == 0)
  {
    v11 = AMCP::Log::AMCP_Scope_Registry::initialize(v11);
  }

  v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *(v14 + 16);
  switch(v16)
  {
    case 3:
      v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v26 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        break;
      }

      v32 = 136315650;
      v33 = "IOAudio2_Engine.cpp";
      v34 = 1024;
      v35 = 238;
      v36 = 1024;
      v37 = v10;
      v30 = v29;
      v31 = OS_LOG_TYPE_INFO;
      goto LABEL_37;
    case 2:
      v22 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v22 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
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

      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v32 = 136315650;
        v33 = "IOAudio2_Engine.cpp";
        v34 = 1024;
        v35 = 238;
        v36 = 1024;
        v37 = v10;
        _os_log_debug_impl(&dword_1DE1F9000, v25, OS_LOG_TYPE_DEBUG, "%32s:%-5d IOAudio2 engine begin_reading got an error from the kernel trap: %d", &v32, 0x18u);
      }

      break;
    case 1:
      v17 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v17 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v11);
      }

      v19 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v18 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = *v19;
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }

      else
      {
        v20 = *v19;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 136315650;
        v33 = "IOAudio2_Engine.cpp";
        v34 = 1024;
        v35 = 238;
        v36 = 1024;
        v37 = v10;
        v30 = v20;
        v31 = OS_LOG_TYPE_DEFAULT;
LABEL_37:
        _os_log_impl(&dword_1DE1F9000, v30, v31, "%32s:%-5d IOAudio2 engine begin_reading got an error from the kernel trap: %d", &v32, 0x18u);
      }

      break;
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  return 0;
}

void sub_1DE53316C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void AMCP::IOAudio2::Engine::set_output_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::get_output_stream_active_list(v5, (a1 + 120));
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_output_stream_active_list(__p, a1 + 120, a2);
  AMCP::IOAudio2::Engine::update_stream_active_state(a1, (a1 + 96), v5, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1DE533250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::IOAudio2::Engine::update_stream_active_state(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a4;
  v9 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = *a3;
    do
    {
      if (v13 == (*a3 + 8 * (*(a3 + 8) >> 6)) && v11 == (*(a3 + 8) & 0x3F))
      {
        break;
      }

      if (v7 == (*a4 + 8 * (*(a4 + 8) >> 6)) && v12 == (*(a4 + 8) & 0x3F))
      {
        break;
      }

      if (((*v13 >> v11) & 1) != ((*v7 >> v12) & 1))
      {
        v16 = *(result + 740);
        if (!v16)
        {
          goto LABEL_44;
        }

        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(v16, *(v9 + 4), (*v7 >> v12) & 1);
        v8 = a2[1];
      }

      v9 += 56;
      v13 += v11 == 63;
      if (v11 == 63)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v7 += v12 == 63;
      if (v12 == 63)
      {
        v12 = 0;
      }

      else
      {
        ++v12;
      }
    }

    while (v9 != v8);
  }

  if (v9 != v8 && (v7 != (*a4 + 8 * (*(a4 + 8) >> 6)) || v12 != (*(a4 + 8) & 0x3F)))
  {
    v18 = v9 + 56;
    while (1)
    {
      v19 = *(result + 740);
      if (!v19)
      {
        break;
      }

      v9 = v18;
      applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(v19, *(v18 - 52), (*v7 >> v12) & 1);
      v8 = a2[1];
      if (v9 != v8)
      {
        v7 += v12 == 63;
        if (v12 == 63)
        {
          v12 = 0;
        }

        else
        {
          ++v12;
        }

        v18 = v9 + 56;
        if (v7 != (*a4 + 8 * (*(a4 + 8) >> 6)) || v12 != (*(a4 + 8) & 0x3F))
        {
          continue;
        }
      }

      goto LABEL_42;
    }

LABEL_44:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

LABEL_42:
  while (v9 != v8)
  {
    v21 = *(result + 740);
    if (!v21)
    {
      goto LABEL_44;
    }

    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(v21, *(v9 + 4), 0);
    v9 += 56;
    v8 = a2[1];
  }
}

void applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone,unsigned int const&,unsigned long long>(mach_port_t a1, unsigned int a2, uint64_t a3)
{
  input[0] = a2;
  input[1] = a3;
  memset(v6, 0, sizeof(v6));
  outputCnt = 0;
  memset(__p, 0, sizeof(__p));
  v3 = 0;
  if (IOConnectCallMethod(a1, 6u, input, 2u, 0, 0, 0, &outputCnt, 0, &v3))
  {
    __cxa_allocate_exception(0x20uLL);
    std::system_category();
    operator new();
  }

  std::vector<unsigned long long>::resize(v6, outputCnt);
  if (v3)
  {
    std::vector<unsigned char>::__append(__p, v3);
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  if (v6[0])
  {
    operator delete(v6[0]);
  }
}

void sub_1DE533668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v32 & 1) == 0)
    {
LABEL_10:
      v35 = *(v33 - 88);
      if (v35)
      {
        operator delete(v35);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v32)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v31);
  goto LABEL_10;
}

void AMCP::IOAudio2::Engine::set_input_stream_active_list(uint64_t a1, uint64_t a2)
{
  AMCP::Core::Implementation::Simple_Engine_IO_State::get_input_stream_active_list(v5, (a1 + 120));
  AMCP::Core::Implementation::Simple_Engine_IO_State::set_input_stream_active_list(__p, a1 + 120, a2);
  AMCP::IOAudio2::Engine::update_stream_active_state(a1, (a1 + 72), v5, __p);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    operator delete(v5[0]);
  }
}

void sub_1DE53377C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::IOAudio2::Engine::set_transport_state(uint64_t a1, signed int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 136));
  v17 = v4;
  v5 = MEMORY[0x1E12C16E0]();
  v14 = v5;
  v15 = a1;
  v16 = &v17;
  if (v4 >= a2)
  {
    if (v4 > a2)
    {
      AMCP::IOAudio2::Engine::stop(a1, v4, a2);
    }
  }

  else
  {
    if (!a2)
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
        __p = 136315650;
        __p_4 = "IOAudio2_Engine.cpp";
        v20 = 1024;
        v21 = 448;
        v22 = 2080;
        v23 = "in_new_state != Transport_State::off";
        _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s can't transition to off state with a start call", &__p, 0x1Cu);
      }

      abort();
    }

    if (!v4)
    {
      v6 = AMCP::IO_Clock::reset_time((a1 + 576));
      MEMORY[0x1E12C16E0](v6);
      operator new();
    }

    if (*(a1 + 48) == 1)
    {
      kdebug_trace();
      AMCP::Core::Implementation::Simple_Engine_IO_State::take_power_assertions((a1 + 120));
      v7 = *(a1 + 740);
      if (*(a1 + 48) == 1)
      {
        if (v7)
        {
          applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned long long &>(&__p, v7, 0xAu, a2 == 1);
        }
      }

      else if (v7)
      {
        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(*(a1 + 740), 0, 0, 0);
        kdebug_trace();
        goto LABEL_14;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

LABEL_14:
  atomic_store(a2, (a1 + 136));
  return applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio2::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&v14);
}

void sub_1DE533BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  __cxa_free_exception(v13);
  applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio2::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(&a9);
  _Unwind_Resume(a1);
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<AMCP::IOAudio2::Engine::set_transport_state(AMCP::Transport_State)::$_0,applesauce::raii::v1::detail::StackFailPolicy>::~ScopeGuard(uint64_t a1)
{
  if (MEMORY[0x1E12C16E0]() > *a1)
  {
    v2 = *(a1 + 8);
    atomic_store(0, &v2[34]._os_unfair_lock_opaque);
    AMCP::IOAudio2::Engine::stop(v2, **(a1 + 16), **(a1 + 16));
  }

  return a1;
}

void AMCP::IOAudio2::Engine::stop(os_unfair_lock_s *this, int a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 136315650;
      *&__p[1] = "IOAudio2_Engine.cpp";
      v15 = 1024;
      v16 = 463;
      v17 = 2080;
      v18 = "in_new_state != Transport_State::on";
LABEL_28:
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s can't transition to on state with a stop call", __p, 0x1Cu);
    }

LABEL_29:
    abort();
  }

  if (a2 < a3)
  {
    v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v10 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v9 = *v12;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __p[0] = 136315650;
      *&__p[1] = "IOAudio2_Engine.cpp";
      v15 = 1024;
      v16 = 464;
      v17 = 2080;
      v18 = "in_old_state >= in_new_state";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (!a2 || LOBYTE(this[12]._os_unfair_lock_opaque) == 1)
  {
    kdebug_trace();
    os_unfair_lock_opaque = this[185]._os_unfair_lock_opaque;
    if (LOBYTE(this[12]._os_unfair_lock_opaque) == 1)
    {
      if (os_unfair_lock_opaque)
      {
        applesauce::iokit::call_method_struct<applesauce::iokit::ReplyScalar<1>,unsigned long long &>(__p, os_unfair_lock_opaque, 0xBu, a3 == 1);
      }

LABEL_30:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "cannot create io_connect_proxy from null io_object");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    if (!os_unfair_lock_opaque)
    {
      goto LABEL_30;
    }

    applesauce::iokit::call_method_struct<applesauce::iokit::ReplyNone>(this[185]._os_unfair_lock_opaque, 1u, 0, 0);
    AMCP::Core::Implementation::Simple_Engine_IO_State::release_power_assertions(&this[30]._os_unfair_lock_opaque);
    kdebug_trace();
  }

  if (!a3)
  {
    AMCP::IOAudio2::Engine::release_buffers(this);

    AMCP::IO_Clock::reset_time(this + 144);
  }
}

void sub_1DE533FC8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_free_exception(v2);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unsigned int **AMCP::IOAudio2::Engine::release_buffers(AMCP::IOAudio2::Engine *this)
{
  v2 = *(this + 95);
  v3 = *(this + 94);
  while (v2 != v3)
  {
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](--v2, 0);
  }

  *(this + 95) = v3;
  v4 = *(this + 98);
  v5 = *(this + 97);
  while (v4 != v5)
  {
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](--v4, 0);
  }

  *(this + 98) = v5;

  return std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](this + 93, 0);
}

void sub_1DE534264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v31 & 1) == 0)
    {
LABEL_10:
      v34 = *(v32 - 80);
      if (v34)
      {
        *(v32 - 72) = v34;
        operator delete(v34);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v30);
  goto LABEL_10;
}

void std::vector<unsigned long long>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1DE53434C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](a2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t *std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::push_back[abi:ne200100](uint64_t *result, uint64_t *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v8 = *result;
    v9 = v5 - *result;
    v10 = (v9 >> 3) + 1;
    if (v10 >> 61)
    {
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v8;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    v17[4] = v3;
    if (v12)
    {
      std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
    }

    v13 = (8 * (v9 >> 3));
    v14 = *a2;
    *a2 = 0;
    *v13 = v14;
    v7 = v13 + 1;
    memcpy(0, v8, v9);
    v15 = *v3;
    *v3 = 0;
    v3[1] = v7;
    v16 = v3[2];
    v3[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::unique_ptr<applesauce::iokit::mapped_memory>>::~__split_buffer(v17);
  }

  else
  {
    v6 = *a2;
    *a2 = 0;
    *v5 = v6;
    v7 = v5 + 1;
  }

  v3[1] = v7;
  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<applesauce::iokit::mapped_memory>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100]((i - 8), 0);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 AMCP::IOAudio2::Engine::get_stream_format@<Q0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = 48;
  if (!a2)
  {
    v4 = 72;
  }

  v5 = a1 + v4;
  v6 = *(a1 + v4 + 24);
  v7 = *(v5 + 32);
  while (1)
  {
    if (v6 == v7)
    {
      *(a4 + 32) = 0;
      result.n128_u64[0] = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }

    if (*v6 == a3)
    {
      break;
    }

    v6 += 56;
  }

  result = *(v6 + 16);
  v9 = *(v6 + 32);
  *a4 = result;
  *(a4 + 16) = v9;
  *(a4 + 32) = *(v6 + 48);
  return result;
}

void AMCP::IOAudio2::Engine::~Engine(AMCP::IOAudio2::Engine *this)
{
  AMCP::IOAudio2::Engine::~Engine(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5978888;
  AMCP::IOAudio2::Engine::set_transport_state(this, 0);
  v10 = (this + 776);
  std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 752);
  std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::__destroy_vector::operator()[abi:ne200100](&v10);
  std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](this + 93, 0);
  IOConnectRelease(*(this + 185));
  AMCP::IO_Clock::~IO_Clock((this + 576));
  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 240));
  v2 = *(this + 29);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 22);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(this + 18);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void std::vector<std::unique_ptr<applesauce::iokit::mapped_memory>>::__destroy_vector::operator()[abi:ne200100](unsigned int ****a1)
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
        std::unique_ptr<applesauce::iokit::mapped_memory>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0,std::allocator<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0>,CA::TimeStamp ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP8IOAudio26EngineC1EN10applesauce5iokit17io_connect_holderENS2_2CF9StringRefEdjjbjjjjRKNSt3__16vectorINS_4Core14Implementation18Simple_Engine_Data11Stream_InfoENS7_9allocatorISC_EEEESH_bbRKNS_7Utility14Dispatch_QueueEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0,std::allocator<AMCP::IOAudio2::Engine::Engine(applesauce::iokit::io_connect_holder,applesauce::CF::StringRef,double,unsigned int,unsigned int,BOOL,unsigned int,unsigned int,unsigned int,unsigned int,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info> const&,BOOL,BOOL,AMCP::Utility::Dispatch_Queue const&)::$_0>,CA::TimeStamp ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5978A40;
  a2[1] = v2;
  return result;
}

void AMCP::IOAudio2::Engine::Engine(uint64_t a1, _DWORD *a2, CFTypeRef *a3, int a4, int a5, char a6, int a7, int a8, double a9, int a10, int a11, uint64_t a12, uint64_t a13, char a14, char a15, int a16, dispatch_queue_t *a17)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F5978888;
  v24 = *a3;
  if (*a3)
  {
    CFRetain(*a3);
  }

  v32 = 0;
  v33 = v24;
  v31 = 0uLL;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(&v31, *a12, *(a12 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a12 + 8) - *a12) >> 3));
  v29 = 0uLL;
  v30 = 0;
  std::vector<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info>::__init_with_size[abi:ne200100]<AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*,AMCP::Core::Implementation::Simple_Engine_Data::Stream_Info*>(&v29, *a13, *(a13 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a13 + 8) - *a13) >> 3));
  *(a1 + 24) = v24;
  *(a1 + 32) = a9;
  *(a1 + 40) = a4;
  *(a1 + 44) = a5;
  *(a1 + 48) = a6;
  *(a1 + 52) = a7;
  *(a1 + 56) = a8;
  *(a1 + 60) = a10;
  *(a1 + 64) = a11;
  *(a1 + 72) = v31;
  *(a1 + 88) = v32;
  v31 = 0uLL;
  v32 = 0;
  v33 = 0;
  *(a1 + 96) = v29;
  *(a1 + 112) = v30;
  v25 = 0x6DB6DB6DB6DB6DB7 * ((*(a12 + 8) - *a12) >> 3);
  v26 = (*(a13 + 8) - *a13) >> 3;
  v29 = 0uLL;
  v30 = 0;
  AMCP::Core::Implementation::Simple_Engine_IO_State::Simple_Engine_IO_State((a1 + 120), a3, v25, 0x6DB6DB6DB6DB6DB7 * v26, 0, a17, v27);
}

void sub_1DE534C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Graph::Terminal::Terminal(uint64_t a1, __int128 *a2, uint64_t a3, int a4)
{
  v8 = 0;
  v9 = 0;
  v10 = *a2;
  v11 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v10;
  *(a1 + 16) = v11;
  v12 = a2 + 40;
  do
  {
    v13 = v8;
    v14 = (a1 + 24 * v9);
    v14[5] = 0;
    v14[6] = 0;
    v14 += 5;
    v14[2] = 0;
    v15 = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v14, *&v12[24 * v9], *&v12[24 * v9 + 8], 0xAAAAAAAAAAAAAAABLL * ((*&v12[24 * v9 + 8] - *&v12[24 * v9]) >> 3));
    v8 = 1;
    v9 = 1;
  }

  while ((v13 & 1) == 0);
  *(a1 + 88) = *(a2 + 11);
  if (a2[6])
  {
    v16 = 1;
  }

  else
  {
    AMCP::Graph::File_Capture_Settings::instance(v15);
    v16 = BYTE1(AMCP::Graph::File_Capture_Settings::instance(void)::s_instance);
  }

  *(a1 + 96) = v16 & 1;
  *(a1 + 100) = a4;
  *(a1 + 104) = a3;
  return a1;
}

void sub_1DE534DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v12 & 1) == 0)
  {
    v14 = -24 * v11;
    v15 = v10 + 24 * v11 + 16;
    do
    {
      a10 = v15;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
      v15 -= 24;
      v14 += 24;
    }

    while (v14);
  }

  _Unwind_Resume(exception_object);
}

double AMCP::Graph::Terminal::get_description(AMCP::Graph::Terminal *this, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  *(this + 11) = 1;
  *(this + 96) = 0;
  *(this + 40) = 0u;
  v6 = this + 40;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  v7 = *(a2 + 16);
  *this = *a2;
  *(this + 1) = v7;
  *(this + 4) = *(a2 + 32);
  v8 = a2 + 40;
  do
  {
    v9 = v4;
    if (this != a2)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&v6[24 * v5], *(v8 + 24 * v5), *(v8 + 24 * v5 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 24 * v5 + 8) - *(v8 + 24 * v5)) >> 3));
    }

    v4 = 1;
    v5 = 1;
  }

  while ((v9 & 1) == 0);
  result = *(a2 + 88);
  *(this + 11) = result;
  *(this + 96) = *(a2 + 96);
  return result;
}

void sub_1DE534EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = (v10 + 64);
  v13 = -48;
  do
  {
    a10 = v12;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
    v12 -= 3;
    v13 += 24;
  }

  while (v13);
  _Unwind_Resume(a1);
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextPlugin::unlock_processing(HALS_DSPHostIntegrationPoint_IOContextPlugin *this)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 3) + 88);
  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *v5;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = 0;
    v9 = 0;
    v10 = 47;
    do
    {
      v11 = &aLibraryCachesC_140[v8];
      if (v10 == 47)
      {
        v9 = &aLibraryCachesC_140[v8];
      }

      v10 = v11[1];
      if (!v11[1])
      {
        break;
      }
    }

    while (v8++ < 0xFFF);
    if (v9)
    {
      v13 = v9 + 1;
    }

    else
    {
      v13 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/DSPHosting/HALS_DSPHostIntegrationPoint_IOContextPlugin.cpp";
    }

    v14 = 136315906;
    v15 = v13;
    v16 = 1024;
    v17 = 251;
    v18 = 2048;
    v19 = this;
    v20 = 1024;
    v21 = v2;
    _os_log_debug_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_DEBUG, "%32s:%-5d [ahal_dsp] %p (Context ID: %d) DSP instance unlocked.", &v14, 0x22u);
  }

  return (*(**(this + 1) + 64))(*(this + 1));
}

void HALS_DSPHostIntegrationPoint_IOContextPlugin::lock_processing(HALS_DSPHostIntegrationPoint_IOContextPlugin *this)
{
  v1 = *MEMORY[0x1E69E9840];
  (*(**(this + 1) + 56))(*(this + 1));
  operator new();
}

void *std::unique_ptr<HALS_DSPHostIntegrationPoint_IOContextPlugin::ProcessAudioData>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[21];
    if (v3)
    {
      v2[22] = v3;
      operator delete(v3);
    }

    v4 = v2[18];
    if (v4)
    {
      v2[19] = v4;
      operator delete(v4);
    }

    v5 = v2[15];
    if (v5)
    {
      v2[16] = v5;
      operator delete(v5);
    }

    v6 = v2[12];
    if (v6)
    {
      v2[13] = v6;
      operator delete(v6);
    }

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

unint64_t HALS_DSPHostIntegrationPoint_IOContextPlugin::ProcessAudioData::resize_overlay_abl_list(unint64_t result, std::vector<char> *a2, unint64_t *a3)
{
  a2->__end_ = a2->__begin_;
  v3 = *a3;
  a3[1] = *a3;
  if (result)
  {
    v6 = result;
    v7 = a3[2] - v3;
    if (result > v7 >> 3)
    {
      if (!(result >> 61))
      {
        v8 = v7 >> 2;
        if (v7 >> 2 <= result)
        {
          v8 = result;
        }

        if (v7 >= 0x7FFFFFFFFFFFFFF8)
        {
          v9 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = v8;
        }

        if (!(v9 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(v3, 8 * result);
    v10 = v3 + 8 * v6;
    a3[1] = v10;
    result = *a3;
    v11 = 8 * (((v10 - *a3) >> 2) + ((v10 - *a3) >> 3));
    __x = 0;
    begin = a2->__begin_;
    v13 = a2->__end_ - a2->__begin_;
    if (v11 <= v13)
    {
      if (v11 < v13)
      {
        a2->__end_ = &begin[v11];
      }
    }

    else
    {
      std::vector<char>::__append(a2, v11 - v13, &__x);
      begin = a2->__begin_;
      result = *a3;
      v10 = a3[1];
    }

    if (result != v10)
    {
      do
      {
        *begin = 1;
        *(begin + 1) = 0;
        *(begin + 2) = 0;
        *result = begin;
        result += 8;
        begin += 24;
      }

      while (result != v10);
      return *a3;
    }
  }

  return result;
}

uint64_t HALS_DSPHostIntegrationPoint_IOContextPlugin::configure_plugin(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = (*(*v2 + 16))(v2, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1DE5356A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void HALS_DSPHostIntegrationPoint_IOContextPlugin::~HALS_DSPHostIntegrationPoint_IOContextPlugin(HALS_DSPHostIntegrationPoint_IOContextPlugin *this)
{
  HALS_DSPHostIntegrationPoint_IOContextPlugin::~HALS_DSPHostIntegrationPoint_IOContextPlugin(this);

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5978AC0;
  std::unique_ptr<HALS_DSPHostIntegrationPoint_IOContextPlugin::ProcessAudioData>::reset[abi:ne200100](this + 6, 0);
  v2 = *(this + 5);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void std::__shared_ptr_emplace<HALS_DSPHostIntegrationPoint_IOContextPlugin>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5978B78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__function::__value_func<void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0,std::allocator<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0>,void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN44HALS_DSPHostIntegrationPoint_IOContextPlugin17dsp_properties_ifEjE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0,std::allocator<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0>,void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((**(a1 + 16) & 1) == 0 && v4)
  {
    (*(*v4 + 24))(&v7, v4);
    v5 = v7;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    if (v5)
    {
      (*(*v4 + 24))(&v7, v4);
      v6 = (*(*(v7 + *(*v7 - 40)) + 16))(v7 + *(*v7 - 40));
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      if ((v6 & 0x100000000) != 0 && *(a1 + 8) == v6)
      {
        **(a1 + 16) = 1;
      }
    }
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1DE5359EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0,std::allocator<HALS_DSPHostIntegrationPoint_IOContextPlugin::dsp_properties_if (unsigned int)::$_0>,void ()(std::pair<std::shared_ptr<AHAL_DSP::IAudioStream>,HALS_DSPHostIntegrationPoint_IOContext::RelativeStreamTopology> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5978C10;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t Property_Type_Info::get_property_data_and_qualifier_type_code(Property_Type_Info *this, int a2, AMCP::HAL *a3)
{
  std::mutex::lock((this + 24));
  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    while (*v6 != a2)
    {
      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  if (v6 == v7 || (v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v6 + 8), a3)) == 0)
  {
LABEL_20:
    hal_property_value_type_code = AMCP::HAL::get_hal_property_value_type_code(a3);
    v14 = AMCP::HAL::get_hal_property_qualifier_type_code(a3) << 32;
  }

  else
  {
    v10 = *(v8 + 5);
    v9 = *(v8 + 6);
    if (v10 == 1667658612)
    {
      v11 = 6;
    }

    else
    {
      v11 = 0;
    }

    if (v10 == 1886155636)
    {
      v12 = 15;
    }

    else
    {
      v12 = v11;
    }

    if (v10 == 1918990199)
    {
      hal_property_value_type_code = 1;
    }

    else
    {
      hal_property_value_type_code = v12;
    }

    switch(v9)
    {
      case 1918990199:
        v14 = 0x100000000;
        break;
      case 1886155636:
        v14 = 0xF00000000;
        break;
      case 1667658612:
        v14 = 0x600000000;
        break;
      default:
        v14 = 0;
        break;
    }
  }

  std::mutex::unlock((this + 24));
  return v14 | hal_property_value_type_code;
}

uint64_t Property_Type_Info::get_property_qualifier_type_code(Property_Type_Info *this, int a2, AMCP::HAL *a3)
{
  std::mutex::lock((this + 24));
  v6 = *this;
  v7 = *(this + 1);
  if (*this != v7)
  {
    while (*v6 != a2)
    {
      v6 += 48;
      if (v6 == v7)
      {
        goto LABEL_11;
      }
    }
  }

  if (v6 == v7 || (v8 = std::__hash_table<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_Device_HostedDSP_ClientInfo::PerClientInfo>>>::find<unsigned int>((v6 + 8), a3)) == 0)
  {
LABEL_11:
    hal_property_qualifier_type_code = AMCP::HAL::get_hal_property_qualifier_type_code(a3);
  }

  else
  {
    v9 = *(v8 + 6);
    switch(v9)
    {
      case 1918990199:
        hal_property_qualifier_type_code = 1;
        break;
      case 1886155636:
        hal_property_qualifier_type_code = 15;
        break;
      case 1667658612:
        hal_property_qualifier_type_code = 6;
        break;
      default:
        hal_property_qualifier_type_code = 0;
        break;
    }
  }

  std::mutex::unlock((this + 24));
  return hal_property_qualifier_type_code;
}

void Property_Type_Info::add_custom_properties(Property_Type_Info *this, unsigned int a2, uint64_t a3, const AudioServerPlugInCustomPropertyInfo *a4)
{
  std::mutex::lock((this + 24));
  v9 = *this;
  v8 = *(this + 1);
  if (*this != v8)
  {
    while (*v9 != a2)
    {
      v9 += 6;
      if (v9 == v8)
      {
        goto LABEL_10;
      }
    }
  }

  if (v9 == v8)
  {
LABEL_10:
    v12 = 0uLL;
    v41 = 0u;
    v42 = 0u;
    *&v43 = 1.0;
    if (a3)
    {
      p_mPropertyDataType = &a4->mPropertyDataType;
      do
      {
        v14 = *p_mPropertyDataType;
        v37 = *(p_mPropertyDataType - 1);
        *v38 = v14;
        std::__hash_table<std::__hash_value_type<unsigned int,Custom_Property_Types>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Custom_Property_Types>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,Custom_Property_Types>>(&v41, v37, &v37);
        p_mPropertyDataType += 3;
        --a3;
      }

      while (a3);
      v15 = *&v43;
      v16 = *(&v41 + 1);
      v12 = 0uLL;
    }

    else
    {
      v16 = 0;
      v15 = 1.0;
    }

    v37 = a2;
    *&v38[4] = v12;
    v39 = v12;
    v40 = v15;
    std::__hash_table<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,std::__unordered_map_hasher<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,true>,std::__unordered_map_equal<AMCP::Address,std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>,AMCP::Address::Is_Exact_Match,AMCP::Address::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Address,std::shared_ptr<AMCP::Core::Operation>>>>::__rehash<true>(&v38[4], v16);
    v17 = v42;
    if (!v42)
    {
LABEL_34:
      v25 = *(this + 1);
      v24 = *(this + 2);
      if (v25 >= v24)
      {
        v27 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *this) >> 4);
        v28 = v27 + 1;
        if (v27 + 1 > 0x555555555555555)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v29 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *this) >> 4);
        if (2 * v29 > v28)
        {
          v28 = 2 * v29;
        }

        if (v29 >= 0x2AAAAAAAAAAAAAALL)
        {
          v30 = 0x555555555555555;
        }

        else
        {
          v30 = v28;
        }

        v47 = this;
        if (v30)
        {
          std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::allocate_at_least[abi:ne200100](v30);
        }

        v31 = 48 * v27;
        v44 = 0;
        v45 = v31;
        *(&v46 + 1) = 0;
        *v31 = v37;
        std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table(v31 + 8, &v38[4]);
        *&v46 = v31 + 48;
        v32 = *(this + 1);
        v33 = v31 + *this - v32;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>,std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>*>(*this, v32, v33);
        v34 = *this;
        *this = v33;
        v35 = *(this + 2);
        v36 = v46;
        *(this + 8) = v46;
        *&v46 = v34;
        *(&v46 + 1) = v35;
        v44 = v34;
        v45 = v34;
        std::__split_buffer<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::~__split_buffer(&v44);
        v26 = v36;
      }

      else
      {
        *v25 = v37;
        v26 = v25 + 12;
        std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table((v25 + 2), &v38[4]);
      }

      *(this + 1) = v26;
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v38[4]);
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(&v41);
      goto LABEL_46;
    }

LABEL_16:
    v18 = *(v17 + 4);
    if (!*&v38[12])
    {
      goto LABEL_32;
    }

    v19 = vcnt_s8(*&v38[12]);
    v19.i16[0] = vaddlv_u8(v19);
    if (v19.u32[0] > 1uLL)
    {
      v20 = *(v17 + 4);
      if (*&v38[12] <= v18)
      {
        v20 = v18 % *&v38[12];
      }
    }

    else
    {
      v20 = (*&v38[12] - 1) & v18;
    }

    v21 = *(*&v38[4] + 8 * v20);
    if (!v21 || (v22 = *v21) == 0)
    {
LABEL_32:
      operator new();
    }

    while (1)
    {
      v23 = v22[1];
      if (v23 == v18)
      {
        if (*(v22 + 4) == v18)
        {
          v17 = *v17;
          if (!v17)
          {
            goto LABEL_34;
          }

          goto LABEL_16;
        }
      }

      else
      {
        if (v19.u32[0] > 1uLL)
        {
          if (v23 >= *&v38[12])
          {
            v23 %= *&v38[12];
          }
        }

        else
        {
          v23 &= *&v38[12] - 1;
        }

        if (v23 != v20)
        {
          goto LABEL_32;
        }
      }

      v22 = *v22;
      if (!v22)
      {
        goto LABEL_32;
      }
    }
  }

  if (a3)
  {
    v10 = &a4->mPropertyDataType;
    do
    {
      v11 = *v10;
      v37 = *(v10 - 1);
      *v38 = v11;
      std::__hash_table<std::__hash_value_type<unsigned int,Custom_Property_Types>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Custom_Property_Types>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,Custom_Property_Types>>(v9 + 1, v37, &v37);
      v10 += 3;
      --a3;
    }

    while (a3);
  }

LABEL_46:
  std::mutex::unlock((this + 24));
}

void sub_1DE536124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(va1);
  std::mutex::unlock((v7 + 24));
  _Unwind_Resume(a1);
}

void std::__hash_table<std::__hash_value_type<unsigned int,Custom_Property_Types>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,Custom_Property_Types>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,Custom_Property_Types>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,Custom_Property_Types>>(void *a1, unsigned int a2, uint64_t a3)
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

void std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>,std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>*>(uint64_t *result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = a3 + 8;
    v6 = v4;
    v7 = v4;
    do
    {
      v8 = *v7;
      v7 += 6;
      *(v5 - 8) = v8;
      v5 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::__hash_table(v5, v6 + 1) + 48;
      v6 = v7;
    }

    while (v7 != a2);
    do
    {
      result = std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table((v4 + 1));
      v4 += 6;
    }

    while (v4 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Property_Type_Info::remove_custom_properties(Property_Type_Info *this, int a2)
{
  std::mutex::lock((this + 24));
  v4 = *this;
  v5 = *(this + 1);
  if (*this != v5)
  {
    while (*v4 != a2)
    {
      v4 += 6;
      if (v4 == v5)
      {
        v4 = *(this + 1);
        break;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 + 6;
    if (v4 + 6 != v5)
    {
      do
      {
        *v4 = *v6;
        if (v4[4])
        {
          v7 = v4[3];
          if (v7)
          {
            do
            {
              v8 = *v7;
              operator delete(v7);
              v7 = v8;
            }

            while (v8);
          }

          v4[3] = 0;
          v9 = v4[2];
          if (v9)
          {
            for (i = 0; i != v9; ++i)
            {
              *(v4[1] + 8 * i) = 0;
            }
          }

          v4[4] = 0;
        }

        v11 = v6[1];
        v6[1] = 0;
        v12 = v4[1];
        v4[1] = v11;
        if (v12)
        {
          operator delete(v12);
        }

        v13 = v6[3];
        v14 = v6[2];
        v4[3] = v13;
        v4[2] = v14;
        v6[2] = 0;
        v15 = v6[4];
        v4[4] = v15;
        *(v4 + 10) = *(v6 + 10);
        if (v15)
        {
          v16 = *(v13 + 8);
          if ((v14 & (v14 - 1)) != 0)
          {
            if (v16 >= v14)
            {
              v16 %= v14;
            }
          }

          else
          {
            v16 &= v14 - 1;
          }

          *(v4[1] + 8 * v16) = v4 + 3;
          v6[3] = 0;
          v6[4] = 0;
        }

        v6 += 6;
        v4 += 6;
      }

      while (v6 != v5);
      v5 = *(this + 1);
    }

    for (; v5 != v4; v5 -= 6)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,HALS_RemotePlugInEngine *>>>::~__hash_table((v5 - 5));
    }

    *(this + 1) = v4;
    v17 = *this;
    v18 = *(this + 2) - *this;
    v19 = v4 - *this;
    if (v18 > v19)
    {
      v20 = v19 >> 4;
      v28 = this;
      if (v4 != v17)
      {
        std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::allocate_at_least[abi:ne200100](0xAAAAAAAAAAAAAAABLL * v20);
      }

      v25 = 0;
      v26 = 16 * v20;
      v27 = (16 * v20);
      if (0xAAAAAAAAAAAAAAABLL * (v18 >> 4))
      {
        v21 = *(this + 1);
        v22 = 16 * v20 + v17 - v21;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>,std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>*>(v17, v21, v22);
        v23 = *this;
        *this = v22;
        v24 = *(this + 2);
        *(this + 8) = v27;
        *&v27 = v23;
        *(&v27 + 1) = v24;
        v25 = v23;
        v26 = v23;
      }

      std::__split_buffer<std::pair<unsigned int,std::unordered_map<unsigned int,Custom_Property_Types>>>::~__split_buffer(&v25);
    }
  }

  std::mutex::unlock((this + 24));
}